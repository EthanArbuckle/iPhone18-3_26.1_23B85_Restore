@interface PKPaymentTransactionDetailViewController
- (BOOL)_actionRowIsEnabled:(unint64_t)enabled;
- (BOOL)_amountDetailsRowIsEnabled:(unint64_t)enabled;
- (BOOL)_hasIssuerPhoneNumber;
- (BOOL)_isFoundInInsightsSupported;
- (BOOL)_recognitionHintsRowIsEnabled:(unint64_t)enabled;
- (BOOL)_showSeparateReportMerchantInfoButton;
- (BOOL)_transactionHasNonZeroSecondaryFundingSourceAmount;
- (BOOL)shouldMapSection:(unint64_t)section;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (PKPaymentTransactionDetailViewController)initWithTransaction:(id)transaction transactionSourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection bankConnectInstitution:(id)institution physicalCards:(id)cards contactResolver:(id)self0 peerPaymentWebService:(id)self1 paymentServiceDataProvider:(id)self2 detailViewStyle:(int64_t)self3 allowTransactionLinks:(BOOL)self4;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_amountDetailsCellForTableView:(id)view atIndexPath:(id)path;
- (id)_applePayBarcodeRowCellForTableView:(id)view atIndexPath:(id)path;
- (id)_applePayOrderRowCellForTableView:(id)view atIndexPath:(id)path;
- (id)_applePayReceiptRowCellForTableView:(id)view atIndexPath:(id)path;
- (id)_associatedInstallmentCellForTableView:(id)view atIndexPath:(id)path;
- (id)_awardCellForTableView:(id)view;
- (id)_businessChatContextForNonCancellablePayment;
- (id)_businessChatContextForUnavailableDisputeStatus;
- (id)_coarseLocationHyperlinkFooterView;
- (id)_debugDetailCellForTableView:(id)view atIndexPath:(id)path;
- (id)_disputeStatusCellForTableView:(id)view atIndexPath:(id)path;
- (id)_disputeStatusDescription;
- (id)_disputeStatusTitle;
- (id)_expiredPhysicalCardCellForTableView:(id)view atIndexPath:(id)path;
- (id)_explanationTextForPaymentTransaction:(id)transaction;
- (id)_foundInMailLockedRowCellForTableView:(id)view atIndexPath:(id)path;
- (id)_foundInMailRowCellForTableView:(id)view atIndexPath:(id)path;
- (id)_fraudRiskCellForTableView:(id)view;
- (id)_mapTilePlaceholderImage;
- (id)_merchantAddressCellForTableView:(id)view;
- (id)_merchantTokenDeletedCellForTableView:(id)view atIndexPath:(id)path;
- (id)_merchantTokenManagementCellForTableView:(id)view;
- (id)_peerPaymentController;
- (id)_questionCellForTableView:(id)view atIndexPath:(id)path;
- (id)_recognitionHintsCellForTableView:(id)view atIndexPath:(id)path;
- (id)_relatedTransactionsSourceIdentifiers;
- (id)_releasedDataCellForTableView:(id)view atIndexPath:(id)path;
- (id)_statusCellForTableView:(id)view;
- (id)_tableView:(id)view actionButtonCellForSection:(unint64_t)section;
- (id)_tableView:(id)view cellForActionAtIndex:(int64_t)index;
- (id)_tableView:(id)view cellForAmountDetailLineItemAtIndex:(int64_t)index atIndexPath:(id)path;
- (id)_tableView:(id)view cellForAwardAtIndex:(int64_t)index;
- (id)_tableViewCellChangeCategoryForTableView:(id)view;
- (id)_tableViewCellForDeleteTransaction:(id)transaction;
- (id)_tableViewCellForGroupedPaymentsSummary:(id)summary;
- (id)_tableViewCellPaymentOfferConfirmationRecordFollowUpForTableView:(id)view atIndexPath:(id)path;
- (id)_tableViewCellPaymentOfferConfirmationRecordStatusForTableView:(id)view atIndexPath:(id)path;
- (id)_tableViewCellPaymentRewardsRedemptionInfoForTableView:(id)view atIndexPath:(id)path;
- (id)_transactionIdentifierCellForTableView:(id)view;
- (id)_transactionIdentifierDescription;
- (id)_transactionStatusString;
- (id)contextMenuConfigurationForCopyingText:(id)text;
- (id)contextMenuConfigurationForTransactionIdentifier;
- (id)formattedBalanceAdjustmentAmountWithTransitDescriptors;
- (id)presentationSceneIdentifierForTopUpController:(id)controller;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)_maximumRetentionPeriodForElements:(id)elements;
- (int64_t)_numberOfActionRowsEnabled;
- (int64_t)_rowIndexForActionRow:(unint64_t)row;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_actionRowForRowIndex:(int64_t)index;
- (unint64_t)_amountDetailsRowForIndex:(unint64_t)index;
- (unint64_t)_numberOfAmountDetailsRows;
- (unint64_t)_numberOfRecognitionHintsRows;
- (unint64_t)_recognitionHintsRowForIndex:(unint64_t)index;
- (void)_applySeparatorInsetForCell:(id)cell;
- (void)_callIssuer;
- (void)_cancelPaymentWithCell:(id)cell;
- (void)_cancelPeerPaymentPendingRequest;
- (void)_deleteTransaction;
- (void)_didSelectMerchantTokenManagement;
- (void)_fetchAllApplePayOrderRowViewModels;
- (void)_fetchAllInsightRowViewModels;
- (void)_fetchAppPrivacyURL;
- (void)_fetchDataReleaseTransactionConfiguration;
- (void)_fetchMerchantToken;
- (void)_foundInMailApplicationWillEnterForeground:(id)foreground;
- (void)_foundInMailApplicationWillResignActive:(id)active;
- (void)_handleCoarseLocationChangedNotification:(id)notification;
- (void)_handlePeerPaymentDisplayableError:(id)error withPeerPaymentController:(id)controller;
- (void)_loadAppPrivacyURLFromAppStore;
- (void)_openAppPrivacyURL;
- (void)_openBankConnectDigitalServicingURL;
- (void)_openBankConnectPostInstallmentURL;
- (void)_openBankConnectRedeemRewardsURL;
- (void)_openBusinessChatControllerForContext:(id)context;
- (void)_openMessagesToPresentAction:(unint64_t)action;
- (void)_openOfferDetailsInIssuerApp:(id)app;
- (void)_openTransactionInIssuerApp;
- (void)_performDeleteOverride;
- (void)_performPeerPaymentAction:(id)action withCompletion:(id)completion;
- (void)_presentCancelPaymentWithIndexPath:(id)path;
- (void)_presentCardNumberUpdatedAlert;
- (void)_presentContactIssuer;
- (void)_presentContactViewController;
- (void)_presentRecurringPeerPayment:(id)payment;
- (void)_presentRecurringPeerPaymentAtIndexPath:(id)path;
- (void)_presentReportIssue;
- (void)_recomputeLineItems;
- (void)_reloadTableHeaderView;
- (void)_showDeleteConfirmationSheet:(id)sheet;
- (void)_showInstallmentDetailsForAssociatedInstallment:(id)installment;
- (void)_showUpdateTransactionCategoryErrorAlert;
- (void)_tableView:(id)view didSelectActionAtIndexPath:(id)path;
- (void)_tableView:(id)view didSelectFoundInMailItemAtIndexPath:(id)path;
- (void)_tableView:(id)view didSelectMechantAddressAtIndexPath:(id)path;
- (void)_tableView:(id)view didSelectPeerPaymentAction:(id)action atIndexPath:(id)path;
- (void)_tableView:(id)view willDisplayAmountDetailsCell:(id)cell atIndexPath:(id)path;
- (void)_triggerInsightRowModelPrune;
- (void)_updatePeerPaymentPendingRequestForRequestToken:(id)token;
- (void)_updatePeerPaymentTransactionStatusWithCompletion:(id)completion;
- (void)_updateTableHeaderHeight;
- (void)_updateWithTransactionReceipt:(id)receipt;
- (void)_updateWithTransactionTags:(id)tags;
- (void)appProtectionCoordinatorDidFailAccess:(id)access;
- (void)appProtectionCoordinatorDidGainAccess:(id)access;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)contactsDidChangeForContactResolver:(id)resolver;
- (void)contentIsLoaded;
- (void)dealloc;
- (void)didUpdateFamilyMembers:(id)members;
- (void)executeAfterContentIsLoaded:(id)loaded;
- (void)merchantTokenDetailViewController:(id)controller didDeleteMerchantToken:(id)token;
- (void)paymentOfferConfirmationRecordUpdated:(id)updated forTransactionWithPaymentHash:(id)hash;
- (void)physicalCardsChanged:(id)changed forAccountIdentifier:(id)identifier;
- (void)presentConfirmPaymentOfferPlan;
- (void)presentPaymentOfferInstallmentSelectionFlowFromIndexPath:(id)path fromPushNotification:(BOOL)notification completion:(id)completion;
- (void)recurringPaymentsChanged;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setTransaction:(id)transaction;
- (void)submitAnswer:(id)answer;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)thresholdTopUpController:(id)controller requestsPopViewController:(id)viewController;
- (void)thresholdTopUpController:(id)controller requestsPushViewController:(id)viewController;
- (void)thresholdTopUpControllerCompletedSetup:(id)setup;
- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction;
- (void)transactionSourceIdentifier:(id)identifier didRemoveTransactionWithIdentifier:(id)withIdentifier;
- (void)transactionWithIdentifier:(id)identifier didDownloadTransactionReceipt:(id)receipt;
- (void)transactionsChanged:(id)changed;
- (void)updateTransactionCategory:(int64_t)category;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPaymentTransactionDetailViewController

- (PKPaymentTransactionDetailViewController)initWithTransaction:(id)transaction transactionSourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection bankConnectInstitution:(id)institution physicalCards:(id)cards contactResolver:(id)self0 peerPaymentWebService:(id)self1 paymentServiceDataProvider:(id)self2 detailViewStyle:(int64_t)self3 allowTransactionLinks:(BOOL)self4
{
  v106[1] = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  collectionCopy = collection;
  familyCollectionCopy = familyCollection;
  accountCopy = account;
  userCollectionCopy = userCollection;
  institutionCopy = institution;
  cardsCopy = cards;
  resolverCopy = resolver;
  serviceCopy = service;
  providerCopy = provider;
  v105.receiver = self;
  v105.super_class = PKPaymentTransactionDetailViewController;
  v22 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v105, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior], 30);
  v23 = v22;
  if (!v22)
  {
    goto LABEL_40;
  }

  objc_storeStrong(&v22->_transactionSourceCollection, collection);
  v95 = resolverCopy;
  if (resolverCopy)
  {
    v24 = resolverCopy;
    v25 = cardsCopy;
    v26 = v24;
    contactResolver = v23->_contactResolver;
    v23->_contactResolver = v26;
LABEL_6:

    cardsCopy = v25;
    goto LABEL_7;
  }

  if ([transactionCopy transactionType] == 3)
  {
    v25 = cardsCopy;
    contactResolver = objc_alloc_init(MEMORY[0x1E695CE18]);
    requiredContactKeys = [MEMORY[0x1E69B8F30] requiredContactKeys];
    v29 = [objc_alloc(MEMORY[0x1E69B8740]) initWithContactStore:contactResolver keysToFetch:requiredContactKeys];
    v30 = v23->_contactResolver;
    v23->_contactResolver = v29;

    goto LABEL_6;
  }

LABEL_7:
  v31 = [[PKPaymentTransactionCellController alloc] initWithContactResolver:v23->_contactResolver];
  transactionCellController = v23->_transactionCellController;
  v23->_transactionCellController = v31;

  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  webService = v23->_webService;
  v23->_webService = mEMORY[0x1E69B8EF8];

  objc_storeStrong(&v23->_peerPaymentWebService, service);
  objc_storeStrong(&v23->_paymentServiceDataProvider, provider);
  v23->_detailViewStyle = style;
  objc_storeStrong(&v23->_familyCollection, familyCollection);
  objc_storeStrong(&v23->_account, account);
  objc_storeStrong(&v23->_accountUserCollection, userCollection);
  v35 = [(PKAccountUserCollection *)v23->_accountUserCollection accountUserForTransaction:v23->_transaction];
  accountUser = v23->_accountUser;
  v23->_accountUser = v35;

  objc_storeStrong(&v23->_bankConnectInstitution, institution);
  v37 = [cardsCopy copy];
  physicalCards = v23->_physicalCards;
  v23->_physicalCards = v37;

  mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
  accountService = v23->_accountService;
  v23->_accountService = mEMORY[0x1E69B8400];

  [(PKAccountService *)v23->_accountService registerObserver:v23];
  paymentService = [MEMORY[0x1E69B8DB8] paymentService];
  paymentService = v23->_paymentService;
  v23->_paymentService = paymentService;

  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  executionBlocksContentIsLoaded = v23->_executionBlocksContentIsLoaded;
  v23->_executionBlocksContentIsLoaded = v43;

  paymentPass = [(PKTransactionSourceCollection *)v23->_transactionSourceCollection paymentPass];
  paymentPass = v23->_paymentPass;
  v23->_paymentPass = paymentPass;

  if (!v23->_paymentPass && v23->_account)
  {
    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    associatedPassUniqueID = [(PKAccount *)v23->_account associatedPassUniqueID];
    v49 = [mEMORY[0x1E69B8A58] passWithUniqueID:associatedPassUniqueID];
    paymentPass2 = [v49 paymentPass];
    v51 = v23->_paymentPass;
    v23->_paymentPass = paymentPass2;
  }

  v52 = [[PKPhysicalCardController alloc] initWithAccountService:v23->_accountService paymentPass:v23->_paymentPass account:v23->_account accountUser:v23->_accountUser physicalCards:v23->_physicalCards];
  physicalCardController = v23->_physicalCardController;
  v23->_physicalCardController = v52;

  v54 = objc_alloc_init(MEMORY[0x1E696AB78]);
  transactionDateFormatter = v23->_transactionDateFormatter;
  v23->_transactionDateFormatter = v54;

  bankConnectMetadata = [transactionCopy bankConnectMetadata];
  roundTransactionDate = [bankConnectMetadata roundTransactionDate];

  [(NSDateFormatter *)v23->_transactionDateFormatter setDateStyle:1];
  if ((roundTransactionDate & 1) == 0)
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
  [providerCopy addDelegate:v23];
  mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
  [mEMORY[0x1E69B9000] registerObserver:v23];

  supportsDeepLinkingTransactions = [(PKPaymentPass *)v23->_paymentPass supportsDeepLinkingTransactions];
  if (supportsDeepLinkingTransactions)
  {
    LOBYTE(supportsDeepLinkingTransactions) = ([transactionCopy isBankConnectTransaction] & 1) == 0 && +[PKPaymentNotificationAppURLHelper applicationExistsToHandleNotificationsForPaymentPass:](PKPaymentNotificationAppURLHelper, "applicationExistsToHandleNotificationsForPaymentPass:", v23->_paymentPass);
  }

  v23->_issuerAppDeepLinkingUIEnabled = supportsDeepLinkingTransactions;
  v23->_inBridge = PKBridgeUsesDarkAppearance();
  v23->_allowTransactionLinks = links;
  [(PKPaymentTransactionDetailViewController *)v23 setTransaction:transactionCopy];
  transactionType = [transactionCopy transactionType];
  if (transactionType == 3)
  {
    if (![transactionCopy peerPaymentStatus])
    {
      serviceIdentifier = [(PKPaymentTransaction *)v23->_transaction serviceIdentifier];
      v70 = [serviceIdentifier length];
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

    if (!links || ![transactionCopy isPeerPaymentGroupRequestReceivedTransaction])
    {
      goto LABEL_33;
    }

    peerPaymentRequestToken = [transactionCopy peerPaymentRequestToken];
    v73 = [objc_alloc(MEMORY[0x1E69B8788]) initWithTransactionType:3 transactionSourceCollection:v23->_transactionSourceCollection paymentDataProvider:0];
    transactionFetcher = v23->_transactionFetcher;
    v23->_transactionFetcher = v73;

    [(PKDashboardTransactionFetcher *)v23->_transactionFetcher filterPeerPaymentSubType:2];
    [(PKDashboardTransactionFetcher *)v23->_transactionFetcher filterPeerPaymentRequestToken:peerPaymentRequestToken];
    [(PKDashboardTransactionFetcher *)v23->_transactionFetcher setDelegate:v23];
    [(PKPaymentTransactionDetailViewController *)v23 _updatePeerPaymentPendingRequestForRequestToken:peerPaymentRequestToken];
    goto LABEL_32;
  }

  if (transactionType == 10)
  {
    payments = [transactionCopy payments];
    peerPaymentRequestToken = [payments firstObject];

    if ([peerPaymentRequestToken isCurrentlyCancellable])
    {
      v67 = [objc_alloc(MEMORY[0x1E69B8788]) initWithTransactionType:10 transactionSourceCollection:v23->_transactionSourceCollection paymentDataProvider:0];
      v68 = v23->_transactionFetcher;
      v23->_transactionFetcher = v67;

      [(PKDashboardTransactionFetcher *)v23->_transactionFetcher setDelegate:v23];
    }

LABEL_32:
  }

LABEL_33:
  mEMORY[0x1E69B8708] = [MEMORY[0x1E69B8708] sharedInstance];
  coarseLocationMonitor = v23->_coarseLocationMonitor;
  v23->_coarseLocationMonitor = mEMORY[0x1E69B8708];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v23 selector:sel__handleCoarseLocationChangedNotification_ name:*MEMORY[0x1E69BB7B0] object:v23->_coarseLocationMonitor];

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
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v23 selector:sel__foundInMailApplicationWillResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v23 selector:sel__foundInMailApplicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    navigationItem = [(PKPaymentTransactionDetailViewController *)v23 navigationItem];
    [navigationItem pkui_setupScrollEdgeChromelessAppearance];
    [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
  }

  v106[0] = objc_opt_class();
  v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:1];
  v93 = [(PKPaymentTransactionDetailViewController *)v23 registerForTraitChanges:v92 withHandler:&__block_literal_global_264];

  resolverCopy = v95;
LABEL_40:

  return v23;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(PKAccountService *)self->_accountService unregisterObserver:self];
  [(PKAppProtectionCoordinator *)self->_foundInMailShieldCoordinator unregisterObserver:self];
  v4.receiver = self;
  v4.super_class = PKPaymentTransactionDetailViewController;
  [(PKSectionTableViewController *)&v4 dealloc];
}

- (void)setTransaction:(id)transaction
{
  v109 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  if (PKEqualObjects())
  {
    recurringPeerPayment = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(recurringPeerPayment, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      transaction = self->_transaction;
      *buf = 138412802;
      v104 = v8;
      v105 = 2112;
      transactionCopy2 = transaction;
      v107 = 2112;
      v108 = transactionCopy;
      _os_log_impl(&dword_1BD026000, recurringPeerPayment, OS_LOG_TYPE_DEFAULT, "%@: skip updating transaction %@ with %@. The objects are equal.", buf, 0x20u);
    }

    goto LABEL_54;
  }

  objc_storeStrong(&self->_transaction, transaction);
  peerPaymentStatusResponse = self->_peerPaymentStatusResponse;
  self->_peerPaymentStatusResponse = 0;

  associatedTransaction = self->_associatedTransaction;
  self->_associatedTransaction = 0;

  associatedReceipt = self->_associatedReceipt;
  self->_associatedReceipt = 0;

  self->_suppressReceiptImages = 0;
  self->_transactionCategory = [transactionCopy effectiveTransactionCategory];
  self->_transactionCategoryAccessLevel = PKPaymentTransactionCategoryAccessLevel();
  v13 = [(PKPaymentTransactionDetailViewController *)self _explanationTextForPaymentTransaction:transactionCopy];
  transactionExplanation = self->_transactionExplanation;
  self->_transactionExplanation = v13;

  isMerchantTokenTransaction = [transactionCopy isMerchantTokenTransaction];
  if (isMerchantTokenTransaction)
  {
    recurringPeerPayment = [transactionCopy recurringPeerPayment];
  }

  else
  {
    recurringPeerPayment = 0;
  }

  [(PKPaymentTransactionDetailViewController *)self _recomputeLineItems];
  [(PKPaymentTransactionDetailViewController *)self _reloadTableHeaderView];
  [(PKSectionTableViewController *)self reloadData];
  v16 = dispatch_group_create();
  if ([transactionCopy transactionType] == 10 && (-[PKPaymentTransaction isBankConnectTransaction](self->_transaction, "isBankConnectTransaction") & 1) == 0)
  {
    creditDetails = [(PKAccount *)self->_account creditDetails];
    productTimeZone = [creditDetails productTimeZone];
    productTimeZone = self->_productTimeZone;
    self->_productTimeZone = productTimeZone;

    localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
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

  else if ([transactionCopy transactionType] == 11 && objc_msgSend(transactionCopy, "accountType") == 2)
  {
    creditDetails2 = [(PKAccount *)self->_account creditDetails];
    productTimeZone2 = [creditDetails2 productTimeZone];
    v19 = self->_productTimeZone;
    self->_productTimeZone = productTimeZone2;

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
    associatedStatementIdentifiers = [transactionCopy associatedStatementIdentifiers];
    if ([associatedStatementIdentifiers count])
    {
      objc_initWeak(buf, self);
      dispatch_group_enter(v16);
      accountService = self->_accountService;
      v26 = [MEMORY[0x1E695DFD8] setWithArray:associatedStatementIdentifiers];
      accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke;
      v100[3] = &unk_1E8027310;
      objc_copyWeak(&v102, buf);
      v101 = v16;
      [(PKAccountService *)accountService creditStatementsForStatementIdentifiers:v26 accountIdentifier:accountIdentifier completion:v100];

      objc_destroyWeak(&v102);
      objc_destroyWeak(buf);
    }

    else
    {
      self->_associatedCreditStatementsLoaded = 1;
      [(PKSectionTableViewController *)self reloadData];
    }
  }

  identifier = [transactionCopy identifier];
  associatedReceiptUniqueID = [transactionCopy associatedReceiptUniqueID];
  if (associatedReceiptUniqueID && (objc_opt_respondsToSelector() & 1) != 0)
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
    [(PKPaymentDataProvider *)paymentServiceDataProvider transactionReceiptForTransactionWithIdentifier:identifier updateIfNecessary:1 completion:v97];

    objc_destroyWeak(&v99);
    objc_destroyWeak(buf);
  }

  if (self->_allowTransactionLinks)
  {
    if ([transactionCopy adjustmentTypeReason] == 3 || objc_msgSend(transactionCopy, "adjustmentType") == 9 || objc_msgSend(transactionCopy, "adjustmentType") == 14)
    {
      referenceIdentifier = [transactionCopy referenceIdentifier];
      transactionSourceIdentifier = [transactionCopy transactionSourceIdentifier];
      v37 = transactionSourceIdentifier;
      if (transactionSourceIdentifier)
      {
        anyObject = transactionSourceIdentifier;
      }

      else
      {
        transactionSourceCollection = self->_transactionSourceCollection;
        transactionSourceIdentifier2 = [transactionCopy transactionSourceIdentifier];
        v41 = [(PKTransactionSourceCollection *)transactionSourceCollection transactionSourceForTransactionSourceIdentifier:transactionSourceIdentifier2];
        transactionSourceIdentifiers = [v41 transactionSourceIdentifiers];
        anyObject = [transactionSourceIdentifiers anyObject];
      }

      if (referenceIdentifier)
      {
        if (anyObject)
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
            [(PKPaymentDataProvider *)v43 transactionWithServiceIdentifier:referenceIdentifier transactionSourceIdentifier:anyObject completion:v94];

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
            v104 = transactionCopy;
            v105 = 2112;
            transactionCopy2 = v45;
            _os_log_impl(&dword_1BD026000, v44, OS_LOG_TYPE_DEFAULT, "Error: the transaction source identifier was not defined for transaction %@ and transactionSourceCollection %@", buf, 0x16u);
          }
        }
      }
    }

    else if ([transactionCopy transactionType] == 1)
    {
      referenceIdentifier = [transactionCopy serviceIdentifier];
      if (referenceIdentifier && (objc_opt_respondsToSelector() & 1) != 0)
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
        [(PKPaymentDataProvider *)v63 transactionWithReferenceIdentifier:referenceIdentifier completion:v91];

        objc_destroyWeak(&v93);
        objc_destroyWeak(buf);
      }
    }

    else if ([transactionCopy transactionType])
    {
      if ([transactionCopy transactionType] != 13)
      {
        goto LABEL_38;
      }

      referenceIdentifier = [transactionCopy referenceIdentifier];
      accountIdentifier2 = [transactionCopy accountIdentifier];
      v65 = accountIdentifier2;
      if (referenceIdentifier && accountIdentifier2)
      {
        objc_initWeak(buf, self);
        dispatch_group_enter(v16);
        v66 = self->_accountService;
        v81[0] = MEMORY[0x1E69E9820];
        v81[1] = 3221225472;
        v81[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_7_292;
        v81[3] = &unk_1E80273B0;
        objc_copyWeak(&v84, buf);
        v82 = referenceIdentifier;
        v83 = v16;
        [(PKAccountService *)v66 accountWithIdentifier:v65 completion:v81];

        objc_destroyWeak(&v84);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      referenceIdentifier = [transactionCopy referenceIdentifier];
      if (referenceIdentifier && (objc_opt_respondsToSelector() & 1) != 0)
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
        [(PKPaymentDataProvider *)v67 installmentPlansWithTransactionReferenceIdentifier:referenceIdentifier completion:v88];

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
        [(PKPaymentDataProvider *)v68 transactionTagsForTransactionWithIdentifier:identifier completion:v85];

        objc_destroyWeak(&v87);
        objc_destroyWeak(buf);
      }

      if (recurringPeerPayment)
      {
        v69 = PKPeerPaymentTransactionForRecurringPayment();
        v70 = self->_associatedTransaction;
        self->_associatedTransaction = v69;

        [(PKSectionTableViewController *)self reloadData];
      }
    }
  }

