@interface PKPassbookSettingsController
- (BOOL)_isPeerPaymentRegistered;
- (BOOL)_supportsApplePay;
- (BOOL)canPresentLaunchPrompts;
- (BOOL)canShareCompanionPass:(id)pass;
- (PKPassbookSettingsController)initWithDelegate:(id)delegate dataSource:(id)source context:(int64_t)context;
- (PKPassbookSettingsDelegate)delegate;
- (id)_accountSpecifierForAccount:(id)account;
- (id)_applePayDefaultsSpecifierGroup;
- (id)_bankConnectGroupSpecifiers;
- (id)_bridgeApplePayDefaultsSpecifiers;
- (id)_bridgeTopLevelSpecifiers;
- (id)_cardBenefitSpecifiers;
- (id)_closedAccountsGroupSpecifiers;
- (id)_companionPassSpecifiers;
- (id)_credentialCenterSpecifiers;
- (id)_currentDefaultPaymentPass;
- (id)_defaultAppSpecifiers;
- (id)_defaultContactEmailSpecifier;
- (id)_defaultContactPhoneSpecifier;
- (id)_defaultExpressTransitSpecifier;
- (id)_defaultPaymentSpecifier;
- (id)_defaultShippingAddressSpecifier;
- (id)_defaultsGroupSpecifiers;
- (id)_doubleClickSwitchSettingForSpecifier:(id)specifier;
- (id)_expiredPassesSwitchGroupSpecifiers;
- (id)_expiredPassesSwitchSettingForSpecifier:(id)specifier;
- (id)_fallbackExpressTransitFooterText;
- (id)_fpanCountDetailText;
- (id)_getDefaultContactEmail;
- (id)_getDefaultContactPhone;
- (id)_getDefaultPaymentCard;
- (id)_getDefaultShippingAddress;
- (id)_handoffSwitchGroupSpecifiers;
- (id)_handoffSwitchSettingForSpecifier:(id)specifier;
- (id)_identityVerificationSpecifiers;
- (id)_invitationFromCredential:(id)credential;
- (id)_lockscreenSwitchGroupSpecifiers;
- (id)_matchingInvitationForPass:(id)pass withInvitations:(id)invitations;
- (id)_merchantTokensGroupSpecifier;
- (id)_merchantTokensSpecifier;
- (id)_onlinePaymentsGroupSpecifiers;
- (id)_onlinePaymentsSettingForSpecifier:(id)specifier;
- (id)_openAccountsGroupSpecifiers;
- (id)_orderManagementGroupSpecifiers;
- (id)_otherPassSpecifiers;
- (id)_passSpecifiersForPasses:(id)passes peerPaymentPassUniqueID:(id)d showPeerPaymentSetup:(BOOL)setup;
- (id)_paymentPassSpecifiers;
- (id)_peerPaymentGroupSpecifiers;
- (id)_peerPaymentSwitchSpecifier;
- (id)_peerPaymentTinkerGroupSpecifiers;
- (id)_pendingCompanionPassSpecifiers;
- (id)_pendingInvitationsGroupSpecifiers;
- (id)_restrictedModeSpecifier;
- (id)_settingsApplePayDefaultsSpecifiers;
- (id)_settingsTopLevelSpecifiers;
- (id)_showCardBenefitMerchandisingOffersSettingForSpecifier:(id)specifier;
- (id)_showCardBenefitPayLaterSettingForSpecifier:(id)specifier;
- (id)_showCardBenefitRewardsSettingForSpecifier:(id)specifier;
- (id)_showPayLaterOptionsSettingForSpecifier:(id)specifier;
- (id)_showPayLaterOptionsSpecifiers;
- (id)_specifierForPassUniqueID:(id)d;
- (id)_subtitleTextForActiveAccount:(id)account;
- (id)_systemPolicyForAppSpecifiers;
- (id)_transitDefaultsGroupSpecifiers;
- (id)_uppercaseGroupSpecifierTitleIfNecessary:(id)necessary;
- (id)applePayDefaultsSpecifiers;
- (id)isIdentityVerificationAllowOnWebsitesEnabled;
- (id)passWithUniqueIdentifier:(id)identifier;
- (id)rendererStateForPaymentPass:(id)pass;
- (id)specifiers;
- (int64_t)_paymentPreferencesStyle;
- (int64_t)_paymentSetupContextForSettingsContext:(int64_t)context;
- (void)_checkPairedDeviceSupportOfHiddenPassesAndRefreshUIIfNecessary;
- (void)_fetchAccounts;
- (void)_fetchBalancesAndTransitPassPropertiesForPass:(id)pass withDataProvider:(id)provider completion:(id)completion;
- (void)_fetchInstitutions;
- (void)_fetchPrecursorPassRequestUpgradeDescriptionsAndRefreshIfNecessary;
- (void)_handleDefaultPaymentPassChangedTo:(id)to withSender:(id)sender optionsController:(id)controller canPrompt:(BOOL)prompt;
- (void)_handleProvisioningError:(id)error viewController:(id)controller;
- (void)_invalidateLAContext;
- (void)_openPrivacyLink;
- (void)_peerPaymentAccountDidChangeNotification:(id)notification;
- (void)_peerPaymentWebServiceDidChangeNotification:(id)notification;
- (void)_performPhoneToWatchProvisioningForPaymentPass:(id)pass withCompletion:(id)completion;
- (void)_presentCredentialCenter:(id)center;
- (void)_presentCredentialSetupViewControllerForPaymentPass:(id)pass withCompletion:(id)completion;
- (void)_presentFPANAdditionFlowWithEligibleCards:(id)cards ineligibleCards:(id)ineligibleCards selectedCredentials:(id)credentials navController:(id)controller context:(id)context completion:(id)completion;
- (void)_presentFeatureNotEnabledForDemoForSpecifier:(id)specifier;
- (void)_presentInboxMessage:(id)message;
- (void)_presentPaymentSetupViewController:(id)controller paymentPass:(id)pass;
- (void)_presentPeerPaymentReOpenCardFlowForSpecifier:(id)specifier;
- (void)_presentPeerPaymentSetupFlowForSpecifier:(id)specifier completion:(id)completion;
- (void)_presentPeerPaymentSetupFlowWithAmount:(id)amount flowState:(unint64_t)state senderAddress:(id)address completion:(id)completion;
- (void)_processAccountChanged:(id)changed;
- (void)_refreshAccountSpecifiers;
- (void)_refreshCompanionGroupSpecififiers;
- (void)_refreshFPANCardDataCompletion:(id)completion;
- (void)_refreshPasses;
- (void)_regionConfigurationDidChangeNotification;
- (void)_registerForPeerPaymentWithSpecifier:(id)specifier;
- (void)_reloadBalancesAndTransitPassPropertiesForPass:(id)pass withDataProvider:(id)provider;
- (void)_reloadPassData;
- (void)_reloadPendingInvitationSpecifiers;
- (void)_reportAccountDeviceEventIfNecessary;
- (void)_requestAuthForShowingAutoFillCardsWithCompletion:(id)completion;
- (void)_requestDelegatePresentViewController:(id)controller completion:(id)completion;
- (void)_setCardAddProvisioningButtonEnabled:(BOOL)enabled forPaymentPass:(id)pass;
- (void)_setDoubleClickSwitchSetting:(id)setting forSpecifier:(id)specifier;
- (void)_setExpiredPassesSwitchSetting:(id)setting forSpecifier:(id)specifier;
- (void)_setHandoffSwitchSetting:(id)setting forSpecifier:(id)specifier;
- (void)_setOnlinePaymentsSetting:(id)setting forSpecifier:(id)specifier;
- (void)_setShowCardBenefitMerchandisingOffersSwitchSetting:(id)setting forSpecifier:(id)specifier;
- (void)_setShowCardBenefitPayLaterSwitchSetting:(id)setting forSpecifier:(id)specifier;
- (void)_setShowCardBenefitRewardsSwitchSetting:(id)setting forSpecifier:(id)specifier;
- (void)_setShowPayLaterOptionsSwitchSetting:(id)setting forSpecifier:(id)specifier;
- (void)_showAccountInfoForSavingsAccountSpecifier:(id)specifier;
- (void)_showBankConnectInstitutionDetails:(id)details;
- (void)_showCardDetails:(id)details;
- (void)_showDefaultContactEmailOptions:(id)options;
- (void)_showDefaultContactPhoneOptions:(id)options;
- (void)_showDefaultPaymentOptions:(id)options;
- (void)_showDefaultShippingAddressOptions:(id)options;
- (void)_showDocumentsForAccounts:(id)accounts title:(id)title sender:(id)sender;
- (void)_showFPANCardDescriptors:(id)descriptors auth:(id)auth;
- (void)_showMerchantTokensList:(id)list;
- (void)_showOrderTrackingSettingsViewController:(id)controller;
- (void)_startPreflightWithMode:(int64_t)mode referrerIdentifier:(id)identifier allowedFeatureIdentifiers:(id)identifiers force:(BOOL)force;
- (void)_transitPropertiesForPaymentPass:(id)pass withCompletion:(id)completion;
- (void)_unregisterForPeerPaymentWithSpecifier:(id)specifier;
- (void)_updateAccountIfNecessary:(id)necessary;
- (void)_updateAddButtonSpecifier;
- (void)_updateBalancesWithServerBalances:(id)balances transitPassProperties:(id)properties forPassWithUniqueIdentifier:(id)identifier;
- (void)_updateCardSpecifier:(id)specifier withAccountStateForPaymentPass:(id)pass;
- (void)_updateCardsGroupSpecifier;
- (void)_updateCompanionGroupSpecifier;
- (void)_updateCompanionPassesAddButton;
- (void)_updateDefaultCardsPreferences;
- (void)_updatePendingCompanionGroupSpecifier;
- (void)_updateTransitExpressPassIdentifiersWithReload:(BOOL)reload;
- (void)accountRemoved:(id)removed;
- (void)addCardTapped;
- (void)addCardTappedForPaymentPassWithSpecifier:(id)specifier;
- (void)addCardTappedForPaymentPassWithUniqueID:(id)d withCompletion:(id)completion;
- (void)applicationDidBecomeActive;
- (void)connectedInstitutionsDidChange:(id)change;
- (void)dealloc;
- (void)didUpdateDefaultPaymentPassWithUniqueIdentifier:(id)identifier;
- (void)inboxDataSourceDidUpdateInboxMessages:(id)messages;
- (void)openExpressTransitSettings:(id)settings withPassUniqueIdentifier:(id)identifier;
- (void)openPaymentSetupWithMode:(int64_t)mode referrerIdentifier:(id)identifier allowedFeatureIdentifiers:(id)identifiers force:(BOOL)force;
- (void)openPeerPaymentSetupWithCurrencyAmount:(id)amount state:(unint64_t)state senderAddress:(id)address;
- (void)openTransactionDefaultsEmailSettings;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties;
- (void)paymentSetupDidFinish:(id)finish;
- (void)peerPaymentAccountResolutionController:(id)controller requestsDismissCurrentViewControllerAnimated:(BOOL)animated;
- (void)peerPaymentAccountResolutionController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated;
- (void)popViewControllerInMerchantTokenStack;
- (void)presentApplePayDefaults;
- (void)presentFPANAdditionFlowWithPreflight:(BOOL)preflight selectedCredentials:(id)credentials withCompletion:(id)completion;
- (void)presentManageAutoFillCards;
- (void)presentMerchantTokenViewController:(id)controller;
- (void)presentMerchantTokenWithID:(id)d;
- (void)refreshDefaultCard;
- (void)refreshPasses;
- (void)refreshPeerPaymentStatus;
- (void)reloadSpecifiers;
- (void)setIdentityVerificationAllowOnWebsitesEnabled:(id)enabled;
- (void)setupPeerPaymentTinkerButtonTapped;
- (void)showBankConnectAuthorizationFlowWithRedirectURL:(id)l completion:(id)completion animated:(BOOL)animated;
- (void)showBankConnectManagementForInstitution:(id)institution accountIdentifier:(id)identifier sender:(id)sender completion:(id)completion;
- (void)showController:(id)controller animate:(BOOL)animate;
- (void)showDocumentsForClosedSavingsAccounts:(id)accounts;
- (void)showSavingsAccount:(id)account destination:(unint64_t)destination transaction:(id)transaction fundingSource:(id)source animated:(BOOL)animated;
- (void)switchSpinnerCell:(id)cell hasToggledSwitch:(BOOL)switch;
- (void)viewDidAppear;
- (void)viewDidLoad;
- (void)viewWillAppear;
@end

@implementation PKPassbookSettingsController

- (PKPassbookSettingsController)initWithDelegate:(id)delegate dataSource:(id)source context:(int64_t)context
{
  v110[1] = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  sourceCopy = source;
  v109.receiver = self;
  v109.super_class = PKPassbookSettingsController;
  v10 = [(PKPassbookSettingsController *)&v109 init];
  if (!v10)
  {
    goto LABEL_27;
  }

  objc_initWeak(&location, v10);
  objc_storeWeak(&v10->_delegate, delegateCopy);
  objc_storeStrong(&v10->_dataSource, source);
  setupDelegate = [(PKPassbookSettingsDataSource *)v10->_dataSource setupDelegate];
  if (setupDelegate)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    setupDelegate = v10->_dataSource;
    [(PKPassbookSettingsDataSource *)setupDelegate setSetupDelegate:v10];
LABEL_5:
  }

  v10->_context = context;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  latestTransitBalanceModel = v10->_latestTransitBalanceModel;
  v10->_latestTransitBalanceModel = v12;

  passLibraryDataProvider = [(PKPassbookSettingsDataSource *)v10->_dataSource passLibraryDataProvider];
  objc_storeWeak(&v10->_passLibraryDataProvider, passLibraryDataProvider);

  paymentDataProvider = [(PKPassbookSettingsDataSource *)v10->_dataSource paymentDataProvider];
  objc_storeWeak(&v10->_paymentDataProvider, paymentDataProvider);

  WeakRetained = objc_loadWeakRetained(&v10->_paymentDataProvider);
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = objc_loadWeakRetained(&v10->_paymentDataProvider);
    paymentWebService = [v18 paymentWebService];
    webService = v10->_webService;
    v10->_webService = paymentWebService;
  }

  v21 = objc_loadWeakRetained(&v10->_paymentDataProvider);
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    v23 = objc_loadWeakRetained(&v10->_paymentDataProvider);
    [v23 addDelegate:v10];
  }

  v24 = objc_alloc(MEMORY[0x1E69B8850]);
  v25 = objc_loadWeakRetained(&v10->_paymentDataProvider);
  v26 = objc_loadWeakRetained(&v10->_passLibraryDataProvider);
  v27 = [v24 initWithPaymentDataProvider:v25 passLibraryDataProvider:v26 isForWatch:v10->_context == 1];
  expressPassController = v10->_expressPassController;
  v10->_expressPassController = v27;

  v29 = [PKContactAvatarManager alloc];
  defaultContactResolver = [MEMORY[0x1E69B8740] defaultContactResolver];
  v31 = objc_loadWeakRetained(&v10->_paymentDataProvider);
  v32 = [(PKContactAvatarManager *)v29 initWithContactResolver:defaultContactResolver paymentDataProvider:v31];
  avatarManager = v10->_avatarManager;
  v10->_avatarManager = v32;

  v34 = objc_alloc_init(MEMORY[0x1E69B8680]);
  autofillCardManager = v10->_autofillCardManager;
  v10->_autofillCardManager = v34;

  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  pendingAutoFillCardUpdates = v10->_pendingAutoFillCardUpdates;
  v10->_pendingAutoFillCardUpdates = v36;

  v10->_autoFillCardUpdatesLock._os_unfair_lock_opaque = 0;
  [(PKPassbookSettingsController *)v10 _reloadPassData];
  if (v10->_context == 1)
  {
    v38 = 4;
  }

  else
  {
    v38 = 3;
  }

  v39 = [PKLaunchAuthorizationPromptController alloc];
  v40 = objc_loadWeakRetained(&v10->_passLibraryDataProvider);
  v41 = [(PKLaunchAuthorizationPromptController *)v39 initWithContext:v38 dataProvider:v40 delegate:v10];
  launchAuthorizationPromptController = v10->_launchAuthorizationPromptController;
  v10->_launchAuthorizationPromptController = v41;

  peerPaymentDelegate = [(PKPassbookSettingsDataSource *)v10->_dataSource peerPaymentDelegate];
  peerPaymentDelegate = v10->_peerPaymentDelegate;
  v10->_peerPaymentDelegate = peerPaymentDelegate;

  peerPaymentDataSource = [(PKPassbookSettingsDataSource *)v10->_dataSource peerPaymentDataSource];
  peerPaymentWebService = [peerPaymentDataSource peerPaymentWebService];
  peerPaymentWebService = v10->_peerPaymentWebService;
  v10->_peerPaymentWebService = peerPaymentWebService;

  targetDevice = [(PKPeerPaymentWebService *)v10->_peerPaymentWebService targetDevice];
  account = [targetDevice account];
  peerPaymentAccount = v10->_peerPaymentAccount;
  v10->_peerPaymentAccount = account;

  v51 = [PKPeerPaymentAccountResolutionController alloc];
  v52 = v10->_peerPaymentAccount;
  v53 = v10->_peerPaymentWebService;
  v54 = objc_loadWeakRetained(&v10->_passLibraryDataProvider);
  v55 = [(PKPeerPaymentAccountResolutionController *)v51 initWithAccount:v52 webService:v53 context:v38 delegate:v10 passLibraryDataProvider:v54];
  peerPaymentAccountResolutionController = v10->_peerPaymentAccountResolutionController;
  v10->_peerPaymentAccountResolutionController = v55;

  v57 = v10->_peerPaymentAccountResolutionController;
  setupDelegate2 = [(PKPassbookSettingsDataSource *)v10->_dataSource setupDelegate];
  [(PKPeerPaymentAccountResolutionController *)v57 setSetupDelegate:setupDelegate2];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  targetDevice2 = [(PKPeerPaymentWebService *)v10->_peerPaymentWebService targetDevice];
  [defaultCenter addObserver:v10 selector:sel__peerPaymentAccountDidChangeNotification_ name:*MEMORY[0x1E69BC378] object:targetDevice2];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:v10 selector:sel__peerPaymentWebServiceDidChangeNotification_ name:*MEMORY[0x1E69BC500] object:v10->_peerPaymentWebService];

  mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
  accountService = v10->_accountService;
  v10->_accountService = mEMORY[0x1E69B8400];

  [(PKAccountService *)v10->_accountService registerObserver:v10];
  [(PKPassbookSettingsController *)v10 _fetchAccounts];
  v64 = objc_loadWeakRetained(&v10->_delegate);
  LOBYTE(targetDevice2) = objc_opt_respondsToSelector();

  if (targetDevice2)
  {
    v65 = [[PKInboxDataSource alloc] initWithDelegate:v10];
    inboxDataSource = v10->_inboxDataSource;
    v10->_inboxDataSource = v65;
  }

  v67 = objc_alloc_init(MEMORY[0x1E695DF90]);
  cachedPrecursorPassUpgradeControllers = v10->_cachedPrecursorPassUpgradeControllers;
  v10->_cachedPrecursorPassUpgradeControllers = v67;

  v69 = objc_alloc_init(MEMORY[0x1E695DF90]);
  cachedPrecursorPassUpgradeDescriptions = v10->_cachedPrecursorPassUpgradeDescriptions;
  v10->_cachedPrecursorPassUpgradeDescriptions = v69;

  if (!context)
  {
    v71 = objc_alloc_init(MEMORY[0x1E6967DC0]);
    institutionsDataProvider = v10->_institutionsDataProvider;
    v10->_institutionsDataProvider = v71;

    [(FKBankConnectInstitutionsProvider *)v10->_institutionsDataProvider setDelegate:v10];
    [(PKPassbookSettingsController *)v10 _fetchInstitutions];
    v73 = objc_alloc_init(PKMerchantTokenUnifiedListViewControllerProvider);
    merchantTokensListViewControllerProvider = v10->_merchantTokensListViewControllerProvider;
    v10->_merchantTokensListViewControllerProvider = v73;

    v75 = MEMORY[0x1E69C86D8];
    v106[0] = MEMORY[0x1E69E9820];
    v106[1] = 3221225472;
    v106[2] = __68__PKPassbookSettingsController_initWithDelegate_dataSource_context___block_invoke;
    v106[3] = &unk_1E8010998;
    objc_copyWeak(&v107, &location);
    v76 = [v75 contextWithBundleId:*MEMORY[0x1E69BC3D8] onChange:v106];
    defaultWalletContext = v10->_defaultWalletContext;
    v10->_defaultWalletContext = v76;

    objc_destroyWeak(&v107);
  }

  [(PKPassbookSettingsController *)v10 _updateCardsGroupSpecifier];
  [(PKPassbookSettingsController *)v10 _updateCompanionGroupSpecifier];
  [(PKPassbookSettingsController *)v10 _updatePendingCompanionGroupSpecifier];
  [(PKPassbookSettingsController *)v10 _updateAddButtonSpecifier];
  if (PKFPANAutoFillEnabled())
  {
    [(PKPassbookSettingsController *)v10 _refreshFPANCardDataCompletion:0];
  }

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:v10 selector:sel_applicationDidBecomeActive name:*MEMORY[0x1E69DDAB0] object:0];
  [defaultCenter3 addObserver:v10 selector:sel__regionConfigurationDidChangeNotification name:*MEMORY[0x1E69BC4F8] object:0];
  [defaultCenter3 addObserver:v10 selector:sel__expressPassDidChange name:@"PKExpressPassesViewControllerExpressPassChangedNotification" object:0];
  v10->_notifyToken = -1;
  uTF8String = [*MEMORY[0x1E69BB808] UTF8String];
  v80 = MEMORY[0x1E69E96A0];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __68__PKPassbookSettingsController_initWithDelegate_dataSource_context___block_invoke_3;
  handler[3] = &unk_1E8012010;
  objc_copyWeak(&v105, &location);
  notify_register_dispatch(uTF8String, &v10->_notifyToken, MEMORY[0x1E69E96A0], handler);

  optionsDelegate = [sourceCopy optionsDelegate];
  objc_storeWeak(&v10->_optionsDelegate, optionsDelegate);

  if (context == 1)
  {
    defaultDataProvider = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    companionPaymentDataProvider = v10->_companionPaymentDataProvider;
    v10->_companionPaymentDataProvider = defaultDataProvider;

    if (objc_opt_respondsToSelector())
    {
      [(PKPaymentDataProvider *)v10->_companionPaymentDataProvider addDelegate:v10];
    }
  }

  v84 = objc_alloc_init(MEMORY[0x1E695DF90]);
  pairedDeviceSupportsFeatureByAccountID = v10->_pairedDeviceSupportsFeatureByAccountID;
  v10->_pairedDeviceSupportsFeatureByAccountID = v84;

  [(PKPassbookSettingsController *)v10 _checkPairedDeviceSupportOfHiddenPassesAndRefreshUIIfNecessary];
  [(PKPassbookSettingsController *)v10 _fetchPrecursorPassRequestUpgradeDescriptionsAndRefreshIfNecessary];
  context = [(PKPaymentWebService *)v10->_webService context];
  configuration = [context configuration];
  contactFormatConfiguration = [configuration contactFormatConfiguration];

  v89 = [objc_alloc(MEMORY[0x1E69B8730]) initWithConfiguration:contactFormatConfiguration];
  contactFormatValidator = v10->_contactFormatValidator;
  v10->_contactFormatValidator = v89;

  v91 = objc_alloc_init(MEMORY[0x1E69B88F0]);
  hideMyEmailManager = v10->_hideMyEmailManager;
  v10->_hideMyEmailManager = v91;

  if (!context)
  {
    if ([(NSArray *)v10->_paymentPasses count])
    {
      v93 = v10->_hideMyEmailManager;
      v102[0] = MEMORY[0x1E69E9820];
      v102[1] = 3221225472;
      v102[2] = __68__PKPassbookSettingsController_initWithDelegate_dataSource_context___block_invoke_4;
      v102[3] = &unk_1E8013D38;
      v103 = v10;
      [(PKHideMyEmailManager *)v93 isAvailable:v102];
    }

    v94 = objc_alloc_init(MEMORY[0x1E6997DF0]);
    identitySettingsProvider = v10->_identitySettingsProvider;
    v10->_identitySettingsProvider = v94;

    v10->_showIdentityDocumentProviderExtension = 0;
    v96 = objc_alloc(MEMORY[0x1E6997C28]);
    v110[0] = *MEMORY[0x1E69BB940];
    v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:v110 count:1];
    v98 = [v96 initWithPartitions:v97];

    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = __68__PKPassbookSettingsController_initWithDelegate_dataSource_context___block_invoke_6;
    v100[3] = &unk_1E8016BB8;
    v101 = v10;
    [v98 credentialIdentifiers:v100];
  }

  objc_destroyWeak(&v105);
  objc_destroyWeak(&location);
LABEL_27:

  return v10;
}

void __68__PKPassbookSettingsController_initWithDelegate_dataSource_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__PKPassbookSettingsController_initWithDelegate_dataSource_context___block_invoke_2;
    block[3] = &unk_1E8010970;
    v4 = WeakRetained;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __68__PKPassbookSettingsController_initWithDelegate_dataSource_context___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 744));
  [WeakRetained settingsControllerRequestsReloadSpecifiers:*(a1 + 32)];
}

void __68__PKPassbookSettingsController_initWithDelegate_dataSource_context___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _expressPassDidChange];
    WeakRetained = v2;
  }
}

void __68__PKPassbookSettingsController_initWithDelegate_dataSource_context___block_invoke_4(uint64_t a1, int a2)
{
  v2 = 1;
  if (!a2)
  {
    v2 = 2;
  }

  *(*(a1 + 32) + 648) = v2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PKPassbookSettingsController_initWithDelegate_dataSource_context___block_invoke_5;
  block[3] = &unk_1E8010970;
  v4 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __68__PKPassbookSettingsController_initWithDelegate_dataSource_context___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 744));
  [WeakRetained settingsController:*(a1 + 32) requestsReloadSpecifier:*(*(a1 + 32) + 400)];
}

void __68__PKPassbookSettingsController_initWithDelegate_dataSource_context___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKPassbookSettingsController failed to get identity credentials with error %@", buf, 0xCu);
    }

    goto LABEL_6;
  }

  v8 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BB940]];
  v9 = [v8 count];

  if (v9)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__PKPassbookSettingsController_initWithDelegate_dataSource_context___block_invoke_121;
    block[3] = &unk_1E8010970;
    v11 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v7 = v11;
LABEL_6:
  }
}

void __68__PKPassbookSettingsController_initWithDelegate_dataSource_context___block_invoke_121(uint64_t a1)
{
  *(*(a1 + 32) + 720) = 1;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 744));
  [WeakRetained settingsControllerRequestsReloadSpecifiers:*(a1 + 32)];
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_paymentDataProvider);
    [v5 removeDelegate:self];
  }

  if (self->_companionPaymentDataProvider && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(PKPaymentDataProvider *)self->_companionPaymentDataProvider removeDelegate:self];
  }

  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
  }

  [(PKPassbookSettingsController *)self _invalidateLAContext];
  [(PKAccountService *)self->_accountService unregisterObserver:self];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(SESNFCAppSettingsContext *)self->_defaultWalletContext invalidate];
  v8.receiver = self;
  v8.super_class = PKPassbookSettingsController;
  [(PKPassbookSettingsController *)&v8 dealloc];
}

- (void)_invalidateLAContext
{
  LAContext = self->_LAContext;
  if (LAContext)
  {
    [LAContext invalidate];
    v4 = self->_LAContext;
    self->_LAContext = 0;
  }
}

- (void)applicationDidBecomeActive
{
  [(PKPassbookSettingsController *)self _fetchAccounts];
  [(PKPassbookSettingsController *)self refreshPasses];
  if (PKFPANAutoFillEnabled())
  {
    [(PKPassbookSettingsController *)self _refreshFPANCardDataCompletion:0];
  }

  if ([(PKPassbookSettingsController *)self canPresentLaunchPrompts])
  {
    [(PKLaunchAuthorizationPromptController *)self->_launchAuthorizationPromptController enableLaunchPromptsForSession];
    launchAuthorizationPromptController = self->_launchAuthorizationPromptController;
    paymentPasses = self->_paymentPasses;

    [(PKLaunchAuthorizationPromptController *)launchAuthorizationPromptController presentLaunchPromptsForPassesIfNeeded:paymentPasses];
  }
}

- (void)viewDidAppear
{
  [(PKLaunchAuthorizationPromptController *)self->_launchAuthorizationPromptController presentLaunchPromptsForPassesIfNeeded:self->_paymentPasses];
  self->_viewDidAppearCalled = 1;

  [(PKPassbookSettingsController *)self _reportAccountDeviceEventIfNecessary];
}

- (void)viewWillAppear
{
  [(PKPassbookSettingsController *)self _invalidateLAContext];
  if (PKFPANAutoFillEnabled())
  {

    [(PKPassbookSettingsController *)self _refreshFPANCardDataCompletion:0];
  }
}

- (void)viewDidLoad
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_class();
    cellReuseIdentifier = [objc_opt_class() cellReuseIdentifier];
    [v7 registerTableCellClass:v5 forCellReuseIdentifier:cellReuseIdentifier];
  }
}

- (void)_updateCompanionPassesAddButton
{
  _companionPassSpecifiers = [(PKPassbookSettingsController *)self _companionPassSpecifiers];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__PKPassbookSettingsController__updateCompanionPassesAddButton__block_invoke;
  v6[3] = &unk_1E8016BE0;
  v6[4] = self;
  [_companionPassSpecifiers enumerateObjectsUsingBlock:v6];

  _pendingCompanionPassSpecifiers = [(PKPassbookSettingsController *)self _pendingCompanionPassSpecifiers];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__PKPassbookSettingsController__updateCompanionPassesAddButton__block_invoke_2;
  v5[3] = &unk_1E8016BE0;
  v5[4] = self;
  [_pendingCompanionPassSpecifiers enumerateObjectsUsingBlock:v5];
}

void __63__PKPassbookSettingsController__updateCompanionPassesAddButton__block_invoke(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69C5990];
  v4 = a2;
  v9 = [v4 objectForKeyedSubscript:v3];
  v5 = [v9 actionButton];
  v6 = [*(*(a1 + 32) + 344) objectForKeyedSubscript:*MEMORY[0x1E69C58C8]];
  [v5 setEnabled:{objc_msgSend(v6, "BOOLValue")}];

  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C5918]];

  v8 = [v7 isEqualToString:*(*(a1 + 32) + 128)];
  [v9 showActivitySpinner:v8];
}

void __63__PKPassbookSettingsController__updateCompanionPassesAddButton__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69C5990];
  v4 = a2;
  v9 = [v4 objectForKeyedSubscript:v3];
  v5 = [v9 actionButton];
  v6 = [*(*(a1 + 32) + 344) objectForKeyedSubscript:*MEMORY[0x1E69C58C8]];
  [v5 setEnabled:{objc_msgSend(v6, "BOOLValue")}];

  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C5918]];

  v8 = [v7 isEqualToString:*(*(a1 + 32) + 128)];
  [v9 showActivitySpinner:v8];
}

- (void)_updateAddButtonSpecifier
{
  v3 = PKLocalizedPaymentString(&cfstr_SettingsAddPay.isa);
  addCardButtonSpecifier = self->_addCardButtonSpecifier;
  v13 = v3;
  if (addCardButtonSpecifier)
  {
    v5 = *MEMORY[0x1E69C5940];
    v6 = v3;
  }

  else
  {
    v7 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:0 cell:13 edit:0];
    v8 = self->_addCardButtonSpecifier;
    self->_addCardButtonSpecifier = v7;

    [(PSSpecifier *)self->_addCardButtonSpecifier setButtonAction:sel_addCardTapped];
    [(PSSpecifier *)self->_addCardButtonSpecifier setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x1E69C5860]];
    addCardButtonSpecifier = self->_addCardButtonSpecifier;
    v5 = *MEMORY[0x1E69C5818];
    v6 = &unk_1F3CC7160;
  }

  [(PSSpecifier *)addCardButtonSpecifier setObject:v6 forKeyedSubscript:v5];
  v9 = [(PSSpecifier *)self->_addCardButtonSpecifier objectForKeyedSubscript:@"PKSettingsSpecifierLoadingKey"];
  if (([v9 BOOLValue] & 1) == 0)
  {
    provisioningPassIdentifier = self->_provisioningPassIdentifier;

    if (provisioningPassIdentifier)
    {
      goto LABEL_11;
    }

    if (PKSecureElementIsAvailable() || self->_context == 1)
    {
      v11 = PKStoreDemoModeEnabled() ^ 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = self->_addCardButtonSpecifier;
    v9 = [MEMORY[0x1E696AD98] numberWithBool:v11];
    [(PSSpecifier *)v12 setProperty:v9 forKey:*MEMORY[0x1E69C58C8]];
  }

LABEL_11:
}

- (void)_updateCardsGroupSpecifier
{
  if (self->_context == 1)
  {
    v3 = @"SETTINGS_PAYMENT_CARDS_GROUP_PLURAL_WATCH";
  }

  else
  {
    v3 = @"SETTINGS_PAYMENT_CARDS_GROUP";
  }

  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKPassbookSettingsDataSource secureElementIsProductionSigned](self->_dataSource, "secureElementIsProductionSigned")}];
  v15 = PKLocalizedEnvironmentHint();

  if (v15)
  {
    v5 = v15;
  }

  else
  {
    v6 = PKLocalizedPaymentString(&v3->isa);
    v5 = [(PKPassbookSettingsController *)self _uppercaseGroupSpecifierTitleIfNecessary:v6];
  }

  v7 = [MEMORY[0x1E69C5748] groupSpecifierWithName:v5];
  paymentCardsGroupSpecifier = self->_paymentCardsGroupSpecifier;
  self->_paymentCardsGroupSpecifier = v7;

  v9 = *MEMORY[0x1E69C5918];
  [(PSSpecifier *)self->_paymentCardsGroupSpecifier setProperty:v3 forKey:*MEMORY[0x1E69C5918]];
  if (self->_context == 1)
  {
    v10 = @"SETTINGS_OTHER_CARDS_GROUP_PLURAL_WATCH";
  }

  else
  {
    v10 = @"SETTINGS_OTHER_CARDS_GROUP";
  }

  v11 = PKLocalizedPaymentString(&v10->isa);
  v12 = [(PKPassbookSettingsController *)self _uppercaseGroupSpecifierTitleIfNecessary:v11];

  v13 = [MEMORY[0x1E69C5748] groupSpecifierWithName:v12];
  otherCardsGroupSpecifier = self->_otherCardsGroupSpecifier;
  self->_otherCardsGroupSpecifier = v13;

  [(PSSpecifier *)self->_otherCardsGroupSpecifier setProperty:v10 forKey:v9];
}

- (void)_updateCompanionGroupSpecifier
{
  if ([(NSArray *)self->_paymentPasses count])
  {
    v3 = @"SETTINGS_PAYMENT_COMPANION_OTHER_CARDS_PLURAL_GROUP";
  }

  else
  {
    v3 = @"SETTINGS_PAYMENT_COMPANION_CARDS_PLURAL_GROUP";
  }

  v4 = PKLocalizedPaymentString(&v3->isa);
  v7 = [(PKPassbookSettingsController *)self _uppercaseGroupSpecifierTitleIfNecessary:v4];

  v5 = [MEMORY[0x1E69C5748] groupSpecifierWithName:v7];
  companionCardsGroupSpecifier = self->_companionCardsGroupSpecifier;
  self->_companionCardsGroupSpecifier = v5;

  [(PSSpecifier *)self->_companionCardsGroupSpecifier setProperty:v3 forKey:*MEMORY[0x1E69C5918]];
}

- (void)_updatePendingCompanionGroupSpecifier
{
  v3 = PKLocalizedPaymentString(&cfstr_SettingsPaymen_3.isa);
  v6 = [(PKPassbookSettingsController *)self _uppercaseGroupSpecifierTitleIfNecessary:v3];

  v4 = [MEMORY[0x1E69C5748] groupSpecifierWithName:v6];
  pendingCompanionCardsGroupSpecifier = self->_pendingCompanionCardsGroupSpecifier;
  self->_pendingCompanionCardsGroupSpecifier = v4;

  [(PSSpecifier *)self->_pendingCompanionCardsGroupSpecifier setProperty:@"SETTINGS_PAYMENT_COMPANION_PENDING_CARDS_GROUP" forKey:*MEMORY[0x1E69C5918]];
}

- (id)_uppercaseGroupSpecifierTitleIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if ((PKIsVision() & 1) != 0 || _UISolariumFeatureFlagEnabled())
  {
    pk_uppercaseStringForPreferredLocale = necessaryCopy;
  }

  else
  {
    pk_uppercaseStringForPreferredLocale = [necessaryCopy pk_uppercaseStringForPreferredLocale];
  }

  v5 = pk_uppercaseStringForPreferredLocale;

  return v5;
}

