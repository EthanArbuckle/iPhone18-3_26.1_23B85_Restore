@interface PKPaymentTransactionDetailViewController
- (BOOL)_actionRowIsEnabled:(unint64_t)a3;
- (BOOL)_amountDetailsRowIsEnabled:(unint64_t)a3;
- (BOOL)_hasIssuerPhoneNumber;
- (BOOL)_isFoundInInsightsSupported;
- (BOOL)_recognitionHintsRowIsEnabled:(unint64_t)a3;
- (BOOL)_showSeparateReportMerchantInfoButton;
- (BOOL)_transactionHasNonZeroSecondaryFundingSourceAmount;
- (BOOL)shouldMapSection:(unint64_t)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (PKPaymentTransactionDetailViewController)initWithTransaction:(id)a3 transactionSourceCollection:(id)a4 familyCollection:(id)a5 account:(id)a6 accountUserCollection:(id)a7 bankConnectInstitution:(id)a8 physicalCards:(id)a9 contactResolver:(id)a10 peerPaymentWebService:(id)a11 paymentServiceDataProvider:(id)a12 detailViewStyle:(int64_t)a13 allowTransactionLinks:(BOOL)a14;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_amountDetailsCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_applePayBarcodeRowCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_applePayOrderRowCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_applePayReceiptRowCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_associatedInstallmentCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_awardCellForTableView:(id)a3;
- (id)_businessChatContextForNonCancellablePayment;
- (id)_businessChatContextForUnavailableDisputeStatus;
- (id)_coarseLocationHyperlinkFooterView;
- (id)_debugDetailCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_disputeStatusCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_disputeStatusDescription;
- (id)_disputeStatusTitle;
- (id)_expiredPhysicalCardCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_explanationTextForPaymentTransaction:(id)a3;
- (id)_foundInMailLockedRowCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_foundInMailRowCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_fraudRiskCellForTableView:(id)a3;
- (id)_mapTilePlaceholderImage;
- (id)_merchantAddressCellForTableView:(id)a3;
- (id)_merchantTokenDeletedCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_merchantTokenManagementCellForTableView:(id)a3;
- (id)_peerPaymentController;
- (id)_questionCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_recognitionHintsCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_relatedTransactionsSourceIdentifiers;
- (id)_releasedDataCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_statusCellForTableView:(id)a3;
- (id)_tableView:(id)a3 actionButtonCellForSection:(unint64_t)a4;
- (id)_tableView:(id)a3 cellForActionAtIndex:(int64_t)a4;
- (id)_tableView:(id)a3 cellForAmountDetailLineItemAtIndex:(int64_t)a4 atIndexPath:(id)a5;
- (id)_tableView:(id)a3 cellForAwardAtIndex:(int64_t)a4;
- (id)_tableViewCellChangeCategoryForTableView:(id)a3;
- (id)_tableViewCellForDeleteTransaction:(id)a3;
- (id)_tableViewCellForGroupedPaymentsSummary:(id)a3;
- (id)_tableViewCellPaymentOfferConfirmationRecordFollowUpForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_tableViewCellPaymentOfferConfirmationRecordStatusForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_tableViewCellPaymentRewardsRedemptionInfoForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_transactionIdentifierCellForTableView:(id)a3;
- (id)_transactionIdentifierDescription;
- (id)_transactionStatusString;
- (id)contextMenuConfigurationForCopyingText:(id)a3;
- (id)contextMenuConfigurationForTransactionIdentifier;
- (id)formattedBalanceAdjustmentAmountWithTransitDescriptors;
- (id)presentationSceneIdentifierForTopUpController:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)_maximumRetentionPeriodForElements:(id)a3;
- (int64_t)_numberOfActionRowsEnabled;
- (int64_t)_rowIndexForActionRow:(unint64_t)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_actionRowForRowIndex:(int64_t)a3;
- (unint64_t)_amountDetailsRowForIndex:(unint64_t)a3;
- (unint64_t)_numberOfAmountDetailsRows;
- (unint64_t)_numberOfRecognitionHintsRows;
- (unint64_t)_recognitionHintsRowForIndex:(unint64_t)a3;
- (void)_applySeparatorInsetForCell:(id)a3;
- (void)_callIssuer;
- (void)_cancelPaymentWithCell:(id)a3;
- (void)_cancelPeerPaymentPendingRequest;
- (void)_deleteTransaction;
- (void)_didSelectMerchantTokenManagement;
- (void)_fetchAllApplePayOrderRowViewModels;
- (void)_fetchAllInsightRowViewModels;
- (void)_fetchAppPrivacyURL;
- (void)_fetchDataReleaseTransactionConfiguration;
- (void)_fetchMerchantToken;
- (void)_foundInMailApplicationWillEnterForeground:(id)a3;
- (void)_foundInMailApplicationWillResignActive:(id)a3;
- (void)_handleCoarseLocationChangedNotification:(id)a3;
- (void)_handlePeerPaymentDisplayableError:(id)a3 withPeerPaymentController:(id)a4;
- (void)_loadAppPrivacyURLFromAppStore;
- (void)_openAppPrivacyURL;
- (void)_openBankConnectDigitalServicingURL;
- (void)_openBankConnectPostInstallmentURL;
- (void)_openBankConnectRedeemRewardsURL;
- (void)_openBusinessChatControllerForContext:(id)a3;
- (void)_openMessagesToPresentAction:(unint64_t)a3;
- (void)_openOfferDetailsInIssuerApp:(id)a3;
- (void)_openTransactionInIssuerApp;
- (void)_performDeleteOverride;
- (void)_performPeerPaymentAction:(id)a3 withCompletion:(id)a4;
- (void)_presentCancelPaymentWithIndexPath:(id)a3;
- (void)_presentCardNumberUpdatedAlert;
- (void)_presentContactIssuer;
- (void)_presentContactViewController;
- (void)_presentRecurringPeerPayment:(id)a3;
- (void)_presentRecurringPeerPaymentAtIndexPath:(id)a3;
- (void)_presentReportIssue;
- (void)_recomputeLineItems;
- (void)_reloadTableHeaderView;
- (void)_showDeleteConfirmationSheet:(id)a3;
- (void)_showInstallmentDetailsForAssociatedInstallment:(id)a3;
- (void)_showUpdateTransactionCategoryErrorAlert;
- (void)_tableView:(id)a3 didSelectActionAtIndexPath:(id)a4;
- (void)_tableView:(id)a3 didSelectFoundInMailItemAtIndexPath:(id)a4;
- (void)_tableView:(id)a3 didSelectMechantAddressAtIndexPath:(id)a4;
- (void)_tableView:(id)a3 didSelectPeerPaymentAction:(id)a4 atIndexPath:(id)a5;
- (void)_tableView:(id)a3 willDisplayAmountDetailsCell:(id)a4 atIndexPath:(id)a5;
- (void)_triggerInsightRowModelPrune;
- (void)_updatePeerPaymentPendingRequestForRequestToken:(id)a3;
- (void)_updatePeerPaymentTransactionStatusWithCompletion:(id)a3;
- (void)_updateTableHeaderHeight;
- (void)_updateWithTransactionReceipt:(id)a3;
- (void)_updateWithTransactionTags:(id)a3;
- (void)appProtectionCoordinatorDidFailAccess:(id)a3;
- (void)appProtectionCoordinatorDidGainAccess:(id)a3;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)contactsDidChangeForContactResolver:(id)a3;
- (void)contentIsLoaded;
- (void)dealloc;
- (void)didUpdateFamilyMembers:(id)a3;
- (void)executeAfterContentIsLoaded:(id)a3;
- (void)merchantTokenDetailViewController:(id)a3 didDeleteMerchantToken:(id)a4;
- (void)paymentOfferConfirmationRecordUpdated:(id)a3 forTransactionWithPaymentHash:(id)a4;
- (void)physicalCardsChanged:(id)a3 forAccountIdentifier:(id)a4;
- (void)presentConfirmPaymentOfferPlan;
- (void)presentPaymentOfferInstallmentSelectionFlowFromIndexPath:(id)a3 fromPushNotification:(BOOL)a4 completion:(id)a5;
- (void)recurringPaymentsChanged;
- (void)scrollViewDidScroll:(id)a3;
- (void)setTransaction:(id)a3;
- (void)submitAnswer:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)thresholdTopUpController:(id)a3 requestsPopViewController:(id)a4;
- (void)thresholdTopUpController:(id)a3 requestsPushViewController:(id)a4;
- (void)thresholdTopUpControllerCompletedSetup:(id)a3;
- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4;
- (void)transactionSourceIdentifier:(id)a3 didRemoveTransactionWithIdentifier:(id)a4;
- (void)transactionWithIdentifier:(id)a3 didDownloadTransactionReceipt:(id)a4;
- (void)transactionsChanged:(id)a3;
- (void)updateTransactionCategory:(int64_t)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPaymentTransactionDetailViewController

- (PKPaymentTransactionDetailViewController)initWithTransaction:(id)a3 transactionSourceCollection:(id)a4 familyCollection:(id)a5 account:(id)a6 accountUserCollection:(id)a7 bankConnectInstitution:(id)a8 physicalCards:(id)a9 contactResolver:(id)a10 peerPaymentWebService:(id)a11 paymentServiceDataProvider:(id)a12 detailViewStyle:(int64_t)a13 allowTransactionLinks:(BOOL)a14
{
  v106[1] = *MEMORY[0x1E69E9840];
  v103 = a3;
  v101 = a4;
  v100 = a5;
  v99 = a6;
  v98 = a7;
  v97 = a8;
  v20 = a9;
  v21 = a10;
  v96 = a11;
  v102 = a12;
  v105.receiver = self;
  v105.super_class = PKPaymentTransactionDetailViewController;
  v22 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v105, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior], 30);
  v23 = v22;
  if (!v22)
  {
    goto LABEL_40;
  }

  objc_storeStrong(&v22->_transactionSourceCollection, a4);
  v95 = v21;
  if (v21)
  {
    v24 = v21;
    v25 = v20;
    v26 = v24;
    contactResolver = v23->_contactResolver;
    v23->_contactResolver = v26;
LABEL_6:

    v20 = v25;
    goto LABEL_7;
  }

  if ([v103 transactionType] == 3)
  {
    v25 = v20;
    contactResolver = objc_alloc_init(MEMORY[0x1E695CE18]);
    v28 = [MEMORY[0x1E69B8F30] requiredContactKeys];
    v29 = [objc_alloc(MEMORY[0x1E69B8740]) initWithContactStore:contactResolver keysToFetch:v28];
    v30 = v23->_contactResolver;
    v23->_contactResolver = v29;

    goto LABEL_6;
  }

LABEL_7:
  v31 = [[PKPaymentTransactionCellController alloc] initWithContactResolver:v23->_contactResolver];
  transactionCellController = v23->_transactionCellController;
  v23->_transactionCellController = v31;

  v33 = [MEMORY[0x1E69B8EF8] sharedService];
  webService = v23->_webService;
  v23->_webService = v33;

  objc_storeStrong(&v23->_peerPaymentWebService, a11);
  objc_storeStrong(&v23->_paymentServiceDataProvider, a12);
  v23->_detailViewStyle = a13;
  objc_storeStrong(&v23->_familyCollection, a5);
  objc_storeStrong(&v23->_account, a6);
  objc_storeStrong(&v23->_accountUserCollection, a7);
  v35 = [(PKAccountUserCollection *)v23->_accountUserCollection accountUserForTransaction:v23->_transaction];
  accountUser = v23->_accountUser;
  v23->_accountUser = v35;

  objc_storeStrong(&v23->_bankConnectInstitution, a8);
  v37 = [v20 copy];
  physicalCards = v23->_physicalCards;
  v23->_physicalCards = v37;

  v39 = [MEMORY[0x1E69B8400] sharedInstance];
  accountService = v23->_accountService;
  v23->_accountService = v39;

  [(PKAccountService *)v23->_accountService registerObserver:v23];
  v41 = [MEMORY[0x1E69B8DB8] paymentService];
  paymentService = v23->_paymentService;
  v23->_paymentService = v41;

  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  executionBlocksContentIsLoaded = v23->_executionBlocksContentIsLoaded;
  v23->_executionBlocksContentIsLoaded = v43;

  v45 = [(PKTransactionSourceCollection *)v23->_transactionSourceCollection paymentPass];
  paymentPass = v23->_paymentPass;
  v23->_paymentPass = v45;

  if (!v23->_paymentPass && v23->_account)
  {
    v47 = [MEMORY[0x1E69B8A58] sharedInstance];
    v48 = [(PKAccount *)v23->_account associatedPassUniqueID];
    v49 = [v47 passWithUniqueID:v48];
    v50 = [v49 paymentPass];
    v51 = v23->_paymentPass;
    v23->_paymentPass = v50;
  }

  v52 = [[PKPhysicalCardController alloc] initWithAccountService:v23->_accountService paymentPass:v23->_paymentPass account:v23->_account accountUser:v23->_accountUser physicalCards:v23->_physicalCards];
  physicalCardController = v23->_physicalCardController;
  v23->_physicalCardController = v52;

  v54 = objc_alloc_init(MEMORY[0x1E696AB78]);
  transactionDateFormatter = v23->_transactionDateFormatter;
  v23->_transactionDateFormatter = v54;

  v56 = [v103 bankConnectMetadata];
  v57 = [v56 roundTransactionDate];

  [(NSDateFormatter *)v23->_transactionDateFormatter setDateStyle:1];
  if ((v57 & 1) == 0)
  {
    [(NSDateFormatter *)v23->_transactionDateFormatter setTimeStyle:1];
  }

  v58 = objc_alloc_init(MEMORY[0x1E696AB78]);
  monthDayLocalFormatter = v23->_monthDayLocalFormatter;
  v23->_monthDayLocalFormatter = v58;

  [(NSDateFormatter *)v23->_monthDayLocalFormatter setLocalizedDateFormatFromTemplate:@"MMMM d"];
  v60 = objc_alloc_init(MEMORY[0x1E696AB78]);
  monthDayYearLocalFormatter = v23->_monthDayYearLocalFormatter;
  v23->_monthDayYearLocalFormatter = v60;

  [(NSDateFormatter *)v23->_monthDayYearLocalFormatter setDateStyle:1];
  [v95 addDelegate:v23];
  [v102 addDelegate:v23];
  v62 = [MEMORY[0x1E69B9000] sharedInstance];
  [v62 registerObserver:v23];

  v63 = [(PKPaymentPass *)v23->_paymentPass supportsDeepLinkingTransactions];
  if (v63)
  {
    LOBYTE(v63) = ([v103 isBankConnectTransaction] & 1) == 0 && +[PKPaymentNotificationAppURLHelper applicationExistsToHandleNotificationsForPaymentPass:](PKPaymentNotificationAppURLHelper, "applicationExistsToHandleNotificationsForPaymentPass:", v23->_paymentPass);
  }

  v23->_issuerAppDeepLinkingUIEnabled = v63;
  v23->_inBridge = PKBridgeUsesDarkAppearance();
  v23->_allowTransactionLinks = a14;
  [(PKPaymentTransactionDetailViewController *)v23 setTransaction:v103];
  v64 = [v103 transactionType];
  if (v64 == 3)
  {
    if (![v103 peerPaymentStatus])
    {
      v69 = [(PKPaymentTransaction *)v23->_transaction serviceIdentifier];
      v70 = [v69 length];
      v71 = PKLogFacilityTypeGetObject();
      v72 = os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
      if (v70)
      {
        if (v72)
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v71, OS_LOG_TYPE_DEFAULT, "Fetching remote status for pending transaction.", buf, 2u);
        }

        [(PKPaymentTransactionDetailViewController *)v23 _updatePeerPaymentTransactionStatusWithCompletion:0];
      }

      else
      {
        if (v72)
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v71, OS_LOG_TYPE_DEFAULT, "Not fetching remote status for pending transaction without a service identifier.", buf, 2u);
        }
      }
    }

    if (!a14 || ![v103 isPeerPaymentGroupRequestReceivedTransaction])
    {
      goto LABEL_33;
    }

    v66 = [v103 peerPaymentRequestToken];
    v73 = [objc_alloc(MEMORY[0x1E69B8788]) initWithTransactionType:3 transactionSourceCollection:v23->_transactionSourceCollection paymentDataProvider:0];
    transactionFetcher = v23->_transactionFetcher;
    v23->_transactionFetcher = v73;

    [(PKDashboardTransactionFetcher *)v23->_transactionFetcher filterPeerPaymentSubType:2];
    [(PKDashboardTransactionFetcher *)v23->_transactionFetcher filterPeerPaymentRequestToken:v66];
    [(PKDashboardTransactionFetcher *)v23->_transactionFetcher setDelegate:v23];
    [(PKPaymentTransactionDetailViewController *)v23 _updatePeerPaymentPendingRequestForRequestToken:v66];
    goto LABEL_32;
  }

  if (v64 == 10)
  {
    v65 = [v103 payments];
    v66 = [v65 firstObject];

    if ([v66 isCurrentlyCancellable])
    {
      v67 = [objc_alloc(MEMORY[0x1E69B8788]) initWithTransactionType:10 transactionSourceCollection:v23->_transactionSourceCollection paymentDataProvider:0];
      v68 = v23->_transactionFetcher;
      v23->_transactionFetcher = v67;

      [(PKDashboardTransactionFetcher *)v23->_transactionFetcher setDelegate:v23];
    }

LABEL_32:
  }

LABEL_33:
  v75 = [MEMORY[0x1E69B8708] sharedInstance];
  coarseLocationMonitor = v23->_coarseLocationMonitor;
  v23->_coarseLocationMonitor = v75;

  v77 = [MEMORY[0x1E696AD88] defaultCenter];
  [v77 addObserver:v23 selector:sel__handleCoarseLocationChangedNotification_ name:*MEMORY[0x1E69BB7B0] object:v23->_coarseLocationMonitor];

  if (v23->_account)
  {
    v78 = [[PKAccountServiceAccountResolutionController alloc] initWithAccount:v23->_account accountUserCollection:v23->_accountUserCollection transactionSourceCollection:v23->_transactionSourceCollection];
    accountResolutionController = v23->_accountResolutionController;
    v23->_accountResolutionController = v78;

    [(PKAccountServiceAccountResolutionController *)v23->_accountResolutionController setDelegate:v23];
  }

  v80 = objc_alloc(MEMORY[0x1E69635F8]);
  v81 = [v80 initWithBundleIdentifier:*MEMORY[0x1E69BBAE0] allowPlaceholder:0 error:0];
  if (v81)
  {
    v82 = objc_alloc_init(getFKInsightsFetchControllerClass());
    insightsFetchController = v23->_insightsFetchController;
    v23->_insightsFetchController = v82;

    v84 = objc_alloc_init(PKAppProtectionShieldConfiguration);
    foundInMailShieldConfiguration = v23->_foundInMailShieldConfiguration;
    v23->_foundInMailShieldConfiguration = v84;

    [(PKAppProtectionShieldConfiguration *)v23->_foundInMailShieldConfiguration setShowAuthOnAppear:0];
    [(PKAppProtectionShieldConfiguration *)v23->_foundInMailShieldConfiguration setShieldType:1];
    v86 = [objc_alloc(MEMORY[0x1E69B8558]) initWithAppType:1];
    [(PKAppProtectionShieldConfiguration *)v23->_foundInMailShieldConfiguration setApplication:v86];
    v87 = [MEMORY[0x1E69B8560] sharedInstanceForApp:v86];
    foundInMailShieldCoordinator = v23->_foundInMailShieldCoordinator;
    v23->_foundInMailShieldCoordinator = v87;

    [(PKAppProtectionCoordinator *)v23->_foundInMailShieldCoordinator registerObserver:v23];
    v23->_isFoundInMailLocked = [(PKAppProtectionCoordinator *)v23->_foundInMailShieldCoordinator isEffectivelyLocked];
    v23->_foundInMailShieldCheckPerformed = 0;
    v89 = [MEMORY[0x1E696AD88] defaultCenter];
    [v89 addObserver:v23 selector:sel__foundInMailApplicationWillResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];

    v90 = [MEMORY[0x1E696AD88] defaultCenter];
    [v90 addObserver:v23 selector:sel__foundInMailApplicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v91 = [(PKPaymentTransactionDetailViewController *)v23 navigationItem];
    [v91 pkui_setupScrollEdgeChromelessAppearance];
    [v91 pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
  }

  v106[0] = objc_opt_class();
  v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:1];
  v93 = [(PKPaymentTransactionDetailViewController *)v23 registerForTraitChanges:v92 withHandler:&__block_literal_global_264];

  v21 = v95;
LABEL_40:

  return v23;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(PKAccountService *)self->_accountService unregisterObserver:self];
  [(PKAppProtectionCoordinator *)self->_foundInMailShieldCoordinator unregisterObserver:self];
  v4.receiver = self;
  v4.super_class = PKPaymentTransactionDetailViewController;
  [(PKSectionTableViewController *)&v4 dealloc];
}

- (void)setTransaction:(id)a3
{
  v109 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (PKEqualObjects())
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      transaction = self->_transaction;
      *buf = 138412802;
      v104 = v8;
      v105 = 2112;
      v106 = transaction;
      v107 = 2112;
      v108 = v5;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "%@: skip updating transaction %@ with %@. The objects are equal.", buf, 0x20u);
    }

    goto LABEL_54;
  }

  objc_storeStrong(&self->_transaction, a3);
  peerPaymentStatusResponse = self->_peerPaymentStatusResponse;
  self->_peerPaymentStatusResponse = 0;

  associatedTransaction = self->_associatedTransaction;
  self->_associatedTransaction = 0;

  associatedReceipt = self->_associatedReceipt;
  self->_associatedReceipt = 0;

  self->_suppressReceiptImages = 0;
  self->_transactionCategory = [v5 effectiveTransactionCategory];
  self->_transactionCategoryAccessLevel = PKPaymentTransactionCategoryAccessLevel();
  v13 = [(PKPaymentTransactionDetailViewController *)self _explanationTextForPaymentTransaction:v5];
  transactionExplanation = self->_transactionExplanation;
  self->_transactionExplanation = v13;

  v15 = [v5 isMerchantTokenTransaction];
  if (v15)
  {
    v6 = [v5 recurringPeerPayment];
  }

  else
  {
    v6 = 0;
  }

  [(PKPaymentTransactionDetailViewController *)self _recomputeLineItems];
  [(PKPaymentTransactionDetailViewController *)self _reloadTableHeaderView];
  [(PKSectionTableViewController *)self reloadData];
  v16 = dispatch_group_create();
  if ([v5 transactionType] == 10 && (-[PKPaymentTransaction isBankConnectTransaction](self->_transaction, "isBankConnectTransaction") & 1) == 0)
  {
    v28 = [(PKAccount *)self->_account creditDetails];
    v29 = [v28 productTimeZone];
    productTimeZone = self->_productTimeZone;
    self->_productTimeZone = v29;

    v31 = [MEMORY[0x1E695DFE8] localTimeZone];
    self->_showProductTimeZone = PKEqualObjects() ^ 1;

    if (self->_productTimeZone)
    {
      if (self->_showProductTimeZone)
      {
        v32 = objc_alloc_init(MEMORY[0x1E696AB78]);
        productTimeZoneFormatter = self->_productTimeZoneFormatter;
        self->_productTimeZoneFormatter = v32;

        [(NSDateFormatter *)self->_productTimeZoneFormatter setDateStyle:1];
        [(NSDateFormatter *)self->_productTimeZoneFormatter setTimeStyle:1];
        [(NSDateFormatter *)self->_productTimeZoneFormatter setTimeZone:self->_productTimeZone];
        if (self->_showProductTimeZone)
        {
          [(PKPaymentTransactionDetailViewController *)self _reloadTableHeaderView];
        }
      }
    }
  }

  else if ([v5 transactionType] == 11 && objc_msgSend(v5, "accountType") == 2)
  {
    v17 = [(PKAccount *)self->_account creditDetails];
    v18 = [v17 productTimeZone];
    v19 = self->_productTimeZone;
    self->_productTimeZone = v18;

    v20 = objc_alloc_init(MEMORY[0x1E696AB78]);
    monthFormatter = self->_monthFormatter;
    self->_monthFormatter = v20;

    [(NSDateFormatter *)self->_monthFormatter setTimeZone:self->_productTimeZone];
    [(NSDateFormatter *)self->_monthFormatter setLocalizedDateFormatFromTemplate:@"MMMM"];
    v22 = objc_alloc_init(MEMORY[0x1E696AB78]);
    productTimeZoneMonthDayFormatter = self->_productTimeZoneMonthDayFormatter;
    self->_productTimeZoneMonthDayFormatter = v22;

    [(NSDateFormatter *)self->_productTimeZoneMonthDayFormatter setTimeZone:self->_productTimeZone];
    [(NSDateFormatter *)self->_productTimeZoneMonthDayFormatter setLocalizedDateFormatFromTemplate:@"MMMM d"];
    v24 = [v5 associatedStatementIdentifiers];
    if ([v24 count])
    {
      objc_initWeak(buf, self);
      dispatch_group_enter(v16);
      accountService = self->_accountService;
      v26 = [MEMORY[0x1E695DFD8] setWithArray:v24];
      v27 = [(PKAccount *)self->_account accountIdentifier];
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke;
      v100[3] = &unk_1E8027310;
      objc_copyWeak(&v102, buf);
      v101 = v16;
      [(PKAccountService *)accountService creditStatementsForStatementIdentifiers:v26 accountIdentifier:v27 completion:v100];

      objc_destroyWeak(&v102);
      objc_destroyWeak(buf);
    }

    else
    {
      self->_associatedCreditStatementsLoaded = 1;
      [(PKSectionTableViewController *)self reloadData];
    }
  }

  v71 = [v5 identifier];
  v72 = [v5 associatedReceiptUniqueID];
  if (v72 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    objc_initWeak(buf, self);
    dispatch_group_enter(v16);
    paymentServiceDataProvider = self->_paymentServiceDataProvider;
    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 3221225472;
    v97[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_5;
    v97[3] = &unk_1E8027338;
    objc_copyWeak(&v99, buf);
    v98 = v16;
    [(PKPaymentDataProvider *)paymentServiceDataProvider transactionReceiptForTransactionWithIdentifier:v71 updateIfNecessary:1 completion:v97];

    objc_destroyWeak(&v99);
    objc_destroyWeak(buf);
  }

  if (self->_allowTransactionLinks)
  {
    if ([v5 adjustmentTypeReason] == 3 || objc_msgSend(v5, "adjustmentType") == 9 || objc_msgSend(v5, "adjustmentType") == 14)
    {
      v35 = [v5 referenceIdentifier];
      v36 = [v5 transactionSourceIdentifier];
      v37 = v36;
      if (v36)
      {
        v38 = v36;
      }

      else
      {
        transactionSourceCollection = self->_transactionSourceCollection;
        v40 = [v5 transactionSourceIdentifier];
        v41 = [(PKTransactionSourceCollection *)transactionSourceCollection transactionSourceForTransactionSourceIdentifier:v40];
        v42 = [v41 transactionSourceIdentifiers];
        v38 = [v42 anyObject];
      }

      if (v35)
      {
        if (v38)
        {
          if (objc_opt_respondsToSelector())
          {
            objc_initWeak(buf, self);
            dispatch_group_enter(v16);
            v43 = self->_paymentServiceDataProvider;
            v94[0] = MEMORY[0x1E69E9820];
            v94[1] = 3221225472;
            v94[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_7;
            v94[3] = &unk_1E8027388;
            objc_copyWeak(&v96, buf);
            v95 = v16;
            [(PKPaymentDataProvider *)v43 transactionWithServiceIdentifier:v35 transactionSourceIdentifier:v38 completion:v94];

            objc_destroyWeak(&v96);
            objc_destroyWeak(buf);
          }
        }

        else
        {
          v44 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = self->_transactionSourceCollection;
            *buf = 138412546;
            v104 = v5;
            v105 = 2112;
            v106 = v45;
            _os_log_impl(&dword_1BD026000, v44, OS_LOG_TYPE_DEFAULT, "Error: the transaction source identifier was not defined for transaction %@ and transactionSourceCollection %@", buf, 0x16u);
          }
        }
      }
    }

    else if ([v5 transactionType] == 1)
    {
      v35 = [v5 serviceIdentifier];
      if (v35 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        objc_initWeak(buf, self);
        dispatch_group_enter(v16);
        v63 = self->_paymentServiceDataProvider;
        v91[0] = MEMORY[0x1E69E9820];
        v91[1] = 3221225472;
        v91[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_278;
        v91[3] = &unk_1E8027388;
        objc_copyWeak(&v93, buf);
        v92 = v16;
        [(PKPaymentDataProvider *)v63 transactionWithReferenceIdentifier:v35 completion:v91];

        objc_destroyWeak(&v93);
        objc_destroyWeak(buf);
      }
    }

    else if ([v5 transactionType])
    {
      if ([v5 transactionType] != 13)
      {
        goto LABEL_38;
      }

      v35 = [v5 referenceIdentifier];
      v64 = [v5 accountIdentifier];
      v65 = v64;
      if (v35 && v64)
      {
        objc_initWeak(buf, self);
        dispatch_group_enter(v16);
        v66 = self->_accountService;
        v81[0] = MEMORY[0x1E69E9820];
        v81[1] = 3221225472;
        v81[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_7_292;
        v81[3] = &unk_1E80273B0;
        objc_copyWeak(&v84, buf);
        v82 = v35;
        v83 = v16;
        [(PKAccountService *)v66 accountWithIdentifier:v65 completion:v81];

        objc_destroyWeak(&v84);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v35 = [v5 referenceIdentifier];
      if (v35 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        objc_initWeak(buf, self);
        dispatch_group_enter(v16);
        v67 = self->_paymentServiceDataProvider;
        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_3_282;
        v88[3] = &unk_1E8018038;
        objc_copyWeak(&v90, buf);
        v89 = v16;
        [(PKPaymentDataProvider *)v67 installmentPlansWithTransactionReferenceIdentifier:v35 completion:v88];

        objc_destroyWeak(&v90);
        objc_destroyWeak(buf);
      }

      if (objc_opt_respondsToSelector())
      {
        objc_initWeak(buf, self);
        dispatch_group_enter(v16);
        v68 = self->_paymentServiceDataProvider;
        v85[0] = MEMORY[0x1E69E9820];
        v85[1] = 3221225472;
        v85[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_5_290;
        v85[3] = &unk_1E8018038;
        objc_copyWeak(&v87, buf);
        v86 = v16;
        [(PKPaymentDataProvider *)v68 transactionTagsForTransactionWithIdentifier:v71 completion:v85];

        objc_destroyWeak(&v87);
        objc_destroyWeak(buf);
      }

      if (v6)
      {
        v69 = PKPeerPaymentTransactionForRecurringPayment();
        v70 = self->_associatedTransaction;
        self->_associatedTransaction = v69;

        [(PKSectionTableViewController *)self reloadData];
      }
    }
  }

LABEL_38:
  if (![v5 transactionType])
  {
    objc_initWeak(buf, self);
    v46 = self->_issuerInstallmentCriteria;
    v47 = [(PKPaymentService *)self->_paymentService paymentOffersCatalog];
    v48 = [(PKPaymentPass *)self->_paymentPass uniqueID];
    v49 = [v47 criteriaWithType:1 passUniqueID:v48];
    issuerInstallmentCriteria = self->_issuerInstallmentCriteria;
    self->_issuerInstallmentCriteria = v49;

    if ((PKEqualObjects() & 1) == 0)
    {
      [(PKSectionTableViewController *)self reloadData];
    }

    v51 = [(PKPaymentTransaction *)self->_transaction paymentHash];
    if (v51 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      dispatch_group_enter(v16);
      v52 = self->_paymentServiceDataProvider;
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_9_297;
      v78[3] = &unk_1E80273D8;
      objc_copyWeak(&v80, buf);
      v79 = v16;
      [(PKPaymentDataProvider *)v52 paymentOfferConfirmationRecordForTransactionWithPaymentHash:v51 completion:v78];

      objc_destroyWeak(&v80);
    }

    else
    {
      paymentOfferConfirmationRecord = self->_paymentOfferConfirmationRecord;
      self->_paymentOfferConfirmationRecord = 0;
    }

    objc_destroyWeak(buf);
  }

  if ((PKHideCardBenefitRewards() & 1) == 0)
  {
    v54 = [(PKPaymentTransaction *)self->_transaction paymentRewardsRedemption];
    v55 = v54;
    if (v54)
    {
      v56 = self->_paymentServiceDataProvider;
      v57 = [v54 balanceIdentifier];
      v58 = [(PKPaymentDataProvider *)v56 paymentRewardsBalanceWithIdentifier:v57];
      associatedPaymentRewardsBalance = self->_associatedPaymentRewardsBalance;
      self->_associatedPaymentRewardsBalance = v58;
    }
  }

  if (!self->_didLoadRelatedTransactions && (self->_transactionCategoryAccessLevel & 2) != 0)
  {
    objc_initWeak(buf, self);
    dispatch_group_enter(v16);
    paymentService = self->_paymentService;
    v61 = self->_transaction;
    v62 = [(PKPaymentTransactionDetailViewController *)self _relatedTransactionsSourceIdentifiers];
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_11;
    v75[3] = &unk_1E80113B0;
    objc_copyWeak(&v77, buf);
    v76 = v16;
    [(PKPaymentService *)paymentService hasTransactionsRelatedToTransaction:v61 transactionSourceIdentifiers:v62 completion:v75];

    objc_destroyWeak(&v77);
    objc_destroyWeak(buf);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_13;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v74, buf);
  dispatch_group_notify(v16, MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v74);
  objc_destroyWeak(buf);

LABEL_54:
}

void __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_2;
  v9[3] = &unk_1E8014828;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v6;
  v11 = v5;
  v12 = *(a1 + 32);
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v13);
}

void __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    WeakRetained[1530] = 1;
    if (!*(a1 + 32))
    {
      v3 = [*(a1 + 40) allObjects];
      v4 = [v3 pk_objectsPassingTest:&__block_literal_global_263];

      v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_266];

      v6 = v7[198];
      v7[198] = v5;
    }

    dispatch_group_leave(*(a1 + 48));
    [v7 reloadData];
    WeakRetained = v7;
  }
}

BOOL __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 openingDate];
  if (v3)
  {
    v4 = [v2 closingDate];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 openingDate];
  v6 = [v4 openingDate];

  v7 = [v5 compare:v6] == 1;
  return v7;
}

void __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_6;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _updateWithTransactionReceipt:*(a1 + 32)];
    dispatch_group_leave(*(a1 + 40));
    WeakRetained = v3;
  }
}

void __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_8;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained || (PKEqualObjects() & 1) != 0)
  {
    goto LABEL_6;
  }

  if ([*(a1 + 32) transactionType] != 14)
  {
    objc_storeStrong(WeakRetained + 145, *(a1 + 32));
    [WeakRetained _recomputeLineItems];
    [WeakRetained reloadData];
LABEL_6:
    dispatch_group_leave(*(a1 + 40));
    goto LABEL_7;
  }

  v3 = WeakRetained[194];
  v4 = [*(a1 + 32) referenceIdentifier];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_9;
  v5[3] = &unk_1E8027360;
  v5[4] = WeakRetained;
  v6 = *(a1 + 40);
  [v3 installmentPlansWithTransactionReferenceIdentifier:v4 completion:v5];

LABEL_7:
}

void __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_10;
  block[3] = &unk_1E8010A88;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_10(uint64_t a1)
{
  v2 = [*(a1 + 40) allObjects];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1168);
  *(v3 + 1168) = v2;

  [*(a1 + 32) _recomputeLineItems];
  [*(a1 + 32) reloadData];
  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

void __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_278(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_2_279;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_2_279(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(WeakRetained + 145, *(a1 + 32));
    [WeakRetained _recomputeLineItems];
    [WeakRetained reloadData];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_3_282(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_4_283;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_4_283(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastUpdated" ascending:0];
  v4 = *(a1 + 32);
  v7[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v6 = [v4 sortedArrayUsingDescriptors:v5];

  if (WeakRetained && (PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(WeakRetained + 146, v6);
    [WeakRetained _recomputeLineItems];
    [WeakRetained reloadData];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_5_290(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_6_291;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_6_291(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _updateWithTransactionTags:*(a1 + 32)];
    dispatch_group_leave(*(a1 + 40));
    WeakRetained = v3;
  }
}

void __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_7_292(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_8_293;
  v5[3] = &unk_1E8014828;
  objc_copyWeak(&v9, a1 + 6);
  v6 = v3;
  v7 = a1[4];
  v8 = a1[5];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v9);
}

void __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_8_293(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [*(a1 + 32) creditDetails];
  v4 = [v3 installmentPlanWithIdentifier:*(a1 + 40)];

  if (v4)
  {
    v6[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    if (!WeakRetained)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
    if (!WeakRetained)
    {
      goto LABEL_7;
    }
  }

  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(WeakRetained + 146, v5);
    [WeakRetained _recomputeLineItems];
    [WeakRetained reloadData];
  }

LABEL_7:
  dispatch_group_leave(*(a1 + 48));
}

void __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_9_297(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_10_298;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_10_298(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if ((PKEqualObjects() & 1) == 0)
    {
      objc_storeStrong(v3 + 163, *(a1 + 32));
      [v3 reloadData];
    }

    dispatch_group_leave(*(a1 + 40));
    WeakRetained = v3;
  }
}

void __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_11(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_12;
  block[3] = &unk_1E8018A78;
  objc_copyWeak(&v6, (a1 + 40));
  v7 = a2;
  v5 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v6);
}

void __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[1504] = *(a1 + 48);
    WeakRetained[1505] = 1;
    v3 = WeakRetained;
    if ([WeakRetained isViewLoaded])
    {
      [v3 reloadData];
    }

    dispatch_group_leave(*(a1 + 32));
    WeakRetained = v3;
  }
}

void __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained contentIsLoaded];
}