LABEL_38:
  if (![transactionCopy transactionType])
  {
    objc_initWeak(buf, self);
    v46 = self->_issuerInstallmentCriteria;
    paymentOffersCatalog = [(PKPaymentService *)self->_paymentService paymentOffersCatalog];
    uniqueID = [(PKPaymentPass *)self->_paymentPass uniqueID];
    v49 = [paymentOffersCatalog criteriaWithType:1 passUniqueID:uniqueID];
    issuerInstallmentCriteria = self->_issuerInstallmentCriteria;
    self->_issuerInstallmentCriteria = v49;

    if ((PKEqualObjects() & 1) == 0)
    {
      [(PKSectionTableViewController *)self reloadData];
    }

    paymentHash = [(PKPaymentTransaction *)self->_transaction paymentHash];
    if (paymentHash && (objc_opt_respondsToSelector() & 1) != 0)
    {
      dispatch_group_enter(v16);
      v52 = self->_paymentServiceDataProvider;
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_9_297;
      v78[3] = &unk_1E80273D8;
      objc_copyWeak(&v80, buf);
      v79 = v16;
      [(PKPaymentDataProvider *)v52 paymentOfferConfirmationRecordForTransactionWithPaymentHash:paymentHash completion:v78];

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
    paymentRewardsRedemption = [(PKPaymentTransaction *)self->_transaction paymentRewardsRedemption];
    v55 = paymentRewardsRedemption;
    if (paymentRewardsRedemption)
    {
      v56 = self->_paymentServiceDataProvider;
      balanceIdentifier = [paymentRewardsRedemption balanceIdentifier];
      v58 = [(PKPaymentDataProvider *)v56 paymentRewardsBalanceWithIdentifier:balanceIdentifier];
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
    _relatedTransactionsSourceIdentifiers = [(PKPaymentTransactionDetailViewController *)self _relatedTransactionsSourceIdentifiers];
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __59__PKPaymentTransactionDetailViewController_setTransaction___block_invoke_11;
    v75[3] = &unk_1E80113B0;
    objc_copyWeak(&v77, buf);
    v76 = v16;
    [(PKPaymentService *)paymentService hasTransactionsRelatedToTransaction:v61 transactionSourceIdentifiers:_relatedTransactionsSourceIdentifiers completion:v75];

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

  timeZone = [(PKPaymentTransaction *)self->_transaction timeZone];
  if (timeZone)
  {
    localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
    self->_showTransactionTimeZone = PKEqualObjects() ^ 1;

    if (self->_showTransactionTimeZone)
    {
      v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
      transactionLocalTimeDateFormatter = self->_transactionLocalTimeDateFormatter;
      self->_transactionLocalTimeDateFormatter = v7;

      [(NSDateFormatter *)self->_transactionLocalTimeDateFormatter setDateStyle:1];
      [(NSDateFormatter *)self->_transactionLocalTimeDateFormatter setTimeStyle:1];
      [(NSDateFormatter *)self->_transactionLocalTimeDateFormatter setTimeZone:timeZone];
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

- (BOOL)shouldMapSection:(unint64_t)section
{
  switch(section)
  {
    case 0uLL:
      unansweredQuestions = [(PKPaymentTransaction *)self->_transaction unansweredQuestions];
      LOBYTE(v5) = [unansweredQuestions count] != 0;
      goto LABEL_68;
    case 1uLL:
      disputeStatus = [(PKPaymentTransaction *)self->_transaction disputeStatus];
      if (!disputeStatus || disputeStatus == 7 && ([(PKAccount *)self->_account hideEnhancedDisputeDetails]& 1) != 0)
      {
        goto LABEL_75;
      }

      LOBYTE(v5) = [(PKAccount *)self->_account hideDisputeDetails]^ 1;
      return v5 & 1;
    case 2uLL:
      altDSID = [(PKPaymentTransaction *)self->_transaction altDSID];
      if (altDSID)
      {
        altDSID2 = [(PKPaymentTransaction *)self->_transaction altDSID];
        v11 = PKCurrentUserAltDSID();
        canReplacePhysicalCard = altDSID2 == v11 && [(PKPhysicalCardController *)self->_physicalCardController hasExpiredPhysicalCardOnly]&& [(PKPhysicalCardController *)self->_physicalCardController canReplacePhysicalCard];
      }

      else
      {
        canReplacePhysicalCard = [(PKPhysicalCardController *)self->_physicalCardController hasExpiredPhysicalCardOnly]&& [(PKPhysicalCardController *)self->_physicalCardController canReplacePhysicalCard];
      }

      LOBYTE(v5) = [(PKPaymentTransaction *)self->_transaction effectiveTransactionSource]== 5 && canReplacePhysicalCard;
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
      _numberOfRecognitionHintsRows = [(PKPaymentTransactionDetailViewController *)self _numberOfRecognitionHintsRows];
      goto LABEL_77;
    case 7uLL:
      preferredLocation = [(PKPaymentTransaction *)self->_transaction preferredLocation];
      if (preferredLocation)
      {
        goto LABEL_87;
      }

      startStationLocation = [(PKPaymentTransaction *)self->_transaction startStationLocation];
      if (startStationLocation)
      {
        LOBYTE(v5) = 1;
      }

      else
      {
        endStationLocation = [(PKPaymentTransaction *)self->_transaction endStationLocation];
        LOBYTE(v5) = endStationLocation != 0;
      }

      goto LABEL_101;
    case 8uLL:
      if ([(PKPaymentTransaction *)self->_transaction effectiveTransactionSource]!= 3)
      {
        goto LABEL_75;
      }

      unansweredQuestions = [(PKPaymentTransaction *)self->_transaction merchant];
      originURL = [unansweredQuestions originURL];
      LOBYTE(v5) = originURL != 0;

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
      preferredLocation = [(PKPaymentTransaction *)self->_transaction awards];
      if ([preferredLocation count])
      {
        goto LABEL_87;
      }

      barcodeIdentifier = [(PKPaymentTransaction *)self->_transaction barcodeIdentifier];
      if (barcodeIdentifier)
      {
        LOBYTE(v5) = self->_issuerAppDeepLinkingUIEnabled;
      }

      else
      {
        LOBYTE(v5) = 0;
      }

      goto LABEL_100;
    case 0x12uLL:
      preferredLocation = [(PKRetrieveMerchantTokensResponse *)self->_merchantTokenResponse merchantTokens];
      if (![preferredLocation count])
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
      _numberOfRecognitionHintsRows = [*(&self->super.super.super.super.super.isa + v18) count];
LABEL_77:
      v13 = _numberOfRecognitionHintsRows == 0;
      goto LABEL_82;
    case 0x16uLL:
      if (!self->_didLoadRelatedTransactions)
      {
        goto LABEL_75;
      }

      v5 = (LOBYTE(self->_transactionCategoryAccessLevel) >> 1) & 1;
      return v5 & 1;
    case 0x17uLL:
      _numberOfRecognitionHintsRows = [(PKPaymentTransactionDetailViewController *)self _numberOfActionRowsEnabled];
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
      preferredLocation = [(PKPaymentTransaction *)self->_transaction serviceIdentifier];
      if (![preferredLocation length])
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
      preferredLocation = [(PKPaymentTransactionDetailViewController *)self transaction];
      if ([preferredLocation transactionType] == 15)
      {
        barcodeIdentifier = [(PKPaymentTransaction *)self->_transaction identifier];
        LOBYTE(v5) = barcodeIdentifier != 0;
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
  tableView = [(PKPaymentTransactionDetailViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionTitleValueLabelCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionDefaultCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionConfigurationCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKTransactionActionChangeCategoryCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionSubtitleCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionLocationMapCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionDetailLineItemCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionDateLineItemCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionReceiptLineItemCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionTransactionCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionQuestionCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionAwardCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionTransactionExplanationCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionGroupedPaymentsCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionRequestedElementsDataReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionMerchantTokenDeletedCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionOrderCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionReceiptCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionBarcodeCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionFoundInMailCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionFoundInMailLockedCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentRewardsRedemptionInfoCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentOfferConfirmationRecordCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentOfferConfirmationRecordFollowUpCellReuseIdentifier"];
  v4 = objc_opt_class();
  v5 = +[_TtC9PassKitUI41PKPaymentTransactionDetailTitleHeaderView reuseIdentifier];
  [tableView registerClass:v4 forHeaderFooterViewReuseIdentifier:v5];

  [tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  [tableView setEstimatedRowHeight:50.0];
  v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [tableView setTableFooterView:v6];

  [(PKPaymentTransactionDetailViewController *)self _reloadTableHeaderView];
  view = [(PKPaymentTransactionDetailViewController *)self view];
  [view setAccessibilityIdentifier:*MEMORY[0x1E69B9D48]];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PKPaymentTransactionDetailViewController;
  [(PKPaymentTransactionDetailViewController *)&v6 viewWillAppear:appear];
  navigationItem = [(PKPaymentTransactionDetailViewController *)self navigationItem];
  if (_UISolariumEnabled())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [navigationItem setBackButtonDisplayMode:v5];
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

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PKPaymentTransactionDetailViewController;
  [(PKPaymentTransactionDetailViewController *)&v5 viewDidAppear:appear];
  if ([(PKPaymentTransaction *)self->_transaction transactionType]== 15)
  {
    v4 = [MEMORY[0x1E69B8540] identityViewDidAppearReportEvent:self->_transaction];
    [MEMORY[0x1E69B8540] subject:*MEMORY[0x1E69BB6F8] sendEvent:v4];
  }
}

- (void)_updatePeerPaymentTransactionStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  _peerPaymentController = [(PKPaymentTransactionDetailViewController *)self _peerPaymentController];
  serviceIdentifier = [(PKPaymentTransaction *)self->_transaction serviceIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__PKPaymentTransactionDetailViewController__updatePeerPaymentTransactionStatusWithCompletion___block_invoke;
  v8[3] = &unk_1E8027400;
  objc_copyWeak(&v10, &location);
  v8[4] = self;
  v7 = completionCopy;
  v9 = v7;
  [_peerPaymentController statusForPaymentIdentifier:serviceIdentifier withCompletion:v8];

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

- (void)_updatePeerPaymentPendingRequestForRequestToken:(id)token
{
  tokenCopy = token;
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
  v6 = tokenCopy;
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
  null = [MEMORY[0x1E695DFB0] null];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __92__PKPaymentTransactionDetailViewController__updatePeerPaymentPendingRequestForRequestToken___block_invoke_6;
  v9[3] = &unk_1E8019248;
  objc_copyWeak(&v10, &location);
  v8 = [v5 evaluateWithInput:null completion:v9];

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
  tableView = [(PKPaymentTransactionDetailViewController *)self tableView];
  [(PKPaymentTransactionDetailViewController *)self _updateTableHeaderHeight];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    headerView = self->_headerView;
    navigationItem = [(PKPaymentTransactionDetailViewController *)self navigationItem];
    v6 = navigationItem;
    if (headerView)
    {
      [tableView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
    }

    else
    {
      [navigationItem _setManualScrollEdgeAppearanceProgress:1.0];
    }
  }
}

- (void)_reloadTableHeaderView
{
  transactionType = [(PKPaymentTransaction *)self->_transaction transactionType];
  v4 = transactionType;
  switch(transactionType)
  {
    case 0:
      if ([(PKPaymentTransaction *)self->_transaction accountType]!= 1)
      {
        goto LABEL_2;
      }

      payments = [(PKPaymentTransaction *)self->_transaction payments];
      v23 = [payments count];

      if (v23)
      {
        goto LABEL_84;
      }

      transfers = [(PKPaymentTransaction *)self->_transaction transfers];
      if ([transfers count])
      {

        goto LABEL_124;
      }

      referenceIdentifier = [(PKPaymentTransaction *)self->_transaction referenceIdentifier];
      v73 = [referenceIdentifier length];

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
      merchant = [(PKPaymentTransaction *)self->_transaction merchant];
      v6 = merchant;
      if (self->_showRawName && ([merchant rawName], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v8 = v7;
        rawName = [v6 rawName];
      }

      else
      {
        rawName = [v6 displayName];
      }

      if (![rawName length])
      {
        v10 = PKLocalizedPaymentString(&cfstr_PaymentSummary_2.isa);

        rawName = v10;
      }

      displayLocation = [(PKPaymentTransaction *)self->_transaction displayLocation];
      v12 = [displayLocation length];

      if (v12)
      {
        v13 = MEMORY[0x1E696AEC0];
        displayLocation2 = [(PKPaymentTransaction *)self->_transaction displayLocation];
        v15 = [v13 stringWithFormat:@"%@, %@", rawName, displayLocation2];

        rawName = v15;
      }

      goto LABEL_127;
    case 2:
      transitModifiers = [(PKPaymentTransaction *)self->_transaction transitModifiers];
      transitType = [(PKPaymentTransaction *)self->_transaction transitType];
      v36 = transitType;
      v150 = v4;
      v37 = 0;
      if ((transitModifiers & 8) != 0)
      {
        if (transitType <= 256)
        {
          if (transitType > 3)
          {
            switch(transitType)
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
            switch(transitType)
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

        else if (transitType <= 259)
        {
          if (transitType == 257)
          {
            v38 = @"SHINKANSEN_TRANSACTION_LIST_FARE_ADJUSTMENT";
          }

          else if (transitType == 258)
          {
            v38 = @"MAGLEV_TRANSACTION_LIST_FARE_ADJUSTMENT";
          }

          else
          {
            v38 = @"TAXI_TRANSACTION_LIST_FARE_ADJUSTMENT";
          }
        }

        else if (transitType > 1024)
        {
          if (transitType == 1025)
          {
            v38 = @"GREEN_CAR_TRANSACTION_LIST_FARE_ADJUSTMENT";
          }

          else
          {
            if (transitType != 1026)
            {
              goto LABEL_221;
            }

            v38 = @"METRO_UPGRADE_TRANSACTION_LIST_FARE_ADJUSTMENT";
          }
        }

        else if (transitType == 260)
        {
          v38 = @"FERRY_TRANSACTION_LIST_FARE_ADJUSTMENT";
        }

        else
        {
          if (transitType != 261)
          {
            goto LABEL_221;
          }

          v38 = @"BIKE_TRANSACTION_LIST_FARE_ADJUSTMENT";
        }
      }

      else
      {
        if ((transitModifiers & 0x10) == 0)
        {
          goto LABEL_221;
        }

        if (transitType <= 256)
        {
          if (transitType > 3)
          {
            switch(transitType)
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
            switch(transitType)
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

        else if (transitType <= 259)
        {
          if (transitType == 257)
          {
            v38 = @"SHINKANSEN_TRANSACTION_LIST_FARE_REBATE";
          }

          else if (transitType == 258)
          {
            v38 = @"MAGLEV_TRANSACTION_LIST_FARE_REBATE";
          }

          else
          {
            v38 = @"TAXI_TRANSACTION_LIST_FARE_REBATE";
          }
        }

        else if (transitType > 1024)
        {
          if (transitType == 1025)
          {
            v38 = @"GREEN_CAR_TRANSACTION_LIST_FARE_REBATE";
          }

          else
          {
            if (transitType != 1026)
            {
              goto LABEL_221;
            }

            v38 = @"METRO_UPGRADE_TRANSACTION_LIST_FARE_REBATE";
          }
        }

        else if (transitType == 260)
        {
          v38 = @"FERRY_TRANSACTION_LIST_FARE_REBATE";
        }

        else
        {
          if (transitType != 261)
          {
            goto LABEL_221;
          }

          v38 = @"BIKE_TRANSACTION_LIST_FARE_REBATE";
        }
      }

      v37 = PKLocalizedPaymentString(&v38->isa);
LABEL_221:
      startStation = [(PKPaymentTransaction *)self->_transaction startStation];
      endStation = [(PKPaymentTransaction *)self->_transaction endStation];
      displayLocation3 = [(PKPaymentTransaction *)self->_transaction displayLocation];
      merchant2 = [(PKPaymentTransaction *)self->_transaction merchant];
      displayName = [merchant2 displayName];

      if (startStation)
      {
        v141 = endStation == 0;
      }

      else
      {
        v141 = 1;
      }

      v156 = displayLocation3;
      if (!v141)
      {
        v143 = displayName;
        organizationName = PKLocalizedPaymentString(&cfstr_TransitTransac.isa, &cfstr_12.isa, startStation, endStation);
        goto LABEL_235;
      }

      if (startStation | endStation)
      {
        v143 = displayName;
        if (startStation)
        {
          v142 = startStation;
        }

        else
        {
          v142 = endStation;
        }

        organizationName = v142;
LABEL_235:
        rawName = organizationName;
        if (v37)
        {
          goto LABEL_237;
        }

        goto LABEL_236;
      }

      if ([displayLocation3 length])
      {
        v143 = displayName;
        organizationName = displayLocation3;
        goto LABEL_235;
      }

      if ([displayName length])
      {
        v143 = displayName;
        organizationName = displayName;
        goto LABEL_235;
      }

      v143 = displayName;
      if (![(PKPaymentTransaction *)self->_transaction transactionSource]&& (v36 == 516 || v36 == 513))
      {
        organizationName = [(PKPaymentPass *)self->_paymentPass organizationName];
        goto LABEL_235;
      }

      rawName = 0;
      if (!v37)
      {
LABEL_236:
        v37 = PKPaymentTransactionTransitSubtypeToLocalizedTitle();
      }

LABEL_237:
      v145 = v37;
      v146 = v145;
      if (rawName)
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
            transactionDate = [(PKPaymentTransaction *)self->_transaction transactionDate];
            v28 = [(NSDateFormatter *)transactionDateFormatter stringFromDate:transactionDate];

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
        rawName = v145;
        v4 = v150;
      }

      v27 = 0;
      v154 = 1;
      goto LABEL_129;
    case 3:
      v149 = transactionType;
      peerPaymentMemo = [(PKPaymentTransaction *)self->_transaction peerPaymentMemo];
      recurringPeerPayment = [(PKPaymentTransaction *)self->_transaction recurringPeerPayment];
      memo = [recurringPeerPayment memo];
      v19 = memo;
      v154 = memo == 0;
      if (memo)
      {
        text = [memo text];

        v21 = PKPeerPaymentRecurringPaymentMemoImage(v19, 80.0, 80.0);
        peerPaymentMemo = text;
      }

      else
      {
        v21 = 0;
      }

      if ([peerPaymentMemo length])
      {
        rawName = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra.isa, &stru_1F3BD5BF0.isa, peerPaymentMemo);
        if (v19)
        {
          [recurringPeerPayment frequency];
          startDate = [recurringPeerPayment startDate];
          v51 = PKPeerPaymentRecurringPaymentFrequencyToLocalizedWeekdayString();

          if (v51)
          {
            v52 = PKLocalizedPeerPaymentRecurringString(&cfstr_RecurringPayme_12.isa, &stru_1F3BD6370.isa, rawName, v51);

            rawName = v52;
          }
        }
      }

      else
      {
        peerPaymentCounterpartHandle = [(PKPaymentTransaction *)self->_transaction peerPaymentCounterpartHandle];
        if ([(PKPaymentTransaction *)self->_transaction peerPaymentPaymentMode]== 2)
        {
          v54 = peerPaymentCounterpartHandle;
        }

        else
        {
          v66 = [(PKContactResolver *)self->_contactResolver hasCachedResultForHandle:peerPaymentCounterpartHandle];
          contactResolver = self->_contactResolver;
          if (v66)
          {
            v68 = [(PKContactResolver *)contactResolver contactForHandle:peerPaymentCounterpartHandle];
          }

          else
          {
            v158[0] = MEMORY[0x1E69E9820];
            v158[1] = 3221225472;
            v158[2] = __66__PKPaymentTransactionDetailViewController__reloadTableHeaderView__block_invoke;
            v158[3] = &unk_1E80178C0;
            v158[4] = self;
            [(PKContactResolver *)contactResolver contactForHandle:peerPaymentCounterpartHandle withCompletion:v158];
            v68 = 0;
          }

          v54 = [MEMORY[0x1E69B8F30] displayNameForCounterpartHandle:peerPaymentCounterpartHandle contact:v68];
        }

        v71 = [(PKPaymentTransaction *)self->_transaction peerPaymentType]- 1;
        if (v71 > 2)
        {
          rawName = 0;
        }

        else
        {
          rawName = PKLocalizedPeerPaymentString(&off_1E80276C0[v71]->isa, &stru_1F3BD5BF0.isa, v54);
        }
      }

      v28 = 0;
      v26 = 0;
      v4 = v149;
      v27 = v21;
      goto LABEL_129;
    case 5:
      transfers2 = [(PKPaymentTransaction *)self->_transaction transfers];
      if (![transfers2 count])
      {
        goto LABEL_49;
      }

      featureIdentifier = [(PKPaymentTransaction *)self->_transaction featureIdentifier];

      if (featureIdentifier != 5)
      {
        goto LABEL_50;
      }

      transfers3 = [(PKPaymentTransaction *)self->_transaction transfers];
      transfers2 = [transfers3 firstObject];

      externalAccount = [transfers2 externalAccount];
      type = [externalAccount type];

      if (type == 2 && [transfers2 type] == 3)
      {
        [(PKPaymentTransaction *)self->_transaction featureIdentifier];
        rawName = PKLocalizedFeatureString();

        if (rawName)
        {
          goto LABEL_127;
        }
      }

      else
      {
LABEL_49:
      }

LABEL_50:
      secondaryFundingSourceType = [(PKPaymentTransaction *)self->_transaction secondaryFundingSourceType];
      switch(secondaryFundingSourceType)
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
      rawName = 0;
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
      rawName = v24;
LABEL_127:
      v27 = 0;
      v28 = 0;
      v26 = 0;
LABEL_128:
      v154 = 1;
      goto LABEL_129;
    case 7:
      rawName = PKLocalizedTitleForTransactionWithAdjustment();
      v26 = PKLocalizedSubtitleForTransactionWithAdjustment();
      v27 = 0;
      v28 = 0;
      goto LABEL_128;
    case 8:
      merchantProvidedDescription = [(PKPaymentTransaction *)self->_transaction merchantProvidedDescription];
      v40 = merchantProvidedDescription;
      if (merchantProvidedDescription)
      {
        rawName = merchantProvidedDescription;
      }

      else
      {
        merchant3 = [(PKPaymentTransaction *)self->_transaction merchant];
        rawName = [merchant3 displayName];
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
      accountType = [(PKPaymentTransaction *)self->_transaction accountType];
      if (accountType == 3)
      {
        goto LABEL_83;
      }

      if (accountType == 2)
      {
        goto LABEL_84;
      }

      goto LABEL_54;
    case 15:
      merchant4 = [(PKPaymentTransaction *)self->_transaction merchant];
      v30 = merchant4;
      if (self->_showRawName && ([merchant4 rawName], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v32 = v31;
        rawName2 = [v30 rawName];
      }

      else
      {
        rawName2 = [v30 displayName];
      }

      v46 = [rawName2 length];
      if (v46)
      {
        v47 = rawName2;
      }

      else
      {
        releasedData = [(PKPaymentTransaction *)self->_transaction releasedData];
        [releasedData verificationType];

        v47 = PKTransactionReleasedDataVerificationTypeToLocalizedTitle();
      }

      rawName = v47;
      displayLocation4 = [(PKPaymentTransaction *)self->_transaction displayLocation];
      v57 = [displayLocation4 length];

      if (v57)
      {
        displayLocation5 = [(PKPaymentTransaction *)self->_transaction displayLocation];
LABEL_76:
        v60 = displayLocation5;
        goto LABEL_77;
      }

      if (v46)
      {
        releasedData2 = [(PKPaymentTransaction *)self->_transaction releasedData];
        [releasedData2 verificationType];

        displayLocation5 = PKTransactionReleasedDataVerificationTypeToLocalizedTitle();
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
        transactionDate2 = [(PKPaymentTransaction *)self->_transaction transactionDate];
        v64 = [(NSDateFormatter *)v62 stringFromDate:transactionDate2];

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
      isBankConnectTransaction = [(PKPaymentTransaction *)self->_transaction isBankConnectTransaction];
      transaction = self->_transaction;
      v155 = v27;
      if (isBankConnectTransaction)
      {
        merchant5 = [(PKPaymentTransaction *)transaction merchant];
        v77 = merchant5;
        if (self->_showRawName && ([merchant5 rawName], (v78 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v79 = v78;
          rawName3 = [v77 rawName];
        }

        else
        {
          rawName3 = [v77 displayName];
        }

        localizedTypeDescription = [(PKPaymentTransaction *)self->_transaction localizedTypeDescription];
        v152 = v26;
        v153 = v28;
        v151 = v77;
        if (![localizedTypeDescription length] || -[PKPaymentTransaction transactionType](self->_transaction, "transactionType") == 16)
        {
          v88 = PKLocalizedPaymentString(&cfstr_PaymentSummary_2.isa);

          localizedTypeDescription = v88;
        }

        v89 = self->_transactionDateFormatter;
        transactionDate3 = [(PKPaymentTransaction *)self->_transaction transactionDate];
        v28 = [(NSDateFormatter *)v89 stringFromDate:transactionDate3];

        v91 = [rawName3 length];
        if (v91)
        {
          v92 = rawName3;
        }

        else
        {
          v92 = localizedTypeDescription;
        }

        v93 = v92;

        displayLocation6 = [(PKPaymentTransaction *)self->_transaction displayLocation];
        v95 = [displayLocation6 length];

        if (v95)
        {
          v96 = MEMORY[0x1E696AEC0];
          [(PKPaymentTransaction *)self->_transaction displayLocation];
          v98 = v97 = v4;
          v99 = [v96 stringWithFormat:@"%@, %@", v93, v98];

          v4 = v97;
          rawName = v99;
        }

        else
        {
          rawName = v93;
        }

        transactionType2 = [(PKPaymentTransaction *)self->_transaction transactionType];
        v86 = v151;
        if (transactionType2 > 0x16)
        {
          v26 = v28;
          v101 = v152;
          v28 = v153;
        }

        else
        {
          v101 = v26;
          if (((1 << transactionType2) & 0x7EFF7D) != 0 && v91)
          {
            v26 = localizedTypeDescription;

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
          transactionDate4 = [(PKPaymentTransaction *)self->_transaction transactionDate];
          v26 = [(NSDateFormatter *)v81 stringFromDate:transactionDate4];
        }

        if (v4 == 10 && self->_showProductTimeZone)
        {
          productTimeZoneFormatter = self->_productTimeZoneFormatter;
          transactionDate5 = [(PKPaymentTransaction *)self->_transaction transactionDate];
          v85 = [(NSDateFormatter *)productTimeZoneFormatter stringFromDate:transactionDate5];

          v86 = v85;
          rawName3 = [(NSTimeZone *)self->_productTimeZone abbreviation];
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", v85, rawName3];
        }

        else
        {
          if (!self->_showTransactionTimeZone)
          {
            goto LABEL_159;
          }

          transactionLocalTimeDateFormatter = self->_transactionLocalTimeDateFormatter;
          transactionDate6 = [(PKPaymentTransaction *)self->_transaction transactionDate];
          v86 = [(NSDateFormatter *)transactionLocalTimeDateFormatter stringFromDate:transactionDate6];

          timeZone = [(PKPaymentTransaction *)self->_transaction timeZone];
          rawName3 = [timeZone abbreviation];

          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", v86, rawName3];
        }

        v28 = localizedTypeDescription = v28;
      }

LABEL_159:
      if ([(PKPaymentTransaction *)self->_transaction isBankConnectTransaction])
      {
        formattedBalanceAdjustmentAmount = [(PKPaymentTransaction *)self->_transaction formattedBalanceAdjustmentAmount];
        v106 = v155;
        goto LABEL_170;
      }

      v106 = v155;
      if (v4 == 2)
      {
        formattedBalanceAdjustmentAmountWithTransitDescriptors = [(PKPaymentTransactionDetailViewController *)self formattedBalanceAdjustmentAmountWithTransitDescriptors];
LABEL_167:
        formattedBalanceAdjustmentAmount = formattedBalanceAdjustmentAmountWithTransitDescriptors;
        goto LABEL_170;
      }

      if (v4 != 3)
      {
        formattedBalanceAdjustmentAmountWithTransitDescriptors = [(PKPaymentTransaction *)self->_transaction formattedBalanceAdjustmentAmount];
        goto LABEL_167;
      }

      formattedBalanceAdjustmentSubtotalAmount = [(PKPaymentTransaction *)self->_transaction formattedBalanceAdjustmentSubtotalAmount];
      v108 = formattedBalanceAdjustmentSubtotalAmount;
      if (formattedBalanceAdjustmentSubtotalAmount)
      {
        formattedBalanceAdjustmentAmount2 = formattedBalanceAdjustmentSubtotalAmount;
      }

      else
      {
        formattedBalanceAdjustmentAmount2 = [(PKPaymentTransaction *)self->_transaction formattedBalanceAdjustmentAmount];
      }

      formattedBalanceAdjustmentAmount = formattedBalanceAdjustmentAmount2;

LABEL_170:
      if (![formattedBalanceAdjustmentAmount length] && -[PKPaymentTransaction transactionType](self->_transaction, "transactionType") != 15)
      {
        headerView = self->_headerView;
        self->_headerView = 0;

        navigationItem = [(PKPaymentTransactionDetailViewController *)self navigationItem];
        [navigationItem setTitle:rawName];

        navigationController = [(PKPaymentTransactionDetailViewController *)self navigationController];
        navigationBar = [navigationController navigationBar];
        [navigationBar _setTitleOpacity:1.0];

        goto LABEL_190;
      }

      v111 = objc_alloc_init(PKPaymentTransactionDetailHeaderView);
      v112 = self->_headerView;
      self->_headerView = v111;

      [(PKPaymentTransactionDetailHeaderView *)self->_headerView setInBridge:self->_inBridge];
      [(PKPaymentTransactionDetailHeaderView *)self->_headerView setUseStroke:v154];
      merchant6 = [(PKPaymentTransaction *)self->_transaction merchant];
      rawName4 = [merchant6 rawName];

      if (rawName4)
      {
        v115 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTransactionHeaderTapRecognizer_];
        [(PKPaymentTransactionDetailHeaderView *)self->_headerView addGestureRecognizer:v115];
      }

      v116 = [formattedBalanceAdjustmentAmount length];
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
                releasedData3 = [(PKPaymentTransaction *)self->_transaction releasedData];
                application = [releasedData3 application];
                v127 = application != 0;
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
              merchant7 = [(PKPaymentTransaction *)self->_transaction merchant];
              v130 = iconGenerator;
              v131 = v124;
              v106 = [(PKPaymentTransactionIconGenerator *)v130 iconForMerchant:merchant7 size:0 ignoreLogoURL:0 requestType:v124 iconHandler:80.0, 80.0];
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

      [(PKPaymentTransactionDetailHeaderView *)v117 setAmountText:formattedBalanceAdjustmentAmount];
      [(PKPaymentTransactionDetailHeaderView *)self->_headerView setMerchantIcon:v106];
LABEL_189:
      [(PKPaymentTransactionDetailHeaderView *)self->_headerView setSubtitleText:rawName];
      [(PKPaymentTransactionDetailHeaderView *)self->_headerView setSecondarySubtitleText:v26];
      [(PKPaymentTransactionDetailHeaderView *)self->_headerView setTertiarySubtitleText:v28];
      navigationItem2 = [(PKPaymentTransactionDetailViewController *)self navigationItem];
      [navigationItem2 setTitle:0];

      navigationController = [(PKPaymentTransactionDetailViewController *)self navigationItem];
      [navigationController setLargeTitleDisplayMode:2];
LABEL_190:

      if ([(PKPaymentTransaction *)self->_transaction transactionType]== 15)
      {
        [(PKPaymentTransactionDetailViewController *)self _fetchDataReleaseTransactionConfiguration];
      }

      tableView = [(PKPaymentTransactionDetailViewController *)self tableView];
      [tableView setTableHeaderView:self->_headerView];

      view = [(PKPaymentTransactionDetailViewController *)self view];
      [view setNeedsLayout];

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
  amount = [(PKPaymentTransaction *)self->_transaction amount];
  transaction = self->_transaction;
  if (!amount)
  {
    amounts = [(PKPaymentTransaction *)transaction amounts];
    if (amounts)
    {
    }

    else
    {
      plans = [(PKPaymentTransaction *)self->_transaction plans];

      if (!plans)
      {
        goto LABEL_10;
      }
    }

    plans = [(PKPaymentTransaction *)self->_transaction formattedStringForMultipleAmountsForPass:self->_paymentPass];
    goto LABEL_10;
  }

  formattedBalanceAdjustmentSubtotalAmount = [(PKPaymentTransaction *)transaction formattedBalanceAdjustmentSubtotalAmount];
  v6 = formattedBalanceAdjustmentSubtotalAmount;
  if (formattedBalanceAdjustmentSubtotalAmount)
  {
    formattedBalanceAdjustmentAmount = formattedBalanceAdjustmentSubtotalAmount;
  }

  else
  {
    formattedBalanceAdjustmentAmount = [(PKPaymentTransaction *)self->_transaction formattedBalanceAdjustmentAmount];
  }

  plans = formattedBalanceAdjustmentAmount;

LABEL_10:
  if ([(PKPaymentTransaction *)self->_transaction isZeroTransaction])
  {
    plans2 = [(PKPaymentTransaction *)self->_transaction plans];
    v11 = [plans2 count];

    if (!v11)
    {
      zero = [MEMORY[0x1E696AB90] zero];

      amount = zero;
    }
  }

  transitType = [(PKPaymentTransaction *)self->_transaction transitType];
  zero2 = [MEMORY[0x1E696AB90] zero];
  v15 = [amount isEqualToNumber:zero2];

  if (!v15 || (([(PKPaymentTransaction *)self->_transaction enRoute]& 1) == 0 ? (([(PKPaymentTransaction *)self->_transaction transitModifiers]& 1) != 0 ? (v16 = @"TRANSIT_TRANSACTION_ANNOTATION_COMMUTE_DISCOUNT") : transitType != 1025 ? ([(PKPaymentTransaction *)self->_transaction transactionStatus]? (v16 = @"TRANSIT_TRANSACTION_FARE_FREE") : (v16 = @"TRANSIT_TRANSACTION_PENDING")) : (v16 = @"TRANSIT_TRANSACTION_REDEEMED")) : (v16 = @"TRANSIT_TRANSACTION_EN_ROUTE"), PKLocalizedPaymentString(&v16->isa), (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v17 = plans;
  }

  v18 = v17;

  return v17;
}

- (void)_updateTableHeaderHeight
{
  if (self->_headerView)
  {
    tableView = [(PKPaymentTransactionDetailViewController *)self tableView];
    [tableView bounds];
    v4 = v3;
    [(PKPaymentTransactionDetailHeaderView *)self->_headerView frame];
    v6 = v5;
    [tableView safeAreaInsets];
    [(PKPaymentTransactionDetailHeaderView *)self->_headerView sizeThatFits:v4 - v7 - v8, 1.79769313e308];
    if (v6 != v9)
    {
      v10 = v9;
      headerView = self->_headerView;
      [tableView _rectForTableHeaderView];
      [(PKPaymentTransactionDetailHeaderView *)headerView setFrame:?];
      [tableView _tableHeaderHeightDidChangeToHeight:v10];
    }
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  switch([(PKSectionTableViewController *)self sectionForIndex:section])
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
      awards = [(PKPaymentTransaction *)self->_transaction awards];
      v8 = [awards count];

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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  switch(-[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]))
  {
    case 0uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _questionCellForTableView:viewCopy atIndexPath:pathCopy];
      goto LABEL_40;
    case 1uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _disputeStatusCellForTableView:viewCopy atIndexPath:pathCopy];
      goto LABEL_40;
    case 2uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _expiredPhysicalCardCellForTableView:viewCopy atIndexPath:pathCopy];
      goto LABEL_40;
    case 3uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _amountDetailsCellForTableView:viewCopy atIndexPath:pathCopy];
      goto LABEL_40;
    case 4uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _fraudRiskCellForTableView:viewCopy];
      goto LABEL_40;
    case 5uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _releasedDataCellForTableView:viewCopy atIndexPath:pathCopy];
      goto LABEL_40;
    case 6uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _recognitionHintsCellForTableView:viewCopy atIndexPath:pathCopy];
      goto LABEL_40;
    case 7uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _merchantAddressCellForTableView:viewCopy];
      goto LABEL_40;
    case 8uLL:
      v9 = [viewCopy dequeueReusableCellWithIdentifier:@"PKPaymentTransactionDefaultCellReuseIdentifier"];
      textLabel = [v9 textLabel];
      merchant = [(PKPaymentTransaction *)self->_transaction merchant];
      originURL = [merchant originURL];
      absoluteString = [originURL absoluteString];
      [textLabel setText:absoluteString];

      textLabel2 = [v9 textLabel];
      [textLabel2 setTextColor:0];

      [v9 setAccessoryType:1];
      goto LABEL_41;
    case 9uLL:
      transactionSourceCollection = self->_transactionSourceCollection;
      v14 = self->_associatedTransaction;
      transactionSourceIdentifier = [(PKPaymentTransaction *)v14 transactionSourceIdentifier];
      v16 = [(PKTransactionSourceCollection *)transactionSourceCollection transactionSourceForTransactionSourceIdentifier:transactionSourceIdentifier];

      v17 = [(PKFamilyMemberCollection *)self->_familyCollection familyMemberForTransactionSource:v16];
      v9 = [viewCopy dequeueReusableCellWithIdentifier:@"PKPaymentTransactionTransactionCellReuseIdentifier" forIndexPath:pathCopy];
      [(PKPaymentTransactionCellController *)self->_transactionCellController configureCell:v9 forTransaction:v14 transactionSource:v16 familyMember:v17 account:self->_account detailStyle:0 deviceName:0 avatarViewDelegate:0];

      goto LABEL_41;
    case 10uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _associatedInstallmentCellForTableView:viewCopy atIndexPath:pathCopy];
      goto LABEL_40;
    case 11uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _tableViewCellPaymentOfferConfirmationRecordStatusForTableView:viewCopy atIndexPath:pathCopy];
      goto LABEL_40;
    case 12uLL:
      goto LABEL_7;
    case 13uLL:
      v9 = [(PKPaymentTransactionDetailViewController *)self _tableView:viewCopy actionButtonCellForSection:24];
      textLabel3 = [v9 textLabel];
      v19 = PKLocalizedPaymentOffersString(&cfstr_ViewPayLaterDe.isa);
      goto LABEL_25;
    case 14uLL:
      if ([(PKPaymentOfferConfirmationRecord *)self->_paymentOfferConfirmationRecord isSetupPaymentOfferAfterPurchase]&& ([(PKPaymentOfferConfirmationRecord *)self->_paymentOfferConfirmationRecord transactionDetailMessageTileDynamicContent], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
      {
LABEL_7:
        v8 = [(PKPaymentTransactionDetailViewController *)self _tableViewCellPaymentOfferConfirmationRecordFollowUpForTableView:viewCopy atIndexPath:pathCopy];
LABEL_40:
        v9 = v8;
      }

      else
      {
        programName = [(PKPaymentOfferInstallmentCriteria *)self->_issuerInstallmentCriteria programName];
        v29 = programName;
        if (programName)
        {
          v30 = programName;
        }

        else
        {
          v30 = PKLocalizedPaymentOffersString(&cfstr_SetupPaymentPl.isa);
        }

        textLabel3 = v30;

        v9 = [(PKPaymentTransactionDetailViewController *)self _tableView:viewCopy actionButtonCellForSection:14];
        textLabel4 = [v9 textLabel];
        v20 = textLabel4;
        v22 = textLabel3;
LABEL_49:
        [textLabel4 setText:v22];
      }

LABEL_41:
      if (self->_detailViewStyle == 2)
      {
        v31 = objc_alloc(MEMORY[0x1E69DD250]);
        v32 = [v31 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v33 = PKBridgeAppearanceGetAppearanceSpecifier();
        tableViewCellHighlightColor = [v33 tableViewCellHighlightColor];
        [v32 setBackgroundColor:tableViewCellHighlightColor];

        [v9 setSelectedBackgroundView:v32];
      }

      else
      {
        [v9 setSelectedBackgroundView:0];
      }

      return v9;
    case 15uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _tableViewCellPaymentRewardsRedemptionInfoForTableView:viewCopy atIndexPath:pathCopy];
      goto LABEL_40;
    case 16uLL:
      v9 = [(PKPaymentTransactionDetailViewController *)self _tableView:viewCopy actionButtonCellForSection:16];
      textLabel5 = [v9 textLabel];
      v11 = PKLocalizedPayWithPointsString(&cfstr_TransactionDet_5.isa);
      [textLabel5 setText:v11];

      [v9 setAccessibilityIdentifier:*MEMORY[0x1E69B9B50]];
      goto LABEL_41;
    case 17uLL:
      v8 = -[PKPaymentTransactionDetailViewController _tableView:cellForAwardAtIndex:](self, "_tableView:cellForAwardAtIndex:", viewCopy, [pathCopy row]);
      goto LABEL_40;
    case 18uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _merchantTokenManagementCellForTableView:viewCopy];
      goto LABEL_40;
    case 19uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _applePayBarcodeRowCellForTableView:viewCopy atIndexPath:pathCopy];
      goto LABEL_40;
    case 20uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _applePayReceiptRowCellForTableView:viewCopy atIndexPath:pathCopy];
      goto LABEL_40;
    case 21uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _applePayOrderRowCellForTableView:viewCopy atIndexPath:pathCopy];
      goto LABEL_40;
    case 22uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _tableViewCellChangeCategoryForTableView:viewCopy];
      goto LABEL_40;
    case 23uLL:
      v8 = -[PKPaymentTransactionDetailViewController _tableView:cellForActionAtIndex:](self, "_tableView:cellForActionAtIndex:", viewCopy, [pathCopy row]);
      goto LABEL_40;
    case 24uLL:
      v9 = [(PKPaymentTransactionDetailViewController *)self _tableView:viewCopy actionButtonCellForSection:24];
      textLabel3 = [v9 textLabel];
      v19 = PKLocalizedPaymentString(&cfstr_TransactionDet_27.isa);
LABEL_25:
      v20 = v19;
      textLabel4 = textLabel3;
      v22 = v20;
      goto LABEL_49;
    case 25uLL:
      if (self->_isFoundInMailLocked)
      {
        [(PKPaymentTransactionDetailViewController *)self _foundInMailLockedRowCellForTableView:viewCopy atIndexPath:pathCopy];
      }

      else
      {
        [(PKPaymentTransactionDetailViewController *)self _foundInMailRowCellForTableView:viewCopy atIndexPath:pathCopy];
      }
      v8 = ;
      goto LABEL_40;
    case 26uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _transactionIdentifierCellForTableView:viewCopy];
      goto LABEL_40;
    case 27uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _debugDetailCellForTableView:viewCopy atIndexPath:pathCopy];
      goto LABEL_40;
    case 28uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _tableViewCellForDeleteTransaction:viewCopy];
      goto LABEL_40;
    case 29uLL:
      v8 = [(PKPaymentTransactionDetailViewController *)self _tableViewCellForGroupedPaymentsSummary:viewCopy];
      goto LABEL_40;
    default:
      v9 = 0;
      goto LABEL_41;
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v19 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  v11 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]);
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
      [(PKPaymentTransactionDetailViewController *)self _tableView:viewCopy willDisplayAmountDetailsCell:cellCopy atIndexPath:pathCopy];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  switch(-[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]))
  {
    case 1uLL:
      if ([pathCopy row] == 1)
      {
        if (-[PKPaymentTransaction disputeStatus](self->_transaction, "disputeStatus") != 7 || (-[PKPaymentTransaction disputeStatusDetails](self->_transaction, "disputeStatusDetails"), v8 = objc_claimAutoreleasedReturnValue(), [v8 statusReasons], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "containsObject:", @"decisioned"), v9, v8, (v10 & 1) != 0))
        {
          _businessChatContextForUnavailableDisputeStatus = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/en-us/HT212270"];
          recurringPeerPayment = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:_businessChatContextForUnavailableDisputeStatus];
          [recurringPeerPayment setModalPresentationStyle:2];
          goto LABEL_12;
        }

        if (+[PKBusinessChatController deviceSupportsBusinessChat])
        {
          _businessChatContextForUnavailableDisputeStatus = [(PKPaymentTransactionDetailViewController *)self _businessChatContextForUnavailableDisputeStatus];
          [(PKPaymentTransactionDetailViewController *)self _openBusinessChatControllerForContext:_businessChatContextForUnavailableDisputeStatus];
          goto LABEL_51;
        }

        [(PKPaymentTransactionDetailViewController *)self _presentContactViewController];
      }

      goto LABEL_52;
    case 2uLL:
      if ([pathCopy row] == 1)
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
      [(PKPaymentTransactionDetailViewController *)self _tableView:viewCopy didSelectMechantAddressAtIndexPath:pathCopy];
      goto LABEL_52;
    case 8uLL:
      merchant = [(PKPaymentTransaction *)self->_transaction merchant];
      originURL = [merchant originURL];

      if (originURL)
      {
        scheme = [originURL scheme];

        if (!scheme)
        {
          v22 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:originURL resolvingAgainstBaseURL:0];
          [v22 setScheme:@"https"];
          v23 = [v22 URL];

          originURL = v23;
        }

        goto LABEL_23;
      }

      goto LABEL_52;
    case 9uLL:
      _businessChatContextForUnavailableDisputeStatus = self->_associatedTransaction;
      recurringPeerPayment = [(PKPaymentTransaction *)_businessChatContextForUnavailableDisputeStatus recurringPeerPayment];
      if (recurringPeerPayment)
      {
        [(PKPaymentTransactionDetailViewController *)self _presentRecurringPeerPayment:recurringPeerPayment];
      }

      else
      {
        LOBYTE(v32) = 0;
        v30 = [[PKPaymentTransactionDetailViewController alloc] initWithTransaction:_businessChatContextForUnavailableDisputeStatus transactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection account:self->_account accountUserCollection:self->_accountUserCollection bankConnectInstitution:self->_bankConnectInstitution physicalCards:self->_physicalCards contactResolver:self->_contactResolver peerPaymentWebService:self->_peerPaymentWebService paymentServiceDataProvider:self->_paymentServiceDataProvider detailViewStyle:self->_detailViewStyle allowTransactionLinks:v32];
        navigationController = [(PKPaymentTransactionDetailViewController *)self navigationController];
        if ([navigationController pk_settings_useStateDrivenNavigation])
        {
          [navigationController pk_settings_pushViewController:v30];
        }

        else
        {
          [navigationController pushViewController:v30 animated:1];
        }
      }

      goto LABEL_50;
    case 10uLL:
      _businessChatContextForUnavailableDisputeStatus = -[NSArray objectAtIndex:](self->_associatedInstallmentPlans, "objectAtIndex:", [pathCopy row]);
      [(PKPaymentTransactionDetailViewController *)self _showInstallmentDetailsForAssociatedInstallment:_businessChatContextForUnavailableDisputeStatus];
      goto LABEL_51;
    case 13uLL:
      originURL = [(PKPaymentTransaction *)self->_transaction issuerInstallmentManagementURL];
LABEL_23:
      PKOpenURL();
      goto LABEL_24;
    case 14uLL:
      [(PKPaymentTransactionDetailViewController *)self presentPaymentOfferInstallmentSelectionFlowFromIndexPath:pathCopy fromPushNotification:0 completion:0];
      goto LABEL_52;
    case 16uLL:
      if (PKHideCardBenefitRewards())
      {
        goto LABEL_52;
      }

      paymentRewardsRedemption = [(PKPaymentTransaction *)self->_transaction paymentRewardsRedemption];
      _businessChatContextForUnavailableDisputeStatus = [paymentRewardsRedemption statusLink];

      if (!_businessChatContextForUnavailableDisputeStatus)
      {
        _businessChatContextForUnavailableDisputeStatus = [(PKPaymentRewardsBalance *)self->_associatedPaymentRewardsBalance programURL];
      }

      PKOpenURL();
      goto LABEL_51;
    case 17uLL:
      v24 = [pathCopy row];
      awards = [(PKPaymentTransaction *)self->_transaction awards];
      v26 = [awards count];

      if (v24 >= v26)
      {
        _businessChatContextForUnavailableDisputeStatus = 0;
      }

      else
      {
        awards2 = [(PKPaymentTransaction *)self->_transaction awards];
        _businessChatContextForUnavailableDisputeStatus = [awards2 objectAtIndex:v24];
      }

      [(PKPaymentTransactionDetailViewController *)self _openOfferDetailsInIssuerApp:_businessChatContextForUnavailableDisputeStatus];
      goto LABEL_51;
    case 18uLL:
      [(PKPaymentTransactionDetailViewController *)self _didSelectMerchantTokenManagement];
      goto LABEL_52;
    case 20uLL:
      originURL = -[NSArray objectAtIndexedSubscript:](self->_applePayReceiptRowViewModels, "objectAtIndexedSubscript:", [pathCopy row]);
      [originURL didSelectCell];
LABEL_24:

      goto LABEL_52;
    case 21uLL:
      _businessChatContextForUnavailableDisputeStatus = -[NSArray objectAtIndexedSubscript:](self->_applePayOrderRowViewModels, "objectAtIndexedSubscript:", [pathCopy row]);
      FKOrderDetailsViewControllerProviderClass_0 = getFKOrderDetailsViewControllerProviderClass_0();
      orderTypeIdentifier = [(PKPaymentTransaction *)_businessChatContextForUnavailableDisputeStatus orderTypeIdentifier];
      orderIdentifier = [(PKPaymentTransaction *)_businessChatContextForUnavailableDisputeStatus orderIdentifier];
      fulfillmentIdentifier = [(PKPaymentTransaction *)_businessChatContextForUnavailableDisputeStatus fulfillmentIdentifier];
      recurringPeerPayment = [(objc_class *)FKOrderDetailsViewControllerProviderClass_0 makeViewControllerWithOrderTypeIdentifier:orderTypeIdentifier orderIdentifier:orderIdentifier fulfillmentIdentifier:fulfillmentIdentifier];

LABEL_12:
      [(PKPaymentTransactionDetailViewController *)self presentViewController:recurringPeerPayment animated:1 completion:0];
      goto LABEL_50;
    case 23uLL:
      [(PKPaymentTransactionDetailViewController *)self _tableView:viewCopy didSelectActionAtIndexPath:pathCopy];
      goto LABEL_52;
    case 24uLL:
      [(PKPaymentTransactionDetailViewController *)self _presentReportIssue];
      goto LABEL_52;
    case 25uLL:
      if (!self->_isFoundInMailLocked)
      {
        [(PKPaymentTransactionDetailViewController *)self _tableView:viewCopy didSelectFoundInMailItemAtIndexPath:pathCopy];
      }

      goto LABEL_52;
    case 27uLL:
      if ([pathCopy row] != 1)
      {
        goto LABEL_52;
      }

      v13 = [[PKTransactionDebugDetailsTabBarController alloc] initWithTransaction:self->_transaction transactionSourceCollection:self->_transactionSourceCollection];
LABEL_39:
      _businessChatContextForUnavailableDisputeStatus = v13;
      navigationController2 = [(PKPaymentTransactionDetailViewController *)self navigationController];
      if ([navigationController2 pk_settings_useStateDrivenNavigation])
      {
        [navigationController2 pk_settings_pushViewController:_businessChatContextForUnavailableDisputeStatus];
      }

      else
      {
        [navigationController2 pushViewController:_businessChatContextForUnavailableDisputeStatus animated:1];
      }

      goto LABEL_51;
    case 28uLL:
      if (self->_deleteOverrider)
      {
        [(PKPaymentTransactionDetailViewController *)self _performDeleteOverride];
      }

      else
      {
        _businessChatContextForUnavailableDisputeStatus = [(PKPaymentTransactionDetailViewController *)self tableView];
        recurringPeerPayment = [(PKPaymentTransaction *)_businessChatContextForUnavailableDisputeStatus cellForRowAtIndexPath:pathCopy];
        [(PKPaymentTransactionDetailViewController *)self _showDeleteConfirmationSheet:recurringPeerPayment];
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

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:section];
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

      recurringPeerPayment = [(PKPaymentTransaction *)self->_transaction recurringPeerPayment];

      if (recurringPeerPayment)
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
      awards = [(PKPaymentTransaction *)self->_transaction awards];
      v9 = [awards count];

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

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:section];
  usageDescription = 0;
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
          usageDescription = v7;
          goto LABEL_66;
        }

        goto LABEL_62;
      }

      v15 = +[PKBusinessChatController deviceSupportsBusinessChat];
      firstObject2 = [(PKPaymentPass *)self->_paymentPass localizedValueForFieldKey:*MEMORY[0x1E69BC100]];
      if (-[PKPaymentPass isAppleCardPass](self->_paymentPass, "isAppleCardPass") && !(v15 | !-[PKPaymentTransactionDetailViewController _canShowAppleCardSupportFooterInRecognitionHintsSection](self, "_canShowAppleCardSupportFooterInRecognitionHintsSection")) && [firstObject2 length])
      {
        v17 = PKLocalizedFeatureString();
LABEL_22:
        usageDescription = v17;
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
      organizationName = [(PKPaymentPass *)self->_paymentPass organizationName];
      v18 = PKLocalizedPaymentString(&cfstr_TransactionDet_24.isa, &stru_1F3BD5BF0.isa, organizationName);
LABEL_25:
      usageDescription = v18;
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
        organizationName = [(PKPaymentTransaction *)self->_transaction releasedData];
        application = [organizationName application];
        usageDescription = [application usageDescription];

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
      transfers = [(PKPaymentTransaction *)self->_transaction transfers];
      firstObject = [transfers firstObject];

      if (firstObject)
      {
        transactionType = [(PKPaymentTransaction *)self->_transaction transactionType];
        transfers2 = [(PKPaymentTransaction *)self->_transaction transfers];
        firstObject2 = [transfers2 firstObject];

        transactionStatus = [(PKPaymentTransaction *)self->_transaction transactionStatus];
        externalAccount = [firstObject2 externalAccount];
        if ([externalAccount type] == 1)
        {
          featureIdentifier = [(PKPaymentTransaction *)self->_transaction featureIdentifier];

          if (featureIdentifier == 5)
          {
            if (transactionType == 6)
            {
              if (transactionStatus > 1)
              {
                goto LABEL_64;
              }
            }

            else if (transactionType != 5 || (([firstObject2 fundsAreAvailable] & 1) != 0 || transactionStatus > 1) && transactionStatus != 1)
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
        usageDescription = 0;
        goto LABEL_65;
      }

      if ([(PKPaymentPass *)self->_paymentPass isAppleCardPass]&& [(PKPaymentTransactionDetailViewController *)self _canShowAppleCardSupportFooterInAmountDetailsSection])
      {
        v36 = +[PKBusinessChatController deviceSupportsBusinessChat];
        v37 = [(PKPaymentPass *)self->_paymentPass localizedValueForFieldKey:*MEMORY[0x1E69BC100]];
        organizationName = v37;
        if (v36 || ![v37 length])
        {
          usageDescription = 0;
          goto LABEL_26;
        }

        v18 = PKLocalizedFeatureString();
        goto LABEL_25;
      }

LABEL_62:
      usageDescription = 0;
      goto LABEL_66;
    }

    v19 = @"TRANSACTION_DETAIL_PENDING_REQUEST_FOOTER_TEXT";
LABEL_28:
    v7 = PKLocalizedPeerPaymentString(&v19->isa);
    goto LABEL_29;
  }

  transactionType2 = [(PKPaymentTransaction *)associatedTransaction transactionType];
  v12 = self->_associatedTransaction;
  if (transactionType2 == 1)
  {
    merchant = [(PKPaymentTransaction *)v12 merchant];
    displayName = [merchant displayName];
    usageDescription = PKLocalizedPaymentString(&cfstr_TransactionAss_1.isa, &stru_1F3BD5BF0.isa, displayName);
LABEL_50:

    goto LABEL_51;
  }

  transfers3 = [(PKPaymentTransaction *)v12 transfers];
  merchant = [transfers3 firstObject];

  if (merchant)
  {
    displayName = [merchant externalAccount];
    fundingDetails = [displayName fundingDetails];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      fundingDetails2 = [displayName fundingDetails];
      name = [fundingDetails2 name];
    }

    else
    {
      name = 0;
    }

    if ([name length])
    {
      [(PKPaymentTransaction *)self->_transaction featureIdentifier];
      usageDescription = PKLocalizedFeatureString();
    }

    else
    {
      usageDescription = 0;
    }

    goto LABEL_50;
  }

  if ([(PKPaymentTransaction *)self->_transaction featureIdentifier]== 2)
  {
    [(PKPaymentTransaction *)self->_transaction featureIdentifier];
    usageDescription = PKLocalizedFeatureString();
    merchant = 0;
  }

  else
  {
    merchant = 0;
    usageDescription = 0;
  }