- (void)_refreshCompanionGroupSpecififiers
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = self->_companionPassSpecifiers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained settingsController:self requestsReloadSpecifier:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_pendingCompanionPassSpecifiers;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        v16 = objc_loadWeakRetained(&self->_delegate);
        [v16 settingsController:self requestsReloadSpecifier:{v15, v17}];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }
}

- (id)_bridgeTopLevelSpecifiers
{
  array = [MEMORY[0x1E695DF70] array];
  _bridgeApplePayDefaultsSpecifiers = [(PKPassbookSettingsController *)self _bridgeApplePayDefaultsSpecifiers];
  v5 = [_bridgeApplePayDefaultsSpecifiers count];

  if (v5)
  {
    _applePayDefaultsSpecifierGroup = [(PKPassbookSettingsController *)self _applePayDefaultsSpecifierGroup];
    [array addObjectsFromArray:_applePayDefaultsSpecifierGroup];
  }

  if ([(PKPassbookSettingsDataSource *)self->_dataSource canRegisterForPeerPayment])
  {
    targetDevice = [(PKPeerPaymentWebService *)self->_peerPaymentWebService targetDevice];
    account = [targetDevice account];

    if (!PKIsAltAccountPairedOrPairing() || account)
    {
      _peerPaymentGroupSpecifiers = [(PKPassbookSettingsController *)self _peerPaymentGroupSpecifiers];
    }

    else
    {
      _peerPaymentGroupSpecifiers = [(PKPassbookSettingsController *)self _peerPaymentTinkerGroupSpecifiers];
    }

    v12 = _peerPaymentGroupSpecifiers;
    [array addObjectsFromArray:_peerPaymentGroupSpecifiers];

    p_paymentPasses = &self->_paymentPasses;
    if (![(NSArray *)self->_paymentPasses count])
    {
      emptyGroupSpecifier = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
      [array addObject:emptyGroupSpecifier];
      v11 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    p_paymentPasses = &self->_paymentPasses;
    if (![(NSArray *)self->_paymentPasses count])
    {
      v11 = 0;
      goto LABEL_14;
    }
  }

  v11 = self->_paymentCardsGroupSpecifier;
  [array addObject:self->_paymentCardsGroupSpecifier];
  emptyGroupSpecifier = [(PKPassbookSettingsController *)self _paymentPassSpecifiers];
  [array addObjectsFromArray:emptyGroupSpecifier];
LABEL_13:

LABEL_14:
  [array addObject:self->_addCardButtonSpecifier];
  if ([(NSArray *)self->_otherPasses count])
  {
    [array addObject:self->_otherCardsGroupSpecifier];
    _otherPassSpecifiers = [(PKPassbookSettingsController *)self _otherPassSpecifiers];
    [array addObjectsFromArray:_otherPassSpecifiers];
  }

  if ([(NSArray *)self->_companionPasses count])
  {
    [array safelyAddObject:self->_companionCardsGroupSpecifier];
    v15 = self->_companionCardsGroupSpecifier;

    _companionPassSpecifiers = [(PKPassbookSettingsController *)self _companionPassSpecifiers];
    [array addObjectsFromArray:_companionPassSpecifiers];

    v11 = v15;
  }

  if ([(NSArray *)self->_pendingCompanionPasses count])
  {
    [array safelyAddObject:self->_pendingCompanionCardsGroupSpecifier];
    _pendingCompanionPassSpecifiers = [(PKPassbookSettingsController *)self _pendingCompanionPassSpecifiers];
    [array addObjectsFromArray:_pendingCompanionPassSpecifiers];
  }

  if ([(NSArray *)*p_paymentPasses count])
  {
    if (self->_hasExpressCapablePass)
    {
      _transitDefaultsGroupSpecifiers = [(PKPassbookSettingsController *)self _transitDefaultsGroupSpecifiers];
      [array addObjectsFromArray:_transitDefaultsGroupSpecifiers];
    }

    [(PSSpecifier *)v11 removePropertyForKey:*MEMORY[0x1E69C58D8]];
    [(PSSpecifier *)v11 removePropertyForKey:*MEMORY[0x1E69C58F8]];
    [(PSSpecifier *)v11 removePropertyForKey:*MEMORY[0x1E69C58E8]];
    [(PSSpecifier *)v11 removePropertyForKey:*MEMORY[0x1E69C58F0]];
    [(PSSpecifier *)v11 removePropertyForKey:*MEMORY[0x1E69C58E0]];
  }

  else
  {
    v19 = [MEMORY[0x1E69B7D48] pk_privacyFlowForContext:1];
    localizedButtonTitle = [v19 localizedButtonTitle];
    v21 = PKLocalizedPaymentString(&cfstr_SettingsAboutF.isa);
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v21, localizedButtonTitle];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    [(PSSpecifier *)v11 setProperty:v24 forKey:*MEMORY[0x1E69C58D8]];

    [(PSSpecifier *)v11 setProperty:v22 forKey:*MEMORY[0x1E69C58F8]];
    v29.location = [v22 rangeOfString:localizedButtonTitle];
    v25 = NSStringFromRange(v29);
    [(PSSpecifier *)v11 setProperty:v25 forKey:*MEMORY[0x1E69C58E8]];

    v26 = [MEMORY[0x1E696B098] valueWithNonretainedObject:self];
    [(PSSpecifier *)v11 setProperty:v26 forKey:*MEMORY[0x1E69C58F0]];

    [(PSSpecifier *)v11 setProperty:@"_openPrivacyLink" forKey:*MEMORY[0x1E69C58E0]];
  }

  return array;
}

- (id)_bridgeApplePayDefaultsSpecifiers
{
  array = [MEMORY[0x1E695DF70] array];
  if ([(NSArray *)self->_paymentPasses count])
  {
    _defaultsGroupSpecifiers = [(PKPassbookSettingsController *)self _defaultsGroupSpecifiers];
    [array addObjectsFromArray:_defaultsGroupSpecifiers];
  }

  if ([(PKPassbookSettingsController *)self _supportsApplePay])
  {
    v5 = PKPairedOrPairingDevice();
    v6 = v5;
    if (v5 && (softLinkNRWatchOSVersionForRemoteDevice[0])(v5) >= 0x30000 && [(NSArray *)self->_paymentPasses count])
    {
      _handoffSwitchGroupSpecifiers = [(PKPassbookSettingsController *)self _handoffSwitchGroupSpecifiers];
      [array addObjectsFromArray:_handoffSwitchGroupSpecifiers];
    }
  }

  return array;
}

- (BOOL)_supportsApplePay
{
  v2 = MEMORY[0x1E69B8D58];
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  LOBYTE(v2) = [v2 _isPaymentSetupSupportedForWebService:mEMORY[0x1E69B8EF8]];

  return v2;
}

- (id)_settingsTopLevelSpecifiers
{
  v3 = PKUserInterfaceIdiom();
  v4 = PKUserInterfaceIdiom();
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _systemPolicyForAppSpecifiers = [(PKPassbookSettingsController *)self _systemPolicyForAppSpecifiers];
  [v5 addObjectsFromArray:_systemPolicyForAppSpecifiers];

  IsAvailable = PKSecureElementIsAvailable();
  v8 = [(NSArray *)self->_paymentPasses count];
  _supportsApplePay = [(PKPassbookSettingsController *)self _supportsApplePay];
  _settingsApplePayDefaultsSpecifiers = [(PKPassbookSettingsController *)self _settingsApplePayDefaultsSpecifiers];
  v11 = [_settingsApplePayDefaultsSpecifiers count];

  if (v11)
  {
    _applePayDefaultsSpecifierGroup = [(PKPassbookSettingsController *)self _applePayDefaultsSpecifierGroup];
    [v5 addObjectsFromArray:_applePayDefaultsSpecifierGroup];
  }

  if ([(PKPassbookSettingsDataSource *)self->_dataSource canRegisterForPeerPayment]&& IsAvailable)
  {
    _peerPaymentGroupSpecifiers = [(PKPassbookSettingsController *)self _peerPaymentGroupSpecifiers];
    [v5 addObjectsFromArray:_peerPaymentGroupSpecifiers];
  }

  if (v3 == 1)
  {
    _pendingInvitationsGroupSpecifiers = [(PKPassbookSettingsController *)self _pendingInvitationsGroupSpecifiers];
    if ([_pendingInvitationsGroupSpecifiers count])
    {
      [v5 addObjectsFromArray:_pendingInvitationsGroupSpecifiers];
    }
  }

  if (IsAvailable || v8)
  {
    [v5 addObject:self->_paymentCardsGroupSpecifier];
    _paymentPassSpecifiers = [(PKPassbookSettingsController *)self _paymentPassSpecifiers];
    [v5 addObjectsFromArray:_paymentPassSpecifiers];
    if (IsAvailable)
    {
      [v5 addObject:self->_addCardButtonSpecifier];
    }
  }

  if (PKFPANAutoFillEnabled() && self->_fpanCardsSpecifiers)
  {
    [v5 addObjectsFromArray:?];
  }

  if ([(NSArray *)self->_otherPasses count])
  {
    [v5 addObject:self->_otherCardsGroupSpecifier];
    _otherPassSpecifiers = [(PKPassbookSettingsController *)self _otherPassSpecifiers];
    [v5 addObjectsFromArray:_otherPassSpecifiers];
  }

  if (PKBankCredentialCenterEnabled())
  {
    _credentialCenterSpecifiers = [(PKPassbookSettingsController *)self _credentialCenterSpecifiers];
    [v5 addObjectsFromArray:_credentialCenterSpecifiers];
  }

  _openAccountsGroupSpecifiers = [(PKPassbookSettingsController *)self _openAccountsGroupSpecifiers];
  [v5 addObjectsFromArray:_openAccountsGroupSpecifiers];

  if (PKBankConnectEnabled() && !self->_context)
  {
    _bankConnectGroupSpecifiers = [(PKPassbookSettingsController *)self _bankConnectGroupSpecifiers];
    [v5 addObjectsFromArray:_bankConnectGroupSpecifiers];
  }

  if ([PKMerchantTokenFeatureAvailability isMerchantTokenFeatureAvailableWithPaymentPassesProvisioned:[(NSArray *)self->_paymentPasses count]!= 0]&& (PKIsPhone() & 1) == 0)
  {
    _merchantTokensGroupSpecifier = [(PKPassbookSettingsController *)self _merchantTokensGroupSpecifier];
    [v5 addObjectsFromArray:_merchantTokensGroupSpecifier];
  }

  if (v3 != 1 && v4 != 6)
  {
    if (self->_hasExpressCapablePass)
    {
      _transitDefaultsGroupSpecifiers = [(PKPassbookSettingsController *)self _transitDefaultsGroupSpecifiers];
      [v5 addObjectsFromArray:_transitDefaultsGroupSpecifiers];
    }

    if (_supportsApplePay)
    {
      _defaultAppSpecifiers = [(PKPassbookSettingsController *)self _defaultAppSpecifiers];
      if (_defaultAppSpecifiers)
      {
        [v5 addObjectsFromArray:_defaultAppSpecifiers];
      }
    }

    if (PKExpiredPassesRefreshEnabled())
    {
      _expiredPassesSwitchGroupSpecifiers = [(PKPassbookSettingsController *)self _expiredPassesSwitchGroupSpecifiers];
      [v5 addObjectsFromArray:_expiredPassesSwitchGroupSpecifiers];
    }
  }

  if (v8)
  {
    [(PSSpecifier *)self->_paymentCardsGroupSpecifier removePropertyForKey:*MEMORY[0x1E69C58D8]];
    [(PSSpecifier *)self->_paymentCardsGroupSpecifier removePropertyForKey:*MEMORY[0x1E69C58F8]];
    [(PSSpecifier *)self->_paymentCardsGroupSpecifier removePropertyForKey:*MEMORY[0x1E69C58E8]];
    [(PSSpecifier *)self->_paymentCardsGroupSpecifier removePropertyForKey:*MEMORY[0x1E69C58F0]];
    [(PSSpecifier *)self->_paymentCardsGroupSpecifier removePropertyForKey:*MEMORY[0x1E69C58E0]];
  }

  else
  {
    v24 = [MEMORY[0x1E69B7D48] pk_privacyFlowForContext:1];
    localizedButtonTitle = [v24 localizedButtonTitle];
    if (PKPearlIsAvailable() && PKIsPhone())
    {
      v26 = PKLocalizedPaymentString(&cfstr_SettingsAboutF_0.isa);
    }

    else
    {
      v27 = PKDeviceSpecificLocalizedStringKeyForKey(@"SETTINGS_ABOUT_FOOTER", self->_context == 1);
      v26 = PKLocalizedPaymentString(v27);
    }

    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v26, localizedButtonTitle];
    paymentCardsGroupSpecifier = self->_paymentCardsGroupSpecifier;
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    [(PSSpecifier *)paymentCardsGroupSpecifier setProperty:v31 forKey:*MEMORY[0x1E69C58D8]];

    [(PSSpecifier *)self->_paymentCardsGroupSpecifier setProperty:v28 forKey:*MEMORY[0x1E69C58F8]];
    v32 = self->_paymentCardsGroupSpecifier;
    v41.location = [v28 rangeOfString:localizedButtonTitle];
    v33 = NSStringFromRange(v41);
    [(PSSpecifier *)v32 setProperty:v33 forKey:*MEMORY[0x1E69C58E8]];

    v34 = self->_paymentCardsGroupSpecifier;
    v35 = [MEMORY[0x1E696B098] valueWithNonretainedObject:self];
    [(PSSpecifier *)v34 setProperty:v35 forKey:*MEMORY[0x1E69C58F0]];

    [(PSSpecifier *)self->_paymentCardsGroupSpecifier setProperty:@"_openPrivacyLink" forKey:*MEMORY[0x1E69C58E0]];
  }

  _identityVerificationSpecifiers = [(PKPassbookSettingsController *)self _identityVerificationSpecifiers];
  [v5 pk_safelyAddObjectsFromArray:_identityVerificationSpecifiers];

  if (v4 != 6)
  {
    _orderManagementGroupSpecifiers = [(PKPassbookSettingsController *)self _orderManagementGroupSpecifiers];
    [v5 addObjectsFromArray:_orderManagementGroupSpecifiers];
  }

  _closedAccountsGroupSpecifiers = [(PKPassbookSettingsController *)self _closedAccountsGroupSpecifiers];
  [v5 addObjectsFromArray:_closedAccountsGroupSpecifiers];

  return v5;
}

- (id)_settingsApplePayDefaultsSpecifiers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(NSArray *)self->_paymentPasses count];
  v5 = PKUserInterfaceIdiom();
  v6 = PKUserInterfaceIdiom();
  _supportsApplePay = [(PKPassbookSettingsController *)self _supportsApplePay];
  if (v4)
  {
    _defaultsGroupSpecifiers = [(PKPassbookSettingsController *)self _defaultsGroupSpecifiers];
    [v3 addObjectsFromArray:_defaultsGroupSpecifiers];
  }

  _cardBenefitSpecifiers = [(PKPassbookSettingsController *)self _cardBenefitSpecifiers];
  [v3 addObjectsFromArray:_cardBenefitSpecifiers];

  _showPayLaterOptionsSpecifiers = [(PKPassbookSettingsController *)self _showPayLaterOptionsSpecifiers];
  [v3 addObjectsFromArray:_showPayLaterOptionsSpecifiers];

  v11 = !_supportsApplePay;
  if ((PKFPANAutoFillEnabled() & 1) == 0 && (v11 & 1) == 0)
  {
    _onlinePaymentsGroupSpecifiers = [(PKPassbookSettingsController *)self _onlinePaymentsGroupSpecifiers];
    [v3 addObjectsFromArray:_onlinePaymentsGroupSpecifiers];
  }

  if (v4 && v5 != 1 && v6 != 6)
  {
    _handoffSwitchGroupSpecifiers = [(PKPassbookSettingsController *)self _handoffSwitchGroupSpecifiers];
    [v3 addObjectsFromArray:_handoffSwitchGroupSpecifiers];
  }

  v15 = v5 == 1 || v6 == 6;
  if (((v15 | v11) & 1) == 0)
  {
    _lockscreenSwitchGroupSpecifiers = [(PKPassbookSettingsController *)self _lockscreenSwitchGroupSpecifiers];
    [v3 addObjectsFromArray:_lockscreenSwitchGroupSpecifiers];
  }

  return v3;
}

- (id)_pendingInvitationsGroupSpecifiers
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    activeInboxMessages = [(PKInboxDataSource *)self->_inboxDataSource activeInboxMessages];
    if ([activeInboxMessages count])
    {
      v7 = PKLocalizedFeatureString();
      v8 = [MEMORY[0x1E69C5748] groupSpecifierWithName:v7];
      [v5 addObject:v8];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __66__PKPassbookSettingsController__pendingInvitationsGroupSpecifiers__block_invoke;
      v13[3] = &unk_1E8016C08;
      v13[4] = self;
      v9 = [activeInboxMessages pk_arrayByApplyingBlock:v13];
      [v5 addObjectsFromArray:v9];
    }

    v10 = [v5 copy];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Cannot include pending invitations specifier. Delegate %@ is not setup to handle settingsController:requestsPresentInboxMessage:animated:completion:", buf, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

id __66__PKPassbookSettingsController__pendingInvitationsGroupSpecifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C5748];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 preferenceSpecifierNamed:0 target:v3 set:0 get:0 detail:0 cell:3 edit:0];
  [v5 setObject:v4 forKeyedSubscript:@"pkInboxMessage"];
  [v5 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x1E69C5860]];
  [v5 setObject:&unk_1F3CC7178 forKeyedSubscript:*MEMORY[0x1E69C5810]];
  v6 = [v4 identifier];

  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69C5918]];
  [v5 setControllerLoadAction:sel__presentInboxMessage_];

  return v5;
}

- (void)_presentInboxMessage:(id)message
{
  v5 = [message objectForKeyedSubscript:@"pkInboxMessage"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained settingsController:self requestsPresentInboxMessage:v5 animated:1 completion:0];
}

- (void)_reloadPendingInvitationSpecifiers
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained settingsControllerRequestsReloadSpecifiers:self];
}

- (void)inboxDataSourceDidUpdateInboxMessages:(id)messages
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKPassbookSettingsController_inboxDataSourceDidUpdateInboxMessages___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)_restrictedModeSpecifier
{
  if (![(PKPassbookSettingsDataSource *)self->_dataSource deviceInRestrictedMode])
  {
    v5 = 0;
    goto LABEL_9;
  }

  v3 = MEMORY[0x1E69C5748];
  v4 = PKLocalizedPaymentString(&cfstr_SettingsRestri.isa);
  v5 = [v3 groupSpecifierWithID:v4];

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 setProperty:v7 forKey:*MEMORY[0x1E69C58D8]];

  v8 = PKLocalizedPaymentString(&cfstr_SettingsRestri.isa);
  v9 = [(PKPassbookSettingsController *)self _uppercaseGroupSpecifierTitleIfNecessary:v8];
  [v5 setProperty:v9 forKey:@"settingsAlertHeaderText"];

  if (PKUserInterfaceIdiom() == 1)
  {
    v10 = @"SETTINGS_RESTRICTED_MODE_TEXT_IPAD";
  }

  else
  {
    if (self->_context != 1)
    {
      goto LABEL_9;
    }

    v10 = @"SETTINGS_RESTRICTED_MODE_TEXT_WATCH";
  }

  v11 = PKLocalizedPaymentString(&v10->isa);
  if (v11)
  {
    v12 = v11;
    [v5 setProperty:v11 forKey:@"settingsAlertDescriptionText"];
  }

LABEL_9:

  return v5;
}

- (id)specifiers
{
  array = [MEMORY[0x1E695DF70] array];
  if ((PKUserInterfaceIdiom() == 1 || self->_context == 1) && (-[PKPassbookSettingsController _restrictedModeSpecifier](self, "_restrictedModeSpecifier"), v4 = objc_claimAutoreleasedReturnValue(), [array safelyAddObject:v4], v4, self->_context == 1))
  {
    _bridgeTopLevelSpecifiers = [(PKPassbookSettingsController *)self _bridgeTopLevelSpecifiers];
  }

  else
  {
    _bridgeTopLevelSpecifiers = [(PKPassbookSettingsController *)self _settingsTopLevelSpecifiers];
  }

  v6 = _bridgeTopLevelSpecifiers;
  [array addObjectsFromArray:_bridgeTopLevelSpecifiers];

  return array;
}

- (id)applePayDefaultsSpecifiers
{
  array = [MEMORY[0x1E695DF70] array];
  if (self->_context == 1)
  {
    [(PKPassbookSettingsController *)self _bridgeApplePayDefaultsSpecifiers];
  }

  else
  {
    [(PKPassbookSettingsController *)self _settingsApplePayDefaultsSpecifiers];
  }
  v4 = ;
  [array addObjectsFromArray:v4];

  return array;
}

- (void)_reloadPassData
{
  v126 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKPassbookSettingsController: reloading pass data", buf, 2u);
  }

  paymentPassSpecifiers = self->_paymentPassSpecifiers;
  self->_paymentPassSpecifiers = 0;

  otherPassSpecifiers = self->_otherPassSpecifiers;
  self->_otherPassSpecifiers = 0;

  if (self->_context == 1)
  {
    targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
    deviceVersion = [targetDevice deviceVersion];
    deviceClass = [targetDevice deviceClass];
    v9 = [targetDevice paymentWebService:self->_webService supportedRegionFeatureOfType:2];
    ownerSharingOSVersionRequirement = [v9 ownerSharingOSVersionRequirement];
    self->_ownerCredentialSharingAllowed = [ownerSharingOSVersionRequirement versionMeetsRequirements:deviceVersion deviceClass:deviceClass];

    friendSharingOSVersionRequirement = [v9 friendSharingOSVersionRequirement];
    self->_canAcceptCredentialInvitations = [friendSharingOSVersionRequirement versionMeetsRequirements:deviceVersion deviceClass:deviceClass];

    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = "disabled";
      if (self->_ownerCredentialSharingAllowed)
      {
        v14 = "enabled";
      }

      else
      {
        v14 = "disabled";
      }

      if (self->_canAcceptCredentialInvitations)
      {
        v13 = "enabled";
      }

      *buf = 136315394;
      v123 = v14;
      v124 = 2080;
      v125 = v13;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Configuring passes with owner sharing %s, accepting invitations %s", buf, 0x16u);
    }
  }

  v100 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  context = self->_context;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_passLibraryDataProvider);
  paymentPasses = [WeakRetained paymentPasses];

  v20 = [paymentPasses countByEnumeratingWithState:&v114 objects:v121 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v115;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v115 != v22)
        {
          objc_enumerationMutation(paymentPasses);
        }

        v24 = *(*(&v114 + 1) + 8 * i);
        if ([v24 passType] == 1)
        {
          v25 = v24;
          v26 = v25;
          if (context == 1)
          {
            [v25 setPreferredImageSuffix:0];
          }

          isAccessPass = [v26 isAccessPass];
          v28 = v16;
          if ((isAccessPass & 1) == 0)
          {
            if ([v26 isIdentityPass])
            {
              v28 = v16;
            }

            else
            {
              v28 = v15;
            }
          }

          [v28 addObject:v26];
          primaryAccountIdentifier = [v26 primaryAccountIdentifier];
          if (primaryAccountIdentifier)
          {
            [v100 addObject:primaryAccountIdentifier];
          }
        }
      }

      v21 = [paymentPasses countByEnumeratingWithState:&v114 objects:v121 count:16];
    }

    while (v21);
  }

  v30 = [v15 copy];
  v31 = selfCopy;
  paymentPasses = selfCopy->_paymentPasses;
  selfCopy->_paymentPasses = v30;

  v33 = [v16 copy];
  otherPasses = selfCopy->_otherPasses;
  selfCopy->_otherPasses = v33;

  if (selfCopy->_context == 1)
  {
    companionPassSpecifiers = selfCopy->_companionPassSpecifiers;
    if (companionPassSpecifiers)
    {
      selfCopy->_companionPassSpecifiers = 0;
    }

    pendingCompanionPassSpecifiers = selfCopy->_pendingCompanionPassSpecifiers;
    if (pendingCompanionPassSpecifiers)
    {
      selfCopy->_pendingCompanionPassSpecifiers = 0;
    }

    if ((PKIsAltAccountPairedOrPairing() & 1) == 0)
    {
      v37 = objc_alloc_init(PKPassbookSettingsDefaultBehavior);
      passLibraryDataProvider = [(PKPassbookSettingsDefaultBehavior *)v37 passLibraryDataProvider];
      paymentPasses2 = [passLibraryDataProvider paymentPasses];
      v40 = [paymentPasses2 copy];

      v97 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v96 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
      targetDevice2 = [(PKPaymentWebService *)selfCopy->_webService targetDevice];
      if (objc_opt_respondsToSelector())
      {
        areUnifiedAccessPassesSupported = [targetDevice2 areUnifiedAccessPassesSupported];
      }

      else
      {
        areUnifiedAccessPassesSupported = 0;
      }

      v94 = targetDevice2;
      v91 = v41;
      v92 = v37;
      if (objc_opt_respondsToSelector())
      {
        areAliroAccessPassesSupported = [targetDevice2 areAliroAccessPassesSupported];
      }

      else
      {
        areAliroAccessPassesSupported = 0;
      }

      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v44 = v40;
      v99 = [v44 countByEnumeratingWithState:&v110 objects:v120 count:16];
      if (v99)
      {
        v45 = *v111;
        v98 = *v111;
        v95 = v44;
        do
        {
          for (j = 0; j != v99; ++j)
          {
            if (*v111 != v45)
            {
              objc_enumerationMutation(v44);
            }

            v47 = *(*(&v110 + 1) + 8 * j);
            associatedAccountServiceAccountIdentifier = [v47 associatedAccountServiceAccountIdentifier];
            if ([v47 hasCredentials])
            {
              isCarKeyPass = [v47 isCarKeyPass];
              isIdentityPass = [v47 isIdentityPass];
            }

            else
            {
              isCarKeyPass = 0;
              isIdentityPass = 0;
            }

            supportsSerialNumberBasedProvisioning = [v47 supportsSerialNumberBasedProvisioning];
            if ((associatedAccountServiceAccountIdentifier || (supportsSerialNumberBasedProvisioning & 1) != 0 || (isCarKeyPass & 1) != 0 || isIdentityPass) && ([v47 activationState] & 0xFFFFFFFFFFFFFFFDLL) == 0)
            {
              if (isCarKeyPass)
              {
                v52 = [(PKPassbookSettingsController *)v31 canShareCompanionPass:v47];
                pairedTerminalIdentifier = [v47 pairedTerminalIdentifier];
                if (objc_opt_respondsToSelector())
                {
                  v54 = [v94 passesWithReaderIdentifier:pairedTerminalIdentifier];
                  v55 = [v54 count];

                  v56 = v55 == 0;
                  v45 = v98;
                  v57 = !v56 && v52;

                  if (v57)
                  {
                    goto LABEL_92;
                  }
                }

                else
                {
                }
              }

              else
              {
                primaryAccountIdentifier2 = [v47 primaryAccountIdentifier];
                v59 = [v100 containsObject:primaryAccountIdentifier2];

                if (v59)
                {
                  goto LABEL_92;
                }
              }

              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              devicePaymentApplications = [v47 devicePaymentApplications];
              v61 = [devicePaymentApplications countByEnumeratingWithState:&v106 objects:v119 count:16];
              if (v61)
              {
                v62 = v61;
                v63 = *v107;
                while (2)
                {
                  for (k = 0; k != v62; ++k)
                  {
                    if (*v107 != v63)
                    {
                      objc_enumerationMutation(devicePaymentApplications);
                    }

                    v65 = *(*(&v106 + 1) + 8 * k);
                    if (([v65 isAuxiliary] & 1) == 0)
                    {
                      paymentType = [v65 paymentType];
                      if (paymentType == 1003)
                      {
                        v67 = areUnifiedAccessPassesSupported;
                      }

                      else
                      {
                        v67 = 1;
                      }

                      if (paymentType == 1004)
                      {
                        v68 = areAliroAccessPassesSupported;
                      }

                      else
                      {
                        v68 = v67;
                      }

                      paymentNetworkIdentifier = [v65 paymentNetworkIdentifier];
                      v70 = v68 & areAliroAccessPassesSupported;
                      if (paymentNetworkIdentifier != 139)
                      {
                        v70 = v68;
                      }

                      if (v70 != 1)
                      {
                        v71 = 1;
                        goto LABEL_83;
                      }
                    }
                  }

                  v62 = [devicePaymentApplications countByEnumeratingWithState:&v106 objects:v119 count:16];
                  if (v62)
                  {
                    continue;
                  }

                  break;
                }

                v71 = 0;
LABEL_83:
                v31 = selfCopy;
                v45 = v98;
              }

              else
              {
                v71 = 0;
              }

              if (associatedAccountServiceAccountIdentifier)
              {
                v72 = [(NSMutableDictionary *)v31->_pairedDeviceSupportsFeatureByAccountID objectForKeyedSubscript:associatedAccountServiceAccountIdentifier];
                bOOLValue = [v72 BOOLValue];

                v74 = bOOLValue ^ 1;
              }

              else
              {
                v74 = 0;
              }

              if ((v74 | (v71 | [v47 hasAssociatedPeerPaymentAccount])))
              {
                v75 = v96;
              }

              else
              {
                v75 = v97;
              }

              [v75 addObject:v47];
              v44 = v95;
            }

LABEL_92:
          }

          v99 = [v44 countByEnumeratingWithState:&v110 objects:v120 count:16];
        }

        while (v99);
      }

      v76 = [v97 copy];
      companionPasses = v31->_companionPasses;
      v31->_companionPasses = v76;

      v78 = [v91 copy];
      pendingCompanionPasses = v31->_pendingCompanionPasses;
      v31->_pendingCompanionPasses = v78;

      v80 = [v96 copy];
      hiddenCompanionPasses = v31->_hiddenCompanionPasses;
      v31->_hiddenCompanionPasses = v80;
    }
  }

  if (v31->_defaultCardIdentifier)
  {
    v82 = objc_loadWeakRetained(&v31->_paymentDataProvider);
    defaultPaymentPassIdentifier = [v82 defaultPaymentPassIdentifier];
    defaultCardIdentifier = v31->_defaultCardIdentifier;
    v31->_defaultCardIdentifier = defaultPaymentPassIdentifier;
  }

  [(PKPassbookSettingsController *)v31 _updateTransitExpressPassIdentifiersWithReload:1, v91];
  v31->_hasExpressCapablePass = 0;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v85 = v31->_paymentPasses;
  v86 = [(NSArray *)v85 countByEnumeratingWithState:&v102 objects:v118 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v103;
    while (2)
    {
      for (m = 0; m != v87; ++m)
      {
        if (*v103 != v88)
        {
          objc_enumerationMutation(v85);
        }

        v90 = *(*(&v102 + 1) + 8 * m);
        if (([v90 isAccessPass] & 1) == 0 && ((-[PKExpressPassController isExpressModeSupportedForPass:](v31->_expressPassController, "isExpressModeSupportedForPass:", v90) & 1) != 0 || -[PKExpressPassController hasEligibleExpressUpgradeRequestForPass:](v31->_expressPassController, "hasEligibleExpressUpgradeRequestForPass:", v90)))
        {
          v31->_hasExpressCapablePass = 1;
          goto LABEL_109;
        }
      }

      v87 = [(NSArray *)v85 countByEnumeratingWithState:&v102 objects:v118 count:16];
      if (v87)
      {
        continue;
      }

      break;
    }
  }

LABEL_109:
}

- (void)refreshPasses
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  pairedDeviceSupportsFeatureByAccountID = self->_pairedDeviceSupportsFeatureByAccountID;
  self->_pairedDeviceSupportsFeatureByAccountID = v3;

  [(PKPassbookSettingsController *)self _refreshPasses];
  [(PKPassbookSettingsController *)self _checkPairedDeviceSupportOfHiddenPassesAndRefreshUIIfNecessary];

  [(PKPassbookSettingsController *)self _fetchPrecursorPassRequestUpgradeDescriptionsAndRefreshIfNecessary];
}