- (void)_recomputeLineItems
{
  v10 = objc_alloc_init(PKPaymentTransactionDetailAmountLineItemGenerator);
  v3 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)v10 lineItemsForTransaction:self->_transaction transactionSourceCollection:self->_transactionSourceCollection associatedTransaction:self->_associatedTransaction associatedReceipt:self->_associatedReceipt];
  lineItems = self->_lineItems;
  self->_lineItems = v3;

  v5 = [(PKPaymentTransaction *)self->_transaction timeZone];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFE8] localTimeZone];
    self->_showTransactionTimeZone = PKEqualObjects() ^ 1;

    if (self->_showTransactionTimeZone)
    {
      v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
      transactionLocalTimeDateFormatter = self->_transactionLocalTimeDateFormatter;
      self->_transactionLocalTimeDateFormatter = v7;

      [(NSDateFormatter *)self->_transactionLocalTimeDateFormatter setDateStyle:1];
      [(NSDateFormatter *)self->_transactionLocalTimeDateFormatter setTimeStyle:1];
      [(NSDateFormatter *)self->_transactionLocalTimeDateFormatter setTimeZone:v5];
      goto LABEL_6;
    }
  }

  else
  {
    self->_showTransactionTimeZone = 0;
  }

  v9 = self->_transactionLocalTimeDateFormatter;
  self->_transactionLocalTimeDateFormatter = 0;

LABEL_6:
}

- (BOOL)shouldMapSection:(unint64_t)a3
{
  switch(a3)
  {
    case 0uLL:
      v4 = [(PKPaymentTransaction *)self->_transaction unansweredQuestions];
      LOBYTE(v5) = [v4 count] != 0;
      goto LABEL_68;
    case 1uLL:
      v16 = [(PKPaymentTransaction *)self->_transaction disputeStatus];
      if (!v16 || v16 == 7 && ([(PKAccount *)self->_account hideEnhancedDisputeDetails]& 1) != 0)
      {
        goto LABEL_75;
      }

      LOBYTE(v5) = [(PKAccount *)self->_account hideDisputeDetails]^ 1;
      return v5 & 1;
    case 2uLL:
      v9 = [(PKPaymentTransaction *)self->_transaction altDSID];
      if (v9)
      {
        v10 = [(PKPaymentTransaction *)self->_transaction altDSID];
        v11 = PKCurrentUserAltDSID();
        v12 = v10 == v11 && [(PKPhysicalCardController *)self->_physicalCardController hasExpiredPhysicalCardOnly]&& [(PKPhysicalCardController *)self->_physicalCardController canReplacePhysicalCard];
      }

      else
      {
        v12 = [(PKPhysicalCardController *)self->_physicalCardController hasExpiredPhysicalCardOnly]&& [(PKPhysicalCardController *)self->_physicalCardController canReplacePhysicalCard];
      }

      LOBYTE(v5) = [(PKPaymentTransaction *)self->_transaction effectiveTransactionSource]== 5 && v12;
      return v5 & 1;
    case 3uLL:
      v13 = [(PKPaymentTransaction *)self->_transaction transactionType]== 15;
      goto LABEL_82;
    case 4uLL:
      transaction = self->_transaction;

      return [(PKPaymentTransaction *)transaction deviceScoreIdentifiersRequired];
    case 5uLL:
      LOBYTE(v5) = [(PKPaymentTransaction *)self->_transaction transactionType]== 15;
      return v5 & 1;
    case 6uLL:
      v19 = [(PKPaymentTransactionDetailViewController *)self _numberOfRecognitionHintsRows];
      goto LABEL_77;
    case 7uLL:
      v14 = [(PKPaymentTransaction *)self->_transaction preferredLocation];
      if (v14)
      {
        goto LABEL_87;
      }

      v15 = [(PKPaymentTransaction *)self->_transaction startStationLocation];
      if (v15)
      {
        LOBYTE(v5) = 1;
      }

      else
      {
        v22 = [(PKPaymentTransaction *)self->_transaction endStationLocation];
        LOBYTE(v5) = v22 != 0;
      }

      goto LABEL_101;
    case 8uLL:
      if ([(PKPaymentTransaction *)self->_transaction effectiveTransactionSource]!= 3)
      {
        goto LABEL_75;
      }

      v4 = [(PKPaymentTransaction *)self->_transaction merchant];
      v20 = [v4 originURL];
      LOBYTE(v5) = v20 != 0;

LABEL_68:
      return v5 & 1;
    case 9uLL:
      v8 = 1160;
      goto LABEL_81;
    case 0xAuLL:
      v18 = 1168;
      goto LABEL_65;
    case 0xBuLL:

      return [(PKPaymentTransactionDetailViewController *)self _shouldDisplayPaymentOfferConfirmationRecordStatus];
    case 0xCuLL:

      return [(PKPaymentTransactionDetailViewController *)self _shouldDisplayPaymentOfferConfirmationRecordFollowUp];
    case 0xDuLL:

      return [(PKPaymentTransactionDetailViewController *)self _shouldDisplayPaymentOfferViewPlanDetailsButton];
    case 0xEuLL:

      return [(PKPaymentTransactionDetailViewController *)self _shouldDisplaySetupPostPurchaseInstallments];
    case 0xFuLL:
      if (!self->_transaction)
      {
        goto LABEL_75;
      }

      return [PKPaymentOffersUIUtilities shouldDisplayRewardsRedemptionInfoForTransaction:?];
    case 0x10uLL:
      if (!self->_transaction)
      {
        goto LABEL_75;
      }

      return [PKPaymentOffersUIUtilities shouldDisplayRewardsRedemptionStatusLinkForTransaction:?];
    case 0x11uLL:
      v14 = [(PKPaymentTransaction *)self->_transaction awards];
      if ([v14 count])
      {
        goto LABEL_87;
      }

      v17 = [(PKPaymentTransaction *)self->_transaction barcodeIdentifier];
      if (v17)
      {
        LOBYTE(v5) = self->_issuerAppDeepLinkingUIEnabled;
      }

      else
      {
        LOBYTE(v5) = 0;
      }

      goto LABEL_100;
    case 0x12uLL:
      v14 = [(PKRetrieveMerchantTokensResponse *)self->_merchantTokenResponse merchantTokens];
      if (![v14 count])
      {
        goto LABEL_88;
      }

      LOBYTE(v5) = self->_associatedTransaction == 0;
      goto LABEL_101;
    case 0x13uLL:
      if (!PKIsPhone() || self->_detailViewStyle || !_os_feature_enabled_impl())
      {
        goto LABEL_75;
      }

      v18 = 1352;
      goto LABEL_65;
    case 0x14uLL:
      if (!PKIsPhone() || self->_detailViewStyle || !_os_feature_enabled_impl())
      {
        goto LABEL_75;
      }

      v18 = 1360;
      goto LABEL_65;
    case 0x15uLL:
      if (!PKIsPhone() || self->_detailViewStyle || !_os_feature_enabled_impl())
      {
        goto LABEL_75;
      }

      v18 = 1344;
LABEL_65:
      v19 = [*(&self->super.super.super.super.super.isa + v18) count];
LABEL_77:
      v13 = v19 == 0;
      goto LABEL_82;
    case 0x16uLL:
      if (!self->_didLoadRelatedTransactions)
      {
        goto LABEL_75;
      }

      v5 = (LOBYTE(self->_transactionCategoryAccessLevel) >> 1) & 1;
      return v5 & 1;
    case 0x17uLL:
      v19 = [(PKPaymentTransactionDetailViewController *)self _numberOfActionRowsEnabled];
      goto LABEL_77;
    case 0x18uLL:
      if (![PKReportIssueViewController canReportIssueForTransaction:self->_transaction bankConnectInstitution:self->_bankConnectInstitution paymentPass:self->_paymentPass])
      {
        goto LABEL_75;
      }

      return [(PKPaymentTransactionDetailViewController *)self _showSeparateReportMerchantInfoButton];
    case 0x19uLL:
      if (![(PKPaymentTransactionDetailViewController *)self _isFoundInInsightsSupported]|| ![(NSArray *)self->_foundInMailRowViewModels count])
      {
        goto LABEL_75;
      }

      v8 = 1376;
      goto LABEL_81;
    case 0x1AuLL:
      v14 = [(PKPaymentTransaction *)self->_transaction serviceIdentifier];
      if (![v14 length])
      {
        goto LABEL_88;
      }

      if (([(PKPaymentPass *)self->_paymentPass hasAssociatedPeerPaymentAccount]& 1) != 0)
      {
LABEL_87:
        LOBYTE(v5) = 1;
      }

      else
      {
        v21 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourcesForType:1];
        LOBYTE(v5) = [v21 count] != 0;
      }

      goto LABEL_101;
    case 0x1BuLL:

      return PKTransactionDebugDetailsEnabled();
    case 0x1CuLL:
      v14 = [(PKPaymentTransactionDetailViewController *)self transaction];
      if ([v14 transactionType] == 15)
      {
        v17 = [(PKPaymentTransaction *)self->_transaction identifier];
        LOBYTE(v5) = v17 != 0;
LABEL_100:
      }

      else
      {
LABEL_88:
        LOBYTE(v5) = 0;
      }

LABEL_101:

      break;
    case 0x1DuLL:
      v8 = 1512;
LABEL_81:
      v13 = *(&self->super.super.super.super.super.isa + v8) == 0;
LABEL_82:
      LOBYTE(v5) = !v13;
      break;
    default:
LABEL_75:
      LOBYTE(v5) = 0;
      break;
  }

  return v5 & 1;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PKPaymentTransactionDetailViewController;
  [(PKSectionTableViewController *)&v8 viewDidLoad];
  v3 = [(PKPaymentTransactionDetailViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionTitleValueLabelCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionDefaultCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionConfigurationCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKTransactionActionChangeCategoryCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionSubtitleCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionLocationMapCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionDetailLineItemCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionDateLineItemCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionReceiptLineItemCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionTransactionCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionQuestionCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionAwardCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionTransactionExplanationCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionGroupedPaymentsCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionRequestedElementsDataReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionMerchantTokenDeletedCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionOrderCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionReceiptCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionBarcodeCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionFoundInMailCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionFoundInMailLockedCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentRewardsRedemptionInfoCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentOfferConfirmationRecordCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentOfferConfirmationRecordFollowUpCellReuseIdentifier"];
  v4 = objc_opt_class();
  v5 = +[_TtC9PassKitUI41PKPaymentTransactionDetailTitleHeaderView reuseIdentifier];
  [v3 registerClass:v4 forHeaderFooterViewReuseIdentifier:v5];

  [v3 setRowHeight:*MEMORY[0x1E69DE3D0]];
  [v3 setEstimatedRowHeight:50.0];
  v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v3 setTableFooterView:v6];

  [(PKPaymentTransactionDetailViewController *)self _reloadTableHeaderView];
  v7 = [(PKPaymentTransactionDetailViewController *)self view];
  [v7 setAccessibilityIdentifier:*MEMORY[0x1E69B9D48]];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKPaymentTransactionDetailViewController;
  [(PKPaymentTransactionDetailViewController *)&v6 viewWillAppear:a3];
  v4 = [(PKPaymentTransactionDetailViewController *)self navigationItem];
  if (_UISolariumEnabled())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [v4 setBackButtonDisplayMode:v5];
  [(PKPaymentTransactionDetailViewController *)self _fetchMerchantToken];
  if (PKIsPhone() && !self->_detailViewStyle && _os_feature_enabled_impl())
  {
    [(PKPaymentTransactionDetailViewController *)self _fetchAllApplePayOrderRowViewModels];
  }

  if ([(PKPaymentTransactionDetailViewController *)self _isFoundInInsightsSupported])
  {
    [(PKPaymentTransactionDetailViewController *)self _fetchAllInsightRowViewModels];
    [(PKPaymentTransactionDetailViewController *)self _triggerInsightRowModelPrune];
  }

  [(PKPaymentTransactionDetailViewController *)self _fetchAppPrivacyURL];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentTransactionDetailViewController;
  [(PKPaymentTransactionDetailViewController *)&v5 viewDidAppear:a3];
  if ([(PKPaymentTransaction *)self->_transaction transactionType]== 15)
  {
    v4 = [MEMORY[0x1E69B8540] identityViewDidAppearReportEvent:self->_transaction];
    [MEMORY[0x1E69B8540] subject:*MEMORY[0x1E69BB6F8] sendEvent:v4];
  }
}

- (void)_updatePeerPaymentTransactionStatusWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(PKPaymentTransactionDetailViewController *)self _peerPaymentController];
  v6 = [(PKPaymentTransaction *)self->_transaction serviceIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__PKPaymentTransactionDetailViewController__updatePeerPaymentTransactionStatusWithCompletion___block_invoke;
  v8[3] = &unk_1E8027400;
  objc_copyWeak(&v10, &location);
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  [v5 statusForPaymentIdentifier:v6 withCompletion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __94__PKPaymentTransactionDetailViewController__updatePeerPaymentTransactionStatusWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__PKPaymentTransactionDetailViewController__updatePeerPaymentTransactionStatusWithCompletion___block_invoke_2;
  block[3] = &unk_1E8019C48;
  objc_copyWeak(&v16, (a1 + 48));
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v16);
}

void __94__PKPaymentTransactionDetailViewController__updatePeerPaymentTransactionStatusWithCompletion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  objc_storeStrong(WeakRetained + 201, *(a1 + 32));
  if (*(a1 + 32))
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __94__PKPaymentTransactionDetailViewController__updatePeerPaymentTransactionStatusWithCompletion___block_invoke_3;
    v8[3] = &unk_1E8010A10;
    v3 = *(a1 + 40);
    v8[4] = WeakRetained;
    v8[5] = v3;
    [MEMORY[0x1E69DD250] pkui_animateUsingOptions:6 animations:v8 completion:0];
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Failed to get updated remote status with error: %@", buf, 0xCu);
    }
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    if (*(a1 + 32))
    {
      v7 = *(a1 + 48) == 0;
    }

    else
    {
      v7 = 0;
    }

    (*(v6 + 16))(v6, v7);
  }
}

uint64_t __94__PKPaymentTransactionDetailViewController__updatePeerPaymentTransactionStatusWithCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _updateTableHeaderHeight];
  v2 = [*(a1 + 32) tableView];
  [v2 layoutIfNeeded];

  v3 = *(a1 + 40);

  return [v3 updateSectionVisibilityAndReloadIfNecessaryForSections:&unk_1F3CC87E0];
}

- (void)_updatePeerPaymentPendingRequestForRequestToken:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__74;
  v17[4] = __Block_byref_object_dispose__74;
  v18 = 0;
  v5 = objc_alloc_init(MEMORY[0x1E69B8658]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __92__PKPaymentTransactionDetailViewController__updatePeerPaymentPendingRequestForRequestToken___block_invoke;
  v13[3] = &unk_1E801D128;
  v6 = v4;
  v14 = v6;
  objc_copyWeak(&v16, &location);
  v15 = v17;
  [v5 addOperation:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __92__PKPaymentTransactionDetailViewController__updatePeerPaymentPendingRequestForRequestToken___block_invoke_4;
  v11[3] = &unk_1E801B6D0;
  objc_copyWeak(&v12, &location);
  v11[4] = v17;
  [v5 addOperation:v11];
  v7 = [MEMORY[0x1E695DFB0] null];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __92__PKPaymentTransactionDetailViewController__updatePeerPaymentPendingRequestForRequestToken___block_invoke_6;
  v9[3] = &unk_1E8019248;
  objc_copyWeak(&v10, &location);
  v8 = [v5 evaluateWithInput:v7 completion:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v16);

  _Block_object_dispose(v17, 8);
  objc_destroyWeak(&location);
}

void __92__PKPaymentTransactionDetailViewController__updatePeerPaymentPendingRequestForRequestToken___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E69B9000] sharedInstance];
  v20[0] = *(a1 + 32);
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__PKPaymentTransactionDetailViewController__updatePeerPaymentPendingRequestForRequestToken___block_invoke_2;
  v15[3] = &unk_1E8022D00;
  objc_copyWeak(&v19, (a1 + 48));
  v12 = v9;
  v17 = v12;
  v13 = v8;
  v14 = *(a1 + 40);
  v16 = v13;
  v18 = v14;
  [v10 peerPaymentPendingRequestsForRequestTokens:v11 completion:v15];

  objc_destroyWeak(&v19);
}

void __92__PKPaymentTransactionDetailViewController__updatePeerPaymentPendingRequestForRequestToken___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__PKPaymentTransactionDetailViewController__updatePeerPaymentPendingRequestForRequestToken___block_invoke_3;
  block[3] = &unk_1E8022CD8;
  objc_copyWeak(&v12, (a1 + 56));
  v8 = v3;
  v10 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v9 = v4;
  v11 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __92__PKPaymentTransactionDetailViewController__updatePeerPaymentPendingRequestForRequestToken___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained && [*(a1 + 32) count] == 1)
  {
    v2 = [*(a1 + 32) firstObject];
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    objc_storeStrong(WeakRetained + 189, *(*(*(a1 + 56) + 8) + 40));
  }

  (*(*(a1 + 48) + 16))();
}

void __92__PKPaymentTransactionDetailViewController__updatePeerPaymentPendingRequestForRequestToken___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [*(*(*(a1 + 32) + 8) + 40) groupID];
  v10 = v9;
  if (WeakRetained && v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __92__PKPaymentTransactionDetailViewController__updatePeerPaymentPendingRequestForRequestToken___block_invoke_5;
    v11[3] = &unk_1E8022D28;
    v11[4] = WeakRetained;
    v13 = v7;
    v12 = v6;
    PKPeerPaymentMessagesChatNameAndImageDataForGroupIdentifier(v10, v11);
  }

  else
  {
    (*(v7 + 2))(v7, v6, 1);
  }
}

void __92__PKPaymentTransactionDetailViewController__updatePeerPaymentPendingRequestForRequestToken___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = v4;
    objc_storeStrong((v5 + 1520), a2);
    (*(*(a1 + 48) + 16))();
    v4 = v6;
  }
}

void __92__PKPaymentTransactionDetailViewController__updatePeerPaymentPendingRequestForRequestToken___block_invoke_6(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__PKPaymentTransactionDetailViewController__updatePeerPaymentPendingRequestForRequestToken___block_invoke_7;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __92__PKPaymentTransactionDetailViewController__updatePeerPaymentPendingRequestForRequestToken___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadData];
    WeakRetained = v2;
  }
}

- (void)viewWillLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = PKPaymentTransactionDetailViewController;
  [(PKPaymentTransactionDetailViewController *)&v7 viewWillLayoutSubviews];
  v3 = [(PKPaymentTransactionDetailViewController *)self tableView];
  [(PKPaymentTransactionDetailViewController *)self _updateTableHeaderHeight];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    headerView = self->_headerView;
    v5 = [(PKPaymentTransactionDetailViewController *)self navigationItem];
    v6 = v5;
    if (headerView)
    {
      [v3 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:v5];
    }

    else
    {
      [v5 _setManualScrollEdgeAppearanceProgress:1.0];
    }
  }
}

- (void)_reloadTableHeaderView
{
  v3 = [(PKPaymentTransaction *)self->_transaction transactionType];
  v4 = v3;
  switch(v3)
  {
    case 0:
      if ([(PKPaymentTransaction *)self->_transaction accountType]!= 1)
      {
        goto LABEL_2;
      }

      v22 = [(PKPaymentTransaction *)self->_transaction payments];
      v23 = [v22 count];

      if (v23)
      {
        goto LABEL_84;
      }

      v69 = [(PKPaymentTransaction *)self->_transaction transfers];
      if ([v69 count])
      {

        goto LABEL_124;
      }

      v72 = [(PKPaymentTransaction *)self->_transaction referenceIdentifier];
      v73 = [v72 length];

      if (!v73)
      {
        goto LABEL_2;
      }

      goto LABEL_124;
    case 1:
    case 4:
    case 9:
    case 12:
    case 13:
    case 14:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
LABEL_2:
      v5 = [(PKPaymentTransaction *)self->_transaction merchant];
      v6 = v5;
      if (self->_showRawName && ([v5 rawName], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v8 = v7;
        v9 = [v6 rawName];
      }

      else
      {
        v9 = [v6 displayName];
      }

      if (![v9 length])
      {
        v10 = PKLocalizedPaymentString(&cfstr_PaymentSummary_2.isa);

        v9 = v10;
      }

      v11 = [(PKPaymentTransaction *)self->_transaction displayLocation];
      v12 = [v11 length];

      if (v12)
      {
        v13 = MEMORY[0x1E696AEC0];
        v14 = [(PKPaymentTransaction *)self->_transaction displayLocation];
        v15 = [v13 stringWithFormat:@"%@, %@", v9, v14];

        v9 = v15;
      }

      goto LABEL_127;
    case 2:
      v34 = [(PKPaymentTransaction *)self->_transaction transitModifiers];
      v35 = [(PKPaymentTransaction *)self->_transaction transitType];
      v36 = v35;
      v150 = v4;
      v37 = 0;
      if ((v34 & 8) != 0)
      {
        if (v35 <= 256)
        {
          if (v35 > 3)
          {
            switch(v35)
            {
              case 4:
                v38 = @"TRAIN_TRANSACTION_LIST_FARE_ADJUSTMENT";
                break;
              case 7:
                v38 = @"LIGHT_RAIL_TRANSACTION_LIST_FARE_ADJUSTMENT";
                break;
              case 8:
                v38 = @"CABLE_CAR_TRANSACTION_LIST_FARE_ADJUSTMENT";
                break;
              default:
                goto LABEL_221;
            }
          }

          else
          {
            switch(v35)
            {
              case 1:
                v38 = @"TRANSIT_TRANSACTION_LIST_FARE_ADJUSTMENT";
                break;
              case 2:
                v38 = @"METRO_TRANSACTION_LIST_FARE_ADJUSTMENT";
                break;
              case 3:
                v38 = @"BUS_TRANSACTION_LIST_FARE_ADJUSTMENT";
                break;
              default:
                goto LABEL_221;
            }
          }
        }

        else if (v35 <= 259)
        {
          if (v35 == 257)
          {
            v38 = @"SHINKANSEN_TRANSACTION_LIST_FARE_ADJUSTMENT";
          }

          else if (v35 == 258)
          {
            v38 = @"MAGLEV_TRANSACTION_LIST_FARE_ADJUSTMENT";
          }

          else
          {
            v38 = @"TAXI_TRANSACTION_LIST_FARE_ADJUSTMENT";
          }
        }

        else if (v35 > 1024)
        {
          if (v35 == 1025)
          {
            v38 = @"GREEN_CAR_TRANSACTION_LIST_FARE_ADJUSTMENT";
          }

          else
          {
            if (v35 != 1026)
            {
              goto LABEL_221;
            }

            v38 = @"METRO_UPGRADE_TRANSACTION_LIST_FARE_ADJUSTMENT";
          }
        }

        else if (v35 == 260)
        {
          v38 = @"FERRY_TRANSACTION_LIST_FARE_ADJUSTMENT";
        }

        else
        {
          if (v35 != 261)
          {
            goto LABEL_221;
          }

          v38 = @"BIKE_TRANSACTION_LIST_FARE_ADJUSTMENT";
        }
      }

      else
      {
        if ((v34 & 0x10) == 0)
        {
          goto LABEL_221;
        }

        if (v35 <= 256)
        {
          if (v35 > 3)
          {
            switch(v35)
            {
              case 4:
                v38 = @"TRAIN_TRANSACTION_LIST_FARE_REBATE";
                break;
              case 7:
                v38 = @"LIGHT_RAIL_TRANSACTION_LIST_FARE_REBATE";
                break;
              case 8:
                v38 = @"CABLE_CAR_TRANSACTION_LIST_FARE_REBATE";
                break;
              default:
                goto LABEL_221;
            }
          }

          else
          {
            switch(v35)
            {
              case 1:
                v38 = @"TRANSIT_TRANSACTION_LIST_FARE_REBATE";
                break;
              case 2:
                v38 = @"METRO_TRANSACTION_LIST_FARE_REBATE";
                break;
              case 3:
                v38 = @"BUS_TRANSACTION_LIST_FARE_REBATE";
                break;
              default:
                goto LABEL_221;
            }
          }
        }

        else if (v35 <= 259)
        {
          if (v35 == 257)
          {
            v38 = @"SHINKANSEN_TRANSACTION_LIST_FARE_REBATE";
          }

          else if (v35 == 258)
          {
            v38 = @"MAGLEV_TRANSACTION_LIST_FARE_REBATE";
          }

          else
          {
            v38 = @"TAXI_TRANSACTION_LIST_FARE_REBATE";
          }
        }

        else if (v35 > 1024)
        {
          if (v35 == 1025)
          {
            v38 = @"GREEN_CAR_TRANSACTION_LIST_FARE_REBATE";
          }

          else
          {
            if (v35 != 1026)
            {
              goto LABEL_221;
            }

            v38 = @"METRO_UPGRADE_TRANSACTION_LIST_FARE_REBATE";
          }
        }

        else if (v35 == 260)
        {
          v38 = @"FERRY_TRANSACTION_LIST_FARE_REBATE";
        }

        else
        {
          if (v35 != 261)
          {
            goto LABEL_221;
          }

          v38 = @"BIKE_TRANSACTION_LIST_FARE_REBATE";
        }
      }

      v37 = PKLocalizedPaymentString(&v38->isa);
LABEL_221:
      v136 = [(PKPaymentTransaction *)self->_transaction startStation];
      v137 = [(PKPaymentTransaction *)self->_transaction endStation];
      v138 = [(PKPaymentTransaction *)self->_transaction displayLocation];
      v139 = [(PKPaymentTransaction *)self->_transaction merchant];
      v140 = [v139 displayName];

      if (v136)
      {
        v141 = v137 == 0;
      }

      else
      {
        v141 = 1;
      }

      v156 = v138;
      if (!v141)
      {
        v143 = v140;
        v144 = PKLocalizedPaymentString(&cfstr_TransitTransac.isa, &cfstr_12.isa, v136, v137);
        goto LABEL_235;
      }

      if (v136 | v137)
      {
        v143 = v140;
        if (v136)
        {
          v142 = v136;
        }

        else
        {
          v142 = v137;
        }

        v144 = v142;
LABEL_235:
        v9 = v144;
        if (v37)
        {
          goto LABEL_237;
        }

        goto LABEL_236;
      }

      if ([v138 length])
      {
        v143 = v140;
        v144 = v138;
        goto LABEL_235;
      }

      if ([v140 length])
      {
        v143 = v140;
        v144 = v140;
        goto LABEL_235;
      }

      v143 = v140;
      if (![(PKPaymentTransaction *)self->_transaction transactionSource]&& (v36 == 516 || v36 == 513))
      {
        v144 = [(PKPaymentPass *)self->_paymentPass organizationName];
        goto LABEL_235;
      }

      v9 = 0;
      if (!v37)
      {
LABEL_236:
        v37 = PKPaymentTransactionTransitSubtypeToLocalizedTitle();
      }

LABEL_237:
      v145 = v37;
      v146 = v145;
      if (v9)
      {
        v4 = v150;
        if (v145)
        {
          if (([(PKPaymentTransaction *)self->_transaction shouldSuppressDate]& 1) != 0)
          {
            v28 = 0;
          }

          else
          {
            transactionDateFormatter = self->_transactionDateFormatter;
            v148 = [(PKPaymentTransaction *)self->_transaction transactionDate];
            v28 = [(NSDateFormatter *)transactionDateFormatter stringFromDate:v148];

            v4 = v150;
          }

          v26 = v146;
        }

        else
        {
          v26 = 0;
          v28 = 0;
        }
      }

      else
      {
        v26 = 0;
        v28 = 0;
        v9 = v145;
        v4 = v150;
      }

      v27 = 0;
      v154 = 1;
      goto LABEL_129;
    case 3:
      v149 = v3;
      v16 = [(PKPaymentTransaction *)self->_transaction peerPaymentMemo];
      v17 = [(PKPaymentTransaction *)self->_transaction recurringPeerPayment];
      v18 = [v17 memo];
      v19 = v18;
      v154 = v18 == 0;
      if (v18)
      {
        v20 = [v18 text];

        v21 = PKPeerPaymentRecurringPaymentMemoImage(v19, 80.0, 80.0);
        v16 = v20;
      }

      else
      {
        v21 = 0;
      }

      if ([v16 length])
      {
        v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra.isa, &stru_1F3BD5BF0.isa, v16);
        if (v19)
        {
          [v17 frequency];
          v50 = [v17 startDate];
          v51 = PKPeerPaymentRecurringPaymentFrequencyToLocalizedWeekdayString();

          if (v51)
          {
            v52 = PKLocalizedPeerPaymentRecurringString(&cfstr_RecurringPayme_12.isa, &stru_1F3BD6370.isa, v9, v51);

            v9 = v52;
          }
        }
      }

      else
      {
        v53 = [(PKPaymentTransaction *)self->_transaction peerPaymentCounterpartHandle];
        if ([(PKPaymentTransaction *)self->_transaction peerPaymentPaymentMode]== 2)
        {
          v54 = v53;
        }

        else
        {
          v66 = [(PKContactResolver *)self->_contactResolver hasCachedResultForHandle:v53];
          contactResolver = self->_contactResolver;
          if (v66)
          {
            v68 = [(PKContactResolver *)contactResolver contactForHandle:v53];
          }

          else
          {
            v158[0] = MEMORY[0x1E69E9820];
            v158[1] = 3221225472;
            v158[2] = __66__PKPaymentTransactionDetailViewController__reloadTableHeaderView__block_invoke;
            v158[3] = &unk_1E80178C0;
            v158[4] = self;
            [(PKContactResolver *)contactResolver contactForHandle:v53 withCompletion:v158];
            v68 = 0;
          }

          v54 = [MEMORY[0x1E69B8F30] displayNameForCounterpartHandle:v53 contact:v68];
        }

        v71 = [(PKPaymentTransaction *)self->_transaction peerPaymentType]- 1;
        if (v71 > 2)
        {
          v9 = 0;
        }

        else
        {
          v9 = PKLocalizedPeerPaymentString(&off_1E80276C0[v71]->isa, &stru_1F3BD5BF0.isa, v54);
        }
      }

      v28 = 0;
      v26 = 0;
      v4 = v149;
      v27 = v21;
      goto LABEL_129;
    case 5:
      v41 = [(PKPaymentTransaction *)self->_transaction transfers];
      if (![v41 count])
      {
        goto LABEL_49;
      }

      v42 = [(PKPaymentTransaction *)self->_transaction featureIdentifier];

      if (v42 != 5)
      {
        goto LABEL_50;
      }

      v43 = [(PKPaymentTransaction *)self->_transaction transfers];
      v41 = [v43 firstObject];

      v44 = [v41 externalAccount];
      v45 = [v44 type];

      if (v45 == 2 && [v41 type] == 3)
      {
        [(PKPaymentTransaction *)self->_transaction featureIdentifier];
        v9 = PKLocalizedFeatureString();

        if (v9)
        {
          goto LABEL_127;
        }
      }

      else
      {
LABEL_49:
      }

LABEL_50:
      v48 = [(PKPaymentTransaction *)self->_transaction secondaryFundingSourceType];
      switch(v48)
      {
        case 0:
LABEL_124:
          v49 = @"TRANSACTION_TYPE_WITHDRAWAL_GENERIC";
          goto LABEL_125;
        case 2:
          v49 = @"TRANSACTION_TYPE_WITHDRAWAL_DEBIT";
          goto LABEL_125;
        case 1:
          v49 = @"TRANSACTION_TYPE_WITHDRAWAL_BANK_ACCOUNT";
          goto LABEL_125;
      }

LABEL_54:
      v27 = 0;
      v28 = 0;
      v26 = 0;
      v9 = 0;
      goto LABEL_128;
    case 6:
      if ([(PKPaymentTransaction *)self->_transaction isRecurring]&& [(PKPaymentTransaction *)self->_transaction accountType]== 1)
      {
        v24 = PKLocalizedPeerPaymentRecurringString(&cfstr_TransactionDet_93.isa);
      }

      else if ([(PKPaymentTransaction *)self->_transaction featureIdentifier]== 5)
      {
LABEL_83:
        [(PKPaymentTransaction *)self->_transaction featureIdentifier];
LABEL_84:
        v24 = PKLocalizedFeatureString();
      }

      else
      {
        v49 = @"TRANSACTION_TYPE_TOP_UP";
LABEL_125:
        v24 = PKLocalizedPaymentString(&v49->isa);
      }

LABEL_126:
      v9 = v24;
LABEL_127:
      v27 = 0;
      v28 = 0;
      v26 = 0;
LABEL_128:
      v154 = 1;
      goto LABEL_129;
    case 7:
      v9 = PKLocalizedTitleForTransactionWithAdjustment();
      v26 = PKLocalizedSubtitleForTransactionWithAdjustment();
      v27 = 0;
      v28 = 0;
      goto LABEL_128;
    case 8:
      v39 = [(PKPaymentTransaction *)self->_transaction merchantProvidedDescription];
      v40 = v39;
      if (v39)
      {
        v9 = v39;
      }

      else
      {
        v65 = [(PKPaymentTransaction *)self->_transaction merchant];
        v9 = [v65 displayName];
      }

      goto LABEL_127;
    case 10:
      if (![(PKPaymentTransaction *)self->_transaction isBankConnectTransaction])
      {
        goto LABEL_84;
      }

      v24 = PKLocalizedBankConnectString(&cfstr_BankConnectTra_0.isa);
      goto LABEL_126;
    case 11:
      v25 = [(PKPaymentTransaction *)self->_transaction accountType];
      if (v25 == 3)
      {
        goto LABEL_83;
      }

      if (v25 == 2)
      {
        goto LABEL_84;
      }

      goto LABEL_54;
    case 15:
      v29 = [(PKPaymentTransaction *)self->_transaction merchant];
      v30 = v29;
      if (self->_showRawName && ([v29 rawName], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v32 = v31;
        v33 = [v30 rawName];
      }

      else
      {
        v33 = [v30 displayName];
      }

      v46 = [v33 length];
      if (v46)
      {
        v47 = v33;
      }

      else
      {
        v55 = [(PKPaymentTransaction *)self->_transaction releasedData];
        [v55 verificationType];

        v47 = PKTransactionReleasedDataVerificationTypeToLocalizedTitle();
      }

      v9 = v47;
      v56 = [(PKPaymentTransaction *)self->_transaction displayLocation];
      v57 = [v56 length];

      if (v57)
      {
        v58 = [(PKPaymentTransaction *)self->_transaction displayLocation];
LABEL_76:
        v60 = v58;
        goto LABEL_77;
      }

      if (v46)
      {
        v59 = [(PKPaymentTransaction *)self->_transaction releasedData];
        [v59 verificationType];

        v58 = PKTransactionReleasedDataVerificationTypeToLocalizedTitle();
        goto LABEL_76;
      }

      v60 = 0;
LABEL_77:
      if (([(PKPaymentTransaction *)self->_transaction shouldSuppressDate]& 1) != 0)
      {
        v61 = 0;
      }

      else
      {
        v62 = self->_transactionDateFormatter;
        v63 = [(PKPaymentTransaction *)self->_transaction transactionDate];
        v64 = [(NSDateFormatter *)v62 stringFromDate:v63];

        if ([v60 length])
        {
          v61 = v64;
        }

        else
        {

          v61 = 0;
          v60 = v64;
        }
      }

      if (v30)
      {
        v27 = 0;
      }

      else
      {
        PKUIScreenScale();
        v70 = PKMapsColorForMerchantCategory();
        v27 = PKIconForGenericBusiness();
      }

      v154 = 1;
      v26 = v60;
      v28 = v61;
LABEL_129:
      v74 = [(PKPaymentTransaction *)self->_transaction isBankConnectTransaction];
      transaction = self->_transaction;
      v155 = v27;
      if (v74)
      {
        v76 = [(PKPaymentTransaction *)transaction merchant];
        v77 = v76;
        if (self->_showRawName && ([v76 rawName], (v78 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v79 = v78;
          v80 = [v77 rawName];
        }

        else
        {
          v80 = [v77 displayName];
        }

        v87 = [(PKPaymentTransaction *)self->_transaction localizedTypeDescription];
        v152 = v26;
        v153 = v28;
        v151 = v77;
        if (![v87 length] || -[PKPaymentTransaction transactionType](self->_transaction, "transactionType") == 16)
        {
          v88 = PKLocalizedPaymentString(&cfstr_PaymentSummary_2.isa);

          v87 = v88;
        }

        v89 = self->_transactionDateFormatter;
        v90 = [(PKPaymentTransaction *)self->_transaction transactionDate];
        v28 = [(NSDateFormatter *)v89 stringFromDate:v90];

        v91 = [v80 length];
        if (v91)
        {
          v92 = v80;
        }

        else
        {
          v92 = v87;
        }

        v93 = v92;

        v94 = [(PKPaymentTransaction *)self->_transaction displayLocation];
        v95 = [v94 length];

        if (v95)
        {
          v96 = MEMORY[0x1E696AEC0];
          [(PKPaymentTransaction *)self->_transaction displayLocation];
          v98 = v97 = v4;
          v99 = [v96 stringWithFormat:@"%@, %@", v93, v98];

          v4 = v97;
          v9 = v99;
        }

        else
        {
          v9 = v93;
        }

        v100 = [(PKPaymentTransaction *)self->_transaction transactionType];
        v86 = v151;
        if (v100 > 0x16)
        {
          v26 = v28;
          v101 = v152;
          v28 = v153;
        }

        else
        {
          v101 = v26;
          if (((1 << v100) & 0x7EFF7D) != 0 && v91)
          {
            v26 = v87;

            v101 = v153;
          }

          else
          {
            v26 = v28;
            v28 = v153;
          }
        }
      }

      else
      {
        if (([(PKPaymentTransaction *)transaction shouldSuppressDate]& 1) != 0)
        {
          goto LABEL_159;
        }

        if (!v26)
        {
          v81 = self->_transactionDateFormatter;
          v82 = [(PKPaymentTransaction *)self->_transaction transactionDate];
          v26 = [(NSDateFormatter *)v81 stringFromDate:v82];
        }

        if (v4 == 10 && self->_showProductTimeZone)
        {
          productTimeZoneFormatter = self->_productTimeZoneFormatter;
          v84 = [(PKPaymentTransaction *)self->_transaction transactionDate];
          v85 = [(NSDateFormatter *)productTimeZoneFormatter stringFromDate:v84];

          v86 = v85;
          v80 = [(NSTimeZone *)self->_productTimeZone abbreviation];
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", v85, v80];
        }

        else
        {
          if (!self->_showTransactionTimeZone)
          {
            goto LABEL_159;
          }

          transactionLocalTimeDateFormatter = self->_transactionLocalTimeDateFormatter;
          v103 = [(PKPaymentTransaction *)self->_transaction transactionDate];
          v86 = [(NSDateFormatter *)transactionLocalTimeDateFormatter stringFromDate:v103];

          v104 = [(PKPaymentTransaction *)self->_transaction timeZone];
          v80 = [v104 abbreviation];

          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", v86, v80];
        }

        v28 = v87 = v28;
      }

LABEL_159:
      if ([(PKPaymentTransaction *)self->_transaction isBankConnectTransaction])
      {
        v105 = [(PKPaymentTransaction *)self->_transaction formattedBalanceAdjustmentAmount];
        v106 = v155;
        goto LABEL_170;
      }

      v106 = v155;
      if (v4 == 2)
      {
        v110 = [(PKPaymentTransactionDetailViewController *)self formattedBalanceAdjustmentAmountWithTransitDescriptors];
LABEL_167:
        v105 = v110;
        goto LABEL_170;
      }

      if (v4 != 3)
      {
        v110 = [(PKPaymentTransaction *)self->_transaction formattedBalanceAdjustmentAmount];
        goto LABEL_167;
      }

      v107 = [(PKPaymentTransaction *)self->_transaction formattedBalanceAdjustmentSubtotalAmount];
      v108 = v107;
      if (v107)
      {
        v109 = v107;
      }

      else
      {
        v109 = [(PKPaymentTransaction *)self->_transaction formattedBalanceAdjustmentAmount];
      }

      v105 = v109;

LABEL_170:
      if (![v105 length] && -[PKPaymentTransaction transactionType](self->_transaction, "transactionType") != 15)
      {
        headerView = self->_headerView;
        self->_headerView = 0;

        v119 = [(PKPaymentTransactionDetailViewController *)self navigationItem];
        [v119 setTitle:v9];

        v120 = [(PKPaymentTransactionDetailViewController *)self navigationController];
        v121 = [v120 navigationBar];
        [v121 _setTitleOpacity:1.0];

        goto LABEL_190;
      }

      v111 = objc_alloc_init(PKPaymentTransactionDetailHeaderView);
      v112 = self->_headerView;
      self->_headerView = v111;

      [(PKPaymentTransactionDetailHeaderView *)self->_headerView setInBridge:self->_inBridge];
      [(PKPaymentTransactionDetailHeaderView *)self->_headerView setUseStroke:v154];
      v113 = [(PKPaymentTransaction *)self->_transaction merchant];
      v114 = [v113 rawName];

      if (v114)
      {
        v115 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTransactionHeaderTapRecognizer_];
        [(PKPaymentTransactionDetailHeaderView *)self->_headerView addGestureRecognizer:v115];
      }

      v116 = [v105 length];
      v117 = self->_headerView;
      if (!v116)
      {
        [(PKPaymentTransactionDetailHeaderView *)v117 setHasProminentSubtitle:1];
        if (self->_iconGenerator)
        {
          if (!v106)
          {
LABEL_181:
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __66__PKPaymentTransactionDetailViewController__reloadTableHeaderView__block_invoke_3;
            aBlock[3] = &unk_1E8022148;
            aBlock[4] = self;
            v124 = _Block_copy(aBlock);
            if ([(PKPaymentTransaction *)self->_transaction transactionType]== 15)
            {
              if ([(PKPaymentTransaction *)self->_transaction transactionSource]== 2)
              {
                v125 = [(PKPaymentTransaction *)self->_transaction releasedData];
                v126 = [v125 application];
                v127 = v126 != 0;
              }

              else
              {
                v127 = 0;
              }

              v132 = v127;
              v131 = v124;
              v106 = [(PKPaymentTransactionIconGenerator *)self->_iconGenerator iconForTransaction:self->_transaction size:v132 ignoreLogoURL:0 requestType:v124 iconHandler:80.0, 80.0];
            }

            else
            {
              iconGenerator = self->_iconGenerator;
              v129 = [(PKPaymentTransaction *)self->_transaction merchant];
              v130 = iconGenerator;
              v131 = v124;
              v106 = [(PKPaymentTransactionIconGenerator *)v130 iconForMerchant:v129 size:0 ignoreLogoURL:0 requestType:v124 iconHandler:80.0, 80.0];
            }

            if (!v106)
            {
              goto LABEL_189;
            }
          }
        }

        else
        {
          v122 = [[PKPaymentTransactionIconGenerator alloc] initWithCache:1 scale:PKUIScreenScale()];
          v123 = self->_iconGenerator;
          self->_iconGenerator = v122;

          if (!v106)
          {
            goto LABEL_181;
          }
        }

        [(PKPaymentTransactionDetailHeaderView *)self->_headerView setMerchantIcon:v106];
        goto LABEL_189;
      }

      [(PKPaymentTransactionDetailHeaderView *)v117 setAmountText:v105];
      [(PKPaymentTransactionDetailHeaderView *)self->_headerView setMerchantIcon:v106];
LABEL_189:
      [(PKPaymentTransactionDetailHeaderView *)self->_headerView setSubtitleText:v9];
      [(PKPaymentTransactionDetailHeaderView *)self->_headerView setSecondarySubtitleText:v26];
      [(PKPaymentTransactionDetailHeaderView *)self->_headerView setTertiarySubtitleText:v28];
      v133 = [(PKPaymentTransactionDetailViewController *)self navigationItem];
      [v133 setTitle:0];

      v120 = [(PKPaymentTransactionDetailViewController *)self navigationItem];
      [v120 setLargeTitleDisplayMode:2];
LABEL_190:

      if ([(PKPaymentTransaction *)self->_transaction transactionType]== 15)
      {
        [(PKPaymentTransactionDetailViewController *)self _fetchDataReleaseTransactionConfiguration];
      }

      v134 = [(PKPaymentTransactionDetailViewController *)self tableView];
      [v134 setTableHeaderView:self->_headerView];

      v135 = [(PKPaymentTransactionDetailViewController *)self view];
      [v135 setNeedsLayout];

      return;
    default:
      goto LABEL_54;
  }
}

void __66__PKPaymentTransactionDetailViewController__reloadTableHeaderView__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__PKPaymentTransactionDetailViewController__reloadTableHeaderView__block_invoke_2;
    block[3] = &unk_1E8010970;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __66__PKPaymentTransactionDetailViewController__reloadTableHeaderView__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __66__PKPaymentTransactionDetailViewController__reloadTableHeaderView__block_invoke_4;
    v5[3] = &unk_1E8010A10;
    v5[4] = *(a1 + 32);
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (id)formattedBalanceAdjustmentAmountWithTransitDescriptors
{
  v3 = [(PKPaymentTransaction *)self->_transaction amount];
  transaction = self->_transaction;
  if (!v3)
  {
    v8 = [(PKPaymentTransaction *)transaction amounts];
    if (v8)
    {
    }

    else
    {
      v9 = [(PKPaymentTransaction *)self->_transaction plans];

      if (!v9)
      {
        goto LABEL_10;
      }
    }

    v9 = [(PKPaymentTransaction *)self->_transaction formattedStringForMultipleAmountsForPass:self->_paymentPass];
    goto LABEL_10;
  }

  v5 = [(PKPaymentTransaction *)transaction formattedBalanceAdjustmentSubtotalAmount];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(PKPaymentTransaction *)self->_transaction formattedBalanceAdjustmentAmount];
  }

  v9 = v7;

LABEL_10:
  if ([(PKPaymentTransaction *)self->_transaction isZeroTransaction])
  {
    v10 = [(PKPaymentTransaction *)self->_transaction plans];
    v11 = [v10 count];

    if (!v11)
    {
      v12 = [MEMORY[0x1E696AB90] zero];

      v3 = v12;
    }
  }

  v13 = [(PKPaymentTransaction *)self->_transaction transitType];
  v14 = [MEMORY[0x1E696AB90] zero];
  v15 = [v3 isEqualToNumber:v14];

  if (!v15 || (([(PKPaymentTransaction *)self->_transaction enRoute]& 1) == 0 ? (([(PKPaymentTransaction *)self->_transaction transitModifiers]& 1) != 0 ? (v16 = @"TRANSIT_TRANSACTION_ANNOTATION_COMMUTE_DISCOUNT") : v13 != 1025 ? ([(PKPaymentTransaction *)self->_transaction transactionStatus]? (v16 = @"TRANSIT_TRANSACTION_FARE_FREE") : (v16 = @"TRANSIT_TRANSACTION_PENDING")) : (v16 = @"TRANSIT_TRANSACTION_REDEEMED")) : (v16 = @"TRANSIT_TRANSACTION_EN_ROUTE"), PKLocalizedPaymentString(&v16->isa), (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v17 = v9;
  }

  v18 = v17;

  return v17;
}

- (void)_updateTableHeaderHeight
{
  if (self->_headerView)
  {
    v12 = [(PKPaymentTransactionDetailViewController *)self tableView];
    [v12 bounds];
    v4 = v3;
    [(PKPaymentTransactionDetailHeaderView *)self->_headerView frame];
    v6 = v5;
    [v12 safeAreaInsets];
    [(PKPaymentTransactionDetailHeaderView *)self->_headerView sizeThatFits:v4 - v7 - v8, 1.79769313e308];
    if (v6 != v9)
    {
      v10 = v9;
      headerView = self->_headerView;
      [v12 _rectForTableHeaderView];
      [(PKPaymentTransactionDetailHeaderView *)headerView setFrame:?];
      [v12 _tableHeaderHeightDidChangeToHeight:v10];
    }
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  switch([(PKSectionTableViewController *)self sectionForIndex:a4])
  {
    case 0uLL:
    case 4uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 18uLL:
    case 24uLL:
    case 26uLL:
    case 28uLL:
    case 29uLL:
      goto LABEL_2;
    case 1uLL:
    case 2uLL:
    case 27uLL:
      return 2;
    case 3uLL:

      return [(PKPaymentTransactionDetailViewController *)self _numberOfAmountDetailsRows];
    case 5uLL:

      return [(PKPaymentTransactionDetailViewController *)self _numberOfDataReleaseRows];
    case 6uLL:

      return [(PKPaymentTransactionDetailViewController *)self _numberOfRecognitionHintsRows];
    case 10uLL:
      v6 = 1168;
      goto LABEL_36;
    case 11uLL:
      LODWORD(result) = [(PKPaymentTransactionDetailViewController *)self _shouldDisplayPaymentOfferConfirmationRecordStatus];
      goto LABEL_32;
    case 12uLL:
      LODWORD(result) = [(PKPaymentTransactionDetailViewController *)self _shouldDisplayPaymentOfferConfirmationRecordFollowUp];
      goto LABEL_32;
    case 13uLL:
      LODWORD(result) = [(PKPaymentTransactionDetailViewController *)self _shouldDisplayPaymentOfferViewPlanDetailsButton];
      goto LABEL_32;
    case 14uLL:
      LODWORD(result) = [(PKPaymentTransactionDetailViewController *)self _shouldDisplaySetupPostPurchaseInstallments];
      goto LABEL_32;
    case 15uLL:
      if (!self->_transaction)
      {
        goto LABEL_21;
      }

      LODWORD(result) = [PKPaymentOffersUIUtilities shouldDisplayRewardsRedemptionInfoForTransaction:?];
      goto LABEL_32;
    case 16uLL:
      if (!self->_transaction)
      {
        goto LABEL_21;
      }

      LODWORD(result) = [PKPaymentOffersUIUtilities shouldDisplayRewardsRedemptionStatusLinkForTransaction:?];
LABEL_32:
      result = result;
      break;
    case 17uLL:
      v7 = [(PKPaymentTransaction *)self->_transaction awards];
      v8 = [v7 count];

      return v8 + self->_issuerAppDeepLinkingUIEnabled;
    case 19uLL:
      v6 = 1352;
      goto LABEL_36;
    case 20uLL:
      v6 = 1360;
      goto LABEL_36;
    case 21uLL:
      v6 = 1344;
      goto LABEL_36;
    case 22uLL:
      if (!self->_didLoadRelatedTransactions)
      {
        goto LABEL_21;
      }

      result = (self->_transactionCategoryAccessLevel >> 1) & 1;
      break;
    case 23uLL:

      return [(PKPaymentTransactionDetailViewController *)self _numberOfActionRowsEnabled];
    case 25uLL:
      if (self->_isFoundInMailLocked)
      {
LABEL_2:
        result = 1;
      }

      else
      {
        v6 = 1400;
LABEL_36:
        v9 = *(&self->super.super.super.super.super.isa + v6);

        result = [v9 count];
      }

      break;
    default:
LABEL_21:
      result = 0;
      break;
  }

  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  switch(-[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v7 section]))
  {
    case 0uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _questionCellForTableView:v6 atIndexPath:v7];
      goto LABEL_40;
    case 1uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _disputeStatusCellForTableView:v6 atIndexPath:v7];
      goto LABEL_40;
    case 2uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _expiredPhysicalCardCellForTableView:v6 atIndexPath:v7];
      goto LABEL_40;
    case 3uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _amountDetailsCellForTableView:v6 atIndexPath:v7];
      goto LABEL_40;
    case 4uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _fraudRiskCellForTableView:v6];
      goto LABEL_40;
    case 5uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _releasedDataCellForTableView:v6 atIndexPath:v7];
      goto LABEL_40;
    case 6uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _recognitionHintsCellForTableView:v6 atIndexPath:v7];
      goto LABEL_40;
    case 7uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _merchantAddressCellForTableView:v6];
      goto LABEL_40;
    case 8uLL:
      v9 = [v6 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionDefaultCellReuseIdentifier"];
      v23 = [v9 textLabel];
      v24 = [(PKPaymentTransaction *)self->_transaction merchant];
      v25 = [v24 originURL];
      v26 = [v25 absoluteString];
      [v23 setText:v26];

      v27 = [v9 textLabel];
      [v27 setTextColor:0];

      [v9 setAccessoryType:1];
      goto LABEL_41;
    case 9uLL:
      transactionSourceCollection = self->_transactionSourceCollection;
      v14 = self->_associatedTransaction;
      v15 = [(PKPaymentTransaction *)v14 transactionSourceIdentifier];
      v16 = [(PKTransactionSourceCollection *)transactionSourceCollection transactionSourceForTransactionSourceIdentifier:v15];

      v17 = [(PKFamilyMemberCollection *)self->_familyCollection familyMemberForTransactionSource:v16];
      v9 = [v6 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionTransactionCellReuseIdentifier" forIndexPath:v7];
      [(PKPaymentTransactionCellController *)self->_transactionCellController configureCell:v9 forTransaction:v14 transactionSource:v16 familyMember:v17 account:self->_account detailStyle:0 deviceName:0 avatarViewDelegate:0];

      goto LABEL_41;
    case 10uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _associatedInstallmentCellForTableView:v6 atIndexPath:v7];
      goto LABEL_40;
    case 11uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _tableViewCellPaymentOfferConfirmationRecordStatusForTableView:v6 atIndexPath:v7];
      goto LABEL_40;
    case 12uLL:
      goto LABEL_7;
    case 13uLL:
      v9 = [(PKPaymentTransactionDetailViewController *)self _tableView:v6 actionButtonCellForSection:24];
      v18 = [v9 textLabel];
      v19 = PKLocalizedPaymentOffersString(&cfstr_ViewPayLaterDe.isa);
      goto LABEL_25;
    case 14uLL:
      if ([(PKPaymentOfferConfirmationRecord *)self->_paymentOfferConfirmationRecord isSetupPaymentOfferAfterPurchase]&& ([(PKPaymentOfferConfirmationRecord *)self->_paymentOfferConfirmationRecord transactionDetailMessageTileDynamicContent], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
      {
LABEL_7:
        v8 = [(PKPaymentTransactionDetailViewController *)self _tableViewCellPaymentOfferConfirmationRecordFollowUpForTableView:v6 atIndexPath:v7];
LABEL_40:
        v9 = v8;
      }

      else
      {
        v28 = [(PKPaymentOfferInstallmentCriteria *)self->_issuerInstallmentCriteria programName];
        v29 = v28;
        if (v28)
        {
          v30 = v28;
        }

        else
        {
          v30 = PKLocalizedPaymentOffersString(&cfstr_SetupPaymentPl.isa);
        }

        v18 = v30;

        v9 = [(PKPaymentTransactionDetailViewController *)self _tableView:v6 actionButtonCellForSection:14];
        v21 = [v9 textLabel];
        v20 = v21;
        v22 = v18;
LABEL_49:
        [v21 setText:v22];
      }

LABEL_41:
      if (self->_detailViewStyle == 2)
      {
        v31 = objc_alloc(MEMORY[0x1E69DD250]);
        v32 = [v31 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v33 = PKBridgeAppearanceGetAppearanceSpecifier();
        v34 = [v33 tableViewCellHighlightColor];
        [v32 setBackgroundColor:v34];

        [v9 setSelectedBackgroundView:v32];
      }

      else
      {
        [v9 setSelectedBackgroundView:0];
      }

      return v9;
    case 15uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _tableViewCellPaymentRewardsRedemptionInfoForTableView:v6 atIndexPath:v7];
      goto LABEL_40;
    case 16uLL:
      v9 = [(PKPaymentTransactionDetailViewController *)self _tableView:v6 actionButtonCellForSection:16];
      v10 = [v9 textLabel];
      v11 = PKLocalizedPayWithPointsString(&cfstr_TransactionDet_5.isa);
      [v10 setText:v11];

      [v9 setAccessibilityIdentifier:*MEMORY[0x1E69B9B50]];
      goto LABEL_41;
    case 17uLL:
      v8 = -[PKPaymentTransactionDetailViewController _tableView:cellForAwardAtIndex:](self, "_tableView:cellForAwardAtIndex:", v6, [v7 row]);
      goto LABEL_40;
    case 18uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _merchantTokenManagementCellForTableView:v6];
      goto LABEL_40;
    case 19uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _applePayBarcodeRowCellForTableView:v6 atIndexPath:v7];
      goto LABEL_40;
    case 20uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _applePayReceiptRowCellForTableView:v6 atIndexPath:v7];
      goto LABEL_40;
    case 21uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _applePayOrderRowCellForTableView:v6 atIndexPath:v7];
      goto LABEL_40;
    case 22uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _tableViewCellChangeCategoryForTableView:v6];
      goto LABEL_40;
    case 23uLL:
      v8 = -[PKPaymentTransactionDetailViewController _tableView:cellForActionAtIndex:](self, "_tableView:cellForActionAtIndex:", v6, [v7 row]);
      goto LABEL_40;
    case 24uLL:
      v9 = [(PKPaymentTransactionDetailViewController *)self _tableView:v6 actionButtonCellForSection:24];
      v18 = [v9 textLabel];
      v19 = PKLocalizedPaymentString(&cfstr_TransactionDet_27.isa);