LABEL_51:

  if ([(PKPaymentPass *)self->_paymentPass isAppleCardPass]&& [(PKPaymentTransactionDetailViewController *)self _canShowAppleCardSupportFooterInAmountDetailsSection])
  {
    v32 = +[PKBusinessChatController deviceSupportsBusinessChat];
    v33 = [(PKPaymentPass *)self->_paymentPass localizedValueForFieldKey:*MEMORY[0x1E69BC100]];
    organizationName = v33;
    if (!v32 && [v33 length])
    {
      v34 = PKLocalizedFeatureString();
      if ([usageDescription length])
      {
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n%@", usageDescription, v34];
      }

      else
      {
        v35 = v34;
      }

      v39 = v35;

      usageDescription = v39;
    }

    goto LABEL_26;
  }

LABEL_66:

  return usageDescription;
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
      footerHyperlinkColor = [v14 footerHyperlinkColor];
      [(PKFooterHyperlinkView *)v8 setLinkTextColor:footerHyperlinkColor];
    }
  }

  return v8;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if ([(PKSectionTableViewController *)self sectionForIndex:section]== 7 && [(PKCoarseLocationMonitor *)self->_coarseLocationMonitor coarseLocationEnabled])
  {
    _coarseLocationHyperlinkFooterView = [(PKPaymentTransactionDetailViewController *)self _coarseLocationHyperlinkFooterView];
  }

  else
  {
    v8 = [(PKPaymentTransactionDetailViewController *)self tableView:viewCopy titleForFooterInSection:section];
    if ([v8 length])
    {
      _coarseLocationHyperlinkFooterView = 0;
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x1E69DD250]);
      _coarseLocationHyperlinkFooterView = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    }
  }

  return _coarseLocationHyperlinkFooterView;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if ([(PKSectionTableViewController *)self sectionForIndex:section]== 7 && [(PKCoarseLocationMonitor *)self->_coarseLocationMonitor coarseLocationEnabled])
  {
    v7 = *MEMORY[0x1E69DE3D0];
  }

  else
  {
    v8 = [(PKPaymentTransactionDetailViewController *)self tableView:viewCopy titleForFooterInSection:section];
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

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(PKPaymentTransactionDetailViewController *)self tableView:viewCopy titleForHeaderInSection:section];
  if ([v7 length])
  {
    if ([(PKSectionTableViewController *)self sectionForIndex:section]== 25)
    {
      v8 = +[_TtC9PassKitUI41PKPaymentTransactionDetailTitleHeaderView reuseIdentifier];
      v9 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v8];
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

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v4 = [(PKPaymentTransactionDetailViewController *)self tableView:view titleForHeaderInSection:section];
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

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  issuerAppDeepLinkingUIEnabled = 0;
  switch(-[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]))
  {
    case 1uLL:
    case 2uLL:
      issuerAppDeepLinkingUIEnabled = [pathCopy row] == 1;
      break;
    case 7uLL:
      merchant = [(PKPaymentTransaction *)self->_transaction merchant];
      if ([merchant shouldIgnoreMapsMatches])
      {
        issuerAppDeepLinkingUIEnabled = 0;
      }

      else
      {
        mapsMerchant = [merchant mapsMerchant];
        issuerAppDeepLinkingUIEnabled = [mapsMerchant identifier] != 0;
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
      issuerAppDeepLinkingUIEnabled = -[PKPaymentTransactionDetailViewController _shouldHighlightAction:](self, "_shouldHighlightAction:", -[PKPaymentTransactionDetailViewController _actionRowForRowIndex:](self, "_actionRowForRowIndex:", [pathCopy row]));
      break;
    case 25uLL:
      if (self->_isFoundInMailLocked)
      {
        issuerAppDeepLinkingUIEnabled = 0;
      }

      else
      {
        merchant = -[NSArray objectAtIndexedSubscript:](self->_foundInMailRowViewModels, "objectAtIndexedSubscript:", [pathCopy row]);
        deeplinkURL = [merchant deeplinkURL];
        issuerAppDeepLinkingUIEnabled = deeplinkURL != 0;

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

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  if (-[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [path section]) == 26)
  {
    contextMenuConfigurationForTransactionIdentifier = [(PKPaymentTransactionDetailViewController *)self contextMenuConfigurationForTransactionIdentifier];
  }

  else
  {
    contextMenuConfigurationForTransactionIdentifier = 0;
  }

  return contextMenuConfigurationForTransactionIdentifier;
}

- (id)contextMenuConfigurationForTransactionIdentifier
{
  _transactionIdentifierDescription = [(PKPaymentTransactionDetailViewController *)self _transactionIdentifierDescription];
  v4 = [(PKPaymentTransactionDetailViewController *)self contextMenuConfigurationForCopyingText:_transactionIdentifierDescription];

  return v4;
}

- (id)contextMenuConfigurationForCopyingText:(id)text
{
  textCopy = text;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKPaymentTransactionDetailViewController_contextMenuConfigurationForCopyingText___block_invoke;
  aBlock[3] = &unk_1E8016090;
  v9 = textCopy;
  v4 = textCopy;
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

- (id)_explanationTextForPaymentTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = transactionCopy;
  if (!transactionCopy || [transactionCopy transactionType] != 10)
  {
    v8 = 0;
    goto LABEL_42;
  }

  transactionStatus = [v5 transactionStatus];
  v7 = transactionStatus;
  if (transactionStatus)
  {
    if (transactionStatus == 5)
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

  payments = [v5 payments];
  firstObject = [payments firstObject];

  expectedCreditReleaseDate = [firstObject expectedCreditReleaseDate];
  creditDetails = [(PKAccount *)self->_account creditDetails];
  accountSummary = [creditDetails accountSummary];
  availableCredit = [accountSummary availableCredit];

  if (availableCredit)
  {
    zero = [MEMORY[0x1E696AB90] zero];
    v16 = [zero compare:availableCredit] == -1 || -[PKAccount state](self->_account, "state") == 1;
  }

  else
  {
    v16 = [(PKAccount *)self->_account state]== 1;
  }

  if (v7 != 2 && v16)
  {
    if (!expectedCreditReleaseDate || ([(PKAccount *)self->_account hideBillPaymentHoldTime]& 1) != 0)
    {
      fundingSource = [firstObject fundingSource];
      type = [fundingSource type];

      if (type != 1)
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

    transactionDate = [v5 transactionDate];
    v21 = PKDateRangeNumberOfIntervalsForUnit();

    if (v21 >= 1)
    {
      v22 = [MEMORY[0x1E695DF00] now];
      if ([v22 compare:expectedCreditReleaseDate] != -1)
      {
        v23 = [(NSDateFormatter *)self->_monthDayYearLocalFormatter stringFromDate:expectedCreditReleaseDate];
        PKDynamicLocalizedAppleCardString(&cfstr_TransactionDet_107.isa, &cfstr_1_0.isa, v23);
        v19 = LABEL_25:;

        goto LABEL_36;
      }

      v24 = PKDateRangeNumberOfIntervalsForUnit();
      if (v24)
      {
        if (v24 <= 5)
        {
          v23 = [(NSDateFormatter *)self->_monthDayLocalFormatter stringFromDate:expectedCreditReleaseDate];
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

- (void)_updateWithTransactionReceipt:(id)receipt
{
  v18 = *MEMORY[0x1E69E9840];
  receiptCopy = receipt;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_associatedReceipt, receipt);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    lineItems = [receiptCopy lineItems];
    v7 = [lineItems countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(lineItems);
          }

          image = [*(*(&v13 + 1) + 8 * v10) image];

          if (image)
          {
            v12 = 0;
            goto LABEL_12;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [lineItems countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)_updateWithTransactionTags:(id)tags
{
  tagsCopy = tags;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_transactionTags, tags);
    [(PKSectionTableViewController *)self updateSectionVisibilityAndReloadIfNecessaryForSection:6];
  }
}

- (void)_performPeerPaymentAction:(id)action withCompletion:(id)completion
{
  actionCopy = action;
  completionCopy = completion;
  serviceIdentifier = [(PKPaymentTransaction *)self->_transaction serviceIdentifier];
  _peerPaymentController = [(PKPaymentTransactionDetailViewController *)self _peerPaymentController];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__PKPaymentTransactionDetailViewController__performPeerPaymentAction_withCompletion___block_invoke;
  v13[3] = &unk_1E8027470;
  objc_copyWeak(&v17, &location);
  v10 = actionCopy;
  v14 = v10;
  v11 = _peerPaymentController;
  v15 = v11;
  v12 = completionCopy;
  v16 = v12;
  [v11 performAction:v10 withPaymentIdentifier:serviceIdentifier completion:v13];

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

- (void)_handlePeerPaymentDisplayableError:(id)error withPeerPaymentController:(id)controller
{
  errorCopy = error;
  controllerCopy = controller;
  if (errorCopy)
  {
    v8 = [MEMORY[0x1E69B8F28] proposedResolutionForError:errorCopy];
    switch(v8)
    {
      case 1:
        v11 = [MEMORY[0x1E69B8F28] displayableErrorForError:errorCopy];

        v12 = PKAlertForDisplayableErrorWithHandlers(v11, 0, &__block_literal_global_685, 0);
        [(PKPaymentTransactionDetailViewController *)self presentViewController:v12 animated:1 completion:0];

        errorCopy = v11;
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
          [controllerCopy handleIdentityVerificationWithError:errorCopy completion:&__block_literal_global_682];
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

        [controllerCopy handleTermsAcceptanceRequiredWithError:errorCopy completion:&__block_literal_global_679];
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
  isMerchantTokenTransaction = [(PKPaymentTransaction *)self->_transaction isMerchantTokenTransaction];
  if ([isMerchantTokenTransaction BOOLValue])
  {
    merchantTokenResponse = self->_merchantTokenResponse;

    if (!merchantTokenResponse)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69B9150]);
      paymentPass = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
      [v4 setPass:paymentPass];

      panIdentifier = [(PKPaymentTransaction *)self->_transaction panIdentifier];
      [v4 setMerchantTokenId:panIdentifier];

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
  paymentHash = [(PKPaymentTransaction *)self->_transaction paymentHash];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __79__PKPaymentTransactionDetailViewController__fetchAllApplePayOrderRowViewModels__block_invoke;
  v9 = &unk_1E80274C0;
  objc_copyWeak(&v10, &location);
  v4 = _Block_copy(&v6);
  v5 = objc_alloc_init(getFKApplePayOrderFetchControllerClass());
  [v5 fetchAllRowViewModelsForTransactionWithIdentifier:paymentHash completionHandler:{v4, v6, v7, v8, v9}];

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
    accountIdentifier = [(PKPaymentTransaction *)self->_transaction accountIdentifier];
  }

  else
  {
    paymentPass = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
    accountIdentifier = [paymentPass primaryAccountIdentifier];
  }

  if (v4)
  {
    v7 = accountIdentifier == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [(FKInsightsFetchController *)self->_insightsFetchController fetchRowViewModelsForTransactionWithIdentifier:v4 primaryAccountIdentifier:accountIdentifier completionHandler:v3];
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
    accountIdentifier = [(PKPaymentTransaction *)self->_transaction accountIdentifier];
  }

  else
  {
    paymentPass = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
    accountIdentifier = [paymentPass primaryAccountIdentifier];
  }

  if (v4)
  {
    v7 = accountIdentifier == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [(FKInsightsFetchController *)self->_insightsFetchController pruneRowViewModelsForTransactionWithIdentifier:v4 primaryAccountIdentifier:accountIdentifier completionHandler:v3];
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
  accountIdentifier = [(PKPaymentTransaction *)self->_transaction accountIdentifier];
  if (accountIdentifier)
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
  organizationName = [(PKPaymentPass *)self->_paymentPass organizationName];
  v5 = organizationName;
  if (v3)
  {
    v6 = PKLocalizedPaymentString(&cfstr_ContactIssuer.isa, &stru_1F3BD5BF0.isa, organizationName);
    v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v6 message:0 preferredStyle:0];
    v8 = [MEMORY[0x1E696AC88] indexPathForRow:1 inSection:{-[PKSectionTableViewController indexForSection:](self, "indexForSection:", 1)}];
    tableView = [(PKPaymentTransactionDetailViewController *)self tableView];
    v10 = [tableView cellForRowAtIndexPath:v8];

    popoverPresentationController = [v7 popoverPresentationController];
    [popoverPresentationController setSourceView:v10];

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
      bankConnectMetadata = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
      digitalServicingURL = [bankConnectMetadata digitalServicingURL];

      if (digitalServicingURL)
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

- (void)scrollViewDidScroll:(id)scroll
{
  view = [(PKPaymentTransactionDetailViewController *)self view];
  [view setNeedsLayout];
}

- (void)contactsDidChangeForContactResolver:(id)resolver
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

- (id)_associatedInstallmentCellForTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v32 = viewCopy;
  v30 = [viewCopy dequeueReusableCellWithIdentifier:@"PKPaymentTransactionTransactionCellReuseIdentifier" forIndexPath:pathCopy];
  transactionView = [v30 transactionView];
  v31 = pathCopy;
  v9 = [pathCopy row];
  v29 = [(NSArray *)self->_associatedInstallmentPlans objectAtIndex:v9];
  product = [v29 product];
  serialNumber = [product serialNumber];
  v12 = PKSerialNumber();
  v13 = serialNumber;
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
      model = [product model];
      model2 = 0;
      goto LABEL_12;
    }

    v17 = [v13 caseInsensitiveCompare:v14];

    if (v17)
    {
      goto LABEL_10;
    }
  }

  model = PKDeviceName();
  model2 = [product model];
LABEL_12:
  v20 = [product iconURLForScale:0 suffix:PKUIScreenScale()];
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

  mEMORY[0x1E69B8A08] = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
  v22 = [mEMORY[0x1E69B8A08] cachedDataForURL:v20];
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
    [mEMORY[0x1E69B8A08] downloadFromUrl:v20 completionHandler:v33];

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
  [transactionView setPrimaryString:model];
  [transactionView setSecondaryString:model2];
  [transactionView setShowsDisclosureView:1];
  [transactionView setPrimaryImage:v24];
  [transactionView setStrokeImage:0];

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

- (void)_showInstallmentDetailsForAssociatedInstallment:(id)installment
{
  if (installment)
  {
    installmentCopy = installment;
    v6 = [[PKTransactionHistoryViewController alloc] initWithInstallmentPlan:installmentCopy transactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection account:self->_account accountUserCollection:self->_accountUserCollection physicalCards:self->_physicalCards];

    navigationController = [(PKPaymentTransactionDetailViewController *)self navigationController];
    if ([navigationController pk_settings_useStateDrivenNavigation])
    {
      [navigationController pk_settings_pushViewController:v6];
    }

    else
    {
      [navigationController pushViewController:v6 animated:1];
    }
  }
}

- (BOOL)_actionRowIsEnabled:(unint64_t)enabled
{
  transactionSourceCollection = self->_transactionSourceCollection;
  transactionSourceIdentifier = [(PKPaymentTransaction *)self->_transaction transactionSourceIdentifier];
  v7 = [(PKTransactionSourceCollection *)transactionSourceCollection transactionSourceForTransactionSourceIdentifier:transactionSourceIdentifier];

  switch(enabled)
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
      peerPaymentCounterpartHandle = [(PKPaymentTransaction *)self->_transaction peerPaymentCounterpartHandle];
      if (![peerPaymentCounterpartHandle length] || objc_msgSend(v7, "type"))
      {
        goto LABEL_74;
      }

      recurringPeerPayment = [(PKPaymentTransaction *)self->_transaction recurringPeerPayment];
      if (recurringPeerPayment || [(PKPaymentTransaction *)self->_transaction peerPaymentPaymentMode]== 2)
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

      actions = [(PKPeerPaymentStatusResponse *)self->_peerPaymentStatusResponse actions];
      if (![actions containsObject:*MEMORY[0x1E69BC308]])
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

      actions2 = [(PKPeerPaymentStatusResponse *)self->_peerPaymentStatusResponse actions];
      peerPaymentCounterpartHandle = actions2;
      v14 = MEMORY[0x1E69BC310];
      goto LABEL_30;
    case 5uLL:
      if ([(PKPaymentTransaction *)self->_transaction transactionType]!= 3)
      {
        goto LABEL_72;
      }

      actions2 = [(PKPeerPaymentStatusResponse *)self->_peerPaymentStatusResponse actions];
      peerPaymentCounterpartHandle = actions2;
      v14 = MEMORY[0x1E69BC318];
LABEL_30:
      if (![actions2 containsObject:*v14] || objc_msgSend(v7, "type"))
      {
        goto LABEL_74;
      }

      issuerAppDeepLinkingUIEnabled = [(PKPaymentTransaction *)self->_transaction peerPaymentPaymentMode]!= 2;
      break;
    case 6uLL:
      recurringPeerPayment2 = [(PKPaymentTransaction *)self->_transaction recurringPeerPayment];
      status = [recurringPeerPayment2 status];

      transactionType = [(PKPaymentTransaction *)self->_transaction transactionType];
      peerPaymentType = [(PKPaymentTransaction *)self->_transaction peerPaymentType];
      accountType = [(PKPaymentTransaction *)self->_transaction accountType];
      v24 = transactionType == 6 || peerPaymentType == 1;
      if (accountType != 1 || status == 0 || !v24)
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

      peerPaymentCounterpartHandle = [(PKPaymentTransaction *)self->_transaction payments];
      recurringPeerPayment = [peerPaymentCounterpartHandle firstObject];
      if (![recurringPeerPayment isCurrentlyCancellable] || -[PKPaymentTransaction transactionStatus](self->_transaction, "transactionStatus") == 5)
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
        businessChatIdentifier = [(PKPaymentPass *)self->_paymentPass businessChatIdentifier];
        v32 = businessChatIdentifier != 0;
      }

      else
      {
        v32 = 0;
      }

      if (![PKReportIssueViewController canReportIssueForTransaction:self->_transaction bankConnectInstitution:self->_bankConnectInstitution paymentPass:self->_paymentPass]&& !v32)
      {
        goto LABEL_72;
      }

      peerPaymentCounterpartHandle = [(PKPaymentTransaction *)self->_transaction questions];
      if ([peerPaymentCounterpartHandle count])
      {
        goto LABEL_74;
      }

      issuerAppDeepLinkingUIEnabled = ![(PKPaymentTransactionDetailViewController *)self _showSeparateReportMerchantInfoButton];
      break;
    case 9uLL:
      actions = [(PKPaymentTransaction *)self->_transaction questions];
      issuerAppDeepLinkingUIEnabled = [actions count] != 0;
      goto LABEL_37;
    case 0xAuLL:
      bankConnectMetadata = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
      peerPaymentCounterpartHandle = [bankConnectMetadata digitalServicingURL];

      if ([(PKPaymentTransaction *)self->_transaction isBankConnectTransaction])
      {
        v28 = peerPaymentCounterpartHandle == 0;
      }

      else
      {
        v28 = 1;
      }

      if (v28 || ([MEMORY[0x1E69DC668] sharedApplication], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "canOpenURL:", peerPaymentCounterpartHandle), v29, (v30 & 1) == 0))
      {
        v33 = +[PKBusinessChatController deviceSupportsBusinessChat];
        isAppleCardPass = [(PKPaymentPass *)self->_paymentPass isAppleCardPass];
        transactionType2 = [(PKPaymentTransaction *)self->_transaction transactionType];
        if ([(PKPaymentTransactionDetailViewController *)self _showSeparateReportMerchantInfoButton])
        {
          issuerAppDeepLinkingUIEnabled = 0;
          if ([(PKPaymentTransactionDetailViewController *)self _hasIssuerPhoneNumber]&& !transactionType2)
          {
            if (([(PKPaymentPass *)self->_paymentPass isTransitPass]& 1) != 0)
            {
              issuerAppDeepLinkingUIEnabled = 0;
            }

            else
            {
              issuerAppDeepLinkingUIEnabled = isAppleCardPass ^ 1 | v33;
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
      bankConnectMetadata2 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
      postInstallmentURL = [bankConnectMetadata2 postInstallmentURL];
      goto LABEL_34;
    case 0xEuLL:
      bankConnectMetadata2 = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
      postInstallmentURL = [bankConnectMetadata2 redeemRewardsURL];
LABEL_34:
      actions = postInstallmentURL;

      if (actions)
      {
        mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
        issuerAppDeepLinkingUIEnabled = [mEMORY[0x1E69DC668] canOpenURL:actions];
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

- (unint64_t)_actionRowForRowIndex:(int64_t)index
{
  v5 = 0;
  v6 = 0;
  do
  {
    if ([(PKPaymentTransactionDetailViewController *)self _actionRowIsEnabled:v5])
    {
      if (v6 == index)
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

- (int64_t)_rowIndexForActionRow:(unint64_t)row
{
  v5 = 0;
  v6 = 0;
  do
  {
    if ([(PKPaymentTransactionDetailViewController *)self _actionRowIsEnabled:v5])
    {
      if (row == v5)
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

- (id)_tableView:(id)view cellForAwardAtIndex:(int64_t)index
{
  transaction = self->_transaction;
  viewCopy = view;
  awards = [(PKPaymentTransaction *)transaction awards];
  if ([awards count] == index)
  {
    v9 = [(PKPaymentTransactionDetailViewController *)self _tableView:viewCopy actionButtonCellForSection:17];

    organizationName = [(PKPaymentPass *)self->_paymentPass organizationName];
    v11 = PKLocalizedAquamanString(&cfstr_ViewOfferDetai.isa, &stru_1F3BD5BF0.isa, organizationName);

    textLabel = [v9 textLabel];
    [textLabel setText:v11];
  }

  else
  {
    v9 = [(PKPaymentTransactionDetailViewController *)self _awardCellForTableView:viewCopy];

    awards2 = [(PKPaymentTransaction *)self->_transaction awards];
    v11 = [awards2 objectAtIndex:index];

    textLabel = [v11 awardDescription];
    if ([v11 type] == 1)
    {
      amount = [v11 amount];
      v14Amount = [amount amount];
      formattedStringValue = [v14Amount formattedStringValue];
    }

    else
    {
      formattedStringValue = [v11 localizedAmount];
    }

    v27 = PKLocalizedAquamanString(&cfstr_Expired.isa);
    claimExpiryDate = [v11 claimExpiryDate];
    redeemExpiryDate = [v11 redeemExpiryDate];
    v28 = objc_alloc_init(MEMORY[0x1E695DF00]);
    v17 = PKLocalizedAquamanString(&cfstr_TransactionDet_108.isa, &stru_1F3BD6370.isa, textLabel, formattedStringValue);
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    textLabel2 = [v9 textLabel];
    detailTextLabel = [v9 detailTextLabel];
    [textLabel2 setText:v17];
    if (([v11 claimExpired] & 1) == 0 && (objc_msgSend(v11, "redeemExpired") & 1) == 0)
    {
      v26 = formattedStringValue;
      if (claimExpiryDate)
      {
        v21 = [v28 earlierDate:claimExpiryDate];

        v22 = v21 == claimExpiryDate;
        formattedStringValue = v26;
        if (v22)
        {
          [v11 setClaimExpired:1];
        }
      }

      if (redeemExpiryDate)
      {
        v23 = [v28 earlierDate:redeemExpiryDate];

        v22 = v23 == redeemExpiryDate;
        formattedStringValue = v26;
        if (v22)
        {
          [v11 setRedeemExpired:1];
        }
      }
    }

    if (([v11 claimExpired] & 1) != 0 || objc_msgSend(v11, "redeemExpired"))
    {
      v24 = v27;
      [detailTextLabel setText:v27];
      [textLabel2 setTextColor:tertiaryLabelColor];
      [detailTextLabel setTextColor:tertiaryLabelColor];
    }

    else
    {
      [v9 setAccessoryType:self->_issuerAppDeepLinkingUIEnabled];
      v24 = v27;
    }
  }

  return v9;
}

- (id)_tableView:(id)view cellForActionAtIndex:(int64_t)index
{
  viewCopy = view;
  switch([(PKPaymentTransactionDetailViewController *)self _actionRowForRowIndex:index])
  {
    case 0uLL:
      organizationName = [(PKPaymentPass *)self->_paymentPass organizationName];
      awards = [(PKPaymentTransaction *)self->_transaction awards];
      if ([awards count])
      {
        v9 = @"TRANSACTION_DETAIL_ACTION_OPEN_TRANSACTION_DETAILS_IN_ISSUER_APP_FORMAT";
      }

      else
      {
        v9 = @"TRANSACTION_DETAIL_ACTION_VIEW_IN_ISSUER_APP_FORMAT";
      }

      v10 = PKLocalizedPeerPaymentString(&v9->isa, &stru_1F3BD5BF0.isa, organizationName);

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
      recurringPeerPayment = [(PKPaymentTransaction *)self->_transaction recurringPeerPayment];

      v17 = @"TRANSACTION_DETAIL_ACTION_CANCEL_PENDING";
      if (!recurringPeerPayment)
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
      recurringPeerPayment2 = [(PKPaymentTransaction *)self->_transaction recurringPeerPayment];
      type = [recurringPeerPayment2 type];
      if (type == 1)
      {
        v24 = @"TRANSACTION_DETAIL_ACTION_VIEW_RECURRING_PAYMENT";
        goto LABEL_41;
      }

      if (type == 3)
      {
        v24 = @"TRANSACTION_DETAIL_ACTION_VIEW_AUTO_RELOAD";
LABEL_41:
        v10 = PKLocalizedPeerPaymentRecurringString(&v24->isa);
        goto LABEL_43;
      }

      v10 = 0;
LABEL_43:

      v25 = [viewCopy dequeueReusableCellWithIdentifier:@"PKPaymentTransactionConfigurationCellReuseIdentifier"];
      defaultContentConfiguration = [v25 defaultContentConfiguration];
      [defaultContentConfiguration setText:v10];
      [defaultContentConfiguration setSecondaryText:0];
      [v25 setAccessoryType:1];
      [v25 setContentConfiguration:defaultContentConfiguration];
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
      organizationName = [(PKPaymentPass *)self->_paymentPass organizationName];
      v10 = PKLocalizedPaymentString(&cfstr_TransactionDet_120.isa, &stru_1F3BD5BF0.isa, organizationName);
LABEL_27:

      goto LABEL_31;
    case 11uLL:
      releasedData = [(PKPaymentTransaction *)self->_transaction releasedData];
      merchantNameOverride = [releasedData merchantNameOverride];
      v14 = merchantNameOverride;
      if (merchantNameOverride)
      {
        name = merchantNameOverride;
      }

      else
      {
        merchant = [(PKPaymentTransaction *)self->_transaction merchant];
        name = [merchant name];
      }

      v10 = PKLocalizedIdentityString(&cfstr_TransactionDet_121.isa, &stru_1F3BD5BF0.isa, name);

      goto LABEL_31;
    case 12uLL:
      v19 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_122.isa);
LABEL_17:
      v10 = v19;
      defaultContentConfiguration = [MEMORY[0x1E69DC888] systemRedColor];
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
      defaultContentConfiguration = 0;
      goto LABEL_32;
    default:
      defaultContentConfiguration = 0;
      v10 = 0;
LABEL_32:
      v25 = [(PKPaymentTransactionDetailViewController *)self _tableView:viewCopy actionButtonCellForSection:23];
      textLabel = [v25 textLabel];
      [textLabel setText:v10];
      if (defaultContentConfiguration)
      {
        [textLabel setTextColor:defaultContentConfiguration];
      }

      goto LABEL_35;
  }
}

- (id)_tableView:(id)view actionButtonCellForSection:(unint64_t)section
{
  v5 = [view dequeueReusableCellWithIdentifier:{@"PKPaymentTransactionDefaultCellReuseIdentifier", section}];
  textLabel = [v5 textLabel];
  if (self->_inBridge)
  {
    BPSBridgeTintColor();
  }

  else
  {
    [MEMORY[0x1E69DC888] linkColor];
  }
  v7 = ;
  [textLabel setTextColor:v7];

  [textLabel setNumberOfLines:0];
  [v5 setAccessoryType:0];
  [v5 setSeparatorInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B93D0]];

  return v5;
}

- (id)_tableViewCellForDeleteTransaction:(id)transaction
{
  v4 = [(PKPaymentTransactionDetailViewController *)self _tableView:transaction actionButtonCellForSection:23];
  textLabel = [v4 textLabel];
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
  [textLabel setText:v7];
  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  [textLabel setTextColor:systemRedColor];

  [v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9B58]];

  return v4;
}

- (id)_tableViewCellPaymentRewardsRedemptionInfoForTableView:(id)view atIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:@"PKPaymentRewardsRedemptionInfoCellReuseIdentifier" forIndexPath:path];
  paymentRewardsRedemption = [(PKPaymentTransaction *)self->_transaction paymentRewardsRedemption];
  [v5 configureWithRewardsRedemption:paymentRewardsRedemption rewardsBalance:self->_associatedPaymentRewardsBalance];

  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9B90]];

  return v5;
}

- (id)_tableViewCellPaymentOfferConfirmationRecordStatusForTableView:(id)view atIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:@"PKPaymentOfferConfirmationRecordCellReuseIdentifier" forIndexPath:path];
  [v5 configureWithConfirmationRecord:self->_paymentOfferConfirmationRecord transaction:self->_transaction installmentCriteria:self->_issuerInstallmentCriteria];
  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B99A8]];

  return v5;
}

- (id)_tableViewCellPaymentOfferConfirmationRecordFollowUpForTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"PKPaymentOfferConfirmationRecordFollowUpCellReuseIdentifier" forIndexPath:pathCopy];
  objc_initWeak(&location, self);
  paymentOfferConfirmationRecord = self->_paymentOfferConfirmationRecord;
  paymentPass = self->_paymentPass;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __121__PKPaymentTransactionDetailViewController__tableViewCellPaymentOfferConfirmationRecordFollowUpForTableView_atIndexPath___block_invoke;
  v14[3] = &unk_1E8027538;
  objc_copyWeak(&v16, &location);
  v11 = pathCopy;
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

- (void)presentPaymentOfferInstallmentSelectionFlowFromIndexPath:(id)path fromPushNotification:(BOOL)notification completion:(id)completion
{
  notificationCopy = notification;
  pathCopy = path;
  completionCopy = completion;
  paymentOffersController = self->_paymentOffersController;
  if (paymentOffersController)
  {
    [(PKPaymentOffersController *)paymentOffersController invalidate];
    v10 = self->_paymentOffersController;
    self->_paymentOffersController = 0;
  }

  selectedOfferConfirmationRecord = [(PKPaymentOfferConfirmationRecord *)self->_paymentOfferConfirmationRecord selectedOfferConfirmationRecord];
  selectedOffer = [selectedOfferConfirmationRecord selectedOffer];

  installmentSelectedPaymentOffer = [selectedOffer installmentSelectedPaymentOffer];
  userEnteredAmount = [installmentSelectedPaymentOffer userEnteredAmount];

  v28 = userEnteredAmount;
  v15 = [objc_alloc(MEMORY[0x1E69B8CF0]) initForPostPurchaseInstallmentsWithTransaction:self->_transaction userEnteredAmount:userEnteredAmount];
  v16 = [objc_alloc(MEMORY[0x1E69B8CE8]) initWithPaymentService:self->_paymentService paymentWebService:self->_webService configuration:v15];
  v17 = self->_paymentOffersController;
  self->_paymentOffersController = v16;

  [(PKPaymentOffersController *)self->_paymentOffersController updatePaymentOfferCatalogIfNecessaryWithReason:11 completion:0];
  [(PKPaymentOffersController *)self->_paymentOffersController updateCurrentSelectedPaymentOffer:selectedOffer updateReason:11];
  v18 = [PKPaymentOfferInstallmentPlanSelectionModel initForPostPurchaseInstallmentsWithPaymentOffersController:self->_paymentOffersController criteria:self->_issuerInstallmentCriteria pass:self->_paymentPass fromPushNotification:notificationCopy];
  issuerInstallmentSelectionModel = self->_issuerInstallmentSelectionModel;
  self->_issuerInstallmentSelectionModel = v18;

  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__74;
  v38[4] = __Block_byref_object_dispose__74;
  v39 = 0;
  objc_initWeak(&location, self);
  tableView = [(PKPaymentTransactionDetailViewController *)self tableView];
  v21 = [tableView cellForRowAtIndexPath:pathCopy];
  v22 = pathCopy;

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
  v27 = completionCopy;
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

- (id)_tableViewCellChangeCategoryForTableView:(id)view
{
  viewCopy = view;
  v5 = [viewCopy dequeueReusableCellWithIdentifier:@"PKTransactionActionChangeCategoryCellReuseIdentifier"];
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

- (void)updateTransactionCategory:(int64_t)category
{
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PKPaymentTransactionDetailViewController_updateTransactionCategory___block_invoke;
  aBlock[3] = &unk_1E80275B0;
  objc_copyWeak(v37, location);
  v37[1] = category;
  v5 = _Block_copy(aBlock);
  if (self->_hasRelatedTransactions)
  {
    merchant = [(PKPaymentTransaction *)self->_transaction merchant];
    displayName = [merchant displayName];

    v8 = PKLocalizedStringFromMerchantCategory();
    v9 = PKLocalizedPaymentString(&cfstr_TransactionDet_123.isa, &stru_1F3BD6370.isa, displayName, v8);
    v10 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:0 preferredStyle:0];
    v11 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[PKSectionTableViewController indexForSection:](self, "indexForSection:", 22)}];
    tableView = [(PKPaymentTransactionDetailViewController *)self tableView];
    v13 = [tableView cellForRowAtIndexPath:v11];

    popoverPresentationController = [v10 popoverPresentationController];
    [popoverPresentationController setSourceView:v13];
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
    v35[1] = category;
    v34 = v5;
    v17 = [v15 actionWithTitle:v16 style:0 handler:v33];

    v18 = PKLocalizedPaymentString(&cfstr_TransactionDet_124.isa);
    v19 = MEMORY[0x1E69DC648];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __70__PKPaymentTransactionDetailViewController_updateTransactionCategory___block_invoke_2_817;
    v31[3] = &unk_1E8027600;
    objc_copyWeak(v32, location);
    v32[1] = category;
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
    identifier = [(PKPaymentTransaction *)self->_transaction identifier];
    displayName = [v24 setWithObject:identifier];

    [(PKPaymentService *)self->_paymentService updatePreferredCategory:category forTransactionsWithIdentifiers:displayName paymentPass:self->_paymentPass completion:v5];
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
  transactionSources = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSources];
  v5 = [transactionSources countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(transactionSources);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 type] | 2) == 2)
        {
          transactionSourceIdentifiers = [v9 transactionSourceIdentifiers];
          [v3 unionSet:transactionSourceIdentifiers];
        }
      }

      v6 = [transactionSources countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)_tableViewCellForGroupedPaymentsSummary:(id)summary
{
  v4 = [summary dequeueReusableCellWithIdentifier:@"PKPaymentTransactionGroupedPaymentsCellReuseIdentifier"];
  textLabel = [v4 textLabel];
  detailTextLabel = [v4 detailTextLabel];
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
  [textLabel setText:v8];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [textLabel setTextColor:labelColor];

  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
  [textLabel setFont:v11];

  v12 = PKPeerPaymentTotalAmountReceivedForPendingRequest(self->_peerPaymentPendingRequest);
  v13 = v12;
  if (v12)
  {
    minimalFormattedStringValue = [v12 minimalFormattedStringValue];
    v15 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPen.isa, &stru_1F3BD5BF0.isa, minimalFormattedStringValue);
    [detailTextLabel setText:v15];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [detailTextLabel setTextColor:secondaryLabelColor];

    v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [detailTextLabel setFont:v17];
  }

  [v4 setAccessoryType:1];

  return v4;
}

- (void)_tableView:(id)view didSelectActionAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  switch(-[PKPaymentTransactionDetailViewController _actionRowForRowIndex:](self, "_actionRowForRowIndex:", [pathCopy row]))
  {
    case 0uLL:
      [(PKPaymentTransactionDetailViewController *)self _openTransactionInIssuerApp];
      break;
    case 1uLL:
      MEMORY[0x1BFB41980](*MEMORY[0x1E69BA138], 0);
      selfCopy2 = self;
      v9 = 1;
      goto LABEL_12;
    case 2uLL:
      MEMORY[0x1BFB41980](*MEMORY[0x1E69BA140], 0);
      selfCopy2 = self;
      v9 = 2;
LABEL_12:
      [(PKPaymentTransactionDetailViewController *)selfCopy2 _openMessagesToPresentAction:v9];
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
      [(PKPaymentTransactionDetailViewController *)self _tableView:viewCopy didSelectPeerPaymentAction:*v7 atIndexPath:pathCopy];
      break;
    case 6uLL:
      [(PKPaymentTransactionDetailViewController *)self _presentRecurringPeerPaymentAtIndexPath:pathCopy];
      break;
    case 7uLL:
      [(PKPaymentTransactionDetailViewController *)self _presentCancelPaymentWithIndexPath:pathCopy];
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

- (void)_tableView:(id)view didSelectPeerPaymentAction:(id)action atIndexPath:(id)path
{
  viewCopy = view;
  actionCopy = action;
  pathCopy = path;
  v11 = [viewCopy cellForRowAtIndexPath:pathCopy];
  [v11 setShowsActionSpinner:1];
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__PKPaymentTransactionDetailViewController__tableView_didSelectPeerPaymentAction_atIndexPath___block_invoke;
  aBlock[3] = &unk_1E8011828;
  objc_copyWeak(&v45, location);
  v12 = actionCopy;
  v43 = v12;
  v13 = pathCopy;
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

  recurringPeerPayment = [(PKPaymentTransaction *)self->_transaction recurringPeerPayment];

  if (!recurringPeerPayment)
  {
LABEL_11:
    v14[2](v14);
    goto LABEL_14;
  }

  v21 = PKLocalizedPeerPaymentRecurringString(&cfstr_TransactionDet_125.isa);
  peerPaymentCounterpartHandle = [(PKPaymentTransaction *)self->_transaction peerPaymentCounterpartHandle];
  v32 = [(PKContactResolver *)self->_contactResolver contactForHandle:peerPaymentCounterpartHandle];
  v36 = [MEMORY[0x1E69B8F30] displayNameForCounterpartHandle:peerPaymentCounterpartHandle contact:v32];
  transactionDate = [(PKPaymentTransaction *)self->_transaction transactionDate];
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
  v31 = peerPaymentCounterpartHandle;
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

- (void)_openMessagesToPresentAction:(unint64_t)action
{
  peerPaymentCounterpartHandle = [(PKPaymentTransaction *)self->_transaction peerPaymentCounterpartHandle];
  subtotalAmount = [(PKPaymentTransaction *)self->_transaction subtotalAmount];
  v5 = subtotalAmount;
  if (subtotalAmount)
  {
    amount = subtotalAmount;
  }

  else
  {
    amount = [(PKPaymentTransaction *)self->_transaction amount];
  }

  v7 = amount;

  currencyCode = [(PKPaymentTransaction *)self->_transaction currencyCode];
  v9 = PKPeerPaymentGetSendPaymentSensitiveURL();
  if (v9)
  {
    PKOpenURL();
  }
}

- (void)_openTransactionInIssuerApp
{
  v3 = self->_paymentPass;
  uniqueID = [(PKPaymentPass *)v3 uniqueID];
  v4 = [(PKPaymentDataProvider *)self->_paymentServiceDataProvider transactionsAppLaunchTokenForPassWithUniqueIdentifier:?];
  v5 = [PKPaymentNotificationAppURLHelper appURLForTransactionNotification:self->_transaction pass:v3 appLaunchToken:v4];

  if (v5)
  {
    PKOpenURL();
  }
}

- (void)_openOfferDetailsInIssuerApp:(id)app
{
  v11 = self->_paymentPass;
  appCopy = app;
  uniqueID = [(PKPaymentPass *)v11 uniqueID];
  v7 = [(PKPaymentDataProvider *)self->_paymentServiceDataProvider transactionsAppLaunchTokenForPassWithUniqueIdentifier:uniqueID];
  identifier = [appCopy identifier];

  if (identifier)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/offers/%@", identifier];
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
  secondaryFundingSourceAmount = [(PKPaymentTransaction *)self->_transaction secondaryFundingSourceAmount];
  if (secondaryFundingSourceAmount)
  {
    zero = [MEMORY[0x1E696AB90] zero];
    v4 = [secondaryFundingSourceAmount compare:zero] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_presentRecurringPeerPaymentAtIndexPath:(id)path
{
  recurringPeerPayment = [(PKPaymentTransaction *)self->_transaction recurringPeerPayment];
  [(PKPaymentTransactionDetailViewController *)self _presentRecurringPeerPayment:recurringPeerPayment];
}

- (void)_presentRecurringPeerPayment:(id)payment
{
  paymentCopy = payment;
  v4 = objc_alloc(MEMORY[0x1E69B8F28]);
  mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
  v6 = [v4 initWithPeerPaymentWebService:mEMORY[0x1E69B9020]];

  account = [v6 account];
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

  type = [paymentCopy type];
  if (type == 3)
  {
    thresholdTopUpController = self->_thresholdTopUpController;
    if (!thresholdTopUpController)
    {
      v20 = [PKPeerPaymentThresholdTopUpController alloc];
      paymentPass = self->_paymentPass;
      v22 = objc_alloc_init(MEMORY[0x1E69B8A60]);
      v23 = [(PKPeerPaymentThresholdTopUpController *)v20 initWithPeerPaymentAccount:account pass:paymentPass context:v10 passLibraryDataProvider:v22 delegate:self];
      v24 = self->_thresholdTopUpController;
      self->_thresholdTopUpController = v23;

      thresholdTopUpController = self->_thresholdTopUpController;
    }

    [(PKPeerPaymentThresholdTopUpController *)thresholdTopUpController presentTopUpFlowForRecurringPayment:paymentCopy];
  }

  else if (type == 1)
  {
    recurringPaymentsFeatureDescriptor = [account recurringPaymentsFeatureDescriptor];
    v13 = [PKPeerPaymentRecurringPaymentDetailViewController alloc];
    recipientAddress = [paymentCopy recipientAddress];
    v15 = [(PKPeerPaymentRecurringPaymentDetailViewController *)v13 initWithRecurringPayment:paymentCopy recipientAddress:recipientAddress mode:2 context:v10 peerPaymentController:v6 remoteMessagesComposer:0];

    minimumAmount = [recurringPaymentsFeatureDescriptor minimumAmount];
    [(PKPeerPaymentRecurringPaymentDetailViewController *)v15 setMinimumAmount:minimumAmount];

    maximumAmount = [recurringPaymentsFeatureDescriptor maximumAmount];
    [(PKPeerPaymentRecurringPaymentDetailViewController *)v15 setMaximumAmount:maximumAmount];

    navigationController = [(PKPaymentTransactionDetailViewController *)self navigationController];
    if ([navigationController pk_settings_useStateDrivenNavigation])
    {
      [navigationController pk_settings_pushViewController:v15];
    }

    else
    {
      [navigationController pushViewController:v15 animated:1];
    }
  }
}

- (void)_presentCancelPaymentWithIndexPath:(id)path
{
  pathCopy = path;
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
    v17 = pathCopy;
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

- (void)_cancelPaymentWithCell:(id)cell
{
  cellCopy = cell;
  payments = [(PKPaymentTransaction *)self->_transaction payments];
  firstObject = [payments firstObject];

  v7 = objc_alloc_init(MEMORY[0x1E69B8480]);
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  [v7 setAccountIdentifier:accountIdentifier];

  accountBaseURL = [(PKAccount *)self->_account accountBaseURL];
  [v7 setBaseURL:accountBaseURL];

  referenceIdentifier = [firstObject referenceIdentifier];
  [v7 setPaymentReferenceIdentifier:referenceIdentifier];

  objc_initWeak(&location, self);
  webService = self->_webService;
  if (!webService)
  {
    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    v13 = self->_webService;
    self->_webService = mEMORY[0x1E69B8EF8];

    webService = self->_webService;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__PKPaymentTransactionDetailViewController__cancelPaymentWithCell___block_invoke;
  v15[3] = &unk_1E8016198;
  objc_copyWeak(&v17, &location);
  v14 = cellCopy;
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
  altDSID = [(PKAccountUser *)self->_accountUser altDSID];
  v5 = [(PKFamilyMemberCollection *)familyCollection familyMemberForAltDSID:altDSID];

  v6 = [PKBusinessChatTransactionDisputeContext alloc];
  paymentPass = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  v8 = [(PKBusinessChatTransactionDisputeContext *)v6 initWithPaymentPass:paymentPass transaction:self->_transaction account:self->_account accountUser:self->_accountUser familyMember:v5 physicalCards:self->_physicalCards intent:9];

  return v8;
}

- (id)_businessChatContextForUnavailableDisputeStatus
{
  familyCollection = self->_familyCollection;
  altDSID = [(PKAccountUser *)self->_accountUser altDSID];
  v5 = [(PKFamilyMemberCollection *)familyCollection familyMemberForAltDSID:altDSID];

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

      businessChatIdentifier = [(PKPaymentPass *)v5 businessChatIdentifier];
      v14 = businessChatIdentifier != 0 && v4;

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
      altDSID = [(PKReportIssueViewController *)v7 altDSID];
      v8 = [(PKFamilyMemberCollection *)familyCollection familyMemberForAltDSID:altDSID];

      v18 = [[PKBusinessChatTransactionDisputeContext alloc] initWithPaymentPass:v5 transaction:self->_transaction account:self->_account accountUser:v7 familyMember:v8 physicalCards:self->_physicalCards intent:v15];
      [(PKPaymentTransactionDetailViewController *)self _openBusinessChatControllerForContext:v18];
LABEL_27:

      goto LABEL_28;
    }

    associatedAccountServiceAccountIdentifier = [(PKPaymentPass *)v5 associatedAccountServiceAccountIdentifier];
    accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
    v11 = associatedAccountServiceAccountIdentifier;
    v7 = v11;
    if (accountIdentifier != v11)
    {
      if (v11)
      {
        v12 = accountIdentifier == 0;
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
        v19 = [(PKReportIssueViewController *)accountIdentifier isEqualToString:v11];

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
    altDSID = [v11 altDSID];
    v8 = [(PKFamilyMemberCollection *)familyCollection familyMemberForAltDSID:altDSID];

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
  _peerPaymentController = [(PKPaymentTransactionDetailViewController *)self _peerPaymentController];
  identifier = [(PKPaymentTransaction *)self->_transaction identifier];
  v5 = *MEMORY[0x1E69BC340];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__PKPaymentTransactionDetailViewController__cancelPeerPaymentPendingRequest__block_invoke;
  v7[3] = &unk_1E8027650;
  v7[4] = self;
  v8 = identifier;
  v6 = identifier;
  [_peerPaymentController performPendingRequestAction:v5 withRequestToken:v6 completion:v7];
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

- (void)_openBusinessChatControllerForContext:(id)context
{
  if (self->_accountResolutionController)
  {
    v4 = MEMORY[0x1E69B8408];
    contextCopy = context;
    v6 = objc_alloc_init(v4);
    [v6 setBusinessChatContext:contextCopy];

    [(PKAccountServiceAccountResolutionController *)self->_accountResolutionController presentFlowForAccountResolution:3 configuration:v6 completion:0];
  }
}

- (id)_transactionStatusString
{
  peerPaymentStatusResponse = self->_peerPaymentStatusResponse;
  if (!peerPaymentStatusResponse || [(PKPeerPaymentStatusResponse *)peerPaymentStatusResponse status]== -1 || (v4 = PKPaymentTransactionStatusFromPeerPaymentStatus(), v4 == -1))
  {
    transactionStatus = [(PKPaymentTransaction *)self->_transaction transactionStatus];
  }

  else
  {
    transactionStatus = v4;
  }

  if (([(PKPaymentTransaction *)self->_transaction disputeStatus]- 1) > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = PKLocalizedFeatureString();
  }

  transactionType = [(PKPaymentTransaction *)self->_transaction transactionType];
  featureIdentifier = [(PKPaymentTransaction *)self->_transaction featureIdentifier];
  if (!v6)
  {
    if (transactionStatus > 3)
    {
      if (transactionStatus <= 5)
      {
        if (transactionStatus == 4)
        {
          v9 = @"TRANSACTION_DETAIL_STATUS_VALUE_FAILED";
        }

        else
        {
          v9 = @"TRANSACTION_DETAIL_STATUS_VALUE_CANCELED";
        }

        goto LABEL_44;
      }

      switch(transactionStatus)
      {
        case 6:
          v9 = @"TRANSACTION_DETAIL_STATUS_VALUE_REJECTED";
          break;
        case 7:
          v9 = @"TRANSACTION_DETAIL_STATUS_VALUE_EXPIRED";
          break;
        case 8:
LABEL_28:
          if (transactionType == 2)
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

          if (featureIdentifier == 2)
          {
            if (transactionType == 10)
            {
LABEL_39:
              v10 = PKLocalizedFeatureString();
              goto LABEL_45;
            }
          }

          else if (featureIdentifier == 5)
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

    if (transactionStatus > 1)
    {
      if (transactionStatus == 2)
      {
        v9 = @"TRANSACTION_DETAIL_STATUS_VALUE_DECLINED";
        goto LABEL_44;
      }
    }

    else
    {
      if (!transactionStatus)
      {
        goto LABEL_28;
      }

      if (transactionStatus != 1)
      {
        goto LABEL_46;
      }

      if (transactionType != 1)
      {
        if (transactionType != 10)
        {
          if (transactionType == 3)
          {
            if ([(PKPaymentTransaction *)self->_transaction peerPaymentStatus]!= 1)
            {
LABEL_49:
              transfers = [(PKPaymentTransaction *)self->_transaction transfers];
              firstObject = [transfers firstObject];

              if (firstObject)
              {
                if (![firstObject fundsAreAvailable])
                {
                  v14 = PKLocalizedFeatureString();
LABEL_57:
                  v6 = v14;

                  goto LABEL_46;
                }
              }

              else
              {
                accountIdentifier = [(PKPaymentTransaction *)self->_transaction accountIdentifier];

                if (accountIdentifier)
                {
                  v16 = @"TRANSACTION_DETAIL_STATUS_VALUE_CLEARED";
LABEL_56:
                  v14 = PKLocalizedPeerPaymentString(&v16->isa);
                  goto LABEL_57;
                }

                barcodeIdentifier = [(PKPaymentTransaction *)self->_transaction barcodeIdentifier];

                if (!barcodeIdentifier)
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
            if (transactionType != 2)
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

- (void)transactionsChanged:(id)changed
{
  v29 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  peerPaymentRequestToken = [(PKPaymentTransaction *)self->_transaction peerPaymentRequestToken];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = changedCopy;
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
      identifier = [(PKPaymentTransaction *)self->_transaction identifier];
      identifier2 = [v9 identifier];
      v12 = PKEqualObjects();

      if (v12)
      {
        [(PKPaymentTransactionDetailViewController *)self setTransaction:v9];
        continue;
      }

      if (peerPaymentRequestToken)
      {
        peerPaymentRequestToken2 = [v9 peerPaymentRequestToken];
        v14 = peerPaymentRequestToken;
        if (peerPaymentRequestToken2 == v14)
        {
          v15 = 1;
LABEL_13:
          v18 = v15;
        }

        else if (peerPaymentRequestToken2)
        {
          v15 = [peerPaymentRequestToken2 isEqualToString:v14] | v18;
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
    mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
    v27 = peerPaymentRequestToken;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __64__PKPaymentTransactionDetailViewController_transactionsChanged___block_invoke;
    v20[3] = &unk_1E8011158;
    objc_copyWeak(&v21, &location);
    [mEMORY[0x1E69B9000] peerPaymentPendingRequestsForRequestTokens:v17 completion:v20];

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

- (id)_merchantAddressCellForTableView:(id)view
{
  v4 = [view dequeueReusableCellWithIdentifier:@"PKPaymentTransactionLocationMapCellReuseIdentifier"];
  [v4 setTransaction:self->_transaction];
  if (self->_inBridge)
  {
    v5 = PKBridgeAppearanceGetAppearanceSpecifier();
    textColor = [v5 textColor];
    [v4 setTitleLabelColor:textColor];

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

- (void)_tableView:(id)view didSelectMechantAddressAtIndexPath:(id)path
{
  v33[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  v23 = [viewCopy cellForRowAtIndexPath:pathCopy];
  v8 = self->_transaction;
  merchant = [(PKPaymentTransaction *)v8 merchant];
  mapsMerchant = [merchant mapsMerchant];

  identifier = [mapsMerchant identifier];
  resultProviderIdentifier = [mapsMerchant resultProviderIdentifier];
  if (identifier)
  {
    v13 = resultProviderIdentifier;
    v14 = objc_alloc_init(MEMORY[0x1E696F260]);
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:identifier];
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
    v27 = mapsMerchant;
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

- (void)_handleCoarseLocationChangedNotification:(id)notification
{
  object = [notification object];
  coarseLocationMonitor = self->_coarseLocationMonitor;

  if (object == coarseLocationMonitor)
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

- (unint64_t)_amountDetailsRowForIndex:(unint64_t)index
{
  v5 = 0;
  v6 = 0;
  do
  {
    if ([(PKPaymentTransactionDetailViewController *)self _amountDetailsRowIsEnabled:v5])
    {
      if (v6 == index)
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

- (BOOL)_amountDetailsRowIsEnabled:(unint64_t)enabled
{
  v4 = 0;
  if (enabled > 1)
  {
    if (enabled == 2)
    {
      merchantTokenResponse = self->_merchantTokenResponse;
      if (!merchantTokenResponse)
      {
        return 0;
      }

      merchantTokens = [(PKRetrieveMerchantTokensResponse *)merchantTokenResponse merchantTokens];
      v4 = [merchantTokens count] == 0;

      return v4;
    }

    if (enabled == 3)
    {
      v5 = [(NSArray *)self->_lineItems count]== 0;
      return !v5;
    }

    return v4;
  }

  if (enabled)
  {
    if (enabled == 1)
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

  transitType = [(PKPaymentTransaction *)self->_transaction transitType];

  return MEMORY[0x1EEE250D0](transitType);
}

- (void)_applySeparatorInsetForCell:(id)cell
{
  cellCopy = cell;
  [cellCopy pkui_effectiveLayoutMargins];
  [cellCopy setSeparatorInset:0.0];
}

- (id)_amountDetailsCellForTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[PKPaymentTransactionDetailViewController _amountDetailsRowForIndex:](self, "_amountDetailsRowForIndex:", [pathCopy row]);
  v9 = 0;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v12 = [(PKPaymentTransactionDetailViewController *)self _merchantTokenDeletedCellForTableView:viewCopy atIndexPath:pathCopy];
    }

    else
    {
      if (v8 != 3)
      {
        goto LABEL_11;
      }

      v12 = -[PKPaymentTransactionDetailViewController _tableView:cellForAmountDetailLineItemAtIndex:atIndexPath:](self, "_tableView:cellForAmountDetailLineItemAtIndex:atIndexPath:", viewCopy, -[PKPaymentTransactionDetailViewController _lineItemItemForRowIndex:](self, "_lineItemItemForRowIndex:", [pathCopy row]), pathCopy);
    }

    goto LABEL_10;
  }

  if (!v8)
  {
    v12 = [(PKPaymentTransactionDetailViewController *)self _statusCellForTableView:viewCopy];
LABEL_10:
    v9 = v12;
    goto LABEL_11;
  }

  if (v8 == 1)
  {
    v9 = [viewCopy dequeueReusableCellWithIdentifier:@"PKPaymentTransactionTransactionExplanationCellReuseIdentifier" forIndexPath:pathCopy];
    textLabel = [v9 textLabel];
    [textLabel setNumberOfLines:0];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [textLabel setTextColor:secondaryLabelColor];

    [textLabel setText:self->_transactionExplanation];
    [textLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    [(PKPaymentTransactionDetailViewController *)self _applySeparatorInsetForCell:v9];
  }

LABEL_11:

  return v9;
}

- (id)_questionCellForTableView:(id)view atIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:@"PKPaymentTransactionQuestionCellReuseIdentifier" forIndexPath:path];
  altDSID = [(PKPaymentTransaction *)self->_transaction altDSID];
  if (!altDSID)
  {
    goto LABEL_5;
  }

  v7 = PKCurrentUserAltDSID();
  v8 = altDSID;
  v9 = v7;
  nameComponents = v9;
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
    nameComponents = [v13 nameComponents];
    v12 = [v14 contactForFamilyMember:v8 nameComponents:nameComponents imageData:0];
  }

LABEL_10:
  [v5 setTransaction:self->_transaction accountUserContact:v12 submittingAnswer:self->_submittingAnswer];
  [v5 setQuestionDelegate:self];

  return v5;
}

- (id)_statusCellForTableView:(id)view
{
  viewCopy = view;
  v5 = self->_paymentPass;
  localizedDescription = [(PKPaymentPass *)v5 localizedDescription];
  v7 = &OBJC_IVAR___PKAddressEditorViewController__searchCompleter;
  if (!localizedDescription)
  {
    v8 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourcesForType:1];
    v9 = [v8 count];

    if (v9)
    {
      mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
      mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
      account = [mEMORY[0x1E69B9000] account];
      associatedPassUniqueID = [account associatedPassUniqueID];
      [mEMORY[0x1E69B8A58] passWithUniqueID:associatedPassUniqueID];
      v15 = v14 = v5;
      localizedDescription = [v15 localizedDescription];

      v5 = v14;
    }

    else
    {
      localizedDescription = 0;
    }
  }

  feature = [(PKAccount *)self->_account feature];
  if (localizedDescription)
  {
    v17 = 0;
  }

  else
  {
    v17 = feature == 5;
  }

  if (v17)
  {
    localizedDescription = PKLocalizedFeatureString();
  }

  systemRedColor = 0;
  v179 = 0;
  v180 = 0;
  v177 = 0;
  v19 = 0;
  _transactionStatusString = 0;
  switch([(PKPaymentTransaction *)self->_transaction transactionType])
  {
    case 0:
    case 17:
      _transactionStatusString = [(PKPaymentTransactionDetailViewController *)self _transactionStatusString];
      transactionStatus = [(PKPaymentTransaction *)self->_transaction transactionStatus];
      transaction = self->_transaction;
      if (transactionStatus == 2)
      {
        transactionDeclinedReason = [(PKPaymentTransaction *)transaction transactionDeclinedReason];
        v26 = self->_transaction;
        if (transactionDeclinedReason == 14)
        {
          cardType = [(PKPaymentTransaction *)v26 cardType];
          if (cardType == 6 || cardType == 5)
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

        unansweredQuestions = [(PKPaymentTransaction *)v26 unansweredQuestions];
        v57 = [unansweredQuestions count];

        if (v57)
        {
          v19 = PKLocalizedFeatureString();
          systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
          goto LABEL_99;
        }

        questions = [(PKPaymentTransaction *)self->_transaction questions];
        v80 = [questions count];

        if (!v80)
        {
          v129 = PKPaymentTransactionDeclinedReasonLocalizedString();
          if (v129)
          {
            v19 = v129;
LABEL_107:
            systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
            goto LABEL_152;
          }

          goto LABEL_137;
        }

        if (![(PKPaymentTransaction *)self->_transaction reviewed])
        {
LABEL_137:
          systemRedColor = 0;
          goto LABEL_138;
        }

        goto LABEL_97;
      }

      unansweredQuestions2 = [(PKPaymentTransaction *)transaction unansweredQuestions];
      v31 = [unansweredQuestions2 count];

      if (v31 || [(PKPaymentTransaction *)self->_transaction reviewed])
      {
LABEL_97:
        v19 = PKLocalizedFeatureString();
        goto LABEL_98;
      }

      primaryFundingSourceDescription = [(PKPaymentTransaction *)self->_transaction primaryFundingSourceDescription];

      v71 = self->_transaction;
      if (primaryFundingSourceDescription)
      {
        primaryFundingSourceDescription2 = [(PKPaymentTransaction *)v71 primaryFundingSourceDescription];
        v19 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_147.isa, &stru_1F3BD5BF0.isa, primaryFundingSourceDescription2);
      }

      else
      {
        transfers = [(PKPaymentTransaction *)v71 transfers];
        systemRedColor = [transfers count];

        if (!systemRedColor)
        {
          goto LABEL_138;
        }

        transfers2 = [(PKPaymentTransaction *)self->_transaction transfers];
        firstObject = [transfers2 firstObject];

        externalAccount = [firstObject externalAccount];
        featureIdentifier = [(PKPaymentTransaction *)self->_transaction featureIdentifier];
        associatedFeatureIdentifier = [(PKPaymentTransaction *)self->_transaction associatedFeatureIdentifier];
        v125 = 0;
        if (featureIdentifier == 1 && associatedFeatureIdentifier)
        {
          v126 = PKLocalizedFeatureString();
          [externalAccount displayDescription];
          v128 = v127 = _transactionStatusString;
          v125 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_148.isa, &stru_1F3BD6370.isa, v128, v126);

          _transactionStatusString = v127;
          v7 = &OBJC_IVAR___PKAddressEditorViewController__searchCompleter;
        }

        v19 = v125;
      }

LABEL_98:
      systemRedColor = 0;
LABEL_99:
      if (v19)
      {
        goto LABEL_152;
      }

LABEL_138:
      effectiveTransactionSource = [(PKPaymentTransaction *)self->_transaction effectiveTransactionSource];
      if (effectiveTransactionSource == 6 || effectiveTransactionSource == 5)
      {
        v131 = PKLocalizedFeatureString();
      }

      else
      {
        v131 = localizedDescription;
      }

      v19 = v131;
      cardNumberSuffix = [(PKPaymentTransaction *)self->_transaction cardNumberSuffix];
      if (cardNumberSuffix)
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
      _transactionStatusString = [(PKPaymentTransactionDetailViewController *)self _transactionStatusString];
      transitModifiers = [(PKPaymentTransaction *)self->_transaction transitModifiers];
      if (transitModifiers)
      {
        installmentPayment = PKPassLocalizedStringWithFormat();
        localizedDisplay = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_147.isa, &stru_1F3BD5BF0.isa, installmentPayment);
LABEL_62:
        v19 = localizedDisplay;
LABEL_63:

        goto LABEL_151;
      }

      if ((~transitModifiers & 6) == 0)
      {
        v48 = @"TRANSIT_TRANSACTION_ANNOTATION_FARECAPPED_TRANSFER_DISCOUNT";
LABEL_149:
        v54 = PKLocalizedPaymentString(&v48->isa);
        goto LABEL_150;
      }

      if ((transitModifiers & 2) != 0)
      {
        v48 = @"TRANSIT_TRANSACTION_TRANSFER";
        goto LABEL_149;
      }

      if ((transitModifiers & 4) != 0)
      {
        v48 = @"TRANSIT_TRANSACTION_ANNOTATION_FARECAPPED_DISCOUNT";
        goto LABEL_149;
      }

      if ([(PKPaymentTransaction *)self->_transaction transitType]== 1026)
      {
        v48 = @"TRANSIT_TRANSACTION_ANNOTATION_NO_CHARGE";
        goto LABEL_149;
      }

      localizedDescription2 = [(PKPaymentPass *)v5 localizedDescription];
      v160 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_147.isa, &stru_1F3BD5BF0.isa, localizedDescription2);

      v179 = 0;
      v180 = 0;
      v177 = 0;
      v19 = 0;
      _transactionStatusString = v160;
      systemRedColor = 0;
      goto LABEL_154;
    case 3:
      v173 = viewCopy;
      peerPaymentCounterpartHandle = [(PKPaymentTransaction *)self->_transaction peerPaymentCounterpartHandle];
      if ([(PKPaymentTransaction *)self->_transaction peerPaymentPaymentMode]== 2)
      {
        v43 = peerPaymentCounterpartHandle;
        v44 = @"TRANSACTION_DETAIL_STATUS_SUBTITLE_SENT_TO_HANDLE_FORMAT";
      }

      else
      {
        v58 = [(PKContactResolver *)self->_contactResolver hasCachedResultForHandle:peerPaymentCounterpartHandle];
        contactResolver = self->_contactResolver;
        if (v58)
        {
          v60 = [(PKContactResolver *)contactResolver contactForHandle:peerPaymentCounterpartHandle];
        }

        else
        {
          v186[0] = MEMORY[0x1E69E9820];
          v186[1] = 3221225472;
          v186[2] = __68__PKPaymentTransactionDetailViewController__statusCellForTableView___block_invoke;
          v186[3] = &unk_1E80178C0;
          v186[4] = self;
          [(PKContactResolver *)contactResolver contactForHandle:peerPaymentCounterpartHandle withCompletion:v186];
          v60 = 0;
        }

        v43 = [MEMORY[0x1E69B8F30] displayNameForCounterpartHandle:peerPaymentCounterpartHandle contact:v60];

        if (v60)
        {
          v44 = @"TRANSACTION_DETAIL_STATUS_SUBTITLE_SENT_TO_CONTACT_NAME_FORMAT";
        }

        else
        {
          v44 = @"TRANSACTION_DETAIL_STATUS_SUBTITLE_SENT_TO_HANDLE_FORMAT";
        }
      }

      _transactionStatusString = [(PKPaymentTransactionDetailViewController *)self _transactionStatusString];
      peerPaymentType = [(PKPaymentTransaction *)self->_transaction peerPaymentType];
      v19 = 0;
      if (peerPaymentType > 1)
      {
        if (peerPaymentType != 2)
        {
          if (peerPaymentType != 3)
          {
            goto LABEL_119;
          }

          expirationDate = [(PKPaymentTransaction *)self->_transaction expirationDate];
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

            systemRedColor = 0;
            v179 = 0;
            v180 = 0;
            v177 = 0;
            viewCopy = v173;
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
        if (peerPaymentType)
        {
          if (peerPaymentType != 1)
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

      _transactionStatusString4 = PKLocalizedPaymentString(&cfstr_TransactionTyp_9.isa);
      goto LABEL_13;
    case 5:
      _transactionStatusString = [(PKPaymentTransactionDetailViewController *)self _transactionStatusString];
      secondaryFundingSourceType = [(PKPaymentTransaction *)self->_transaction secondaryFundingSourceType];
      v46 = self->_transaction;
      if (secondaryFundingSourceType != 2)
      {
        v61 = _transactionStatusString;
        transfers3 = [(PKPaymentTransaction *)v46 transfers];
        v63 = [transfers3 count];

        if (v63)
        {
          v174 = v5;
          transfers4 = [(PKPaymentTransaction *)self->_transaction transfers];
          firstObject2 = [transfers4 firstObject];

          externalAccount2 = [firstObject2 externalAccount];
          featureIdentifier2 = [(PKPaymentTransaction *)self->_transaction featureIdentifier];
          associatedFeatureIdentifier2 = [(PKPaymentTransaction *)self->_transaction associatedFeatureIdentifier];
          displayDescription = [externalAccount2 displayDescription];
          if (featureIdentifier2 == 1)
          {
            if (associatedFeatureIdentifier2)
            {
              PKLocalizedFeatureString();
            }

            else
            {
              PKLocalizedPeerPaymentString(&cfstr_TransactionSec.isa);
            }

            displayDescription = v95 = displayDescription;
          }

          else
          {
            v95 = PKLocalizedFeatureString();
          }

          v158 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_148.isa, &stru_1F3BD6370.isa, v95, displayDescription);

          v19 = v158;
          systemRedColor = 0;
          v179 = 0;
          v180 = 0;
          v177 = 0;
          v5 = v174;
          _transactionStatusString = v61;
LABEL_195:
          v7 = &OBJC_IVAR___PKAddressEditorViewController__searchCompleter;
          goto LABEL_154;
        }

        v87 = objc_alloc(MEMORY[0x1E69B92F8]);
        mEMORY[0x1E69B8A58]2 = [MEMORY[0x1E69B8A58] sharedInstance];
        secondaryFundingSourceFPANIdentifier = [(PKPaymentTransaction *)self->_transaction secondaryFundingSourceFPANIdentifier];
        v90 = [mEMORY[0x1E69B8A58]2 passWithFPANIdentifier:secondaryFundingSourceFPANIdentifier];
        v91 = [v87 initWithPaymentPass:v90];

        v92 = [MEMORY[0x1E69B8EB8] secondaryFundingSourceDescriptionForTransaction:self->_transaction secondarySource:v91 includeBankAccountSuffix:1 useGenericNameIfNoDescriptionAvailable:1];
        v93 = v92;
        if (v92)
        {
          PKLocalizedPeerPaymentString(&cfstr_TransactionDet_148.isa, &stru_1F3BD6370.isa, localizedDescription, v92);
        }

        else
        {
          if (([(PKPaymentTransaction *)self->_transaction isBankConnectTransaction]& 1) != 0)
          {
            v19 = 0;
LABEL_184:
            _transactionStatusString = v61;

            systemRedColor = 0;
            v179 = 0;
            v180 = 0;
            v177 = 0;
            goto LABEL_195;
          }

          PKLocalizedPeerPaymentString(&cfstr_TransactionDet_155.isa, &stru_1F3BD5BF0.isa, localizedDescription);
        }
        v19 = ;
        goto LABEL_184;
      }

      if (([(PKPaymentTransaction *)v46 isBankConnectTransaction]& 1) != 0)
      {
        goto LABEL_14;
      }

      PKLocalizedPeerPaymentString(&cfstr_TransactionDet_155.isa, &stru_1F3BD5BF0.isa, localizedDescription);
      v54 = LABEL_45:;
LABEL_150:
      v19 = v54;
LABEL_151:
      systemRedColor = 0;
LABEL_152:
      v179 = 0;
      v180 = 0;
LABEL_153:
      v177 = 0;
LABEL_154:
      v176 = systemRedColor;
      disputeStatus = [(PKPaymentTransaction *)self->_transaction disputeStatus];
      disputeType = [(PKPaymentTransaction *)self->_transaction disputeType];
      transactionType = [(PKPaymentTransaction *)self->_transaction transactionType];
      if (disputeStatus == 5)
      {
        if (transactionType)
        {
          v136 = 0;
        }

        else
        {
          v136 = disputeType == 1;
        }

        if (v136)
        {
          disputeStatusDetails = [(PKPaymentTransaction *)self->_transaction disputeStatusDetails];
          statusReasons = [disputeStatusDetails statusReasons];
          [statusReasons containsObject:@"splitLiability"];
        }
      }

      else if (disputeStatus != 4)
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

      [(PKTransactionStatusCell *)v143 setPrimaryText:_transactionStatusString];
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
      transactionSourceIdentifier = [(PKPaymentTransaction *)self->_transaction transactionSourceIdentifier];
      v146 = [v144 transactionSourceForTransactionSourceIdentifier:transactionSourceIdentifier];

      if ([v146 type] == 2)
      {
        v170 = _transactionStatusString;
        accountUser = [v146 accountUser];
        v148 = [(PKFamilyMemberCollection *)self->_familyCollection familyMemberForTransactionSource:v146];
        v149 = MEMORY[0x1E69B8740];
        nameComponents = [accountUser nameComponents];
        v151 = [v149 contactForFamilyMember:v148 nameComponents:nameComponents imageData:0];

        givenName = [v151 givenName];
        if (givenName)
        {
          PKLocalizedFeatureString();
          v153 = localizedDescription;
          v154 = v5;
          v156 = v155 = viewCopy;
          [(PKTransactionStatusCell *)v143 setTertiaryText:v156, givenName];

          viewCopy = v155;
          v5 = v154;
          localizedDescription = v153;
        }

        _transactionStatusString = v170;
      }

      return v143;
    case 6:
      transfers5 = [(PKPaymentTransaction *)self->_transaction transfers];
      v33 = [transfers5 count];

      if (v33)
      {
        _transactionStatusString2 = [(PKPaymentTransactionDetailViewController *)self _transactionStatusString];
        transfers6 = [(PKPaymentTransaction *)self->_transaction transfers];
        firstObject3 = [transfers6 firstObject];

        v181 = firstObject3;
        externalAccount3 = [firstObject3 externalAccount];
        featureIdentifier3 = [(PKPaymentTransaction *)self->_transaction featureIdentifier];
        associatedFeatureIdentifier3 = [(PKPaymentTransaction *)self->_transaction associatedFeatureIdentifier];
        if (featureIdentifier3 == 1)
        {
          v39 = associatedFeatureIdentifier3;
          displayDescription2 = [externalAccount3 displayDescription];
          if (v39)
          {
            PKLocalizedFeatureString();
          }

          else
          {
            PKLocalizedPeerPaymentString(&cfstr_TransactionSec.isa);
          }
          displayDescription3 = ;
        }

        else
        {
          displayDescription2 = PKLocalizedFeatureString();
          displayDescription3 = [externalAccount3 displayDescription];
        }

        v96 = displayDescription3;
        v19 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_148.isa, &stru_1F3BD6370.isa, displayDescription3, displayDescription2);

        systemRedColor = 0;
        v179 = 0;
        v180 = 0;
        v177 = 0;
        _transactionStatusString = _transactionStatusString2;
        goto LABEL_154;
      }

      featureIdentifier4 = [(PKPaymentTransaction *)self->_transaction featureIdentifier];
      _transactionStatusString = [(PKPaymentTransactionDetailViewController *)self _transactionStatusString];
      if (featureIdentifier4 != 4)
      {
        v81 = objc_alloc(MEMORY[0x1E69B92F8]);
        mEMORY[0x1E69B8A58]3 = [MEMORY[0x1E69B8A58] sharedInstance];
        secondaryFundingSourceFPANIdentifier2 = [(PKPaymentTransaction *)self->_transaction secondaryFundingSourceFPANIdentifier];
        [mEMORY[0x1E69B8A58]3 passWithFPANIdentifier:secondaryFundingSourceFPANIdentifier2];
        v85 = v84 = _transactionStatusString;
        installmentPayment = [v81 initWithPaymentPass:v85];

        _transactionStatusString = v84;
        v7 = &OBJC_IVAR___PKAddressEditorViewController__searchCompleter;

        v86 = [MEMORY[0x1E69B8EB8] secondaryFundingSourceDescriptionForTransaction:self->_transaction secondarySource:installmentPayment includeBankAccountSuffix:1 useGenericNameIfNoDescriptionAvailable:1];
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
      _transactionStatusString = PKLocalizedTitleForTransactionWithAdjustment();
      v54 = PKLocalizedSubtitleForTransactionWithAdjustment();
      goto LABEL_150;
    case 8:
      _transactionStatusString = PKLocalizedPaymentString(&cfstr_TransactionTyp_10.isa);
      if ([(PKPaymentPass *)v5 associatedAccountFeatureIdentifier]== 2)
      {
        goto LABEL_109;
      }

      goto LABEL_44;
    case 9:
    case 12:
      v22 = PKLocalizedFeatureString();
LABEL_43:
      _transactionStatusString = v22;
LABEL_44:
      PKLocalizedPeerPaymentString(&cfstr_TransactionDet_149.isa, &stru_1F3BD5BF0.isa, localizedDescription);
      goto LABEL_45;
    case 10:
      _transactionStatusString3 = [(PKPaymentTransactionDetailViewController *)self _transactionStatusString];
      v50 = objc_alloc(MEMORY[0x1E69B92F8]);
      mEMORY[0x1E69B8A58]4 = [MEMORY[0x1E69B8A58] sharedInstance];
      secondaryFundingSourceFPANIdentifier3 = [(PKPaymentTransaction *)self->_transaction secondaryFundingSourceFPANIdentifier];
      v53 = [mEMORY[0x1E69B8A58]4 passWithFPANIdentifier:secondaryFundingSourceFPANIdentifier3];
      installmentPayment = [v50 initWithPaymentPass:v53];

      _transactionStatusString = _transactionStatusString3;
      v7 = &OBJC_IVAR___PKAddressEditorViewController__searchCompleter;

      localizedDisplay = [MEMORY[0x1E69B8EB8] secondaryFundingSourceDescriptionForTransaction:self->_transaction secondarySource:installmentPayment includeBankAccountSuffix:1 useGenericNameIfNoDescriptionAvailable:1];
      goto LABEL_62;
    case 11:
      accountType = [(PKPaymentTransaction *)self->_transaction accountType];
      systemRedColor = 0;
      if (accountType > 2)
      {
        if (accountType == 3)
        {
          _transactionStatusString = PKLocalizedFeatureString();
LABEL_109:
          v54 = PKLocalizedFeatureString();
          goto LABEL_150;
        }

        v179 = 0;
        v180 = 0;
        v177 = 0;
        v19 = 0;
        _transactionStatusString = 0;
        if (accountType != 4)
        {
          goto LABEL_154;
        }
      }

      else if (accountType >= 2)
      {
        v179 = 0;
        v180 = 0;
        v177 = 0;
        v19 = 0;
        _transactionStatusString = 0;
        if (accountType != 2)
        {
          goto LABEL_154;
        }

        _transactionStatusString = PKDynamicLocalizedAppleCardString(&cfstr_TransactionDet_94.isa);
        v179 = PKDynamicLocalizedAppleCardString(&cfstr_TransactionDet_141.isa);
        v180 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:@"https://support.apple.com/en-us/HT209230"];
        if (([(PKAccount *)self->_account hideInterestChargeClarity]& 1) != 0)
        {
          v19 = PKDynamicLocalizedAppleCardString(&cfstr_TransactionDet_146.isa);
          systemRedColor = 0;
          goto LABEL_153;
        }

        v169 = _transactionStatusString;
        v171 = localizedDescription;
        creditDetails = [(PKAccount *)self->_account creditDetails];
        mergeDate = [creditDetails mergeDate];

        v100 = objc_alloc(MEMORY[0x1E695DEE8]);
        v101 = [v100 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
        [v101 setTimeZone:self->_productTimeZone];
        v102 = objc_alloc_init(MEMORY[0x1E695DF10]);
        [v102 setMonth:2];
        v103 = [v101 dateByAddingComponents:v102 toDate:mergeDate options:0];
        transactionDate = [(PKPaymentTransaction *)self->_transaction transactionDate];
        v167 = v103;
        v178 = mergeDate;
        IsBetweenDates = PKDateIsBetweenDates();
        associatedStatementIdentifiers = [(PKPaymentTransaction *)self->_transaction associatedStatementIdentifiers];
        v106 = [associatedStatementIdentifiers count];

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

        v175 = viewCopy;
        if ([(NSArray *)self->_associatedCreditStatements count]!= v106)
        {
          v108 = @"TRANSACTION_DETAIL_INTEREST_CHARGED_GENERIC_MESSAGE";
LABEL_193:
          v19 = PKDynamicLocalizedAppleCardString(&v108->isa);
          goto LABEL_194;
        }

        v109 = [(NSArray *)self->_associatedCreditStatements objectAtIndexedSubscript:0];
        openingDate = [v109 openingDate];
        v165 = v109;
        closingDate = [v109 closingDate];
        v112 = PKDatesMidpoint();

        v164 = v112;
        v113 = [(NSDateFormatter *)self->_monthFormatter stringFromDate:v112];
        if (v106 == 1)
        {
          productTimeZoneMonthDayFormatter = self->_productTimeZoneMonthDayFormatter;
          paymentDueDate = [v165 paymentDueDate];
          v114 = [(NSDateFormatter *)productTimeZoneMonthDayFormatter stringFromDate:paymentDueDate];

          v19 = PKDynamicLocalizedAppleCardString(&cfstr_TransactionDet_145.isa, &cfstr_12.isa, v113, v114);
          _transactionStatusString = v169;
        }

        else
        {
          v19 = 0;
          _transactionStatusString = v169;
          if (v106 != 2)
          {
            goto LABEL_191;
          }

          v114 = [(NSArray *)self->_associatedCreditStatements objectAtIndexedSubscript:1];
          openingDate2 = [v114 openingDate];
          closingDate2 = [v114 closingDate];
          v163 = PKDatesMidpoint();

          _transactionStatusString = v169;
          v117 = [(NSDateFormatter *)self->_monthFormatter stringFromDate:v163];
          PKDynamicLocalizedAppleCardString(&cfstr_TransactionDet_144.isa, &cfstr_12.isa, v113, v117);
          v119 = v118 = v113;

          v19 = v119;
          v113 = v118;
        }

LABEL_191:
        viewCopy = v175;
        if (!v19)
        {
          v108 = @"TRANSACTION_DETAIL_INTEREST_CHARGED_GENERIC_MESSAGE";
          goto LABEL_193;
        }

LABEL_194:

        systemRedColor = 0;
        v177 = 0;
        localizedDescription = v171;
        goto LABEL_195;
      }

      if ([(PKPaymentTransaction *)self->_transaction isBankConnectTransaction])
      {
LABEL_12:
        _transactionStatusString4 = [(PKPaymentTransactionDetailViewController *)self _transactionStatusString];
LABEL_13:
        _transactionStatusString = _transactionStatusString4;
LABEL_14:
        systemRedColor = 0;
        v179 = 0;
        v180 = 0;
        v177 = 0;
        v19 = 0;
      }

      else
      {
        systemRedColor = 0;
        v179 = 0;
        v180 = 0;
        v177 = 0;
        v19 = 0;
        _transactionStatusString = 0;
      }

      goto LABEL_154;
    case 13:
    case 14:
      _transactionStatusString = PKLocalizedFeatureString();
      installmentPayment = [(PKPaymentTransaction *)self->_transaction installmentPayment];
      localizedDisplay = [installmentPayment localizedDisplay];
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
      _transactionStatusString = 0;
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

- (id)_expiredPhysicalCardCellForTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  v7 = [path row];
  if (v7 == 1)
  {
    v8 = [(PKPaymentTransactionDetailViewController *)self _tableView:viewCopy actionButtonCellForSection:2];
    textLabel = [v8 textLabel];
    v26 = PKLocalizedFeatureString();
    [textLabel setText:v26];

    textLabel2 = [v8 textLabel];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [textLabel2 setTextColor:labelColor];

    [v8 setAccessoryType:1];
  }

  else if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"PKPaymentTransactionConfigurationCellReuseIdentifier"];
    subtitleCellConfiguration = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
    v10 = PKLocalizedFeatureString();
    [subtitleCellConfiguration setText:v10];

    textProperties = [subtitleCellConfiguration textProperties];
    v12 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90], *MEMORY[0x1E69DB958]);
    [textProperties setFont:v12];

    v13 = PKLocalizedFeatureString();
    [subtitleCellConfiguration setSecondaryText:v13];

    secondaryTextProperties = [subtitleCellConfiguration secondaryTextProperties];
    v15 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
    [secondaryTextProperties setFont:v15];

    secondaryTextProperties2 = [subtitleCellConfiguration secondaryTextProperties];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [secondaryTextProperties2 setColor:secondaryLabelColor];

    [subtitleCellConfiguration setTextToSecondaryTextVerticalPadding:5.0];
    v18 = PKPassKitUIBundle();
    v19 = [v18 URLForResource:@"MessageAlert" withExtension:@"pdf"];
    v20 = PKUIScreenScale();
    v21 = PKUIImageFromPDF(v19, 42.0, 42.0, v20);

    [subtitleCellConfiguration setImage:v21];
    imageProperties = [subtitleCellConfiguration imageProperties];
    v23 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:42.0];
    [imageProperties setPreferredSymbolConfiguration:v23];

    [subtitleCellConfiguration setImageToTextPadding:12.0];
    imageProperties2 = [subtitleCellConfiguration imageProperties];
    [imageProperties2 setReservedLayoutSize:{42.0, 42.0}];

    [v8 setContentConfiguration:subtitleCellConfiguration];
    [(PKPaymentTransactionDetailViewController *)self _applySeparatorInsetForCell:v8];
  }

  return v8;
}

- (id)_disputeStatusCellForTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  v7 = [path row];
  if (v7 == 1)
  {
    v8 = [(PKPaymentTransactionDetailViewController *)self _tableView:viewCopy actionButtonCellForSection:1];
    if ([(PKPaymentTransaction *)self->_transaction disputeStatus]== 7)
    {
      disputeStatusDetails = [(PKPaymentTransaction *)self->_transaction disputeStatusDetails];
      statusReasons = [disputeStatusDetails statusReasons];
      [statusReasons containsObject:@"decisioned"];
    }

    textLabel = [v8 textLabel];
    v20 = PKLocalizedFeatureString();
    [textLabel setText:v20];
  }

  else
  {
    if (v7)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"PKPaymentTransactionConfigurationCellReuseIdentifier"];
    textLabel = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
    _disputeStatusTitle = [(PKPaymentTransactionDetailViewController *)self _disputeStatusTitle];
    [textLabel setText:_disputeStatusTitle];

    textProperties = [textLabel textProperties];
    v12 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90], *MEMORY[0x1E69DB958]);
    [textProperties setFont:v12];

    _disputeStatusDescription = [(PKPaymentTransactionDetailViewController *)self _disputeStatusDescription];
    [textLabel setSecondaryText:_disputeStatusDescription];

    secondaryTextProperties = [textLabel secondaryTextProperties];
    v15 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
    [secondaryTextProperties setFont:v15];

    secondaryTextProperties2 = [textLabel secondaryTextProperties];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [secondaryTextProperties2 setColor:secondaryLabelColor];

    [textLabel setTextToSecondaryTextVerticalPadding:5.0];
    v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"flag.circle.fill"];
    systemOrangeColor = [MEMORY[0x1E69DC888] systemOrangeColor];
    v20 = [v18 imageWithTintColor:systemOrangeColor renderingMode:1];

    [textLabel setImage:v20];
    imageProperties = [textLabel imageProperties];
    v22 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:50.0];
    [imageProperties setPreferredSymbolConfiguration:v22];

    [textLabel setImageToTextPadding:12.0];
    imageProperties2 = [textLabel imageProperties];
    [imageProperties2 setReservedLayoutSize:{50.0, 50.0}];

    [v8 setContentConfiguration:textLabel];
    [(PKPaymentTransactionDetailViewController *)self _applySeparatorInsetForCell:v8];
  }

LABEL_9:

  return v8;
}

- (id)_disputeStatusTitle
{
  disputeStatusDetails = [(PKPaymentTransaction *)self->_transaction disputeStatusDetails];
  hideEnhancedDisputeDetails = [(PKAccount *)self->_account hideEnhancedDisputeDetails];
  disputeStatus = [(PKPaymentTransaction *)self->_transaction disputeStatus];
  v6 = 0;
  if (disputeStatus <= 3)
  {
    switch(disputeStatus)
    {
      case 1:
        v14 = @"DISPUTE_STATUS_NEW_TITLE";
        break;
      case 2:
        v14 = @"DISPUTE_STATUS_OPEN_TITLE";
        break;
      case 3:
        statusReasons = [disputeStatusDetails statusReasons];
        v13 = [statusReasons containsObject:@"evidenceRequestedFromCustomer"];

        v9 = hideEnhancedDisputeDetails | ~v13;
        v10 = @"DISPUTE_STATUS_PENDING_EVIDENCE_REQUESTED_TITLE";
        v11 = @"DISPUTE_STATUS_PENDING_TITLE";
        goto LABEL_9;
      default:
        goto LABEL_22;
    }
  }

  else if (disputeStatus > 5)
  {
    if (disputeStatus == 6)
    {
      v14 = @"DISPUTE_STATUS_WITHDRAWN_TITLE";
    }

    else
    {
      if (disputeStatus != 7)
      {
        goto LABEL_22;
      }

      statusReasons2 = [disputeStatusDetails statusReasons];
      v16 = [statusReasons2 containsObject:@"decisioned"];

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
    if (disputeStatus != 4)
    {
      statusReasons3 = [disputeStatusDetails statusReasons];
      v8 = [statusReasons3 containsObject:@"splitLiability"];

      v9 = hideEnhancedDisputeDetails | ~v8;
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
  latestDisputeEvent = [(PKPaymentTransaction *)self->_transaction latestDisputeEvent];
  disputeStatusDetails = [(PKPaymentTransaction *)self->_transaction disputeStatusDetails];
  hideEnhancedDisputeDetails = [(PKAccount *)self->_account hideEnhancedDisputeDetails];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PKPaymentTransactionDetailViewController__disputeStatusDescription__block_invoke;
  aBlock[3] = &unk_1E80276A0;
  aBlock[4] = self;
  v6 = disputeStatusDetails;
  v21 = v6;
  v7 = latestDisputeEvent;
  v22 = v7;
  v8 = _Block_copy(aBlock);
  disputeStatus = [(PKPaymentTransaction *)self->_transaction disputeStatus];
  v10 = 0;
  if (disputeStatus <= 3)
  {
    switch(disputeStatus)
    {
      case 1:
        v8[2](v8, @"DISPUTE_STATUS_NEW_DESCRIPTION");
        break;
      case 2:
        v8[2](v8, @"DISPUTE_STATUS_OPEN_DESCRIPTION");
        break;
      case 3:
        statusReasons = [v6 statusReasons];
        v16 = [statusReasons containsObject:@"evidenceRequestedFromCustomer"];

        v13 = v8[2];
        if (hideEnhancedDisputeDetails & 1 | ((v16 & 1) == 0))
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

  else if (disputeStatus > 5)
  {
    if (disputeStatus != 6)
    {
      if (disputeStatus != 7)
      {
        goto LABEL_24;
      }

      statusReasons2 = [v6 statusReasons];
      v18 = [statusReasons2 containsObject:@"decisioned"];

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
    if (disputeStatus != 4)
    {
      statusReasons3 = [v6 statusReasons];
      v12 = [statusReasons3 containsObject:@"splitLiability"];

      v13 = v8[2];
      if (hideEnhancedDisputeDetails & 1 | ((v12 & 1) == 0))
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
  serviceIdentifier = [(PKPaymentTransaction *)self->_transaction serviceIdentifier];
  if (serviceIdentifier)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:serviceIdentifier];

    if (v3)
    {
      v4 = [serviceIdentifier componentsSeparatedByString:@"-"];
      lastObject = [v4 lastObject];

      serviceIdentifier = lastObject;
    }
  }

  return serviceIdentifier;
}

- (id)_transactionIdentifierCellForTableView:(id)view
{
  v4 = [view dequeueReusableCellWithIdentifier:@"PKPaymentTransactionSubtitleCellReuseIdentifier"];
  textLabel = [v4 textLabel];
  detailTextLabel = [v4 detailTextLabel];
  v7 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_158.isa);
  [textLabel setText:v7];

  if (self->_inBridge)
  {
    [MEMORY[0x1E69DC888] systemGrayColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v8 = ;
  [textLabel setTextColor:v8];

  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [textLabel setFont:v9];

  [textLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  if (self->_inBridge)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v10 = ;
  [detailTextLabel setTextColor:v10];

  _transactionIdentifierDescription = [(PKPaymentTransactionDetailViewController *)self _transactionIdentifierDescription];
  [detailTextLabel setText:_transactionIdentifierDescription];

  v12 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD00], 0, 0, 4);
  [detailTextLabel setFont:v12];

  [detailTextLabel setNumberOfLines:0];
  [detailTextLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9DC0]];
  [v4 setSelectionStyle:0];
  [v4 setAccessoryType:0];

  return v4;
}

- (id)_fraudRiskCellForTableView:(id)view
{
  v3 = [view dequeueReusableCellWithIdentifier:@"PKPaymentTransactionDefaultCellReuseIdentifier"];
  [v3 setSelectionStyle:0];
  textLabel = [v3 textLabel];
  pkui_osloErrorColor = [MEMORY[0x1E69DC888] pkui_osloErrorColor];
  v6 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_159.isa);
  [textLabel setText:v6];

  [textLabel setTextColor:pkui_osloErrorColor];

  return v3;
}

- (unint64_t)_recognitionHintsRowForIndex:(unint64_t)index
{
  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    if ([(PKPaymentTransactionDetailViewController *)self _recognitionHintsRowIsEnabled:v5])
    {
      if (v6 == index)
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

- (BOOL)_recognitionHintsRowIsEnabled:(unint64_t)enabled
{
  if ([(PKPaymentTransaction *)self->_transaction transactionType])
  {
    v5 = [(PKPaymentTransaction *)self->_transaction transactionType]!= 1;
  }

  else
  {
    v5 = 0;
  }

  isBankConnectTransaction = [(PKPaymentTransaction *)self->_transaction isBankConnectTransaction];
  v7 = 0;
  if ([(PKAccount *)self->_account feature]!= 2 || v5 || (isBankConnectTransaction & 1) != 0)
  {
    return v7;
  }

  if (enabled != 1)
  {
    if (enabled)
    {
      return 0;
    }

    unansweredQuestions = [(PKPaymentTransaction *)self->_transaction unansweredQuestions];
    if ([unansweredQuestions count])
    {
      v7 = 1;
    }

    else
    {
      merchant = [(PKPaymentTransaction *)self->_transaction merchant];
      rawName = [merchant rawName];
      v7 = [rawName length] != 0;
    }

    return v7;
  }

  return [(PKPaymentTransactionDetailViewController *)self _transactionIsTaggedAsRecurring];
}

- (id)_recognitionHintsCellForTableView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PKPaymentTransactionDefaultCellReuseIdentifier"];
  detailTextLabel = [v7 detailTextLabel];
  [detailTextLabel setText:0];

  [v7 setAccessoryType:0];
  textLabel = [v7 textLabel];
  [textLabel setNumberOfLines:0];
  v10 = [pathCopy row];

  v11 = [(PKPaymentTransactionDetailViewController *)self _recognitionHintsRowForIndex:v10];
  if (v11 != 2)
  {
    if (v11 == 1)
    {
      v15 = PKLocalizedPaymentString(&cfstr_TransactionPos.isa);
      [textLabel setText:v15];

      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    else
    {
      if (v11)
      {
LABEL_7:
        v17 = v7;
        goto LABEL_9;
      }

      merchant = [(PKPaymentTransaction *)self->_transaction merchant];
      rawName = [merchant rawName];
      [textLabel setText:rawName];

      secondaryLabelColor = [MEMORY[0x1E69DC888] labelColor];
    }

    v16 = secondaryLabelColor;
    [textLabel setTextColor:secondaryLabelColor];

    goto LABEL_7;
  }

  v17 = 0;
LABEL_9:

  return v17;
}

- (id)_releasedDataCellForTableView:(id)view atIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:@"PKPaymentTransactionRequestedElementsDataReuseIdentifier" forIndexPath:path];
  [v5 setDataReleaseConfiguration:self->_dataReleaseTransactionConfiguration];

  return v5;
}

- (int64_t)_maximumRetentionPeriodForElements:(id)elements
{
  v16 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [elementsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    retentionPeriod = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(elementsCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 retentionPeriod] >= 1 && objc_msgSend(v9, "retentionPeriod") > retentionPeriod)
        {
          retentionPeriod = [v9 retentionPeriod];
        }
      }

      v5 = [elementsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    retentionPeriod = 0;
  }

  return retentionPeriod;
}

- (void)_fetchDataReleaseTransactionConfiguration
{
  if (!self->_dataReleaseTransactionConfiguration)
  {
    v3 = [_TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration alloc];
    releasedData = [(PKPaymentTransaction *)self->_transaction releasedData];
    documentType = [releasedData documentType];
    releasedData2 = [(PKPaymentTransaction *)self->_transaction releasedData];
    elements = [releasedData2 elements];
    transactionSource = [(PKPaymentTransaction *)self->_transaction transactionSource];
    paymentPass = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
    localizedDescription = [paymentPass localizedDescription];
    v11 = [(PKIdentityDataReleaseTransactionConfiguration *)v3 initWithDocumentType:documentType elements:elements transactionSource:transactionSource passName:localizedDescription];
    dataReleaseTransactionConfiguration = self->_dataReleaseTransactionConfiguration;
    self->_dataReleaseTransactionConfiguration = v11;

    [(PKSectionTableViewController *)self reloadData];
  }
}

- (id)_merchantTokenManagementCellForTableView:(id)view
{
  v3 = [view dequeueReusableCellWithIdentifier:@"PKPaymentTransactionConfigurationCellReuseIdentifier"];
  defaultContentConfiguration = [v3 defaultContentConfiguration];
  v5 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokenT_2.isa);
  [defaultContentConfiguration setText:v5];

  [v3 setAccessoryType:1];
  [v3 setContentConfiguration:defaultContentConfiguration];

  return v3;
}

- (id)_merchantTokenDeletedCellForTableView:(id)view atIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:{@"PKPaymentTransactionMerchantTokenDeletedCellReuseIdentifier", path}];
  [(PKPaymentTransactionDetailViewController *)self _applySeparatorInsetForCell:v5];
  defaultContentConfiguration = [v5 defaultContentConfiguration];
  v7 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokenT_3.isa);
  [defaultContentConfiguration setText:v7];

  textProperties = [defaultContentConfiguration textProperties];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [textProperties setColor:secondaryLabelColor];

  [v5 setContentConfiguration:defaultContentConfiguration];

  return v5;
}

- (void)_didSelectMerchantTokenManagement
{
  merchantTokens = [(PKRetrieveMerchantTokensResponse *)self->_merchantTokenResponse merchantTokens];
  firstObject = [merchantTokens firstObject];

  v5 = [[PKMerchantTokenDetailViewController alloc] initWithMerchantToken:firstObject];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__PKPaymentTransactionDetailViewController__didSelectMerchantTokenManagement__block_invoke;
  v7[3] = &unk_1E8012FD0;
  v8 = v5;
  selfCopy = self;
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

- (void)merchantTokenDetailViewController:(id)controller didDeleteMerchantToken:(id)token
{
  controllerCopy = controller;
  navigationController = [(PKPaymentTransactionDetailViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == controllerCopy)
  {
    if ([navigationController pk_settings_useStateDrivenNavigation])
    {
      [navigationController pk_settings_popViewController];
    }

    else
    {
      v7 = [navigationController popViewControllerAnimated:1];
    }
  }

  merchantTokenResponse = self->_merchantTokenResponse;
  self->_merchantTokenResponse = 0;

  [(PKSectionTableViewController *)self updateSectionVisibilityAndReloadIfNecessaryForSection:18];
  [(PKPaymentTransactionDetailViewController *)self _fetchMerchantToken];
}

- (id)_applePayOrderRowCellForTableView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PKPaymentTransactionOrderCellReuseIdentifier"];
  applePayOrderRowViewModels = self->_applePayOrderRowViewModels;
  v9 = [pathCopy row];

  v10 = [(NSArray *)applePayOrderRowViewModels objectAtIndexedSubscript:v9];
  [v10 configureCell:v7];

  return v7;
}

- (id)_applePayBarcodeRowCellForTableView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PKPaymentTransactionBarcodeCellReuseIdentifier"];
  applePayBarcodeRowViewModels = self->_applePayBarcodeRowViewModels;
  v9 = [pathCopy row];

  v10 = [(NSArray *)applePayBarcodeRowViewModels objectAtIndexedSubscript:v9];
  [v10 configureCell:v7];

  return v7;
}

- (id)_applePayReceiptRowCellForTableView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PKPaymentTransactionReceiptCellReuseIdentifier"];
  applePayReceiptRowViewModels = self->_applePayReceiptRowViewModels;
  v9 = [pathCopy row];

  v10 = [(NSArray *)applePayReceiptRowViewModels objectAtIndexedSubscript:v9];
  [v10 configureCell:v7];

  return v7;
}

- (id)_foundInMailLockedRowCellForTableView:(id)view atIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:{@"PKPaymentTransactionFoundInMailLockedCellReuseIdentifier", path}];
  [v5 setShieldConfiguration:self->_foundInMailShieldConfiguration];
  [v5 configureWithParentViewController:self];

  return v5;
}

- (id)_foundInMailRowCellForTableView:(id)view atIndexPath:(id)path
{
  foundInMailRowViewModels = self->_foundInMailRowViewModels;
  viewCopy = view;
  v7 = -[NSArray objectAtIndexedSubscript:](foundInMailRowViewModels, "objectAtIndexedSubscript:", [path row]);
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"PKPaymentTransactionFoundInMailCellReuseIdentifier"];

  messageID = [v7 messageID];
  fromEmailAddress = [v7 fromEmailAddress];
  dateSent = [v7 dateSent];
  rowTitleText = [v7 rowTitleText];
  rowSubjectText = [v7 rowSubjectText];
  rowSubtitleText = [v7 rowSubtitleText];
  deeplinkURL = [v7 deeplinkURL];
  [v8 configureWithMessageID:messageID senderEmailAddress:fromEmailAddress dateSent:dateSent title:rowTitleText subject:rowSubjectText subtitle:rowSubtitleText deeplinkURL:deeplinkURL];

  return v8;
}

- (void)_tableView:(id)view didSelectFoundInMailItemAtIndexPath:(id)path
{
  v4 = -[NSArray objectAtIndexedSubscript:](self->_foundInMailRowViewModels, "objectAtIndexedSubscript:", [path row]);
  deeplinkURL = [v4 deeplinkURL];
  if (deeplinkURL)
  {
    v6 = +[PKDismissalPreventionAssertionManager sharedInstance];
    acquireAssertion = [v6 acquireAssertion];

    v8 = acquireAssertion;
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

- (id)_debugDetailCellForTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  v7 = [path row];
  if (v7 == 1)
  {
    v8 = [(PKPaymentTransactionDetailViewController *)self _tableView:viewCopy actionButtonCellForSection:27];
    textLabel = [v8 textLabel];
    [textLabel setText:@"Transaction Details"];

    [v8 setAccessoryType:1];
  }

  else if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(PKPaymentTransactionDetailViewController *)self _transactionIdentifierCellForTableView:viewCopy];
  }

  return v8;
}

- (id)_awardCellForTableView:(id)view
{
  v4 = [view dequeueReusableCellWithIdentifier:@"PKPaymentTransactionAwardCellReuseIdentifier"];
  textLabel = [v4 textLabel];
  if (self->_inBridge)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v6 = ;
  [textLabel setTextColor:v6];

  return v4;
}

- (id)_tableView:(id)view cellForAmountDetailLineItemAtIndex:(int64_t)index atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v10 = [(NSArray *)self->_lineItems objectAtIndexedSubscript:index];
  if ([v10 lineItemType] == 10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = v10;
    v12 = [viewCopy dequeueReusableCellWithIdentifier:@"PKPaymentTransactionReceiptLineItemCellReuseIdentifier" forIndexPath:pathCopy];
    [v12 setSuppressImage:self->_suppressReceiptImages];
    label = [v11 label];
    [v12 setPrimaryText:label];

    image = [v11 image];
    [v12 setImage:image];

    secondaryLabel = [v11 secondaryLabel];
    [v12 setSecondaryText:secondaryLabel];

    tertiaryLabel = [v11 tertiaryLabel];
    [v12 setTertiaryText:tertiaryLabel];

    value = [v11 value];
    [v12 setAmountText:value];

    hasTrailingLineSeperator = [v11 hasTrailingLineSeperator];
    [v12 setHasTrailingLineSeparator:hasTrailingLineSeperator];
    [(PKPaymentTransactionDetailViewController *)self _applySeparatorInsetForCell:v12];
  }

  else if ([v10 lineItemType] == 11)
  {
    v12 = [viewCopy dequeueReusableCellWithIdentifier:@"PKPaymentTransactionDateLineItemCellReuseIdentifier"];
    v19 = *MEMORY[0x1E69DDCF8];
    v20 = *MEMORY[0x1E69DDC90];
    v21 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90], 2, 0);
    v22 = PKFontForDefaultDesign(v19, v20, 0, 0);
    textLabel = [v12 textLabel];
    detailTextLabel = [v12 detailTextLabel];
    label2 = [v10 label];
    [textLabel setText:label2];

    [textLabel setFont:v21];
    if (self->_inBridge)
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }
    v32 = ;
    value2 = [v10 value];
    [detailTextLabel setText:value2];

    [detailTextLabel setTextColor:v32];
    [detailTextLabel setFont:v22];
    [v12 setAccessibilityIdentifier:*MEMORY[0x1E69B98F0]];
  }

  else
  {
    v39 = viewCopy;
    v12 = [viewCopy dequeueReusableCellWithIdentifier:@"PKPaymentTransactionDetailLineItemCellReuseIdentifier"];
    isEmphasized = [v10 isEmphasized];
    v27 = *MEMORY[0x1E69DDCF8];
    v28 = *MEMORY[0x1E69DDC90];
    v29 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90], 0, 0);
    v30 = PKFontForDefaultDesign(v27, v28, 2, 0);
    v31 = pathCopy;
    if (self->_inBridge)
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v34 = ;
    label3 = [v10 label];
    value3 = [v10 value];
    [v12 setHasTrailingLineSeperator:{objc_msgSend(v10, "hasTrailingLineSeperator")}];
    if (isEmphasized)
    {
      v37 = v30;
    }

    else
    {
      v37 = v29;
    }

    [v12 setTitleFont:v37];
    [v12 setTitleColor:v34];
    [v12 setTitleText:label3];
    [v12 setValueFont:v37];
    [v12 setValueColor:v34];
    [v12 setValueText:value3];
    [(PKPaymentTransactionDetailViewController *)self _applySeparatorInsetForCell:v12];

    pathCopy = v31;
    viewCopy = v39;
  }

  return v12;
}

- (void)_tableView:(id)view willDisplayAmountDetailsCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  if (-[PKPaymentTransactionDetailViewController _amountDetailsRowForIndex:](self, "_amountDetailsRowForIndex:", [pathCopy row]) == 3)
  {
    v8 = -[PKPaymentTransactionDetailViewController _lineItemItemForRowIndex:](self, "_lineItemItemForRowIndex:", [pathCopy row]);
    if (v8 < [(NSArray *)self->_lineItems count])
    {
      v9 = [(NSArray *)self->_lineItems objectAtIndexedSubscript:v8];
      [cellCopy setSeparatorStyle:{objc_msgSend(v9, "hasTrailingLineSeperator")}];
    }
  }
}

- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction
{
  transactionCopy = transaction;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__PKPaymentTransactionDetailViewController_transactionSourceIdentifier_didReceiveTransaction___block_invoke;
  v7[3] = &unk_1E8010A10;
  v8 = transactionCopy;
  selfCopy = self;
  v6 = transactionCopy;
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

- (void)transactionSourceIdentifier:(id)identifier didRemoveTransactionWithIdentifier:(id)withIdentifier
{
  withIdentifierCopy = withIdentifier;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __107__PKPaymentTransactionDetailViewController_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = withIdentifierCopy;
  v6 = withIdentifierCopy;
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

- (void)transactionWithIdentifier:(id)identifier didDownloadTransactionReceipt:(id)receipt
{
  identifierCopy = identifier;
  receiptCopy = receipt;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PKPaymentTransactionDetailViewController_transactionWithIdentifier_didDownloadTransactionReceipt___block_invoke;
  block[3] = &unk_1E8010A88;
  v11 = receiptCopy;
  v12 = identifierCopy;
  selfCopy = self;
  v8 = identifierCopy;
  v9 = receiptCopy;
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

- (void)didUpdateFamilyMembers:(id)members
{
  membersCopy = members;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__PKPaymentTransactionDetailViewController_didUpdateFamilyMembers___block_invoke;
  v6[3] = &unk_1E8010A10;
  v7 = membersCopy;
  selfCopy = self;
  v5 = membersCopy;
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

- (void)paymentOfferConfirmationRecordUpdated:(id)updated forTransactionWithPaymentHash:(id)hash
{
  updatedCopy = updated;
  hashCopy = hash;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__PKPaymentTransactionDetailViewController_paymentOfferConfirmationRecordUpdated_forTransactionWithPaymentHash___block_invoke;
  block[3] = &unk_1E8010A88;
  v11 = hashCopy;
  selfCopy = self;
  v13 = updatedCopy;
  v8 = updatedCopy;
  v9 = hashCopy;
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

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  v5 = [(PKPaymentTransactionDetailViewController *)self navigationController:controller];
  if ([v5 pk_settings_useStateDrivenNavigation])
  {
    [v5 pk_settings_popViewController];
  }

  else
  {
    v4 = [v5 popViewControllerAnimated:1];
  }
}

- (void)submitAnswer:(id)answer
{
  answerCopy = answer;
  if (!self->_submittingAnswer)
  {
    objc_storeStrong(&self->_submittingAnswer, answer);
    unansweredQuestions = [(PKPaymentTransaction *)self->_transaction unansweredQuestions];
    anyObject = [unansweredQuestions anyObject];
    type = [anyObject type];

    paymentServiceDataProvider = self->_paymentServiceDataProvider;
    identifier = [(PKPaymentTransaction *)self->_transaction identifier];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__PKPaymentTransactionDetailViewController_submitAnswer___block_invoke;
    v11[3] = &unk_1E80264A8;
    v11[4] = self;
    v12 = answerCopy;
    [(PKPaymentDataProvider *)paymentServiceDataProvider submitTransactionAnswerForTransaction:identifier questionType:type answer:v12 completion:v11];
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
  altDSID = [(PKPaymentTransaction *)self->_transaction altDSID];
  if (altDSID)
  {
    v3 = PKCurrentUserAltDSID();
    v4 = altDSID;
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
  releasedData = [(PKPaymentTransaction *)self->_transaction releasedData];
  application = [releasedData application];
  bundleIdentifier = [application bundleIdentifier];

  if (bundleIdentifier)
  {
    objc_initWeak(&location, self);
    self->_privacyURLCallInProgress = 1;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__PKPaymentTransactionDetailViewController__loadAppPrivacyURLFromAppStore__block_invoke;
    v7[3] = &unk_1E80122D8;
    objc_copyWeak(&v8, &location);
    v6 = PKLookupAppStoreApplicationPrivacyPolicy(bundleIdentifier, v7);
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

  transactionSource = [(PKPaymentTransaction *)self->_transaction transactionSource];
  if (transactionSource != 2)
  {
    if (transactionSource != 1)
    {
      return;
    }

    releasedData = [(PKPaymentTransaction *)self->_transaction releasedData];
    privacyPolicyURL = [releasedData privacyPolicyURL];
    privacyURL = self->_privacyURL;
    self->_privacyURL = privacyPolicyURL;

    goto LABEL_16;
  }

  releasedData2 = [(PKPaymentTransaction *)self->_transaction releasedData];
  application = [releasedData2 application];
  client = [application client];

  if (client == 1)
  {
    releasedData = [(PKPaymentTransaction *)self->_transaction releasedData];
    privacyPolicyURL2 = [releasedData privacyPolicyURL];
    v11 = privacyPolicyURL2;
    if (privacyPolicyURL2)
    {
      v12 = privacyPolicyURL2;
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
  bankConnectMetadata = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  digitalServicingURL = [bankConnectMetadata digitalServicingURL];

  v3 = digitalServicingURL;
  if (digitalServicingURL)
  {
    PKOpenURL();
    v3 = digitalServicingURL;
  }
}

- (void)_openBankConnectPostInstallmentURL
{
  bankConnectMetadata = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  postInstallmentURL = [bankConnectMetadata postInstallmentURL];

  v3 = postInstallmentURL;
  if (postInstallmentURL)
  {
    PKOpenURL();
    v3 = postInstallmentURL;
  }
}

- (void)_openBankConnectRedeemRewardsURL
{
  bankConnectMetadata = [(PKPaymentTransaction *)self->_transaction bankConnectMetadata];
  redeemRewardsURL = [bankConnectMetadata redeemRewardsURL];

  v3 = redeemRewardsURL;
  if (redeemRewardsURL)
  {
    PKOpenURL();
    v3 = redeemRewardsURL;
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

- (void)_showDeleteConfirmationSheet:(id)sheet
{
  sheetCopy = sheet;
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
  popoverPresentationController = [v7 popoverPresentationController];
  [popoverPresentationController setSourceView:sheetCopy];

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
    identifier = [(PKPaymentTransaction *)transaction identifier];
    v13 = identifier == 0;
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
    identifier2 = [v17 alertControllerWithTitle:v18 message:v19 preferredStyle:1];

    v20 = MEMORY[0x1E69DC648];
    v21 = PKLocalizedIdentityString(&cfstr_TransactionDel_5.isa);
    v22 = [v20 actionWithTitle:v21 style:0 handler:0];
    [identifier2 addAction:v22];

    [(PKPaymentTransactionDetailViewController *)self presentViewController:identifier2 animated:1 completion:0];
  }

  else
  {
    paymentServiceDataProvider = self->_paymentServiceDataProvider;
    identifier2 = [(PKPaymentTransaction *)self->_transaction identifier];
    [(PKPaymentDataProvider *)paymentServiceDataProvider deletePaymentTransactionWithIdentifier:identifier2];
  }
}

- (void)thresholdTopUpController:(id)controller requestsPushViewController:(id)viewController
{
  viewControllerCopy = viewController;
  navigationController = [(PKPaymentTransactionDetailViewController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_pushViewController:viewControllerCopy];
  }

  else
  {
    [navigationController pushViewController:viewControllerCopy animated:1];
  }
}

- (id)presentationSceneIdentifierForTopUpController:(id)controller
{
  view = [(PKPaymentTransactionDetailViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _sceneIdentifier = [windowScene _sceneIdentifier];

  return _sceneIdentifier;
}

- (void)thresholdTopUpControllerCompletedSetup:(id)setup
{
  navigationController = [(PKPaymentTransactionDetailViewController *)self navigationController];
  presentingViewController = [navigationController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)thresholdTopUpController:(id)controller requestsPopViewController:(id)viewController
{
  v5 = [(PKPaymentTransactionDetailViewController *)self navigationController:controller];
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

- (void)executeAfterContentIsLoaded:(id)loaded
{
  loadedCopy = loaded;
  v5 = loadedCopy;
  if (loadedCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__PKPaymentTransactionDetailViewController_executeAfterContentIsLoaded___block_invoke;
    v6[3] = &unk_1E8010DD0;
    v6[4] = self;
    v7 = loadedCopy;
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
    navigationController = [(PKPaymentTransactionDetailViewController *)self navigationController];
    if ([navigationController pk_settings_useStateDrivenNavigation])
    {
      [navigationController pk_settings_popViewController];
    }

    else
    {
      v4 = [navigationController popViewControllerAnimated:1];
    }
  }
}

- (void)physicalCardsChanged:(id)changed forAccountIdentifier:(id)identifier
{
  changedCopy = changed;
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__PKPaymentTransactionDetailViewController_physicalCardsChanged_forAccountIdentifier___block_invoke;
  v10[3] = &unk_1E8011828;
  objc_copyWeak(&v13, &location);
  v11 = identifierCopy;
  v12 = changedCopy;
  v8 = changedCopy;
  v9 = identifierCopy;
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

- (void)appProtectionCoordinatorDidGainAccess:(id)access
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

- (void)appProtectionCoordinatorDidFailAccess:(id)access
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

- (void)_foundInMailApplicationWillResignActive:(id)active
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

- (void)_foundInMailApplicationWillEnterForeground:(id)foreground
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