- (void)_refreshPasses
{
  [(PKPassbookSettingsController *)self _reloadPassData];
  WeakRetained = objc_loadWeakRetained(&self->_expressPassesViewController);
  [WeakRetained setPasses:self->_paymentPasses];

  [(PKPassbookSettingsController *)self _updateCardsGroupSpecifier];
  [(PKPassbookSettingsController *)self _updateCompanionGroupSpecifier];
  [(PKPassbookSettingsController *)self _updatePendingCompanionGroupSpecifier];
  [(PKPassbookSettingsController *)self _updateAddButtonSpecifier];
  if (self->_context == 1)
  {
    [(PKPassbookSettingsController *)self _updateCompanionPassesAddButton];
  }

  [(PKPassbookSettingsController *)self _updateDefaultCardsPreferences];
  if (self->_defaultCardIdentifier)
  {
    array = [MEMORY[0x1E695DF70] array];
    [array addObject:self->_availableCards];
    if (self->_unavailableCards)
    {
      [array addObject:?];
    }

    [(PKPaymentPreferencesListViewController *)self->_defaultCardsController setPreferences:array];
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  [v5 settingsControllerRequestsReloadSpecifiers:self];
}

- (void)refreshDefaultCard
{
  if (self->_defaultCardIdentifier)
  {
    WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
    defaultPaymentPassIdentifier = [WeakRetained defaultPaymentPassIdentifier];
    defaultCardIdentifier = self->_defaultCardIdentifier;
    self->_defaultCardIdentifier = defaultPaymentPassIdentifier;
  }

  v7 = objc_loadWeakRetained(&self->_delegate);
  _defaultPaymentSpecifier = [(PKPassbookSettingsController *)self _defaultPaymentSpecifier];
  [v7 settingsController:self requestsReloadSpecifier:_defaultPaymentSpecifier];
}

- (id)_fallbackExpressTransitFooterText
{
  if ([(PKExpressPassController *)self->_expressPassController deviceUsesAutomaticAuthorization])
  {
    v3 = @"SETTINGS_AUTOMATIC_TRANSIT_SECTION_FOOTER";
  }

  else if (self->_context == 1)
  {
    v3 = @"SETTINGS_EXPRESS_TRANSIT_SECTION_FOOTER_WATCH";
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
    if (objc_opt_respondsToSelector())
    {
      v5 = objc_loadWeakRetained(&self->_paymentDataProvider);
      supportsLowPowerExpressMode = [v5 supportsLowPowerExpressMode];

      if (supportsLowPowerExpressMode)
      {
        if (PKPearlIsAvailable())
        {
          v3 = @"SETTINGS_EXPRESS_TRANSIT_SECTION_FOOTER_IPHONE_LPEM_FACEID";
        }

        else
        {
          v3 = @"SETTINGS_EXPRESS_TRANSIT_SECTION_FOOTER_IPHONE_LPEM_TOUCHID";
        }

        goto LABEL_14;
      }
    }

    else
    {
    }

    if (!PKPearlIsAvailable())
    {
      v7 = PKDeviceSpecificLocalizedStringKeyForKey(@"SETTINGS_EXPRESS_TRANSIT_SECTION_FOOTER", 0);
      v8 = PKLocalizedPaymentString(v7);

      goto LABEL_15;
    }

    v3 = @"SETTINGS_EXPRESS_TRANSIT_SECTION_FOOTER_PEARL";
  }

LABEL_14:
  v8 = PKLocalizedPaymentString(&v3->isa);
LABEL_15:

  return v8;
}

- (void)_updateTransitExpressPassIdentifiersWithReload:(BOOL)reload
{
  reloadCopy = reload;
  v83 = *MEMORY[0x1E69E9840];
  enabledExpressPasses = [(PKExpressPassController *)self->_expressPassController enabledExpressPasses];
  v5 = [enabledExpressPasses mutableCopy];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  allValues = [enabledExpressPasses allValues];
  v7 = [allValues countByEnumeratingWithState:&v77 objects:v82 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v78;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v78 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v77 + 1) + 8 * i);
        passInformation = [v11 passInformation];
        cardType = [passInformation cardType];

        if ((cardType - 3) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          passUniqueIdentifier = [v11 passUniqueIdentifier];
          [v5 removeObjectForKey:passUniqueIdentifier];
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v77 objects:v82 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];
  v16 = [v15 count];
  v17 = v16;
  if (v16 >= 2)
  {
    v18 = PKLocalizedPaymentString(&cfstr_SettingsDefaul_0.isa);
    selfCopy4 = self;
LABEL_15:
    expressTransitSubtitleText = selfCopy4->_expressTransitSubtitleText;
    selfCopy4->_expressTransitSubtitleText = v18;
    goto LABEL_16;
  }

  selfCopy4 = self;
  if (v16 != 1)
  {
    v18 = PKLocalizedPaymentString(&cfstr_None_0.isa);
    goto LABEL_15;
  }

  expressTransitSubtitleText = objc_loadWeakRetained(&self->_passLibraryDataProvider);
  allKeys = [v15 allKeys];
  v22 = [allKeys objectAtIndexedSubscript:0];
  [expressTransitSubtitleText passWithUniqueID:v22];
  v24 = v23 = reloadCopy;
  localizedDescription = [v24 localizedDescription];
  v26 = self->_expressTransitSubtitleText;
  self->_expressTransitSubtitleText = localizedDescription;

  reloadCopy = v23;
LABEL_16:

  WeakRetained = objc_loadWeakRetained(&selfCopy4->_paymentDataProvider);
  if (objc_opt_respondsToSelector())
  {
    v28 = objc_loadWeakRetained(&selfCopy4->_paymentDataProvider);
    supportsLowPowerExpressMode = [v28 supportsLowPowerExpressMode];

    if (supportsLowPowerExpressMode)
    {
      v30 = @"_LPEM";
    }

    else
    {
      v30 = &stru_1F3BD7330;
    }
  }

  else
  {

    v30 = &stru_1F3BD7330;
  }

  if (v17 < 2)
  {
    if (v17 == 1)
    {
      allKeys2 = [v15 allKeys];
      v53 = [allKeys2 objectAtIndexedSubscript:0];
      v54 = [(PKPassbookSettingsController *)selfCopy4 passWithUniqueIdentifier:v53];
      localizedDescription2 = [v54 localizedDescription];

      v55 = [@"SETTINGS_EXPRESS_TRANSIT_SECTION_FOOTER_ONE_CARD" stringByAppendingString:v30];
      v56 = v55;
      if (localizedDescription2)
      {
        PKLocalizedPaymentString(v55, &stru_1F3BD5BF0.isa, localizedDescription2);
      }

      else
      {
        [(PKPassbookSettingsController *)selfCopy4 _fallbackExpressTransitFooterText];
      }
      v57 = ;
      expressTransitSectionFooterText = selfCopy4->_expressTransitSectionFooterText;
      selfCopy4->_expressTransitSectionFooterText = v57;
    }

    else
    {
      _fallbackExpressTransitFooterText = [(PKPassbookSettingsController *)selfCopy4 _fallbackExpressTransitFooterText];
      localizedDescription2 = selfCopy4->_expressTransitSectionFooterText;
      selfCopy4->_expressTransitSectionFooterText = _fallbackExpressTransitFooterText;
    }

    goto LABEL_64;
  }

  v69 = reloadCopy;
  v70 = v5;
  v71 = enabledExpressPasses;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  allValues2 = [v15 allValues];
  v32 = [allValues2 countByEnumeratingWithState:&v73 objects:v81 count:16];
  if (!v32)
  {

    localizedDescription2 = 0;
    passUniqueIdentifier2 = 0;
    goto LABEL_54;
  }

  v33 = v32;
  v67 = v30;
  v68 = v15;
  v34 = 0;
  passUniqueIdentifier2 = 0;
  localizedDescription2 = 0;
  v37 = *v74;
  do
  {
    v38 = 0;
    do
    {
      if (*v74 != v37)
      {
        objc_enumerationMutation(allValues2);
      }

      v39 = *(*(&v73 + 1) + 8 * v38);
      passInformation2 = [v39 passInformation];
      cardType2 = [passInformation2 cardType];

      if (passUniqueIdentifier2)
      {
        v42 = cardType2 == 2;
      }

      else
      {
        v42 = 0;
      }

      v43 = v42;
      if (!passUniqueIdentifier2 && cardType2 == 2)
      {
        passUniqueIdentifier2 = [v39 passUniqueIdentifier];
LABEL_37:
        v44 = localizedDescription2;
LABEL_38:
        v45 = v44;

        localizedDescription2 = v45;
        goto LABEL_39;
      }

      if (localizedDescription2)
      {
        goto LABEL_37;
      }

      if (cardType2 != 1)
      {
        v44 = 0;
        goto LABEL_38;
      }

      localizedDescription2 = [v39 passUniqueIdentifier];
LABEL_39:
      v34 |= v43;
      ++v38;
    }

    while (v33 != v38);
    v46 = [allValues2 countByEnumeratingWithState:&v73 objects:v81 count:16];
    v33 = v46;
  }

  while (v46);

  if (v34)
  {
    selfCopy4 = self;
    v47 = [(PKPassbookSettingsController *)self passWithUniqueIdentifier:localizedDescription2];
    localizedDescription3 = [v47 localizedDescription];

    v49 = [@"SETTINGS_EXPRESS_TRANSIT_SECTION_FOOTER_MANY_CARDS" stringByAppendingString:v67];
    localizedDescription4 = v49;
    if (localizedDescription3)
    {
      PKLocalizedPaymentString(v49, &stru_1F3BD5BF0.isa, localizedDescription3);
    }

    else
    {
      [(PKPassbookSettingsController *)self _fallbackExpressTransitFooterText];
    }
    v51 = ;
    v62 = self->_expressTransitSectionFooterText;
    self->_expressTransitSectionFooterText = v51;
    v15 = v68;
    goto LABEL_63;
  }

  selfCopy4 = self;
  v30 = v67;
  v15 = v68;
LABEL_54:
  v59 = [(PKPassbookSettingsController *)selfCopy4 passWithUniqueIdentifier:localizedDescription2];
  localizedDescription3 = [v59 localizedDescription];

  v60 = [(PKPassbookSettingsController *)selfCopy4 passWithUniqueIdentifier:passUniqueIdentifier2];
  localizedDescription4 = [v60 localizedDescription];

  v61 = [@"SETTINGS_EXPRESS_TRANSIT_SECTION_FOOTER_TWO_CARDS" stringByAppendingString:v30];
  v62 = v61;
  if (localizedDescription3 && localizedDescription4)
  {
    _fallbackExpressTransitFooterText2 = PKLocalizedPaymentString(v61, &stru_1F3BD6370.isa, localizedDescription3, localizedDescription4);
  }

  else
  {
    _fallbackExpressTransitFooterText2 = [(PKPassbookSettingsController *)selfCopy4 _fallbackExpressTransitFooterText];
  }

  v64 = selfCopy4->_expressTransitSectionFooterText;
  selfCopy4->_expressTransitSectionFooterText = _fallbackExpressTransitFooterText2;

LABEL_63:
  v5 = v70;
  enabledExpressPasses = v71;
  reloadCopy = v69;
LABEL_64:

  if (reloadCopy)
  {
    v66 = objc_loadWeakRetained(&selfCopy4->_delegate);
    [v66 settingsControllerRequestsReloadSpecifiers:selfCopy4];
  }
}

- (void)refreshPeerPaymentStatus
{
  _peerPaymentSwitchSpecifier = [(PKPassbookSettingsController *)self _peerPaymentSwitchSpecifier];
  v3 = [_peerPaymentSwitchSpecifier objectForKeyedSubscript:@"PKSwitchSpinnerTableCellShowSpinner"];
  bOOLValue = [v3 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKPassbookSettingsController _isPeerPaymentRegistered](self, "_isPeerPaymentRegistered")}];
    [_peerPaymentSwitchSpecifier setObject:v5 forKeyedSubscript:@"PKSwitchSpinnerTableCellSwitchIsOn"];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained settingsController:self requestsReloadSpecifier:_peerPaymentSwitchSpecifier];
  }
}

- (void)_refreshFPANCardDataCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (!self->_context)
    {
      os_unfair_lock_lock(&self->_autoFillCardUpdatesLock);
      pendingAutoFillCardUpdates = self->_pendingAutoFillCardUpdates;
      v8 = _Block_copy(completionCopy);
      [(NSMutableArray *)pendingAutoFillCardUpdates safelyAddObject:v8];

      if (self->_refreshingAutoFillCards)
      {
        os_unfair_lock_unlock(&self->_autoFillCardUpdatesLock);
      }

      else
      {
        self->_refreshingAutoFillCards = 1;
        os_unfair_lock_unlock(&self->_autoFillCardUpdatesLock);
        objc_initWeak(buf, self);
        v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F3CC8378];
        autofillCardManager = self->_autofillCardManager;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __63__PKPassbookSettingsController__refreshFPANCardDataCompletion___block_invoke;
        v12[3] = &unk_1E8011850;
        objc_copyWeak(&v13, buf);
        v12[4] = self;
        [(PKAutoFillCardManager *)autofillCardManager activeFPANCardsWithOptions:7 allowedCardTypes:v10 sortType:1 completion:v12];
        objc_destroyWeak(&v13);

        objc_destroyWeak(buf);
      }

      goto LABEL_10;
    }
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Not refreshing FPAN card data, as delegate doesn't handle settingsController:requestsPresentAutofillInformationWithSpecifier:cardDescriptors:authentication:", buf, 2u);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_10:
}

void __63__PKPassbookSettingsController__refreshFPANCardDataCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKPassbookSettingsController__refreshFPANCardDataCompletion___block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __63__PKPassbookSettingsController__refreshFPANCardDataCompletion___block_invoke_2(uint64_t a1)
{
  v22[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 83, *(a1 + 32));
    v4 = [MEMORY[0x1E69C5748] groupSpecifierWithName:&stru_1F3BD7330];
    v5 = objc_alloc(MEMORY[0x1E69C5748]);
    v6 = PKLocalizedPaymentString(&cfstr_SettingsFpanCa.isa);
    v7 = [v5 initWithName:v6 target:*(a1 + 40) set:0 get:0 detail:0 cell:2 edit:0];

    *&v7[*MEMORY[0x1E69C57D0]] = sel__fpanCountDetailText;
    [v7 setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C58C8]];
    [v7 setButtonAction:sel__showFPANCardDescriptors_];
    v22[0] = v4;
    v22[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v9 = v3[39];
    v3[39] = v8;

    v10 = objc_loadWeakRetained(v3 + 93);
    [v10 settingsControllerRequestsReloadSpecifiers:v3];

    os_unfair_lock_lock((*(a1 + 40) + 688));
    if ([v3[85] count])
    {
      v11 = [v3[85] copy];
    }

    else
    {
      v11 = 0;
    }

    [v3[85] removeAllObjects];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v12);
          }

          (*(*(*(&v17 + 1) + 8 * v16++) + 16))();
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }

    *(v3 + 672) = 0;
    os_unfair_lock_unlock((*(a1 + 40) + 688));
  }
}

- (id)_fpanCountDetailText
{
  v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v3 setNumberStyle:0];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  [v3 setLocale:currentLocale];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_fpanCardDescriptors, "count")}];
  v6 = [v3 stringFromNumber:v5];

  return v6;
}

- (void)_showFPANCardDescriptors:(id)descriptors auth:(id)auth
{
  descriptorsCopy = descriptors;
  authCopy = auth;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PKPassbookSettingsController__showFPANCardDescriptors_auth___block_invoke;
  aBlock[3] = &unk_1E8016C30;
  aBlock[4] = self;
  v8 = descriptorsCopy;
  v14 = v8;
  v9 = _Block_copy(aBlock);
  if (PKPasscodeEnabled())
  {
    if (!authCopy || ([MEMORY[0x1E695DFB0] null], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 == authCopy))
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __62__PKPassbookSettingsController__showFPANCardDescriptors_auth___block_invoke_2;
      v11[3] = &unk_1E8016C58;
      v12 = v9;
      [(PKPassbookSettingsController *)self _requestAuthForShowingAutoFillCardsWithCompletion:v11];
    }

    else
    {
      (*(v9 + 2))(v9, authCopy);
    }
  }

  else
  {
    (*(v9 + 2))(v9, 0);
  }
}

void __62__PKPassbookSettingsController__showFPANCardDescriptors_auth___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 744));
  [WeakRetained settingsController:*(a1 + 32) requestsPresentAutofillInformationWithSpecifier:*(a1 + 40) cardDescriptors:*(*(a1 + 32) + 664) authentication:v4];
}

uint64_t __62__PKPassbookSettingsController__showFPANCardDescriptors_auth___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)_requestAuthForShowingAutoFillCardsWithCompletion:(id)completion
{
  v15[3] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x1E696EE50]);
  LAContext = self->_LAContext;
  self->_LAContext = v5;

  v14[0] = &unk_1F3CC71D8;
  v7 = PKLocalizedPaymentString(&cfstr_SettingsFpanAu.isa);
  v15[0] = v7;
  v14[1] = &unk_1F3CC71F0;
  v8 = PKLocalizedString(&cfstr_Wallet_1.isa);
  v14[2] = &unk_1F3CC7208;
  v15[1] = v8;
  v15[2] = MEMORY[0x1E695E118];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v10 = self->_LAContext;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__PKPassbookSettingsController__requestAuthForShowingAutoFillCardsWithCompletion___block_invoke;
  v12[3] = &unk_1E8016C80;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [(LAContext *)v10 evaluatePolicy:1025 options:v9 reply:v12];
}

void __82__PKPassbookSettingsController__requestAuthForShowingAutoFillCardsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__PKPassbookSettingsController__requestAuthForShowingAutoFillCardsWithCompletion___block_invoke_2;
  v10[3] = &unk_1E8011D78;
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __82__PKPassbookSettingsController__requestAuthForShowingAutoFillCardsWithCompletion___block_invoke_2(void *a1)
{
  if (a1[4] && !a1[5])
  {
    v2 = [*(a1[6] + 504) externalizedContext];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  (*(a1[7] + 16))();
}

- (void)_refreshAccountSpecifiers
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained settingsControllerRequestsReloadSpecifiers:self];
}

- (id)passWithUniqueIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_paymentPasses;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v24 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v23 + 1) + 8 * v9);
      uniqueID = [v10 uniqueID];
      v12 = [uniqueID isEqualToString:identifierCopy];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_otherPasses;
    v13 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (!v13)
    {
      goto LABEL_19;
    }

    v14 = *v20;
LABEL_11:
    v15 = 0;
    while (1)
    {
      if (*v20 != v14)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v19 + 1) + 8 * v15);
      uniqueID2 = [v10 uniqueID];
      v17 = [uniqueID2 isEqualToString:identifierCopy];

      if (v17)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v13)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }
  }

  v13 = v10;
LABEL_19:

  return v13;
}

- (id)rendererStateForPaymentPass:(id)pass
{
  uniqueID = [pass uniqueID];
  v5 = [(PKPassbookSettingsController *)self _specifierForPassUniqueID:uniqueID];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69C5990]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    rendererState = [v6 rendererState];
  }

  else
  {
    rendererState = 0;
  }

  return rendererState;
}

- (void)addCardTapped
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = [(PKPassbookSettingsController *)self _paymentSetupContextForSettingsContext:self->_context];
  v4 = MEMORY[0x1E69BB6B8];
  if (v3 != 4)
  {
    v4 = MEMORY[0x1E69BB718];
  }

  v5 = *v4;
  v6 = MEMORY[0x1E69B8540];
  v7 = *MEMORY[0x1E69BA440];
  v12[0] = *MEMORY[0x1E69BA680];
  v12[1] = v7;
  v8 = *MEMORY[0x1E69BB028];
  v13[0] = *MEMORY[0x1E69BA6F0];
  v13[1] = v8;
  v9 = MEMORY[0x1E695DF20];
  v10 = v5;
  v11 = [v9 dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v6 subject:v10 sendEvent:v11];

  [(PKPassbookSettingsController *)self openPaymentSetupWithMode:0 referrerIdentifier:0 allowedFeatureIdentifiers:0];
}

- (void)addCardTappedForPaymentPassWithSpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:*MEMORY[0x1E69C5918]];
  [(PKPassbookSettingsController *)self addCardTappedForPaymentPassWithUniqueID:v4 withCompletion:0];
}

- (void)addCardTappedForPaymentPassWithUniqueID:(id)d withCompletion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = self->_companionPasses;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v31 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v30 + 1) + 8 * v12);
      uniqueID = [v13 uniqueID];
      v15 = [uniqueID isEqualToString:dCopy];

      if (v15)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v30 objects:v37 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v16 = v13;

    if (v16)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_9:
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = self->_pendingCompanionPasses;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
LABEL_13:
    v21 = 0;
    while (1)
    {
      if (*v27 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v26 + 1) + 8 * v21);
      uniqueID2 = [v22 uniqueID];
      v24 = [uniqueID2 isEqualToString:dCopy];

      if (v24)
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v26 objects:v36 count:16];
        if (v19)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }

    v16 = v22;

    if (!v16)
    {
      goto LABEL_22;
    }

LABEL_21:
    [(PKPassbookSettingsController *)self _performPhoneToWatchProvisioningForPaymentPass:v16 withCompletion:completionCopy];
  }

  else
  {
LABEL_19:

LABEL_22:
    v25 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = dCopy;
      _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, "No companion payment pass with unique ID %@. Not starting provisioning.", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)openPeerPaymentSetupWithCurrencyAmount:(id)amount state:(unint64_t)state senderAddress:(id)address
{
  if (!self->_registeringForPeerPayment)
  {
    self->_registeringForPeerPayment = 1;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __91__PKPassbookSettingsController_openPeerPaymentSetupWithCurrencyAmount_state_senderAddress___block_invoke;
    v5[3] = &unk_1E8011D28;
    v5[4] = self;
    [(PKPassbookSettingsController *)self _presentPeerPaymentSetupFlowWithAmount:amount flowState:state senderAddress:address completion:v5];
  }
}

- (int64_t)_paymentPreferencesStyle
{
  if (self->_context == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)canShareCompanionPass:(id)pass
{
  if (self->_context == 1)
  {
    devicePrimaryPaymentApplication = [pass devicePrimaryPaymentApplication];
    subcredentials = [devicePrimaryPaymentApplication subcredentials];
    anyObject = [subcredentials anyObject];

    if (anyObject)
    {
      isSharedCredential = [anyObject isSharedCredential];
      v8 = 584;
      if (isSharedCredential)
      {
        v8 = 585;
      }

      v9 = *(&self->super.isa + v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (void)presentFPANAdditionFlowWithPreflight:(BOOL)preflight selectedCredentials:(id)credentials withCompletion:(id)completion
{
  credentialsCopy = credentials;
  completionCopy = completion;
  v10 = [[PKPaymentSetupDismissibleNavigationController alloc] initWithContext:3];
  [(PKPaymentSetupDismissibleNavigationController *)v10 useStandardPlatformPresentationStyle];
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v12 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:mEMORY[0x1E69B8EF8]];
  v13 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:3 provisioningController:v12 groupsController:0];
  if (preflight)
  {
    [(PKPassbookSettingsController *)self _presentFPANAdditionFlowWithEligibleCards:0 ineligibleCards:0 selectedCredentials:credentialsCopy navController:v10 context:v13 completion:completionCopy];
  }

  else
  {
    autofillCardManager = self->_autofillCardManager;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __104__PKPassbookSettingsController_presentFPANAdditionFlowWithPreflight_selectedCredentials_withCompletion___block_invoke;
    v15[3] = &unk_1E8016CD0;
    v15[4] = self;
    v16 = credentialsCopy;
    v17 = v10;
    v18 = v13;
    v19 = completionCopy;
    [(PKAutoFillCardManager *)autofillCardManager cachedFPANCredentialsWithCompletion:v15];
  }
}

void __104__PKPassbookSettingsController_presentFPANAdditionFlowWithPreflight_selectedCredentials_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__PKPassbookSettingsController_presentFPANAdditionFlowWithPreflight_selectedCredentials_withCompletion___block_invoke_2;
  block[3] = &unk_1E8016CA8;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v17 = v5;
  v18 = v6;
  v8 = v7;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v19 = v13;
  v20 = v12;
  v14 = v6;
  v15 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_presentFPANAdditionFlowWithEligibleCards:(id)cards ineligibleCards:(id)ineligibleCards selectedCredentials:(id)credentials navController:(id)controller context:(id)context completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __143__PKPassbookSettingsController__presentFPANAdditionFlowWithEligibleCards_ineligibleCards_selectedCredentials_navController_context_completion___block_invoke;
  v21[3] = &unk_1E8010A10;
  v21[4] = self;
  v22 = controllerCopy;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __143__PKPassbookSettingsController__presentFPANAdditionFlowWithEligibleCards_ineligibleCards_selectedCredentials_navController_context_completion___block_invoke_2;
  v18[3] = &unk_1E80109C0;
  v19 = v22;
  v20 = completionCopy;
  v16 = v22;
  v17 = completionCopy;
  [PKProvisioningFlowBridge startAutoFillCredentialProvisioningFlowWithNavController:v16 eligibleCredentials:cards ineligibleCredentials:ineligibleCards context:context referralSource:3 showProvisioningSection:1 selectedCredentials:credentials presentNavController:v21 completion:v18];
}

void __143__PKPassbookSettingsController__presentFPANAdditionFlowWithEligibleCards_ineligibleCards_selectedCredentials_navController_context_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 744));
  [WeakRetained settingsController:*(a1 + 32) requestsForcedPresentViewController:*(a1 + 40) animated:1 completion:0];
}

uint64_t __143__PKPassbookSettingsController__presentFPANAdditionFlowWithEligibleCards_ineligibleCards_selectedCredentials_navController_context_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)openPaymentSetupWithMode:(int64_t)mode referrerIdentifier:(id)identifier allowedFeatureIdentifiers:(id)identifiers force:(BOOL)force
{
  forceCopy = force;
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    [(PKPassbookSettingsController *)self _updateAddButtonSpecifier];
    v14 = *MEMORY[0x1E69C58C8];
    v15 = [(PSSpecifier *)self->_addCardButtonSpecifier objectForKeyedSubscript:*MEMORY[0x1E69C58C8]];
    if (([v15 BOOLValue] & 1) == 0)
    {
LABEL_13:

      goto LABEL_14;
    }

    v16 = [(PSSpecifier *)self->_addCardButtonSpecifier objectForKeyedSubscript:@"PKSettingsSpecifierLoadingKey"];
    bOOLValue = [v16 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v15 = PKUIStoreDemoGatewayViewController();
      if (v15)
      {
        v18 = objc_loadWeakRetained(&self->_delegate);
        v19 = v18;
        if (forceCopy)
        {
          [v18 settingsController:self requestsForcedPresentViewController:v15 animated:1 completion:0];
        }

        else
        {
          [v18 settingsController:self requestsPresentViewController:v15 animated:1 completion:0];
        }
      }

      else
      {
        [(PSSpecifier *)self->_addCardButtonSpecifier setObject:MEMORY[0x1E695E110] forKeyedSubscript:v14];
        [(PSSpecifier *)self->_addCardButtonSpecifier setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PKSettingsSpecifierLoadingKey"];
        [(PKPassbookSettingsController *)self _updateCompanionPassesAddButton];
        v22 = objc_loadWeakRetained(&self->_delegate);
        [v22 settingsController:self requestsReloadSpecifier:self->_addCardButtonSpecifier];

        [(PKPassbookSettingsController *)self _startPreflightWithMode:mode referrerIdentifier:identifierCopy allowedFeatureIdentifiers:identifiersCopy force:forceCopy];
      }

      goto LABEL_13;
    }
  }

  else
  {
    v20 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_loadWeakRetained(&self->_delegate);
      v23 = 138412290;
      v24 = v21;
      _os_log_impl(&dword_1BD026000, v20, OS_LOG_TYPE_DEFAULT, "Cannot open payment setup! Delegate %@ is not setup to handle settingsController:requestsAddCardPreflightWithCompletion:", &v23, 0xCu);
    }
  }

LABEL_14:
}

- (void)_startPreflightWithMode:(int64_t)mode referrerIdentifier:(id)identifier allowedFeatureIdentifiers:(id)identifiers force:(BOOL)force
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __107__PKPassbookSettingsController__startPreflightWithMode_referrerIdentifier_allowedFeatureIdentifiers_force___block_invoke;
  v15[3] = &unk_1E8016D48;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = identifiersCopy;
  modeCopy = mode;
  forceCopy = force;
  v13 = identifiersCopy;
  v14 = identifierCopy;
  [WeakRetained settingsController:self requestsAddCardPreflightWithCompletion:v15];
}

void __107__PKPassbookSettingsController__startPreflightWithMode_referrerIdentifier_allowedFeatureIdentifiers_force___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__PKPassbookSettingsController__startPreflightWithMode_referrerIdentifier_allowedFeatureIdentifiers_force___block_invoke_2;
  block[3] = &unk_1E8016D20;
  v20 = a2;
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v15 = v7;
  v16 = v9;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v18 = v8;
  v19 = v11;
  v21 = *(a1 + 64);
  v17 = v10;
  v12 = v8;
  v13 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __107__PKPassbookSettingsController__startPreflightWithMode_referrerIdentifier_allowedFeatureIdentifiers_force___block_invoke_2(uint64_t a1)
{
  v42[1] = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __107__PKPassbookSettingsController__startPreflightWithMode_referrerIdentifier_allowedFeatureIdentifiers_force___block_invoke_3;
  aBlock[3] = &unk_1E8010970;
  aBlock[4] = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 744));
  [WeakRetained settingsControllerRequestsReloadSpecifiers:*(a1 + 32)];

  if (*(a1 + 80) == 1)
  {
    v4 = *(a1 + 40);
    v5 = [v4 provisioningController];
    [v5 setReferrerIdentifier:*(a1 + 48)];
    [v5 setAllowedFeatureIdentifiers:*(a1 + 56)];
    if (PKIsAltAccountPairedOrPairing() && *(*(a1 + 32) + 40) == 1)
    {
      [v5 setIsProvisioningForAltAccount:1];
    }

    [v4 setCustomFormSheetPresentationStyleForiPad];
    [v4 setPaymentSetupMode:*(a1 + 72)];
    v6 = [*(*(a1 + 32) + 8) setupDelegate];

    if (v6)
    {
      v7 = [*(*(a1 + 32) + 8) setupDelegate];
      [v4 setSetupDelegate:v7];
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __107__PKPassbookSettingsController__startPreflightWithMode_referrerIdentifier_allowedFeatureIdentifiers_force___block_invoke_4;
    v32[3] = &unk_1E8016CF8;
    v35 = *(a1 + 81);
    v32[4] = *(a1 + 32);
    v33 = v4;
    v34 = v2;
    v8 = v4;
    [v8 preflightWithCompletion:v32];

    goto LABEL_26;
  }

  v2[2](v2);
  if (*(a1 + 40))
  {
    v9 = *(a1 + 81);
    v10 = objc_loadWeakRetained((*(a1 + 32) + 744));
    v5 = v10;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    if (v9 == 1)
    {
      [v10 settingsController:v11 requestsForcedPresentViewController:v12 animated:1 completion:0];
    }

    else
    {
      [v10 settingsController:v11 requestsPresentViewController:v12 animated:1 completion:0];
    }

    goto LABEL_26;
  }

  v13 = [*(a1 + 64) domain];
  v14 = [v13 isEqualToString:*MEMORY[0x1E69BB840]];

  if (!v14)
  {
    goto LABEL_19;
  }

  v15 = [*(a1 + 64) code];
  v16 = *(a1 + 64);
  if (v15 == 6)
  {
    v17 = v16;
    v18 = MEMORY[0x1E69B8540];
    v42[0] = *MEMORY[0x1E69BB728];
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    v20 = *MEMORY[0x1E69BABE8];
    v40[0] = *MEMORY[0x1E69BA680];
    v40[1] = v20;
    v21 = *MEMORY[0x1E69BB458];
    v41[0] = *MEMORY[0x1E69BA818];
    v41[1] = v21;
    v22 = MEMORY[0x1E695DF20];
    v23 = v41;
    v24 = v40;
  }

  else
  {
    if ([v16 code] != 9)
    {
LABEL_19:
      v5 = [PKPaymentSetupNavigationController viewControllerForPresentingPaymentError:*(a1 + 64)];
      v17 = 0;
      goto LABEL_20;
    }

    v17 = *(a1 + 64);
    v18 = MEMORY[0x1E69B8540];
    v39 = *MEMORY[0x1E69BB728];
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
    v25 = *MEMORY[0x1E69BABE8];
    v37[0] = *MEMORY[0x1E69BA680];
    v37[1] = v25;
    v26 = *MEMORY[0x1E69BB590];
    v38[0] = *MEMORY[0x1E69BA818];
    v38[1] = v26;
    v22 = MEMORY[0x1E695DF20];
    v23 = v38;
    v24 = v37;
  }

  v27 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:2];
  [v18 subjects:v19 sendEvent:v27];

  if (!v17)
  {
    goto LABEL_19;
  }

  v5 = PKAlertForDisplayableErrorWithHandlers(v17, 0, 0, 0);
LABEL_20:
  if (v5)
  {
    v28 = *(a1 + 81);
    v29 = objc_loadWeakRetained((*(a1 + 32) + 744));
    v30 = v29;
    v31 = *(a1 + 32);
    if (v28 == 1)
    {
      [v29 settingsController:v31 requestsForcedPresentViewController:v5 animated:1 completion:0];
    }

    else
    {
      [v29 settingsController:v31 requestsPresentViewController:v5 animated:1 completion:0];
    }
  }

LABEL_26:
}

void __107__PKPassbookSettingsController__startPreflightWithMode_referrerIdentifier_allowedFeatureIdentifiers_force___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 344) setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69C58C8]];
  [*(*(a1 + 32) + 344) setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"PKSettingsSpecifierLoadingKey"];
  [*(a1 + 32) _updateCompanionPassesAddButton];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 744));
  [WeakRetained settingsController:*(a1 + 32) requestsReloadSpecifier:*(*(a1 + 32) + 344)];
}

void __107__PKPassbookSettingsController__startPreflightWithMode_referrerIdentifier_allowedFeatureIdentifiers_force___block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 744));
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = WeakRetained;
    if (v3 == 1)
    {
      [WeakRetained settingsController:v5 requestsForcedPresentViewController:v6 animated:1 completion:v7];
    }

    else
    {
      [WeakRetained settingsController:v5 requestsPresentViewController:v6 animated:1 completion:v7];
    }
  }
}

- (id)_passSpecifiersForPasses:(id)passes peerPaymentPassUniqueID:(id)d showPeerPaymentSetup:(BOOL)setup
{
  dCopy = d;
  v9 = MEMORY[0x1E695DF70];
  passesCopy = passes;
  v11 = objc_alloc_init(v9);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __102__PKPassbookSettingsController__passSpecifiersForPasses_peerPaymentPassUniqueID_showPeerPaymentSetup___block_invoke;
  v28[3] = &unk_1E8016D70;
  v12 = dCopy;
  v29 = v12;
  v13 = [passesCopy sortedArrayUsingComparator:v28];

  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __102__PKPassbookSettingsController__passSpecifiersForPasses_peerPaymentPassUniqueID_showPeerPaymentSetup___block_invoke_2;
  v22 = &unk_1E8016D98;
  selfCopy = self;
  v24 = v12;
  setupCopy = setup;
  v25 = v13;
  v26 = v11;
  v14 = v11;
  v15 = v13;
  v16 = v12;
  [v15 enumerateObjectsUsingBlock:&v19];
  v17 = [v14 copy];

  return v17;
}

uint64_t __102__PKPassbookSettingsController__passSpecifiersForPasses_peerPaymentPassUniqueID_showPeerPaymentSetup___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!*(a1 + 32))
  {
LABEL_13:
    v12 = [v5 ingestedDate];
    v13 = [v6 ingestedDate];
    v11 = [v12 compare:v13];

    goto LABEL_15;
  }

  if ([v5 hasAssociatedPeerPaymentAccount])
  {
    v7 = [v5 uniqueID];
    v8 = [v7 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 32) && [v6 hasAssociatedPeerPaymentAccount])
  {
    v9 = [v6 uniqueID];
    v10 = [v9 isEqualToString:*(a1 + 32)];

    if (!v8)
    {
LABEL_12:
      if (!(v8 & 1 | ((v10 & 1) == 0)))
      {
        v11 = 1;
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  if (v10)
  {
    goto LABEL_12;
  }

  v11 = -1;
LABEL_15:

  return v11;
}

void __102__PKPassbookSettingsController__passSpecifiersForPasses_peerPaymentPassUniqueID_showPeerPaymentSetup___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v58 = a2;
  v5 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:0 target:*(a1 + 32) set:0 get:0 detail:0 cell:3 edit:0];
  v6 = sel__showCardDetails_;
  v7 = *(*(a1 + 32) + 336);
  v8 = [v58 uniqueID];
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    v10 = [v9 localizedTitle];
    [v5 setObject:v10 forKeyedSubscript:@"pkCustomSubTitle"];

    v11 = [MEMORY[0x1E69DC888] systemBlueColor];
    if (*(*(a1 + 32) + 40) == 1)
    {
      v12 = BPSBridgeTintColor();

      v11 = v12;
    }

    goto LABEL_4;
  }

  if ([v58 isAccessPass])
  {
    if ([v58 hasCredentials])
    {
      v16 = 0;
      goto LABEL_28;
    }

    v27 = [v58 provisioningCredentialHash];

    if (v27)
    {
      v28 = MEMORY[0x1E69BC0D0];
    }

    else
    {
      v28 = MEMORY[0x1E69BC0D8];
    }

    v23 = [v58 fieldForKey:*v28];
    v37 = [v23 value];
    [v5 setObject:v37 forKeyedSubscript:@"pkCustomSubTitle"];

    goto LABEL_26;
  }

  if ([v58 isStoredValuePass])
  {
    v23 = [v58 uniqueID];
    v24 = [*(*(a1 + 32) + 552) objectForKeyedSubscript:v23];
    [v5 setObject:v24 forKeyedSubscript:@"pkTransitServerBalance"];

    v25 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained(v25 + 3);
    [v25 _reloadBalancesAndTransitPassPropertiesForPass:v58 withDataProvider:WeakRetained];

LABEL_26:
LABEL_27:
    v16 = 1;
    goto LABEL_28;
  }

  v29 = [v58 hasAssociatedPeerPaymentAccount];
  v30 = v58;
  if (!v29)
  {
    goto LABEL_38;
  }

  v31 = [v58 uniqueID];
  v32 = *(a1 + 40);
  v33 = v31;
  v34 = v32;
  v35 = v34;
  if (v33 == v34)
  {

    goto LABEL_33;
  }

  if (!v33 || !v34)
  {

    v30 = v58;
    goto LABEL_38;
  }

  v36 = [v33 isEqualToString:v34];

  v30 = v58;
  if (v36)
  {
LABEL_33:
    if (PKStoreDemoModeEnabled())
    {
      v39 = [*(*(a1 + 32) + 464) currentBalance];

      if (v39)
      {
        v40 = [*(*(a1 + 32) + 464) currentBalance];
        v41 = [v40 minimalFormattedStringValue];
        v42 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentInA.isa, &stru_1F3BD5BF0.isa, v41);
        [v5 setObject:v42 forKeyedSubscript:@"pkCustomSubTitle"];
      }

      v14 = 0;
      v15 = 0;
      v6 = sel__presentFeatureNotEnabledForDemoForSpecifier_;
      goto LABEL_7;
    }

    if (*(a1 + 64) == 1)
    {
      v6 = sel__presentPeerPaymentSetupFlowForSpecifier_;
      v11 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_10.isa);
      v13 = PKPassbookCardTableCellCustomSubTitleKey;
      goto LABEL_5;
    }

    v50 = [*(*(a1 + 32) + 464) state];
    if (v50 == 4)
    {
      v52 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_12.isa);
      [v5 setObject:v52 forKeyedSubscript:@"pkCustomSubTitle"];

      v53 = [MEMORY[0x1E69DC888] systemRedColor];
      [v5 setObject:v53 forKeyedSubscript:@"pkCustomSubTitleColor"];

      v14 = 0;
      v15 = 0;
      v6 = sel__presentPeerPaymentReOpenCardFlowForSpecifier_;
      goto LABEL_7;
    }

    if (v50 == 3)
    {
      v51 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_11.isa);
      [v5 setObject:v51 forKeyedSubscript:@"pkCustomSubTitle"];

      v11 = [MEMORY[0x1E69DC888] systemRedColor];
LABEL_4:
      v13 = PKPassbookCardTableCellCustomSubTitleColorKey;
LABEL_5:
      [v5 setObject:v11 forKeyedSubscript:*v13];
LABEL_6:

      v14 = 0;
      v15 = 0;
LABEL_7:
      v16 = 1;
      goto LABEL_8;
    }

    v54 = [v58 devicePrimaryPaymentApplication];
    v55 = [v54 state];

    if (v55 == 7)
    {
      goto LABEL_27;
    }

    v15 = [*(*(a1 + 32) + 464) currentBalance];

    if (v15)
    {
      v11 = [*(*(a1 + 32) + 464) currentBalance];
      v56 = [v11 minimalFormattedStringValue];
      v57 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentInA.isa, &stru_1F3BD5BF0.isa, v56);
      [v5 setObject:v57 forKeyedSubscript:@"pkCustomSubTitle"];

      goto LABEL_6;
    }

LABEL_49:
    v14 = 0;
    goto LABEL_7;
  }