LABEL_25:
      v20 = v19;
      v21 = v18;
      v22 = v20;
      goto LABEL_49;
    case 25uLL:
      if (self->_isFoundInMailLocked)
      {
        [(PKPaymentTransactionDetailViewController *)self _foundInMailLockedRowCellForTableView:v6 atIndexPath:v7];
      }

      else
      {
        [(PKPaymentTransactionDetailViewController *)self _foundInMailRowCellForTableView:v6 atIndexPath:v7];
      }
      v8 = ;
      goto LABEL_40;
    case 26uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _transactionIdentifierCellForTableView:v6];
      goto LABEL_40;
    case 27uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _debugDetailCellForTableView:v6 atIndexPath:v7];
      goto LABEL_40;
    case 28uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _tableViewCellForDeleteTransaction:v6];
      goto LABEL_40;
    case 29uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _tableViewCellForGroupedPaymentsSummary:v6];
      goto LABEL_40;
    default:
      v9 = 0;
      goto LABEL_41;
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v10 section]);
  switch(v11)
  {
    case 0x19uLL:
      if (self->_isFoundInMailLocked && !self->_foundInMailShieldCheckPerformed)
      {
        self->_foundInMailShieldCheckPerformed = 1;
        objc_initWeak(buf, self);
        foundInMailShieldCoordinator = self->_foundInMailShieldCoordinator;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __88__PKPaymentTransactionDetailViewController_tableView_willDisplayCell_forRowAtIndexPath___block_invoke;
        v15[3] = &unk_1E8011180;
        objc_copyWeak(&v16, buf);
        [(PKAppProtectionCoordinator *)foundInMailShieldCoordinator isShieldRequiredWithCompletion:v15];
        objc_destroyWeak(&v16);
        objc_destroyWeak(buf);
      }

      break;
    case 0xCuLL:
      if (self->_paymentOfferConfirmationRecord)
      {
        v12 = PKPaymentOfferConfirmationRecordFollowUpViewedIdentifier();
        if ((PKSharedCacheGetBoolForKey() & 1) == 0)
        {
          PKSharedCacheSetBoolForKey();
          [(PKPaymentService *)self->_paymentService updateWalletBadgeCount];
          v13 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v18 = v12;
            _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "Marking Payment Offer Confirmation Record Follow Up as viewed %@", buf, 0xCu);
          }
        }
      }

      break;
    case 3uLL:
      [(PKPaymentTransactionDetailViewController *)self _tableView:v8 willDisplayAmountDetailsCell:v9 atIndexPath:v10];
      break;
  }
}

void __88__PKPaymentTransactionDetailViewController_tableView_willDisplayCell_forRowAtIndexPath___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1384] = a2;
    v4 = WeakRetained;
    [WeakRetained reloadData];
    WeakRetained = v4;
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 deselectRowAtIndexPath:v7 animated:1];
  switch(-[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v7 section]))
  {
    case 1uLL:
      if ([v7 row] == 1)
      {
        if (-[PKPaymentTransaction disputeStatus](self->_transaction, "disputeStatus") != 7 || (-[PKPaymentTransaction disputeStatusDetails](self->_transaction, "disputeStatusDetails"), v8 = objc_claimAutoreleasedReturnValue(), [v8 statusReasons], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "containsObject:", @"decisioned"), v9, v8, (v10 & 1) != 0))
        {
          v11 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/en-us/HT212270"];
          v12 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:v11];
          [v12 setModalPresentationStyle:2];
          goto LABEL_12;
        }

        if (+[PKBusinessChatController deviceSupportsBusinessChat])
        {
          v11 = [(PKPaymentTransactionDetailViewController *)self _businessChatContextForUnavailableDisputeStatus];
          [(PKPaymentTransactionDetailViewController *)self _openBusinessChatControllerForContext:v11];
          goto LABEL_51;
        }

        [(PKPaymentTransactionDetailViewController *)self _presentContactViewController];
      }

      goto LABEL_52;
    case 2uLL:
      if ([v7 row] == 1)
      {
        objc_initWeak(&location, self);
        physicalCardController = self->_physicalCardController;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __78__PKPaymentTransactionDetailViewController_tableView_didSelectRowAtIndexPath___block_invoke;
        v33[3] = &unk_1E80263B8;
        objc_copyWeak(&v34, &location);
        [(PKPhysicalCardController *)physicalCardController replaceFlowViewControllerForReason:1 content:0 currentPhysicalCard:0 completion:v33];
        objc_destroyWeak(&v34);
        objc_destroyWeak(&location);
      }

      goto LABEL_52;
    case 7uLL:
      [(PKPaymentTransactionDetailViewController *)self _tableView:v6 didSelectMechantAddressAtIndexPath:v7];
      goto LABEL_52;
    case 8uLL:
      v20 = [(PKPaymentTransaction *)self->_transaction merchant];
      v19 = [v20 originURL];

      if (v19)
      {
        v21 = [v19 scheme];

        if (!v21)
        {
          v22 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v19 resolvingAgainstBaseURL:0];
          [v22 setScheme:@"https"];
          v23 = [v22 URL];

          v19 = v23;
        }

        goto LABEL_23;
      }

      goto LABEL_52;
    case 9uLL:
      v11 = self->_associatedTransaction;
      v12 = [(PKPaymentTransaction *)v11 recurringPeerPayment];
      if (v12)
      {
        [(PKPaymentTransactionDetailViewController *)self _presentRecurringPeerPayment:v12];
      }

      else
      {
        LOBYTE(v32) = 0;
        v30 = [[PKPaymentTransactionDetailViewController alloc] initWithTransaction:v11 transactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection account:self->_account accountUserCollection:self->_accountUserCollection bankConnectInstitution:self->_bankConnectInstitution physicalCards:self->_physicalCards contactResolver:self->_contactResolver peerPaymentWebService:self->_peerPaymentWebService paymentServiceDataProvider:self->_paymentServiceDataProvider detailViewStyle:self->_detailViewStyle allowTransactionLinks:v32];
        v31 = [(PKPaymentTransactionDetailViewController *)self navigationController];
        if ([v31 pk_settings_useStateDrivenNavigation])
        {
          [v31 pk_settings_pushViewController:v30];
        }

        else
        {
          [v31 pushViewController:v30 animated:1];
        }
      }

      goto LABEL_50;
    case 10uLL:
      v11 = -[NSArray objectAtIndex:](self->_associatedInstallmentPlans, "objectAtIndex:", [v7 row]);
      [(PKPaymentTransactionDetailViewController *)self _showInstallmentDetailsForAssociatedInstallment:v11];
      goto LABEL_51;
    case 13uLL:
      v19 = [(PKPaymentTransaction *)self->_transaction issuerInstallmentManagementURL];
LABEL_23:
      PKOpenURL();
      goto LABEL_24;
    case 14uLL:
      [(PKPaymentTransactionDetailViewController *)self presentPaymentOfferInstallmentSelectionFlowFromIndexPath:v7 fromPushNotification:0 completion:0];
      goto LABEL_52;
    case 16uLL:
      if (PKHideCardBenefitRewards())
      {
        goto LABEL_52;
      }

      v28 = [(PKPaymentTransaction *)self->_transaction paymentRewardsRedemption];
      v11 = [v28 statusLink];

      if (!v11)
      {
        v11 = [(PKPaymentRewardsBalance *)self->_associatedPaymentRewardsBalance programURL];
      }

      PKOpenURL();
      goto LABEL_51;
    case 17uLL:
      v24 = [v7 row];
      v25 = [(PKPaymentTransaction *)self->_transaction awards];
      v26 = [v25 count];

      if (v24 >= v26)
      {
        v11 = 0;
      }

      else
      {
        v27 = [(PKPaymentTransaction *)self->_transaction awards];
        v11 = [v27 objectAtIndex:v24];
      }

      [(PKPaymentTransactionDetailViewController *)self _openOfferDetailsInIssuerApp:v11];
      goto LABEL_51;
    case 18uLL:
      [(PKPaymentTransactionDetailViewController *)self _didSelectMerchantTokenManagement];
      goto LABEL_52;
    case 20uLL:
      v19 = -[NSArray objectAtIndexedSubscript:](self->_applePayReceiptRowViewModels, "objectAtIndexedSubscript:", [v7 row]);
      [v19 didSelectCell];
LABEL_24:

      goto LABEL_52;
    case 21uLL:
      v11 = -[NSArray objectAtIndexedSubscript:](self->_applePayOrderRowViewModels, "objectAtIndexedSubscript:", [v7 row]);
      FKOrderDetailsViewControllerProviderClass_0 = getFKOrderDetailsViewControllerProviderClass_0();
      v15 = [(PKPaymentTransaction *)v11 orderTypeIdentifier];
      v16 = [(PKPaymentTransaction *)v11 orderIdentifier];
      v17 = [(PKPaymentTransaction *)v11 fulfillmentIdentifier];
      v12 = [(objc_class *)FKOrderDetailsViewControllerProviderClass_0 makeViewControllerWithOrderTypeIdentifier:v15 orderIdentifier:v16 fulfillmentIdentifier:v17];

LABEL_12:
      [(PKPaymentTransactionDetailViewController *)self presentViewController:v12 animated:1 completion:0];
      goto LABEL_50;
    case 23uLL:
      [(PKPaymentTransactionDetailViewController *)self _tableView:v6 didSelectActionAtIndexPath:v7];
      goto LABEL_52;
    case 24uLL:
      [(PKPaymentTransactionDetailViewController *)self _presentReportIssue];
      goto LABEL_52;
    case 25uLL:
      if (!self->_isFoundInMailLocked)
      {
        [(PKPaymentTransactionDetailViewController *)self _tableView:v6 didSelectFoundInMailItemAtIndexPath:v7];
      }

      goto LABEL_52;
    case 27uLL:
      if ([v7 row] != 1)
      {
        goto LABEL_52;
      }

      v13 = [[PKTransactionDebugDetailsTabBarController alloc] initWithTransaction:self->_transaction transactionSourceCollection:self->_transactionSourceCollection];
LABEL_39:
      v11 = v13;
      v29 = [(PKPaymentTransactionDetailViewController *)self navigationController];
      if ([v29 pk_settings_useStateDrivenNavigation])
      {
        [v29 pk_settings_pushViewController:v11];
      }

      else
      {
        [v29 pushViewController:v11 animated:1];
      }

      goto LABEL_51;
    case 28uLL:
      if (self->_deleteOverrider)
      {
        [(PKPaymentTransactionDetailViewController *)self _performDeleteOverride];
      }

      else
      {
        v11 = [(PKPaymentTransactionDetailViewController *)self tableView];
        v12 = [(PKPaymentTransaction *)v11 cellForRowAtIndexPath:v7];
        [(PKPaymentTransactionDetailViewController *)self _showDeleteConfirmationSheet:v12];
LABEL_50:

LABEL_51:
      }

LABEL_52:

      return;
    case 29uLL:
      v13 = [[PKPeerPaymentGroupedPaymentsViewController alloc] initWithRequest:self->_peerPaymentPendingRequest transactionSourceCollection:self->_transactionSourceCollection context:1];
      goto LABEL_39;
    default:
      goto LABEL_52;
  }
}

void __78__PKPaymentTransactionDetailViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v8)
    {
      v7 = [[PKNavigationController alloc] initWithRootViewController:v8];
      [(PKNavigationController *)v7 setModalPresentationStyle:2];
    }

    else
    {
      if (!v5)
      {
        goto LABEL_7;
      }

      v7 = PKAlertForDisplayableErrorWithHandlers(v5, 0, 0, 0);
    }

    [WeakRetained presentViewController:v7 animated:1 completion:0];
  }

LABEL_7:
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:a4];
  v6 = 0;
  if (v5 <= 16)
  {
    if (v5 <= 9)
    {
      if (v5 == 6)
      {
        v7 = @"TRANSACTION_SHOWN_ON_STATEMENT_AS_TITLE";
        goto LABEL_24;
      }

      if (v5 != 9)
      {
        goto LABEL_27;
      }

      if ([(PKPaymentTransaction *)self->_associatedTransaction transactionType]== 1)
      {
        v7 = @"TRANSACTION_ASSOCIATED_REFUND_TITLE";
LABEL_24:
        v6 = PKLocalizedPaymentString(&v7->isa);
        goto LABEL_27;
      }

      v10 = [(PKPaymentTransaction *)self->_transaction recurringPeerPayment];

      if (v10)
      {
        goto LABEL_26;
      }

      [(PKPaymentTransaction *)self->_transaction featureIdentifier];
LABEL_22:
      v6 = PKLocalizedFeatureString();
      goto LABEL_27;
    }

    if (v5 == 10)
    {
      goto LABEL_22;
    }

    if (v5 != 15)
    {
      goto LABEL_27;
    }

    if ((PKHideCardBenefitRewards() & 1) == 0)
    {
      v6 = PKLocalizedPayWithPointsString(&cfstr_TransactionDet_96.isa);
      goto LABEL_27;
    }

LABEL_26:
    v6 = 0;
    goto LABEL_27;
  }

  if (v5 > 24)
  {
    if (v5 == 25)
    {
      v7 = @"TRANSACTION_DETAILS_FOUND_IN_MAIL_TITLE";
      goto LABEL_24;
    }

    if (v5 == 27)
    {
      v6 = @"Debug";
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    if (v5 == 17)
    {
      v8 = [(PKPaymentTransaction *)self->_transaction awards];
      v9 = [v8 count];

      if (v9)
      {
        v6 = PKLocalizedAquamanString(&cfstr_OffersTitle.isa);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v5 == 21)
    {
      v6 = PKLocalizedOrderManagementString(&cfstr_TransactionOrd.isa);
    }
  }

LABEL_27:

  return v6;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:a4];
  v6 = 0;
  if (v5 > 5)
  {
    if (v5 <= 22)
    {
      if (v5 != 6)
      {
        if (v5 != 16)
        {
          goto LABEL_66;
        }

        if ((PKHideCardBenefitRewards() & 1) == 0)
        {
          v7 = PKLocalizedPayWithPointsString(&cfstr_TransactionDet_4.isa);
LABEL_29:
          v6 = v7;
          goto LABEL_66;
        }

        goto LABEL_62;
      }

      v15 = +[PKBusinessChatController deviceSupportsBusinessChat];
      v16 = [(PKPaymentPass *)self->_paymentPass localizedValueForFieldKey:*MEMORY[0x1E69BC100]];
      if (-[PKPaymentPass isAppleCardPass](self->_paymentPass, "isAppleCardPass") && !(v15 | !-[PKPaymentTransactionDetailViewController _canShowAppleCardSupportFooterInRecognitionHintsSection](self, "_canShowAppleCardSupportFooterInRecognitionHintsSection")) && [v16 length])
      {
        v17 = PKLocalizedFeatureString();
LABEL_22:
        v6 = v17;
LABEL_65:

        goto LABEL_66;
      }

      goto LABEL_64;
    }

    if (v5 != 23)
    {
      if (v5 != 24)
      {
        goto LABEL_66;
      }

      v7 = PKLocalizedPaymentString(&cfstr_TransactionDet_26.isa);
      goto LABEL_29;
    }

    if ([(PKPaymentTransactionDetailViewController *)self _actionRowIsEnabled:10])
    {
      v8 = [(PKPaymentPass *)self->_paymentPass organizationName];
      v18 = PKLocalizedPaymentString(&cfstr_TransactionDet_24.isa, &stru_1F3BD5BF0.isa, v8);
LABEL_25:
      v6 = v18;
      goto LABEL_26;
    }

    goto LABEL_62;
  }

  if (v5 != 3)
  {
    if (v5 != 4)
    {
      if (v5 != 5)
      {
        goto LABEL_66;
      }

      if ([(PKPaymentTransaction *)self->_transaction transactionSource]== 2)
      {
        v8 = [(PKPaymentTransaction *)self->_transaction releasedData];
        v9 = [v8 application];
        v6 = [v9 usageDescription];

LABEL_26:
        goto LABEL_66;
      }

      goto LABEL_62;
    }

    v19 = @"TRANSACTION_DETAIL_FRAUD_RISK_FOOTER_TEXT";
    goto LABEL_28;
  }

  associatedTransaction = self->_associatedTransaction;
  if (!associatedTransaction)
  {
    if (![(PKPaymentTransactionDetailViewController *)self _isPeerPaymentPendingRequestTransaction])
    {
      v25 = [(PKPaymentTransaction *)self->_transaction transfers];
      v26 = [v25 firstObject];

      if (v26)
      {
        v27 = [(PKPaymentTransaction *)self->_transaction transactionType];
        v28 = [(PKPaymentTransaction *)self->_transaction transfers];
        v16 = [v28 firstObject];

        v29 = [(PKPaymentTransaction *)self->_transaction transactionStatus];
        v30 = [v16 externalAccount];
        if ([v30 type] == 1)
        {
          v31 = [(PKPaymentTransaction *)self->_transaction featureIdentifier];

          if (v31 == 5)
          {
            if (v27 == 6)
            {
              if (v29 > 1)
              {
                goto LABEL_64;
              }
            }

            else if (v27 != 5 || (([v16 fundsAreAvailable] & 1) != 0 || v29 > 1) && v29 != 1)
            {
              goto LABEL_64;
            }

            v17 = PKLocalizedFeatureString();
            goto LABEL_22;
          }
        }

        else
        {
        }

LABEL_64:
        v6 = 0;
        goto LABEL_65;
      }

      if ([(PKPaymentPass *)self->_paymentPass isAppleCardPass]&& [(PKPaymentTransactionDetailViewController *)self _canShowAppleCardSupportFooterInAmountDetailsSection])
      {
        v36 = +[PKBusinessChatController deviceSupportsBusinessChat];
        v37 = [(PKPaymentPass *)self->_paymentPass localizedValueForFieldKey:*MEMORY[0x1E69BC100]];
        v8 = v37;
        if (v36 || ![v37 length])
        {
          v6 = 0;
          goto LABEL_26;
        }

        v18 = PKLocalizedFeatureString();
        goto LABEL_25;
      }

LABEL_62:
      v6 = 0;
      goto LABEL_66;
    }

    v19 = @"TRANSACTION_DETAIL_PENDING_REQUEST_FOOTER_TEXT";
LABEL_28:
    v7 = PKLocalizedPeerPaymentString(&v19->isa);
    goto LABEL_29;
  }

  v11 = [(PKPaymentTransaction *)associatedTransaction transactionType];
  v12 = self->_associatedTransaction;
  if (v11 == 1)
  {
    v13 = [(PKPaymentTransaction *)v12 merchant];
    v14 = [v13 displayName];
    v6 = PKLocalizedPaymentString(&cfstr_TransactionAss_1.isa, &stru_1F3BD5BF0.isa, v14);
LABEL_50:

    goto LABEL_51;
  }

  v20 = [(PKPaymentTransaction *)v12 transfers];
  v13 = [v20 firstObject];

  if (v13)
  {
    v14 = [v13 externalAccount];
    v21 = [v14 fundingDetails];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v23 = [v14 fundingDetails];
      v24 = [v23 name];
    }

    else
    {
      v24 = 0;
    }

    if ([v24 length])
    {
      [(PKPaymentTransaction *)self->_transaction featureIdentifier];
      v6 = PKLocalizedFeatureString();
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_50;
  }

  if ([(PKPaymentTransaction *)self->_transaction featureIdentifier]== 2)
  {
    [(PKPaymentTransaction *)self->_transaction featureIdentifier];
    v6 = PKLocalizedFeatureString();
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v6 = 0;
  }

LABEL_51:

  if ([(PKPaymentPass *)self->_paymentPass isAppleCardPass]&& [(PKPaymentTransactionDetailViewController *)self _canShowAppleCardSupportFooterInAmountDetailsSection])
  {
    v32 = +[PKBusinessChatController deviceSupportsBusinessChat];
    v33 = [(PKPaymentPass *)self->_paymentPass localizedValueForFieldKey:*MEMORY[0x1E69BC100]];
    v8 = v33;
    if (!v32 && [v33 length])
    {
      v34 = PKLocalizedFeatureString();
      if ([v6 length])
      {
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n%@", v6, v34];
      }

      else
      {
        v35 = v34;
      }

      v39 = v35;

      v6 = v39;
    }

    goto LABEL_26;
  }

LABEL_66:

  return v6;
}