LABEL_38:
  v43 = [v30 associatedAccountServiceAccountIdentifier];
  v44 = [v43 length];

  if (v44)
  {
    if ((PKIsLowEndDevice() & 1) != 0 || ([v58 secureElementPass], v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v45, "associatedAccountFeatureIdentifier"), v45, v46 != 2))
    {
      v15 = 0;
    }

    else
    {
      v15 = [[PKPassView alloc] initWithPass:v58 content:4 suppressedContent:1527 rendererState:0];
      [(PKPassView *)v15 setPaused:1];
      [v5 setObject:v15 forKeyedSubscript:@"pkSnapshotPassView"];
    }

    v47 = [v58 isShellPass];
    v48 = [v58 devicePrimaryPaymentApplication];
    [v48 state];
    if (PKPaymentApplicationStateIsPersonalized())
    {
    }

    else
    {
      v49 = [v58 isShellPass];

      if ((v49 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    [*(a1 + 32) _updateCardSpecifier:v5 withAccountStateForPaymentPass:v58];
LABEL_48:
    if ((v47 & 1) == 0)
    {
      if ([v58 activationState] != 1)
      {
        v14 = 1;
        goto LABEL_7;
      }

      v16 = 1;
      if (v15)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    goto LABEL_49;
  }

  v16 = [v58 isIdentityPass] ^ 1;
LABEL_28:
  if ([v58 activationState] == 1)
  {
LABEL_29:
    v15 = [[PKPassView alloc] initWithPass:v58 content:4 suppressedContent:1527 rendererState:0];
LABEL_30:
    v14 = 1;
    v38 = -[PKPaymentVerificationController initWithPass:passView:webService:context:delegate:verificationContext:]([PKPaymentVerificationController alloc], "initWithPass:passView:webService:context:delegate:verificationContext:", v58, v15, *(*(a1 + 32) + 80), [*(a1 + 32) _paymentSetupContextForSettingsContext:*(*(a1 + 32) + 40)], 0, 1);
    [v5 setObject:v38 forKeyedSubscript:@"pkVerificationController"];

    goto LABEL_8;
  }

  v15 = 0;
  v14 = 1;
LABEL_8:
  [v5 setObject:v58 forKeyedSubscript:@"pkPass"];
  [v5 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"pkShowAddButton"];
  v17 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 48), "count") - 1 == a3}];
  [v5 setObject:v17 forKeyedSubscript:@"pkShowFullSeparatorInset"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:v16];
  [v5 setObject:v18 forKeyedSubscript:@"pkShowSubTitle"];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:v14];
  [v5 setObject:v19 forKeyedSubscript:@"pkShowState"];

  v20 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(a1 + 32) + 40)];
  [v5 setObject:v20 forKeyedSubscript:@"pkSettingsContext"];

  [v5 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x1E69C5860]];
  [v5 setObject:&unk_1F3CC7178 forKeyedSubscript:*MEMORY[0x1E69C5810]];
  [PKPaymentPassTableCell heightForCellWithMinimum:1 hasSubTitle:56.0];
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [v5 setObject:v21 forKeyedSubscript:*MEMORY[0x1E69C5988]];

  v22 = [v58 uniqueID];
  [v5 setObject:v22 forKeyedSubscript:*MEMORY[0x1E69C5918]];

  [v5 setControllerLoadAction:v6];
  [*(a1 + 56) addObject:v5];
}

- (id)_paymentPassSpecifiers
{
  paymentPassSpecifiers = self->_paymentPassSpecifiers;
  if (!paymentPassSpecifiers)
  {
    if (self->_paymentPasses)
    {
      WeakRetained = objc_loadWeakRetained(&self->_passLibraryDataProvider);
      peerPaymentPassUniqueID = [WeakRetained peerPaymentPassUniqueID];

      if (self->_registeringForPeerPayment && peerPaymentPassUniqueID)
      {
        paymentPasses = self->_paymentPasses;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __54__PKPassbookSettingsController__paymentPassSpecifiers__block_invoke;
        v12[3] = &unk_1E8016688;
        v13 = peerPaymentPassUniqueID;
        v7 = [(NSArray *)paymentPasses pk_objectsPassingTest:v12];
        v8 = self->_paymentPasses;
        self->_paymentPasses = v7;
      }

      v9 = [(PKPassbookSettingsController *)self _passSpecifiersForPasses:self->_paymentPasses peerPaymentPassUniqueID:peerPaymentPassUniqueID showPeerPaymentSetup:[(PKPeerPaymentAccountResolutionController *)self->_peerPaymentAccountResolutionController currentPeerPaymentAccountResolution]== 1];
      v10 = self->_paymentPassSpecifiers;
      self->_paymentPassSpecifiers = v9;

      paymentPassSpecifiers = self->_paymentPassSpecifiers;
    }

    else
    {
      paymentPassSpecifiers = 0;
    }
  }

  return paymentPassSpecifiers;
}

uint64_t __54__PKPassbookSettingsController__paymentPassSpecifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasAssociatedPeerPaymentAccount])
  {
    v4 = [v3 uniqueID];
    v5 = [v4 isEqualToString:*(a1 + 32)] ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_otherPassSpecifiers
{
  otherPassSpecifiers = self->_otherPassSpecifiers;
  if (!otherPassSpecifiers)
  {
    if (self->_otherPasses)
    {
      v4 = [(PKPassbookSettingsController *)self _passSpecifiersForPasses:?];
      v5 = self->_otherPassSpecifiers;
      self->_otherPassSpecifiers = v4;

      otherPassSpecifiers = self->_otherPassSpecifiers;
    }

    else
    {
      otherPassSpecifiers = 0;
    }
  }

  return otherPassSpecifiers;
}

- (id)_pendingCompanionPassSpecifiers
{
  array = [MEMORY[0x1E695DF70] array];
  pendingCompanionPassSpecifiers = self->_pendingCompanionPassSpecifiers;
  if (!pendingCompanionPassSpecifiers)
  {
    pendingCompanionPasses = self->_pendingCompanionPasses;
    if (pendingCompanionPasses)
    {
      v6 = [(NSArray *)pendingCompanionPasses copy];
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __63__PKPassbookSettingsController__pendingCompanionPassSpecifiers__block_invoke;
      v15 = &unk_1E8016DC0;
      selfCopy = self;
      v7 = array;
      v17 = v7;
      [v6 enumerateObjectsUsingBlock:&v12];

      v8 = [v7 copy];
      v9 = self->_pendingCompanionPassSpecifiers;
      self->_pendingCompanionPassSpecifiers = v8;

      pendingCompanionPassSpecifiers = self->_pendingCompanionPassSpecifiers;
    }

    else
    {
      pendingCompanionPassSpecifiers = 0;
    }
  }

  v10 = pendingCompanionPassSpecifiers;

  return pendingCompanionPassSpecifiers;
}

void __63__PKPassbookSettingsController__pendingCompanionPassSpecifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69C5748];
  v4 = *(a1 + 32);
  v5 = a2;
  v10 = [v3 preferenceSpecifierNamed:0 target:v4 set:0 get:0 detail:0 cell:3 edit:0];
  [v10 setObject:v5 forKeyedSubscript:@"pkPass"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v10 setObject:v6 forKeyedSubscript:@"pkShowSubTitle"];

  [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"pkShowState"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(a1 + 32) + 40)];
  [v10 setObject:v7 forKeyedSubscript:@"pkSettingsContext"];

  [v10 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x1E69C5860]];
  [v10 setObject:&unk_1F3CC7178 forKeyedSubscript:*MEMORY[0x1E69C5810]];
  [PKPaymentPassTableCell heightForCellWithMinimum:1 hasSubTitle:56.0];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [v10 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69C5988]];

  v9 = [v5 uniqueID];

  [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69C5918]];
  [v10 setControllerLoadAction:sel_addCardTappedForPaymentPassWithSpecifier_];
  [*(a1 + 40) addObject:v10];
}

- (id)_companionPassSpecifiers
{
  companionPassSpecifiers = self->_companionPassSpecifiers;
  if (!companionPassSpecifiers)
  {
    if (self->_companionPasses)
    {
      array = [MEMORY[0x1E695DF70] array];
      if (objc_opt_respondsToSelector())
      {
        hasFelicaSecureElement = [(PKPassbookSettingsDataSource *)self->_dataSource hasFelicaSecureElement];
      }

      else
      {
        hasFelicaSecureElement = 0;
      }

      v6 = objc_opt_respondsToSelector() & 1;
      v7 = objc_opt_respondsToSelector() & 1;
      WeakRetained = objc_loadWeakRetained(&self->_passLibraryDataProvider);
      canAddPaymentPass = [WeakRetained canAddPaymentPass];

      if (canAddPaymentPass)
      {
        v10 = 1;
      }

      else
      {
        targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
        deviceRegion = [targetDevice deviceRegion];
        v13 = deviceRegion;
        if (deviceRegion == @"PR")
        {
          v10 = 1;
        }

        else if (deviceRegion)
        {
          v10 = [(__CFString *)deviceRegion isEqualToString:@"PR"];
        }

        else
        {
          v10 = 0;
        }
      }

      companionPasses = self->_companionPasses;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __56__PKPassbookSettingsController__companionPassSpecifiers__block_invoke;
      v31[3] = &__block_descriptor_33_e27_q24__0__PKPass_8__PKPass_16l;
      v32 = hasFelicaSecureElement;
      v15 = [(NSArray *)companionPasses sortedArrayUsingComparator:v31];
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __56__PKPassbookSettingsController__companionPassSpecifiers__block_invoke_2;
      v23 = &unk_1E8016E08;
      v26 = hasFelicaSecureElement;
      v27 = v6;
      v28 = v7;
      v29 = canAddPaymentPass;
      v30 = v10;
      selfCopy = self;
      v25 = array;
      v16 = array;
      [v15 enumerateObjectsUsingBlock:&v20];
      v17 = [v16 copy];
      v18 = self->_companionPassSpecifiers;
      self->_companionPassSpecifiers = v17;

      companionPassSpecifiers = self->_companionPassSpecifiers;
    }

    else
    {
      companionPassSpecifiers = 0;
    }
  }

  return companionPassSpecifiers;
}

uint64_t __56__PKPassbookSettingsController__companionPassSpecifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 ingestedDate];
  v8 = [v6 ingestedDate];
  v9 = [v7 compare:v8];

  if ((*(a1 + 32) & 1) == 0)
  {
    v10 = [v5 paymentPass];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 devicePrimaryPaymentApplication];
      v13 = [v12 paymentNetworkIdentifier] != 103;
    }

    else
    {
      v13 = 1;
    }

    v14 = [v6 paymentPass];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 devicePrimaryPaymentApplication];
      v17 = [v16 paymentNetworkIdentifier];

      if (v17 == 103 || v13)
      {
        v19 = v9;
      }

      else
      {
        v19 = 1;
      }

      if (v13)
      {
        v9 = -1;
      }

      if (v17 != 103)
      {
        v9 = v19;
      }
    }

    else if (!v13)
    {
      v9 = 1;
    }
  }

  return v9;
}

void __56__PKPassbookSettingsController__companionPassSpecifiers__block_invoke_2(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([v3 hasAssociatedPeerPaymentAccount] & 1) == 0)
  {
    v4 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:0 target:*(a1 + 32) set:0 get:0 detail:0 cell:-1 edit:0];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v5 = [v3 devicePaymentApplications];
    v6 = [v5 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v37;
      v35 = v4;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v36 + 1) + 8 * v9);
        if (([v10 isAuxiliary] & 1) == 0)
        {
          v11 = [v10 paymentNetworkIdentifier];
          v12 = v11;
          if (v11 == 103)
          {
            if ((*(a1 + 48) & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          else
          {
            if (v11 == 129)
            {
              v20 = [v10 subcredentials];
              v21 = [v20 count];

              v4 = v35;
              if (v21)
              {
                goto LABEL_19;
              }

              goto LABEL_32;
            }

            v13 = [v3 secureElementPass];
            v14 = [v13 identityType];

            if (v14 == 5)
            {
              v15 = [v10 subcredentials];
              v16 = [v15 count];

              if (!v16)
              {
LABEL_25:

                v17 = 0;
                v4 = v35;
                goto LABEL_33;
              }
            }
          }

          if (*(a1 + 49) != 1 || ([*(*(a1 + 32) + 8) supportsCredentialType:v12] & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v36 objects:v40 count:16];
          v4 = v35;
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if (*(a1 + 50) == 1 && ![*(*(a1 + 32) + 8) supportsAddingPaymentPass:v3] || objc_msgSend(v3, "requiresTransferSerialNumberBasedProvisioning") && objc_msgSend(v3, "activationState"))
    {
      goto LABEL_32;
    }

LABEL_19:
    if (*(a1 + 51))
    {
      goto LABEL_24;
    }

    v18 = [v3 devicePrimaryPaymentApplication];
    if ([v18 paymentNetworkIdentifier] != 129)
    {

      goto LABEL_32;
    }

    v19 = *(a1 + 52);

    if (v19)
    {
LABEL_24:
      v17 = 1;
    }

    else
    {
LABEL_32:
      v17 = 0;
    }

LABEL_33:
    v22 = [v3 hasCredentials];
    if ((v22 & 1) == 0)
    {
      if ([v3 isStoredValuePass])
      {
        v23 = [v3 uniqueID];
        v24 = [*(*(a1 + 32) + 552) objectForKeyedSubscript:v23];
        [v4 setObject:v24 forKeyedSubscript:@"pkTransitServerBalance"];

        [*(a1 + 32) _reloadBalancesAndTransitPassPropertiesForPass:v3 withDataProvider:*(*(a1 + 32) + 560)];
      }

      else
      {
        v25 = [v3 associatedAccountServiceAccountIdentifier];
        v26 = [v25 length];

        if (v26)
        {
          v27 = [v3 devicePrimaryPaymentApplication];
          [v27 state];
          IsPersonalized = PKPaymentApplicationStateIsPersonalized();

          if (IsPersonalized)
          {
            [*(a1 + 32) _updateCardSpecifier:v4 withAccountStateForPaymentPass:v3];
          }
        }
      }
    }

    [v4 setObject:v3 forKeyedSubscript:@"pkPass"];
    v29 = [MEMORY[0x1E696AD98] numberWithBool:v17];
    [v4 setObject:v29 forKeyedSubscript:@"pkShowAddButton"];

    v30 = [MEMORY[0x1E696AD98] numberWithBool:v22 ^ 1u];
    [v4 setObject:v30 forKeyedSubscript:@"pkShowSubTitle"];

    v31 = MEMORY[0x1E695E118];
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"pkShowState"];
    v32 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(a1 + 32) + 40)];
    [v4 setObject:v32 forKeyedSubscript:@"pkSettingsContext"];

    [v4 setObject:v31 forKeyedSubscript:@"pkActionButtonEnabled"];
    [v4 setObject:v31 forKeyedSubscript:*MEMORY[0x1E69C58C8]];
    [v4 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x1E69C5860]];
    [v4 setObject:&unk_1F3CC7220 forKeyedSubscript:*MEMORY[0x1E69C5810]];
    [PKPaymentPassTableCell heightForCellWithMinimum:1 hasSubTitle:56.0];
    v33 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v4 setObject:v33 forKeyedSubscript:*MEMORY[0x1E69C5988]];

    v34 = [v3 uniqueID];
    [v4 setObject:v34 forKeyedSubscript:*MEMORY[0x1E69C5918]];

    [*(a1 + 40) addObject:v4];
  }
}

- (id)_specifierForPassUniqueID:(id)d
{
  v57 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    _paymentPassSpecifiers = [(PKPassbookSettingsController *)self _paymentPassSpecifiers];
    v6 = [_paymentPassSpecifiers countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v50;
      v9 = *MEMORY[0x1E69C5918];
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(_paymentPassSpecifiers);
        }

        v11 = *(*(&v49 + 1) + 8 * v10);
        v12 = [v11 objectForKeyedSubscript:v9];
        v13 = [v12 isEqualToString:dCopy];

        if (v13)
        {
          break;
        }

        if (v7 == ++v10)
        {
          v7 = [_paymentPassSpecifiers countByEnumeratingWithState:&v49 objects:v56 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      _paymentPassSpecifiers = [(PKPassbookSettingsController *)self _otherPassSpecifiers];
      v14 = [_paymentPassSpecifiers countByEnumeratingWithState:&v45 objects:v55 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v46;
        v17 = *MEMORY[0x1E69C5918];
LABEL_12:
        v18 = 0;
        while (1)
        {
          if (*v46 != v16)
          {
            objc_enumerationMutation(_paymentPassSpecifiers);
          }

          v11 = *(*(&v45 + 1) + 8 * v18);
          v19 = [v11 objectForKeyedSubscript:v17];
          v20 = [v19 isEqualToString:dCopy];

          if (v20)
          {
            break;
          }

          if (v15 == ++v18)
          {
            v15 = [_paymentPassSpecifiers countByEnumeratingWithState:&v45 objects:v55 count:16];
            if (v15)
            {
              goto LABEL_12;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        _paymentPassSpecifiers = [(PKPassbookSettingsController *)self _companionPassSpecifiers];
        v21 = [_paymentPassSpecifiers countByEnumeratingWithState:&v41 objects:v54 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v42;
          v24 = *MEMORY[0x1E69C5918];
LABEL_20:
          v25 = 0;
          while (1)
          {
            if (*v42 != v23)
            {
              objc_enumerationMutation(_paymentPassSpecifiers);
            }

            v11 = *(*(&v41 + 1) + 8 * v25);
            v26 = [v11 objectForKeyedSubscript:v24];
            v27 = [v26 isEqualToString:dCopy];

            if (v27)
            {
              break;
            }

            if (v22 == ++v25)
            {
              v22 = [_paymentPassSpecifiers countByEnumeratingWithState:&v41 objects:v54 count:16];
              if (v22)
              {
                goto LABEL_20;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
LABEL_26:

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          _paymentPassSpecifiers = [(PKPassbookSettingsController *)self _pendingCompanionPassSpecifiers];
          v28 = [_paymentPassSpecifiers countByEnumeratingWithState:&v37 objects:v53 count:16];
          if (!v28)
          {
LABEL_34:
            v35 = 0;
LABEL_36:

            goto LABEL_38;
          }

          v29 = v28;
          v30 = *v38;
          v31 = *MEMORY[0x1E69C5918];
LABEL_28:
          v32 = 0;
          while (1)
          {
            if (*v38 != v30)
            {
              objc_enumerationMutation(_paymentPassSpecifiers);
            }

            v11 = *(*(&v37 + 1) + 8 * v32);
            v33 = [v11 objectForKeyedSubscript:v31];
            v34 = [v33 isEqualToString:dCopy];

            if (v34)
            {
              break;
            }

            if (v29 == ++v32)
            {
              v29 = [_paymentPassSpecifiers countByEnumeratingWithState:&v37 objects:v53 count:16];
              if (v29)
              {
                goto LABEL_28;
              }

              goto LABEL_34;
            }
          }
        }
      }
    }

    v35 = v11;
    goto LABEL_36;
  }

  v35 = 0;
LABEL_38:

  return v35;
}

- (id)_credentialCenterSpecifiers
{
  credentialCenterSpecifiers = self->_credentialCenterSpecifiers;
  if (!credentialCenterSpecifiers)
  {
    v4 = [MEMORY[0x1E69C5748] groupSpecifierWithName:&stru_1F3BD7330];
    v5 = PKLocalizedPaymentString(&cfstr_CredentialCent_14.isa);
    [v4 setProperty:v5 forKey:*MEMORY[0x1E69C5900]];

    v6 = MEMORY[0x1E69C5748];
    v7 = PKLocalizedPaymentString(&cfstr_CredentialCent_15.isa);
    v8 = [v6 preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:2 edit:0];

    [v8 setControllerLoadAction:sel__presentCredentialCenter_];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, v8, 0}];
    v10 = self->_credentialCenterSpecifiers;
    self->_credentialCenterSpecifiers = v9;

    credentialCenterSpecifiers = self->_credentialCenterSpecifiers;
  }

  return credentialCenterSpecifiers;
}

- (void)_presentCredentialCenter:(id)center
{
  v5 = objc_alloc_init(PKCredentialCenterViewController);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained settingsController:self requestsPushViewController:v5 animated:1];
  }
}

- (id)_expiredPassesSwitchGroupSpecifiers
{
  expiredPassesSwitchSpecifiers = self->_expiredPassesSwitchSpecifiers;
  if (!expiredPassesSwitchSpecifiers)
  {
    v4 = [MEMORY[0x1E69C5748] groupSpecifierWithName:&stru_1F3BD7330];
    v5 = MEMORY[0x1E69C5748];
    v6 = PKLocalizedString(&cfstr_AllowExpiredPa.isa);
    v7 = [v5 preferenceSpecifierNamed:v6 target:self set:sel__setExpiredPassesSwitchSetting_forSpecifier_ get:sel__expiredPassesSwitchSettingForSpecifier_ detail:0 cell:6 edit:0];

    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69C5820]];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, v7, 0}];
    v9 = self->_expiredPassesSwitchSpecifiers;
    self->_expiredPassesSwitchSpecifiers = v8;

    expiredPassesSwitchSpecifiers = self->_expiredPassesSwitchSpecifiers;
  }

  return expiredPassesSwitchSpecifiers;
}

- (void)_setExpiredPassesSwitchSetting:(id)setting forSpecifier:(id)specifier
{
  v4 = [setting BOOLValue] ^ 1;

  MEMORY[0x1EEE25580](v4);
}

- (id)_expiredPassesSwitchSettingForSpecifier:(id)specifier
{
  v3 = MEMORY[0x1E696AD98];
  v4 = PKExpiredPassesDisabledByUser() ^ 1;

  return [v3 numberWithInt:v4];
}

- (id)_handoffSwitchGroupSpecifiers
{
  handoffSwitchSpecifiers = self->_handoffSwitchSpecifiers;
  if (!handoffSwitchSpecifiers)
  {
    v4 = MEMORY[0x1E69C5748];
    v5 = PKLocalizedPaymentString(&cfstr_AllowHandoffPa.isa);
    v6 = [(PKPassbookSettingsController *)self _uppercaseGroupSpecifierTitleIfNecessary:v5];
    v7 = [v4 groupSpecifierWithName:v6];

    v8 = PKDeviceSpecificLocalizedStringKeyForKey(@"ALLOW_HANDOFF_PAYMENTS_FOOTER", self->_context == 1);
    v9 = PKLocalizedPaymentString(v8);

    [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69C5900]];
    v10 = MEMORY[0x1E69C5748];
    v11 = PKLocalizedPaymentString(&cfstr_AllowHandoffPa_1.isa);
    v12 = [v10 preferenceSpecifierNamed:v11 target:self set:sel__setHandoffSwitchSetting_forSpecifier_ get:sel__handoffSwitchSettingForSpecifier_ detail:0 cell:6 edit:0];

    [v12 setProperty:*MEMORY[0x1E69BB8E8] forKey:*MEMORY[0x1E69C5918]];
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    v14 = [mEMORY[0x1E69ADFB8] isBoolSettingLockedDownByRestrictions:*MEMORY[0x1E69ADE08]];

    mEMORY[0x1E69B8560] = [MEMORY[0x1E69B8560] shared];
    isEffectivelyLocked = [mEMORY[0x1E69B8560] isEffectivelyLocked];

    if (v14 && (isEffectivelyLocked & 1) == 0)
    {
      [v12 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69C58C8]];
    }

    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v7, v12, 0}];
    v18 = self->_handoffSwitchSpecifiers;
    self->_handoffSwitchSpecifiers = v17;

    handoffSwitchSpecifiers = self->_handoffSwitchSpecifiers;
  }

  return handoffSwitchSpecifiers;
}

- (void)_setHandoffSwitchSetting:(id)setting forSpecifier:(id)specifier
{
  settingCopy = setting;
  WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_paymentDataProvider);
    [v7 setPaymentHandoffDisabled:{objc_msgSend(settingCopy, "BOOLValue") ^ 1}];
  }
}

- (id)_handoffSwitchSettingForSpecifier:(id)specifier
{
  WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_paymentDataProvider);
    v7 = [v6 isPaymentHandoffDisabled] ^ 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = MEMORY[0x1E696AD98];

  return [v8 numberWithBool:v7];
}

- (id)_showPayLaterOptionsSpecifiers
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = PKPaymentOffersEligibleInDeviceRegion();
  v4 = PKHideCardBenefitPayLater();
  if ((v3 & 1) == 0)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Pay Later offers switch not being shown in settings because payment offers arent supported in the device region";
      goto LABEL_7;
    }

LABEL_8:

    showPayLaterOptionsSpecifiers = self->_showPayLaterOptionsSpecifiers;
    self->_showPayLaterOptionsSpecifiers = 0;

    v8 = 0;
    goto LABEL_12;
  }

  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Pay Later offers switch not being shown in settings because payment offers were disabled";
LABEL_7:
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v9 = self->_showPayLaterOptionsSpecifiers;
  if (!v9)
  {
    v10 = [MEMORY[0x1E69C5748] groupSpecifierWithName:&stru_1F3BD7330];
    v11 = PKLocalizedPaymentOffersString(&cfstr_OnlinePurchase.isa);
    [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69C5900]];

    v12 = MEMORY[0x1E69C5748];
    v13 = PKLocalizedPaymentOffersString(&cfstr_ShowPayLaterOp.isa);
    v14 = [v12 preferenceSpecifierNamed:v13 target:self set:sel__setShowPayLaterOptionsSwitchSetting_forSpecifier_ get:sel__showPayLaterOptionsSettingForSpecifier_ detail:0 cell:6 edit:0];

    [v14 setProperty:*MEMORY[0x1E69BB928] forKey:*MEMORY[0x1E69C5918]];
    [v14 setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C5820]];
    v19[0] = v10;
    v19[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v16 = self->_showPayLaterOptionsSpecifiers;
    self->_showPayLaterOptionsSpecifiers = v15;

    v9 = self->_showPayLaterOptionsSpecifiers;
  }

  v8 = v9;
LABEL_12:

  return v8;
}

- (void)_setShowPayLaterOptionsSwitchSetting:(id)setting forSpecifier:(id)specifier
{
  settingCopy = setting;
  WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_paymentDataProvider);
    -[NSObject setHidePayLaterOptions:](v8, "setHidePayLaterOptions:", [settingCopy BOOLValue] ^ 1);
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "_paymentDataProvider doesnt respond to setHidePayLaterOptions", v9, 2u);
    }
  }
}

- (id)_showPayLaterOptionsSettingForSpecifier:(id)specifier
{
  WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = objc_loadWeakRetained(&self->_paymentDataProvider);
    v8 = [v6 numberWithInt:{objc_msgSend(v7, "hidePayLaterOptions") ^ 1}];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "_paymentDataProvider doesnt respond to hidePayLaterOptions", v11, 2u);
    }

    v8 = MEMORY[0x1E695E110];
  }

  return v8;
}

- (id)_cardBenefitSpecifiers
{
  if (PKPaymentOffersEligibleInDeviceRegion())
  {
    cardBenefitSpecifiers = self->_cardBenefitSpecifiers;
    if (!cardBenefitSpecifiers)
    {
      v4 = MEMORY[0x1E69C5748];
      v5 = PKLocalizedPaymentOffersString(&cfstr_CardBenefitsHe.isa);
      v6 = [v4 groupSpecifierWithName:v5];

      v7 = PKLocalizedPaymentString(&cfstr_CardBenefitsFo.isa);
      v8 = PKLocalizedPaymentOffersString(&cfstr_CardBenefitsFo.isa);

      v28 = v8;
      [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69C5900]];
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = MEMORY[0x1E69C5748];
      v11 = PKLocalizedPaymentOffersString(&cfstr_CardBenefitsPa.isa);
      v12 = [v10 preferenceSpecifierNamed:v11 target:self set:sel__setShowCardBenefitPayLaterSwitchSetting_forSpecifier_ get:sel__showCardBenefitPayLaterSettingForSpecifier_ detail:0 cell:6 edit:0];

      v13 = *MEMORY[0x1E69C5918];
      [v12 setProperty:*MEMORY[0x1E69BB900] forKey:*MEMORY[0x1E69C5918]];
      v14 = *MEMORY[0x1E69C5820];
      v15 = MEMORY[0x1E695E118];
      [v12 setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C5820]];
      [v9 addObject:v12];
      v16 = MEMORY[0x1E69C5748];
      v17 = PKLocalizedPayWithPointsString(&cfstr_CardBenefitsRe.isa);
      v18 = [v16 preferenceSpecifierNamed:v17 target:self set:sel__setShowCardBenefitRewardsSwitchSetting_forSpecifier_ get:sel__showCardBenefitRewardsSettingForSpecifier_ detail:0 cell:6 edit:0];

      [v18 setProperty:*MEMORY[0x1E69BB908] forKey:v13];
      [v18 setProperty:v15 forKey:v14];
      [v9 addObject:v18];
      v19 = MEMORY[0x1E69C5748];
      v20 = PKLocalizedPayWithPointsString(&cfstr_CardBenefitsOf.isa);
      v21 = [v19 preferenceSpecifierNamed:v20 target:self set:sel__setShowCardBenefitMerchandisingOffersSwitchSetting_forSpecifier_ get:sel__showCardBenefitMerchandisingOffersSettingForSpecifier_ detail:0 cell:6 edit:0];

      [v21 setProperty:*MEMORY[0x1E69BB8F8] forKey:v13];
      [v21 setProperty:v15 forKey:v14];
      [v9 addObject:v21];

      v22 = [v9 count];
      if (v22)
      {
        [v9 insertObject:v6 atIndex:0];
        v22 = [v9 copy];
      }

      v23 = self->_cardBenefitSpecifiers;
      self->_cardBenefitSpecifiers = v22;

      cardBenefitSpecifiers = self->_cardBenefitSpecifiers;
    }

    v24 = cardBenefitSpecifiers;
  }

  else
  {
    v25 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, "Card benefits switch not being shown in settings because payment offers arent supported in the device region", buf, 2u);
    }

    v26 = self->_cardBenefitSpecifiers;
    self->_cardBenefitSpecifiers = 0;

    v24 = 0;
  }

  return v24;
}

- (void)_setShowCardBenefitPayLaterSwitchSetting:(id)setting forSpecifier:(id)specifier
{
  settingCopy = setting;
  WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_paymentDataProvider);
    [v8 setHideCardBenefitPayLater:{objc_msgSend(settingCopy, "BOOLValue") ^ 1}];

    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 settingsControllerRequestsReloadSpecifiers:self];
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "_paymentDataProvider doesnt respond to setHideCardBenefitPayLater", v11, 2u);
    }
  }
}

- (id)_showCardBenefitPayLaterSettingForSpecifier:(id)specifier
{
  WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = objc_loadWeakRetained(&self->_paymentDataProvider);
    v8 = [v6 numberWithInt:{objc_msgSend(v7, "hideCardBenefitPayLater") ^ 1}];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "_paymentDataProvider doesnt respond to hideCardBenefitPayLater", v11, 2u);
    }

    v8 = MEMORY[0x1E695E110];
  }

  return v8;
}

- (void)_setShowCardBenefitRewardsSwitchSetting:(id)setting forSpecifier:(id)specifier
{
  settingCopy = setting;
  WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_paymentDataProvider);
    -[NSObject setHideCardBenefitRewards:](v8, "setHideCardBenefitRewards:", [settingCopy BOOLValue] ^ 1);
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "_paymentDataProvider doesnt respond to setHideCardBenefitRewards", v9, 2u);
    }
  }
}

- (id)_showCardBenefitRewardsSettingForSpecifier:(id)specifier
{
  WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = objc_loadWeakRetained(&self->_paymentDataProvider);
    v8 = [v6 numberWithInt:{objc_msgSend(v7, "hideCardBenefitRewards") ^ 1}];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "_paymentDataProvider doesnt respond to hideCardBenefitRewards", v11, 2u);
    }

    v8 = MEMORY[0x1E695E110];
  }

  return v8;
}

- (void)_setShowCardBenefitMerchandisingOffersSwitchSetting:(id)setting forSpecifier:(id)specifier
{
  settingCopy = setting;
  WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_paymentDataProvider);
    -[NSObject setHideCardBenefitMerchandisingOffers:](v8, "setHideCardBenefitMerchandisingOffers:", [settingCopy BOOLValue] ^ 1);
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "_paymentDataProvider doesnt respond to setHideCardBenefitMerchandisingOffers", v9, 2u);
    }
  }
}

- (id)_showCardBenefitMerchandisingOffersSettingForSpecifier:(id)specifier
{
  WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = objc_loadWeakRetained(&self->_paymentDataProvider);
    v8 = [v6 numberWithInt:{objc_msgSend(v7, "hideCardBenefitMerchandisingOffers") ^ 1}];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "_paymentDataProvider doesnt respond to hideCardBenefitMerchandisingOffers", v11, 2u);
    }

    v8 = MEMORY[0x1E695E110];
  }

  return v8;
}

- (id)_onlinePaymentsGroupSpecifiers
{
  onlinePaymentsSpecifiers = self->_onlinePaymentsSpecifiers;
  if (!onlinePaymentsSpecifiers)
  {
    v4 = MEMORY[0x1E69C5748];
    v5 = PKLocalizedVirtualCardString(&cfstr_AllowOnlinePay_1.isa);
    v6 = [(PKPassbookSettingsController *)self _uppercaseGroupSpecifierTitleIfNecessary:v5];
    v7 = [v4 groupSpecifierWithName:v6];

    v8 = PKLocalizedVirtualCardString(&cfstr_AllowOnlinePay_0.isa);
    [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69C5900]];

    v9 = MEMORY[0x1E69C5748];
    v10 = PKLocalizedVirtualCardString(&cfstr_AllowOnlinePay.isa);
    v11 = [v9 preferenceSpecifierNamed:v10 target:self set:sel__setOnlinePaymentsSetting_forSpecifier_ get:sel__onlinePaymentsSettingForSpecifier_ detail:0 cell:6 edit:0];

    [v11 setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C5820]];
    [v11 setProperty:@"ALLOW_ONLINE_PAYMENTS" forKey:*MEMORY[0x1E69C5918]];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v7, v11, 0}];
    v13 = self->_onlinePaymentsSpecifiers;
    self->_onlinePaymentsSpecifiers = v12;

    onlinePaymentsSpecifiers = self->_onlinePaymentsSpecifiers;
  }

  return onlinePaymentsSpecifiers;
}

- (void)_setOnlinePaymentsSetting:(id)setting forSpecifier:(id)specifier
{
  bOOLValue = [setting BOOLValue];

  MEMORY[0x1EEE25588](bOOLValue);
}

- (id)_onlinePaymentsSettingForSpecifier:(id)specifier
{
  v3 = PKFPANCredentialProvisioningConsented() == 1;
  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithBool:v3];
}

- (id)_orderManagementGroupSpecifiers
{
  v10[2] = *MEMORY[0x1E69E9840];
  orderManagementSpecifiers = self->_orderManagementSpecifiers;
  if (!orderManagementSpecifiers)
  {
    v4 = [MEMORY[0x1E69C5748] groupSpecifierWithName:&stru_1F3BD7330];
    [v4 setProperty:@"ORDER_TRACKING" forKey:*MEMORY[0x1E69C5918]];
    v5 = objc_alloc_init(MEMORY[0x1E69C5748]);
    *&v5[*MEMORY[0x1E69C57C8]] = 2;
    [v5 setTarget:self];
    [v5 setControllerLoadAction:sel__showOrderTrackingSettingsViewController_];
    v6 = PKLocalizedOrderManagementString(&cfstr_OrderManagemen.isa);
    [v5 setName:v6];

    [v5 setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C5820]];
    v10[0] = v4;
    v10[1] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v8 = self->_orderManagementSpecifiers;
    self->_orderManagementSpecifiers = v7;

    orderManagementSpecifiers = self->_orderManagementSpecifiers;
  }

  return orderManagementSpecifiers;
}

- (void)_showOrderTrackingSettingsViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    makeViewController = [getFKOrderTrackingSettingsViewControllerProviderClass[0]() makeViewController];
    [WeakRetained settingsController:self requestsPushViewController:makeViewController animated:controller != 0];
  }
}

- (id)_bankConnectGroupSpecifiers
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(NSArray *)self->_institutionsProviderResponses count])
  {
    v3 = MEMORY[0x1E69C5748];
    v4 = PKLocalizedBankConnectString(&cfstr_BankConnectSet.isa);
    v5 = [(PKPassbookSettingsController *)self _uppercaseGroupSpecifierTitleIfNecessary:v4];
    v6 = [v3 groupSpecifierWithName:v5];

    v19 = v6;
    [v25 addObject:v6];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = self->_institutionsProviderResponses;
    v7 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v24 = *v27;
      v23 = *MEMORY[0x1E69C5860];
      v21 = *MEMORY[0x1E69C5988];
      v22 = *MEMORY[0x1E69C5810];
      v9 = *MEMORY[0x1E69C5918];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          v12 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:3 edit:0];
          [v12 setObject:v11 forKeyedSubscript:@"pkConnectedInsitution"];
          [v12 setObject:objc_opt_class() forKeyedSubscript:v23];
          institution = [v11 institution];
          institutionIdentifier = [institution institutionIdentifier];
          [v12 setProperty:institutionIdentifier forKey:@"pkBankConnectInstitutionIdentifier"];

          [v12 setControllerLoadAction:sel__showBankConnectInstitutionDetails_];
          [v12 setObject:&unk_1F3CC7178 forKeyedSubscript:v22];
          +[PKInsitutionTableCell estimatedHeightForCell];
          v15 = [MEMORY[0x1E696AD98] numberWithDouble:?];
          [v12 setObject:v15 forKeyedSubscript:v21];

          institution2 = [v11 institution];
          institutionIdentifier2 = [institution2 institutionIdentifier];
          [v12 setObject:institutionIdentifier2 forKeyedSubscript:v9];

          [v25 addObject:v12];
        }

        v8 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v8);
    }
  }

  return v25;
}