- (id)_coarseLocationHyperlinkFooterView
{
  v3 = PKLocalizedPaymentString(&cfstr_CoarseLocation_0.isa);
  v4 = PKLocalizedPaymentString(&cfstr_CoarseLocation.isa);
  v5 = PKStringWithValidatedFormat();
  v6 = [v5 rangeOfString:{v4, v4}];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8 = objc_alloc_init(PKFooterHyperlinkView);
    v11 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=Privacy&path=LOCATION"];
    v12 = PKAttributedStringByAddingLinkToRange(v5, v9, v10, v11);
    [(PKFooterHyperlinkView *)v8 setAttributedText:v12];

    v13 = &__block_literal_global_52;
    [(PKFooterHyperlinkView *)v8 setAction:&__block_literal_global_52];

    if (self->_detailViewStyle == 2)
    {
      v14 = PKBridgeAppearanceGetAppearanceSpecifier();
      v15 = [v14 footerHyperlinkColor];
      [(PKFooterHyperlinkView *)v8 setLinkTextColor:v15];
    }
  }

  return v8;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if ([(PKSectionTableViewController *)self sectionForIndex:a4]== 7 && [(PKCoarseLocationMonitor *)self->_coarseLocationMonitor coarseLocationEnabled])
  {
    v7 = [(PKPaymentTransactionDetailViewController *)self _coarseLocationHyperlinkFooterView];
  }

  else
  {
    v8 = [(PKPaymentTransactionDetailViewController *)self tableView:v6 titleForFooterInSection:a4];
    if ([v8 length])
    {
      v7 = 0;
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x1E69DD250]);
      v7 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    }
  }

  return v7;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if ([(PKSectionTableViewController *)self sectionForIndex:a4]== 7 && [(PKCoarseLocationMonitor *)self->_coarseLocationMonitor coarseLocationEnabled])
  {
    v7 = *MEMORY[0x1E69DE3D0];
  }

  else
  {
    v8 = [(PKPaymentTransactionDetailViewController *)self tableView:v6 titleForFooterInSection:a4];
    if ([v8 length])
    {
      v7 = *MEMORY[0x1E69DE3D0];
    }

    else
    {
      v7 = 0.0;
    }
  }

  return v7;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(PKPaymentTransactionDetailViewController *)self tableView:v6 titleForHeaderInSection:a4];
  if ([v7 length])
  {
    if ([(PKSectionTableViewController *)self sectionForIndex:a4]== 25)
    {
      v8 = +[_TtC9PassKitUI41PKPaymentTransactionDetailTitleHeaderView reuseIdentifier];
      v9 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v8];
      [v9 configureWithTitle:v7];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E69DD250]);
    v9 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  return v9;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v4 = [(PKPaymentTransactionDetailViewController *)self tableView:a3 titleForHeaderInSection:a4];
  if ([v4 length])
  {
    v5 = *MEMORY[0x1E69DE3D0];
  }

  else
  {
    v5 = 16.0;
  }

  return v5;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  issuerAppDeepLinkingUIEnabled = 0;
  switch(-[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v5 section]))
  {
    case 1uLL:
    case 2uLL:
      issuerAppDeepLinkingUIEnabled = [v5 row] == 1;
      break;
    case 7uLL:
      v8 = [(PKPaymentTransaction *)self->_transaction merchant];
      if ([v8 shouldIgnoreMapsMatches])
      {
        issuerAppDeepLinkingUIEnabled = 0;
      }

      else
      {
        v9 = [v8 mapsMerchant];
        issuerAppDeepLinkingUIEnabled = [v9 identifier] != 0;
      }

      goto LABEL_14;
    case 8uLL:
    case 9uLL:
    case 10uLL:
    case 12uLL:
    case 13uLL:
    case 14uLL:
    case 16uLL:
    case 20uLL:
    case 21uLL:
    case 24uLL:
    case 27uLL:
    case 28uLL:
    case 29uLL:
      issuerAppDeepLinkingUIEnabled = 1;
      break;
    case 17uLL:
      issuerAppDeepLinkingUIEnabled = self->_issuerAppDeepLinkingUIEnabled;
      break;
    case 18uLL:
      issuerAppDeepLinkingUIEnabled = self->_merchantTokenResponse != 0;
      break;
    case 23uLL:
      issuerAppDeepLinkingUIEnabled = -[PKPaymentTransactionDetailViewController _shouldHighlightAction:](self, "_shouldHighlightAction:", -[PKPaymentTransactionDetailViewController _actionRowForRowIndex:](self, "_actionRowForRowIndex:", [v5 row]));
      break;
    case 25uLL:
      if (self->_isFoundInMailLocked)
      {
        issuerAppDeepLinkingUIEnabled = 0;
      }

      else
      {
        v8 = -[NSArray objectAtIndexedSubscript:](self->_foundInMailRowViewModels, "objectAtIndexedSubscript:", [v5 row]);
        v10 = [v8 deeplinkURL];
        issuerAppDeepLinkingUIEnabled = v10 != 0;

LABEL_14:
      }

      break;
    default:
      break;
  }

  return issuerAppDeepLinkingUIEnabled;
}

- (void)presentConfirmPaymentOfferPlan
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__PKPaymentTransactionDetailViewController_presentConfirmPaymentOfferPlan__block_invoke;
  v3[3] = &unk_1E80110E0;
  objc_copyWeak(&v4, &location);
  v3[4] = self;
  [(PKPaymentTransactionDetailViewController *)self executeAfterContentIsLoaded:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __74__PKPaymentTransactionDetailViewController_presentConfirmPaymentOfferPlan__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    if ([WeakRetained _shouldDisplayPaymentOfferConfirmationRecordFollowUp])
    {
      v4 = v9;
      v9[1115] = 1;
      v5 = 12;
    }

    else
    {
      v6 = [v9 _shouldDisplaySetupPostPurchaseInstallments];
      v3 = v9;
      if (!v6)
      {
        goto LABEL_11;
      }

      if (![*(*(a1 + 32) + 1304) isSetupPaymentOfferAfterPurchase] || (objc_msgSend(*(*(a1 + 32) + 1304), "transactionDetailMessageTileDynamicContent"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
      {
        v8 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{objc_msgSend(v9, "indexForSection:", 14)}];
        [v9 presentPaymentOfferInstallmentSelectionFlowFromIndexPath:v8 fromPushNotification:1 completion:0];

        goto LABEL_10;
      }

      v4 = v9;
      v9[1115] = 1;
      v5 = 14;
    }

    [v4 reloadSection:v5];
LABEL_10:
    v3 = v9;
  }

LABEL_11:
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  if (-[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [a4 section]) == 26)
  {
    v6 = [(PKPaymentTransactionDetailViewController *)self contextMenuConfigurationForTransactionIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)contextMenuConfigurationForTransactionIdentifier
{
  v3 = [(PKPaymentTransactionDetailViewController *)self _transactionIdentifierDescription];
  v4 = [(PKPaymentTransactionDetailViewController *)self contextMenuConfigurationForCopyingText:v3];

  return v4;
}

- (id)contextMenuConfigurationForCopyingText:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKPaymentTransactionDetailViewController_contextMenuConfigurationForCopyingText___block_invoke;
  aBlock[3] = &unk_1E8016090;
  v9 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);
  v6 = [MEMORY[0x1E69DC8D8] configurationWithIdentifier:0 previewProvider:0 actionProvider:v5];

  return v6;
}

id __83__PKPaymentTransactionDetailViewController_contextMenuConfigurationForCopyingText___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x1E69DC628];
    v3 = PKLocalizedString(&cfstr_MenuActionCopy.isa);
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"document.on.document"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __83__PKPaymentTransactionDetailViewController_contextMenuConfigurationForCopyingText___block_invoke_2;
    v10[3] = &unk_1E8016068;
    v11 = *(a1 + 32);
    v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:v10];

    v6 = MEMORY[0x1E69DCC60];
    v12[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v8 = [v6 menuWithTitle:&stru_1F3BD7330 children:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __83__PKPaymentTransactionDetailViewController_contextMenuConfigurationForCopyingText___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v2 setString:*(a1 + 32)];
}

- (id)_peerPaymentController
{
  lazyPeerPaymentController = self->_lazyPeerPaymentController;
  if (!lazyPeerPaymentController)
  {
    v4 = [objc_alloc(MEMORY[0x1E69B8F28]) initWithPeerPaymentWebService:self->_peerPaymentWebService];
    v5 = self->_lazyPeerPaymentController;
    self->_lazyPeerPaymentController = v4;

    lazyPeerPaymentController = self->_lazyPeerPaymentController;
  }

  return lazyPeerPaymentController;
}

- (id)_explanationTextForPaymentTransaction:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || [v4 transactionType] != 10)
  {
    v8 = 0;
    goto LABEL_42;
  }

  v6 = [v5 transactionStatus];
  v7 = v6;
  if (v6)
  {
    if (v6 == 5)
    {
      v8 = PKDynamicLocalizedAppleCardString(&cfstr_TransactionDet_100.isa);
      goto LABEL_42;
    }

    v8 = 0;
  }

  else
  {
    v8 = PKDynamicLocalizedAppleCardString(&cfstr_TransactionDet_101.isa);
  }

  v9 = [v5 payments];
  v10 = [v9 firstObject];

  v11 = [v10 expectedCreditReleaseDate];
  v12 = [(PKAccount *)self->_account creditDetails];
  v13 = [v12 accountSummary];
  v14 = [v13 availableCredit];

  if (v14)
  {
    v15 = [MEMORY[0x1E696AB90] zero];
    v16 = [v15 compare:v14] == -1 || -[PKAccount state](self->_account, "state") == 1;
  }

  else
  {
    v16 = [(PKAccount *)self->_account state]== 1;
  }

  if (v7 != 2 && v16)
  {
    if (!v11 || ([(PKAccount *)self->_account hideBillPaymentHoldTime]& 1) != 0)
    {
      v17 = [v10 fundingSource];
      v18 = [v17 type];

      if (v18 != 1)
      {
        goto LABEL_41;
      }

      v19 = PKDynamicLocalizedAppleCardString(&cfstr_TransactionDet_106.isa);
      if (!v19)
      {
        goto LABEL_41;
      }

LABEL_37:
      v26 = [v8 stringByAppendingString:@" "];
      v27 = [v26 stringByAppendingString:v19];
      v28 = v27;
      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = v19;
      }

      v30 = v29;

      v8 = v30;
      goto LABEL_41;
    }

    v20 = [v5 transactionDate];
    v21 = PKDateRangeNumberOfIntervalsForUnit();

    if (v21 >= 1)
    {
      v22 = [MEMORY[0x1E695DF00] now];
      if ([v22 compare:v11] != -1)
      {
        v23 = [(NSDateFormatter *)self->_monthDayYearLocalFormatter stringFromDate:v11];
        PKDynamicLocalizedAppleCardString(&cfstr_TransactionDet_107.isa, &cfstr_1_0.isa, v23);
        v19 = LABEL_25:;

        goto LABEL_36;
      }

      v24 = PKDateRangeNumberOfIntervalsForUnit();
      if (v24)
      {
        if (v24 <= 5)
        {
          v23 = [(NSDateFormatter *)self->_monthDayLocalFormatter stringFromDate:v11];
          PKDynamicLocalizedAppleCardString(&cfstr_TransactionDet_103.isa, &cfstr_1_0.isa, v23);
          goto LABEL_25;
        }

        if (v24 > 9)
        {
          if (v24 > 0x11)
          {
            v25 = @"TRANSACTION_DETAIL_BILL_PAYMENT_EXPLANATION_CREDIT_RELEASE_GENERIC";
          }

          else
          {
            v25 = @"TRANSACTION_DETAIL_BILL_PAYMENT_EXPLANATION_CREDIT_RELEASE_HOLD_2";
          }
        }

        else
        {
          v25 = @"TRANSACTION_DETAIL_BILL_PAYMENT_EXPLANATION_CREDIT_RELEASE_HOLD_1";
        }
      }

      else
      {
        v25 = @"TRANSACTION_DETAIL_BILL_PAYMENT_EXPLANATION_CREDIT_RELEASE_DATE_TODAY";
      }

      v19 = PKDynamicLocalizedAppleCardString(&v25->isa);
LABEL_36:

      if (v19)
      {
        goto LABEL_37;
      }
    }
  }

LABEL_41:

LABEL_42:

  return v8;
}

- (void)_updateWithTransactionReceipt:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_associatedReceipt, a3);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v5 lineItems];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v13 + 1) + 8 * v10) image];

          if (v11)
          {
            v12 = 0;
            goto LABEL_12;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = 1;
LABEL_12:

    self->_suppressReceiptImages = v12;
    [(PKPaymentTransactionDetailViewController *)self _recomputeLineItems];
    [(PKSectionTableViewController *)self reloadData];
  }
}

- (void)_updateWithTransactionTags:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_transactionTags, a3);
    [(PKSectionTableViewController *)self updateSectionVisibilityAndReloadIfNecessaryForSection:6];
  }
}

- (void)_performPeerPaymentAction:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentTransaction *)self->_transaction serviceIdentifier];
  v9 = [(PKPaymentTransactionDetailViewController *)self _peerPaymentController];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__PKPaymentTransactionDetailViewController__performPeerPaymentAction_withCompletion___block_invoke;
  v13[3] = &unk_1E8027470;
  objc_copyWeak(&v17, &location);
  v10 = v6;
  v14 = v10;
  v11 = v9;
  v15 = v11;
  v12 = v7;
  v16 = v12;
  [v11 performAction:v10 withPaymentIdentifier:v8 completion:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __85__PKPaymentTransactionDetailViewController__performPeerPaymentAction_withCompletion___block_invoke(id *a1, char a2, void *a3, void *a4)
{
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PKPaymentTransactionDetailViewController__performPeerPaymentAction_withCompletion___block_invoke_2;
  block[3] = &unk_1E8027448;
  v10 = v7;
  v8 = v7;
  objc_copyWeak(v14, a1 + 7);
  v15 = a2;
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  v14[1] = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v14);
}

void __85__PKPaymentTransactionDetailViewController__performPeerPaymentAction_withCompletion___block_invoke_2(uint64_t a1)
{
  v13 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if ((*(a1 + 80) & 1) == 0 && *(a1 + 32))
  {
    v3 = [v13 userInfo];
    v4 = [v3 objectForKey:*MEMORY[0x1E696AA08]];

    v5 = [v4 domain];
    if (![v5 isEqualToString:*MEMORY[0x1E69BC388]])
    {
LABEL_12:

      goto LABEL_13;
    }

    v6 = [v4 code];

    if (!v6)
    {
      v7 = *(a1 + 40);
      if (v7 == *MEMORY[0x1E69BC308])
      {
        v8 = @"PEER_PAYMENT_ACCEPT_MONEY_GENERIC_ERROR_MESSAGE";
        v9 = @"PEER_PAYMENT_ACCEPT_MONEY_GENERIC_ERROR_TITLE";
        goto LABEL_11;
      }

      if (v7 == *MEMORY[0x1E69BC318])
      {
        v8 = @"PEER_PAYMENT_REJECT_MONEY_GENERIC_ERROR_MESSAGE";
        v9 = @"PEER_PAYMENT_REJECT_MONEY_GENERIC_ERROR_TITLE";
        goto LABEL_11;
      }

      if (v7 == *MEMORY[0x1E69BC310])
      {
        v8 = @"PEER_PAYMENT_CANCEL_MONEY_GENERIC_ERROR_MESSAGE";
        v9 = @"PEER_PAYMENT_CANCEL_MONEY_GENERIC_ERROR_TITLE";
LABEL_11:
        v5 = PKLocalizedPeerPaymentString(&v9->isa);
        v10 = PKLocalizedPeerPaymentString(&v8->isa);
        v11 = PKDisplayableErrorCustom();

        v13 = v11;
        goto LABEL_12;
      }
    }

LABEL_13:
    [WeakRetained _handlePeerPaymentDisplayableError:v13 withPeerPaymentController:*(a1 + 48)];
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    (*(v12 + 16))(v12, *(a1 + 80), *(a1 + 72), *(a1 + 32));
  }
}

- (void)_handlePeerPaymentDisplayableError:(id)a3 withPeerPaymentController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [MEMORY[0x1E69B8F28] proposedResolutionForError:v6];
    switch(v8)
    {
      case 1:
        v11 = [MEMORY[0x1E69B8F28] displayableErrorForError:v6];

        v12 = PKAlertForDisplayableErrorWithHandlers(v11, 0, &__block_literal_global_685, 0);
        [(PKPaymentTransactionDetailViewController *)self presentViewController:v12 animated:1 completion:0];

        v6 = v11;
        break;
      case 3:
        v10 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Displaying identity verification flow...", v14, 2u);
        }

        if (PKDeviceSupportsPeerPaymentIdentityVerification())
        {
          [v7 handleIdentityVerificationWithError:v6 completion:&__block_literal_global_682];
        }

        else
        {
          v13 = PKCreateAlertControllerForPeerPaymentIdentityVerificationNotSupported(0);
          [(PKPaymentTransactionDetailViewController *)self presentViewController:v13 animated:1 completion:0];
        }

        break;
      case 2:
        v9 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Displaying terms acceptance flow...", buf, 2u);
        }

        [v7 handleTermsAcceptanceRequiredWithError:v6 completion:&__block_literal_global_679];
        break;
    }
  }
}

void __105__PKPaymentTransactionDetailViewController__handlePeerPaymentDisplayableError_withPeerPaymentController___block_invoke(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Terms acceptance flow appeared with success: %d", v4, 8u);
  }
}

void __105__PKPaymentTransactionDetailViewController__handlePeerPaymentDisplayableError_withPeerPaymentController___block_invoke_680(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Identity verification flow appeared with success: %d", v4, 8u);
  }
}

- (void)_fetchMerchantToken
{
  v8 = [(PKPaymentTransaction *)self->_transaction isMerchantTokenTransaction];
  if ([v8 BOOLValue])
  {
    merchantTokenResponse = self->_merchantTokenResponse;

    if (!merchantTokenResponse)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69B9150]);
      v5 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
      [v4 setPass:v5];

      v6 = [(PKPaymentTransaction *)self->_transaction panIdentifier];
      [v4 setMerchantTokenId:v6];

      objc_initWeak(&location, self);
      webService = self->_webService;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __63__PKPaymentTransactionDetailViewController__fetchMerchantToken__block_invoke;
      v9[3] = &unk_1E8027498;
      objc_copyWeak(&v10, &location);
      v9[4] = self;
      [(PKPaymentWebService *)webService retrieveMerchantTokensWithRequest:v4 completion:v9];
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }
}

void __63__PKPaymentTransactionDetailViewController__fetchMerchantToken__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__PKPaymentTransactionDetailViewController__fetchMerchantToken__block_invoke_2;
  v9[3] = &unk_1E8014828;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v6;
  v11 = v5;
  v12 = *(a1 + 32);
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v13);
}

void __63__PKPaymentTransactionDetailViewController__fetchMerchantToken__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v12 = WeakRetained;
      v3 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokenT.isa);
      v4 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokenT_0.isa);
      v5 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokenT_1.isa);
      v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v3 message:v4 preferredStyle:1];
      v7 = [MEMORY[0x1E69DC648] actionWithTitle:v5 style:0 handler:0];
      [v6 addAction:v7];

      if (v6)
      {
        [v12 presentViewController:v6 animated:1 completion:0];
      }

      goto LABEL_6;
    }

    v8 = *(a1 + 40);
    if (v8 && !WeakRetained[167])
    {
      v12 = WeakRetained;
      objc_storeStrong(WeakRetained + 167, v8);
      v9 = [*(a1 + 40) merchantTokens];
      v10 = [v9 count];

      if (v10)
      {
        v11 = 18;
      }

      else
      {
        v11 = 3;
      }

      [*(a1 + 48) updateSectionVisibilityAndReloadIfNecessaryForSection:v11];
LABEL_6:
      WeakRetained = v12;
    }
  }
}

- (void)_fetchAllApplePayOrderRowViewModels
{
  v3 = [(PKPaymentTransaction *)self->_transaction paymentHash];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __79__PKPaymentTransactionDetailViewController__fetchAllApplePayOrderRowViewModels__block_invoke;
  v9 = &unk_1E80274C0;
  objc_copyWeak(&v10, &location);
  v4 = _Block_copy(&v6);
  v5 = objc_alloc_init(getFKApplePayOrderFetchControllerClass());
  [v5 fetchAllRowViewModelsForTransactionWithIdentifier:v3 completionHandler:{v4, v6, v7, v8, v9}];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __79__PKPaymentTransactionDetailViewController__fetchAllApplePayOrderRowViewModels__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__PKPaymentTransactionDetailViewController__fetchAllApplePayOrderRowViewModels__block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __79__PKPaymentTransactionDetailViewController__fetchAllApplePayOrderRowViewModels__block_invoke_2(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) orderRowViewModel];

    if (v3)
    {
      v4 = [*(a1 + 32) orderRowViewModel];
      v17[0] = v4;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      v6 = WeakRetained[168];
      WeakRetained[168] = v5;
    }

    v7 = [*(a1 + 32) barcodeRowViewModel];

    if (v7)
    {
      v8 = [*(a1 + 32) barcodeRowViewModel];
      v16 = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
      v10 = WeakRetained[169];
      WeakRetained[169] = v9;
    }

    v11 = [*(a1 + 32) receiptRowViewModel];

    if (v11)
    {
      v12 = [*(a1 + 32) receiptRowViewModel];
      v15 = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
      v14 = WeakRetained[170];
      WeakRetained[170] = v13;
    }

    [WeakRetained reloadData];
  }
}

- (void)_fetchAllInsightRowViewModels
{
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __73__PKPaymentTransactionDetailViewController__fetchAllInsightRowViewModels__block_invoke;
  v11 = &unk_1E80274E8;
  objc_copyWeak(&v12, &location);
  v3 = _Block_copy(&v8);
  v4 = [(PKPaymentTransaction *)self->_transaction identifier:v8];
  if (([(PKPaymentPass *)self->_paymentPass isAppleCardPass]& 1) != 0 || [(PKPaymentPass *)self->_paymentPass isPeerPaymentPass])
  {
    v5 = [(PKPaymentTransaction *)self->_transaction accountIdentifier];
  }

  else
  {
    v6 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
    v5 = [v6 primaryAccountIdentifier];
  }

  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [(FKInsightsFetchController *)self->_insightsFetchController fetchRowViewModelsForTransactionWithIdentifier:v4 primaryAccountIdentifier:v5 completionHandler:v3];
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __73__PKPaymentTransactionDetailViewController__fetchAllInsightRowViewModels__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__PKPaymentTransactionDetailViewController__fetchAllInsightRowViewModels__block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __73__PKPaymentTransactionDetailViewController__fetchAllInsightRowViewModels__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [*(a1 + 32) foundInInsight];
    v4 = [v3 mailItemRowViewModels];

    if (v4)
    {
      v5 = [*(a1 + 32) foundInInsight];
      v6 = [v5 mailItemRowViewModels];
      v7 = v8[175];
      v8[175] = v6;
    }

    [v8 reloadData];
    WeakRetained = v8;
  }
}

- (void)_triggerInsightRowModelPrune
{
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __72__PKPaymentTransactionDetailViewController__triggerInsightRowModelPrune__block_invoke;
  v11 = &unk_1E80148F0;
  objc_copyWeak(&v12, &location);
  v3 = _Block_copy(&v8);
  v4 = [(PKPaymentTransaction *)self->_transaction identifier:v8];
  if (([(PKPaymentPass *)self->_paymentPass isAppleCardPass]& 1) != 0 || [(PKPaymentPass *)self->_paymentPass isPeerPaymentPass])
  {
    v5 = [(PKPaymentTransaction *)self->_transaction accountIdentifier];
  }

  else
  {
    v6 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
    v5 = [v6 primaryAccountIdentifier];
  }

  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [(FKInsightsFetchController *)self->_insightsFetchController pruneRowViewModelsForTransactionWithIdentifier:v4 primaryAccountIdentifier:v5 completionHandler:v3];
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __72__PKPaymentTransactionDetailViewController__triggerInsightRowModelPrune__block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__PKPaymentTransactionDetailViewController__triggerInsightRowModelPrune__block_invoke_2;
  v3[3] = &unk_1E80111A8;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
}

void __72__PKPaymentTransactionDetailViewController__triggerInsightRowModelPrune__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(a1 + 40) == 1)
  {
    v3 = WeakRetained;
    [WeakRetained _fetchAllInsightRowViewModels];
    WeakRetained = v3;
  }
}

- (BOOL)_isFoundInInsightsSupported
{
  v3 = PKIsPhone();
  if (([(PKPaymentTransaction *)self->_transaction isBankConnectTransaction]& 1) != 0 || ([(PKPaymentPass *)self->_paymentPass isAppleCardPass]& 1) != 0)
  {
    v4 = 0;
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    v4 = [(PKPaymentPass *)self->_paymentPass isPeerPaymentPass]^ 1;
    if (!v3)
    {
      return 0;
    }
  }

  if ((v4 & 1) != 0 || self->_detailViewStyle)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (BOOL)_showSeparateReportMerchantInfoButton
{
  v2 = [(PKPaymentTransaction *)self->_transaction accountIdentifier];
  if (v2)
  {
    v3 = !+[PKBusinessChatController deviceSupportsBusinessChat];
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (void)_presentContactIssuer
{
  v3 = [(PKPaymentPass *)self->_paymentPass localizedValueForFieldKey:*MEMORY[0x1E69BC100]];
  v4 = [(PKPaymentPass *)self->_paymentPass organizationName];
  v5 = v4;
  if (v3)
  {
    v6 = PKLocalizedPaymentString(&cfstr_ContactIssuer.isa, &stru_1F3BD5BF0.isa, v4);
    v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v6 message:0 preferredStyle:0];
    v8 = [MEMORY[0x1E696AC88] indexPathForRow:1 inSection:{-[PKSectionTableViewController indexForSection:](self, "indexForSection:", 1)}];
    v9 = [(PKPaymentTransactionDetailViewController *)self tableView];
    v10 = [v9 cellForRowAtIndexPath:v8];

    v11 = [v7 popoverPresentationController];
    [v11 setSourceView:v10];

    if ([(PKPaymentTransactionDetailViewController *)self _hasIssuerPhoneNumber])
    {
      v12 = MEMORY[0x1E69DC648];
      v13 = PKLocalizedPaymentString(&cfstr_Call.isa);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __65__PKPaymentTransactionDetailViewController__presentContactIssuer__block_invoke;
      v24[3] = &unk_1E80112E8;
      v24[4] = self;
      v14 = [v12 actionWithTitle:v13 style:0 handler:v24];
      [v7 addAction:v14];
    }

    if ([(PKPaymentTransaction *)self->_transaction isBankConnectTransaction])
    {
      v15 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
      v16 = [v15 digitalServicingURL];

      if (v16)
      {
        v17 = MEMORY[0x1E69DC648];
        v18 = PKLocalizedPaymentString(&cfstr_Chat.isa);
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __65__PKPaymentTransactionDetailViewController__presentContactIssuer__block_invoke_2;
        v23[3] = &unk_1E80112E8;
        v23[4] = self;
        v19 = [v17 actionWithTitle:v18 style:0 handler:v23];
        [v7 addAction:v19];
      }
    }

    v20 = MEMORY[0x1E69DC648];
    v21 = PKLocalizedString(&cfstr_Cancel.isa);
    v22 = [v20 actionWithTitle:v21 style:1 handler:0];
    [v7 addAction:v22];

    [(PKPaymentTransactionDetailViewController *)self presentViewController:v7 animated:1 completion:0];
  }
}

uint64_t __65__PKPaymentTransactionDetailViewController__presentContactIssuer__block_invoke_2(uint64_t a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69B8540];
  v3 = *MEMORY[0x1E69BB6F8];
  v4 = *MEMORY[0x1E69BA6F0];
  v5 = *MEMORY[0x1E69BABE8];
  v9[0] = *MEMORY[0x1E69BA680];
  v9[1] = v5;
  v6 = *MEMORY[0x1E69BAC28];
  v10[0] = v4;
  v10[1] = v6;
  v9[2] = *MEMORY[0x1E69BA440];
  v10[2] = *MEMORY[0x1E69BA600];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  [v2 subject:v3 sendEvent:v7];

  return [*(a1 + 32) _openBankConnectDigitalServicingURL];
}

- (BOOL)_hasIssuerPhoneNumber
{
  v2 = [(PKPaymentPass *)self->_paymentPass localizedValueForFieldKey:*MEMORY[0x1E69BC100]];
  v3 = [v2 length] != 0;

  return v3;
}

- (void)_callIssuer
{
  v3 = [(PKPaymentPass *)self->_paymentPass localizedValueForFieldKey:*MEMORY[0x1E69BC100]];
  v2 = PKTelephoneURLFromPhoneNumber();
  PKOpenURL();
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = [(PKPaymentTransactionDetailViewController *)self view];
  [v3 setNeedsLayout];
}

- (void)contactsDidChangeForContactResolver:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PKPaymentTransactionDetailViewController_contactsDidChangeForContactResolver___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __80__PKPaymentTransactionDetailViewController_contactsDidChangeForContactResolver___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isViewLoaded];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 reloadSection:3];
  }

  return result;
}

- (id)_associatedInstallmentCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32 = v6;
  v30 = [v6 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionTransactionCellReuseIdentifier" forIndexPath:v7];
  v8 = [v30 transactionView];
  v31 = v7;
  v9 = [v7 row];
  v29 = [(NSArray *)self->_associatedInstallmentPlans objectAtIndex:v9];
  v10 = [v29 product];
  v11 = [v10 serialNumber];
  v12 = PKSerialNumber();
  v13 = v11;
  v14 = v12;
  v15 = v14;
  if (v13 == v14)
  {
  }

  else
  {
    if (v13)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {

LABEL_10:
      v18 = [v10 model];
      v19 = 0;
      goto LABEL_12;
    }

    v17 = [v13 caseInsensitiveCompare:v14];

    if (v17)
    {
      goto LABEL_10;
    }
  }

  v18 = PKDeviceName();
  v19 = [v10 model];
LABEL_12:
  v20 = [v10 iconURLForScale:0 suffix:PKUIScreenScale()];
  if (!v20)
  {
LABEL_17:
    v25 = PKPassKitUIBundle();
    v26 = [v25 URLForResource:@"InstallmentsFallback" withExtension:@"pdf"];

    if (v26)
    {
      v27 = PKUIScreenScale();
      v24 = PKUIImageFromPDF(v26, 100.0, 100.0, v27);
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_21;
  }

  v21 = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
  v22 = [v21 cachedDataForURL:v20];
  if (!v22)
  {
    objc_initWeak(&location, self);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __95__PKPaymentTransactionDetailViewController__associatedInstallmentCellForTableView_atIndexPath___block_invoke;
    v33[3] = &unk_1E8027510;
    objc_copyWeak(v35, &location);
    v35[1] = v9;
    v34 = v32;
    [v21 downloadFromUrl:v20 completionHandler:v33];

    objc_destroyWeak(v35);
    objc_destroyWeak(&location);

    goto LABEL_17;
  }

  v23 = v22;
  v24 = [MEMORY[0x1E69DCAB8] imageWithData:v22];

  if (!v24)
  {
    goto LABEL_17;
  }

LABEL_21:
  [v8 setPrimaryString:v18];
  [v8 setSecondaryString:v19];
  [v8 setShowsDisclosureView:1];
  [v8 setPrimaryImage:v24];
  [v8 setStrokeImage:0];

  return v30;
}

void __95__PKPaymentTransactionDetailViewController__associatedInstallmentCellForTableView_atIndexPath___block_invoke(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && !a4)
  {
    v5 = [MEMORY[0x1E69DCAB8] imageWithData:a2];
    if (v5)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __95__PKPaymentTransactionDetailViewController__associatedInstallmentCellForTableView_atIndexPath___block_invoke_2;
      v6[3] = &unk_1E80160F8;
      objc_copyWeak(v9, a1 + 5);
      v9[1] = a1[6];
      v7 = a1[4];
      v8 = v5;
      dispatch_async(MEMORY[0x1E69E96A0], v6);

      objc_destroyWeak(v9);
    }
  }
}

void __95__PKPaymentTransactionDetailViewController__associatedInstallmentCellForTableView_atIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [MEMORY[0x1E696AC88] indexPathForRow:*(a1 + 56) inSection:{objc_msgSend(WeakRetained, "indexForSection:", 10)}];
    v4 = [*(a1 + 32) cellForRowAtIndexPath:v3];
    v5 = [v4 transactionView];
    [v5 setPrimaryImage:*(a1 + 40) animated:1];

    WeakRetained = v6;
  }
}

- (void)_showInstallmentDetailsForAssociatedInstallment:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [[PKTransactionHistoryViewController alloc] initWithInstallmentPlan:v4 transactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection account:self->_account accountUserCollection:self->_accountUserCollection physicalCards:self->_physicalCards];

    v5 = [(PKPaymentTransactionDetailViewController *)self navigationController];
    if ([v5 pk_settings_useStateDrivenNavigation])
    {
      [v5 pk_settings_pushViewController:v6];
    }

    else
    {
      [v5 pushViewController:v6 animated:1];
    }
  }
}

- (BOOL)_actionRowIsEnabled:(unint64_t)a3
{
  transactionSourceCollection = self->_transactionSourceCollection;
  v6 = [(PKPaymentTransaction *)self->_transaction transactionSourceIdentifier];
  v7 = [(PKTransactionSourceCollection *)transactionSourceCollection transactionSourceForTransactionSourceIdentifier:v6];

  switch(a3)
  {
    case 0uLL:
      issuerAppDeepLinkingUIEnabled = self->_issuerAppDeepLinkingUIEnabled;
      goto LABEL_76;
    case 1uLL:
      if ([(PKPaymentTransaction *)self->_transaction transactionType]!= 3 || ![(PKPaymentTransaction *)self->_transaction transactionStatus]|| [(PKPaymentTransaction *)self->_transaction peerPaymentType]!= 2)
      {
        goto LABEL_72;
      }

      goto LABEL_22;
    case 2uLL:
      if ([(PKPaymentTransaction *)self->_transaction transactionType]!= 3 || [(PKPaymentTransaction *)self->_transaction peerPaymentType]!= 1)
      {
        goto LABEL_72;
      }

LABEL_22:
      v13 = [(PKPaymentTransaction *)self->_transaction peerPaymentCounterpartHandle];
      if (![v13 length] || objc_msgSend(v7, "type"))
      {
        goto LABEL_74;
      }

      v16 = [(PKPaymentTransaction *)self->_transaction recurringPeerPayment];
      if (v16 || [(PKPaymentTransaction *)self->_transaction peerPaymentPaymentMode]== 2)
      {
        goto LABEL_26;
      }

      issuerAppDeepLinkingUIEnabled = [(PKPaymentTransaction *)self->_transaction peerPaymentPaymentMode]!= 3;
      goto LABEL_27;
    case 3uLL:
      if ([(PKPaymentTransaction *)self->_transaction transactionType]!= 3)
      {
        goto LABEL_72;
      }

      v15 = [(PKPeerPaymentStatusResponse *)self->_peerPaymentStatusResponse actions];
      if (![v15 containsObject:*MEMORY[0x1E69BC308]])
      {
        goto LABEL_36;
      }

      issuerAppDeepLinkingUIEnabled = [v7 type] == 0;
      goto LABEL_37;
    case 4uLL:
      if ([(PKPaymentTransaction *)self->_transaction transactionType]!= 3)
      {
        goto LABEL_72;
      }

      v12 = [(PKPeerPaymentStatusResponse *)self->_peerPaymentStatusResponse actions];
      v13 = v12;
      v14 = MEMORY[0x1E69BC310];
      goto LABEL_30;
    case 5uLL:
      if ([(PKPaymentTransaction *)self->_transaction transactionType]!= 3)
      {
        goto LABEL_72;
      }

      v12 = [(PKPeerPaymentStatusResponse *)self->_peerPaymentStatusResponse actions];
      v13 = v12;
      v14 = MEMORY[0x1E69BC318];
LABEL_30:
      if (![v12 containsObject:*v14] || objc_msgSend(v7, "type"))
      {
        goto LABEL_74;
      }

      issuerAppDeepLinkingUIEnabled = [(PKPaymentTransaction *)self->_transaction peerPaymentPaymentMode]!= 2;
      break;
    case 6uLL:
      v18 = [(PKPaymentTransaction *)self->_transaction recurringPeerPayment];
      v19 = [v18 status];

      v20 = [(PKPaymentTransaction *)self->_transaction transactionType];
      v21 = [(PKPaymentTransaction *)self->_transaction peerPaymentType];
      v22 = [(PKPaymentTransaction *)self->_transaction accountType];
      v24 = v20 == 6 || v21 == 1;
      if (v22 != 1 || v19 == 0 || !v24)
      {
        goto LABEL_72;
      }

      v11 = self->_detailViewStyle == 2;
LABEL_52:
      issuerAppDeepLinkingUIEnabled = !v11;
      goto LABEL_76;
    case 7uLL:
      if ([(PKPaymentTransaction *)self->_transaction transactionType]!= 10)
      {
        goto LABEL_72;
      }

      v13 = [(PKPaymentTransaction *)self->_transaction payments];
      v16 = [v13 firstObject];
      if (![v16 isCurrentlyCancellable] || -[PKPaymentTransaction transactionStatus](self->_transaction, "transactionStatus") == 5)
      {
LABEL_26:
        issuerAppDeepLinkingUIEnabled = 0;
      }

      else
      {
        issuerAppDeepLinkingUIEnabled = [(PKPaymentTransaction *)self->_transaction featureIdentifier]== 2;
      }

LABEL_27:

      break;
    case 8uLL:
      if (+[PKBusinessChatController deviceSupportsBusinessChat])
      {
        v31 = [(PKPaymentPass *)self->_paymentPass businessChatIdentifier];
        v32 = v31 != 0;
      }

      else
      {
        v32 = 0;
      }

      if (![PKReportIssueViewController canReportIssueForTransaction:self->_transaction bankConnectInstitution:self->_bankConnectInstitution paymentPass:self->_paymentPass]&& !v32)
      {
        goto LABEL_72;
      }

      v13 = [(PKPaymentTransaction *)self->_transaction questions];
      if ([v13 count])
      {
        goto LABEL_74;
      }

      issuerAppDeepLinkingUIEnabled = ![(PKPaymentTransactionDetailViewController *)self _showSeparateReportMerchantInfoButton];
      break;
    case 9uLL:
      v15 = [(PKPaymentTransaction *)self->_transaction questions];
      issuerAppDeepLinkingUIEnabled = [v15 count] != 0;
      goto LABEL_37;
    case 0xAuLL:
      v27 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
      v13 = [v27 digitalServicingURL];

      if ([(PKPaymentTransaction *)self->_transaction isBankConnectTransaction])
      {
        v28 = v13 == 0;
      }

      else
      {
        v28 = 1;
      }

      if (v28 || ([MEMORY[0x1E69DC668] sharedApplication], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "canOpenURL:", v13), v29, (v30 & 1) == 0))
      {
        v33 = +[PKBusinessChatController deviceSupportsBusinessChat];
        v34 = [(PKPaymentPass *)self->_paymentPass isAppleCardPass];
        v35 = [(PKPaymentTransaction *)self->_transaction transactionType];
        if ([(PKPaymentTransactionDetailViewController *)self _showSeparateReportMerchantInfoButton])
        {
          issuerAppDeepLinkingUIEnabled = 0;
          if ([(PKPaymentTransactionDetailViewController *)self _hasIssuerPhoneNumber]&& !v35)
          {
            if (([(PKPaymentPass *)self->_paymentPass isTransitPass]& 1) != 0)
            {
              issuerAppDeepLinkingUIEnabled = 0;
            }

            else
            {
              issuerAppDeepLinkingUIEnabled = v34 ^ 1 | v33;
            }
          }
        }

        else
        {
LABEL_74:
          issuerAppDeepLinkingUIEnabled = 0;
        }
      }

      else
      {
        issuerAppDeepLinkingUIEnabled = 1;
      }

      break;
    case 0xBuLL:
      v11 = self->_privacyURL == 0;
      goto LABEL_52;
    case 0xCuLL:
      issuerAppDeepLinkingUIEnabled = [(PKPaymentTransactionDetailViewController *)self _isPeerPaymentPendingRequestTransaction];
      goto LABEL_76;
    case 0xDuLL:
      v9 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
      v10 = [v9 postInstallmentURL];
      goto LABEL_34;
    case 0xEuLL:
      v9 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
      v10 = [v9 redeemRewardsURL];
LABEL_34:
      v15 = v10;

      if (v15)
      {
        v17 = [MEMORY[0x1E69DC668] sharedApplication];
        issuerAppDeepLinkingUIEnabled = [v17 canOpenURL:v15];
      }

      else
      {
LABEL_36:
        issuerAppDeepLinkingUIEnabled = 0;
      }

LABEL_37:

      goto LABEL_76;
    default:
LABEL_72:
      issuerAppDeepLinkingUIEnabled = 0;
      goto LABEL_76;
  }

LABEL_76:
  return issuerAppDeepLinkingUIEnabled & 1;
}

- (int64_t)_numberOfActionRowsEnabled
{
  v3 = 0;
  v4 = 0;
  do
  {
    v4 += [(PKPaymentTransactionDetailViewController *)self _actionRowIsEnabled:v3++];
  }

  while (v3 != 15);
  return v4;
}

- (unint64_t)_actionRowForRowIndex:(int64_t)a3
{
  v5 = 0;
  v6 = 0;
  do
  {
    if ([(PKPaymentTransactionDetailViewController *)self _actionRowIsEnabled:v5])
    {
      if (v6 == a3)
      {
        return v5;
      }

      ++v6;
    }

    ++v5;
  }

  while (v5 != 15);
  return 0x7FFFFFFFFFFFFFFFLL;
}

- (int64_t)_rowIndexForActionRow:(unint64_t)a3
{
  v5 = 0;
  v6 = 0;
  do
  {
    if ([(PKPaymentTransactionDetailViewController *)self _actionRowIsEnabled:v5])
    {
      if (a3 == v5)
      {
        return v6;
      }

      ++v6;
    }

    ++v5;
  }

  while (v5 != 15);
  return 0x7FFFFFFFFFFFFFFFLL;
}

- (id)_tableView:(id)a3 cellForAwardAtIndex:(int64_t)a4
{
  transaction = self->_transaction;
  v7 = a3;
  v8 = [(PKPaymentTransaction *)transaction awards];
  if ([v8 count] == a4)
  {
    v9 = [(PKPaymentTransactionDetailViewController *)self _tableView:v7 actionButtonCellForSection:17];

    v10 = [(PKPaymentPass *)self->_paymentPass organizationName];
    v11 = PKLocalizedAquamanString(&cfstr_ViewOfferDetai.isa, &stru_1F3BD5BF0.isa, v10);

    v12 = [v9 textLabel];
    [v12 setText:v11];
  }

  else
  {
    v9 = [(PKPaymentTransactionDetailViewController *)self _awardCellForTableView:v7];

    v13 = [(PKPaymentTransaction *)self->_transaction awards];
    v11 = [v13 objectAtIndex:a4];

    v12 = [v11 awardDescription];
    if ([v11 type] == 1)
    {
      v14 = [v11 amount];
      v15 = [v14 amount];
      v16 = [v15 formattedStringValue];
    }

    else
    {
      v16 = [v11 localizedAmount];
    }

    v27 = PKLocalizedAquamanString(&cfstr_Expired.isa);
    v30 = [v11 claimExpiryDate];
    v29 = [v11 redeemExpiryDate];
    v28 = objc_alloc_init(MEMORY[0x1E695DF00]);
    v17 = PKLocalizedAquamanString(&cfstr_TransactionDet_108.isa, &stru_1F3BD6370.isa, v12, v16);
    v18 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v19 = [v9 textLabel];
    v20 = [v9 detailTextLabel];
    [v19 setText:v17];
    if (([v11 claimExpired] & 1) == 0 && (objc_msgSend(v11, "redeemExpired") & 1) == 0)
    {
      v26 = v16;
      if (v30)
      {
        v21 = [v28 earlierDate:v30];

        v22 = v21 == v30;
        v16 = v26;
        if (v22)
        {
          [v11 setClaimExpired:1];
        }
      }

      if (v29)
      {
        v23 = [v28 earlierDate:v29];

        v22 = v23 == v29;
        v16 = v26;
        if (v22)
        {
          [v11 setRedeemExpired:1];
        }
      }
    }

    if (([v11 claimExpired] & 1) != 0 || objc_msgSend(v11, "redeemExpired"))
    {
      v24 = v27;
      [v20 setText:v27];
      [v19 setTextColor:v18];
      [v20 setTextColor:v18];
    }

    else
    {
      [v9 setAccessoryType:self->_issuerAppDeepLinkingUIEnabled];
      v24 = v27;
    }
  }

  return v9;
}

- (id)_tableView:(id)a3 cellForActionAtIndex:(int64_t)a4
{
  v6 = a3;
  switch([(PKPaymentTransactionDetailViewController *)self _actionRowForRowIndex:a4])
  {
    case 0uLL:
      v7 = [(PKPaymentPass *)self->_paymentPass organizationName];
      v8 = [(PKPaymentTransaction *)self->_transaction awards];
      if ([v8 count])
      {
        v9 = @"TRANSACTION_DETAIL_ACTION_OPEN_TRANSACTION_DETAILS_IN_ISSUER_APP_FORMAT";
      }

      else
      {
        v9 = @"TRANSACTION_DETAIL_ACTION_VIEW_IN_ISSUER_APP_FORMAT";
      }

      v10 = PKLocalizedPeerPaymentString(&v9->isa, &stru_1F3BD5BF0.isa, v7);

      goto LABEL_27;
    case 1uLL:
      v17 = @"TRANSACTION_DETAIL_ACTION_REQUEST_AGAIN";
      goto LABEL_20;
    case 2uLL:
      v17 = @"TRANSACTION_DETAIL_ACTION_SEND_AGAIN";
      goto LABEL_20;
    case 3uLL:
      v17 = @"TRANSACTION_DETAIL_ACTION_ACCEPT_PENDING";
      goto LABEL_20;
    case 4uLL:
      v16 = [(PKPaymentTransaction *)self->_transaction recurringPeerPayment];

      v17 = @"TRANSACTION_DETAIL_ACTION_CANCEL_PENDING";
      if (!v16)
      {
        goto LABEL_20;
      }

      v18 = PKLocalizedPeerPaymentRecurringString(&cfstr_TransactionDet_114.isa);
      goto LABEL_30;
    case 5uLL:
      v17 = @"TRANSACTION_DETAIL_ACTION_REJECT_PENDING";
LABEL_20:
      v18 = PKLocalizedPeerPaymentString(&v17->isa);
      goto LABEL_30;
    case 6uLL:
      v22 = [(PKPaymentTransaction *)self->_transaction recurringPeerPayment];
      v23 = [v22 type];
      if (v23 == 1)
      {
        v24 = @"TRANSACTION_DETAIL_ACTION_VIEW_RECURRING_PAYMENT";
        goto LABEL_41;
      }

      if (v23 == 3)
      {
        v24 = @"TRANSACTION_DETAIL_ACTION_VIEW_AUTO_RELOAD";
LABEL_41:
        v10 = PKLocalizedPeerPaymentRecurringString(&v24->isa);
        goto LABEL_43;
      }

      v10 = 0;
LABEL_43:

      v25 = [v6 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionConfigurationCellReuseIdentifier"];
      v21 = [v25 defaultContentConfiguration];
      [v21 setText:v10];
      [v21 setSecondaryText:0];
      [v25 setAccessoryType:1];
      [v25 setContentConfiguration:v21];
LABEL_35:

      return v25;
    case 7uLL:
      v19 = PKLocalizedPaymentString(&cfstr_TransactionDet_118.isa);
      goto LABEL_17;
    case 8uLL:
      v20 = @"TRANSACTION_DETAILS_REPORT_PROBLEM_TITLE";
      goto LABEL_29;
    case 9uLL:
      v20 = @"TRANSACTION_DETAILS_CONTACT_SUPPORT_TITLE";
LABEL_29:
      v18 = PKLocalizedPaymentString(&v20->isa);
      goto LABEL_30;
    case 10uLL:
      v7 = [(PKPaymentPass *)self->_paymentPass organizationName];
      v10 = PKLocalizedPaymentString(&cfstr_TransactionDet_120.isa, &stru_1F3BD5BF0.isa, v7);
LABEL_27:

      goto LABEL_31;
    case 11uLL:
      v12 = [(PKPaymentTransaction *)self->_transaction releasedData];
      v13 = [v12 merchantNameOverride];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v28 = [(PKPaymentTransaction *)self->_transaction merchant];
        v15 = [v28 name];
      }

      v10 = PKLocalizedIdentityString(&cfstr_TransactionDet_121.isa, &stru_1F3BD5BF0.isa, v15);

      goto LABEL_31;
    case 12uLL:
      v19 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_122.isa);
LABEL_17:
      v10 = v19;
      v21 = [MEMORY[0x1E69DC888] systemRedColor];
      goto LABEL_32;
    case 13uLL:
      v11 = @"BANK_CONNECT_TRANSACTION_DETAILS_POST_INSTALLMENT";
      goto LABEL_22;
    case 14uLL:
      v11 = @"BANK_CONNECT_TRANSACTION_DETAILS_REDEEM_REWARDS";
LABEL_22:
      v18 = PKLocalizedBankConnectString(&v11->isa);
LABEL_30:
      v10 = v18;
LABEL_31:
      v21 = 0;
      goto LABEL_32;
    default:
      v21 = 0;
      v10 = 0;
LABEL_32:
      v25 = [(PKPaymentTransactionDetailViewController *)self _tableView:v6 actionButtonCellForSection:23];
      v26 = [v25 textLabel];
      [v26 setText:v10];
      if (v21)
      {
        [v26 setTextColor:v21];
      }

      goto LABEL_35;
  }
}

- (id)_tableView:(id)a3 actionButtonCellForSection:(unint64_t)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:{@"PKPaymentTransactionDefaultCellReuseIdentifier", a4}];
  v6 = [v5 textLabel];
  if (self->_inBridge)
  {
    BPSBridgeTintColor();
  }

  else
  {
    [MEMORY[0x1E69DC888] linkColor];
  }
  v7 = ;
  [v6 setTextColor:v7];

  [v6 setNumberOfLines:0];
  [v5 setAccessoryType:0];
  [v5 setSeparatorInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B93D0]];

  return v5;
}

- (id)_tableViewCellForDeleteTransaction:(id)a3
{
  v4 = [(PKPaymentTransactionDetailViewController *)self _tableView:a3 actionButtonCellForSection:23];
  v5 = [v4 textLabel];
  deleteOverrider = self->_deleteOverrider;
  if (deleteOverrider)
  {
    [(PKPaymentTransactionDetailViewControllerDeleteOverrider *)deleteOverrider transactionDetailViewControllerDeleteOverriderActionTitle];
  }

  else
  {
    PKLocalizedIdentityString(&cfstr_TransactionDel_0.isa);
  }
  v7 = ;
  [v5 setText:v7];
  v8 = [MEMORY[0x1E69DC888] systemRedColor];
  [v5 setTextColor:v8];

  [v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9B58]];

  return v4;
}

- (id)_tableViewCellPaymentRewardsRedemptionInfoForTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:@"PKPaymentRewardsRedemptionInfoCellReuseIdentifier" forIndexPath:a4];
  v6 = [(PKPaymentTransaction *)self->_transaction paymentRewardsRedemption];
  [v5 configureWithRewardsRedemption:v6 rewardsBalance:self->_associatedPaymentRewardsBalance];

  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9B90]];

  return v5;
}

- (id)_tableViewCellPaymentOfferConfirmationRecordStatusForTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:@"PKPaymentOfferConfirmationRecordCellReuseIdentifier" forIndexPath:a4];
  [v5 configureWithConfirmationRecord:self->_paymentOfferConfirmationRecord transaction:self->_transaction installmentCriteria:self->_issuerInstallmentCriteria];
  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B99A8]];

  return v5;
}

- (id)_tableViewCellPaymentOfferConfirmationRecordFollowUpForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dequeueReusableCellWithIdentifier:@"PKPaymentOfferConfirmationRecordFollowUpCellReuseIdentifier" forIndexPath:v7];
  objc_initWeak(&location, self);
  paymentOfferConfirmationRecord = self->_paymentOfferConfirmationRecord;
  paymentPass = self->_paymentPass;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __121__PKPaymentTransactionDetailViewController__tableViewCellPaymentOfferConfirmationRecordFollowUpForTableView_atIndexPath___block_invoke;
  v14[3] = &unk_1E8027538;
  objc_copyWeak(&v16, &location);
  v11 = v7;
  v15 = v11;
  v12 = self->_shouldPresentConfirmPaymentOfferPlanOnAppear && !self->_didPresentConfirmPaymentOfferPlanOnAppear;
  [v8 configureWithConfirmationRecord:paymentOfferConfirmationRecord paymentPass:paymentPass presentPaymentOfferInstallmentSelection:v14 shouldTapButtonOnAppear:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v8;
}

void __121__PKPaymentTransactionDetailViewController__tableViewCellPaymentOfferConfirmationRecordFollowUpForTableView_atIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__PKPaymentTransactionDetailViewController__tableViewCellPaymentOfferConfirmationRecordFollowUpForTableView_atIndexPath___block_invoke_2;
  block[3] = &unk_1E80111F8;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __121__PKPaymentTransactionDetailViewController__tableViewCellPaymentOfferConfirmationRecordFollowUpForTableView_atIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 1115) == 1)
    {
      *(WeakRetained + 1116) = 1;
    }

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __121__PKPaymentTransactionDetailViewController__tableViewCellPaymentOfferConfirmationRecordFollowUpForTableView_atIndexPath___block_invoke_3;
    v5[3] = &unk_1E8010DD0;
    v5[4] = WeakRetained;
    v4 = *(a1 + 32);
    v6 = *(a1 + 40);
    [v3 presentPaymentOfferInstallmentSelectionFlowFromIndexPath:v4 fromPushNotification:0 completion:v5];
  }
}

uint64_t __121__PKPaymentTransactionDetailViewController__tableViewCellPaymentOfferConfirmationRecordFollowUpForTableView_atIndexPath___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 1115) = 0;
  [*(a1 + 32) reloadSection:12];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)presentPaymentOfferInstallmentSelectionFlowFromIndexPath:(id)a3 fromPushNotification:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v29 = a5;
  paymentOffersController = self->_paymentOffersController;
  if (paymentOffersController)
  {
    [(PKPaymentOffersController *)paymentOffersController invalidate];
    v10 = self->_paymentOffersController;
    self->_paymentOffersController = 0;
  }

  v11 = [(PKPaymentOfferConfirmationRecord *)self->_paymentOfferConfirmationRecord selectedOfferConfirmationRecord];
  v12 = [v11 selectedOffer];

  v13 = [v12 installmentSelectedPaymentOffer];
  v14 = [v13 userEnteredAmount];

  v28 = v14;
  v15 = [objc_alloc(MEMORY[0x1E69B8CF0]) initForPostPurchaseInstallmentsWithTransaction:self->_transaction userEnteredAmount:v14];
  v16 = [objc_alloc(MEMORY[0x1E69B8CE8]) initWithPaymentService:self->_paymentService paymentWebService:self->_webService configuration:v15];
  v17 = self->_paymentOffersController;
  self->_paymentOffersController = v16;

  [(PKPaymentOffersController *)self->_paymentOffersController updatePaymentOfferCatalogIfNecessaryWithReason:11 completion:0];
  [(PKPaymentOffersController *)self->_paymentOffersController updateCurrentSelectedPaymentOffer:v12 updateReason:11];
  v18 = [PKPaymentOfferInstallmentPlanSelectionModel initForPostPurchaseInstallmentsWithPaymentOffersController:self->_paymentOffersController criteria:self->_issuerInstallmentCriteria pass:self->_paymentPass fromPushNotification:v6];
  issuerInstallmentSelectionModel = self->_issuerInstallmentSelectionModel;
  self->_issuerInstallmentSelectionModel = v18;

  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__74;
  v38[4] = __Block_byref_object_dispose__74;
  v39 = 0;
  objc_initWeak(&location, self);
  v20 = [(PKPaymentTransactionDetailViewController *)self tableView];
  v21 = [v20 cellForRowAtIndexPath:v8];
  v22 = v8;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;
  [v24 setShowsActionSpinner:1];
  [(PKPaymentService *)self->_paymentService didInteractWithConfirmationRecordFollowupMessage:self->_paymentOfferConfirmationRecord];
  v25 = self->_issuerInstallmentSelectionModel;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __133__PKPaymentTransactionDetailViewController_presentPaymentOfferInstallmentSelectionFlowFromIndexPath_fromPushNotification_completion___block_invoke;
  v32[3] = &unk_1E8027588;
  objc_copyWeak(&v36, &location);
  v26 = v24;
  v33 = v26;
  v35 = v38;
  v27 = v29;
  v34 = v27;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __133__PKPaymentTransactionDetailViewController_presentPaymentOfferInstallmentSelectionFlowFromIndexPath_fromPushNotification_completion___block_invoke_3;
  v30[3] = &unk_1E801E890;
  objc_copyWeak(&v31, &location);
  v30[4] = v38;
  [(PKPaymentOfferInstallmentPlanSelectionModel *)v25 startWithCompletionHandler:v32 viewChangedHandler:v30];
  objc_destroyWeak(&v31);

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
  _Block_object_dispose(v38, 8);
}

void __133__PKPaymentTransactionDetailViewController_presentPaymentOfferInstallmentSelectionFlowFromIndexPath_fromPushNotification_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __133__PKPaymentTransactionDetailViewController_presentPaymentOfferInstallmentSelectionFlowFromIndexPath_fromPushNotification_completion___block_invoke_2;
  block[3] = &unk_1E8027560;
  objc_copyWeak(&v13, (a1 + 56));
  v10 = *(a1 + 32);
  v11 = v5;
  v8 = *(a1 + 40);
  v6 = v8;
  v12 = v8;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v13);
}

void __133__PKPaymentTransactionDetailViewController_presentPaymentOfferInstallmentSelectionFlowFromIndexPath_fromPushNotification_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    [*(a1 + 32) setShowsActionSpinner:0];
    if (*(a1 + 40))
    {
      v2 = MEMORY[0x1E69DC650];
      v3 = PKLocalizedPaymentString(&cfstr_GenericErrorTi.isa);
      v4 = PKLocalizedPaymentString(&cfstr_GenericErrorMe.isa);
      v5 = [v2 alertControllerWithTitle:v3 message:v4 preferredStyle:1];

      v6 = MEMORY[0x1E69DC648];
      v7 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
      v8 = [v6 actionWithTitle:v7 style:0 handler:0];
      [v5 addAction:v8];

      [WeakRetained presentViewController:v5 animated:1 completion:0];
    }

    else
    {
      [*(*(*(a1 + 56) + 8) + 40) dismissViewControllerAnimated:1 completion:0];
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))();
    }
  }
}

void __133__PKPaymentTransactionDetailViewController_presentPaymentOfferInstallmentSelectionFlowFromIndexPath_fromPushNotification_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __133__PKPaymentTransactionDetailViewController_presentPaymentOfferInstallmentSelectionFlowFromIndexPath_fromPushNotification_completion___block_invoke_4;
  block[3] = &unk_1E801BB28;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __133__PKPaymentTransactionDetailViewController_presentPaymentOfferInstallmentSelectionFlowFromIndexPath_fromPushNotification_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v7 = WeakRetained;
      v4 = *(*(a1 + 40) + 8);
      v5 = *(v4 + 40);
      if (v5)
      {
        [v5 dismissViewControllerAnimated:1 completion:0];
        v3 = *(a1 + 32);
        v4 = *(*(a1 + 40) + 8);
      }

      objc_storeStrong((v4 + 40), v3);
      v6 = [v7 navigationController];
      [v6 presentViewController:*(a1 + 32) animated:1 completion:0];

      WeakRetained = v7;
    }
  }
}

- (id)_tableViewCellChangeCategoryForTableView:(id)a3
{
  v4 = a3;
  v5 = [v4 dequeueReusableCellWithIdentifier:@"PKTransactionActionChangeCategoryCellReuseIdentifier"];
  objc_initWeak(&location, self);
  transactionCategory = self->_transactionCategory;
  v7 = (self->_transactionCategoryAccessLevel >> 2) & 1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__PKPaymentTransactionDetailViewController__tableViewCellChangeCategoryForTableView___block_invoke;
  v9[3] = &unk_1E801A1E8;
  objc_copyWeak(&v10, &location);
  [v5 configureWithSelectedTransactionCategory:transactionCategory canUpdate:v7 updateCategoryHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v5;
}

void __85__PKPaymentTransactionDetailViewController__tableViewCellChangeCategoryForTableView___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[179] != a2)
  {
    v4 = WeakRetained;
    [WeakRetained updateTransactionCategory:a2];
    WeakRetained = v4;
  }
}

- (void)updateTransactionCategory:(int64_t)a3
{
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PKPaymentTransactionDetailViewController_updateTransactionCategory___block_invoke;
  aBlock[3] = &unk_1E80275B0;
  objc_copyWeak(v37, location);
  v37[1] = a3;
  v5 = _Block_copy(aBlock);
  if (self->_hasRelatedTransactions)
  {
    v6 = [(PKPaymentTransaction *)self->_transaction merchant];
    v7 = [v6 displayName];

    v8 = PKLocalizedStringFromMerchantCategory();
    v9 = PKLocalizedPaymentString(&cfstr_TransactionDet_123.isa, &stru_1F3BD6370.isa, v7, v8);
    v10 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:0 preferredStyle:0];
    v11 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[PKSectionTableViewController indexForSection:](self, "indexForSection:", 22)}];
    v12 = [(PKPaymentTransactionDetailViewController *)self tableView];
    v13 = [v12 cellForRowAtIndexPath:v11];

    v14 = [v10 popoverPresentationController];
    [v14 setSourceView:v13];
    v26 = v13;
    v27 = v11;
    v28 = v9;

    v15 = MEMORY[0x1E69DC648];
    v16 = PKLocalizedPaymentString(&cfstr_TransactionDet_21.isa);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __70__PKPaymentTransactionDetailViewController_updateTransactionCategory___block_invoke_813;
    v33[3] = &unk_1E80275D8;
    objc_copyWeak(v35, location);
    v35[1] = a3;
    v34 = v5;
    v17 = [v15 actionWithTitle:v16 style:0 handler:v33];

    v18 = PKLocalizedPaymentString(&cfstr_TransactionDet_124.isa);
    v19 = MEMORY[0x1E69DC648];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __70__PKPaymentTransactionDetailViewController_updateTransactionCategory___block_invoke_2_817;
    v31[3] = &unk_1E8027600;
    objc_copyWeak(v32, location);
    v32[1] = a3;
    v31[4] = self;
    v20 = [v19 actionWithTitle:v18 style:0 handler:v31];
    v21 = MEMORY[0x1E69DC648];
    v22 = PKLocalizedPaymentString(&cfstr_TransactionDet_23.isa);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __70__PKPaymentTransactionDetailViewController_updateTransactionCategory___block_invoke_4;
    v29[3] = &unk_1E80178E8;
    objc_copyWeak(&v30, location);
    v29[4] = self;
    v23 = [v21 actionWithTitle:v22 style:1 handler:v29];

    [v10 addAction:v17];
    [v10 addAction:v20];
    [v10 addAction:v23];
    [(PKPaymentTransactionDetailViewController *)self presentViewController:v10 animated:1 completion:0];

    objc_destroyWeak(&v30);
    objc_destroyWeak(v32);

    objc_destroyWeak(v35);
  }

  else
  {
    v24 = MEMORY[0x1E695DFD8];
    v25 = [(PKPaymentTransaction *)self->_transaction identifier];
    v7 = [v24 setWithObject:v25];

    [(PKPaymentService *)self->_paymentService updatePreferredCategory:a3 forTransactionsWithIdentifiers:v7 paymentPass:self->_paymentPass completion:v5];
  }

  objc_destroyWeak(v37);
  objc_destroyWeak(location);
}

void __70__PKPaymentTransactionDetailViewController_updateTransactionCategory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKPaymentTransactionDetailViewController_updateTransactionCategory___block_invoke_2;
  block[3] = &unk_1E8011408;
  objc_copyWeak(v8, (a1 + 32));
  v4 = *(a1 + 40);
  v7 = v3;
  v8[1] = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v8);
}

void __70__PKPaymentTransactionDetailViewController_updateTransactionCategory___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [v3[192] description];
        v6 = *(a1 + 32);
        *buf = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Failed to set transaction category for transaction %@ with error: %@", buf, 0x16u);
      }

      [v3 _showUpdateTransactionCategoryErrorAlert];
    }

    else
    {
      WeakRetained[179] = *(a1 + 48);
    }

    v7 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{objc_msgSend(v3, "indexForSection:", 22)}];
    v8 = [v3 tableView];
    v10 = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
    [v8 reloadRowsAtIndexPaths:v9 withRowAnimation:100];
  }
}

void __70__PKPaymentTransactionDetailViewController_updateTransactionCategory___block_invoke_813(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MEMORY[0x1E695DFD8];
    v6 = WeakRetained;
    v4 = [WeakRetained[192] identifier];
    v5 = [v3 setWithObject:v4];

    [v6[161] updatePreferredCategory:*(a1 + 48) forTransactionsWithIdentifiers:v5 paymentPass:v6[144] completion:*(a1 + 32)];
    WeakRetained = v6;
  }
}

void __70__PKPaymentTransactionDetailViewController_updateTransactionCategory___block_invoke_2_817(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v16 = v3;
    v6 = WeakRetained[156];
    v7 = WeakRetained[192];
    v8 = *(a1 + 48);
    v9 = WeakRetained[161];
    v10 = WeakRetained[144];
    v11 = [WeakRetained _relatedTransactionsSourceIdentifiers];
    v12 = v5[157];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __70__PKPaymentTransactionDetailViewController_updateTransactionCategory___block_invoke_3;
    v17[3] = &unk_1E80232C8;
    objc_copyWeak(v18, (a1 + 40));
    v13 = *(a1 + 32);
    v18[1] = *(a1 + 48);
    v17[4] = v13;
    v14 = [PKTransactionPickerViewControllerProvider transactionPickerViewControllerWithAccount:v6 transaction:v7 transactionCategory:v8 paymentService:v9 paymentPass:v10 transactionSourceIdentifiers:v11 accountUserCollection:v12 completion:v17];

    v15 = [v5 navigationController];
    [v15 presentViewController:v14 animated:1 completion:0];

    objc_destroyWeak(v18);
    v3 = v16;
  }
}

void __70__PKPaymentTransactionDetailViewController_updateTransactionCategory___block_invoke_3(uint64_t a1, int a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      *(WeakRetained + 179) = *(a1 + 48);
    }

    v6 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{objc_msgSend(*(a1 + 32), "indexForSection:", 22)}];
    v7 = [v5 tableView];
    v10[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v7 reloadRowsAtIndexPaths:v8 withRowAnimation:100];

    v9 = [v5 navigationController];
    [v9 dismissViewControllerAnimated:1 completion:0];
  }
}

void __70__PKPaymentTransactionDetailViewController_updateTransactionCategory___block_invoke_4(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{objc_msgSend(*(a1 + 32), "indexForSection:", 22)}];
    v4 = [WeakRetained tableView];
    v6[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [v4 reloadRowsAtIndexPaths:v5 withRowAnimation:100];
  }
}

- (id)_relatedTransactionsSourceIdentifiers
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSources];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 type] | 2) == 2)
        {
          v10 = [v9 transactionSourceIdentifiers];
          [v3 unionSet:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

- (void)_showUpdateTransactionCategoryErrorAlert
{
  v3 = MEMORY[0x1E69DC650];
  v4 = PKLocalizedPaymentString(&cfstr_TransactionDet_6.isa);
  v5 = PKLocalizedPaymentString(&cfstr_TransactionDet_7.isa);
  v9 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v6 = MEMORY[0x1E69DC648];
  v7 = PKLocalizedPaymentString(&cfstr_TransactionDet_8.isa);
  v8 = [v6 actionWithTitle:v7 style:0 handler:0];

  [v9 addAction:v8];
  [(PKPaymentTransactionDetailViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (id)_tableViewCellForGroupedPaymentsSummary:(id)a3
{
  v4 = [a3 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionGroupedPaymentsCellReuseIdentifier"];
  v5 = [v4 textLabel];
  v6 = [v4 detailTextLabel];
  peerPaymentPendingRequestGroupName = self->_peerPaymentPendingRequestGroupName;
  if (peerPaymentPendingRequestGroupName)
  {
    v8 = peerPaymentPendingRequestGroupName;
  }

  else
  {
    v8 = PKLocalizedPeerPaymentString(&cfstr_GroupedPayment_3.isa);
  }

  v9 = v8;
  [v5 setText:v8];
  v10 = [MEMORY[0x1E69DC888] labelColor];
  [v5 setTextColor:v10];

  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
  [v5 setFont:v11];

  v12 = PKPeerPaymentTotalAmountReceivedForPendingRequest(self->_peerPaymentPendingRequest);
  v13 = v12;
  if (v12)
  {
    v14 = [v12 minimalFormattedStringValue];
    v15 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPen.isa, &stru_1F3BD5BF0.isa, v14);
    [v6 setText:v15];

    v16 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v6 setTextColor:v16];

    v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [v6 setFont:v17];
  }

  [v4 setAccessoryType:1];

  return v4;
}

- (void)_tableView:(id)a3 didSelectActionAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  switch(-[PKPaymentTransactionDetailViewController _actionRowForRowIndex:](self, "_actionRowForRowIndex:", [v6 row]))
  {
    case 0uLL:
      [(PKPaymentTransactionDetailViewController *)self _openTransactionInIssuerApp];
      break;
    case 1uLL:
      MEMORY[0x1BFB41980](*MEMORY[0x1E69BA138], 0);
      v8 = self;
      v9 = 1;
      goto LABEL_12;
    case 2uLL:
      MEMORY[0x1BFB41980](*MEMORY[0x1E69BA140], 0);
      v8 = self;
      v9 = 2;
LABEL_12:
      [(PKPaymentTransactionDetailViewController *)v8 _openMessagesToPresentAction:v9];
      break;
    case 3uLL:
      v7 = MEMORY[0x1E69BC308];
      goto LABEL_14;
    case 4uLL:
      MEMORY[0x1BFB41980](*MEMORY[0x1E69BA120], 0);
      v7 = MEMORY[0x1E69BC310];
      goto LABEL_14;
    case 5uLL:
      MEMORY[0x1BFB41980](*MEMORY[0x1E69BA130], 0);
      v7 = MEMORY[0x1E69BC318];
LABEL_14:
      [(PKPaymentTransactionDetailViewController *)self _tableView:v10 didSelectPeerPaymentAction:*v7 atIndexPath:v6];
      break;
    case 6uLL:
      [(PKPaymentTransactionDetailViewController *)self _presentRecurringPeerPaymentAtIndexPath:v6];
      break;
    case 7uLL:
      [(PKPaymentTransactionDetailViewController *)self _presentCancelPaymentWithIndexPath:v6];
      break;
    case 8uLL:
      [(PKPaymentTransactionDetailViewController *)self _presentReportIssue];
      break;
    case 9uLL:
    case 10uLL:
      [(PKPaymentTransactionDetailViewController *)self _presentContactViewController];
      break;
    case 11uLL:
      [(PKPaymentTransactionDetailViewController *)self _openAppPrivacyURL];
      break;
    case 12uLL:
      [(PKPaymentTransactionDetailViewController *)self _cancelPeerPaymentPendingRequest];
      break;
    case 13uLL:
      [(PKPaymentTransactionDetailViewController *)self _openBankConnectPostInstallmentURL];
      break;
    case 14uLL:
      [(PKPaymentTransactionDetailViewController *)self _openBankConnectRedeemRewardsURL];
      break;
    default:
      break;
  }
}

- (void)_tableView:(id)a3 didSelectPeerPaymentAction:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 cellForRowAtIndexPath:v10];
  [v11 setShowsActionSpinner:1];
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__PKPaymentTransactionDetailViewController__tableView_didSelectPeerPaymentAction_atIndexPath___block_invoke;
  aBlock[3] = &unk_1E8011828;
  objc_copyWeak(&v45, location);
  v12 = v9;
  v43 = v12;
  v13 = v10;
  v44 = v13;
  v14 = _Block_copy(aBlock);
  v15 = *MEMORY[0x1E69BC310];
  v16 = v12;
  v17 = v15;
  v18 = v17;
  if (v17 == v16)
  {
  }

  else
  {
    if (!v16 || !v17)
    {

      goto LABEL_11;
    }

    v19 = [v16 isEqualToString:v17];

    if (!v19)
    {
      goto LABEL_11;
    }
  }

  v20 = [(PKPaymentTransaction *)self->_transaction recurringPeerPayment];

  if (!v20)
  {
LABEL_11:
    v14[2](v14);
    goto LABEL_14;
  }

  v21 = PKLocalizedPeerPaymentRecurringString(&cfstr_TransactionDet_125.isa);
  v22 = [(PKPaymentTransaction *)self->_transaction peerPaymentCounterpartHandle];
  v32 = [(PKContactResolver *)self->_contactResolver contactForHandle:v22];
  v36 = [MEMORY[0x1E69B8F30] displayNameForCounterpartHandle:v22 contact:v32];
  v23 = [(PKPaymentTransaction *)self->_transaction transactionDate];
  v35 = PKMediumDayAndMonthStringFromDate();

  if ([v36 length])
  {
    PKLocalizedPeerPaymentRecurringString(&cfstr_TransactionDet_126.isa, &stru_1F3BD6370.isa, v35, v36);
  }

  else
  {
    PKLocalizedPeerPaymentRecurringString(&cfstr_TransactionDet_127.isa, &stru_1F3BD5BF0.isa, v35);
  }
  v34 = ;
  v33 = PKLocalizedPeerPaymentRecurringString(&cfstr_TransactionDet_128.isa);
  v31 = v22;
  v24 = PKLocalizedPeerPaymentRecurringString(&cfstr_TransactionDet_129.isa);
  v30 = v21;
  v25 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v21 message:v34 preferredStyle:1];
  v26 = MEMORY[0x1E69DC648];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __94__PKPaymentTransactionDetailViewController__tableView_didSelectPeerPaymentAction_atIndexPath___block_invoke_5;
  v40[3] = &unk_1E8011248;
  v41 = v14;
  v27 = [v26 actionWithTitle:v33 style:2 handler:v40];
  [v25 addAction:v27];

  v28 = MEMORY[0x1E69DC648];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __94__PKPaymentTransactionDetailViewController__tableView_didSelectPeerPaymentAction_atIndexPath___block_invoke_6;
  v37[3] = &unk_1E80178E8;
  objc_copyWeak(&v39, location);
  v38 = v13;
  v29 = [v28 actionWithTitle:v24 style:1 handler:v37];
  [v25 addAction:v29];

  [(PKPaymentTransactionDetailViewController *)self presentViewController:v25 animated:1 completion:0];
  objc_destroyWeak(&v39);

LABEL_14:
  objc_destroyWeak(&v45);
  objc_destroyWeak(location);
}

void __94__PKPaymentTransactionDetailViewController__tableView_didSelectPeerPaymentAction_atIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __94__PKPaymentTransactionDetailViewController__tableView_didSelectPeerPaymentAction_atIndexPath___block_invoke_2;
    v4[3] = &unk_1E8027628;
    objc_copyWeak(&v6, (a1 + 48));
    v5 = *(a1 + 40);
    [WeakRetained _performPeerPaymentAction:v3 withCompletion:v4];

    objc_destroyWeak(&v6);
  }
}