- (void)_showBankConnectInstitutionDetails:(id)details
{
  detailsCopy = details;
  v5 = [detailsCopy propertyForKey:@"pkBankConnectInstitutionIdentifier"];
  [(PKPassbookSettingsController *)self showBankConnectManagementForInstitution:v5 accountIdentifier:0 sender:detailsCopy completion:0];
}

- (void)showBankConnectManagementForInstitution:(id)institution accountIdentifier:(id)identifier sender:(id)sender completion:(id)completion
{
  institutionCopy = institution;
  identifierCopy = identifier;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v12 = [(objc_class *)_MergedGlobals_618() makeViewControllerWithInstitutionIdentifier:institutionCopy];
    [WeakRetained settingsController:self requestsPushViewController:v12 animated:1];
    if (identifierCopy)
    {
      v13 = [(objc_class *)off_1EE98A668() makeViewControllerWithAccountIdentifier:identifierCopy institutionIdentifier:institutionCopy];
      [WeakRetained settingsController:self requestsPushViewController:v13 animated:1];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)showBankConnectAuthorizationFlowWithRedirectURL:(id)l completion:(id)completion animated:(BOOL)animated
{
  animatedCopy = animated;
  v17 = *MEMORY[0x1E69E9840];
  lCopy = l;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 settingsController:self requestsPresentAuthorizationFlowWithRedirectURL:lCopy animated:animatedCopy completion:completionCopy];
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_loadWeakRetained(&self->_delegate);
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "Not showing bank connect auth flow. Delegate %@ does not handle settingsController:requestsPresentAuthorizationFlowWithRedirectURL:animated:completion:", &v15, 0xCu);
    }

    completionCopy[2](completionCopy);
  }
}

- (id)_merchantTokensSpecifier
{
  merchantTokensSpecifier = self->_merchantTokensSpecifier;
  if (!merchantTokensSpecifier)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69C5748]);
    *&v4[*MEMORY[0x1E69C57C8]] = 2;
    [v4 setTarget:self];
    [v4 setControllerLoadAction:sel__showMerchantTokensList_];
    v5 = PKLocalizedPaymentString(&cfstr_SettingsMercha.isa);
    [v4 setName:v5];

    [v4 setProperty:@"SETTINGS_MERCHANT_TOKENS" forKey:*MEMORY[0x1E69C5918]];
    if (PKStoreDemoModeEnabled())
    {
      v6 = MEMORY[0x1E695E110];
    }

    else
    {
      v6 = MEMORY[0x1E695E118];
    }

    [v4 setProperty:v6 forKey:*MEMORY[0x1E69C58C8]];
    v7 = self->_merchantTokensSpecifier;
    self->_merchantTokensSpecifier = v4;

    merchantTokensSpecifier = self->_merchantTokensSpecifier;
  }

  return merchantTokensSpecifier;
}

- (id)_merchantTokensGroupSpecifier
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E69C5748] groupSpecifierWithName:&stru_1F3BD7330];
  [v3 addObject:v4];
  _merchantTokensSpecifier = [(PKPassbookSettingsController *)self _merchantTokensSpecifier];
  [v3 addObject:_merchantTokensSpecifier];

  return v3;
}

- (void)_showMerchantTokensList:(id)list
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [(PKMerchantTokenUnifiedListViewControllerProvider *)self->_merchantTokensListViewControllerProvider makeViewControllerInNavigationContextForUnifiedListWithDelegate:self];
  [WeakRetained settingsController:self requestsPushViewController:v4 animated:1];
}

- (void)presentMerchantTokenWithID:(id)d
{
  merchantTokensListViewControllerProvider = self->_merchantTokensListViewControllerProvider;
  dCopy = d;
  v7 = [(PKMerchantTokenUnifiedListViewControllerProvider *)merchantTokensListViewControllerProvider makeViewControllerInNavigationContextForUnifiedListWithDelegate:self];
  [v7 presentMerchantTokenWithIdentifier:dCopy];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained settingsController:self requestsPushViewController:v7 animated:1];
}

- (void)presentMerchantTokenViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained settingsController:self requestsPushViewController:controllerCopy animated:1];
}

- (void)popViewControllerInMerchantTokenStack
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v5 requestParentNavigationControllerWithSettingsController:self];

    if ([v7 pk_settings_useStateDrivenNavigation])
    {
      [v7 pk_settings_popViewController];
    }

    else
    {
      v6 = [v7 popViewControllerAnimated:1];
    }
  }
}

- (id)_defaultAppSpecifiers
{
  defaultWalletContext = self->_defaultWalletContext;
  if (defaultWalletContext && [(SESNFCAppSettingsContext *)defaultWalletContext shouldShowDefaultNFCAppPicker])
  {
    defaultAppSpecifiers = self->_defaultAppSpecifiers;
    if (defaultAppSpecifiers)
    {
      v5 = defaultAppSpecifiers;
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x1E69C5728]);
      bundleId = [(SESNFCAppSettingsContext *)self->_defaultWalletContext bundleId];
      v9 = [v7 initWithBundleID:bundleId delegate:self onChange:&__block_literal_global_74];

      if (v9)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v11 = [MEMORY[0x1E69C5748] groupSpecifierWithName:&stru_1F3BD7330];
        [v10 addObject:v11];

        [v10 addObject:v9];
        v12 = [v10 copy];
        v13 = self->_defaultAppSpecifiers;
        self->_defaultAppSpecifiers = v12;

        v5 = self->_defaultAppSpecifiers;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_lockscreenSwitchGroupSpecifiers
{
  v32[2] = *MEMORY[0x1E69E9840];
  if (!self->_lockscreenSwitchSpecifiers)
  {
    if (PKPearlIsAvailable())
    {
      v3 = [MEMORY[0x1E69C5748] groupSpecifierWithName:&stru_1F3BD7330];
      v4 = PKLocalizedPearlString(&cfstr_AllowDoubleCli.isa);
      v5 = PKLocalizedPearlString(&cfstr_AllowDoubleCli_0.isa);
    }

    else
    {
      if (!PKHomeButtonIsAvailable() || !PKSecureElementIsAvailable())
      {
        v30 = 0;
        goto LABEL_23;
      }

      v6 = MEMORY[0x1E69C5748];
      v7 = PKLocalizedPaymentString(&cfstr_AllowAccessOnL.isa);
      v8 = [(PKPassbookSettingsController *)self _uppercaseGroupSpecifierTitleIfNecessary:v7];
      v3 = [v6 groupSpecifierWithName:v8];

      v4 = PKLocalizedPaymentString(&cfstr_AllowAccessOnL_0.isa);
      v5 = PKLocalizedPaymentString(&cfstr_AllowAccessOnL_1.isa);
    }

    v9 = v5;
    v10 = *MEMORY[0x1E69C5918];
    [v3 setObject:@"ALLOW_DOUBLE_CLICK_GROUP_ID" forKeyedSubscript:*MEMORY[0x1E69C5918]];
    [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69C5900]];
    v11 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:v4 target:self set:sel__setDoubleClickSwitchSetting_forSpecifier_ get:sel__doubleClickSwitchSettingForSpecifier_ detail:0 cell:6 edit:0];
    lockscreenSwitchSpecifier = self->_lockscreenSwitchSpecifier;
    self->_lockscreenSwitchSpecifier = v11;

    [(PSSpecifier *)self->_lockscreenSwitchSpecifier setObject:@"ALLOW_DOUBLE_CLICK_ID" forKeyedSubscript:v10];
    [(PSSpecifier *)self->_lockscreenSwitchSpecifier setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69C5820]];
    v13 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v3, self->_lockscreenSwitchSpecifier, 0}];
    lockscreenSwitchSpecifiers = self->_lockscreenSwitchSpecifiers;
    self->_lockscreenSwitchSpecifiers = v13;
  }

  defaultWalletContext = self->_defaultWalletContext;
  if (defaultWalletContext)
  {
    v16 = [(SESNFCAppSettingsContext *)defaultWalletContext doubleClickToggleVisibilityType]== 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = [MEMORY[0x1E696AD98] numberWithBool:v16];
  v18 = *MEMORY[0x1E69C58C8];
  [(PSSpecifier *)self->_lockscreenSwitchSpecifier setObject:v17 forKeyedSubscript:*MEMORY[0x1E69C58C8]];

  if (!self->_doubleClickEducationalSpecifierGroup)
  {
    if (PKPearlIsAvailable())
    {
      v19 = 2;
    }

    else
    {
      v19 = 3;
    }

    v20 = [PKEducationalMessageViewConfiguration defaultConfigurationForAnimation:v19];
    if (PKIsApplePayUserEducationDemoSupported())
    {
      [v20 setActionHandler:&__block_literal_global_506];
      v21 = PKLocalizedPaymentString(&cfstr_UserEducationS.isa);
      [v20 setActionTitle:v21];
    }

    v22 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:3 edit:0];
    v23 = *MEMORY[0x1E69C5918];
    [v22 setObject:@"EDUCATIONAL_MESSAGE_ID" forKeyedSubscript:*MEMORY[0x1E69C5918]];
    [v22 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x1E69C5860]];
    [v22 setObject:v20 forKeyedSubscript:@"messageViewConfigurationKey"];
    emptyGroupSpecifier = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
    [emptyGroupSpecifier setObject:@"EDUCATIONAL_MESSAGE_GROUP_ID" forKeyedSubscript:v23];
    v32[0] = emptyGroupSpecifier;
    v32[1] = v22;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    doubleClickEducationalSpecifierGroup = self->_doubleClickEducationalSpecifierGroup;
    self->_doubleClickEducationalSpecifierGroup = v25;
  }

  v27 = [(PSSpecifier *)self->_lockscreenSwitchSpecifier objectForKeyedSubscript:v18];
  if ([v27 BOOLValue])
  {
    v28 = [(PKPassbookSettingsController *)self _doubleClickSwitchSettingForSpecifier:0];
    bOOLValue = [v28 BOOLValue];

    if (bOOLValue)
    {
      v30 = [(NSArray *)self->_lockscreenSwitchSpecifiers arrayByAddingObjectsFromArray:self->_doubleClickEducationalSpecifierGroup];
      goto LABEL_23;
    }
  }

  else
  {
  }

  v30 = self->_lockscreenSwitchSpecifiers;
LABEL_23:

  return v30;
}

void __64__PKPassbookSettingsController__lockscreenSwitchGroupSpecifiers__block_invoke()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v0 setScheme:*MEMORY[0x1E69BC6E0]];
  [v0 setHost:*MEMORY[0x1E69BC5A0]];
  v1 = MEMORY[0x1E696AF60];
  v2 = *MEMORY[0x1E69BC638];
  v3 = PKApplePayUserEducationDemoSourceToString();
  v4 = [v1 queryItemWithName:v2 value:v3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v0 setQueryItems:v5];

  v6 = [MEMORY[0x1E6963608] defaultWorkspace];
  v7 = [v0 URL];
  [v6 openURL:v7 configuration:0 completionHandler:0];
}

- (void)_setDoubleClickSwitchSetting:(id)setting forSpecifier:(id)specifier
{
  settingCopy = setting;
  [settingCopy BOOLValue];
  PKSetDoubleClickAllowed();
  bOOLValue = [settingCopy BOOLValue];

  if (bOOLValue)
  {
    v8 = [(PSSpecifier *)self->_lockscreenSwitchSpecifier objectForKeyedSubscript:*MEMORY[0x1E69C5918]];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained settingsController:self requestsInsertContiguousSpecifiers:self->_doubleClickEducationalSpecifierGroup afterSpecifierID:v8 animated:1];
  }

  else
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 settingsController:self requestsRemoveContiguousSpecifiers:self->_doubleClickEducationalSpecifierGroup animated:1];
  }
}

- (id)_doubleClickSwitchSettingForSpecifier:(id)specifier
{
  v3 = MEMORY[0x1E696AD98];
  v4 = PKDoubleClickAllowed();

  return [v3 numberWithBool:v4];
}

- (void)_showCardDetails:(id)details
{
  v5 = [details propertyForKey:@"pkPass"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained settingsController:self requestsDetailViewControllerForPass:v5 animated:1];
}

- (id)_systemPolicyForAppSpecifiers
{
  if (!self->_systemPolicyForApp)
  {
    v3 = objc_alloc(MEMORY[0x1E69C5760]);
    v4 = [v3 initWithBundleIdentifier:*MEMORY[0x1E69BC3D8]];
    systemPolicyForApp = self->_systemPolicyForApp;
    self->_systemPolicyForApp = v4;
  }

  if (PKIsPhone())
  {
    v6 = 0x10000818001;
  }

  else
  {
    v6 = 8486913;
  }

  v7 = [(PSSystemPolicyForApp *)self->_systemPolicyForApp specifiersForPolicyOptions:v6 force:0];
  firstObject = [v7 firstObject];
  if (firstObject)
  {
    v9 = PKLocalizedPaymentString(&cfstr_AllowWalletAnd.isa);
    v10 = [(PKPassbookSettingsController *)self _uppercaseGroupSpecifierTitleIfNecessary:v9];
    [firstObject setName:v10];
  }

  return v7;
}

- (id)_defaultsGroupSpecifiers
{
  array = [MEMORY[0x1E695DF70] array];
  deviceSupportsInAppPayments = [(PKPassbookSettingsDataSource *)self->_dataSource deviceSupportsInAppPayments];
  v5 = MEMORY[0x1E69C5748];
  v6 = PKLocalizedPaymentString(&cfstr_SettingsTransa.isa);
  if (deviceSupportsInAppPayments)
  {
    [v5 groupSpecifierWithName:v6];
  }

  else
  {
    [v5 groupSpecifierWithID:v6];
  }
  v7 = ;

  [array addObject:v7];
  v8 = [MEMORY[0x1E69B7D48] pk_privacyFlowForContext:1];
  localizedButtonTitle = [v8 localizedButtonTitle];
  v10 = PKLocalizedPaymentString(&cfstr_SettingsTransa_0.isa);
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v10, localizedButtonTitle];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [v7 setProperty:v13 forKey:*MEMORY[0x1E69C58D8]];

  [v7 setProperty:v11 forKey:*MEMORY[0x1E69C58F8]];
  v22.location = [v11 rangeOfString:localizedButtonTitle];
  v14 = NSStringFromRange(v22);
  [v7 setProperty:v14 forKey:*MEMORY[0x1E69C58E8]];

  v15 = [MEMORY[0x1E696B098] valueWithNonretainedObject:self];
  [v7 setProperty:v15 forKey:*MEMORY[0x1E69C58F0]];

  [v7 setProperty:@"_openPrivacyLink" forKey:*MEMORY[0x1E69C58E0]];
  _defaultPaymentSpecifier = [(PKPassbookSettingsController *)self _defaultPaymentSpecifier];
  [array addObject:_defaultPaymentSpecifier];

  if (deviceSupportsInAppPayments)
  {
    _defaultShippingAddressSpecifier = [(PKPassbookSettingsController *)self _defaultShippingAddressSpecifier];
    [array addObject:_defaultShippingAddressSpecifier];

    _defaultContactEmailSpecifier = [(PKPassbookSettingsController *)self _defaultContactEmailSpecifier];
    [array addObject:_defaultContactEmailSpecifier];

    _defaultContactPhoneSpecifier = [(PKPassbookSettingsController *)self _defaultContactPhoneSpecifier];
    [array addObject:_defaultContactPhoneSpecifier];
  }

  return array;
}

- (id)_currentDefaultPaymentPass
{
  v33 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
  defaultPaymentPassIdentifier = [WeakRetained defaultPaymentPassIdentifier];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = self->_paymentPasses;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v28 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v27 + 1) + 8 * v9);
      uniqueID = [v10 uniqueID];
      v12 = [uniqueID isEqualToString:defaultPaymentPassIdentifier];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v10;

    if (v13)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_9:
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = self->_otherPasses;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        uniqueID2 = [v19 uniqueID];
        v21 = [uniqueID2 isEqualToString:defaultPaymentPassIdentifier];

        if (v21)
        {
          v13 = v19;
          goto LABEL_21;
        }
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_21:

LABEL_22:

  return v13;
}

- (void)_updateDefaultCardsPreferences
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:self->_paymentPasses];
  [v3 sortUsingComparator:&__block_literal_global_531];
  v4 = [v3 indexesOfObjectsPassingTest:&__block_literal_global_533];
  v5 = [v3 objectsAtIndexes:v4];
  [v3 removeObjectsAtIndexes:v4];
  WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
  defaultPaymentPassIdentifier = [WeakRetained defaultPaymentPassIdentifier];

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __62__PKPassbookSettingsController__updateDefaultCardsPreferences__block_invoke_3;
  v35[3] = &unk_1E8016E58;
  v8 = defaultPaymentPassIdentifier;
  v36 = v8;
  v9 = [v3 indexOfObjectPassingTest:v35];
  v10 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp_1.isa);
  v11 = [objc_alloc(MEMORY[0x1E69B8D20]) initWithTitle:v10 preferences:v3 selectedIndex:v9 readOnly:0];
  availableCards = self->_availableCards;
  self->_availableCards = v11;

  if ([v3 count] >= 2 && !self->_context && PKIsPhone())
  {
    [(PKPaymentPreference *)self->_availableCards setEducationalAnimation:1];
  }

  if ([v5 count])
  {
    v27 = v8;
    selfCopy = self;
    v30 = v4;
    v26 = PKLocalizedPaymentString(&cfstr_SettingsSetDef.isa);
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v28 = v5;
    v14 = v5;
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v32;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v31 + 1) + 8 * i);
          v20 = objc_alloc_init(MEMORY[0x1E69B8D28]);
          [v20 setPass:v19];
          [v20 setShouldShowCardUI:1];
          [v20 setIsSelectable:0];
          devicePrimaryPaymentApplication = [v19 devicePrimaryPaymentApplication];
          [devicePrimaryPaymentApplication state];

          v22 = PKDisplayableStringForPaymentApplicationState();
          [v20 setAvailabilityString:v22];

          [v13 addObject:v20];
        }

        v16 = [v14 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v16);
    }

    v23 = v26;
    v24 = [objc_alloc(MEMORY[0x1E69B8D20]) initWithTitle:v26 preferences:v13 selectedIndex:0x7FFFFFFFFFFFFFFFLL readOnly:1];
    unavailableCards = selfCopy->_unavailableCards;
    selfCopy->_unavailableCards = v24;

    v4 = v30;
    v8 = v27;
    v5 = v28;
  }

  else
  {
    v23 = self->_unavailableCards;
    self->_unavailableCards = 0;
  }
}

uint64_t __62__PKPassbookSettingsController__updateDefaultCardsPreferences__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 localizedName];
  v7 = [v5 localizedName];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [v4 serialNumber];
    v10 = [v5 serialNumber];
    v8 = [v9 compare:v10];
  }

  return v8;
}

BOOL __62__PKPassbookSettingsController__updateDefaultCardsPreferences__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 supportsDefaultCardSelection])
  {
    [v2 effectiveContactlessPaymentApplicationState];
    v3 = PKPaymentApplicationStateIsPersonalized() == 0;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

uint64_t __62__PKPassbookSettingsController__updateDefaultCardsPreferences__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_showDefaultPaymentOptions:(id)options
{
  optionsCopy = options;
  [(PKPassbookSettingsController *)self _updateDefaultCardsPreferences];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PKPassbookSettingsController__showDefaultPaymentOptions___block_invoke;
  aBlock[3] = &unk_1E8016E80;
  objc_copyWeak(&v16, &location);
  v5 = optionsCopy;
  v15 = v5;
  v6 = _Block_copy(aBlock);
  array = [MEMORY[0x1E695DF70] array];
  [array addObject:self->_availableCards];
  if (self->_unavailableCards)
  {
    [array addObject:?];
  }

  v8 = [PKPaymentPreferencesListViewController alloc];
  v9 = PKLocalizedPaymentString(&cfstr_SettingsOption.isa);
  v10 = [(PKPaymentPreferencesListViewController *)v8 initWithPreferences:array title:v9 style:[(PKPassbookSettingsController *)self _paymentPreferencesStyle] handler:v6 contactFormatValidator:self->_contactFormatValidator];
  defaultCardsController = self->_defaultCardsController;
  self->_defaultCardsController = v10;

  if (self->_context == 1)
  {
    v12 = PKBridgeAppearanceGetAppearanceSpecifier();
    PKAppearanceApplyToContainer(v12, self->_defaultCardsController);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained settingsController:self requestsPushViewController:self->_defaultCardsController animated:1];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __59__PKPassbookSettingsController__showDefaultPaymentOptions___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = [v4 firstObject];
    v7 = [v6 preferences];
    v8 = [v6 selectedIndex];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL || v8 >= [v7 count])
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v7 count];
        if (v8 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = @"not found";
        }

        else
        {
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v8];
        }

        *buf = 134218242;
        v14 = v11;
        v15 = 2112;
        v16 = v12;
        _os_log_error_impl(&dword_1BD026000, v10, OS_LOG_TYPE_ERROR, "Could not get selected pass, count: %lu, selected: %@", buf, 0x16u);
        if (v8 != 0x7FFFFFFFFFFFFFFFLL)
        {
        }
      }
    }

    else
    {
      v9 = [v7 objectAtIndex:v8];
      [WeakRetained _handleDefaultPaymentPassChangedTo:v9 withSender:*(a1 + 32) optionsController:0 canPrompt:1];
    }
  }
}

- (void)_handleDefaultPaymentPassChangedTo:(id)to withSender:(id)sender optionsController:(id)controller canPrompt:(BOOL)prompt
{
  promptCopy = prompt;
  toCopy = to;
  senderCopy = sender;
  controllerCopy = controller;
  if (toCopy)
  {
    if ([toCopy isPrivateLabel] && promptCopy)
    {
      localizedDescription = [toCopy localizedDescription];
      v14 = PKLocalizedPaymentString(&cfstr_SettingsSetDef_0.isa, &stru_1F3BD5BF0.isa, localizedDescription);

      v15 = PKLocalizedPaymentString(&cfstr_SettingsSetDef_1.isa);
      v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v14 message:v15 preferredStyle:1];
      v17 = MEMORY[0x1E69DC648];
      v18 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __106__PKPassbookSettingsController__handleDefaultPaymentPassChangedTo_withSender_optionsController_canPrompt___block_invoke;
      v28[3] = &unk_1E8012FF8;
      v28[4] = self;
      v29 = toCopy;
      v30 = senderCopy;
      v19 = controllerCopy;
      v31 = v19;
      v20 = [v17 actionWithTitle:v18 style:1 handler:v28];

      [v16 addAction:v20];
      v21 = MEMORY[0x1E69DC648];
      v22 = PKLocalizedString(&cfstr_Cancel.isa);
      v23 = [v21 actionWithTitle:v22 style:0 handler:0];

      [v16 addAction:v23];
      [v19 presentViewController:v16 animated:1 completion:0];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
      uniqueID = [toCopy uniqueID];
      [WeakRetained setDefaultPaymentPassIdentifier:uniqueID];

      if (self->_defaultCardIdentifier)
      {
        uniqueID2 = [toCopy uniqueID];
        defaultCardIdentifier = self->_defaultCardIdentifier;
        self->_defaultCardIdentifier = uniqueID2;
      }

      v14 = objc_loadWeakRetained(&self->_delegate);
      [v14 settingsController:self requestsReloadSpecifier:senderCopy];
    }
  }
}

- (void)_openPrivacyLink
{
  v7 = [MEMORY[0x1E69B7D58] pk_presenterForContext:1];
  if (PKUserInterfaceIdiomSupportsLargeLayouts())
  {
    [v7 setModalPresentationStyle:2];
  }

  if (self->_context == 1)
  {
    splashController = [v7 splashController];
    view = [splashController view];
    v5 = BPSBridgeTintColor();
    [view setTintColor:v5];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained settingsControllerRequestsPresentPrivacyWithPresenter:v7];
}

- (id)_defaultPaymentSpecifier
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self->_defaultPaymentSpecifier)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69C5748]);
    *&v3[*MEMORY[0x1E69C57C8]] = 2;
    [v3 setTarget:self];
    *&v3[*MEMORY[0x1E69C57D0]] = sel__getDefaultPaymentCard;
    [v3 setControllerLoadAction:sel__showDefaultPaymentOptions_];
    v4 = PKLocalizedPaymentString(&cfstr_SettingsTransa_1.isa);
    [v3 setName:v4];

    [v3 setProperty:@"SETTINGS_TRANSACTION_DEFAULTS_PAYMENT_CARD" forKey:*MEMORY[0x1E69C5918]];
    defaultPaymentSpecifier = self->_defaultPaymentSpecifier;
    self->_defaultPaymentSpecifier = v3;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_paymentPasses;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (![*(*(&v14 + 1) + 8 * v10) contactlessActivationState])
        {

          if (PKStoreDemoModeEnabled())
          {
            v11 = MEMORY[0x1E695E110];
          }

          else
          {
            v11 = MEMORY[0x1E695E118];
          }

          goto LABEL_15;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = MEMORY[0x1E695E110];
LABEL_15:
  [(PSSpecifier *)self->_defaultPaymentSpecifier setProperty:v11 forKey:*MEMORY[0x1E69C58C8], v14];
  v12 = self->_defaultPaymentSpecifier;

  return v12;
}

- (id)_getDefaultPaymentCard
{
  if (!self->_defaultCardIdentifier)
  {
    WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
    defaultPaymentPassIdentifier = [WeakRetained defaultPaymentPassIdentifier];
    defaultCardIdentifier = self->_defaultCardIdentifier;
    self->_defaultCardIdentifier = defaultPaymentPassIdentifier;
  }

  if ([(NSArray *)self->_paymentPasses count]&& self->_defaultCardIdentifier)
  {
    v6 = objc_loadWeakRetained(&self->_passLibraryDataProvider);
    v7 = [v6 passWithUniqueID:self->_defaultCardIdentifier];
    localizedDescription = [v7 localizedDescription];
  }

  else
  {
    localizedDescription = &stru_1F3BD7330;
  }

  return localizedDescription;
}

- (id)_defaultShippingAddressSpecifier
{
  defaultShippingAddressSpecifier = self->_defaultShippingAddressSpecifier;
  if (!defaultShippingAddressSpecifier)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69C5748]);
    *&v4[*MEMORY[0x1E69C57C8]] = 2;
    [v4 setTarget:self];
    *&v4[*MEMORY[0x1E69C57D0]] = sel__getDefaultShippingAddress;
    [v4 setControllerLoadAction:sel__showDefaultShippingAddressOptions_];
    v5 = PKLocalizedPaymentString(&cfstr_SettingsTransa_2.isa);
    [v4 setName:v5];

    [v4 setProperty:@"SETTINGS_TRANSACTION_DEFAULTS_SHIPPING_ADDRESS" forKey:*MEMORY[0x1E69C5918]];
    if (PKStoreDemoModeEnabled())
    {
      v6 = MEMORY[0x1E695E110];
    }

    else
    {
      v6 = MEMORY[0x1E695E118];
    }

    [v4 setProperty:v6 forKey:*MEMORY[0x1E69C58C8]];
    v7 = self->_defaultShippingAddressSpecifier;
    self->_defaultShippingAddressSpecifier = v4;

    defaultShippingAddressSpecifier = self->_defaultShippingAddressSpecifier;
  }

  return defaultShippingAddressSpecifier;
}

- (id)_defaultContactEmailSpecifier
{
  defaultContactEmailSpecifier = self->_defaultContactEmailSpecifier;
  if (!defaultContactEmailSpecifier)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69C5748]);
    *&v4[*MEMORY[0x1E69C57C8]] = 2;
    [v4 setTarget:self];
    *&v4[*MEMORY[0x1E69C57D0]] = sel__getDefaultContactEmail;
    [v4 setControllerLoadAction:sel__showDefaultContactEmailOptions_];
    v5 = PKLocalizedPaymentString(&cfstr_SettingsTransa_3.isa);
    [v4 setName:v5];

    [v4 setProperty:@"SETTINGS_TRANSACTION_DEFAULTS_EMAIL" forKey:*MEMORY[0x1E69C5918]];
    if (PKStoreDemoModeEnabled())
    {
      v6 = MEMORY[0x1E695E110];
    }

    else
    {
      v6 = MEMORY[0x1E695E118];
    }

    [v4 setProperty:v6 forKey:*MEMORY[0x1E69C58C8]];
    v7 = self->_defaultContactEmailSpecifier;
    self->_defaultContactEmailSpecifier = v4;

    defaultContactEmailSpecifier = self->_defaultContactEmailSpecifier;
  }

  return defaultContactEmailSpecifier;
}

- (id)_defaultContactPhoneSpecifier
{
  defaultContactPhoneSpecifier = self->_defaultContactPhoneSpecifier;
  if (!defaultContactPhoneSpecifier)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69C5748]);
    *&v4[*MEMORY[0x1E69C57C8]] = 2;
    [v4 setTarget:self];
    *&v4[*MEMORY[0x1E69C57D0]] = sel__getDefaultContactPhone;
    [v4 setControllerLoadAction:sel__showDefaultContactPhoneOptions_];
    v5 = PKLocalizedPaymentString(&cfstr_SettingsTransa_4.isa);
    [v4 setName:v5];

    [v4 setProperty:@"SETTINGS_TRANSACTION_DEFAULTS_PHONE" forKey:*MEMORY[0x1E69C5918]];
    if (PKStoreDemoModeEnabled())
    {
      v6 = MEMORY[0x1E695E110];
    }

    else
    {
      v6 = MEMORY[0x1E695E118];
    }

    [v4 setProperty:v6 forKey:*MEMORY[0x1E69C58C8]];
    v7 = self->_defaultContactPhoneSpecifier;
    self->_defaultContactPhoneSpecifier = v4;

    defaultContactPhoneSpecifier = self->_defaultContactPhoneSpecifier;
  }

  return defaultContactPhoneSpecifier;
}

- (void)_showDefaultShippingAddressOptions:(id)options
{
  v27[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  array = [MEMORY[0x1E695DF70] array];
  WeakRetained = objc_loadWeakRetained(&self->_optionsDelegate);
  defaultShippingAddress = [WeakRetained defaultShippingAddress];
  [array safelyAddObject:defaultShippingAddress];

  v8 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp_2.isa);
  v9 = objc_alloc(MEMORY[0x1E69B8D30]);
  if ([array count])
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = [v9 initWithTitle:v8 preferences:array selectedIndex:v10 readOnly:0];
  [v11 setType:1];
  v12 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp_3.isa);
  [v11 setAddNewTitle:v12];

  v13 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp_4.isa);
  [v11 setAddExistingTitle:v13];

  v14 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp_5.isa);
  [v11 setEditExistingTitle:v14];

  [v11 setContactKey:*MEMORY[0x1E695C360]];
  [v11 mergeRecentsAndMeCard];
  if (![array count])
  {
    [v11 setSelectedIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  PKContactFormatAssignFormatErrorsToPreferenceContact();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PKPassbookSettingsController__showDefaultShippingAddressOptions___block_invoke;
  aBlock[3] = &unk_1E8016EA8;
  v24 = v11;
  selfCopy = self;
  v26 = optionsCopy;
  v15 = optionsCopy;
  v16 = v11;
  v17 = _Block_copy(aBlock);
  v18 = PKLocalizedPaymentString(&cfstr_SettingsOption_0.isa);
  v19 = [PKPaymentPreferencesListViewController alloc];
  v27[0] = v16;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v21 = [(PKPaymentPreferencesListViewController *)v19 initWithPreferences:v20 title:v18 style:[(PKPassbookSettingsController *)self _paymentPreferencesStyle] handler:v17 contactFormatValidator:self->_contactFormatValidator];

  v22 = objc_loadWeakRetained(&self->_delegate);
  [v22 settingsController:self requestsPushViewController:v21 animated:1];
}

void __67__PKPassbookSettingsController__showDefaultShippingAddressOptions___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) selectedIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
    [WeakRetained setDefaultShippingAddress:0];
  }

  else
  {
    v3 = [*(a1 + 32) preferences];
    WeakRetained = [v3 objectAtIndex:{objc_msgSend(*(a1 + 32), "selectedIndex")}];

    [WeakRetained setContactSource:2];
    v4 = objc_loadWeakRetained((*(a1 + 40) + 32));
    [v4 setDefaultShippingAddress:WeakRetained];
  }

  v5 = objc_loadWeakRetained((*(a1 + 40) + 744));
  [v5 settingsController:*(a1 + 40) requestsReloadSpecifier:*(a1 + 48)];
}

- (void)_showDefaultContactEmailOptions:(id)options
{
  v38[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  array = [MEMORY[0x1E695DF70] array];
  WeakRetained = objc_loadWeakRetained(&self->_optionsDelegate);
  defaultContactEmail = [WeakRetained defaultContactEmail];
  [array safelyAddObject:defaultContactEmail];

  v8 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp_6.isa);
  v9 = objc_alloc(MEMORY[0x1E69B8D30]);
  if ([array count])
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = [v9 initWithTitle:v8 preferences:array selectedIndex:v10 readOnly:0];
  [v11 setType:1];
  v12 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp_7.isa);
  [v11 setAddNewTitle:v12];

  v13 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp_8.isa);
  [v11 setAddExistingTitle:v13];

  v14 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp_9.isa);
  [v11 setEditExistingTitle:v14];

  [v11 setContactKey:*MEMORY[0x1E695C208]];
  [v11 mergeRecentsAndMeCard];
  if (![array count])
  {
    [v11 setSelectedIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  PKContactFormatAssignFormatErrorsToPreferenceContact();
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PKPassbookSettingsController__showDefaultContactEmailOptions___block_invoke;
  aBlock[3] = &unk_1E8016ED0;
  objc_copyWeak(&v36, &location);
  v15 = v11;
  v34 = v15;
  v16 = optionsCopy;
  v35 = v16;
  v17 = _Block_copy(aBlock);
  v18 = PKLocalizedPaymentString(&cfstr_SettingsOption_1.isa);
  v19 = [PKPaymentPreferencesListViewController alloc];
  v38[0] = v15;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  v21 = [(PKPaymentPreferencesListViewController *)v19 initWithPreferences:v20 title:v18 style:[(PKPassbookSettingsController *)self _paymentPreferencesStyle] handler:v17 contactFormatValidator:self->_contactFormatValidator];

  hideMyEmailManager = self->_hideMyEmailManager;
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __64__PKPassbookSettingsController__showDefaultContactEmailOptions___block_invoke_2;
  v29 = &unk_1E8016EF8;
  selfCopy = self;
  v23 = v15;
  v31 = v23;
  v24 = v21;
  v32 = v24;
  [(PKHideMyEmailManager *)hideMyEmailManager isAvailable:&v26];
  v25 = objc_loadWeakRetained(&self->_delegate);
  [v25 settingsController:self requestsPushViewController:v24 animated:{1, v26, v27, v28, v29, selfCopy}];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

void __64__PKPassbookSettingsController__showDefaultContactEmailOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v15 = WeakRetained;
    if ([*(a1 + 32) selectedIndex] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = objc_loadWeakRetained(v15 + 4);
      [v3 setDefaultContactEmail:0];
    }

    else
    {
      v4 = [*(a1 + 32) preferences];
      v5 = [v4 count];

      v6 = v5 - 1;
      if (v5 >= 1)
      {
        v7 = [*(a1 + 32) preferences];
        v8 = [v7 lastObject];
        v9 = [v8 isHideMyEmail];

        if (v9)
        {
          v10 = [*(a1 + 32) selectedIndex];
          v11 = objc_loadWeakRetained(v15 + 4);
          [v11 setUseHideMyEmail:v10 == v6];

          if (v10 == v6)
          {
            goto LABEL_9;
          }
        }
      }

      v12 = [*(a1 + 32) preferences];
      v3 = [v12 objectAtIndex:{objc_msgSend(*(a1 + 32), "selectedIndex")}];

      PKContactFormatAssignEmailFormatErrorToPreferenceForContact();
      v13 = objc_loadWeakRetained(v15 + 4);
      [v13 setDefaultContactEmail:v3];
    }

LABEL_9:
    v14 = objc_loadWeakRetained(v15 + 93);
    [v14 settingsController:v15 requestsReloadSpecifier:*(a1 + 40)];

    WeakRetained = v15;
  }
}