void __94__PKPaymentTransactionDetailViewController__tableView_didSelectPeerPaymentAction_atIndexPath___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __94__PKPaymentTransactionDetailViewController__tableView_didSelectPeerPaymentAction_atIndexPath___block_invoke_3;
    v7[3] = &unk_1E80113B0;
    objc_copyWeak(&v9, (a1 + 40));
    v8 = *(a1 + 32);
    [WeakRetained _updatePeerPaymentTransactionStatusWithCompletion:v7];

    objc_destroyWeak(&v9);
  }
}

void __94__PKPaymentTransactionDetailViewController__tableView_didSelectPeerPaymentAction_atIndexPath___block_invoke_3(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __94__PKPaymentTransactionDetailViewController__tableView_didSelectPeerPaymentAction_atIndexPath___block_invoke_4;
  v2[3] = &unk_1E80110E0;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v4);
}

void __94__PKPaymentTransactionDetailViewController__tableView_didSelectPeerPaymentAction_atIndexPath___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained tableView];
    v4 = [v3 cellForRowAtIndexPath:*(a1 + 32)];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    [v5 setShowsActionSpinner:0];

    WeakRetained = v6;
  }
}

void __94__PKPaymentTransactionDetailViewController__tableView_didSelectPeerPaymentAction_atIndexPath___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained tableView];
    v4 = [v3 cellForRowAtIndexPath:*(a1 + 32)];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    [v5 setShowsActionSpinner:0];

    WeakRetained = v6;
  }
}

- (void)_openMessagesToPresentAction:(unint64_t)a3
{
  v10 = [(PKPaymentTransaction *)self->_transaction peerPaymentCounterpartHandle];
  v4 = [(PKPaymentTransaction *)self->_transaction subtotalAmount];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(PKPaymentTransaction *)self->_transaction amount];
  }

  v7 = v6;

  v8 = [(PKPaymentTransaction *)self->_transaction currencyCode];
  v9 = PKPeerPaymentGetSendPaymentSensitiveURL();
  if (v9)
  {
    PKOpenURL();
  }
}

- (void)_openTransactionInIssuerApp
{
  v3 = self->_paymentPass;
  v6 = [(PKPaymentPass *)v3 uniqueID];
  v4 = [(PKPaymentDataProvider *)self->_paymentServiceDataProvider transactionsAppLaunchTokenForPassWithUniqueIdentifier:?];
  v5 = [PKPaymentNotificationAppURLHelper appURLForTransactionNotification:self->_transaction pass:v3 appLaunchToken:v4];

  if (v5)
  {
    PKOpenURL();
  }
}

- (void)_openOfferDetailsInIssuerApp:(id)a3
{
  v11 = self->_paymentPass;
  v5 = a3;
  v6 = [(PKPaymentPass *)v11 uniqueID];
  v7 = [(PKPaymentDataProvider *)self->_paymentServiceDataProvider transactionsAppLaunchTokenForPassWithUniqueIdentifier:v6];
  v8 = [v5 identifier];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/offers/%@", v8];
  }

  else
  {
    v9 = @"/offers";
  }

  v10 = [PKPaymentNotificationAppURLHelper appURLForTransactionNotification:self->_transaction excludeTransactionIdentifier:0 pass:v11 pathSuffix:v9 appLaunchToken:v7];
  if (v10)
  {
    PKOpenURL();
  }
}

- (BOOL)_transactionHasNonZeroSecondaryFundingSourceAmount
{
  v2 = [(PKPaymentTransaction *)self->_transaction secondaryFundingSourceAmount];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AB90] zero];
    v4 = [v2 compare:v3] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_presentRecurringPeerPaymentAtIndexPath:(id)a3
{
  v4 = [(PKPaymentTransaction *)self->_transaction recurringPeerPayment];
  [(PKPaymentTransactionDetailViewController *)self _presentRecurringPeerPayment:v4];
}

- (void)_presentRecurringPeerPayment:(id)a3
{
  v25 = a3;
  v4 = objc_alloc(MEMORY[0x1E69B8F28]);
  v5 = [MEMORY[0x1E69B9020] sharedService];
  v6 = [v4 initWithPeerPaymentWebService:v5];

  v7 = [v6 account];
  detailViewStyle = self->_detailViewStyle;
  v9 = 3;
  if (detailViewStyle != 1)
  {
    v9 = 0;
  }

  if (detailViewStyle == 2)
  {
    v10 = 4;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v25 type];
  if (v11 == 3)
  {
    thresholdTopUpController = self->_thresholdTopUpController;
    if (!thresholdTopUpController)
    {
      v20 = [PKPeerPaymentThresholdTopUpController alloc];
      paymentPass = self->_paymentPass;
      v22 = objc_alloc_init(MEMORY[0x1E69B8A60]);
      v23 = [(PKPeerPaymentThresholdTopUpController *)v20 initWithPeerPaymentAccount:v7 pass:paymentPass context:v10 passLibraryDataProvider:v22 delegate:self];
      v24 = self->_thresholdTopUpController;
      self->_thresholdTopUpController = v23;

      thresholdTopUpController = self->_thresholdTopUpController;
    }

    [(PKPeerPaymentThresholdTopUpController *)thresholdTopUpController presentTopUpFlowForRecurringPayment:v25];
  }

  else if (v11 == 1)
  {
    v12 = [v7 recurringPaymentsFeatureDescriptor];
    v13 = [PKPeerPaymentRecurringPaymentDetailViewController alloc];
    v14 = [v25 recipientAddress];
    v15 = [(PKPeerPaymentRecurringPaymentDetailViewController *)v13 initWithRecurringPayment:v25 recipientAddress:v14 mode:2 context:v10 peerPaymentController:v6 remoteMessagesComposer:0];

    v16 = [v12 minimumAmount];
    [(PKPeerPaymentRecurringPaymentDetailViewController *)v15 setMinimumAmount:v16];

    v17 = [v12 maximumAmount];
    [(PKPeerPaymentRecurringPaymentDetailViewController *)v15 setMaximumAmount:v17];

    v18 = [(PKPaymentTransactionDetailViewController *)self navigationController];
    if ([v18 pk_settings_useStateDrivenNavigation])
    {
      [v18 pk_settings_pushViewController:v15];
    }

    else
    {
      [v18 pushViewController:v15 animated:1];
    }
  }
}

- (void)_presentCancelPaymentWithIndexPath:(id)a3
{
  v4 = a3;
  if (!self->_cancelingPayment)
  {
    self->_cancelingPayment = 1;
    v5 = MEMORY[0x1E69DC650];
    v6 = PKLocalizedPaymentString(&cfstr_TransactionDet_125.isa);
    v7 = PKLocalizedPaymentString(&cfstr_TransactionDet_126.isa);
    v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

    v9 = MEMORY[0x1E69DC648];
    v10 = PKLocalizedPaymentString(&cfstr_TransactionDet_128.isa);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __79__PKPaymentTransactionDetailViewController__presentCancelPaymentWithIndexPath___block_invoke;
    v16[3] = &unk_1E8011310;
    v16[4] = self;
    v17 = v4;
    v11 = [v9 actionWithTitle:v10 style:2 handler:v16];
    [v8 addAction:v11];

    v12 = MEMORY[0x1E69DC648];
    v13 = PKLocalizedPaymentString(&cfstr_TransactionDet_129.isa);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __79__PKPaymentTransactionDetailViewController__presentCancelPaymentWithIndexPath___block_invoke_2;
    v15[3] = &unk_1E80112E8;
    v15[4] = self;
    v14 = [v12 actionWithTitle:v13 style:1 handler:v15];
    [v8 addAction:v14];

    [(PKPaymentTransactionDetailViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

void __79__PKPaymentTransactionDetailViewController__presentCancelPaymentWithIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v5 = [v2 cellForRowAtIndexPath:*(a1 + 40)];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v4 setShowsActionSpinner:1];
  [*(a1 + 32) _cancelPaymentWithCell:v4];
}

- (void)_cancelPaymentWithCell:(id)a3
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
  webService = self->_webService;
  if (!webService)
  {
    v12 = [MEMORY[0x1E69B8EF8] sharedService];
    v13 = self->_webService;
    self->_webService = v12;

    webService = self->_webService;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__PKPaymentTransactionDetailViewController__cancelPaymentWithCell___block_invoke;
  v15[3] = &unk_1E8016198;
  objc_copyWeak(&v17, &location);
  v14 = v4;
  v16 = v14;
  [(PKPaymentWebService *)webService cancelPaymentWithRequest:v7 completion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __67__PKPaymentTransactionDetailViewController__cancelPaymentWithCell___block_invoke(uint64_t a1, void *a2, void *a3)
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
  block[2] = __67__PKPaymentTransactionDetailViewController__cancelPaymentWithCell___block_invoke_865;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v12, (a1 + 40));
  v10 = *(a1 + 32);
  v11 = v6;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __67__PKPaymentTransactionDetailViewController__cancelPaymentWithCell___block_invoke_865(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 1424) = 0;
    [*(a1 + 32) setShowsActionSpinner:0];
    if (*(a1 + 40))
    {
      v4 = MEMORY[0x1E69DC650];
      v5 = PKLocalizedPaymentString(&cfstr_TransactionDet_130.isa);
      v6 = PKLocalizedPaymentString(&cfstr_TransactionDet_131.isa);
      v7 = [v4 alertControllerWithTitle:v5 message:v6 preferredStyle:1];

      if (+[PKBusinessChatController deviceSupportsBusinessChat])
      {
        v8 = MEMORY[0x1E69DC648];
        v9 = PKLocalizedPaymentString(&cfstr_TransactionDet_132.isa);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __67__PKPaymentTransactionDetailViewController__cancelPaymentWithCell___block_invoke_2;
        v17[3] = &unk_1E80112E8;
        v17[4] = v3;
        v10 = [v8 actionWithTitle:v9 style:0 handler:v17];
        [v7 addAction:v10];
      }

      v11 = MEMORY[0x1E69DC648];
      v12 = PKLocalizedPaymentString(&cfstr_TransactionDet_133.isa);
      v13 = [v11 actionWithTitle:v12 style:1 handler:0];
      [v7 addAction:v13];

      [v3 presentViewController:v7 animated:1 completion:0];
    }

    else
    {
      v14 = v3[192];
      [v14 setTransactionStatus:5];
      v15 = v3[161];
      v16 = [v14 transactionSourceIdentifier];
      [v15 insertOrUpdatePaymentTransaction:v14 forTransactionSourceIdentifier:v16 completion:0];
    }
  }
}

void __67__PKPaymentTransactionDetailViewController__cancelPaymentWithCell___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _businessChatContextForNonCancellablePayment];
  [*(a1 + 32) _openBusinessChatControllerForContext:v2];
}

- (id)_businessChatContextForNonCancellablePayment
{
  familyCollection = self->_familyCollection;
  v4 = [(PKAccountUser *)self->_accountUser altDSID];
  v5 = [(PKFamilyMemberCollection *)familyCollection familyMemberForAltDSID:v4];

  v6 = [PKBusinessChatTransactionDisputeContext alloc];
  v7 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  v8 = [(PKBusinessChatTransactionDisputeContext *)v6 initWithPaymentPass:v7 transaction:self->_transaction account:self->_account accountUser:self->_accountUser familyMember:v5 physicalCards:self->_physicalCards intent:9];

  return v8;
}

- (id)_businessChatContextForUnavailableDisputeStatus
{
  familyCollection = self->_familyCollection;
  v4 = [(PKAccountUser *)self->_accountUser altDSID];
  v5 = [(PKFamilyMemberCollection *)familyCollection familyMemberForAltDSID:v4];

  v6 = [[PKBusinessChatTransactionDisputeContext alloc] initWithPaymentPass:self->_paymentPass transaction:self->_transaction account:self->_account accountUser:self->_accountUser familyMember:v5 physicalCards:self->_physicalCards intent:10];

  return v6;
}

- (void)_presentReportIssue
{
  if (!PKStoreDemoModeEnabled())
  {
    v3 = [PKReportIssueViewController canSelectIssueTypeForTransaction:self->_transaction];
    v4 = +[PKBusinessChatController deviceSupportsBusinessChat];
    v5 = self->_paymentPass;
    if ([(PKPaymentPass *)v5 isAppleCardPass])
    {
      v6 = !v4;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (v3)
      {
        v7 = [[PKReportIssueViewController alloc] initWithTransaction:self->_transaction transactionSourceCollection:self->_transactionSourceCollection paymentPass:v5 familyCollection:self->_familyCollection account:self->_account accountUserCollection:self->_accountUserCollection bankConnectInstitution:self->_bankConnectInstitution physicalCards:self->_physicalCards detailViewStyle:self->_detailViewStyle context:0];
        v8 = [[PKNavigationController alloc] initWithRootViewController:v7];
        [(PKPaymentTransactionDetailViewController *)self presentViewController:v8 animated:1 completion:0];
LABEL_28:

LABEL_30:
        goto LABEL_31;
      }

      v13 = [(PKPaymentPass *)v5 businessChatIdentifier];
      v14 = v13 != 0 && v4;

      if (v14 != 1)
      {
LABEL_31:

        return;
      }

      if ([(PKPaymentTransaction *)self->_transaction transactionType]== 10)
      {
        v15 = 9;
      }

      else
      {
        v15 = 5;
      }

      v7 = [(PKAccountUserCollection *)self->_accountUserCollection accountUserForTransaction:self->_transaction];
      familyCollection = self->_familyCollection;
      v17 = [(PKReportIssueViewController *)v7 altDSID];
      v8 = [(PKFamilyMemberCollection *)familyCollection familyMemberForAltDSID:v17];

      v18 = [[PKBusinessChatTransactionDisputeContext alloc] initWithPaymentPass:v5 transaction:self->_transaction account:self->_account accountUser:v7 familyMember:v8 physicalCards:self->_physicalCards intent:v15];
      [(PKPaymentTransactionDetailViewController *)self _openBusinessChatControllerForContext:v18];
LABEL_27:

      goto LABEL_28;
    }

    v9 = [(PKPaymentPass *)v5 associatedAccountServiceAccountIdentifier];
    v10 = [(PKAccount *)self->_account accountIdentifier];
    v11 = v9;
    v7 = v11;
    if (v10 != v11)
    {
      if (v11)
      {
        v12 = v10 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
      }

      else
      {
        v19 = [(PKReportIssueViewController *)v10 isEqualToString:v11];

        if (v19)
        {
          goto LABEL_26;
        }
      }

      objc_initWeak(&location, self);
      accountService = self->_accountService;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __63__PKPaymentTransactionDetailViewController__presentReportIssue__block_invoke;
      v22[3] = &unk_1E80159B0;
      objc_copyWeak(&v23, &location);
      [(PKAccountService *)accountService accountWithIdentifier:v7 completion:v22];
      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
      goto LABEL_30;
    }

LABEL_26:
    v8 = [[PKTransactionSupportTopicsViewController alloc] initWithAccount:self->_account transaction:self->_transaction transactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection accountUserCollection:self->_accountUserCollection physicalCards:self->_physicalCards];
    v18 = [[PKNavigationController alloc] initWithRootViewController:v8];
    [(PKPaymentTransactionDetailViewController *)self presentViewController:v18 animated:1 completion:0];
    goto LABEL_27;
  }

  v21 = PKUIStoreDemoGatewayViewController();
  [(PKPaymentTransactionDetailViewController *)self presentViewController:v21 animated:1 completion:0];
}

void __63__PKPaymentTransactionDetailViewController__presentReportIssue__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__PKPaymentTransactionDetailViewController__presentReportIssue__block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __63__PKPaymentTransactionDetailViewController__presentReportIssue__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && *(a1 + 32))
  {
    v5 = WeakRetained;
    v3 = [[PKTransactionSupportTopicsViewController alloc] initWithAccount:*(a1 + 32) transaction:v5[192] transactionSourceCollection:v5[193] familyCollection:v5[155] accountUserCollection:v5[157] physicalCards:v5[159]];
    v4 = [[PKNavigationController alloc] initWithRootViewController:v3];
    [v5 presentViewController:v4 animated:1 completion:0];

    WeakRetained = v5;
  }
}

- (void)_presentContactViewController
{
  if (self->_accountResolutionController)
  {
    accountUserCollection = self->_accountUserCollection;
    transaction = self->_transaction;
    v5 = self->_paymentPass;
    v11 = [(PKAccountUserCollection *)accountUserCollection accountUserForTransaction:transaction];
    familyCollection = self->_familyCollection;
    v7 = [v11 altDSID];
    v8 = [(PKFamilyMemberCollection *)familyCollection familyMemberForAltDSID:v7];

    v9 = [[PKBusinessChatTransactionDisputeContext alloc] initWithPaymentPass:v5 transaction:self->_transaction account:self->_account accountUser:v11 familyMember:v8 physicalCards:self->_physicalCards intent:6];
    v10 = objc_alloc_init(MEMORY[0x1E69B8408]);
    [v10 setBusinessChatContext:v9];
    [(PKAccountServiceAccountResolutionController *)self->_accountResolutionController presentFlowForAccountResolution:2 configuration:v10 completion:0];
  }

  else
  {

    [(PKPaymentTransactionDetailViewController *)self _presentContactIssuer];
  }
}

- (void)_cancelPeerPaymentPendingRequest
{
  v3 = [(PKPaymentTransactionDetailViewController *)self _peerPaymentController];
  v4 = [(PKPaymentTransaction *)self->_transaction identifier];
  v5 = *MEMORY[0x1E69BC340];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__PKPaymentTransactionDetailViewController__cancelPeerPaymentPendingRequest__block_invoke;
  v7[3] = &unk_1E8027650;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v3 performPendingRequestAction:v5 withRequestToken:v6 completion:v7];
}

void __76__PKPaymentTransactionDetailViewController__cancelPeerPaymentPendingRequest__block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  objc_initWeak(&location, *(a1 + 32));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__PKPaymentTransactionDetailViewController__cancelPeerPaymentPendingRequest__block_invoke_2;
  v10[3] = &unk_1E8026480;
  objc_copyWeak(&v14, &location);
  v15 = a2;
  v11 = v6;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v12 = v7;
  v13 = v8;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __76__PKPaymentTransactionDetailViewController__cancelPeerPaymentPendingRequest__block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if ((*(a1 + 64) & 1) != 0 || (v3 = *(a1 + 32)) == 0)
    {
      v11 = [*(a1 + 48) navigationController];
      if ([v11 pk_settings_useStateDrivenNavigation])
      {
        [v11 pk_settings_popToRootViewController];
      }

      else
      {
        v12 = [v11 popToRootViewControllerAnimated:1];
      }
    }

    else
    {
      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [v3 localizedDescription];
        *buf = 138412290;
        v18 = v5;
        _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "PKPaymentTransactionDetailViewController: Error attempting to cancel pending request: %@", buf, 0xCu);
      }

      v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPen_14.isa);
      v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v6 message:0 preferredStyle:1];
      v8 = MEMORY[0x1E69DC648];
      v9 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __76__PKPaymentTransactionDetailViewController__cancelPeerPaymentPendingRequest__block_invoke_885;
      v13[3] = &unk_1E801E170;
      objc_copyWeak(&v16, (a1 + 56));
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v10 = [v8 actionWithTitle:v9 style:0 handler:v13];

      [v7 addAction:v10];
      [WeakRetained presentViewController:v7 animated:1 completion:0];

      objc_destroyWeak(&v16);
    }
  }
}

void __76__PKPaymentTransactionDetailViewController__cancelPeerPaymentPendingRequest__block_invoke_885(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) userInfo];
    v4 = [v3 objectForKey:*MEMORY[0x1E696AA08]];
    v5 = [v4 domain];
    v6 = [v5 isEqualToString:*MEMORY[0x1E69BC388]];

    if (v6)
    {
      v7 = [v4 code];
      if ((v7 - 40314) <= 0x13 && ((1 << (v7 - 122)) & 0xC0003) != 0)
      {
        v9 = [WeakRetained[141] peerPaymentService];
        v13[0] = *(a1 + 40);
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
        [v9 deletePeerPaymentPendingRequestsForRequestTokens:v10];
      }
    }

    v11 = [WeakRetained navigationController];
    if ([v11 pk_settings_useStateDrivenNavigation])
    {
      [v11 pk_settings_popToRootViewController];
    }

    else
    {
      v12 = [v11 popToRootViewControllerAnimated:1];
    }
  }
}

- (void)_openBusinessChatControllerForContext:(id)a3
{
  if (self->_accountResolutionController)
  {
    v4 = MEMORY[0x1E69B8408];
    v5 = a3;
    v6 = objc_alloc_init(v4);
    [v6 setBusinessChatContext:v5];

    [(PKAccountServiceAccountResolutionController *)self->_accountResolutionController presentFlowForAccountResolution:3 configuration:v6 completion:0];
  }
}

- (id)_transactionStatusString
{
  peerPaymentStatusResponse = self->_peerPaymentStatusResponse;
  if (!peerPaymentStatusResponse || [(PKPeerPaymentStatusResponse *)peerPaymentStatusResponse status]== -1 || (v4 = PKPaymentTransactionStatusFromPeerPaymentStatus(), v4 == -1))
  {
    v5 = [(PKPaymentTransaction *)self->_transaction transactionStatus];
  }

  else
  {
    v5 = v4;
  }

  if (([(PKPaymentTransaction *)self->_transaction disputeStatus]- 1) > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = PKLocalizedFeatureString();
  }

  v7 = [(PKPaymentTransaction *)self->_transaction transactionType];
  v8 = [(PKPaymentTransaction *)self->_transaction featureIdentifier];
  if (!v6)
  {
    if (v5 > 3)
    {
      if (v5 <= 5)
      {
        if (v5 == 4)
        {
          v9 = @"TRANSACTION_DETAIL_STATUS_VALUE_FAILED";
        }

        else
        {
          v9 = @"TRANSACTION_DETAIL_STATUS_VALUE_CANCELED";
        }

        goto LABEL_44;
      }

      switch(v5)
      {
        case 6:
          v9 = @"TRANSACTION_DETAIL_STATUS_VALUE_REJECTED";
          break;
        case 7:
          v9 = @"TRANSACTION_DETAIL_STATUS_VALUE_EXPIRED";
          break;
        case 8:
LABEL_28:
          if (v7 == 2)
          {
            if ([(PKPaymentTransaction *)self->_transaction enRoute])
            {
LABEL_30:
              v10 = PKLocalizedPaymentString(&cfstr_TransitTransac_7.isa);
LABEL_45:
              v6 = v10;
              goto LABEL_46;
            }

            goto LABEL_40;
          }

          if (v8 == 2)
          {
            if (v7 == 10)
            {
LABEL_39:
              v10 = PKLocalizedFeatureString();
              goto LABEL_45;
            }
          }

          else if (v8 == 5)
          {
            goto LABEL_39;
          }

LABEL_40:
          v9 = @"TRANSACTION_DETAIL_STATUS_VALUE_PENDING";
          break;
        default:
          goto LABEL_46;
      }

LABEL_44:
      v10 = PKLocalizedPeerPaymentString(&v9->isa);
      goto LABEL_45;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v9 = @"TRANSACTION_DETAIL_STATUS_VALUE_DECLINED";
        goto LABEL_44;
      }
    }

    else
    {
      if (!v5)
      {
        goto LABEL_28;
      }

      if (v5 != 1)
      {
        goto LABEL_46;
      }

      if (v7 != 1)
      {
        if (v7 != 10)
        {
          if (v7 == 3)
          {
            if ([(PKPaymentTransaction *)self->_transaction peerPaymentStatus]!= 1)
            {
LABEL_49:
              v12 = [(PKPaymentTransaction *)self->_transaction transfers];
              v13 = [v12 firstObject];

              if (v13)
              {
                if (![v13 fundsAreAvailable])
                {
                  v14 = PKLocalizedFeatureString();
LABEL_57:
                  v6 = v14;

                  goto LABEL_46;
                }
              }

              else
              {
                v15 = [(PKPaymentTransaction *)self->_transaction accountIdentifier];

                if (v15)
                {
                  v16 = @"TRANSACTION_DETAIL_STATUS_VALUE_CLEARED";
LABEL_56:
                  v14 = PKLocalizedPeerPaymentString(&v16->isa);
                  goto LABEL_57;
                }

                v17 = [(PKPaymentTransaction *)self->_transaction barcodeIdentifier];

                if (!v17)
                {
                  v16 = @"TRANSACTION_DETAIL_STATUS_VALUE_APPROVED";
                  goto LABEL_56;
                }
              }

              v16 = @"TRANSACTION_DETAIL_STATUS_VALUE_COMPLETED";
              goto LABEL_56;
            }
          }

          else
          {
            if (v7 != 2)
            {
              goto LABEL_49;
            }

            if ([(PKPaymentTransaction *)self->_transaction enRoute])
            {
              goto LABEL_30;
            }
          }
        }

        v9 = @"TRANSACTION_DETAIL_STATUS_VALUE_COMPLETED";
        goto LABEL_44;
      }
    }

    v9 = @"TRANSACTION_DETAIL_STATUS_VALUE_REFUNDED";
    goto LABEL_44;
  }

LABEL_46:

  return v6;
}

- (void)transactionsChanged:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKPaymentTransaction *)self->_transaction peerPaymentRequestToken];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (!v6)
  {

    goto LABEL_20;
  }

  v18 = 0;
  v7 = *v24;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v24 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v23 + 1) + 8 * i);
      v10 = [(PKPaymentTransaction *)self->_transaction identifier];
      v11 = [v9 identifier];
      v12 = PKEqualObjects();

      if (v12)
      {
        [(PKPaymentTransactionDetailViewController *)self setTransaction:v9];
        continue;
      }

      if (v5)
      {
        v13 = [v9 peerPaymentRequestToken];
        v14 = v5;
        if (v13 == v14)
        {
          v15 = 1;
LABEL_13:
          v18 = v15;
        }

        else if (v13)
        {
          v15 = [v13 isEqualToString:v14] | v18;
          goto LABEL_13;
        }

        continue;
      }
    }

    v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  }

  while (v6);

  if (v18)
  {
    objc_initWeak(&location, self);
    v16 = [MEMORY[0x1E69B9000] sharedInstance];
    v27 = v5;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __64__PKPaymentTransactionDetailViewController_transactionsChanged___block_invoke;
    v20[3] = &unk_1E8011158;
    objc_copyWeak(&v21, &location);
    [v16 peerPaymentPendingRequestsForRequestTokens:v17 completion:v20];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

LABEL_20:
}

void __64__PKPaymentTransactionDetailViewController_transactionsChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__PKPaymentTransactionDetailViewController_transactionsChanged___block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __64__PKPaymentTransactionDetailViewController_transactionsChanged___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(a1 + 32) firstObject];
    v4 = v5[189];
    v5[189] = v3;

    [v5 reloadSection:29];
    WeakRetained = v5;
  }
}

- (id)_merchantAddressCellForTableView:(id)a3
{
  v4 = [a3 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionLocationMapCellReuseIdentifier"];
  [v4 setTransaction:self->_transaction];
  if (self->_inBridge)
  {
    v5 = PKBridgeAppearanceGetAppearanceSpecifier();
    v6 = [v5 textColor];
    [v4 setTitleLabelColor:v6];

    inBridge = self->_inBridge;
  }

  else
  {
    inBridge = 0;
  }

  [v4 setUsesDarkMapAppearance:inBridge];

  return v4;
}

- (id)_mapTilePlaceholderImage
{
  mapTilePlaceholderImage = self->_mapTilePlaceholderImage;
  if (!mapTilePlaceholderImage)
  {
    v4 = PKUIImageNamed(@"MapTilePlaceholder");
    v5 = self->_mapTilePlaceholderImage;
    self->_mapTilePlaceholderImage = v4;

    mapTilePlaceholderImage = self->_mapTilePlaceholderImage;
  }

  return mapTilePlaceholderImage;
}

- (void)_tableView:(id)a3 didSelectMechantAddressAtIndexPath:(id)a4
{
  v33[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v23 = [v6 cellForRowAtIndexPath:v7];
  v8 = self->_transaction;
  v9 = [(PKPaymentTransaction *)v8 merchant];
  v10 = [v9 mapsMerchant];

  v11 = [v10 identifier];
  v12 = [v10 resultProviderIdentifier];
  if (v11)
  {
    v13 = v12;
    v14 = objc_alloc_init(MEMORY[0x1E696F260]);
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v11];
    v33[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    [v14 _setMuids:v16];

    if (v13 >= 1)
    {
      [v14 _setResultProviderID:v13];
    }

    v17 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v18 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __90__PKPaymentTransactionDetailViewController__tableView_didSelectMechantAddressAtIndexPath___block_invoke;
    handler[3] = &unk_1E8010A10;
    v19 = v17;
    v31 = v19;
    v20 = v23;
    v32 = v20;
    dispatch_source_set_event_handler(v19, handler);
    dispatch_resume(v19);
    [v20 setUserInteractionEnabled:0];
    objc_initWeak(&location, self);
    v21 = [objc_alloc(MEMORY[0x1E696F248]) initWithRequest:v14];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __90__PKPaymentTransactionDetailViewController__tableView_didSelectMechantAddressAtIndexPath___block_invoke_2;
    v24[3] = &unk_1E8027678;
    v22 = v19;
    v25 = v22;
    objc_copyWeak(&v28, &location);
    v26 = v20;
    v27 = v10;
    [v21 startWithCompletionHandler:v24];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }
}

uint64_t __90__PKPaymentTransactionDetailViewController__tableView_didSelectMechantAddressAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_source_cancel(v2);
  }

  v3 = *(a1 + 40);

  return [v3 setShowsActionSpinner:1];
}

void __90__PKPaymentTransactionDetailViewController__tableView_didSelectMechantAddressAtIndexPath___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    dispatch_source_cancel(v7);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([WeakRetained isViewLoaded])
  {
    [*(a1 + 40) setShowsActionSpinner:0];
    [*(a1 + 40) setUserInteractionEnabled:1];
    if (v6 || ([v5 mapItems], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, !v13))
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 48) identifier];
        if (v6)
        {
          v11 = [v6 localizedDescription];
        }

        else
        {
          v11 = @"no map items.";
        }

        *buf = 134218242;
        v24 = v10;
        v25 = 2112;
        v26 = v11;
        _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "PKPaymentTransactionDetailViewController: MKLocalSearch could not resolve merchant maps for mapsID: %llu. Error: %@", buf, 0x16u);
        if (v6)
        {
        }
      }
    }

    else if (WeakRetained[138] == 2)
    {
      v14 = MEMORY[0x1E696F270];
      v15 = [v5 mapItems];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __90__PKPaymentTransactionDetailViewController__tableView_didSelectMechantAddressAtIndexPath___block_invoke_3;
      v21[3] = &unk_1E8011D28;
      v22 = *(a1 + 48);
      [v14 _openDefaultNavigationWithItems:v15 launchOptions:0 fromScene:0 completionHandler:v21];
    }

    else
    {
      v16 = [PKMerchantMapViewController alloc];
      v17 = [v5 mapItems];
      v18 = [v17 firstObject];
      v19 = [(PKMerchantMapViewController *)v16 initWithMapItem:v18 configOptions:0x2000000000081];

      v20 = [WeakRetained navigationController];
      if ([v20 pk_settings_useStateDrivenNavigation])
      {
        [v20 pk_settings_pushViewController:v19];
      }

      else
      {
        [v20 pushViewController:v19 animated:1];
      }
    }
  }
}

void __90__PKPaymentTransactionDetailViewController__tableView_didSelectMechantAddressAtIndexPath___block_invoke_3(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) identifier];
      v5 = 134217984;
      v6 = v4;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Bridge failed to launch Maps with merchant maps identifier: %llu", &v5, 0xCu);
    }
  }
}

- (void)_handleCoarseLocationChangedNotification:(id)a3
{
  v4 = [a3 object];
  coarseLocationMonitor = self->_coarseLocationMonitor;

  if (v4 == coarseLocationMonitor)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__PKPaymentTransactionDetailViewController__handleCoarseLocationChangedNotification___block_invoke;
    block[3] = &unk_1E8010970;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __85__PKPaymentTransactionDetailViewController__handleCoarseLocationChangedNotification___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isSectionMapped:7];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 reloadSection:7];
  }

  return result;
}

- (unint64_t)_amountDetailsRowForIndex:(unint64_t)a3
{
  v5 = 0;
  v6 = 0;
  do
  {
    if ([(PKPaymentTransactionDetailViewController *)self _amountDetailsRowIsEnabled:v5])
    {
      if (v6 == a3)
      {
        break;
      }

      ++v6;
    }

    ++v5;
  }

  while (v5 != 4);
  if (v5 >= 3)
  {
    return 3;
  }

  else
  {
    return v5;
  }
}

- (unint64_t)_numberOfAmountDetailsRows
{
  v3 = 0;
  v4 = 0;
  while (![(PKPaymentTransactionDetailViewController *)self _amountDetailsRowIsEnabled:v3])
  {
LABEL_5:
    if (++v3 == 4)
    {
      return v4;
    }
  }

  if (v3 != 3)
  {
    ++v4;
    goto LABEL_5;
  }

  v4 += [(NSArray *)self->_lineItems count];
  return v4;
}

- (BOOL)_amountDetailsRowIsEnabled:(unint64_t)a3
{
  v4 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      merchantTokenResponse = self->_merchantTokenResponse;
      if (!merchantTokenResponse)
      {
        return 0;
      }

      v8 = [(PKRetrieveMerchantTokensResponse *)merchantTokenResponse merchantTokens];
      v4 = [v8 count] == 0;

      return v4;
    }

    if (a3 == 3)
    {
      v5 = [(NSArray *)self->_lineItems count]== 0;
      return !v5;
    }

    return v4;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v5 = self->_transactionExplanation == 0;
      return !v5;
    }

    return v4;
  }

  if ([(PKPaymentTransaction *)self->_transaction transactionType]!= 2)
  {
    return 1;
  }

  v6 = [(PKPaymentTransaction *)self->_transaction transitType];

  return MEMORY[0x1EEE250D0](v6);
}

- (void)_applySeparatorInsetForCell:(id)a3
{
  v3 = a3;
  [v3 pkui_effectiveLayoutMargins];
  [v3 setSeparatorInset:0.0];
}

- (id)_amountDetailsCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[PKPaymentTransactionDetailViewController _amountDetailsRowForIndex:](self, "_amountDetailsRowForIndex:", [v7 row]);
  v9 = 0;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v12 = [(PKPaymentTransactionDetailViewController *)self _merchantTokenDeletedCellForTableView:v6 atIndexPath:v7];
    }

    else
    {
      if (v8 != 3)
      {
        goto LABEL_11;
      }

      v12 = -[PKPaymentTransactionDetailViewController _tableView:cellForAmountDetailLineItemAtIndex:atIndexPath:](self, "_tableView:cellForAmountDetailLineItemAtIndex:atIndexPath:", v6, -[PKPaymentTransactionDetailViewController _lineItemItemForRowIndex:](self, "_lineItemItemForRowIndex:", [v7 row]), v7);
    }

    goto LABEL_10;
  }

  if (!v8)
  {
    v12 = [(PKPaymentTransactionDetailViewController *)self _statusCellForTableView:v6];
LABEL_10:
    v9 = v12;
    goto LABEL_11;
  }

  if (v8 == 1)
  {
    v9 = [v6 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionTransactionExplanationCellReuseIdentifier" forIndexPath:v7];
    v10 = [v9 textLabel];
    [v10 setNumberOfLines:0];
    v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v10 setTextColor:v11];

    [v10 setText:self->_transactionExplanation];
    [v10 setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    [(PKPaymentTransactionDetailViewController *)self _applySeparatorInsetForCell:v9];
  }

LABEL_11:

  return v9;
}

- (id)_questionCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionQuestionCellReuseIdentifier" forIndexPath:a4];
  v6 = [(PKPaymentTransaction *)self->_transaction altDSID];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = PKCurrentUserAltDSID();
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {
    v12 = 0;
    v13 = v9;
  }

  else
  {
    if (v9)
    {
      v11 = [v8 isEqualToString:v9];

      if (v11)
      {
LABEL_5:
        v12 = 0;
        goto LABEL_10;
      }
    }

    else
    {
    }

    v13 = [(PKAccountUserCollection *)self->_accountUserCollection accountUserWithAltDSID:v8];
    v8 = [(PKFamilyMemberCollection *)self->_familyCollection familyMemberForAltDSID:v8];
    v14 = MEMORY[0x1E69B8740];
    v10 = [v13 nameComponents];
    v12 = [v14 contactForFamilyMember:v8 nameComponents:v10 imageData:0];
  }

LABEL_10:
  [v5 setTransaction:self->_transaction accountUserContact:v12 submittingAnswer:self->_submittingAnswer];
  [v5 setQuestionDelegate:self];

  return v5;
}

- (id)_statusCellForTableView:(id)a3
{
  v4 = a3;
  v5 = self->_paymentPass;
  v6 = [(PKPaymentPass *)v5 localizedDescription];
  v7 = &OBJC_IVAR___PKAddressEditorViewController__searchCompleter;
  if (!v6)
  {
    v8 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourcesForType:1];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [MEMORY[0x1E69B8A58] sharedInstance];
      v11 = [MEMORY[0x1E69B9000] sharedInstance];
      v12 = [v11 account];
      v13 = [v12 associatedPassUniqueID];
      [v10 passWithUniqueID:v13];
      v15 = v14 = v5;
      v6 = [v15 localizedDescription];

      v5 = v14;
    }

    else
    {
      v6 = 0;
    }
  }

  v16 = [(PKAccount *)self->_account feature];
  if (v6)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16 == 5;
  }

  if (v17)
  {
    v6 = PKLocalizedFeatureString();
  }

  v18 = 0;
  v179 = 0;
  v180 = 0;
  v177 = 0;
  v19 = 0;
  v20 = 0;
  switch([(PKPaymentTransaction *)self->_transaction transactionType])
  {
    case 0:
    case 17:
      v20 = [(PKPaymentTransactionDetailViewController *)self _transactionStatusString];
      v23 = [(PKPaymentTransaction *)self->_transaction transactionStatus];
      transaction = self->_transaction;
      if (v23 == 2)
      {
        v25 = [(PKPaymentTransaction *)transaction transactionDeclinedReason];
        v26 = self->_transaction;
        if (v25 == 14)
        {
          v27 = [(PKPaymentTransaction *)v26 cardType];
          if (v27 == 6 || v27 == 5)
          {
            v94 = PKLocalizedFeatureString();
          }

          else
          {
            v94 = PKPaymentTransactionDeclinedReasonLocalizedString();
          }

          v19 = v94;
          if (v94)
          {
            goto LABEL_107;
          }

          goto LABEL_137;
        }

        v56 = [(PKPaymentTransaction *)v26 unansweredQuestions];
        v57 = [v56 count];

        if (v57)
        {
          v19 = PKLocalizedFeatureString();
          v18 = [MEMORY[0x1E69DC888] systemRedColor];
          goto LABEL_99;
        }

        v79 = [(PKPaymentTransaction *)self->_transaction questions];
        v80 = [v79 count];

        if (!v80)
        {
          v129 = PKPaymentTransactionDeclinedReasonLocalizedString();
          if (v129)
          {
            v19 = v129;
LABEL_107:
            v18 = [MEMORY[0x1E69DC888] systemRedColor];
            goto LABEL_152;
          }

          goto LABEL_137;
        }

        if (![(PKPaymentTransaction *)self->_transaction reviewed])
        {
LABEL_137:
          v18 = 0;
          goto LABEL_138;
        }

        goto LABEL_97;
      }

      v30 = [(PKPaymentTransaction *)transaction unansweredQuestions];
      v31 = [v30 count];

      if (v31 || [(PKPaymentTransaction *)self->_transaction reviewed])
      {
LABEL_97:
        v19 = PKLocalizedFeatureString();
        goto LABEL_98;
      }

      v70 = [(PKPaymentTransaction *)self->_transaction primaryFundingSourceDescription];

      v71 = self->_transaction;
      if (v70)
      {
        v72 = [(PKPaymentTransaction *)v71 primaryFundingSourceDescription];
        v19 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_147.isa, &stru_1F3BD5BF0.isa, v72);
      }

      else
      {
        v120 = [(PKPaymentTransaction *)v71 transfers];
        v18 = [v120 count];

        if (!v18)
        {
          goto LABEL_138;
        }

        v121 = [(PKPaymentTransaction *)self->_transaction transfers];
        v122 = [v121 firstObject];

        v182 = [v122 externalAccount];
        v123 = [(PKPaymentTransaction *)self->_transaction featureIdentifier];
        v124 = [(PKPaymentTransaction *)self->_transaction associatedFeatureIdentifier];
        v125 = 0;
        if (v123 == 1 && v124)
        {
          v126 = PKLocalizedFeatureString();
          [v182 displayDescription];
          v128 = v127 = v20;
          v125 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_148.isa, &stru_1F3BD6370.isa, v128, v126);

          v20 = v127;
          v7 = &OBJC_IVAR___PKAddressEditorViewController__searchCompleter;
        }

        v19 = v125;
      }

LABEL_98:
      v18 = 0;
LABEL_99:
      if (v19)
      {
        goto LABEL_152;
      }

LABEL_138:
      v130 = [(PKPaymentTransaction *)self->_transaction effectiveTransactionSource];
      if (v130 == 6 || v130 == 5)
      {
        v131 = PKLocalizedFeatureString();
      }

      else
      {
        v131 = v6;
      }

      v19 = v131;
      v132 = [(PKPaymentTransaction *)self->_transaction cardNumberSuffix];
      if (v132)
      {
        v177 = PKMaskedPaymentPAN();
      }

      else
      {
        v177 = 0;
      }

      v179 = 0;
      v180 = 0;
      goto LABEL_154;
    case 1:
      v22 = PKLocalizedPaymentString(&cfstr_RefundedPurcha_0.isa);
      goto LABEL_43;
    case 2:
      v20 = [(PKPaymentTransactionDetailViewController *)self _transactionStatusString];
      v47 = [(PKPaymentTransaction *)self->_transaction transitModifiers];
      if (v47)
      {
        v28 = PKPassLocalizedStringWithFormat();
        v29 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_147.isa, &stru_1F3BD5BF0.isa, v28);
LABEL_62:
        v19 = v29;
LABEL_63:

        goto LABEL_151;
      }

      if ((~v47 & 6) == 0)
      {
        v48 = @"TRANSIT_TRANSACTION_ANNOTATION_FARECAPPED_TRANSFER_DISCOUNT";
LABEL_149:
        v54 = PKLocalizedPaymentString(&v48->isa);
        goto LABEL_150;
      }

      if ((v47 & 2) != 0)
      {
        v48 = @"TRANSIT_TRANSACTION_TRANSFER";
        goto LABEL_149;
      }

      if ((v47 & 4) != 0)
      {
        v48 = @"TRANSIT_TRANSACTION_ANNOTATION_FARECAPPED_DISCOUNT";
        goto LABEL_149;
      }

      if ([(PKPaymentTransaction *)self->_transaction transitType]== 1026)
      {
        v48 = @"TRANSIT_TRANSACTION_ANNOTATION_NO_CHARGE";
        goto LABEL_149;
      }

      v159 = [(PKPaymentPass *)v5 localizedDescription];
      v160 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_147.isa, &stru_1F3BD5BF0.isa, v159);

      v179 = 0;
      v180 = 0;
      v177 = 0;
      v19 = 0;
      v20 = v160;
      v18 = 0;
      goto LABEL_154;
    case 3:
      v173 = v4;
      v42 = [(PKPaymentTransaction *)self->_transaction peerPaymentCounterpartHandle];
      if ([(PKPaymentTransaction *)self->_transaction peerPaymentPaymentMode]== 2)
      {
        v43 = v42;
        v44 = @"TRANSACTION_DETAIL_STATUS_SUBTITLE_SENT_TO_HANDLE_FORMAT";
      }

      else
      {
        v58 = [(PKContactResolver *)self->_contactResolver hasCachedResultForHandle:v42];
        contactResolver = self->_contactResolver;
        if (v58)
        {
          v60 = [(PKContactResolver *)contactResolver contactForHandle:v42];
        }

        else
        {
          v186[0] = MEMORY[0x1E69E9820];
          v186[1] = 3221225472;
          v186[2] = __68__PKPaymentTransactionDetailViewController__statusCellForTableView___block_invoke;
          v186[3] = &unk_1E80178C0;
          v186[4] = self;
          [(PKContactResolver *)contactResolver contactForHandle:v42 withCompletion:v186];
          v60 = 0;
        }

        v43 = [MEMORY[0x1E69B8F30] displayNameForCounterpartHandle:v42 contact:v60];

        if (v60)
        {
          v44 = @"TRANSACTION_DETAIL_STATUS_SUBTITLE_SENT_TO_CONTACT_NAME_FORMAT";
        }

        else
        {
          v44 = @"TRANSACTION_DETAIL_STATUS_SUBTITLE_SENT_TO_HANDLE_FORMAT";
        }
      }

      v20 = [(PKPaymentTransactionDetailViewController *)self _transactionStatusString];
      v74 = [(PKPaymentTransaction *)self->_transaction peerPaymentType];
      v19 = 0;
      if (v74 > 1)
      {
        if (v74 != 2)
        {
          if (v74 != 3)
          {
            goto LABEL_119;
          }

          v77 = [(PKPaymentTransaction *)self->_transaction expirationDate];
          v19 = PKMediumDateString();

          PKLocalizedPeerPaymentString(&cfstr_TransactionDet_154.isa, &stru_1F3BD6370.isa, v43, v19);
          goto LABEL_118;
        }

        if (![(PKPaymentTransaction *)self->_transaction isRecurring])
        {
          v19 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_153.isa, &stru_1F3BD5BF0.isa, v43);
LABEL_116:
          if ([(PKPaymentTransaction *)self->_transaction peerPaymentPaymentMode]!= 2)
          {
LABEL_119:

            v18 = 0;
            v179 = 0;
            v180 = 0;
            v177 = 0;
            v4 = v173;
            goto LABEL_154;
          }

          PKLocalizedPeerPaymentString(&cfstr_TransactionDet_152.isa, &stru_1F3BD5BF0.isa, v19);
          v97 = LABEL_118:;

          v19 = v97;
          goto LABEL_119;
        }

        v78 = PKLocalizedPeerPaymentRecurringString(&cfstr_TransactionDet_153.isa, &stru_1F3BD5BF0.isa, v43);
      }

      else
      {
        if (v74)
        {
          if (v74 != 1)
          {
            goto LABEL_119;
          }

          v75 = self->_transaction;
          v76 = v44;
          if ([(PKPaymentTransaction *)v75 isRecurring])
          {
            v19 = PKLocalizedPeerPaymentRecurringString(v76, &stru_1F3BD5BF0.isa, v43);

            goto LABEL_119;
          }

          v19 = PKLocalizedPeerPaymentString(v76, &stru_1F3BD5BF0.isa, v43);

          goto LABEL_116;
        }

        v78 = v43;
      }

      v19 = v78;
      goto LABEL_119;
    case 4:
      if ([(PKPaymentTransaction *)self->_transaction isBankConnectTransaction])
      {
        goto LABEL_12;
      }

      v21 = PKLocalizedPaymentString(&cfstr_TransactionTyp_9.isa);
      goto LABEL_13;
    case 5:
      v20 = [(PKPaymentTransactionDetailViewController *)self _transactionStatusString];
      v45 = [(PKPaymentTransaction *)self->_transaction secondaryFundingSourceType];
      v46 = self->_transaction;
      if (v45 != 2)
      {
        v61 = v20;
        v62 = [(PKPaymentTransaction *)v46 transfers];
        v63 = [v62 count];

        if (v63)
        {
          v174 = v5;
          v64 = [(PKPaymentTransaction *)self->_transaction transfers];
          v65 = [v64 firstObject];

          v66 = [v65 externalAccount];
          v67 = [(PKPaymentTransaction *)self->_transaction featureIdentifier];
          v68 = [(PKPaymentTransaction *)self->_transaction associatedFeatureIdentifier];
          v69 = [v66 displayDescription];
          if (v67 == 1)
          {
            if (v68)
            {
              PKLocalizedFeatureString();
            }

            else
            {
              PKLocalizedPeerPaymentString(&cfstr_TransactionSec.isa);
            }

            v69 = v95 = v69;
          }

          else
          {
            v95 = PKLocalizedFeatureString();
          }

          v158 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_148.isa, &stru_1F3BD6370.isa, v95, v69);

          v19 = v158;
          v18 = 0;
          v179 = 0;
          v180 = 0;
          v177 = 0;
          v5 = v174;
          v20 = v61;
LABEL_195:
          v7 = &OBJC_IVAR___PKAddressEditorViewController__searchCompleter;
          goto LABEL_154;
        }

        v87 = objc_alloc(MEMORY[0x1E69B92F8]);
        v88 = [MEMORY[0x1E69B8A58] sharedInstance];
        v89 = [(PKPaymentTransaction *)self->_transaction secondaryFundingSourceFPANIdentifier];
        v90 = [v88 passWithFPANIdentifier:v89];
        v91 = [v87 initWithPaymentPass:v90];

        v92 = [MEMORY[0x1E69B8EB8] secondaryFundingSourceDescriptionForTransaction:self->_transaction secondarySource:v91 includeBankAccountSuffix:1 useGenericNameIfNoDescriptionAvailable:1];
        v93 = v92;
        if (v92)
        {
          PKLocalizedPeerPaymentString(&cfstr_TransactionDet_148.isa, &stru_1F3BD6370.isa, v6, v92);
        }

        else
        {
          if (([(PKPaymentTransaction *)self->_transaction isBankConnectTransaction]& 1) != 0)
          {
            v19 = 0;
LABEL_184:
            v20 = v61;

            v18 = 0;
            v179 = 0;
            v180 = 0;
            v177 = 0;
            goto LABEL_195;
          }

          PKLocalizedPeerPaymentString(&cfstr_TransactionDet_155.isa, &stru_1F3BD5BF0.isa, v6);
        }
        v19 = ;
        goto LABEL_184;
      }

      if (([(PKPaymentTransaction *)v46 isBankConnectTransaction]& 1) != 0)
      {
        goto LABEL_14;
      }

      PKLocalizedPeerPaymentString(&cfstr_TransactionDet_155.isa, &stru_1F3BD5BF0.isa, v6);
      v54 = LABEL_45:;
LABEL_150:
      v19 = v54;
LABEL_151:
      v18 = 0;
LABEL_152:
      v179 = 0;
      v180 = 0;
LABEL_153:
      v177 = 0;
LABEL_154:
      v176 = v18;
      v133 = [(PKPaymentTransaction *)self->_transaction disputeStatus];
      v134 = [(PKPaymentTransaction *)self->_transaction disputeType];
      v135 = [(PKPaymentTransaction *)self->_transaction transactionType];
      if (v133 == 5)
      {
        if (v135)
        {
          v136 = 0;
        }

        else
        {
          v136 = v134 == 1;
        }

        if (v136)
        {
          v138 = [(PKPaymentTransaction *)self->_transaction disputeStatusDetails];
          v139 = [v138 statusReasons];
          [v139 containsObject:@"splitLiability"];
        }
      }

      else if (v133 != 4)
      {
        v137 = v176;
        goto LABEL_165;
      }

      v137 = v176;
      v140 = PKLocalizedFeatureString();

      v19 = v140;
LABEL_165:
      v141 = [PKTransactionStatusCell alloc];
      v142 = [(PKTransactionStatusCell *)v141 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v143 = v142;
      if (v137)
      {
        [(PKTransactionStatusCell *)v142 setSecondaryTextOverrideColor:v137];
      }

      if (self->_detailViewStyle == 2)
      {
        [(PKTransactionStatusCell *)v143 setIsBridge:1];
      }

      [(PKTransactionStatusCell *)v143 setPrimaryText:v20];
      if (v180 && [v179 length])
      {
        [(PKTransactionStatusCell *)v143 setSecondaryTitleLinkText:v179];
        [(PKTransactionStatusCell *)v143 setSecondaryTitleLinkURL:v180];
        objc_initWeak(&location, self);
        v183[0] = MEMORY[0x1E69E9820];
        v183[1] = 3221225472;
        v183[2] = __68__PKPaymentTransactionDetailViewController__statusCellForTableView___block_invoke_3;
        v183[3] = &unk_1E80122D8;
        objc_copyWeak(&v184, &location);
        [(PKTransactionStatusCell *)v143 setSecondaryTitleButtonAction:v183];
        objc_destroyWeak(&v184);
        objc_destroyWeak(&location);
      }

      v172 = v19;
      [(PKTransactionStatusCell *)v143 setSecondaryTitle:v19];
      [(PKTransactionStatusCell *)v143 setSecondaryValue:v177];
      v144 = *(&self->super.super.super.super.super.isa + v7[572]);
      v145 = [(PKPaymentTransaction *)self->_transaction transactionSourceIdentifier];
      v146 = [v144 transactionSourceForTransactionSourceIdentifier:v145];

      if ([v146 type] == 2)
      {
        v170 = v20;
        v147 = [v146 accountUser];
        v148 = [(PKFamilyMemberCollection *)self->_familyCollection familyMemberForTransactionSource:v146];
        v149 = MEMORY[0x1E69B8740];
        v150 = [v147 nameComponents];
        v151 = [v149 contactForFamilyMember:v148 nameComponents:v150 imageData:0];

        v152 = [v151 givenName];
        if (v152)
        {
          PKLocalizedFeatureString();
          v153 = v6;
          v154 = v5;
          v156 = v155 = v4;
          [(PKTransactionStatusCell *)v143 setTertiaryText:v156, v152];

          v4 = v155;
          v5 = v154;
          v6 = v153;
        }

        v20 = v170;
      }

      return v143;
    case 6:
      v32 = [(PKPaymentTransaction *)self->_transaction transfers];
      v33 = [v32 count];

      if (v33)
      {
        v168 = [(PKPaymentTransactionDetailViewController *)self _transactionStatusString];
        v34 = [(PKPaymentTransaction *)self->_transaction transfers];
        v35 = [v34 firstObject];

        v181 = v35;
        v36 = [v35 externalAccount];
        v37 = [(PKPaymentTransaction *)self->_transaction featureIdentifier];
        v38 = [(PKPaymentTransaction *)self->_transaction associatedFeatureIdentifier];
        if (v37 == 1)
        {
          v39 = v38;
          v40 = [v36 displayDescription];
          if (v39)
          {
            PKLocalizedFeatureString();
          }

          else
          {
            PKLocalizedPeerPaymentString(&cfstr_TransactionSec.isa);
          }
          v41 = ;
        }

        else
        {
          v40 = PKLocalizedFeatureString();
          v41 = [v36 displayDescription];
        }

        v96 = v41;
        v19 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_148.isa, &stru_1F3BD6370.isa, v41, v40);

        v18 = 0;
        v179 = 0;
        v180 = 0;
        v177 = 0;
        v20 = v168;
        goto LABEL_154;
      }

      v73 = [(PKPaymentTransaction *)self->_transaction featureIdentifier];
      v20 = [(PKPaymentTransactionDetailViewController *)self _transactionStatusString];
      if (v73 != 4)
      {
        v81 = objc_alloc(MEMORY[0x1E69B92F8]);
        v82 = [MEMORY[0x1E69B8A58] sharedInstance];
        v83 = [(PKPaymentTransaction *)self->_transaction secondaryFundingSourceFPANIdentifier];
        [v82 passWithFPANIdentifier:v83];
        v85 = v84 = v20;
        v28 = [v81 initWithPaymentPass:v85];

        v20 = v84;
        v7 = &OBJC_IVAR___PKAddressEditorViewController__searchCompleter;

        v86 = [MEMORY[0x1E69B8EB8] secondaryFundingSourceDescriptionForTransaction:self->_transaction secondarySource:v28 includeBankAccountSuffix:1 useGenericNameIfNoDescriptionAvailable:1];
        v19 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_156.isa, &stru_1F3BD5BF0.isa, v86);

        goto LABEL_63;
      }

      if ([(PKPaymentTransaction *)self->_transaction topUpType]!= 8)
      {
        goto LABEL_14;
      }

      v54 = PKLocalizedAppleBalanceString(&cfstr_TransactionGif.isa);
      goto LABEL_150;
    case 7:
      v20 = PKLocalizedTitleForTransactionWithAdjustment();
      v54 = PKLocalizedSubtitleForTransactionWithAdjustment();
      goto LABEL_150;
    case 8:
      v20 = PKLocalizedPaymentString(&cfstr_TransactionTyp_10.isa);
      if ([(PKPaymentPass *)v5 associatedAccountFeatureIdentifier]== 2)
      {
        goto LABEL_109;
      }

      goto LABEL_44;
    case 9:
    case 12:
      v22 = PKLocalizedFeatureString();
LABEL_43:
      v20 = v22;
LABEL_44:
      PKLocalizedPeerPaymentString(&cfstr_TransactionDet_149.isa, &stru_1F3BD5BF0.isa, v6);
      goto LABEL_45;
    case 10:
      v49 = [(PKPaymentTransactionDetailViewController *)self _transactionStatusString];
      v50 = objc_alloc(MEMORY[0x1E69B92F8]);
      v51 = [MEMORY[0x1E69B8A58] sharedInstance];
      v52 = [(PKPaymentTransaction *)self->_transaction secondaryFundingSourceFPANIdentifier];
      v53 = [v51 passWithFPANIdentifier:v52];
      v28 = [v50 initWithPaymentPass:v53];

      v20 = v49;
      v7 = &OBJC_IVAR___PKAddressEditorViewController__searchCompleter;

      v29 = [MEMORY[0x1E69B8EB8] secondaryFundingSourceDescriptionForTransaction:self->_transaction secondarySource:v28 includeBankAccountSuffix:1 useGenericNameIfNoDescriptionAvailable:1];
      goto LABEL_62;
    case 11:
      v55 = [(PKPaymentTransaction *)self->_transaction accountType];
      v18 = 0;
      if (v55 > 2)
      {
        if (v55 == 3)
        {
          v20 = PKLocalizedFeatureString();
LABEL_109:
          v54 = PKLocalizedFeatureString();
          goto LABEL_150;
        }

        v179 = 0;
        v180 = 0;
        v177 = 0;
        v19 = 0;
        v20 = 0;
        if (v55 != 4)
        {
          goto LABEL_154;
        }
      }

      else if (v55 >= 2)
      {
        v179 = 0;
        v180 = 0;
        v177 = 0;
        v19 = 0;
        v20 = 0;
        if (v55 != 2)
        {
          goto LABEL_154;
        }

        v20 = PKDynamicLocalizedAppleCardString(&cfstr_TransactionDet_94.isa);
        v179 = PKDynamicLocalizedAppleCardString(&cfstr_TransactionDet_141.isa);
        v180 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:@"https://support.apple.com/en-us/HT209230"];
        if (([(PKAccount *)self->_account hideInterestChargeClarity]& 1) != 0)
        {
          v19 = PKDynamicLocalizedAppleCardString(&cfstr_TransactionDet_146.isa);
          v18 = 0;
          goto LABEL_153;
        }

        v169 = v20;
        v171 = v6;
        v98 = [(PKAccount *)self->_account creditDetails];
        v99 = [v98 mergeDate];

        v100 = objc_alloc(MEMORY[0x1E695DEE8]);
        v101 = [v100 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
        [v101 setTimeZone:self->_productTimeZone];
        v102 = objc_alloc_init(MEMORY[0x1E695DF10]);
        [v102 setMonth:2];
        v103 = [v101 dateByAddingComponents:v102 toDate:v99 options:0];
        v166 = [(PKPaymentTransaction *)self->_transaction transactionDate];
        v167 = v103;
        v178 = v99;
        IsBetweenDates = PKDateIsBetweenDates();
        v105 = [(PKPaymentTransaction *)self->_transaction associatedStatementIdentifiers];
        v106 = [v105 count];

        v107 = [(PKPaymentTransaction *)self->_transaction interestReassessment]| (v106 == 0) & (IsBetweenDates ^ 1);
        if (v107)
        {
          v108 = @"TRANSACTION_DETAIL_INTEREST_CHARGED_GENERIC_MESSAGE";
        }

        else
        {
          v108 = @"TRANSACTION_DETAIL_INTEREST_CHARGED_SUBTITLE_CO_OWNERS_MERGED_RECENTLY";
        }

        if (v107 & 1) != 0 || (IsBetweenDates)
        {
          goto LABEL_193;
        }

        if (!self->_associatedCreditStatementsLoaded)
        {
          v19 = 0;
          goto LABEL_194;
        }

        v175 = v4;
        if ([(NSArray *)self->_associatedCreditStatements count]!= v106)
        {
          v108 = @"TRANSACTION_DETAIL_INTEREST_CHARGED_GENERIC_MESSAGE";
LABEL_193:
          v19 = PKDynamicLocalizedAppleCardString(&v108->isa);
          goto LABEL_194;
        }

        v109 = [(NSArray *)self->_associatedCreditStatements objectAtIndexedSubscript:0];
        v110 = [v109 openingDate];
        v165 = v109;
        v111 = [v109 closingDate];
        v112 = PKDatesMidpoint();

        v164 = v112;
        v113 = [(NSDateFormatter *)self->_monthFormatter stringFromDate:v112];
        if (v106 == 1)
        {
          productTimeZoneMonthDayFormatter = self->_productTimeZoneMonthDayFormatter;
          v162 = [v165 paymentDueDate];
          v114 = [(NSDateFormatter *)productTimeZoneMonthDayFormatter stringFromDate:v162];

          v19 = PKDynamicLocalizedAppleCardString(&cfstr_TransactionDet_145.isa, &cfstr_12.isa, v113, v114);
          v20 = v169;
        }

        else
        {
          v19 = 0;
          v20 = v169;
          if (v106 != 2)
          {
            goto LABEL_191;
          }

          v114 = [(NSArray *)self->_associatedCreditStatements objectAtIndexedSubscript:1];
          v115 = [v114 openingDate];
          v116 = [v114 closingDate];
          v163 = PKDatesMidpoint();

          v20 = v169;
          v117 = [(NSDateFormatter *)self->_monthFormatter stringFromDate:v163];
          PKDynamicLocalizedAppleCardString(&cfstr_TransactionDet_144.isa, &cfstr_12.isa, v113, v117);
          v119 = v118 = v113;

          v19 = v119;
          v113 = v118;
        }

LABEL_191:
        v4 = v175;
        if (!v19)
        {
          v108 = @"TRANSACTION_DETAIL_INTEREST_CHARGED_GENERIC_MESSAGE";
          goto LABEL_193;
        }

LABEL_194:

        v18 = 0;
        v177 = 0;
        v6 = v171;
        goto LABEL_195;
      }

      if ([(PKPaymentTransaction *)self->_transaction isBankConnectTransaction])
      {
LABEL_12:
        v21 = [(PKPaymentTransactionDetailViewController *)self _transactionStatusString];
LABEL_13:
        v20 = v21;
LABEL_14:
        v18 = 0;
        v179 = 0;
        v180 = 0;
        v177 = 0;
        v19 = 0;
      }

      else
      {
        v18 = 0;
        v179 = 0;
        v180 = 0;
        v177 = 0;
        v19 = 0;
        v20 = 0;
      }

      goto LABEL_154;
    case 13:
    case 14:
      v20 = PKLocalizedFeatureString();
      v28 = [(PKPaymentTransaction *)self->_transaction installmentPayment];
      v29 = [v28 localizedDisplay];
      goto LABEL_62;
    case 15:
      goto LABEL_154;
    case 16:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
      goto LABEL_12;
    default:
      v179 = 0;
      v180 = 0;
      v177 = 0;
      v19 = 0;
      v20 = 0;
      goto LABEL_154;
  }
}

void __68__PKPaymentTransactionDetailViewController__statusCellForTableView___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__PKPaymentTransactionDetailViewController__statusCellForTableView___block_invoke_2;
    block[3] = &unk_1E8010970;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __68__PKPaymentTransactionDetailViewController__statusCellForTableView___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:v5];
    [v4 setModalPresentationStyle:2];
    [WeakRetained presentViewController:v4 animated:1 completion:0];
  }
}

- (id)_expiredPhysicalCardCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = [a4 row];
  if (v7 == 1)
  {
    v8 = [(PKPaymentTransactionDetailViewController *)self _tableView:v6 actionButtonCellForSection:2];
    v25 = [v8 textLabel];
    v26 = PKLocalizedFeatureString();
    [v25 setText:v26];

    v27 = [v8 textLabel];
    v28 = [MEMORY[0x1E69DC888] labelColor];
    [v27 setTextColor:v28];

    [v8 setAccessoryType:1];
  }

  else if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionConfigurationCellReuseIdentifier"];
    v9 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
    v10 = PKLocalizedFeatureString();
    [v9 setText:v10];

    v11 = [v9 textProperties];
    v12 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90], *MEMORY[0x1E69DB958]);
    [v11 setFont:v12];

    v13 = PKLocalizedFeatureString();
    [v9 setSecondaryText:v13];

    v14 = [v9 secondaryTextProperties];
    v15 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
    [v14 setFont:v15];

    v16 = [v9 secondaryTextProperties];
    v17 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v16 setColor:v17];

    [v9 setTextToSecondaryTextVerticalPadding:5.0];
    v18 = PKPassKitUIBundle();
    v19 = [v18 URLForResource:@"MessageAlert" withExtension:@"pdf"];
    v20 = PKUIScreenScale();
    v21 = PKUIImageFromPDF(v19, 42.0, 42.0, v20);

    [v9 setImage:v21];
    v22 = [v9 imageProperties];
    v23 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:42.0];
    [v22 setPreferredSymbolConfiguration:v23];

    [v9 setImageToTextPadding:12.0];
    v24 = [v9 imageProperties];
    [v24 setReservedLayoutSize:{42.0, 42.0}];

    [v8 setContentConfiguration:v9];
    [(PKPaymentTransactionDetailViewController *)self _applySeparatorInsetForCell:v8];
  }

  return v8;
}

- (id)_disputeStatusCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = [a4 row];
  if (v7 == 1)
  {
    v8 = [(PKPaymentTransactionDetailViewController *)self _tableView:v6 actionButtonCellForSection:1];
    if ([(PKPaymentTransaction *)self->_transaction disputeStatus]== 7)
    {
      v24 = [(PKPaymentTransaction *)self->_transaction disputeStatusDetails];
      v25 = [v24 statusReasons];
      [v25 containsObject:@"decisioned"];
    }

    v9 = [v8 textLabel];
    v20 = PKLocalizedFeatureString();
    [v9 setText:v20];
  }

  else
  {
    if (v7)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = [v6 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionConfigurationCellReuseIdentifier"];
    v9 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
    v10 = [(PKPaymentTransactionDetailViewController *)self _disputeStatusTitle];
    [v9 setText:v10];

    v11 = [v9 textProperties];
    v12 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90], *MEMORY[0x1E69DB958]);
    [v11 setFont:v12];

    v13 = [(PKPaymentTransactionDetailViewController *)self _disputeStatusDescription];
    [v9 setSecondaryText:v13];

    v14 = [v9 secondaryTextProperties];
    v15 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
    [v14 setFont:v15];

    v16 = [v9 secondaryTextProperties];
    v17 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v16 setColor:v17];

    [v9 setTextToSecondaryTextVerticalPadding:5.0];
    v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"flag.circle.fill"];
    v19 = [MEMORY[0x1E69DC888] systemOrangeColor];
    v20 = [v18 imageWithTintColor:v19 renderingMode:1];

    [v9 setImage:v20];
    v21 = [v9 imageProperties];
    v22 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:50.0];
    [v21 setPreferredSymbolConfiguration:v22];

    [v9 setImageToTextPadding:12.0];
    v23 = [v9 imageProperties];
    [v23 setReservedLayoutSize:{50.0, 50.0}];

    [v8 setContentConfiguration:v9];
    [(PKPaymentTransactionDetailViewController *)self _applySeparatorInsetForCell:v8];
  }

LABEL_9:

  return v8;
}

- (id)_disputeStatusTitle
{
  v3 = [(PKPaymentTransaction *)self->_transaction disputeStatusDetails];
  v4 = [(PKAccount *)self->_account hideEnhancedDisputeDetails];
  v5 = [(PKPaymentTransaction *)self->_transaction disputeStatus];
  v6 = 0;
  if (v5 <= 3)
  {
    switch(v5)
    {
      case 1:
        v14 = @"DISPUTE_STATUS_NEW_TITLE";
        break;
      case 2:
        v14 = @"DISPUTE_STATUS_OPEN_TITLE";
        break;
      case 3:
        v12 = [v3 statusReasons];
        v13 = [v12 containsObject:@"evidenceRequestedFromCustomer"];

        v9 = v4 | ~v13;
        v10 = @"DISPUTE_STATUS_PENDING_EVIDENCE_REQUESTED_TITLE";
        v11 = @"DISPUTE_STATUS_PENDING_TITLE";
        goto LABEL_9;
      default:
        goto LABEL_22;
    }
  }

  else if (v5 > 5)
  {
    if (v5 == 6)
    {
      v14 = @"DISPUTE_STATUS_WITHDRAWN_TITLE";
    }

    else
    {
      if (v5 != 7)
      {
        goto LABEL_22;
      }

      v15 = [v3 statusReasons];
      v16 = [v15 containsObject:@"decisioned"];

      if (v16)
      {
        v14 = @"DISPUTE_STATUS_UNAVAILABLE_DECISIONED_TITLE";
      }

      else
      {
        v14 = @"DISPUTE_STATUS_UNAVAILABLE_TITLE";
      }
    }
  }

  else
  {
    if (v5 != 4)
    {
      v7 = [v3 statusReasons];
      v8 = [v7 containsObject:@"splitLiability"];

      v9 = v4 | ~v8;
      v10 = @"DISPUTE_STATUS_REJECTED_SPLIT_LIABILITY_TITLE";
      v11 = @"DISPUTE_STATUS_REJECTED_TITLE";
LABEL_9:
      if (v9)
      {
        v14 = v11;
      }

      else
      {
        v14 = v10;
      }

      goto LABEL_21;
    }

    v14 = @"DISPUTE_STATUS_APPROVED_TITLE";
  }

LABEL_21:
  v6 = PKDynamicLocalizedAppleCardString(&v14->isa);
LABEL_22:

  return v6;
}

- (id)_disputeStatusDescription
{
  v3 = [(PKPaymentTransaction *)self->_transaction latestDisputeEvent];
  v4 = [(PKPaymentTransaction *)self->_transaction disputeStatusDetails];
  v5 = [(PKAccount *)self->_account hideEnhancedDisputeDetails];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PKPaymentTransactionDetailViewController__disputeStatusDescription__block_invoke;
  aBlock[3] = &unk_1E80276A0;
  aBlock[4] = self;
  v6 = v4;
  v21 = v6;
  v7 = v3;
  v22 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [(PKPaymentTransaction *)self->_transaction disputeStatus];
  v10 = 0;
  if (v9 <= 3)
  {
    switch(v9)
    {
      case 1:
        v8[2](v8, @"DISPUTE_STATUS_NEW_DESCRIPTION");
        break;
      case 2:
        v8[2](v8, @"DISPUTE_STATUS_OPEN_DESCRIPTION");
        break;
      case 3:
        v15 = [v6 statusReasons];
        v16 = [v15 containsObject:@"evidenceRequestedFromCustomer"];

        v13 = v8[2];
        if (v5 & 1 | ((v16 & 1) == 0))
        {
          v14 = @"DISPUTE_STATUS_PENDING_DESCRIPTION";
        }

        else
        {
          v14 = @"DISPUTE_STATUS_PENDING_EVIDENCE_REQUESTED_DESCRIPTION";
        }

        goto LABEL_22;
      default:
        goto LABEL_24;
    }
  }

  else if (v9 > 5)
  {
    if (v9 != 6)
    {
      if (v9 != 7)
      {
        goto LABEL_24;
      }

      v17 = [v6 statusReasons];
      v18 = [v17 containsObject:@"decisioned"];

      v13 = v8[2];
      if (v18)
      {
        v14 = @"DISPUTE_STATUS_UNAVAILABLE_DECISIONED_DESCRIPTION";
      }

      else
      {
        v14 = @"DISPUTE_STATUS_UNAVAILABLE_DESCRIPTION";
      }

      goto LABEL_22;
    }

    v8[2](v8, @"DISPUTE_STATUS_WITHDRAWN_DESCRIPTION");
  }

  else
  {
    if (v9 != 4)
    {
      v11 = [v6 statusReasons];
      v12 = [v11 containsObject:@"splitLiability"];

      v13 = v8[2];
      if (v5 & 1 | ((v12 & 1) == 0))
      {
        v14 = @"DISPUTE_STATUS_REJECTED_DESCRIPTION";
      }

      else
      {
        v14 = @"DISPUTE_STATUS_REJECTED_SPLIT_LIABILITY_DESCRIPTION";
      }

LABEL_22:
      v13(v8, v14);
      goto LABEL_23;
    }

    v8[2](v8, @"DISPUTE_STATUS_APPROVED_DESCRIPTION");
  }

  v10 = LABEL_23:;
LABEL_24:

  return v10;
}

id __69__PKPaymentTransactionDetailViewController__disputeStatusDescription__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1536);
  v17 = a2;
  v21 = [v3 disputeOpenDate];
  v16 = PKShortDateString();
  v20 = [*(a1 + 40) customerResponseByDate];
  v13 = PKShortDateString();
  v19 = [*(a1 + 40) merchantResponseByDate];
  v4 = PKShortDateString();
  v18 = [*(a1 + 40) partiallyApprovedAmount];
  v5 = [v18 formattedStringValue];
  v15 = [*(a1 + 40) resolutionDate];
  v6 = PKShortDateString();
  v7 = [*(a1 + 48) claimIdentifier];
  v8 = [*(a1 + 48) amount];
  v9 = [v8 formattedStringValue];
  v10 = [*(a1 + 48) lastUpdatedDate];
  v11 = PKShortDateString();
  v14 = PKDynamicLocalizedAppleCardString(v17, &cfstr_12345678.isa, v16, v13, v4, v5, v6, v7, v9, v11);

  return v14;
}

- (id)_transactionIdentifierDescription
{
  v2 = [(PKPaymentTransaction *)self->_transaction serviceIdentifier];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v2];

    if (v3)
    {
      v4 = [v2 componentsSeparatedByString:@"-"];
      v5 = [v4 lastObject];

      v2 = v5;
    }
  }

  return v2;
}

- (id)_transactionIdentifierCellForTableView:(id)a3
{
  v4 = [a3 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionSubtitleCellReuseIdentifier"];
  v5 = [v4 textLabel];
  v6 = [v4 detailTextLabel];
  v7 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_158.isa);
  [v5 setText:v7];

  if (self->_inBridge)
  {
    [MEMORY[0x1E69DC888] systemGrayColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v8 = ;
  [v5 setTextColor:v8];

  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [v5 setFont:v9];

  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  if (self->_inBridge)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v10 = ;
  [v6 setTextColor:v10];

  v11 = [(PKPaymentTransactionDetailViewController *)self _transactionIdentifierDescription];
  [v6 setText:v11];

  v12 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD00], 0, 0, 4);
  [v6 setFont:v12];

  [v6 setNumberOfLines:0];
  [v6 setAccessibilityIdentifier:*MEMORY[0x1E69B9DC0]];
  [v4 setSelectionStyle:0];
  [v4 setAccessoryType:0];

  return v4;
}

- (id)_fraudRiskCellForTableView:(id)a3
{
  v3 = [a3 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionDefaultCellReuseIdentifier"];
  [v3 setSelectionStyle:0];
  v4 = [v3 textLabel];
  v5 = [MEMORY[0x1E69DC888] pkui_osloErrorColor];
  v6 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_159.isa);
  [v4 setText:v6];

  [v4 setTextColor:v5];

  return v3;
}

- (unint64_t)_recognitionHintsRowForIndex:(unint64_t)a3
{
  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    if ([(PKPaymentTransactionDetailViewController *)self _recognitionHintsRowIsEnabled:v5])
    {
      if (v6 == a3)
      {
        return v5;
      }

      ++v6;
    }

    v7 = 0;
    v5 = 1;
  }

  while ((v8 & 1) != 0);
  return 0;
}