void __64__PKPassbookSettingsController__showDefaultContactEmailOptions___block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  v3 = 1;
  if (!a2)
  {
    v3 = 2;
  }

  *(*(a1 + 32) + 648) = v3;
  if (!a3)
  {
    if (a2)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __64__PKPassbookSettingsController__showDefaultContactEmailOptions___block_invoke_3;
      block[3] = &unk_1E8010A88;
      v5 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v7 = v5;
      v8 = *(a1 + 48);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __64__PKPassbookSettingsController__showDefaultContactEmailOptions___block_invoke_3(uint64_t a1)
{
  v15[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = [WeakRetained useHideMyEmail];

  [*(a1 + 40) addHideMyEmailPreference:v3];
  v4 = PKLocalizedHideMyEmailString(&cfstr_HmeSettingsDes.isa);
  v5 = PKLocalizedHideMyEmailString(&cfstr_HmeSettingsDes_0.isa);
  v6 = PKStringWithValidatedFormat();
  v7 = [v6 rangeOfString:{v5, v5}];
  v9 = v8;
  [*(a1 + 40) setFooter:v6];
  [*(a1 + 40) setFooterLinkRange:{v7, v9}];
  [*(a1 + 40) setFooterLinkActionBlock:&__block_literal_global_637];
  v10 = [objc_alloc(MEMORY[0x1E69B8D30]) initWithTitle:0 preferences:0 selectedIndex:0 readOnly:1];
  [v10 setContactKey:*MEMORY[0x1E695C208]];
  v11 = [*(a1 + 40) addNewTitle];
  [v10 setAddNewTitle:v11];

  v12 = [*(a1 + 40) addExistingTitle];
  [v10 setAddExistingTitle:v12];

  [*(a1 + 48) setPreferenceHasSeparateAddItemsSection:1];
  v13 = *(a1 + 48);
  v15[0] = *(a1 + 40);
  v15[1] = v10;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [v13 setPreferences:v14];
}

void __64__PKPassbookSettingsController__showDefaultContactEmailOptions___block_invoke_4()
{
  v0 = objc_alloc(MEMORY[0x1E695DFF8]);
  v1 = [v0 initWithString:*MEMORY[0x1E69BB918]];
  if (v1)
  {
    v3 = v1;
    v2 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v2 openSensitiveURL:v3 withOptions:0];

    v1 = v3;
  }
}

- (void)_showDefaultContactPhoneOptions:(id)options
{
  v31[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  array = [MEMORY[0x1E695DF70] array];
  WeakRetained = objc_loadWeakRetained(&self->_optionsDelegate);
  defaultContactPhone = [WeakRetained defaultContactPhone];
  [array safelyAddObject:defaultContactPhone];

  v8 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp_10.isa);
  v9 = objc_alloc(MEMORY[0x1E69B8D30]);
  if ([array count])
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = [v9 initWithTitle:v8 preferences:array selectedIndex:v10 readOnly:0];
  [v11 setType:1];
  v12 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp_11.isa);
  [v11 setAddNewTitle:v12];

  v13 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp_12.isa);
  [v11 setAddExistingTitle:v13];

  v14 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp_13.isa);
  [v11 setEditExistingTitle:v14];

  [v11 setContactKey:*MEMORY[0x1E695C330]];
  [v11 mergeRecentsAndMeCard];
  if (![array count])
  {
    [v11 setSelectedIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  PKContactFormatAssignFormatErrorsToPreferenceContact();
  objc_initWeak(&location, self);
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __64__PKPassbookSettingsController__showDefaultContactPhoneOptions___block_invoke;
  v26 = &unk_1E8016ED0;
  objc_copyWeak(&v29, &location);
  v15 = v11;
  v27 = v15;
  v16 = optionsCopy;
  v28 = v16;
  v17 = _Block_copy(&v23);
  v18 = PKLocalizedPaymentString(&cfstr_SettingsOption_1.isa);
  v19 = [PKPaymentPreferencesListViewController alloc];
  v31[0] = v15;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:{1, v23, v24, v25, v26}];
  v21 = [(PKPaymentPreferencesListViewController *)v19 initWithPreferences:v20 title:v18 style:[(PKPassbookSettingsController *)self _paymentPreferencesStyle] handler:v17 contactFormatValidator:self->_contactFormatValidator];

  v22 = objc_loadWeakRetained(&self->_delegate);
  [v22 settingsController:self requestsPushViewController:v21 animated:1];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __64__PKPassbookSettingsController__showDefaultContactPhoneOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    if ([*(a1 + 32) selectedIndex] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = objc_loadWeakRetained(v7 + 4);
      [v3 setDefaultContactPhone:0];
    }

    else
    {
      v4 = [*(a1 + 32) preferences];
      v3 = [v4 objectAtIndex:{objc_msgSend(*(a1 + 32), "selectedIndex")}];

      PKContactFormatAssignPhoneFormatErrorToPreferenceForContact();
      v5 = objc_loadWeakRetained(v7 + 4);
      [v5 setDefaultContactPhone:v3];
    }

    v6 = objc_loadWeakRetained(v7 + 93);
    [v6 settingsController:v7 requestsReloadSpecifier:*(a1 + 40)];

    WeakRetained = v7;
  }
}

- (id)_getDefaultShippingAddress
{
  WeakRetained = objc_loadWeakRetained(&self->_optionsDelegate);
  defaultShippingAddress = [WeakRetained defaultShippingAddress];
  pk_displayName = [defaultShippingAddress pk_displayName];

  if (![pk_displayName length])
  {
    v5 = PKLocalizedPaymentString(&cfstr_SettingsTransa_5.isa);

    pk_displayName = v5;
  }

  return pk_displayName;
}

- (id)_getDefaultContactEmail
{
  if (self->_isHideMyEmailAvailable == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_optionsDelegate);
    if ([WeakRetained useHideMyEmail])
    {
      context = self->_context;

      if (!context)
      {
        value = PKLocalizedHideMyEmailString(&cfstr_HmeSettingsRow_0.isa);
        if (value)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
    }
  }

  v6 = objc_loadWeakRetained(&self->_optionsDelegate);
  defaultContactEmail = [v6 defaultContactEmail];
  emailAddresses = [defaultContactEmail emailAddresses];
  firstObject = [emailAddresses firstObject];

  value = [firstObject value];

LABEL_8:
  if ([(__CFString *)value length])
  {
    v10 = value;
  }

  else
  {
    v10 = &stru_1F3BD7330;
  }

  v11 = v10;

  return v10;
}

- (id)_getDefaultContactPhone
{
  WeakRetained = objc_loadWeakRetained(&self->_optionsDelegate);
  defaultContactPhone = [WeakRetained defaultContactPhone];
  phoneNumbers = [defaultContactPhone phoneNumbers];
  firstObject = [phoneNumbers firstObject];

  value = [firstObject value];
  pkFormattedStringValue = [value pkFormattedStringValue];
  if ([(__CFString *)pkFormattedStringValue length])
  {
    v8 = pkFormattedStringValue;
  }

  else
  {
    v8 = &stru_1F3BD7330;
  }

  v9 = v8;

  return v8;
}

- (id)_openAccountsGroupSpecifiers
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(NSMutableArray *)self->_openAccounts count])
  {
    openAccountGroupSpecifier = self->_openAccountGroupSpecifier;
    if (!openAccountGroupSpecifier)
    {
      v5 = MEMORY[0x1E69C5748];
      v6 = PKLocalizedFeatureString();
      v7 = [v5 groupSpecifierWithName:v6];
      v8 = self->_openAccountGroupSpecifier;
      self->_openAccountGroupSpecifier = v7;

      v9 = PKLocalizedFeatureString();
      [(PSSpecifier *)self->_openAccountGroupSpecifier setObject:v9 forKeyedSubscript:*MEMORY[0x1E69C5900]];

      [(PSSpecifier *)self->_openAccountGroupSpecifier setObject:*MEMORY[0x1E69B9BC0] forKeyedSubscript:*MEMORY[0x1E69C5918]];
      openAccountGroupSpecifier = self->_openAccountGroupSpecifier;
    }

    [v3 addObject:openAccountGroupSpecifier];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = self->_openAccounts;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          if ([v16 type] == 4)
          {
            v17 = v16;

            v13 = v17;
          }
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);

      if (!v13)
      {
        goto LABEL_17;
      }

      v10 = [(PKPassbookSettingsController *)self _accountSpecifierForAccount:v13];
      [v3 addObject:v10];
    }

    else
    {
      v13 = 0;
    }

LABEL_17:
  }

  return v3;
}

- (id)_closedAccountsGroupSpecifiers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(NSMutableArray *)self->_closedSavingsAccounts count])
  {
    closedAccountGroupSpecifier = self->_closedAccountGroupSpecifier;
    if (!closedAccountGroupSpecifier)
    {
      v5 = MEMORY[0x1E69C5748];
      v6 = PKLocalizedFeatureString();
      v7 = [v5 groupSpecifierWithName:v6];

      v8 = PKLocalizedFeatureString();
      [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69C5900]];
      v9 = self->_closedAccountGroupSpecifier;
      self->_closedAccountGroupSpecifier = v7;

      closedAccountGroupSpecifier = self->_closedAccountGroupSpecifier;
    }

    [v3 addObject:closedAccountGroupSpecifier];
    v10 = MEMORY[0x1E69C5748];
    v11 = PKLocalizedFeatureString();
    v12 = [v10 preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v12 setObject:&unk_1F3CC7178 forKeyedSubscript:*MEMORY[0x1E69C5810]];
    [v12 setControllerLoadAction:sel_showDocumentsForClosedSavingsAccounts_];
    [v3 addObject:v12];
  }

  return v3;
}

- (id)_accountSpecifierForAccount:(id)account
{
  accountCopy = account;
  if ([accountCopy type] == 4)
  {
    v5 = PKPassKitUIBundle();
    v6 = [v5 URLForResource:@"SAVINGS_Icon" withExtension:@"pdf"];
    v7 = PKUIScreenScale();
    v8 = PKUIImageFromPDF(v6, 29.0, 29.0, v7);

    v9 = MEMORY[0x1E69C5748];
    v10 = PKLocalizedFeatureString();
    v11 = [v9 preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v11 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x1E69C5860]];
    [v11 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69C5920]];
    [v11 setObject:accountCopy forKeyedSubscript:@"pkAccount"];
    [v11 setObject:&unk_1F3CC7178 forKeyedSubscript:*MEMORY[0x1E69C5810]];
    accountIdentifier = [accountCopy accountIdentifier];
    [v11 setObject:accountIdentifier forKeyedSubscript:*MEMORY[0x1E69C5918]];

    [v11 setControllerLoadAction:sel__showAccountInfoForSavingsAccountSpecifier_];
    if (!self->_accountBalanceReporter && [PKAccountTableCell isShowingBalanceForAccount:accountCopy])
    {
      v13 = objc_alloc(MEMORY[0x1E69B8358]);
      mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
      v15 = [v13 initWithAccount:accountCopy paymentWebService:mEMORY[0x1E69B8EF8]];
      accountBalanceReporter = self->_accountBalanceReporter;
      self->_accountBalanceReporter = v15;

      [(PKPassbookSettingsController *)self _reportAccountDeviceEventIfNecessary];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)showDocumentsForClosedSavingsAccounts:(id)accounts
{
  closedSavingsAccounts = self->_closedSavingsAccounts;
  accountsCopy = accounts;
  v6 = PKLocalizedFeatureString();
  [(PKPassbookSettingsController *)self _showDocumentsForAccounts:closedSavingsAccounts title:v6 sender:accountsCopy];
}

- (void)_showDocumentsForAccounts:(id)accounts title:(id)title sender:(id)sender
{
  titleCopy = title;
  accountsCopy = accounts;
  v12 = objc_alloc_init(PKAccountDocumentsViewInterfaceConfiguration);
  [(PKAccountDocumentsViewInterfaceConfiguration *)v12 setAccounts:accountsCopy];

  v9 = [[PKAccountDocumentsViewController alloc] initWithConfiguration:v12];
  navigationItem = [(PKAccountDocumentsViewController *)v9 navigationItem];
  [navigationItem setTitle:titleCopy];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained settingsController:self requestsPushViewController:v9 animated:1];
  }
}

- (void)showSavingsAccount:(id)account destination:(unint64_t)destination transaction:(id)transaction fundingSource:(id)source animated:(BOOL)animated
{
  animatedCopy = animated;
  sourceCopy = source;
  transactionCopy = transaction;
  accountCopy = account;
  [(PKPassbookSettingsController *)self _updateAccountIfNecessary:accountCopy];
  v23 = objc_alloc_init(PKAccountViewInterfaceConfiguration);
  [(PKAccountViewInterfaceConfiguration *)v23 setAccount:accountCopy];
  [(PKAccountViewInterfaceConfiguration *)v23 setViewStyle:1];
  [(PKAccountViewInterfaceConfiguration *)v23 setTransaction:transactionCopy];

  [(PKAccountViewInterfaceConfiguration *)v23 setFundingSource:sourceCopy];
  savingsDetails = [accountCopy savingsDetails];

  fccStepUpDetails = [savingsDetails fccStepUpDetails];
  thresholdExceeded = [fccStepUpDetails thresholdExceeded];

  if (sourceCopy)
  {
    v18 = 0;
  }

  else
  {
    v18 = destination == 12;
  }

  destinationCopy = 4;
  if (!v18)
  {
    destinationCopy = destination;
  }

  if (thresholdExceeded)
  {
    v20 = 11;
  }

  else
  {
    v20 = destinationCopy;
  }

  [(PKAccountViewInterfaceConfiguration *)v23 setDestination:v20];
  v21 = [PKAccountViewInterfaceHelper initialAccountViewControllerWithConfiguration:v23];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained settingsController:self requestsPushViewController:v21 animated:animatedCopy];
  }
}

- (void)_showAccountInfoForSavingsAccountSpecifier:(id)specifier
{
  v4 = [specifier objectForKeyedSubscript:@"pkAccount"];
  if (v4)
  {
    v5 = v4;
    [(PKPassbookSettingsController *)self showSavingsAccount:v4 destination:1 transaction:0 fundingSource:0 animated:1];
    v4 = v5;
  }
}

- (void)didUpdateDefaultPaymentPassWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__PKPassbookSettingsController_didUpdateDefaultPaymentPassWithUniqueIdentifier___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = identifierCopy;
  v5 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __80__PKPassbookSettingsController_didUpdateDefaultPaymentPassWithUniqueIdentifier___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 120), *(a1 + 40));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 744));
  v2 = *(a1 + 32);
  v3 = [v2 _defaultPaymentSpecifier];
  [WeakRetained settingsController:v2 requestsReloadSpecifier:v3];
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PKPassbookSettingsController_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
  block[3] = &unk_1E8010A88;
  v11 = propertiesCopy;
  selfCopy = self;
  v13 = identifierCopy;
  v8 = identifierCopy;
  v9 = propertiesCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __99__PKPassbookSettingsController_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    return [*(result + 40) _updateBalancesWithServerBalances:0 transitPassProperties:v1 forPassWithUniqueIdentifier:*(result + 48)];
  }

  return result;
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update
{
  identifierCopy = identifier;
  updateCopy = update;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PKPassbookSettingsController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = updateCopy;
  v12 = identifierCopy;
  v8 = identifierCopy;
  v9 = updateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_peerPaymentWebServiceDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PKPassbookSettingsController__peerPaymentWebServiceDidChangeNotification___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_peerPaymentAccountDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PKPassbookSettingsController__peerPaymentAccountDidChangeNotification___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __73__PKPassbookSettingsController__peerPaymentAccountDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 432) targetDevice];
  v3 = [v2 account];
  v4 = *(a1 + 32);
  v5 = *(v4 + 464);
  *(v4 + 464) = v3;

  [*(a1 + 32) _refreshPasses];
  [*(a1 + 32) _refreshFPANCardDataCompletion:0];
  v6 = *(a1 + 32);

  return [v6 refreshPeerPaymentStatus];
}

- (void)peerPaymentAccountResolutionController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained settingsController:self requestsPresentViewController:viewControllerCopy animated:animatedCopy completion:0];
}

- (void)peerPaymentAccountResolutionController:(id)controller requestsDismissCurrentViewControllerAnimated:(BOOL)animated
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained requestDismissingPresentedViewControllerWithSettingsController:self animated:1 completion:0];
}

- (BOOL)_isPeerPaymentRegistered
{
  if (PKUseMockSURFServer() & 1) != 0 || (PKStoreDemoModeEnabled())
  {
    LOBYTE(v3) = 1;
  }

  else if (([(PKPeerPaymentWebService *)self->_peerPaymentWebService needsRegistration]& 1) != 0)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    targetDevice = [(PKPeerPaymentWebService *)self->_peerPaymentWebService targetDevice];
    v3 = [targetDevice userHasDisabledPeerPayment] ^ 1;
  }

  return v3;
}

- (void)_registerForPeerPaymentWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  self->_registeringForPeerPayment = 1;
  targetDevice = [(PKPeerPaymentWebService *)self->_peerPaymentWebService targetDevice];
  userHasDisabledPeerPayment = [targetDevice userHasDisabledPeerPayment];

  targetDevice2 = [(PKPeerPaymentWebService *)self->_peerPaymentWebService targetDevice];
  [targetDevice2 setUserHasDisabledPeerPayment:0];

  v8 = MEMORY[0x1E695E118];
  [specifierCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PKSwitchSpinnerTableCellShowSpinner"];
  [specifierCopy setObject:v8 forKeyedSubscript:@"PKSwitchSpinnerTableCellSwitchIsOn"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained settingsController:self requestsReloadSpecifier:specifierCopy];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PKPassbookSettingsController__registerForPeerPaymentWithSpecifier___block_invoke;
  aBlock[3] = &unk_1E8010A10;
  aBlock[4] = self;
  v10 = specifierCopy;
  v34 = v10;
  v11 = _Block_copy(aBlock);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __69__PKPassbookSettingsController__registerForPeerPaymentWithSpecifier___block_invoke_2;
  v30[3] = &unk_1E8012300;
  v30[4] = self;
  v12 = v10;
  v31 = v12;
  v13 = v11;
  v32 = v13;
  v14 = _Block_copy(v30);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __69__PKPassbookSettingsController__registerForPeerPaymentWithSpecifier___block_invoke_4;
  v27[3] = &unk_1E8016F20;
  v27[4] = self;
  v29 = userHasDisabledPeerPayment;
  v15 = v13;
  v28 = v15;
  v16 = _Block_copy(v27);
  peerPaymentDelegate = self->_peerPaymentDelegate;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __69__PKPassbookSettingsController__registerForPeerPaymentWithSpecifier___block_invoke_5;
  v22[3] = &unk_1E8016FC0;
  v22[4] = self;
  v23 = v12;
  v24 = v16;
  v25 = v15;
  v26 = v14;
  v18 = v14;
  v19 = v15;
  v20 = v12;
  v21 = v16;
  [(PKPassbookPeerPaymentSettingsDelegate *)peerPaymentDelegate peerPaymentRegistrationStatusHasChanged:1 completion:v22];
}

void __69__PKPassbookSettingsController__registerForPeerPaymentWithSpecifier___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 472) = 0;
  [*(a1 + 32) _refreshPasses];
  [*(a1 + 40) setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"PKSwitchSpinnerTableCellShowSpinner"];
  v2 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "_isPeerPaymentRegistered")}];
  [*(a1 + 40) setObject:v2 forKeyedSubscript:@"PKSwitchSpinnerTableCellSwitchIsOn"];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 744));
  [WeakRetained settingsControllerRequestsReloadSpecifiers:*(a1 + 32)];
}

void __69__PKPassbookSettingsController__registerForPeerPaymentWithSpecifier___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69__PKPassbookSettingsController__registerForPeerPaymentWithSpecifier___block_invoke_3;
  v3[3] = &unk_1E8010AD8;
  v4 = *(a1 + 48);
  [v1 _presentPeerPaymentSetupFlowForSpecifier:v2 completion:v3];
}

void __69__PKPassbookSettingsController__registerForPeerPaymentWithSpecifier___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    [*(a1 + 32) _requestDelegatePresentViewController:v4];
  }

  if (*(a1 + 48) == 1)
  {
    v3 = [*(*(a1 + 32) + 432) targetDevice];
    [v3 setUserHasDisabledPeerPayment:1];
  }

  (*(*(a1 + 40) + 16))();
}

void __69__PKPassbookSettingsController__registerForPeerPaymentWithSpecifier___block_invoke_5(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKPassbookSettingsController__registerForPeerPaymentWithSpecifier___block_invoke_6;
  block[3] = &unk_1E8016F98;
  v17 = a2;
  v13 = v5;
  v6 = *(a1 + 48);
  v11 = *(a1 + 32);
  v7 = *(&v11 + 1);
  v8 = *(a1 + 56);
  *&v9 = v6;
  *(&v9 + 1) = v8;
  v14 = v11;
  v15 = v9;
  v16 = *(a1 + 64);
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __69__PKPassbookSettingsController__registerForPeerPaymentWithSpecifier___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 32);
  if (v2 != 1 || v3 != 0)
  {
    v5 = [v3 userInfo];
    v6 = [v5 objectForKey:*MEMORY[0x1E696AA08]];

    v7 = [*(a1 + 32) domain];
    v8 = *MEMORY[0x1E69BC388];
    if ([v7 isEqualToString:*MEMORY[0x1E69BC388]])
    {
      v9 = [*(a1 + 32) code];

      if (!v9)
      {
        v10 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_0.isa);
        v11 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_1.isa);
        v12 = PKDisplayableErrorCustom();
        v13 = PKAlertForDisplayableErrorWithHandlers(v12, 0, 0, 0);
LABEL_8:
        (*(*(a1 + 56) + 16))();

LABEL_27:
        goto LABEL_28;
      }
    }

    else
    {
    }

    v18 = [v6 domain];
    if ([v18 isEqualToString:*MEMORY[0x1E69BC090]] && objc_msgSend(v6, "code") == 9)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 744));
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        v21 = objc_loadWeakRetained((*(a1 + 40) + 744));
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __69__PKPassbookSettingsController__registerForPeerPaymentWithSpecifier___block_invoke_7;
        v36[3] = &unk_1E8016F70;
        v22 = *(a1 + 40);
        v23 = *(a1 + 32);
        v24 = *(a1 + 40);
        v25 = *(a1 + 48);
        v37 = v23;
        v38 = v24;
        v39 = v25;
        v40 = *(a1 + 64);
        v41 = *(a1 + 56);
        [v21 settingsController:v22 requestsPresentSecurityRepairFlowWithSecurityCapabilities:72 completion:v36];

        v12 = v37;
LABEL_28:

        return;
      }
    }

    else
    {
    }

    if (*(*(a1 + 40) + 40) == 1)
    {
      v26 = [*(a1 + 32) domain];
      if ([v26 isEqualToString:v8] && objc_msgSend(*(a1 + 32), "code") == 40308)
      {
        v27 = PKIsAltAccountPairedOrPairing();

        if (v27)
        {
          v28 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1BD026000, v28, OS_LOG_TYPE_DEFAULT, "A parent tried to turn on apple cash for a childs tinker device.", buf, 2u);
          }

          v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas.isa);
          v10 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_0.isa);
          v11 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_1.isa);
          v13 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v12 message:v10 preferredStyle:1];
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __69__PKPassbookSettingsController__registerForPeerPaymentWithSpecifier___block_invoke_708;
          v34[3] = &unk_1E80112E8;
          v34[4] = *(a1 + 40);
          v29 = [MEMORY[0x1E69DC648] actionWithTitle:v11 style:0 handler:v34];
          [v13 addAction:v29];

          v30 = MEMORY[0x1E69DC648];
          v31 = PKLocalizedString(&cfstr_Cancel.isa);
          v32 = [v30 actionWithTitle:v31 style:1 handler:0];
          [v13 addAction:v32];

          goto LABEL_8;
        }
      }

      else
      {
      }
    }

    v12 = [MEMORY[0x1E69B8F28] displayableErrorForError:*(a1 + 32)];
    v10 = PKAlertForDisplayableErrorWithHandlers(v12, 0, 0, 0);
    (*(*(a1 + 56) + 16))();
    goto LABEL_27;
  }

  v14 = [*(*(a1 + 40) + 432) targetDevice];
  v15 = [v14 account];

  v16 = *(a1 + 40);
  v17 = *(v16 + 464);
  *(v16 + 464) = v15;
  v33 = v15;

  [*(*(a1 + 40) + 456) setAccount:v33];
  (*(*(a1 + 72) + 16))();
}

void __69__PKPassbookSettingsController__registerForPeerPaymentWithSpecifier___block_invoke_7(id *a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKPassbookSettingsController__registerForPeerPaymentWithSpecifier___block_invoke_8;
  block[3] = &unk_1E8016F48;
  v13 = a2;
  v3 = a1 + 5;
  *&v4 = a1[4];
  *(&v4 + 1) = *v3;
  v8 = v4;
  v5 = a1[6];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v12 = a1[8];
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __69__PKPassbookSettingsController__registerForPeerPaymentWithSpecifier___block_invoke_8(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PKSecurityCapabilitiesErrorToString(*(a1 + 72));
    v4 = *(a1 + 32);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Finished checking peer payment security capabilities with upgrade error %@, error %@", &v8, 0x16u);
  }

  v5 = *(a1 + 72);
  if (v5 == 3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else if (v5)
  {
    v6 = [MEMORY[0x1E69B8F28] displayableErrorForError:*(a1 + 32)];
    v7 = PKAlertForDisplayableErrorWithHandlers(v6, 0, 0, 0);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    [*(a1 + 40) _registerForPeerPaymentWithSpecifier:*(a1 + 48)];
  }
}

void __69__PKPassbookSettingsController__registerForPeerPaymentWithSpecifier___block_invoke_708(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(*(a1 + 32) + 432) _appleAccountInformation];
  v2 = [v1 aaAlternateDSID];

  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Presenting apple cash family sharing in settings for altDSID %@", &v6, 0xCu);
  }

  v4 = PKPeerPaymentGetAppleCashFamilySettingsSensitiveURLForAltDSID();
  v5 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v5 openSensitiveURL:v4 withOptions:0];
}

- (void)_presentFeatureNotEnabledForDemoForSpecifier:(id)specifier
{
  v5 = PKUIStoreDemoGatewayViewController();
  delegate = [(PKPassbookSettingsController *)self delegate];
  [delegate settingsController:self requestsPresentViewController:v5 animated:1 completion:0];
}

- (void)_presentPeerPaymentReOpenCardFlowForSpecifier:(id)specifier
{
  if ([(PKPeerPaymentAccountResolutionController *)self->_peerPaymentAccountResolutionController currentPeerPaymentAccountResolution]== 4)
  {
    peerPaymentAccountResolutionController = self->_peerPaymentAccountResolutionController;

    [(PKPeerPaymentAccountResolutionController *)peerPaymentAccountResolutionController presentResolutionForCurrentAccountStateWithCompletion:0];
  }
}

- (void)_presentPeerPaymentSetupFlowForSpecifier:(id)specifier completion:(id)completion
{
  completionCopy = completion;
  if ([(PKPeerPaymentAccountResolutionController *)self->_peerPaymentAccountResolutionController currentPeerPaymentAccountResolution]== 1)
  {
    [(PKPeerPaymentAccountResolutionController *)self->_peerPaymentAccountResolutionController presentResolutionForCurrentAccountStateWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)_presentPeerPaymentSetupFlowWithAmount:(id)amount flowState:(unint64_t)state senderAddress:(id)address completion:(id)completion
{
  amountCopy = amount;
  addressCopy = address;
  completionCopy = completion;
  if ([(PKPeerPaymentAccountResolutionController *)self->_peerPaymentAccountResolutionController currentPeerPaymentAccountResolution]== 1)
  {
    v12 = objc_alloc_init(MEMORY[0x1E69B8F08]);
    if (amountCopy)
    {
      [v12 setCurrencyAmount:amountCopy];
    }

    [v12 setRegistrationFlowState:state];
    if (addressCopy)
    {
      [v12 setSenderAddress:addressCopy];
    }

    [(PKPeerPaymentAccountResolutionController *)self->_peerPaymentAccountResolutionController presentFlowForAccountResolution:1 configuration:v12 completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)_unregisterForPeerPaymentWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  targetDevice = [(PKPeerPaymentWebService *)self->_peerPaymentWebService targetDevice];
  account = [targetDevice account];

  v63 = account;
  associatedPassUniqueID = [account associatedPassUniqueID];
  WeakRetained = objc_loadWeakRetained(&self->_passLibraryDataProvider);
  v9 = [WeakRetained passWithUniqueID:associatedPassUniqueID];
  secureElementPass = [v9 secureElementPass];

  hasMerchantTokens = [secureElementPass hasMerchantTokens];
  peerPaymentService = [(PKPeerPaymentWebService *)self->_peerPaymentWebService peerPaymentService];
  hasRecurringPayments = [peerPaymentService hasRecurringPayments];

  v64 = hasMerchantTokens;
  if (self->_context == 1 && PKIsAltAccountPairedOrPairing())
  {
    v14 = hasMerchantTokens;
    v15 = objc_alloc(MEMORY[0x1E69B8898]);
    mEMORY[0x1E698F580] = [MEMORY[0x1E698F580] sharedInstance];
    cachedTinkerFamilyMemeber = [mEMORY[0x1E698F580] cachedTinkerFamilyMemeber];
    v18 = [v15 initWithFAFamilyMember:cachedTinkerFamilyMemeber];

    firstName = [v18 firstName];
    if (firstName)
    {
      v20 = firstName;
      appleID = [v18 appleID];

      if (appleID)
      {
        firstName2 = [v18 firstName];
        v65 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBri.isa, &stru_1F3BD5BF0.isa, firstName2);

        hasMerchantTokens = v14;
        firstName3 = [v18 firstName];
        if ((v14 & hasRecurringPayments) == 1)
        {
          firstName4 = [v18 firstName];
          appleID2 = [v18 appleID];
          v61 = PKLocalizedMerchantTokensString(&cfstr_DeleteMerchant_4.isa, &stru_1F3BDAC30.isa, firstName3, firstName4, appleID2);

          hasMerchantTokens = v14;
          firstName5 = PKLocalizedPeerPaymentRecurringString(&cfstr_RemovePeerPaym.isa);
          firstName3 = v61;
          v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n%@", v61, firstName5];
LABEL_7:
          v28 = v27;
          goto LABEL_28;
        }

        if (v14)
        {
          firstName5 = [v18 firstName];
          appleID3 = [v18 appleID];
          v60 = PKLocalizedMerchantTokensString(&cfstr_DeleteMerchant_4.isa, &stru_1F3BDAC30.isa, firstName3, firstName5, appleID3);
        }

        else
        {
          if (!hasRecurringPayments)
          {
            firstName5 = [v18 appleID];
            v27 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBri_0.isa, &stru_1F3BD6370.isa, firstName3, firstName5);
            goto LABEL_7;
          }

          firstName5 = [v18 firstName];
          appleID3 = [v18 appleID];
          v60 = PKLocalizedPeerPaymentRecurringString(&cfstr_RemovePeerPaym_0.isa, &stru_1F3BDAC30.isa, firstName3, firstName5, appleID3);
        }

        v28 = v60;

        hasMerchantTokens = v64;
LABEL_28:

        v35 = v65;
        v29 = v28;
        if (v65)
        {
          goto LABEL_20;
        }

        goto LABEL_9;
      }
    }

    v29 = 0;
    hasMerchantTokens = v14;
  }

  else
  {
    v29 = 0;
  }

LABEL_9:
  v30 = secureElementPass;
  v31 = associatedPassUniqueID;
  v32 = specifierCopy;
  v33 = v29;
  v34 = PKDeviceSpecificLocalizedStringKeyForKey(@"PEER_PAYMENT_TURN_OFF_ALERT_TITLE", self->_context == 1);
  v35 = PKLocalizedPeerPaymentString(v34);

  v36 = PKPrimaryAppleAccountFormattedUsername();
  v37 = v36;
  if ((hasMerchantTokens & hasRecurringPayments) == 1)
  {
    v38 = PKLocalizedMerchantTokensString(&cfstr_DeleteMerchant_5.isa, &stru_1F3BD5BF0.isa, v36);

    v39 = PKLocalizedPeerPaymentRecurringString(&cfstr_RemovePeerPaym.isa);
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n%@", v38, v39];

    v33 = v39;
    v37 = v38;
  }

  else
  {
    if (hasMerchantTokens)
    {
      v41 = PKLocalizedMerchantTokensString(&cfstr_DeleteMerchant_5.isa, &stru_1F3BD5BF0.isa, v36);
    }

    else
    {
      if (hasRecurringPayments)
      {
        PKLocalizedPeerPaymentRecurringString(&cfstr_RemovePeerPaym_1.isa, &stru_1F3BD5BF0.isa, v36);
      }

      else
      {
        PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTur_0.isa, &stru_1F3BD5BF0.isa, v36);
      }
      v41 = ;
    }

    v40 = v41;
  }

  v29 = v40;
  specifierCopy = v32;
  associatedPassUniqueID = v31;
  secureElementPass = v30;
LABEL_20:
  v66 = v35;
  v62 = v29;
  v42 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v35 message:? preferredStyle:?];
  v43 = MEMORY[0x1E69DC648];
  v44 = PKLocalizedString(&cfstr_Cancel.isa);
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __71__PKPassbookSettingsController__unregisterForPeerPaymentWithSpecifier___block_invoke;
  v74[3] = &unk_1E8011310;
  v74[4] = self;
  v45 = specifierCopy;
  v75 = v45;
  v46 = [v43 actionWithTitle:v44 style:1 handler:v74];

  v47 = MEMORY[0x1E69DC648];
  v48 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTur_1.isa);
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __71__PKPassbookSettingsController__unregisterForPeerPaymentWithSpecifier___block_invoke_2;
  v70[3] = &unk_1E8012FF8;
  v70[4] = self;
  v49 = v45;
  v71 = v49;
  v50 = secureElementPass;
  v72 = v50;
  v51 = associatedPassUniqueID;
  v73 = v51;
  v52 = [v47 actionWithTitle:v48 style:0 handler:v70];

  v53 = MEMORY[0x1E69DC648];
  v54 = PKLocalizedMerchantTokensString(&cfstr_DeleteMerchant_2.isa);
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __71__PKPassbookSettingsController__unregisterForPeerPaymentWithSpecifier___block_invoke_751;
  v67[3] = &unk_1E8010D38;
  v67[4] = self;
  v68 = v49;
  v69 = v50;
  v55 = v50;
  v56 = v49;
  v57 = [v53 actionWithTitle:v54 style:0 handler:v67];

  [v42 addAction:v46];
  [v42 addAction:v52];
  if (v64)
  {
    [v42 addAction:v57];
  }

  [v42 setPreferredAction:v52];
  v58 = objc_loadWeakRetained(&self->_delegate);
  [v58 settingsController:self requestsPresentViewController:v42 animated:1 completion:0];
}

void __71__PKPassbookSettingsController__unregisterForPeerPaymentWithSpecifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 744));
  [WeakRetained settingsController:*(a1 + 32) requestsReloadSpecifier:*(a1 + 40)];
}

void __71__PKPassbookSettingsController__unregisterForPeerPaymentWithSpecifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 432) targetDevice];
  [v2 setUserHasDisabledPeerPayment:1];

  [*(a1 + 40) setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PKSwitchSpinnerTableCellShowSpinner"];
  [*(a1 + 40) setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"PKSwitchSpinnerTableCellSwitchIsOn"];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 744));
  [WeakRetained settingsController:*(a1 + 32) requestsReloadSpecifier:*(a1 + 40)];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__PKPassbookSettingsController__unregisterForPeerPaymentWithSpecifier___block_invoke_3;
  v11[3] = &unk_1E8017010;
  v4 = *(a1 + 32);
  v5 = *(v4 + 424);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 40);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v4;
  *(&v10 + 1) = v6;
  v12 = v10;
  v13 = v9;
  [v5 peerPaymentRegistrationStatusHasChanged:0 completion:v11];
}

void __71__PKPassbookSettingsController__unregisterForPeerPaymentWithSpecifier___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PKPassbookSettingsController__unregisterForPeerPaymentWithSpecifier___block_invoke_4;
  block[3] = &unk_1E8016FE8;
  v16 = a2;
  v13 = v5;
  v11 = *(a1 + 32);
  v6 = *(&v11 + 1);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v14 = v11;
  v15 = v9;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __71__PKPassbookSettingsController__unregisterForPeerPaymentWithSpecifier___block_invoke_4(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72) == 1 && !*(a1 + 32))
  {
    if (*(a1 + 48))
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
      [WeakRetained removePass:*(a1 + 48)];
    }

    else
    {
      WeakRetained = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 56);
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&dword_1BD026000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Unable to remove peer payment pass. Pass library data provider failed to vend pass with uniqueID: %@", &v9, 0xCu);
      }
    }

    [*(a1 + 40) _refreshPasses];
  }

  else
  {
    v2 = [*(*(a1 + 40) + 432) targetDevice];
    [v2 setUserHasDisabledPeerPayment:0];

    v3 = [MEMORY[0x1E69B8F28] displayableErrorForError:*(a1 + 32)];
    v4 = PKAlertForDisplayableErrorWithHandlers(v3, 0, 0, 0);

    [*(a1 + 40) _requestDelegatePresentViewController:v4];
  }

  [*(a1 + 64) setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"PKSwitchSpinnerTableCellShowSpinner"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 40), "_isPeerPaymentRegistered")}];
  [*(a1 + 64) setObject:v5 forKeyedSubscript:@"PKSwitchSpinnerTableCellSwitchIsOn"];

  v6 = objc_loadWeakRetained((*(a1 + 40) + 744));
  [v6 settingsControllerRequestsReloadSpecifiers:*(a1 + 40)];
}