- (unint64_t)_numberOfRecognitionHintsRows
{
  v3 = 0;
  if ([(PKPaymentTransactionDetailViewController *)self _recognitionHintsRowIsEnabled:0])
  {
    v4 = 0;
    v3 = 0;
    v5 = 1;
    do
    {
      v6 = v5;
      v7 = [(PKPaymentTransactionDetailViewController *)self _recognitionHintsRowIsEnabled:v4];
      v5 = 0;
      v3 += v7;
      v4 = 1;
    }

    while ((v6 & 1) != 0);
  }

  return v3;
}

- (BOOL)_recognitionHintsRowIsEnabled:(unint64_t)a3
{
  if ([(PKPaymentTransaction *)self->_transaction transactionType])
  {
    v5 = [(PKPaymentTransaction *)self->_transaction transactionType]!= 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PKPaymentTransaction *)self->_transaction isBankConnectTransaction];
  v7 = 0;
  if ([(PKAccount *)self->_account feature]!= 2 || v5 || (v6 & 1) != 0)
  {
    return v7;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return 0;
    }

    v8 = [(PKPaymentTransaction *)self->_transaction unansweredQuestions];
    if ([v8 count])
    {
      v7 = 1;
    }

    else
    {
      v10 = [(PKPaymentTransaction *)self->_transaction merchant];
      v11 = [v10 rawName];
      v7 = [v11 length] != 0;
    }

    return v7;
  }

  return [(PKPaymentTransactionDetailViewController *)self _transactionIsTaggedAsRecurring];
}

- (id)_recognitionHintsCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionDefaultCellReuseIdentifier"];
  v8 = [v7 detailTextLabel];
  [v8 setText:0];

  [v7 setAccessoryType:0];
  v9 = [v7 textLabel];
  [v9 setNumberOfLines:0];
  v10 = [v6 row];

  v11 = [(PKPaymentTransactionDetailViewController *)self _recognitionHintsRowForIndex:v10];
  if (v11 != 2)
  {
    if (v11 == 1)
    {
      v15 = PKLocalizedPaymentString(&cfstr_TransactionPos.isa);
      [v9 setText:v15];

      v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    else
    {
      if (v11)
      {
LABEL_7:
        v17 = v7;
        goto LABEL_9;
      }

      v12 = [(PKPaymentTransaction *)self->_transaction merchant];
      v13 = [v12 rawName];
      [v9 setText:v13];

      v14 = [MEMORY[0x1E69DC888] labelColor];
    }

    v16 = v14;
    [v9 setTextColor:v14];

    goto LABEL_7;
  }

  v17 = 0;
LABEL_9:

  return v17;
}

- (id)_releasedDataCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionRequestedElementsDataReuseIdentifier" forIndexPath:a4];
  [v5 setDataReleaseConfiguration:self->_dataReleaseTransactionConfiguration];

  return v5;
}

- (int64_t)_maximumRetentionPeriodForElements:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 retentionPeriod] >= 1 && objc_msgSend(v9, "retentionPeriod") > v6)
        {
          v6 = [v9 retentionPeriod];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_fetchDataReleaseTransactionConfiguration
{
  if (!self->_dataReleaseTransactionConfiguration)
  {
    v3 = [_TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration alloc];
    v4 = [(PKPaymentTransaction *)self->_transaction releasedData];
    v5 = [v4 documentType];
    v6 = [(PKPaymentTransaction *)self->_transaction releasedData];
    v7 = [v6 elements];
    v8 = [(PKPaymentTransaction *)self->_transaction transactionSource];
    v9 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
    v10 = [v9 localizedDescription];
    v11 = [(PKIdentityDataReleaseTransactionConfiguration *)v3 initWithDocumentType:v5 elements:v7 transactionSource:v8 passName:v10];
    dataReleaseTransactionConfiguration = self->_dataReleaseTransactionConfiguration;
    self->_dataReleaseTransactionConfiguration = v11;

    [(PKSectionTableViewController *)self reloadData];
  }
}

- (id)_merchantTokenManagementCellForTableView:(id)a3
{
  v3 = [a3 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionConfigurationCellReuseIdentifier"];
  v4 = [v3 defaultContentConfiguration];
  v5 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokenT_2.isa);
  [v4 setText:v5];

  [v3 setAccessoryType:1];
  [v3 setContentConfiguration:v4];

  return v3;
}

- (id)_merchantTokenDeletedCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:{@"PKPaymentTransactionMerchantTokenDeletedCellReuseIdentifier", a4}];
  [(PKPaymentTransactionDetailViewController *)self _applySeparatorInsetForCell:v5];
  v6 = [v5 defaultContentConfiguration];
  v7 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokenT_3.isa);
  [v6 setText:v7];

  v8 = [v6 textProperties];
  v9 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v8 setColor:v9];

  [v5 setContentConfiguration:v6];

  return v5;
}

- (void)_didSelectMerchantTokenManagement
{
  v3 = [(PKRetrieveMerchantTokensResponse *)self->_merchantTokenResponse merchantTokens];
  v4 = [v3 firstObject];

  v5 = [[PKMerchantTokenDetailViewController alloc] initWithMerchantToken:v4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__PKPaymentTransactionDetailViewController__didSelectMerchantTokenManagement__block_invoke;
  v7[3] = &unk_1E8012FD0;
  v8 = v5;
  v9 = self;
  v6 = v5;
  [(PKMerchantTokenDetailViewController *)v6 preflightWithCompletion:v7];
}

void __77__PKPaymentTransactionDetailViewController__didSelectMerchantTokenManagement__block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__PKPaymentTransactionDetailViewController__didSelectMerchantTokenManagement__block_invoke_2;
  v4[3] = &unk_1E8010A10;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

void __77__PKPaymentTransactionDetailViewController__didSelectMerchantTokenManagement__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v5 = [*(a1 + 40) navigationItem];
  [v5 setBackButtonDisplayMode:2];
  v2 = [*(a1 + 40) navigationController];
  v3 = [v2 pk_settings_useStateDrivenNavigation];
  v4 = *(a1 + 32);
  if (v3)
  {
    [v2 pk_settings_pushViewController:v4];
  }

  else
  {
    [v2 pushViewController:v4 animated:1];
  }
}

- (void)merchantTokenDetailViewController:(id)a3 didDeleteMerchantToken:(id)a4
{
  v5 = a3;
  v9 = [(PKPaymentTransactionDetailViewController *)self navigationController];
  v6 = [v9 topViewController];

  if (v6 == v5)
  {
    if ([v9 pk_settings_useStateDrivenNavigation])
    {
      [v9 pk_settings_popViewController];
    }

    else
    {
      v7 = [v9 popViewControllerAnimated:1];
    }
  }

  merchantTokenResponse = self->_merchantTokenResponse;
  self->_merchantTokenResponse = 0;

  [(PKSectionTableViewController *)self updateSectionVisibilityAndReloadIfNecessaryForSection:18];
  [(PKPaymentTransactionDetailViewController *)self _fetchMerchantToken];
}

- (id)_applePayOrderRowCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionOrderCellReuseIdentifier"];
  applePayOrderRowViewModels = self->_applePayOrderRowViewModels;
  v9 = [v6 row];

  v10 = [(NSArray *)applePayOrderRowViewModels objectAtIndexedSubscript:v9];
  [v10 configureCell:v7];

  return v7;
}

- (id)_applePayBarcodeRowCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionBarcodeCellReuseIdentifier"];
  applePayBarcodeRowViewModels = self->_applePayBarcodeRowViewModels;
  v9 = [v6 row];

  v10 = [(NSArray *)applePayBarcodeRowViewModels objectAtIndexedSubscript:v9];
  [v10 configureCell:v7];

  return v7;
}

- (id)_applePayReceiptRowCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionReceiptCellReuseIdentifier"];
  applePayReceiptRowViewModels = self->_applePayReceiptRowViewModels;
  v9 = [v6 row];

  v10 = [(NSArray *)applePayReceiptRowViewModels objectAtIndexedSubscript:v9];
  [v10 configureCell:v7];

  return v7;
}

- (id)_foundInMailLockedRowCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:{@"PKPaymentTransactionFoundInMailLockedCellReuseIdentifier", a4}];
  [v5 setShieldConfiguration:self->_foundInMailShieldConfiguration];
  [v5 configureWithParentViewController:self];

  return v5;
}

- (id)_foundInMailRowCellForTableView:(id)a3 atIndexPath:(id)a4
{
  foundInMailRowViewModels = self->_foundInMailRowViewModels;
  v6 = a3;
  v7 = -[NSArray objectAtIndexedSubscript:](foundInMailRowViewModels, "objectAtIndexedSubscript:", [a4 row]);
  v8 = [v6 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionFoundInMailCellReuseIdentifier"];

  v9 = [v7 messageID];
  v10 = [v7 fromEmailAddress];
  v11 = [v7 dateSent];
  v12 = [v7 rowTitleText];
  v13 = [v7 rowSubjectText];
  v14 = [v7 rowSubtitleText];
  v15 = [v7 deeplinkURL];
  [v8 configureWithMessageID:v9 senderEmailAddress:v10 dateSent:v11 title:v12 subject:v13 subtitle:v14 deeplinkURL:v15];

  return v8;
}

- (void)_tableView:(id)a3 didSelectFoundInMailItemAtIndexPath:(id)a4
{
  v4 = -[NSArray objectAtIndexedSubscript:](self->_foundInMailRowViewModels, "objectAtIndexedSubscript:", [a4 row]);
  v5 = [v4 deeplinkURL];
  if (v5)
  {
    v6 = +[PKDismissalPreventionAssertionManager sharedInstance];
    v7 = [v6 acquireAssertion];

    v8 = v7;
    PKOpenURL();
  }
}

void __91__PKPaymentTransactionDetailViewController__tableView_didSelectFoundInMailItemAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 1500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__PKPaymentTransactionDetailViewController__tableView_didSelectFoundInMailItemAtIndexPath___block_invoke_2;
  block[3] = &unk_1E8010970;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

- (id)_debugDetailCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = [a4 row];
  if (v7 == 1)
  {
    v8 = [(PKPaymentTransactionDetailViewController *)self _tableView:v6 actionButtonCellForSection:27];
    v9 = [v8 textLabel];
    [v9 setText:@"Transaction Details"];

    [v8 setAccessoryType:1];
  }

  else if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(PKPaymentTransactionDetailViewController *)self _transactionIdentifierCellForTableView:v6];
  }

  return v8;
}

- (id)_awardCellForTableView:(id)a3
{
  v4 = [a3 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionAwardCellReuseIdentifier"];
  v5 = [v4 textLabel];
  if (self->_inBridge)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v6 = ;
  [v5 setTextColor:v6];

  return v4;
}

- (id)_tableView:(id)a3 cellForAmountDetailLineItemAtIndex:(int64_t)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(NSArray *)self->_lineItems objectAtIndexedSubscript:a4];
  if ([v10 lineItemType] == 10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = v10;
    v12 = [v8 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionReceiptLineItemCellReuseIdentifier" forIndexPath:v9];
    [v12 setSuppressImage:self->_suppressReceiptImages];
    v13 = [v11 label];
    [v12 setPrimaryText:v13];

    v14 = [v11 image];
    [v12 setImage:v14];

    v15 = [v11 secondaryLabel];
    [v12 setSecondaryText:v15];

    v16 = [v11 tertiaryLabel];
    [v12 setTertiaryText:v16];

    v17 = [v11 value];
    [v12 setAmountText:v17];

    v18 = [v11 hasTrailingLineSeperator];
    [v12 setHasTrailingLineSeparator:v18];
    [(PKPaymentTransactionDetailViewController *)self _applySeparatorInsetForCell:v12];
  }

  else if ([v10 lineItemType] == 11)
  {
    v12 = [v8 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionDateLineItemCellReuseIdentifier"];
    v19 = *MEMORY[0x1E69DDCF8];
    v20 = *MEMORY[0x1E69DDC90];
    v21 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90], 2, 0);
    v22 = PKFontForDefaultDesign(v19, v20, 0, 0);
    v23 = [v12 textLabel];
    v24 = [v12 detailTextLabel];
    v25 = [v10 label];
    [v23 setText:v25];

    [v23 setFont:v21];
    if (self->_inBridge)
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }
    v32 = ;
    v33 = [v10 value];
    [v24 setText:v33];

    [v24 setTextColor:v32];
    [v24 setFont:v22];
    [v12 setAccessibilityIdentifier:*MEMORY[0x1E69B98F0]];
  }

  else
  {
    v39 = v8;
    v12 = [v8 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionDetailLineItemCellReuseIdentifier"];
    v26 = [v10 isEmphasized];
    v27 = *MEMORY[0x1E69DDCF8];
    v28 = *MEMORY[0x1E69DDC90];
    v29 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90], 0, 0);
    v30 = PKFontForDefaultDesign(v27, v28, 2, 0);
    v31 = v9;
    if (self->_inBridge)
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v34 = ;
    v35 = [v10 label];
    v36 = [v10 value];
    [v12 setHasTrailingLineSeperator:{objc_msgSend(v10, "hasTrailingLineSeperator")}];
    if (v26)
    {
      v37 = v30;
    }

    else
    {
      v37 = v29;
    }

    [v12 setTitleFont:v37];
    [v12 setTitleColor:v34];
    [v12 setTitleText:v35];
    [v12 setValueFont:v37];
    [v12 setValueColor:v34];
    [v12 setValueText:v36];
    [(PKPaymentTransactionDetailViewController *)self _applySeparatorInsetForCell:v12];

    v9 = v31;
    v8 = v39;
  }

  return v12;
}

- (void)_tableView:(id)a3 willDisplayAmountDetailsCell:(id)a4 atIndexPath:(id)a5
{
  v10 = a4;
  v7 = a5;
  if (-[PKPaymentTransactionDetailViewController _amountDetailsRowForIndex:](self, "_amountDetailsRowForIndex:", [v7 row]) == 3)
  {
    v8 = -[PKPaymentTransactionDetailViewController _lineItemItemForRowIndex:](self, "_lineItemItemForRowIndex:", [v7 row]);
    if (v8 < [(NSArray *)self->_lineItems count])
    {
      v9 = [(NSArray *)self->_lineItems objectAtIndexedSubscript:v8];
      [v10 setSeparatorStyle:{objc_msgSend(v9, "hasTrailingLineSeperator")}];
    }
  }
}

- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__PKPaymentTransactionDetailViewController_transactionSourceIdentifier_didReceiveTransaction___block_invoke;
  v7[3] = &unk_1E8010A10;
  v8 = v5;
  v9 = self;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __94__PKPaymentTransactionDetailViewController_transactionSourceIdentifier_didReceiveTransaction___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) identifier];
  v3 = [*(*(a1 + 40) + 1536) identifier];
  v4 = [v2 isEqualToString:v3];
  v5 = PKLogFacilityTypeGetObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = *(*(a1 + 40) + 1536);
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Transaction currently being viewed, %@, has been updated to transaction %@", &v9, 0x16u);
    }

    [*(a1 + 40) setTransaction:*(a1 + 32)];
  }

  else
  {
    if (v6)
    {
      v9 = 138412546;
      v10 = v2;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Received an update to a different transaction, %@, while viewing transaction details for transaction: %@.", &v9, 0x16u);
    }
  }
}

- (void)transactionSourceIdentifier:(id)a3 didRemoveTransactionWithIdentifier:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __107__PKPaymentTransactionDetailViewController_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __107__PKPaymentTransactionDetailViewController_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 1536) identifier];
  if ([*(a1 + 40) isEqualToString:v2])
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Transaction currently being viewed has been deleted. Dismissing transaction details. TransactionID: %@", &v7, 0xCu);
    }

    v5 = [*(a1 + 32) navigationController];
    if ([v5 pk_settings_useStateDrivenNavigation])
    {
      [v5 pk_settings_popViewController];
    }

    else
    {
      v6 = [v5 popViewControllerAnimated:1];
    }
  }
}

- (void)transactionWithIdentifier:(id)a3 didDownloadTransactionReceipt:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PKPaymentTransactionDetailViewController_transactionWithIdentifier_didDownloadTransactionReceipt___block_invoke;
  block[3] = &unk_1E8010A88;
  v11 = v7;
  v12 = v6;
  v13 = self;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __100__PKPaymentTransactionDetailViewController_transactionWithIdentifier_didDownloadTransactionReceipt___block_invoke(void *a1)
{
  if (!a1[4])
  {
    return;
  }

  v2 = a1[5];
  v3 = [*(a1[6] + 1536) identifier];
  v4 = v2;
  v5 = v3;
  v9 = v5;
  if (v4 == v5)
  {

LABEL_8:
    v7 = a1[6];
    v8 = a1[4];

    [v7 _updateWithTransactionReceipt:v8];
    return;
  }

  if (v4 && v5)
  {
    v6 = [v4 isEqualToString:v5];

    if (!v6)
    {
      return;
    }

    goto LABEL_8;
  }
}

- (void)didUpdateFamilyMembers:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__PKPaymentTransactionDetailViewController_didUpdateFamilyMembers___block_invoke;
  v6[3] = &unk_1E8010A10;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __67__PKPaymentTransactionDetailViewController_didUpdateFamilyMembers___block_invoke(uint64_t a1)
{
  obj = [objc_alloc(MEMORY[0x1E69B88A0]) initWithFamilyMembers:*(a1 + 32)];
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong((*(a1 + 40) + 1240), obj);
    [*(a1 + 40) reloadData];
  }
}

- (void)paymentOfferConfirmationRecordUpdated:(id)a3 forTransactionWithPaymentHash:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__PKPaymentTransactionDetailViewController_paymentOfferConfirmationRecordUpdated_forTransactionWithPaymentHash___block_invoke;
  block[3] = &unk_1E8010A88;
  v11 = v7;
  v12 = self;
  v13 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __112__PKPaymentTransactionDetailViewController_paymentOfferConfirmationRecordUpdated_forTransactionWithPaymentHash___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 1536) paymentHash];
  v4 = v2;
  v5 = v3;
  v9 = v5;
  if (v4 == v5)
  {

LABEL_12:
    if ((PKEqualObjects() & 1) == 0)
    {
      objc_storeStrong((*(a1 + 40) + 1304), *(a1 + 48));
      v8 = *(a1 + 40);

      [v8 reloadData];
    }

    return;
  }

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = [v4 isEqualToString:v5];

    if (!v7)
    {
      return;
    }

    goto LABEL_12;
  }
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v5 = [(PKPaymentTransactionDetailViewController *)self navigationController:a3];
  if ([v5 pk_settings_useStateDrivenNavigation])
  {
    [v5 pk_settings_popViewController];
  }

  else
  {
    v4 = [v5 popViewControllerAnimated:1];
  }
}

- (void)submitAnswer:(id)a3
{
  v5 = a3;
  if (!self->_submittingAnswer)
  {
    objc_storeStrong(&self->_submittingAnswer, a3);
    v6 = [(PKPaymentTransaction *)self->_transaction unansweredQuestions];
    v7 = [v6 anyObject];
    v8 = [v7 type];

    paymentServiceDataProvider = self->_paymentServiceDataProvider;
    v10 = [(PKPaymentTransaction *)self->_transaction identifier];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__PKPaymentTransactionDetailViewController_submitAnswer___block_invoke;
    v11[3] = &unk_1E80264A8;
    v11[4] = self;
    v12 = v5;
    [(PKPaymentDataProvider *)paymentServiceDataProvider submitTransactionAnswerForTransaction:v10 questionType:v8 answer:v12 completion:v11];
  }
}

void __57__PKPaymentTransactionDetailViewController_submitAnswer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PKPaymentTransactionDetailViewController_submitAnswer___block_invoke_2;
  block[3] = &unk_1E8014828;
  objc_copyWeak(&v11, &location);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __57__PKPaymentTransactionDetailViewController_submitAnswer___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    goto LABEL_6;
  }

  v25 = WeakRetained;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [PKAccountFlowController displayableErrorForError:v3 featureIdentifier:2 genericErrorTitle:0 genericErrorMessage:0];
    v5 = PKAlertForDisplayableErrorWithHandlers(v4, 0, 0, 0);
    [v25 presentViewController:v5 animated:1 completion:0];
    v6 = *(a1 + 40);
    v7 = *(v6 + 1408);
    *(v6 + 1408) = 0;

    [*(a1 + 40) updateSectionVisibilityAndReloadIfNecessaryForSection:0];
LABEL_4:

LABEL_5:
    WeakRetained = v25;
    goto LABEL_6;
  }

  v8 = *MEMORY[0x1E69BC2F0];
  v9 = *(a1 + 48);
  v10 = v9;
  if (v9 == v8)
  {

LABEL_15:
    if ([v25[192] transactionStatus] == 2)
    {
      v12 = MEMORY[0x1E69DC650];
      v13 = PKLocalizedFeatureString();
      v14 = PKLocalizedFeatureString();
      v15 = [v12 alertControllerWithTitle:v13 message:v14 preferredStyle:1];

      v16 = MEMORY[0x1E69DC648];
      v17 = PKLocalizedFeatureString();
      v18 = [v16 actionWithTitle:v17 style:0 handler:0];
      [v15 addAction:v18];

      [v25 presentViewController:v15 animated:1 completion:0];
      goto LABEL_5;
    }

    goto LABEL_18;
  }

  if (!v9 || !v8)
  {

    goto LABEL_18;
  }

  v11 = [v9 isEqualToString:v8];

  if (v11)
  {
    goto LABEL_15;
  }

LABEL_18:
  v19 = *MEMORY[0x1E69BC2E8];
  v20 = *(a1 + 48);
  v4 = v20;
  if (v20 == v19)
  {

LABEL_24:
    v22 = [v25[192] effectiveTransactionSource] == 6;
    WeakRetained = v25;
    if (v22)
    {
      v23 = [*(*(a1 + 40) + 1248) accountIdentifier];
      PKCardSetShouldShowVPANReissuedMessage();

      v24 = [*(*(a1 + 40) + 1536) altDSID];
      PKCardSetAltDSIDForVPANReissuedMessage();

      [v25 _presentCardNumberUpdatedAlert];
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (!v20 || !v19)
  {
    goto LABEL_4;
  }

  v21 = [v20 isEqualToString:v19];

  WeakRetained = v25;
  if (v21)
  {
    goto LABEL_24;
  }

LABEL_6:
}

- (void)_presentCardNumberUpdatedAlert
{
  v14 = [(PKPaymentTransaction *)self->_transaction altDSID];
  if (v14)
  {
    v3 = PKCurrentUserAltDSID();
    v4 = v14;
    v5 = v3;
    v6 = v5;
    if (v4 == v5)
    {
    }

    else if (v5)
    {
      [v4 isEqualToString:v5];
    }

    else
    {
    }
  }

  v7 = PKLocalizedFeatureString();
  v8 = MEMORY[0x1E69DC650];
  v9 = PKLocalizedFeatureString();
  v10 = [v8 alertControllerWithTitle:v9 message:v7 preferredStyle:1];

  v11 = MEMORY[0x1E69DC648];
  v12 = PKLocalizedFeatureString();
  v13 = [v11 actionWithTitle:v12 style:0 handler:0];
  [v10 addAction:v13];

  [(PKPaymentTransactionDetailViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)_loadAppPrivacyURLFromAppStore
{
  v3 = [(PKPaymentTransaction *)self->_transaction releasedData];
  v4 = [v3 application];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    objc_initWeak(&location, self);
    self->_privacyURLCallInProgress = 1;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__PKPaymentTransactionDetailViewController__loadAppPrivacyURLFromAppStore__block_invoke;
    v7[3] = &unk_1E80122D8;
    objc_copyWeak(&v8, &location);
    v6 = PKLookupAppStoreApplicationPrivacyPolicy(v5, v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __74__PKPaymentTransactionDetailViewController__loadAppPrivacyURLFromAppStore__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__PKPaymentTransactionDetailViewController__loadAppPrivacyURLFromAppStore__block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __74__PKPaymentTransactionDetailViewController__loadAppPrivacyURLFromAppStore__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      objc_storeStrong(WeakRetained + 182, v4);
      [v3 reloadData];
      v3[1464] = 0;
    }

    else
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPaymentTransactionDetailViewController failed to get privacy policy.", v6, 2u);
      }
    }
  }
}

- (void)_fetchAppPrivacyURL
{
  if (self->_privacyURL || self->_privacyURLCallInProgress || [(PKPaymentTransaction *)self->_transaction transactionType]!= 15)
  {
    return;
  }

  v3 = [(PKPaymentTransaction *)self->_transaction transactionSource];
  if (v3 != 2)
  {
    if (v3 != 1)
    {
      return;
    }

    v4 = [(PKPaymentTransaction *)self->_transaction releasedData];
    v5 = [v4 privacyPolicyURL];
    privacyURL = self->_privacyURL;
    self->_privacyURL = v5;

    goto LABEL_16;
  }

  v7 = [(PKPaymentTransaction *)self->_transaction releasedData];
  v8 = [v7 application];
  v9 = [v8 client];

  if (v9 == 1)
  {
    v4 = [(PKPaymentTransaction *)self->_transaction releasedData];
    v10 = [v4 privacyPolicyURL];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [MEMORY[0x1E695DFF8] URLWithString:*MEMORY[0x1E69BB750]];
    }

    v13 = self->_privacyURL;
    self->_privacyURL = v12;

LABEL_16:

    [(PKSectionTableViewController *)self reloadData];
    return;
  }

  [(PKPaymentTransactionDetailViewController *)self _loadAppPrivacyURLFromAppStore];
}

- (void)_openBankConnectDigitalServicingURL
{
  v2 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  v4 = [v2 digitalServicingURL];

  v3 = v4;
  if (v4)
  {
    PKOpenURL();
    v3 = v4;
  }
}

- (void)_openBankConnectPostInstallmentURL
{
  v2 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  v4 = [v2 postInstallmentURL];

  v3 = v4;
  if (v4)
  {
    PKOpenURL();
    v3 = v4;
  }
}

- (void)_openBankConnectRedeemRewardsURL
{
  v2 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  v4 = [v2 redeemRewardsURL];

  v3 = v4;
  if (v4)
  {
    PKOpenURL();
    v3 = v4;
  }
}

- (void)_openAppPrivacyURL
{
  v11[4] = *MEMORY[0x1E69E9840];
  if (self->_privacyURL)
  {
    v2 = MEMORY[0x1E69B8540];
    v3 = *MEMORY[0x1E69BB6F8];
    v4 = *MEMORY[0x1E69BA6F0];
    v5 = *MEMORY[0x1E69BABE8];
    v10[0] = *MEMORY[0x1E69BA680];
    v10[1] = v5;
    v6 = *MEMORY[0x1E69BAAA8];
    v11[0] = v4;
    v11[1] = v6;
    v7 = *MEMORY[0x1E69BAC90];
    v10[2] = *MEMORY[0x1E69BA440];
    v10[3] = v7;
    v8 = *MEMORY[0x1E69BA980];
    v11[2] = *MEMORY[0x1E69BAAC0];
    v11[3] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
    [v2 subject:v3 sendEvent:v9];

    PKOpenURL();
  }
}

- (void)_showDeleteConfirmationSheet:(id)a3
{
  v4 = a3;
  if (self->_inBridge)
  {
    v5 = @"TRANSACTION_DELETE_ACTIVITY_SHEET_TITLE_WATCH";
  }

  else
  {
    v5 = @"TRANSACTION_DELETE_ACTIVITY_SHEET_TITLE_IPHONE";
  }

  v6 = PKLocalizedIdentityString(&v5->isa);
  v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v6 message:0 preferredStyle:0];
  v8 = [v7 popoverPresentationController];
  [v8 setSourceView:v4];

  objc_initWeak(&location, self);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __73__PKPaymentTransactionDetailViewController__showDeleteConfirmationSheet___block_invoke;
  v19 = &unk_1E8012CC0;
  objc_copyWeak(&v20, &location);
  v9 = _Block_copy(&v16);
  v10 = MEMORY[0x1E69DC648];
  v11 = PKLocalizedIdentityString(&cfstr_TransactionDel_0.isa);
  v12 = [v10 actionWithTitle:v11 style:2 handler:{v9, v16, v17, v18, v19}];

  v13 = MEMORY[0x1E69DC648];
  v14 = PKLocalizedIdentityString(&cfstr_TransactionDel_1.isa);
  v15 = [v13 actionWithTitle:v14 style:1 handler:0];

  [v7 addAction:v12];
  [v7 addAction:v15];
  [(PKPaymentTransactionDetailViewController *)self presentViewController:v7 animated:1 completion:0];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __73__PKPaymentTransactionDetailViewController__showDeleteConfirmationSheet___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _deleteTransaction];
    WeakRetained = v2;
  }
}

- (void)_deleteTransaction
{
  v24[4] = *MEMORY[0x1E69E9840];
  if ([(PKPaymentTransaction *)self->_transaction transactionType]== 15)
  {
    v3 = MEMORY[0x1E69B8540];
    v4 = *MEMORY[0x1E69BB6F8];
    v5 = *MEMORY[0x1E69BA6F0];
    v6 = *MEMORY[0x1E69BABE8];
    v23[0] = *MEMORY[0x1E69BA680];
    v23[1] = v6;
    v7 = *MEMORY[0x1E69BAAA8];
    v24[0] = v5;
    v24[1] = v7;
    v8 = *MEMORY[0x1E69BAC90];
    v23[2] = *MEMORY[0x1E69BA440];
    v23[3] = v8;
    v9 = *MEMORY[0x1E69BA980];
    v24[2] = *MEMORY[0x1E69BB138];
    v24[3] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:4];
    [v3 subject:v4 sendEvent:v10];
  }

  transaction = self->_transaction;
  if (transaction)
  {
    v12 = [(PKPaymentTransaction *)transaction identifier];
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = objc_opt_respondsToSelector();
  if (v13 || (v14 & 1) == 0)
  {
    v17 = MEMORY[0x1E69DC650];
    v18 = PKLocalizedIdentityString(&cfstr_TransactionDel_3.isa);
    v19 = PKLocalizedIdentityString(&cfstr_TransactionDel_4.isa);
    v16 = [v17 alertControllerWithTitle:v18 message:v19 preferredStyle:1];

    v20 = MEMORY[0x1E69DC648];
    v21 = PKLocalizedIdentityString(&cfstr_TransactionDel_5.isa);
    v22 = [v20 actionWithTitle:v21 style:0 handler:0];
    [v16 addAction:v22];

    [(PKPaymentTransactionDetailViewController *)self presentViewController:v16 animated:1 completion:0];
  }

  else
  {
    paymentServiceDataProvider = self->_paymentServiceDataProvider;
    v16 = [(PKPaymentTransaction *)self->_transaction identifier];
    [(PKPaymentDataProvider *)paymentServiceDataProvider deletePaymentTransactionWithIdentifier:v16];
  }
}

- (void)thresholdTopUpController:(id)a3 requestsPushViewController:(id)a4
{
  v5 = a4;
  v6 = [(PKPaymentTransactionDetailViewController *)self navigationController];
  if ([v6 pk_settings_useStateDrivenNavigation])
  {
    [v6 pk_settings_pushViewController:v5];
  }

  else
  {
    [v6 pushViewController:v5 animated:1];
  }
}

- (id)presentationSceneIdentifierForTopUpController:(id)a3
{
  v3 = [(PKPaymentTransactionDetailViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 _sceneIdentifier];

  return v6;
}

- (void)thresholdTopUpControllerCompletedSetup:(id)a3
{
  v4 = [(PKPaymentTransactionDetailViewController *)self navigationController];
  v3 = [v4 presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)thresholdTopUpController:(id)a3 requestsPopViewController:(id)a4
{
  v5 = [(PKPaymentTransactionDetailViewController *)self navigationController:a3];
  if ([v5 pk_settings_useStateDrivenNavigation])
  {
    [v5 pk_settings_popViewController];
  }

  else
  {
    v4 = [v5 popViewControllerAnimated:1];
  }
}

- (void)recurringPaymentsChanged
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __68__PKPaymentTransactionDetailViewController_recurringPaymentsChanged__block_invoke;
  v2[3] = &unk_1E8010998;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __68__PKPaymentTransactionDetailViewController_recurringPaymentsChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[192];
    v5 = [v4 recurringPeerPayment];

    if (v5)
    {
      v6 = [MEMORY[0x1E69B9000] sharedInstance];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __68__PKPaymentTransactionDetailViewController_recurringPaymentsChanged__block_invoke_2;
      v7[3] = &unk_1E8011850;
      objc_copyWeak(&v9, (a1 + 32));
      v8 = v4;
      [v6 recurringPaymentsWithCompletion:v7];

      objc_destroyWeak(&v9);
    }
  }
}

void __68__PKPaymentTransactionDetailViewController_recurringPaymentsChanged__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PKPaymentTransactionDetailViewController_recurringPaymentsChanged__block_invoke_3;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __68__PKPaymentTransactionDetailViewController_recurringPaymentsChanged__block_invoke_3(id *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v18 = WeakRetained;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = a1[4];
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          v10 = [a1[5] recurringPeerPayment];
          v11 = [v10 identifier];
          v12 = [v9 identifier];
          v13 = v11;
          v14 = v12;
          v15 = v14;
          if (v13 == v14)
          {

LABEL_19:
            [a1[5] setRecurringPeerPayment:v9];

            goto LABEL_20;
          }

          if (v13)
          {
            v16 = v14 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
          }

          else
          {
            v17 = [v13 isEqualToString:v14];

            if (v17)
            {
              goto LABEL_19;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    [a1[5] setRecurringPeerPayment:0];
LABEL_20:
    v3 = v18;
    [v18 setTransaction:a1[5]];
  }
}

- (void)executeAfterContentIsLoaded:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__PKPaymentTransactionDetailViewController_executeAfterContentIsLoaded___block_invoke;
    v6[3] = &unk_1E8010DD0;
    v6[4] = self;
    v7 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __72__PKPaymentTransactionDetailViewController_executeAfterContentIsLoaded___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 1117) == 1)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = *(v2 + 1120);
    v5 = _Block_copy(*(a1 + 40));
    [v4 addObject:v5];
  }
}

- (void)contentIsLoaded
{
  v13 = *MEMORY[0x1E69E9840];
  self->_allContentIsLoaded = 1;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableArray *)self->_executionBlocksContentIsLoaded copy];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v8 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_executionBlocksContentIsLoaded removeAllObjects];
}

- (void)_performDeleteOverride
{
  deleteOverrider = self->_deleteOverrider;
  if (deleteOverrider)
  {
    [(PKPaymentTransactionDetailViewControllerDeleteOverrider *)deleteOverrider transactionDetailViewControllerDidDeleteTransaction:self->_transaction];
    v5 = [(PKPaymentTransactionDetailViewController *)self navigationController];
    if ([v5 pk_settings_useStateDrivenNavigation])
    {
      [v5 pk_settings_popViewController];
    }

    else
    {
      v4 = [v5 popViewControllerAnimated:1];
    }
  }
}

- (void)physicalCardsChanged:(id)a3 forAccountIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__PKPaymentTransactionDetailViewController_physicalCardsChanged_forAccountIdentifier___block_invoke;
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

void __86__PKPaymentTransactionDetailViewController_physicalCardsChanged_forAccountIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[156];
    if (v4)
    {
      v12 = v3;
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

LABEL_12:
          v3 = v12;
          goto LABEL_13;
        }

        v10 = [v7 isEqualToString:v8];

        if (!v10)
        {
          goto LABEL_12;
        }
      }

      v11 = [v12 shouldMapSection:2];

      v3 = v12;
      if (!v11)
      {
        goto LABEL_13;
      }

      [v12[143] updateWithPhysicalCards:*(a1 + 40)];
      v9 = objc_alloc_init(MEMORY[0x1E696AC90]);
      [v12 recomputeMappedSectionsAndReloadSections:v9];
      goto LABEL_12;
    }
  }

LABEL_13:
}

- (void)appProtectionCoordinatorDidGainAccess:(id)a3
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __82__PKPaymentTransactionDetailViewController_appProtectionCoordinatorDidGainAccess___block_invoke;
  v3[3] = &unk_1E8010998;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __82__PKPaymentTransactionDetailViewController_appProtectionCoordinatorDidGainAccess___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[1384] == 1)
  {
    WeakRetained[1384] = 0;
    WeakRetained[1385] = 0;
    v2 = WeakRetained;
    [WeakRetained reloadData];
    WeakRetained = v2;
  }
}

- (void)appProtectionCoordinatorDidFailAccess:(id)a3
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __82__PKPaymentTransactionDetailViewController_appProtectionCoordinatorDidFailAccess___block_invoke;
  v3[3] = &unk_1E8010998;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __82__PKPaymentTransactionDetailViewController_appProtectionCoordinatorDidFailAccess___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[1384] & 1) == 0)
  {
    WeakRetained[1384] = 1;
    WeakRetained[1385] = 0;
    v2 = WeakRetained;
    [WeakRetained reloadData];
    WeakRetained = v2;
  }
}

- (void)_foundInMailApplicationWillResignActive:(id)a3
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __84__PKPaymentTransactionDetailViewController__foundInMailApplicationWillResignActive___block_invoke;
  v3[3] = &unk_1E8010998;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __84__PKPaymentTransactionDetailViewController__foundInMailApplicationWillResignActive___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained[171] isEffectivelyLocked];
    v2 = v4;
    if (v3)
    {
      *(v4 + 1384) = 1;
      *(v4 + 1385) = 0;
      [v4 reloadData];
      v2 = v4;
    }
  }
}

- (void)_foundInMailApplicationWillEnterForeground:(id)a3
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __87__PKPaymentTransactionDetailViewController__foundInMailApplicationWillEnterForeground___block_invoke;
  v3[3] = &unk_1E8010998;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __87__PKPaymentTransactionDetailViewController__foundInMailApplicationWillEnterForeground___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    if ([WeakRetained[171] isEffectivelyLocked])
    {
      *(v2 + 1384) = 1;
      *(v2 + 1385) = 0;
      [v2 reloadData];
    }

    [v2 _triggerInsightRowModelPrune];
    WeakRetained = v2;
  }
}

@end