void __71__PKPassbookSettingsController__unregisterForPeerPaymentWithSpecifier___block_invoke_751(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1[4] + 744));
  [WeakRetained settingsController:a1[4] requestsReloadSpecifier:a1[5]];

  v3 = MEMORY[0x1E69B8540];
  v12[0] = *MEMORY[0x1E69BB6F8];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v5 = *MEMORY[0x1E69BA6F0];
  v6 = *MEMORY[0x1E69BA440];
  v10[0] = *MEMORY[0x1E69BA680];
  v10[1] = v6;
  v11[0] = v5;
  v11[1] = @"learnMore";
  v10[2] = *MEMORY[0x1E69BABE8];
  v11[2] = *MEMORY[0x1E69BAC18];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  [v3 subjects:v4 sendEvent:v7];

  v8 = [[PKMerchantTokensViewController alloc] initWithPass:a1[6] merchantTokensResponse:0];
  v9 = objc_loadWeakRetained((a1[4] + 744));
  [v9 settingsController:a1[4] requestsPushViewController:v8 animated:1];
}

- (id)_peerPaymentGroupSpecifiers
{
  array = [MEMORY[0x1E695DF70] array];
  emptyGroupSpecifier = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
  v5 = PKDeviceSpecificLocalizedStringKeyForKey(@"PEER_PAYMENT_REGISTRATION_FOOTER_TEXT", self->_context == 1);
  v6 = PKLocalizedPeerPaymentString(v5);

  [emptyGroupSpecifier setProperty:v6 forKey:*MEMORY[0x1E69C5900]];
  [array addObject:emptyGroupSpecifier];
  _peerPaymentSwitchSpecifier = [(PKPassbookSettingsController *)self _peerPaymentSwitchSpecifier];
  [array addObject:_peerPaymentSwitchSpecifier];

  return array;
}

- (id)_peerPaymentTinkerGroupSpecifiers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBri_1.isa);
  v5 = [MEMORY[0x1E69C5748] groupSpecifierWithName:v4];
  [v5 setProperty:v4 forKey:*MEMORY[0x1E69C5918]];
  v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBri_2.isa);
  [v5 setProperty:v6 forKey:*MEMORY[0x1E69C5900]];

  v7 = MEMORY[0x1E69C5748];
  v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBri_3.isa);
  v9 = [v7 preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:13 edit:0];
  peerPaymentTinkerSetupButton = self->_peerPaymentTinkerSetupButton;
  self->_peerPaymentTinkerSetupButton = v9;

  [(PSSpecifier *)self->_peerPaymentTinkerSetupButton setButtonAction:sel_setupPeerPaymentTinkerButtonTapped];
  [(PSSpecifier *)self->_peerPaymentTinkerSetupButton setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x1E69C5860]];
  [(PSSpecifier *)self->_peerPaymentTinkerSetupButton setObject:&unk_1F3CC7160 forKeyedSubscript:*MEMORY[0x1E69C5818]];
  [v3 addObject:v5];
  [v3 addObject:self->_peerPaymentTinkerSetupButton];

  return v3;
}

- (void)setupPeerPaymentTinkerButtonTapped
{
  [(PSSpecifier *)self->_peerPaymentTinkerSetupButton setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69C58C8]];
  [(PSSpecifier *)self->_peerPaymentTinkerSetupButton setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PKSettingsSpecifierLoadingKey"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained settingsController:self requestsReloadSpecifier:self->_peerPaymentTinkerSetupButton];

  paymentService = [MEMORY[0x1E69B8DB8] paymentService];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__PKPassbookSettingsController_setupPeerPaymentTinkerButtonTapped__block_invoke;
  v5[3] = &unk_1E8014878;
  v5[4] = self;
  [paymentService familyMembersWithCompletion:v5];
}

void __66__PKPassbookSettingsController_setupPeerPaymentTinkerButtonTapped__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__PKPassbookSettingsController_setupPeerPaymentTinkerButtonTapped__block_invoke_2;
  v6[3] = &unk_1E8010A10;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __66__PKPassbookSettingsController_setupPeerPaymentTinkerButtonTapped__block_invoke_2(uint64_t a1)
{
  v13 = [objc_alloc(MEMORY[0x1E69B88A0]) initWithFamilyMembers:*(a1 + 32)];
  if (*(*(a1 + 40) + 40) == 1)
  {
    v2 = 4;
  }

  else
  {
    v2 = 3;
  }

  v3 = [PKPeerPaymentAssociatedAccountsController alloc];
  v4 = *(a1 + 40);
  v5 = *(v4 + 88);
  WeakRetained = objc_loadWeakRetained((v4 + 16));
  v7 = [(PKPeerPaymentAssociatedAccountsController *)v3 initWithFamilyCollection:v13 avatarManager:v5 passLibraryDataProvider:WeakRetained context:v2];
  v8 = *(a1 + 40);
  v9 = *(v8 + 96);
  *(v8 + 96) = v7;

  v10 = objc_loadWeakRetained((*(a1 + 40) + 744));
  LOBYTE(v3) = objc_opt_respondsToSelector();

  if (v3)
  {
    v11 = objc_loadWeakRetained((*(a1 + 40) + 744));
    [v11 settingsController:*(a1 + 40) requestShowPeerPaymentAssociatedAccountsFlowWithController:*(*(a1 + 40) + 96) withPresentationContext:0];
  }

  [*(*(a1 + 40) + 448) setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69C58C8]];
  [*(*(a1 + 40) + 448) setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"PKSettingsSpecifierLoadingKey"];
  v12 = objc_loadWeakRetained((*(a1 + 40) + 744));
  [v12 settingsController:*(a1 + 40) requestsReloadSpecifier:*(*(a1 + 40) + 448)];
}

- (void)_fetchAccounts
{
  objc_initWeak(&location, self);
  accountService = self->_accountService;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__PKPassbookSettingsController__fetchAccounts__block_invoke;
  v4[3] = &unk_1E8013DF8;
  objc_copyWeak(&v5, &location);
  v4[4] = self;
  [(PKAccountService *)accountService accountsWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __46__PKPassbookSettingsController__fetchAccounts__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PKPassbookSettingsController__fetchAccounts__block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __46__PKPassbookSettingsController__fetchAccounts__block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = WeakRetained[75];
    WeakRetained[75] = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = WeakRetained[76];
    WeakRetained[76] = v5;

    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v31 = 0u;
    v23 = a1;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v8)
    {
      v9 = 0;
      v10 = *v32;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          v13 = [v12 feature];
          if (v13 == 2)
          {
            v15 = [v12 creditDetails];
            v16 = [v15 rewardsDestination] == 3;

            if (v16)
            {
              v29 = 0u;
              v30 = 0u;
              v27 = 0u;
              v28 = 0u;
              v17 = *(v23 + 32);
              v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
              if (v18)
              {
                v19 = *v28;
                while (2)
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v28 != v19)
                    {
                      objc_enumerationMutation(v17);
                    }

                    if ([*(*(&v27 + 1) + 8 * j) feature] == 5)
                    {

                      goto LABEL_28;
                    }
                  }

                  v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }

              if ((PKCheckedForSavingsPresence() & 1) == 0)
              {
                v21 = PKLogFacilityTypeGetObject();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1BD026000, v21, OS_LOG_TYPE_DEFAULT, "Card account rewards destination is set to Savings, but not Savings account present, refreshing accounts", buf, 2u);
                }

                v22 = *(*(v23 + 40) + 488);
                v24[0] = MEMORY[0x1E69E9820];
                v24[1] = 3221225472;
                v24[2] = __46__PKPassbookSettingsController__fetchAccounts__block_invoke_775;
                v24[3] = &unk_1E8017038;
                objc_copyWeak(&v25, (v23 + 48));
                [v22 updateAccountsWithCompletion:v24];
                objc_destroyWeak(&v25);
              }
            }
          }

          else if (v13 == 5)
          {
            v14 = [v12 state];
            if ((v14 - 1) >= 3)
            {
              if (v14 == 4)
              {
                [WeakRetained[75] addObject:v12];
              }
            }

            else
            {
              [WeakRetained[76] addObject:v12];
            }

            v9 = 1;
          }

LABEL_28:
          ;
        }

        v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v8);

      if (v9)
      {
        [WeakRetained _refreshAccountSpecifiers];
      }
    }

    else
    {
    }
  }
}

void __46__PKPassbookSettingsController__fetchAccounts__block_invoke_775(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Refreshed accounts after missing destination account, with error %@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PKPassbookSettingsController__fetchAccounts__block_invoke_776;
  v7[3] = &unk_1E8010948;
  v8 = v4;
  v6 = v4;
  objc_copyWeak(&v9, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], v7);
  objc_destroyWeak(&v9);
}

void __46__PKPassbookSettingsController__fetchAccounts__block_invoke_776(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    PKSetCheckedForSavingsPresence();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _fetchAccounts];
    WeakRetained = v3;
  }
}

- (void)_updateAccountIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  objc_initWeak(&location, self);
  if (necessaryCopy)
  {
    date = [MEMORY[0x1E695DF00] date];
    lastUpdated = [necessaryCopy lastUpdated];
    [date timeIntervalSinceDate:lastUpdated];
    v8 = v7;

    if (v8 > 300.0)
    {
      accountService = self->_accountService;
      accountIdentifier = [necessaryCopy accountIdentifier];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __58__PKPassbookSettingsController__updateAccountIfNecessary___block_invoke;
      v11[3] = &unk_1E8017060;
      objc_copyWeak(&v13, &location);
      v12 = necessaryCopy;
      [(PKAccountService *)accountService updateAccountWithIdentifier:accountIdentifier extended:0 completion:v11];

      objc_destroyWeak(&v13);
    }
  }

  objc_destroyWeak(&location);
}

void __58__PKPassbookSettingsController__updateAccountIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v4 && WeakRetained && (PKEqualObjects() & 1) == 0)
  {
    [WeakRetained _processAccountChanged:v4];
  }
}

- (void)_processAccountChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PKPassbookSettingsController__processAccountChanged___block_invoke;
  v6[3] = &unk_1E8010A10;
  v7 = changedCopy;
  selfCopy = self;
  v5 = changedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __55__PKPassbookSettingsController__processAccountChanged___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) feature];
  if (result == 5)
  {
    v3 = *(*(a1 + 40) + 600);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __55__PKPassbookSettingsController__processAccountChanged___block_invoke_2;
    v11[3] = &unk_1E8017088;
    v12 = *(a1 + 32);
    [v3 pk_removeObjectsPassingTest:v11];
    v4 = *(*(a1 + 40) + 608);
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __55__PKPassbookSettingsController__processAccountChanged___block_invoke_3;
    v9 = &unk_1E8017088;
    v10 = *(a1 + 32);
    [v4 pk_removeObjectsPassingTest:&v6];
    v5 = [*(a1 + 32) state];
    if ((v5 - 1) <= 3)
    {
      [*(*(a1 + 40) + qword_1BE1150D8[v5 - 1]) addObject:*(a1 + 32)];
    }

    return [*(a1 + 40) _refreshAccountSpecifiers];
  }

  return result;
}

uint64_t __55__PKPassbookSettingsController__processAccountChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 accountIdentifier];
  v4 = [*(a1 + 32) accountIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t __55__PKPassbookSettingsController__processAccountChanged___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 accountIdentifier];
  v4 = [*(a1 + 32) accountIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)accountRemoved:(id)removed
{
  removedCopy = removed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__PKPassbookSettingsController_accountRemoved___block_invoke;
  v6[3] = &unk_1E8010A10;
  v7 = removedCopy;
  selfCopy = self;
  v5 = removedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __47__PKPassbookSettingsController_accountRemoved___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) feature];
  if (result == 5)
  {
    v3 = *(*(a1 + 40) + 600);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__PKPassbookSettingsController_accountRemoved___block_invoke_2;
    v10[3] = &unk_1E8017088;
    v11 = *(a1 + 32);
    [v3 pk_removeObjectsPassingTest:v10];
    v4 = *(*(a1 + 40) + 608);
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __47__PKPassbookSettingsController_accountRemoved___block_invoke_3;
    v8 = &unk_1E8017088;
    v9 = *(a1 + 32);
    [v4 pk_removeObjectsPassingTest:&v5];

    return [*(a1 + 40) _refreshAccountSpecifiers];
  }

  return result;
}

uint64_t __47__PKPassbookSettingsController_accountRemoved___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 accountIdentifier];
  v4 = [*(a1 + 32) accountIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t __47__PKPassbookSettingsController_accountRemoved___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 accountIdentifier];
  v4 = [*(a1 + 32) accountIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)_fetchPrecursorPassRequestUpgradeDescriptionsAndRefreshIfNecessary
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = self->_otherPasses;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        devicePrimaryPaymentApplication = [v7 devicePrimaryPaymentApplication];

        v9 = devicePrimaryPaymentApplication == 0;
        cachedPrecursorPassUpgradeControllers = self->_cachedPrecursorPassUpgradeControllers;
        uniqueID = [v7 uniqueID];
        if (v9)
        {
          uniqueID3 = [(NSMutableDictionary *)cachedPrecursorPassUpgradeControllers objectForKey:uniqueID];

          if (!uniqueID3)
          {
            uniqueID3 = [objc_alloc(MEMORY[0x1E69B9088]) initWithPass:v7 webService:self->_webService];
            [uniqueID3 setDelegate:self];
          }

          devicePrimaryPrecursorRequest = [uniqueID3 devicePrimaryPrecursorRequest];

          if (devicePrimaryPrecursorRequest)
          {
            v15 = self->_cachedPrecursorPassUpgradeControllers;
            uniqueID2 = [v7 uniqueID];
            [(NSMutableDictionary *)v15 setObject:uniqueID3 forKey:uniqueID2];

            devicePrimaryPrecursorRequest2 = [uniqueID3 devicePrimaryPrecursorRequest];
            objc_initWeak(&location, self);
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __98__PKPassbookSettingsController__fetchPrecursorPassRequestUpgradeDescriptionsAndRefreshIfNecessary__block_invoke;
            v18[3] = &unk_1E80170B0;
            objc_copyWeak(&v19, &location);
            v18[4] = v7;
            [uniqueID3 requestDescriptionFor:devicePrimaryPrecursorRequest2 completion:v18];
            objc_destroyWeak(&v19);
            objc_destroyWeak(&location);
          }
        }

        else
        {
          [(NSMutableDictionary *)cachedPrecursorPassUpgradeControllers removeObjectForKey:uniqueID];

          cachedPrecursorPassUpgradeDescriptions = self->_cachedPrecursorPassUpgradeDescriptions;
          uniqueID3 = [v7 uniqueID];
          [(NSMutableDictionary *)cachedPrecursorPassUpgradeDescriptions removeObjectForKey:uniqueID3];
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }
}

void __98__PKPassbookSettingsController__fetchPrecursorPassRequestUpgradeDescriptionsAndRefreshIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__PKPassbookSettingsController__fetchPrecursorPassRequestUpgradeDescriptionsAndRefreshIfNecessary__block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __98__PKPassbookSettingsController__fetchPrecursorPassRequestUpgradeDescriptionsAndRefreshIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = WeakRetained[42];
    v4 = [*(a1 + 40) uniqueID];
    v5 = [v3 objectForKey:v4];
    v6 = PKEqualObjects();

    if ((v6 & 1) == 0)
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) uniqueID];
      [v3 setObject:v7 forKey:v8];

      [v9 _reloadPassData];
    }

    WeakRetained = v9;
  }
}

- (void)_checkPairedDeviceSupportOfHiddenPassesAndRefreshUIIfNecessary
{
  v44 = *MEMORY[0x1E69E9840];
  if (self->_context == 1)
  {
    selfCopy = self;
    v3 = PKLogFacilityTypeGetObject();
    v4 = &unk_1BE0B7000;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      hiddenCompanionPasses = selfCopy->_hiddenCompanionPasses;
      *buf = 138412290;
      v39 = hiddenCompanionPasses;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "(account-pass-feature-check) (Bridge) checking companion passes hidden from add %@", buf, 0xCu);
    }

    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v34 = 0u;
    v6 = selfCopy->_hiddenCompanionPasses;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v7)
    {
      v8 = v7;
      v26 = selfCopy;
      associatedAccountServiceAccountIdentifier = 0;
      v10 = *v35;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          if ([v12 passType] == 1)
          {
            v13 = v12;
            v14 = v13;
            if (!associatedAccountServiceAccountIdentifier)
            {
              associatedAccountServiceAccountIdentifier = [v13 associatedAccountServiceAccountIdentifier];
              if (associatedAccountServiceAccountIdentifier)
              {
                if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v39 = associatedAccountServiceAccountIdentifier;
                  _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "(account-pass-feature-check) (Bridge) found hidden account pass for account %@", buf, 0xCu);
                }
              }
            }

            [v14 isIdentityPass];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v8);

      if (associatedAccountServiceAccountIdentifier)
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          paymentPasses = v26->_paymentPasses;
          *buf = 138412290;
          v39 = paymentPasses;
          _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "(account-pass-feature-check) (Bridge) checking payment passes %@", buf, 0xCu);
        }

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v6 = v26->_paymentPasses;
        v16 = [(NSArray *)v6 countByEnumeratingWithState:&v30 objects:v42 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v31;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v31 != v18)
              {
                objc_enumerationMutation(v6);
              }

              v20 = *(*(&v30 + 1) + 8 * j);
              if ([v20 passType] == 1)
              {
                v21 = v20;
                associatedAccountServiceAccountIdentifier2 = [v21 associatedAccountServiceAccountIdentifier];
                v23 = [associatedAccountServiceAccountIdentifier2 isEqualToString:associatedAccountServiceAccountIdentifier];

                if (v23)
                {
                  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v39 = associatedAccountServiceAccountIdentifier;
                    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "(account-pass-feature-check) (Bridge) found account pass with same account ID %@, no need to show the hidden one", buf, 0xCu);
                  }

                  selfCopy = v26;
                  v4 = &unk_1BE0B7000;
                  goto LABEL_37;
                }
              }
            }

            v17 = [(NSArray *)v6 countByEnumeratingWithState:&v30 objects:v42 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        selfCopy = v26;
        v24 = [(NSMutableDictionary *)v26->_pairedDeviceSupportsFeatureByAccountID objectForKeyedSubscript:associatedAccountServiceAccountIdentifier];
      }

      else
      {
        v24 = 0;
        selfCopy = v26;
      }

      v4 = &unk_1BE0B7000;
    }

    else
    {
LABEL_37:

      v24 = 0;
      associatedAccountServiceAccountIdentifier = 0;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v39 = associatedAccountServiceAccountIdentifier;
      v40 = 2112;
      v41 = v24;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "(account-pass-feature-check) accountIdentifier %@ supports feature %@", buf, 0x16u);
    }

    if ([(NSArray *)associatedAccountServiceAccountIdentifier length]&& !v24)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v4[350];
        v39 = associatedAccountServiceAccountIdentifier;
        _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "(account-pass-feature-check) checking paired device feature support for account %@", buf, 0xCu);
      }

      mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __94__PKPassbookSettingsController__checkPairedDeviceSupportOfHiddenPassesAndRefreshUIIfNecessary__block_invoke;
      v27[3] = &unk_1E8017100;
      v27[4] = selfCopy;
      v28 = associatedAccountServiceAccountIdentifier;
      v29 = 0;
      [mEMORY[0x1E69B8400] accountWithIdentifier:v28 completion:v27];
    }
  }
}

void __94__PKPassbookSettingsController__checkPairedDeviceSupportOfHiddenPassesAndRefreshUIIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      *buf = 138412546;
      v24 = v13;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "(account-pass-feature-check) failed to get account %@ to check feature support %@", buf, 0x16u);
    }
  }

  else
  {
    v8 = [*(*(a1 + 32) + 80) targetDevice];
    [v5 feature];
    v9 = objc_opt_respondsToSelector();
    v10 = *(*(a1 + 32) + 80);
    if (v9)
    {
      v11 = [v8 supportedFeatureIdentifiersForAccountProvisioningWithPaymentWebService:v10];
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v11;
        _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "(account-pass-feature-check) supportedFeatureIdentifiersForAccountProvisioning %@", buf, 0xCu);
      }
    }

    else
    {
      v11 = [v8 supportedFeatureIdentifiersWithPaymentWebService:v10];
    }

    v14 = PKFeatureIdentifierToString();
    v15 = [v11 containsObject:v14];

    v16 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = @"NO";
      if (v15)
      {
        v17 = @"YES";
      }

      *buf = 138412546;
      v24 = v11;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_1BD026000, v16, OS_LOG_TYPE_DEFAULT, "(account-pass-feature-check) target device featureIdentifiers %@ contains feature: %@", buf, 0x16u);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __94__PKPassbookSettingsController__checkPairedDeviceSupportOfHiddenPassesAndRefreshUIIfNecessary__block_invoke_791;
    v19[3] = &unk_1E80170D8;
    v18 = *(a1 + 40);
    v19[4] = *(a1 + 32);
    v20 = v18;
    v22 = v15;
    v21 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], v19);
  }
}

uint64_t __94__PKPassbookSettingsController__checkPairedDeviceSupportOfHiddenPassesAndRefreshUIIfNecessary__block_invoke_791(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  [*(*(a1 + 32) + 496) setObject:v2 forKeyedSubscript:*(a1 + 40)];

  result = [*(a1 + 48) BOOLValue];
  v4 = *(a1 + 56);
  if (v4 == (result ^ 1))
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      v7 = *(a1 + 40);
      if (v4)
      {
        v6 = @"YES";
      }

      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "(account-pass-feature-check) feature support for account %@ changed to %@. Refreshing passes", &v8, 0x16u);
    }

    return [*(a1 + 32) _refreshPasses];
  }

  return result;
}

- (id)_peerPaymentSwitchSpecifier
{
  peerPaymentSwitchSpecifier = self->_peerPaymentSwitchSpecifier;
  if (!peerPaymentSwitchSpecifier)
  {
    v4 = MEMORY[0x1E69C5748];
    v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_13.isa);
    v6 = [v4 preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v6 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x1E69C5860]];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKPassbookSettingsController _isPeerPaymentRegistered](self, "_isPeerPaymentRegistered")}];
    [v6 setObject:v7 forKeyedSubscript:@"PKSwitchSpinnerTableCellSwitchIsOn"];

    [v6 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"PKSwitchSpinnerTableCellShowSpinner"];
    v8 = MEMORY[0x1E696AD98];
    if (PKUseMockSURFServer())
    {
      v9 = 1;
    }

    else
    {
      v9 = PKStoreDemoModeEnabled();
    }

    v10 = [v8 numberWithInt:v9];
    [v6 setObject:v10 forKeyedSubscript:@"PKSwitchSpinnerTableCellSwitchIsDisabled"];

    v11 = self->_peerPaymentSwitchSpecifier;
    self->_peerPaymentSwitchSpecifier = v6;

    peerPaymentSwitchSpecifier = self->_peerPaymentSwitchSpecifier;
  }

  return peerPaymentSwitchSpecifier;
}

- (id)_applePayDefaultsSpecifierGroup
{
  if (!self->_applePayDefaultsSpecifier)
  {
    v3 = PKLocalizedPaymentString(&cfstr_SettingsAppleP.isa);
    v4 = PKLocalizedPaymentString(&cfstr_SettingsAppleP_0.isa);
    v5 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_context];
    [v5 setObject:v6 forKeyedSubscript:@"contextKey"];

    [v5 setObject:self->_dataSource forKeyedSubscript:@"dataSourceKey"];
    [v5 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x1E69C5860]];
    [v5 setObject:&unk_1F3CC7178 forKeyedSubscript:*MEMORY[0x1E69C5810]];
    [v5 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69C59A0]];
    v7 = MEMORY[0x1E69DCAB8];
    v8 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:17.0];
    v9 = [v7 _systemImageNamed:@"creditcard.fill" withConfiguration:v8];

    systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
    v11 = [v9 imageWithTintColor:systemWhiteColor renderingMode:1];

    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    v13 = PKUIImageWithBackgroundAndCornerRadius(v11, systemGrayColor, 29.0, 29.0, 6.0);

    [v5 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69C5920]];
    applePayDefaultsSpecifier = self->_applePayDefaultsSpecifier;
    self->_applePayDefaultsSpecifier = v5;
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  emptyGroupSpecifier = [MEMORY[0x1E69C5748] emptyGroupSpecifier];
  [v15 addObject:emptyGroupSpecifier];

  [v15 addObject:self->_applePayDefaultsSpecifier];

  return v15;
}

- (void)presentApplePayDefaults
{
  _applePayDefaultsSpecifierGroup = [(PKPassbookSettingsController *)self _applePayDefaultsSpecifierGroup];
  if (self->_applePayDefaultsSpecifier)
  {
    v5 = objc_alloc_init(PKApplePayDefaultsListController);
    [(PKApplePayDefaultsListController *)v5 setSpecifier:self->_applePayDefaultsSpecifier];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained settingsController:self requestsPushViewController:v5 animated:1];
  }
}

- (void)presentManageAutoFillCards
{
  v3 = dispatch_group_create();
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__13;
  v12[4] = __Block_byref_object_dispose__13;
  v13 = 0;
  dispatch_group_enter(v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__PKPassbookSettingsController_presentManageAutoFillCards__block_invoke;
  v9[3] = &unk_1E8017128;
  v11 = v12;
  v4 = v3;
  v10 = v4;
  [(PKPassbookSettingsController *)self _requestAuthForShowingAutoFillCardsWithCompletion:v9];
  dispatch_group_enter(v4);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PKPassbookSettingsController_presentManageAutoFillCards__block_invoke_2;
  v7[3] = &unk_1E8010970;
  v5 = v4;
  v8 = v5;
  [(PKPassbookSettingsController *)self _refreshFPANCardDataCompletion:v7];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PKPassbookSettingsController_presentManageAutoFillCards__block_invoke_3;
  block[3] = &unk_1E80153C8;
  block[4] = self;
  block[5] = v12;
  dispatch_group_notify(v5, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v12, 8);
}

void __58__PKPassbookSettingsController_presentManageAutoFillCards__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (id)_identityVerificationSpecifiers
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (self->_context || !self->_showIdentityDocumentProviderExtension)
  {
    v10 = 0;
  }

  else
  {
    v3 = MEMORY[0x1E69C5748];
    v4 = PKLocalizedPaymentString(&cfstr_IdentityVerifi_2.isa);
    v5 = [v3 groupSpecifierWithName:v4];

    v6 = PKLocalizedPaymentString(&cfstr_AllowIdentityV.isa);
    [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69C5900]];

    [v5 setIdentifier:@"IDENTITY_VERIFICATION_GROUP"];
    v7 = MEMORY[0x1E69C5748];
    v8 = PKLocalizedPaymentString(&cfstr_AllowIdentityV_0.isa);
    v9 = [v7 preferenceSpecifierNamed:v8 target:self set:sel_setIdentityVerificationAllowOnWebsitesEnabled_ get:sel_isIdentityVerificationAllowOnWebsitesEnabled detail:0 cell:6 edit:0];

    [v9 setIdentifier:@"IDENTITY_VERIFICATION_ALLOW_ON_WEBSITES"];
    v12[0] = v5;
    v12[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  }

  return v10;
}

- (id)isIdentityVerificationAllowOnWebsitesEnabled
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(DIIdentitySettingsProvider *)self->_identitySettingsProvider isDocumentProviderExtensionEnabledFor:*MEMORY[0x1E69BC3D8]];

  return [v2 numberWithBool:v3];
}

- (void)setIdentityVerificationAllowOnWebsitesEnabled:(id)enabled
{
  identitySettingsProvider = self->_identitySettingsProvider;
  v4 = *MEMORY[0x1E69BC3D8];
  bOOLValue = [enabled BOOLValue];

  [(DIIdentitySettingsProvider *)identitySettingsProvider setDocumentProviderExtensionEnablementFor:v4 to:bOOLValue];
}

- (void)switchSpinnerCell:(id)cell hasToggledSwitch:(BOOL)switch
{
  switchCopy = switch;
  specifier = [cell specifier];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PKPassbookSettingsController_switchSpinnerCell_hasToggledSwitch___block_invoke;
  aBlock[3] = &unk_1E8012FD0;
  aBlock[4] = self;
  v7 = specifier;
  v18 = v7;
  v8 = _Block_copy(aBlock);
  if (switchCopy)
  {
    _appleAccountInformation = [(PKPeerPaymentWebService *)self->_peerPaymentWebService _appleAccountInformation];
    appleID = [_appleAccountInformation appleID];
    if (appleID && (v11 = appleID, v12 = objc_loadWeakRetained(&self->_delegate), v13 = objc_opt_respondsToSelector(), v12, v11, (v13 & 1) != 0) && (PKIsAltAccountPairedOrPairing() & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __67__PKPassbookSettingsController_switchSpinnerCell_hasToggledSwitch___block_invoke_3;
      v15[3] = &unk_1E8010AD8;
      v16 = v8;
      [WeakRetained settingsController:self requestsAuthenticationChallengeForAppleAccountInformation:_appleAccountInformation completion:v15];
    }

    else
    {
      [(PKPassbookSettingsController *)self _registerForPeerPaymentWithSpecifier:v7];
    }
  }

  else
  {
    [(PKPassbookSettingsController *)self _unregisterForPeerPaymentWithSpecifier:v7];
  }
}

void __67__PKPassbookSettingsController_switchSpinnerCell_hasToggledSwitch___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PKPassbookSettingsController_switchSpinnerCell_hasToggledSwitch___block_invoke_2;
  block[3] = &unk_1E8013D60;
  v5 = a2;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __67__PKPassbookSettingsController_switchSpinnerCell_hasToggledSwitch___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);

    [v2 _registerForPeerPaymentWithSpecifier:v3];
  }

  else
  {
    [*(a1 + 40) setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"PKSwitchSpinnerTableCellShowSpinner"];
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "_isPeerPaymentRegistered")}];
    [*(a1 + 40) setObject:v4 forKeyedSubscript:@"PKSwitchSpinnerTableCellSwitchIsOn"];

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 744));
    [WeakRetained settingsControllerRequestsReloadSpecifiers:*(a1 + 32)];
  }
}

- (id)_transitDefaultsGroupSpecifiers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = MEMORY[0x1E69C5748];
  v5 = PKLocalizedPaymentString(&cfstr_SettingsTransi.isa);
  v6 = [(PKPassbookSettingsController *)self _uppercaseGroupSpecifierTitleIfNecessary:v5];
  v7 = [v4 groupSpecifierWithName:v6];

  [v7 setObject:self->_expressTransitSectionFooterText forKeyedSubscript:*MEMORY[0x1E69C5900]];
  [v3 addObject:v7];
  _defaultExpressTransitSpecifier = [(PKPassbookSettingsController *)self _defaultExpressTransitSpecifier];
  [v3 addObject:_defaultExpressTransitSpecifier];

  return v3;
}

- (id)_defaultExpressTransitSpecifier
{
  if (!self->_defaultExpressTransitSpecifier)
  {
    deviceUsesAutomaticAuthorization = [(PKExpressPassController *)self->_expressPassController deviceUsesAutomaticAuthorization];
    v4 = objc_alloc_init(MEMORY[0x1E69C5748]);
    *&v4[*MEMORY[0x1E69C57C8]] = 2;
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69C5820]];
    [v4 setTarget:self];
    *&v4[*MEMORY[0x1E69C57D0]] = sel__defaultExpressTransitPassDescription;
    [v4 setControllerLoadAction:sel__openExpressTransitSettings_];
    if (deviceUsesAutomaticAuthorization)
    {
      v5 = @"SETTINGS_DEFAULT_AUTOMATIC_TRANSIT_CELL_TITLE";
    }

    else
    {
      v5 = @"SETTINGS_DEFAULT_EXPRESS_TRANSIT_CELL_TITLE";
    }

    v6 = PKLocalizedPaymentString(&v5->isa);
    [v4 setName:v6];

    [v4 setProperty:v5 forKey:*MEMORY[0x1E69C5918]];
    defaultExpressTransitSpecifier = self->_defaultExpressTransitSpecifier;
    self->_defaultExpressTransitSpecifier = v4;
  }

  if (PKStoreDemoModeEnabled())
  {
    v8 = MEMORY[0x1E695E110];
  }

  else
  {
    v8 = MEMORY[0x1E695E118];
  }

  [(PSSpecifier *)self->_defaultExpressTransitSpecifier setProperty:v8 forKey:*MEMORY[0x1E69C58C8]];
  v9 = self->_defaultExpressTransitSpecifier;

  return v9;
}

- (void)openExpressTransitSettings:(id)settings withPassUniqueIdentifier:(id)identifier
{
  v5 = self->_context != 0;
  v6 = [PKExpressPassesViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_paymentDataProvider);
  obj = [(PKExpressPassesViewController *)v6 initWithPaymentDataProvider:WeakRetained controller:self->_expressPassController style:v5];

  [(PKExpressPassesViewController *)obj setPasses:self->_paymentPasses];
  v8 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [v8 settingsController:self requestsPushViewController:obj animated:1];
  }

  objc_storeWeak(&self->_expressPassesViewController, obj);
}

- (void)openTransactionDefaultsEmailSettings
{
  if ([(NSArray *)self->_paymentPasses count]&& [(PKPassbookSettingsDataSource *)self->_dataSource deviceSupportsInAppPayments])
  {

    [(PKPassbookSettingsController *)self _showDefaultContactEmailOptions:self];
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Attempted to open email settings for a device that has no passes or doesn't support payments", v4, 2u);
    }
  }
}

- (BOOL)canPresentLaunchPrompts
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_loadWeakRetained(&self->_delegate);
    v5 = [v4 isPresentingViewController] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)_regionConfigurationDidChangeNotification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PKPassbookSettingsController__regionConfigurationDidChangeNotification__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __73__PKPassbookSettingsController__regionConfigurationDidChangeNotification__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateCardsGroupSpecifier];
  v2 = *(a1 + 32);

  return [v2 _updateAddButtonSpecifier];
}

- (void)_presentPaymentSetupViewController:(id)controller paymentPass:(id)pass
{
  controllerCopy = controller;
  passCopy = pass;
  [controllerCopy setCustomFormSheetPresentationStyleForiPad];
  setupDelegate = [(PKPassbookSettingsDataSource *)self->_dataSource setupDelegate];

  if (setupDelegate)
  {
    setupDelegate2 = [(PKPassbookSettingsDataSource *)self->_dataSource setupDelegate];
    [controllerCopy setSetupDelegate:setupDelegate2];
  }

  [controllerCopy setAllowsManualEntry:0];
  [controllerCopy setPaymentSetupMode:1];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PKPassbookSettingsController__presentPaymentSetupViewController_paymentPass___block_invoke;
  aBlock[3] = &unk_1E8017150;
  v10 = controllerCopy;
  v19 = v10;
  selfCopy = self;
  objc_copyWeak(&v21, &location);
  v11 = _Block_copy(aBlock);
  associatedAccountServiceAccountIdentifier = [passCopy associatedAccountServiceAccountIdentifier];
  if ([associatedAccountServiceAccountIdentifier length])
  {
    accountService = self->_accountService;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __79__PKPassbookSettingsController__presentPaymentSetupViewController_paymentPass___block_invoke_4;
    v15[3] = &unk_1E8017178;
    v16 = passCopy;
    v17 = v11;
    [(PKAccountService *)accountService accountWithIdentifier:associatedAccountServiceAccountIdentifier completion:v15];

    v14 = v16;
  }

  else
  {
    if ([passCopy isHomeKeyPass])
    {
      v14 = [objc_alloc(MEMORY[0x1E69B88F8]) initWithPaymentPass:passCopy];
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x1E69B8C40]) initWithPaymentPass:passCopy];
    }

    (*(v11 + 2))(v11, v14);
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __79__PKPassbookSettingsController__presentPaymentSetupViewController_paymentPass___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) provisioningController];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
  [v4 setPaymentDataProvider:WeakRetained];

  if (PKIsAltAccountPairedOrPairing() && *(*(a1 + 40) + 40) == 1)
  {
    [v4 setIsProvisioningForAltAccount:1];
  }

  v10[0] = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__PKPassbookSettingsController__presentPaymentSetupViewController_paymentPass___block_invoke_2;
  v7[3] = &unk_1E8013B00;
  objc_copyWeak(&v9, (a1 + 48));
  v8 = *(a1 + 32);
  [v4 associateCredentials:v6 withCompletionHandler:v7];

  objc_destroyWeak(&v9);
}

void __79__PKPassbookSettingsController__presentPaymentSetupViewController_paymentPass___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (v5 || !a2)
    {
      [WeakRetained _handleProvisioningError:v5 viewController:0];
      [v7 _setCardAddProvisioningButtonEnabled:1 forPaymentPass:0];
    }

    else
    {
      v8 = *(a1 + 32);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __79__PKPassbookSettingsController__presentPaymentSetupViewController_paymentPass___block_invoke_3;
      v9[3] = &unk_1E80113B0;
      objc_copyWeak(&v11, (a1 + 40));
      v10 = *(a1 + 32);
      [v8 preflightWithCompletion:v9];

      objc_destroyWeak(&v11);
    }
  }
}

void __79__PKPassbookSettingsController__presentPaymentSetupViewController_paymentPass___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _requestDelegatePresentViewController:*(a1 + 32)];
    [v3 _setCardAddProvisioningButtonEnabled:1 forPaymentPass:0];
    WeakRetained = v3;
  }
}

void __79__PKPassbookSettingsController__presentPaymentSetupViewController_paymentPass___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PKPassbookSettingsController__presentPaymentSetupViewController_paymentPass___block_invoke_5;
  block[3] = &unk_1E8012300;
  v6 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __79__PKPassbookSettingsController__presentPaymentSetupViewController_paymentPass___block_invoke_5(uint64_t a1)
{
  if ([*(a1 + 32) feature] == 4)
  {
    v2 = [objc_alloc(MEMORY[0x1E69B8C40]) initWithPaymentPass:*(a1 + 40)];
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E69B8350]) initWithAccount:*(a1 + 32)];
  }

  v3 = v2;
  (*(*(a1 + 48) + 16))();
}

- (id)_invitationFromCredential:(id)credential
{
  v4 = MEMORY[0x1E69B85A8];
  credentialCopy = credential;
  v6 = [v4 alloc];
  partnerIdentifier = [credentialCopy partnerIdentifier];
  brandIdentifier = [credentialCopy brandIdentifier];
  pairedReaderIdentifier = [credentialCopy pairedReaderIdentifier];
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  deviceName = [targetDevice deviceName];
  entitlement = [credentialCopy entitlement];
  value = [entitlement value];
  v14 = [v6 initWithPartnerIdentifier:partnerIdentifier brandIdentifier:brandIdentifier pairedReaderIdentifier:pairedReaderIdentifier recipientName:deviceName entitlement:objc_msgSend(value supportedRadioTechnologies:{"unsignedIntegerValue"), objc_msgSend(credentialCopy, "supportedRadioTechnologies")}];

  sharingSessionIdentifier = [credentialCopy sharingSessionIdentifier];
  [v14 setSharingSessionIdentifier:sharingSessionIdentifier];

  originatorIDSHandle = [credentialCopy originatorIDSHandle];

  [v14 setOriginatorIDSHandle:originatorIDSHandle];

  return v14;
}

- (id)_matchingInvitationForPass:(id)pass withInvitations:(id)invitations
{
  v43 = *MEMORY[0x1E69E9840];
  invitationsCopy = invitations;
  devicePrimaryPaymentApplication = [pass devicePrimaryPaymentApplication];
  subcredentials = [devicePrimaryPaymentApplication subcredentials];
  anyObject = [subcredentials anyObject];

  v9 = objc_alloc(MEMORY[0x1E69B85A8]);
  partnerIdentifier = [anyObject partnerIdentifier];
  brandIdentifier = [anyObject brandIdentifier];
  pairedReaderIdentifier = [anyObject pairedReaderIdentifier];
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  deviceName = [targetDevice deviceName];
  entitlement = [anyObject entitlement];
  value = [entitlement value];
  v17 = [v9 initWithPartnerIdentifier:partnerIdentifier brandIdentifier:brandIdentifier pairedReaderIdentifier:pairedReaderIdentifier recipientName:deviceName entitlement:objc_msgSend(value supportedRadioTechnologies:{"unsignedIntegerValue"), objc_msgSend(anyObject, "supportedRadioTechnologies")}];

  sharingSessionIdentifier = [anyObject sharingSessionIdentifier];
  [v17 setSharingSessionIdentifier:sharingSessionIdentifier];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v19 = invitationsCopy;
  v20 = [v19 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v38;
LABEL_3:
    v23 = 0;
    while (1)
    {
      if (*v38 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v37 + 1) + 8 * v23);
      if ([v17 isSameInvitationAsInvitation:v24])
      {
        goto LABEL_18;
      }

      if (v21 == ++v23)
      {
        v21 = [v19 countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (v21)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [v17 setSharingSessionIdentifier:0];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v25 = v19;
  v26 = [v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v34;
LABEL_11:
    v29 = 0;
    while (1)
    {
      if (*v34 != v28)
      {
        objc_enumerationMutation(v25);
      }

      v24 = *(*(&v33 + 1) + 8 * v29);
      if ([v17 isSameInvitationAsInvitation:v24])
      {
        break;
      }

      if (v27 == ++v29)
      {
        v27 = [v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
        v30 = 0;
        if (v27)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

LABEL_18:
    v30 = v24;
    goto LABEL_19;
  }

  v30 = 0;
LABEL_19:

  return v30;
}

- (void)_presentCredentialSetupViewControllerForPaymentPass:(id)pass withCompletion:(id)completion
{
  v38[1] = *MEMORY[0x1E69E9840];
  passCopy = pass;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  v10 = objc_loadWeakRetained(&self->_delegate);
  v11 = v10;
  if (v9)
  {
    navigationController = [v10 requestParentNavigationControllerWithSettingsController:self];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
LABEL_7:
      v21 = PKDisplayableErrorForCommonType();
      completionCopy[2](completionCopy, 0, v21);

      goto LABEL_8;
    }

    v11 = objc_loadWeakRetained(&self->_delegate);
    navigationController = [v11 navigationController];
  }

  v14 = navigationController;

  if (!v14)
  {
    goto LABEL_7;
  }

  devicePrimaryPaymentApplication = [passCopy devicePrimaryPaymentApplication];
  subcredentials = [devicePrimaryPaymentApplication subcredentials];
  anyObject = [subcredentials anyObject];

  v24 = [objc_alloc(MEMORY[0x1E69B8C38]) initWithPaymentPass:passCopy credentialToShare:anyObject];
  v22 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:self->_webService];
  v23 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:4 provisioningController:v22 groupsController:0];
  v17 = [[PKPaymentSetupDismissibleNavigationController alloc] initWithContext:4];
  objc_initWeak(&location, self);
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 0;
  v38[0] = v24;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __99__PKPassbookSettingsController__presentCredentialSetupViewControllerForPaymentPass_withCompletion___block_invoke;
  v30[3] = &unk_1E80171A0;
  objc_copyWeak(&v34, &location);
  v33 = v35;
  v19 = v17;
  v31 = v19;
  v20 = completionCopy;
  v32 = v20;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __99__PKPassbookSettingsController__presentCredentialSetupViewControllerForPaymentPass_withCompletion___block_invoke_3;
  v26[3] = &unk_1E80171C8;
  objc_copyWeak(&v29, &location);
  v28 = v35;
  v27 = v20;
  [PKProvisioningFlowBridge startCredentialsProvisioningFlowWithNavController:v19 context:v23 credentials:v18 parentNavController:v14 presentNavController:v30 completion:v26];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v34);
  _Block_object_dispose(v35, 8);
  objc_destroyWeak(&location);

LABEL_8:
}

void __99__PKPassbookSettingsController__presentCredentialSetupViewControllerForPaymentPass_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v4 = objc_loadWeakRetained(WeakRetained + 93);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __99__PKPassbookSettingsController__presentCredentialSetupViewControllerForPaymentPass_withCompletion___block_invoke_2;
    v6[3] = &unk_1E8010B50;
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    [v4 settingsController:v3 requestsPresentViewController:v5 animated:1 completion:v6];
  }
}

uint64_t __99__PKPassbookSettingsController__presentCredentialSetupViewControllerForPaymentPass_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

void __99__PKPassbookSettingsController__presentCredentialSetupViewControllerForPaymentPass_withCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v3 = objc_loadWeakRetained(WeakRetained + 93);
      [v3 requestDismissingPresentedViewControllerWithSettingsController:v5 animated:1 completion:0];
    }

    else
    {
      v4 = *(a1 + 32);
      v3 = PKDisplayableErrorForCommonType();
      (*(v4 + 16))(v4, 0, v3);
    }

    WeakRetained = v5;
  }
}

- (void)_handleProvisioningError:(id)error viewController:(id)controller
{
  if (controller)
  {

    [(PKPassbookSettingsController *)self _requestDelegatePresentViewController:controller];
  }

  else
  {
    v5 = [PKPaymentSetupNavigationController viewControllerForPresentingPaymentError:error];
    [(PKPassbookSettingsController *)self _requestDelegatePresentViewController:v5];
  }
}

- (void)_requestDelegatePresentViewController:(id)controller completion:(id)completion
{
  if (controller)
  {
    completionCopy = completion;
    controllerCopy = controller;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained settingsController:self requestsPresentViewController:controllerCopy animated:1 completion:completionCopy];
  }
}

- (void)_setCardAddProvisioningButtonEnabled:(BOOL)enabled forPaymentPass:(id)pass
{
  enabledCopy = enabled;
  passCopy = pass;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  [(PSSpecifier *)self->_addCardButtonSpecifier setObject:v6 forKeyedSubscript:*MEMORY[0x1E69C58C8]];

  uniqueID = passCopy;
  if (passCopy)
  {
    uniqueID = [(NSString *)passCopy uniqueID];
  }

  provisioningPassIdentifier = self->_provisioningPassIdentifier;
  self->_provisioningPassIdentifier = uniqueID;

  [(PKPassbookSettingsController *)self _updateCompanionPassesAddButton];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained settingsController:self requestsReloadSpecifier:self->_addCardButtonSpecifier];
}

- (void)_performPhoneToWatchProvisioningForPaymentPass:(id)pass withCompletion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  objc_initWeak(&location, self);
  [(PKPassbookSettingsController *)self _setCardAddProvisioningButtonEnabled:0 forPaymentPass:passCopy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke;
  aBlock[3] = &unk_1E80171F0;
  objc_copyWeak(&v18, &location);
  v8 = completionCopy;
  v17 = v8;
  v9 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_2;
  v12[3] = &unk_1E8017380;
  v12[4] = self;
  v10 = v9;
  v14 = v10;
  v11 = passCopy;
  v13 = v11;
  objc_copyWeak(&v15, &location);
  [(PKPassbookSettingsController *)self _transitPropertiesForPaymentPass:v11 withCompletion:v12];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

uint64_t __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _setCardAddProvisioningButtonEnabled:1 forPaymentPass:0];
  }

  result = *(a1 + 32);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 isEnRoute])
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Unable to perform transfer. Pass is in transit.", buf, 2u);
      }

      v6 = MEMORY[0x1E69DC650];
      v7 = PKLocalizedPaymentString(&cfstr_CardInTransit.isa);
      v8 = @"CARD_IN_TRANSIT_MESSAGE_TRANSFER_CARD";
LABEL_10:
      v10 = PKLocalizedPaymentString(&v8->isa);
      v11 = [v6 alertControllerWithTitle:v7 message:v10 preferredStyle:1];

      v12 = MEMORY[0x1E69DC648];
      v13 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
      v14 = [v12 actionWithTitle:v13 style:1 handler:0];
      [v11 addAction:v14];

      [a1[4] _requestDelegatePresentViewController:v11];
      (*(a1[6] + 2))();
LABEL_16:

      goto LABEL_17;
    }

    if ([v4 isBlocked])
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Unable to perform transfer. Pass is blacklisted.", buf, 2u);
      }

      v6 = MEMORY[0x1E69DC650];
      v7 = PKLocalizedPaymentString(&cfstr_CouldNotAddCar.isa);
      v8 = @"COULD_NOT_ADD_CARD_MESSAGE";
      goto LABEL_10;
    }
  }

  if ([a1[5] isCarKeyPass])
  {
    v15 = a1[4];
    v16 = a1[5];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_866;
    v57[3] = &unk_1E8017218;
    objc_copyWeak(&v59, a1 + 7);
    v58 = a1[6];
    [v15 _presentCredentialSetupViewControllerForPaymentPass:v16 withCompletion:v57];

    objc_destroyWeak(&v59);
  }

  else
  {
    if (![a1[5] isIdentityPass])
    {
      v11 = objc_alloc_init(MEMORY[0x1E69B8658]);
      *buf = 0;
      v47 = buf;
      v48 = 0x3032000000;
      v49 = __Block_byref_object_copy__13;
      v50 = __Block_byref_object_dispose__13;
      v51 = 0;
      v44[0] = 0;
      v44[1] = v44;
      v44[2] = 0x3032000000;
      v44[3] = __Block_byref_object_copy__13;
      v44[4] = __Block_byref_object_dispose__13;
      v45 = 0;
      v42[0] = 0;
      v42[1] = v42;
      v42[2] = 0x3032000000;
      v42[3] = __Block_byref_object_copy__13;
      v42[4] = __Block_byref_object_dispose__13;
      v43 = 0;
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_5;
      v41[3] = &unk_1E8012DF8;
      v41[4] = a1[4];
      v41[5] = v42;
      v41[6] = buf;
      v41[7] = v44;
      [v11 addOperation:v41];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_7;
      v37[3] = &unk_1E80172E0;
      v22 = a1[5];
      v37[4] = a1[4];
      v39 = buf;
      v40 = v42;
      v38 = v22;
      [v11 addOperation:v37];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_9;
      v34[3] = &unk_1E8012D58;
      v23 = a1[5];
      v34[4] = a1[4];
      v35 = v23;
      v36 = v42;
      [v11 addOperation:v34];
      objc_initWeak(&location, a1[4]);
      v24 = [MEMORY[0x1E695DFB0] null];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_11;
      v26[3] = &unk_1E8017358;
      objc_copyWeak(&v32, &location);
      v29 = v42;
      v30 = buf;
      v31 = v44;
      v28 = a1[6];
      v27 = a1[5];
      v25 = [v11 evaluateWithInput:v24 completion:v26];

      objc_destroyWeak(&v32);
      objc_destroyWeak(&location);

      _Block_object_dispose(v42, 8);
      _Block_object_dispose(v44, 8);

      _Block_object_dispose(buf, 8);
      goto LABEL_16;
    }

    v17 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:*(a1[4] + 10)];
    [v17 setAllowProductsInUnsupportedRegion:1];
    objc_initWeak(buf, a1[4]);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_867;
    v52[3] = &unk_1E8017268;
    objc_copyWeak(&v56, buf);
    v18 = a1[6];
    v19 = a1[4];
    v20 = a1[5];
    v55 = v18;
    v52[4] = v19;
    v53 = v20;
    v21 = v17;
    v54 = v21;
    [v21 preflightWithRequirements:13 completionRequirements:13 completion:v52];

    objc_destroyWeak(&v56);
    objc_destroyWeak(buf);
  }

LABEL_17:
}

void __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_866(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && (a2 & 1) == 0)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Unable to present credential setup. Error: %@.", &v9, 0xCu);
    }

    v8 = PKAlertForDisplayableErrorWithHandlers(v5, 0, 0, 0);
    [WeakRetained _requestDelegatePresentViewController:v8];
  }

  (*(*(a1 + 32) + 16))();
}

void __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_867(uint64_t a1, char a2, void *a3)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(WeakRetained + 93);
    if (v5 || (a2 & 1) == 0)
    {
      if (v5)
      {
        v10 = v5;
      }

      else
      {
        v10 = PKDisplayableErrorForCommonType();
      }

      v17 = v10;
      v18 = PKAlertForDisplayableErrorWithHandlers(v10, 0, 0, 0);
      [v8 settingsController:v7 requestsPresentViewController:v18 animated:1 completion:0];
      (*(*(a1 + 56) + 16))();

      goto LABEL_16;
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [v8 requestParentNavigationControllerWithSettingsController:*(a1 + 32)];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_13:
        v16 = PKDisplayableErrorForCommonType();
        v17 = PKAlertForDisplayableErrorWithHandlers(v16, 0, 0, 0);

        [v8 settingsController:v7 requestsPresentViewController:v17 animated:1 completion:0];
        (*(*(a1 + 56) + 16))();
LABEL_16:

        goto LABEL_17;
      }

      v9 = [v8 navigationController];
    }

    v11 = v9;
    if (v9)
    {
      v12 = [objc_alloc(MEMORY[0x1E69B8C40]) initWithPaymentPass:*(a1 + 40)];
      v19 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:4 provisioningController:*(a1 + 48) groupsController:0];
      v13 = [[PKPaymentSetupDismissibleNavigationController alloc] initWithContext:4];
      [(PKPaymentSetupDismissibleNavigationController *)v13 setModalPresentationStyle:-2];
      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x2020000000;
      v30 = 0;
      v31[0] = v12;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_2_868;
      v24[3] = &unk_1E80171A0;
      objc_copyWeak(&v28, (a1 + 64));
      v27 = v29;
      v15 = v13;
      v25 = v15;
      v26 = *(a1 + 56);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_4;
      v20[3] = &unk_1E80171C8;
      objc_copyWeak(&v23, (a1 + 64));
      v22 = v29;
      v21 = *(a1 + 56);
      [PKProvisioningFlowBridge startCredentialsProvisioningFlowWithNavController:v15 context:v19 credentials:v14 parentNavController:v11 presentNavController:v24 completion:v20];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&v28);
      _Block_object_dispose(v29, 8);

LABEL_17:
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  (*(*(a1 + 56) + 16))();
LABEL_18:
}

void __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_2_868(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v4 = objc_loadWeakRetained(WeakRetained + 93);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_3;
    v8[3] = &unk_1E8017240;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = v6;
    v10 = v7;
    [v4 settingsController:v3 requestsPresentViewController:v5 animated:1 completion:v8];
  }
}

void __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v3 = objc_loadWeakRetained(WeakRetained + 93);
      [v3 requestDismissingPresentedViewControllerWithSettingsController:v4 animated:1 completion:0];
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }

    WeakRetained = v4;
  }
}

void __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 744));
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained((*(a1 + 32) + 744));
    v11 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_6;
    v12[3] = &unk_1E8017290;
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    v14 = v7;
    v13 = v6;
    [v10 settingsController:v11 requestsAddLocalCardPreflightWithCompletion:v12];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 1);
  }
}

void __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_6(void *a1, int a2, void *a3, void *a4)
{
  v12 = a3;
  v8 = a4;
  objc_storeStrong((*(a1[6] + 8) + 40), a4);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = 8;
  if (isKindOfClass)
  {
    v10 = 7;
  }

  objc_storeStrong((*(a1[v10] + 8) + 40), a3);
  if (a2)
  {
    v11 = *(*(a1[8] + 8) + 40) != 0;
  }

  else
  {
    v11 = 1;
  }

  (*(a1[5] + 16))(a1[5], a1[4], v11);
}

void __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_7(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (*(*(a1 + 32) + 40) == 1)
  {
    v9 = [*(*(*(a1 + 48) + 8) + 40) provisioningController];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_8;
    v10[3] = &unk_1E80172B8;
    v14 = *(a1 + 56);
    v11 = *(a1 + 40);
    v13 = v8;
    v12 = v6;
    [v9 requestExternalizedAuthForWatchWithVisibleViewController:0 completion:v10];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_8(uint64_t a1, int a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6 && a2)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    goto LABEL_18;
  }

  if (a2)
  {
    goto LABEL_18;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [*(a1 + 32) deviceContactlessPaymentApplications];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (!v8)
  {
LABEL_17:

    goto LABEL_18;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v22;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = [*(*(&v21 + 1) + 8 * i) paymentNetworkIdentifier];
      if (v13 == 139 || v13 == 130)
      {
        v10 = 1;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
  }

  while (v9);

  if (v10)
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E69BB840];
    v25[0] = *MEMORY[0x1E696A578];
    v7 = PKLocalizedPaymentString(&cfstr_WatchOnWristRe.isa);
    v26[0] = v7;
    v25[1] = *MEMORY[0x1E696A598];
    v16 = PKLocalizedPaymentString(&cfstr_WatchOnWristRe_0.isa);
    v26[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v18 = [v14 errorWithDomain:v15 code:60000 userInfo:v17];
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    goto LABEL_17;
  }

LABEL_18:
  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), *(*(*(a1 + 56) + 8) + 40) != 0);
}

void __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_9(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(*(a1 + 32) + 80) targetDevice];
  v9 = [*(a1 + 40) fidoProfile];
  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [v9 relyingPartyIdentifier];
    v11 = [v9 accountHash];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_10;
    v12[3] = &unk_1E8017308;
    v15 = *(a1 + 48);
    v14 = v7;
    v13 = v6;
    [v8 checkFidoKeyPresenceForRelyingParty:v10 relyingPartyAccountHash:v11 fidoKeyHash:0 completion:v12];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

uint64_t __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_10(uint64_t a1, char a2)
{
  v13[2] = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v3 = MEMORY[0x1E696ABC0];
    v4 = *MEMORY[0x1E69BB840];
    v12[0] = *MEMORY[0x1E696A578];
    v5 = PKLocalizedPaymentString(&cfstr_BridgeSerialBa.isa);
    v13[0] = v5;
    v12[1] = *MEMORY[0x1E696A598];
    v6 = PKLocalizedPaymentString(&cfstr_BridgeSerialBa_0.isa);
    v13[1] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v8 = [v3 errorWithDomain:v4 code:60000 userInfo:v7];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  return (*(*(a1 + 40) + 16))();
}

void __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_12;
    v4[3] = &unk_1E8017330;
    v8 = *(a1 + 48);
    v9 = *(a1 + 64);
    v5 = WeakRetained;
    v7 = *(a1 + 40);
    v6 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

uint64_t __94__PKPassbookSettingsController__performPhoneToWatchProvisioningForPaymentPass_withCompletion___block_invoke_12(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 40))
  {
LABEL_2:
    [*(a1 + 32) _handleProvisioningError:? viewController:?];
LABEL_3:
    v2 = *(*(a1 + 48) + 16);
    goto LABEL_6;
  }

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    if (!*(*(*(a1 + 72) + 8) + 40))
    {
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  [*(a1 + 32) _presentPaymentSetupViewController:*(*(*(a1 + 64) + 8) + 40) paymentPass:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);
LABEL_6:

  return v2();
}

- (void)_transitPropertiesForPaymentPass:(id)pass withCompletion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  if (completionCopy)
  {
    uniqueID = [passCopy uniqueID];
    devicePrimaryPaymentApplication = [passCopy devicePrimaryPaymentApplication];
    v10 = objc_alloc_init(PKPassbookSettingsDefaultBehavior);
    paymentDataProvider = [(PKPassbookSettingsDefaultBehavior *)v10 paymentDataProvider];
    if (objc_opt_respondsToSelector())
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __80__PKPassbookSettingsController__transitPropertiesForPaymentPass_withCompletion___block_invoke;
      v12[3] = &unk_1E80173D0;
      v13 = devicePrimaryPaymentApplication;
      v14 = passCopy;
      selfCopy = self;
      v16 = uniqueID;
      v17 = completionCopy;
      [paymentDataProvider transitStateWithPassUniqueIdentifier:v16 paymentApplication:v13 completion:v12];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __80__PKPassbookSettingsController__transitPropertiesForPaymentPass_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PKPassbookSettingsController__transitPropertiesForPaymentPass_withCompletion___block_invoke_2;
  block[3] = &unk_1E80173A8;
  v11 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = *(a1 + 48);
  v6 = *(&v9 + 1);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v13 = v9;
  v12 = v7;
  v14 = *(a1 + 64);
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __80__PKPassbookSettingsController__transitPropertiesForPaymentPass_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) transitPassPropertiesWithPaymentApplication:*(a1 + 40) pass:*(a1 + 48)];
  [*(a1 + 56) _updateBalancesWithServerBalances:0 transitPassProperties:v2 forPassWithUniqueIdentifier:*(a1 + 64)];
  (*(*(a1 + 72) + 16))();
}

- (int64_t)_paymentSetupContextForSettingsContext:(int64_t)context
{
  if (!context)
  {
    return 3;
  }

  if (context == 1)
  {
    return 4;
  }

  v8 = v3;
  v9 = v4;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&dword_1BD026000, v6, OS_LOG_TYPE_ERROR, "Context case not mapped", v7, 2u);
  }

  return 0;
}

- (void)_reloadBalancesAndTransitPassPropertiesForPass:(id)pass withDataProvider:(id)provider
{
  passCopy = pass;
  providerCopy = provider;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __96__PKPassbookSettingsController__reloadBalancesAndTransitPassPropertiesForPass_withDataProvider___block_invoke;
  v9[3] = &unk_1E80173F8;
  objc_copyWeak(&v11, &location);
  v8 = passCopy;
  v10 = v8;
  [(PKPassbookSettingsController *)self _fetchBalancesAndTransitPassPropertiesForPass:v8 withDataProvider:providerCopy completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __96__PKPassbookSettingsController__reloadBalancesAndTransitPassPropertiesForPass_withDataProvider___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [*(a1 + 32) uniqueID];
  [WeakRetained _updateBalancesWithServerBalances:v6 transitPassProperties:v5 forPassWithUniqueIdentifier:v7];
}

- (void)_fetchBalancesAndTransitPassPropertiesForPass:(id)pass withDataProvider:(id)provider completion:(id)completion
{
  passCopy = pass;
  providerCopy = provider;
  completionCopy = completion;
  uniqueID = [passCopy uniqueID];
  v11 = dispatch_group_create();
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__13;
  v32[4] = __Block_byref_object_dispose__13;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__13;
  v30[4] = __Block_byref_object_dispose__13;
  v31 = 0;
  devicePrimaryPaymentApplication = [passCopy devicePrimaryPaymentApplication];
  dispatch_group_enter(v11);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __106__PKPassbookSettingsController__fetchBalancesAndTransitPassPropertiesForPass_withDataProvider_completion___block_invoke;
  v25[3] = &unk_1E8016A48;
  v29 = v32;
  v13 = devicePrimaryPaymentApplication;
  v26 = v13;
  v14 = passCopy;
  v27 = v14;
  v15 = v11;
  v28 = v15;
  [providerCopy transitStateWithPassUniqueIdentifier:uniqueID paymentApplication:v13 completion:v25];
  dispatch_group_enter(v15);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __106__PKPassbookSettingsController__fetchBalancesAndTransitPassPropertiesForPass_withDataProvider_completion___block_invoke_2;
  v22[3] = &unk_1E8016A70;
  v24 = v30;
  v16 = v15;
  v23 = v16;
  [providerCopy balancesForPaymentPassWithUniqueIdentifier:uniqueID completion:v22];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__PKPassbookSettingsController__fetchBalancesAndTransitPassPropertiesForPass_withDataProvider_completion___block_invoke_4;
  block[3] = &unk_1E8012F10;
  v19 = completionCopy;
  v20 = v30;
  v21 = v32;
  v17 = completionCopy;
  dispatch_group_notify(v16, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);
}

void __106__PKPassbookSettingsController__fetchBalancesAndTransitPassPropertiesForPass_withDataProvider_completion___block_invoke(void *a1, void *a2)
{
  v3 = [a2 transitPassPropertiesWithPaymentApplication:a1[4] pass:a1[5]];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = a1[6];

  dispatch_group_leave(v6);
}

void __106__PKPassbookSettingsController__fetchBalancesAndTransitPassPropertiesForPass_withDataProvider_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__PKPassbookSettingsController__fetchBalancesAndTransitPassPropertiesForPass_withDataProvider_completion___block_invoke_3;
  block[3] = &unk_1E8017420;
  v8 = v3;
  v6 = *(a1 + 32);
  v4 = v6;
  v9 = v6;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __106__PKPassbookSettingsController__fetchBalancesAndTransitPassPropertiesForPass_withDataProvider_completion___block_invoke_3(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 32));
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

uint64_t __106__PKPassbookSettingsController__fetchBalancesAndTransitPassPropertiesForPass_withDataProvider_completion___block_invoke_4(void *a1)
{
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40));
  }

  return result;
}

- (void)_updateBalancesWithServerBalances:(id)balances transitPassProperties:(id)properties forPassWithUniqueIdentifier:(id)identifier
{
  propertiesCopy = properties;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    balancesCopy = balances;
    v10 = [(PKPassbookSettingsController *)self _specifierForPassUniqueID:identifierCopy];
    v11 = [v10 objectForKeyedSubscript:@"pkPass"];
    v12 = [(NSMutableDictionary *)self->_latestTransitBalanceModel objectForKeyedSubscript:identifierCopy];
    v13 = [v12 copy];
    if (!v13)
    {
      v13 = [objc_alloc(MEMORY[0x1E69B9308]) initWithPass:v11];
    }

    [v13 setTransitProperties:propertiesCopy];
    [v13 setDynamicBalances:balancesCopy];

    [(NSMutableDictionary *)self->_latestTransitBalanceModel setObject:v13 forKeyedSubscript:identifierCopy];
    if ((PKEqualObjects() & 1) == 0)
    {
      [v10 setObject:v13 forKeyedSubscript:@"pkTransitServerBalance"];
      v14 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69C5990]];
      [v14 updateSubtitle];
    }
  }
}

- (id)_subtitleTextForActiveAccount:(id)account
{
  accountCopy = account;
  feature = [accountCopy feature];
  if (feature == 4)
  {
    appleBalanceDetails = [accountCopy appleBalanceDetails];
    accountSummary = [appleBalanceDetails accountSummary];
    currentBalance = [accountSummary currentBalance];
    currencyCode = [appleBalanceDetails currencyCode];
    v6FormattedStringValue = PKCurrencyAmountMake();

    formattedStringValue = [v6FormattedStringValue formattedStringValue];
  }

  else
  {
    if (feature != 2)
    {
      v14 = 0;
      goto LABEL_16;
    }

    appleBalanceDetails = [accountCopy creditDetails];
    if ([accountCopy accessLevel] != 1)
    {
      accountSummary2 = [appleBalanceDetails accountSummary];
      altDSID = [accountCopy altDSID];
      v6FormattedStringValue = [accountSummary2 accountUserActivityForAccountUserAltDSID:altDSID];

      formattedStringValue = [v6FormattedStringValue totalSpending];
      currencyCode2 = [appleBalanceDetails currencyCode];
      v18 = currencyCode2;
      v19 = 0;
      if (formattedStringValue)
      {
        if (currencyCode2)
        {
          v19 = PKCurrencyAmountMake();
          amount = [v19 amount];
          zero = [MEMORY[0x1E696AB90] zero];
          v22 = [amount compare:zero];

          if (v22 == -1)
          {
            negativeValue = [v19 negativeValue];

            v19 = negativeValue;
          }
        }
      }

      v24 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      date = [MEMORY[0x1E695DF00] date];
      v26 = [v24 components:8 fromDate:date];
      [v26 month];

      v27 = PKGregorianMonthSpecificLocalizedStringKeyForKey();
      formattedStringValue2 = [v19 formattedStringValue];
      v14 = PKLocalizedFeatureString();

      goto LABEL_15;
    }

    formattedStringValue = [appleBalanceDetails cardBalance];
    amount2 = [formattedStringValue amount];
    zero2 = [MEMORY[0x1E696AB90] zero];
    v9 = [amount2 compare:zero2];

    if (v9 == -1)
    {
      negativeValue2 = [formattedStringValue negativeValue];

      formattedStringValue3 = [negativeValue2 formattedStringValue];
      v6FormattedStringValue = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, formattedStringValue3);

      formattedStringValue = negativeValue2;
    }

    else
    {
      v6FormattedStringValue = [formattedStringValue formattedStringValue];
    }
  }

  v14 = PKLocalizedFeatureString();
LABEL_15:

LABEL_16:

  return v14;
}

- (void)_updateCardSpecifier:(id)specifier withAccountStateForPaymentPass:(id)pass
{
  specifierCopy = specifier;
  passCopy = pass;
  associatedAccountServiceAccountIdentifier = [passCopy associatedAccountServiceAccountIdentifier];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __84__PKPassbookSettingsController__updateCardSpecifier_withAccountStateForPaymentPass___block_invoke;
  v16 = &unk_1E8017448;
  selfCopy = self;
  v9 = specifierCopy;
  v18 = v9;
  v10 = _Block_copy(&v13);
  isAppleBalancePass = [passCopy isAppleBalancePass];

  if (isAppleBalancePass)
  {
    targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
    [targetDevice accountWithIdentifier:associatedAccountServiceAccountIdentifier completion:v10];
  }

  else
  {
    [(PKAccountService *)self->_accountService accountWithIdentifier:associatedAccountServiceAccountIdentifier completion:v10];
  }
}

void __84__PKPassbookSettingsController__updateCardSpecifier_withAccountStateForPaymentPass___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PKPassbookSettingsController__updateCardSpecifier_withAccountStateForPaymentPass___block_invoke_2;
  block[3] = &unk_1E8010A88;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __84__PKPassbookSettingsController__updateCardSpecifier_withAccountStateForPaymentPass___block_invoke_2(id *a1)
{
  v2 = [a1[4] state];
  v3 = [a1[4] feature];
  v8 = 0;
  if (v2 <= 2)
  {
    if (v2 == 1)
    {
      v8 = [a1[5] _subtitleTextForActiveAccount:a1[4]];
      goto LABEL_10;
    }

    if (v2 != 2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v2 == 3 || v2 == 4)
  {
LABEL_9:
    v8 = PKLocalizedFeatureString();
    v4 = [MEMORY[0x1E69DC888] systemRedColor];
    [a1[6] setObject:v4 forKeyedSubscript:@"pkCustomSubTitleColor"];
  }

LABEL_10:
  if (v3 == 2)
  {
    v5 = [a1[4] creditDetails];
    v6 = [v5 accountSummary];
    if ([v6 requiresDebtCollectionNotices])
    {

      v8 = 0;
    }
  }

  [a1[6] setObject:v8 forKeyedSubscript:@"pkCustomSubTitle"];
  v7 = [a1[6] objectForKeyedSubscript:*MEMORY[0x1E69C5990]];
  [v7 updateSubtitle];
}

- (void)paymentSetupDidFinish:(id)finish
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained requestDismissingPresentedViewControllerWithSettingsController:self animated:1 completion:0];
}

- (void)_reportAccountDeviceEventIfNecessary
{
  if (self->_accountBalanceReporter)
  {
    if (self->_viewDidAppearCalled)
    {
      v3 = [objc_alloc(MEMORY[0x1E69B8390]) initWithApp:2 page:5];
      objc_initWeak(&location, self);
      accountBalanceReporter = self->_accountBalanceReporter;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __68__PKPassbookSettingsController__reportAccountDeviceEventIfNecessary__block_invoke;
      v5[3] = &unk_1E8010998;
      objc_copyWeak(&v6, &location);
      [(PKAccountDeviceEventReporter *)accountBalanceReporter reportEventIfNecessary:2 location:v3 completion:v5];
      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }
  }
}

void __68__PKPassbookSettingsController__reportAccountDeviceEventIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[91];
    WeakRetained[91] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (void)_fetchInstitutions
{
  objc_initWeak(&location, self);
  institutionsDataProvider = self->_institutionsDataProvider;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PKPassbookSettingsController__fetchInstitutions__block_invoke;
  v4[3] = &unk_1E8011158;
  objc_copyWeak(&v5, &location);
  [(FKBankConnectInstitutionsProvider *)institutionsDataProvider connectedInstitutionsWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __50__PKPassbookSettingsController__fetchInstitutions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__PKPassbookSettingsController__fetchInstitutions__block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __50__PKPassbookSettingsController__fetchInstitutions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_storeStrong(WeakRetained + 37, *(a1 + 32));
    v3 = objc_loadWeakRetained(v4 + 93);
    [v3 settingsControllerRequestsReloadSpecifiers:v4];

    WeakRetained = v4;
  }
}

- (void)connectedInstitutionsDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__PKPassbookSettingsController_connectedInstitutionsDidChange___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = changeCopy;
  v5 = changeCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __63__PKPassbookSettingsController_connectedInstitutionsDidChange___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 296), *(a1 + 40));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 744));
  [WeakRetained settingsControllerRequestsReloadSpecifiers:*(a1 + 32)];
}

- (void)reloadSpecifiers
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained settingsControllerRequestsReloadSpecifiers:self];
}

- (void)showController:(id)controller animate:(BOOL)animate
{
  animateCopy = animate;
  v15 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained settingsController:self requestsForcedPresentViewController:controllerCopy animated:animateCopy completion:0];
    }

    else
    {
      [WeakRetained settingsController:self requestsPresentViewController:controllerCopy animated:animateCopy completion:0];
    }
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218498;
      selfCopy = self;
      v11 = 2048;
      v12 = controllerCopy;
      v13 = 2112;
      v14 = controllerCopy;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKPassbookSettingsController (%p): dropping request to show view controller (%p): %@", &v9, 0x20u);
    }
  }
}

- (PKPassbookSettingsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end