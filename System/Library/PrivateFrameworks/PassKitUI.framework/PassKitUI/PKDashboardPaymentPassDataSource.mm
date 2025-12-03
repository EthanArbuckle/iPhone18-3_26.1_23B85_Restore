@interface PKDashboardPaymentPassDataSource
- ($65C3FA8A572F9D8A414E710B16373297)_peerPaymentDashboardCondition;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)_dataSourceIndicesForIndexPath:(SEL)path;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)_dataSourceIndicesForIndexSection:(SEL)section;
- (BOOL)_accountItemTypeEnabled:(unint64_t)enabled;
- (BOOL)_balanceSectionHasFooter;
- (BOOL)_canDisplayBalance;
- (BOOL)_canShowTransactions;
- (BOOL)_creditAccountItemTypeEnabled:(unint64_t)enabled;
- (BOOL)_hasPassPersonalized;
- (BOOL)_hasPassWithSupportedCardType;
- (BOOL)_isBankConnectPassReady;
- (BOOL)_isDisclosureSectionChangedWithPreviousAccount:(id)account previousPass:(id)pass;
- (BOOL)_isExistingRecurringPeerPayment:(id)payment;
- (BOOL)_isShowingSetUpMessage;
- (BOOL)_passAvailableForAMPEnrollment;
- (BOOL)_shouldPaymentMessageAppear:(id)appear;
- (BOOL)_shouldShowGroupRequestTrackingForPendingRequest:(id)request;
- (BOOL)_topUpEnabled;
- (BOOL)canDeleteItem:(id)item;
- (BOOL)canDisplayPeerPaymentBalanceModule;
- (BOOL)hasAssociatedPaymentRewardsBalance;
- (BOOL)hasBankConnectAccountBalance;
- (BOOL)isBankConnectLinked;
- (BOOL)isBankConnectSupported;
- (BOOL)isEligibleForPersonalizedInsights;
- (BOOL)isGroupInTheCurrentYear:(id)year;
- (BOOL)performPrecursorPassAction;
- (BOOL)shouldShowRewardsBalanceSection;
- (BOOL)supportsBankConnectTransactions;
- (PKDashboardDataSourceDelegate)delegate;
- (PKDashboardPassGroupViewController)viewController;
- (PKDashboardPaymentPassDataSource)initWithGroupView:(id)view context:(id)context;
- (PKDashboardPaymentPassDataSourceDelegate)customDelegate;
- (id)_cardSharingEducationMessages;
- (id)_contactResolver;
- (id)_createConnectedMessageWithInstitution:(id)institution;
- (id)_createMismatchedAccountMessageWithInstitution:(id)institution withPreviousConsentUUID:(id)d;
- (id)_createReconsentMessageWithInstitution:(id)institution withPreviousConsentUUID:(id)d;
- (id)_createSetupMessageWithInstitution:(id)institution;
- (id)_createTermsAndConditionsUpdateMessageWithTermsAndConditions:(id)conditions;
- (id)_deletablePaymentTransactionForItem:(id)item;
- (id)_downloadMessageIconURLAndReloadIfNecessary:(id)necessary;
- (id)_enabledBankConnectAccountItemTypes;
- (id)_fetchOpenSavingsAccount;
- (id)_formattedDateStringForDate:(id)date;
- (id)_lastPhysicalCardMessageDateKeyForPhysicalCardIdentifier:(id)identifier;
- (id)_messageCachedIconForPass:(id)pass useNotificationIcon:(BOOL)icon;
- (id)_messageCachedImageWithIdentifier:(id)identifier imageProvider:(id)provider;
- (id)_messageCachedRawImageForPass:(id)pass;
- (id)_messageForAMPEnrollment;
- (id)_messageForAccountPendingFamilyMembers;
- (id)_messageForAutoReload;
- (id)_messageForBroadwayDiscoverability;
- (id)_messageForDeviceAssessmentEducation;
- (id)_messageForErrorCode:(unint64_t)code;
- (id)_messageForExpressEducation;
- (id)_messageForFirstMonthCoOwners;
- (id)_messageForHomeAccessRestricted;
- (id)_messageForPaymentApplicationStatus;
- (id)_messageForPaymentInformationEventExtensionInstallation;
- (id)_messageForPeerPaymentAssociatedAccountLockedAccount;
- (id)_messageForPeerPaymentAssociatedAccountPending;
- (id)_messageForPeerPaymentAssociatedAccountStateChangedForSecurityReasons;
- (id)_messageForPeerPaymentLockedAccountByAssociatedAccount;
- (id)_messageForPersonWithAmount:(id)amount withHeuristicIds:(id)ids andCurrencyCode:(id)code;
- (id)_messageForRangingSuspendedPass;
- (id)_messageForSessionActive;
- (id)_messageForSetUpVirtualCardWithFeatureIdentifier:(unint64_t)identifier;
- (id)_messageForVirtualCardEnabledWithFeatureIdentifier:(unint64_t)identifier;
- (id)_messageIdentifierForRecurringPayment:(id)payment;
- (id)_messageImageWithName:(id)name extension:(id)extension;
- (id)_messagesForAccountUserInvitations;
- (id)_messagesForAccountUserSetupCashForFamily;
- (id)_messagesForInstallmentPlans;
- (id)_messagesForLockedCardParticipants;
- (id)_messagesForPeerPaymentPendingRequests;
- (id)_messagesForPhysicalCard;
- (id)_messagesForPhysicalCardExpiration;
- (id)_messagesToOrderPhysicalCardForUnderageParticipants;
- (id)_mismatchedAccountImageWithInstitutionImage:(id)image institutionIdentifier:(id)identifier;
- (id)_peerPaymentAccountStatusMessage;
- (id)_physicalCardMessageIdentifierFromIdentifier:(id)identifier physicalCard:(id)card;
- (id)_recipientNameForAddress:(id)address;
- (id)_replaceDashboardMessage:(id)message placeholder:(id)placeholder replacement:(id)replacement;
- (id)_replaceDashboardMessagePlaceholders:(id)placeholders;
- (id)_userLegalAgreementDashboardMessage;
- (id)accountItemAtIndex:(unint64_t)index;
- (id)appleBalanceAccountItem;
- (id)dashboardRewardsBalanceItem;
- (id)deviceTapAmountEntryViewControllerWithInitialAmount:(id)amount initialMemo:(id)memo dismissAction:(id)action;
- (id)externalActionContent;
- (id)footerTextItemForSection:(unint64_t)section;
- (id)getPassProductType;
- (id)groupItemForTransactionGroup:(id)group;
- (id)itemAtIndexPath:(id)path;
- (id)messageForSavingsAccountFDIC;
- (id)messagesForSavingsAccountStatus;
- (id)paymentTransactionItemForPayment:(id)payment;
- (id)paymentTransactionItemForPendingRequest:(id)request;
- (id)paymentTransactionItemForTransaction:(id)transaction;
- (id)peerPaymentBalanceItem;
- (id)recurringPaymentDashboardMessages;
- (id)revokingAccessMessage;
- (id)titleForSection:(unint64_t)section;
- (id)upcomingRecurringPeerPaymentItemAtIndex:(unint64_t)index;
- (int64_t)_numberOfBalanceDashboardItems;
- (int64_t)numberOfAppleBalanceBalanceDashboardItems;
- (unint64_t)_creditAccountItemTypeForItemIndex:(unint64_t)index;
- (unint64_t)_passFeature;
- (unint64_t)bankConnectAccountItemForItemIndex:(unint64_t)index;
- (unint64_t)firstSectionIndexForSectionIdentifier:(unint64_t)identifier;
- (unint64_t)numberOfAccounts;
- (unint64_t)numberOfBankConnectDashboardItems;
- (unint64_t)numberOfItemsInSection:(unint64_t)section;
- (unint64_t)numberOfSections;
- (unint64_t)numberOfUpcomingRecurringPeerPayments;
- (void)_addToAMPButtonTappedForPass:(id)pass;
- (void)_applyMovesFromDiff:(id)diff;
- (void)_applyReloadsFromDiff:(id)diff;
- (void)_authorizeInstitution:(id)institution;
- (void)_beginReportingIfNecessary;
- (void)_calculateDiffAndUpdateWithTransactionGroups:(id)groups;
- (void)_calculateDiffAndUpdateWithTransactions:(id)transactions;
- (void)_cancelExpirationTimerIfNeeded;
- (void)_disagreeTerms;
- (void)_dismissMessageForRecurringPayment:(id)payment;
- (void)_dismissRecurringPeerPaymentSuggestionsWithIdentifiers:(id)identifiers dismissalType:(unint64_t)type;
- (void)_fetchAMPEnrollmentEligibility;
- (void)_fetchAMPEnrollmentIconIfNeeded:(id)needed;
- (void)_fetchBankConnectTransactions;
- (void)_fetchMerchantForAuxiliarySections:(id)sections pass:(id)pass completion:(id)completion;
- (void)_hideBankConnectMessageAndReloadIfNeeded;
- (void)_hideTransactionGroups;
- (void)_loadMessages;
- (void)_localeDidChangeNotification:(id)notification;
- (void)_lostModeButtonTapped;
- (void)_messageForEnableNotificationsWithCompletion:(id)completion;
- (void)_messageForInterestChargeWithCompletion:(id)completion;
- (void)_messageForPassInconsistencyWithCompletion:(id)completion;
- (void)_messageForPaymentFailedWithCompletion:(id)completion;
- (void)_messageForPeerPaymentIdentityVerificationForRewardsWithCompletion:(id)completion;
- (void)_messageForPeerPaymentRewardsRedemptionWithCompletion:(id)completion;
- (void)_messageForPrecursorPassUpgradeWithController:(id)controller completion:(id)completion;
- (void)_messageForUnusableIdentityPassWithCompletion:(id)completion;
- (void)_messageFromPaymentServiceSuppressingPassStateChanges:(BOOL)changes completion:(id)completion;
- (void)_messageIfUnderlyingCredentialIsLockedOutWithCompletion:(id)completion;
- (void)_messagesForAccountStatusWithCompletion:(id)completion;
- (void)_monthlyTransactionGroupsWithCompletion:(id)completion;
- (void)_peerPaymentAccountChanged:(id)changed;
- (void)_peerPaymentResolutionTappedWithResolution:(unint64_t)resolution;
- (void)_pendingRequestActionButtonPressedWithRequest:(id)request;
- (void)_performReloadTransitSection;
- (void)_presentAboutClosedAccounts;
- (void)_presentAccountResolution:(unint64_t)resolution forBusinessChatContext:(id)context completion:(id)completion;
- (void)_presentAccountUserDetails:(id)details;
- (void)_presentAccountUserInvitation:(id)invitation;
- (void)_presentActivatePhysicalCard:(id)card accountUser:(id)user;
- (void)_presentApplCashFamilySetupForFamilyMember:(id)member;
- (void)_presentBalanceDetails;
- (void)_presentCardNumbers;
- (void)_presentCreateAccountUserInvitation;
- (void)_presentDetailsForRecurringPayment:(id)payment;
- (void)_presentInboxMessage:(id)message;
- (void)_presentLegalAgreement:(id)agreement userConsented:(id)consented;
- (void)_presentPassDetailsWithAction:(unint64_t)action;
- (void)_presentPassWithPassUniqueIdentifier:(id)identifier;
- (void)_presentPaymentOfferInstallmentSelectionForRecord:(id)record paymentOffersController:(id)controller installmentCriteria:(id)criteria completion:(id)completion;
- (void)_presentPaymentPassDetailsWithCompletion:(id)completion;
- (void)_presentPrecursorActionFlowWithController:(id)controller;
- (void)_presentRestrictedGuestAccessSchedule;
- (void)_reconsentInstitution:(id)institution withPreviousConsentUUID:(id)d;
- (void)_recurringPeerPaymentSuggestionsWithCompletion:(id)completion;
- (void)_refetchBalanceAndTransactionsForInstitution:(id)institution;
- (void)_refreshTransactionsSection;
- (void)_reloadBalance;
- (void)_reloadBankConnectConnectedMessageIfNeeded;
- (void)_reloadMessagesWithReason:(id)reason;
- (void)_reloadTiles:(id)tiles passUniqueIdentifier:(id)identifier;
- (void)_reloadTransactionGrouping;
- (void)_reportDashboardMessageStateChangeForMessageIdentifier:(id)identifier;
- (void)_scheduleExpirationTimerForCommutePlans:(id)plans;
- (void)_setBankConnectMessage:(id)message;
- (void)_setPassStateProvider:(id)provider;
- (void)_setupSpendingSummaryDataProviderIfNeededForInstitution:(id)institution account:(id)account consentStatus:(unint64_t)status;
- (void)_showBankConnectMessage:(id)message forInstitution:(id)institution shouldUseInstitutionLogo:(BOOL)logo forceUpdate:(BOOL)update;
- (void)_showBankConnectMessageIfNeeded;
- (void)_showTermsAndConditionsError;
- (void)_startRefetchingData;
- (void)_startTransactionsLoadingMessageTimer;
- (void)_udpdateInternalStateForConfirmationRecord:(id)record paymentHash:(id)hash;
- (void)_updateAccountEnhancedMerchants;
- (void)_updateAccountPromotions;
- (void)_updateAccountRewardsDataIfNecessary;
- (void)_updateAccounts:(id)accounts;
- (void)_updateBalanceAndPreventReload:(BOOL)reload;
- (void)_updateCanShowPeerPaymentRecurringPayments:(BOOL)payments;
- (void)_updateRewardsBalanceItem;
- (void)_updateSearchAvailability;
- (void)_updateTransactionSourceCollection;
- (void)_updateTransactionsTimer;
- (void)_updateTransitBalanceProperties:(id)properties dynamicBalances:(id)balances dynamicPlans:(id)plans;
- (void)_updateWithFamilyCollection:(id)collection;
- (void)_updateWithHomeKitHasHomeAccessSchedule:(BOOL)schedule homeIdentifier:(id)identifier isHomeAccessRestricted:(BOOL)restricted;
- (void)_updateWithTiles:(id)tiles;
- (void)_updateWithTransactionGroups:(id)groups;
- (void)_verificationButtonTapped;
- (void)_yearlyTransactionGroupsWithCompletion:(id)completion;
- (void)accountAdded:(id)added;
- (void)accountChanged:(id)changed;
- (void)accountRemoved:(id)removed;
- (void)accountServiceAccountResolutionController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated;
- (void)accountUsersChanged:(id)changed forAccountIdentifier:(id)identifier;
- (void)autoReloadSetupController:(id)controller requestsDismissViewController:(id)viewController;
- (void)autoReloadSetupController:(id)controller requestsPresentViewController:(id)viewController;
- (void)bankConnectAccountDidChange:(id)change;
- (void)bankConnectConsentStatusDidChange:(unint64_t)change;
- (void)clearBankConnectData;
- (void)contactIssuerHelper:(id)helper didRequestDismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)contactIssuerHelper:(id)helper didRequestPresentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)credentialIdentifier:(id)identifier paymentApplicationIdentifier:(id)applicationIdentifier secureElementIdentifier:(id)elementIdentifier didUpdateRangingSuspensionReasons:(unint64_t)reasons;
- (void)creditRecoveryPaymentPlansChangedForAccountIdentifier:(id)identifier;
- (void)dashboardMessageForTransactionHistoryDisabled:(id)disabled;
- (void)dealloc;
- (void)deleteItem:(id)item completionHandler:(id)handler;
- (void)didRemoveAppleBalancePromotionWithUniqueIdentifier:(id)identifier forAccountIdentifier:(id)accountIdentifier;
- (void)didUpdateAppleBalancePromotion:(id)promotion forAccountIdentifier:(id)identifier;
- (void)didUpdateFamilyMembers:(id)members;
- (void)didUpdateLatestTransactions:(id)transactions monthlyTransactionGroups:(id)groups yearlyTransactionGroups:(id)transactionGroups;
- (void)discoveryService:(id)service dialogRequestsChangedForPlacement:(id)placement;
- (void)dismissPendingRequestDashboardMessageWithRequest:(id)request;
- (void)executeAfterContentIsLoaded:(id)loaded;
- (void)executeEngagementActionForURL:(id)l;
- (void)featureApplicationAdded:(id)added;
- (void)featureApplicationChanged:(id)changed;
- (void)featureApplicationRemoved:(id)removed;
- (void)foregroundActiveArbiter:(id)arbiter didUpdateForegroundActiveState:(id)state;
- (void)freezeContentLoaded;
- (void)groupView:(id)view frontmostPassViewDidChange:(id)change withContext:(id)context;
- (void)inboxDataSourceDidUpdateInboxMessages:(id)messages;
- (void)invalidatedSpendingSummariesOfType:(unint64_t)type;
- (void)invalidatedSpendingSummaryOfType:(unint64_t)type startingWithDate:(id)date;
- (void)invalidatedSummariesAvailable;
- (void)issuerInstallmentDashboardMessagesWithCompletion:(id)completion;
- (void)loadSummariesWithForceReload:(BOOL)reload;
- (void)messageForSavingsRewardsRedemptionWithCompletion:(id)completion;
- (void)openDeviceAssessmentEducationLearnMore;
- (void)passStateProvider:(id)provider didUpdatePassState:(id)state;
- (void)passWithUniqueIdentifier:(id)identifier didUpdateTiles:(id)tiles forContext:(int64_t)context;
- (void)paymentOfferConfirmationRecordChanged:(id)changed forTransactionWithPaymentHash:(id)hash;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableMessageService:(BOOL)service;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveMessage:(id)message;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceivePlanUpdate:(id)update;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties;
- (void)peerPaymentAccountResolutionController:(id)controller requestsDismissCurrentViewControllerAnimated:(BOOL)animated;
- (void)peerPaymentAccountResolutionController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated;
- (void)pendingRequestsChanged;
- (void)physicalCardsChanged:(id)changed forAccountIdentifier:(id)identifier;
- (void)recurringPaymentsChanged;
- (void)reloadAccountPendingMembersWithNewMembers:(id)members;
- (void)reloadAccountUserInvitationsWithNewAccountUserInvitations:(id)invitations;
- (void)reloadAccountUsersWithNewAccountUserCollection:(id)collection;
- (void)reloadAccountWithNewAccount:(id)account;
- (void)reloadAccounts;
- (void)reloadAllContent;
- (void)reloadAppleBalance;
- (void)reloadAssociatedPaymentRewardsBalance;
- (void)reloadAuxiliaryItems;
- (void)reloadBankConnectData;
- (void)reloadCreditRecoveryPaymentPlans;
- (void)reloadDialogRequests;
- (void)reloadDisclosuresSectionIfNeeded;
- (void)reloadFamilyCollection;
- (void)reloadFrontmostPass;
- (void)reloadHomeKitRestrictedGuestAccessState;
- (void)reloadMessagesWithReason:(id)reason;
- (void)reloadPeerPaymentPendingRequestsWithCompletion:(id)completion;
- (void)reloadPhysicalCardsWithNewPhysicalCards:(id)cards;
- (void)reloadRecurringPeerPaymentsWithCompletion:(id)completion;
- (void)reloadScheduledPayments;
- (void)reloadSecondaryMessages;
- (void)reloadTiles;
- (void)reloadTransactionGroups;
- (void)reloadTransactionsWithSummariesReload:(BOOL)reload;
- (void)reloadTransitSection;
- (void)resetAssociatedPaymentRewardsBalanceIfNeeded;
- (void)setTransactions:(id)transactions;
- (void)sharesDidUpdateWithPaymentPassWithUniqueIdentifier:(id)identifier;
- (void)transactionsChanged:(id)changed;
- (void)updateContentIsLoaded;
- (void)updateWithBankConnectAccount:(id)account consentStatus:(unint64_t)status institution:(id)institution;
- (void)updateWithBlock:(id)block andDiff:(id)diff;
- (void)updateWithTransactions:(id)transactions;
- (void)viewControllerDidCancelSetupFlow:(id)flow;
- (void)viewControllerDidTerminateSetupFlow:(id)flow;
- (void)virtualCardEnrollmentViewController:(id)controller didCompleteWithSuccess:(BOOL)success;
- (void)visibilityDidChangeToState:(unsigned __int8)state;
@end

@implementation PKDashboardPaymentPassDataSource

- (id)appleBalanceAccountItem
{
  v3 = objc_alloc_init(PKDashboardBalanceItem);
  account = [(PKDashboardPaymentPassDataSource *)self account];
  appleBalanceDetails = [account appleBalanceDetails];

  accountSummary = [appleBalanceDetails accountSummary];
  currentBalance = [accountSummary currentBalance];
  currencyCode = [appleBalanceDetails currencyCode];
  v9 = PKCurrencyAmountMake();

  formattedStringValue = [v9 formattedStringValue];
  [(PKDashboardBalanceItem *)v3 setBalance:formattedStringValue];

  v11 = PKLocalizedAppleBalanceString(&cfstr_PassBalanceTit.isa);
  [(PKDashboardBalanceItem *)v3 setTitle:v11];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(PKDashboardBalanceItem *)v3 setTitleColor:labelColor];

  v13 = PKLocalizedAppleBalanceString(&cfstr_PassAddMoneyBu.isa);
  [(PKDashboardBalanceItem *)v3 setTopUpTitle:v13];

  objc_initWeak(&location, self);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __73__PKDashboardPaymentPassDataSource_AppleBalance__appleBalanceAccountItem__block_invoke;
  v18 = &unk_1E8010998;
  objc_copyWeak(&v19, &location);
  [(PKDashboardBalanceItem *)v3 setTopUpAction:&v15];
  [(PKDashboardBalanceItem *)v3 setTopUpEnabled:[(PKDashboardPaymentPassDataSource *)self _topUpEnabled:v15]];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v3;
}

void __73__PKDashboardPaymentPassDataSource_AppleBalance__appleBalanceAccountItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained viewController];
    [(PKDashboardPassGroupViewController *)v2 presentAddMoneyAppleBalance];

    WeakRetained = v3;
  }
}

- (BOOL)_topUpEnabled
{
  account = [(PKDashboardPaymentPassDataSource *)self account];
  if ([account supportsTopUp])
  {
    supportsAMPTopUp = 1;
  }

  else
  {
    account2 = [(PKDashboardPaymentPassDataSource *)self account];
    supportsAMPTopUp = [account2 supportsAMPTopUp];
  }

  return supportsAMPTopUp;
}

- (int64_t)numberOfAppleBalanceBalanceDashboardItems
{
  account = [(PKDashboardPaymentPassDataSource *)self account];
  pass = [(PKDashboardPaymentPassDataSource *)self pass];
  if (PKCanShowAppleBalanceTopUpOptions())
  {
    _topUpEnabled = [(PKDashboardPaymentPassDataSource *)self _topUpEnabled];
  }

  else
  {
    _topUpEnabled = 0;
  }

  return _topUpEnabled;
}

- (void)reloadAppleBalance
{
  if ([(PKDashboardPaymentPassDataSource *)self _isAppleBalancePass])
  {
    account = [(PKDashboardPaymentPassDataSource *)self account];
    appleBalanceDetails = [account appleBalanceDetails];

    accountSummary = [appleBalanceDetails accountSummary];
    currentBalance = [accountSummary currentBalance];
    currencyCode = [appleBalanceDetails currencyCode];
    v7 = PKCurrencyAmountMake();

    lastUpdatedBalance = [(PKDashboardPaymentPassDataSource *)self lastUpdatedBalance];
    LOBYTE(currentBalance) = [v7 isEqual:lastUpdatedBalance];

    if ((currentBalance & 1) == 0)
    {
      [(PKDashboardPaymentPassDataSource *)self setLastUpdatedBalance:v7];
      [(PKDashboardPaymentPassDataSource *)self _updateBalance];
    }

    appleBalanceAddMoneyUIManager = [(PKDashboardPaymentPassDataSource *)self appleBalanceAddMoneyUIManager];

    if (!appleBalanceAddMoneyUIManager)
    {
      v10 = [PKAppleBalanceAddMoneyUIManager alloc];
      account2 = [(PKDashboardPaymentPassDataSource *)self account];
      v12 = [(PKAppleBalanceAddMoneyUIManager *)v10 initWithAccount:account2];

      [(PKDashboardPaymentPassDataSource *)self setAppleBalanceAddMoneyUIManager:v12];
    }

    accountService = [(PKDashboardPaymentPassDataSource *)self accountService];
    account3 = [(PKDashboardPaymentPassDataSource *)self account];
    accountIdentifier = [account3 accountIdentifier];
    [accountService appleBalancePromotionForAccountWithIdentifier:accountIdentifier completion:&__block_literal_global_32];
  }
}

- (BOOL)shouldShowRewardsBalanceSection
{
  if ([(PKDashboardPaymentPassDataSource *)self hasAssociatedPaymentRewardsBalance])
  {
    paymentOffersController = [(PKDashboardPaymentPassDataSource *)self paymentOffersController];
    pass = [(PKDashboardPaymentPassDataSource *)self pass];
    uniqueID = [pass uniqueID];
    v6 = [paymentOffersController paymentOfferCriteriaForPassUniqueID:uniqueID];
    v7 = [v6 pk_firstObjectPassingTest:&__block_literal_global_53];

    if (v7)
    {
      v8 = [v7 supportsInstorePrePurchase] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)hasAssociatedPaymentRewardsBalance
{
  associatedPaymentRewardsBalance = [(PKDashboardPaymentPassDataSource *)self associatedPaymentRewardsBalance];
  v3 = associatedPaymentRewardsBalance != 0;

  return v3;
}

- (id)dashboardRewardsBalanceItem
{
  associatedPaymentRewardsBalance = [(PKDashboardPaymentPassDataSource *)self associatedPaymentRewardsBalance];
  pass = [(PKDashboardPaymentPassDataSource *)self pass];
  v5 = pass;
  v6 = 0;
  if (associatedPaymentRewardsBalance && pass)
  {
    transactionSourceCollection = [(PKDashboardPaymentPassDataSource *)self transactionSourceCollection];
    v8 = [PKDashboardRewardsBalanceItem alloc];
    uniqueID = [v5 uniqueID];
    transactionSourceIdentifiers = [transactionSourceCollection transactionSourceIdentifiers];
    v6 = [(PKDashboardRewardsBalanceItem *)v8 initWithPaymentRewardsBalance:associatedPaymentRewardsBalance passUniqueIdentifier:uniqueID transactionSourceIdentifiers:transactionSourceIdentifiers];
  }

  return v6;
}

- (void)reloadAssociatedPaymentRewardsBalance
{
  supportsPaymentRewardsBalance = [(PKDashboardPaymentPassDataSource *)self supportsPaymentRewardsBalance];
  _hasPassPersonalized = [(PKDashboardPaymentPassDataSource *)self _hasPassPersonalized];
  _hasPassWithSupportedCardType = [(PKDashboardPaymentPassDataSource *)self _hasPassWithSupportedCardType];
  if (supportsPaymentRewardsBalance != [(PKDashboardPaymentPassDataSource *)self payWithRewardsSupportState])
  {
    [(PKDashboardPaymentPassDataSource *)self setPayWithRewardsSupportState:supportsPaymentRewardsBalance];
    if (_hasPassPersonalized && _hasPassWithSupportedCardType)
    {
      [(PKDashboardPaymentPassDataSource *)self _refreshTransactionsSection];
    }
  }

  if (supportsPaymentRewardsBalance && _hasPassPersonalized && _hasPassWithSupportedCardType)
  {
    pass = [(PKDashboardPaymentPassDataSource *)self pass];
    uniqueID = [pass uniqueID];

    if (uniqueID)
    {
      paymentService = [MEMORY[0x1E69B8DB8] paymentService];
      v9 = [paymentService paymentRewardsBalancesWithPassUniqueIdentifier:uniqueID];
      v10 = __88__PKDashboardPaymentPassDataSource_PaymentOffers__reloadAssociatedPaymentRewardsBalance__block_invoke(v9, v9);

      if (v10)
      {
        associatedPaymentRewardsBalance = [(PKDashboardPaymentPassDataSource *)self associatedPaymentRewardsBalance];
        v12 = [v10 isEqual:associatedPaymentRewardsBalance];

        if ((v12 & 1) == 0)
        {
          [(PKDashboardPaymentPassDataSource *)self setAssociatedPaymentRewardsBalance:v10];
          [(PKDashboardPaymentPassDataSource *)self _updateRewardsBalanceItem];
        }
      }

      associatedPaymentRewardsBalance2 = [(PKDashboardPaymentPassDataSource *)self associatedPaymentRewardsBalance];
      isFresh = [associatedPaymentRewardsBalance2 isFresh];

      if (isFresh)
      {
        v15 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "Associated Payment Rewards Balance is fresh enough, skipping reload", buf, 2u);
        }
      }

      else
      {
        objc_initWeak(buf, self);
        paymentOffersCatalog = [paymentService paymentOffersCatalog];
        v17 = [paymentOffersCatalog criteriaWithType:2 passUniqueID:uniqueID];

        if (v17)
        {
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __88__PKDashboardPaymentPassDataSource_PaymentOffers__reloadAssociatedPaymentRewardsBalance__block_invoke_24;
          v18[3] = &unk_1E8014F40;
          v19 = &__block_literal_global_19;
          objc_copyWeak(&v20, buf);
          [paymentService updatePaymentRewardsBalancesWithPassUniqueIdentifier:uniqueID completion:v18];
          objc_destroyWeak(&v20);
        }

        objc_destroyWeak(buf);
      }
    }

    else
    {
      paymentService = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(paymentService, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1BD026000, paymentService, OS_LOG_TYPE_DEFAULT, "Can't associate rewards balance with no pass", buf, 2u);
      }
    }
  }

  else
  {

    [(PKDashboardPaymentPassDataSource *)self resetAssociatedPaymentRewardsBalanceIfNeeded];
  }
}

id __88__PKDashboardPaymentPassDataSource_PaymentOffers__reloadAssociatedPaymentRewardsBalance__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 pk_firstObjectPassingTest:&__block_literal_global_22_1];
  if (v3 || ![v2 count])
  {
    v4 = v3;
  }

  else
  {
    v4 = [v2 firstObject];
  }

  v5 = v4;

  return v5;
}

uint64_t __88__PKDashboardPaymentPassDataSource_PaymentOffers__reloadAssociatedPaymentRewardsBalance__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isValid])
  {
    v3 = [v2 isRedeemable];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __88__PKDashboardPaymentPassDataSource_PaymentOffers__reloadAssociatedPaymentRewardsBalance__block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Error loading rewards balances, %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = (*(*(a1 + 32) + 16))();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __88__PKDashboardPaymentPassDataSource_PaymentOffers__reloadAssociatedPaymentRewardsBalance__block_invoke_25;
    v10[3] = &unk_1E80110E0;
    objc_copyWeak(&v12, (a1 + 40));
    v11 = v8;
    v9 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], v10);

    objc_destroyWeak(&v12);
  }
}

void __88__PKDashboardPaymentPassDataSource_PaymentOffers__reloadAssociatedPaymentRewardsBalance__block_invoke_25(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAssociatedPaymentRewardsBalance:*(a1 + 32)];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 _updateRewardsBalanceItem];
}

- (void)resetAssociatedPaymentRewardsBalanceIfNeeded
{
  if ([(PKDashboardPaymentPassDataSource *)self hasAssociatedPaymentRewardsBalance])
  {
    [(PKDashboardPaymentPassDataSource *)self setAssociatedPaymentRewardsBalance:0];

    [(PKDashboardPaymentPassDataSource *)self _updateRewardsBalanceItem];
  }
}

- (void)dashboardMessageForTransactionHistoryDisabled:(id)disabled
{
  disabledCopy = disabled;
  if (PKSharedCacheGetBoolForKey() || (-[PKDashboardPaymentPassDataSource pass](self, "pass"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 settings], v5, (v6 & 8) != 0))
  {
    disabledCopy[2](disabledCopy, 0);
  }

  else
  {
    paymentService = [(PKDashboardPaymentPassDataSource *)self paymentService];
    pass = [(PKDashboardPaymentPassDataSource *)self pass];
    uniqueID = [pass uniqueID];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __97__PKDashboardPaymentPassDataSource_PaymentOffers__dashboardMessageForTransactionHistoryDisabled___block_invoke;
    v10[3] = &unk_1E8013FD0;
    v12 = 0;
    v10[4] = self;
    v11 = disabledCopy;
    [paymentService hasEligibleCriteriaForPassUniqueID:uniqueID completion:v10];
  }
}

void __97__PKDashboardPaymentPassDataSource_PaymentOffers__dashboardMessageForTransactionHistoryDisabled___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__PKDashboardPaymentPassDataSource_PaymentOffers__dashboardMessageForTransactionHistoryDisabled___block_invoke_2;
  block[3] = &unk_1E8013FA8;
  v5 = a2;
  v6 = *(a1 + 48);
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __97__PKDashboardPaymentPassDataSource_PaymentOffers__dashboardMessageForTransactionHistoryDisabled___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 48) == 1 && (*(a1 + 49) & 1) == 0)
  {
    v5 = objc_alloc_init(PKDashboardPassMessage);
    [(PKDashboardPassMessage *)v5 setIdentifier:@"MessageIdentifierEnableTransactionHistory"];
    v6 = PKLocalizedPaymentOffersString(&cfstr_PaymentOfferEn.isa);
    [(PKDashboardPassMessage *)v5 setTitle:v6];

    v7 = PKLocalizedPaymentOffersString(&cfstr_PaymentOfferEn_0.isa);
    [(PKDashboardPassMessage *)v5 setMessage:v7];

    v8 = PKLocalizedPaymentOffersString(&cfstr_PaymentOfferEn_1.isa);
    [(PKDashboardPassMessage *)v5 setButtonTitle:v8];

    v9 = *(a1 + 32);
    v10 = [v9 pass];
    v11 = [v9 _messageCachedIconForPass:v10 useNotificationIcon:1];
    [(PKDashboardPassMessage *)v5 setImage:v11];

    objc_initWeak(&location, *(a1 + 32));
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __97__PKDashboardPaymentPassDataSource_PaymentOffers__dashboardMessageForTransactionHistoryDisabled___block_invoke_3;
    v14[3] = &unk_1E8014F68;
    objc_copyWeak(&v15, &location);
    v14[4] = *(a1 + 32);
    [(PKDashboardPassMessage *)v5 setActionOnButtonPress:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __97__PKDashboardPaymentPassDataSource_PaymentOffers__dashboardMessageForTransactionHistoryDisabled___block_invoke_4;
    v12[3] = &unk_1E8010998;
    objc_copyWeak(&v13, &location);
    [(PKDashboardPassMessage *)v5 setActionOnDismiss:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, a3, a4);
}

void __97__PKDashboardPaymentPassDataSource_PaymentOffers__dashboardMessageForTransactionHistoryDisabled___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v14 = WeakRetained;
    v3 = [PKManagePaymentPassNotificationsViewController alloc];
    v4 = [*(a1 + 32) pass];
    v5 = [*(a1 + 32) paymentDataProvider];
    v6 = [*(a1 + 32) peerPaymentAccount];
    v7 = [*(a1 + 32) bankConnectLinkedAccountData];
    v8 = [v7 account];
    v9 = [*(a1 + 32) account];
    v10 = [*(a1 + 32) transactionSourceCollection];
    v11 = [(PKManagePaymentPassNotificationsViewController *)v3 initWithPass:v4 dataProvider:v5 peerPaymentAccount:v6 bankConnectAccount:v8 account:v9 transactionSourceCollection:v10];

    v12 = [v14 viewController];
    v13 = [v12 navigationController];
    [v13 pushViewController:v11 animated:1];

    WeakRetained = v14;
  }
}

void __97__PKDashboardPaymentPassDataSource_PaymentOffers__dashboardMessageForTransactionHistoryDisabled___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    PKSharedCacheSetBoolForKey();
    [v2 reloadMessagesAfterMessageInteraction];
    WeakRetained = v2;
  }
}

- (BOOL)_hasPassPersonalized
{
  pass = [(PKDashboardPaymentPassDataSource *)self pass];
  devicePrimaryPaymentApplication = [pass devicePrimaryPaymentApplication];
  state = [devicePrimaryPaymentApplication state];

  return state == 1;
}

- (BOOL)_hasPassWithSupportedCardType
{
  pass = [(PKDashboardPaymentPassDataSource *)self pass];
  secureElementPass = [pass secureElementPass];
  cardType = [secureElementPass cardType];

  return cardType < 2;
}

- (void)_updateRewardsBalanceItem
{
  v3 = [(PKDashboardPaymentPassDataSource *)self firstSectionIndexForSectionIdentifier:4];
  delegate = [(PKDashboardPaymentPassDataSource *)self delegate];
  v4 = [MEMORY[0x1E696AC90] indexSetWithIndex:v3];
  [delegate reloadSections:v4];
}

- (void)_refreshTransactionsSection
{
  v3 = [(PKDashboardPaymentPassDataSource *)self firstSectionIndexForSectionIdentifier:11];
  delegate = [(PKDashboardPaymentPassDataSource *)self delegate];
  v4 = [MEMORY[0x1E696AC90] indexSetWithIndex:v3];
  [delegate reloadSections:v4];
}

- (id)deviceTapAmountEntryViewControllerWithInitialAmount:(id)amount initialMemo:(id)memo dismissAction:(id)action
{
  actionCopy = action;
  memoCopy = memo;
  amountCopy = amount;
  if (_UISolariumFeatureFlagEnabled())
  {
    nearbyPeerPaymentViewProvider = [[PKNearbyPeerPaymentAmountEntryViewController alloc] initWithInitialAmount:amountCopy initialMemo:memoCopy];

    v12 = [[PKNavigationController alloc] initWithRootViewController:nearbyPeerPaymentViewProvider];
  }

  else
  {
    nearbyPeerPaymentViewProvider = [(PKDashboardPaymentPassDataSource *)self nearbyPeerPaymentViewProvider];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __133__PKDashboardPaymentPassDataSource_NearbyPeerPayment__deviceTapAmountEntryViewControllerWithInitialAmount_initialMemo_dismissAction___block_invoke;
    v14[3] = &unk_1E8012A48;
    v15 = actionCopy;
    v12 = [(PKNearbyPeerPaymentAmountEntryViewController *)nearbyPeerPaymentViewProvider amountEntryViewWithInitialAmount:amountCopy initialMemo:memoCopy dismissAction:v14];

    [(PKNavigationController *)v12 setOverrideUserInterfaceStyle:2];
  }

  return v12;
}

uint64_t __133__PKDashboardPaymentPassDataSource_NearbyPeerPayment__deviceTapAmountEntryViewControllerWithInitialAmount_initialMemo_dismissAction___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1E69B9000];
    v4 = a2;
    v5 = [v3 sharedInstance];
    [v5 presentSenderFlowWithHost:0 userInfo:v4 completion:0];
  }

  v6 = *(*(a1 + 32) + 16);

  return v6();
}

- (unint64_t)numberOfAccounts
{
  accounts = [(PKDashboardPaymentPassDataSource *)self accounts];
  v3 = [accounts count];

  return v3;
}

- (void)reloadAccounts
{
  if ([(PKDashboardPaymentPassDataSource *)self _isCreditPass])
  {
    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = objc_alloc_init(MEMORY[0x1E69B8658]);
    accountsLoaded = [(PKDashboardPaymentPassDataSource *)self accountsLoaded];
    v46[0] = 0;
    v46[1] = v46;
    v46[2] = 0x2020000000;
    v47 = 0;
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x2020000000;
    v45 = 0;
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__PKDashboardPaymentPassDataSource_Accounts__reloadAccounts__block_invoke;
    aBlock[3] = &unk_1E801BA10;
    v7 = v5;
    v38 = v7;
    objc_copyWeak(&v42, &location);
    v8 = mEMORY[0x1E69B8400];
    v39 = v8;
    v41 = v44;
    v9 = v4;
    v40 = v9;
    v10 = _Block_copy(aBlock);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __60__PKDashboardPaymentPassDataSource_Accounts__reloadAccounts__block_invoke_3;
    v31[3] = &unk_1E801BA88;
    v11 = v7;
    v32 = v11;
    v12 = v9;
    v33 = v12;
    selfCopy = self;
    v13 = v8;
    v35 = v13;
    objc_copyWeak(&v36, &location);
    v14 = _Block_copy(v31);
    v10[2](v10, 5);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __60__PKDashboardPaymentPassDataSource_Accounts__reloadAccounts__block_invoke_32;
    v28[3] = &unk_1E80149B8;
    objc_copyWeak(&v30, &location);
    v15 = v12;
    v29 = v15;
    [v11 addOperation:v28];
    v14[2](v14, 5);
    if (!accountsLoaded)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __60__PKDashboardPaymentPassDataSource_Accounts__reloadAccounts__block_invoke_3_35;
      v23[3] = &unk_1E801BB00;
      objc_copyWeak(&v27, &location);
      v25 = v44;
      v24 = v13;
      v26 = v46;
      [v11 addOperation:v23];

      objc_destroyWeak(&v27);
    }

    null = [MEMORY[0x1E695DFB0] null];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __60__PKDashboardPaymentPassDataSource_Accounts__reloadAccounts__block_invoke_39;
    v19[3] = &unk_1E801BB50;
    objc_copyWeak(&v22, &location);
    v17 = v15;
    v20 = v17;
    v21 = v46;
    v18 = [v11 evaluateWithInput:null completion:v19];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v30);

    objc_destroyWeak(&v36);
    objc_destroyWeak(&v42);

    objc_destroyWeak(&location);
    _Block_object_dispose(v44, 8);
    _Block_object_dispose(v46, 8);
  }

  else
  {
    [(PKDashboardPaymentPassDataSource *)self setAccountsLoaded:1];
    if (![(PKDashboardPaymentPassDataSource *)self allContentIsLoaded])
    {

      [(PKDashboardPaymentPassDataSource *)self updateContentIsLoaded];
    }
  }
}

void __60__PKDashboardPaymentPassDataSource_Accounts__reloadAccounts__block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__PKDashboardPaymentPassDataSource_Accounts__reloadAccounts__block_invoke_2;
  v7[3] = &unk_1E801B9E8;
  objc_copyWeak(v10, (a1 + 64));
  v8 = *(a1 + 40);
  v10[1] = a2;
  v6 = *(a1 + 48);
  v5 = v6;
  v9 = v6;
  [v4 addOperation:v7];

  objc_destroyWeak(v10);
}

void __60__PKDashboardPaymentPassDataSource_Accounts__reloadAccounts__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [*(a1 + 32) defaultAccountForFeature:*(a1 + 64)];
  if (v8)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if ([WeakRetained _accountCanBePresented:v8])
  {
    [*(a1 + 40) addObject:v8];
  }

  v6[2](v6, v9, 0);
}

void __60__PKDashboardPaymentPassDataSource_Accounts__reloadAccounts__block_invoke_3(uint64_t a1, void *a2)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__PKDashboardPaymentPassDataSource_Accounts__reloadAccounts__block_invoke_4;
  v8[3] = &unk_1E801BA60;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v12[1] = a2;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  objc_copyWeak(v12, (a1 + 64));
  [v4 addOperation:v8];
  objc_destroyWeak(v12);
}

void __60__PKDashboardPaymentPassDataSource_Accounts__reloadAccounts__block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v27 = a2;
  v7 = a3;
  v8 = a4;
  v28 = v7;
  if ([*(a1 + 32) count])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = *(a1 + 32);
    v10 = [v9 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v10)
    {
      v11 = *v36;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v35 + 1) + 8 * i);
          if ([v13 feature] == *(a1 + 64))
          {
            v14 = [*(a1 + 40) context];
            v15 = [v14 limitServerLoad];

            if (v13 && (!v15 ? (v16 = 300.0) : (v16 = 86400.0), [MEMORY[0x1E695DF00] date], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "lastUpdated"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "timeIntervalSinceDate:", v18), v20 = v19 > v16, v18, v17, v20))
            {
              v21 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = PKFeatureIdentifierToString();
                *buf = 138543362;
                v40 = v22;
                _os_log_impl(&dword_1BD026000, v21, OS_LOG_TYPE_DEFAULT, "Dashboard fetching updating %{public}@ account", buf, 0xCu);
              }

              v23 = *(a1 + 48);
              v24 = [v13 accountIdentifier];
              v29[0] = MEMORY[0x1E69E9820];
              v29[1] = 3221225472;
              v29[2] = __60__PKDashboardPaymentPassDataSource_Accounts__reloadAccounts__block_invoke_30;
              v29[3] = &unk_1E801BA38;
              objc_copyWeak(v34, (a1 + 56));
              v34[1] = *(a1 + 64);
              v30 = *(a1 + 32);
              v31 = v13;
              v33 = v8;
              v32 = v28;
              [v23 updateAccountWithIdentifier:v24 extended:0 completion:v29];

              objc_destroyWeak(v34);
            }

            else
            {
              v25 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                v26 = PKFeatureIdentifierToString();
                *buf = 138543362;
                v40 = v26;
                _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, "Dashboard not updating %{public}@ account", buf, 0xCu);
              }

              (*(v8 + 2))(v8, v28, 0);
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v10);
    }
  }

  else
  {
    (*(v8 + 2))(v8, v7, 0);
  }
}

void __60__PKDashboardPaymentPassDataSource_Accounts__reloadAccounts__block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PKFeatureIdentifierToString();
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Dashboard fetched updating %{public}@ account, with error %{public}@", &v11, 0x16u);
    }

    if (v5 && !v6 && [WeakRetained _accountCanBePresented:v5])
    {
      [*(a1 + 32) removeObject:*(a1 + 40)];
      [*(a1 + 32) addObject:v5];
    }

    v10 = *(*(a1 + 56) + 16);
  }

  else
  {
    v10 = *(*(a1 + 56) + 16);
  }

  v10();
}

void __60__PKDashboardPaymentPassDataSource_Accounts__reloadAccounts__block_invoke_32(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__PKDashboardPaymentPassDataSource_Accounts__reloadAccounts__block_invoke_2_33;
  v11[3] = &unk_1E801BAB0;
  objc_copyWeak(&v15, (a1 + 40));
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v7;
  v12 = v8;
  v9 = v6;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v11);

  objc_destroyWeak(&v15);
}

void __60__PKDashboardPaymentPassDataSource_Accounts__reloadAccounts__block_invoke_2_33(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v2 = [*(a1 + 32) copy];
    [WeakRetained _updateAccounts:v2];
  }

  (*(*(a1 + 48) + 16))();
}

void __60__PKDashboardPaymentPassDataSource_Accounts__reloadAccounts__block_invoke_3_35(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained account];
    if ([v12 feature] == 2)
    {
      v13 = [v12 creditDetails];
      if ([v13 rewardsDestination] == 3)
      {
        v14 = *(*(*(a1 + 40) + 8) + 24);

        if ((v14 & 1) == 0)
        {
          if (PKCheckedForSavingsPresence())
          {
            v9[2](v9, v8, 0);
          }

          else
          {
            v15 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "Card account rewards destination is set to Savings, but no Savings account present, refreshing accounts", buf, 2u);
            }

            v16 = *(a1 + 32);
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __60__PKDashboardPaymentPassDataSource_Accounts__reloadAccounts__block_invoke_36;
            v17[3] = &unk_1E801BAD8;
            objc_copyWeak(&v21, (a1 + 56));
            v20 = *(a1 + 48);
            v19 = v9;
            v18 = v8;
            [v16 updateAccountsWithCompletion:v17];

            objc_destroyWeak(&v21);
          }
        }
      }

      else
      {
      }
    }
  }

  else
  {
    v9[2](v9, v8, 1);
  }
}

void __60__PKDashboardPaymentPassDataSource_Accounts__reloadAccounts__block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Refreshed accounts after missing destination account, with error %@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!v6)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    PKSetCheckedForSavingsPresence();
  }

  (*(*(a1 + 40) + 16))();
}

void __60__PKDashboardPaymentPassDataSource_Accounts__reloadAccounts__block_invoke_39(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PKDashboardPaymentPassDataSource_Accounts__reloadAccounts__block_invoke_2_40;
  block[3] = &unk_1E801BB28;
  objc_copyWeak(&v7, (a1 + 48));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v7);
}

void __60__PKDashboardPaymentPassDataSource_Accounts__reloadAccounts__block_invoke_2_40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = [*(a1 + 32) copy];
    [WeakRetained _updateAccounts:v2];

    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      [WeakRetained reloadAccounts];
    }
  }
}

- (void)_updateAccounts:(id)accounts
{
  v44 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  selfCopy = self;
  accounts = [(PKDashboardPaymentPassDataSource *)self accounts];
  v6 = [accounts count];
  v33 = accountsCopy;
  v29 = accounts;
  if (v6 == [accountsCopy count])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = accounts;
    v32 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v32)
    {
      v31 = *v39;
      while (2)
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v39 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v38 + 1) + 8 * i);
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v9 = v33;
          v10 = [v9 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v35;
LABEL_9:
            v13 = 0;
            while (1)
            {
              if (*v35 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v34 + 1) + 8 * v13);
              accountIdentifier = [v14 accountIdentifier];
              accountIdentifier2 = [v8 accountIdentifier];
              v17 = accountIdentifier;
              v18 = accountIdentifier2;
              v19 = v18;
              if (v17 == v18)
              {
                break;
              }

              if (v17)
              {
                v20 = v18 == 0;
              }

              else
              {
                v20 = 1;
              }

              if (v20)
              {
              }

              else
              {
                v21 = [v17 isEqualToString:v18];

                if (v21)
                {
                  goto LABEL_24;
                }
              }

              if (v11 == ++v13)
              {
                v11 = [v9 countByEnumeratingWithState:&v34 objects:v42 count:16];
                if (v11)
                {
                  goto LABEL_9;
                }

                goto LABEL_22;
              }
            }

LABEL_24:
            v22 = [v14 isContentEqualToAccount:v8];

            if (v22)
            {
              continue;
            }

            v23 = 0;
            goto LABEL_30;
          }

LABEL_22:
        }

        v32 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    v23 = 1;
LABEL_30:
  }

  else
  {
    v23 = 0;
  }

  [(PKDashboardPaymentPassDataSource *)selfCopy setAccountsLoaded:1];
  [(PKDashboardPaymentPassDataSource *)selfCopy setAccounts:v33];
  if ([(PKDashboardPaymentPassDataSource *)selfCopy allContentIsLoaded])
  {
    delegate = [(PKDashboardPaymentPassDataSource *)selfCopy delegate];
    if (delegate)
    {
      v25 = v23;
    }

    else
    {
      v25 = 1;
    }

    if ((v25 & 1) == 0)
    {
      v26 = [(PKDashboardPaymentPassDataSource *)selfCopy firstSectionIndexForSectionIdentifier:5];
      v27 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndex:v26];
      [v27 addIndex:{-[PKDashboardPaymentPassDataSource numberOfSections](selfCopy, "numberOfSections") - 1}];
      [delegate reloadSections:v27];
    }
  }

  else
  {
    [(PKDashboardPaymentPassDataSource *)selfCopy updateContentIsLoaded];
  }
}

- (id)accountItemAtIndex:(unint64_t)index
{
  v5 = [PKDashboardAccountItem alloc];
  accounts = [(PKDashboardPaymentPassDataSource *)self accounts];
  v7 = [accounts objectAtIndex:index];
  pass = [(PKDashboardPaymentPassDataSource *)self pass];
  v9 = [(PKDashboardAccountItem *)v5 initWithAccount:v7 presentingPass:pass];

  return v9;
}

- (id)messagesForSavingsAccountStatus
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  account = [(PKDashboardPaymentPassDataSource *)self account];
  type = [account type];

  if (type == 1)
  {
    if (PKSavingsHasDismissedClosedAccountMessage() == 2)
    {
      v6 = objc_alloc_init(PKDashboardPassMessage);
      [(PKDashboardPassMessage *)v6 setIdentifier:@"savingsAccountClosed"];
      v7 = PKLocalizedFeatureString();
      [(PKDashboardPassMessage *)v6 setTitle:v7];

      v8 = PKLocalizedFeatureString();
      [(PKDashboardPassMessage *)v6 setButtonTitle:v8];

      v9 = objc_alloc(MEMORY[0x1E696AEC0]);
      v10 = [v9 initWithFormat:@"prefs:root=PASSBOOK&path=%@", *MEMORY[0x1E69BC5B0]];
      v11 = [MEMORY[0x1E695DFF8] URLWithString:v10];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __77__PKDashboardPaymentPassDataSource_Accounts__messagesForSavingsAccountStatus__block_invoke;
      v25[3] = &unk_1E80188F0;
      v12 = v11;
      v26 = v12;
      [(PKDashboardPassMessage *)v6 setActionOnButtonPress:v25];
      v13 = PKLocalizedFeatureString();
      [(PKDashboardPassMessage *)v6 setMessage:v13];

      v14 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"Category_Statement" extension:@"pdf"];
      [(PKDashboardPassMessage *)v6 setImage:v14];

      objc_initWeak(&location, self);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __77__PKDashboardPaymentPassDataSource_Accounts__messagesForSavingsAccountStatus__block_invoke_2;
      v22[3] = &unk_1E8010998;
      objc_copyWeak(&v23, &location);
      [(PKDashboardPassMessage *)v6 setActionOnDismiss:v22];
      [v3 addObject:v6];
      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }

    if (PKSavingsHasDismissedPendingApplicationMessage() == 2)
    {
      v15 = objc_alloc_init(PKDashboardPassMessage);
      [(PKDashboardPassMessage *)v15 setIdentifier:@"savingsApplicationPending"];
      v16 = PKLocalizedFeatureString();
      [(PKDashboardPassMessage *)v15 setTitle:v16];

      v17 = PKLocalizedFeatureString();
      [(PKDashboardPassMessage *)v15 setMessage:v17];

      v18 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"SAVINGS_Icon" extension:@"pdf"];
      [(PKDashboardPassMessage *)v15 setImage:v18];

      objc_initWeak(&location, self);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __77__PKDashboardPaymentPassDataSource_Accounts__messagesForSavingsAccountStatus__block_invoke_3;
      v20[3] = &unk_1E8010998;
      objc_copyWeak(&v21, &location);
      [(PKDashboardPassMessage *)v15 setActionOnDismiss:v20];
      [v3 addObject:v15];
      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  return v3;
}

void __77__PKDashboardPaymentPassDataSource_Accounts__messagesForSavingsAccountStatus__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v2 openSensitiveURL:*(a1 + 32) withOptions:0];
}

void __77__PKDashboardPaymentPassDataSource_Accounts__messagesForSavingsAccountStatus__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    PKSavingsSetHasDismissedClosedAccountMessage();
    [v2 reloadMessagesAfterMessageInteraction];
    WeakRetained = v2;
  }
}

void __77__PKDashboardPaymentPassDataSource_Accounts__messagesForSavingsAccountStatus__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    PKSavingsSetHasDismissedPendingApplicationMessage();
    [v2 reloadMessagesAfterMessageInteraction];
    WeakRetained = v2;
  }
}

- (void)messageForSavingsRewardsRedemptionWithCompletion:(id)completion
{
  completionCopy = completion;
  account = [(PKDashboardPaymentPassDataSource *)self account];
  creditDetails = [account creditDetails];
  rewardsDestination = [creditDetails rewardsDestination];

  if ([account type] == 1 && rewardsDestination == 3 && !PKSavingsHasDismissedFixRewardsMessage())
  {
    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    accountIdentifier = [account accountIdentifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __95__PKDashboardPaymentPassDataSource_Accounts__messageForSavingsRewardsRedemptionWithCompletion___block_invoke;
    v10[3] = &unk_1E801BB78;
    v10[4] = self;
    v11 = completionCopy;
    [mEMORY[0x1E69B8400] lastRedemptionEventToDestination:3 forAccountIdentifier:accountIdentifier altDSID:0 completion:v10];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __95__PKDashboardPaymentPassDataSource_Accounts__messageForSavingsRewardsRedemptionWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 items];
  v8 = [v7 anyObject];

  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v8 status], v9 = objc_claimAutoreleasedReturnValue(), v9 == @"success") || (v10 = v9) != 0 && (v11 = -[__CFString isEqualToString:](v9, "isEqualToString:", @"success"), v10, v10, v11))
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, 0);
    }
  }

  else
  {
    v13 = [*(a1 + 32) _fetchOpenSavingsAccount];
    [v13 feature];
    if ([v13 state] == 2 || objc_msgSend(v13, "state") == 3)
    {
      v14 = PKLocalizedFeatureString();
      v15 = PKLocalizedFeatureString();
      v16 = PKLocalizedFeatureString();
      v17 = objc_alloc_init(PKDashboardPassMessage);
      [(PKDashboardPassMessage *)v17 setTitle:v14];
      [(PKDashboardPassMessage *)v17 setMessage:v15];
      [(PKDashboardPassMessage *)v17 setButtonTitle:v16];
      [(PKDashboardPassMessage *)v17 setIdentifier:@"savingsFixRewards"];
      v18 = [*(a1 + 32) _messageImageWithName:@"DailyCashIcon" extension:@"pdf"];
      [(PKDashboardPassMessage *)v17 setImage:v18];

      [(PKDashboardPassMessage *)v17 setShowDisclosure:1];
      objc_initWeak(&location, *(a1 + 32));
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __95__PKDashboardPaymentPassDataSource_Accounts__messageForSavingsRewardsRedemptionWithCompletion___block_invoke_2;
      v24[3] = &unk_1E8010998;
      objc_copyWeak(&v25, &location);
      [(PKDashboardPassMessage *)v17 setActionOnDismiss:v24];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __95__PKDashboardPaymentPassDataSource_Accounts__messageForSavingsRewardsRedemptionWithCompletion___block_invoke_3;
      v21[3] = &unk_1E8014F68;
      objc_copyWeak(&v23, &location);
      v22 = v13;
      [(PKDashboardPassMessage *)v17 setActionOnButtonPress:v21];
      v19 = *(a1 + 40);
      if (v19)
      {
        (*(v19 + 16))(v19, v17);
      }

      objc_destroyWeak(&v23);
      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }

    else
    {
      v20 = *(a1 + 40);
      if (v20)
      {
        (*(v20 + 16))(v20, 0);
      }
    }
  }
}

void __95__PKDashboardPaymentPassDataSource_Accounts__messageForSavingsRewardsRedemptionWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    PKSavingsSetHasDismissedFixRewardsMessage();
    [v2 reloadMessagesAfterMessageInteraction];
    WeakRetained = v2;
  }
}

void __95__PKDashboardPaymentPassDataSource_Accounts__messageForSavingsRewardsRedemptionWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [objc_alloc(MEMORY[0x1E69B8418]) initWithOtherTopicForAccount:*(a1 + 32)];
    v4 = objc_alloc_init(PKBusinessChatController);
    v5 = [[PKBusinessChatAccountContext alloc] initWithAccount:*(a1 + 32) topic:v3];
    [(PKBusinessChatController *)v4 openBusinessChatWithContext:v5 completion:0];
    PKSavingsSetHasDismissedFixRewardsMessage();
    [v6 reloadMessagesAfterMessageInteraction];

    WeakRetained = v6;
  }
}

- (id)messageForSavingsAccountFDIC
{
  _fetchOpenSavingsAccount = [(PKDashboardPaymentPassDataSource *)self _fetchOpenSavingsAccount];
  accountIdentifier = [_fetchOpenSavingsAccount accountIdentifier];
  account = [(PKDashboardPaymentPassDataSource *)self account];
  type = [account type];
  if (_fetchOpenSavingsAccount && type == 1)
  {
    HasDismissedFDICMessage = PKSavingsHasDismissedFDICMessage();

    if (HasDismissedFDICMessage != 1)
    {
      v8 = objc_alloc_init(PKDashboardPassMessage);
      [(PKDashboardPassMessage *)v8 setIdentifier:@"savingsFDIC"];
      v9 = PKLocalizedFeatureString();
      [(PKDashboardPassMessage *)v8 setTitle:v9];

      v10 = PKLocalizedFeatureString();
      [(PKDashboardPassMessage *)v8 setMessage:v10];

      v11 = PKLocalizedFeatureString();
      [(PKDashboardPassMessage *)v8 setButtonTitle:v11];

      v12 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"SAVINGS_Icon" extension:@"pdf"];
      [(PKDashboardPassMessage *)v8 setImage:v12];

      objc_initWeak(&location, self);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __74__PKDashboardPaymentPassDataSource_Accounts__messageForSavingsAccountFDIC__block_invoke;
      v16[3] = &unk_1E80110E0;
      objc_copyWeak(&v18, &location);
      v17 = accountIdentifier;
      [(PKDashboardPassMessage *)v8 setActionOnDismiss:v16];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __74__PKDashboardPaymentPassDataSource_Accounts__messageForSavingsAccountFDIC__block_invoke_2;
      v14[3] = &unk_1E8015548;
      objc_copyWeak(&v15, &location);
      [(PKDashboardPassMessage *)v8 setActionOnButtonPress:v14];
      objc_destroyWeak(&v15);

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
      goto LABEL_7;
    }
  }

  else
  {
  }

  v8 = 0;
LABEL_7:

  return v8;
}

void __74__PKDashboardPaymentPassDataSource_Accounts__messageForSavingsAccountFDIC__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    PKSavingsSetHasDismissedFDICMessage();
    [v2 reloadMessagesAfterMessageInteraction];
    WeakRetained = v2;
  }
}

void __74__PKDashboardPaymentPassDataSource_Accounts__messageForSavingsAccountFDIC__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/ht213451?cid=mc-ols-applecard-article_ht213451-wallet_ui-09142022"];
    PKOpenURL();

    WeakRetained = v3;
  }
}

- (id)_fetchOpenSavingsAccount
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  accounts = [(PKDashboardPaymentPassDataSource *)self accounts];
  v3 = [accounts countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(accounts);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 type] == 4 && (objc_msgSend(v6, "state") - 1) < 3)
        {
          v3 = v6;
          goto LABEL_12;
        }
      }

      v3 = [accounts countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (unint64_t)numberOfUpcomingRecurringPeerPayments
{
  if (![(PKDashboardPaymentPassDataSource *)self canShowPeerPaymentRecurringPayments])
  {
    return 0;
  }

  upcomingRecurringPeerPayments = [(PKDashboardPaymentPassDataSource *)self upcomingRecurringPeerPayments];
  v4 = [upcomingRecurringPeerPayments count];

  return v4;
}

- (id)upcomingRecurringPeerPaymentItemAtIndex:(unint64_t)index
{
  upcomingRecurringPeerPayments = [(PKDashboardPaymentPassDataSource *)self upcomingRecurringPeerPayments];
  v6 = [upcomingRecurringPeerPayments count];

  if (v6 <= index)
  {
    v9 = 0;
  }

  else
  {
    upcomingRecurringPeerPayments2 = [(PKDashboardPaymentPassDataSource *)self upcomingRecurringPeerPayments];
    v8 = [upcomingRecurringPeerPayments2 objectAtIndex:index];
    v9 = [(PKDashboardPaymentPassDataSource *)self paymentTransactionItemForPayment:v8];
  }

  return v9;
}

- (id)paymentTransactionItemForPayment:(id)payment
{
  v4 = PKPeerPaymentTransactionForUpcomingRecurringPayment();
  v5 = [(PKDashboardPaymentPassDataSource *)self paymentTransactionItemForTransaction:v4];

  return v5;
}

- (void)_updateCanShowPeerPaymentRecurringPayments:(BOOL)payments
{
  paymentsCopy = payments;
  peerPaymentAccount = [(PKDashboardPaymentPassDataSource *)self peerPaymentAccount];
  state = [peerPaymentAccount state];

  if ([(PKDashboardPaymentPassDataSource *)self _isPeerPaymentPass])
  {
    pass = [(PKDashboardPaymentPassDataSource *)self pass];
    if ([pass activationState])
    {
      v8 = 1;
    }

    else
    {
      v8 = (state - 1) >= 2;
    }

    v9 = !v8;
  }

  else
  {
    v9 = 0;
  }

  if ([(PKDashboardPaymentPassDataSource *)self allContentIsLoaded])
  {
    canShowPeerPaymentRecurringPayments = [(PKDashboardPaymentPassDataSource *)self canShowPeerPaymentRecurringPayments];
    [(PKDashboardPaymentPassDataSource *)self setCanShowPeerPaymentRecurringPayments:v9];
    if (paymentsCopy && v9 != canShowPeerPaymentRecurringPayments)
    {
      v11 = [(PKDashboardPaymentPassDataSource *)self firstSectionIndexForSectionIdentifier:10];
      v13 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v11];
      delegate = [(PKDashboardPaymentPassDataSource *)self delegate];
      [delegate reloadSections:v13];
    }
  }

  else
  {

    [(PKDashboardPaymentPassDataSource *)self setCanShowPeerPaymentRecurringPayments:v9];
  }
}

- (void)reloadRecurringPeerPaymentsWithCompletion:(id)completion
{
  completionCopy = completion;
  [(PKDashboardPaymentPassDataSource *)self _updateCanShowPeerPaymentRecurringPayments:1];
  if ([(PKDashboardPaymentPassDataSource *)self canShowPeerPaymentRecurringPayments])
  {
    objc_initWeak(&location, self);
    mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __100__PKDashboardPaymentPassDataSource_RecurringPeerPayment__reloadRecurringPeerPaymentsWithCompletion___block_invoke;
    v6[3] = &unk_1E801D410;
    objc_copyWeak(&v8, &location);
    v6[4] = self;
    v7 = completionCopy;
    [mEMORY[0x1E69B9000] recurringPaymentsWithCompletion:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PKDashboardPaymentPassDataSource *)self setRecurringPeerPaymentsLoaded:1];
    [(PKDashboardPaymentPassDataSource *)self updateContentIsLoaded];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

void __100__PKDashboardPaymentPassDataSource_RecurringPeerPayment__reloadRecurringPeerPaymentsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v26 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v53[0] = 0;
    v53[1] = v53;
    v53[2] = 0x3032000000;
    v53[3] = __Block_byref_object_copy__40;
    v53[4] = __Block_byref_object_dispose__40;
    v54 = 0;
    v23 = WeakRetained;
    v3 = [WeakRetained peerPaymentAccount];
    v24 = [v3 recurringPaymentsFeatureDescriptor];

    v4 = [v24 productTimeZone];
    v22 = v4;
    if (v4)
    {
      v5 = objc_alloc(MEMORY[0x1E695DEE8]);
      v6 = [v5 initWithCalendarIdentifier:{*MEMORY[0x1E695D850], v4}];
      [v6 setTimeZone:v4];
      v7 = [MEMORY[0x1E695DF00] date];
      v8 = [v6 components:30 fromDate:v7];

      v30 = [v6 dateFromComponents:v8];
      v9 = objc_alloc_init(MEMORY[0x1E695DF10]);
      [v9 setDay:3];
      [v9 setSecond:1];
      v27 = [v6 dateByAddingComponents:v9 toDate:v30 options:0];
    }

    else
    {
      v30 = 0;
      v27 = 0;
    }

    v31 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x3032000000;
    v51[3] = __Block_byref_object_copy__40;
    v51[4] = __Block_byref_object_dispose__40;
    v52 = 0;
    v10 = [v23 transactionSourceCollection];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v11 = v26;
    v12 = [v11 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v12)
    {
      v13 = *v48;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v48 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v47 + 1) + 8 * i);
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __100__PKDashboardPaymentPassDataSource_RecurringPeerPayment__reloadRecurringPeerPaymentsWithCompletion___block_invoke_19;
          v39[3] = &unk_1E801D378;
          v39[4] = v15;
          v40 = v29;
          v41 = v27;
          v42 = v30;
          v45 = v51;
          v43 = v10;
          v44 = v28;
          v46 = v53;
          [v31 addOperation:v39];
        }

        v12 = [v11 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v12);
    }

    v16 = [MEMORY[0x1E695DFB0] null];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __100__PKDashboardPaymentPassDataSource_RecurringPeerPayment__reloadRecurringPeerPaymentsWithCompletion___block_invoke_2;
    v32[3] = &unk_1E801D3E8;
    v17 = v28;
    v33 = v17;
    objc_copyWeak(&v38, (a1 + 48));
    v18 = v29;
    v37 = v53;
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v34 = v18;
    v35 = v19;
    v36 = v20;
    v21 = [v31 evaluateWithInput:v16 completion:v32];

    objc_destroyWeak(&v38);
    _Block_object_dispose(v51, 8);

    _Block_object_dispose(v53, 8);
    WeakRetained = v23;
  }
}

void __100__PKDashboardPaymentPassDataSource_RecurringPeerPayment__reloadRecurringPeerPaymentsWithCompletion___block_invoke_19(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) upcomingPaymentDates];
  v9 = [v8 firstObject];

  v10 = [*(a1 + 32) type];
  v11 = [*(a1 + 32) sentByMe];
  if (v10 != 1 || v11 == 0)
  {
    if (v10 == 3)
    {
      objc_storeStrong((*(*(a1 + 88) + 8) + 40), *(a1 + 32));
    }

    goto LABEL_13;
  }

  [*(a1 + 40) addObject:*(a1 + 32)];
  if (!v9 || (v13 = *(a1 + 48)) == 0 || [v13 compare:v9] == -1 || (v14 = *(a1 + 56)) == 0 || objc_msgSend(v14, "compare:", v9) == 1)
  {
LABEL_13:
    v7[2](v7, v6, 0);
    goto LABEL_14;
  }

  if (!*(*(*(a1 + 80) + 8) + 40))
  {
    v15 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    v16 = *(*(a1 + 80) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  v18 = objc_alloc_init(MEMORY[0x1E69B8EC8]);
  [v18 setTransactionTypes:&unk_1F3CC8510];
  [v18 setStartDate:*(a1 + 56)];
  v19 = [MEMORY[0x1E695DF00] date];
  [v18 setEndDate:v19];

  v20 = [*(a1 + 64) transactionSourceIdentifiers];
  [v18 setTransactionSourceIdentifiers:v20];

  v21 = *(*(*(a1 + 80) + 8) + 40);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __100__PKDashboardPaymentPassDataSource_RecurringPeerPayment__reloadRecurringPeerPaymentsWithCompletion___block_invoke_23;
  v22[3] = &unk_1E801D350;
  v22[4] = *(a1 + 32);
  v23 = v9;
  v24 = *(a1 + 56);
  v25 = *(a1 + 72);
  v27 = v7;
  v26 = v6;
  [v21 transactionsForRequest:v18 completion:v22];

LABEL_14:
}

void __100__PKDashboardPaymentPassDataSource_RecurringPeerPayment__reloadRecurringPeerPaymentsWithCompletion___block_invoke_23(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v16 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = [*(*(&v15 + 1) + 8 * v7) referenceIdentifier];
      v9 = [*(a1 + 32) identifier];
      v10 = v8;
      v11 = v9;
      v12 = v11;
      if (v10 == v11)
      {
        break;
      }

      if (v10)
      {
        v13 = v11 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
      }

      else
      {
        v14 = [v10 isEqualToString:v11];

        if (v14)
        {
          goto LABEL_18;
        }
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }
    }

LABEL_18:
    if (PKEqualObjects())
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

  [*(a1 + 56) addObject:{*(a1 + 32), v15}];
LABEL_20:
  (*(*(a1 + 72) + 16))();
}

void __100__PKDashboardPaymentPassDataSource_RecurringPeerPayment__reloadRecurringPeerPaymentsWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) sortUsingComparator:&__block_literal_global_163];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PKDashboardPaymentPassDataSource_RecurringPeerPayment__reloadRecurringPeerPaymentsWithCompletion___block_invoke_4;
  block[3] = &unk_1E801D3C0;
  objc_copyWeak(&v11, (a1 + 72));
  v2 = *(a1 + 40);
  v10 = *(a1 + 64);
  v3 = *(a1 + 32);
  v6 = *(a1 + 48);
  v4 = *(&v6 + 1);
  *&v5 = v2;
  *(&v5 + 1) = v3;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v11);
}

uint64_t __100__PKDashboardPaymentPassDataSource_RecurringPeerPayment__reloadRecurringPeerPaymentsWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 upcomingPaymentDates];
  v6 = [v5 firstObject];
  v7 = [v4 upcomingPaymentDates];

  v8 = [v7 firstObject];
  v9 = [v6 compare:v8];

  return v9;
}

void __100__PKDashboardPaymentPassDataSource_RecurringPeerPayment__reloadRecurringPeerPaymentsWithCompletion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained;
    [WeakRetained _updateCanShowPeerPaymentRecurringPayments:0];
    [v10 setRecurringPeerPaymentsLoaded:1];
    v4 = [*(a1 + 32) copy];
    [v10 setRecurringPeerPayments:v4];

    [v10 setPeerPaymentThresholdTopUp:*(*(*(a1 + 64) + 8) + 40)];
    v5 = [*(a1 + 40) copy];
    [v10 setUpcomingRecurringPeerPayments:v5];

    if ([v10 allContentIsLoaded])
    {
      v6 = [v10 delegate];
      if (v6)
      {
        v7 = [*(a1 + 48) firstSectionIndexForSectionIdentifier:10];
        v8 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndex:v7];
        [v8 addIndex:{objc_msgSend(*(a1 + 48), "firstSectionIndexForSectionIdentifier:", 1)}];
        [v6 reloadSections:v8];
      }
    }

    else
    {
      [v10 updateContentIsLoaded];
    }

    v9 = *(a1 + 56);
    v3 = v10;
    if (v9)
    {
      (*(v9 + 16))(v9, v10);
      v3 = v10;
    }
  }
}

- (id)recurringPaymentDashboardMessages
{
  v53 = *MEMORY[0x1E69E9840];
  if ([(PKDashboardPaymentPassDataSource *)self canShowPeerPaymentRecurringPayments])
  {
    v31 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    val = self;
    obj = [(PKDashboardPaymentPassDataSource *)self recurringPeerPayments];
    v35 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v35)
    {
      v34 = *v49;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v49 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v48 + 1) + 8 * i);
          lastExecutedTransaction = [v4 lastExecutedTransaction];
          if (([v4 status] == 3 || objc_msgSend(v4, "status") == 4) && objc_msgSend(lastExecutedTransaction, "status") == 3 && (objc_msgSend(v4, "lastExecutedTransactionAppearsInHistory") & 1) == 0)
          {
            v6 = [(PKDashboardPaymentPassDataSource *)val _messageIdentifierForRecurringPayment:v4];
            if ((PKPeerPaymentRecurringPaymentHasDismissedMessageForMessageIdentifier() & 1) == 0)
            {
              v7 = objc_alloc_init(PKDashboardPassMessage);
              [(PKDashboardPassMessage *)v7 setType:0];
              [(PKDashboardPassMessage *)v7 setIdentifier:v6];
              v8 = PKLocalizedPeerPaymentRecurringString(&cfstr_PaymentErrorPr.isa);
              [(PKDashboardPassMessage *)v7 setTitle:v8];

              executionDate = [lastExecutedTransaction executionDate];
              v10 = [(PKDashboardPaymentPassDataSource *)val _formattedDateStringForDate:executionDate];
              recipientAddress = [v4 recipientAddress];
              v12 = [(PKDashboardPaymentPassDataSource *)val _recipientNameForAddress:recipientAddress];
              v13 = PKLocalizedPeerPaymentRecurringString(&cfstr_PaymentErrorDa.isa, &stru_1F3BD6370.isa, v10, v12);
              [(PKDashboardPassMessage *)v7 setMessage:v13];

              v14 = PKLocalizedPeerPaymentRecurringString(&cfstr_PaymentErrorAc.isa);
              [(PKDashboardPassMessage *)v7 setButtonTitle:v14];

              v15 = [(PKDashboardPaymentPassDataSource *)val _messageImageWithName:@"MessageAlert" extension:@"pdf"];
              [(PKDashboardPassMessage *)v7 setImage:v15];

              objc_initWeak(&location, val);
              v45[0] = MEMORY[0x1E69E9820];
              v45[1] = 3221225472;
              v45[2] = __91__PKDashboardPaymentPassDataSource_RecurringPeerPayment__recurringPaymentDashboardMessages__block_invoke;
              v45[3] = &unk_1E8014F68;
              objc_copyWeak(&v46, &location);
              v45[4] = v4;
              [(PKDashboardPassMessage *)v7 setActionOnButtonPress:v45];
              v43[0] = MEMORY[0x1E69E9820];
              v43[1] = 3221225472;
              v43[2] = __91__PKDashboardPaymentPassDataSource_RecurringPeerPayment__recurringPaymentDashboardMessages__block_invoke_2;
              v43[3] = &unk_1E80110E0;
              objc_copyWeak(&v44, &location);
              v43[4] = v4;
              [(PKDashboardPassMessage *)v7 setActionOnDismiss:v43];
              [v31 addObject:v7];
              objc_destroyWeak(&v44);
              objc_destroyWeak(&v46);
              objc_destroyWeak(&location);
            }
          }
        }

        v35 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v35);
    }

    peerPaymentThresholdTopUp = [(PKDashboardPaymentPassDataSource *)val peerPaymentThresholdTopUp];
    v17 = peerPaymentThresholdTopUp;
    if (peerPaymentThresholdTopUp)
    {
      lastExecutedTransaction2 = [peerPaymentThresholdTopUp lastExecutedTransaction];
      v19 = [(PKDashboardPaymentPassDataSource *)val _messageIdentifierForRecurringPayment:v17];
      status = [v17 status];
      if ([lastExecutedTransaction2 status] == 3 && (status - 3) <= 1 && (PKPeerPaymentRecurringPaymentHasDismissedMessageForMessageIdentifier() & 1) == 0)
      {
        v21 = objc_alloc_init(PKDashboardPassMessage);
        [(PKDashboardPassMessage *)v21 setType:0];
        [(PKDashboardPassMessage *)v21 setIdentifier:v19];
        v22 = [(PKDashboardPaymentPassDataSource *)val _messageImageWithName:@"MessageAlert" extension:@"pdf"];
        [(PKDashboardPassMessage *)v21 setImage:v22];

        objc_initWeak(&location, val);
        if (status == 4)
        {
          v23 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadErro.isa);
          [(PKDashboardPassMessage *)v21 setTitle:v23];

          v24 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadErro_0.isa);
          [(PKDashboardPassMessage *)v21 setMessage:v24];
        }

        else
        {
          errorCode = [lastExecutedTransaction2 errorCode];
          v27 = [(PKDashboardPaymentPassDataSource *)val _titleForErrorCode:errorCode];
          [(PKDashboardPassMessage *)v21 setTitle:v27];

          v28 = [(PKDashboardPaymentPassDataSource *)val _messageForErrorCode:errorCode];
          [(PKDashboardPassMessage *)v21 setMessage:v28];

          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __91__PKDashboardPaymentPassDataSource_RecurringPeerPayment__recurringPaymentDashboardMessages__block_invoke_3;
          v40[3] = &unk_1E80110E0;
          objc_copyWeak(&v42, &location);
          v41 = v17;
          [(PKDashboardPassMessage *)v21 setActionOnDismiss:v40];

          objc_destroyWeak(&v42);
        }

        if ([lastExecutedTransaction2 exceedsAppleCashLimits])
        {
          PKLocalizedPeerPaymentRecurringString(&cfstr_PaymentErrorLe.isa);
        }

        else
        {
          PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadErro_5.isa);
        }
        v29 = ;
        [(PKDashboardPassMessage *)v21 setButtonTitle:v29];

        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __91__PKDashboardPaymentPassDataSource_RecurringPeerPayment__recurringPaymentDashboardMessages__block_invoke_4;
        v36[3] = &unk_1E801D438;
        objc_copyWeak(v39, &location);
        v37 = lastExecutedTransaction2;
        v39[1] = status;
        v38 = v17;
        [(PKDashboardPassMessage *)v21 setActionOnButtonPress:v36];
        [v31 addObject:v21];

        objc_destroyWeak(v39);
        objc_destroyWeak(&location);
      }
    }

    v25 = [v31 copy];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

void __91__PKDashboardPaymentPassDataSource_RecurringPeerPayment__recurringPaymentDashboardMessages__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _presentDetailsForRecurringPayment:*(a1 + 32)];
    [v3 _dismissMessageForRecurringPayment:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __91__PKDashboardPaymentPassDataSource_RecurringPeerPayment__recurringPaymentDashboardMessages__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _dismissMessageForRecurringPayment:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __91__PKDashboardPaymentPassDataSource_RecurringPeerPayment__recurringPaymentDashboardMessages__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _dismissMessageForRecurringPayment:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __91__PKDashboardPaymentPassDataSource_RecurringPeerPayment__recurringPaymentDashboardMessages__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if ([*(a1 + 32) exceedsAppleCashLimits])
    {
      v3 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/en-us/HT207884"];
      PKOpenURL();
    }

    else
    {
      v3 = [v4 viewController];
      [(PKDashboardPassGroupViewController *)v3 _presentPassDetailsAnimated:9 action:?];
    }

    WeakRetained = v4;
    if (*(a1 + 56) != 4)
    {
      [v4 _dismissMessageForRecurringPayment:*(a1 + 40)];
      WeakRetained = v4;
    }
  }
}

- (id)_messageForErrorCode:(unint64_t)code
{
  v3 = @"AUTO_RELOAD_ERROR_PROBLEM_MESSAGE_CUMULATIVE_LIMIT";
  if (code - 40305 > 1)
  {
    v3 = @"AUTO_RELOAD_ERROR_PROBLEM_MESSAGE_PAYMENT_METHOD";
  }

  if (code - 40340 >= 4)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"AUTO_RELOAD_ERROR_PROBLEM_MESSAGE_FRAUD";
  }

  v5 = PKLocalizedPeerPaymentRecurringString(&v4->isa);

  return v5;
}

- (id)_messageIdentifierForRecurringPayment:(id)payment
{
  paymentCopy = payment;
  lastExecutedTransaction = [paymentCopy lastExecutedTransaction];
  if (lastExecutedTransaction)
  {
    v5 = MEMORY[0x1E696AEC0];
    identifier = [paymentCopy identifier];

    identifier2 = [lastExecutedTransaction identifier];
    identifier3 = [v5 stringWithFormat:@"%@-%@", identifier, identifier2];

    paymentCopy = identifier;
  }

  else
  {
    identifier3 = [paymentCopy identifier];
  }

  return identifier3;
}

- (id)_formattedDateStringForDate:(id)date
{
  v3 = qword_1EBD6ACF0;
  dateCopy = date;
  if (v3 != -1)
  {
    dispatch_once(&qword_1EBD6ACF0, &__block_literal_global_85_0);
  }

  v5 = [_MergedGlobals_603 stringFromDate:dateCopy];

  return v5;
}

uint64_t __86__PKDashboardPaymentPassDataSource_RecurringPeerPayment___formattedDateStringForDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _MergedGlobals_603;
  _MergedGlobals_603 = v0;

  [_MergedGlobals_603 setLocalizedDateFormatFromTemplate:@"MMM d"];
  v2 = _MergedGlobals_603;

  return [v2 setFormattingContext:5];
}

- (id)_recipientNameForAddress:(id)address
{
  v3 = MEMORY[0x1E695CE18];
  addressCopy = address;
  v5 = objc_alloc_init(v3);
  requiredContactKeys = [MEMORY[0x1E69B8F30] requiredContactKeys];
  v7 = [objc_alloc(MEMORY[0x1E69B8740]) initWithContactStore:v5 keysToFetch:requiredContactKeys];
  v8 = [v7 contactForHandle:addressCopy];
  v9 = [MEMORY[0x1E69B8F30] displayNameForCounterpartHandle:addressCopy contact:v8];

  return v9;
}

- (void)_presentDetailsForRecurringPayment:(id)payment
{
  v4 = MEMORY[0x1E69B8F28];
  paymentCopy = payment;
  v6 = [v4 alloc];
  mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
  v18 = [v6 initWithPeerPaymentWebService:mEMORY[0x1E69B9020]];

  account = [v18 account];
  recurringPaymentsFeatureDescriptor = [account recurringPaymentsFeatureDescriptor];
  v10 = [PKPeerPaymentRecurringPaymentDetailViewController alloc];
  recipientAddress = [paymentCopy recipientAddress];
  v12 = [(PKPeerPaymentRecurringPaymentDetailViewController *)v10 initWithRecurringPayment:paymentCopy recipientAddress:recipientAddress mode:2 context:0 peerPaymentController:v18 remoteMessagesComposer:0];

  minimumAmount = [recurringPaymentsFeatureDescriptor minimumAmount];
  [(PKPeerPaymentRecurringPaymentDetailViewController *)v12 setMinimumAmount:minimumAmount];

  maximumAmount = [recurringPaymentsFeatureDescriptor maximumAmount];
  [(PKPeerPaymentRecurringPaymentDetailViewController *)v12 setMaximumAmount:maximumAmount];

  [(PKPeerPaymentRecurringPaymentDetailViewController *)v12 setShowCancelButton:1];
  viewController = [(PKDashboardPaymentPassDataSource *)self viewController];
  navigationController = [viewController navigationController];

  v17 = [[PKNavigationController alloc] initWithRootViewController:v12];
  [navigationController presentViewController:v17 animated:1 completion:0];
}

- (void)_dismissMessageForRecurringPayment:(id)payment
{
  v4 = [(PKDashboardPaymentPassDataSource *)self _messageIdentifierForRecurringPayment:payment];
  PKPeerPaymentRecurringPaymentAddDismissedMessageForMessageIdentifier();
  [(PKDashboardPaymentPassDataSource *)self reloadMessagesAfterMessageInteraction];
}

- (PKDashboardPaymentPassDataSource)initWithGroupView:(id)view context:(id)context
{
  viewCopy = view;
  contextCopy = context;
  v56.receiver = self;
  v56.super_class = PKDashboardPaymentPassDataSource;
  v9 = [(PKDashboardPaymentPassDataSource *)&v56 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_groupView, view);
    [viewCopy addPassGroupViewObserver:v10];
    frontmostPassView = [viewCopy frontmostPassView];
    [(PKDashboardPaymentPassDataSource *)v10 _setPassStateProvider:frontmostPassView];

    group = [viewCopy group];
    group = v10->_group;
    v10->_group = group;

    v10->_lockImages._os_unfair_lock_opaque = 0;
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    messageImagesCache = v10->_messageImagesCache;
    v10->_messageImagesCache = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingMessageReloadReasons = v10->_pendingMessageReloadReasons;
    v10->_pendingMessageReloadReasons = v16;

    v10->_lockTransactions._os_unfair_lock_opaque = 0;
    v10->_sessionActiveToken = -1;
    v10->_expressChangedNotificationToken = -1;
    v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    iconDownloads = v10->_iconDownloads;
    v10->_iconDownloads = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    iconFailedDownloads = v10->_iconFailedDownloads;
    v10->_iconFailedDownloads = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    icons = v10->_icons;
    v10->_icons = v22;

    v10->_lockIcons._os_unfair_lock_opaque = 0;
    if (PKUIScreenScale() <= 2.0)
    {
      v24 = @"2x";
    }

    else
    {
      v24 = @"3x";
    }

    objc_storeStrong(&v10->_scaleKey, v24);
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    executionBlocksContentIsLoaded = v10->_executionBlocksContentIsLoaded;
    v10->_executionBlocksContentIsLoaded = v25;

    v27 = objc_alloc_init(MEMORY[0x1E695DFB8]);
    messages = v10->_messages;
    v10->_messages = v27;

    v29 = objc_alloc_init(MEMORY[0x1E695DFB8]);
    secondaryMessages = v10->_secondaryMessages;
    v10->_secondaryMessages = v29;

    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sourcesPerFundingSourceIdentifier = v10->_sourcesPerFundingSourceIdentifier;
    v10->_sourcesPerFundingSourceIdentifier = v31;

    v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dynamicSections = v10->_dynamicSections;
    v10->_dynamicSections = v33;

    [(NSMutableDictionary *)v10->_dynamicSections setObject:&unk_1F3CC7AD8 forKeyedSubscript:&unk_1F3CC7AF0];
    [(NSMutableDictionary *)v10->_dynamicSections setObject:&unk_1F3CC7AD8 forKeyedSubscript:&unk_1F3CC7B08];
    [(NSMutableDictionary *)v10->_dynamicSections setObject:&unk_1F3CC7AD8 forKeyedSubscript:&unk_1F3CC7B20];
    paymentService = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = v10->_paymentService;
    v10->_paymentService = paymentService;

    [(PKPaymentService *)v10->_paymentService registerObserver:v10];
    mEMORY[0x1E69B91E0] = [MEMORY[0x1E69B91E0] sharedSecureElement];
    secureElement = v10->_secureElement;
    v10->_secureElement = mEMORY[0x1E69B91E0];

    v10->_isInRestrictedMode = [(PKSecureElement *)v10->_secureElement isInRestrictedMode];
    [(PKSecureElement *)v10->_secureElement registerObserver:v10];
    v39 = objc_alloc_init(MEMORY[0x1E696AB78]);
    formatterYear = v10->_formatterYear;
    v10->_formatterYear = v39;

    [(NSDateFormatter *)v10->_formatterYear setLocalizedDateFormatFromTemplate:@"y"];
    creditDetails = [(PKAccount *)v10->_account creditDetails];
    productTimeZone = [creditDetails productTimeZone];

    v43 = objc_alloc_init(MEMORY[0x1E696AB78]);
    formatterMonth = v10->_formatterMonth;
    v10->_formatterMonth = v43;

    [(NSDateFormatter *)v10->_formatterMonth setTimeZone:productTimeZone];
    [(NSDateFormatter *)v10->_formatterMonth setLocalizedDateFormatFromTemplate:@"MMMM"];
    v45 = objc_alloc_init(MEMORY[0x1E696AB78]);
    formatterMonthDay = v10->_formatterMonthDay;
    v10->_formatterMonthDay = v45;

    [(NSDateFormatter *)v10->_formatterMonthDay setTimeZone:productTimeZone];
    [(NSDateFormatter *)v10->_formatterMonthDay setLocalizedDateFormatFromTemplate:@"MMMM d"];
    v47 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    formatterPercentage = v10->_formatterPercentage;
    v10->_formatterPercentage = v47;

    [(NSNumberFormatter *)v10->_formatterPercentage setNumberStyle:3];
    [(NSNumberFormatter *)v10->_formatterPercentage setMinimumFractionDigits:2];
    [(NSNumberFormatter *)v10->_formatterPercentage setMaximumFractionDigits:2];
    [(NSNumberFormatter *)v10->_formatterPercentage setMultiplier:&unk_1F3CC7B38];
    v49 = objc_alloc_init(PKSecureElementPassContactIssuerHelper);
    contactIssuerHelper = v10->_contactIssuerHelper;
    v10->_contactIssuerHelper = v49;

    [(PKSecureElementPassContactIssuerHelper *)v10->_contactIssuerHelper setDelegate:v10];
    [(PKDashboardPaymentPassDataSource *)v10 reloadFrontmostPass];
    [(PKDashboardPaymentPassDataSource *)v10 reloadAllContent];
    v51 = +[PKUIForegroundActiveArbiter sharedInstance];
    v10->_activeState = [v51 registerObserver:v10];

    [(PKDashboardPaymentPassDataSource *)v10 _updateTransactionsTimer];
    v10->_filterType = 0;
    incomingRequestActionInProgressRequestToken = v10->_incomingRequestActionInProgressRequestToken;
    v10->_incomingRequestActionInProgressRequestToken = 0;

    v53 = objc_alloc_init(getFHSearchSuggestionControllerClass_0());
    searchSuggestionController = v10->_searchSuggestionController;
    v10->_searchSuggestionController = v53;
  }

  return v10;
}

- (void)reloadFrontmostPass
{
  v113 = *MEMORY[0x1E69E9840];
  v3 = [(PKGroup *)self->_group passAtIndex:[(PKGroup *)self->_group frontmostPassIndex]];
  if (self->_pass != v3)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    targetDevice = [(PKPeerPaymentWebService *)self->_peerPaymentWebService targetDevice];
    v92 = *MEMORY[0x1E69BC378];
    [defaultCenter removeObserver:self name:? object:?];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = *MEMORY[0x1E69B9E60];
    [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69B9E60] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = *MEMORY[0x1E695D8F0];
    [defaultCenter3 removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];

    mEMORY[0x1E69B87F0] = [MEMORY[0x1E69B87F0] sharedInstance];
    [mEMORY[0x1E69B87F0] removeObserver:self];

    [(PKAccountService *)self->_accountService unregisterObserver:self];
    [(PKLinkedApplication *)self->_linkedApplication removeObserver:self];
    mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
    location = &self->_pass;
    [mEMORY[0x1E69B9000] unregisterObserver:self];
    if ([(PKDashboardPaymentPassDataSource *)self hasAssociatedPaymentRewardsBalance])
    {
      [(PKDashboardPaymentPassDataSource *)self resetAssociatedPaymentRewardsBalanceIfNeeded];
    }

    [(PKDashboardPaymentPassDataSource *)self setPayWithRewardsSupportState:[(PKDashboardPaymentPassDataSource *)self supportsPaymentRewardsBalance]];
    v94 = self->_pass;
    objc_storeStrong(location, v3);
    uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      [(PKDashboardPaymentPassDataSource *)self _passFeature];
      v13 = PKFeatureIdentifierToString();
      *buf = 134218498;
      selfCopy = self;
      v109 = 2114;
      v110 = uniqueID;
      v111 = 2114;
      v112 = v13;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Dashboard loading (%p): for %{public}@, pass feature %{public}@", buf, 0x20u);
    }

    PKTimeProfileBegin();
    v14 = PKLogFacilityTypeGetObject();
    v15 = os_signpost_id_make_with_pointer(v14, self);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = v15;
      if (os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PKDashboardPaymentPassDataSource:contentLoad", "", buf, 2u);
      }
    }

    if ([*location isStoredValuePass])
    {
      self->_productsLoaded = 0;
      objc_initWeak(buf, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __55__PKDashboardPaymentPassDataSource_reloadFrontmostPass__block_invoke;
      aBlock[3] = &unk_1E8012010;
      objc_copyWeak(&v106, buf);
      v17 = _Block_copy(aBlock);
      v18 = *MEMORY[0x1E69BBB48];
      v19 = MEMORY[0x1E69E96A0];
      v20 = MEMORY[0x1E69E96A0];
      LODWORD(v18) = notify_register_dispatch(v18, &self->_sessionActiveToken, v19, v17);

      sessionActiveToken = self->_sessionActiveToken;
      if (v18)
      {
        if (sessionActiveToken != -1)
        {
          notify_cancel(sessionActiveToken);
          self->_sessionActiveToken = -1;
        }
      }

      else if (sessionActiveToken != -1)
      {
        state64 = 0;
        notify_get_state(sessionActiveToken, &state64);
        self->_sessionActive = state64 != 0;
      }

      objc_destroyWeak(&v106);
      objc_destroyWeak(buf);
    }

    else
    {
      isAccessPass = [(PKPaymentPass *)self->_pass isAccessPass];
      self->_isAccessPass = isAccessPass;
      self->_productsLoaded = 1;
      if (isAccessPass && self->_expressChangedNotificationToken == -1)
      {
        objc_initWeak(buf, self);
        v102[0] = MEMORY[0x1E69E9820];
        v102[1] = 3221225472;
        v102[2] = __55__PKDashboardPaymentPassDataSource_reloadFrontmostPass__block_invoke_2;
        v102[3] = &unk_1E8012010;
        objc_copyWeak(&v103, buf);
        v23 = _Block_copy(v102);
        uTF8String = [*MEMORY[0x1E69BB808] UTF8String];
        v25 = MEMORY[0x1E69E96A0];
        v26 = MEMORY[0x1E69E96A0];
        notify_register_dispatch(uTF8String, &self->_expressChangedNotificationToken, v25, v23);

        objc_destroyWeak(&v103);
        objc_destroyWeak(buf);
      }
    }

    self->_hasUpdatedAccountRewardsDataIfNecessary = 0;
    if (![(PKPaymentPass *)self->_pass hasAssociatedPeerPaymentAccount])
    {
      associatedAccountServiceAccountIdentifier = [*location associatedAccountServiceAccountIdentifier];

      if (associatedAccountServiceAccountIdentifier && (-[NSObject account](mEMORY[0x1E69B9000], "account"), v36 = objc_claimAutoreleasedReturnValue(), peerPaymentAccount = self->_peerPaymentAccount, self->_peerPaymentAccount = v36, peerPaymentAccount, [MEMORY[0x1E696AD88] defaultCenter], v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "addObserver:selector:name:object:", self, sel_reloadAccount, v7, 0), v38, objc_msgSend(MEMORY[0x1E696AD88], "defaultCenter"), v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "addObserver:selector:name:object:", self, sel__localeDidChangeNotification_, v9, 0), v39, objc_msgSend(MEMORY[0x1E69B8400], "sharedInstance"), v40 = objc_claimAutoreleasedReturnValue(), accountService = self->_accountService, self->_accountService = v40, accountService, -[PKAccountService registerObserver:](self->_accountService, "registerObserver:", self), -[PKDashboardPaymentPassDataSource _isCreditPass](self, "_isCreditPass")))
      {
        self->_transactionGrouping = 2;
      }

      else
      {
        self->_scheduledPaymentsLoaded = 1;
        self->_creditRecoveryPaymentPlansLoaded = 1;
        *&self->_familyCollectionLoaded = 16843009;
      }

      goto LABEL_42;
    }

    self->_transactionGrouping = 2;
    self->_scheduledPaymentsLoaded = 1;
    self->_creditRecoveryPaymentPlansLoaded = 1;
    *&self->_accountUsersLoaded = 257;
    self->_physicalCardsLoaded = 1;
    v27 = objc_alloc_init(PKNearbyPeerPaymentViewProvider);
    [(PKDashboardPaymentPassDataSource *)self setNearbyPeerPaymentViewProvider:v27];

    v28 = self->_peerPaymentAccount;
    account = [mEMORY[0x1E69B9000] account];
    v30 = self->_peerPaymentAccount;
    self->_peerPaymentAccount = account;

    self->_shouldReloadDisclosuresSection = [(PKDashboardPaymentPassDataSource *)self _isDisclosureSectionChangedWithPreviousAccount:v28 previousPass:v94];
    associatedPassUniqueID = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
    v32 = uniqueID;
    v33 = v32;
    if (associatedPassUniqueID == v32)
    {
    }

    else
    {
      if (!v32 || !associatedPassUniqueID)
      {

LABEL_41:
LABEL_42:
        v60 = objc_alloc(MEMORY[0x1E69B8CF0]);
        uniqueID2 = [(PKPaymentPass *)self->_pass uniqueID];
        v62 = [v60 initForInstoreConextWithPassUniqueID:uniqueID2];

        mEMORY[0x1E69B8CE8] = [MEMORY[0x1E69B8CE8] sharedInstance];
        paymentOffersController = self->_paymentOffersController;
        self->_paymentOffersController = mEMORY[0x1E69B8CE8];

        [(PKPaymentOffersController *)self->_paymentOffersController updateSessionDetails:v62];
        [(PKPaymentOffersController *)self->_paymentOffersController updatePaymentOfferCatalogIfNecessaryWithReason:10 completion:0];
        if (!self->_paymentDataProvider)
        {
          defaultDataProvider = [MEMORY[0x1E69B8BD8] defaultDataProvider];
          paymentDataProvider = self->_paymentDataProvider;
          self->_paymentDataProvider = defaultDataProvider;

          [(PKPaymentDefaultDataProvider *)self->_paymentDataProvider addDelegate:self];
        }

        v67 = [PKContactAvatarManager alloc];
        _contactResolver = [(PKDashboardPaymentPassDataSource *)self _contactResolver];
        v69 = [(PKContactAvatarManager *)v67 initWithContactResolver:_contactResolver paymentDataProvider:self->_paymentDataProvider];
        avatarManager = self->_avatarManager;
        self->_avatarManager = v69;

        [(PKDashboardPaymentPassDataSource *)self _updateTransactionSourceCollection];
        if ([(PKPaymentPass *)self->_pass supportsBarcodePayment])
        {
          v71 = [[PKLinkedApplication alloc] initWithPass:self->_pass];
          linkedApplication = self->_linkedApplication;
          self->_linkedApplication = v71;

          [(PKLinkedApplication *)self->_linkedApplication addObserver:self];
          [(PKLinkedApplication *)self->_linkedApplication reloadApplicationStateIfNecessary];
        }

        else
        {
          v73 = self->_linkedApplication;
          self->_linkedApplication = 0;
        }

        aMPEnagementPlacementForCurrentlyDisplayedPass = [(PKDashboardPaymentPassDataSource *)self AMPEnagementPlacementForCurrentlyDisplayedPass];

        if (aMPEnagementPlacementForCurrentlyDisplayedPass)
        {
          mEMORY[0x1E69B87F0]2 = [MEMORY[0x1E69B87F0] sharedInstance];
          [mEMORY[0x1E69B87F0]2 addObserver:self];
        }

        pass = self->_pass;
        mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
        self->_shouldDisplayDeviceAssessmentEducation = [(PKPaymentPass *)pass shouldDisplayDeviceAssessmentEducationAccordingToService:mEMORY[0x1E69B8EF8]];

        [(PKSecureElementPassContactIssuerHelper *)self->_contactIssuerHelper setPass:self->_pass];
        if ([(PKDashboardPaymentPassDataSource *)self isBankConnectSupported])
        {
          if (_os_feature_enabled_impl())
          {
            v78 = [[_TtC9PassKitUI29PKDashboardFinanceKitProvider alloc] initWithPass:self->_pass];
            financeKitProvider = self->_financeKitProvider;
            self->_financeKitProvider = v78;

            objc_initWeak(buf, self);
            v80 = self->_financeKitProvider;
            v96[0] = MEMORY[0x1E69E9820];
            v96[1] = 3221225472;
            v96[2] = __55__PKDashboardPaymentPassDataSource_reloadFrontmostPass__block_invoke_420;
            v96[3] = &unk_1E8011338;
            objc_copyWeak(&v97, buf);
            [(PKDashboardFinanceKitProvider *)v80 loadWithCompletionHandler:v96];
            objc_destroyWeak(&v97);
            objc_destroyWeak(buf);
          }

          primaryAccountIdentifier = [*location primaryAccountIdentifier];
          if (!v94 || (-[PKPaymentPass primaryAccountIdentifier](v94, "primaryAccountIdentifier"), v82 = objc_claimAutoreleasedReturnValue(), v83 = [primaryAccountIdentifier isEqualToString:v82], v82, (v83 & 1) == 0))
          {
            v84 = [objc_alloc(MEMORY[0x1E6967DA0]) initWithPrimaryAccountIdentifier:primaryAccountIdentifier];
            [(PKDashboardPaymentPassDataSource *)self setBankConnectAccountsProvider:v84];

            bankConnectAccountsProvider = [(PKDashboardPaymentPassDataSource *)self bankConnectAccountsProvider];
            [bankConnectAccountsProvider setDelegate:self];

            if (!self->_financeKitProvider)
            {
              v86 = [objc_alloc(MEMORY[0x1E6967DE0]) initWithPrimaryAccountIdentifier:primaryAccountIdentifier];
              [(PKDashboardPaymentPassDataSource *)self setBankConnectTransactionsProvider:v86];

              bankConnectTransactionsProvider = [(PKDashboardPaymentPassDataSource *)self bankConnectTransactionsProvider];
              [bankConnectTransactionsProvider setDelegate:self];
            }

            v88 = objc_alloc_init(MEMORY[0x1E6967DB8]);
            [(PKDashboardPaymentPassDataSource *)self setBankConnectInstitutionMatcher:v88];

            v89 = objc_alloc_init(getFKBankConnectImageProviderClass_0());
            [(PKDashboardPaymentPassDataSource *)self setBankConnectImageProvider:v89];

            v90 = objc_alloc_init(MEMORY[0x1E6967DC8]);
            [(PKDashboardPaymentPassDataSource *)self setBankConnectMessagesManager:v90];
          }
        }

        if (([*location isHomeKeyPass] & 1) == 0)
        {
          self->_homeKitRestrictedGuestAccessStateLoaded = 1;
        }

        precursorUpgradeController = self->_precursorUpgradeController;
        self->_precursorUpgradeController = 0;

        goto LABEL_61;
      }

      v34 = [associatedPassUniqueID isEqualToString:v32];

      if (!v34)
      {
        goto LABEL_41;
      }
    }

    mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
    peerPaymentWebService = self->_peerPaymentWebService;
    self->_peerPaymentWebService = mEMORY[0x1E69B9020];

    v44 = [PKPeerPaymentAccountResolutionController alloc];
    v45 = self->_peerPaymentAccount;
    v46 = self->_peerPaymentWebService;
    v47 = objc_alloc_init(MEMORY[0x1E69B8A60]);
    v48 = [(PKPeerPaymentAccountResolutionController *)v44 initWithAccount:v45 webService:v46 context:0 delegate:0 passLibraryDataProvider:v47];
    peerPaymentAccountResolutionController = self->_peerPaymentAccountResolutionController;
    self->_peerPaymentAccountResolutionController = v48;

    [(PKPeerPaymentAccountResolutionController *)self->_peerPaymentAccountResolutionController setDelegate:self];
    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    targetDevice2 = [(PKPeerPaymentWebService *)self->_peerPaymentWebService targetDevice];
    [defaultCenter4 addObserver:self selector:sel__peerPaymentAccountChanged_ name:v92 object:targetDevice2];

    [mEMORY[0x1E69B9000] registerObserver:self];
    mEMORY[0x1E69B8310] = [MEMORY[0x1E69B8310] sharedManager];
    AMPEnrollmentManager = self->_AMPEnrollmentManager;
    self->_AMPEnrollmentManager = mEMORY[0x1E69B8310];

    if ([(PKDashboardPaymentPassDataSource *)self _passAvailableForAMPEnrollment])
    {
      [(PKDashboardPaymentPassDataSource *)self _fetchAMPEnrollmentEligibility];
    }

    objc_initWeak(buf, self);
    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = __55__PKDashboardPaymentPassDataSource_reloadFrontmostPass__block_invoke_3;
    v100[3] = &unk_1E8017038;
    objc_copyWeak(&v101, buf);
    [mEMORY[0x1E69B8400] accountsWithPassLocallyProvisionedWithCompletion:v100];

    if ([(PKPeerPaymentAccount *)self->_peerPaymentAccount isAccountStateDirty])
    {
      date = [MEMORY[0x1E695DF00] date];
      lastUpdated = [(PKPeerPaymentAccount *)self->_peerPaymentAccount lastUpdated];
      [date timeIntervalSinceDate:lastUpdated];
      v58 = v57 > 300.0;

      if (v58)
      {
        v59 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(state64) = 0;
          _os_log_impl(&dword_1BD026000, v59, OS_LOG_TYPE_DEFAULT, "Updating peer payment account because dirty outdated", &state64, 2u);
        }

        v98[0] = MEMORY[0x1E69E9820];
        v98[1] = 3221225472;
        v98[2] = __55__PKDashboardPaymentPassDataSource_reloadFrontmostPass__block_invoke_403;
        v98[3] = &unk_1E801D8E8;
        objc_copyWeak(&v99, buf);
        [mEMORY[0x1E69B9000] updateAccountWithCompletion:v98];
        objc_destroyWeak(&v99);
      }
    }

    objc_destroyWeak(&v101);
    objc_destroyWeak(buf);
    goto LABEL_41;
  }

  mEMORY[0x1E69B9000] = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(mEMORY[0x1E69B9000], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, mEMORY[0x1E69B9000], OS_LOG_TYPE_DEFAULT, "Skipping reload of pass...", buf, 2u);
  }

LABEL_61:
}

void __55__PKDashboardPaymentPassDataSource_reloadFrontmostPass__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    state64 = 0;
    notify_get_state(a2, &state64);
    if (WeakRetained[280] == (state64 == 0))
    {
      WeakRetained[280] = state64 != 0;
      [WeakRetained reloadMessagesWithReason:@"Pass reload"];
    }
  }
}

void __55__PKDashboardPaymentPassDataSource_reloadFrontmostPass__block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[71] == a2)
  {
    v4 = WeakRetained;
    [WeakRetained reloadMessagesWithReason:@"express state changed"];
    WeakRetained = v4;
  }
}

void __55__PKDashboardPaymentPassDataSource_reloadFrontmostPass__block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v10 + 1) + 8 * i) feature] == 2)
          {
            WeakRetained[680] = 1;
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

void __55__PKDashboardPaymentPassDataSource_reloadFrontmostPass__block_invoke_403(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__PKDashboardPaymentPassDataSource_reloadFrontmostPass__block_invoke_2_404;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __55__PKDashboardPaymentPassDataSource_reloadFrontmostPass__block_invoke_2_404(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Updated peer payment account", v9, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[21];
    v6 = *(a1 + 32);
    v7 = v4[21];
    v4[21] = v6;
    v8 = v5;

    *(v4 + 219) = 1;
    LOBYTE(v5) = [v4 _isDisclosureSectionChangedWithPreviousAccount:v8 previousPass:v4[119]];

    *(v4 + 760) = v5;
    [v4 reloadAccount];
  }
}

void __55__PKDashboardPaymentPassDataSource_reloadFrontmostPass__block_invoke_420(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PKDashboardPaymentPassDataSource_reloadFrontmostPass__block_invoke_2_421;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __55__PKDashboardPaymentPassDataSource_reloadFrontmostPass__block_invoke_2_421(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateContentIsLoaded];
    WeakRetained = v2;
  }
}

- (unint64_t)_passFeature
{
  result = [(PKAccount *)self->_account feature];
  if (!result)
  {
    result = [(PKPaymentPass *)self->_pass associatedAccountFeatureIdentifier];
    if (!result)
    {
      return [(PKPaymentPass *)self->_pass hasAssociatedPeerPaymentAccount];
    }
  }

  return result;
}

- (void)dealloc
{
  v20 = *MEMORY[0x1E69E9840];
  [(PKSecureElement *)self->_secureElement unregisterObserver:self];
  sessionActiveToken = self->_sessionActiveToken;
  if (sessionActiveToken != -1)
  {
    notify_cancel(sessionActiveToken);
    self->_sessionActiveToken = -1;
  }

  expressChangedNotificationToken = self->_expressChangedNotificationToken;
  if (expressChangedNotificationToken != -1)
  {
    notify_cancel(expressChangedNotificationToken);
    self->_expressChangedNotificationToken = -1;
  }

  [(PKPassGroupView *)self->_groupView removePassGroupViewObserver:self];
  [(PKPassDynamicStateProviding *)self->_passStateProvider removePassStateObserver:self];
  [(PKPaymentDefaultDataProvider *)self->_paymentDataProvider removeDelegate:self];
  v5 = +[PKUIForegroundActiveArbiter sharedInstance];
  [v5 unregisterObserver:self];

  mEMORY[0x1E69B87F0] = [MEMORY[0x1E69B87F0] sharedInstance];
  [mEMORY[0x1E69B87F0] removeObserver:self];

  [(PKSpendingSummaryFetcher *)self->_summaryFetcher unregisterObserver:self];
  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  [(PKAccountService *)self->_accountService unregisterObserver:self];
  mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
  [mEMORY[0x1E69B9000] unregisterObserver:self];

  timerTransactions = self->_timerTransactions;
  if (timerTransactions)
  {
    dispatch_source_cancel(timerTransactions);
  }

  [(PKLinkedApplication *)self->_linkedApplication removeObserver:self];
  v9 = *MEMORY[0x1E69BB6A8];
  v10 = [MEMORY[0x1E69B8540] reporterForSubject:*MEMORY[0x1E69BB6A8]];

  if (v10)
  {
    [MEMORY[0x1E69B8540] endSubjectReporting:v9];
  }

  if (self->_allContentIsLoaded)
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Dashboard loading (%p): Deallocated", buf, 0xCu);
    }
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Dashboard loading (%p): Deallocated", self];
    v12 = PKLogFacilityTypeGetObject();
    v13 = os_signpost_id_make_with_pointer(v12, self);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v12, OS_SIGNPOST_INTERVAL_END, v14, "PKDashboardPaymentPassDataSource:contentLoad", "", buf, 2u);
      }
    }

    v15 = PKLogFacilityTypeGetObject();
    v16 = PKTimeProfileEnd();
  }

  v17.receiver = self;
  v17.super_class = PKDashboardPaymentPassDataSource;
  [(PKDashboardPaymentPassDataSource *)&v17 dealloc];
}

- (void)executeAfterContentIsLoaded:(id)loaded
{
  loadedCopy = loaded;
  if (loadedCopy)
  {
    v7 = loadedCopy;
    if (self->_allContentIsLoaded || self->_contentLoadedFrozen)
    {
      loadedCopy[2]();
    }

    else
    {
      executionBlocksContentIsLoaded = self->_executionBlocksContentIsLoaded;
      v6 = _Block_copy(loadedCopy);
      [(NSMutableArray *)executionBlocksContentIsLoaded addObject:v6];
    }
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)_creditAccountItemTypeEnabled:(unint64_t)enabled
{
  result = 0;
  if (enabled <= 2)
  {
    if (enabled - 1 < 2)
    {
      return [(PKAccount *)self->_account accessLevel]== 2;
    }

    if (enabled)
    {
      return result;
    }

    return [(PKAccount *)self->_account accessLevel]== 1;
  }

  if (enabled != 4)
  {
    if (enabled != 3)
    {
      return result;
    }

    return [(PKAccount *)self->_account accessLevel]== 1;
  }

  if ([(PKAccount *)self->_account accessLevel]!= 1)
  {
    return 0;
  }

  account = self->_account;

  return [(PKAccount *)account supportsSchedulePayment];
}

- (int64_t)_numberOfBalanceDashboardItems
{
  if ([(PKDashboardPaymentPassDataSource *)self _isCreditPass])
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v4 += [(PKDashboardPaymentPassDataSource *)self _creditAccountItemTypeEnabled:v3++];
    }

    while (v3 != 5);
    return v4;
  }

  if (![(PKDashboardPaymentPassDataSource *)self _isAppleBalancePass])
  {
    if ([(PKDashboardPaymentPassDataSource *)self _isPeerPaymentPass])
    {
      return [(PKDashboardPaymentPassDataSource *)self canDisplayPeerPaymentBalanceModule];
    }

    else
    {
      return 0;
    }
  }

  return [(PKDashboardPaymentPassDataSource *)self numberOfAppleBalanceBalanceDashboardItems];
}

- (BOOL)_balanceSectionHasFooter
{
  if (![(PKDashboardPaymentPassDataSource *)self _isPeerPaymentPass]|| !self->_peerPaymentAccount || !PKPeerPaymentFDICSignageEnabled())
  {
    return 0;
  }

  return PKPeerPaymentAccountIsFDICInsured();
}

- (unint64_t)_creditAccountItemTypeForItemIndex:(unint64_t)index
{
  v5 = 0;
  v6 = 0;
  do
  {
    if ([(PKDashboardPaymentPassDataSource *)self _creditAccountItemTypeEnabled:v5])
    {
      if (v6 == index)
      {
        return v5;
      }

      ++v6;
    }

    ++v5;
  }

  while (v5 != 5);
  return 0x7FFFFFFFFFFFFFFFLL;
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  [(PKDashboardPaymentPassDataSource *)self _dataSourceIndicesForIndexPath:pathCopy];
  v5 = [[PKDashboardPassGroupItem alloc] initWithGroupView:self->_groupView];

  return v5;
}

- (id)paymentTransactionItemForTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = [PKDashboardPaymentTransactionItem alloc];
  transactionSourceCollection = self->_transactionSourceCollection;
  familyCollection = self->_familyCollection;
  account = self->_account;
  accountUserCollection = self->_accountUserCollection;
  bankConnectLinkedAccountData = [(PKDashboardPaymentPassDataSource *)self bankConnectLinkedAccountData];
  institution = [bankConnectLinkedAccountData institution];
  v12 = [(PKDashboardPaymentTransactionItem *)v5 initWithTransactionSourceCollection:transactionSourceCollection familyCollection:familyCollection transaction:transactionCopy account:account accountUserCollection:accountUserCollection bankConnectInstitution:institution];

  [(PKDashboardPaymentTransactionItem *)v12 setPhysicalCards:self->_physicalCards];
  if ([transactionCopy transactionType] == 9)
  {
    transactionFetcher = self->_transactionFetcher;
    identifier = [transactionCopy identifier];
    v15 = [(PKDashboardTransactionFetcher *)transactionFetcher cashbackGroupForTransactionWithIdentifier:identifier cashbackTransactionSourceCollection:0];
    [(PKDashboardPaymentTransactionItem *)v12 setGroup:v15];
  }

  secondaryFundingSourceFPANIdentifier = [transactionCopy secondaryFundingSourceFPANIdentifier];
  if (secondaryFundingSourceFPANIdentifier)
  {
    v17 = [(NSMutableDictionary *)self->_sourcesPerFundingSourceIdentifier objectForKey:secondaryFundingSourceFPANIdentifier];
    if (!v17)
    {
      mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
      v19 = [mEMORY[0x1E69B8A58] passWithFPANIdentifier:secondaryFundingSourceFPANIdentifier];

      if (v19)
      {
        null = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPaymentPass:v19];
      }

      else
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v17 = null;
      [(NSMutableDictionary *)self->_sourcesPerFundingSourceIdentifier setObject:null forKey:secondaryFundingSourceFPANIdentifier];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PKDashboardPaymentTransactionItem *)v12 setSecondaryTransactionSource:v17];
    }
  }

  return v12;
}

- (id)paymentTransactionItemForPendingRequest:(id)request
{
  v4 = MEMORY[0x1E69B8EA8];
  requestCopy = request;
  v6 = objc_alloc_init(v4);
  requestToken = [requestCopy requestToken];
  [v6 setIdentifier:requestToken];

  currencyAmount = [requestCopy currencyAmount];
  amount = [currencyAmount amount];
  [v6 setAmount:amount];

  currencyAmount2 = [requestCopy currencyAmount];
  currency = [currencyAmount2 currency];
  [v6 setCurrencyCode:currency];

  [v6 setTransactionType:3];
  [v6 setPeerPaymentType:3];
  [v6 setTransactionStatus:0];
  requesteeAddress = [requestCopy requesteeAddress];
  [v6 setPeerPaymentCounterpartHandle:requesteeAddress];

  memo = [requestCopy memo];
  [v6 setPeerPaymentMemo:memo];

  requestDate = [requestCopy requestDate];
  [v6 setTransactionDate:requestDate];

  expiryDate = [requestCopy expiryDate];

  [v6 setExpirationDate:expiryDate];
  [v6 setAccountType:1];
  [v6 setOriginatedByDevice:1];
  [v6 setHasNotificationServiceData:1];
  [v6 setProcessedForLocation:1];
  v16 = [(PKDashboardPaymentPassDataSource *)self paymentTransactionItemForTransaction:v6];

  return v16;
}

- (unint64_t)firstSectionIndexForSectionIdentifier:(unint64_t)identifier
{
  if (!identifier)
  {
    return 0;
  }

  v5 = 0;
  for (i = 0; i != identifier; ++i)
  {
    dynamicSections = self->_dynamicSections;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
    v9 = [(NSMutableDictionary *)dynamicSections objectForKeyedSubscript:v8];
    v10 = v9;
    if (!v9)
    {
      v9 = &unk_1F3CC7B38;
    }

    unsignedIntegerValue = [v9 unsignedIntegerValue];

    v5 += unsignedIntegerValue;
  }

  return v5;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)_dataSourceIndicesForIndexSection:(SEL)section
{
  v6 = [MEMORY[0x1E696AC88] indexPathForItem:-1 inSection:a4];
  [(PKDashboardPaymentPassDataSource *)self _dataSourceIndicesForIndexPath:v6];

  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)_dataSourceIndicesForIndexPath:(SEL)path
{
  v16 = a4;
  section = [v16 section];
  v7 = 0;
  v8 = -1;
  do
  {
    v9 = v7;
    ++v8;
    dynamicSections = self->_dynamicSections;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
    v12 = [(NSMutableDictionary *)dynamicSections objectForKeyedSubscript:v11];
    v13 = v12;
    if (!v12)
    {
      v12 = &unk_1F3CC7B38;
    }

    unsignedIntegerValue = [v12 unsignedIntegerValue];

    v7 = unsignedIntegerValue + v9;
  }

  while (unsignedIntegerValue + v9 <= section);
  retstr->var0 = v8;
  retstr->var1 = section - v9;
  retstr->var2 = [v16 item];

  return result;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)section
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  result = [(PKDashboardPaymentPassDataSource *)self _dataSourceIndicesForIndexSection:section];
  switch(v13)
  {
    case 1:
      if (!self->_allContentIsLoaded || !self->_canDisplayBalance)
      {
        return 0;
      }

      return self->_numberOfBalanceDashboardItems;
    case 2:
      if (!self->_allContentIsLoaded)
      {
        return 0;
      }

      return [(PKDashboardPaymentPassDataSource *)self numberOfBankConnectDashboardItems];
    case 3:
      if (!self->_allContentIsLoaded)
      {
        return 0;
      }

      v11 = self->_tileGroups == 0;
      return !v11;
    case 4:
      if (!self->_allContentIsLoaded)
      {
        return 0;
      }

      return [(PKDashboardPaymentPassDataSource *)self shouldShowRewardsBalanceSection];
    case 5:
      if (!self->_allContentIsLoaded)
      {
        return 0;
      }

      return [(PKDashboardPaymentPassDataSource *)self numberOfAccounts];
    case 6:
      if (!self->_allContentIsLoaded)
      {
        return 0;
      }

      transitItems = self->_transitItems;
      return [(NSArray *)transitItems count];
    case 7:
      if (!self->_allContentIsLoaded)
      {
        return 0;
      }

      messages = self->_messages;
      goto LABEL_38;
    case 8:
      if (!self->_allContentIsLoaded)
      {
        return 0;
      }

      messages = self->_secondaryMessages;
LABEL_38:
      v11 = [(NSOrderedSet *)messages count]== 0;
      return !v11;
    case 9:
      if (!self->_allContentIsLoaded || !self->_isShowingPeerPaymentPendingRequests)
      {
        return 0;
      }

      transitItems = self->_outgoingRequests;
      return [(NSArray *)transitItems count];
    case 10:
      if (!self->_allContentIsLoaded)
      {
        return 0;
      }

      return [(PKDashboardPaymentPassDataSource *)self numberOfUpcomingRecurringPeerPayments];
    case 11:
      if (!self->_allContentIsLoaded || [(PKDashboardPaymentPassDataSource *)self _shouldUseFinanceKitTransactions])
      {
        return 0;
      }

      if (![(PKDashboardPaymentPassDataSource *)self transactionsCount]&& self->_filterType)
      {
        return 1;
      }

      financeKitProvider = self;
      return [financeKitProvider transactionsCount];
    case 12:
      if (!self->_allContentIsLoaded)
      {
        return 0;
      }

      financeKitProvider = self->_financeKitProvider;
      return [financeKitProvider transactionsCount];
    case 13:
      if (!self->_allContentIsLoaded)
      {
        return 0;
      }

      v6 = [(NSArray *)self->_transactionGroups objectAtIndex:v14];
      v5 = [v6 count];
      goto LABEL_29;
    case 14:
      if (!self->_allContentIsLoaded)
      {
        return 0;
      }

      v6 = [(NSArray *)self->_auxiliarySectionInfo objectAtIndex:v14];
      items = [v6 items];
      v5 = [items count];

LABEL_29:
      return v5;
    case 15:
      return 0;
    case 16:
      __break(1u);
      return result;
    default:
      return 1;
  }
}

- (unint64_t)numberOfSections
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dynamicSections = self->_dynamicSections;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PKDashboardPaymentPassDataSource_numberOfSections__block_invoke;
  v5[3] = &unk_1E8015520;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableDictionary *)dynamicSections enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3 + 16;
}

uint64_t __52__PKDashboardPaymentPassDataSource_numberOfSections__block_invoke(uint64_t result, uint64_t a2, void *a3)
{
  v3 = result;
  if (*(*(result + 32) + 788) == 1)
  {
    result = [a3 integerValue];
    v4 = result - 1;
  }

  else
  {
    v4 = -1;
  }

  *(*(*(v3 + 40) + 8) + 24) += v4;
  return result;
}

- (id)titleForSection:(unint64_t)section
{
  v54 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v51 = 0;
  v52 = 0;
  [(PKDashboardPaymentPassDataSource *)self _dataSourceIndicesForIndexSection:section];
  objc_initWeak(&location, self);
  header = 0;
  if (v50 <= 10)
  {
    if (v50 != 3)
    {
      if (v50 == 9)
      {
        if (self->_allContentIsLoaded && self->_isShowingPeerPaymentPendingRequests && [(NSArray *)self->_outgoingRequests count])
        {
          header = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPen_1.isa);
          goto LABEL_45;
        }
      }

      else
      {
        v6 = 0;
        v40 = 0;
        labelColor = 0;
        v7 = 0;
        if (v50 != 10)
        {
          goto LABEL_61;
        }

        if (self->_allContentIsLoaded && [(PKDashboardPaymentPassDataSource *)self numberOfUpcomingRecurringPeerPayments])
        {
          header = PKLocalizedPeerPaymentRecurringString(&cfstr_DashboardUpcom.isa);
          goto LABEL_45;
        }
      }

      goto LABEL_35;
    }

    if (!self->_allContentIsLoaded)
    {
      goto LABEL_35;
    }

    tileGroups = self->_tileGroups;
    if (!tileGroups)
    {
      goto LABEL_35;
    }

    v8 = [(NSArray *)tileGroups objectAtIndexedSubscript:v51];
    tiles = [v8 tiles];
    v11 = [tiles count];

    if (v11)
    {
      state = [v8 state];
      stateTypeGroup = [state stateTypeGroup];
      header = [stateTypeGroup header];
      goto LABEL_49;
    }

    v7 = 0;
LABEL_47:
    v40 = 0;
    labelColor = 0;
    header = 0;
    goto LABEL_52;
  }

  if (v50 > 12)
  {
    if (v50 != 13)
    {
      v6 = 0;
      v40 = 0;
      labelColor = 0;
      v7 = 0;
      if (v50 != 14)
      {
        goto LABEL_61;
      }

      if (!self->_allContentIsLoaded)
      {
        goto LABEL_35;
      }

      v8 = [(NSArray *)self->_auxiliarySectionInfo objectAtIndex:v51];
      header = [v8 title];
      goto LABEL_51;
    }

    if (!self->_allContentIsLoaded || self->_transactionGrouping == 1)
    {
      goto LABEL_35;
    }

    v8 = [(NSArray *)self->_transactionGroups objectAtIndex:v51];
    if ([v8 count])
    {
      firstObject = [v8 firstObject];
      state = [firstObject group];

      if ([state type] == 3)
      {
        header = PKLocalizedPaymentString(&cfstr_DashboardAllTr.isa);
LABEL_50:

LABEL_51:
        v7 = 0;
        v11 = 0;
        v40 = 0;
        labelColor = 0;
        goto LABEL_52;
      }

      formatterYear = self->_formatterYear;
      stateTypeGroup = [v8 firstObject];
      group = [stateTypeGroup group];
      startDate = [group startDate];
      header = [(NSDateFormatter *)formatterYear stringFromDate:startDate];

LABEL_49:
      goto LABEL_50;
    }

    v7 = 0;
    v11 = 0;
    goto LABEL_47;
  }

  if (v50 != 11)
  {
    if (self->_allContentIsLoaded)
    {
      v5 = @"DASHBOARD_TRANSACTIONS_HEADER";
LABEL_6:
      header = PKLocalizedPaymentString(&v5->isa);
LABEL_45:
      v7 = 0;
      v11 = 0;
      v40 = 0;
      labelColor = 0;
      goto LABEL_53;
    }

LABEL_35:
    labelColor = 0;
    header = 0;
    v40 = 0;
    v7 = 0;
LABEL_36:
    v6 = 0;
    goto LABEL_61;
  }

  if (!self->_allContentIsLoaded || ![(PKDashboardPaymentPassDataSource *)self transactionsCount]&& !self->_filterType)
  {
    goto LABEL_35;
  }

  if ([(PKDashboardPaymentPassDataSource *)self supportsBankConnectTransactions])
  {
    header = PKLocalizedBankConnectString(&cfstr_BankConnectDas_11.isa);
    goto LABEL_45;
  }

  if (([(PKPaymentPass *)self->_pass isIdentityPass]& 1) != 0)
  {
    v5 = @"DASHBOARD_ACTIVITY_HEADER";
    goto LABEL_6;
  }

  header = PKLocalizedPaymentString(&cfstr_DashboardTrans.isa);
  feature = [(PKAccount *)self->_account feature];
  if (feature == 2)
  {
    v16 = PKLocalizedFeatureString();

    header = v16;
  }

  if (![(PKDashboardPaymentPassDataSource *)self _canFilterTransactions])
  {
    goto LABEL_45;
  }

  if (_UISolariumEnabled())
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v18 = [MEMORY[0x1E69DCAD8] configurationWithHierarchicalColor:secondaryLabelColor];
    v19 = [MEMORY[0x1E69DCAD8] configurationWithWeight:6];
    v20 = [v18 configurationByApplyingConfiguration:v19];

    v40 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"line.horizontal.3.decrease.circle.fill" withConfiguration:v20];

    labelColor = 0;
  }

  else
  {
    if (self->_filterType)
    {
      v26 = @"line.horizontal.3.decrease.circle.fill";
    }

    else
    {
      v26 = @"line.horizontal.3.decrease.circle";
    }

    v40 = [MEMORY[0x1E69DCAB8] systemImageNamed:v26];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  if (self->_isShowingPeerPaymentPendingRequests)
  {
    if (self->_shouldDisplayDailyCashFilter)
    {
      v27 = &unk_1F3CC8558;
    }

    else
    {
      v27 = &unk_1F3CC8570;
    }
  }

  else
  {
    v27 = &unk_1F3CC8588;
    if (feature != 2)
    {
      v27 = 0;
    }
  }

  obj = v27;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v28 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v28)
  {
    v29 = *v46;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v46 != v29)
        {
          objc_enumerationMutation(obj);
        }

        integerValue = [*(*(&v45 + 1) + 8 * i) integerValue];
        v32 = integerValue;
        if (integerValue <= 3)
        {
          if (integerValue > 1)
          {
            if (integerValue == 2)
            {
              v33 = @"PEER_PAYMENT_TRANSACTION_FILTER_SENT";
            }

            else
            {
              v33 = @"PEER_PAYMENT_TRANSACTION_FILTER_RECEIVED";
            }
          }

          else
          {
            v33 = @"PEER_PAYMENT_TRANSACTION_FILTER_ALL";
            if (v32)
            {
              if (v32 != 1)
              {
                goto LABEL_100;
              }

              v33 = @"PEER_PAYMENT_TRANSACTION_FILTER_DAILY_CASH";
            }
          }

LABEL_97:
          v34 = PKLocalizedPeerPaymentString(&v33->isa);
LABEL_99:
          v3 = v34;
          goto LABEL_100;
        }

        if (integerValue <= 5)
        {
          if (integerValue == 4)
          {
            v33 = @"PEER_PAYMENT_TRANSACTION_FILTER_TRANSFERS";
          }

          else
          {
            v33 = @"PEER_PAYMENT_TRANSACTION_FILTER_PURCHASES";
          }

          goto LABEL_97;
        }

        if (integerValue == 6 || integerValue == 7 || integerValue == 8)
        {
          v34 = PKLocalizedFeatureString();
          goto LABEL_99;
        }

LABEL_100:
        v35 = MEMORY[0x1E69DC628];
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __52__PKDashboardPaymentPassDataSource_titleForSection___block_invoke;
        v43[3] = &unk_1E8019048;
        objc_copyWeak(v44, &location);
        v44[1] = v32;
        v36 = [v35 actionWithTitle:v3 image:0 identifier:0 handler:v43];
        v37 = v36;
        if (self->_filterType == v32)
        {
          [v36 setState:1];
        }

        v38 = **(&unk_1E801E8B0 + v32);
        [v37 setAccessibilityIdentifier:v38];

        [v8 addObject:v37];
        objc_destroyWeak(v44);
      }

      v28 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v28);
  }

  v7 = [MEMORY[0x1E69DCC60] menuWithChildren:{v8, obj}];
  [v7 setAccessibilityIdentifier:*MEMORY[0x1E69B97F0]];
  v11 = 2;
LABEL_52:

LABEL_53:
  if (!header)
  {
    header = 0;
    goto LABEL_36;
  }

  v24 = [PKDashboardHeaderTextItem itemWithHeaderText:?];
  v6 = v24;
  if (v40)
  {
    [v24 setActionImage:v40];
  }

  if (v7)
  {
    [v6 setMenu:v7];
  }

  if (labelColor)
  {
    [v6 setActionColor:labelColor];
  }

  [v6 setActionStyle:v11];
LABEL_61:
  objc_destroyWeak(&location);

  return v6;
}

void __52__PKDashboardPaymentPassDataSource_titleForSection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[84] = *(a1 + 40);
    v6 = WeakRetained;
    [WeakRetained reloadTransactionsWithSummariesReload:0];
    [v6 reloadTransactionGroups];
    v3 = objc_loadWeakRetained(v6 + 4);
    if (v3)
    {
      v4 = [v6 firstSectionIndexForSectionIdentifier:11];
      v5 = [MEMORY[0x1E696AC90] indexSetWithIndex:v4];
      [v3 reloadSections:v5];
    }

    WeakRetained = v6;
  }
}

- (id)footerTextItemForSection:(unint64_t)section
{
  v47[1] = *MEMORY[0x1E69E9840];
  v44 = 0;
  v45 = 0;
  v46 = 0;
  [(PKDashboardPaymentPassDataSource *)self _dataSourceIndicesForIndexSection:section];
  if (!self->_allContentIsLoaded)
  {
    v4 = 0;
    goto LABEL_40;
  }

  v5 = 0;
  bankConnectLinkedAccountData = [(PKDashboardPaymentPassDataSource *)self bankConnectLinkedAccountData];
  account = [bankConnectLinkedAccountData account];

  balance = [account balance];
  account = self->_account;
  if (account)
  {
LABEL_7:
    feature = [(PKAccount *)account feature];
    objc_initWeak(&location, self);
    if (feature == 2)
    {
      if (v44 == 15)
      {
        creditDetails = [(PKAccount *)self->_account creditDetails];
        accountSummary = [creditDetails accountSummary];

        if ([(PKFDICSignageConfiguration *)accountSummary requiresDebtCollectionNotices])
        {
          v13 = PKLocalizedFeatureString();
        }

        else
        {
          v13 = 0;
        }

        accounts = [(PKDashboardPaymentPassDataSource *)self accounts];
        v18 = [accounts pk_containsObjectPassingTest:&__block_literal_global_175];

        v19 = PKDynamicLocalizedFeatureString();
        v20 = @"FDIC_LEGAL_NOTICES_FOOTER";
        if (v18)
        {
          v20 = @"FDIC_LEGAL_NOTICES_FOOTER_WITH_SAVINGS";
        }

        v21 = v20;
        v22 = PKDynamicLocalizedFeatureString();
        v35 = v19;
        if ([v13 length])
        {
          v23 = [v13 stringByAppendingFormat:@"\n\n%@", v22];
        }

        else
        {
          v23 = v22;
        }

        v5 = v23;

        v4 = [PKDashboardFooterTextItem itemWithFooterText:v5];
        v24 = [PKTextRangeHyperlink alloc];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __61__PKDashboardPaymentPassDataSource_footerTextItemForSection___block_invoke_2;
        v40[3] = &unk_1E801A2F0;
        v25 = v41;
        objc_copyWeak(v41, &location);
        v42 = v18;
        v41[1] = 2;
        v26 = [(PKTextRangeHyperlink *)v24 initWithLinkText:v35 action:v40];
        v47[0] = v26;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
        [v4 setSources:v27];

        goto LABEL_36;
      }
    }

    else if ([(PKDashboardPaymentPassDataSource *)self _isPeerPaymentPass])
    {
      IsFDICInsured = PKPeerPaymentAccountIsFDICInsured();
      if (v44 == 1)
      {
        if (self->_balanceSectionHasFooter)
        {
          accountSummary = [[PKFDICSignageConfiguration alloc] initWithFeature:1 displayingBankName:1];
          v4 = [PKDashboardFooterTextItem initWithFDICConfiguration:accountSummary];
LABEL_37:

          goto LABEL_38;
        }
      }

      else if (v44 == 15)
      {
        v15 = IsFDICInsured;
        v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (v15 & 1 | ((PKPeerPaymentFDICSignageEnabled() & 1) == 0))
        {
          v16 = 0;
        }

        else
        {
          peerPaymentAccountResolutionController = self->_peerPaymentAccountResolutionController;
          if (peerPaymentAccountResolutionController && [(PKPeerPaymentAccountResolutionController *)peerPaymentAccountResolutionController currentPeerPaymentAccountResolution]== 2 || PKPeerPaymentAccountCanPerformManualIdentityVerification())
          {
            v29 = PKLocalizedPeerPaymentString(&cfstr_FdicUnverified.isa);
            v16 = PKLocalizedPeerPaymentString(&cfstr_FdicUnverified_0.isa, &stru_1F3BD5BF0.isa, v29);
            v30 = [PKTextRangeHyperlink alloc];
            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = __61__PKDashboardPaymentPassDataSource_footerTextItemForSection___block_invoke_3;
            v38[3] = &unk_1E8010998;
            objc_copyWeak(&v39, &location);
            v31 = [(PKTextRangeHyperlink *)v30 initWithLinkText:v29 action:v38];
            [v35 addObject:v31];

            objc_destroyWeak(&v39);
          }

          else
          {
            v16 = PKLocalizedPeerPaymentString(&cfstr_FdicUnverified_1.isa);
          }
        }

        v21 = PKDynamicLocalizedPeerPaymentString(&cfstr_FdicLegalNotic_4.isa);
        v22 = PKDynamicLocalizedPeerPaymentString(&cfstr_FdicLegalNotic_2.isa, &stru_1F3BD5BF0.isa, v21);
        if ([v16 length])
        {
          v32 = [v16 stringByAppendingFormat:@"\n\n%@", v22];
        }

        else
        {
          v32 = v22;
        }

        accountSummary = v32;

        v33 = [PKTextRangeHyperlink alloc];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __61__PKDashboardPaymentPassDataSource_footerTextItemForSection___block_invoke_4;
        v36[3] = &unk_1E8010998;
        v25 = &v37;
        objc_copyWeak(&v37, &location);
        v26 = [(PKTextRangeHyperlink *)v33 initWithLinkText:v21 action:v36];
        [v35 addObject:v26];
        v4 = [PKDashboardFooterTextItem itemWithFooterText:accountSummary];
        [v4 setSources:v35];
LABEL_36:

        objc_destroyWeak(v25);
        goto LABEL_37;
      }
    }

    v4 = 0;
LABEL_38:
    objc_destroyWeak(&location);
    goto LABEL_39;
  }

  if ([(PKDashboardPaymentPassDataSource *)self _isPeerPaymentPass])
  {
    account = self->_account;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_39:

LABEL_40:

  return v4;
}

void __61__PKDashboardPaymentPassDataSource_footerTextItemForSection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*(a1 + 48))
    {
      v3 = 5;
    }

    else
    {
      v3 = 0;
    }

    v8 = WeakRetained;
    v4 = [[PKAccountLegalDisclosureViewController alloc] initWithFeature:*(a1 + 40) associatedAccountFeature:v3];
    v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v4];
    v6 = objc_loadWeakRetained(v8 + 100);
    v7 = [v6 navigationController];
    [v7 presentViewController:v5 animated:1 completion:0];

    WeakRetained = v8;
  }
}

void __61__PKDashboardPaymentPassDataSource_footerTextItemForSection___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_alloc_init(MEMORY[0x1E69B8F08]);
    [v2 setVerificationContext:1];
    [v3[23] presentFlowForAccountResolution:2 configuration:v2 completion:0];

    WeakRetained = v3;
  }
}

void __61__PKDashboardPaymentPassDataSource_footerTextItemForSection___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = [[PKAccountLegalDisclosureViewController alloc] initWithFeature:1];
    v3 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v2];
    v4 = objc_loadWeakRetained(v6 + 100);
    v5 = [v4 navigationController];
    [v5 presentViewController:v3 animated:1 completion:0];

    WeakRetained = v6;
  }
}

- (id)_deletablePaymentTransactionForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transaction = [itemCopy transaction];
    if ([transaction isDeletable])
    {
      v5 = transaction;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)canDeleteItem:(id)item
{
  v3 = [(PKDashboardPaymentPassDataSource *)self _deletablePaymentTransactionForItem:item];
  v4 = v3 != 0;

  return v4;
}

- (void)deleteItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_customDelegate);
  v9 = objc_loadWeakRetained(&self->_delegate);
  v10 = [(PKDashboardPaymentPassDataSource *)self _deletablePaymentTransactionForItem:itemCopy];

  if (WeakRetained && v9 && v10)
  {
    v11 = [MEMORY[0x1E696AC88] indexPathForRow:-[NSArray indexOfObject:](self->_transactions inSection:{"indexOfObject:", v10), -[PKDashboardPaymentPassDataSource firstSectionIndexForSectionIdentifier:](self, "firstSectionIndexForSectionIdentifier:", 11)}];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__PKDashboardPaymentPassDataSource_deleteItem_completionHandler___block_invoke;
    v12[3] = &unk_1E801D980;
    v15 = handlerCopy;
    v12[4] = self;
    v13 = v10;
    v14 = v9;
    [WeakRetained presentActivityDeletionConfirmationAtIndexPath:v11 completion:v12];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __65__PKDashboardPaymentPassDataSource_deleteItem_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(*(a1 + 32) + 96) limit];
    v4 = [*(*(a1 + 32) + 56) count];
    v5 = *(*(a1 + 32) + 96);
    v6 = [v5 startDate];
    v7 = [*(*(a1 + 32) + 96) endDate];
    [v5 setLimit:v4 + 1 startDate:v6 endDate:v7];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__PKDashboardPaymentPassDataSource_deleteItem_completionHandler___block_invoke_2;
    v15[3] = &unk_1E801D958;
    v18 = v3;
    v14 = *(a1 + 32);
    v8 = *(v14 + 96);
    v9 = *(&v14 + 1);
    v10 = *(a1 + 56);
    v19 = v4;
    *&v11 = *(a1 + 48);
    *(&v11 + 1) = v10;
    v16 = v14;
    v17 = v11;
    [v8 reloadTransactionsWithCompletion:v15];
  }

  else
  {
    v12 = *(a1 + 56);
    if (v12)
    {
      v13 = *(v12 + 16);

      v13();
    }
  }
}

void __65__PKDashboardPaymentPassDataSource_deleteItem_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 96);
  v5 = *(a1 + 64);
  v6 = [v4 startDate];
  v7 = [*(*(a1 + 32) + 96) endDate];
  [v4 setLimit:v5 startDate:v6 endDate:v7];

  v8 = [v3 indexOfObject:*(a1 + 40)];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = *(a1 + 56);
    if (v9)
    {
      (*(v9 + 16))(v9, 0);
    }
  }

  else
  {
    v10 = v8;
    v11 = [v3 count] == *(a1 + 72) + 1;
    v12 = [v3 mutableCopy];
    [v12 removeObjectAtIndex:v10];
    v13 = *(a1 + 48);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __65__PKDashboardPaymentPassDataSource_deleteItem_completionHandler___block_invoke_3;
    v19[3] = &unk_1E801D930;
    v19[4] = *(a1 + 32);
    v14 = v12;
    v20 = v14;
    v22 = v10;
    v21 = *(a1 + 48);
    v23 = v11;
    [v13 performBatchUpdates:v19 completion:0];
    v15 = *(a1 + 56);
    if (v15)
    {
      (*(v15 + 16))(v15, 1);
    }

    v16 = *(a1 + 40);
    v17 = *(*(a1 + 32) + 984);
    v18 = [v16 identifier];
    [v17 deletePaymentTransactionWithIdentifier:v18];
  }
}

void __65__PKDashboardPaymentPassDataSource_deleteItem_completionHandler___block_invoke_3(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  v5 = [*(a1 + 32) firstSectionIndexForSectionIdentifier:11];
  v6 = [MEMORY[0x1E696AC88] indexPathForItem:*(a1 + 56) inSection:v5];
  v7 = *(a1 + 48);
  v13[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v7 deleteItemsAtIndexPaths:v8];

  if (*(a1 + 64) == 1)
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(*(a1 + 40) inSection:{"count") - 1, v5}];
    v10 = *(a1 + 48);
    v12 = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    [v10 insertItemsAtIndexPaths:v11];
  }
}

- (void)reloadFamilyCollection
{
  if ([(PKDashboardPaymentPassDataSource *)self _isCreditPass]|| [(PKDashboardPaymentPassDataSource *)self _isPeerPaymentPass])
  {
    paymentDataProvider = self->_paymentDataProvider;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __58__PKDashboardPaymentPassDataSource_reloadFamilyCollection__block_invoke;
    v4[3] = &unk_1E8014878;
    v4[4] = self;
    [(PKPaymentDefaultDataProvider *)paymentDataProvider familyMembersWithCompletion:v4];
  }
}

void __58__PKDashboardPaymentPassDataSource_reloadFamilyCollection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PKDashboardPaymentPassDataSource_reloadFamilyCollection__block_invoke_2;
  v6[3] = &unk_1E8010A10;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __58__PKDashboardPaymentPassDataSource_reloadFamilyCollection__block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69B88A0]) initWithFamilyMembers:*(a1 + 32)];
  [*(a1 + 40) _updateWithFamilyCollection:v2];
}

- (void)_updateWithFamilyCollection:(id)collection
{
  collectionCopy = collection;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_familyCollection, collection);
    self->_familyCollectionLoaded = 1;
    self->_accountPendingFamilyMembersLoaded = 0;
    [(PKDashboardPaymentPassDataSource *)self reloadAccountPendingMembersWithNewMembers:0];
    [(PKDashboardPaymentPassDataSource *)self reloadMessagesWithReason:@"Family collection change"];
    if (!self->_allContentIsLoaded)
    {
      [(PKDashboardPaymentPassDataSource *)self updateContentIsLoaded];
    }
  }
}

- (void)reloadAccountWithNewAccount:(id)account
{
  v58 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  Current = CFAbsoluteTimeGetCurrent();
  if ([(PKPaymentPass *)self->_pass hasAssociatedPeerPaymentAccount])
  {
    account = self->_account;
    self->_account = 0;

    self->_lastAccountUpdate = 0.0;
    [(PKDashboardPaymentPassDataSource *)self _updateBalance];
    [(PKDashboardPaymentPassDataSource *)self reloadTiles];
    [(PKDashboardPaymentPassDataSource *)self reloadSecondaryMessages];
    [(PKDashboardPaymentPassDataSource *)self reloadFamilyCollection];
    [(PKDashboardPaymentPassDataSource *)self reloadAuxiliaryItems];
    [(PKDashboardPaymentPassDataSource *)self reloadAccounts];
    [(PKDashboardPaymentPassDataSource *)self reloadDisclosuresSectionIfNeeded];
    objc_initWeak(location, self);
    v7 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __64__PKDashboardPaymentPassDataSource_reloadAccountWithNewAccount___block_invoke;
    v53[3] = &unk_1E801D9A8;
    objc_copyWeak(&v54, location);
    [v7 addOperation:v53];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __64__PKDashboardPaymentPassDataSource_reloadAccountWithNewAccount___block_invoke_3;
    v51[3] = &unk_1E801D9A8;
    objc_copyWeak(&v52, location);
    [v7 addOperation:v51];
    null = [MEMORY[0x1E695DFB0] null];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __64__PKDashboardPaymentPassDataSource_reloadAccountWithNewAccount___block_invoke_5;
    v49[3] = &unk_1E8019248;
    objc_copyWeak(&v50, location);
    v9 = [v7 evaluateWithInput:null completion:v49];

    objc_destroyWeak(&v50);
    objc_destroyWeak(&v52);
    objc_destroyWeak(&v54);

    objc_destroyWeak(location);
    goto LABEL_75;
  }

  associatedAccountServiceAccountIdentifier = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];

  if (!associatedAccountServiceAccountIdentifier)
  {
    v18 = self->_account;
    self->_account = 0;

    self->_lastAccountUpdate = 0.0;
    [(PKDashboardPaymentPassDataSource *)self _updateBalance];
    [(PKDashboardPaymentPassDataSource *)self reloadTiles];
    [(PKDashboardPaymentPassDataSource *)self reloadMessagesWithReason:@"Account reload"];
    [(PKDashboardPaymentPassDataSource *)self reloadSecondaryMessages];
    [(PKDashboardPaymentPassDataSource *)self reloadAuxiliaryItems];
    [(PKDashboardPaymentPassDataSource *)self reloadAccounts];
    [(PKDashboardPaymentPassDataSource *)self reloadRecurringPeerPaymentsWithCompletion:0];
    [(PKDashboardPaymentPassDataSource *)self reloadPeerPaymentPendingRequestsWithCompletion:0];
    [(PKDashboardPaymentPassDataSource *)self reloadHomeKitRestrictedGuestAccessState];
    goto LABEL_75;
  }

  if ([(PKPassPresentationContext *)self->_context limitServerLoad])
  {
    v11 = 86400.0;
  }

  else
  {
    v11 = 300.0;
  }

  associatedAccountServiceAccountIdentifier2 = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
  v13 = self->_account;
  if (!accountCopy)
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *location = 134217984;
      *&location[4] = self;
      _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Dashboard (%p): Fetching local account", location, 0xCu);
    }

    v48 = 0;
    v15 = [(PKAccountService *)self->_accountService accountWithIdentifier:associatedAccountServiceAccountIdentifier2 error:&v48];
    accountCopy = v15;
    v16 = (v15 | v48) == 0;
    if (v15 && [v15 feature] == 4)
    {
      isCloudAccount = [accountCopy isCloudAccount];
    }

    else
    {
      isCloudAccount = 0;
    }

    if (((v16 | isCloudAccount) & 1) != 0 && !self->_performingAccountsUpdate && self->_accountService && Current - self->_lastAccountUpdate > 300.0)
    {
      self->_performingAccountsUpdate = 1;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *location = 138412290;
        *&location[4] = associatedAccountServiceAccountIdentifier2;
        _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Dashboard updating all accounts since account id %@ is missing from the device.", location, 0xCu);
      }

      objc_initWeak(location, self);
      accountService = self->_accountService;
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __64__PKDashboardPaymentPassDataSource_reloadAccountWithNewAccount___block_invoke_561;
      v45[3] = &unk_1E8013DF8;
      objc_copyWeak(&v47, location);
      v46 = associatedAccountServiceAccountIdentifier2;
      [(PKAccountService *)accountService updateAccountsWithCompletion:v45];

      objc_destroyWeak(&v47);
      objc_destroyWeak(location);
    }

    if (!accountCopy)
    {
      v21 = 0;
      LOBYTE(v27) = 0;
      v22 = 0;
      accountCopy = 0;
      if (self->_account)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }
  }

  if (!v13)
  {
    if ([(PKDashboardPaymentPassDataSource *)self _isCreditPass])
    {
      creditDetails = [accountCopy creditDetails];
      if (!creditDetails)
      {
        v21 = 0;
        goto LABEL_39;
      }
    }

    else
    {
      if (![(PKDashboardPaymentPassDataSource *)self _isAppleBalancePass])
      {
        goto LABEL_34;
      }

      creditDetails = [accountCopy appleBalanceDetails];
      if (!creditDetails)
      {
        v21 = 0;
        goto LABEL_39;
      }
    }

    date = [MEMORY[0x1E695DF00] date];
    lastUpdated = [accountCopy lastUpdated];
    [date timeIntervalSinceDate:lastUpdated];
    v21 = v26 > v11;

LABEL_39:
    v22 = 0;
    goto LABEL_40;
  }

  if ([accountCopy isContentEqualToAccount:self->_account])
  {
LABEL_34:
    v22 = 0;
    v21 = 0;
    goto LABEL_40;
  }

  v20 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *location = 0;
    _os_log_impl(&dword_1BD026000, v20, OS_LOG_TYPE_DEFAULT, "Dashboard account has changed", location, 2u);
  }

  v21 = 0;
  v22 = 1;
  self->_balanceSectionNeedsUpdate = 1;
  self->_shouldReloadDisclosuresSection = 1;
LABEL_40:
  if ([(PKDashboardPaymentPassDataSource *)self _canDisplayBalance])
  {
    _numberOfBalanceDashboardItems = [(PKDashboardPaymentPassDataSource *)self _numberOfBalanceDashboardItems];
  }

  else
  {
    _numberOfBalanceDashboardItems = 0;
  }

  objc_storeStrong(&self->_account, accountCopy);
  -[PKSecureElementPassContactIssuerHelper setFeatureIdentifier:](self->_contactIssuerHelper, "setFeatureIdentifier:", [accountCopy feature]);
  if ([(PKDashboardPaymentPassDataSource *)self _canDisplayBalance])
  {
    _numberOfBalanceDashboardItems2 = [(PKDashboardPaymentPassDataSource *)self _numberOfBalanceDashboardItems];
  }

  else
  {
    _numberOfBalanceDashboardItems2 = 0;
  }

  if (v13)
  {
    v30 = _numberOfBalanceDashboardItems == _numberOfBalanceDashboardItems2;
  }

  else
  {
    v30 = 1;
  }

  v27 = !v30;
  creditDetails2 = [(PKAccount *)self->_account creditDetails];
  accountSummary = [creditDetails2 accountSummary];
  currentStatement = [accountSummary currentStatement];
  currentStatement = self->_currentStatement;
  self->_currentStatement = currentStatement;

  if ([(PKDashboardPaymentPassDataSource *)self _isCreditPass])
  {
    physicalCardController = self->_physicalCardController;
    if (physicalCardController)
    {
      [(PKPhysicalCardController *)physicalCardController updateWithAccount:accountCopy];
    }

    if (!self->_inboxDataSource)
    {
      v36 = [[PKInboxDataSource alloc] initWithDelegate:self];
      inboxDataSource = self->_inboxDataSource;
      self->_inboxDataSource = v36;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountDidUpdate:accountCopy];
  }

  if (self->_account)
  {
    if (!v27)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_62:
  if (v27 & 1 | ![(PKDashboardPaymentPassDataSource *)self _isCreditPass])
  {
LABEL_63:
    [(PKDashboardPaymentPassDataSource *)self _updateBalance];
  }

LABEL_64:
  [(PKDashboardPaymentPassDataSource *)self reloadTiles];
  [(PKDashboardPaymentPassDataSource *)self reloadAuxiliaryItems];
  [(PKDashboardPaymentPassDataSource *)self reloadAccounts];
  [(PKDashboardPaymentPassDataSource *)self reloadRecurringPeerPaymentsWithCompletion:0];
  [(PKDashboardPaymentPassDataSource *)self reloadPeerPaymentPendingRequestsWithCompletion:0];
  [(PKDashboardPaymentPassDataSource *)self reloadFamilyCollection];
  [(PKDashboardPaymentPassDataSource *)self reloadSecondaryMessages];
  [(PKDashboardPaymentPassDataSource *)self reloadScheduledPayments];
  [(PKDashboardPaymentPassDataSource *)self reloadCreditRecoveryPaymentPlans];
  [(PKDashboardPaymentPassDataSource *)self reloadAccountPendingMembersWithNewMembers:self->_accountPendingFamilyMembers];
  [(PKDashboardPaymentPassDataSource *)self reloadAccountUsersWithNewAccountUserCollection:self->_accountUserCollection];
  [(PKDashboardPaymentPassDataSource *)self reloadAccountUserInvitationsWithNewAccountUserInvitations:self->_accountUserInvitations];
  [(PKDashboardPaymentPassDataSource *)self reloadPhysicalCardsWithNewPhysicalCards:self->_physicalCards];
  [(PKDashboardPaymentPassDataSource *)self _updateTransactionSourceCollection];
  [(PKDashboardPaymentPassDataSource *)self reloadAppleBalance];
  [(PKDashboardPaymentPassDataSource *)self reloadDisclosuresSectionIfNeeded];
  [(PKDashboardPaymentPassDataSource *)self _updateAccountRewardsDataIfNecessary];
  if (v22 & 1 | (v13 == 0))
  {
    [(PKDashboardPaymentPassDataSource *)self reloadMessagesWithReason:@"Account Reload"];
  }

  if (v21 && Current - self->_lastAccountUpdate > 300.0 && !self->_performingAccountUpdate && !self->_performingAccountsUpdate && self->_accountService)
  {
    v39 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      lastUpdated2 = [(PKAccount *)self->_account lastUpdated];
      v41 = [lastUpdated2 description];
      *location = 134218242;
      *&location[4] = self;
      v56 = 2112;
      v57 = v41;
      _os_log_impl(&dword_1BD026000, v39, OS_LOG_TYPE_DEFAULT, "Dashboard (%p): Updating account, last update: %@", location, 0x16u);
    }

    self->_performingAccountUpdate = 1;
    objc_initWeak(location, self);
    v42 = self->_accountService;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __64__PKDashboardPaymentPassDataSource_reloadAccountWithNewAccount___block_invoke_570;
    v43[3] = &unk_1E80159B0;
    objc_copyWeak(&v44, location);
    [(PKAccountService *)v42 updateAccountWithIdentifier:associatedAccountServiceAccountIdentifier2 extended:0 completion:v43];
    objc_destroyWeak(&v44);
    objc_destroyWeak(location);
  }

LABEL_75:
}

void __64__PKDashboardPaymentPassDataSource_reloadAccountWithNewAccount___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__PKDashboardPaymentPassDataSource_reloadAccountWithNewAccount___block_invoke_2;
    v9[3] = &unk_1E8010E20;
    v11 = v7;
    v10 = v6;
    [WeakRetained reloadRecurringPeerPaymentsWithCompletion:v9];
  }
}

void __64__PKDashboardPaymentPassDataSource_reloadAccountWithNewAccount___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__PKDashboardPaymentPassDataSource_reloadAccountWithNewAccount___block_invoke_4;
    v9[3] = &unk_1E8010E20;
    v11 = v7;
    v10 = v6;
    [WeakRetained reloadPeerPaymentPendingRequestsWithCompletion:v9];
  }
}

void __64__PKDashboardPaymentPassDataSource_reloadAccountWithNewAccount___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadMessagesWithReason:@"Account reload"];
    WeakRetained = v2;
  }
}

void __64__PKDashboardPaymentPassDataSource_reloadAccountWithNewAccount___block_invoke_561(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKDashboardPaymentPassDataSource_reloadAccountWithNewAccount___block_invoke_2_562;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __64__PKDashboardPaymentPassDataSource_reloadAccountWithNewAccount___block_invoke_2_562(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 401) = 0;
    *(WeakRetained + 49) = CFAbsoluteTimeGetCurrent();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__PKDashboardPaymentPassDataSource_reloadAccountWithNewAccount___block_invoke_3_563;
    v10[3] = &unk_1E8017088;
    v4 = *(a1 + 32);
    v11 = *(a1 + 40);
    v5 = [v4 pk_firstObjectPassingTest:v10];
    v6 = PKLogFacilityTypeGetObject();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = *(a1 + 40);
        *buf = 138412290;
        v13 = v8;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Successfully fetched account %@ after it was missing from the local device.", buf, 0xCu);
      }

      [v3 reloadAccountWithNewAccount:v5];
    }

    else
    {
      if (v7)
      {
        v9 = *(a1 + 40);
        *buf = 138412290;
        v13 = v9;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Error fetching account %@ after it was missing from the local device.", buf, 0xCu);
      }
    }
  }
}

uint64_t __64__PKDashboardPaymentPassDataSource_reloadAccountWithNewAccount___block_invoke_3_563(uint64_t a1, void *a2)
{
  v3 = [a2 accountIdentifier];
  v4 = *(a1 + 32);
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

  return v8;
}

void __64__PKDashboardPaymentPassDataSource_reloadAccountWithNewAccount___block_invoke_570(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKDashboardPaymentPassDataSource_reloadAccountWithNewAccount___block_invoke_2_571;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __64__PKDashboardPaymentPassDataSource_reloadAccountWithNewAccount___block_invoke_2_571(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 400) = 0;
    *(WeakRetained + 49) = CFAbsoluteTimeGetCurrent();
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"YES";
      v6 = *(a1 + 40);
      if (!*(a1 + 32))
      {
        v5 = @"NO";
      }

      v7 = 134218498;
      v8 = v3;
      v9 = 2114;
      v10 = v5;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Dashboard (%p): Processing account %{public}@, error: %{public}@", &v7, 0x20u);
    }

    if (*(a1 + 32))
    {
      [v3 reloadAccountWithNewAccount:?];
    }
  }
}

- (void)reloadScheduledPayments
{
  if ([(PKDashboardPaymentPassDataSource *)self _isCreditPass])
  {
    account = self->_account;
    if (account)
    {
      if (([(PKAccount *)account accessLevel]| 2) == 2)
      {
        self->_scheduledPaymentsLoaded = 1;
        if (!self->_allContentIsLoaded)
        {

          [(PKDashboardPaymentPassDataSource *)self updateContentIsLoaded];
        }
      }

      else
      {
        objc_initWeak(&location, self);
        accountService = self->_accountService;
        accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __59__PKDashboardPaymentPassDataSource_reloadScheduledPayments__block_invoke;
        v6[3] = &unk_1E8017038;
        objc_copyWeak(&v7, &location);
        [(PKAccountService *)accountService scheduledPaymentsWithAccountIdentifier:accountIdentifier includeFailedRecurringPayments:1 completion:v6];

        objc_destroyWeak(&v7);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __59__PKDashboardPaymentPassDataSource_reloadScheduledPayments__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__PKDashboardPaymentPassDataSource_reloadScheduledPayments__block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __59__PKDashboardPaymentPassDataSource_reloadScheduledPayments__block_invoke_2(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    v4 = objc_alloc(MEMORY[0x1E695DEE8]);
    v5 = [v4 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    v40 = WeakRetained;
    v6 = [WeakRetained[48] creditDetails];
    v7 = [v6 productTimeZone];
    [v5 setTimeZone:v7];

    v39 = v3;
    v37 = [v5 components:28 fromDate:v3];
    v38 = v5;
    v8 = [v5 dateFromComponents:v37];
    obj = objc_alloc_init(MEMORY[0x1E695DF70]);
    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v9 = *(a1 + 32);
    v10 = [v9 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v46;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v46 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v45 + 1) + 8 * i);
          v15 = [v14 scheduleDetails];
          v16 = [v15 frequency];

          v17 = [v14 scheduleDetails];
          v18 = [v17 scheduledDate];

          v20 = [v18 compare:v8] == -1 || v16 < 2;
          v21 = [v14 isRecurring];
          if (v21)
          {
            v22 = [v14 state] == 4;
          }

          else
          {
            v22 = 0;
          }

          if (!v20 && !v22)
          {
            [obj addObject:v14];
          }

          if (v21)
          {
            [v42 addObject:v14];
          }

          if (v16 == 1)
          {
            [v41 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v11);
    }

    v23 = [v42 copy];
    WeakRetained = v40;
    v24 = v40[112];
    v40[112] = v23;

    v25 = [v41 copy];
    v26 = v40[54];
    v40[54] = v25;

    [obj sortUsingComparator:&__block_literal_global_582];
    v27 = PKEqualObjects();
    if ((v27 & 1) == 0)
    {
      v28 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v28, OS_LOG_TYPE_DEFAULT, "Dashboard scheduled payments have changed", buf, 2u);
      }
    }

    objc_storeStrong(v40 + 53, obj);
    *(v40 + 480) = 1;
    if (*(v40 + 788))
    {
      v29 = objc_loadWeakRetained(v40 + 4);
      if (v29)
      {
        v30 = [v40 firstSectionIndexForSectionIdentifier:1];
        if (v27)
        {
          v31 = [v40 numberOfItemsInSection:v30];
          if (v31)
          {
            v32 = v31;
            for (j = 0; j != v32; ++j)
            {
              v34 = [MEMORY[0x1E696AC88] indexPathForItem:j inSection:v30];
              v35 = [v40 itemAtIndexPath:v34];
              [v29 itemChanged:v35 atIndexPath:v34];
            }
          }
        }

        else
        {
          v36 = [MEMORY[0x1E696AC90] indexSetWithIndex:v30];
          [v29 reloadSections:v36];
        }
      }
    }

    else
    {
      [v40 updateContentIsLoaded];
    }
  }
}

uint64_t __59__PKDashboardPaymentPassDataSource_reloadScheduledPayments__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 scheduleDetails];
  v6 = [v5 scheduledDate];
  v7 = [v4 scheduleDetails];

  v8 = [v7 scheduledDate];
  v9 = [v6 compare:v8];

  return v9;
}

- (void)_updateTransactionSourceCollection
{
  v32 = *MEMORY[0x1E69E9840];
  if (![(PKDashboardPaymentPassDataSource *)self _shouldUseFinanceKitTransactions]&& (![(PKDashboardPaymentPassDataSource *)self _isCreditPass]|| self->_account && self->_accountUsersLoaded))
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPaymentPass:self->_pass];
    [v3 addObject:v4];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    accountUsers = [(PKAccountUserCollection *)self->_accountUserCollection accountUsers];
    v6 = [accountUsers countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(accountUsers);
          }

          v10 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithAccountUser:*(*(&v25 + 1) + 8 * i)];
          [v3 addObject:v10];
        }

        v7 = [accountUsers countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v7);
    }

    v11 = self->_transactionSourceCollection;
    v12 = objc_alloc(MEMORY[0x1E69B9300]);
    v13 = [v3 copy];
    v14 = [v12 initWithTransactionSources:v13];

    transactionsCount = [(PKDashboardPaymentPassDataSource *)self transactionsCount];
    _canShowTransactions = [(PKDashboardPaymentPassDataSource *)self _canShowTransactions];
    if (!PKEqualObjects() || (((transactionsCount == 0) ^ _canShowTransactions) & 1) == 0)
    {
      v17 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v14;
        _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "Dashboard transaction source manager has changed %@.", buf, 0xCu);
      }

      objc_storeStrong(&self->_transactionSourceCollection, v14);
      accountResolutionController = self->_accountResolutionController;
      self->_accountResolutionController = 0;

      [(PKDashboardTransactionFetcher *)self->_transactionFetcher setDelegate:0];
      v19 = [objc_alloc(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:self->_transactionSourceCollection paymentDataProvider:self->_paymentDataProvider];
      transactionFetcher = self->_transactionFetcher;
      self->_transactionFetcher = v19;

      [(PKDashboardTransactionFetcher *)self->_transactionFetcher setDelegate:self];
      [(PKDashboardTransactionFetcher *)self->_transactionFetcher setAllowSynchronousFetch:1];
      [(PKDashboardTransactionFetcher *)self->_transactionFetcher setNeedsInstantWithdrawalFees:0];
      v21 = [objc_alloc(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:self->_transactionSourceCollection paymentDataProvider:self->_paymentDataProvider];
      currentMonthFetcher = self->_currentMonthFetcher;
      self->_currentMonthFetcher = v21;

      if ([(PKDashboardPaymentPassDataSource *)self _isCreditPass])
      {
        [(PKSpendingSummaryFetcher *)self->_summaryFetcher unregisterObserver:self];
        summaryFetcher = self->_summaryFetcher;
        self->_summaryFetcher = 0;
      }

      [(PKDashboardPaymentPassDataSource *)self reloadTransactionsWithSummariesReload:1];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __70__PKDashboardPaymentPassDataSource__updateTransactionSourceCollection__block_invoke;
      v24[3] = &unk_1E8010970;
      v24[4] = self;
      [(PKDashboardPaymentPassDataSource *)self executeAfterContentIsLoaded:v24];
      if (!self->_allContentIsLoaded)
      {
        [(PKDashboardPaymentPassDataSource *)self updateContentIsLoaded];
      }
    }
  }
}

- (void)reloadPhysicalCardsWithNewPhysicalCards:(id)cards
{
  cardsCopy = cards;
  _isCreditPass = [(PKDashboardPaymentPassDataSource *)self _isCreditPass];
  if (_isCreditPass && self->_account)
  {
    if (cardsCopy)
    {
      __76__PKDashboardPaymentPassDataSource_reloadPhysicalCardsWithNewPhysicalCards___block_invoke(_isCreditPass, self, cardsCopy);
    }

    else
    {
      objc_initWeak(&location, self);
      accountService = self->_accountService;
      accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __76__PKDashboardPaymentPassDataSource_reloadPhysicalCardsWithNewPhysicalCards___block_invoke_592;
      v8[3] = &unk_1E8016958;
      objc_copyWeak(&v10, &location);
      v9 = &__block_literal_global_587;
      [(PKAccountService *)accountService physicalCardsForAccountWithIdentifier:accountIdentifier completion:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __76__PKDashboardPaymentPassDataSource_reloadPhysicalCardsWithNewPhysicalCards___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = 1;
  if (v4[451] == 1)
  {
    if (PKEqualObjects())
    {
      v6 = 0;
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Dashboard physical cards have changed", v13, 2u);
      }

      v6 = 1;
    }
  }

  v8 = [v5 copy];
  v9 = *(v4 + 103);
  *(v4 + 103) = v8;

  v4[451] = 1;
  v10 = *(v4 + 51);
  if (v10)
  {
    [v10 updateWithPhysicalCards:*(v4 + 103)];
  }

  else
  {
    v11 = [[PKPhysicalCardController alloc] initWithAccountService:*(v4 + 122) paymentPass:*(v4 + 119) account:*(v4 + 48) accountUser:0 physicalCards:*(v4 + 103)];
    v12 = *(v4 + 51);
    *(v4 + 51) = v11;
  }

  if ((v4[788] & 1) == 0)
  {
    [v4 updateContentIsLoaded];
  }

  if (v6)
  {
    [v4 reloadMessagesWithReason:@"Physical card change"];
  }
}

void __76__PKDashboardPaymentPassDataSource_reloadPhysicalCardsWithNewPhysicalCards___block_invoke_592(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PKDashboardPaymentPassDataSource_reloadPhysicalCardsWithNewPhysicalCards___block_invoke_2;
  block[3] = &unk_1E8011108;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __76__PKDashboardPaymentPassDataSource_reloadPhysicalCardsWithNewPhysicalCards___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 40) + 16))();
    WeakRetained = v3;
  }
}

- (void)reloadAccountUsersWithNewAccountUserCollection:(id)collection
{
  collectionCopy = collection;
  if ([(PKDashboardPaymentPassDataSource *)self _isCreditPass])
  {
    account = self->_account;
    if (account)
    {
      if (collectionCopy)
      {
        __83__PKDashboardPaymentPassDataSource_reloadAccountUsersWithNewAccountUserCollection___block_invoke(self, collectionCopy);
      }

      else
      {
        accountService = self->_accountService;
        accountIdentifier = [(PKAccount *)account accountIdentifier];
        v7 = [(PKAccountService *)accountService accountUsersForAccountWithIdentifier:accountIdentifier];

        v8 = [objc_alloc(MEMORY[0x1E69B8450]) initWithAccountUsers:v7];
        __83__PKDashboardPaymentPassDataSource_reloadAccountUsersWithNewAccountUserCollection___block_invoke(self, v8);
      }
    }
  }
}

void __83__PKDashboardPaymentPassDataSource_reloadAccountUsersWithNewAccountUserCollection___block_invoke(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = 1;
  if (v3[449] == 1)
  {
    if (PKEqualObjects())
    {
      v5 = 0;
    }

    else
    {
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Dashboard account users have changed", v8, 2u);
      }

      v5 = 1;
    }
  }

  v7 = *(v3 + 101);
  *(v3 + 101) = v4;

  v3[449] = 1;
  [v3 _updateTransactionSourceCollection];
  if ((v3[788] & 1) == 0)
  {
    [v3 updateContentIsLoaded];
  }

  if (v5)
  {
    [v3 reloadMessagesWithReason:@"Account users change"];
  }
}

- (void)reloadAccountUserInvitationsWithNewAccountUserInvitations:(id)invitations
{
  invitationsCopy = invitations;
  _isCreditPass = [(PKDashboardPaymentPassDataSource *)self _isCreditPass];
  if (_isCreditPass && self->_account)
  {
    if (invitationsCopy)
    {
      __94__PKDashboardPaymentPassDataSource_reloadAccountUserInvitationsWithNewAccountUserInvitations___block_invoke(_isCreditPass, self, invitationsCopy);
    }

    else
    {
      objc_initWeak(&location, self);
      paymentDataProvider = self->_paymentDataProvider;
      accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __94__PKDashboardPaymentPassDataSource_reloadAccountUserInvitationsWithNewAccountUserInvitations___block_invoke_607;
      v8[3] = &unk_1E8012940;
      objc_copyWeak(&v10, &location);
      v9 = &__block_literal_global_603;
      [(PKPaymentDefaultDataProvider *)paymentDataProvider featureApplicationsForAccountIdentifier:accountIdentifier completion:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __94__PKDashboardPaymentPassDataSource_reloadAccountUserInvitationsWithNewAccountUserInvitations___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = 1;
  if (v4[450] == 1)
  {
    if (PKEqualObjects())
    {
      v6 = 0;
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Dashboard account user invitations have changed", v10, 2u);
      }

      v6 = 1;
    }
  }

  v8 = [v5 copy];
  v9 = *(v4 + 102);
  *(v4 + 102) = v8;

  v4[450] = 1;
  if ((v4[788] & 1) == 0)
  {
    [v4 updateContentIsLoaded];
  }

  if (v6)
  {
    [v4 reloadMessagesWithReason:@"Account users invitation change"];
  }
}

void __94__PKDashboardPaymentPassDataSource_reloadAccountUserInvitationsWithNewAccountUserInvitations___block_invoke_607(uint64_t a1, void *a2)
{
  v3 = [a2 pk_objectsPassingTest:&__block_literal_global_610];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__PKDashboardPaymentPassDataSource_reloadAccountUserInvitationsWithNewAccountUserInvitations___block_invoke_3;
  block[3] = &unk_1E8011108;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __94__PKDashboardPaymentPassDataSource_reloadAccountUserInvitationsWithNewAccountUserInvitations___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 40) + 16))();
    WeakRetained = v3;
  }
}

- (void)reloadAccountPendingMembersWithNewMembers:(id)members
{
  membersCopy = members;
  _isCreditPass = [(PKDashboardPaymentPassDataSource *)self _isCreditPass];
  if (_isCreditPass && self->_account)
  {
    if (membersCopy)
    {
      __78__PKDashboardPaymentPassDataSource_reloadAccountPendingMembersWithNewMembers___block_invoke(_isCreditPass, self, membersCopy);
    }

    else
    {
      objc_initWeak(&location, self);
      accountService = self->_accountService;
      accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __78__PKDashboardPaymentPassDataSource_reloadAccountPendingMembersWithNewMembers___block_invoke_616;
      v8[3] = &unk_1E8011130;
      objc_copyWeak(&v10, &location);
      v9 = &__block_literal_global_612;
      [(PKAccountService *)accountService accountPendingFamilyMembersForAccountIdentifier:accountIdentifier completion:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __78__PKDashboardPaymentPassDataSource_reloadAccountPendingMembersWithNewMembers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = 1;
  if (v4[464] == 1)
  {
    if (PKEqualObjects())
    {
      v6 = 0;
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Dashboard account pending family members have changed", v9, 2u);
      }

      v6 = 1;
    }
  }

  v8 = *(v4 + 57);
  *(v4 + 57) = v5;

  v4[464] = 1;
  if ((v4[788] & 1) == 0)
  {
    [v4 updateContentIsLoaded];
  }

  if (v6)
  {
    [v4 reloadMessagesWithReason:@"Pending family change"];
  }
}

void __78__PKDashboardPaymentPassDataSource_reloadAccountPendingMembersWithNewMembers___block_invoke_616(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PKDashboardPaymentPassDataSource_reloadAccountPendingMembersWithNewMembers___block_invoke_2;
  block[3] = &unk_1E8011108;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __78__PKDashboardPaymentPassDataSource_reloadAccountPendingMembersWithNewMembers___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 40) + 16))();
    WeakRetained = v3;
  }
}

- (void)_updateAccountRewardsDataIfNecessary
{
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  if (accountIdentifier)
  {
    if ([(PKAccount *)self->_account feature]== 2 && !self->_hasUpdatedAccountRewardsDataIfNecessary)
    {
      self->_hasUpdatedAccountRewardsDataIfNecessary = 1;
      [(PKDashboardPaymentPassDataSource *)self _updateAccountPromotions];
      [(PKDashboardPaymentPassDataSource *)self _updateAccountEnhancedMerchants];
    }
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Unexpected nil account identifier. Not fetching promotions.", v5, 2u);
    }
  }
}

- (void)_updateAccountPromotions
{
  v10 = *MEMORY[0x1E69E9840];
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  if (([(PKAccount *)self->_account showCardPromotions]& 1) != 0)
  {
    accountService = self->_accountService;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__PKDashboardPaymentPassDataSource__updateAccountPromotions__block_invoke;
    v6[3] = &unk_1E80197A0;
    v7 = accountIdentifier;
    [(PKAccountService *)accountService updateAccountPromotionsForAccountWithIdentifier:v7 observeCooldownPeriod:1 completion:v6];
    v5 = v7;
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = accountIdentifier;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Not fetching promotions for account %@ because it is not a supported feature on this account", buf, 0xCu);
    }
  }
}

void __60__PKDashboardPaymentPassDataSource__updateAccountPromotions__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = a3;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Updated account promotions at pass load for account %@. Error: %@", &v7, 0x16u);
  }
}

- (void)_updateAccountEnhancedMerchants
{
  v10 = *MEMORY[0x1E69E9840];
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  if (([(PKAccount *)self->_account showEnhancedMerchants]& 1) != 0)
  {
    accountService = self->_accountService;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67__PKDashboardPaymentPassDataSource__updateAccountEnhancedMerchants__block_invoke;
    v6[3] = &unk_1E80197A0;
    v7 = accountIdentifier;
    [(PKAccountService *)accountService updateAccountEnhancedMerchantsForAccountWithIdentifier:v7 cooldownLevel:2 completion:v6];
    v5 = v7;
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = accountIdentifier;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Not fetching enhanced merchants for account %@ because it is not a supported feature on this account", buf, 0xCu);
    }
  }
}

void __67__PKDashboardPaymentPassDataSource__updateAccountEnhancedMerchants__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = a3;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Updated account enhanced merchants at pass load for account %@. Error: %@", &v7, 0x16u);
  }
}

- (void)_updateBalanceAndPreventReload:(BOOL)reload
{
  v5 = 1;
  self->_balanceLoaded = 1;
  canDisplayBalance = self->_canDisplayBalance;
  self->_canDisplayBalance = [(PKDashboardPaymentPassDataSource *)self _canDisplayBalance];
  numberOfBalanceDashboardItems = self->_numberOfBalanceDashboardItems;
  self->_numberOfBalanceDashboardItems = [(PKDashboardPaymentPassDataSource *)self _numberOfBalanceDashboardItems];
  balanceSectionHasFooter = self->_balanceSectionHasFooter;
  _balanceSectionHasFooter = [(PKDashboardPaymentPassDataSource *)self _balanceSectionHasFooter];
  self->_balanceSectionHasFooter = _balanceSectionHasFooter;
  if (canDisplayBalance == self->_canDisplayBalance)
  {
    v5 = numberOfBalanceDashboardItems != self->_numberOfBalanceDashboardItems || balanceSectionHasFooter == !_balanceSectionHasFooter;
  }

  if (self->_allContentIsLoaded)
  {
    if (self->_balanceSectionNeedsUpdate || v5)
    {
      self->_balanceSectionNeedsUpdate = 0;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);

      if (WeakRetained)
      {
        if (!reload)
        {
          v11 = [(PKDashboardPaymentPassDataSource *)self firstSectionIndexForSectionIdentifier:1];
          if (v5)
          {
            v19 = objc_loadWeakRetained(&self->_delegate);
            v12 = [MEMORY[0x1E696AC90] indexSetWithIndex:v11];
            [v19 reloadSections:v12];
          }

          else
          {
            v13 = [(PKDashboardPaymentPassDataSource *)self numberOfItemsInSection:v11];
            if (v13)
            {
              v14 = v13;
              for (i = 0; i != v14; ++i)
              {
                v16 = [MEMORY[0x1E696AC88] indexPathForItem:i inSection:v11];
                v17 = objc_loadWeakRetained(&self->_delegate);
                v18 = [(PKDashboardPaymentPassDataSource *)self itemAtIndexPath:v16];
                [v17 itemChanged:v18 atIndexPath:v16];
              }
            }
          }
        }
      }
    }
  }

  else
  {
    self->_balanceSectionNeedsUpdate = 0;

    [(PKDashboardPaymentPassDataSource *)self updateContentIsLoaded];
  }
}

- (void)loadSummariesWithForceReload:(BOOL)reload
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_transactionSourceCollection)
  {
    if (self->_account)
    {
      reloadCopy = reload;
      if ([(PKDashboardPaymentPassDataSource *)self _isCreditPass])
      {
        if (!self->_summaryFetcher)
        {
          v5 = [objc_alloc(MEMORY[0x1E69B92A8]) initWithTransactionSourceCollection:self->_transactionSourceCollection account:self->_account accountUser:0];
          summaryFetcher = self->_summaryFetcher;
          self->_summaryFetcher = v5;

          [(PKSpendingSummaryFetcher *)self->_summaryFetcher registerObserver:self];
        }

        objc_initWeak(&location, self);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __65__PKDashboardPaymentPassDataSource_loadSummariesWithForceReload___block_invoke;
        aBlock[3] = &unk_1E801DA50;
        objc_copyWeak(&v15, &location);
        v7 = _Block_copy(aBlock);
        v8 = v7;
        if (!self->_weeks || reloadCopy)
        {
          *&self->_pendingSummaryUpdate = 0;
          v9 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            selfCopy = self;
            _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Dashboard loading (%p): Fetching available summaries", buf, 0xCu);
          }

          v10 = self->_summaryFetcher;
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __65__PKDashboardPaymentPassDataSource_loadSummariesWithForceReload___block_invoke_623;
          v11[3] = &unk_1E801DA78;
          objc_copyWeak(&v13, &location);
          v12 = v8;
          [(PKSpendingSummaryFetcher *)v10 availableSummaries:v11];

          objc_destroyWeak(&v13);
        }

        else if (self->_pendingSummaryUpdate)
        {
          self->_hasMoreSummaryUpdates = 1;
        }

        else
        {
          self->_pendingSummaryUpdate = 1;
          (*(v7 + 2))(v7);
        }

        objc_destroyWeak(&v15);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __65__PKDashboardPaymentPassDataSource_loadSummariesWithForceReload___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = a2;
  v20 = a3;
  v19 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_15;
  }

  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = WeakRetained;
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Dashboard loading (%p): Fetching spending summary", buf, 0xCu);
  }

  v10 = PKBroadwaySummaryType();
  v11 = v10;
  v12 = v21;
  if (!v10)
  {
    goto LABEL_9;
  }

  if (v10 == 2)
  {
    v12 = v19;
    goto LABEL_9;
  }

  v12 = v20;
  if (v10 == 1)
  {
LABEL_9:
    v13 = v12;
    goto LABEL_10;
  }

  v13 = 0;
LABEL_10:
  if ([v13 count])
  {
    v14 = WeakRetained[61];
    v15 = [v13 lastObject];
    v16 = [v14 categoryTotalSpendingSummaryStartingWithDate:v15 type:v11];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v26 = WeakRetained;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Dashboard loading (%p): Fetched spending summary", buf, 0xCu);
    }

    v17 = [v13 lastObject];
    v18 = WeakRetained[62];
    WeakRetained[62] = v17;

    objc_storeStrong(WeakRetained + 109, a2);
    objc_storeStrong(WeakRetained + 110, a3);
    objc_storeStrong(WeakRetained + 111, a4);
    *(WeakRetained + 219) = 1;
    objc_storeStrong(WeakRetained + 63, v16);
    [WeakRetained _updateBalance];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __65__PKDashboardPaymentPassDataSource_loadSummariesWithForceReload___block_invoke_618;
    v22[3] = &unk_1E8011408;
    objc_copyWeak(v24, (a1 + 32));
    v23 = v13;
    v24[1] = v11;
    [WeakRetained executeAfterContentIsLoaded:v22];

    objc_destroyWeak(v24);
  }

LABEL_15:
}

void __65__PKDashboardPaymentPassDataSource_loadSummariesWithForceReload___block_invoke_618(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[512] = 0;
    if (WeakRetained[513] == 1)
    {
      WeakRetained[513] = 0;
      [WeakRetained loadSummariesWithForceReload:0];
    }

    v4 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__PKDashboardPaymentPassDataSource_loadSummariesWithForceReload___block_invoke_2;
    block[3] = &unk_1E8011408;
    objc_copyWeak(v9, (a1 + 40));
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v8 = v5;
    v9[1] = v6;
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(v9);
  }
}

void __65__PKDashboardPaymentPassDataSource_loadSummariesWithForceReload___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[61];
    v5 = WeakRetained;
    v4 = [*(a1 + 32) lastObject];
    [v3 spendingSummaryStartingWithDate:v4 type:*(a1 + 48) includingLastPeriodChange:1 completion:&__block_literal_global_621];

    WeakRetained = v5;
  }
}

void __65__PKDashboardPaymentPassDataSource_loadSummariesWithForceReload___block_invoke_623(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218752;
      v13 = WeakRetained;
      v14 = 2048;
      v15 = [v7 count];
      v16 = 2048;
      v17 = [v8 count];
      v18 = 2048;
      v19 = [v9 count];
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Dashboard loading (%p): Fetched available summaries (%lu/%lu/%lu)", &v12, 0x2Au);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)reloadDisclosuresSectionIfNeeded
{
  if (self->_shouldReloadDisclosuresSection)
  {
    self->_shouldReloadDisclosuresSection = 0;
    if (self->_allContentIsLoaded)
    {
      v3 = [(PKDashboardPaymentPassDataSource *)self firstSectionIndexForSectionIdentifier:15];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v4 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v3];
      [WeakRetained reloadSections:v4];
    }
  }
}

- ($65C3FA8A572F9D8A414E710B16373297)_peerPaymentDashboardCondition
{
  state = [(PKPeerPaymentAccount *)self->_peerPaymentAccount state];
  v4 = PKPeerPaymentAccountResolutionForAccountAndPeerPaymentPass();
  activationState = [(PKPaymentPass *)self->_pass activationState];
  v6 = v4 == 5 || v4 == 0;
  v7 = 256;
  if (v6)
  {
    v7 = 0;
  }

  if (activationState == PKPaymentPassActivationStateDeactivated || (state - 1) >= 2)
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 + 1;
  }

  v10 = v4;
  result.var2 = v10;
  result.var0 = v9;
  result.var1 = BYTE1(v9);
  return result;
}

- (BOOL)_canShowTransactions
{
  if ([(PKDashboardPaymentPassDataSource *)self _isCreditPass])
  {
    v3 = MEMORY[0x1E69B8770];
    transactionSourceCollection = self->_transactionSourceCollection;
    account = self->_account;

    return [v3 shouldDisplayTransactionsForTransactionSourceCollection:transactionSourceCollection withAccount:account];
  }

  else
  {
    v7 = [(PKPaymentDefaultDataProvider *)self->_paymentDataProvider supportsTransactionsForPass:self->_pass];
    devicePrimaryPaymentApplication = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
    if (devicePrimaryPaymentApplication)
    {
      devicePrimaryPaymentApplication2 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
      v10 = [devicePrimaryPaymentApplication2 state] == 7;
    }

    else
    {
      v10 = 0;
    }

    devicePrimaryPaymentApplication3 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
    state = [devicePrimaryPaymentApplication3 state];

    settings = [(PKPaymentPass *)self->_pass settings];
    hasAssociatedPeerPaymentAccount = [(PKPaymentPass *)self->_pass hasAssociatedPeerPaymentAccount];
    associatedAccountFeatureIdentifier = [(PKPaymentPass *)self->_pass associatedAccountFeatureIdentifier];
    supportsBankConnectTransactions = [(PKDashboardPaymentPassDataSource *)self supportsBankConnectTransactions];
    v17 = 0;
    if (!self->_isAccessPass && ((v7 ^ 1) & 1) == 0 && !v10 && state != 6)
    {
      transactionSourceIdentifiers = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourceIdentifiers];
      v17 = [transactionSourceIdentifiers count] != 0 || supportsBankConnectTransactions;
    }

    v19 = v17 & ((settings & 8) != 0);
    if (associatedAccountFeatureIdentifier == 4)
    {
      v19 = v17;
    }

    if ((hasAssociatedPeerPaymentAccount | supportsBankConnectTransactions))
    {
      v20 = v17;
    }

    else
    {
      v20 = v19;
    }

    if (v20 & hasAssociatedPeerPaymentAccount)
    {
      state2 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount state];
      LOBYTE(v20) = [(PKPaymentPass *)self->_pass activationState]- 5 < 0xFFFFFFFFFFFFFFFELL;
      if (state2 == 3)
      {
        stateReason = [(PKPeerPaymentAccount *)self->_peerPaymentAccount stateReason];
        if (stateReason <= 5 && ((1 << stateReason) & 0x31) != 0)
        {
          LOBYTE(v20) = 0;
        }
      }
    }

    return v20 & 1;
  }
}

- (void)_reloadTransactionGrouping
{
  supportsBankConnectTransactions = [(PKDashboardPaymentPassDataSource *)self supportsBankConnectTransactions];
  if (([(PKPaymentPass *)self->_pass hasAssociatedPeerPaymentAccount]& 1) != 0)
  {
    goto LABEL_7;
  }

  associatedAccountServiceAccountIdentifier = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
  if (associatedAccountServiceAccountIdentifier)
  {
    v5 = associatedAccountServiceAccountIdentifier;
    _isCreditPass = [(PKDashboardPaymentPassDataSource *)self _isCreditPass];

    if (_isCreditPass || supportsBankConnectTransactions)
    {
      goto LABEL_7;
    }

LABEL_6:
    if (![(PKDashboardPaymentPassDataSource *)self _isAppleBalancePass])
    {
      return;
    }

    goto LABEL_7;
  }

  if (!supportsBankConnectTransactions)
  {
    goto LABEL_6;
  }

LABEL_7:
  self->_transactionGrouping = 2;
}

- (void)reloadTransactionsWithSummariesReload:(BOOL)reload
{
  v34 = *MEMORY[0x1E69E9840];
  if (self->_transactionSourceCollection)
  {
    reloadCopy = reload;
    if (![(PKDashboardPaymentPassDataSource *)self _canShowTransactions])
    {
      [(PKDashboardPaymentPassDataSource *)self updateWithTransactions:MEMORY[0x1E695E0F0]];
LABEL_14:
      if (reloadCopy)
      {
        [(PKDashboardPaymentPassDataSource *)self loadSummariesWithForceReload:1];
      }

      return;
    }

    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Dashboard loading (%p): Fetching transactions", buf, 0xCu);
    }

    if (![(PKDashboardPaymentPassDataSource *)self supportsBankConnectTransactions]&& ![(PKDashboardPaymentPassDataSource *)self _shouldUseFinanceKitTransactions])
    {
      filterType = self->_filterType;
      v7 = objc_alloc_init(MEMORY[0x1E69B8658]);
      transactions = self->_transactions;
      objc_initWeak(buf, self);
      if (![(PKDashboardPaymentPassDataSource *)self _canFilterTransactions])
      {
LABEL_40:
        if (transactions || [(PKDashboardTransactionFetcher *)self->_transactionFetcher limit])
        {
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __74__PKDashboardPaymentPassDataSource_reloadTransactionsWithSummariesReload___block_invoke_6;
          v19[3] = &unk_1E801DB10;
          v16 = v20;
          objc_copyWeak(v20, buf);
          v20[1] = filterType;
          [v7 addOperation:v19];
        }

        else
        {
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __74__PKDashboardPaymentPassDataSource_reloadTransactionsWithSummariesReload___block_invoke_3;
          v21[3] = &unk_1E801D9A8;
          v16 = &v22;
          objc_copyWeak(&v22, buf);
          [v7 addOperation:v21];
        }

        objc_destroyWeak(v16);
        null = [MEMORY[0x1E695DFB0] null];
        v18 = [v7 evaluateWithInput:null completion:0];

        objc_destroyWeak(buf);
        goto LABEL_14;
      }

      v9 = 0;
      v10 = 0;
      if (filterType > 4)
      {
        if (filterType <= 6)
        {
          if (filterType == 5)
          {
            v11 = [MEMORY[0x1E696AD98] numberWithInteger:0];
            v28 = v11;
            v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
          }

          else
          {
            v11 = [MEMORY[0x1E696AD98] numberWithInteger:10];
            v26 = v11;
            v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
          }

LABEL_28:
          v12 = v13;
          goto LABEL_29;
        }

        if (filterType == 7)
        {
          v9 = 0;
          v10 = 1;
          goto LABEL_35;
        }

        if (filterType != 8)
        {
LABEL_35:
          [(PKDashboardTransactionFetcher *)self->_transactionFetcher filterTypes:0];
          v12 = 0;
LABEL_36:
          [(PKDashboardTransactionFetcher *)self->_transactionFetcher filterDisputesOnly:v10];
          [(PKDashboardTransactionFetcher *)self->_transactionFetcher filterPeerPaymentSubType:v9];
          if (filterType && [(PKDashboardPaymentPassDataSource *)self _useCurrentMonthFetcher])
          {
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __74__PKDashboardPaymentPassDataSource_reloadTransactionsWithSummariesReload___block_invoke;
            v23[3] = &unk_1E801D9A8;
            objc_copyWeak(&v24, buf);
            [v7 addOperation:v23];
            objc_destroyWeak(&v24);
          }

          goto LABEL_40;
        }

        v11 = [MEMORY[0x1E696AD98] numberWithInteger:1];
        v25[0] = v11;
        v14 = [MEMORY[0x1E696AD98] numberWithInteger:7];
        v25[1] = v14;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
      }

      else
      {
        if (filterType <= 2)
        {
          if (filterType != 1)
          {
            if (filterType != 2)
            {
              goto LABEL_35;
            }

            v11 = [MEMORY[0x1E696AD98] numberWithInteger:3];
            v31 = v11;
            v9 = 1;
            v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
            goto LABEL_30;
          }

          v11 = [MEMORY[0x1E696AD98] numberWithInteger:9];
          v29 = v11;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
          goto LABEL_28;
        }

        if (filterType == 3)
        {
          v11 = [MEMORY[0x1E696AD98] numberWithInteger:3];
          v30 = v11;
          v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
          v9 = 2;
          goto LABEL_30;
        }

        v11 = [MEMORY[0x1E696AD98] numberWithInteger:5];
        v27[0] = v11;
        v14 = [MEMORY[0x1E696AD98] numberWithInteger:6];
        v27[1] = v14;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
      }

      v12 = v15;

LABEL_29:
      v9 = 0;
LABEL_30:

      if (v12)
      {
        [(PKDashboardTransactionFetcher *)self->_transactionFetcher filterTypes:v12];
        v10 = 0;
        goto LABEL_36;
      }

      v10 = 0;
      goto LABEL_35;
    }
  }
}

void __74__PKDashboardPaymentPassDataSource_reloadTransactionsWithSummariesReload___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = [MEMORY[0x1E695DF00] date];
    v12 = WeakRetained[13];
    v13 = PKStartOfMonth();
    v14 = PKEndOfMonth();
    [v12 setLimit:0 startDate:v13 endDate:v14];

    v15 = WeakRetained[13];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__PKDashboardPaymentPassDataSource_reloadTransactionsWithSummariesReload___block_invoke_2;
    v16[3] = &unk_1E801DAA0;
    objc_copyWeak(&v19, (a1 + 32));
    v18 = v9;
    v17 = v8;
    [v15 reloadTransactionsWithCompletion:v16];

    objc_destroyWeak(&v19);
  }
}

void __74__PKDashboardPaymentPassDataSource_reloadTransactionsWithSummariesReload___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 55, a2);
    (*(*(a1 + 40) + 16))();
  }
}

void __74__PKDashboardPaymentPassDataSource_reloadTransactionsWithSummariesReload___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 12) setLimit:10 startDate:0 endDate:0];
    v12 = v11[12];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__PKDashboardPaymentPassDataSource_reloadTransactionsWithSummariesReload___block_invoke_4;
    v13[3] = &unk_1E801DAA0;
    objc_copyWeak(&v16, (a1 + 32));
    v15 = v9;
    v14 = v8;
    [v12 reloadTransactionsWithCompletion:v13];

    objc_destroyWeak(&v16);
  }
}

void __74__PKDashboardPaymentPassDataSource_reloadTransactionsWithSummariesReload___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[12] setLimit:0 startDate:0 endDate:0];
    [v5 updateWithTransactions:v3];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __74__PKDashboardPaymentPassDataSource_reloadTransactionsWithSummariesReload___block_invoke_5;
    v6[3] = &unk_1E8010970;
    v6[4] = v5;
    [v5 executeAfterContentIsLoaded:v6];
    (*(*(a1 + 40) + 16))();
  }
}

void __74__PKDashboardPaymentPassDataSource_reloadTransactionsWithSummariesReload___block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = *(WeakRetained + 12);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__PKDashboardPaymentPassDataSource_reloadTransactionsWithSummariesReload___block_invoke_7;
    v13[3] = &unk_1E801DAE8;
    objc_copyWeak(v16, (a1 + 32));
    v16[1] = *(a1 + 40);
    v15 = v9;
    v14 = v8;
    [v12 reloadTransactionsWithCompletion:v13];

    objc_destroyWeak(v16);
  }
}

void __74__PKDashboardPaymentPassDataSource_reloadTransactionsWithSummariesReload___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained _isCreditPass] && (!objc_msgSend(v5, "_canFilterTransactions") || !*(a1 + 56)))
    {
      v6 = [MEMORY[0x1E695DEE8] currentCalendar];
      v7 = [MEMORY[0x1E695DF00] date];
      v8 = [v6 component:8 fromDate:v7];

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __74__PKDashboardPaymentPassDataSource_reloadTransactionsWithSummariesReload___block_invoke_8;
      v11[3] = &__block_descriptor_40_e37_B32__0__PKPaymentTransaction_8Q16_B24l;
      v11[4] = v8;
      v9 = [v3 pk_objectsPassingTest:v11];
      v10 = v5[55];
      v5[55] = v9;
    }

    [v5 updateWithTransactions:v3];
    (*(*(a1 + 40) + 16))();
  }
}

BOOL __74__PKDashboardPaymentPassDataSource_reloadTransactionsWithSummariesReload___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a2;
  v5 = [v3 currentCalendar];
  v6 = [v4 transactionDate];

  v7 = [v5 component:8 fromDate:v6];
  return v7 == *(a1 + 32);
}

- (BOOL)isGroupInTheCurrentYear:(id)year
{
  if (!year)
  {
    return 0;
  }

  group = [year group];
  startDate = [group startDate];

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [currentCalendar components:6 fromDate:startDate];
  date = [MEMORY[0x1E695DF00] date];
  v8 = [currentCalendar date:date matchesComponents:v6];

  return v8;
}

- (void)reloadTransactionGroups
{
  v25 = *MEMORY[0x1E69E9840];
  if (!self->_transactionSourceCollection)
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    goto LABEL_28;
  }

  [(PKDashboardPaymentPassDataSource *)self _reloadTransactionGrouping];
  if ([(PKDashboardPaymentPassDataSource *)self supportsBankConnectTransactions])
  {
    transactionGrouping = self->_transactionGrouping;
    if (transactionGrouping != 2)
    {
      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v22 = transactionGrouping;
        _os_log_error_impl(&dword_1BD026000, v13, OS_LOG_TYPE_ERROR, "Bank Connect transactions can be grouped only by mixed grouping type, but an attempt to group them by type %lu has happened.", buf, 0xCu);
      }

LABEL_28:

      return;
    }
  }

  _canShowTransactions = [(PKDashboardPaymentPassDataSource *)self _canShowTransactions];
  if ([(PKDashboardPaymentPassDataSource *)self supportsBankConnectTransactions]|| ([(PKPaymentPass *)self->_pass hasAssociatedPeerPaymentAccount]& 1) != 0 || [(PKDashboardPaymentPassDataSource *)self _isCreditPass]|| [(PKDashboardPaymentPassDataSource *)self _isAppleBalancePass])
  {
    v5 = 1;
  }

  else
  {
    devicePrimaryContactlessPaymentApplication = [(PKPaymentPass *)self->_pass devicePrimaryContactlessPaymentApplication];
    [devicePrimaryContactlessPaymentApplication paymentNetworkIdentifier];
    v5 = PKTransactionsUnlimitedForCredentialType();
  }

  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (_canShowTransactions)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    if (v5)
    {
      v7 = @"YES";
    }

    *buf = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Groups reloading: canShowTransactions - %@, supportsTransactionGroups - %@", buf, 0x16u);
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_29;
  }

  filterType = self->_filterType;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"YES";
    if (filterType < 6)
    {
      v10 = @"NO";
    }

    *buf = 138412290;
    v22 = v10;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Groups reloading: shouldHideGroups - %@", buf, 0xCu);
  }

  if (!_canShowTransactions || filterType >= 6)
  {
LABEL_29:
    [(PKDashboardPaymentPassDataSource *)self _updateWithTransactionGroups:MEMORY[0x1E695E0F0]];
    return;
  }

  objc_initWeak(buf, self);
  v11 = self->_transactionGrouping;
  switch(v11)
  {
    case 2uLL:
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __59__PKDashboardPaymentPassDataSource_reloadTransactionGroups__block_invoke_3;
      v15[3] = &unk_1E8011158;
      v12 = &v16;
      objc_copyWeak(&v16, buf);
      [(PKDashboardPaymentPassDataSource *)self _yearlyTransactionGroupsWithCompletion:v15];
      goto LABEL_37;
    case 1uLL:
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __59__PKDashboardPaymentPassDataSource_reloadTransactionGroups__block_invoke_2;
      v17[3] = &unk_1E8011158;
      v12 = &v18;
      objc_copyWeak(&v18, buf);
      [(PKDashboardPaymentPassDataSource *)self _yearlyTransactionGroupsWithCompletion:v17];
      goto LABEL_37;
    case 0uLL:
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __59__PKDashboardPaymentPassDataSource_reloadTransactionGroups__block_invoke;
      v19[3] = &unk_1E8011158;
      v12 = &v20;
      objc_copyWeak(&v20, buf);
      [(PKDashboardPaymentPassDataSource *)self _monthlyTransactionGroupsWithCompletion:v19];
LABEL_37:
      objc_destroyWeak(v12);
      break;
  }

  objc_destroyWeak(buf);
}

void __59__PKDashboardPaymentPassDataSource_reloadTransactionGroups__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateWithTransactionGroups:v5];
  }
}

void __59__PKDashboardPaymentPassDataSource_reloadTransactionGroups__block_invoke_2(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [WeakRetained _updateWithTransactionGroups:v5];
  }
}

void __59__PKDashboardPaymentPassDataSource_reloadTransactionGroups__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 firstObject];
    if (v5 && [WeakRetained isGroupInTheCurrentYear:v5])
    {
      v6 = [v3 pk_arrayByRemovingObject:v5];

      v3 = v6;
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__PKDashboardPaymentPassDataSource_reloadTransactionGroups__block_invoke_4;
    v7[3] = &unk_1E8011850;
    objc_copyWeak(&v9, (a1 + 32));
    v3 = v3;
    v8 = v3;
    [WeakRetained _monthlyTransactionGroupsWithCompletion:v7];

    objc_destroyWeak(&v9);
  }
}

void __59__PKDashboardPaymentPassDataSource_reloadTransactionGroups__block_invoke_4(uint64_t a1, void *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
    v42 = [MEMORY[0x1E695DF00] date];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v6 = v3;
    v43 = [v6 countByEnumeratingWithState:&v61 objects:v70 count:16];
    if (v43)
    {
      v37 = WeakRetained;
      v38 = v3;
      v7 = 0;
      v39 = *v62;
      v40 = v6;
      v41 = a1;
      do
      {
        v8 = 0;
        do
        {
          v48 = v7;
          if (*v62 != v39)
          {
            objc_enumerationMutation(v6);
          }

          v47 = v8;
          v50 = *(*(&v61 + 1) + 8 * v8);
          v46 = [v50 firstObject];
          v9 = [v46 group];
          v10 = [v9 startDate];

          v45 = v10;
          v11 = [v5 components:6 fromDate:v10];
          v44 = [v5 date:v42 matchesComponents:v11];
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          obj = *(a1 + 32);
          v12 = [obj countByEnumeratingWithState:&v57 objects:v69 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v58;
            v49 = *v58;
            do
            {
              v15 = 0;
              v51 = v13;
              do
              {
                if (*v58 != v14)
                {
                  objc_enumerationMutation(obj);
                }

                v16 = [*(*(&v57 + 1) + 8 * v15) group];
                v17 = [v16 startDate];
                v18 = [v5 date:v17 matchesComponents:v11];

                if (v18)
                {
                  v19 = v11;
                  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  v53 = 0u;
                  v54 = 0u;
                  v55 = 0u;
                  v56 = 0u;
                  v21 = v50;
                  v22 = [v21 countByEnumeratingWithState:&v53 objects:v68 count:16];
                  if (v22)
                  {
                    v23 = v22;
                    v24 = *v54;
                    do
                    {
                      for (i = 0; i != v23; ++i)
                      {
                        if (*v54 != v24)
                        {
                          objc_enumerationMutation(v21);
                        }

                        v26 = [*(*(&v53 + 1) + 8 * i) group];
                        [v20 addObject:v26];
                      }

                      v23 = [v21 countByEnumeratingWithState:&v53 objects:v68 count:16];
                    }

                    while (v23);
                  }

                  v27 = [v20 copy];
                  [v16 setGroups:v27];

                  v11 = v19;
                  v14 = v49;
                  v13 = v51;
                }

                ++v15;
              }

              while (v15 != v13);
              v13 = [obj countByEnumeratingWithState:&v57 objects:v69 count:16];
            }

            while (v13);
          }

          v7 = v44 | v48;

          v8 = v47 + 1;
          v6 = v40;
          a1 = v41;
        }

        while (v47 + 1 != v43);
        v43 = [v40 countByEnumeratingWithState:&v61 objects:v70 count:16];
      }

      while (v43);

      WeakRetained = v37;
      v3 = v38;
      if (v7)
      {
        v28 = [*(v41 + 32) count];
        v29 = [v40 firstObject];
        v30 = v29;
        if (v28)
        {
          v31 = *(v41 + 32);
          v67[0] = v29;
          v67[1] = v31;
          v32 = MEMORY[0x1E695DEC8];
          v33 = v67;
          v34 = 2;
        }

        else
        {
          v66 = v29;
          v32 = MEMORY[0x1E695DEC8];
          v33 = &v66;
          v34 = 1;
        }

        v35 = [v32 arrayWithObjects:v33 count:v34];

        goto LABEL_34;
      }
    }

    else
    {
    }

    if ([*(a1 + 32) count])
    {
      v65 = *(a1 + 32);
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
    }

    else
    {
      v35 = MEMORY[0x1E695E0F0];
    }

LABEL_34:
    v36 = [v35 pk_arrayBySafelyApplyingBlock:&__block_literal_global_628];

    [WeakRetained _updateWithTransactionGroups:v36];
  }
}

void *__59__PKDashboardPaymentPassDataSource_reloadTransactionGroups__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 count])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)_yearlyTransactionGroupsWithCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PKDashboardPaymentPassDataSource__yearlyTransactionGroupsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E8012940;
  objc_copyWeak(&v16, &location);
  v5 = completionCopy;
  v15 = v5;
  v6 = _Block_copy(aBlock);
  supportsBankConnectTransactions = [(PKDashboardPaymentPassDataSource *)self supportsBankConnectTransactions];
  v8 = PKLogFacilityTypeGetObject();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (supportsBankConnectTransactions)
  {
    if (v9)
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Dashboard loading (%p): Processing FinanceKit yearly transaction groups", buf, 0xCu);
    }

    bankConnectYearlyTransactionGroups = [(PKDashboardPaymentPassDataSource *)self bankConnectYearlyTransactionGroups];
    v6[2](v6, bankConnectYearlyTransactionGroups);
  }

  else
  {
    if (v9)
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Dashboard loading (%p): Fetching yearly transaction groups", buf, 0xCu);
    }

    transactionFetcher = self->_transactionFetcher;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75__PKDashboardPaymentPassDataSource__yearlyTransactionGroupsWithCompletion___block_invoke_630;
    v12[3] = &unk_1E8010DA8;
    v13 = v6;
    [(PKDashboardTransactionFetcher *)transactionFetcher transactionCountByPeriod:4 withCompletion:v12];
    bankConnectYearlyTransactionGroups = v13;
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __75__PKDashboardPaymentPassDataSource__yearlyTransactionGroupsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained _canShowTransactions])
    {
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v24 = v5;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Dashboard loading (%p): Fetched yearly transaction groups", buf, 0xCu);
      }

      v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v17 = v3;
      v8 = v3;
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        do
        {
          v12 = 0;
          do
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v18 + 1) + 8 * v12);
            v14 = objc_alloc_init(PKDashboardPaymentTransactionGroupItem);
            [(PKDashboardPaymentTransactionGroupItem *)v14 setGroup:v13];
            [(PKDashboardPaymentTransactionGroupItem *)v14 setTransactionSourceCollection:v5[106]];
            [(PKDashboardPaymentTransactionGroupItem *)v14 setFamilyCollection:v5[104]];
            [(PKDashboardPaymentTransactionGroupItem *)v14 setAccount:v5[48]];
            [(PKDashboardPaymentTransactionGroupItem *)v14 setAccountUserCollection:v5[101]];
            [(PKDashboardPaymentTransactionGroupItem *)v14 setPhysicalCards:v5[103]];
            [v7 addObject:v14];

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v10);
      }

      v15 = *(a1 + 32);
      v16 = [v7 copy];
      (*(v15 + 16))(v15, v16);

      v3 = v17;
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

void __75__PKDashboardPaymentPassDataSource__yearlyTransactionGroupsWithCompletion___block_invoke_630(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__PKDashboardPaymentPassDataSource__yearlyTransactionGroupsWithCompletion___block_invoke_2;
  v6[3] = &unk_1E8010E20;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (id)groupItemForTransactionGroup:(id)group
{
  groupCopy = group;
  v5 = objc_alloc_init(PKDashboardPaymentTransactionGroupItem);
  [(PKDashboardPaymentTransactionGroupItem *)v5 setGroup:groupCopy];

  [(PKDashboardPaymentTransactionGroupItem *)v5 setTransactionSourceCollection:self->_transactionSourceCollection];
  [(PKDashboardPaymentTransactionGroupItem *)v5 setFamilyCollection:self->_familyCollection];
  [(PKDashboardPaymentTransactionGroupItem *)v5 setAccount:self->_account];
  [(PKDashboardPaymentTransactionGroupItem *)v5 setAccountUserCollection:self->_accountUserCollection];
  [(PKDashboardPaymentTransactionGroupItem *)v5 setPhysicalCards:self->_physicalCards];

  return v5;
}

- (void)_monthlyTransactionGroupsWithCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PKDashboardPaymentPassDataSource__monthlyTransactionGroupsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E8012940;
  objc_copyWeak(&v16, &location);
  v5 = completionCopy;
  v15 = v5;
  v6 = _Block_copy(aBlock);
  supportsBankConnectTransactions = [(PKDashboardPaymentPassDataSource *)self supportsBankConnectTransactions];
  v8 = PKLogFacilityTypeGetObject();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (supportsBankConnectTransactions)
  {
    if (v9)
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Dashboard loading (%p): Processing FinanceKit monthly transaction groups", buf, 0xCu);
    }

    bankConnectMonthlyTransactionGroups = [(PKDashboardPaymentPassDataSource *)self bankConnectMonthlyTransactionGroups];
    v6[2](v6, bankConnectMonthlyTransactionGroups);
  }

  else
  {
    if (v9)
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Dashboard loading (%p): Fetching monthly transaction groups", buf, 0xCu);
    }

    transactionFetcher = self->_transactionFetcher;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__PKDashboardPaymentPassDataSource__monthlyTransactionGroupsWithCompletion___block_invoke_635;
    v12[3] = &unk_1E8010DA8;
    v13 = v6;
    [(PKDashboardTransactionFetcher *)transactionFetcher transactionCountByPeriod:8 withCompletion:v12];
    bankConnectMonthlyTransactionGroups = v13;
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __76__PKDashboardPaymentPassDataSource__monthlyTransactionGroupsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained _canShowTransactions])
    {
      v30 = a1;
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v46 = v5;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Dashboard loading (%p): Fetched monthly transaction groups", buf, 0xCu);
      }

      v32 = v5;

      v7 = [MEMORY[0x1E695DEE8] currentCalendar];
      v34 = [MEMORY[0x1E695DF00] date];
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v31 = v3;
      obj = v3;
      v9 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v40;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v40 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v39 + 1) + 8 * i);
            v14 = [v13 startDate];
            v15 = [v7 components:14 fromDate:v14];
            if (([v7 date:v34 matchesComponents:v15] & 1) == 0)
            {
              v16 = [v7 components:6 fromDate:v14];
              v17 = [v8 objectForKey:v16];
              if (!v17)
              {
                v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [v8 setObject:v17 forKey:v16];
              }

              v18 = [v32 groupItemForTransactionGroup:v13];
              [v17 addObject:v18];
            }
          }

          v10 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v10);
      }

      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v20 = [v8 allKeys];
      v21 = [v20 sortedArrayUsingComparator:&__block_literal_global_634];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v36;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v36 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = [v8 objectForKey:*(*(&v35 + 1) + 8 * j)];
            [v19 addObject:v27];
          }

          v24 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v24);
      }

      v28 = *(v30 + 32);
      v29 = [v19 copy];
      (*(v28 + 16))(v28, v29);

      v3 = v31;
      v5 = v32;
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

uint64_t __76__PKDashboardPaymentPassDataSource__monthlyTransactionGroupsWithCompletion___block_invoke_631(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = [v6 era];
  if (v8 == [v7 era])
  {
    v9 = [v6 year];
    if (v9 == [v7 year])
    {
      v10 = 0;
      goto LABEL_9;
    }

    v11 = [v6 year];
    v12 = [v7 year];
  }

  else
  {
    v11 = [v6 era];
    v12 = [v7 era];
  }

  if (v11 > v12)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

LABEL_9:

  return v10;
}

void __76__PKDashboardPaymentPassDataSource__monthlyTransactionGroupsWithCompletion___block_invoke_635(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__PKDashboardPaymentPassDataSource__monthlyTransactionGroupsWithCompletion___block_invoke_2;
  v6[3] = &unk_1E8010E20;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_updateWithTransactionGroups:(id)groups
{
  v26 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  v5 = [groupsCopy count];
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    selfCopy = self;
    v24 = 2048;
    v25 = v5;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Dashboard loading (%p): Fetched transaction groups: %lu", buf, 0x16u);
  }

  v7 = [(NSArray *)self->_transactionGroups count];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PKDashboardPaymentPassDataSource__updateWithTransactionGroups___block_invoke;
  aBlock[3] = &unk_1E8011408;
  objc_copyWeak(v20, &location);
  v8 = groupsCopy;
  v19 = v8;
  v20[1] = v5;
  v9 = _Block_copy(aBlock);
  v10 = v9;
  if (self->_allContentIsLoaded)
  {
    v11 = ![(PKDashboardPaymentPassDataSource *)self supportsBankConnectTransactions];
    if (!v8)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (WeakRetained)
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __65__PKDashboardPaymentPassDataSource__updateWithTransactionGroups___block_invoke_636;
        v14[3] = &unk_1E801DB78;
        objc_copyWeak(v17, &location);
        v16 = v10;
        v17[1] = v5;
        v17[2] = v7;
        v13 = WeakRetained;
        v15 = v13;
        [v13 performBatchUpdates:v14 completion:0];

        objc_destroyWeak(v17);
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy = v5;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Updating with %lu Bank Connect transaction groups", buf, 0xCu);
      }

      [(PKDashboardPaymentPassDataSource *)self _calculateDiffAndUpdateWithTransactionGroups:v8];
    }
  }

  else
  {
    (*(v9 + 2))(v9);
    [(PKDashboardPaymentPassDataSource *)self updateContentIsLoaded];
  }

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

void __65__PKDashboardPaymentPassDataSource__updateWithTransactionGroups___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [*(a1 + 32) copy];
    v4 = *(v6 + 120);
    *(v6 + 120) = v3;

    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
    [*(v6 + 6) setObject:v5 forKeyedSubscript:&unk_1F3CC7B08];

    WeakRetained = v6;
  }
}

void __65__PKDashboardPaymentPassDataSource__updateWithTransactionGroups___block_invoke_636(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v14 = WeakRetained;
    v3 = [WeakRetained firstSectionIndexForSectionIdentifier:13];
    (*(*(a1 + 40) + 16))();
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    if (v4 > v5)
    {
      v7 = *(a1 + 32);
      v6 = a1 + 32;
      v8 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v5 + v3, v4 - v5}];
      [v7 insertSections:v8];

      --v3;
      v9 = *(v6 + 32);
LABEL_6:
      v4 = v9 + 1;
LABEL_7:
      v12 = *v6;
      v13 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v3, v4}];
      [v12 reloadSections:v13];

      WeakRetained = v14;
      goto LABEL_8;
    }

    if (v4 < v5)
    {
      v10 = *(a1 + 32);
      v6 = a1 + 32;
      v11 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v4 + v3, v5 - v4}];
      [v10 deleteSections:v11];

      --v3;
      v9 = *(v6 + 24);
      goto LABEL_6;
    }

    WeakRetained = v14;
    if (v4)
    {
      v6 = a1 + 32;
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)transactionsChanged:(id)changed
{
  changedCopy = changed;
  if (![(PKDashboardPaymentPassDataSource *)self supportsBankConnectTransactions])
  {
    if ([(PKDashboardPaymentPassDataSource *)self _canFilterTransactions]&& self->_filterType)
    {
      objc_initWeak(&location, self);
      date = [MEMORY[0x1E695DF00] date];
      currentMonthFetcher = self->_currentMonthFetcher;
      v7 = PKStartOfMonth();
      v8 = PKEndOfMonth();
      [(PKDashboardTransactionFetcher *)currentMonthFetcher setLimit:0 startDate:v7 endDate:v8];

      v9 = self->_currentMonthFetcher;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __56__PKDashboardPaymentPassDataSource_transactionsChanged___block_invoke_2;
      v15[3] = &unk_1E8011850;
      objc_copyWeak(&v17, &location);
      v16 = changedCopy;
      [(PKDashboardTransactionFetcher *)v9 reloadTransactionsWithCompletion:v15];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    else
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      date2 = [MEMORY[0x1E695DF00] date];
      v12 = [currentCalendar component:8 fromDate:date2];

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __56__PKDashboardPaymentPassDataSource_transactionsChanged___block_invoke;
      v19[3] = &__block_descriptor_40_e37_B32__0__PKPaymentTransaction_8Q16_B24l;
      v19[4] = v12;
      v13 = [changedCopy pk_objectsPassingTest:v19];
      currentMonthTransactions = self->_currentMonthTransactions;
      self->_currentMonthTransactions = v13;

      [(PKDashboardPaymentPassDataSource *)self updateWithTransactions:changedCopy];
      [(PKDashboardPaymentPassDataSource *)self reloadTransactionGroups];
    }
  }
}

BOOL __56__PKDashboardPaymentPassDataSource_transactionsChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a2;
  v5 = [v3 currentCalendar];
  v6 = [v4 transactionDate];

  v7 = [v5 component:8 fromDate:v6];
  return v7 == *(a1 + 32);
}

void __56__PKDashboardPaymentPassDataSource_transactionsChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 55, a2);
    [v5 updateWithTransactions:*(a1 + 32)];
    [v5 reloadTransactionGroups];
  }
}

- (void)updateWithTransactions:(id)transactions
{
  v60 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    selfCopy = self;
    v58 = 2048;
    v59 = [transactionsCopy count];
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Dashboard loading (%p): Fetched transactions: %lu", buf, 0x16u);
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  os_unfair_lock_lock(&self->_lockTransactions);
  v7 = [transactionsCopy copy];
  previousTransactions = self->_previousTransactions;
  self->_previousTransactions = v7;

  os_unfair_lock_unlock(&self->_lockTransactions);
  _canShowTransactions = [(PKDashboardPaymentPassDataSource *)self _canShowTransactions];
  v10 = MEMORY[0x1E695E0F0];
  if (_canShowTransactions)
  {
    v10 = transactionsCopy;
  }

  v11 = v10;
  transactions = self->_transactions;
  if (transactions)
  {
    v13 = [(NSArray *)transactions count];
    if (v13 == [v11 count])
    {
      v14 = transactionsCopy;
      v15 = [(PKDashboardPaymentPassDataSource *)self firstSectionIndexForSectionIdentifier:11];
      if ([v11 count])
      {
        v16 = 0;
        do
        {
          if (self->_forceTransactionsUpdate || ([v11 objectAtIndex:v16], v17 = objc_claimAutoreleasedReturnValue(), -[NSArray objectAtIndex:](self->_transactions, "objectAtIndex:", v16), v18 = objc_claimAutoreleasedReturnValue(), v19 = PKEqualObjects(), v18, v17, (v19 & 1) == 0))
          {
            v20 = [MEMORY[0x1E696AC88] indexPathForItem:v16 inSection:v15];
            [v6 addObject:v20];
          }

          ++v16;
        }

        while (v16 < [v11 count]);
      }

      v21 = [(PKDashboardPaymentPassDataSource *)self firstSectionIndexForSectionIdentifier:1];
      v22 = [MEMORY[0x1E696AC88] indexPathForItem:4 inSection:v21];
      [v6 addObject:v22];

      v23 = 0;
      transactionsCopy = v14;
      goto LABEL_17;
    }

    if ([(PKDashboardPaymentPassDataSource *)self supportsBankConnectTransactions])
    {
      [(PKDashboardPaymentPassDataSource *)self _calculateDiffAndUpdateWithTransactions:v11];
      goto LABEL_46;
    }
  }

  v23 = 1;
LABEL_17:
  self->_forceTransactionsUpdate = 0;
  date = [MEMORY[0x1E695DF00] date];
  lastTransactionReload = self->_lastTransactionReload;
  self->_lastTransactionReload = date;

  v26 = [v11 copy];
  v27 = self->_transactions;
  self->_transactions = v26;

  if (self->_allContentIsLoaded)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (!WeakRetained)
    {
LABEL_45:

      goto LABEL_46;
    }

    if (v23)
    {
      v29 = objc_alloc_init(MEMORY[0x1E696AD50]);
      [v29 addIndex:{-[PKDashboardPaymentPassDataSource firstSectionIndexForSectionIdentifier:](self, "firstSectionIndexForSectionIdentifier:", 11)}];
      v30 = [(PKDashboardPaymentPassDataSource *)self firstSectionIndexForSectionIdentifier:1];
      [v29 addIndex:v30];
      [WeakRetained reloadSections:v29];
      v31 = [MEMORY[0x1E696AC88] indexPathForItem:4 inSection:v30];
      [v6 addObject:v31];
    }

    else
    {
      v45 = transactionsCopy;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v32 = v6;
      v33 = [v32 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v51;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v51 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v50 + 1) + 8 * i);
            v38 = [(PKDashboardPaymentPassDataSource *)self itemAtIndexPath:v37];
            [WeakRetained itemChanged:v38 atIndexPath:v37];
          }

          v34 = [v32 countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v34);
      }

      transactionsCopy = v45;
      if (![v32 count])
      {
LABEL_33:
        if ([(PKDashboardPaymentPassDataSource *)self _isPeerPaymentPass])
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v40 = self->_transactions;
          v41 = [(NSArray *)v40 countByEnumeratingWithState:&v46 objects:v54 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v47;
            while (2)
            {
              for (j = 0; j != v42; ++j)
              {
                if (*v47 != v43)
                {
                  objc_enumerationMutation(v40);
                }

                if ([*(*(&v46 + 1) + 8 * j) isPeerPaymentGroupRequestReceivedTransaction])
                {
                  [(PKDashboardPaymentPassDataSource *)self reloadPeerPaymentPendingRequestsWithCompletion:0];
                  goto LABEL_44;
                }
              }

              v42 = [(NSArray *)v40 countByEnumeratingWithState:&v46 objects:v54 count:16];
              if (v42)
              {
                continue;
              }

              break;
            }
          }

LABEL_44:
        }

        goto LABEL_45;
      }
    }

    v39 = [(PKPaymentOffersController *)self->_paymentOffersController hasAnyEligiblePaymentOfferCriteriaOfType:1];
    if (self->_account || v39)
    {
      [(PKDashboardPaymentPassDataSource *)self reloadMessagesWithReason:@"Transactions change"];
    }

    goto LABEL_33;
  }

  [(PKDashboardPaymentPassDataSource *)self updateContentIsLoaded];
LABEL_46:
}

- (void)_localeDidChangeNotification:(id)notification
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__PKDashboardPaymentPassDataSource__localeDidChangeNotification___block_invoke;
  v3[3] = &unk_1E8010998;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __65__PKDashboardPaymentPassDataSource__localeDidChangeNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[128] = 1;
    v2 = WeakRetained;
    [WeakRetained reloadTransactionsWithSummariesReload:1];
    WeakRetained = v2;
  }
}

- (void)_updateTransactionsTimer
{
  timerTransactions = self->_timerTransactions;
  if (timerTransactions)
  {
    if (!self->_activeState.foregroundActive)
    {
      dispatch_source_cancel(timerTransactions);
      v4 = self->_timerTransactions;
      self->_timerTransactions = 0;
    }
  }

  else if (self->_activeState.foregroundActive)
  {
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v6 = self->_timerTransactions;
    self->_timerTransactions = v5;

    v7 = self->_timerTransactions;
    v8 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v7, v8, 0xDF8475800uLL, 0x6FC23AC00uLL);
    objc_initWeak(&location, self);
    v9 = self->_timerTransactions;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__PKDashboardPaymentPassDataSource__updateTransactionsTimer__block_invoke;
    v10[3] = &unk_1E8010998;
    objc_copyWeak(&v11, &location);
    dispatch_source_set_event_handler(v9, v10);
    dispatch_resume(self->_timerTransactions);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __60__PKDashboardPaymentPassDataSource__updateTransactionsTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    if ([WeakRetained supportsBankConnectTransactions])
    {
      v2 = [v8 firstSectionIndexForSectionIdentifier:2];
      v3 = [v8 delegate];
      v4 = [MEMORY[0x1E696AC90] indexSetWithIndex:v2];
      [v3 reloadSections:v4];
    }

    else
    {
      v3 = v8[18];
      if (!v3)
      {
LABEL_9:

        WeakRetained = v8;
        goto LABEL_10;
      }

      v4 = [MEMORY[0x1E695DEE8] currentCalendar];
      v5 = [v4 component:16 fromDate:v3];
      v6 = [MEMORY[0x1E695DF00] date];
      v7 = [v4 component:16 fromDate:v6];

      *(v8 + 128) = 1;
      if (v5 == v7)
      {
        [v8 updateWithTransactions:v8[7]];
      }

      else
      {
        [v8 reloadAllContent];
      }
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)reloadAuxiliaryItems
{
  auxiliaryPassInformation = [(PKPaymentPass *)self->_pass auxiliaryPassInformation];
  v4 = [auxiliaryPassInformation copy];

  v5 = [v4 count];
  v6 = [(NSArray *)self->_auxiliarySectionInfo count];
  if (!self->_allContentIsLoaded)
  {
    objc_initWeak(&location, self);
    pass = self->_pass;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__PKDashboardPaymentPassDataSource_reloadAuxiliaryItems__block_invoke;
    v15[3] = &unk_1E8011408;
    objc_copyWeak(v17, &location);
    v16 = v4;
    v17[1] = v5;
    [(PKDashboardPaymentPassDataSource *)self _fetchMerchantForAuxiliarySections:v16 pass:pass completion:v15];

    v10 = v17;
    goto LABEL_5;
  }

  v7 = v6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    objc_initWeak(&location, self);
    v9 = self->_pass;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__PKDashboardPaymentPassDataSource_reloadAuxiliaryItems__block_invoke_2;
    v12[3] = &unk_1E801DBC8;
    objc_copyWeak(v14, &location);
    v14[1] = v5;
    v14[2] = v7;
    v13 = v4;
    [(PKDashboardPaymentPassDataSource *)self _fetchMerchantForAuxiliarySections:v13 pass:v9 completion:v12];

    v10 = v14;
LABEL_5:
    objc_destroyWeak(v10);
    objc_destroyWeak(&location);
  }
}

void __56__PKDashboardPaymentPassDataSource_reloadAuxiliaryItems__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_storeStrong(WeakRetained + 8, *(a1 + 32));
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
    [v4[6] setObject:v3 forKeyedSubscript:&unk_1F3CC7B20];

    WeakRetained = v4;
    if ((v4[9] & 1) == 0)
    {
      *(v4 + 72) = 1;
      [v4 updateContentIsLoaded];
      WeakRetained = v4;
    }
  }
}

void __56__PKDashboardPaymentPassDataSource_reloadAuxiliaryItems__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_13;
  }

  v4 = [WeakRetained firstSectionIndexForSectionIdentifier:14];
  v6 = (a1 + 56);
  v5 = *(a1 + 56);
  v7 = *(a1 + 48);
  if (v7 > v5)
  {
    v8 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v5 + v4, v7 - v5}];
    v9 = 0;
LABEL_6:
    v7 = *v6;
LABEL_7:
    v10 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v4, v7}];
    v11 = v9;
    v12 = v8;
    goto LABEL_8;
  }

  if (v7 < v5)
  {
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v7 + v4, v5 - v7}];
    v8 = 0;
    v6 = (a1 + 48);
    goto LABEL_6;
  }

  v9 = 0;
  v8 = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v10 || v12 || v11)
  {
    v13 = objc_loadWeakRetained(v3 + 4);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __56__PKDashboardPaymentPassDataSource_reloadAuxiliaryItems__block_invoke_3;
    v16[3] = &unk_1E801DBA0;
    v16[4] = v3;
    v14 = *(a1 + 32);
    v22 = *(a1 + 48);
    v17 = v14;
    v18 = v13;
    v19 = v12;
    v20 = v11;
    v21 = v10;
    v15 = v13;
    [v15 performBatchUpdates:v16 completion:0];
  }

LABEL_13:
}

uint64_t __56__PKDashboardPaymentPassDataSource_reloadAuxiliaryItems__block_invoke_3(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 80)];
  [*(*(a1 + 32) + 48) setObject:v2 forKeyedSubscript:&unk_1F3CC7B20];

  [*(a1 + 48) insertSections:*(a1 + 56)];
  [*(a1 + 48) deleteSections:*(a1 + 64)];
  v3 = *(a1 + 48);
  v4 = *(a1 + 72);

  return [v3 reloadSections:v4];
}

- (void)_fetchMerchantForAuxiliarySections:(id)sections pass:(id)pass completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  passCopy = pass;
  completionCopy = completion;
  v10 = self->_paymentService;
  v11 = dispatch_group_create();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = sectionsCopy;
  v26 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v26)
  {
    v25 = *v37;
    do
    {
      v12 = 0;
      do
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v12;
        v13 = *(*(&v36 + 1) + 8 * v12);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        items = [v13 items];
        v15 = [items countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v33;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v33 != v17)
              {
                objc_enumerationMutation(items);
              }

              v19 = *(*(&v32 + 1) + 8 * i);
              merchant = [v19 merchant];

              if (!merchant)
              {
                dispatch_group_enter(v11);
                uniqueID = [passCopy uniqueID];
                v30[0] = MEMORY[0x1E69E9820];
                v30[1] = 3221225472;
                v30[2] = __87__PKDashboardPaymentPassDataSource__fetchMerchantForAuxiliarySections_pass_completion___block_invoke;
                v30[3] = &unk_1E801DBF0;
                v30[4] = v19;
                v31 = v11;
                [(PKPaymentService *)v10 merchantForPassUniqueIdentifier:uniqueID withAuxiliaryPassInformationItem:v19 completion:v30];
              }
            }

            v16 = [items countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v16);
        }

        v12 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v26);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PKDashboardPaymentPassDataSource__fetchMerchantForAuxiliarySections_pass_completion___block_invoke_3;
  block[3] = &unk_1E8010B50;
  v29 = completionCopy;
  v22 = completionCopy;
  dispatch_group_notify(v11, MEMORY[0x1E69E96A0], block);
}

void __87__PKDashboardPaymentPassDataSource__fetchMerchantForAuxiliarySections_pass_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PKDashboardPaymentPassDataSource__fetchMerchantForAuxiliarySections_pass_completion___block_invoke_2;
  block[3] = &unk_1E8010A88;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __87__PKDashboardPaymentPassDataSource__fetchMerchantForAuxiliarySections_pass_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setMerchant:*(a1 + 40)];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

- (void)reloadTiles
{
  uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
  objc_initWeak(&location, self);
  paymentDataProvider = self->_paymentDataProvider;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__PKDashboardPaymentPassDataSource_reloadTiles__block_invoke;
  v5[3] = &unk_1E8011850;
  objc_copyWeak(&v6, &location);
  v5[4] = uniqueID;
  [(PKPaymentDefaultDataProvider *)paymentDataProvider tilesForPassWithUniqueIdentifier:uniqueID context:1 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __47__PKDashboardPaymentPassDataSource_reloadTiles__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PKDashboardPaymentPassDataSource_reloadTiles__block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __47__PKDashboardPaymentPassDataSource_reloadTiles__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _reloadTiles:*(a1 + 32) passUniqueIdentifier:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_reloadTiles:(id)tiles passUniqueIdentifier:(id)identifier
{
  tilesCopy = tiles;
  identifierCopy = identifier;
  uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
  v8 = identifierCopy;
  v9 = v8;
  if (uniqueID == v8)
  {

    goto LABEL_7;
  }

  if (!v8 || !uniqueID)
  {

    goto LABEL_9;
  }

  v10 = [uniqueID isEqualToString:v8];

  if (v10)
  {
LABEL_7:
    [(PKDashboardPaymentPassDataSource *)self _updateWithTiles:tilesCopy];
  }

LABEL_9:
}

- (void)_updateWithTiles:(id)tiles
{
  v20[1] = *MEMORY[0x1E69E9840];
  tilesCopy = tiles;
  v5 = self->_tileGroups;
  if ([tilesCopy count] && (objc_msgSend(tilesCopy, "objectAtIndexedSubscript:", 0), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "metadata"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isGroupType"), v7, v6, (v8 & 1) == 0))
  {
    v10 = [MEMORY[0x1E69B8A90] _createDefaultDashboardGroupTileWithChildTiles:tilesCopy];
    v11 = v10;
    if (v10)
    {
      v20[0] = v10;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    }

    else
    {
      v9 = 0;
    }
  }

  else if ([tilesCopy count])
  {
    v9 = [tilesCopy copy];
  }

  else
  {
    v9 = 0;
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__PKDashboardPaymentPassDataSource__updateWithTiles___block_invoke;
  aBlock[3] = &unk_1E80110E0;
  objc_copyWeak(&v18, &location);
  v12 = v9;
  v17 = v12;
  v13 = _Block_copy(aBlock);
  v14 = v13;
  if (self->_allContentIsLoaded)
  {
    v15 = [PKCollectionViewItemsDiffCalculator calculateDiffBetweenOldSections:v5 andNewSections:v12 sectionIdentifierAccessor:&__block_literal_global_646 sectionItemsAccessor:&__block_literal_global_649 firstSectionIndex:[(PKDashboardPaymentPassDataSource *)self firstSectionIndexForSectionIdentifier:3]];
    [(PKDashboardPaymentPassDataSource *)self updateWithBlock:v14 andDiff:v15];
  }

  else
  {
    (*(v13 + 2))(v13);
    [(PKDashboardPaymentPassDataSource *)self updateContentIsLoaded];
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __53__PKDashboardPaymentPassDataSource__updateWithTiles___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(WeakRetained + 296) = 1;
  objc_storeStrong(WeakRetained + 36, *(a1 + 32));
  v2 = [*(WeakRetained + 36) count];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2];
  [*(WeakRetained + 6) setObject:v3 forKeyedSubscript:&unk_1F3CC7AF0];
}

id __53__PKDashboardPaymentPassDataSource__updateWithTiles___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 metadata];
  v3 = [v2 identifier];

  return v3;
}

id __53__PKDashboardPaymentPassDataSource__updateWithTiles___block_invoke_3(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [a2 tiles];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v4 UUIDString];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (void)updateWithBlock:(id)block andDiff:(id)diff
{
  blockCopy = block;
  diffCopy = diff;
  v8 = diffCopy;
  if (diffCopy)
  {
    if ([diffCopy isEmpty])
    {
      blockCopy[2](blockCopy);
    }

    else
    {
      objc_initWeak(&location, self);
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __60__PKDashboardPaymentPassDataSource_updateWithBlock_andDiff___block_invoke;
      v15[3] = &unk_1E8011108;
      objc_copyWeak(&v18, &location);
      v17 = blockCopy;
      v10 = v8;
      v16 = v10;
      [WeakRetained performBatchUpdates:v15 completion:0];

      v11 = objc_loadWeakRetained(&self->_delegate);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __60__PKDashboardPaymentPassDataSource_updateWithBlock_andDiff___block_invoke_2;
      v12[3] = &unk_1E80110E0;
      objc_copyWeak(&v14, &location);
      v13 = v10;
      [v11 performBatchUpdates:v12 completion:0];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

void __60__PKDashboardPaymentPassDataSource_updateWithBlock_andDiff___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 40) + 16))();
    [v3 _applyMovesFromDiff:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __60__PKDashboardPaymentPassDataSource_updateWithBlock_andDiff___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _applyReloadsFromDiff:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_applyMovesFromDiff:(id)diff
{
  v47 = *MEMORY[0x1E69E9840];
  diffCopy = diff;
  if (diffCopy)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      deletedIndexPaths = [diffCopy deletedIndexPaths];
      v6 = [deletedIndexPaths count];
      insertedIndexPaths = [diffCopy insertedIndexPaths];
      v7 = [insertedIndexPaths count];
      movedFromIndexPaths = [diffCopy movedFromIndexPaths];
      v9 = [movedFromIndexPaths count];
      movedToIndexPaths = [diffCopy movedToIndexPaths];
      v11 = [movedToIndexPaths count];
      changedIndexPaths = [diffCopy changedIndexPaths];
      *buf = 134219008;
      v38 = v6;
      v39 = 2048;
      v40 = v7;
      v41 = 2048;
      v42 = v9;
      v43 = 2048;
      v44 = v11;
      v45 = 2048;
      v46 = [changedIndexPaths count];
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Applying moves from diff: %ld deletions, %ld insertions, %ld moves from, %ld moves to, %ld updates", buf, 0x34u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    deletedIndexPaths2 = [diffCopy deletedIndexPaths];
    [WeakRetained deleteItemsAtIndexPaths:deletedIndexPaths2];

    v15 = objc_loadWeakRetained(&self->_delegate);
    deletedSections = [diffCopy deletedSections];
    [v15 deleteSections:deletedSections];

    v17 = objc_loadWeakRetained(&self->_delegate);
    insertedIndexPaths2 = [diffCopy insertedIndexPaths];
    [v17 insertItemsAtIndexPaths:insertedIndexPaths2];

    v19 = objc_loadWeakRetained(&self->_delegate);
    insertedSections = [diffCopy insertedSections];
    [v19 insertSections:insertedSections];

    movedFromSections = [diffCopy movedFromSections];
    movedToSections = [diffCopy movedToSections];
    if ([movedFromSections count])
    {
      v23 = 0;
      do
      {
        v24 = [movedFromSections objectAtIndexedSubscript:v23];
        unsignedIntegerValue = [v24 unsignedIntegerValue];

        v26 = [movedToSections objectAtIndexedSubscript:v23];
        unsignedIntegerValue2 = [v26 unsignedIntegerValue];

        v28 = objc_loadWeakRetained(&self->_delegate);
        [v28 moveSection:unsignedIntegerValue toSection:unsignedIntegerValue2];

        ++v23;
      }

      while ([movedFromSections count] > v23);
    }

    movedFromIndexPaths2 = [diffCopy movedFromIndexPaths];
    movedToIndexPaths2 = [diffCopy movedToIndexPaths];
    if ([movedFromIndexPaths2 count])
    {
      v31 = 0;
      do
      {
        v32 = objc_loadWeakRetained(&self->_delegate);
        v33 = [movedFromIndexPaths2 objectAtIndexedSubscript:v31];
        v34 = [movedToIndexPaths2 objectAtIndexedSubscript:v31];
        [v32 moveItemAtIndexPath:v33 toIndexPath:v34];

        ++v31;
      }

      while ([movedFromIndexPaths2 count] > v31);
    }
  }
}

- (void)_applyReloadsFromDiff:(id)diff
{
  v26 = *MEMORY[0x1E69E9840];
  diffCopy = diff;
  if (diffCopy)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      changedIndexPaths = [diffCopy changedIndexPaths];
      v7 = [changedIndexPaths count];
      changedIndexPaths2 = [diffCopy changedIndexPaths];
      *buf = 134218242;
      v23 = v7;
      v24 = 2112;
      v25 = changedIndexPaths2;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Applying reloads from diff with %ld updates: %@", buf, 0x16u);
    }

    changedIndexPaths3 = [diffCopy changedIndexPaths];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [changedIndexPaths3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(changedIndexPaths3);
          }

          v14 = *(*(&v17 + 1) + 8 * v13);
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v16 = [(PKDashboardPaymentPassDataSource *)self itemAtIndexPath:v14];
          [WeakRetained itemChanged:v16 atIndexPath:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [changedIndexPaths3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }
}

- (void)reloadHomeKitRestrictedGuestAccessState
{
  if (([(PKPaymentPass *)self->_pass isHomeKeyPass]& 1) != 0)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69B88E8]);
    serialNumber = [(PKPaymentPass *)self->_pass serialNumber];
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __75__PKDashboardPaymentPassDataSource_reloadHomeKitRestrictedGuestAccessState__block_invoke;
    v5[3] = &unk_1E801DC18;
    v5[4] = v3;
    v5[5] = serialNumber;
    objc_copyWeak(&v6, &location);
    [v3 hasHomeAccessScheduleForPassSerialNumber:serialNumber withCompletion:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  else
  {
    self->_homeKitRestrictedGuestAccessStateLoaded = 1;
  }
}

void __75__PKDashboardPaymentPassDataSource_reloadHomeKitRestrictedGuestAccessState__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__PKDashboardPaymentPassDataSource_reloadHomeKitRestrictedGuestAccessState__block_invoke_2;
    v11[3] = &unk_1E80113B0;
    objc_copyWeak(&v13, (a1 + 48));
    v12 = v5;
    [v6 isHomeAccessRestrictedForPassSerialNumber:v7 withCompletion:v11];

    objc_destroyWeak(&v13);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v9 = WeakRetained;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __75__PKDashboardPaymentPassDataSource_reloadHomeKitRestrictedGuestAccessState__block_invoke_4;
      block[3] = &unk_1E8010970;
      block[4] = WeakRetained;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __75__PKDashboardPaymentPassDataSource_reloadHomeKitRestrictedGuestAccessState__block_invoke_2(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__PKDashboardPaymentPassDataSource_reloadHomeKitRestrictedGuestAccessState__block_invoke_3;
    block[3] = &unk_1E8013D60;
    block[4] = WeakRetained;
    v7 = *(a1 + 32);
    v8 = a2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_updateWithHomeKitHasHomeAccessSchedule:(BOOL)schedule homeIdentifier:(id)identifier isHomeAccessRestricted:(BOOL)restricted
{
  restrictedCopy = restricted;
  scheduleCopy = schedule;
  identifierCopy = identifier;
  homeKitHasHomeGuestAccessSchedule = self->_homeKitHasHomeGuestAccessSchedule;
  v11 = homeKitHasHomeGuestAccessSchedule != scheduleCopy;
  if (homeKitHasHomeGuestAccessSchedule != scheduleCopy)
  {
    self->_homeKitHasHomeGuestAccessSchedule = scheduleCopy;
  }

  v13 = identifierCopy;
  if (([(NSUUID *)self->_homeKitHomeIdentifier isEqual:identifierCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_homeKitHomeIdentifier, identifier);
    v11 = 1;
  }

  if (self->_homeKitIsHomeAccessRestricted != restrictedCopy)
  {
    self->_homeKitIsHomeAccessRestricted = restrictedCopy;
    self->_homeKitRestrictedGuestAccessStateLoaded = 1;
    [(PKDashboardPaymentPassDataSource *)self reloadMessagesWithReason:@"Homekit change"];
    if (self->_allContentIsLoaded)
    {
      goto LABEL_10;
    }

LABEL_11:
    [(PKDashboardPaymentPassDataSource *)self updateContentIsLoaded];
    goto LABEL_12;
  }

  self->_homeKitRestrictedGuestAccessStateLoaded = 1;
  [(PKDashboardPaymentPassDataSource *)self reloadMessagesWithReason:@"Homekit change"];
  if (!self->_allContentIsLoaded)
  {
    goto LABEL_11;
  }

  if (v11)
  {
LABEL_10:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained reloadNavigationBarAnimated:1];
  }

LABEL_12:
}

- (void)reloadMessagesWithReason:(id)reason
{
  reasonCopy = reason;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PKDashboardPaymentPassDataSource_reloadMessagesWithReason___block_invoke;
  block[3] = &unk_1E80110E0;
  objc_copyWeak(&v8, &location);
  v7 = reasonCopy;
  v5 = reasonCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __61__PKDashboardPaymentPassDataSource_reloadMessagesWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _reloadMessagesWithReason:*(a1 + 32)];
}

- (void)reloadCreditRecoveryPaymentPlans
{
  if ([(PKDashboardPaymentPassDataSource *)self _isCreditPass])
  {
    objc_initWeak(&location, self);
    accountService = self->_accountService;
    accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __68__PKDashboardPaymentPassDataSource_reloadCreditRecoveryPaymentPlans__block_invoke;
    v5[3] = &unk_1E801DC68;
    objc_copyWeak(&v6, &location);
    [(PKAccountService *)accountService creditRecoveryPaymentPlanInformationForAccountIdentifier:accountIdentifier allowFetchFromServer:1 completion:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __68__PKDashboardPaymentPassDataSource_reloadCreditRecoveryPaymentPlans__block_invoke(uint64_t a1, char a2, char a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PKDashboardPaymentPassDataSource_reloadCreditRecoveryPaymentPlans__block_invoke_2;
  v5[3] = &unk_1E801DC40;
  objc_copyWeak(&v6, (a1 + 32));
  v7 = a2;
  v8 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
  objc_destroyWeak(&v6);
}

void __68__PKDashboardPaymentPassDataSource_reloadCreditRecoveryPaymentPlans__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = *(a1 + 40);
    WeakRetained[744] = v3;
    WeakRetained[745] = *(a1 + 41);
    v4 = WeakRetained;
    if (WeakRetained[746] == 1 && *(a1 + 40) == v3)
    {
      WeakRetained[746] = 1;
    }

    else
    {
      WeakRetained[746] = 1;
      [WeakRetained reloadMessagesWithReason:@"credit recovery change"];
      WeakRetained = v4;
    }

    if ((WeakRetained[788] & 1) == 0)
    {
      [v4 updateContentIsLoaded];
      WeakRetained = v4;
    }
  }
}

- (void)_reloadMessagesWithReason:(id)reason
{
  v14 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  [(NSMutableArray *)self->_pendingMessageReloadReasons addObject:reasonCopy];
  if (!self->_loadingMessages)
  {
    if (self->_engagementMessagesLoaded && self->_familyCollectionLoaded && self->_pendingPeerPaymentRequestsLoaded && [(PKDashboardPaymentPassDataSource *)self accountsLoaded]&& self->_physicalCardsLoaded && self->_accountUserInvitationsLoaded && self->_accountUsersLoaded && self->_creditRecoveryPaymentPlansLoaded && self->_homeKitRestrictedGuestAccessStateLoaded)
    {
      if (!self->_messagesLoaded || (v5 = reasonCopy, v5 == @"messageTap") || (v6 = v5) != 0 && (v7 = [(__CFString *)v5 isEqualToString:@"messageTap"], v6, v7))
      {
        [(PKDashboardPaymentPassDataSource *)self _loadMessages];
      }

      else
      {
        objc_initWeak(buf, self);
        v9 = dispatch_time(0, 1000000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __62__PKDashboardPaymentPassDataSource__reloadMessagesWithReason___block_invoke;
        block[3] = &unk_1E8010998;
        objc_copyWeak(&v11, buf);
        dispatch_after(v9, MEMORY[0x1E69E96A0], block);
        objc_destroyWeak(&v11);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy = self;
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Dashboard loading (%p): messages waiting for more data", buf, 0xCu);
      }
    }
  }
}

void __62__PKDashboardPaymentPassDataSource__reloadMessagesWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _loadMessages];
}

- (void)_loadMessages
{
  v293 = *MEMORY[0x1E69E9840];
  if (!self->_loadingMessages && [(NSMutableArray *)self->_pendingMessageReloadReasons count])
  {
    self->_loadingMessages = 1;
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(NSMutableArray *)self->_pendingMessageReloadReasons componentsJoinedByString:@", "];
      *buf = 134218242;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Dashboard loading (%p): getting messages with reasons: %@", buf, 0x16u);
    }

    [(NSMutableArray *)self->_pendingMessageReloadReasons removeAllObjects];
    v5 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v290 = __Block_byref_object_copy__41;
    v291 = __Block_byref_object_dispose__41;
    v292 = 0;
    dispatch_group_enter(v5);
    v286[0] = MEMORY[0x1E69E9820];
    v286[1] = 3221225472;
    v286[2] = __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke;
    v286[3] = &unk_1E801DC90;
    v288 = buf;
    v6 = v5;
    v287 = v6;
    [(PKDashboardPaymentPassDataSource *)self _messagesForAccountStatusWithCompletion:v286];
    _messageForSessionActive = [(PKDashboardPaymentPassDataSource *)self _messageForSessionActive];
    _messageForAutoReload = [(PKDashboardPaymentPassDataSource *)self _messageForAutoReload];
    _messageForExpressEducation = [(PKDashboardPaymentPassDataSource *)self _messageForExpressEducation];
    v110 = _messageForAutoReload;
    v284[0] = 0;
    v284[1] = v284;
    v284[2] = 0x2020000000;
    v285 = 0;
    v282[0] = 0;
    v282[1] = v282;
    v282[2] = 0x3032000000;
    v282[3] = __Block_byref_object_copy__41;
    v282[4] = __Block_byref_object_dispose__41;
    v283 = 0;
    v104 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v280[0] = 0;
    v280[1] = v280;
    v280[2] = 0x3032000000;
    v280[3] = __Block_byref_object_copy__41;
    v280[4] = __Block_byref_object_dispose__41;
    v281 = 0;
    v278[0] = 0;
    v278[1] = v278;
    v278[2] = 0x3032000000;
    v278[3] = __Block_byref_object_copy__41;
    v278[4] = __Block_byref_object_dispose__41;
    v279 = 0;
    v276[0] = 0;
    v276[1] = v276;
    v276[2] = 0x3032000000;
    v276[3] = __Block_byref_object_copy__41;
    v276[4] = __Block_byref_object_dispose__41;
    v277 = 0;
    v270 = 0;
    v271 = &v270;
    v272 = 0x3032000000;
    v273 = __Block_byref_object_copy__41;
    v274 = __Block_byref_object_dispose__41;
    v275 = 0;
    v264 = 0;
    v265 = &v264;
    v266 = 0x3032000000;
    v267 = __Block_byref_object_copy__41;
    v268 = __Block_byref_object_dispose__41;
    v269 = 0;
    v258 = 0;
    v259 = &v258;
    v260 = 0x3032000000;
    v261 = __Block_byref_object_copy__41;
    v262 = __Block_byref_object_dispose__41;
    v263 = 0;
    v252 = 0;
    v253 = &v252;
    v254 = 0x3032000000;
    v255 = __Block_byref_object_copy__41;
    v256 = __Block_byref_object_dispose__41;
    v257 = 0;
    v246 = 0;
    v247 = &v246;
    v248 = 0x3032000000;
    v249 = __Block_byref_object_copy__41;
    v250 = __Block_byref_object_dispose__41;
    v251 = 0;
    v244[0] = 0;
    v244[1] = v244;
    v244[2] = 0x3032000000;
    v244[3] = __Block_byref_object_copy__41;
    v244[4] = __Block_byref_object_dispose__41;
    v245 = 0;
    v242[0] = 0;
    v242[1] = v242;
    v242[2] = 0x3032000000;
    v242[3] = __Block_byref_object_copy__41;
    v242[4] = __Block_byref_object_dispose__41;
    v243 = 0;
    v236 = 0;
    v237 = &v236;
    v238 = 0x3032000000;
    v239 = __Block_byref_object_copy__41;
    v240 = __Block_byref_object_dispose__41;
    v241 = 0;
    v234[0] = 0;
    v234[1] = v234;
    v234[2] = 0x3032000000;
    v234[3] = __Block_byref_object_copy__41;
    v234[4] = __Block_byref_object_dispose__41;
    v235 = 0;
    v228 = 0;
    v229 = &v228;
    v230 = 0x3032000000;
    v231 = __Block_byref_object_copy__41;
    v232 = __Block_byref_object_dispose__41;
    v233 = 0;
    v226[0] = 0;
    v226[1] = v226;
    v226[2] = 0x3032000000;
    v226[3] = __Block_byref_object_copy__41;
    v226[4] = __Block_byref_object_dispose__41;
    v227 = 0;
    v224[0] = 0;
    v224[1] = v224;
    v224[2] = 0x3032000000;
    v224[3] = __Block_byref_object_copy__41;
    v224[4] = __Block_byref_object_dispose__41;
    v225 = 0;
    dispatch_group_enter(v6);
    v8 = self->_precursorUpgradeController;
    if (!v8)
    {
      v9 = objc_alloc(MEMORY[0x1E69B9088]);
      pass = self->_pass;
      mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
      v8 = [v9 initWithPass:pass webService:mEMORY[0x1E69B8EF8]];

      objc_storeStrong(&self->_precursorUpgradeController, v8);
    }

    v218[0] = MEMORY[0x1E69E9820];
    v218[1] = 3221225472;
    v218[2] = __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_2;
    v218[3] = &unk_1E801DCB8;
    v219 = v8;
    selfCopy = self;
    v222 = v234;
    v223 = &v236;
    v12 = v6;
    v221 = v12;
    v87 = v219;
    [(PKDashboardPaymentPassDataSource *)self _messageForPrecursorPassUpgradeWithController:v219 completion:v218];
    dispatch_group_enter(v12);
    v215[0] = MEMORY[0x1E69E9820];
    v215[1] = 3221225472;
    v215[2] = __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_3;
    v215[3] = &unk_1E801DCE0;
    v217 = v226;
    v13 = v12;
    v216 = v13;
    [(PKDashboardPaymentPassDataSource *)self _messageIfUnderlyingCredentialIsLockedOutWithCompletion:v215];
    dispatch_group_enter(v13);
    v212[0] = MEMORY[0x1E69E9820];
    v212[1] = 3221225472;
    v212[2] = __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_4;
    v212[3] = &unk_1E8012BB0;
    v214 = v224;
    v14 = v13;
    v213 = v14;
    [(PKDashboardPaymentPassDataSource *)self issuerInstallmentDashboardMessagesWithCompletion:v212];
    v210[0] = 0;
    v210[1] = v210;
    v210[2] = 0x3032000000;
    v210[3] = __Block_byref_object_copy__41;
    v210[4] = __Block_byref_object_dispose__41;
    v211 = 0;
    dispatch_group_enter(v14);
    if (v237[5])
    {
      v15 = 1;
    }

    else
    {
      v15 = self->_isAccessPass || _messageForSessionActive != 0;
    }

    v207[0] = MEMORY[0x1E69E9820];
    v207[1] = 3221225472;
    v207[2] = __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_5;
    v207[3] = &unk_1E801DCE0;
    v209 = v210;
    v16 = v14;
    v208 = v16;
    [(PKDashboardPaymentPassDataSource *)self _messageFromPaymentServiceSuppressingPassStateChanges:v15 completion:v207];
    account = self->_account;
    if (account)
    {
      creditDetails = [(PKAccount *)account creditDetails];
      if (creditDetails)
      {
        v19 = [MEMORY[0x1E69B8770] shouldDisplayAccountInformationForTransactionSourceCollection:self->_transactionSourceCollection withAccount:self->_account];

        if (v19)
        {
          _messagesForPhysicalCard = [(PKDashboardPaymentPassDataSource *)self _messagesForPhysicalCard];
          _messagesForPhysicalCardExpiration = [(PKDashboardPaymentPassDataSource *)self _messagesForPhysicalCardExpiration];
          _messagesForInstallmentPlans = [(PKDashboardPaymentPassDataSource *)self _messagesForInstallmentPlans];
          v21 = v271[5];
          v271[5] = _messagesForInstallmentPlans;

          _messageForBroadwayDiscoverability = [(PKDashboardPaymentPassDataSource *)self _messageForBroadwayDiscoverability];
          v23 = v229[5];
          v229[5] = _messageForBroadwayDiscoverability;

          v24 = objc_alloc_init(MEMORY[0x1E69B8658]);
          creditDetails2 = [(PKAccount *)self->_account creditDetails];
          rewardsDestination = [creditDetails2 rewardsDestination];

          if (rewardsDestination == 1)
          {
            v206[0] = MEMORY[0x1E69E9820];
            v206[1] = 3221225472;
            v206[2] = __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_6;
            v206[3] = &unk_1E8016750;
            v206[4] = self;
            v206[5] = v282;
            [v24 addOperation:v206];
          }

          else if (rewardsDestination == 3)
          {
            v205[0] = MEMORY[0x1E69E9820];
            v205[1] = 3221225472;
            v205[2] = __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_8;
            v205[3] = &unk_1E8016750;
            v205[4] = self;
            v205[5] = v282;
            [v24 addOperation:v205];
          }

          v204[0] = MEMORY[0x1E69E9820];
          v204[1] = 3221225472;
          v204[2] = __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_10;
          v204[3] = &unk_1E8016750;
          v204[4] = self;
          v204[5] = v280;
          [v24 addOperation:v204];
          dispatch_group_enter(v16);
          null = [MEMORY[0x1E695DFB0] null];
          v202[0] = MEMORY[0x1E69E9820];
          v202[1] = 3221225472;
          v202[2] = __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_13;
          v202[3] = &unk_1E801DD30;
          v42 = v16;
          v203 = v42;
          v43 = [v24 evaluateWithInput:null completion:v202];

          _cardSharingEducationMessages = [(PKDashboardPaymentPassDataSource *)self _cardSharingEducationMessages];
          [v104 addObjectsFromArray:_cardSharingEducationMessages];

          dispatch_group_enter(v42);
          v199[0] = MEMORY[0x1E69E9820];
          v199[1] = 3221225472;
          v199[2] = __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_14;
          v199[3] = &unk_1E801DCE0;
          v201 = v278;
          v200 = v42;
          [(PKDashboardPaymentPassDataSource *)self _messageForPaymentFailedWithCompletion:v199];

          goto LABEL_27;
        }
      }
    }

    peerPaymentAccount = self->_peerPaymentAccount;
    if (!peerPaymentAccount)
    {
LABEL_21:
      _messagesForPhysicalCardExpiration = 0;
      _messagesForPhysicalCard = 0;
      goto LABEL_28;
    }

    associatedPassUniqueID = [(PKPeerPaymentAccount *)peerPaymentAccount associatedPassUniqueID];
    uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
    v24 = associatedPassUniqueID;
    v30 = uniqueID;
    v31 = v30;
    if (v24 == v30)
    {
    }

    else
    {
      if (!v24 || !v30)
      {

        _messagesForPhysicalCardExpiration = 0;
        _messagesForPhysicalCard = 0;
        goto LABEL_27;
      }

      v32 = [v24 isEqualToString:v30];

      if ((v32 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    dispatch_group_enter(v16);
    v196[0] = MEMORY[0x1E69E9820];
    v196[1] = 3221225472;
    v196[2] = __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_15;
    v196[3] = &unk_1E801DCE0;
    v198 = v282;
    v197 = v16;
    [(PKDashboardPaymentPassDataSource *)self _messageForPeerPaymentIdentityVerificationForRewardsWithCompletion:v196];
    _messageForPeerPaymentLockedAccountByAssociatedAccount = [(PKDashboardPaymentPassDataSource *)self _messageForPeerPaymentLockedAccountByAssociatedAccount];
    v34 = v265[5];
    v265[5] = _messageForPeerPaymentLockedAccountByAssociatedAccount;

    _messageForPeerPaymentAssociatedAccountStateChangedForSecurityReasons = [(PKDashboardPaymentPassDataSource *)self _messageForPeerPaymentAssociatedAccountStateChangedForSecurityReasons];
    v36 = v259[5];
    v259[5] = _messageForPeerPaymentAssociatedAccountStateChangedForSecurityReasons;

    _messageForPeerPaymentAssociatedAccountLockedAccount = [(PKDashboardPaymentPassDataSource *)self _messageForPeerPaymentAssociatedAccountLockedAccount];
    v38 = v253[5];
    v253[5] = _messageForPeerPaymentAssociatedAccountLockedAccount;

    _messageForPeerPaymentAssociatedAccountPending = [(PKDashboardPaymentPassDataSource *)self _messageForPeerPaymentAssociatedAccountPending];
    v40 = v247[5];
    v247[5] = _messageForPeerPaymentAssociatedAccountPending;

    _messagesForPhysicalCardExpiration = 0;
    _messagesForPhysicalCard = 0;
    v24 = v197;
LABEL_27:

LABEL_28:
    v190 = 0;
    v191 = &v190;
    v192 = 0x3032000000;
    v193 = __Block_byref_object_copy__41;
    v194 = __Block_byref_object_dispose__41;
    v195 = 0;
    v184 = 0;
    v185 = &v184;
    v186 = 0x3032000000;
    v187 = __Block_byref_object_copy__41;
    v188 = __Block_byref_object_dispose__41;
    v189 = 0;
    v182[0] = 0;
    v182[1] = v182;
    v182[2] = 0x3032000000;
    v182[3] = __Block_byref_object_copy__41;
    v182[4] = __Block_byref_object_dispose__41;
    v183 = 0;
    v176 = 0;
    v177 = &v176;
    v178 = 0x3032000000;
    v179 = __Block_byref_object_copy__41;
    v180 = __Block_byref_object_dispose__41;
    v181 = 0;
    v174[0] = 0;
    v174[1] = v174;
    v174[2] = 0x3032000000;
    v174[3] = __Block_byref_object_copy__41;
    v174[4] = __Block_byref_object_dispose__41;
    v175 = 0;
    devicePrimaryPaymentApplication = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
    v46 = [devicePrimaryPaymentApplication state] == 7;

    if (!v46)
    {
      if (!self->_account && self->_peerPaymentAccount && PKPeerPaymentAccountResolutionForAccountAndPeerPaymentPass() == 3 && ![(PKPeerPaymentAccount *)self->_peerPaymentAccount role])
      {
        _peerPaymentAccountStatusMessage = [(PKDashboardPaymentPassDataSource *)self _peerPaymentAccountStatusMessage];
        v61 = v177[5];
        v177[5] = _peerPaymentAccountStatusMessage;
      }

      _messagesForPeerPaymentPendingRequests = [(PKDashboardPaymentPassDataSource *)self _messagesForPeerPaymentPendingRequests];
      v48 = v185[5];
      v185[5] = _messagesForPeerPaymentPendingRequests;

      recurringPaymentDashboardMessages = [(PKDashboardPaymentPassDataSource *)self recurringPaymentDashboardMessages];
      v50 = v191[5];
      v191[5] = recurringPaymentDashboardMessages;
    }

    if (self->_showAMPEnrollmentMessage)
    {
      _messageForAMPEnrollment = [(PKDashboardPaymentPassDataSource *)self _messageForAMPEnrollment];
    }

    else
    {
      _messageForAMPEnrollment = 0;
    }

    dispatch_group_enter(v16);
    v171[0] = MEMORY[0x1E69E9820];
    v171[1] = 3221225472;
    v171[2] = __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_16;
    v171[3] = &unk_1E801DCE0;
    v173 = v276;
    v51 = v16;
    v172 = v51;
    [(PKDashboardPaymentPassDataSource *)self _messageForEnableNotificationsWithCompletion:v171];
    _messageForPaymentInformationEventExtensionInstallation = [(PKDashboardPaymentPassDataSource *)self _messageForPaymentInformationEventExtensionInstallation];
    _messagesForAccountUserInvitations = [(PKDashboardPaymentPassDataSource *)self _messagesForAccountUserInvitations];
    _messagesForAccountUserSetupCashForFamily = [(PKDashboardPaymentPassDataSource *)self _messagesForAccountUserSetupCashForFamily];
    _messagesToOrderPhysicalCardForUnderageParticipants = [(PKDashboardPaymentPassDataSource *)self _messagesToOrderPhysicalCardForUnderageParticipants];
    _messagesForLockedCardParticipants = [(PKDashboardPaymentPassDataSource *)self _messagesForLockedCardParticipants];
    _messageForAccountPendingFamilyMembers = [(PKDashboardPaymentPassDataSource *)self _messageForAccountPendingFamilyMembers];
    _messageForFirstMonthCoOwners = [(PKDashboardPaymentPassDataSource *)self _messageForFirstMonthCoOwners];
    if (([(PKPaymentPass *)self->_pass supportedRadioTechnologies]& 2) != 0)
    {
      _messageForRangingSuspendedPass = [(PKDashboardPaymentPassDataSource *)self _messageForRangingSuspendedPass];
    }

    else
    {
      _messageForRangingSuspendedPass = 0;
    }

    dispatch_group_enter(v51);
    v168[0] = MEMORY[0x1E69E9820];
    v168[1] = 3221225472;
    v168[2] = __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_17;
    v168[3] = &unk_1E801DCE0;
    v170 = v244;
    v55 = v51;
    v169 = v55;
    [(PKDashboardPaymentPassDataSource *)self _messageForUnusableIdentityPassWithCompletion:v168];
    dispatch_group_enter(v55);
    v165[0] = MEMORY[0x1E69E9820];
    v165[1] = 3221225472;
    v165[2] = __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_18;
    v165[3] = &unk_1E801DCE0;
    v167 = v242;
    group = v55;
    v166 = group;
    [(PKDashboardPaymentPassDataSource *)self _messageForPassInconsistencyWithCompletion:v165];
    _messageForDeviceAssessmentEducation = [(PKDashboardPaymentPassDataSource *)self _messageForDeviceAssessmentEducation];
    v102 = self->_recurringPeerPaymentSuggestions;
    if (PKFinHealthPeerPaymentSuggestionsEnabled() && [(PKPeerPaymentAccount *)self->_peerPaymentAccount supportsRecurringPayments])
    {
      v57 = self->_peerPaymentAccount;
      currentUser = [(PKFamilyMemberCollection *)self->_familyCollection currentUser];
      if (([(PKPeerPaymentAccount *)v57 isEligibleForRecurringPaymentsForUser:currentUser]& 1) != 0)
      {
        v59 = PKIsVision();

        if ((v59 & 1) == 0)
        {
          objc_initWeak(&location, self);
          v161[0] = MEMORY[0x1E69E9820];
          v161[1] = 3221225472;
          v161[2] = __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_19;
          v161[3] = &unk_1E8011850;
          objc_copyWeak(&v163, &location);
          v162 = v102;
          [(PKDashboardPaymentPassDataSource *)self _recurringPeerPaymentSuggestionsWithCompletion:v161];

          objc_destroyWeak(&v163);
          objc_destroyWeak(&location);
        }
      }

      else
      {
      }
    }

    mEMORY[0x1E69B8EF8]2 = [MEMORY[0x1E69B8EF8] sharedService];
    v63 = PKVirtualCardEnabledWithWebService();

    if (!v63)
    {
      v67 = 0;
LABEL_58:
      messageForSavingsAccountFDIC = [(PKDashboardPaymentPassDataSource *)self messageForSavingsAccountFDIC];
      messagesForSavingsAccountStatus = [(PKDashboardPaymentPassDataSource *)self messagesForSavingsAccountStatus];
      _messageForHomeAccessRestricted = [(PKDashboardPaymentPassDataSource *)self _messageForHomeAccessRestricted];
      _userLegalAgreementDashboardMessage = [(PKDashboardPaymentPassDataSource *)self _userLegalAgreementDashboardMessage];
      objc_initWeak(&location, self);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_20;
      block[3] = &unk_1E801DD58;
      objc_copyWeak(&v160, &location);
      v137 = v278;
      v138 = buf;
      v139 = v284;
      v140 = v244;
      v141 = v234;
      v142 = v226;
      v143 = v224;
      v144 = &v236;
      v145 = v210;
      v146 = &v258;
      v147 = &v252;
      v148 = &v264;
      v149 = &v246;
      v150 = v174;
      v151 = &v270;
      v152 = &v228;
      v153 = v276;
      v154 = v282;
      v155 = &v184;
      v156 = &v190;
      v157 = v182;
      v158 = v242;
      v159 = v280;
      v88 = _messagesForLockedCardParticipants;
      v89 = _messageForRangingSuspendedPass;
      v115 = _messageForRangingSuspendedPass;
      v116 = _messagesForLockedCardParticipants;
      v117 = _messagesForPhysicalCardExpiration;
      v118 = messageForSavingsAccountFDIC;
      v119 = messagesForSavingsAccountStatus;
      v120 = _messageForSessionActive;
      v121 = _messageForDeviceAssessmentEducation;
      v122 = v110;
      v123 = _messageForExpressEducation;
      v124 = _messageForAccountPendingFamilyMembers;
      v74 = _messageForFirstMonthCoOwners;
      v125 = _messageForFirstMonthCoOwners;
      v126 = _messagesForAccountUserInvitations;
      v127 = _messagesForAccountUserSetupCashForFamily;
      v128 = _messagesToOrderPhysicalCardForUnderageParticipants;
      v129 = _messagesForPhysicalCard;
      v130 = v67;
      v131 = _messageForAMPEnrollment;
      v132 = _messageForPaymentInformationEventExtensionInstallation;
      v133 = _userLegalAgreementDashboardMessage;
      v136 = &v176;
      v134 = v102;
      v135 = _messageForHomeAccessRestricted;
      v91 = _messageForHomeAccessRestricted;
      v86 = v102;
      v103 = _userLegalAgreementDashboardMessage;
      v97 = _messageForPaymentInformationEventExtensionInstallation;
      v85 = _messageForAMPEnrollment;
      v99 = v67;
      v84 = _messagesForPhysicalCard;
      v101 = _messagesToOrderPhysicalCardForUnderageParticipants;
      v94 = _messagesForAccountUserSetupCashForFamily;
      v75 = _messagesForAccountUserInvitations;
      v76 = v74;
      v77 = _messageForAccountPendingFamilyMembers;
      v109 = _messageForExpressEducation;
      v111 = v110;
      v78 = _messageForDeviceAssessmentEducation;
      v113 = _messageForSessionActive;
      v79 = messagesForSavingsAccountStatus;
      v80 = messageForSavingsAccountFDIC;
      v81 = _messagesForPhysicalCardExpiration;
      v82 = v88;
      v83 = v89;
      dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);

      objc_destroyWeak(&v160);
      objc_destroyWeak(&location);

      _Block_object_dispose(v174, 8);
      _Block_object_dispose(&v176, 8);

      _Block_object_dispose(v182, 8);
      _Block_object_dispose(&v184, 8);

      _Block_object_dispose(&v190, 8);
      _Block_object_dispose(v210, 8);

      _Block_object_dispose(v224, 8);
      _Block_object_dispose(v226, 8);

      _Block_object_dispose(&v228, 8);
      _Block_object_dispose(v234, 8);

      _Block_object_dispose(&v236, 8);
      _Block_object_dispose(v242, 8);

      _Block_object_dispose(v244, 8);
      _Block_object_dispose(&v246, 8);

      _Block_object_dispose(&v252, 8);
      _Block_object_dispose(&v258, 8);

      _Block_object_dispose(&v264, 8);
      _Block_object_dispose(&v270, 8);

      _Block_object_dispose(v276, 8);
      _Block_object_dispose(v278, 8);

      _Block_object_dispose(v280, 8);
      _Block_object_dispose(v282, 8);

      _Block_object_dispose(v284, 8);
      _Block_object_dispose(buf, 8);

      return;
    }

    paymentPass = [(PKPaymentPass *)self->_pass paymentPass];
    associatedAccountFeatureIdentifier = [paymentPass associatedAccountFeatureIdentifier];
    if ([paymentPass supportsVirtualCardNumber] && (objc_msgSend(paymentPass, "hasActiveVirtualCard") & 1) == 0)
    {
      ingestedDate = [(PKPaymentPass *)self->_pass ingestedDate];
      [ingestedDate timeIntervalSinceNow];
      v70 = fabs(v69) > 300.0;

      if (v70)
      {
        v66 = [(PKDashboardPaymentPassDataSource *)self _messageForSetUpVirtualCardWithFeatureIdentifier:associatedAccountFeatureIdentifier];
        goto LABEL_55;
      }
    }

    else if ([paymentPass hasActiveVirtualCard])
    {
      v66 = [(PKDashboardPaymentPassDataSource *)self _messageForVirtualCardEnabledWithFeatureIdentifier:associatedAccountFeatureIdentifier];
LABEL_55:
      v67 = v66;
LABEL_57:

      goto LABEL_58;
    }

    v67 = 0;
    goto LABEL_57;
  }
}

void __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    [*(a1 + 32) setDelegate:*(a1 + 40)];
    objc_storeStrong((*(a1 + 40) + 160), *(a1 + 32));
    v3 = *(*(a1 + 56) + 8);
    v4 = v8;
    v5 = *(v3 + 40);
    *(v3 + 40) = v4;
  }

  else
  {
    v6 = [*(a1 + 40) _messageForPaymentApplicationStatus];
    v7 = *(*(a1 + 64) + 8);
    v5 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  dispatch_group_leave(*(a1 + 48));
}

void __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_5(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_6(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_7;
  v12[3] = &unk_1E801DD08;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14 = v7;
  v15 = v8;
  v13 = v6;
  v10 = v6;
  v11 = v7;
  [v9 _messageForPeerPaymentRewardsRedemptionWithCompletion:v12];
}

void __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_7(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_9;
  v12[3] = &unk_1E801DD08;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14 = v7;
  v15 = v8;
  v13 = v6;
  v10 = v6;
  v11 = v7;
  [v9 messageForSavingsRewardsRedemptionWithCompletion:v12];
}

void __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_9(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_11;
  v12[3] = &unk_1E80114A8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v7;
  v15 = v9;
  v12[4] = v8;
  v13 = v6;
  v10 = v6;
  v11 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

void __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_11(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_12;
  v5[3] = &unk_1E801DD08;
  v4 = *(a1 + 48);
  v3 = v4;
  v7 = v4;
  v6 = *(a1 + 40);
  [v2 _messageForInterestChargeWithCompletion:v5];
}

void __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_12(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_14(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_15(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_16(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_17(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_18(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_19(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) count];
    if (v5 != [WeakRetained[40] count])
    {
      objc_storeStrong(WeakRetained + 40, a2);
      [WeakRetained reloadMessagesWithReason:@"recurring payment suggestions"];
    }
  }
}

void __49__PKDashboardPaymentPassDataSource__loadMessages__block_invoke_20(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 392));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_113;
  }

  *(WeakRetained + 312) = 1;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v5 = v4;
  if (!*(*(*(a1 + 200) + 8) + 40))
  {
    if (*(*(*(a1 + 208) + 8) + 40))
    {
      [v4 addObject:?];
    }

    v6 = [v3[48] stateReason];
    if ([v3[48] state] != 2 || v6 > 8)
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      v8 = 0xF5u >> v6;
    }

    if (*(*(*(a1 + 216) + 8) + 40) && (v8 & *(*(*(a1 + 224) + 8) + 24) & 1) == 0)
    {
      [v5 unionOrderedSet:?];
    }

    if (*(*(*(a1 + 232) + 8) + 40))
    {
      [v5 addObject:?];
    }

    if (*(a1 + 32))
    {
      [v5 addObject:?];
    }

    if ([*(a1 + 40) count])
    {
      [v5 addObjectsFromArray:*(a1 + 40)];
    }

    if (*(*(*(a1 + 240) + 8) + 40))
    {
      [v5 addObject:?];
    }

    if (*(*(*(a1 + 248) + 8) + 40))
    {
      [v5 addObject:?];
    }

    if ([*(*(*(a1 + 256) + 8) + 40) count])
    {
      [v5 addObjectsFromArray:*(*(*(a1 + 256) + 8) + 40)];
    }

    v9 = *(*(*(a1 + 264) + 8) + 40);
    if (v9)
    {
      v10 = v3[48];
      if (v10)
      {
        if ([v10 state] == 4)
        {
          goto LABEL_31;
        }

        v9 = *(*(*(a1 + 264) + 8) + 40);
      }

      [v5 addObject:v9];
    }

LABEL_31:
    if ([*(a1 + 48) count])
    {
      [v5 addObjectsFromArray:*(a1 + 48)];
    }

    if (*(a1 + 56))
    {
      [v5 addObject:?];
    }

    if (*(a1 + 64))
    {
      [v5 addObjectsFromArray:?];
    }

    if (*(a1 + 72))
    {
      [v5 addObject:?];
    }

    if (*(a1 + 80))
    {
      [v5 addObject:?];
    }

    if (*(*(*(a1 + 272) + 8) + 40) && !*(*(*(a1 + 232) + 8) + 40))
    {
      [v5 addObject:?];
    }

    if (*(a1 + 88))
    {
      [v5 addObject:?];
    }

    if (*(a1 + 96))
    {
      [v5 addObject:?];
    }

    if ([*(*(*(a1 + 280) + 8) + 40) count])
    {
      [v5 addObjectsFromArray:*(*(*(a1 + 280) + 8) + 40)];
    }

    if ([*(*(*(a1 + 288) + 8) + 40) count])
    {
      [v5 addObjectsFromArray:*(*(*(a1 + 288) + 8) + 40)];
    }

    if (*(*(*(a1 + 296) + 8) + 40))
    {
      [v5 addObject:?];
    }

    if (*(*(*(a1 + 304) + 8) + 40))
    {
      [v5 addObject:?];
    }

    if (*(*(*(a1 + 312) + 8) + 40))
    {
      [v5 addObject:?];
    }

    if (*(a1 + 104))
    {
      [v5 addObject:?];
    }

    if (*(a1 + 112))
    {
      [v5 addObject:?];
    }

    if ([*(a1 + 120) count])
    {
      [v5 addObjectsFromArray:*(a1 + 120)];
    }

    if ([*(a1 + 128) count])
    {
      [v5 addObjectsFromArray:*(a1 + 128)];
    }

    if ([*(a1 + 136) count])
    {
      [v5 addObjectsFromArray:*(a1 + 136)];
    }

    if ([*(*(*(a1 + 320) + 8) + 40) count])
    {
      [v5 addObjectsFromArray:*(*(*(a1 + 320) + 8) + 40)];
    }

    if (*(*(*(a1 + 328) + 8) + 40))
    {
      [v5 addObject:?];
    }

    if (*(*(*(a1 + 336) + 8) + 40))
    {
      [v5 addObject:?];
    }

    if ([*(a1 + 144) count])
    {
      [v5 addObjectsFromArray:*(a1 + 144)];
    }

    if (*(a1 + 152))
    {
      [v5 addObject:?];
    }

    if (*(*(*(a1 + 344) + 8) + 40))
    {
      [v5 addObject:?];
    }

    if ([*(*(*(a1 + 352) + 8) + 40) count])
    {
      [v5 unionOrderedSet:*(*(*(a1 + 352) + 8) + 40)];
    }

    if ([*(*(*(a1 + 360) + 8) + 40) count])
    {
      [v5 unionOrderedSet:*(*(*(a1 + 360) + 8) + 40)];
    }

    if ([*(*(*(a1 + 368) + 8) + 40) count])
    {
      [v5 unionOrderedSet:*(*(*(a1 + 368) + 8) + 40)];
    }

    if (*(a1 + 160))
    {
      [v5 addObject:?];
    }

    if (*(a1 + 168))
    {
      [v5 addObject:?];
    }

    if (*(*(*(a1 + 376) + 8) + 40))
    {
      [v5 addObject:?];
    }

    if (*(*(*(a1 + 384) + 8) + 40))
    {
      [v5 addObject:?];
    }

    if (!*(a1 + 176))
    {
      goto LABEL_96;
    }
  }

  [v5 addObject:?];
LABEL_96:
  if ([v3[76] count])
  {
    [v5 addObjectsFromArray:v3[76]];
  }

  if (*(a1 + 184))
  {
    [v5 addObjectsFromArray:?];
  }

  if (*(a1 + 192))
  {
    [v5 addObject:?];
  }

  v11 = v3[38];
  v12 = [v5 copy];
  v13 = v3[38];
  v3[38] = v12;

  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134217984;
    v19 = v3;
    _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Dashboard loading (%p): Fetched messages", &v18, 0xCu);
  }

  if (*(v3 + 788))
  {
    v15 = objc_loadWeakRetained(v3 + 4);
    if (v15 && (PKEqualObjects() & 1) == 0)
    {
      v16 = [v3 firstSectionIndexForSectionIdentifier:7];
      v17 = [MEMORY[0x1E696AC90] indexSetWithIndex:v16];
      [v15 reloadSections:v17];
    }
  }

  else
  {
    [v3 updateContentIsLoaded];
  }

  *(v3 + 761) = 0;
  if ([v3[96] count])
  {
    [v3 _reloadMessagesWithReason:@"execute pending reload"];
  }

LABEL_113:
}

- (void)reloadSecondaryMessages
{
  self->_secondaryMessagesLoaded = 1;
  v14 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  bankConnectMessage = [(PKDashboardPaymentPassDataSource *)self bankConnectMessage];

  if (bankConnectMessage)
  {
    bankConnectMessage2 = [(PKDashboardPaymentPassDataSource *)self bankConnectMessage];
    [v14 addObject:bankConnectMessage2];
  }

  v5 = self->_secondaryMessages;
  v6 = [v14 copy];
  secondaryMessages = self->_secondaryMessages;
  self->_secondaryMessages = v6;

  if (self->_allContentIsLoaded)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v9 = WeakRetained;
      v10 = PKEqualObjects();

      if ((v10 & 1) == 0)
      {
        v11 = [(PKDashboardPaymentPassDataSource *)self firstSectionIndexForSectionIdentifier:8];
        v12 = objc_loadWeakRetained(&self->_delegate);
        v13 = [MEMORY[0x1E696AC90] indexSetWithIndex:v11];
        [v12 reloadSections:v13];
      }
    }
  }

  else
  {
    [(PKDashboardPaymentPassDataSource *)self updateContentIsLoaded];
  }
}

- (id)_messageForDeviceAssessmentEducation
{
  if (self->_shouldDisplayDeviceAssessmentEducation)
  {
    v3 = objc_alloc_init(PKDashboardPassMessage);
    [(PKDashboardPassMessage *)v3 setIdentifier:@"deviceAssessmentEducation"];
    v4 = [PKDashboardPassMessageImageDescriptorSymbol alloc];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v7 = [(PKDashboardPassMessageImageDescriptorSymbol *)v4 initWithName:@"shield.lefthalf.filled" tintColor:whiteColor backgroundColor:blackColor];

    [(PKDashboardPassMessage *)v3 setImageDescriptor:v7];
    v8 = PKLocalizedPaymentString(&cfstr_DeviceAssessme.isa);
    [(PKDashboardPassMessage *)v3 setTitle:v8];

    v9 = PKLocalizedPaymentString(&cfstr_DeviceAssessme_0.isa);
    [(PKDashboardPassMessage *)v3 setMessage:v9];

    objc_initWeak(&location, self);
    v10 = PKLocalizedPaymentString(&cfstr_DeviceAssessme_1.isa);
    [(PKDashboardPassMessage *)v3 setButtonTitle:v10];

    [(PKDashboardPassMessage *)v3 setShowDisclosure:1];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __72__PKDashboardPaymentPassDataSource__messageForDeviceAssessmentEducation__block_invoke;
    v14[3] = &unk_1E8015548;
    objc_copyWeak(&v15, &location);
    [(PKDashboardPassMessage *)v3 setActionOnButtonPress:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72__PKDashboardPaymentPassDataSource__messageForDeviceAssessmentEducation__block_invoke_2;
    v12[3] = &unk_1E8010998;
    objc_copyWeak(&v13, &location);
    [(PKDashboardPassMessage *)v3 setActionOnDismiss:v12];
    [(PKDashboardPassMessage *)v3 setActionOnViewed:&__block_literal_global_692];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __72__PKDashboardPaymentPassDataSource__messageForDeviceAssessmentEducation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained openDeviceAssessmentEducationLearnMore];
}

void __72__PKDashboardPaymentPassDataSource__messageForDeviceAssessmentEducation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissOnDeviceAssessmentEducation];
}

- (void)openDeviceAssessmentEducationLearnMore
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  navigationController = [WeakRetained navigationController];

  if (navigationController)
  {
    v3 = [MEMORY[0x1E69B7D58] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.applepay"];
    [v3 setPresentingViewController:navigationController];
    [v3 present];
  }
}

- (id)_messageForPaymentApplicationStatus
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  objc_initWeak(location, self);
  if (self->_isInRestrictedMode)
  {
    v3 = PKLocalizedPaymentString(&cfstr_RestrictedMode.isa);
    v4 = PKLocalizedPaymentString(&cfstr_RestrictedMode_0.isa);
    v5 = 0;
    v133 = 0;
    v134 = 0;
    v6 = 0;
    v7 = 0;
LABEL_129:
    v63 = objc_alloc_init(PKDashboardPassMessage);
    [(PKDashboardPassMessage *)v63 setIdentifier:@"applicationState"];
    v113 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:self->_pass];
    [(PKDashboardPassMessage *)v63 setAnalyticsReporterSubject:v113];

    [(PKDashboardPassMessage *)v63 setTitle:v3];
    [(PKDashboardPassMessage *)v63 setMessage:v4];
    [(PKDashboardPassMessage *)v63 setButtonTitle:v5];
    [(PKDashboardPassMessage *)v63 setActionOnButtonPress:v7];
    [(PKDashboardPassMessage *)v63 setShowSpinner:v133 & 1];
    [(PKDashboardPassMessage *)v63 setShowDisclosure:HIDWORD(v133)];
    [(PKDashboardPassMessage *)v63 setIsDestructiveAction:v6];
    [(PKDashboardPassMessage *)v63 setImage:v134];
    goto LABEL_130;
  }

  if (![(PKPaymentPass *)self->_pass hasAssociatedPeerPaymentAccount])
  {
LABEL_7:
    v7 = 0;
    v133 = 0;
    v134 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v10 = 0;
    goto LABEL_8;
  }

  _peerPaymentDashboardCondition = [(PKDashboardPaymentPassDataSource *)self _peerPaymentDashboardCondition];
  v10 = 0;
  v7 = 0;
  LOBYTE(v133) = 0;
  if (!self->_peerPaymentAccount)
  {
    HIDWORD(v133) = 0;
    v134 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_8;
  }

  v11 = _peerPaymentDashboardCondition;
  HIDWORD(v133) = 0;
  v134 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if ((_peerPaymentDashboardCondition & 0x100) == 0)
  {
    goto LABEL_8;
  }

  v15 = v9;
  if ([(PKPaymentPass *)self->_pass activationState]== PKPaymentPassActivationStateSuspended)
  {
    goto LABEL_7;
  }

  v10 = 0;
  v7 = 0;
  if (v15 > 2)
  {
    if (v15 != 3)
    {
      LOBYTE(v133) = 0;
      HIDWORD(v133) = 0;
      v134 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      if (v15 != 4)
      {
        goto LABEL_8;
      }

      role = [(PKPeerPaymentAccount *)self->_peerPaymentAccount role];
      if (role == 1)
      {
        v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_4.isa);
        v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_5.isa);
        v12 = 0;
      }

      else
      {
        if (role)
        {
          v12 = 0;
          v13 = 0;
        }

        else
        {
          v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_14.isa);
          v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_15.isa);
        }

        v14 = 0;
      }

      v134 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"AppleCashIcon" extension:@"pdf"];
LABEL_170:
      if (!v12)
      {
        v7 = 0;
        v133 = 0;
        goto LABEL_175;
      }

      LOBYTE(v133) = self->_performingPeerPaymentResolution;
      if (v14)
      {
        goto LABEL_173;
      }

      goto LABEL_172;
    }

    role2 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount role];
    if (role2 == 1)
    {
      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_2.isa);
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_3.isa);
      v12 = 0;
    }

    else
    {
      if (role2)
      {
        v12 = 0;
        v13 = 0;
      }

      else
      {
        account = [(PKPeerPaymentAccountResolutionController *)self->_peerPaymentAccountResolutionController account];
        stateReason = [account stateReason];

        v62 = stateReason & 0xFFFFFFFFFFFFFFFELL;
        if ((stateReason & 0xFFFFFFFFFFFFFFFELL) == 4)
        {
          v63 = 0;
          goto LABEL_131;
        }

        v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_9.isa);
        account2 = [(PKPeerPaymentAccountResolutionController *)self->_peerPaymentAccountResolutionController account];
        state = [account2 state];

        if (state == 2)
        {
          if (v62 == 6)
          {
            v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_10.isa);
            v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_11.isa);
            goto LABEL_142;
          }

          v129 = PKDeviceSpecificLocalizedStringKeyForKey(@"PEER_PAYMENT_ACCOUNT_STATE_FOOTER_RESTRICTED_CONTACT_SUPPORT_BODY", 0);
          v13 = PKLocalizedPeerPaymentString(v129);
        }

        else
        {
          v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_13.isa);
        }
      }

      v14 = 0;
    }

LABEL_142:
    v134 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"MessageAlert" extension:@"pdf"];
    goto LABEL_170;
  }

  if (v15 == 1)
  {
    v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_14.isa);
    v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_3.isa);
    account3 = [(PKPeerPaymentAccountResolutionController *)self->_peerPaymentAccountResolutionController account];
    if ([account3 stage] == 1)
    {
      pendingPaymentCount = [account3 pendingPaymentCount];
      if (pendingPaymentCount < 2)
      {
        if (pendingPaymentCount != 1)
        {
          goto LABEL_168;
        }

        v116 = PKSharedCacheGetStringForKey();
        if ([v116 length])
        {
          v117 = MEMORY[0x1E69B8F28];
          _contactResolver = [(PKDashboardPaymentPassDataSource *)self _contactResolver];
          v119 = [v117 displayNameForAddress:v116 contactResolver:_contactResolver];

          if ([v119 length])
          {
            v120 = v119;
          }

          else
          {
            v120 = v116;
          }

          v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_5.isa, &stru_1F3BD5BF0.isa, v120);
        }

        else
        {
          v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_4.isa);
        }
      }

      else
      {
        v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_4.isa);
      }

      if (v13)
      {
LABEL_169:
        v134 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"AppleCashIcon" extension:@"pdf"];

        goto LABEL_170;
      }
    }

LABEL_168:
    v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_6.isa);
    goto LABEL_169;
  }

  LOBYTE(v133) = 0;
  HIDWORD(v133) = 0;
  v134 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (v15 != 2)
  {
    goto LABEL_8;
  }

  v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_7.isa);
  v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_8.isa);
  v134 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"MessageAlert" extension:@"pdf"];
  if (v12)
  {
    LOBYTE(v133) = self->_performingPeerPaymentResolution;
LABEL_172:
    v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_16.isa);
LABEL_173:
    v148[0] = MEMORY[0x1E69E9820];
    v148[1] = 3221225472;
    v148[2] = __71__PKDashboardPaymentPassDataSource__messageForPaymentApplicationStatus__block_invoke;
    v148[3] = &unk_1E801DD80;
    objc_copyWeak(v149, location);
    v149[1] = v11;
    v149[2] = v15;
    v7 = _Block_copy(v148);
    objc_destroyWeak(v149);
    HIDWORD(v133) = 1;
    goto LABEL_175;
  }

  v7 = 0;
  v133 = 0;
  v14 = 0;
LABEL_175:
  v10 = 1;
LABEL_8:
  if (PKNeedsLostModeExitAuth())
  {
    effectiveContactlessPaymentApplicationState = 7;
  }

  else
  {
    effectiveContactlessPaymentApplicationState = [(PKPaymentPass *)self->_pass effectiveContactlessPaymentApplicationState];
  }

  v132 = effectiveContactlessPaymentApplicationState;
  if (effectiveContactlessPaymentApplicationState == 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v10;
  }

  if (v17)
  {
    v5 = v12;
    v4 = v13;
    v3 = v14;
    goto LABEL_19;
  }

  v3 = PKPassLocalizedStringForStateWithFormat(&cfstr_PassDashboardT.isa, &self->_pass->super, 0);

  pass = self->_pass;
  localizedDescription = [(PKPaymentPass *)pass localizedDescription];
  v4 = PKPassLocalizedStringForStateWithFormat(&cfstr_PassDashboardD_22.isa, &pass->super, &stru_1F3BD5BF0.isa, localizedDescription);

  v5 = PKPassLocalizedStringForStateWithFormat(&cfstr_PassDashboardB.isa, &self->_pass->super, 0);

  if (![v3 length])
  {
LABEL_19:
    if (v10)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if ([v4 length])
  {
LABEL_20:
    v20 = 1;
    goto LABEL_93;
  }

LABEL_21:
  if (([(PKPaymentPass *)self->_pass supportsBarcodePayment]& 1) != 0)
  {
    v21 = MEMORY[0x1E69BC6F8];
    v22 = @"_ACCOUNT";
    goto LABEL_37;
  }

  cardType = [(PKPaymentPass *)self->_pass cardType];
  v24 = self->_pass;
  if (cardType == 3)
  {
    v25 = [(PKPaymentPass *)v24 accessType]- 1;
    v26 = MEMORY[0x1E69BC708];
    if (v25 < 6)
    {
      v27 = &off_1E801E8F8[v25];
      v28 = MEMORY[0x1E69BC708];
LABEL_35:
      v21 = v28;
      v22 = *v27;
      goto LABEL_37;
    }
  }

  else
  {
    cardType2 = [(PKPaymentPass *)v24 cardType];
    v26 = MEMORY[0x1E69BC708];
    if (cardType2 == 4)
    {
      identityType = [(PKPaymentPass *)self->_pass identityType];
      v26 = MEMORY[0x1E69BC718];
      if (identityType < 6)
      {
        v27 = &off_1E801E928[identityType];
        v28 = MEMORY[0x1E69BC718];
        goto LABEL_35;
      }
    }
  }

  v21 = v26;
  v22 = &stru_1F3BD7330;
LABEL_37:
  if (([(PKPaymentPass *)self->_pass isShellPass]& 1) != 0)
  {
    goto LABEL_38;
  }

  v20 = 0;
  if (v132 <= 5)
  {
    if (v132 > 2)
    {
      if ((v132 - 3) < 2)
      {
        paymentVerificationController = self->_paymentVerificationController;
        if (!paymentVerificationController)
        {
          mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
          v45 = [PKPaymentVerificationController alloc];
          v46 = self->_pass;
          frontmostPassView = [(PKPassGroupView *)self->_groupView frontmostPassView];
          v48 = [(PKPaymentVerificationController *)v45 initWithPass:v46 passView:frontmostPassView webService:mEMORY[0x1E69B8EF8] context:0 delegate:self verificationContext:2];
          v49 = self->_paymentVerificationController;
          self->_paymentVerificationController = v48;

          verificationRecord = [(PKPaymentVerificationController *)self->_paymentVerificationController verificationRecord];
          activeMethodGroup = [verificationRecord activeMethodGroup];
          LOBYTE(v46) = [activeMethodGroup needsServerRequest];

          if ((v46 & 1) == 0)
          {
            [(PKPaymentVerificationController *)self->_paymentVerificationController clearSelectedChannel];
          }

          paymentVerificationController = self->_paymentVerificationController;
        }

        verificationTitleString = [(PKPaymentVerificationController *)paymentVerificationController verificationTitleString];

        verificationBodyString = [(PKPaymentVerificationController *)self->_paymentVerificationController verificationBodyString];

        continueVerificationButtonTitle = [(PKPaymentVerificationController *)self->_paymentVerificationController continueVerificationButtonTitle];

        v55 = [(PKDashboardPaymentPassDataSource *)self _messageCachedRawImageForPass:self->_pass];

        v20 = 1;
        v134 = v55;
        v5 = continueVerificationButtonTitle;
        goto LABEL_67;
      }

      if (v132 != 5)
      {
        goto LABEL_93;
      }

      v64 = [@"PAYMENT_APP_ERROR_TITLE" stringByAppendingString:v22];
      v33 = v21();

      v65 = [@"PAYMENT_APP_VERIFICATION_TERMINATED" stringByAppendingString:v22];
      v39 = v21();

      v40 = [@"DELETE_PASS" stringByAppendingString:v22];
      v41 = v21();
      goto LABEL_77;
    }

    if (v132)
    {
      if (v132 != 1)
      {
        if (v132 != 2)
        {
          goto LABEL_93;
        }

        provisioningMetadata = [(PKPaymentPass *)self->_pass provisioningMetadata];
        v32 = provisioningMetadata;
        if (provisioningMetadata && [provisioningMetadata sourceDeviceType] == 1)
        {
          v33 = PKLocalizedPaymentString(&cfstr_TransferringTi.isa);

          localizedSourceDeviceDescription = [v32 localizedSourceDeviceDescription];
          v35 = localizedSourceDeviceDescription;
          if (!localizedSourceDeviceDescription)
          {
            v94 = PKLocalizedPaymentString(&cfstr_TransferringMe_0.isa);
            v35 = 0;
            goto LABEL_91;
          }

          v36 = PKLocalizedPaymentString(&cfstr_TransferringMe.isa, &stru_1F3BD5BF0.isa, localizedSourceDeviceDescription);
        }

        else
        {
          v33 = PKLocalizedPaymentString(&cfstr_ActivatingTitl.isa);

          v35 = [@"ACTIVATING_MESSAGE" stringByAppendingString:v22];
          v36 = v21();
        }

        v94 = v36;
LABEL_91:

        v20 = 1;
        v4 = v94;
        goto LABEL_92;
      }

      associatedPassUniqueID = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
      uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
      v79 = associatedPassUniqueID;
      v80 = uniqueID;
      v81 = v80;
      if (v79 == v80)
      {
      }

      else
      {
        if (!v79 || !v80)
        {

LABEL_152:
          v115 = 1;
          goto LABEL_153;
        }

        v82 = [v79 isEqualToString:v80];

        if (!v82)
        {
          goto LABEL_152;
        }
      }

      v115 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount role]!= 1;
LABEL_153:

      devicePrimaryContactlessPaymentApplication = [(PKPaymentPass *)self->_pass devicePrimaryContactlessPaymentApplication];
      if (devicePrimaryContactlessPaymentApplication)
      {

        goto LABEL_38;
      }

      deviceInAppPaymentApplications = [(PKPaymentPass *)self->_pass deviceInAppPaymentApplications];
      if (![deviceInAppPaymentApplications count])
      {

        goto LABEL_38;
      }

      v123 = ([(PKPaymentPass *)self->_pass supportsBarcodePayment]^ 1) & v115;

      if (v123 != 1)
      {
LABEL_38:
        v20 = 0;
        goto LABEL_93;
      }

      organizationName = [(PKPaymentPass *)self->_pass organizationName];

      if (organizationName)
      {
        organizationName2 = [(PKPaymentPass *)self->_pass organizationName];
        verificationTitleString = PKLocalizedPaymentString(&cfstr_DashboardMessa_12.isa, &stru_1F3BD5BF0.isa, organizationName2);
      }

      else
      {
        verificationTitleString = PKLocalizedPaymentString(&cfstr_DashboardMessa_13.isa);
      }

      localizedDescription2 = [(PKPaymentPass *)self->_pass localizedDescription];
      verificationBodyString = PKLocalizedPaymentString(&cfstr_PaymentAppNoCo.isa, &stru_1F3BD5BF0.isa, localizedDescription2);

      v20 = 1;
LABEL_67:
      v4 = verificationBodyString;
      v3 = verificationTitleString;
      goto LABEL_93;
    }

LABEL_51:
    v37 = [@"PAYMENT_APP_ERROR_TITLE" stringByAppendingString:v22];
    v33 = v21();

    v38 = [@"PAYMENT_APP_ERROR_BODY" stringByAppendingString:v22];
    v39 = v21();

    v40 = [@"DELETE_PASS" stringByAppendingString:v22];
    v41 = v21();
LABEL_77:
    v66 = v41;

    v20 = 1;
    v5 = v66;
    v4 = v39;
    goto LABEL_92;
  }

  if (v132 > 8)
  {
    if (v132 != 9)
    {
      if (v132 != 10)
      {
        if (v132 != 15)
        {
          goto LABEL_93;
        }

        verificationTitleString = PKLocalizedCredentialString(&cfstr_DashboardMessa_11.isa);

        verificationBodyString = [(PKDashboardPaymentPassDataSource *)self revokingAccessMessage];

        v56 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"MessageAlert" extension:@"pdf"];

        v20 = 1;
        v134 = v56;
        goto LABEL_67;
      }

      v87 = [@"PAYMENT_APP_ERROR_TITLE" stringByAppendingString:v22];
      v33 = v21();

      v88 = [@"PAYMENT_APP_REMOVED_BY_ISSUER" stringByAppendingString:v22];
      v89 = v21();

      organizationName3 = [(PKPaymentPass *)self->_pass organizationName];
      v90 = PKStringWithValidatedFormat();

      v91 = [@"DELETE_PASS" stringByAppendingString:{v22, organizationName3}];
      v92 = v21();

      v93 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"MessageAlert" extension:@"pdf"];

      v20 = 1;
      v134 = v93;
      v5 = v92;
      v4 = v90;
LABEL_92:
      v3 = v33;
      goto LABEL_93;
    }
  }

  else
  {
    if (v132 != 6)
    {
      if (v132 == 7)
      {
        v83 = PKLocalizedPaymentString(&cfstr_PaymentAppSusp.isa);

        v84 = PKLocalizedPaymentString(&cfstr_PaymentAppSusp_0.isa);

        v85 = PKLocalizedPaymentString(&cfstr_PaymentAppSusp_1.isa);

        v86 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"MessageAlert" extension:@"pdf"];

        v134 = v86;
        LOBYTE(v133) = self->_performingLostModeExit;
        HIDWORD(v133) = 1;
        v5 = v85;
        v4 = v84;
        v3 = v83;
        goto LABEL_20;
      }

      goto LABEL_51;
    }

    v67 = [@"PAYMENT_APP_ERROR_TITLE" stringByAppendingString:v22];
    v68 = v21();

    v69 = [@"PAYMENT_APP_SUSPENDED_BY_ISSUER" stringByAppendingString:v22];
    v70 = v21();

    organizationName4 = [(PKPaymentPass *)self->_pass organizationName];
    v71 = PKStringWithValidatedFormat();

    v130 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"MessageAlert" extension:@"pdf", organizationName4];

    v20 = 1;
    v134 = v130;
    v4 = v71;
    v3 = v68;
  }

  localizedSuspendedReason = [(PKPaymentPass *)self->_pass localizedSuspendedReason];
  if (localizedSuspendedReason)
  {
    v74 = [@"PAYMENT_APP_ERROR_TITLE" stringByAppendingString:v22];
    v75 = v21();

    v76 = localizedSuspendedReason;
    v20 = 1;
    v4 = v76;
    v3 = v75;
  }

LABEL_93:
  v95 = [(PKPaymentPass *)self->_pass appletStateMessageOverrideOfType:1];
  v96 = v95;
  if (v95 && v132 != 7)
  {
    title = [v95 title];

    body = [v96 body];

    action = [v96 action];
    v100 = action;
    if (!action)
    {
      goto LABEL_103;
    }

    type = [action type];
    switch(type)
    {
      case 3:
        title2 = [v100 title];
        v109 = title2;
        if (title2)
        {
          v110 = title2;
        }

        else
        {
          v110 = PKLocalizedString(&cfstr_OpenButton.isa);
        }

        v111 = v110;

        v145[0] = MEMORY[0x1E69E9820];
        v145[1] = 3221225472;
        v145[2] = __71__PKDashboardPaymentPassDataSource__messageForPaymentApplicationStatus__block_invoke_2;
        v145[3] = &unk_1E8014F68;
        objc_copyWeak(&v147, location);
        v146 = v100;
        v112 = _Block_copy(v145);

        objc_destroyWeak(&v147);
        break;
      case 10:
        title3 = [v100 title];
        v106 = title3;
        if (title3)
        {
          v107 = title3;
        }

        else
        {
          v107 = PKLocalizedString(&cfstr_OpenButton.isa);
        }

        v111 = v107;

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __71__PKDashboardPaymentPassDataSource__messageForPaymentApplicationStatus__block_invoke_3;
        aBlock[3] = &unk_1E80188F0;
        v144 = v100;
        v112 = _Block_copy(aBlock);

        break;
      case 11:
        title4 = [v100 title];
        v103 = title4;
        if (title4)
        {
          v104 = title4;
        }

        else
        {
          v104 = PKLocalizedString(&cfstr_DeletePass.isa);
        }

        v111 = v104;

        v141[0] = MEMORY[0x1E69E9820];
        v141[1] = 3221225472;
        v141[2] = __71__PKDashboardPaymentPassDataSource__messageForPaymentApplicationStatus__block_invoke_4;
        v141[3] = &unk_1E8015548;
        objc_copyWeak(&v142, location);
        v112 = _Block_copy(v141);

        objc_destroyWeak(&v142);
        v6 = 1;
        goto LABEL_116;
      default:
LABEL_103:
        v6 = 0;
LABEL_117:

        v3 = title;
        v4 = body;
        goto LABEL_118;
    }

    v6 = 0;
LABEL_116:
    v7 = v112;
    v5 = v111;
    goto LABEL_117;
  }

  if (v20)
  {
    v6 = 0;
LABEL_118:
    if (![v5 length] || v7)
    {
      goto LABEL_128;
    }

    if (v132 <= 0xA)
    {
      if (((1 << v132) & 0x521) != 0)
      {
        v135[0] = MEMORY[0x1E69E9820];
        v135[1] = 3221225472;
        v135[2] = __71__PKDashboardPaymentPassDataSource__messageForPaymentApplicationStatus__block_invoke_7;
        v135[3] = &unk_1E8015548;
        objc_copyWeak(&v136, location);
        v7 = _Block_copy(v135);
        objc_destroyWeak(&v136);
        v6 = 1;
LABEL_128:

        goto LABEL_129;
      }

      if (((1 << v132) & 0x18) != 0)
      {
        v139[0] = MEMORY[0x1E69E9820];
        v139[1] = 3221225472;
        v139[2] = __71__PKDashboardPaymentPassDataSource__messageForPaymentApplicationStatus__block_invoke_5;
        v139[3] = &unk_1E8015548;
        objc_copyWeak(&v140, location);
        v7 = _Block_copy(v139);
        objc_destroyWeak(&v140);
        HIDWORD(v133) = 1;
        goto LABEL_128;
      }

      if (v132 == 7)
      {
        v137[0] = MEMORY[0x1E69E9820];
        v137[1] = 3221225472;
        v137[2] = __71__PKDashboardPaymentPassDataSource__messageForPaymentApplicationStatus__block_invoke_6;
        v137[3] = &unk_1E8015548;
        objc_copyWeak(&v138, location);
        v7 = _Block_copy(v137);
        objc_destroyWeak(&v138);
        goto LABEL_128;
      }
    }

    v7 = 0;
    v5 = 0;
    goto LABEL_128;
  }

  v63 = 0;
LABEL_130:

LABEL_131:
  objc_destroyWeak(location);

  return v63;
}

void __71__PKDashboardPaymentPassDataSource__messageForPaymentApplicationStatus__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _peerPaymentResolutionTappedWithResolution:*(a1 + 48)];
    WeakRetained = v3;
  }
}

void __71__PKDashboardPaymentPassDataSource__messageForPaymentApplicationStatus__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v8 = WeakRetained;
    v4 = objc_loadWeakRetained(WeakRetained + 100);
    v5 = [v4 navigationController];
    v6 = [v5 view];
    v7 = [v6 window];
    PKPaymentPassActionPerformOpenExternalURL(v3, v7);

    WeakRetained = v8;
  }
}

void __71__PKDashboardPaymentPassDataSource__messageForPaymentApplicationStatus__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deleteButtonPressedFromSourceView:v3];
}

void __71__PKDashboardPaymentPassDataSource__messageForPaymentApplicationStatus__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _verificationButtonTapped];
}

void __71__PKDashboardPaymentPassDataSource__messageForPaymentApplicationStatus__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _lostModeButtonTapped];
}

void __71__PKDashboardPaymentPassDataSource__messageForPaymentApplicationStatus__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deleteButtonPressedFromSourceView:v3];
}

- (id)_messageForExpressEducation
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if ([(PKPaymentPass *)self->_pass isTransitPass]&& PKExpressEducationHasDismissedMessage() == 2 && [(PKPaymentPass *)self->_pass activationState]== PKPaymentPassActivationStateActivated)
  {
    v5 = self->_paymentService;
    uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
    v7 = [(PKPaymentService *)v5 isExpressModeEnabledForPassUniqueIdentifier:uniqueID];

    if (v7)
    {
      v3 = objc_alloc_init(PKDashboardPassMessage);
      [(PKDashboardPassMessage *)v3 setIdentifier:@"expressEducationSetup"];
      v8 = PKLocalizedPaymentString(&cfstr_DashboardMessa_14.isa);
      [(PKDashboardPassMessage *)v3 setTitle:v8];

      v9 = PKLocalizedPaymentString(&cfstr_DashboardMessa_15.isa);
      [(PKDashboardPassMessage *)v3 setMessage:v9];

      currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
      userInterfaceStyle = [currentTraitCollection userInterfaceStyle];

      if (PKSystemApertureIsAvailable())
      {
        v12 = 3;
      }

      else
      {
        IsAvailable = PKPearlIsAvailable();
        v12 = 1;
        if (IsAvailable)
        {
          v12 = 2;
        }
      }

      v14 = @"Light";
      if (userInterfaceStyle == 2)
      {
        v14 = @"Dark";
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Express_Tip_Gen%lu_%@", v12, v14];
      v16 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:v15 extension:@"png"];
      [(PKDashboardPassMessage *)v3 setImage:v16];

      [(PKDashboardPassMessage *)v3 setImageOnTrailingEdge:1];
      [(PKDashboardPassMessage *)v3 setImageContentMode:6];
      [(PKDashboardPassMessage *)v3 setImageRequestExtraLarge:1];
      HasSeenMessage = PKExpressEducationHasSeenMessage();
      if (HasSeenMessage)
      {
        v18 = @"repeat";
      }

      else
      {
        HasSeenMessage = PKExpressEducationSetHasSeenMessage();
        v18 = @"first";
      }

      if (!self->_messagesLoaded)
      {
        __63__PKDashboardPaymentPassDataSource__messageForExpressEducation__block_invoke(HasSeenMessage, self->_pass, v18, 0);
      }

      objc_initWeak(&location, self);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __63__PKDashboardPaymentPassDataSource__messageForExpressEducation__block_invoke_2;
      v19[3] = &unk_1E8011108;
      objc_copyWeak(&v22, &location);
      v20 = v18;
      v21 = &__block_literal_global_879;
      [(PKDashboardPassMessage *)v3 setActionOnDismiss:v19];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __63__PKDashboardPaymentPassDataSource__messageForExpressEducation__block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v22[6] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (a4)
  {
    PKExpressEducationSetHasSeenMessage();
    v8 = @"dismissed";
  }

  else
  {
    v8 = @"viewDidAppear";
  }

  v9 = *MEMORY[0x1E69BB6C8];
  [MEMORY[0x1E69B8540] beginSubjectReporting:*MEMORY[0x1E69BB6C8]];
  v10 = MEMORY[0x1E69B8540];
  v11 = *MEMORY[0x1E69BA680];
  v21[0] = *MEMORY[0x1E69BABE8];
  v21[1] = v11;
  v22[0] = *MEMORY[0x1E69BA828];
  v22[1] = v8;
  v12 = *MEMORY[0x1E69BB388];
  v21[2] = *MEMORY[0x1E69BA830];
  v21[3] = v12;
  v22[2] = v7;
  v22[3] = @"yes";
  v13 = *MEMORY[0x1E69BAC90];
  v22[4] = *MEMORY[0x1E69BB390];
  v14 = *MEMORY[0x1E69BAA28];
  v21[4] = v13;
  v21[5] = v14;
  v15 = [v6 secureElementPass];
  v16 = *MEMORY[0x1E69BB3A8];
  v17 = [v15 organizationName];
  if ([v17 length])
  {
    v18 = [v15 cardType];
    if (v18 <= 4 && ((1 << v18) & 0x16) != 0)
    {
      v19 = v17;

      v16 = v19;
    }
  }

  v22[5] = v16;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:6];
  [v10 subject:v9 sendEvent:v20];

  [MEMORY[0x1E69B8540] endSubjectReporting:v9];
}

void __63__PKDashboardPaymentPassDataSource__messageForExpressEducation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    PKExpressEducationSetHasDismissedMessage();
    (*(*(a1 + 40) + 16))();
    [v3 reloadMessagesWithReason:@"Express education button tap"];
    WeakRetained = v3;
  }
}

- (id)_messageForAutoReload
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = PKDismissedKeyForPass();
  BoolForKey = PKSharedCacheGetBoolForKey();

  if ((BoolForKey & 1) != 0 || ![PKPaymentAutoReloadSetupController shouldOfferAutoReloadForPass:self->_pass])
  {
    v5 = 0;
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = objc_alloc_init(PKDashboardPassMessage);
    [(PKDashboardPassMessage *)v5 setIdentifier:@"autoReloadSetup"];
    v6 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:self->_pass];
    [(PKDashboardPassMessage *)v5 setAnalyticsReporterSubject:v6];

    v7 = PKLocalizedPaymentString(&cfstr_PassDetailsAut.isa);
    [(PKDashboardPassMessage *)v5 setTitle:v7];

    v8 = PKLocalizedPaymentString(&cfstr_PassDetailsAut_9.isa);
    [(PKDashboardPassMessage *)v5 setMessage:v8];

    v9 = PKLocalizedPaymentString(&cfstr_PassDetailsSet_2.isa);
    [(PKDashboardPassMessage *)v5 setButtonTitle:v9];

    v10 = [PKPaymentPassDetailAutoReloadSectionController autoTopUpActionForPass:self->_pass];
    autoTopUpItem = [v10 autoTopUpItem];
    currency = [autoTopUpItem currency];

    if ([currency isEqualToString:@"KRW"])
    {
      v13 = [PKDashboardPassMessageImageDescriptorImageAsset alloc];
      whiteColor = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"WonIconArrowCirclePath" extension:@"pdf"];
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      v16 = [(PKDashboardPassMessageImageDescriptorImageAsset *)v13 initWithImage:whiteColor tintColor:0 backgroundColor:blackColor];
    }

    else
    {
      v17 = [PKDashboardPassMessageImageDescriptorSymbol alloc];
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      blackColor2 = [MEMORY[0x1E69DC888] blackColor];
      v16 = [(PKDashboardPassMessageImageDescriptorSymbol *)v17 initWithName:@"dollarsign.arrow.circlepath" tintColor:whiteColor backgroundColor:blackColor2];
    }

    [(PKDashboardPassMessage *)v5 setImageDescriptor:v16];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __57__PKDashboardPaymentPassDataSource__messageForAutoReload__block_invoke;
    v22[3] = &unk_1E8010998;
    objc_copyWeak(&v23, &location);
    [(PKDashboardPassMessage *)v5 setActionOnDismiss:v22];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __57__PKDashboardPaymentPassDataSource__messageForAutoReload__block_invoke_2;
    v20[3] = &unk_1E8015548;
    objc_copyWeak(&v21, &location);
    [(PKDashboardPassMessage *)v5 setActionOnButtonPress:v20];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);

    objc_destroyWeak(&location);
  }

  return v5;
}

void __57__PKDashboardPaymentPassDataSource__messageForAutoReload__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = PKDismissedKeyForPass();
    PKSharedCacheSetBoolForKey();

    [v3 reloadMessagesWithReason:@"Auto reload button tap"];
    WeakRetained = v3;
  }
}

void __57__PKDashboardPaymentPassDataSource__messageForAutoReload__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [[PKPaymentAutoReloadSetupController alloc] initWithPass:*(v4 + 119) paymentDataProvider:*(v4 + 123) viewStyle:0 delegate:v4];
    v3 = *(v4 + 11);
    *(v4 + 11) = v2;

    [*(v4 + 11) presentAutoTopUpFlow];
    WeakRetained = v4;
  }
}

- (void)autoReloadSetupController:(id)controller requestsPresentViewController:(id)viewController
{
  viewControllerCopy = viewController;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  navigationController = [WeakRetained navigationController];
  [navigationController presentViewController:viewControllerCopy animated:1 completion:0];
}

- (void)autoReloadSetupController:(id)controller requestsDismissViewController:(id)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  navigationController = [WeakRetained navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (id)_messageForSessionActive
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_sessionActive)
  {
    v3 = objc_alloc_init(PKDashboardPassMessage);
    [(PKDashboardPassMessage *)v3 setIdentifier:@"sessionActive"];
    v4 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:self->_pass];
    [(PKDashboardPassMessage *)v3 setAnalyticsReporterSubject:v4];

    v5 = PKLocalizedPaymentString(&cfstr_PaymentDeviceU.isa);
    [(PKDashboardPassMessage *)v3 setTitle:v5];

    localizedDescription = [(PKPaymentPass *)self->_pass localizedDescription];
    v7 = PKLocalizedPaymentString(&cfstr_PaymentCardUna.isa, &stru_1F3BD5BF0.isa, localizedDescription);
    [(PKDashboardPassMessage *)v3 setMessage:v7];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_messageFromPaymentServiceSuppressingPassStateChanges:(BOOL)changes completion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  objc_initWeak(&location, self);
  paymentDataProvider = self->_paymentDataProvider;
  uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __101__PKDashboardPaymentPassDataSource__messageFromPaymentServiceSuppressingPassStateChanges_completion___block_invoke;
  v10[3] = &unk_1E801DDF0;
  objc_copyWeak(&v12, &location);
  changesCopy = changes;
  v10[4] = self;
  v9 = completionCopy;
  v11 = v9;
  [(PKPaymentDefaultDataProvider *)paymentDataProvider messagesForPaymentPassWithUniqueIdentifier:uniqueID completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __101__PKDashboardPaymentPassDataSource__messageFromPaymentServiceSuppressingPassStateChanges_completion___block_invoke(uint64_t a1, void *a2)
{
  v57[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_49;
  }

  v44 = WeakRetained[119];
  v6 = [v5[21] associatedPassUniqueID];
  v7 = [v5[119] uniqueID];
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if (!v8 || !v9)
    {

LABEL_10:
      v12 = 0;
      goto LABEL_11;
    }

    v11 = [v8 isEqualToString:v9];

    if (!v11)
    {
      goto LABEL_10;
    }
  }

  v12 = [v5[21] role] == 1;
LABEL_11:

  v45 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"messageDate" ascending:0];
  v57[0] = v45;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];
  v14 = [v3 sortedArrayUsingDescriptors:v13];

  v15 = [v14 firstObject];
  if (v15)
  {
    v16 = [v5 _shouldPaymentMessageAppear:v15];
  }

  else
  {
    v16 = 0;
  }

  if (*(a1 + 56) == 1 && [v15 messageType] == 1)
  {
    v12 = 1;
  }

  v17 = v14;
  v18 = v17;
  if (v16)
  {
    v19 = [v17 pk_arrayByRemovingObject:v15];
    v20 = v18;
  }

  else
  {
    v20 = v15;
    v19 = v17;
    v15 = 0;
  }

  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __101__PKDashboardPaymentPassDataSource__messageFromPaymentServiceSuppressingPassStateChanges_completion___block_invoke_2;
  v56[3] = &unk_1E801DDC8;
  v56[4] = v5;
  [v19 enumerateObjectsUsingBlock:v56];
  if (v15 == 0 || v12)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v41 = [v44 organizationName];
    v21 = [v5 _passFeature];
    v22 = objc_alloc_init(PKDashboardPassMessage);
    if (v41)
    {
      PKLocalizedPaymentString(&cfstr_DashboardMessa_12.isa, &stru_1F3BD5BF0.isa, v41);
    }

    else
    {
      PKLocalizedPaymentString(&cfstr_DashboardMessa_13.isa);
    }
    v43 = ;
    v42 = [v15 content];
    if (v21 == 4)
    {
      v23 = objc_alloc(MEMORY[0x1E696AEC0]);
      v24 = [v5[48] supportsInStorePayment];
      v25 = @"_NO_IN_STORE_PAYMENT";
      if (v24)
      {
        v25 = &stru_1F3BD7330;
      }

      v26 = [v23 initWithFormat:@"ACCOUNT_PASS_READY_BODY%@", v25];
      v27 = PKLocalizedAppleBalanceString(&cfstr_AccountPassRea_0.isa);

      v28 = PKLocalizedAppleBalanceString(v26);

      v40 = [v5 _messageImageWithName:@"AppleBalanceDashboardIcon" extension:@"pdf"];

      v42 = v28;
      v43 = v27;
      [(PKDashboardPassMessage *)v22 setTitle:v27];
    }

    else
    {
      if (v21 == 2)
      {
        v40 = [v5 _messageImageWithName:@"AppleCardIcon" extension:@"pdf"];
      }

      else
      {
        if (v21 == 1)
        {
          [v5 _messageImageWithName:@"AppleCashIcon" extension:@"pdf"];
        }

        else
        {
          [*(a1 + 32) _messageCachedRawImageForPass:v44];
        }
        v40 = ;
      }

      [(PKDashboardPassMessage *)v22 setTitle:v43];
    }

    [(PKDashboardPassMessage *)v22 setMessage:v42];
    [(PKDashboardPassMessage *)v22 setImage:v40];
    v29 = [(PKDashboardPassMessage *)v22 identifier];

    if (v29)
    {
      v30 = [(PKDashboardPassMessage *)v22 identifier];
      [(PKDashboardPassMessage *)v22 setIdentifier:v30];
    }

    else
    {
      [(PKDashboardPassMessage *)v22 setIdentifier:@"messageService"];
    }

    v31 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:v5[119]];
    [(PKDashboardPassMessage *)v22 setAnalyticsReporterSubject:v31];

    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __101__PKDashboardPaymentPassDataSource__messageFromPaymentServiceSuppressingPassStateChanges_completion___block_invoke_3;
    v53[3] = &unk_1E80110E0;
    objc_copyWeak(&v55, (a1 + 48));
    v32 = v15;
    v54 = v32;
    [(PKDashboardPassMessage *)v22 setActionOnDismiss:v53];
    if ([v32 allowDeepLinkToApp])
    {
      v33 = v5[123];
      v34 = [v44 uniqueID];
      v35 = [v33 messagesAppLaunchTokenForPassWithUniqueIdentifier:v34];

      if (v35)
      {
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __101__PKDashboardPaymentPassDataSource__messageFromPaymentServiceSuppressingPassStateChanges_completion___block_invoke_4;
        v49[3] = &unk_1E8015570;
        objc_copyWeak(&v52, (a1 + 48));
        v50 = v32;
        v51 = v35;
        [(PKDashboardPassMessage *)v22 setActionOnMessagePress:v49];

        objc_destroyWeak(&v52);
      }
    }

    v36 = [v32 actionTitle];
    if ([v36 length])
    {
      v37 = [v32 actionURL];
      v38 = v37 == 0;

      if (!v38)
      {
        v39 = [v32 actionTitle];
        [(PKDashboardPassMessage *)v22 setButtonTitle:v39];

        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __101__PKDashboardPaymentPassDataSource__messageFromPaymentServiceSuppressingPassStateChanges_completion___block_invoke_5;
        v46[3] = &unk_1E8014F68;
        objc_copyWeak(&v48, (a1 + 48));
        v47 = v32;
        [(PKDashboardPassMessage *)v22 setActionOnButtonPress:v46];

        objc_destroyWeak(&v48);
      }
    }

    else
    {
    }

    (*(*(a1 + 40) + 16))();

    objc_destroyWeak(&v55);
  }

LABEL_49:
}

void __101__PKDashboardPaymentPassDataSource__messageFromPaymentServiceSuppressingPassStateChanges_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 984);
  v3 = [a2 identifier];
  [v2 archiveMessageWithIdentifier:v3];
}

void __101__PKDashboardPaymentPassDataSource__messageFromPaymentServiceSuppressingPassStateChanges_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[123];
    v5 = WeakRetained;
    v4 = [*(a1 + 32) identifier];
    [v3 archiveMessageWithIdentifier:v4];

    [v5 reloadMessagesAfterMessageInteraction];
    WeakRetained = v5;
  }
}

void __101__PKDashboardPaymentPassDataSource__messageFromPaymentServiceSuppressingPassStateChanges_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [PKPaymentNotificationAppURLHelper appURLForMessageNotification:*(a1 + 32) pass:WeakRetained[119] appLaunchToken:*(a1 + 40)];
    if (v3)
    {
      PKOpenURL();
    }

    WeakRetained = v4;
  }
}

void __101__PKDashboardPaymentPassDataSource__messageFromPaymentServiceSuppressingPassStateChanges_completion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [*(a1 + 32) actionURL];
    PKOpenURL();

    WeakRetained = v4;
  }
}

- (BOOL)_shouldPaymentMessageAppear:(id)appear
{
  appearCopy = appear;
  os_unfair_lock_lock(&self->_lockTransactions);
  firstObject = [(NSArray *)self->_previousTransactions firstObject];
  os_unfair_lock_unlock(&self->_lockTransactions);
  LOBYTE(self) = [appearCopy shouldMessageArchiveWithTransaction:firstObject];

  return self ^ 1;
}

- (void)_messagesForAccountStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_account)
  {
    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x3032000000;
    v35[3] = __Block_byref_object_copy__41;
    v35[4] = __Block_byref_object_dispose__41;
    v36 = 0;
    paymentDataProvider = self->_paymentDataProvider;
    accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke;
    v32[3] = &unk_1E8016A70;
    v34 = v35;
    v9 = v6;
    v33 = v9;
    [(PKPaymentDefaultDataProvider *)paymentDataProvider transactionsRequiringReviewForAccountWithIdentifier:accountIdentifier completion:v32];

    creditDetails = [(PKAccount *)self->_account creditDetails];
    accountSummary = [creditDetails accountSummary];
    pastDueAmount = [accountSummary pastDueAmount];

    zero = [MEMORY[0x1E696AB90] zero];
    v14 = [zero compare:pastDueAmount];

    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x3032000000;
    v30[3] = __Block_byref_object_copy__41;
    v30[4] = __Block_byref_object_dispose__41;
    v31 = 0;
    v15 = v14 == -1;
    if (v14 == -1)
    {
      dispatch_group_enter(v9);
      accountService = self->_accountService;
      accountIdentifier2 = [(PKAccount *)self->_account accountIdentifier];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_960;
      v27[3] = &unk_1E801DE18;
      v29 = v30;
      v28 = v9;
      [(PKAccountService *)accountService eventsForAccountIdentifier:accountIdentifier2 types:&unk_1F3CC85A0 startDate:0 endDate:0 orderedByDate:1 limit:1 completion:v27];
    }

    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_2;
    block[3] = &unk_1E801DE88;
    objc_copyWeak(&v24, &location);
    v25 = v15;
    v22 = v35;
    v23 = v30;
    v20 = pastDueAmount;
    v21 = v5;
    v18 = pastDueAmount;
    dispatch_group_notify(v9, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
    _Block_object_dispose(v30, 8);

    _Block_object_dispose(v35, 8);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_960(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    goto LABEL_124;
  }

  v142 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  [WeakRetained[48] feature];
  if ((WeakRetained[93] & 1) == 0 && *(WeakRetained + 745) != 1 || [WeakRetained[48] stateReason] == 2)
  {
    v3 = 0;
    goto LABEL_26;
  }

  if (WeakRetained[93])
  {
    if ((*(WeakRetained + 745) & 1) == 0)
    {
      if ([WeakRetained[48] state] == 2)
      {
        v4 = &v171;
        v5 = PKLocalizedFeatureString();
        v6 = PKLocalizedFeatureString();
        v7 = PKLocalizedFeatureString();
        v8 = v170;
        v170[0] = MEMORY[0x1E69E9820];
        v170[1] = 3221225472;
        v9 = 1;
        v10 = __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_3;
        goto LABEL_19;
      }

      if ([WeakRetained[48] isClosedAndChargedOff])
      {
        v4 = &v169;
        v5 = PKLocalizedFeatureString();
        v6 = PKLocalizedFeatureString();
        v7 = PKLocalizedFeatureString();
        v9 = 0;
        v8 = v168;
        v168[0] = MEMORY[0x1E69E9820];
        v168[1] = 3221225472;
        v10 = __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_4;
        goto LABEL_19;
      }

LABEL_16:
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v11 = 0;
LABEL_22:
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, &v12->super, OS_LOG_TYPE_DEFAULT, "User is eligible or enrolled in a payment plan, but account status is neither Restricted nor Closed+ChargedOff. Not showing payment plans dashboard message.", buf, 2u);
      }

      v3 = 0;
      goto LABEL_25;
    }
  }

  else if ((*(WeakRetained + 745) & 1) == 0)
  {
    goto LABEL_16;
  }

  v4 = &v167;
  if ([WeakRetained[48] state] == 2 || objc_msgSend(WeakRetained[48], "isClosedAndChargedOff"))
  {
    v5 = PKLocalizedFeatureString();
    v6 = PKLocalizedFeatureString();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = PKLocalizedFeatureString();
  v9 = 0;
  v8 = v166;
  v166[0] = MEMORY[0x1E69E9820];
  v166[1] = 3221225472;
  v10 = __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_8;
LABEL_19:
  v8[2] = v10;
  v8[3] = &unk_1E8015548;
  objc_copyWeak(v4, (v1 + 64));
  v11 = _Block_copy(v8);
  objc_destroyWeak(v4);
  if (!v5 || !v6)
  {
    goto LABEL_22;
  }

  v12 = objc_alloc_init(PKDashboardPassMessage);
  [(PKDashboardPassMessage *)v12 setIdentifier:@"creditRecoveryPaymentPlans"];
  [(PKDashboardPassMessage *)v12 setTitle:v5];
  [(PKDashboardPassMessage *)v12 setMessage:v6];
  v13 = [WeakRetained _messageImageWithName:@"MessageAlert" extension:@"pdf"];
  [(PKDashboardPassMessage *)v12 setImage:v13];

  [(PKDashboardPassMessage *)v12 setShowDisclosure:v9];
  [(PKDashboardPassMessage *)v12 setButtonTitle:v7];
  [(PKDashboardPassMessage *)v12 setActionOnButtonPress:v11];
  [v142 addObject:v12];
  v3 = 1;
LABEL_25:

LABEL_26:
  v14 = [WeakRetained[48] state];
  v15 = [*(*(*(v1 + 48) + 8) + 40) count];
  if (v15)
  {
    v16 = v14 == 3;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = v15;
    if ([WeakRetained[48] state] == 1)
    {
      v18 = PKLocalizedString(&cfstr_AccountService_236.isa, &cfstr_Ld.isa, v17);
    }

    else
    {
      if (v17 == 1)
      {
        PKLocalizedFeatureString();
      }

      else
      {
        v117 = v17;
        PKLocalizedFeatureString();
      }
      v18 = ;
    }

    v19 = v18;
    v20 = objc_alloc_init(PKDashboardPassMessage);
    [(PKDashboardPassMessage *)v20 setIdentifier:@"transactionsToReview"];
    v21 = PKLocalizedFeatureString();
    [(PKDashboardPassMessage *)v20 setTitle:v21];

    [(PKDashboardPassMessage *)v20 setMessage:v19];
    [(PKDashboardPassMessage *)v20 setShowDisclosure:1];
    v22 = [WeakRetained _messageImageWithName:@"MessageAlert" extension:@"pdf"];
    [(PKDashboardPassMessage *)v20 setImage:v22];

    v23 = PKLocalizedFeatureString();
    [(PKDashboardPassMessage *)v20 setButtonTitle:v23];

    v163[0] = MEMORY[0x1E69E9820];
    v163[1] = 3221225472;
    v163[2] = __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_1020;
    v163[3] = &unk_1E801DE40;
    objc_copyWeak(&v164, (v1 + 64));
    v163[4] = *(v1 + 48);
    [(PKDashboardPassMessage *)v20 setActionOnButtonPress:v163];
    v24 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:WeakRetained[119]];
    [(PKDashboardPassMessage *)v20 setAnalyticsReporterSubject:v24];

    [v142 addObject:v20];
    objc_destroyWeak(&v164);
  }

  if (*(v1 + 72) == 1 && v14 != 3)
  {
    if (*(*(*(v1 + 56) + 8) + 40))
    {
      v25 = [MEMORY[0x1E695DEE8] currentCalendar];
      v26 = [*(*(*(v1 + 56) + 8) + 40) date];
      v27 = [v25 components:14 fromDate:v26];

      v28 = [MEMORY[0x1E695DF00] date];
      v29 = [*(*(*(v1 + 56) + 8) + 40) expirationDate];
      if ([v25 date:v28 matchesComponents:v27] && v29)
      {
        [v29 compare:v28];
      }
    }

    v30 = objc_alloc_init(PKDashboardPassMessage);
    v31 = *(v1 + 32);
    v32 = [WeakRetained[48] creditDetails];
    v33 = [v32 currencyCode];
    v34 = PKCurrencyAmountCreate(v31, v33);

    v35 = PKLocalizedFeatureString();
    [(PKDashboardPassMessage *)v30 setButtonTitle:v35];

    v36 = [v34 minimalFormattedStringValue];
    v37 = PKLocalizedFeatureString();
    [(PKDashboardPassMessage *)v30 setMessage:v37, v36];

    [(PKDashboardPassMessage *)v30 setIdentifier:@"accountPastDue"];
    v38 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:WeakRetained[119]];
    [(PKDashboardPassMessage *)v30 setAnalyticsReporterSubject:v38];

    v39 = PKLocalizedFeatureString();
    [(PKDashboardPassMessage *)v30 setTitle:v39];

    v40 = [WeakRetained _messageImageWithName:@"MessageAlert" extension:@"pdf"];
    [(PKDashboardPassMessage *)v30 setImage:v40];

    v161[0] = MEMORY[0x1E69E9820];
    v161[1] = 3221225472;
    v161[2] = __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_2_1037;
    v161[3] = &unk_1E8015548;
    objc_copyWeak(&v162, (v1 + 64));
    [(PKDashboardPassMessage *)v30 setActionOnButtonPress:v161];
    [v142 addObject:v30];
    objc_destroyWeak(&v162);
  }

  if ((v3 & 1) == 0)
  {
    v41 = [WeakRetained[48] state];
    if (v41 != 4)
    {
      if (v41 == 3)
      {
        v42 = PKLocalizedFeatureString();
        if (([WeakRetained[48] stateReason] - 5) <= 2)
        {
          v44 = PKLocalizedFeatureString();
          if (v44)
          {
            goto LABEL_56;
          }
        }
      }

      else
      {
        if (v41 != 2)
        {
          v46 = 0;
          v47 = 0;
          v141 = 0;
          v45 = 0;
          v42 = 0;
          goto LABEL_61;
        }

        v42 = PKLocalizedFeatureString();
        v43 = [WeakRetained[48] stateReason];
        if (v43 - 1) <= 7 && ((0x87u >> (v43 - 1)))
        {
          v44 = PKLocalizedFeatureString();
          if (v44)
          {
LABEL_56:
            v45 = v44;
            v46 = 0;
            v141 = 0;
            v47 = 1;
LABEL_61:
            v51 = @"accountStatus";
LABEL_72:
            v53 = [WeakRetained[101] currentAccountUser];
            v54 = v53;
            if (!v42 && v53)
            {
              if ([v53 accessLevel] != 2)
              {
                v42 = 0;
                goto LABEL_100;
              }

              v138 = v47;
              v55 = [v54 preferences];
              v56 = v55;
              if (v55 && ([v55 spendingEnabled] & 1) == 0)
              {
                v137 = v46;
                v57 = [WeakRetained[101] accountUsers];
                v58 = [v57 objectsPassingTest:&__block_literal_global_1084];
                v59 = [v58 allObjects];

                v42 = PKLocalizedFeatureString();
                v60 = [v59 count];
                v136 = v59;
                if (v60 < 2)
                {
                  if (v60 == 1)
                  {
                    v131 = [v59 firstObject];
                    v133 = WeakRetained[104];
                    v69 = [v131 altDSID];
                    v134 = [v133 familyMemberForAltDSID:v69];

                    v127 = MEMORY[0x1E69B8740];
                    v70 = [v131 nameComponents];
                    v128 = [v127 contactForFamilyMember:v134 nameComponents:v70 imageData:0];

                    v117 = [v128 givenName];
                    v68 = PKLocalizedFeatureString();

                    v45 = v131;
                  }

                  else
                  {
                    v68 = PKLocalizedFeatureString();
                  }
                }

                else
                {
                  v61 = [v59 objectAtIndexedSubscript:0];
                  v129 = WeakRetained[104];
                  v132 = v61;
                  v62 = [v61 altDSID];
                  v130 = [v129 familyMemberForAltDSID:v62];

                  v126 = [v59 objectAtIndexedSubscript:1];
                  v63 = WeakRetained[104];
                  v64 = [v126 altDSID];
                  v125 = [v63 familyMemberForAltDSID:v64];

                  v123 = MEMORY[0x1E69B8740];
                  v65 = [v132 nameComponents];
                  v124 = [v123 contactForFamilyMember:v130 nameComponents:v65 imageData:0];

                  v66 = MEMORY[0x1E69B8740];
                  v67 = [v126 nameComponents];
                  v122 = [v66 contactForFamilyMember:v125 nameComponents:v67 imageData:0];

                  v120 = [v124 givenName];
                  [v122 givenName];
                  v119 = v117 = v120;
                  v121 = PKLocalizedFeatureString();

                  v68 = v121;
                  v45 = v132;
                }

                v46 = v137;

                v45 = v68;
              }

              else
              {
                v42 = 0;
              }

              v47 = v138;
            }

            if (v42)
            {
              v139 = v47;
              v135 = v54;
              v71 = v46;
              v72 = objc_alloc_init(PKDashboardPassMessage);
              [(PKDashboardPassMessage *)v72 setIdentifier:v51];
              [(PKDashboardPassMessage *)v72 setReportToAnalytics:HIDWORD(v141)];
              [(PKDashboardPassMessage *)v72 setTitle:v42];
              [(PKDashboardPassMessage *)v72 setMessage:v45];
              v73 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:WeakRetained[119]];
              [(PKDashboardPassMessage *)v72 setAnalyticsReporterSubject:v73];

              v74 = [WeakRetained _messageImageWithName:@"MessageAlert" extension:@"pdf"];
              [(PKDashboardPassMessage *)v72 setImage:v74];

              if (v141)
              {
                v75 = PKLocalizedFeatureString();
                [(PKDashboardPassMessage *)v72 setButtonTitle:v75];

                v159[0] = MEMORY[0x1E69E9820];
                v159[1] = 3221225472;
                v159[2] = __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_4_1101;
                v159[3] = &unk_1E8015548;
                v76 = &v160;
                objc_copyWeak(&v160, (v1 + 64));
                [(PKDashboardPassMessage *)v72 setActionOnButtonPress:v159];
              }

              else if (HIDWORD(v141))
              {
                if ([WeakRetained[119] supportsBarcodePayment])
                {
                  PKLocalizedAquamanString(&cfstr_DeletePassAcco.isa);
                }

                else
                {
                  PKLocalizedPaymentString(&cfstr_DeletePass.isa);
                }
                v78 = ;
                [(PKDashboardPassMessage *)v72 setButtonTitle:v78, v117, v119];

                v157[0] = MEMORY[0x1E69E9820];
                v157[1] = 3221225472;
                v157[2] = __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_5_1105;
                v157[3] = &unk_1E8015548;
                v76 = &v158;
                objc_copyWeak(&v158, (v1 + 64));
                [(PKDashboardPassMessage *)v72 setActionOnButtonPress:v157];
                [(PKDashboardPassMessage *)v72 setIsDestructiveAction:1];
              }

              else if (v139)
              {
                v77 = PKLocalizedFeatureString();
                [(PKDashboardPassMessage *)v72 setButtonTitle:v77];

                [(PKDashboardPassMessage *)v72 setShowDisclosure:1];
                v155[0] = MEMORY[0x1E69E9820];
                v155[1] = 3221225472;
                v155[2] = __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_6_1106;
                v155[3] = &unk_1E8015548;
                v76 = &v156;
                objc_copyWeak(&v156, (v1 + 64));
                [(PKDashboardPassMessage *)v72 setActionOnButtonPress:v155];
              }

              else
              {
                if (!v71)
                {
LABEL_99:
                  [v142 addObject:{v72, v117}];

                  v54 = v135;
                  goto LABEL_100;
                }

                v79 = PKLocalizedFeatureString();
                [(PKDashboardPassMessage *)v72 setButtonTitle:v79];

                v153[0] = MEMORY[0x1E69E9820];
                v153[1] = 3221225472;
                v153[2] = __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_7_1110;
                v153[3] = &unk_1E8015548;
                v76 = &v154;
                objc_copyWeak(&v154, (v1 + 64));
                [(PKDashboardPassMessage *)v72 setActionOnButtonPress:v153];
              }

              objc_destroyWeak(v76);
              goto LABEL_99;
            }

LABEL_100:

            goto LABEL_101;
          }
        }
      }

      v44 = PKLocalizedFeatureString();
      goto LABEL_56;
    }

    v48 = [WeakRetained[48] creditDetails];
    v49 = [v48 accountSummary];

    v50 = [v49 adjustedBalance];
    v46 = [WeakRetained[48] isCoOwner];
    if (v46)
    {
      v42 = PKLocalizedFeatureString();
      v45 = PKLocalizedFeatureString();
      v141 = 0;
LABEL_59:
      v51 = @"accountStatusClosedNoBalance";
LABEL_71:

      v47 = 0;
      goto LABEL_72;
    }

    if (v50 && [WeakRetained[48] supportsSchedulePayment])
    {
      v42 = PKLocalizedFeatureString();
      v45 = PKLocalizedFeatureString();
      v141 = 1;
    }

    else
    {
      v52 = [WeakRetained[48] accessLevel];
      if (v52 == 2)
      {
        [WeakRetained[103] count];
        v42 = PKLocalizedFeatureString();
        v45 = PKLocalizedFeatureString();
        v141 = 0x100000000;
        v51 = @"accountStatusClosedParticipant";
        goto LABEL_71;
      }

      if (v52 == 1)
      {
        v42 = PKLocalizedFeatureString();
        v45 = PKLocalizedFeatureString();
        v141 = 0x100000000;
        goto LABEL_59;
      }

      v141 = 0;
      v45 = 0;
      v42 = 0;
    }

    v51 = @"accountStatus";
    goto LABEL_71;
  }

LABEL_101:
  v80 = [WeakRetained[48] creditDetails];
  v81 = [v80 virtualCards];

  if ([v81 count])
  {
    v82 = [v81 anyObject];
  }

  else
  {
    v82 = 0;
  }

  if ([WeakRetained[48] state] == 1 && objc_msgSend(v81, "count") == 1 && objc_msgSend(v82, "state") == 3)
  {
    v83 = objc_alloc_init(PKDashboardPassMessage);
    [(PKDashboardPassMessage *)v83 setIdentifier:@"virtualCardSuspended"];
    v84 = PKLocalizedFeatureString();
    [(PKDashboardPassMessage *)v83 setTitle:v84];

    v85 = PKLocalizedFeatureString();
    [(PKDashboardPassMessage *)v83 setMessage:v85];

    v86 = [WeakRetained _messageImageWithName:@"MessageAlert" extension:@"pdf"];
    [(PKDashboardPassMessage *)v83 setImage:v86];

    v87 = PKLocalizedFeatureString();
    [(PKDashboardPassMessage *)v83 setButtonTitle:v87];

    v151[0] = MEMORY[0x1E69E9820];
    v151[1] = 3221225472;
    v151[2] = __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_8_1117;
    v151[3] = &unk_1E8015548;
    objc_copyWeak(&v152, (v1 + 64));
    [(PKDashboardPassMessage *)v83 setActionOnButtonPress:v151];
    [v142 addObject:v83];
    objc_destroyWeak(&v152);
  }

  v88 = [WeakRetained[48] accountIdentifier];
  ShouldShowVPANReissuedMessage = PKCardShouldShowVPANReissuedMessage();

  if (!ShouldShowVPANReissuedMessage)
  {
    goto LABEL_121;
  }

  v90 = PKLocalizedFeatureString();
  v91 = PKCardAltDSIDForVPANReissuedMessage();
  if ([v91 length])
  {
    v92 = PKCurrentUserAltDSID();
    v93 = v91;
    v94 = v92;
    v95 = v94;
    v140 = v1;
    if (v93 == v94)
    {
      v97 = v82;
      v98 = v94;
    }

    else
    {
      if (v93 && v94)
      {
        v96 = [v93 isEqualToString:v94];

        if (v96)
        {
          goto LABEL_119;
        }
      }

      else
      {
      }

      v97 = v82;
      v98 = [WeakRetained[101] accountUserWithAltDSID:v93];
      v93 = [WeakRetained[104] familyMemberForAltDSID:v93];
      v99 = MEMORY[0x1E69B8740];
      v100 = [v98 nameComponents];
      v95 = [v99 contactForFamilyMember:v93 nameComponents:v100 imageData:0];

      v118 = [v95 givenName];
      v101 = PKLocalizedFeatureString();

      v90 = v101;
    }

    v82 = v97;
LABEL_119:
    v1 = v140;
  }

  v102 = objc_alloc_init(PKDashboardPassMessage);
  [(PKDashboardPassMessage *)v102 setIdentifier:@"virtualCardAutoReissued"];
  v103 = PKLocalizedFeatureString();
  [(PKDashboardPassMessage *)v102 setTitle:v103];

  [(PKDashboardPassMessage *)v102 setMessage:v90];
  v104 = [WeakRetained _messageImageWithName:@"MessageAlert" extension:@"pdf"];
  [(PKDashboardPassMessage *)v102 setImage:v104];

  v105 = PKLocalizedFeatureString();
  [(PKDashboardPassMessage *)v102 setButtonTitle:v105];

  v149[0] = MEMORY[0x1E69E9820];
  v149[1] = 3221225472;
  v149[2] = __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_9;
  v149[3] = &unk_1E8015548;
  objc_copyWeak(&v150, (v1 + 64));
  [(PKDashboardPassMessage *)v102 setActionOnButtonPress:v149];
  v147[0] = MEMORY[0x1E69E9820];
  v147[1] = 3221225472;
  v147[2] = __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_10;
  v147[3] = &unk_1E8010998;
  objc_copyWeak(&v148, (v1 + 64));
  [(PKDashboardPassMessage *)v102 setActionOnDismiss:v147];
  [v142 addObject:v102];
  objc_destroyWeak(&v148);
  objc_destroyWeak(&v150);

LABEL_121:
  v106 = [WeakRetained[48] accountIdentifier];
  ShouldShowVPANUpdatedMessage = PKAppleCardShouldShowVPANUpdatedMessage();

  if (ShouldShowVPANUpdatedMessage)
  {
    v108 = objc_alloc_init(PKDashboardPassMessage);
    [(PKDashboardPassMessage *)v108 setIdentifier:@"virtualCardUpdated"];
    v109 = PKLocalizedFeatureString();
    [(PKDashboardPassMessage *)v108 setTitle:v109];

    v110 = PKLocalizedFeatureString();
    [(PKDashboardPassMessage *)v108 setMessage:v110];

    v111 = [PKDashboardPassMessageImageDescriptorSymbol alloc];
    v112 = [MEMORY[0x1E69DC888] labelColor];
    v113 = [(PKDashboardPassMessageImageDescriptorSymbol *)v111 initWithName:@"creditcard.and.123" tintColor:v112 backgroundColor:0];

    [(PKDashboardPassMessage *)v108 setImageDescriptor:v113];
    [(PKDashboardPassMessage *)v108 setShowDisclosure:1];
    v114 = PKLocalizedFeatureString();
    [(PKDashboardPassMessage *)v108 setButtonTitle:v114];

    v145[0] = MEMORY[0x1E69E9820];
    v145[1] = 3221225472;
    v145[2] = __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_11;
    v145[3] = &unk_1E8010998;
    objc_copyWeak(&v146, (v1 + 64));
    [(PKDashboardPassMessage *)v108 setActionOnDismiss:v145];
    v143[0] = MEMORY[0x1E69E9820];
    v143[1] = 3221225472;
    v143[2] = __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_12;
    v143[3] = &unk_1E8015548;
    objc_copyWeak(&v144, (v1 + 64));
    [(PKDashboardPassMessage *)v108 setActionOnButtonPress:v143];
    [v142 addObject:v108];
    objc_destroyWeak(&v144);
    objc_destroyWeak(&v146);
  }

  v115 = *(v1 + 40);
  v116 = [v142 copy];
  (*(v115 + 16))(v115, v116);

LABEL_124:
}

void __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [[PKBusinessChatAccountStateContext alloc] initWithAccount:v3[48] paymentPass:v3[119] eligibleForRecoveryPaymentPlan:1];
    [v3 _presentAccountResolution:3 forBusinessChatContext:v2 completion:0];

    WeakRetained = v3;
  }
}

void __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_5;
    v5[3] = &unk_1E8011180;
    objc_copyWeak(&v6, (a1 + 32));
    [WeakRetained _presentAccountResolution:4 forBusinessChatContext:0 completion:v5];
    objc_destroyWeak(&v6);
  }
}

void __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_5(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && a2)
  {
    v6 = WeakRetained[122];
    v7 = [WeakRetained[48] accountIdentifier];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_6;
    v8[3] = &unk_1E8017038;
    objc_copyWeak(&v9, (a1 + 32));
    [v6 updateCreditRecoveryPaymentPlansForAccountIdentifier:v7 completion:v8];

    objc_destroyWeak(&v9);
  }
}

void __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_6(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_7;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadCreditRecoveryPaymentPlans];
    WeakRetained = v2;
  }
}

void __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:@"https://support.apple.com/HT213514"];
    PKOpenURL();

    WeakRetained = v3;
  }
}

void __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_1020(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [*(*(*(a1 + 32) + 8) + 40) anyObject];
    LOBYTE(v7) = 1;
    v4 = [[PKPaymentTransactionDetailViewController alloc] initWithTransaction:v3 transactionSourceCollection:*(v8 + 106) familyCollection:*(v8 + 104) account:*(v8 + 48) accountUserCollection:*(v8 + 101) bankConnectInstitution:0 physicalCards:*(v8 + 103) contactResolver:0 peerPaymentWebService:*(v8 + 118) paymentServiceDataProvider:*(v8 + 123) detailViewStyle:0 allowTransactionLinks:v7];
    v5 = objc_loadWeakRetained(v8 + 100);
    v6 = [v5 navigationController];
    [v6 pushViewController:v4 animated:1];

    WeakRetained = v8;
  }
}

void __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_2_1037(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = WeakRetained[66];
    if (!v2)
    {
      v3 = [[PKAccountServiceAccountResolutionController alloc] initWithAccount:*(v5 + 48) accountUserCollection:*(v5 + 101) transactionSourceCollection:*(v5 + 106)];
      v4 = *(v5 + 66);
      *(v5 + 66) = v3;

      [*(v5 + 66) setDelegate:?];
      v2 = *(v5 + 66);
    }

    [v2 presentFlowForAccountResolution:1 configuration:0 completion:0];
    WeakRetained = v5;
  }
}

uint64_t __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_3_1081(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 accessLevel] == 1)
  {
    [v2 accountState];
    v3 = PKAccountStateIsTerminal() ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_4_1101(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = WeakRetained[66];
    if (!v2)
    {
      v3 = [[PKAccountServiceAccountResolutionController alloc] initWithAccount:*(v5 + 48) accountUserCollection:*(v5 + 101) transactionSourceCollection:*(v5 + 106)];
      v4 = *(v5 + 66);
      *(v5 + 66) = v3;

      [*(v5 + 66) setDelegate:?];
      v2 = *(v5 + 66);
    }

    [v2 presentFlowForAccountResolution:1 configuration:0 completion:0];
    WeakRetained = v5;
  }
}

void __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_5_1105(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _deleteButtonPressedFromSourceView:v5];
  }
}

void __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_6_1106(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ([*(WeakRetained + 48) feature] == 4)
    {
      [v4 _presentPassContactSupportWithOption:15 sourceItem:v6];
    }

    else
    {
      v5 = [[PKBusinessChatAccountStateContext alloc] initWithAccount:v4[48] paymentPass:v4[119] eligibleForRecoveryPaymentPlan:0];
      [v4 _presentAccountResolution:2 forBusinessChatContext:v5 completion:0];
    }
  }
}

void __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_7_1110(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _presentAboutClosedAccounts];
    WeakRetained = v2;
  }
}

void __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_8_1117(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [[PKBusinessChatAccountStateContext alloc] initWithAccount:v3[48] paymentPass:v3[119] eligibleForRecoveryPaymentPlan:0];
    [v3 _presentAccountResolution:2 forBusinessChatContext:v2 completion:0];

    WeakRetained = v3;
  }
}

void __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _presentCardNumbers];
    v2 = [v3[48] accountIdentifier];
    PKCardSetShouldShowVPANReissuedMessage();

    PKCardSetAltDSIDForVPANReissuedMessage();
    [v3 reloadMessagesAfterMessageInteraction];
    WeakRetained = v3;
  }
}

void __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained[48] accountIdentifier];
    PKCardSetShouldShowVPANReissuedMessage();

    PKCardSetAltDSIDForVPANReissuedMessage();
    [v3 reloadMessagesAfterMessageInteraction];
    WeakRetained = v3;
  }
}

void __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained[48] accountIdentifier];
    PKAppleCardSetShouldShowVPANUpdatedMessage();

    [v3 reloadMessagesAfterMessageInteraction];
    WeakRetained = v3;
  }
}

void __76__PKDashboardPaymentPassDataSource__messagesForAccountStatusWithCompletion___block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _presentCardNumbers];
    v2 = [v3[48] accountIdentifier];
    PKAppleCardSetShouldShowVPANUpdatedMessage();

    [v3 reloadMessagesAfterMessageInteraction];
    WeakRetained = v3;
  }
}

- (id)_cardSharingEducationMessages
{
  if (!self->_accountUsersLoaded || !self->_accountUserInvitationsLoaded || !self->_familyCollectionLoaded || !self->_account)
  {
    v28 = 0;
    goto LABEL_11;
  }

  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  activeAccountUsers = [(PKAccountUserCollection *)self->_accountUserCollection activeAccountUsers];
  v5 = [activeAccountUsers objectsPassingTest:&__block_literal_global_1143];
  allObjects = [v5 allObjects];

  if (![allObjects count])
  {
    goto LABEL_20;
  }

  if ([(PKAccount *)self->_account accessLevel]!= 2 || (PKSharedCacheGetBoolForKey() & 1) != 0)
  {
    goto LABEL_18;
  }

  v7 = objc_alloc_init(PKDashboardPassMessage);
  [(PKDashboardPassMessage *)v7 setIdentifier:@"welcomeToCardParticipantPrompt"];
  [(PKDashboardPassMessage *)v7 setReportToAnalytics:1];
  v8 = [(PKDashboardPaymentPassDataSource *)self _messageCachedRawImageForPass:self->_pass];
  [(PKDashboardPassMessage *)v7 setImage:v8];

  v9 = PKLocalizedFeatureString();
  [(PKDashboardPassMessage *)v7 setTitle:v9];

  if ([allObjects count] < 2)
  {
    if (![allObjects count])
    {
      v26 = 0;
      goto LABEL_17;
    }

    v30 = MEMORY[0x1E69B8740];
    familyCollection = self->_familyCollection;
    v32 = [allObjects objectAtIndexedSubscript:0];
    altDSID = [v32 altDSID];
    v34 = [(PKFamilyMemberCollection *)familyCollection familyMemberForAltDSID:altDSID];
    v35 = [allObjects objectAtIndexedSubscript:0];
    nameComponents = [v35 nameComponents];
    v27 = [v30 contactForFamilyMember:v34 nameComponents:nameComponents imageData:0];

    givenName = [v27 givenName];
    v38 = givenName;
    v26 = PKLocalizedFeatureString();
  }

  else
  {
    v10 = MEMORY[0x1E69B8740];
    v11 = self->_familyCollection;
    v12 = [allObjects objectAtIndexedSubscript:0];
    altDSID2 = [v12 altDSID];
    v14 = [(PKFamilyMemberCollection *)v11 familyMemberForAltDSID:altDSID2];
    v15 = [allObjects objectAtIndexedSubscript:0];
    nameComponents2 = [v15 nameComponents];
    v40 = [v10 contactForFamilyMember:v14 nameComponents:nameComponents2 imageData:0];

    v17 = MEMORY[0x1E69B8740];
    v18 = self->_familyCollection;
    v19 = [allObjects objectAtIndexedSubscript:1];
    altDSID3 = [v19 altDSID];
    v21 = [(PKFamilyMemberCollection *)v18 familyMemberForAltDSID:altDSID3];
    v22 = [allObjects objectAtIndexedSubscript:1];
    nameComponents3 = [v22 nameComponents];
    givenName = [v17 contactForFamilyMember:v21 nameComponents:nameComponents3 imageData:0];

    givenName2 = [v40 givenName];
    [givenName givenName];
    v39 = v38 = givenName2;
    v26 = PKLocalizedFeatureString();

    v27 = v40;
  }

LABEL_17:
  [(PKDashboardPassMessage *)v7 setMessage:v26, v38, v39];
  v37 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:self->_pass];
  [(PKDashboardPassMessage *)v7 setAnalyticsReporterSubject:v37];

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __65__PKDashboardPaymentPassDataSource__cardSharingEducationMessages__block_invoke_2;
  v41[3] = &unk_1E8010998;
  objc_copyWeak(&v42, &location);
  [(PKDashboardPassMessage *)v7 setActionOnDismiss:v41];
  [v3 addObject:v7];
  objc_destroyWeak(&v42);

LABEL_18:
  if (![v3 count])
  {
LABEL_20:
    v28 = 0;
    goto LABEL_21;
  }

  v28 = [v3 copy];
LABEL_21:

  objc_destroyWeak(&location);
LABEL_11:

  return v28;
}

void __65__PKDashboardPaymentPassDataSource__cardSharingEducationMessages__block_invoke_2(uint64_t a1)
{
  PKSharedCacheSetBoolForKey();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained reloadMessagesAfterMessageInteraction];
    WeakRetained = v3;
  }
}

- (void)_presentAccountResolution:(unint64_t)resolution forBusinessChatContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!self->_accountResolutionController)
  {
    v10 = [[PKAccountServiceAccountResolutionController alloc] initWithAccount:self->_account accountUserCollection:self->_accountUserCollection transactionSourceCollection:self->_transactionSourceCollection];
    accountResolutionController = self->_accountResolutionController;
    self->_accountResolutionController = v10;

    [(PKAccountServiceAccountResolutionController *)self->_accountResolutionController setDelegate:self];
  }

  v12 = objc_alloc_init(MEMORY[0x1E69B8408]);
  [v12 setBusinessChatContext:contextCopy];

  [(PKAccountServiceAccountResolutionController *)self->_accountResolutionController presentFlowForAccountResolution:resolution configuration:v12 completion:completionCopy];
}

- (void)_messageForPeerPaymentIdentityVerificationForRewardsWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (completionCopy)
  {
    BoolForKey = PKSharedCacheGetBoolForKey();
    if (!self->_account || (BoolForKey & 1) != 0)
    {
      completionCopy[2](completionCopy, 0);
    }

    else
    {
      objc_initWeak(&location, self);
      v6 = MEMORY[0x1E69B8770];
      account = self->_account;
      currentAccountUser = [(PKAccountUserCollection *)self->_accountUserCollection currentAccountUser];
      peerPaymentAccount = self->_peerPaymentAccount;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __103__PKDashboardPaymentPassDataSource__messageForPeerPaymentIdentityVerificationForRewardsWithCompletion___block_invoke;
      v10[3] = &unk_1E801DED8;
      objc_copyWeak(&v12, &location);
      v11 = completionCopy;
      [v6 resolutionToReceiveCashbackForAccount:account accountUser:currentAccountUser withPeerPaymentAccount:peerPaymentAccount completion:v10];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

void __103__PKDashboardPaymentPassDataSource__messageForPeerPaymentIdentityVerificationForRewardsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (a2 == 2)
    {
      v5 = objc_alloc_init(PKDashboardPassMessage);
      v6 = PKLocalizedFeatureString();
      [(PKDashboardPassMessage *)v5 setTitle:v6];

      v7 = PKLocalizedFeatureString();
      [(PKDashboardPassMessage *)v5 setMessage:v7];

      [(PKDashboardPassMessage *)v5 setIdentifier:@"fixRewards"];
      v8 = [WeakRetained _messageImageWithName:@"AppleCashIcon" extension:@"pdf"];
      [(PKDashboardPassMessage *)v5 setImage:v8];

      [(PKDashboardPassMessage *)v5 setShowDisclosure:1];
      v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_7.isa);
      [(PKDashboardPassMessage *)v5 setButtonTitle:v9];

      v10 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:WeakRetained[119]];
      [(PKDashboardPassMessage *)v5 setAnalyticsReporterSubject:v10];

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __103__PKDashboardPaymentPassDataSource__messageForPeerPaymentIdentityVerificationForRewardsWithCompletion___block_invoke_2;
      v13[3] = &unk_1E801DEB0;
      objc_copyWeak(v14, (a1 + 40));
      v14[1] = 2;
      [(PKDashboardPassMessage *)v5 setActionOnButtonPress:v13];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __103__PKDashboardPaymentPassDataSource__messageForPeerPaymentIdentityVerificationForRewardsWithCompletion___block_invoke_3;
      v11[3] = &unk_1E8010998;
      objc_copyWeak(&v12, (a1 + 40));
      [(PKDashboardPassMessage *)v5 setActionOnDismiss:v11];
      (*(*(a1 + 32) + 16))();
      objc_destroyWeak(&v12);
      objc_destroyWeak(v14);
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

void __103__PKDashboardPaymentPassDataSource__messageForPeerPaymentIdentityVerificationForRewardsWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _peerPaymentResolutionTappedWithResolution:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void __103__PKDashboardPaymentPassDataSource__messageForPeerPaymentIdentityVerificationForRewardsWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    PKSharedCacheSetBoolForKey();
    [v2 reloadMessagesAfterMessageInteraction];
    WeakRetained = v2;
  }
}

- (id)_messageForPeerPaymentLockedAccountByAssociatedAccount
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  peerPaymentAccount = self->_peerPaymentAccount;
  if (peerPaymentAccount && [(PKPeerPaymentAccount *)peerPaymentAccount supportsFamilySharing]&& [(PKPeerPaymentAccount *)self->_peerPaymentAccount role]&& [(PKPeerPaymentAccount *)self->_peerPaymentAccount isParticipantAccountLockedByOwner])
  {
    v4 = objc_alloc_init(PKDashboardPassMessage);
    v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_6.isa);
    [(PKDashboardPassMessage *)v4 setTitle:v5];

    v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_7.isa);
    [(PKDashboardPassMessage *)v4 setMessage:v6];

    [(PKDashboardPassMessage *)v4 setIdentifier:@"peerPaymentLockedByAssociatedAccount"];
    v7 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"MessageAlert" extension:@"pdf"];
    [(PKDashboardPassMessage *)v4 setImage:v7];

    [(PKDashboardPassMessage *)v4 setShowDisclosure:1];
    v8 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:self->_pass];
    [(PKDashboardPassMessage *)v4 setAnalyticsReporterSubject:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_messageForPeerPaymentAssociatedAccountStateChangedForSecurityReasons
{
  v72 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  peerPaymentAccount = self->_peerPaymentAccount;
  if (!peerPaymentAccount || ![(PKPeerPaymentAccount *)peerPaymentAccount supportsFamilySharing]|| [(PKPeerPaymentAccount *)self->_peerPaymentAccount role]== 1)
  {
    v4 = 0;
    goto LABEL_5;
  }

  v49 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v44 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  familyMembersByAltDSID = [(PKFamilyMemberCollection *)self->_familyCollection familyMembersByAltDSID];
  allValues = [familyMembersByAltDSID allValues];

  v4 = [allValues countByEnumeratingWithState:&v65 objects:v71 count:16];
  if (!v4)
  {
    goto LABEL_42;
  }

  v8 = 0;
  v9 = *v66;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v66 != v9)
      {
        objc_enumerationMutation(allValues);
      }

      v11 = *(*(&v65 + 1) + 8 * i);
      if ([v11 isMe] && (objc_msgSend(v11, "isOrganizer") & 1) != 0)
      {
        v8 = 1;
      }

      else
      {
        v12 = self->_peerPaymentAccount;
        altDSID = [v11 altDSID];
        v14 = [(PKPeerPaymentAccount *)v12 peerPaymentAccountWithAltDSID:altDSID];

        if (v14)
        {
          isPariticipantAccountSecurityDowngraded = [v14 isPariticipantAccountSecurityDowngraded];
          v16 = v49;
          if ((isPariticipantAccountSecurityDowngraded & 1) != 0 || (v17 = [v14 isPariticipantAccountEmbargoRecovery], v16 = v44, v17))
          {
            [v16 addObject:v11];
          }
        }
      }
    }

    v4 = [allValues countByEnumeratingWithState:&v65 objects:v71 count:16];
  }

  while (v4);

  if (v8)
  {
    allValues = objc_alloc_init(MEMORY[0x1E695DF70]);
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v49;
    v47 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
    if (v47)
    {
      v45 = *v62;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v62 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v61 + 1) + 8 * j);
          firstName = [v19 firstName];
          altDSID2 = [v19 altDSID];
          v22 = objc_alloc_init(PKDashboardPassMessage);
          v23 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_8.isa, &stru_1F3BD5BF0.isa, firstName);
          [(PKDashboardPassMessage *)v22 setTitle:v23];

          v24 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_9.isa, &stru_1F3BD5BF0.isa, firstName);
          [(PKDashboardPassMessage *)v22 setMessage:v24];

          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"peerPaymentAssociatedAccountLockedHSA2Upgrade", altDSID2];
          [(PKDashboardPassMessage *)v22 setIdentifier:v25];
          v26 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"MessageAlert" extension:@"pdf"];
          [(PKDashboardPassMessage *)v22 setImage:v26];

          [(PKDashboardPassMessage *)v22 setShowDisclosure:1];
          v27 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_10.isa);
          [(PKDashboardPassMessage *)v22 setButtonTitle:v27];

          v28 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:self->_pass];
          [(PKDashboardPassMessage *)v22 setAnalyticsReporterSubject:v28];

          objc_initWeak(&location, self);
          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 3221225472;
          v57[2] = __105__PKDashboardPaymentPassDataSource__messageForPeerPaymentAssociatedAccountStateChangedForSecurityReasons__block_invoke;
          v57[3] = &unk_1E8015570;
          objc_copyWeak(&v59, &location);
          v57[4] = v19;
          v29 = altDSID2;
          v58 = v29;
          [(PKDashboardPassMessage *)v22 setActionOnButtonPress:v57];
          [allValues addObject:v22];

          objc_destroyWeak(&v59);
          objc_destroyWeak(&location);
        }

        v47 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
      }

      while (v47);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obja = v44;
    v48 = [obja countByEnumeratingWithState:&v53 objects:v69 count:16];
    if (v48)
    {
      v46 = *v54;
      do
      {
        for (k = 0; k != v48; ++k)
        {
          if (*v54 != v46)
          {
            objc_enumerationMutation(obja);
          }

          v31 = *(*(&v53 + 1) + 8 * k);
          firstName2 = [v31 firstName];
          altDSID3 = [v31 altDSID];
          v34 = objc_alloc_init(PKDashboardPassMessage);
          v35 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_11.isa);
          [(PKDashboardPassMessage *)v34 setTitle:v35];

          v36 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_12.isa, &stru_1F3BD6370.isa, firstName2, firstName2);
          [(PKDashboardPassMessage *)v34 setMessage:v36];

          v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"peerPaymentAssociatedAccountLockedEmbargoRecovery", altDSID3];
          [(PKDashboardPassMessage *)v34 setIdentifier:v37];
          v38 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"MessageAlert" extension:@"pdf"];
          [(PKDashboardPassMessage *)v34 setImage:v38];

          [(PKDashboardPassMessage *)v34 setShowDisclosure:1];
          v39 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_13.isa);
          [(PKDashboardPassMessage *)v34 setButtonTitle:v39];

          v40 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:self->_pass];
          [(PKDashboardPassMessage *)v34 setAnalyticsReporterSubject:v40];

          objc_initWeak(&location, self);
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __105__PKDashboardPaymentPassDataSource__messageForPeerPaymentAssociatedAccountStateChangedForSecurityReasons__block_invoke_1188;
          v50[3] = &unk_1E801DF00;
          v50[4] = v31;
          objc_copyWeak(&v52, &location);
          v41 = altDSID3;
          v51 = v41;
          [(PKDashboardPassMessage *)v34 setActionOnButtonPress:v50];
          [allValues addObject:v34];

          objc_destroyWeak(&v52);
          objc_destroyWeak(&location);
        }

        v48 = [obja countByEnumeratingWithState:&v53 objects:v69 count:16];
      }

      while (v48);
    }

    if ([allValues count])
    {
      v4 = [allValues copy];
    }

    else
    {
      v4 = 0;
    }

LABEL_42:

    goto LABEL_43;
  }

  v4 = 0;
LABEL_43:

LABEL_5:

  return v4;
}

void __105__PKDashboardPaymentPassDataSource__messageForPeerPaymentAssociatedAccountStateChangedForSecurityReasons__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Opening apple cash feature in settings from dashboard for child %@", &v6, 0xCu);
    }

    v5 = PKPeerPaymentGetAppleCashFamilySettingsSensitiveURLForAltDSID();
    PKOpenURL();
  }
}

void __105__PKDashboardPaymentPassDataSource__messageForPeerPaymentAssociatedAccountStateChangedForSecurityReasons__block_invoke_1188(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Opening apple cash feature in settings from dashboard for child %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = PKPeerPaymentGetAppleCashFamilySettingsSensitiveURLForAltDSID();
    PKOpenURL();
  }
}

- (id)_messageForPeerPaymentAssociatedAccountLockedAccount
{
  v45 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  peerPaymentAccount = self->_peerPaymentAccount;
  if (!peerPaymentAccount || ![(PKPeerPaymentAccount *)peerPaymentAccount supportsFamilySharing]|| [(PKPeerPaymentAccount *)self->_peerPaymentAccount role]== 1)
  {
    v4 = 0;
    goto LABEL_5;
  }

  v29 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  familyMembersByAltDSID = [(PKFamilyMemberCollection *)self->_familyCollection familyMembersByAltDSID];
  obj = [familyMembersByAltDSID allValues];

  v7 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v7)
  {
    v8 = *v40;
LABEL_10:
    v9 = 0;
    while (1)
    {
      if (*v40 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v39 + 1) + 8 * v9);
      if ([v10 isMe])
      {
        if (![v10 isOrganizer])
        {
          goto LABEL_31;
        }
      }

      if (([v10 isMe] & 1) == 0)
      {
        v11 = self->_peerPaymentAccount;
        altDSID = [v10 altDSID];
        v13 = [(PKPeerPaymentAccount *)v11 peerPaymentAccountWithAltDSID:altDSID];

        if (v13 && PKPeerPaymentAccountShouldContactSupport())
        {
          [v29 addObject:v10];
        }
      }

      if (v7 == ++v9)
      {
        v7 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
        if (v7)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }

  obj = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v30 = v29;
  v14 = [v30 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v14)
  {
    v15 = *v36;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v30);
        }

        v17 = *(*(&v35 + 1) + 8 * i);
        v18 = objc_alloc_init(PKDashboardPassMessage);
        firstName = [v17 firstName];
        v20 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_14.isa, &stru_1F3BD5BF0.isa, firstName);
        [(PKDashboardPassMessage *)v18 setTitle:v20];

        firstName2 = [v17 firstName];
        v22 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_15.isa, &stru_1F3BD5BF0.isa, firstName2);
        [(PKDashboardPassMessage *)v18 setMessage:v22];

        v23 = MEMORY[0x1E696AEC0];
        altDSID2 = [v17 altDSID];
        v25 = [v23 stringWithFormat:@"%@-%@", @"peerPaymentAssociatedAccountLocked", altDSID2];

        [(PKDashboardPassMessage *)v18 setIdentifier:v25];
        v26 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"MessageAlert" extension:@"pdf"];
        [(PKDashboardPassMessage *)v18 setImage:v26];

        [(PKDashboardPassMessage *)v18 setShowDisclosure:1];
        v27 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_9.isa);
        [(PKDashboardPassMessage *)v18 setButtonTitle:v27];

        v28 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:self->_pass];
        [(PKDashboardPassMessage *)v18 setAnalyticsReporterSubject:v28];

        objc_initWeak(&location, self);
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __88__PKDashboardPaymentPassDataSource__messageForPeerPaymentAssociatedAccountLockedAccount__block_invoke;
        v32[3] = &unk_1E8015548;
        objc_copyWeak(&v33, &location);
        [(PKDashboardPassMessage *)v18 setActionOnButtonPress:v32];
        [obj addObject:v18];
        objc_destroyWeak(&v33);
        objc_destroyWeak(&location);
      }

      v14 = [v30 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v14);
  }

  if (![obj count])
  {
LABEL_31:
    v4 = 0;
    goto LABEL_32;
  }

  v4 = [obj copy];
LABEL_32:

LABEL_5:

  return v4;
}

void __88__PKDashboardPaymentPassDataSource__messageForPeerPaymentAssociatedAccountLockedAccount__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _peerPaymentResolutionTappedWithResolution:3];
    WeakRetained = v2;
  }
}

- (id)_messageForPeerPaymentAssociatedAccountPending
{
  v37 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  peerPaymentAccount = self->_peerPaymentAccount;
  if (peerPaymentAccount && [(PKPeerPaymentAccount *)peerPaymentAccount supportsFamilySharing]&& [(PKPeerPaymentAccount *)self->_peerPaymentAccount role]!= 1)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    familyMembersByAltDSID = [(PKFamilyMemberCollection *)self->_familyCollection familyMembersByAltDSID];
    allValues = [familyMembersByAltDSID allValues];

    v6 = [allValues countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v6)
    {
      v7 = *v33;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v33 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          v9 = *(*(&v32 + 1) + 8 * i);
          if ([v9 isMe] && !objc_msgSend(v9, "isOrganizer"))
          {

            goto LABEL_18;
          }
        }

        v6 = [allValues countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__41;
    v30 = __Block_byref_object_dispose__41;
    v31 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    associatedAccountInformation = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedAccountInformation];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __82__PKDashboardPaymentPassDataSource__messageForPeerPaymentAssociatedAccountPending__block_invoke;
    v25[3] = &unk_1E801DF28;
    v25[4] = &v26;
    [associatedAccountInformation enumerateAccountInvitationsUsingBlock:v25];

    if ([v27[5] count])
    {
      v11 = objc_alloc_init(PKDashboardPassMessage);
      if ([v27[5] count] == 1)
      {
        familyMembersByAltDSID2 = [(PKFamilyMemberCollection *)self->_familyCollection familyMembersByAltDSID];
        anyObject = [v27[5] anyObject];
        v14 = [familyMembersByAltDSID2 objectForKey:anyObject];
        firstName = [v14 firstName];

        if ([firstName length])
        {
          PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_16.isa, &stru_1F3BD5BF0.isa, firstName);
        }

        else
        {
          PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_17.isa);
        }
        v17 = ;
      }

      else
      {
        v17 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_18.isa);
      }

      [(PKDashboardPassMessage *)v11 setTitle:v17];
      v18 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_19.isa);
      [(PKDashboardPassMessage *)v11 setMessage:v18];

      [(PKDashboardPassMessage *)v11 setIdentifier:@"peerPaymentAssociatedAccountPending"];
      v19 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"AppleCashIcon" extension:@"pdf"];
      [(PKDashboardPassMessage *)v11 setImage:v19];

      [(PKDashboardPassMessage *)v11 setShowDisclosure:0];
      v20 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_20.isa);
      [(PKDashboardPassMessage *)v11 setButtonTitle:v20];

      v21 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:self->_pass];
      [(PKDashboardPassMessage *)v11 setAnalyticsReporterSubject:v21];

      objc_initWeak(&location, self);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __82__PKDashboardPaymentPassDataSource__messageForPeerPaymentAssociatedAccountPending__block_invoke_2;
      v22[3] = &unk_1E8015548;
      objc_copyWeak(&v23, &location);
      [(PKDashboardPassMessage *)v11 setActionOnButtonPress:v22];
      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }

    else
    {
      v11 = 0;
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
LABEL_18:
    v11 = 0;
  }

  return v11;
}

void __82__PKDashboardPaymentPassDataSource__messageForPeerPaymentAssociatedAccountPending__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 status] == 1)
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = [v5 altDSID];
    [v3 addObject:v4];
  }
}

void __82__PKDashboardPaymentPassDataSource__messageForPeerPaymentAssociatedAccountPending__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:@"https://support.apple.com/kb/HT211324"];
    PKOpenURL();

    WeakRetained = v3;
  }
}

- (void)_messageForPeerPaymentRewardsRedemptionWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (completionCopy)
  {
    v5 = self->_account;
    creditDetails = [(PKAccount *)v5 creditDetails];
    rewardsDestination = [creditDetails rewardsDestination];

    if (v5 && -[PKAccount feature](v5, "feature") == 2 && rewardsDestination == 1 && ((v8 = PKSharedCacheGetBoolForKey() ^ 1, PKSharedCacheGetNumberForKey(), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 integerValue], v9, (v8 & 1) != 0) || v10 == 1))
    {
      objc_initWeak(&location, self);
      mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __90__PKDashboardPaymentPassDataSource__messageForPeerPaymentRewardsRedemptionWithCompletion___block_invoke;
      v12[3] = &unk_1E801DFA0;
      objc_copyWeak(&v15, &location);
      v13 = v5;
      v16 = v8;
      v17 = v10 == 1;
      v14 = completionCopy;
      [mEMORY[0x1E69B9000] accountWithCompletion:v12];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __90__PKDashboardPaymentPassDataSource__messageForPeerPaymentRewardsRedemptionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = MEMORY[0x1E69B8770];
    v7 = *(a1 + 32);
    v8 = [WeakRetained[101] currentAccountUser];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __90__PKDashboardPaymentPassDataSource__messageForPeerPaymentRewardsRedemptionWithCompletion___block_invoke_2;
    v9[3] = &unk_1E801DF78;
    objc_copyWeak(&v12, (a1 + 48));
    v13 = *(a1 + 56);
    v10 = v3;
    v11 = *(a1 + 40);
    [v6 resolutionToReceiveCashbackForAccount:v7 accountUser:v8 withPeerPaymentAccount:v10 completion:v9];

    objc_destroyWeak(&v12);
  }
}

void __90__PKDashboardPaymentPassDataSource__messageForPeerPaymentRewardsRedemptionWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = 0;
    if (a2 <= 2)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          v12 = 0;
          if (a2 == 2)
          {
            if (*(a1 + 56) == 1)
            {
              v12 = PKLocalizedFeatureString();
              v13 = PKLocalizedFeatureString();
              v11 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_7.isa);
              v38 = 0;
              v14 = 0;
              v15 = 1;
              v16 = @"rewardsRedemptionIDVerification";
              if (!v13)
              {
                goto LABEL_31;
              }

LABEL_42:
              v37 = v14;
              if (!v10[23])
              {
                v20 = [MEMORY[0x1E69B9020] sharedService];
                v21 = v10[118];
                v10[118] = v20;

                v22 = [PKPeerPaymentAccountResolutionController alloc];
                v36 = v13;
                v23 = *(a1 + 32);
                v35 = v15;
                v24 = v10[118];
                v25 = objc_alloc_init(MEMORY[0x1E69B8A60]);
                v26 = [(PKPeerPaymentAccountResolutionController *)v22 initWithAccount:v23 webService:v24 context:0 delegate:0 passLibraryDataProvider:v25];
                v27 = v10[23];
                v10[23] = v26;

                [v10[23] setDelegate:v10];
                v28 = [MEMORY[0x1E696AD88] defaultCenter];
                v29 = *MEMORY[0x1E69BC378];
                v30 = [v10[118] targetDevice];
                [v28 addObserver:v10 selector:sel__peerPaymentAccountChanged_ name:v29 object:v30];

                v13 = v36;
                v15 = v35;
              }

              v31 = objc_alloc_init(PKDashboardPassMessage);
              [(PKDashboardPassMessage *)v31 setTitle:v12];
              [(PKDashboardPassMessage *)v31 setMessage:v13];
              [(PKDashboardPassMessage *)v31 setIdentifier:v16];
              [(PKDashboardPassMessage *)v31 setReportToAnalytics:v15];
              v32 = [v10 _messageImageWithName:@"DailyCashIcon" extension:@"pdf"];
              [(PKDashboardPassMessage *)v31 setImage:v32];

              [(PKDashboardPassMessage *)v31 setShowDisclosure:1];
              v33 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:v10[119]];
              [(PKDashboardPassMessage *)v31 setAnalyticsReporterSubject:v33];

              if (v11)
              {
                [(PKDashboardPassMessage *)v31 setButtonTitle:v11];
                v42[0] = MEMORY[0x1E69E9820];
                v42[1] = 3221225472;
                v42[2] = __90__PKDashboardPaymentPassDataSource__messageForPeerPaymentRewardsRedemptionWithCompletion___block_invoke_3;
                v42[3] = &unk_1E801DF50;
                objc_copyWeak(v44, (a1 + 48));
                v34 = v38;
                v45 = v38;
                v46 = v37;
                v43 = *(a1 + 32);
                v44[1] = a2;
                [(PKDashboardPassMessage *)v31 setActionOnButtonPress:v42];

                objc_destroyWeak(v44);
              }

              else
              {
                v34 = v38;
              }

              v39[0] = MEMORY[0x1E69E9820];
              v39[1] = 3221225472;
              v39[2] = __90__PKDashboardPaymentPassDataSource__messageForPeerPaymentRewardsRedemptionWithCompletion___block_invoke_4;
              v39[3] = &unk_1E80111A8;
              objc_copyWeak(&v40, (a1 + 48));
              v41 = v34;
              [(PKDashboardPassMessage *)v31 setActionOnDismiss:v39];
              (*(*(a1 + 40) + 16))();
              objc_destroyWeak(&v40);

              goto LABEL_48;
            }

            goto LABEL_30;
          }

LABEL_31:
          (*(*(a1 + 40) + 16))();
LABEL_48:

          goto LABEL_49;
        }

        if (a5)
        {
          if (a5 == 1)
          {
            if (a4 && (*(a1 + 57) & 1) != 0)
            {
              v18 = 1;
              goto LABEL_38;
            }
          }

          else if (a5 == 2)
          {
            v18 = 0;
            if ((*(a1 + 56) & 1) == 0)
            {
              v38 = 0;
LABEL_40:
              v13 = 0;
LABEL_41:
              v12 = PKLocalizedFeatureString();
              v11 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_15.isa);
              v14 = 0;
              v15 = 1;
              v16 = @"rewardsRedepmtionSetUpDailyCash";
              if (v13)
              {
                goto LABEL_42;
              }

              goto LABEL_31;
            }

LABEL_38:
            v38 = v18;
            v13 = PKLocalizedFeatureString();
            goto LABEL_41;
          }
        }

        else if (a4 && *(a1 + 57) == 1)
        {
          v18 = 1;
          goto LABEL_38;
        }

        v38 = 0;
        goto LABEL_40;
      }

LABEL_12:
      v11 = 0;
      v12 = 0;
      if (*(a1 + 57) != 1)
      {
        goto LABEL_31;
      }

      if (!a4)
      {
        goto LABEL_31;
      }

      v12 = PKLocalizedFeatureString();
      v13 = PKLocalizedFeatureString();
      v11 = PKLocalizedFeatureString();
      v14 = 1;
      v38 = 1;
      v15 = 1;
      v16 = @"rewardsRedepmtionDailyCashDiscovery";
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_42;
    }

    if (a2 == 3)
    {
      if (*(a1 + 56) == 1)
      {
        v12 = PKLocalizedFeatureString();
        v13 = PKLocalizedFeatureString();
        v17 = PKLocalizedFeatureString();
LABEL_27:
        v11 = v17;
        v38 = 0;
        v14 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      if (a2 != 4)
      {
        v12 = 0;
        if (a2 != 5)
        {
          goto LABEL_31;
        }

        goto LABEL_12;
      }

      if (*(a1 + 56) == 1)
      {
        v19 = [WeakRetained[21] role];
        if (v19 == 1)
        {
          v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_4.isa);
          v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_5.isa);
          v38 = 0;
          v14 = 0;
          v11 = 0;
LABEL_28:
          v15 = 0;
          v16 = @"fixRewards";
          if (!v13)
          {
            goto LABEL_31;
          }

          goto LABEL_42;
        }

        if (!v19)
        {
          v12 = PKLocalizedFeatureString();
          v13 = PKLocalizedFeatureString();
          v17 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_14.isa);
          goto LABEL_27;
        }
      }
    }

LABEL_30:
    v11 = 0;
    v12 = 0;
    goto LABEL_31;
  }

LABEL_49:
}

void __90__PKDashboardPaymentPassDataSource__messageForPeerPaymentRewardsRedemptionWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (*(a1 + 56) == 1)
    {
      PKSharedCacheSetObjectForKey();
    }

    else
    {
      PKSharedCacheSetBoolForKey();
    }

    if (*(a1 + 57) == 1)
    {
      v3 = [*(a1 + 32) associatedPassUniqueID];
      [v4 _presentPassWithPassUniqueIdentifier:v3];
    }

    else
    {
      [v4 _peerPaymentResolutionTappedWithResolution:*(a1 + 48)];
    }

    WeakRetained = v4;
  }
}

void __90__PKDashboardPaymentPassDataSource__messageForPeerPaymentRewardsRedemptionWithCompletion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (*(a1 + 40) == 1)
    {
      PKSharedCacheSetObjectForKey();
    }

    else
    {
      PKSharedCacheSetBoolForKey();
    }

    [v3 reloadMessagesAfterMessageInteraction];
    WeakRetained = v3;
  }
}

- (void)_messageForPaymentFailedWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (completionCopy)
  {
    v5 = self->_account;
    v6 = v5;
    if (v5 && [(PKAccount *)v5 feature]== 2 && PKSharedCacheGetBoolForKey())
    {
      objc_initWeak(&location, self);
      accountService = self->_accountService;
      accountIdentifier = [(PKAccount *)v6 accountIdentifier];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __75__PKDashboardPaymentPassDataSource__messageForPaymentFailedWithCompletion___block_invoke;
      v9[3] = &unk_1E801DFC8;
      objc_copyWeak(&v12, &location);
      v10 = v6;
      v11 = completionCopy;
      [(PKAccountService *)accountService eventsForAccountIdentifier:accountIdentifier types:&unk_1F3CC85B8 startDate:0 endDate:0 orderedByDate:1 limit:1 completion:v9];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __75__PKDashboardPaymentPassDataSource__messageForPaymentFailedWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = [v5 firstObject];
    v9 = [v8 items];
    v10 = [v9 anyObject];

    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v10 state] == 4)
    {
      [*(a1 + 32) feature];
      v11 = objc_alloc_init(PKDashboardPassMessage);
      [(PKDashboardPassMessage *)v11 setIdentifier:@"paymentFailed"];
      v12 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:WeakRetained[119]];
      [(PKDashboardPassMessage *)v11 setAnalyticsReporterSubject:v12];

      v13 = PKLocalizedFeatureString();
      [(PKDashboardPassMessage *)v11 setTitle:v13];

      v14 = &unk_1BE0FC000;
      if ([v10 statusCode] == 1)
      {
        v15 = [v10 currencyAmount];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 minimalFormattedStringValue];
          v18 = PKLocalizedFeatureString();
          [(PKDashboardPassMessage *)v11 setMessage:v18, v17];

          v14 = &unk_1BE0FC000;
        }

        else
        {
          v17 = PKLocalizedFeatureString();
          [(PKDashboardPassMessage *)v11 setMessage:v17];
        }

        v22 = PKLocalizedFeatureString();
        [(PKDashboardPassMessage *)v11 setButtonTitle:v22];

        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = v14[509];
        v28[2] = __75__PKDashboardPaymentPassDataSource__messageForPaymentFailedWithCompletion___block_invoke_2;
        v28[3] = &unk_1E8014F68;
        objc_copyWeak(&v30, (a1 + 48));
        v29 = *(a1 + 32);
        [(PKDashboardPassMessage *)v11 setActionOnButtonPress:v28];

        objc_destroyWeak(&v30);
        v21 = @"MessageAlert";
      }

      else
      {
        v19 = PKLocalizedFeatureString();
        [(PKDashboardPassMessage *)v11 setMessage:v19];

        v20 = PKLocalizedFeatureString();
        [(PKDashboardPassMessage *)v11 setButtonTitle:v20];

        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __75__PKDashboardPaymentPassDataSource__messageForPaymentFailedWithCompletion___block_invoke_4;
        v26[3] = &unk_1E8015548;
        objc_copyWeak(&v27, (a1 + 48));
        [(PKDashboardPassMessage *)v11 setActionOnButtonPress:v26];
        objc_destroyWeak(&v27);
        v21 = @"Bank";
      }

      v23 = [WeakRetained _messageImageWithName:v21 extension:@"pdf"];
      [(PKDashboardPassMessage *)v11 setImage:v23];

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = v14[509];
      v24[2] = __75__PKDashboardPaymentPassDataSource__messageForPaymentFailedWithCompletion___block_invoke_5;
      v24[3] = &unk_1E8010998;
      objc_copyWeak(&v25, (a1 + 48));
      [(PKDashboardPassMessage *)v11 setActionOnDismiss:v24];
      (*(*(a1 + 40) + 16))();
      objc_destroyWeak(&v25);
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

void __75__PKDashboardPaymentPassDataSource__messageForPaymentFailedWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[66];
    if (!v4)
    {
      v5 = [[PKAccountServiceAccountResolutionController alloc] initWithAccount:*(a1 + 32) accountUserCollection:*(v3 + 101) transactionSourceCollection:*(v3 + 106)];
      v6 = *(v3 + 66);
      *(v3 + 66) = v5;

      [*(v3 + 66) setDelegate:v3];
      v4 = *(v3 + 66);
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __75__PKDashboardPaymentPassDataSource__messageForPaymentFailedWithCompletion___block_invoke_3;
    v7[3] = &unk_1E8011D28;
    v7[4] = v3;
    [v4 presentFlowForAccountResolution:1 configuration:0 completion:v7];
  }
}

uint64_t __75__PKDashboardPaymentPassDataSource__messageForPaymentFailedWithCompletion___block_invoke_3(uint64_t a1)
{
  PKSharedCacheSetBoolForKey();
  v2 = *(a1 + 32);

  return [v2 reloadMessagesAfterMessageInteraction];
}

void __75__PKDashboardPaymentPassDataSource__messageForPaymentFailedWithCompletion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _presentPassDetailsWithAction:2];
    PKSharedCacheSetBoolForKey();
    [v2 reloadMessagesAfterMessageInteraction];
    WeakRetained = v2;
  }
}

void __75__PKDashboardPaymentPassDataSource__messageForPaymentFailedWithCompletion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    PKSharedCacheSetBoolForKey();
    [v2 reloadMessagesAfterMessageInteraction];
    WeakRetained = v2;
  }
}

- (void)_messageForInterestChargeWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (completionCopy)
  {
    v5 = self->_account;
    feature = [(PKAccount *)v5 feature];
    v7 = PKSharedCacheGetDateForKey();
    if (v5 && feature == 2 && (-[PKAccount hideInterestChargeClarity](v5, "hideInterestChargeClarity") & 1) == 0 && ([MEMORY[0x1E695DF00] now], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "compare:", v8), v8, v9 != 1))
    {
      creditDetails = [(PKAccount *)v5 creditDetails];
      accountSummary = [creditDetails accountSummary];
      balanceSummary = [accountSummary balanceSummary];

      openingDate = [balanceSummary openingDate];
      v14 = [openingDate dateByAddingTimeInterval:-60.0];

      closingDate = [balanceSummary closingDate];
      v41[0] = 0;
      v41[1] = v41;
      v41[2] = 0x3032000000;
      v41[3] = __Block_byref_object_copy__41;
      v41[4] = __Block_byref_object_dispose__41;
      v42 = 0;
      v39[0] = 0;
      v39[1] = v39;
      v39[2] = 0x3032000000;
      v39[3] = __Block_byref_object_copy__41;
      v39[4] = __Block_byref_object_dispose__41;
      v40 = 0;
      v16 = objc_alloc_init(MEMORY[0x1E69B8658]);
      objc_initWeak(&location, self);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __76__PKDashboardPaymentPassDataSource__messageForInterestChargeWithCompletion___block_invoke;
      v33[3] = &unk_1E80167A0;
      objc_copyWeak(&v37, &location);
      v17 = v14;
      v34 = v17;
      v18 = closingDate;
      v35 = v18;
      v36 = v41;
      [v16 addOperation:v33];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __76__PKDashboardPaymentPassDataSource__messageForInterestChargeWithCompletion___block_invoke_2;
      v28[3] = &unk_1E801BB00;
      objc_copyWeak(&v32, &location);
      v30 = v41;
      v19 = v5;
      v29 = v19;
      v31 = v39;
      [v16 addOperation:v28];
      null = [MEMORY[0x1E695DFB0] null];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __76__PKDashboardPaymentPassDataSource__messageForInterestChargeWithCompletion___block_invoke_6;
      v22[3] = &unk_1E801E060;
      objc_copyWeak(&v27, &location);
      v25 = v41;
      v24 = completionCopy;
      v23 = v19;
      v26 = v39;
      v21 = [v16 evaluateWithInput:null completion:v22];

      objc_destroyWeak(&v27);
      objc_destroyWeak(&v32);

      objc_destroyWeak(&v37);
      objc_destroyWeak(&location);

      _Block_object_dispose(v39, 8);
      _Block_object_dispose(v41, 8);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __76__PKDashboardPaymentPassDataSource__messageForInterestChargeWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69B8EC8]);
    v10 = [WeakRetained[106] transactionSourceIdentifiers];
    [v9 setTransactionSourceIdentifiers:v10];

    [v9 setTransactionTypes:&unk_1F3CC85D0];
    [v9 setDateOrder:1];
    [v9 setStartDate:*(a1 + 32)];
    [v9 setEndDate:*(a1 + 40)];
    [v9 setLimit:1];
    v11 = WeakRetained[108];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __76__PKDashboardPaymentPassDataSource__messageForInterestChargeWithCompletion___block_invoke_1279;
    v13[3] = &unk_1E8012DD0;
    v16 = *(a1 + 48);
    v15 = v7;
    v14 = v6;
    v12 = v11;
    [v12 transactionsForRequest:v9 completion:v13];
  }
}

uint64_t __76__PKDashboardPaymentPassDataSource__messageForInterestChargeWithCompletion___block_invoke_1279(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

void __76__PKDashboardPaymentPassDataSource__messageForInterestChargeWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = [*(*(*(a1 + 40) + 8) + 40) associatedStatementIdentifiers];
  v10 = v9;
  if (WeakRetained && [v9 count])
  {
    v11 = WeakRetained[122];
    v12 = [MEMORY[0x1E695DFD8] setWithArray:v10];
    v13 = [*(a1 + 32) accountIdentifier];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76__PKDashboardPaymentPassDataSource__messageForInterestChargeWithCompletion___block_invoke_3;
    v14[3] = &unk_1E801B7C0;
    v17 = *(a1 + 48);
    v16 = v7;
    v15 = v6;
    [v11 creditStatementsForStatementIdentifiers:v12 accountIdentifier:v13 completion:v14];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __76__PKDashboardPaymentPassDataSource__messageForInterestChargeWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 allObjects];
  v4 = [v3 pk_objectsPassingTest:&__block_literal_global_1283];

  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_1286];

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  (*(*(a1 + 40) + 16))();
}

BOOL __76__PKDashboardPaymentPassDataSource__messageForInterestChargeWithCompletion___block_invoke_4(uint64_t a1, void *a2)
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

BOOL __76__PKDashboardPaymentPassDataSource__messageForInterestChargeWithCompletion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 openingDate];
  v6 = [v4 openingDate];

  v7 = [v5 compare:v6] == 1;
  return v7;
}

void __76__PKDashboardPaymentPassDataSource__messageForInterestChargeWithCompletion___block_invoke_6(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PKDashboardPaymentPassDataSource__messageForInterestChargeWithCompletion___block_invoke_7;
  block[3] = &unk_1E801E038;
  objc_copyWeak(&v10, (a1 + 64));
  v5 = *(a1 + 40);
  v2 = v5;
  v8 = v5;
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v7 = v3;
  v9 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v10);
}

void __76__PKDashboardPaymentPassDataSource__messageForInterestChargeWithCompletion___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained && *(*(*(a1 + 48) + 8) + 40))
  {
    v3 = objc_alloc_init(PKDashboardPassMessage);
    [(PKDashboardPassMessage *)v3 setIdentifier:@"interestCharged"];
    v4 = PKDynamicLocalizedAppleCardString(&cfstr_AccountService_273.isa);
    [(PKDashboardPassMessage *)v3 setTitle:v4];

    v5 = [WeakRetained _messageImageWithName:@"InterestIcon" extension:@"pdf"];
    [(PKDashboardPassMessage *)v3 setImage:v5];

    v6 = PKDynamicLocalizedAppleCardString(&cfstr_AccountService_274.isa);
    [(PKDashboardPassMessage *)v3 setButtonTitle:v6];

    [(PKDashboardPassMessage *)v3 setShowDisclosure:1];
    v7 = [*(*(*(a1 + 48) + 8) + 40) currencyAmount];
    v8 = [v7 formattedStringValue];

    v50 = v8;
    v9 = PKDynamicLocalizedAppleCardString(&cfstr_AccountService_275.isa, &cfstr_1_0.isa, v8);
    v10 = [*(a1 + 32) creditDetails];
    v11 = [v10 productTimeZone];

    v12 = objc_alloc(MEMORY[0x1E695DEE8]);
    v13 = [v12 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    v49 = v11;
    [v13 setTimeZone:v11];
    v14 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v14 setMonth:2];
    v15 = [*(a1 + 32) creditDetails];
    v16 = [v15 mergeDate];

    v48 = v13;
    v17 = [v13 dateByAddingComponents:v14 toDate:v16 options:0];
    v46 = [*(*(*(a1 + 48) + 8) + 40) transactionDate];
    v47 = v17;
    IsBetweenDates = PKDateIsBetweenDates();
    v19 = [*(*(*(a1 + 48) + 8) + 40) interestReassessment];
    v20 = [*(*(*(a1 + 48) + 8) + 40) associatedStatementIdentifiers];
    v21 = [v20 count];

    if ((v19 & 1) == 0 && IsBetweenDates)
    {
      PKDynamicLocalizedAppleCardString(&cfstr_AccountService_276.isa, &cfstr_1_0.isa, v50);
      v9 = v22 = v9;
LABEL_6:

LABEL_16:
      [(PKDashboardPassMessage *)v3 setMessage:v9];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __76__PKDashboardPaymentPassDataSource__messageForInterestChargeWithCompletion___block_invoke_8;
      aBlock[3] = &unk_1E80110E0;
      objc_copyWeak(v58, (a1 + 64));
      v37 = v49;
      v57 = v37;
      v38 = _Block_copy(aBlock);
      [(PKDashboardPassMessage *)v3 setActionOnDismiss:v38];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __76__PKDashboardPaymentPassDataSource__messageForInterestChargeWithCompletion___block_invoke_9;
      v51[3] = &unk_1E801E010;
      objc_copyWeak(&v55, (a1 + 64));
      v54 = *(a1 + 48);
      v52 = *(a1 + 32);
      v39 = v38;
      v53 = v39;
      [(PKDashboardPassMessage *)v3 setActionOnButtonPress:v51];
      (*(*(a1 + 40) + 16))();

      objc_destroyWeak(&v55);
      objc_destroyWeak(v58);

      goto LABEL_17;
    }

    if (v21 < 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v19;
    }

    if ((v23 & 1) != 0 || [*(*(*(a1 + 56) + 8) + 40) count] != v21)
    {
      goto LABEL_16;
    }

    v24 = [*(*(*(a1 + 56) + 8) + 40) objectAtIndexedSubscript:0];
    v25 = [v24 openingDate];
    v44 = v24;
    v26 = [v24 closingDate];
    v27 = PKDatesMidpoint();

    v45 = v27;
    v28 = [WeakRetained[42] stringFromDate:v27];
    if (v21 == 1)
    {
      v40 = WeakRetained[43];
      v22 = v44;
      [v44 paymentDueDate];
      v42 = v41 = v28;
      v36 = [v40 stringFromDate:v42];

      v28 = v41;
      v35 = PKDynamicLocalizedAppleCardString(&cfstr_AccountService_278.isa, &cfstr_123_0.isa, v50, v41, v36);
    }

    else
    {
      if (v21 != 2)
      {
        v22 = v44;
        goto LABEL_21;
      }

      v43 = [*(*(*(a1 + 56) + 8) + 40) objectAtIndexedSubscript:1];
      v29 = [v43 openingDate];
      [v43 closingDate];
      v31 = v30 = v28;
      v32 = PKDatesMidpoint();

      v28 = v30;
      v33 = v32;
      v34 = [WeakRetained[42] stringFromDate:v32];
      v35 = PKDynamicLocalizedAppleCardString(&cfstr_AccountService_277.isa, &cfstr_123_0.isa, v50, v28, v34);

      v9 = v33;
      v36 = v43;
      v22 = v44;
    }

    v9 = v35;
LABEL_21:

    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))();
LABEL_17:
}

void __76__PKDashboardPaymentPassDataSource__messageForInterestChargeWithCompletion___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [MEMORY[0x1E695DF00] now];
    v3 = PKEndOfNextMonthAndTimeZone();

    PKSharedCacheSetObjectForKey();
    [v4 reloadMessagesAfterMessageInteraction];

    WeakRetained = v4;
  }
}

void __76__PKDashboardPaymentPassDataSource__messageForInterestChargeWithCompletion___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    LOBYTE(v6) = 1;
    v3 = [[PKPaymentTransactionDetailViewController alloc] initWithTransaction:*(*(*(a1 + 48) + 8) + 40) transactionSourceCollection:*(v7 + 106) familyCollection:*(v7 + 104) account:*(a1 + 32) accountUserCollection:*(v7 + 101) bankConnectInstitution:0 physicalCards:*(v7 + 103) contactResolver:0 peerPaymentWebService:*(v7 + 118) paymentServiceDataProvider:*(v7 + 123) detailViewStyle:0 allowTransactionLinks:v6];
    v4 = objc_loadWeakRetained(v7 + 100);
    v5 = [v4 navigationController];
    [v5 pushViewController:v3 animated:1];

    (*(*(a1 + 40) + 16))();
    WeakRetained = v7;
  }
}

- (void)_messageForEnableNotificationsWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (completionCopy)
  {
    if (PKSharedCacheGetBoolForKey())
    {
      completionCopy[2](completionCopy, 0);
    }

    else
    {
      objc_initWeak(&location, self);
      feature = [(PKAccount *)self->_account feature];
      mEMORY[0x1E69B9328] = [MEMORY[0x1E69B9328] sharedInstance];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __81__PKDashboardPaymentPassDataSource__messageForEnableNotificationsWithCompletion___block_invoke;
      v8[3] = &unk_1E801E0B0;
      objc_copyWeak(v10, &location);
      v7 = completionCopy;
      v10[1] = feature;
      v8[4] = self;
      v9 = v7;
      [mEMORY[0x1E69B9328] authorizationStatusWithCompletion:v8];

      objc_destroyWeak(v10);
      objc_destroyWeak(&location);
    }
  }
}

void __81__PKDashboardPaymentPassDataSource__messageForEnableNotificationsWithCompletion___block_invoke(uint64_t a1, void *a2, char a3)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__PKDashboardPaymentPassDataSource__messageForEnableNotificationsWithCompletion___block_invoke_2;
  v8[3] = &unk_1E801E088;
  objc_copyWeak(v10, (a1 + 48));
  v6 = *(a1 + 40);
  v11 = a3;
  v7 = *(a1 + 56);
  v10[1] = a2;
  v10[2] = v7;
  v8[4] = *(a1 + 32);
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v8);

  objc_destroyWeak(v10);
}

void __81__PKDashboardPaymentPassDataSource__messageForEnableNotificationsWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 72) == 1 && *(a1 + 56) == 1)
    {
      v3 = objc_alloc_init(PKDashboardPassMessage);
      [(PKDashboardPassMessage *)v3 setIdentifier:@"enableNotifications"];
      [(PKDashboardPassMessage *)v3 setReportToAnalytics:1];
      v4 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:WeakRetained[119]];
      [(PKDashboardPassMessage *)v3 setAnalyticsReporterSubject:v4];

      v5 = PKLocalizedString(&cfstr_NotificationsD.isa);
      v6 = PKLocalizedString(&cfstr_NotificationsD_0.isa);
      v7 = PKLocalizedString(&cfstr_NotificationsD_1.isa);
      v15 = v5;
      v8 = PKLocalizedFeatureStringWithDefaultValue();
      v9 = PKLocalizedFeatureStringWithDefaultValue();
      v10 = PKLocalizedFeatureStringWithDefaultValue();
      if ([WeakRetained[119] isIdentityPass])
      {
        v11 = PKLocalizedIdentityString(&cfstr_AccountDashboa_97.isa);

        v12 = PKLocalizedIdentityString(&cfstr_AccountDashboa_98.isa);

        v8 = v11;
        v9 = v12;
      }

      [(PKDashboardPassMessage *)v3 setTitle:v8, v15];
      [(PKDashboardPassMessage *)v3 setMessage:v9];
      [(PKDashboardPassMessage *)v3 setButtonTitle:v10];
      if ([WeakRetained[119] isAppleCardPass])
      {
        v13 = @"Broadway-45pt";
      }

      else
      {
        v13 = @"Category_bell_45pt";
      }

      v14 = [WeakRetained _messageImageWithName:v13 extension:@"png"];
      [(PKDashboardPassMessage *)v3 setImage:v14];

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __81__PKDashboardPaymentPassDataSource__messageForEnableNotificationsWithCompletion___block_invoke_3;
      v20[3] = &unk_1E8015548;
      objc_copyWeak(&v21, (a1 + 48));
      [(PKDashboardPassMessage *)v3 setActionOnButtonPress:v20];
      objc_initWeak(&location, *(a1 + 32));
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __81__PKDashboardPaymentPassDataSource__messageForEnableNotificationsWithCompletion___block_invoke_4;
      v17[3] = &unk_1E8010998;
      objc_copyWeak(&v18, &location);
      [(PKDashboardPassMessage *)v3 setActionOnDismiss:v17];
      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
      objc_destroyWeak(&v21);
    }

    else
    {
      v3 = 0;
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __81__PKDashboardPaymentPassDataSource__messageForEnableNotificationsWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = MEMORY[0x1E695DFF8];
    v5 = WeakRetained;
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"prefs:root=NOTIFICATIONS_ID&path=%@", *MEMORY[0x1E69BC3D8]];
    v4 = [v2 URLWithString:v3];

    PKOpenURL();
    WeakRetained = v5;
  }
}

void __81__PKDashboardPaymentPassDataSource__messageForEnableNotificationsWithCompletion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    PKSharedCacheSetBoolForKey();
    [v2 reloadMessagesAfterMessageInteraction];
    WeakRetained = v2;
  }
}

- (id)_messagesForPhysicalCardExpiration
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_account && self->_physicalCardsLoaded)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_initWeak(location, self);
    primaryPhysicalCard = [(PKPhysicalCardController *)self->_physicalCardController primaryPhysicalCard];
    expiredPhysicalCard = [(PKPhysicalCardController *)self->_physicalCardController expiredPhysicalCard];
    if ([(PKPhysicalCardController *)self->_physicalCardController hasExpiredPhysicalCardOnly])
    {
      v6 = expiredPhysicalCard;
    }

    else
    {
      v6 = primaryPhysicalCard;
    }

    v7 = v6;
    accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
    identifier = [v7 identifier];
    v10 = PKAppleCardPhysicalCardExpiredMessagingStartDate();

    accountIdentifier2 = [(PKAccount *)self->_account accountIdentifier];
    identifier2 = [primaryPhysicalCard identifier];
    v47 = PKAppleCardPhysicalCardExpiringSoonMessagingStartDate();

    canReplacePhysicalCard = [(PKPhysicalCardController *)self->_physicalCardController canReplacePhysicalCard];
    if (v7)
    {
      v14 = canReplacePhysicalCard;
    }

    else
    {
      v14 = 0;
    }

    if (v14 && v10)
    {
      v15 = [MEMORY[0x1E695DF00] now];
      [v15 timeIntervalSinceDate:v10];
      if (v16 <= 0.0)
      {
      }

      else
      {
        accountIdentifier3 = [(PKAccount *)self->_account accountIdentifier];
        identifier3 = [v7 identifier];
        HasDismissedPhysicalCardExpiredMessage = PKAppleCardHasDismissedPhysicalCardExpiredMessage();

        if ((HasDismissedPhysicalCardExpiredMessage & 1) == 0)
        {
          v20 = objc_alloc_init(PKDashboardPassMessage);
          v21 = PKLocalizedFeatureString();
          [(PKDashboardPassMessage *)v20 setTitle:v21];

          v22 = PKLocalizedFeatureString();
          [(PKDashboardPassMessage *)v20 setMessage:v22];

          v23 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"MessageAlert" extension:@"pdf"];
          [(PKDashboardPassMessage *)v20 setImage:v23];

          v24 = PKLocalizedFeatureString();
          [(PKDashboardPassMessage *)v20 setButtonTitle:v24];

          v54[0] = MEMORY[0x1E69E9820];
          v54[1] = 3221225472;
          v54[2] = __70__PKDashboardPaymentPassDataSource__messagesForPhysicalCardExpiration__block_invoke;
          v54[3] = &unk_1E8014F68;
          v46 = &v55;
          objc_copyWeak(&v55, location);
          v54[4] = primaryPhysicalCard;
          [(PKDashboardPassMessage *)v20 setActionOnButtonPress:v54];
          v25 = v52;
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = __70__PKDashboardPaymentPassDataSource__messagesForPhysicalCardExpiration__block_invoke_3;
          v52[3] = &unk_1E80110E0;
          v26 = &v53;
          objc_copyWeak(&v53, location);
          v52[4] = v7;
          [(PKDashboardPassMessage *)v20 setActionOnDismiss:v52];
          [(PKDashboardPassMessage *)v20 setShowDisclosure:1];
          [(PKDashboardPassMessage *)v20 setIdentifier:@"physicalCardExpired"];
          [(PKDashboardPassMessage *)v20 setReportToAnalytics:1];
          v27 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:self->_pass];
          [(PKDashboardPassMessage *)v20 setAnalyticsReporterSubject:v27];

          [v3 addObject:v20];
          v28 = v54;
          goto LABEL_24;
        }
      }
    }

    if ([(PKPhysicalCardController *)self->_physicalCardController hasExpiredPhysicalCardOnly])
    {
      goto LABEL_26;
    }

    canReplacePhysicalCard2 = [(PKPhysicalCardController *)self->_physicalCardController canReplacePhysicalCard];
    if (!v47 || !canReplacePhysicalCard2)
    {
      goto LABEL_26;
    }

    v20 = [MEMORY[0x1E695DF00] now];
    [(PKDashboardPassMessage *)v20 timeIntervalSinceDate:v47];
    if (v32 <= 0.0)
    {
      goto LABEL_25;
    }

    accountIdentifier4 = [(PKAccount *)self->_account accountIdentifier];
    identifier4 = [primaryPhysicalCard identifier];
    HasDismissedPhysicalCardExpiringSoonMessage = PKAppleCardHasDismissedPhysicalCardExpiringSoonMessage();

    if (HasDismissedPhysicalCardExpiringSoonMessage)
    {
LABEL_26:
      if ([v3 count])
      {
        v29 = [v3 copy];
      }

      else
      {
        v29 = 0;
      }

      objc_destroyWeak(location);
      goto LABEL_30;
    }

    v20 = objc_alloc_init(PKDashboardPassMessage);
    primaryPhysicalCardExpirationDate = [(PKPhysicalCardController *)self->_physicalCardController primaryPhysicalCardExpirationDate];
    v37 = PKMediumDayAndMonthStringFromDate();
    v38 = PKLocalizedFeatureString();
    [(PKDashboardPassMessage *)v20 setTitle:v38, v37];

    v39 = PKLocalizedFeatureString();
    [(PKDashboardPassMessage *)v20 setMessage:v39];

    v40 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"MessageAlert" extension:@"pdf"];
    [(PKDashboardPassMessage *)v20 setImage:v40];

    v41 = PKLocalizedFeatureString();
    [(PKDashboardPassMessage *)v20 setButtonTitle:v41];

    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __70__PKDashboardPaymentPassDataSource__messagesForPhysicalCardExpiration__block_invoke_4;
    v50[3] = &unk_1E8014F68;
    v46 = &v51;
    objc_copyWeak(&v51, location);
    v42 = primaryPhysicalCard;
    v50[4] = v42;
    [(PKDashboardPassMessage *)v20 setActionOnButtonPress:v50];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __70__PKDashboardPaymentPassDataSource__messagesForPhysicalCardExpiration__block_invoke_6;
    v48[3] = &unk_1E80110E0;
    v26 = &v49;
    objc_copyWeak(&v49, location);
    v48[4] = v42;
    [(PKDashboardPassMessage *)v20 setActionOnDismiss:v48];
    v25 = v48;
    [(PKDashboardPassMessage *)v20 setShowDisclosure:1];
    [(PKDashboardPassMessage *)v20 setIdentifier:@"physicalCardExpiringSoon"];
    [(PKDashboardPassMessage *)v20 setReportToAnalytics:1];
    v43 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:self->_pass];
    [(PKDashboardPassMessage *)v20 setAnalyticsReporterSubject:v43];

    [v3 addObject:v20];
    v28 = v50;
LABEL_24:
    v44 = (v28 + 4);

    objc_destroyWeak(v26);
    objc_destroyWeak(v46);
LABEL_25:

    goto LABEL_26;
  }

  v29 = 0;
LABEL_30:

  return v29;
}

void __70__PKDashboardPaymentPassDataSource__messagesForPhysicalCardExpiration__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 51);
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __70__PKDashboardPaymentPassDataSource__messagesForPhysicalCardExpiration__block_invoke_2;
    v6[3] = &unk_1E8018010;
    v6[4] = v3;
    [v4 replaceFlowViewControllerForReason:1 content:0 currentPhysicalCard:v5 completion:v6];
  }
}

void __70__PKDashboardPaymentPassDataSource__messagesForPhysicalCardExpiration__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    v6 = [[PKNavigationController alloc] initWithRootViewController:v9];
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

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 800));
  v8 = [WeakRetained navigationController];
  [v8 presentViewController:v6 animated:1 completion:0];

LABEL_6:
}

void __70__PKDashboardPaymentPassDataSource__messagesForPhysicalCardExpiration__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained[48] accountIdentifier];
    v4 = [*(a1 + 32) identifier];
    PKAppleCardSetHasDismissedPhysicalCardExpiredMessage();

    [v5 reloadMessagesAfterMessageInteraction];
    WeakRetained = v5;
  }
}

void __70__PKDashboardPaymentPassDataSource__messagesForPhysicalCardExpiration__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 51);
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __70__PKDashboardPaymentPassDataSource__messagesForPhysicalCardExpiration__block_invoke_5;
    v6[3] = &unk_1E8018010;
    v6[4] = v3;
    [v4 replaceFlowViewControllerForReason:1 content:0 currentPhysicalCard:v5 completion:v6];
  }
}

void __70__PKDashboardPaymentPassDataSource__messagesForPhysicalCardExpiration__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    v6 = [[PKNavigationController alloc] initWithRootViewController:v9];
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

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 800));
  v8 = [WeakRetained navigationController];
  [v8 presentViewController:v6 animated:1 completion:0];

LABEL_6:
}

void __70__PKDashboardPaymentPassDataSource__messagesForPhysicalCardExpiration__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained[48] accountIdentifier];
    v4 = [*(a1 + 32) identifier];
    PKAppleCardSetHasDismissedPhysicalCardExpiringSoonMessage();

    [v5 reloadMessagesAfterMessageInteraction];
    WeakRetained = v5;
  }
}

- (id)_messagesForPhysicalCard
{
  v157 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_account && self->_physicalCardsLoaded)
  {
    v101 = objc_alloc_init(MEMORY[0x1E695DF70]);
    selfCopy = self;
    objc_initWeak(&location, self);
    if ([(PKPhysicalCardController *)self->_physicalCardController canRequestNewPhysicalCard]&& ![(PKPhysicalCardController *)self->_physicalCardController canReplacePhysicalCard]&& (PKSharedCacheGetBoolForKey() & 1) == 0)
    {
      v3 = objc_alloc_init(PKDashboardPassMessage);
      v4 = PKLocalizedFeatureString();
      [(PKDashboardPassMessage *)v3 setTitle:v4];

      v5 = PKLocalizedFeatureString();
      [(PKDashboardPassMessage *)v3 setMessage:v5];

      v6 = [(PKDashboardPaymentPassDataSource *)selfCopy _messageImageWithName:@"PhysicalCardMessageModule" extension:@"pdf"];
      [(PKDashboardPassMessage *)v3 setImage:v6];

      v153[0] = MEMORY[0x1E69E9820];
      v153[1] = 3221225472;
      v153[2] = __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke;
      v153[3] = &unk_1E8010998;
      objc_copyWeak(&v154, &location);
      [(PKDashboardPassMessage *)v3 setActionOnDismiss:v153];
      v7 = PKLocalizedFeatureString();
      [(PKDashboardPassMessage *)v3 setButtonTitle:v7];

      v151[0] = MEMORY[0x1E69E9820];
      v151[1] = 3221225472;
      v151[2] = __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_2;
      v151[3] = &unk_1E8015548;
      objc_copyWeak(&v152, &location);
      [(PKDashboardPassMessage *)v3 setActionOnButtonPress:v151];
      [(PKDashboardPassMessage *)v3 setIdentifier:@"physicalCardOrder"];
      [(PKDashboardPassMessage *)v3 setReportToAnalytics:1];
      v8 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:selfCopy->_pass];
      [(PKDashboardPassMessage *)v3 setAnalyticsReporterSubject:v8];

      [v101 addObject:v3];
      objc_destroyWeak(&v152);
      objc_destroyWeak(&v154);

      self = selfCopy;
    }

    v9 = [(NSSet *)self->_physicalCards objectsPassingTest:&__block_literal_global_1380];
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v147 objects:v156 count:16];
    if (v10)
    {
      v103 = *v148;
      do
      {
        v104 = v10;
        for (i = 0; i != v104; ++i)
        {
          if (*v148 != v103)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v147 + 1) + 8 * i);
          accountUserAltDSID = [v12 accountUserAltDSID];
          identifier = [v12 identifier];
          accountUserCollection = self->_accountUserCollection;
          if (accountUserAltDSID)
          {
            [(PKAccountUserCollection *)accountUserCollection accountUserWithAltDSID:accountUserAltDSID];
          }

          else
          {
            [(PKAccountUserCollection *)accountUserCollection currentAccountUser];
          }
          v16 = ;
          accessLevel = [v16 accessLevel];
          if (v16)
          {
            v18 = accessLevel == 2;
          }

          else
          {
            v18 = 0;
          }

          if (!v18 || ([v16 isCurrentUser] & 1) != 0 || (objc_msgSend(v16, "supportsRequestPhysicalCard")) && (-[PKAccount accessLevel](self->_account, "accessLevel") != 2 || -[PKAccount supportsRequestPhysicalCard](self->_account, "supportsRequestPhysicalCard")))
          {
            if (v16)
            {
              isCurrentUser = [v16 isCurrentUser];
            }

            else
            {
              isCurrentUser = 1;
            }

            v20 = [(PKDashboardPaymentPassDataSource *)self _lastPhysicalCardMessageDateKeyForPhysicalCardIdentifier:identifier];
            v21 = PKSharedCacheGetDateForKey();
            if (((v21 == 0) & isCurrentUser) == 1)
            {
              v21 = PKSharedCacheGetDateForKey();
            }

            if (accountUserAltDSID)
            {
              v110 = [(PKFamilyMemberCollection *)self->_familyCollection familyMemberForAltDSID:accountUserAltDSID];
            }

            else
            {
              v110 = 0;
            }

            v22 = MEMORY[0x1E69B8740];
            nameComponents = [v16 nameComponents];
            v109 = [v22 contactForFamilyMember:v110 nameComponents:nameComponents imageData:0];
            v106 = v20;

            givenName = [v109 givenName];
            latestShippingActivity = [v12 latestShippingActivity];
            if (latestShippingActivity && [latestShippingActivity shippingStatus] && (!v21 || (objc_msgSend(latestShippingActivity, "timestamp"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v21, "compare:", v24) == -1, v24, v25)))
            {
              shippingStatus = [latestShippingActivity shippingStatus];
              if (shippingStatus > 2)
              {
                if (shippingStatus == 3)
                {
                  if ((isCurrentUser & 1) != 0 || [v16 supportsPhysicalCardActivation])
                  {
                    v27 = objc_alloc_init(PKDashboardPassMessage);
                    v48 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:selfCopy->_pass];
                    [(PKDashboardPassMessage *)v27 setAnalyticsReporterSubject:v48];

                    if (isCurrentUser)
                    {
                      PKLocalizedFeatureString();
                    }

                    else
                    {
                      v92 = givenName;
                      PKLocalizedFeatureString();
                    }
                    v73 = ;
                    v74 = PKLocalizedFeatureString();
                    v75 = PKLocalizedFeatureString();
                    [(PKDashboardPassMessage *)v27 setButtonTitle:v75];

                    v138[0] = MEMORY[0x1E69E9820];
                    v138[1] = 3221225472;
                    v138[2] = __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_7;
                    v138[3] = &unk_1E8015570;
                    objc_copyWeak(&v140, &location);
                    v138[4] = v12;
                    v139 = v16;
                    [(PKDashboardPassMessage *)v27 setActionOnButtonPress:v138];
                    [(PKDashboardPassMessage *)v27 setTitle:v73];
                    [(PKDashboardPassMessage *)v27 setMessage:v74];
                    v76 = [(PKDashboardPaymentPassDataSource *)selfCopy _messageImageWithName:@"PhysicalCardMessageModule" extension:@"pdf"];
                    [(PKDashboardPassMessage *)v27 setImage:v76];

                    v77 = [(PKDashboardPaymentPassDataSource *)selfCopy _physicalCardMessageIdentifierFromIdentifier:@"physicalCardDelivered" physicalCard:v12];
                    [(PKDashboardPassMessage *)v27 setIdentifier:v77];

                    [(PKDashboardPassMessage *)v27 setReportToAnalytics:1];
                    [v101 addObject:v27];

                    objc_destroyWeak(&v140);
                    goto LABEL_97;
                  }

LABEL_98:

                  goto LABEL_99;
                }

                if (shippingStatus != 4)
                {
                  goto LABEL_98;
                }

                v27 = objc_alloc_init(PKDashboardPassMessage);
                v34 = PKLocalizedFeatureString();
                [(PKDashboardPassMessage *)v27 setTitle:v34];

                localizedDeliveryExceptionReason = [latestShippingActivity localizedDeliveryExceptionReason];
                if (!localizedDeliveryExceptionReason)
                {
                  if (isCurrentUser)
                  {
                    PKLocalizedFeatureString();
                  }

                  else
                  {
                    v92 = givenName;
                    PKLocalizedFeatureString();
                  }
                  localizedDeliveryExceptionReason = ;
                }

                [(PKDashboardPassMessage *)v27 setMessage:localizedDeliveryExceptionReason, v92];
                v81 = [(PKDashboardPaymentPassDataSource *)selfCopy _messageImageWithName:@"MessageAlert" extension:@"pdf"];
                [(PKDashboardPassMessage *)v27 setImage:v81];
                v105 = localizedDeliveryExceptionReason;

                v82 = PKLocalizedFeatureString();
                [(PKDashboardPassMessage *)v27 setButtonTitle:v82];

                v133[0] = MEMORY[0x1E69E9820];
                v133[1] = 3221225472;
                v133[2] = __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_9;
                v133[3] = &unk_1E8015548;
                objc_copyWeak(&v134, &location);
                [(PKDashboardPassMessage *)v27 setActionOnButtonPress:v133];
                v130[0] = MEMORY[0x1E69E9820];
                v130[1] = 3221225472;
                v130[2] = __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_10;
                v130[3] = &unk_1E80110E0;
                objc_copyWeak(&v132, &location);
                v131 = v106;
                [(PKDashboardPassMessage *)v27 setActionOnDismiss:v130];
                v83 = [(PKDashboardPaymentPassDataSource *)selfCopy _physicalCardMessageIdentifierFromIdentifier:@"physicalCardCannotDeliver" physicalCard:v12];
                [(PKDashboardPassMessage *)v27 setIdentifier:v83];

                [(PKDashboardPassMessage *)v27 setReportToAnalytics:1];
                v84 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:selfCopy->_pass];
                [(PKDashboardPassMessage *)v27 setAnalyticsReporterSubject:v84];

                [v101 addObject:v27];
                objc_destroyWeak(&v132);
                objc_destroyWeak(&v134);
              }

              else if (shippingStatus == 1)
              {
                v27 = objc_alloc_init(PKDashboardPassMessage);
                v44 = [(PKDashboardPaymentPassDataSource *)selfCopy _messageImageWithName:@"PhysicalCardMessageModule" extension:@"pdf"];
                [(PKDashboardPassMessage *)v27 setImage:v44];

                v45 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:selfCopy->_pass];
                [(PKDashboardPassMessage *)v27 setAnalyticsReporterSubject:v45];

                if (isCurrentUser)
                {
                  v46 = PKLocalizedFeatureString();
                  formattedEstimatedDeliveryDate = [latestShippingActivity formattedEstimatedDeliveryDate];
                  v93 = formattedEstimatedDeliveryDate;
                }

                else
                {
                  v46 = PKLocalizedFeatureString();
                  formattedEstimatedDeliveryDate = [latestShippingActivity formattedEstimatedDeliveryDate];
                  v93 = givenName;
                  v94 = formattedEstimatedDeliveryDate;
                }

                v98 = PKLocalizedFeatureString();
                v105 = v46;

                [(PKDashboardPassMessage *)v27 setTitle:v46, v93];
                [(PKDashboardPassMessage *)v27 setMessage:v98];
                shipmentTrackingURL = [v12 shipmentTrackingURL];
                if (shipmentTrackingURL || ([latestShippingActivity shipmentTrackingURL], (shipmentTrackingURL = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v57 = PKLocalizedFeatureString();
                  [(PKDashboardPassMessage *)v27 setButtonTitle:v57];

                  v144[0] = MEMORY[0x1E69E9820];
                  v144[1] = 3221225472;
                  v144[2] = __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_5;
                  v144[3] = &unk_1E8014F68;
                  objc_copyWeak(&v146, &location);
                  shipmentTrackingURL = shipmentTrackingURL;
                  v145 = shipmentTrackingURL;
                  [(PKDashboardPassMessage *)v27 setActionOnButtonPress:v144];

                  objc_destroyWeak(&v146);
                }

                v141[0] = MEMORY[0x1E69E9820];
                v141[1] = 3221225472;
                v141[2] = __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_6;
                v141[3] = &unk_1E80110E0;
                objc_copyWeak(&v143, &location);
                v142 = v106;
                [(PKDashboardPassMessage *)v27 setActionOnDismiss:v141];
                v58 = [(PKDashboardPaymentPassDataSource *)selfCopy _physicalCardMessageIdentifierFromIdentifier:@"physicalCardShipped" physicalCard:v12];
                [(PKDashboardPassMessage *)v27 setIdentifier:v58];

                [(PKDashboardPassMessage *)v27 setReportToAnalytics:1];
                [v101 addObject:v27];

                objc_destroyWeak(&v143);
              }

              else
              {
                if (shippingStatus != 2)
                {
                  goto LABEL_98;
                }

                v27 = objc_alloc_init(PKDashboardPassMessage);
                if (isCurrentUser)
                {
                  v33 = PKLocalizedFeatureString();
                  PKLocalizedFeatureString();
                }

                else
                {
                  v33 = PKLocalizedFeatureString();
                  v92 = givenName;
                  PKLocalizedFeatureString();
                }
                v97 = ;
                v105 = v33;
                [(PKDashboardPassMessage *)v27 setTitle:v33, v92];
                [(PKDashboardPassMessage *)v27 setMessage:v97];
                v51 = [(PKDashboardPaymentPassDataSource *)selfCopy _messageImageWithName:@"PhysicalCardMessageModule" extension:@"pdf"];
                [(PKDashboardPassMessage *)v27 setImage:v51];

                v52 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:selfCopy->_pass];
                [(PKDashboardPassMessage *)v27 setAnalyticsReporterSubject:v52];

                shipmentTrackingURL2 = [v12 shipmentTrackingURL];
                if (shipmentTrackingURL2 || ([latestShippingActivity shipmentTrackingURL], (shipmentTrackingURL2 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v54 = PKLocalizedFeatureString();
                  [(PKDashboardPassMessage *)v27 setButtonTitle:v54];

                  v135[0] = MEMORY[0x1E69E9820];
                  v135[1] = 3221225472;
                  v135[2] = __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_8;
                  v135[3] = &unk_1E8014F68;
                  objc_copyWeak(&v137, &location);
                  shipmentTrackingURL2 = shipmentTrackingURL2;
                  v136 = shipmentTrackingURL2;
                  [(PKDashboardPassMessage *)v27 setActionOnButtonPress:v135];

                  objc_destroyWeak(&v137);
                }

                v55 = [(PKDashboardPaymentPassDataSource *)selfCopy _physicalCardMessageIdentifierFromIdentifier:@"physicalCardOutForDelivery" physicalCard:v12];
                [(PKDashboardPassMessage *)v27 setIdentifier:v55];

                [(PKDashboardPassMessage *)v27 setReportToAnalytics:1];
                [v101 addObject:v27];
              }
            }

            else
            {
              latestOrderActivity = [v12 latestOrderActivity];
              v27 = latestOrderActivity;
              if (!latestOrderActivity)
              {
                goto LABEL_97;
              }

              if (![(PKDashboardPassMessage *)latestOrderActivity activity])
              {
                goto LABEL_97;
              }

              if (v21)
              {
                date = [(PKDashboardPassMessage *)v27 date];
                v29 = [v21 compare:date] == -1;

                if (!v29)
                {
                  goto LABEL_97;
                }
              }

              activity = [(PKDashboardPassMessage *)v27 activity];
              if (activity <= 2)
              {
                if (activity == 1)
                {
                  v49 = objc_alloc_init(PKDashboardPassMessage);
                  if (isCurrentUser)
                  {
                    v99 = PKLocalizedFeatureString();
                    PKLocalizedFeatureString();
                  }

                  else
                  {
                    v99 = PKLocalizedFeatureString();
                    v92 = givenName;
                    PKLocalizedFeatureString();
                  }
                  v63 = ;
                  [(PKDashboardPassMessage *)v49 setTitle:v99, v92];
                  [(PKDashboardPassMessage *)v49 setMessage:v63];
                  v64 = PKLocalizedFeatureString();
                  [(PKDashboardPassMessage *)v49 setButtonTitle:v64];

                  v65 = [(PKDashboardPaymentPassDataSource *)selfCopy _messageImageWithName:@"PhysicalCardMessageModule" extension:@"pdf"];
                  [(PKDashboardPassMessage *)v49 setImage:v65];

                  v121[0] = MEMORY[0x1E69E9820];
                  v121[1] = 3221225472;
                  v121[2] = __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_14;
                  v121[3] = &unk_1E8015548;
                  objc_copyWeak(&v122, &location);
                  [(PKDashboardPassMessage *)v49 setActionOnButtonPress:v121];
                  v118[0] = MEMORY[0x1E69E9820];
                  v118[1] = 3221225472;
                  v118[2] = __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_15;
                  v118[3] = &unk_1E80110E0;
                  objc_copyWeak(&v120, &location);
                  v119 = v106;
                  [(PKDashboardPassMessage *)v49 setActionOnDismiss:v118];
                  v66 = [(PKDashboardPaymentPassDataSource *)selfCopy _physicalCardMessageIdentifierFromIdentifier:@"physicalCardOrdered" physicalCard:v12];
                  [(PKDashboardPassMessage *)v49 setIdentifier:v66];

                  [(PKDashboardPassMessage *)v49 setReportToAnalytics:1];
                  v67 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:selfCopy->_pass];
                  [(PKDashboardPassMessage *)v49 setAnalyticsReporterSubject:v67];

                  [v101 addObject:v49];
                  objc_destroyWeak(&v120);
                  objc_destroyWeak(&v122);
                }

                else if (activity == 2)
                {
                  v31 = objc_alloc_init(PKDashboardPassMessage);
                  if (isCurrentUser)
                  {
                    v96 = PKLocalizedFeatureString();
                    PKLocalizedFeatureString();
                  }

                  else
                  {
                    v96 = PKLocalizedFeatureString();
                    v92 = givenName;
                    PKLocalizedFeatureString();
                  }
                  v59 = ;
                  [(PKDashboardPassMessage *)v31 setTitle:v96, v92];
                  [(PKDashboardPassMessage *)v31 setMessage:v59];
                  v60 = [(PKDashboardPaymentPassDataSource *)selfCopy _messageImageWithName:@"DeliveryBox" extension:@"pdf"];
                  [(PKDashboardPassMessage *)v31 setImage:v60];
                  v105 = v31;

                  shipmentTrackingURL3 = [v12 shipmentTrackingURL];

                  PKLocalizedFeatureString();
                  if (shipmentTrackingURL3)
                    v62 = {;
                    [(PKDashboardPassMessage *)v31 setButtonTitle:v62];

                    v128[0] = MEMORY[0x1E69E9820];
                    v128[1] = 3221225472;
                    v128[2] = __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_11;
                    v128[3] = &unk_1E801E120;
                    v128[4] = v12;
                    objc_copyWeak(&v129, &location);
                    [(PKDashboardPassMessage *)v31 setActionOnButtonPress:v128];
                    objc_destroyWeak(&v129);
                  }

                  else
                    v78 = {;
                    [(PKDashboardPassMessage *)v31 setButtonTitle:v78];

                    v126[0] = MEMORY[0x1E69E9820];
                    v126[1] = 3221225472;
                    v126[2] = __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_12;
                    v126[3] = &unk_1E8015548;
                    objc_copyWeak(&v127, &location);
                    [(PKDashboardPassMessage *)v31 setActionOnButtonPress:v126];
                    objc_destroyWeak(&v127);
                  }

                  v123[0] = MEMORY[0x1E69E9820];
                  v123[1] = 3221225472;
                  v123[2] = __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_13;
                  v123[3] = &unk_1E80110E0;
                  objc_copyWeak(&v125, &location);
                  v124 = v106;
                  [(PKDashboardPassMessage *)v31 setActionOnDismiss:v123];
                  v79 = [(PKDashboardPaymentPassDataSource *)selfCopy _physicalCardMessageIdentifierFromIdentifier:@"physicalCardShippedNoDate" physicalCard:v12];
                  [(PKDashboardPassMessage *)v31 setIdentifier:v79];

                  [(PKDashboardPassMessage *)v31 setReportToAnalytics:1];
                  v80 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:selfCopy->_pass];
                  [(PKDashboardPassMessage *)v31 setAnalyticsReporterSubject:v80];

                  [v101 addObject:v31];
                  objc_destroyWeak(&v125);

                  goto LABEL_96;
                }

LABEL_97:

                goto LABEL_98;
              }

              if (activity == 3)
              {
                v50 = objc_alloc_init(PKDashboardPassMessage);
                if (isCurrentUser)
                {
                  v100 = PKLocalizedFeatureString();
                  PKLocalizedFeatureString();
                }

                else
                {
                  v100 = PKLocalizedFeatureString();
                  v92 = givenName;
                  PKLocalizedFeatureString();
                }
                v68 = ;
                [(PKDashboardPassMessage *)v50 setTitle:v100, v92];
                [(PKDashboardPassMessage *)v50 setMessage:v68];
                v69 = PKLocalizedFeatureString();
                [(PKDashboardPassMessage *)v50 setButtonTitle:v69];

                v70 = [(PKDashboardPaymentPassDataSource *)selfCopy _messageImageWithName:@"MessageAlert" extension:@"pdf"];
                [(PKDashboardPassMessage *)v50 setImage:v70];

                v116[0] = MEMORY[0x1E69E9820];
                v116[1] = 3221225472;
                v116[2] = __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_16;
                v116[3] = &unk_1E8015548;
                objc_copyWeak(&v117, &location);
                [(PKDashboardPassMessage *)v50 setActionOnButtonPress:v116];
                v71 = [(PKDashboardPaymentPassDataSource *)selfCopy _physicalCardMessageIdentifierFromIdentifier:@"physicalCardFixShippingAddress" physicalCard:v12];
                [(PKDashboardPassMessage *)v50 setIdentifier:v71];

                [(PKDashboardPassMessage *)v50 setReportToAnalytics:1];
                v72 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:selfCopy->_pass];
                [(PKDashboardPassMessage *)v50 setAnalyticsReporterSubject:v72];

                [v101 addObject:v50];
                objc_destroyWeak(&v117);

                goto LABEL_97;
              }

              if (activity != 4)
              {
                goto LABEL_97;
              }

              v36 = objc_alloc_init(PKDashboardPassMessage);
              v37 = PKLocalizedFeatureString();
              [(PKDashboardPassMessage *)v36 setTitle:v37];
              v105 = v36;

              localizedReason = [(PKDashboardPassMessage *)v27 localizedReason];
              v39 = localizedReason;
              if (!localizedReason)
              {
                v95 = PKLocalizedFeatureString();
                v39 = v95;
              }

              [(PKDashboardPassMessage *)v36 setMessage:v39];
              if (!localizedReason)
              {
              }

              v40 = PKLocalizedFeatureString();
              [(PKDashboardPassMessage *)v36 setButtonTitle:v40];

              v41 = [(PKDashboardPaymentPassDataSource *)selfCopy _messageImageWithName:@"MessageAlert" extension:@"pdf"];
              [(PKDashboardPassMessage *)v36 setImage:v41];

              v114[0] = MEMORY[0x1E69E9820];
              v114[1] = 3221225472;
              v114[2] = __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_17;
              v114[3] = &unk_1E8015548;
              objc_copyWeak(&v115, &location);
              [(PKDashboardPassMessage *)v36 setActionOnButtonPress:v114];
              v42 = [(PKDashboardPaymentPassDataSource *)selfCopy _physicalCardMessageIdentifierFromIdentifier:@"physicalCardOrderIssue" physicalCard:v12];
              [(PKDashboardPassMessage *)v36 setIdentifier:v42];

              [(PKDashboardPassMessage *)v36 setReportToAnalytics:1];
              v43 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:selfCopy->_pass];
              [(PKDashboardPassMessage *)v36 setAnalyticsReporterSubject:v43];

              [v101 addObject:v36];
              objc_destroyWeak(&v115);
            }

LABEL_96:

            goto LABEL_97;
          }

LABEL_99:

          self = selfCopy;
        }

        v10 = [obj countByEnumeratingWithState:&v147 objects:v156 count:16];
      }

      while (v10);
    }

    if ([(PKAccount *)selfCopy->_account state]== 1 && [(PKPhysicalCardController *)selfCopy->_physicalCardController physicalCardBlocked])
    {
      v85 = objc_alloc_init(PKDashboardPassMessage);
      [(PKDashboardPassMessage *)v85 setIdentifier:@"physicalCardSuspended"];
      v86 = PKLocalizedFeatureString();
      [(PKDashboardPassMessage *)v85 setTitle:v86];

      v87 = PKLocalizedFeatureString();
      [(PKDashboardPassMessage *)v85 setMessage:v87];

      v88 = [(PKDashboardPaymentPassDataSource *)selfCopy _messageImageWithName:@"MessageAlert" extension:@"pdf"];
      [(PKDashboardPassMessage *)v85 setImage:v88];

      v89 = PKLocalizedFeatureString();
      [(PKDashboardPassMessage *)v85 setButtonTitle:v89];

      v112[0] = MEMORY[0x1E69E9820];
      v112[1] = 3221225472;
      v112[2] = __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_18;
      v112[3] = &unk_1E8015548;
      objc_copyWeak(&v113, &location);
      [(PKDashboardPassMessage *)v85 setActionOnButtonPress:v112];
      [v101 addObject:v85];
      objc_destroyWeak(&v113);
    }

    if ([v101 count])
    {
      v90 = [v101 copy];
    }

    else
    {
      v90 = 0;
    }

    objc_destroyWeak(&location);
  }

  else
  {
    v90 = 0;
  }

  return v90;
}

void __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  PKSharedCacheSetBoolForKey();
  v1 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained reloadMessagesAfterMessageInteraction];
    v1 = WeakRetained;
  }
}

void __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 51);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_3;
    v4[3] = &unk_1E801E0D8;
    v4[4] = v2;
    [v3 orderFlowViewControllerForReason:0 content:0 completion:v4];
  }
}

void __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  if (v8)
  {
    v5 = [[PKNavigationController alloc] initWithRootViewController:v8];
    [(PKNavigationController *)v5 setModalPresentationStyle:2];
  }

  else
  {
    v5 = PKAlertForDisplayableErrorWithHandlers(a3, 0, 0, 0);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 800));
  v7 = [WeakRetained navigationController];
  [v7 presentViewController:v5 animated:1 completion:0];
}

void __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    PKOpenURL();
    WeakRetained = v2;
  }
}

void __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v1 = [MEMORY[0x1E695DF00] date];
  PKSharedCacheSetObjectForKey();

  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained reloadMessagesAfterMessageInteraction];
    v2 = WeakRetained;
  }
}

void __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _presentActivatePhysicalCard:*(a1 + 32) accountUser:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    PKOpenURL();
    WeakRetained = v2;
  }
}

void __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v2 = [PKBusinessChatPhysicalCardContext alloc];
    v3 = [v7[99] frontmostPassView];
    v4 = [v3 pass];
    v5 = [v4 paymentPass];
    v6 = [(PKBusinessChatPhysicalCardContext *)v2 initWithPaymentPass:v5 intent:3];

    [v7 _presentAccountResolution:3 forBusinessChatContext:v6 completion:0];
    WeakRetained = v7;
  }
}

void __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v1 = [MEMORY[0x1E695DF00] date];
  PKSharedCacheSetObjectForKey();

  [WeakRetained reloadMessagesAfterMessageInteraction];
}

void __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_11(uint64_t a1)
{
  v3 = [*(a1 + 32) shipmentTrackingURL];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    PKOpenURL();
  }
}

void __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v2 = [PKBusinessChatPhysicalCardContext alloc];
    v3 = [v7[99] frontmostPassView];
    v4 = [v3 pass];
    v5 = [v4 paymentPass];
    v6 = [(PKBusinessChatPhysicalCardContext *)v2 initWithPaymentPass:v5 intent:2];

    [v7 _presentAccountResolution:3 forBusinessChatContext:v6 completion:0];
    WeakRetained = v7;
  }
}

void __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v1 = [MEMORY[0x1E695DF00] date];
  PKSharedCacheSetObjectForKey();

  [WeakRetained reloadMessagesAfterMessageInteraction];
}

void __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/kb/HT209434?cid=iOS_UI_AppleCard_article_HT209434#activate"];
    PKOpenURL();

    WeakRetained = v3;
  }
}

void __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E695DF00] date];
    PKSharedCacheSetObjectForKey();

    [v3 reloadMessagesAfterMessageInteraction];
    WeakRetained = v3;
  }
}

void __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_16(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v2 = [PKBusinessChatPhysicalCardContext alloc];
    v3 = [v7[99] frontmostPassView];
    v4 = [v3 pass];
    v5 = [v4 paymentPass];
    v6 = [(PKBusinessChatPhysicalCardContext *)v2 initWithPaymentPass:v5 intent:1];

    [v7 _presentAccountResolution:3 forBusinessChatContext:v6 completion:0];
    WeakRetained = v7;
  }
}

void __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_17(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v2 = [PKBusinessChatPhysicalCardContext alloc];
    v3 = [v7[99] frontmostPassView];
    v4 = [v3 pass];
    v5 = [v4 paymentPass];
    v6 = [(PKBusinessChatPhysicalCardContext *)v2 initWithPaymentPass:v5 intent:1];

    [v7 _presentAccountResolution:3 forBusinessChatContext:v6 completion:0];
    WeakRetained = v7;
  }
}

void __60__PKDashboardPaymentPassDataSource__messagesForPhysicalCard__block_invoke_18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [[PKBusinessChatAccountStateContext alloc] initWithAccount:v3[48] paymentPass:v3[119] eligibleForRecoveryPaymentPlan:0];
    [v3 _presentAccountResolution:2 forBusinessChatContext:v2 completion:0];

    WeakRetained = v3;
  }
}

- (id)_physicalCardMessageIdentifierFromIdentifier:(id)identifier physicalCard:(id)card
{
  v5 = MEMORY[0x1E696AEC0];
  cardCopy = card;
  identifierCopy = identifier;
  v8 = [v5 alloc];
  identifier = [cardCopy identifier];

  v10 = [v8 initWithFormat:@"%@-%@", identifierCopy, identifier];

  return v10;
}

- (id)_lastPhysicalCardMessageDateKeyForPhysicalCardIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = MEMORY[0x1E696AEC0];
    identifierCopy = identifier;
    v5 = [v3 alloc];
    identifierCopy = [v5 initWithFormat:@"%@-%@", *MEMORY[0x1E69BC4C8], identifierCopy];
  }

  else
  {
    identifierCopy = 0;
  }

  return identifierCopy;
}

- (void)_presentActivatePhysicalCard:(id)card accountUser:(id)user
{
  userCopy = user;
  cardCopy = card;
  v11 = [[PKPhysicalCardManualActivationViewController alloc] initWithAccountService:self->_accountService account:self->_account accountUser:userCopy paymentPass:self->_pass physicalCard:cardCopy activationCode:0];

  v8 = [[PKNavigationController alloc] initWithRootViewController:v11];
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  navigationController = [WeakRetained navigationController];
  [navigationController presentViewController:v8 animated:1 completion:0];
}

- (id)_downloadMessageIconURLAndReloadIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if (necessaryCopy)
  {
    os_unfair_lock_lock(&self->_lockIcons);
    v5 = [(NSMutableDictionary *)self->_icons objectForKey:necessaryCopy];
    os_unfair_lock_unlock(&self->_lockIcons);
    if (v5)
    {
      goto LABEL_10;
    }

    mEMORY[0x1E69B8A08] = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
    v7 = [mEMORY[0x1E69B8A08] cachedDataForURL:necessaryCopy];

    v8 = [MEMORY[0x1E69DCAB8] imageWithData:v7];
    if (v8)
    {
      v5 = v8;
      os_unfair_lock_lock(&self->_lockIcons);
      [(NSMutableDictionary *)self->_icons setObject:v5 forKey:necessaryCopy];
      os_unfair_lock_unlock(&self->_lockIcons);

      goto LABEL_10;
    }

    os_unfair_lock_lock(&self->_lockIcons);
    if (([(NSMutableSet *)self->_iconDownloads containsObject:necessaryCopy]& 1) != 0 || ([(NSMutableSet *)self->_iconFailedDownloads containsObject:necessaryCopy]& 1) != 0)
    {
      os_unfair_lock_unlock(&self->_lockIcons);
    }

    else
    {
      [(NSMutableSet *)self->_iconDownloads addObject:necessaryCopy];
      os_unfair_lock_unlock(&self->_lockIcons);
      objc_initWeak(&location, self);
      mEMORY[0x1E69B8A08]2 = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __80__PKDashboardPaymentPassDataSource__downloadMessageIconURLAndReloadIfNecessary___block_invoke;
      v11[3] = &unk_1E801E148;
      objc_copyWeak(&v13, &location);
      v12 = necessaryCopy;
      [mEMORY[0x1E69B8A08]2 downloadFromUrl:v12 completionHandler:v11];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  v5 = 0;
LABEL_10:

  return v5;
}

void __80__PKDashboardPaymentPassDataSource__downloadMessageIconURLAndReloadIfNecessary___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 134);
    [*&v7[136]._os_unfair_lock_opaque removeObject:*(a1 + 32)];
    if (a4 || ![v11 length])
    {
      [*&v7[138]._os_unfair_lock_opaque addObject:*(a1 + 32)];
    }

    else if ([v11 length])
    {
      v10 = [MEMORY[0x1E69DCAB8] imageWithData:v11];
      if (v10)
      {
        LOBYTE(v7[142]._os_unfair_lock_opaque) = 1;
        [*&v7[140]._os_unfair_lock_opaque setObject:v10 forKey:*(a1 + 32)];
      }
    }

    os_unfair_lock_opaque_low = LOBYTE(v7[142]._os_unfair_lock_opaque);
    v9 = [*&v7[136]._os_unfair_lock_opaque count];
    os_unfair_lock_unlock(v7 + 134);
    if (!v9 && os_unfair_lock_opaque_low)
    {
      os_unfair_lock_lock(v7 + 134);
      LOBYTE(v7[142]._os_unfair_lock_opaque) = 0;
      os_unfair_lock_unlock(v7 + 134);
      [(os_unfair_lock_s *)v7 reloadMessagesWithReason:@"dashboard icon downloaded"];
    }
  }
}

- (id)_messagesForPeerPaymentPendingRequests
{
  v49 = *MEMORY[0x1E69E9840];
  v25 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  val = self;
  obj = self->_incomingRequests;
  v33 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v33)
  {
    v31 = *v45;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v45 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v44 + 1) + 8 * i);
        _contactResolver = [(PKDashboardPaymentPassDataSource *)val _contactResolver];
        requesterAddress = [v4 requesterAddress];
        v7 = [_contactResolver contactForHandle:requesterAddress];

        v8 = MEMORY[0x1E69B8F30];
        requesterAddress2 = [v4 requesterAddress];
        v10 = [v8 displayNameForCounterpartHandle:requesterAddress2 contact:v7];

        currencyAmount = [v4 currencyAmount];
        amount = [currencyAmount amount];
        currency = [currencyAmount currency];
        v14 = PKFormattedCurrencyStringFromNumber();

        if (v10 && v14)
        {
          expiryDate = [v4 expiryDate];
          lastDismissedDate = [v4 lastDismissedDate];
          if (!lastDismissedDate)
          {
            goto LABEL_14;
          }

          currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
          v16 = [(PKDashboardPassMessage *)currentCalendar components:16 fromDate:lastDismissedDate toDate:expiryDate options:0];
          date = [MEMORY[0x1E695DF00] date];
          v34 = [(PKDashboardPassMessage *)currentCalendar components:16 fromDate:date toDate:expiryDate options:0];

          if ([v16 day] != 1 && objc_msgSend(v16, "day") && (objc_msgSend(v16, "day") < 2 || objc_msgSend(v34, "day") <= 1))
          {

LABEL_14:
            currentCalendar = objc_alloc_init(PKDashboardPassMessage);
            requestToken = [v4 requestToken];
            v34 = v10;
            v29 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPen_2.isa, &stru_1F3BD5BF0.isa, v14);
            [(PKDashboardPassMessage *)currentCalendar setType:3];
            [(PKDashboardPassMessage *)currentCalendar setIdentifier:requestToken];
            [(PKDashboardPassMessage *)currentCalendar setTitle:v34];
            [(PKDashboardPassMessage *)currentCalendar setSecondaryTitle:v29];
            currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
            date2 = [MEMORY[0x1E695DF00] date];
            v20 = PKStartOfDay();
            v28 = [currentCalendar2 components:16 fromDate:v20 toDate:expiryDate options:0];

            v21 = [v28 day];
            if (v21 == 1)
            {
              v27 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPen_4.isa);
            }

            else
            {
              if (v21)
              {
                PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPen_5.isa, &cfstr_Ld.isa, v21);
              }

              else
              {
                PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPen_3.isa);
              }
              v27 = ;
            }

            memo = [v4 memo];
            if ([memo length])
            {
              [(PKDashboardPassMessage *)currentCalendar setMessage:memo];
              [(PKDashboardPassMessage *)currentCalendar setSecondaryMessage:v27];
            }

            else
            {
              [(PKDashboardPassMessage *)currentCalendar setMessage:v27];
            }

            if (!v7)
            {
              v7 = objc_alloc_init(MEMORY[0x1E695CF18]);
              [v7 setContactType:0];
            }

            [(PKDashboardPassMessage *)currentCalendar setAvatarContact:v7];
            v22 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPen_6.isa);
            [(PKDashboardPassMessage *)currentCalendar setButtonTitle:v22];
            -[PKDashboardPassMessage setShowSpinner:](currentCalendar, "setShowSpinner:", [requestToken isEqualToString:val->_incomingRequestActionInProgressRequestToken]);
            objc_initWeak(&location, val);
            v41[0] = MEMORY[0x1E69E9820];
            v41[1] = 3221225472;
            v41[2] = __74__PKDashboardPaymentPassDataSource__messagesForPeerPaymentPendingRequests__block_invoke;
            v41[3] = &unk_1E8014F68;
            objc_copyWeak(&v42, &location);
            v41[4] = v4;
            [(PKDashboardPassMessage *)currentCalendar setActionOnButtonPress:v41];
            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = __74__PKDashboardPaymentPassDataSource__messagesForPeerPaymentPendingRequests__block_invoke_2;
            v38[3] = &unk_1E8011828;
            objc_copyWeak(&v40, &location);
            v38[4] = v4;
            v16 = requestToken;
            v39 = v16;
            [(PKDashboardPassMessage *)currentCalendar setActionOnDismiss:v38];
            [v25 addObject:currentCalendar];

            objc_destroyWeak(&v40);
            objc_destroyWeak(&v42);
            objc_destroyWeak(&location);
          }
        }
      }

      v33 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v33);
  }

  v23 = [v25 copy];

  return v23;
}

void __74__PKDashboardPaymentPassDataSource__messagesForPeerPaymentPendingRequests__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _pendingRequestActionButtonPressedWithRequest:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __74__PKDashboardPaymentPassDataSource__messagesForPeerPaymentPendingRequests__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = MEMORY[0x1E69DC650];
    v4 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPen_7.isa);
    v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPen_8.isa);
    v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

    v7 = MEMORY[0x1E69DC648];
    v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPen_9.isa);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __74__PKDashboardPaymentPassDataSource__messagesForPeerPaymentPendingRequests__block_invoke_3;
    v29[3] = &unk_1E80178E8;
    objc_copyWeak(&v30, (a1 + 48));
    v29[4] = *(a1 + 32);
    v9 = [v7 actionWithTitle:v8 style:0 handler:v29];

    v10 = MEMORY[0x1E69DC648];
    v11 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPen_10.isa);
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __74__PKDashboardPaymentPassDataSource__messagesForPeerPaymentPendingRequests__block_invoke_4;
    v24 = &unk_1E801E1E8;
    objc_copyWeak(&v28, (a1 + 48));
    v12 = *(a1 + 40);
    v13 = *(a1 + 32);
    v25 = v12;
    v26 = v13;
    v14 = v6;
    v27 = v14;
    v15 = [v10 actionWithTitle:v11 style:0 handler:&v21];

    v16 = MEMORY[0x1E69DC648];
    v17 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPen_11.isa);
    v18 = [v16 actionWithTitle:v17 style:1 handler:{0, v21, v22, v23, v24}];

    [v14 addAction:v15];
    [v14 addAction:v9];
    [v14 addAction:v18];
    [v14 setPreferredAction:v15];
    PKAccessibilityIDAlertSet(v14, *MEMORY[0x1E69B9618]);
    [v9 setAccessibilityIdentifier:*MEMORY[0x1E69B9BE0]];
    v19 = objc_loadWeakRetained(WeakRetained + 100);
    v20 = [v19 navigationController];

    [v20 presentViewController:v14 animated:1 completion:0];
    objc_destroyWeak(&v28);

    objc_destroyWeak(&v30);
  }
}

void __74__PKDashboardPaymentPassDataSource__messagesForPeerPaymentPendingRequests__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained dismissPendingRequestDashboardMessageWithRequest:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __74__PKDashboardPaymentPassDataSource__messagesForPeerPaymentPendingRequests__block_invoke_4(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v5 = WeakRetained;
  if (WeakRetained && !*(WeakRetained + 90))
  {
    objc_storeStrong(WeakRetained + 90, a1[4]);
    [v5 reloadMessagesWithReason:@"in progress pending request"];
    v6 = [objc_alloc(MEMORY[0x1E69B8F28]) initWithPeerPaymentWebService:v5[118]];
    v7 = *MEMORY[0x1E69BC348];
    v8 = [a1[5] requestToken];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__PKDashboardPaymentPassDataSource__messagesForPeerPaymentPendingRequests__block_invoke_5;
    v11[3] = &unk_1E801E1C0;
    objc_copyWeak(&v15, a1 + 7);
    v12 = a1[4];
    v9 = a1[6];
    v10 = a1[5];
    v13 = v9;
    v14 = v10;
    [v6 performPendingRequestAction:v7 withRequestToken:v8 completion:v11];

    objc_destroyWeak(&v15);
  }
}

void __74__PKDashboardPaymentPassDataSource__messagesForPeerPaymentPendingRequests__block_invoke_5(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = *(WeakRetained + 90);
    *(WeakRetained + 90) = 0;

    [v8 reloadMessagesAfterMessageInteraction];
    if (a2)
    {
      [v8 dismissPendingRequestDashboardMessageWithRequest:*(a1 + 48)];
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v6 localizedDescription];
        *buf = 138412290;
        v19 = v11;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "PKDashboardPaymentPassDataSource: Error attempting to reject pending request: %@", buf, 0xCu);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __74__PKDashboardPaymentPassDataSource__messagesForPeerPaymentPendingRequests__block_invoke_1528;
      block[3] = &unk_1E801E198;
      v13 = v6;
      objc_copyWeak(&v17, (a1 + 56));
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = v8;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      objc_destroyWeak(&v17);
    }
  }
}

void __74__PKDashboardPaymentPassDataSource__messagesForPeerPaymentPendingRequests__block_invoke_1528(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = MEMORY[0x1E69DC650];
  v4 = [v2 objectForKey:*MEMORY[0x1E696A588]];
  v5 = [v2 objectForKey:*MEMORY[0x1E696A598]];
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = MEMORY[0x1E69DC648];
  v8 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PKDashboardPaymentPassDataSource__messagesForPeerPaymentPendingRequests__block_invoke_2_1532;
  v13[3] = &unk_1E801E170;
  objc_copyWeak(&v16, (a1 + 64));
  v9 = v2;
  v14 = v9;
  v15 = *(a1 + 40);
  v10 = [v7 actionWithTitle:v8 style:0 handler:v13];

  [v6 addAction:v10];
  WeakRetained = objc_loadWeakRetained((*(a1 + 56) + 800));
  v12 = [WeakRetained navigationController];

  [v12 presentViewController:v6 animated:1 completion:0];
  objc_destroyWeak(&v16);
}

void __74__PKDashboardPaymentPassDataSource__messagesForPeerPaymentPendingRequests__block_invoke_2_1532(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) objectForKey:*MEMORY[0x1E696AA08]];
    v4 = [v3 domain];
    v5 = [v4 isEqualToString:*MEMORY[0x1E69BC388]];

    if (v5)
    {
      v6 = [v3 code];
      if ((v6 - 40314) <= 0x13 && ((1 << (v6 - 122)) & 0xC0003) != 0)
      {
        v8 = [WeakRetained[118] peerPaymentService];
        v10[0] = *(a1 + 40);
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
        [v8 deletePeerPaymentPendingRequestsForRequestTokens:v9];
      }
    }
  }
}

- (void)_pendingRequestActionButtonPressedWithRequest:(id)request
{
  requestCopy = request;
  requestToken = [requestCopy requestToken];
  v6 = [objc_alloc(MEMORY[0x1E69B8F28]) initWithPeerPaymentWebService:self->_peerPaymentWebService];
  v7 = [PKPeerPaymentRemoteMessagesComposer alloc];
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  navigationController = [WeakRetained navigationController];
  v10 = [(PKPeerPaymentRemoteMessagesComposer *)v7 initWithPeerPaymentController:v6 presentingViewController:navigationController actionType:1 sourceType:1];

  if (!self->_incomingRequestActionInProgressRequestToken)
  {
    objc_storeStrong(&self->_incomingRequestActionInProgressRequestToken, requestToken);
    [(PKDashboardPaymentPassDataSource *)self reloadMessagesWithReason:@"request action in progress"];
    objc_initWeak(&location, self);
    requesterAddress = [requestCopy requesterAddress];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__PKDashboardPaymentPassDataSource__pendingRequestActionButtonPressedWithRequest___block_invoke;
    v12[3] = &unk_1E8013220;
    objc_copyWeak(&v15, &location);
    v13 = requestCopy;
    v14 = v10;
    [(PKPeerPaymentRemoteMessagesComposer *)v14 validateRecipientWithAddress:requesterAddress completion:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __82__PKDashboardPaymentPassDataSource__pendingRequestActionButtonPressedWithRequest___block_invoke(id *a1, int a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = objc_alloc(MEMORY[0x1E69B8FF0]);
      v7 = [a1[4] requestToken];
      v8 = [v6 initWithRequestToken:v7 deviceScoreIdentifier:0 expiryDate:0];

      v9 = a1[5];
      v10 = [a1[4] currencyAmount];
      v11 = [a1[4] memo];
      v12 = [a1[4] sessionID];
      v13 = objc_loadWeakRetained(v5 + 100);
      v14 = [v13 navigationController];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __82__PKDashboardPaymentPassDataSource__pendingRequestActionButtonPressedWithRequest___block_invoke_2;
      v16[3] = &unk_1E8013220;
      objc_copyWeak(&v19, a1 + 6);
      v17 = a1[5];
      v18 = a1[4];
      [v9 presentRemoteMessageComposerWithAmount:v10 requestToken:v8 memo:v11 sessionID:v12 overViewController:v14 completion:v16];

      objc_destroyWeak(&v19);
    }

    else
    {
      v15 = WeakRetained[90];
      WeakRetained[90] = 0;

      [v5 reloadMessagesAfterMessageInteraction];
    }
  }
}

void __82__PKDashboardPaymentPassDataSource__pendingRequestActionButtonPressedWithRequest___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained[90];
    WeakRetained[90] = 0;
    v8 = WeakRetained;

    v6 = objc_loadWeakRetained(v8 + 100);
    v7 = [v6 navigationController];
    [v7 dismissViewControllerAnimated:1 completion:0];

    if (a2)
    {
      [v8 dismissPendingRequestDashboardMessageWithRequest:*(a1 + 40)];
    }

    else
    {
      [v8 reloadMessagesAfterMessageInteraction];
    }

    WeakRetained = v8;
  }
}

- (void)dismissPendingRequestDashboardMessageWithRequest:(id)request
{
  v8[1] = *MEMORY[0x1E69E9840];
  peerPaymentWebService = self->_peerPaymentWebService;
  requestCopy = request;
  peerPaymentService = [(PKPeerPaymentWebService *)peerPaymentWebService peerPaymentService];
  date = [MEMORY[0x1E695DF00] date];
  [requestCopy setLastDismissedDate:date];

  v8[0] = requestCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  [peerPaymentService insertOrUpdatePeerPaymentPendingRequests:v7 shouldScheduleNotifications:0];
}

- (id)_messageForSetUpVirtualCardWithFeatureIdentifier:(unint64_t)identifier
{
  v32[2] = *MEMORY[0x1E69E9840];
  v5 = PKDismissedKeyForPass();
  BoolForKey = PKSharedCacheGetBoolForKey();

  if ((BoolForKey & 1) != 0 || identifier == 1 && ([(PKPeerPaymentAccount *)self->_peerPaymentAccount state]- 5) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_alloc_init(PKDashboardPassMessage);
    [(PKDashboardPassMessage *)v7 setType:0];
    [(PKDashboardPassMessage *)v7 setIdentifier:@"virtualCardSetUp"];
    if (identifier == 1)
    {
      if (PKFPANAutoFillEnabled())
      {
        v8 = PKLocalizedCashVPANString(&cfstr_VirtualCardDas.isa);
        [(PKDashboardPassMessage *)v7 setTitle:v8];

        PKLocalizedCashVPANString(&cfstr_VirtualCardDas_0.isa);
      }

      else
      {
        v11 = PKLocalizedCashVPANString(&cfstr_VirtualCardDas_1.isa);
        [(PKDashboardPassMessage *)v7 setTitle:v11];

        PKLocalizedCashVPANString(&cfstr_VirtualCardDas_2.isa);
      }
      v9 = ;
    }

    else
    {
      v10 = PKLocalizedVirtualCardString(&cfstr_VirtualCardDas_3.isa);
      [(PKDashboardPassMessage *)v7 setTitle:v10];

      v9 = PKLocalizedVirtualCardString(&cfstr_VirtualCardDas_4.isa);
    }

    v12 = v9;
    [(PKDashboardPassMessage *)v7 setMessage:v9];

    v13 = PKLocalizedVirtualCardString(&cfstr_VirtualCardDas_5.isa);
    [(PKDashboardPassMessage *)v7 setButtonTitle:v13];

    currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
    if ([currentTraitCollection userInterfaceStyle] == 2)
    {
      [MEMORY[0x1E69DC888] systemGray4Color];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemExtraLightGrayColor];
    }
    v15 = ;

    v16 = [PKDashboardPassMessageImageDescriptorSymbol alloc];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v18 = [(PKDashboardPassMessageImageDescriptorSymbol *)v16 initWithName:@"creditcard.and.123" tintColor:labelColor backgroundColor:v15];

    [(PKDashboardPassMessage *)v7 setImageDescriptor:v18];
    v19 = PKDefaultPaymentNetworkNameForPaymentPass();
    v20 = v19;
    if (v19)
    {
      v21 = *MEMORY[0x1E69BB1E8];
      v22 = *MEMORY[0x1E69BAD48];
      v31[0] = *MEMORY[0x1E69BA440];
      v31[1] = v22;
      v32[0] = v21;
      v32[1] = v19;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
      [(PKDashboardPassMessage *)v7 setAdditionalEventAnalyticsOnButtonPress:v23];
    }

    [(PKDashboardPassMessage *)v7 setReportToAnalytics:1];
    v24 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:self->_pass];
    [(PKDashboardPassMessage *)v7 setAnalyticsReporterSubject:v24];

    objc_initWeak(&location, self);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __85__PKDashboardPaymentPassDataSource__messageForSetUpVirtualCardWithFeatureIdentifier___block_invoke;
    v28[3] = &unk_1E8015548;
    objc_copyWeak(&v29, &location);
    [(PKDashboardPassMessage *)v7 setActionOnButtonPress:v28];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __85__PKDashboardPaymentPassDataSource__messageForSetUpVirtualCardWithFeatureIdentifier___block_invoke_2;
    v26[3] = &unk_1E8010998;
    objc_copyWeak(&v27, &location);
    [(PKDashboardPassMessage *)v7 setActionOnDismiss:v26];
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __85__PKDashboardPaymentPassDataSource__messageForSetUpVirtualCardWithFeatureIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = [[PKVirtualCardEnrollmentViewController alloc] initWithPaymentPass:*(v6 + 119) context:0 delegate:v6];
    v3 = [[PKNavigationController alloc] initWithRootViewController:v2];
    [(PKNavigationController *)v3 setModalPresentationStyle:2];
    v4 = objc_loadWeakRetained(v6 + 100);
    v5 = [v4 navigationController];
    [v5 presentViewController:v3 animated:1 completion:0];

    WeakRetained = v6;
  }
}

void __85__PKDashboardPaymentPassDataSource__messageForSetUpVirtualCardWithFeatureIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = PKDismissedKeyForPass();
    PKSharedCacheSetBoolForKey();

    [v3 reloadMessagesAfterMessageInteraction];
    WeakRetained = v3;
  }
}

- (id)_messageForVirtualCardEnabledWithFeatureIdentifier:(unint64_t)identifier
{
  v5 = PKDismissedKeyForPass();
  BoolForKey = PKSharedCacheGetBoolForKey();

  if ((BoolForKey & 1) != 0 || identifier == 1 && ([(PKPeerPaymentAccount *)self->_peerPaymentAccount state]- 5) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_alloc_init(PKDashboardPassMessage);
    [(PKDashboardPassMessage *)v7 setType:0];
    [(PKDashboardPassMessage *)v7 setIdentifier:@"virtualCardEnabled"];
    v8 = PKLocalizedVirtualCardString(&cfstr_VirtualCardDas_6.isa);
    [(PKDashboardPassMessage *)v7 setTitle:v8];

    v9 = PKFPANAutoFillEnabled();
    if (identifier == 1)
    {
      if (v9)
      {
        v10 = @"VIRTUAL_CARD_DASHBOARD_ENABLED_BODY_CASH_FPAN";
      }

      else
      {
        v10 = @"VIRTUAL_CARD_DASHBOARD_ENABLED_BODY_CASH";
      }

      v12 = PKLocalizedCashVPANString(&v10->isa);
    }

    else
    {
      if (v9)
      {
        v11 = @"VIRTUAL_CARD_DASHBOARD_FPAN_ENABLED_BODY";
      }

      else
      {
        v11 = @"VIRTUAL_CARD_DASHBOARD_SAFARI_ENABLED_BODY";
      }

      v12 = PKLocalizedVirtualCardString(&v11->isa);
    }

    v13 = v12;
    [(PKDashboardPassMessage *)v7 setMessage:v12];

    currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
    if ([currentTraitCollection userInterfaceStyle] == 2)
    {
      [MEMORY[0x1E69DC888] systemGray4Color];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemExtraLightGrayColor];
    }
    v15 = ;

    v16 = [PKDashboardPassMessageImageDescriptorSymbol alloc];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v18 = [(PKDashboardPassMessageImageDescriptorSymbol *)v16 initWithName:@"creditcard.and.123" tintColor:labelColor backgroundColor:v15];

    [(PKDashboardPassMessage *)v7 setImageDescriptor:v18];
    [(PKDashboardPassMessage *)v7 setReportToAnalytics:1];
    v19 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:self->_pass];
    [(PKDashboardPassMessage *)v7 setAnalyticsReporterSubject:v19];

    v20 = MEMORY[0x1E69BC6D0];
    if (identifier == 1)
    {
      v20 = MEMORY[0x1E69BB790];
    }

    v21 = [MEMORY[0x1E695DFF8] URLWithString:*v20];
    objc_initWeak(&location, self);
    if (v21)
    {
      v22 = PKLocalizedVirtualCardString(&cfstr_VirtualCardDas_11.isa);
      [(PKDashboardPassMessage *)v7 setButtonTitle:v22];

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __87__PKDashboardPaymentPassDataSource__messageForVirtualCardEnabledWithFeatureIdentifier___block_invoke;
      v26[3] = &unk_1E8014F68;
      objc_copyWeak(&v28, &location);
      v27 = v21;
      [(PKDashboardPassMessage *)v7 setActionOnButtonPress:v26];

      objc_destroyWeak(&v28);
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __87__PKDashboardPaymentPassDataSource__messageForVirtualCardEnabledWithFeatureIdentifier___block_invoke_2;
    v24[3] = &unk_1E8010998;
    objc_copyWeak(&v25, &location);
    [(PKDashboardPassMessage *)v7 setActionOnDismiss:v24];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __87__PKDashboardPaymentPassDataSource__messageForVirtualCardEnabledWithFeatureIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    PKOpenURL();
    WeakRetained = v2;
  }
}

void __87__PKDashboardPaymentPassDataSource__messageForVirtualCardEnabledWithFeatureIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = PKDismissedKeyForPass();
    PKSharedCacheSetBoolForKey();

    [v3 reloadMessagesAfterMessageInteraction];
    WeakRetained = v3;
  }
}

- (void)virtualCardEnrollmentViewController:(id)controller didCompleteWithSuccess:(BOOL)success
{
  presentingViewController = [controller presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (id)_replaceDashboardMessagePlaceholders:(id)placeholders
{
  placeholdersCopy = placeholders;
  v5 = *MEMORY[0x1E69BB888];
  redeemRewardsFeatureDescriptor = [(PKAccount *)self->_account redeemRewardsFeatureDescriptor];
  savingsAPY = [redeemRewardsFeatureDescriptor savingsAPY];

  if (savingsAPY)
  {
    v8 = [(NSNumberFormatter *)self->_formatterPercentage stringFromNumber:savingsAPY];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(PKDashboardPaymentPassDataSource *)self _replaceDashboardMessage:placeholdersCopy placeholder:v5 replacement:v8];

  return v9;
}

- (id)_replaceDashboardMessage:(id)message placeholder:(id)placeholder replacement:(id)replacement
{
  v30 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  placeholderCopy = placeholder;
  replacementCopy = replacement;
  dialogRequest = [messageCopy dialogRequest];
  title = [messageCopy title];
  message = [messageCopy message];
  title2 = [dialogRequest title];
  message2 = [dialogRequest message];
  v26 = title;
  v14 = [title containsString:placeholderCopy];
  v15 = [message containsString:placeholderCopy];
  v16 = [title2 containsString:placeholderCopy];
  v17 = [message2 containsString:placeholderCopy];
  v18 = v17;
  if ((v14 & 1) == 0 && (v15 & 1) == 0 && (v16 & 1) == 0 && !v17)
  {
    goto LABEL_11;
  }

  if (replacementCopy)
  {
    if (v14)
    {
      v23 = [v26 stringByReplacingOccurrencesOfString:placeholderCopy withString:replacementCopy];
      [messageCopy setTitle:v23];

      if (!v15)
      {
LABEL_8:
        if (!v16)
        {
          goto LABEL_9;
        }

        goto LABEL_20;
      }
    }

    else if (!v15)
    {
      goto LABEL_8;
    }

    v24 = [message stringByReplacingOccurrencesOfString:placeholderCopy withString:replacementCopy];
    [messageCopy setMessage:v24];

    if (!v16)
    {
LABEL_9:
      if (!v18)
      {
LABEL_11:
        v20 = messageCopy;
        goto LABEL_12;
      }

LABEL_10:
      v19 = [message2 stringByReplacingOccurrencesOfString:placeholderCopy withString:replacementCopy];
      [dialogRequest setMessage:v19];

      goto LABEL_11;
    }

LABEL_20:
    v25 = [title2 stringByReplacingOccurrencesOfString:placeholderCopy withString:replacementCopy];
    [dialogRequest setTitle:v25];

    if (!v18)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v22 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = placeholderCopy;
    _os_log_impl(&dword_1BD026000, v22, OS_LOG_TYPE_DEFAULT, "Unavailable to replace placeholder '%@' for dashboard message", buf, 0xCu);
  }

  v20 = 0;
LABEL_12:

  return v20;
}

- (id)_messagesForInstallmentPlans
{
  v52 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  val = self;
  creditDetails = [(PKAccount *)self->_account creditDetails];
  installmentPlans = [creditDetails installmentPlans];

  if ([installmentPlans count])
  {
    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = PKSharedCacheGetArrayForKey();
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = installmentPlans;
    v38 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (!v38)
    {
      goto LABEL_26;
    }

    v37 = *v48;
    v30 = *MEMORY[0x1E695D850];
    while (1)
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v48 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v47 + 1) + 8 * i);
        identifier = [v5 identifier];
        state = [v5 state];
        if (state == 2)
        {
          payments = [v5 payments];
          firstObject = [payments firstObject];

          statement = [firstObject statement];
          product = [v5 product];
          v11 = 0;
          if (firstObject)
          {
            v39 = 0;
            v8 = 0;
            if (statement)
            {
              if ([firstObject isPaid] && !PKForceNewInstallmentDashboardModule())
              {
                v11 = 0;
                v39 = 0;
                v8 = 0;
              }

              else
              {
                v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"installmentPlanPayment", identifier];
                v39 = PKLocalizedFeatureString();
                amountDue = [firstObject amountDue];
                currencyCode = [firstObject currencyCode];
                v32 = PKCurrencyAmountCreate(amountDue, currencyCode);

                v15 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:v30];
                closingDate = [statement closingDate];
                v17 = [v15 components:8 fromDate:closingDate];
                [v17 month];

                v18 = PKGregorianMonthSpecificLocalizedStringKeyForKey();
                model = [product model];
                [v32 formattedStringValue];
                v28 = v27 = model;
                v11 = PKLocalizedFeatureString();
              }
            }
          }

          else
          {
            v39 = 0;
            v8 = 0;
          }
        }

        else
        {
          if (state != 1)
          {
            v8 = 0;
            v39 = 0;
            v11 = 0;
            goto LABEL_24;
          }

          v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"installmentPlanInitiated", identifier];
          v39 = PKLocalizedFeatureString();
          firstObject = [v5 product];
          statement = [firstObject model];
          v27 = statement;
          v11 = PKLocalizedFeatureString();
        }

        if (v8 && ([v35 containsObject:v8] & 1) == 0)
        {
          v20 = objc_alloc_init(PKDashboardPassMessage);
          [(PKDashboardPassMessage *)v20 setIdentifier:v8];
          [(PKDashboardPassMessage *)v20 setShowDisclosure:1];
          [(PKDashboardPassMessage *)v20 setTitle:v39];
          [(PKDashboardPassMessage *)v20 setMessage:v11];
          v21 = PKLocalizedFeatureString();
          [(PKDashboardPassMessage *)v20 setButtonTitle:v21];

          product2 = [v5 product];
          v23 = [product2 iconURLForScale:0 suffix:PKUIScreenScale()];

          v24 = [(PKDashboardPaymentPassDataSource *)val _downloadMessageIconURLAndReloadIfNecessary:v23];
          if (!v24)
          {
            v24 = [(PKDashboardPaymentPassDataSource *)val _messageImageWithName:@"InstallmentsFallback" extension:@"pdf"];
          }

          [(PKDashboardPassMessage *)v20 setImage:v24, v27, v28];
          objc_initWeak(&location, val);
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __64__PKDashboardPaymentPassDataSource__messagesForInstallmentPlans__block_invoke;
          v44[3] = &unk_1E8014F68;
          objc_copyWeak(&v45, &location);
          v44[4] = v5;
          [(PKDashboardPassMessage *)v20 setActionOnButtonPress:v44];
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __64__PKDashboardPaymentPassDataSource__messagesForInstallmentPlans__block_invoke_2;
          v40[3] = &unk_1E8011828;
          objc_copyWeak(&v43, &location);
          v8 = v8;
          v41 = v8;
          v42 = v35;
          [(PKDashboardPassMessage *)v20 setActionOnDismiss:v40];
          [v31 addObject:v20];

          objc_destroyWeak(&v43);
          objc_destroyWeak(&v45);
          objc_destroyWeak(&location);
        }

LABEL_24:
      }

      v38 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (!v38)
      {
LABEL_26:

        v25 = [v31 copy];
        goto LABEL_28;
      }
    }
  }

  v25 = 0;
LABEL_28:

  return v25;
}

void __64__PKDashboardPaymentPassDataSource__messagesForInstallmentPlans__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [[PKTransactionHistoryViewController alloc] initWithInstallmentPlan:*(a1 + 32) transactionSourceCollection:*(v6 + 106) familyCollection:*(v6 + 104) account:*(v6 + 48) accountUserCollection:*(v6 + 101) physicalCards:*(v6 + 103)];
    v4 = objc_loadWeakRetained(v6 + 100);
    v5 = [v4 navigationController];
    [v5 pushViewController:v3 animated:1];

    WeakRetained = v6;
  }
}

void __64__PKDashboardPaymentPassDataSource__messagesForInstallmentPlans__block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (![*(a1 + 32) hasPrefix:@"installmentPlanPayment"] || (PKStoreDemoModeEnabled() & 1) == 0)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = [v3 arrayByAddingObject:*(a1 + 32)];
    }

    else
    {
      v6[0] = *(a1 + 32);
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    }

    v5 = v4;
    PKSharedCacheSetObjectForKey();
  }

  if (WeakRetained)
  {
    [WeakRetained reloadMessagesAfterMessageInteraction];
  }
}

- (id)_peerPaymentAccountStatusMessage
{
  state = [(PKPeerPaymentAccount *)self->_peerPaymentAccount state];
  stateReason = [(PKPeerPaymentAccount *)self->_peerPaymentAccount stateReason];
  objc_initWeak(&location, self);
  if (state == 2)
  {
    if (stateReason == 5)
    {
      v5 = objc_alloc_init(PKDashboardPassMessage);
      [(PKDashboardPassMessage *)v5 setIdentifier:@"peerPaymentRestrictedAndTerminal"];
      v19 = PKDynamicLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_26.isa);
      [(PKDashboardPassMessage *)v5 setTitle:v19];

      v20 = PKDynamicLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_27.isa);
      [(PKDashboardPassMessage *)v5 setMessage:v20];

      v21 = PKDynamicLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_28.isa);
      [(PKDashboardPassMessage *)v5 setButtonTitle:v21];

      v22 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"MessageAlert" extension:@"pdf"];
      [(PKDashboardPassMessage *)v5 setImage:v22];

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __68__PKDashboardPaymentPassDataSource__peerPaymentAccountStatusMessage__block_invoke_4;
      v24[3] = &unk_1E8015548;
      v10 = &v25;
      objc_copyWeak(&v25, &location);
      [(PKDashboardPassMessage *)v5 setActionOnButtonPress:v24];
      goto LABEL_12;
    }

    if (stateReason == 4)
    {
      v5 = objc_alloc_init(PKDashboardPassMessage);
      [(PKDashboardPassMessage *)v5 setIdentifier:@"peerPaymentRestrictedAndInReview"];
      v11 = PKDynamicLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_23.isa);
      [(PKDashboardPassMessage *)v5 setTitle:v11];

      v12 = PKDynamicLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_24.isa);
      [(PKDashboardPassMessage *)v5 setMessage:v12];

      v13 = PKDynamicLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_25.isa);
      [(PKDashboardPassMessage *)v5 setButtonTitle:v13];

      v14 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"MessageAlert" extension:@"pdf"];
      [(PKDashboardPassMessage *)v5 setImage:v14];

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __68__PKDashboardPaymentPassDataSource__peerPaymentAccountStatusMessage__block_invoke_3;
      v26[3] = &unk_1E8015548;
      v10 = &v27;
      objc_copyWeak(&v27, &location);
      [(PKDashboardPassMessage *)v5 setActionOnButtonPress:v26];
      goto LABEL_12;
    }

LABEL_9:
    v5 = 0;
    goto LABEL_13;
  }

  if (state != 3)
  {
    goto LABEL_9;
  }

  if (stateReason == 5)
  {
    v5 = objc_alloc_init(PKDashboardPassMessage);
    [(PKDashboardPassMessage *)v5 setIdentifier:@"peerPaymentLockedAndTerminal"];
    v15 = PKDynamicLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_20.isa);
    [(PKDashboardPassMessage *)v5 setTitle:v15];

    v16 = PKDynamicLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_21.isa);
    [(PKDashboardPassMessage *)v5 setMessage:v16];

    v17 = PKDynamicLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_22.isa);
    [(PKDashboardPassMessage *)v5 setButtonTitle:v17];

    v18 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"MessageAlert" extension:@"pdf"];
    [(PKDashboardPassMessage *)v5 setImage:v18];

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __68__PKDashboardPaymentPassDataSource__peerPaymentAccountStatusMessage__block_invoke_2;
    v28[3] = &unk_1E8015548;
    v10 = &v29;
    objc_copyWeak(&v29, &location);
    [(PKDashboardPassMessage *)v5 setActionOnButtonPress:v28];
    goto LABEL_12;
  }

  if (stateReason != 4)
  {
    goto LABEL_9;
  }

  v5 = objc_alloc_init(PKDashboardPassMessage);
  [(PKDashboardPassMessage *)v5 setIdentifier:@"peerPaymentLockedAndInReview"];
  v6 = PKDynamicLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_17.isa);
  [(PKDashboardPassMessage *)v5 setTitle:v6];

  v7 = PKDynamicLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_18.isa);
  [(PKDashboardPassMessage *)v5 setMessage:v7];

  v8 = PKDynamicLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_19.isa);
  [(PKDashboardPassMessage *)v5 setButtonTitle:v8];

  v9 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"MessageAlert" extension:@"pdf"];
  [(PKDashboardPassMessage *)v5 setImage:v9];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __68__PKDashboardPaymentPassDataSource__peerPaymentAccountStatusMessage__block_invoke;
  v30[3] = &unk_1E8015548;
  v10 = &v31;
  objc_copyWeak(&v31, &location);
  [(PKDashboardPassMessage *)v5 setActionOnButtonPress:v30];
LABEL_12:
  objc_destroyWeak(v10);
LABEL_13:
  objc_destroyWeak(&location);

  return v5;
}

void __68__PKDashboardPaymentPassDataSource__peerPaymentAccountStatusMessage__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/ht207932?cid=mc-ols-applecash-article_ht207932-ios_ui-03042022#inreview"];
    PKOpenURL();

    WeakRetained = v3;
  }
}

void __68__PKDashboardPaymentPassDataSource__peerPaymentAccountStatusMessage__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/ht207932?cid=mc-ols-applecash-article_ht207932-ios_ui-03102022#locked"];
    PKOpenURL();

    WeakRetained = v3;
  }
}

void __68__PKDashboardPaymentPassDataSource__peerPaymentAccountStatusMessage__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/ht207932?cid=mc-ols-applecash-article_ht207932-ios_ui-03042022#inreview"];
    PKOpenURL();

    WeakRetained = v3;
  }
}

void __68__PKDashboardPaymentPassDataSource__peerPaymentAccountStatusMessage__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/ht207932?cid=mc-ols-applecash-article_ht207932-ios_ui-03102022#restricted"];
    PKOpenURL();

    WeakRetained = v3;
  }
}

- (id)_messageForAMPEnrollment
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = objc_alloc_init(PKDashboardPassMessage);
  [(PKDashboardPassMessage *)v3 setIdentifier:@"ampEnrollment"];
  v4 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:self->_pass];
  [(PKDashboardPassMessage *)v3 setAnalyticsReporterSubject:v4];

  [(PKDashboardPassMessage *)v3 setShowDisclosure:1];
  [(PKDashboardPassMessage *)v3 setShowSpinner:self->_performingAMPEnrollment];
  localizedDescription = [(PKPaymentPass *)self->_pass localizedDescription];
  v6 = PKLocalizedAMPString(&cfstr_PassDashboardA.isa, &stru_1F3BD5BF0.isa, localizedDescription);
  [(PKDashboardPassMessage *)v3 setTitle:v6];

  v7 = PKLocalizedAMPString(&cfstr_PassDashboardA_0.isa);
  [(PKDashboardPassMessage *)v3 setMessage:v7];

  v8 = PKLocalizedAMPString(&cfstr_PassDashboardA_1.isa);
  [(PKDashboardPassMessage *)v3 setButtonTitle:v8];

  [(PKDashboardPassMessage *)v3 setImage:self->_AMPEnrollmentIcon];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__PKDashboardPaymentPassDataSource__messageForAMPEnrollment__block_invoke;
  v12[3] = &unk_1E8015548;
  objc_copyWeak(&v13, &location);
  [(PKDashboardPassMessage *)v3 setActionOnButtonPress:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__PKDashboardPaymentPassDataSource__messageForAMPEnrollment__block_invoke_2;
  v10[3] = &unk_1E8010998;
  objc_copyWeak(&v11, &location);
  [(PKDashboardPassMessage *)v3 setActionOnDismiss:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v3;
}

void __60__PKDashboardPaymentPassDataSource__messageForAMPEnrollment__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _addToAMPButtonTappedForPass:WeakRetained[119]];
    WeakRetained = v2;
  }
}

void __60__PKDashboardPaymentPassDataSource__messageForAMPEnrollment__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[584] = 0;
    v3 = WeakRetained;
    v2 = AMPEnrollmentDismissedKeyForPass();
    PKSharedCacheSetBoolForKey();

    [v3 reloadMessagesAfterMessageInteraction];
    WeakRetained = v3;
  }
}

- (id)_messagesForAccountUserInvitations
{
  v117 = *MEMORY[0x1E69E9840];
  if (self->_accountUsersLoaded && self->_accountUserInvitationsLoaded && self->_familyCollectionLoaded && self->_account && [MEMORY[0x1E69B8770] shouldDisplayTransactionsForTransactionSourceCollection:self->_transactionSourceCollection withAccount:?])
  {
    v71 = objc_alloc_init(MEMORY[0x1E695DF70]);
    accountUserInvitations = self->_accountUserInvitations;
    v113[0] = MEMORY[0x1E69E9820];
    v113[1] = 3221225472;
    v113[2] = __70__PKDashboardPaymentPassDataSource__messagesForAccountUserInvitations__block_invoke;
    v113[3] = &unk_1E801E210;
    val = self;
    v113[4] = self;
    v67 = [(NSArray *)accountUserInvitations pk_objectsPassingTest:v113];
    [v67 pk_objectsPassingTest:&__block_literal_global_1653];
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    obj = v110 = 0u;
    v78 = [obj countByEnumeratingWithState:&v109 objects:v116 count:16];
    if (v78)
    {
      v75 = *v110;
      do
      {
        for (i = 0; i != v78; ++i)
        {
          if (*v110 != v75)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v109 + 1) + 8 * i);
          applicationIdentifier = [v5 applicationIdentifier];
          from = 0;
          p_from = &from;
          v105 = 0x3032000000;
          v106 = __Block_byref_object_copy__41;
          v107 = __Block_byref_object_dispose__41;
          v108 = PKAppleCardGetAcceptedInvitationIdentifiersToDisplay();
          if ([p_from[5] containsObject:applicationIdentifier])
          {
            invitationDetails = [v5 invitationDetails];
            accountUserAltDSID = [invitationDetails accountUserAltDSID];

            v9 = [(PKAccountUserCollection *)val->_accountUserCollection accountUserWithAltDSID:accountUserAltDSID];
            v10 = v9;
            if (v9)
            {
              [v9 accountState];
              if ((PKAccountStateIsTerminal() & 1) == 0)
              {
                familyMembersByAltDSID = [(PKFamilyMemberCollection *)val->_familyCollection familyMembersByAltDSID];
                altDSID = [v10 altDSID];
                v72 = [familyMembersByAltDSID objectForKey:altDSID];

                v13 = MEMORY[0x1E69B8740];
                nameComponents = [v10 nameComponents];
                v15 = [v13 contactForFamilyMember:v72 nameComponents:nameComponents imageData:0];

                givenName = [v15 givenName];
                invitationDetails2 = [v5 invitationDetails];
                accountUserAccessLevel = [invitationDetails2 accountUserAccessLevel];
                v19 = accountUserAccessLevel == 1;

                v20 = objc_alloc_init(PKDashboardPassMessage);
                [(PKDashboardPassMessage *)v20 setIdentifier:applicationIdentifier];
                PKLocalizedFeatureString();
                if (accountUserAccessLevel == 1)
                  v21 = {;
                  [(PKDashboardPassMessage *)v20 setTitle:v21];

                  v22 = PKLocalizedFeatureString();
                  [(PKDashboardPassMessage *)v20 setMessage:v22, givenName];

                  v23 = PKLocalizedFeatureString();
                  [(PKDashboardPassMessage *)v20 setButtonTitle:v23];
                }

                else
                  v24 = {;
                  [(PKDashboardPassMessage *)v20 setTitle:v24];

                  v25 = PKLocalizedFeatureString();
                  [(PKDashboardPassMessage *)v20 setMessage:v25, givenName];

                  v23 = PKLocalizedFeatureString();
                  [(PKDashboardPassMessage *)v20 setButtonTitle:v23, givenName];
                }

                [(PKDashboardPassMessage *)v20 setShowDisclosure:1];
                v26 = [(PKDashboardPaymentPassDataSource *)val _messageCachedRawImageForPass:val->_pass];
                [(PKDashboardPassMessage *)v20 setImage:v26];

                [(PKDashboardPassMessage *)v20 setReportToAnalytics:1];
                v27 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:val->_pass];
                [(PKDashboardPassMessage *)v20 setAnalyticsReporterSubject:v27];

                objc_initWeak(&location, val);
                v98[0] = MEMORY[0x1E69E9820];
                v98[1] = 3221225472;
                v98[2] = __70__PKDashboardPaymentPassDataSource__messagesForAccountUserInvitations__block_invoke_3;
                v98[3] = &unk_1E801E238;
                objc_copyWeak(&v100, &location);
                v101 = v19;
                v99 = v10;
                [(PKDashboardPassMessage *)v20 setActionOnButtonPress:v98];
                v94[0] = MEMORY[0x1E69E9820];
                v94[1] = 3221225472;
                v94[2] = __70__PKDashboardPaymentPassDataSource__messagesForAccountUserInvitations__block_invoke_4;
                v94[3] = &unk_1E801E260;
                objc_copyWeak(&v97, &location);
                v96 = &from;
                v95 = applicationIdentifier;
                [(PKDashboardPassMessage *)v20 setActionOnDismiss:v94];
                [v71 addObject:v20];

                objc_destroyWeak(&v97);
                objc_destroyWeak(&v100);
                objc_destroyWeak(&location);
              }
            }
          }

          _Block_object_dispose(&from, 8);
        }

        v78 = [obj countByEnumeratingWithState:&v109 objects:v116 count:16];
      }

      while (v78);
    }

    [v67 pk_objectsPassingTest:&__block_literal_global_1673];
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v69 = v91 = 0u;
    v79 = [v69 countByEnumeratingWithState:&v90 objects:v115 count:16];
    if (v79)
    {
      v73 = *v91;
      do
      {
        for (j = 0; j != v79; ++j)
        {
          if (*v91 != v73)
          {
            objc_enumerationMutation(v69);
          }

          v29 = *(*(&v90 + 1) + 8 * j);
          applicationIdentifier2 = [v29 applicationIdentifier];
          invitationDetails3 = [v29 invitationDetails];
          accountUserAltDSID2 = [invitationDetails3 accountUserAltDSID];
          v33 = [(PKAccountUserCollection *)val->_accountUserCollection accountUserWithAltDSID:accountUserAltDSID2];
          v34 = v33;
          if (!v33 || ([v33 accountState], (PKAccountStateIsTerminal() & 1) == 0))
          {
            if ([invitationDetails3 accountUserAccessLevel] == 1)
            {
              familyMembersByAltDSID2 = [(PKFamilyMemberCollection *)val->_familyCollection familyMembersByAltDSID];
              v76 = [familyMembersByAltDSID2 objectForKey:accountUserAltDSID2];

              v36 = MEMORY[0x1E69B8740];
              nameComponents2 = [v34 nameComponents];
              v38 = [v36 contactForFamilyMember:v76 nameComponents:nameComponents2 imageData:0];

              givenName2 = [v38 givenName];
              v40 = objc_alloc_init(PKDashboardPassMessage);
              [(PKDashboardPassMessage *)v40 setIdentifier:applicationIdentifier2];
              v41 = PKLocalizedFeatureString();
              [(PKDashboardPassMessage *)v40 setTitle:v41];

              v42 = PKLocalizedFeatureString();
              [(PKDashboardPassMessage *)v40 setMessage:v42, givenName2];

              v43 = PKLocalizedFeatureString();
              [(PKDashboardPassMessage *)v40 setButtonTitle:v43];

              [(PKDashboardPassMessage *)v40 setShowDisclosure:1];
              v44 = [(PKDashboardPaymentPassDataSource *)val _messageCachedRawImageForPass:val->_pass];
              [(PKDashboardPassMessage *)v40 setImage:v44];

              [(PKDashboardPassMessage *)v40 setReportToAnalytics:1];
              v45 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:val->_pass];
              [(PKDashboardPassMessage *)v40 setAnalyticsReporterSubject:v45];

              objc_initWeak(&from, val);
              v88[0] = MEMORY[0x1E69E9820];
              v88[1] = 3221225472;
              v88[2] = __70__PKDashboardPaymentPassDataSource__messagesForAccountUserInvitations__block_invoke_6;
              v88[3] = &unk_1E8014F68;
              objc_copyWeak(&v89, &from);
              v88[4] = v29;
              [(PKDashboardPassMessage *)v40 setActionOnButtonPress:v88];
              [v71 addObject:v40];
              objc_destroyWeak(&v89);
              objc_destroyWeak(&from);
            }
          }
        }

        v79 = [v69 countByEnumeratingWithState:&v90 objects:v115 count:16];
      }

      while (v79);
    }

    activeInboxMessages = [(PKInboxDataSource *)val->_inboxDataSource activeInboxMessages];
    v47 = [activeInboxMessages pk_objectsPassingTest:&__block_literal_global_1685];

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v68 = v47;
    v77 = [v68 countByEnumeratingWithState:&v84 objects:v114 count:16];
    if (v77)
    {
      v74 = *v85;
      do
      {
        for (k = 0; k != v77; ++k)
        {
          if (*v85 != v74)
          {
            objc_enumerationMutation(v68);
          }

          v49 = *(*(&v84 + 1) + 8 * k);
          accountUserInvitation = [v49 accountUserInvitation];
          feature = [accountUserInvitation feature];
          if (feature == [(PKAccount *)val->_account feature])
          {
            applicationIdentifier3 = [accountUserInvitation applicationIdentifier];
            invitationDetails4 = [accountUserInvitation invitationDetails];
            originatorAltDSID = [invitationDetails4 originatorAltDSID];
            v54 = [(PKFamilyMemberCollection *)val->_familyCollection familyMemberForAltDSID:originatorAltDSID];
            v55 = MEMORY[0x1E69B8740];
            originatorNameComponents = [invitationDetails4 originatorNameComponents];
            v57 = [v55 contactForFamilyMember:v54 nameComponents:originatorNameComponents imageData:0];

            v58 = objc_alloc_init(PKDashboardPassMessage);
            [(PKDashboardPassMessage *)v58 setIdentifier:applicationIdentifier3];
            v59 = PKLocalizedFeatureString();
            [(PKDashboardPassMessage *)v58 setTitle:v59];

            givenName3 = [v57 givenName];
            v61 = PKLocalizedFeatureString();
            [(PKDashboardPassMessage *)v58 setMessage:v61, givenName3];

            v62 = PKLocalizedFeatureString();
            [(PKDashboardPassMessage *)v58 setButtonTitle:v62];

            [(PKDashboardPassMessage *)v58 setShowDisclosure:1];
            v63 = [(PKDashboardPaymentPassDataSource *)val _messageCachedRawImageForPass:val->_pass];
            [(PKDashboardPassMessage *)v58 setImage:v63];

            [(PKDashboardPassMessage *)v58 setReportToAnalytics:1];
            v64 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:val->_pass];
            [(PKDashboardPassMessage *)v58 setAnalyticsReporterSubject:v64];

            objc_initWeak(&from, val);
            v82[0] = MEMORY[0x1E69E9820];
            v82[1] = 3221225472;
            v82[2] = __70__PKDashboardPaymentPassDataSource__messagesForAccountUserInvitations__block_invoke_8;
            v82[3] = &unk_1E8014F68;
            objc_copyWeak(&v83, &from);
            v82[4] = v49;
            [(PKDashboardPassMessage *)v58 setActionOnButtonPress:v82];
            [v71 addObject:v58];
            objc_destroyWeak(&v83);
            objc_destroyWeak(&from);
          }
        }

        v77 = [v68 countByEnumeratingWithState:&v84 objects:v114 count:16];
      }

      while (v77);
    }

    if ([v71 count])
    {
      v65 = [v71 copy];
    }

    else
    {
      v65 = 0;
    }
  }

  else
  {
    v65 = 0;
  }

  return v65;
}

BOOL __70__PKDashboardPaymentPassDataSource__messagesForAccountUserInvitations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 applicationState];
  v5 = [v3 invitationDetails];

  v6 = [v5 originatorAltDSID];
  v7 = [*(*(a1 + 32) + 832) currentUserAltDSID];
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if (!v8 || !v9)
    {

LABEL_14:
      v13 = 0;
      goto LABEL_15;
    }

    v11 = [v8 isEqualToString:v9];

    if (!v11)
    {
      goto LABEL_14;
    }
  }

  v13 = v4 != 4 && v4 != 1;
LABEL_15:

  return v13;
}

void __70__PKDashboardPaymentPassDataSource__messagesForAccountUserInvitations__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained reloadMessagesAfterMessageInteraction];
    if (*(a1 + 48) == 1)
    {
      [v3 _presentPassDetailsWithAction:0];
    }

    else
    {
      [v3 _presentAccountUserDetails:*(a1 + 32)];
    }

    WeakRetained = v3;
  }
}

void __70__PKDashboardPaymentPassDataSource__messagesForAccountUserInvitations__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(*(*(a1 + 40) + 8) + 40) mutableCopy];
    [v3 removeObject:*(a1 + 32)];
    v4 = [v3 copy];
    PKAppleCardSetAcceptedInvitationIdentifiersToDisplay();

    [v5 reloadMessagesAfterMessageInteraction];
    WeakRetained = v5;
  }
}

void __70__PKDashboardPaymentPassDataSource__messagesForAccountUserInvitations__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _presentAccountUserInvitation:*(a1 + 32)];
    WeakRetained = v3;
  }
}

BOOL __70__PKDashboardPaymentPassDataSource__messagesForAccountUserInvitations__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type])
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 accountUserInvitation];
    v5 = [v4 invitationDetails];
    v3 = [v5 accountUserAccessLevel] == 1;
  }

  return v3;
}

void __70__PKDashboardPaymentPassDataSource__messagesForAccountUserInvitations__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _presentInboxMessage:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (id)_messagesForAccountUserSetupCashForFamily
{
  v58 = *MEMORY[0x1E69E9840];
  if (self->_accountUsersLoaded && (peerPaymentAccount = self->_peerPaymentAccount) != 0 && self->_familyCollectionLoaded && -[PKPeerPaymentAccount supportsFamilySharing](peerPaymentAccount, "supportsFamilySharing") && -[PKPeerPaymentAccount role](self->_peerPaymentAccount, "role") != 1 && (-[PKFamilyMemberCollection currentUser](self->_familyCollection, "currentUser"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isOrganizer], v4, v5))
  {
    associatedPassUniqueID = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    v7 = [mEMORY[0x1E69B8A58] hasPassWithUniqueID:associatedPassUniqueID];

    if (v7)
    {
      v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(PKAccountUserCollection *)self->_accountUserCollection accountUsersExcludingCurrentAccountUser];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      obj = v54 = 0u;
      v8 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
      if (v8)
      {
        v9 = *v54;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v54 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v53 + 1) + 8 * i);
            altDSID = [v11 altDSID];
            v47 = 0;
            v48 = &v47;
            v49 = 0x3032000000;
            v50 = __Block_byref_object_copy__41;
            v51 = __Block_byref_object_dispose__41;
            v52 = [(PKFamilyMemberCollection *)self->_familyCollection familyMemberForAltDSID:altDSID];
            v13 = v48[5];
            if (v13 && [v13 memberType] && objc_msgSend(v48[5], "memberType") != -1)
            {
              v41 = 0;
              v42 = &v41;
              v43 = 0x3032000000;
              v44 = __Block_byref_object_copy__41;
              v45 = __Block_byref_object_dispose__41;
              v46 = PKSharedCacheGetArrayForKey();
              if (([v42[5] containsObject:altDSID] & 1) == 0)
              {
                v14 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount peerPaymentAccountWithAltDSID:altDSID];
                if (!v14)
                {
                  v15 = MEMORY[0x1E69B8740];
                  v16 = v48[5];
                  nameComponents = [v11 nameComponents];
                  v31 = [v15 contactForFamilyMember:v16 nameComponents:nameComponents imageData:0];

                  givenName = [v31 givenName];
                  v18 = objc_alloc_init(PKDashboardPassMessage);
                  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"accountUserSetupCashForFamily", altDSID];
                  [(PKDashboardPassMessage *)v18 setIdentifier:v30];
                  [(PKDashboardPassMessage *)v18 setShowDisclosure:1];
                  v19 = PKLocalizedFeatureString();
                  [(PKDashboardPassMessage *)v18 setTitle:v19, givenName];

                  v20 = PKLocalizedFeatureString();
                  [(PKDashboardPassMessage *)v18 setMessage:v20, givenName];

                  v21 = PKLocalizedFeatureString();
                  [(PKDashboardPassMessage *)v18 setButtonTitle:v21, givenName];

                  mEMORY[0x1E69B8A58]2 = [MEMORY[0x1E69B8A58] sharedInstance];
                  v23 = [mEMORY[0x1E69B8A58]2 passWithUniqueID:associatedPassUniqueID];
                  paymentPass = [v23 paymentPass];

                  v25 = [(PKDashboardPaymentPassDataSource *)self _messageCachedRawImageForPass:paymentPass];
                  [(PKDashboardPassMessage *)v18 setImage:v25];

                  objc_initWeak(&location, self);
                  v38[0] = MEMORY[0x1E69E9820];
                  v38[1] = 3221225472;
                  v38[2] = __77__PKDashboardPaymentPassDataSource__messagesForAccountUserSetupCashForFamily__block_invoke;
                  v38[3] = &unk_1E801DE40;
                  objc_copyWeak(&v39, &location);
                  v38[4] = &v47;
                  [(PKDashboardPassMessage *)v18 setActionOnButtonPress:v38];
                  v34[0] = MEMORY[0x1E69E9820];
                  v34[1] = 3221225472;
                  v34[2] = __77__PKDashboardPaymentPassDataSource__messagesForAccountUserSetupCashForFamily__block_invoke_2;
                  v34[3] = &unk_1E801E260;
                  objc_copyWeak(&v37, &location);
                  v36 = &v41;
                  v35 = altDSID;
                  [(PKDashboardPassMessage *)v18 setActionOnDismiss:v34];
                  [v28 addObject:v18];

                  objc_destroyWeak(&v37);
                  objc_destroyWeak(&v39);
                  objc_destroyWeak(&location);

                  v14 = 0;
                }
              }

              _Block_object_dispose(&v41, 8);
            }

            _Block_object_dispose(&v47, 8);
          }

          v8 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
        }

        while (v8);
      }

      if ([v28 count])
      {
        v26 = [v28 copy];
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

void __77__PKDashboardPaymentPassDataSource__messagesForAccountUserSetupCashForFamily__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _presentApplCashFamilySetupForFamilyMember:*(*(*(a1 + 32) + 8) + 40)];
    WeakRetained = v3;
  }
}

void __77__PKDashboardPaymentPassDataSource__messagesForAccountUserSetupCashForFamily__block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    if (v3)
    {
      v4 = [v3 arrayByAddingObject:*(a1 + 32)];
    }

    else
    {
      v6[0] = *(a1 + 32);
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    }

    v5 = v4;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);

    PKSharedCacheSetObjectForKey();
    [WeakRetained reloadMessagesAfterMessageInteraction];
  }
}

- (id)_messagesToOrderPhysicalCardForUnderageParticipants
{
  v67 = *MEMORY[0x1E69E9840];
  if (self->_accountUsersLoaded && self->_physicalCardsLoaded && self->_accountUserInvitationsLoaded && self->_familyCollectionLoaded)
  {
    account = self->_account;
    if (account)
    {
      if ([(PKAccount *)account accessLevel]== 1 && self->_physicalCardController && [(PKAccount *)self->_account supportsRequestPhysicalCard])
      {
        val = self;
        v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v59 = 0;
        v60 = &v59;
        v61 = 0x3032000000;
        v62 = __Block_byref_object_copy__41;
        v63 = __Block_byref_object_dispose__41;
        v64 = PKSharedCacheGetArrayForKey();
        activeAccountUsers = [(PKAccountUserCollection *)self->_accountUserCollection activeAccountUsers];
        allObjects = [activeAccountUsers allObjects];
        v6 = [allObjects pk_objectsPassingTest:&__block_literal_global_1706];

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        obj = v6;
        v7 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
        if (!v7)
        {
          goto LABEL_39;
        }

        v40 = *v56;
        while (1)
        {
          v41 = v7;
          for (i = 0; i != v41; ++i)
          {
            if (*v56 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v55 + 1) + 8 * i);
            altDSID = [v9 altDSID];
            v11 = [(PKFamilyMemberCollection *)val->_familyCollection familyMemberForAltDSID:altDSID];
            v12 = v11;
            if (!v11 || ![v11 memberType] || objc_msgSend(v12, "memberType") == -1 || (objc_msgSend(v60[5], "containsObject:", altDSID) & 1) != 0 || !objc_msgSend(v9, "supportsRequestPhysicalCard"))
            {
              goto LABEL_37;
            }

            v37 = v9;
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v39 = val->_physicalCards;
            v13 = [(NSSet *)v39 countByEnumeratingWithState:&v51 objects:v65 count:16];
            if (!v13)
            {
LABEL_32:

              goto LABEL_35;
            }

            v43 = *v52;
LABEL_21:
            v14 = 0;
            while (1)
            {
              if (*v52 != v43)
              {
                objc_enumerationMutation(v39);
              }

              v15 = *(*(&v51 + 1) + 8 * v14);
              accountUserAltDSID = [v15 accountUserAltDSID];
              v17 = accountUserAltDSID;
              if (!accountUserAltDSID)
              {
                goto LABEL_30;
              }

              v18 = accountUserAltDSID;
              v19 = altDSID;
              v20 = v19;
              if (v18 == v19)
              {
                break;
              }

              if (altDSID)
              {
                v21 = [v18 isEqualToString:v19];

                if (v21)
                {
                  goto LABEL_34;
                }
              }

              else
              {
              }

LABEL_30:

              if (v13 == ++v14)
              {
                v13 = [(NSSet *)v39 countByEnumeratingWithState:&v51 objects:v65 count:16];
                if (v13)
                {
                  goto LABEL_21;
                }

                goto LABEL_32;
              }
            }

LABEL_34:
            v22 = v15;

            if (v22)
            {
              goto LABEL_36;
            }

LABEL_35:
            v23 = MEMORY[0x1E69B8740];
            nameComponents = [v37 nameComponents];
            v25 = [v23 contactForFamilyMember:v12 nameComponents:nameComponents imageData:0];

            givenName = [v25 givenName];
            v27 = objc_alloc_init(PKDashboardPassMessage);
            v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"underagePhysicalCardOrderPrompt", altDSID];
            [(PKDashboardPassMessage *)v27 setIdentifier:v28];
            [(PKDashboardPassMessage *)v27 setShowDisclosure:1];
            v29 = PKLocalizedFeatureString();
            [(PKDashboardPassMessage *)v27 setTitle:v29];

            v30 = PKLocalizedFeatureString();
            [(PKDashboardPassMessage *)v27 setMessage:v30, givenName];

            v31 = PKLocalizedFeatureString();
            [(PKDashboardPassMessage *)v27 setButtonTitle:v31];

            v32 = [(PKDashboardPaymentPassDataSource *)val _messageCachedRawImageForPass:val->_pass];
            [(PKDashboardPassMessage *)v27 setImage:v32];

            [(PKDashboardPassMessage *)v27 setReportToAnalytics:1];
            v33 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:val->_pass];
            [(PKDashboardPassMessage *)v27 setAnalyticsReporterSubject:v33];

            objc_initWeak(&location, val);
            v48[0] = MEMORY[0x1E69E9820];
            v48[1] = 3221225472;
            v48[2] = __87__PKDashboardPaymentPassDataSource__messagesToOrderPhysicalCardForUnderageParticipants__block_invoke_2;
            v48[3] = &unk_1E8014F68;
            objc_copyWeak(&v49, &location);
            v48[4] = v37;
            [(PKDashboardPassMessage *)v27 setActionOnButtonPress:v48];
            v44[0] = MEMORY[0x1E69E9820];
            v44[1] = 3221225472;
            v44[2] = __87__PKDashboardPaymentPassDataSource__messagesToOrderPhysicalCardForUnderageParticipants__block_invoke_4;
            v44[3] = &unk_1E801E260;
            objc_copyWeak(&v47, &location);
            v46 = &v59;
            v45 = altDSID;
            [(PKDashboardPassMessage *)v27 setActionOnDismiss:v44];
            [v36 addObject:v27];

            objc_destroyWeak(&v47);
            objc_destroyWeak(&v49);
            objc_destroyWeak(&location);

            v22 = 0;
LABEL_36:

LABEL_37:
          }

          v7 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
          if (!v7)
          {
LABEL_39:

            if ([v36 count])
            {
              v34 = [v36 copy];
            }

            else
            {
              v34 = 0;
            }

            _Block_object_dispose(&v59, 8);
            goto LABEL_42;
          }
        }
      }
    }
  }

  v34 = 0;
LABEL_42:

  return v34;
}

uint64_t __87__PKDashboardPaymentPassDataSource__messagesToOrderPhysicalCardForUnderageParticipants__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 accessLevel] == 2)
  {
    v3 = [v2 isCurrentUser] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __87__PKDashboardPaymentPassDataSource__messagesToOrderPhysicalCardForUnderageParticipants__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [[PKPhysicalCardController alloc] initWithAccountService:WeakRetained[122] paymentPass:WeakRetained[119] account:WeakRetained[48] accountUser:*(a1 + 32) physicalCards:WeakRetained[103]];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __87__PKDashboardPaymentPassDataSource__messagesToOrderPhysicalCardForUnderageParticipants__block_invoke_3;
    v4[3] = &unk_1E801E0D8;
    v4[4] = WeakRetained;
    [(PKPhysicalCardController *)v3 orderFlowViewControllerForReason:0 content:0 completion:v4];
  }
}

void __87__PKDashboardPaymentPassDataSource__messagesToOrderPhysicalCardForUnderageParticipants__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  if (v8)
  {
    v5 = [[PKNavigationController alloc] initWithRootViewController:v8];
    [(PKNavigationController *)v5 setModalPresentationStyle:2];
  }

  else
  {
    v5 = PKAlertForDisplayableErrorWithHandlers(a3, 0, 0, 0);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 800));
  v7 = [WeakRetained navigationController];
  [v7 presentViewController:v5 animated:1 completion:0];
}

void __87__PKDashboardPaymentPassDataSource__messagesToOrderPhysicalCardForUnderageParticipants__block_invoke_4(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    if (v3)
    {
      v4 = [v3 arrayByAddingObject:*(a1 + 32)];
    }

    else
    {
      v6[0] = *(a1 + 32);
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    }

    v5 = v4;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);

    PKSharedCacheSetObjectForKey();
    [WeakRetained reloadMessagesAfterMessageInteraction];
  }
}

- (id)_messagesForLockedCardParticipants
{
  v36 = *MEMORY[0x1E69E9840];
  if (self->_accountUsersLoaded && self->_accountUserInvitationsLoaded && self->_familyCollectionLoaded && (account = self->_account) != 0 && [(PKAccount *)account accessLevel]== 1)
  {
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    activeAccountUsers = [(PKAccountUserCollection *)self->_accountUserCollection activeAccountUsers];
    allObjects = [activeAccountUsers allObjects];
    v6 = [allObjects pk_objectsPassingTest:&__block_literal_global_1717];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v6;
    v27 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v27)
    {
      v25 = *v32;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v31 + 1) + 8 * i);
          altDSID = [v8 altDSID];
          v10 = [(PKFamilyMemberCollection *)self->_familyCollection familyMemberForAltDSID:altDSID];
          v11 = MEMORY[0x1E69B8740];
          nameComponents = [v8 nameComponents];
          v13 = [v11 contactForFamilyMember:v10 nameComponents:nameComponents imageData:0];

          givenName = [v13 givenName];
          v15 = objc_alloc_init(PKDashboardPassMessage);
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"cardParticipantLocked", altDSID];
          [(PKDashboardPassMessage *)v15 setIdentifier:v16];
          [(PKDashboardPassMessage *)v15 setShowDisclosure:1];
          v17 = PKLocalizedFeatureString();
          [(PKDashboardPassMessage *)v15 setTitle:v17, givenName];

          v18 = PKLocalizedFeatureString();
          [(PKDashboardPassMessage *)v15 setMessage:v18, givenName];

          v19 = PKLocalizedFeatureString();
          [(PKDashboardPassMessage *)v15 setButtonTitle:v19];

          v20 = [(PKDashboardPaymentPassDataSource *)self _messageCachedRawImageForPass:self->_pass];
          [(PKDashboardPassMessage *)v15 setImage:v20];

          [(PKDashboardPassMessage *)v15 setReportToAnalytics:1];
          v21 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:self->_pass];
          [(PKDashboardPassMessage *)v15 setAnalyticsReporterSubject:v21];

          objc_initWeak(&location, self);
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __70__PKDashboardPaymentPassDataSource__messagesForLockedCardParticipants__block_invoke_2;
          v28[3] = &unk_1E8015548;
          objc_copyWeak(&v29, &location);
          [(PKDashboardPassMessage *)v15 setActionOnButtonPress:v28];
          [v26 addObject:v15];
          objc_destroyWeak(&v29);
          objc_destroyWeak(&location);
        }

        v27 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v27);
    }

    if ([v26 count])
    {
      v22 = [v26 copy];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

uint64_t __70__PKDashboardPaymentPassDataSource__messagesForLockedCardParticipants__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 accessLevel] == 2 && objc_msgSend(v2, "accountState") == 3)
  {
    v3 = [v2 isCurrentUser] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __70__PKDashboardPaymentPassDataSource__messagesForLockedCardParticipants__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [[PKBusinessChatAccountStateContext alloc] initWithAccount:v3[48] paymentPass:v3[119] eligibleForRecoveryPaymentPlan:0];
    [v3 _presentAccountResolution:2 forBusinessChatContext:v2 completion:0];

    WeakRetained = v3;
  }
}

- (id)_messageForAccountPendingFamilyMembers
{
  if (self->_accountPendingFamilyMembersLoaded && (PKSharedCacheGetBoolForKey() & 1) == 0 && -[NSArray count](self->_accountPendingFamilyMembers, "count") && [MEMORY[0x1E69B8770] shouldDisplayTransactionsForTransactionSourceCollection:self->_transactionSourceCollection withAccount:self->_account])
  {
    v3 = objc_alloc_init(PKDashboardPassMessage);
    [(PKDashboardPassMessage *)v3 setIdentifier:@"accountPendingFamilyMember"];
    [(PKDashboardPassMessage *)v3 setShowDisclosure:1];
    v4 = PKLocalizedFeatureString();
    [(PKDashboardPassMessage *)v3 setTitle:v4];

    v5 = PKLocalizedFeatureString();
    [(PKDashboardPassMessage *)v3 setMessage:v5];

    v6 = PKLocalizedFeatureString();
    [(PKDashboardPassMessage *)v3 setButtonTitle:v6];

    v7 = [(PKDashboardPaymentPassDataSource *)self _messageCachedRawImageForPass:self->_pass];
    [(PKDashboardPassMessage *)v3 setImage:v7];

    [(PKDashboardPassMessage *)v3 setReportToAnalytics:1];
    v8 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:self->_pass];
    [(PKDashboardPassMessage *)v3 setAnalyticsReporterSubject:v8];

    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__PKDashboardPaymentPassDataSource__messageForAccountPendingFamilyMembers__block_invoke;
    v12[3] = &unk_1E8015548;
    objc_copyWeak(&v13, &location);
    [(PKDashboardPassMessage *)v3 setActionOnButtonPress:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__PKDashboardPaymentPassDataSource__messageForAccountPendingFamilyMembers__block_invoke_2;
    v10[3] = &unk_1E8010998;
    objc_copyWeak(&v11, &location);
    [(PKDashboardPassMessage *)v3 setActionOnDismiss:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __74__PKDashboardPaymentPassDataSource__messageForAccountPendingFamilyMembers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    PKSharedCacheSetBoolForKey();
    [v2 _presentCreateAccountUserInvitation];
    WeakRetained = v2;
  }
}

void __74__PKDashboardPaymentPassDataSource__messageForAccountPendingFamilyMembers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    PKSharedCacheSetBoolForKey();
    WeakRetained = v2;
  }
}

- (id)_messageForFirstMonthCoOwners
{
  if (!self->_accountUsersLoaded || !self->_accountUserInvitationsLoaded || !self->_familyCollectionLoaded || (account = self->_account) == 0 || [(PKAccount *)account accessLevel]!= 1 || ![(PKAccount *)self->_account isCoOwner]|| (PKSharedCacheGetBoolForKey() & 1) != 0 || ![(PKDashboardPaymentPassDataSource *)self _canDisplayBalance])
  {
    v19 = 0;
    goto LABEL_14;
  }

  creditDetails = [(PKAccount *)self->_account creditDetails];
  accountSummary = [creditDetails accountSummary];
  mergeSummary = [accountSummary mergeSummary];

  accountDetails = [mergeSummary accountDetails];
  v8 = [accountDetails pk_anyObjectPassingTest:&__block_literal_global_1738];

  if (!v8)
  {
    creditDetails2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(creditDetails2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1BD026000, creditDetails2, OS_LOG_TYPE_DEFAULT, "Not showing first month merge balance dashboard message because no account had a statement balance", location, 2u);
    }

    v19 = 0;
    goto LABEL_26;
  }

  creditDetails2 = [(PKAccount *)self->_account creditDetails];
  mergeDate = [creditDetails2 mergeDate];
  if (mergeDate)
  {
    if (![creditDetails2 isInMonthOfMerge])
    {
      v19 = 0;
      goto LABEL_25;
    }

    v11 = objc_alloc(MEMORY[0x1E695DEE8]);
    v12 = [v11 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    v13 = PKStartOfLastMonth();
    v14 = [v12 components:8 fromDate:v13];
    [v14 month];

    v15 = PKGregorianMonthSpecificLocalizedStringKeyForKey();
    v16 = PKLocalizedFeatureString();

    v17 = PKGregorianMonthSpecificLocalizedStringKeyForKey();
    v18 = PKLocalizedFeatureString();

    v19 = objc_alloc_init(PKDashboardPassMessage);
    [(PKDashboardPassMessage *)v19 setIdentifier:@"accountCoOwnerFirstMonthMerge"];
    [(PKDashboardPassMessage *)v19 setTitle:v16];
    [(PKDashboardPassMessage *)v19 setMessage:v18];
    v20 = PKLocalizedFeatureString();
    [(PKDashboardPassMessage *)v19 setButtonTitle:v20];

    [(PKDashboardPassMessage *)v19 setShowDisclosure:1];
    v21 = [(PKDashboardPaymentPassDataSource *)self _messageCachedRawImageForPass:self->_pass];
    [(PKDashboardPassMessage *)v19 setImage:v21];

    [(PKDashboardPassMessage *)v19 setReportToAnalytics:1];
    v22 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:self->_pass];
    [(PKDashboardPassMessage *)v19 setAnalyticsReporterSubject:v22];

    objc_initWeak(location, self);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __65__PKDashboardPaymentPassDataSource__messageForFirstMonthCoOwners__block_invoke_1748;
    v26[3] = &unk_1E8010998;
    objc_copyWeak(&v27, location);
    [(PKDashboardPassMessage *)v19 setActionOnDismiss:v26];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __65__PKDashboardPaymentPassDataSource__messageForFirstMonthCoOwners__block_invoke_2;
    v24[3] = &unk_1E8015548;
    objc_copyWeak(&v25, location);
    [(PKDashboardPassMessage *)v19 setActionOnButtonPress:v24];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(location);
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Error: no merge date defined on a co-owner account", location, 2u);
    }

    v19 = 0;
  }

LABEL_25:
LABEL_26:

LABEL_14:

  return v19;
}

BOOL __65__PKDashboardPaymentPassDataSource__messageForFirstMonthCoOwners__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 statementBalance];
  v3 = v2 != 0;

  return v3;
}

void __65__PKDashboardPaymentPassDataSource__messageForFirstMonthCoOwners__block_invoke_1748(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    PKSharedCacheSetBoolForKey();
    [v2 reloadMessagesAfterMessageInteraction];
    WeakRetained = v2;
  }
}

void __65__PKDashboardPaymentPassDataSource__messageForFirstMonthCoOwners__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    PKSharedCacheSetBoolForKey();
    [v2 _presentBalanceDetails];
    WeakRetained = v2;
  }
}

- (id)_userLegalAgreementDashboardMessage
{
  passState = [(PKPassDynamicStateProviding *)self->_passStateProvider passState];
  agreements = [passState agreements];
  v5 = [agreements pk_firstObjectPassingTest:&__block_literal_global_1751];

  if (v5 && ([v5 userConsented] & 1) == 0)
  {
    v6 = objc_alloc_init(PKDashboardPassMessage);
    [(PKDashboardPassMessage *)v6 setIdentifier:@"userLegalAgreement"];
    v7 = PKLocalizedPaymentString(&cfstr_TermsAndCondit_0.isa);
    [(PKDashboardPassMessage *)v6 setTitle:v7];

    organizationName = [(PKPaymentPass *)self->_pass organizationName];
    v9 = PKLocalizedPaymentString(&cfstr_TermsAndCondit_1.isa, &stru_1F3BD5BF0.isa, organizationName);
    [(PKDashboardPassMessage *)v6 setMessage:v9];

    v10 = PKLocalizedPaymentString(&cfstr_TermsAndCondit_2.isa);
    [(PKDashboardPassMessage *)v6 setButtonTitle:v10];

    [(PKDashboardPassMessage *)v6 setShowDisclosure:1];
    v11 = [(PKDashboardPaymentPassDataSource *)self _messageCachedRawImageForPass:self->_pass];
    [(PKDashboardPassMessage *)v6 setImage:v11];

    [(PKDashboardPassMessage *)v6 setShowSpinner:self->_performingLegalAgreementReview];
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__PKDashboardPaymentPassDataSource__userLegalAgreementDashboardMessage__block_invoke_2;
    aBlock[3] = &unk_1E80110E0;
    objc_copyWeak(&v26, &location);
    v12 = v5;
    v25 = v12;
    v13 = _Block_copy(aBlock);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __71__PKDashboardPaymentPassDataSource__userLegalAgreementDashboardMessage__block_invoke_3;
    v21[3] = &unk_1E80111D0;
    objc_copyWeak(&v23, &location);
    v14 = v13;
    v22 = v14;
    [(PKDashboardPassMessage *)v6 setActionOnDismiss:v21];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__PKDashboardPaymentPassDataSource__userLegalAgreementDashboardMessage__block_invoke_4;
    v17[3] = &unk_1E801E308;
    objc_copyWeak(&v20, &location);
    v18 = v12;
    v15 = v14;
    v19 = v15;
    [(PKDashboardPassMessage *)v6 setActionOnButtonPress:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v23);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __71__PKDashboardPaymentPassDataSource__userLegalAgreementDashboardMessage__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) setUserConsented:1];
    [v3[123] insertUserLegalAgreement:*(a1 + 32)];
    [v3 reloadMessagesAfterMessageInteraction];
    WeakRetained = v3;
  }
}

void __71__PKDashboardPaymentPassDataSource__userLegalAgreementDashboardMessage__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

void __71__PKDashboardPaymentPassDataSource__userLegalAgreementDashboardMessage__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _presentLegalAgreement:*(a1 + 32) userConsented:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_presentLegalAgreement:(id)agreement userConsented:(id)consented
{
  agreementCopy = agreement;
  consentedCopy = consented;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PKDashboardPaymentPassDataSource__presentLegalAgreement_userConsented___block_invoke;
  aBlock[3] = &unk_1E8011180;
  objc_copyWeak(&v20, &location);
  v8 = _Block_copy(aBlock);
  v8[2](v8, 1);
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  pass = self->_pass;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__PKDashboardPaymentPassDataSource__presentLegalAgreement_userConsented___block_invoke_2;
  v14[3] = &unk_1E801E380;
  v11 = v8;
  v16 = v11;
  objc_copyWeak(&v18, &location);
  v12 = mEMORY[0x1E69B8EF8];
  v15 = v12;
  v13 = consentedCopy;
  v17 = v13;
  [v12 agreementURLForPass:pass agreement:agreementCopy completion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __73__PKDashboardPaymentPassDataSource__presentLegalAgreement_userConsented___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[196] == (a2 ^ 1))
  {
    WeakRetained[196] = a2;
    v4 = WeakRetained;
    [WeakRetained reloadMessagesAfterMessageInteraction];
    WeakRetained = v4;
  }
}

void __73__PKDashboardPaymentPassDataSource__presentLegalAgreement_userConsented___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (v5 && WeakRetained)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Showing T&C acceptance UI", buf, 2u);
    }

    v10 = [PKProvisioningTermsPresenter alloc];
    v11 = [*(a1 + 32) context];
    v12 = -[PKProvisioningTermsPresenter initWithAllowNonSecureHTTP:paymentSetupContext:](v10, "initWithAllowNonSecureHTTP:paymentSetupContext:", [v11 devSigned], 0);

    objc_storeStrong(v8 + 97, v12);
    v13 = objc_loadWeakRetained(v8 + 100);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__PKDashboardPaymentPassDataSource__presentLegalAgreement_userConsented___block_invoke_1762;
    v14[3] = &unk_1E801E358;
    objc_copyWeak(&v17, (a1 + 56));
    v16 = *(a1 + 48);
    v15 = v5;
    [v12 presentWithTermsUrl:v15 forViewController:v13 completion:v14];

    objc_destroyWeak(&v17);
LABEL_9:

    goto LABEL_10;
  }

  if (WeakRetained)
  {
    [WeakRetained _showTermsAndConditionsError];
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Failed to fetch agreement url", buf, 2u);
    }

    goto LABEL_9;
  }

LABEL_10:
}

void __73__PKDashboardPaymentPassDataSource__presentLegalAgreement_userConsented___block_invoke_1762(id *a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PKDashboardPaymentPassDataSource__presentLegalAgreement_userConsented___block_invoke_2_1763;
  block[3] = &unk_1E801E330;
  objc_copyWeak(&v11, a1 + 6);
  v12 = a2;
  v10 = a1[5];
  v8 = v5;
  v9 = a1[4];
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v11);
}

void __73__PKDashboardPaymentPassDataSource__presentLegalAgreement_userConsented___block_invoke_2_1763(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 97);
    *(WeakRetained + 97) = 0;

    if (*(a1 + 64) == 1)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 40);
          v8 = [v5 localizedDescription];
          v9 = 138412546;
          v10 = v7;
          v11 = 2112;
          v12 = v8;
          _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Error loading terms UI at %@ with error: %@", &v9, 0x16u);
        }

        [v3 _showTermsAndConditionsError];
      }

      else
      {
        [v3 _disagreeTerms];
      }
    }
  }
}

- (void)_showTermsAndConditionsError
{
  v3 = MEMORY[0x1E69DC650];
  v4 = PKLocalizedPaymentString(&cfstr_TermsAndCondit_3.isa);
  v10 = [v3 alertControllerWithTitle:0 message:v4 preferredStyle:1];

  v5 = MEMORY[0x1E69DC648];
  v6 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
  v7 = [v5 actionWithTitle:v6 style:0 handler:0];
  [v10 addAction:v7];

  if (self && v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    navigationController = [WeakRetained navigationController];
    [navigationController presentViewController:v10 animated:1 completion:0];
  }
}

- (void)_disagreeTerms
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  navigationController = [WeakRetained navigationController];

  v4 = [PKViewControllerPresentationTarget targetWithPresentingViewController:navigationController];
  if ([(PKPaymentPass *)self->_pass hasMerchantTokens])
  {
    pass = self->_pass;
    account = self->_account;
    v7 = objc_loadWeakRetained(&self->_viewController);
    v8 = objc_alloc_init(MEMORY[0x1E69B8A60]);
    LOBYTE(v14) = 0;
    [PKPassDeleteHelper presentMerchantTokenDeletePaymentPassAlertForPass:pass withAccount:account merchantTokensResponse:0 deleteHander:v7 passLibraryDataProvider:v8 navigationController:navigationController presentationTarget:v4 isBridge:v14];
  }

  else
  {
    if ([(PKPaymentPass *)self->_pass isStoredValuePass])
    {
      v7 = [MEMORY[0x1E69B9310] passPropertiesForPass:self->_pass];
      v8 = [objc_alloc(MEMORY[0x1E69B9308]) initWithPass:self->_pass];
      [v8 setTransitProperties:v7 andApplyStoredValueBalances:1];
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v9 = self->_pass;
    v10 = self->_account;
    defaultDataProvider = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    v12 = objc_loadWeakRetained(&self->_viewController);
    v13 = objc_alloc_init(MEMORY[0x1E69B8A60]);
    [PKPassDeleteHelper presentDeletePaymentPassAlertForPass:v9 withAccount:v10 paymentServiceDataProvider:defaultDataProvider transitBalanceModel:v8 transitPassProperties:v7 fkInstitution:0 detailViewStyle:0 deleteHander:v12 passLibraryDataProvider:v13 presentationTarget:v4];
  }
}

- (id)_messageCachedImageWithIdentifier:(id)identifier imageProvider:(id)provider
{
  identifierCopy = identifier;
  providerCopy = provider;
  v8 = providerCopy;
  v9 = 0;
  if (identifierCopy && providerCopy)
  {
    os_unfair_lock_lock(&self->_lockImages);
    v10 = [(NSMutableDictionary *)self->_messageImagesCache objectForKey:identifierCopy];
    os_unfair_lock_unlock(&self->_lockImages);
    if (!v10)
    {
      v10 = v8[2](v8);
      if (v10)
      {
        os_unfair_lock_lock(&self->_lockImages);
        [(NSMutableDictionary *)self->_messageImagesCache setObject:v10 forKey:identifierCopy];
        os_unfair_lock_unlock(&self->_lockImages);
      }
    }

    v9 = v10;
  }

  return v9;
}

- (id)_messageImageWithName:(id)name extension:(id)extension
{
  nameCopy = name;
  extensionCopy = extension;
  v8 = extensionCopy;
  if (nameCopy)
  {
    extensionCopy = [nameCopy stringByAppendingFormat:@".%@", extensionCopy];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__PKDashboardPaymentPassDataSource__messageImageWithName_extension___block_invoke;
    v12[3] = &unk_1E801E3A8;
    v13 = v8;
    v14 = nameCopy;
    v10 = [(PKDashboardPaymentPassDataSource *)self _messageCachedImageWithIdentifier:extensionCopy imageProvider:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __68__PKDashboardPaymentPassDataSource__messageImageWithName_extension___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 == @"pdf" || (v3 = v2) != 0 && (v4 = [(__CFString *)v2 isEqualToString:@"pdf"], v3, v4))
  {
    v5 = PKPassKitUIBundle();
    v6 = [v5 URLForResource:*(a1 + 40) withExtension:*(a1 + 32)];

    v7 = PKUIScreenScale();
    v8 = PKUIImageFromPDF(v6, 45.0, 45.0, v7);
  }

  else
  {
    v8 = PKUIImageNamed(*(a1 + 40));
  }

  return v8;
}

- (id)_messageCachedRawImageForPass:(id)pass
{
  passCopy = pass;
  uniqueID = [passCopy uniqueID];
  if (uniqueID)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"pass-rawImage-%@", uniqueID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__PKDashboardPaymentPassDataSource__messageCachedRawImageForPass___block_invoke;
    v9[3] = &unk_1E801E3D0;
    v10 = passCopy;
    v7 = [(PKDashboardPaymentPassDataSource *)self _messageCachedImageWithIdentifier:v6 imageProvider:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __66__PKDashboardPaymentPassDataSource__messageCachedRawImageForPass___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) rawIcon];
  v2 = objc_alloc(MEMORY[0x1E69B8948]);
  v3 = [v1 imageRef];
  [v1 scale];
  v4 = [v2 initWithCGImage:v3 scale:1 orientation:?];
  v5 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v4];

  return v5;
}

- (id)_messageCachedIconForPass:(id)pass useNotificationIcon:(BOOL)icon
{
  iconCopy = icon;
  uniqueID = [pass uniqueID];
  if (uniqueID)
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = @"iconImage";
    if (iconCopy)
    {
      v8 = @"notificationIcon";
    }

    v9 = [v7 initWithFormat:@"pass-%@-%@", v8, uniqueID];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__PKDashboardPaymentPassDataSource__messageCachedIconForPass_useNotificationIcon___block_invoke;
    v12[3] = &unk_1E801E3F8;
    v12[4] = self;
    v13 = iconCopy;
    v10 = [(PKDashboardPaymentPassDataSource *)self _messageCachedImageWithIdentifier:v9 imageProvider:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __82__PKDashboardPaymentPassDataSource__messageCachedIconForPass_useNotificationIcon___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 952);
  if (*(a1 + 40))
  {
    [v2 notificationIconImage];
  }

  else
  {
    [v2 iconImage];
  }
  v3 = ;
  v4 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v3];

  return v4;
}

- (id)revokingAccessMessage
{
  devicePrimaryPaymentApplication = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
  subcredentials = [devicePrimaryPaymentApplication subcredentials];
  anyObject = [subcredentials anyObject];

  entitlement = [anyObject entitlement];
  carKeyEntitlementType = [entitlement carKeyEntitlementType];

  if ((carKeyEntitlementType - 1) > 5)
  {
    v7 = @"DASHBOARD_MESSAGE_FULL_ACCESS_REVOKING_MESSAGE";
  }

  else
  {
    v7 = off_1E801E998[carKeyEntitlementType - 1];
  }

  v8 = PKLocalizedCredentialString(&v7->isa);

  return v8;
}

- (id)_messageForPaymentInformationEventExtensionInstallation
{
  uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__41;
  v22 = __Block_byref_object_dispose__41;
  v23 = PKSharedCacheGetArrayForKey();
  if (-[PKPaymentPass supportsBarcodePayment](self->_pass, "supportsBarcodePayment") && ([v19[5] containsObject:uniqueID] & 1) == 0 && -[PKLinkedApplication state](self->_linkedApplication, "state") == 1 && !-[PKLinkedApplication isInstalled](self->_linkedApplication, "isInstalled"))
  {
    organizationName = [(PKPaymentPass *)self->_pass organizationName];
    v4 = objc_alloc_init(PKDashboardPassMessage);
    [(PKDashboardPassMessage *)v4 setIdentifier:@"paymentInformationExtensionInstallPrompt"];
    v7 = [(PKDashboardPaymentPassDataSource *)self _messageCachedRawImageForPass:self->_pass];
    [(PKDashboardPassMessage *)v4 setImage:v7];

    v8 = PKLocalizedAquamanString(&cfstr_DashboardAppIn.isa, &stru_1F3BD5BF0.isa, organizationName);
    [(PKDashboardPassMessage *)v4 setTitle:v8];

    v9 = PKLocalizedAquamanString(&cfstr_DashboardAppIn_0.isa, &stru_1F3BD6370.isa, organizationName, organizationName);
    [(PKDashboardPassMessage *)v4 setMessage:v9];

    v10 = PKLocalizedAquamanString(&cfstr_ViewInAppStore.isa);
    [(PKDashboardPassMessage *)v4 setButtonTitle:v10];

    [(PKDashboardPassMessage *)v4 setShowDisclosure:1];
    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __91__PKDashboardPaymentPassDataSource__messageForPaymentInformationEventExtensionInstallation__block_invoke;
    v15[3] = &unk_1E8015548;
    objc_copyWeak(&v16, &location);
    [(PKDashboardPassMessage *)v4 setActionOnButtonPress:v15];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __91__PKDashboardPaymentPassDataSource__messageForPaymentInformationEventExtensionInstallation__block_invoke_2;
    v11[3] = &unk_1E801E260;
    objc_copyWeak(&v14, &location);
    v13 = &v18;
    v12 = uniqueID;
    [(PKDashboardPassMessage *)v4 setActionOnDismiss:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v18, 8);

  return v4;
}

void __91__PKDashboardPaymentPassDataSource__messageForPaymentInformationEventExtensionInstallation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = *(WeakRetained + 81);
    v5 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 100);
    v4 = [v3 navigationController];
    [v2 openApplication:v4];

    WeakRetained = v5;
  }
}

void __91__PKDashboardPaymentPassDataSource__messageForPaymentInformationEventExtensionInstallation__block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    if (v3)
    {
      v4 = [v3 arrayByAddingObject:*(a1 + 32)];
    }

    else
    {
      v6[0] = *(a1 + 32);
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    }

    v5 = v4;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);

    PKSharedCacheSetObjectForKey();
    [WeakRetained reloadMessagesAfterMessageInteraction];
  }
}

- (void)_messageForUnusableIdentityPassWithCompletion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  [(PKPaymentPass *)self->_pass devicePaymentApplications];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v5 = v23 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = *v23;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v23 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v22 + 1) + 8 * v8);
      [v9 paymentType];
      if (PKPaymentMethodTypeIsIdentityDocument())
      {
        subcredentials = [v9 subcredentials];
        anyObject = [subcredentials anyObject];
        identifier = [anyObject identifier];

        if (identifier)
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    identifier = 0;
  }

  isIdentityPass = [(PKPaymentPass *)self->_pass isIdentityPass];
  activationState = [(PKPaymentPass *)self->_pass activationState];
  if (isIdentityPass && activationState == PKPaymentPassActivationStateActivated && identifier)
  {
    objc_initWeak(&location, self);
    v15 = objc_alloc(MEMORY[0x1E6997C28]);
    v26 = *MEMORY[0x1E69BB940];
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v17 = [v15 initWithPartitions:v16];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __82__PKDashboardPaymentPassDataSource__messageForUnusableIdentityPassWithCompletion___block_invoke;
    v18[3] = &unk_1E801E420;
    objc_copyWeak(&v20, &location);
    v19 = completionCopy;
    [v17 propertiesOfCredential:identifier completion:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __82__PKDashboardPaymentPassDataSource__messageForUnusableIdentityPassWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__PKDashboardPaymentPassDataSource__messageForUnusableIdentityPassWithCompletion___block_invoke_2;
  block[3] = &unk_1E8011108;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __82__PKDashboardPaymentPassDataSource__messageForUnusableIdentityPassWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) options];
    if ([v3 presentmentAuthPolicy] == 2)
    {
      v4 = [*(a1 + 32) hasUsablePresentmentAuthPolicy] ^ 1;
    }

    else
    {
      v4 = 0;
    }

    v5 = [WeakRetained[119] identityType];
    if (v5 > 5)
    {
      v7 = 0;
      v8 = 0;
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v6 = off_1E801E9F8[v5];
      v7 = PKLocalizedIdentityString(&off_1E801E9C8[v5]->isa);
      v8 = PKLocalizedIdentityString(&v6->isa);
      if (!v4)
      {
LABEL_8:
        (*(*(a1 + 40) + 16))();
LABEL_18:

        goto LABEL_19;
      }
    }

    v9 = objc_alloc_init(PKDashboardPassMessage);
    [(PKDashboardPassMessage *)v9 setIdentifier:@"identityUnusable"];
    v10 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:WeakRetained[119]];
    [(PKDashboardPassMessage *)v9 setAnalyticsReporterSubject:v10];

    [(PKDashboardPassMessage *)v9 setTitle:v7];
    v11 = [WeakRetained[119] identityType];
    IsAvailable = PKPearlIsAvailable();
    v13 = [WeakRetained[119] localizedDescription];
    v14 = @"DASHBOARD_UNAVAILABLE_TOUCHID";
    if (IsAvailable)
    {
      v14 = @"DASHBOARD_UNAVAILABLE_FACEID";
    }

    v15 = @"DASHBOARD_UNAVAILABLE_FACEID_ADD_USING_APP";
    if (!IsAvailable)
    {
      v15 = @"DASHBOARD_UNAVAILABLE_TOUCHID_ADD_USING_APP";
    }

    if (v11 == 4)
    {
      p_isa = &v15->isa;
    }

    else
    {
      p_isa = &v14->isa;
    }

    v17 = PKLocalizedIdentityString(p_isa, &stru_1F3BD5BF0.isa, v13);
    [(PKDashboardPassMessage *)v9 setMessage:v17];

    v18 = [WeakRetained _messageImageWithName:@"MessageAlert" extension:@"pdf"];
    [(PKDashboardPassMessage *)v9 setImage:v18];

    [(PKDashboardPassMessage *)v9 setButtonTitle:v8];
    [(PKDashboardPassMessage *)v9 setIsDestructiveAction:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __82__PKDashboardPaymentPassDataSource__messageForUnusableIdentityPassWithCompletion___block_invoke_3;
    v19[3] = &unk_1E8015548;
    objc_copyWeak(&v20, (a1 + 48));
    [(PKDashboardPassMessage *)v9 setActionOnButtonPress:v19];
    (*(*(a1 + 40) + 16))();
    objc_destroyWeak(&v20);

    goto LABEL_18;
  }

  (*(*(a1 + 40) + 16))();
LABEL_19:
}

void __82__PKDashboardPaymentPassDataSource__messageForUnusableIdentityPassWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _deleteButtonPressedFromSourceView:v5];
  }
}

- (void)_messageIfUnderlyingCredentialIsLockedOutWithCompletion:(id)completion
{
  completionCopy = completion;
  if ((PKNeedsLostModeExitAuth() & 1) != 0 || [(PKPaymentPass *)self->_pass effectiveContactlessPaymentApplicationState]!= 1)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    pass = self->_pass;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __92__PKDashboardPaymentPassDataSource__messageIfUnderlyingCredentialIsLockedOutWithCompletion___block_invoke;
    v6[3] = &unk_1E801E448;
    objc_copyWeak(&v8, &location);
    v6[4] = self;
    v7 = completionCopy;
    [_PKJPKIInternalClientWrapper instantiateWithPass:pass completionHandler:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __92__PKDashboardPaymentPassDataSource__messageIfUnderlyingCredentialIsLockedOutWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (!v3 || (v5 = [v3 userCertificateAuthTriesRemaining], v6 = objc_msgSend(v3, "signingCertificateAuthTriesRemaining"), v5) && v6)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      if (v5 | v6)
      {
        v7 = @"DASHBOARD_IDENTITY_CREDENTIAL_LOCKOUT_MESSAGE_PIN";
      }

      else
      {
        v7 = @"DASHBOARD_IDENTITY_CREDENTIAL_LOCKOUT_MESSAGE_PIN_AND_PASSWORD";
      }

      v8 = @"DASHBOARD_IDENTITY_CREDENTIAL_LOCKOUT_TITLE_PIN";
      if (!(v5 | v6))
      {
        v8 = @"DASHBOARD_IDENTITY_CREDENTIAL_LOCKOUT_TITLE_PIN_AND_PASSWORD";
      }

      if (v5)
      {
        v9 = @"DASHBOARD_IDENTITY_CREDENTIAL_LOCKOUT_MESSAGE_PASSWORD";
      }

      else
      {
        v9 = v7;
      }

      if (v5)
      {
        v10 = @"DASHBOARD_IDENTITY_CREDENTIAL_LOCKOUT_TITLE_PASSWORD";
      }

      else
      {
        v10 = v8;
      }

      v11 = PKLocalizedIdentityString(&v10->isa);
      v12 = PKLocalizedIdentityString(&v9->isa);
      v13 = objc_alloc_init(PKDashboardPassMessage);
      [(PKDashboardPassMessage *)v13 setIdentifier:@"identityUnderlyingCredentialLockout"];
      [(PKDashboardPassMessage *)v13 setTitle:v11];
      [(PKDashboardPassMessage *)v13 setMessage:v12];
      v14 = [*(a1 + 32) _messageImageWithName:@"MessageAlert" extension:@"pdf"];
      [(PKDashboardPassMessage *)v13 setImage:v14];

      v17 = [WeakRetained[119] appLaunchURL];
      if (v17)
      {
        v18 = PKLocalizedIdentityString(&cfstr_DashboardIdent_5.isa);
        [(PKDashboardPassMessage *)v13 setButtonTitle:v18];

        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __92__PKDashboardPaymentPassDataSource__messageIfUnderlyingCredentialIsLockedOutWithCompletion___block_invoke_2;
        v19[3] = &unk_1E8014F68;
        objc_copyWeak(&v21, (a1 + 48));
        v20 = v17;
        [(PKDashboardPassMessage *)v13 setActionOnButtonPress:v19];

        objc_destroyWeak(&v21);
      }

      (*(*(a1 + 40) + 16))(*(a1 + 40), v13, v15, v16);
    }
  }
}

void __92__PKDashboardPaymentPassDataSource__messageIfUnderlyingCredentialIsLockedOutWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    PKOpenURL();
    WeakRetained = v2;
  }
}

- (void)_messageForPrecursorPassUpgradeWithController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  devicePrimaryPrecursorRequest = [controllerCopy devicePrimaryPrecursorRequest];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__PKDashboardPaymentPassDataSource__messageForPrecursorPassUpgradeWithController_completion___block_invoke;
  v11[3] = &unk_1E801E470;
  v12 = controllerCopy;
  v13 = completionCopy;
  v11[4] = self;
  v9 = controllerCopy;
  v10 = completionCopy;
  [v9 requestDescriptionFor:devicePrimaryPrecursorRequest completion:v11];
}

void __93__PKDashboardPaymentPassDataSource__messageForPrecursorPassUpgradeWithController_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc_init(PKDashboardPassMessage);
    [(PKDashboardPassMessage *)v4 setIdentifier:@"precursorActionRequired"];
    v5 = [v3 localizedTitle];
    [(PKDashboardPassMessage *)v4 setTitle:v5];

    v6 = [v3 localizedDescription];
    [(PKDashboardPassMessage *)v4 setMessage:v6];

    [(PKDashboardPassMessage *)v4 setShowSpinner:*(*(a1 + 32) + 195)];
    v7 = [v3 actions];
    v8 = [v7 firstObject];

    if (v8)
    {
      v11 = [v8 localizedActionText];
      [(PKDashboardPassMessage *)v4 setButtonTitle:v11];

      v12 = [v8 actionType];
      if (v12 <= 6)
      {
        if (((1 << v12) & 0x33) != 0)
        {
          v13 = [*(a1 + 32) _messageCachedIconForPass:*(*(a1 + 32) + 952) useNotificationIcon:0];
          [(PKDashboardPassMessage *)v4 setImage:v13];
        }

        else
        {
          v14 = [*(a1 + 32) _messageImageWithName:@"MessageAlert" extension:@"pdf"];
          [(PKDashboardPassMessage *)v4 setImage:v14];

          [(PKDashboardPassMessage *)v4 setIsDestructiveAction:1];
        }
      }

      v15 = [v8 localizedActionText];

      if (v15)
      {
        objc_initWeak(&location, *(a1 + 32));
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __93__PKDashboardPaymentPassDataSource__messageForPrecursorPassUpgradeWithController_completion___block_invoke_2;
        v16[3] = &unk_1E8015570;
        objc_copyWeak(&v19, &location);
        v17 = v8;
        v18 = *(a1 + 40);
        [(PKDashboardPassMessage *)v4 setActionOnButtonPress:v16];

        objc_destroyWeak(&v19);
        objc_destroyWeak(&location);
      }
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v4, v9, v10);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __93__PKDashboardPaymentPassDataSource__messageForPrecursorPassUpgradeWithController_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) actionType];
    if (v4 > 2)
    {
      if (v4 != 3)
      {
        if (v4 == 4)
        {
          v5 = [*(a1 + 32) actionURL];
          if (!v5)
          {
LABEL_13:

            goto LABEL_15;
          }
        }

        else
        {
          if (v4 != 5)
          {
            goto LABEL_15;
          }

          v5 = [*(a1 + 32) actionURL];
          if (!v5)
          {
            goto LABEL_13;
          }
        }

        PKOpenURL();
        goto LABEL_13;
      }

LABEL_10:
      [WeakRetained _deleteButtonPressedFromSourceView:v6];
      goto LABEL_15;
    }

    if (v4 != 1)
    {
      if (v4 != 2)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    [WeakRetained _presentPrecursorActionFlowWithController:*(a1 + 40)];
  }

LABEL_15:
}

- (BOOL)performPrecursorPassAction
{
  precursorUpgradeController = self->_precursorUpgradeController;
  if (precursorUpgradeController)
  {
    [(PKDashboardPaymentPassDataSource *)self _presentPrecursorActionFlowWithController:self->_precursorUpgradeController];
  }

  return precursorUpgradeController != 0;
}

- (void)_presentPrecursorActionFlowWithController:(id)controller
{
  controllerCopy = controller;
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__PKDashboardPaymentPassDataSource__presentPrecursorActionFlowWithController___block_invoke;
  aBlock[3] = &unk_1E8011180;
  objc_copyWeak(&v24, location);
  v5 = _Block_copy(aBlock);
  v5[2](v5, 1);
  v6 = [[PKPaymentSetupDismissibleNavigationController alloc] initWithContext:0];
  v7 = objc_alloc(MEMORY[0x1E69B8D48]);
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v9 = [v7 initWithWebService:mEMORY[0x1E69B8EF8]];

  v10 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:0 provisioningController:v9 groupsController:0];
  [v10 setIsFollowupProvisioning:1];
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  navigationController = [WeakRetained navigationController];

  pass = self->_pass;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __78__PKDashboardPaymentPassDataSource__presentPrecursorActionFlowWithController___block_invoke_2;
  v19[3] = &unk_1E80111F8;
  objc_copyWeak(&v22, location);
  v20 = v6;
  v21 = v5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__PKDashboardPaymentPassDataSource__presentPrecursorActionFlowWithController___block_invoke_4;
  v16[3] = &unk_1E8010E20;
  v14 = v21;
  v18 = v14;
  v15 = v20;
  v17 = v15;
  [PKProvisioningFlowBridge startPrecursorPassFlowWithNavController:v15 context:v10 pass:pass precursorController:controllerCopy parentNavController:navigationController presentNavController:v19 completion:v16];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(location);
}

void __78__PKDashboardPaymentPassDataSource__presentPrecursorActionFlowWithController___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[195] == (a2 ^ 1))
  {
    WeakRetained[195] = a2;
    v4 = WeakRetained;
    [WeakRetained reloadMessagesAfterMessageInteraction];
    WeakRetained = v4;
  }
}

void __78__PKDashboardPaymentPassDataSource__presentPrecursorActionFlowWithController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 100);
    v5 = [v4 navigationController];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __78__PKDashboardPaymentPassDataSource__presentPrecursorActionFlowWithController___block_invoke_3;
    v7[3] = &unk_1E8010B50;
    v6 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v5 presentViewController:v6 animated:1 completion:v7];
  }
}

uint64_t __78__PKDashboardPaymentPassDataSource__presentPrecursorActionFlowWithController___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)_messageForPassInconsistencyWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    devicePrimaryContactlessPaymentApplication = [(PKPaymentPass *)self->_pass devicePrimaryContactlessPaymentApplication];
    subcredentials = [devicePrimaryContactlessPaymentApplication subcredentials];
    if ((PKUIOnlyDemoModeEnabled() & 1) != 0 || PKStoreDemoModeEnabled() || ![(PKPaymentPass *)self->_pass isCarKeyPass]|| [(PKPaymentPass *)self->_pass activationState]|| !subcredentials)
    {
      completionCopy[2](completionCopy, 0);
    }

    else
    {
      applicationIdentifier = [devicePrimaryContactlessPaymentApplication applicationIdentifier];
      objc_initWeak(&location, self);
      v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{applicationIdentifier, 0}];
      secureElement = self->_secureElement;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __79__PKDashboardPaymentPassDataSource__messageForPassInconsistencyWithCompletion___block_invoke;
      v11[3] = &unk_1E8015FC8;
      objc_copyWeak(&v15, &location);
      v14 = completionCopy;
      v10 = applicationIdentifier;
      v12 = v10;
      v13 = subcredentials;
      [(PKSecureElement *)secureElement appletCredentialsForAIDs:v8 completion:v11];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __79__PKDashboardPaymentPassDataSource__messageForPassInconsistencyWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && !a3)
  {
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = [v5 objectForKey:*(a1 + 32)];
    v9 = [v7 initWithArray:v8];

    if ([*(a1 + 40) intersectsSet:v9])
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = *(a1 + 40);
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = *v19;
        while (2)
        {
          for (i = 0; i != v11; i = (i + 1))
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v10);
            }

            if ([*(*(&v18 + 1) + 8 * i) state] == 1)
            {

              v11 = objc_alloc_init(PKDashboardPassMessage);
              [(PKDashboardPassMessage *)v11 setIdentifier:@"keyInconsistent"];
              v14 = [WeakRetained _messageImageWithName:@"MessageAlert" extension:@"pdf"];
              [(PKDashboardPassMessage *)v11 setImage:v14];

              v15 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:WeakRetained[119]];
              [(PKDashboardPassMessage *)v11 setAnalyticsReporterSubject:v15];

              if ([*(a1 + 40) pk_hasObjectPassingTest:&__block_literal_global_1870])
              {
                v16 = @"INCONSISTENT_SHARED_KEY_BODY";
              }

              else
              {
                v16 = @"INCONSISTENT_OWNER_KEY_BODY";
              }

              v10 = PKLocalizedCredentialString(&v16->isa);
              [(PKDashboardPassMessage *)v11 setMessage:v10];
              v17 = PKLocalizedCredentialString(&cfstr_InconsistentKe.isa);
              [(PKDashboardPassMessage *)v11 setTitle:v17];

              [(PKDashboardPassMessage *)v11 setIsDestructiveAction:0];
              goto LABEL_19;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_19:

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)executeEngagementActionForURL:(id)l
{
  lCopy = l;
  v4 = PKEnagementActionTypeForActionURL();
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      paymentDataProvider = self->_paymentDataProvider;
      uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
      [(PKPaymentDefaultDataProvider *)paymentDataProvider setDefaultPaymentPassIdentifier:uniqueID];
    }

    else
    {
      if (v4 == 5)
      {
        v16 = objc_alloc(MEMORY[0x1E69B8D48]);
        mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
        v7 = [v16 initWithWebService:mEMORY[0x1E69B8EF8]];

        v8 = [objc_alloc(MEMORY[0x1E69B8350]) initWithAccount:self->_account];
        [v8 setPaymentPass:self->_pass];
        v9 = [PKAccountFlowController alloc];
        v10 = v8;
        v11 = v7;
        selfCopy2 = self;
        v13 = 24;
      }

      else
      {
        if (v4 != 6)
        {
          goto LABEL_15;
        }

        v5 = objc_alloc(MEMORY[0x1E69B8D48]);
        mEMORY[0x1E69B8EF8]2 = [MEMORY[0x1E69B8EF8] sharedService];
        v7 = [v5 initWithWebService:mEMORY[0x1E69B8EF8]2];

        v8 = [objc_alloc(MEMORY[0x1E69B8350]) initWithAccount:self->_account];
        [v8 setPaymentPass:self->_pass];
        v9 = [PKAccountFlowController alloc];
        v10 = v8;
        v11 = v7;
        selfCopy2 = self;
        v13 = 4;
      }

      v18 = [(PKAccountFlowController *)v9 initWithAccountCredential:v10 provisioningController:v11 setupDelegate:selfCopy2 context:0 operations:v13];
      firstAccountViewController = [(PKAccountFlowController *)v18 firstAccountViewController];
      v20 = [[PKNavigationController alloc] initWithRootViewController:firstAccountViewController];
      WeakRetained = objc_loadWeakRetained(&self->_viewController);
      navigationController = [WeakRetained navigationController];
      [navigationController presentViewController:v20 animated:1 completion:0];
    }
  }

  else
  {
    switch(v4)
    {
      case 1:
        [(PKDashboardPaymentPassDataSource *)self _presentPassDetailsWithAction:0];
        break;
      case 2:
        PKOpenURL();
        break;
      case 3:
        [(PKDashboardPaymentPassDataSource *)self _presentCardNumbers];
        break;
    }
  }

LABEL_15:
}

- (id)_messageForRangingSuspendedPass
{
  v74 = *MEMORY[0x1E69E9840];
  if ([(PKPaymentPass *)self->_pass effectiveContactlessPaymentApplicationState]!= 1)
  {
    v20 = 0;
    goto LABEL_43;
  }

  val = self;
  deviceContactlessPaymentApplications = [(PKPaymentPass *)self->_pass deviceContactlessPaymentApplications];
  v53 = self->_paymentService;
  if ([deviceContactlessPaymentApplications count])
  {
    isHomeKeyPass = [(PKPaymentPass *)self->_pass isHomeKeyPass];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = deviceContactlessPaymentApplications;
    v49 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
    if (!v49)
    {
      v20 = 0;
      v31 = obj;
      goto LABEL_41;
    }

    v54 = 0;
    v3 = 0;
    v51 = isHomeKeyPass;
    v48 = *v69;
    do
    {
      v4 = 0;
      do
      {
        if (*v69 != v48)
        {
          v5 = v4;
          objc_enumerationMutation(obj);
          v4 = v5;
        }

        v50 = v4;
        v6 = *(*(&v68 + 1) + 8 * v4);
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        subcredentials = [v6 subcredentials];
        v8 = [subcredentials countByEnumeratingWithState:&v64 objects:v72 count:16];
        if (v8)
        {
          v9 = *v65;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v65 != v9)
              {
                objc_enumerationMutation(subcredentials);
              }

              v11 = *(*(&v64 + 1) + 8 * i);
              if (([v11 supportedRadioTechnologies] & 2) != 0)
              {
                identifier = [v11 identifier];
                applicationIdentifier = [v6 applicationIdentifier];
                secureElementIdentifier = [v6 secureElementIdentifier];
                v15 = [(PKPaymentService *)v53 rangingSuspensionReasonForAppletSubcredentialIdentifier:identifier paymentApplicationIdentifier:applicationIdentifier secureElementIdentifier:secureElementIdentifier];

                v54 |= v15;
                if ((isHomeKeyPass & 1) == 0)
                {
                  entitlement = [v11 entitlement];
                  value = [entitlement value];
                  [value unsignedIntegerValue];
                  v51 = PKAppletSubcredentialEntitlementTypeFromValue();
                }

                v3 = 1;
              }
            }

            v8 = [subcredentials countByEnumeratingWithState:&v64 objects:v72 count:16];
          }

          while (v8);
        }

        v4 = v50 + 1;
      }

      while (v50 + 1 != v49);
      v49 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
    }

    while (v49);

    if (v3)
    {
      if (!isHomeKeyPass)
      {
LABEL_26:
        v20 = 0;
        if ([(PKPaymentPass *)val->_pass activationState]|| !v54)
        {
          goto LABEL_42;
        }

        secureElementPass = [(PKPaymentPass *)val->_pass secureElementPass];
        supportedRadioTechnologies = [secureElementPass supportedRadioTechnologies];

        v20 = objc_alloc_init(PKDashboardPassMessage);
        [(PKDashboardPassMessage *)v20 setIdentifier:@"identityUnusable"];
        v23 = [(PKDashboardPaymentPassDataSource *)val _messageImageWithName:@"MessageAlert" extension:@"pdf"];
        [(PKDashboardPassMessage *)v20 setImage:v23];

        v24 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:val->_pass];
        [(PKDashboardPassMessage *)v20 setAnalyticsReporterSubject:v24];

        v25 = PKRangingSuspensionDisplayableReasonForRangingSuspensionReason();
        v26 = 0;
        if (v25 > 1)
        {
          if (v25 != 2)
          {
            if (v25 != 3)
            {
              if (v25 == 4)
              {
                v27 = PKLocalizedCredentialString(&cfstr_UwbUpdateFaile.isa);
                v28 = PKLocalizedCredentialString(&cfstr_LearnMoreButto.isa);
                objc_initWeak(&location, val);
                aBlock[0] = MEMORY[0x1E69E9820];
                aBlock[1] = 3221225472;
                aBlock[2] = __67__PKDashboardPaymentPassDataSource__messageForRangingSuspendedPass__block_invoke_4;
                aBlock[3] = &unk_1E8015548;
                objc_copyWeak(&v56, &location);
                v26 = _Block_copy(aBlock);
                if (v51 > 6)
                {
                  v31 = 0;
                  goto LABEL_37;
                }

                if (((1 << v51) & 0x35) != 0)
                {
                  v29 = @"UWB_UPDATE_FAILED_BODY_FULL_ACCESS";
                }

                else if (((1 << v51) & 0xA) != 0)
                {
                  if (isHomeKeyPass)
                  {
                    v30 = PKLocalizedHomeKitUWBString(&cfstr_UwbUpdateFaile_1.isa);
                    goto LABEL_36;
                  }

                  v29 = @"UWB_UPDATE_FAILED_BODY_UNLOCK_ONLY";
                }

                else
                {
                  v29 = @"UWB_UPDATE_FAILED_BODY_PROPRIETARY";
                }

                v30 = PKLocalizedCredentialString(&v29->isa);
LABEL_36:
                v31 = v30;
LABEL_37:
                objc_destroyWeak(&v56);
                objc_destroyWeak(&location);
LABEL_79:
                [(PKDashboardPassMessage *)v20 setTitle:v27];
                [(PKDashboardPassMessage *)v20 setMessage:v31];
                [(PKDashboardPassMessage *)v20 setButtonTitle:v28];
                [(PKDashboardPassMessage *)v20 setIsDestructiveAction:0];
                [(PKDashboardPassMessage *)v20 setActionOnButtonPress:v26];

                goto LABEL_41;
              }

LABEL_78:
              v27 = 0;
              v28 = 0;
              v31 = 0;
              goto LABEL_79;
            }

            v27 = PKLocalizedCredentialString(&cfstr_KnownProhibite_2.isa);
            v28 = PKLocalizedCredentialString(&cfstr_LearnMoreButto.isa);
            objc_initWeak(&location, val);
            v57[0] = MEMORY[0x1E69E9820];
            v57[1] = 3221225472;
            v57[2] = __67__PKDashboardPaymentPassDataSource__messageForRangingSuspendedPass__block_invoke_3;
            v57[3] = &unk_1E8015548;
            objc_copyWeak(&v58, &location);
            v26 = _Block_copy(v57);
            if (v51 > 6)
            {
              v31 = 0;
              goto LABEL_76;
            }

            if (((1 << v51) & 0x35) != 0)
            {
              v41 = @"KNOWN_PROHIBITED_LOCATION_BODY_FULL_ACCESS";
              v42 = @"KNOWN_PROHIBITED_LOCATION_BODY_BT_ONLY_FULL_ACCESS";
            }

            else
            {
              if (((1 << v51) & 0xA) != 0)
              {
                if (supportedRadioTechnologies == 2)
                {
                  v43 = @"KNOWN_PROHIBITED_LOCATION_BODY_BT_ONLY_UNLOCK_ONLY";
                }

                else
                {
                  v43 = @"KNOWN_PROHIBITED_LOCATION_BODY_UNLOCK_ONLY";
                }

                if (supportedRadioTechnologies != 2 && ((isHomeKeyPass ^ 1) & 1) == 0)
                {
                  v44 = PKLocalizedHomeKitUWBString(&cfstr_KnownProhibite_6.isa);
                  goto LABEL_75;
                }

LABEL_74:
                v44 = PKLocalizedCredentialString(&v43->isa);
LABEL_75:
                v31 = v44;
LABEL_76:
                objc_destroyWeak(&v58);
                objc_destroyWeak(&location);
                goto LABEL_79;
              }

              v41 = @"KNOWN_PROHIBITED_LOCATION_BODY_PROPRIETARY";
              v42 = @"KNOWN_PROHIBITED_LOCATION_BODY_BT_ONLY_PROPRIETARY";
            }

            if (supportedRadioTechnologies == 2)
            {
              v43 = v42;
            }

            else
            {
              v43 = v41;
            }

            goto LABEL_74;
          }

          v27 = PKLocalizedCredentialString(&cfstr_BluetoothDisab.isa);
          v28 = PKLocalizedCredentialString(&cfstr_TurnOnBluetoot.isa);
          objc_initWeak(&location, val);
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __67__PKDashboardPaymentPassDataSource__messageForRangingSuspendedPass__block_invoke_2;
          v59[3] = &unk_1E8015548;
          objc_copyWeak(&v60, &location);
          v26 = _Block_copy(v59);
          if (v51 > 6)
          {
            v31 = 0;
            goto LABEL_67;
          }

          if (((1 << v51) & 0x35) != 0)
          {
            v37 = @"BLUETOOTH_DISABLED_BODY_FULL_ACCESS";
            v38 = @"BLUETOOTH_DISABLED_BODY_FULL_ACCESS_BT_ONLY";
          }

          else
          {
            if (((1 << v51) & 0xA) != 0)
            {
              if (supportedRadioTechnologies == 2)
              {
                v39 = @"BLUETOOTH_DISABLED_BODY_UNLOCK_ONLY_BT_ONLY";
              }

              else
              {
                v39 = @"BLUETOOTH_DISABLED_BODY_UNLOCK_ONLY";
              }

              if (supportedRadioTechnologies != 2 && ((isHomeKeyPass ^ 1) & 1) == 0)
              {
                v40 = PKLocalizedHomeKitUWBString(&cfstr_BluetoothDisab_3.isa);
                goto LABEL_66;
              }

LABEL_65:
              v40 = PKLocalizedCredentialString(&v39->isa);
LABEL_66:
              v31 = v40;
LABEL_67:
              objc_destroyWeak(&v60);
              objc_destroyWeak(&location);
              goto LABEL_79;
            }

            v37 = @"BLUETOOTH_DISABLED_BODY_PROPRIETARY";
            v38 = @"BLUETOOTH_DISABLED_BODY_PROPRIETARY_BT_ONLY";
          }

          if (supportedRadioTechnologies == 2)
          {
            v39 = v38;
          }

          else
          {
            v39 = v37;
          }

          goto LABEL_65;
        }

        if (!v25)
        {

          v20 = 0;
          v31 = 0;
          v27 = 0;
          v28 = 0;
          v26 = 0;
          goto LABEL_79;
        }

        if (v25 != 1)
        {
          goto LABEL_78;
        }

        v27 = PKLocalizedCredentialString(&cfstr_AirplaneModeEn.isa);
        v28 = PKLocalizedCredentialString(&cfstr_TurnOffAirplan_0.isa);
        objc_initWeak(&location, val);
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __67__PKDashboardPaymentPassDataSource__messageForRangingSuspendedPass__block_invoke;
        v61[3] = &unk_1E8015548;
        objc_copyWeak(&v62, &location);
        v26 = _Block_copy(v61);
        if (v51 > 6)
        {
          v31 = 0;
          goto LABEL_58;
        }

        if (((1 << v51) & 0x35) != 0)
        {
          v33 = @"AIRPLANE_MODE_ENABLED_BODY_FULL_ACCESS";
          v34 = @"AIRPLANE_MODE_ENABLED_BODY_FULL_ACCESS_BT_ONLY";
        }

        else
        {
          if (((1 << v51) & 0xA) != 0)
          {
            if (supportedRadioTechnologies == 2)
            {
              v35 = @"AIRPLANE_MODE_ENABLED_BODY_UNLOCK_ONLY_BT_ONLY";
            }

            else
            {
              v35 = @"AIRPLANE_MODE_ENABLED_BODY_UNLOCK_ONLY";
            }

            if (supportedRadioTechnologies != 2 && ((isHomeKeyPass ^ 1) & 1) == 0)
            {
              v36 = PKLocalizedHomeKitUWBString(&cfstr_AirplaneModeEn_3.isa);
              goto LABEL_57;
            }

LABEL_56:
            v36 = PKLocalizedCredentialString(&v35->isa);
LABEL_57:
            v31 = v36;
LABEL_58:
            objc_destroyWeak(&v62);
            objc_destroyWeak(&location);
            goto LABEL_79;
          }

          v33 = @"AIRPLANE_MODE_ENABLED_BODY_PROPRIETARY";
          v34 = @"AIRPLANE_MODE_ENABLED_BODY_PROPRIETARY_BT_ONLY";
        }

        if (supportedRadioTechnologies == 2)
        {
          v35 = v34;
        }

        else
        {
          v35 = v33;
        }

        goto LABEL_56;
      }

      uniqueID = [(PKPaymentPass *)val->_pass uniqueID];
      v19 = [(PKPaymentService *)v53 expressPassConfigurationWithPassUniqueIdentifier:uniqueID];

      if (v19)
      {
        if ([v19 isUWBExpressEnabled])
        {

          goto LABEL_26;
        }

        v20 = 0;
        v31 = v19;
      }

      else
      {
        v31 = 0;
        v20 = 0;
      }

LABEL_41:

      goto LABEL_42;
    }
  }

  v20 = 0;
LABEL_42:

LABEL_43:

  return v20;
}

void __67__PKDashboardPaymentPassDataSource__messageForRangingSuspendedPass__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root="];
    PKOpenURL();

    WeakRetained = v3;
  }
}

void __67__PKDashboardPaymentPassDataSource__messageForRangingSuspendedPass__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=Bluetooth"];
    PKOpenURL();

    WeakRetained = v3;
  }
}

void __67__PKDashboardPaymentPassDataSource__messageForRangingSuspendedPass__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/HT212274"];
    PKOpenURL();

    WeakRetained = v3;
  }
}

void __67__PKDashboardPaymentPassDataSource__messageForRangingSuspendedPass__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/en-us/HT208733"];
    PKOpenURL();

    WeakRetained = v3;
  }
}

- (id)_messageForHomeAccessRestricted
{
  if (self->_homeKitIsHomeAccessRestricted)
  {
    v3 = objc_alloc_init(PKDashboardPassMessage);
    [(PKDashboardPassMessage *)v3 setIdentifier:@"homeAccessRestricted"];
    v4 = PKLocalizedHomeKeyString(&cfstr_DashboardHomeA.isa);
    [(PKDashboardPassMessage *)v3 setTitle:v4];

    v5 = PKLocalizedHomeKeyString(&cfstr_DashboardHomeA_0.isa);
    [(PKDashboardPassMessage *)v3 setMessage:v5];

    v6 = [PKDashboardPassMessageImageDescriptorSymbol alloc];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v8 = [(PKDashboardPassMessageImageDescriptorSymbol *)v6 initWithName:@"lock.badge.clock.fill" tintColor:secondaryLabelColor backgroundColor:0];

    [(PKDashboardPassMessage *)v3 setImageDescriptor:v8];
    [(PKDashboardPassMessage *)v3 setIsDestructiveAction:0];
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__PKDashboardPaymentPassDataSource__messageForHomeAccessRestricted__block_invoke;
    v10[3] = &unk_1E8015548;
    objc_copyWeak(&v11, &location);
    [(PKDashboardPassMessage *)v3 setActionOnMessagePress:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __67__PKDashboardPaymentPassDataSource__messageForHomeAccessRestricted__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _presentRestrictedGuestAccessSchedule];
    WeakRetained = v2;
  }
}

- (id)_messageForBroadwayDiscoverability
{
  if (PKIsPhone() && PKBroadwayDiscoverability2024Enabled() && (PKAppleCardDismissedBroadwayDiscoverabilityMessage() & 1) == 0)
  {
    v3 = objc_alloc_init(PKDashboardPassMessage);
    [(PKDashboardPassMessage *)v3 setType:1];
    [(PKDashboardPassMessage *)v3 setIdentifier:@"broadwayDiscoverability"];
    v5 = PKLocalizedFeatureString();
    [(PKDashboardPassMessage *)v3 setTitle:v5];

    v6 = PKLocalizedFeatureString();
    [(PKDashboardPassMessage *)v3 setMessage:v6];

    v7 = PKLocalizedFeatureString();
    [(PKDashboardPassMessage *)v3 setButtonTitle:v7];

    v8 = [(PKDashboardPaymentPassDataSource *)self _messageImageWithName:@"AppleCardFeatures-Benefits" extension:@"png"];
    [(PKDashboardPassMessage *)v3 setImage:v8];

    [(PKDashboardPassMessage *)v3 setShowDisclosure:1];
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__PKDashboardPaymentPassDataSource__messageForBroadwayDiscoverability__block_invoke;
    v11[3] = &unk_1E8015548;
    objc_copyWeak(&v12, &location);
    [(PKDashboardPassMessage *)v3 setActionOnButtonPress:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__PKDashboardPaymentPassDataSource__messageForBroadwayDiscoverability__block_invoke_2;
    v9[3] = &unk_1E8010998;
    objc_copyWeak(&v10, &location);
    [(PKDashboardPassMessage *)v3 setActionOnDismiss:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __70__PKDashboardPaymentPassDataSource__messageForBroadwayDiscoverability__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = objc_alloc_init(PKAppleCardFeaturesAndBenefitsViewController);
    v3 = objc_loadWeakRetained(v5 + 100);
    v4 = [v3 navigationController];
    [v4 pushViewController:v2 animated:1];

    WeakRetained = v5;
  }
}

void __70__PKDashboardPaymentPassDataSource__messageForBroadwayDiscoverability__block_invoke_2(uint64_t a1)
{
  PKAppleCardSetDismissedBroadwayDiscoverabilityMessage();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadMessagesAfterMessageInteraction];
}

- (void)paymentOfferConfirmationRecordChanged:(id)changed forTransactionWithPaymentHash:(id)hash
{
  changedCopy = changed;
  hashCopy = hash;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__PKDashboardPaymentPassDataSource_paymentOfferConfirmationRecordChanged_forTransactionWithPaymentHash___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = changedCopy;
  v12 = hashCopy;
  v8 = hashCopy;
  v9 = changedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __104__PKDashboardPaymentPassDataSource_paymentOfferConfirmationRecordChanged_forTransactionWithPaymentHash___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _udpdateInternalStateForConfirmationRecord:*(a1 + 40) paymentHash:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 reloadMessagesWithReason:@"PKPaymentOfferConfirmationRecord updated"];
}

- (void)visibilityDidChangeToState:(unsigned __int8)state
{
  if (state == 1)
  {
    [(PKDashboardPaymentPassDataSource *)self reloadBankConnectData];

    [(PKDashboardPaymentPassDataSource *)self reloadAssociatedPaymentRewardsBalance];
  }
}

- (void)groupView:(id)view frontmostPassViewDidChange:(id)change withContext:(id)context
{
  [(PKDashboardPaymentPassDataSource *)self _setPassStateProvider:change];
  [(PKDashboardPaymentPassDataSource *)self reloadFrontmostPass];

  [(PKDashboardPaymentPassDataSource *)self reloadAllContent];
}

- (void)_setPassStateProvider:(id)provider
{
  providerCopy = provider;
  passStateProvider = self->_passStateProvider;
  if (passStateProvider != providerCopy)
  {
    v7 = providerCopy;
    [(PKPassDynamicStateProviding *)passStateProvider removePassStateObserver:self];
    objc_storeStrong(&self->_passStateProvider, provider);
    [(PKPassDynamicStateProviding *)self->_passStateProvider addPassStateObserver:self];
    providerCopy = v7;
  }
}

- (void)passStateProvider:(id)provider didUpdatePassState:(id)state
{
  pass = [provider pass];
  pass = self->_pass;

  if (pass == pass)
  {
    v7 = [(PKDashboardPaymentPassDataSource *)self firstSectionIndexForSectionIdentifier:3];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ([(NSArray *)self->_tileGroups count])
    {
      v8 = 0;
      do
      {
        v9 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v7 + v8];
        v10 = [(PKDashboardPaymentPassDataSource *)self itemAtIndexPath:v9];
        [WeakRetained itemChanged:v10 atIndexPath:v9];

        ++v8;
      }

      while (v8 < [(NSArray *)self->_tileGroups count]);
    }
  }
}

- (void)freezeContentLoaded
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_contentLoadedFrozen)
  {
    self->_contentLoadedFrozen = 1;
    v3 = [(NSMutableArray *)self->_executionBlocksContentIsLoaded copy];
    [(NSMutableArray *)self->_executionBlocksContentIsLoaded removeAllObjects];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)updateContentIsLoaded
{
  v57 = *MEMORY[0x1E69E9840];
  if (!self->_allContentIsLoaded && !self->_contentLoadedFrozen)
  {
    uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
    v49 = objc_alloc(MEMORY[0x1E696AD60]);
    if (self->_messagesLoaded)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    if (self->_secondaryMessagesLoaded)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v46 = v4;
    v47 = v3;
    if (self->_engagementMessagesLoaded)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    if (self->_balanceLoaded)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v44 = v6;
    v45 = v5;
    if (self->_productsLoaded)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v43 = v7;
    if (self->_scheduledPaymentsLoaded)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    if (self->_familyCollectionLoaded)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    if (self->_creditRecoveryPaymentPlansLoaded)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    if (self->_tilesLoaded)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    if (self->_auxiliarySectionInfoLoaded)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    if (self->_homeKitRestrictedGuestAccessStateLoaded)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    if ([(PKDashboardPaymentPassDataSource *)self _financeKitTransactionsLoaded])
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    if ([(PKDashboardPaymentPassDataSource *)self accountsLoaded])
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = [v49 initWithFormat:@"Dashboard loading (%p): %@ - m:%@, sm:%@, em:%@, b:%@, p:%@, sp:%@, f:%@, crpp:%@, ti:%@, as:%@, rg:%@, fk:%@, a:%@", self, uniqueID, v47, v46, v45, v44, v43, v8, v9, v10, v11, v12, v13, v14, v15];
    v17 = v16;
    if (self->_accountUsersLoaded)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    [v16 appendFormat:@" u:%@", v18];
    if (self->_accountUserInvitationsLoaded)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    [v17 appendFormat:@" ui:%@", v19];
    if (self->_physicalCardsLoaded)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    [v17 appendFormat:@" pc:%@", v20];
    if ([(PKDashboardPaymentPassDataSource *)self recurringPeerPaymentsLoaded])
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    [v17 appendFormat:@" rpp:%@", v21];
    if ([(PKDashboardPaymentPassDataSource *)self isBankConnectSupported])
    {
      bankConnectDataLoaded = [(PKDashboardPaymentPassDataSource *)self bankConnectDataLoaded];
      v23 = !bankConnectDataLoaded;
      if (bankConnectDataLoaded)
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }
    }

    else
    {
      v23 = 0;
      v24 = @"YES";
    }

    [v17 appendFormat:@" bc:%@", v24];
    _shouldUseFinanceKitTransactions = [(PKDashboardPaymentPassDataSource *)self _shouldUseFinanceKitTransactions];
    v26 = _shouldUseFinanceKitTransactions;
    if (!v23 && !_shouldUseFinanceKitTransactions)
    {
      if ([(PKDashboardPaymentPassDataSource *)self isBankConnectLinked])
      {
        v26 = 1;
      }

      else
      {
        if (self->_transactions)
        {
          v27 = @"YES";
        }

        else
        {
          v27 = @"NO";
        }

        if (self->_transactionSourceCollection)
        {
          v28 = @"YES";
        }

        else
        {
          v28 = @"NO";
        }

        [v17 appendFormat:@" t:%@, tg:%@, tsc:%@", v27, v28];
        if (self->_transactions)
        {
          v26 = self->_transactionSourceCollection != 0;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    v29 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v56 = v17;
      _os_log_impl(&dword_1BD026000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    if (v26 && self->_tilesLoaded && self->_messagesLoaded && self->_secondaryMessagesLoaded && self->_auxiliarySectionInfoLoaded && self->_balanceLoaded && self->_productsLoaded && self->_scheduledPaymentsLoaded && self->_familyCollectionLoaded && self->_creditRecoveryPaymentPlansLoaded && self->_physicalCardsLoaded && self->_engagementMessagesLoaded && self->_accountUsersLoaded && self->_accountUserInvitationsLoaded && [(PKDashboardPaymentPassDataSource *)self accountsLoaded]&& [(PKDashboardPaymentPassDataSource *)self recurringPeerPaymentsLoaded]&& self->_homeKitRestrictedGuestAccessStateLoaded && !(v23 | ![(PKDashboardPaymentPassDataSource *)self _financeKitTransactionsLoaded]))
    {
      v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Dashboard loading (%p): Completed", self];
      v31 = PKLogFacilityTypeGetObject();
      v32 = os_signpost_id_make_with_pointer(v31, self);
      if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v33 = v32;
        if (os_signpost_enabled(v31))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1BD026000, v31, OS_SIGNPOST_INTERVAL_END, v33, "PKDashboardPaymentPassDataSource:contentLoad", "", buf, 2u);
        }
      }

      v34 = PKTimeProfileEnd();
      self->_allContentIsLoaded = 1;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v36 = WeakRetained;
      if (WeakRetained)
      {
        [WeakRetained contentIsLoaded];
      }

      v37 = [(NSMutableArray *)self->_executionBlocksContentIsLoaded copy];
      [(NSMutableArray *)self->_executionBlocksContentIsLoaded removeAllObjects];
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v38 = v37;
      v39 = [v38 countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v51;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v51 != v41)
            {
              objc_enumerationMutation(v38);
            }

            (*(*(*(&v50 + 1) + 8 * i) + 16))();
          }

          v40 = [v38 countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v40);
      }
    }
  }
}

- (void)reloadAllContent
{
  [(PKDashboardPaymentPassDataSource *)self reloadDialogRequests];
  [(PKDashboardPaymentPassDataSource *)self reloadAccount];
  [(PKDashboardPaymentPassDataSource *)self reloadTransitSection];
  [(PKDashboardPaymentPassDataSource *)self reloadBankConnectData];

  [(PKDashboardPaymentPassDataSource *)self reloadAssociatedPaymentRewardsBalance];
}

- (void)_lostModeButtonTapped
{
  if (self->_performingLostModeExit)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Skipping FMDFMIP lost mode exit.", buf, 2u);
    }
  }

  else
  {
    self->_performingLostModeExit = 1;
    [(PKDashboardPaymentPassDataSource *)self reloadMessagesWithReason:@"lost mode tap"];
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Starting FMDFMIP lost mode exit.", buf, 2u);
    }

    objc_initWeak(buf, self);
    mEMORY[0x1E699C848] = [MEMORY[0x1E699C848] sharedInstance];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__PKDashboardPaymentPassDataSource__lostModeButtonTapped__block_invoke;
    v6[3] = &unk_1E8011338;
    objc_copyWeak(&v7, buf);
    [mEMORY[0x1E699C848] initiateLostModeExitAuthWithCompletion:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }
}

void __57__PKDashboardPaymentPassDataSource__lostModeButtonTapped__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [v3 localizedDescription];
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Error exiting lost mode: %@", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Completed FMDFMIP lost mode exit.", buf, 2u);
    }

    PKSetNeedsLostModeExitAuth();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PKDashboardPaymentPassDataSource__lostModeButtonTapped__block_invoke_2051;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v8, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v8);
}

void __57__PKDashboardPaymentPassDataSource__lostModeButtonTapped__block_invoke_2051(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[194] = 0;
    v2 = WeakRetained;
    [WeakRetained reloadMessagesWithReason:@"lost mode exit"];
    WeakRetained = v2;
  }
}

- (void)_presentAboutClosedAccounts
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  navigationController = [WeakRetained navigationController];

  if (navigationController)
  {
    v4 = [[PKAccountClosedViewController alloc] initWithAccount:self->_account accountUserCollection:self->_accountUserCollection familyMemberCollection:self->_familyCollection context:0];
    v5 = [[PKNavigationController alloc] initWithRootViewController:v4];
    [navigationController presentViewController:v5 animated:1 completion:0];
  }
}

- (void)_presentCardNumbers
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  [WeakRetained presentCardNumbers];
}

- (void)_presentPassDetailsWithAction:(unint64_t)action
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  [(PKDashboardPassGroupViewController *)WeakRetained _presentPassDetailsAnimated:action action:?];
}

- (void)_presentPaymentPassDetailsWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [(PKDashboardPassGroupViewController *)WeakRetained _presentPaymentPassDetailsAnimated:completionCopy completion:?];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)_presentPassWithPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  _passGroupsViewController = [(PKDashboardPassGroupViewController *)WeakRetained _passGroupsViewController];
  [_passGroupsViewController presentPassWithUniqueID:identifierCopy animated:1 completionHandler:0];
}

- (void)_presentApplCashFamilySetupForFamilyMember:(id)member
{
  memberCopy = member;
  v5 = [PKPeerPaymentAssociatedAccountsController alloc];
  familyCollection = self->_familyCollection;
  avatarManager = self->_avatarManager;
  v8 = objc_alloc_init(MEMORY[0x1E69B8A60]);
  v9 = [(PKPeerPaymentAssociatedAccountsController *)v5 initWithFamilyCollection:familyCollection avatarManager:avatarManager passLibraryDataProvider:v8 context:0];
  associatedAccountsController = self->_associatedAccountsController;
  self->_associatedAccountsController = v9;

  v13 = [[PKPeerPaymentAssociatedAccountPresentationContext alloc] initWithPKFamilyMember:memberCopy setupType:1];
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  navigationController = [WeakRetained navigationController];

  [(PKPeerPaymentAssociatedAccountsController *)self->_associatedAccountsController presentAssociatedAccountsFlowWithPresentationContext:v13 fromNavigationController:navigationController];
}

- (void)_presentBalanceDetails
{
  v3 = [PKCreditBalanceDetailsViewController alloc];
  transactionSourceCollection = self->_transactionSourceCollection;
  familyCollection = self->_familyCollection;
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v9 = [(PKCreditBalanceDetailsViewController *)v3 initWithStyle:0 transactionSourceCollection:transactionSourceCollection familyCollection:familyCollection webService:mEMORY[0x1E69B8EF8] account:self->_account accountUserCollection:self->_accountUserCollection physicalCards:self->_physicalCards statement:0 previousStatements:0];

  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  navigationController = [WeakRetained navigationController];
  [navigationController pushViewController:v9 animated:1];
}

- (void)_presentCreateAccountUserInvitation
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  navigationController = [WeakRetained navigationController];
  [PKAccountInvitationController presentCreateAccountUserInvitationWithViewController:navigationController account:self->_account accountUserCollection:self->_accountUserCollection familyMemberCollection:self->_familyCollection context:0 completion:0];
}

- (void)_presentAccountUserDetails:(id)details
{
  detailsCopy = details;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__PKDashboardPaymentPassDataSource__presentAccountUserDetails___block_invoke;
  v6[3] = &unk_1E801E4B8;
  v7 = detailsCopy;
  v5 = detailsCopy;
  [(PKDashboardPaymentPassDataSource *)self _presentPaymentPassDetailsWithCompletion:v6];
}

void __63__PKDashboardPaymentPassDataSource__presentAccountUserDetails___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 altDSID];
  [v3 presentAccountUserDetailsForAccountUserAltDSID:v4];
}

- (void)_presentAccountUserInvitation:(id)invitation
{
  invitationCopy = invitation;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__PKDashboardPaymentPassDataSource__presentAccountUserInvitation___block_invoke;
  v6[3] = &unk_1E801E4B8;
  v7 = invitationCopy;
  v5 = invitationCopy;
  [(PKDashboardPaymentPassDataSource *)self _presentPaymentPassDetailsWithCompletion:v6];
}

void __66__PKDashboardPaymentPassDataSource__presentAccountUserInvitation___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 applicationIdentifier];
  [v3 presentAccountUserInvitationWithIdentifier:v4];
}

- (void)_presentInboxMessage:(id)message
{
  messageCopy = message;
  if (self->_inboxDataSource)
  {
    objc_initWeak(&location, self);
    inboxDataSource = self->_inboxDataSource;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__PKDashboardPaymentPassDataSource__presentInboxMessage___block_invoke;
    v6[3] = &unk_1E80110E0;
    objc_copyWeak(&v8, &location);
    v7 = messageCopy;
    [(PKInboxDataSource *)inboxDataSource updateInboxWithCompletion:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __57__PKDashboardPaymentPassDataSource__presentInboxMessage___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57__PKDashboardPaymentPassDataSource__presentInboxMessage___block_invoke_2;
  v2[3] = &unk_1E80110E0;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v4);
}

void __57__PKDashboardPaymentPassDataSource__presentInboxMessage___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && [WeakRetained[59] hasInboxMessages])
  {
    v4 = [[PKInboxViewController alloc] initWithInboxDataSource:v3[59] contactAvatarManager:v3[105] context:0];
    v5 = [[PKNavigationController alloc] initWithRootViewController:v4];
    v6 = objc_loadWeakRetained(v3 + 100);
    v7 = [v6 navigationController];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__PKDashboardPaymentPassDataSource__presentInboxMessage___block_invoke_3;
    v9[3] = &unk_1E8010A10;
    v10 = v4;
    v11 = *(a1 + 32);
    v8 = v4;
    [v7 presentViewController:v5 animated:1 completion:v9];
  }
}

void __57__PKDashboardPaymentPassDataSource__presentInboxMessage___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) identifier];
  [v1 presentInboxMessageWithIdentifier:v2];
}

- (void)_presentRestrictedGuestAccessSchedule
{
  homeKitHomeIdentifier = self->_homeKitHomeIdentifier;
  if (homeKitHomeIdentifier)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __73__PKDashboardPaymentPassDataSource__presentRestrictedGuestAccessSchedule__block_invoke;
    v4[3] = &unk_1E8010A10;
    v4[4] = self;
    v4[5] = homeKitHomeIdentifier;
    v3 = homeKitHomeIdentifier;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

void __73__PKDashboardPaymentPassDataSource__presentRestrictedGuestAccessSchedule__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 800));
  [(PKDashboardPassGroupViewController *)WeakRetained presentRestrictedGuestAccessScheduleWithHomeIdentifier:?];
}

- (BOOL)_canDisplayBalance
{
  if ([(PKDashboardPaymentPassDataSource *)self _isCreditPass])
  {
    v3 = MEMORY[0x1E69B8770];
    transactionSourceCollection = self->_transactionSourceCollection;
    account = self->_account;

    LOBYTE(_isPeerPaymentPass) = [v3 shouldDisplayAccountInformationForTransactionSourceCollection:transactionSourceCollection withAccount:account];
  }

  else if ([(PKDashboardPaymentPassDataSource *)self _isAppleBalancePass])
  {

    LOBYTE(_isPeerPaymentPass) = [(PKDashboardPaymentPassDataSource *)self canDisplayAppleBalanceBalance];
  }

  else
  {
    _isPeerPaymentPass = [(PKDashboardPaymentPassDataSource *)self _isPeerPaymentPass];
    if (_isPeerPaymentPass)
    {

      LOBYTE(_isPeerPaymentPass) = [(PKDashboardPaymentPassDataSource *)self canDisplayPeerPaymentBalanceModule];
    }
  }

  return _isPeerPaymentPass;
}

- (void)_performReloadTransitSection
{
  uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
  v4 = dispatch_group_create();
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__41;
  v31[4] = __Block_byref_object_dispose__41;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__41;
  v29[4] = __Block_byref_object_dispose__41;
  v30 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__41;
  v27[4] = __Block_byref_object_dispose__41;
  v28 = 0;
  objc_initWeak(&location, self);
  devicePrimaryPaymentApplication = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
  dispatch_group_enter(v4);
  paymentDataProvider = self->_paymentDataProvider;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __64__PKDashboardPaymentPassDataSource__performReloadTransitSection__block_invoke;
  v21[3] = &unk_1E801E4E0;
  objc_copyWeak(&v25, &location);
  v24 = v31;
  v7 = devicePrimaryPaymentApplication;
  v22 = v7;
  v8 = v4;
  v23 = v8;
  [(PKPaymentDefaultDataProvider *)paymentDataProvider transitStateWithPassUniqueIdentifier:uniqueID paymentApplication:v7 completion:v21];
  dispatch_group_enter(v8);
  v9 = self->_paymentDataProvider;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__PKDashboardPaymentPassDataSource__performReloadTransitSection__block_invoke_2;
  v18[3] = &unk_1E8016A70;
  v20 = v29;
  v10 = v8;
  v19 = v10;
  [(PKPaymentDefaultDataProvider *)v9 balancesForPaymentPassWithUniqueIdentifier:uniqueID completion:v18];
  dispatch_group_enter(v10);
  v11 = self->_paymentDataProvider;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__PKDashboardPaymentPassDataSource__performReloadTransitSection__block_invoke_3;
  v15[3] = &unk_1E8012BB0;
  v17 = v27;
  v12 = v10;
  v16 = v12;
  [(PKPaymentDefaultDataProvider *)v11 plansForPaymentPassWithUniqueIdentifier:uniqueID completion:v15];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKDashboardPaymentPassDataSource__performReloadTransitSection__block_invoke_4;
  block[3] = &unk_1E801E508;
  objc_copyWeak(&v14, &location);
  block[4] = v31;
  block[5] = v29;
  block[6] = v27;
  dispatch_group_notify(v12, MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
  _Block_object_dispose(v27, 8);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
}

void __64__PKDashboardPaymentPassDataSource__performReloadTransitSection__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [v8 transitPassPropertiesWithPaymentApplication:*(a1 + 32) pass:*(WeakRetained + 119)];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  dispatch_group_leave(*(a1 + 40));
}

void __64__PKDashboardPaymentPassDataSource__performReloadTransitSection__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __64__PKDashboardPaymentPassDataSource__performReloadTransitSection__block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __64__PKDashboardPaymentPassDataSource__performReloadTransitSection__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _updateTransitBalanceProperties:*(*(*(a1 + 32) + 8) + 40) dynamicBalances:*(*(*(a1 + 40) + 8) + 40) dynamicPlans:*(*(*(a1 + 48) + 8) + 40)];
    WeakRetained = v3;
  }
}

- (void)reloadTransitSection
{
  transitBalanceModel = self->_transitBalanceModel;
  if (!transitBalanceModel || ([(PKTransitBalanceModel *)transitBalanceModel pass], v4 = objc_claimAutoreleasedReturnValue(), pass = self->_pass, v4, v4 != pass))
  {

    [(PKDashboardPaymentPassDataSource *)self _performReloadTransitSection];
  }
}

- (void)_cancelExpirationTimerIfNeeded
{
  expirationTimer = self->_expirationTimer;
  if (expirationTimer)
  {
    dispatch_source_cancel(expirationTimer);
  }
}

- (void)_scheduleExpirationTimerForCommutePlans:(id)plans
{
  plansCopy = plans;
  v5 = plansCopy;
  if (plansCopy && [plansCopy count])
  {
    v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_2065];
    firstObject = [v6 firstObject];
    expiryDate = [firstObject expiryDate];
    if (expiryDate)
    {
      date = [MEMORY[0x1E695DF00] date];
      [expiryDate timeIntervalSinceDate:date];
      v11 = v10;

      if (v11 >= 1.0)
      {
        [(PKDashboardPaymentPassDataSource *)self _cancelExpirationTimerIfNeeded];
        v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
        expirationTimer = self->_expirationTimer;
        self->_expirationTimer = v12;

        v14 = self->_expirationTimer;
        v15 = v11 * 1000000000.0;
        v16 = dispatch_time(0, v15);
        dispatch_source_set_timer(v14, v16, v15, 0);
        objc_initWeak(&location, self);
        v17 = self->_expirationTimer;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __76__PKDashboardPaymentPassDataSource__scheduleExpirationTimerForCommutePlans___block_invoke_2;
        v18[3] = &unk_1E8010998;
        objc_copyWeak(&v19, &location);
        dispatch_source_set_event_handler(v17, v18);
        dispatch_resume(self->_expirationTimer);
        objc_destroyWeak(&v19);
        objc_destroyWeak(&location);
      }
    }
  }

  else
  {
    [(PKDashboardPaymentPassDataSource *)self _cancelExpirationTimerIfNeeded];
  }
}

uint64_t __76__PKDashboardPaymentPassDataSource__scheduleExpirationTimerForCommutePlans___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 expiryDate];
  v6 = [v4 expiryDate];

  if (v5)
  {
    if (v6)
    {
      v7 = [v5 compare:v6];
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void __76__PKDashboardPaymentPassDataSource__scheduleExpirationTimerForCommutePlans___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[94];
    WeakRetained[94] = 0;
    v3 = WeakRetained;

    [v3 _performReloadTransitSection];
    WeakRetained = v3;
  }
}

- (id)externalActionContent
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  actionGroups = [(PKPaymentPass *)self->_pass actionGroups];
  v4 = [actionGroups countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v18 != v6)
      {
        objc_enumerationMutation(actionGroups);
      }

      v8 = *(*(&v17 + 1) + 8 * v7);
      if ([v8 hasExternalActionContent])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [actionGroups countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v5)
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

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    actionGroups = [(PKPaymentPass *)self->_pass availableActions];
    externalActionContent = [actionGroups countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (!externalActionContent)
    {
      goto LABEL_19;
    }

    v10 = *v14;
LABEL_11:
    v11 = 0;
    while (1)
    {
      if (*v14 != v10)
      {
        objc_enumerationMutation(actionGroups);
      }

      v8 = *(*(&v13 + 1) + 8 * v11);
      if ([v8 hasExternalActionContent])
      {
        break;
      }

      if (externalActionContent == ++v11)
      {
        externalActionContent = [actionGroups countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (externalActionContent)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }
  }

  externalActionContent = [v8 externalActionContent];
LABEL_19:

  return externalActionContent;
}

- (void)_updateTransitBalanceProperties:(id)properties dynamicBalances:(id)balances dynamicPlans:(id)plans
{
  propertiesCopy = properties;
  balancesCopy = balances;
  plansCopy = plans;
  v11 = self->_pass;
  if ([(PKPaymentPass *)v11 isStoredValuePass])
  {
    v12 = [(NSArray *)self->_transitItems count];
    v13 = self->_transitBalanceModel;
    v14 = v13;
    if (!v13 || ([(PKTransitBalanceModel *)v13 pass], v15 = objc_claimAutoreleasedReturnValue(), v15, v15 != v11))
    {
      v16 = [objc_alloc(MEMORY[0x1E69B9308]) initWithPass:v11];

      v14 = v16;
    }

    if (propertiesCopy)
    {
      [v14 setTransitProperties:propertiesCopy];
    }

    if (balancesCopy)
    {
      [v14 updateWithDynamicBalances:balancesCopy];
    }

    if (plansCopy)
    {
      [v14 updateWithDynamicCommutePlans:plansCopy];
    }

    displayableCommutePlans = [v14 displayableCommutePlans];
    [(PKDashboardPaymentPassDataSource *)self _scheduleExpirationTimerForCommutePlans:displayableCommutePlans];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __97__PKDashboardPaymentPassDataSource__updateTransitBalanceProperties_dynamicBalances_dynamicPlans___block_invoke;
    aBlock[3] = &unk_1E801E578;
    v29 = v11;
    v18 = v14;
    v30 = v18;
    selfCopy = self;
    v32 = v12;
    v19 = _Block_copy(aBlock);
    v20 = v19;
    if (self->_allContentIsLoaded)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (WeakRetained)
      {
        v22 = [(PKDashboardPaymentPassDataSource *)self firstSectionIndexForSectionIdentifier:6];
        if (v20[2](v20))
        {
          v23 = [MEMORY[0x1E696AC90] indexSetWithIndex:v22];
          [WeakRetained reloadSections:v23];
        }

        else
        {
          transitItems = self->_transitItems;
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __97__PKDashboardPaymentPassDataSource__updateTransitBalanceProperties_dynamicBalances_dynamicPlans___block_invoke_3;
          v25[3] = &unk_1E801E5A0;
          v27 = v22;
          v26 = WeakRetained;
          [(NSArray *)transitItems enumerateObjectsUsingBlock:v25];
          v23 = v26;
        }
      }
    }

    else
    {
      v19[2](v19);
      [(PKDashboardPaymentPassDataSource *)self updateContentIsLoaded];
    }
  }
}

BOOL __97__PKDashboardPaymentPassDataSource__updateTransitBalanceProperties_dynamicBalances_dynamicPlans___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (![*(a1 + 32) activationState])
  {
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __97__PKDashboardPaymentPassDataSource__updateTransitBalanceProperties_dynamicBalances_dynamicPlans___block_invoke_2;
    v25 = &unk_1E801E550;
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    v3 = _Block_copy(&v22);
    v4 = [*(a1 + 32) isEMoneyPass];
    v5 = *(a1 + 40);
    if (v4)
    {
      if ([v5 hasCurrencyBalance])
      {
        v6 = v3[2](v3, 1);
        [v2 addObject:v6];
      }

      if (([*(a1 + 40) hasPointsBalance] & 1) == 0)
      {
LABEL_10:
        if ([*(a1 + 40) hasCommutePlanContent])
        {
          v9 = v3[2](v3, 3);
          v10 = [*(a1 + 40) displayableCommutePlans];
          [v9 setTransitCommutePlans:v10];

          [v2 addObject:v9];
        }

        v11 = [*(a1 + 48) externalActionContent];
        if (v11)
        {
          v12 = v3[2](v3, 5);
          [v12 setExternalActionContent:v11];
        }

        else
        {
          v13 = [*(a1 + 32) actionGroups];
          v14 = [v13 count];

          if (!v14)
          {
LABEL_17:

            goto LABEL_18;
          }

          v12 = v3[2](v3, 4);
          v15 = [*(a1 + 40) displayableCommutePlans];
          [v12 setTransitCommutePlans:v15];

          v16 = [*(a1 + 32) actionGroups];
          [v12 setActionGroups:v16];
        }

        [v2 addObject:v12];

        goto LABEL_17;
      }

      v7 = 2;
    }

    else
    {
      if (![v5 hasBalanceContent])
      {
        goto LABEL_10;
      }

      v7 = 0;
    }

    v8 = v3[2](v3, v7);
    [v2 addObject:v8];

    goto LABEL_10;
  }

LABEL_18:
  objc_storeStrong((*(a1 + 48) + 200), *(a1 + 40));
  v17 = [v2 copy];
  v18 = *(a1 + 48);
  v19 = *(v18 + 208);
  *(v18 + 208) = v17;

  *(*(a1 + 48) + 216) = 1;
  v20 = [v2 count] != *(a1 + 56);

  return v20;
}

PKDashboardTransitItem *__97__PKDashboardPaymentPassDataSource__updateTransitBalanceProperties_dynamicBalances_dynamicPlans___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [[PKDashboardTransitItem alloc] initWithPass:*(a1 + 32) transitBalanceModel:*(a1 + 40) type:a2];

  return v2;
}

void __97__PKDashboardPaymentPassDataSource__updateTransitBalanceProperties_dynamicBalances_dynamicPlans___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AC88];
  v6 = *(a1 + 40);
  v7 = a2;
  v8 = [v5 indexPathForItem:a3 inSection:v6];
  [*(a1 + 32) itemChanged:v7 atIndexPath:v8];
}

- (BOOL)_passAvailableForAMPEnrollment
{
  v3 = AMPEnrollmentDismissedKeyForPass();
  BoolForKey = PKSharedCacheGetBoolForKey();

  if (BoolForKey)
  {
    goto LABEL_2;
  }

  hasAssociatedPeerPaymentAccount = [(PKPaymentPass *)self->_pass hasAssociatedPeerPaymentAccount];
  if (!hasAssociatedPeerPaymentAccount)
  {
    return hasAssociatedPeerPaymentAccount;
  }

  currentBalance = [(PKPeerPaymentAccount *)self->_peerPaymentAccount currentBalance];
  amount = [currentBalance amount];
  zero = [MEMORY[0x1E696AB90] zero];
  v9 = [amount compare:zero];

  _peerPaymentDashboardCondition = [(PKDashboardPaymentPassDataSource *)self _peerPaymentDashboardCondition];
  if (v9 != 1)
  {
LABEL_2:
    LOBYTE(hasAssociatedPeerPaymentAccount) = 0;
  }

  else
  {
    LOBYTE(hasAssociatedPeerPaymentAccount) = (_peerPaymentDashboardCondition & 0x100) == 0 || (_peerPaymentDashboardCondition & 1) != 0 || [(PKPaymentPass *)self->_pass activationState]== PKPaymentPassActivationStateSuspended;
  }

  return hasAssociatedPeerPaymentAccount;
}

- (void)_fetchAMPEnrollmentEligibility
{
  objc_initWeak(&location, self);
  AMPEnrollmentManager = self->_AMPEnrollmentManager;
  pass = self->_pass;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PKDashboardPaymentPassDataSource__fetchAMPEnrollmentEligibility__block_invoke;
  v7[3] = &unk_1E8012C78;
  objc_copyWeak(&v8, &location);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__PKDashboardPaymentPassDataSource__fetchAMPEnrollmentEligibility__block_invoke_3;
  v5[3] = &unk_1E80148F0;
  objc_copyWeak(&v6, &location);
  [(PKAMPEnrollmentManager *)AMPEnrollmentManager enrollmentStatusForPaymentPass:pass completion:v7 progress:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __66__PKDashboardPaymentPassDataSource__fetchAMPEnrollmentEligibility__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v5;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "enrollmentStatusForPaymentPass completion error: %{public}@", buf, 0xCu);
    }
  }

  else if (a2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66__PKDashboardPaymentPassDataSource__fetchAMPEnrollmentEligibility__block_invoke_2070;
    v7[3] = &unk_1E801E5C8;
    objc_copyWeak(v8, (a1 + 32));
    v8[1] = a2;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
    objc_destroyWeak(v8);
  }
}

void __66__PKDashboardPaymentPassDataSource__fetchAMPEnrollmentEligibility__block_invoke_2070(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 584) = 1;
    *(WeakRetained + 193) = *(a1 + 40) == 2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __66__PKDashboardPaymentPassDataSource__fetchAMPEnrollmentEligibility__block_invoke_2;
    v4[3] = &unk_1E8010998;
    objc_copyWeak(&v5, (a1 + 32));
    [v3 _fetchAMPEnrollmentIconIfNeeded:v4];
    objc_destroyWeak(&v5);
  }
}

void __66__PKDashboardPaymentPassDataSource__fetchAMPEnrollmentEligibility__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadMessagesWithReason:@"AMP enrollment status not eligible"];
}

void __66__PKDashboardPaymentPassDataSource__fetchAMPEnrollmentEligibility__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v5;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "enrollmentStatusForPaymentPass progress error: %{public}@", buf, 0xCu);
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PKDashboardPaymentPassDataSource__fetchAMPEnrollmentEligibility__block_invoke_2075;
  v7[3] = &unk_1E80111A8;
  objc_copyWeak(&v8, (a1 + 32));
  v9 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
  objc_destroyWeak(&v8);
}

void __66__PKDashboardPaymentPassDataSource__fetchAMPEnrollmentEligibility__block_invoke_2075(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 584) = *(a1 + 40) ^ 1;
    *(WeakRetained + 193) = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __66__PKDashboardPaymentPassDataSource__fetchAMPEnrollmentEligibility__block_invoke_2_2076;
    v4[3] = &unk_1E8010998;
    objc_copyWeak(&v5, (a1 + 32));
    [v3 _fetchAMPEnrollmentIconIfNeeded:v4];
    objc_destroyWeak(&v5);
  }
}

void __66__PKDashboardPaymentPassDataSource__fetchAMPEnrollmentEligibility__block_invoke_2_2076(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadMessagesWithReason:@"AMP enrollment status change"];
}

- (void)_addToAMPButtonTappedForPass:(id)pass
{
  passCopy = pass;
  if (!self->_performingAMPEnrollment)
  {
    self->_performingAMPEnrollment = 1;
    [(PKDashboardPaymentPassDataSource *)self reloadMessagesWithReason:@"add to AMP"];
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    navigationController = [WeakRetained navigationController];
    objc_initWeak(&location, navigationController);

    objc_initWeak(&from, self);
    AMPEnrollmentManager = self->_AMPEnrollmentManager;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__PKDashboardPaymentPassDataSource__addToAMPButtonTappedForPass___block_invoke;
    v8[3] = &unk_1E801E618;
    objc_copyWeak(&v10, &from);
    v9 = passCopy;
    objc_copyWeak(&v11, &location);
    [(PKAMPEnrollmentManager *)AMPEnrollmentManager enrollPaymentPass:v9 isDefault:0 completion:v8];
    objc_destroyWeak(&v11);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __65__PKDashboardPaymentPassDataSource__addToAMPButtonTappedForPass___block_invoke(id *a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PKDashboardPaymentPassDataSource__addToAMPButtonTappedForPass___block_invoke_2;
  block[3] = &unk_1E801E5F0;
  v8 = v5;
  v6 = v5;
  objc_copyWeak(&v10, a1 + 5);
  v12 = a2;
  v9 = a1[4];
  objc_copyWeak(&v11, a1 + 6);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v11);

  objc_destroyWeak(&v10);
}

void __65__PKDashboardPaymentPassDataSource__addToAMPButtonTappedForPass___block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v36 = v2;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "enrollPaymentPass error: %{public}@", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 584) = *(a1 + 64) ^ 1;
    *(WeakRetained + 193) = 0;
    v6 = AMPEnrollmentDismissedKeyForPass();
    PKSharedCacheSetBoolForKey();

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __65__PKDashboardPaymentPassDataSource__addToAMPButtonTappedForPass___block_invoke_2083;
    v33[3] = &unk_1E8010998;
    objc_copyWeak(&v34, (a1 + 48));
    [v5 _fetchAMPEnrollmentIconIfNeeded:v33];
    objc_destroyWeak(&v34);
  }

  v7 = objc_loadWeakRetained((a1 + 56));
  if (v7)
  {
    v8 = MEMORY[0x1E69DC650];
    if (*(a1 + 64) == 1)
    {
      v9 = PKLocalizedAMPString(&cfstr_PassDashboardA_2.isa);
      v10 = [*(a1 + 40) localizedDescription];
      v11 = PKLocalizedAMPString(&cfstr_PassDashboardA_3.isa, &stru_1F3BD5BF0.isa, v10);
      v12 = [v8 alertControllerWithTitle:v9 message:v11 preferredStyle:1];

      v13 = MEMORY[0x1E69DC648];
      v14 = PKLocalizedAMPString(&cfstr_PassDashboardA_4.isa);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __65__PKDashboardPaymentPassDataSource__addToAMPButtonTappedForPass___block_invoke_2_2096;
      v31[3] = &unk_1E8012CC0;
      v15 = &v32;
      objc_copyWeak(&v32, (a1 + 48));
      v16 = [v13 actionWithTitle:v14 style:0 handler:v31];
      [v12 addAction:v16];

      v17 = MEMORY[0x1E69DC648];
      v18 = PKLocalizedAMPString(&cfstr_PassDashboardA_5.isa);
      v19 = [v17 actionWithTitle:v18 style:1 handler:0];
      [v12 addAction:v19];
    }

    else
    {
      v20 = PKLocalizedAMPString(&cfstr_PassDashboardA_6.isa);
      v21 = PKLocalizedAMPString(&cfstr_PassDashboardA_7.isa);
      v12 = [v8 alertControllerWithTitle:v20 message:v21 preferredStyle:1];

      v22 = MEMORY[0x1E69DC648];
      v23 = PKLocalizedAMPString(&cfstr_PassDashboardA_8.isa);
      v24 = [v22 actionWithTitle:v23 style:1 handler:0];
      [v12 addAction:v24];

      v25 = MEMORY[0x1E69DC648];
      v26 = PKLocalizedAMPString(&cfstr_PassDashboardA_9.isa);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __65__PKDashboardPaymentPassDataSource__addToAMPButtonTappedForPass___block_invoke_3;
      v28[3] = &unk_1E80178E8;
      v15 = &v30;
      objc_copyWeak(&v30, (a1 + 48));
      v29 = *(a1 + 40);
      v27 = [v25 actionWithTitle:v26 style:0 handler:v28];
      [v12 addAction:v27];

      v18 = v29;
    }

    objc_destroyWeak(v15);
    [v7 presentViewController:v12 animated:1 completion:0];
  }
}

void __65__PKDashboardPaymentPassDataSource__addToAMPButtonTappedForPass___block_invoke_2083(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadMessagesWithReason:@"Add to AMP done"];
}

void __65__PKDashboardPaymentPassDataSource__addToAMPButtonTappedForPass___block_invoke_2_2096(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE&path=PAYMENT_AND_SHIPPING"];
    PKOpenURL();

    WeakRetained = v3;
  }
}

void __65__PKDashboardPaymentPassDataSource__addToAMPButtonTappedForPass___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _addToAMPButtonTappedForPass:*(a1 + 32)];
}

- (void)_fetchAMPEnrollmentIconIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = neededCopy;
  if (self->_showAMPEnrollmentMessage && !self->_AMPEnrollmentIcon)
  {
    objc_initWeak(&location, self);
    v6 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__PKDashboardPaymentPassDataSource__fetchAMPEnrollmentIconIfNeeded___block_invoke;
    block[3] = &unk_1E80111D0;
    objc_copyWeak(&v9, &location);
    v8 = v5;
    dispatch_async(v6, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else if (neededCopy)
  {
    (*(neededCopy + 2))(neededCopy);
  }
}

void __68__PKDashboardPaymentPassDataSource__fetchAMPEnrollmentIconIfNeeded___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69635F8]);
  v3 = [v2 initWithBundleIdentifier:*MEMORY[0x1E69BBB28] allowPlaceholder:1 error:0];
  v4 = PKUIGetAppIconForApplicationRecord(v3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PKDashboardPaymentPassDataSource__fetchAMPEnrollmentIconIfNeeded___block_invoke_2;
  block[3] = &unk_1E80111F8;
  objc_copyWeak(&v9, (a1 + 40));
  v7 = v4;
  v8 = *(a1 + 32);
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __68__PKDashboardPaymentPassDataSource__fetchAMPEnrollmentIconIfNeeded___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 74, *(a1 + 32));
    v3 = v5;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
    v3 = v5;
  }
}

- (void)reloadDialogRequests
{
  aMPEnagementPlacementForCurrentlyDisplayedPass = [(PKDashboardPaymentPassDataSource *)self AMPEnagementPlacementForCurrentlyDisplayedPass];
  if (aMPEnagementPlacementForCurrentlyDisplayedPass)
  {
    mEMORY[0x1E69B87F0] = [MEMORY[0x1E69B87F0] sharedInstance];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__PKDashboardPaymentPassDataSource_reloadDialogRequests__block_invoke;
    v5[3] = &unk_1E801ABD0;
    v5[4] = self;
    v6 = aMPEnagementPlacementForCurrentlyDisplayedPass;
    [mEMORY[0x1E69B87F0] dialogRequestsForPlacement:v6 completion:v5];
  }

  else
  {
    self->_engagementMessagesLoaded = 1;
    [(PKDashboardPaymentPassDataSource *)self updateContentIsLoaded];
  }
}

void __56__PKDashboardPaymentPassDataSource_reloadDialogRequests__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__PKDashboardPaymentPassDataSource_reloadDialogRequests__block_invoke_2;
  v5[3] = &unk_1E8011828;
  objc_copyWeak(&v8, &location);
  v6 = v3;
  v7 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __56__PKDashboardPaymentPassDataSource_reloadDialogRequests__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__PKDashboardPaymentPassDataSource_reloadDialogRequests__block_invoke_3;
    v6[3] = &unk_1E801E640;
    objc_copyWeak(&v9, (a1 + 48));
    v7 = *(a1 + 40);
    v8 = WeakRetained;
    v4 = [v3 pk_arrayBySafelyApplyingBlock:v6];
    v5 = WeakRetained[76];
    WeakRetained[76] = v4;

    *(WeakRetained + 616) = 1;
    [WeakRetained updateContentIsLoaded];
    [WeakRetained reloadMessagesWithReason:@"reload dialog requests"];

    objc_destroyWeak(&v9);
  }
}

id __56__PKDashboardPaymentPassDataSource_reloadDialogRequests__block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__PKDashboardPaymentPassDataSource_reloadDialogRequests__block_invoke_4;
  v15[3] = &unk_1E80122D8;
  objc_copyWeak(&v16, a1 + 6);
  v4 = [PKDashboardPassMessage messageFromDialogRequest:v3 withAction:v15];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __56__PKDashboardPaymentPassDataSource_reloadDialogRequests__block_invoke_5;
  v11 = &unk_1E8012808;
  v5 = v3;
  v12 = v5;
  v13 = a1[4];
  objc_copyWeak(&v14, a1 + 6);
  [v4 setActionOnDismiss:&v8];
  v6 = [a1[5] _replaceDashboardMessagePlaceholders:{v4, v8, v9, v10, v11}];
  objc_destroyWeak(&v14);

  objc_destroyWeak(&v16);

  return v6;
}

void __56__PKDashboardPaymentPassDataSource_reloadDialogRequests__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained executeEngagementActionForURL:v3];
}

void __56__PKDashboardPaymentPassDataSource_reloadDialogRequests__block_invoke_5(uint64_t a1)
{
  v2 = [MEMORY[0x1E69B87F0] sharedInstance];
  v3 = [*(a1 + 32) identifier];
  [v2 dismissDialogRequestWithIdentifier:v3 forPlacement:*(a1 + 40) completion:0];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained reloadDialogRequests];
}

- (void)didUpdateFamilyMembers:(id)members
{
  membersCopy = members;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PKDashboardPaymentPassDataSource_didUpdateFamilyMembers___block_invoke;
  block[3] = &unk_1E80110E0;
  objc_copyWeak(&v8, &location);
  v7 = membersCopy;
  v5 = membersCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __59__PKDashboardPaymentPassDataSource_didUpdateFamilyMembers___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [objc_alloc(MEMORY[0x1E69B88A0]) initWithFamilyMembers:*(a1 + 32)];
    [v4 _updateWithFamilyCollection:v3];

    WeakRetained = v4;
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableMessageService:(BOOL)service
{
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__PKDashboardPaymentPassDataSource_paymentPassWithUniqueIdentifier_didEnableMessageService___block_invoke;
  block[3] = &unk_1E80110E0;
  objc_copyWeak(&v9, &location);
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __92__PKDashboardPaymentPassDataSource_paymentPassWithUniqueIdentifier_didEnableMessageService___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 4);
    if (*(v7 + 788) == 1)
    {
      v4 = [v7[119] uniqueID];
      v5 = PKEqualObjects();

      if (v5 && v3 != 0)
      {
        [v7 reloadMessagesWithReason:@"message service change"];
      }
    }

    v2 = v7;
  }
}

- (void)passWithUniqueIdentifier:(id)identifier didUpdateTiles:(id)tiles forContext:(int64_t)context
{
  identifierCopy = identifier;
  tilesCopy = tiles;
  if (context == 1)
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __87__PKDashboardPaymentPassDataSource_passWithUniqueIdentifier_didUpdateTiles_forContext___block_invoke;
    v10[3] = &unk_1E8011828;
    objc_copyWeak(&v13, &location);
    v11 = tilesCopy;
    v12 = identifierCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v10);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __87__PKDashboardPaymentPassDataSource_passWithUniqueIdentifier_didUpdateTiles_forContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _reloadTiles:*(a1 + 32) passUniqueIdentifier:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveMessage:(id)message
{
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__PKDashboardPaymentPassDataSource_paymentPassWithUniqueIdentifier_didReceiveMessage___block_invoke;
  block[3] = &unk_1E80110E0;
  objc_copyWeak(&v9, &location);
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __86__PKDashboardPaymentPassDataSource_paymentPassWithUniqueIdentifier_didReceiveMessage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 4);
    if (*(v7 + 788) == 1)
    {
      v4 = [v7[119] uniqueID];
      v5 = PKEqualObjects();

      if (v5 && v3 != 0)
      {
        [v7 reloadMessagesWithReason:@"did receive message"];
      }
    }

    v2 = v7;
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __103__PKDashboardPaymentPassDataSource_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
  v10[3] = &unk_1E8011828;
  objc_copyWeak(&v13, &location);
  v11 = identifierCopy;
  v12 = propertiesCopy;
  v8 = propertiesCopy;
  v9 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __103__PKDashboardPaymentPassDataSource_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(WeakRetained + 788) == 1)
    {
      v5 = WeakRetained;
      v3 = [WeakRetained[119] uniqueID];
      v4 = PKEqualObjects();

      WeakRetained = v5;
      if (v4)
      {
        [v5 _updateTransitBalanceProperties:*(a1 + 40) dynamicBalances:0 dynamicPlans:0];
        WeakRetained = v5;
      }
    }
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update
{
  identifierCopy = identifier;
  updateCopy = update;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __92__PKDashboardPaymentPassDataSource_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
  v10[3] = &unk_1E8011828;
  objc_copyWeak(&v13, &location);
  v11 = identifierCopy;
  v12 = updateCopy;
  v8 = updateCopy;
  v9 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __92__PKDashboardPaymentPassDataSource_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained[119] uniqueID];
    v4 = PKEqualObjects();

    WeakRetained = v5;
    if (v4)
    {
      if (*(v5 + 788) == 1)
      {
        [v5 _updateTransitBalanceProperties:0 dynamicBalances:*(a1 + 40) dynamicPlans:0];
        WeakRetained = v5;
      }
    }
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceivePlanUpdate:(id)update
{
  identifierCopy = identifier;
  updateCopy = update;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__PKDashboardPaymentPassDataSource_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke;
  v10[3] = &unk_1E8011828;
  objc_copyWeak(&v13, &location);
  v11 = identifierCopy;
  v12 = updateCopy;
  v8 = updateCopy;
  v9 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __89__PKDashboardPaymentPassDataSource_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained[119] uniqueID];
    v4 = PKEqualObjects();

    WeakRetained = v5;
    if (v4)
    {
      if (*(v5 + 788) == 1)
      {
        [v5 _updateTransitBalanceProperties:0 dynamicBalances:0 dynamicPlans:*(a1 + 40)];
        WeakRetained = v5;
      }
    }
  }
}

- (void)credentialIdentifier:(id)identifier paymentApplicationIdentifier:(id)applicationIdentifier secureElementIdentifier:(id)elementIdentifier didUpdateRangingSuspensionReasons:(unint64_t)reasons
{
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  elementIdentifierCopy = elementIdentifier;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __144__PKDashboardPaymentPassDataSource_credentialIdentifier_paymentApplicationIdentifier_secureElementIdentifier_didUpdateRangingSuspensionReasons___block_invoke;
  block[3] = &unk_1E8014828;
  objc_copyWeak(&v19, &location);
  v16 = applicationIdentifierCopy;
  v17 = elementIdentifierCopy;
  v18 = identifierCopy;
  v12 = identifierCopy;
  v13 = elementIdentifierCopy;
  v14 = applicationIdentifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __144__PKDashboardPaymentPassDataSource_credentialIdentifier_paymentApplicationIdentifier_secureElementIdentifier_didUpdateRangingSuspensionReasons___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_51;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v4 = [WeakRetained[119] devicePaymentApplications];
  v5 = [v4 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (!v5)
  {

    goto LABEL_51;
  }

  v6 = v5;
  v33 = v3;
  v34 = 0;
  v35 = v4;
  v36 = *v42;
  do
  {
    v7 = 0;
    do
    {
      if (*v42 != v36)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v41 + 1) + 8 * v7);
      v9 = [v8 applicationIdentifier];
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = v10;
      v13 = v12;
      if (v11 == v12)
      {

LABEL_15:
        v16 = [v8 secureElementIdentifier];
        v17 = *(a1 + 40);
        v11 = v16;
        v18 = v17;
        v13 = v18;
        if (v11 == v18)
        {

LABEL_28:
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v20 = [v8 subcredentials];
          v22 = [v20 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v38;
            while (2)
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v38 != v24)
                {
                  objc_enumerationMutation(v20);
                }

                v26 = [*(*(&v37 + 1) + 8 * i) identifier];
                v27 = *(a1 + 48);
                v13 = v26;
                v28 = v27;
                v29 = v28;
                if (v13 == v28)
                {

                  v34 = 1;
                  v11 = v13;
                  v4 = v35;
                  goto LABEL_22;
                }

                if (v13)
                {
                  v30 = v28 == 0;
                }

                else
                {
                  v30 = 1;
                }

                if (v30)
                {
                }

                else
                {
                  v31 = [v13 isEqualToString:v28];

                  if (v31)
                  {
                    v34 = 1;
                    goto LABEL_46;
                  }
                }
              }

              v23 = [v20 countByEnumeratingWithState:&v37 objects:v45 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }

LABEL_46:
            v4 = v35;
          }

LABEL_23:

          goto LABEL_24;
        }

        if (v11)
        {
          v19 = v18 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          goto LABEL_21;
        }

        v21 = [v11 isEqualToString:v18];

        if (v21)
        {
          goto LABEL_28;
        }

        goto LABEL_24;
      }

      if (v11)
      {
        v14 = v12 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
LABEL_21:
        v20 = v11;
LABEL_22:

        goto LABEL_23;
      }

      v15 = [v11 isEqualToString:v12];

      if (v15)
      {
        goto LABEL_15;
      }

LABEL_24:
      ++v7;
    }

    while (v7 != v6);
    v32 = [v4 countByEnumeratingWithState:&v41 objects:v46 count:16];
    v6 = v32;
  }

  while (v32);

  v3 = v33;
  if (v34)
  {
    [v33 reloadMessagesWithReason:@"suspend reason change"];
  }

LABEL_51:
}

- (void)sharesDidUpdateWithPaymentPassWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PKDashboardPaymentPassDataSource_sharesDidUpdateWithPaymentPassWithUniqueIdentifier___block_invoke;
  block[3] = &unk_1E80110E0;
  objc_copyWeak(&v8, &location);
  v7 = identifierCopy;
  v5 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __87__PKDashboardPaymentPassDataSource_sharesDidUpdateWithPaymentPassWithUniqueIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = [WeakRetained[119] uniqueID];
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = v4;
    v7 = v6;
    if (v5 == v6)
    {

      WeakRetained = v10;
      goto LABEL_11;
    }

    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {

LABEL_12:
      WeakRetained = v10;
      goto LABEL_13;
    }

    v9 = [v5 isEqualToString:v6];

    WeakRetained = v10;
    if (v9)
    {
LABEL_11:
      v5 = objc_loadWeakRetained(WeakRetained + 4);
      [v5 reloadNavigationBarAnimated:1];
      goto LABEL_12;
    }
  }

LABEL_13:
}

- (void)inboxDataSourceDidUpdateInboxMessages:(id)messages
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__PKDashboardPaymentPassDataSource_inboxDataSourceDidUpdateInboxMessages___block_invoke;
  v3[3] = &unk_1E8010998;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __74__PKDashboardPaymentPassDataSource_inboxDataSourceDidUpdateInboxMessages___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadMessagesWithReason:@"inbox change"];
    WeakRetained = v2;
  }
}

- (void)_peerPaymentAccountChanged:(id)changed
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__PKDashboardPaymentPassDataSource__peerPaymentAccountChanged___block_invoke;
  v3[3] = &unk_1E8010998;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __63__PKDashboardPaymentPassDataSource__peerPaymentAccountChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = WeakRetained[21];
    v3 = [v6[118] targetDevice];
    v4 = [v3 account];
    v5 = v6[21];
    v6[21] = v4;

    if ([v6 _isCreditPass])
    {
      [v6 reloadMessagesWithReason:@"peer payment account change"];
    }

    else if ([v6 _isPeerPaymentPass])
    {
      *(v6 + 219) = 1;
      *(v6 + 760) = [v6 _isDisclosureSectionChangedWithPreviousAccount:v2 previousPass:v6[119]];
      [v6 reloadAccount];
    }

    WeakRetained = v6;
  }
}

- (void)_peerPaymentResolutionTappedWithResolution:(unint64_t)resolution
{
  if (!self->_performingPeerPaymentResolution)
  {
    account = [(PKPeerPaymentAccountResolutionController *)self->_peerPaymentAccountResolutionController account];
    v6 = account;
    if (account)
    {
      pendingPaymentCount = [account pendingPaymentCount];
      v8 = PKSharedCacheGetStringForKey();
      self->_performingPeerPaymentResolution = 1;
      objc_initWeak(&location, self);
      v9 = objc_alloc_init(MEMORY[0x1E69B8F08]);
      campaignAttributionReferrerIdentifier = [(PKPassPresentationContext *)self->_context campaignAttributionReferrerIdentifier];
      [v9 setCampaignAttributionReferrerIdentifier:campaignAttributionReferrerIdentifier];

      if (resolution == 1 && pendingPaymentCount == 1 && [v8 length])
      {
        [v9 setRegistrationFlowState:2];
        [v9 setSenderAddress:v8];
        peerPaymentAccountResolutionController = self->_peerPaymentAccountResolutionController;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __79__PKDashboardPaymentPassDataSource__peerPaymentResolutionTappedWithResolution___block_invoke;
        v16[3] = &unk_1E8011180;
        v12 = &v17;
        objc_copyWeak(&v17, &location);
        [(PKPeerPaymentAccountResolutionController *)peerPaymentAccountResolutionController presentFlowForAccountResolution:1 configuration:v9 completion:v16];
      }

      else
      {
        v13 = self->_peerPaymentAccountResolutionController;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __79__PKDashboardPaymentPassDataSource__peerPaymentResolutionTappedWithResolution___block_invoke_2;
        v14[3] = &unk_1E8011180;
        v12 = &v15;
        objc_copyWeak(&v15, &location);
        [(PKPeerPaymentAccountResolutionController *)v13 presentFlowForAccountResolution:resolution configuration:v9 completion:v14];
      }

      objc_destroyWeak(v12);

      objc_destroyWeak(&location);
    }

    else
    {
      v8 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=PASSBOOK"];
      PKOpenURL();
    }
  }
}

void __79__PKDashboardPaymentPassDataSource__peerPaymentResolutionTappedWithResolution___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[192] = 0;
  }
}

void __79__PKDashboardPaymentPassDataSource__peerPaymentResolutionTappedWithResolution___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[192] = 0;
  }
}

- (id)_contactResolver
{
  v16[3] = *MEMORY[0x1E69E9840];
  contactResolver = self->_contactResolver;
  if (!contactResolver)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CE18]);
    requiredContactKeys = [MEMORY[0x1E69B8F30] requiredContactKeys];
    v6 = [requiredContactKeys mutableCopy];

    v7 = _MergedGlobals_622();
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v9 = -[objc_class descriptorForRequiredKeysWithThreeDTouchEnabled:](v7, "descriptorForRequiredKeysWithThreeDTouchEnabled:", [currentDevice _supportsForceTouch]);
    descriptorForRequiredKeys = [off_1EE98A6B0() descriptorForRequiredKeys];
    v16[1] = descriptorForRequiredKeys;
    descriptorForRequiredKeys2 = [off_1EE98A6B8() descriptorForRequiredKeys];
    v16[2] = descriptorForRequiredKeys2;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
    [v6 addObjectsFromArray:v12];

    v13 = [objc_alloc(MEMORY[0x1E69B8740]) initWithContactStore:v4 keysToFetch:v6];
    v14 = self->_contactResolver;
    self->_contactResolver = v13;

    contactResolver = self->_contactResolver;
  }

  return contactResolver;
}

- (void)peerPaymentAccountResolutionController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  navigationController = [WeakRetained navigationController];
  [navigationController presentViewController:viewControllerCopy animated:animatedCopy completion:0];
}

- (void)peerPaymentAccountResolutionController:(id)controller requestsDismissCurrentViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  navigationController = [WeakRetained navigationController];
  [navigationController dismissViewControllerAnimated:animatedCopy completion:0];
}

- (void)reloadPeerPaymentPendingRequestsWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PKDashboardPaymentPassDataSource_reloadPeerPaymentPendingRequestsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E80131F8;
  objc_copyWeak(&v15, &location);
  v5 = _Block_copy(aBlock);
  if (v5[2]())
  {
    mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __83__PKDashboardPaymentPassDataSource_reloadPeerPaymentPendingRequestsWithCompletion___block_invoke_2;
    v10[3] = &unk_1E801E6B0;
    objc_copyWeak(&v13, &location);
    v11 = v5;
    v12 = completionCopy;
    [mEMORY[0x1E69B9000] peerPaymentPendingRequestsForPeerPaymentAccountWithCompletion:v10];

    objc_destroyWeak(&v13);
  }

  else
  {
    self->_pendingPeerPaymentRequestsLoaded = 1;
    if (self->_isShowingPeerPaymentPendingRequests)
    {
      self->_isShowingPeerPaymentPendingRequests = 0;
      if (self->_allContentIsLoaded)
      {
        v7 = [(PKDashboardPaymentPassDataSource *)self firstSectionIndexForSectionIdentifier:9];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:v7];
        [WeakRetained reloadSections:v9];
      }
    }

    if (!self->_allContentIsLoaded)
    {
      [(PKDashboardPaymentPassDataSource *)self updateContentIsLoaded];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

BOOL __83__PKDashboardPaymentPassDataSource_reloadPeerPaymentPendingRequestsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = (PKUseMockSURFServer() & 1) == 0 && [WeakRetained _isPeerPaymentPass] && WeakRetained[21] && !objc_msgSend(WeakRetained[119], "activationState") && objc_msgSend(WeakRetained[21], "state") == 1;

  return v2;
}

void __83__PKDashboardPaymentPassDataSource_reloadPeerPaymentPendingRequestsWithCompletion___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__PKDashboardPaymentPassDataSource_reloadPeerPaymentPendingRequestsWithCompletion___block_invoke_3;
  v5[3] = &unk_1E801E688;
  objc_copyWeak(&v9, a1 + 6);
  v6 = v3;
  v7 = a1[4];
  v8 = a1[5];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v9);
}

void __83__PKDashboardPaymentPassDataSource_reloadPeerPaymentPendingRequestsWithCompletion___block_invoke_3(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    goto LABEL_22;
  }

  v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v28 = a1;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = v5;
  v7 = *v33;
  v8 = *MEMORY[0x1E69BC350];
  v30 = *MEMORY[0x1E69BC348];
  v29 = *MEMORY[0x1E69BC340];
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v33 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v32 + 1) + 8 * i);
      if ([v10 context] != 1 || (objc_msgSend(v10, "status"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", v8), v11, !v12))
      {
        v18 = [WeakRetained _shouldShowGroupRequestTrackingForPendingRequest:v10];
        v15 = v3;
        if (!v18)
        {
          continue;
        }

LABEL_13:
        [v15 addObject:v10];
        continue;
      }

      v13 = [v10 actions];
      v14 = [v13 containsObject:v30];

      v15 = v31;
      if (v14)
      {
        goto LABEL_13;
      }

      v16 = [v10 actions];
      v17 = [v16 containsObject:v29];

      v15 = v3;
      if (v17)
      {
        goto LABEL_13;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v6);
LABEL_16:

  v19 = [v31 sortedArrayUsingComparator:&__block_literal_global_2143];
  v20 = WeakRetained[88];
  WeakRetained[88] = v19;

  v21 = [v3 sortedArrayUsingComparator:&__block_literal_global_2143];
  v22 = WeakRetained[89];
  WeakRetained[89] = v21;

  v23 = v28;
  *(WeakRetained + 696) = (*(*(v28 + 40) + 16))();
  *(WeakRetained + 728) = 1;
  if (*(WeakRetained + 788))
  {
    v24 = [WeakRetained firstSectionIndexForSectionIdentifier:9];
    v25 = objc_loadWeakRetained(WeakRetained + 4);
    v26 = [MEMORY[0x1E696AC90] indexSetWithIndex:v24];
    [v25 reloadSections:v26];
  }

  else
  {
    [WeakRetained updateContentIsLoaded];
  }

  [WeakRetained reloadMessagesWithReason:{@"Peer payment requests loaded", v28}];
  v27 = *(v23 + 48);
  if (v27)
  {
    (*(v27 + 16))();
  }

LABEL_22:
}

uint64_t __83__PKDashboardPaymentPassDataSource_reloadPeerPaymentPendingRequestsWithCompletion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 requestDate];
  v6 = [v4 requestDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (BOOL)_shouldShowGroupRequestTrackingForPendingRequest:(id)request
{
  requestCopy = request;
  currencyAmount = [requestCopy currencyAmount];
  amount = [currencyAmount amount];

  PKPeerPaymentGroupRequestExpirationOverride();
  v7 = v6;
  context = [requestCopy context];
  sentOnThisDevice = [requestCopy sentOnThisDevice];
  zero = [MEMORY[0x1E696AB90] zero];
  v11 = [amount compare:zero];

  groupID = [requestCopy groupID];
  v13 = [groupID length];

  requestDate = [requestCopy requestDate];
  [requestDate timeIntervalSinceNow];
  v16 = v15;

  if ([requestCopy isComplete])
  {
    LOBYTE(v17) = 0;
  }

  else
  {
    v17 = [requestCopy isPaid] ^ 1;
  }

  v18 = -2592000.0;
  if (v7 != 0.0)
  {
    v18 = v7;
  }

  v19 = (context == 2) & sentOnThisDevice;
  if (!v11)
  {
    v19 = 0;
  }

  if (!v13)
  {
    v19 = 0;
  }

  if (v16 >= v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  return v20 & v17;
}

- (BOOL)_isDisclosureSectionChangedWithPreviousAccount:(id)account previousPass:(id)pass
{
  accountCopy = account;
  passCopy = pass;
  IsFDICInsured = PKPeerPaymentAccountIsFDICInsured();
  if (IsFDICInsured == PKPeerPaymentAccountIsFDICInsured() && (v8 = PKPeerPaymentAccountResolutionForAccountAndPeerPaymentPass(), v8 == PKPeerPaymentAccountResolutionForAccountAndPeerPaymentPass()))
  {
    CanPerformManualIdentityVerification = PKPeerPaymentAccountCanPerformManualIdentityVerification();
    v10 = CanPerformManualIdentityVerification ^ PKPeerPaymentAccountCanPerformManualIdentityVerification();
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (void)pendingRequestsChanged
{
  if ([(PKDashboardPaymentPassDataSource *)self _isPeerPaymentPass])
  {
    objc_initWeak(&location, self);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __58__PKDashboardPaymentPassDataSource_pendingRequestsChanged__block_invoke;
    v3[3] = &unk_1E8010998;
    objc_copyWeak(&v4, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v3);
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __58__PKDashboardPaymentPassDataSource_pendingRequestsChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __58__PKDashboardPaymentPassDataSource_pendingRequestsChanged__block_invoke_2;
    v3[3] = &unk_1E8010998;
    objc_copyWeak(&v4, (a1 + 32));
    [WeakRetained reloadPeerPaymentPendingRequestsWithCompletion:v3];
    objc_destroyWeak(&v4);
  }
}

void __58__PKDashboardPaymentPassDataSource_pendingRequestsChanged__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadMessagesWithReason:@"peer payment pending requests change"];
    WeakRetained = v2;
  }
}

- (void)recurringPaymentsChanged
{
  if ([(PKDashboardPaymentPassDataSource *)self _isPeerPaymentPass])
  {
    objc_initWeak(&location, self);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __60__PKDashboardPaymentPassDataSource_recurringPaymentsChanged__block_invoke;
    v3[3] = &unk_1E8010998;
    objc_copyWeak(&v4, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v3);
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __60__PKDashboardPaymentPassDataSource_recurringPaymentsChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __60__PKDashboardPaymentPassDataSource_recurringPaymentsChanged__block_invoke_2;
    v3[3] = &unk_1E8010998;
    objc_copyWeak(&v4, (a1 + 32));
    [WeakRetained reloadRecurringPeerPaymentsWithCompletion:v3];
    objc_destroyWeak(&v4);
  }
}

void __60__PKDashboardPaymentPassDataSource_recurringPaymentsChanged__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadMessagesWithReason:@"peer payment recurring payments change"];
    WeakRetained = v2;
  }
}

- (void)_verificationButtonTapped
{
  v3 = [[PKPaymentSetupDismissibleNavigationController alloc] initWithContext:0];
  v4 = objc_alloc(MEMORY[0x1E69B8D48]);
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v6 = [v4 initWithWebService:mEMORY[0x1E69B8EF8]];

  v7 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:0 provisioningController:v6 groupsController:0];
  [v7 setIsFollowupProvisioning:1];
  objc_initWeak(&location, self);
  pass = self->_pass;
  paymentVerificationController = self->_paymentVerificationController;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__PKDashboardPaymentPassDataSource__verificationButtonTapped__block_invoke;
  v13[3] = &unk_1E80110E0;
  objc_copyWeak(&v15, &location);
  v10 = v3;
  v14 = v10;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__PKDashboardPaymentPassDataSource__verificationButtonTapped__block_invoke_2;
  v11[3] = &unk_1E8010998;
  objc_copyWeak(&v12, &location);
  [PKProvisioningFlowBridge startVerificationFlowWithNavController:v10 context:v7 pass:pass verificationController:paymentVerificationController presentNavController:v13 completion:v11];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __61__PKDashboardPaymentPassDataSource__verificationButtonTapped__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 100);
    v4 = [v3 navigationController];
    [v4 presentViewController:*(a1 + 32) animated:1 completion:0];

    WeakRetained = v5;
  }
}

void __61__PKDashboardPaymentPassDataSource__verificationButtonTapped__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 100);
    [v2 dismissViewControllerAnimated:1 completion:0];

    WeakRetained = v3;
  }
}

- (void)invalidatedSpendingSummaryOfType:(unint64_t)type startingWithDate:(id)date
{
  dateCopy = date;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__PKDashboardPaymentPassDataSource_invalidatedSpendingSummaryOfType_startingWithDate___block_invoke;
  v8[3] = &unk_1E8011408;
  objc_copyWeak(v10, &location);
  v10[1] = type;
  v9 = dateCopy;
  v7 = dateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v8);

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __86__PKDashboardPaymentPassDataSource_invalidatedSpendingSummaryOfType_startingWithDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 48);
    v7 = WeakRetained;
    v5 = [WeakRetained[63] summaryType];
    v3 = v7;
    if (v4 == v5)
    {
      v6 = PKEqualObjects();
      v3 = v7;
      if (v6)
      {
        [v7 loadSummariesWithForceReload:0];
        v3 = v7;
      }
    }
  }
}

- (void)invalidatedSpendingSummariesOfType:(unint64_t)type
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PKDashboardPaymentPassDataSource_invalidatedSpendingSummariesOfType___block_invoke;
  block[3] = &unk_1E801E5C8;
  objc_copyWeak(v5, &location);
  v5[1] = type;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

void __71__PKDashboardPaymentPassDataSource_invalidatedSpendingSummariesOfType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = *(a1 + 40);
    v5 = WeakRetained;
    v4 = v3 == [WeakRetained[63] summaryType];
    WeakRetained = v5;
    if (v4)
    {
      [v5 loadSummariesWithForceReload:0];
      WeakRetained = v5;
    }
  }
}

- (void)invalidatedSummariesAvailable
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __65__PKDashboardPaymentPassDataSource_invalidatedSummariesAvailable__block_invoke;
  v2[3] = &unk_1E8010998;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __65__PKDashboardPaymentPassDataSource_invalidatedSummariesAvailable__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained loadSummariesWithForceReload:1];
}

- (void)accountServiceAccountResolutionController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  navigationController = [WeakRetained navigationController];
  [navigationController presentViewController:viewControllerCopy animated:1 completion:0];
}

- (void)discoveryService:(id)service dialogRequestsChangedForPlacement:(id)placement
{
  placementCopy = placement;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PKDashboardPaymentPassDataSource_discoveryService_dialogRequestsChangedForPlacement___block_invoke;
  block[3] = &unk_1E80110E0;
  objc_copyWeak(&v9, &location);
  v8 = placementCopy;
  v6 = placementCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __87__PKDashboardPaymentPassDataSource_discoveryService_dialogRequestsChangedForPlacement___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v9 = WeakRetained;
    v4 = [WeakRetained AMPEnagementPlacementForCurrentlyDisplayedPass];
    v5 = v3;
    v6 = v4;
    v7 = v6;
    if (v5 == v6)
    {
    }

    else
    {
      if (!v5 || !v6)
      {

        goto LABEL_10;
      }

      v8 = [v5 isEqualToString:v6];

      WeakRetained = v9;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    [v9 reloadDialogRequests];
LABEL_10:
    WeakRetained = v9;
  }

LABEL_11:
}

- (void)accountUsersChanged:(id)changed forAccountIdentifier:(id)identifier
{
  changedCopy = changed;
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__PKDashboardPaymentPassDataSource_accountUsersChanged_forAccountIdentifier___block_invoke;
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

void __77__PKDashboardPaymentPassDataSource_accountUsersChanged_forAccountIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v9 = WeakRetained;
    v4 = [WeakRetained[119] associatedAccountServiceAccountIdentifier];
    v5 = v3;
    v6 = v4;
    v7 = v6;
    if (v5 == v6)
    {
    }

    else
    {
      if (!v5 || !v6)
      {

        goto LABEL_10;
      }

      v8 = [v5 isEqualToString:v6];

      WeakRetained = v9;
      if ((v8 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v7 = [objc_alloc(MEMORY[0x1E69B8450]) initWithAccountUsers:*(a1 + 40)];
    [v9 reloadAccountUsersWithNewAccountUserCollection:v7];
LABEL_10:

    WeakRetained = v9;
  }

LABEL_11:
}

- (void)physicalCardsChanged:(id)changed forAccountIdentifier:(id)identifier
{
  changedCopy = changed;
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__PKDashboardPaymentPassDataSource_physicalCardsChanged_forAccountIdentifier___block_invoke;
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

void __78__PKDashboardPaymentPassDataSource_physicalCardsChanged_forAccountIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v9 = WeakRetained;
    v4 = [WeakRetained[119] associatedAccountServiceAccountIdentifier];
    v5 = v3;
    v6 = v4;
    v7 = v6;
    if (v5 == v6)
    {
    }

    else
    {
      if (!v5 || !v6)
      {

        goto LABEL_10;
      }

      v8 = [v5 isEqualToString:v6];

      WeakRetained = v9;
      if ((v8 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    [v9 reloadPhysicalCardsWithNewPhysicalCards:*(a1 + 40)];
LABEL_10:
    WeakRetained = v9;
  }

LABEL_11:
}

- (void)featureApplicationAdded:(id)added
{
  addedCopy = added;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PKDashboardPaymentPassDataSource_featureApplicationAdded___block_invoke;
  block[3] = &unk_1E80110E0;
  objc_copyWeak(&v8, &location);
  v7 = addedCopy;
  v5 = addedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __60__PKDashboardPaymentPassDataSource_featureApplicationAdded___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = [*(a1 + 32) accountIdentifier];
    if (v3)
    {
      v4 = [v9[119] associatedAccountServiceAccountIdentifier];
      v5 = v3;
      v6 = v4;
      v7 = v6;
      if (v5 == v6)
      {
      }

      else
      {
        if (!v6)
        {

          goto LABEL_10;
        }

        v8 = [v5 isEqualToString:v6];

        if ((v8 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      [v9 reloadAccountUserInvitationsWithNewAccountUserInvitations:0];
    }

LABEL_10:

    WeakRetained = v9;
  }
}

- (void)featureApplicationChanged:(id)changed
{
  changedCopy = changed;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKDashboardPaymentPassDataSource_featureApplicationChanged___block_invoke;
  block[3] = &unk_1E80110E0;
  objc_copyWeak(&v8, &location);
  v7 = changedCopy;
  v5 = changedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __62__PKDashboardPaymentPassDataSource_featureApplicationChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = [*(a1 + 32) accountIdentifier];
    if (v3)
    {
      v4 = [v9[119] associatedAccountServiceAccountIdentifier];
      v5 = v3;
      v6 = v4;
      v7 = v6;
      if (v5 == v6)
      {
      }

      else
      {
        if (!v6)
        {

          goto LABEL_10;
        }

        v8 = [v5 isEqualToString:v6];

        if ((v8 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      [v9 reloadAccountUserInvitationsWithNewAccountUserInvitations:0];
    }

LABEL_10:

    WeakRetained = v9;
  }
}

- (void)featureApplicationRemoved:(id)removed
{
  removedCopy = removed;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKDashboardPaymentPassDataSource_featureApplicationRemoved___block_invoke;
  block[3] = &unk_1E80110E0;
  objc_copyWeak(&v8, &location);
  v7 = removedCopy;
  v5 = removedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __62__PKDashboardPaymentPassDataSource_featureApplicationRemoved___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = [*(a1 + 32) accountIdentifier];
    if (v3)
    {
      v4 = [v9[119] associatedAccountServiceAccountIdentifier];
      v5 = v3;
      v6 = v4;
      v7 = v6;
      if (v5 == v6)
      {
      }

      else
      {
        if (!v6)
        {

          goto LABEL_10;
        }

        v8 = [v5 isEqualToString:v6];

        if ((v8 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      [v9 reloadAccountUserInvitationsWithNewAccountUserInvitations:0];
    }

LABEL_10:

    WeakRetained = v9;
  }
}

- (void)accountChanged:(id)changed
{
  changedCopy = changed;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PKDashboardPaymentPassDataSource_accountChanged___block_invoke;
  block[3] = &unk_1E80110E0;
  objc_copyWeak(&v8, &location);
  v7 = changedCopy;
  v5 = changedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __51__PKDashboardPaymentPassDataSource_accountChanged___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) accountIdentifier];
    if (v3)
    {
      v4 = [WeakRetained[48] accountIdentifier];
      v5 = v3;
      v6 = v5;
      if (v4 == v5)
      {
      }

      else
      {
        if (!v4)
        {

LABEL_10:
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          v8 = [WeakRetained accounts];
          v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v18;
            while (2)
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v18 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = [*(*(&v17 + 1) + 8 * i) accountIdentifier];
                v14 = v6;
                v15 = v14;
                if (v13 == v14)
                {

LABEL_24:
                  [WeakRetained reloadAccounts];
                  goto LABEL_25;
                }

                if (v13)
                {
                  v16 = [v13 isEqualToString:v14];

                  if (v16)
                  {
                    goto LABEL_24;
                  }
                }

                else
                {
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }

LABEL_25:

          goto LABEL_26;
        }

        v7 = [v4 isEqualToString:v5];

        if (!v7)
        {
          goto LABEL_10;
        }
      }

      [WeakRetained reloadAccount];
    }

LABEL_26:
  }
}

- (void)accountAdded:(id)added
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__PKDashboardPaymentPassDataSource_accountAdded___block_invoke;
  v3[3] = &unk_1E8010998;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __49__PKDashboardPaymentPassDataSource_accountAdded___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadAccounts];
    WeakRetained = v2;
  }
}

- (void)accountRemoved:(id)removed
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__PKDashboardPaymentPassDataSource_accountRemoved___block_invoke;
  v3[3] = &unk_1E8010998;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __51__PKDashboardPaymentPassDataSource_accountRemoved___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadAccounts];
    WeakRetained = v2;
  }
}

- (void)didUpdateAppleBalancePromotion:(id)promotion forAccountIdentifier:(id)identifier
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __88__PKDashboardPaymentPassDataSource_didUpdateAppleBalancePromotion_forAccountIdentifier___block_invoke;
  v4[3] = &unk_1E8010998;
  objc_copyWeak(&v5, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __88__PKDashboardPaymentPassDataSource_didUpdateAppleBalancePromotion_forAccountIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadMessagesWithReason:@"update apple balance"];
    WeakRetained = v2;
  }
}

- (void)didRemoveAppleBalancePromotionWithUniqueIdentifier:(id)identifier forAccountIdentifier:(id)accountIdentifier
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __108__PKDashboardPaymentPassDataSource_didRemoveAppleBalancePromotionWithUniqueIdentifier_forAccountIdentifier___block_invoke;
  v4[3] = &unk_1E8010998;
  objc_copyWeak(&v5, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __108__PKDashboardPaymentPassDataSource_didRemoveAppleBalancePromotionWithUniqueIdentifier_forAccountIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadMessagesWithReason:@"remove apple promotion"];
    WeakRetained = v2;
  }
}

- (void)creditRecoveryPaymentPlansChangedForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    associatedAccountServiceAccountIdentifier = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
    v6 = identifierCopy;
    v7 = associatedAccountServiceAccountIdentifier;
    v8 = v7;
    if (v7 == v6)
    {
    }

    else
    {
      if (!v7)
      {

        goto LABEL_9;
      }

      v9 = [v6 isEqualToString:v7];

      if ((v9 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __90__PKDashboardPaymentPassDataSource_creditRecoveryPaymentPlansChangedForAccountIdentifier___block_invoke;
    v10[3] = &unk_1E8010998;
    objc_copyWeak(&v11, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v10);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

LABEL_9:
}

void __90__PKDashboardPaymentPassDataSource_creditRecoveryPaymentPlansChangedForAccountIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadCreditRecoveryPaymentPlans];
    WeakRetained = v2;
  }
}

- (void)foregroundActiveArbiter:(id)arbiter didUpdateForegroundActiveState:(id)state
{
  arbiterCopy = arbiter;
  foreground = self->_activeState.foreground;
  self->_activeState = state;
  if (state.var0 && !foreground)
  {
    [(PKDashboardPaymentPassDataSource *)self reloadAllContent];
    self->_forceTransactionsUpdate = 1;
    [(PKDashboardPaymentPassDataSource *)self reloadTransactionsWithSummariesReload:1];
    [(PKDashboardPaymentPassDataSource *)self reloadTransactionGroups];
  }

  [(PKDashboardPaymentPassDataSource *)self _updateTransactionsTimer];
}

- (void)viewControllerDidTerminateSetupFlow:(id)flow
{
  presentingViewController = [flow presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)viewControllerDidCancelSetupFlow:(id)flow
{
  presentingViewController = [flow presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)contactIssuerHelper:(id)helper didRequestPresentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  navigationController = [WeakRetained navigationController];

  [navigationController presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)contactIssuerHelper:(id)helper didRequestDismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  navigationController = [WeakRetained navigationController];

  [navigationController dismissViewControllerAnimated:animatedCopy completion:completionCopy];
}

- (id)peerPaymentBalanceItem
{
  v3 = objc_alloc_init(PKDashboardBalanceItem);
  peerPaymentAccount = [(PKDashboardPaymentPassDataSource *)self peerPaymentAccount];
  currentBalance = [peerPaymentAccount currentBalance];
  formattedStringValue = [currentBalance formattedStringValue];
  [(PKDashboardBalanceItem *)v3 setBalance:formattedStringValue];

  v7 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBal.isa);
  [(PKDashboardBalanceItem *)v3 setTitle:v7];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(PKDashboardBalanceItem *)v3 setTitleColor:labelColor];

  v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBal_0.isa);
  [(PKDashboardBalanceItem *)v3 setTopUpTitle:v9];

  peerPaymentThresholdTopUp = [(PKDashboardPaymentPassDataSource *)self peerPaymentThresholdTopUp];
  v11 = peerPaymentThresholdTopUp;
  if (peerPaymentThresholdTopUp)
  {
    if ([peerPaymentThresholdTopUp status] == 4)
    {
      v12 = @"DASHBOARD_BALANCE_THRESHOLD_PAUSED";
    }

    else
    {
      v12 = @"DASHBOARD_BALANCE_THRESHOLD_ON";
    }

    v13 = PKLocalizedPeerPaymentRecurringString(&v12->isa);
    [(PKDashboardBalanceItem *)v3 setAvailableCredit:v13];
  }

  objc_initWeak(&location, self);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __58__PKDashboardPaymentPassDataSource_peerPaymentBalanceItem__block_invoke;
  v19 = &unk_1E8010998;
  objc_copyWeak(&v20, &location);
  [(PKDashboardBalanceItem *)v3 setTopUpAction:&v16];
  v14 = [(PKDashboardPaymentPassDataSource *)self peerPaymentAccount:v16];
  -[PKDashboardBalanceItem setTopUpEnabled:](v3, "setTopUpEnabled:", [v14 state] == 1);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v3;
}

void __58__PKDashboardPaymentPassDataSource_peerPaymentBalanceItem__block_invoke(uint64_t a1)
{
  v21[5] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69BB6A8];
  v3 = [MEMORY[0x1E69B8540] reporterForSubject:*MEMORY[0x1E69BB6A8]];

  if (!v3)
  {
    [MEMORY[0x1E69B8540] beginSubjectReporting:v2];
  }

  v4 = MEMORY[0x1E69B8540];
  v5 = *MEMORY[0x1E69BAEE8];
  v6 = *MEMORY[0x1E69BABE8];
  v20[0] = *MEMORY[0x1E69BA850];
  v20[1] = v6;
  v7 = *MEMORY[0x1E69BAC10];
  v21[0] = v5;
  v21[1] = v7;
  v8 = *MEMORY[0x1E69BA6F0];
  v9 = *MEMORY[0x1E69BA440];
  v20[2] = *MEMORY[0x1E69BA680];
  v20[3] = v9;
  v10 = *MEMORY[0x1E69BAFF8];
  v21[2] = v8;
  v21[3] = v10;
  v20[4] = *MEMORY[0x1E69BAF60];
  v21[4] = *MEMORY[0x1E69BAF70];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:5];
  [v4 subject:v2 sendEvent:v11];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (PKRunningInPassbook())
    {
      v13 = objc_loadWeakRetained(WeakRetained + 100);
      v14 = [v13 navigationController];

      v15 = [PKRecipientPickerViewController alloc];
      v16 = [WeakRetained transactionSourceCollection];
      v17 = [(PKRecipientPickerViewController *)v15 initWithTransactionSourceCollection:v16 familyCollection:WeakRetained[104] peerPaymentSendFlowType:1];

      v18 = [WeakRetained nearbyPeerPaymentViewProvider];
      [(PKRecipientPickerViewController *)v17 setNearbyViewProvider:v18];

      v19 = [[PKNavigationController alloc] initWithRootViewController:v17];
      [(PKNavigationController *)v19 setModalPresentationStyle:1];
      [v14 presentViewController:v19 animated:1 completion:0];
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x1E696AF20]);
      [v14 setScheme:*MEMORY[0x1E69BC6E0]];
      [v14 setHost:*MEMORY[0x1E69BC678]];
      v17 = [v14 URL];
      PKOpenURL();
    }
  }
}

- (BOOL)canDisplayPeerPaymentBalanceModule
{
  state = [(PKPeerPaymentAccount *)self->_peerPaymentAccount state];
  pass = [(PKDashboardPaymentPassDataSource *)self pass];
  effectiveContactlessPaymentApplicationState = [pass effectiveContactlessPaymentApplicationState];

  pass2 = [(PKDashboardPaymentPassDataSource *)self pass];
  secureElementPass = [pass2 secureElementPass];
  passActivationState = [secureElementPass passActivationState];

  if (effectiveContactlessPaymentApplicationState != 1)
  {
    return 0;
  }

  return (state - 1) < 2 && passActivationState != 4;
}

- (void)_recurringPeerPaymentSuggestionsWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  pass = self->_pass;
  if (pass && [(PKPaymentPass *)pass isValid]&& [(PKPaymentPass *)self->_pass isPeerPaymentPass])
  {
    objc_initWeak(&location, self);
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = __Block_byref_object_copy__41;
    v11[4] = __Block_byref_object_dispose__41;
    v12 = objc_opt_new();
    searchSuggestionController = self->_searchSuggestionController;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __83__PKDashboardPaymentPassDataSource__recurringPeerPaymentSuggestionsWithCompletion___block_invoke;
    v7[3] = &unk_1E801E6D8;
    objc_copyWeak(&v10, &location);
    v8 = completionCopy;
    v9 = v11;
    [(FHSearchSuggestionController *)searchSuggestionController allPeerPaymentForecastingSignals:v7];

    objc_destroyWeak(&v10);
    _Block_object_dispose(v11, 8);

    objc_destroyWeak(&location);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0]);
  }
}

void __83__PKDashboardPaymentPassDataSource__recurringPeerPaymentSuggestionsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__PKDashboardPaymentPassDataSource__recurringPeerPaymentSuggestionsWithCompletion___block_invoke_2;
  v6[3] = &unk_1E801E840;
  objc_copyWeak(&v10, (a1 + 48));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 40);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  objc_destroyWeak(&v10);
}

void __83__PKDashboardPaymentPassDataSource__recurringPeerPaymentSuggestionsWithCompletion___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[21] currentBalance];
    v18 = [v4 currency];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [v11 forecastingType];
          v13 = [v11 peerPaymentHeuristicIds];
          if (v12 == 3)
          {
            v14 = v11;
            if (([v3 _isExistingRecurringPeerPayment:v14] & 1) == 0)
            {
              v15 = [v3 _messageForPersonWithAmount:v14 withHeuristicIds:v13 andCurrencyCode:v18];

              v8 = v15;
            }
          }

          if (v8)
          {
            [*(*(*(a1 + 48) + 8) + 40) addObject:v8];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    v16 = *(a1 + 40);
    v17 = [*(*(*(a1 + 48) + 8) + 40) copy];
    (*(v16 + 16))(v16, v17);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (BOOL)_isExistingRecurringPeerPayment:(id)payment
{
  v21 = *MEMORY[0x1E69E9840];
  paymentCopy = payment;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_recurringPeerPayments;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        amount = [paymentCopy amount];
        amount2 = [v9 amount];
        if ([amount isEqualToNumber:amount2])
        {
          personId = [paymentCopy personId];
          recipientAddress = [v9 recipientAddress];
          v14 = [personId isEqualToString:recipientAddress];

          if (v14)
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

LABEL_12:

  return v6;
}

- (void)_dismissRecurringPeerPaymentSuggestionsWithIdentifiers:(id)identifiers dismissalType:(unint64_t)type
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = identifiers;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v11 = [MEMORY[0x1E696AD98] numberWithInteger:0];
        v12 = off_1EE98A6C0();
        [v10 setObject:v11 forKey:v12];

        v13 = [MEMORY[0x1E696AD98] numberWithInteger:1];
        v14 = off_1EE98A6C8();
        [v10 setObject:v13 forKey:v14];

        v15 = [MEMORY[0x1E696AD98] numberWithInteger:type];
        v16 = off_1EE98A6D0();
        [v10 setObject:v15 forKey:v16];

        v17 = off_1EE98A6D8();
        [v10 setObject:v9 forKey:v17];

        searchSuggestionController = self->_searchSuggestionController;
        v19 = [v10 copy];
        [(FHSearchSuggestionController *)searchSuggestionController recordUserInteraction:v19];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }
}

- (id)_messageForPersonWithAmount:(id)amount withHeuristicIds:(id)ids andCurrencyCode:(id)code
{
  v65 = *MEMORY[0x1E69E9840];
  amountCopy = amount;
  idsCopy = ids;
  codeCopy = code;
  objc_initWeak(&location, self);
  personId = [amountCopy personId];
  _contactResolver = [(PKDashboardPaymentPassDataSource *)self _contactResolver];
  v43 = [_contactResolver contactForHandle:personId];

  givenName = [v43 givenName];
  periodicCategory = [amountCopy periodicCategory];
  v34 = PKPeerPaymentRecurringPaymentFrequencyFromString();

  signalDate = [amountCopy signalDate];
  dayOfWeek = [amountCopy dayOfWeek];
  amount = [amountCopy amount];
  v36 = PKCurrencyAmountMake();
  v37 = amount;
  if ([givenName length])
  {
    v40 = objc_alloc_init(PKDashboardPassMessage);
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    familyMembersByAltDSID = [(PKFamilyMemberCollection *)self->_familyCollection familyMembersByAltDSID];
    allValues = [familyMembersByAltDSID allValues];

    v13 = [allValues countByEnumeratingWithState:&v58 objects:v64 count:16];
    if (v13)
    {
      v14 = 0;
      v15 = *v59;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v59 != v15)
          {
            objc_enumerationMutation(allValues);
          }

          v17 = *(*(&v58 + 1) + 8 * i);
          if ([v17 memberType] == 1 || objc_msgSend(v17, "memberType") == 2)
          {
            contact = [v17 contact];
            v19 = [objc_alloc(MEMORY[0x1E69B8728]) initWithCNContact:contact];
            contactHandle = [v19 contactHandle];
            v21 = [personId isEqualToString:contactHandle];

            v14 |= v21;
          }
        }

        v13 = [allValues countByEnumeratingWithState:&v58 objects:v64 count:16];
      }

      while (v13);

      if (v14)
      {
        v22 = v40;
        if (v34 == 3)
        {
          minimalFormattedStringValue = [v36 minimalFormattedStringValue];
          v24 = PKLocalizedPeerPaymentRecurringString(&cfstr_PeerPaymentSug_1.isa, &stru_1F3BD6370.isa, givenName, minimalFormattedStringValue);
          goto LABEL_28;
        }

        if (v34 == 2)
        {
          minimalFormattedStringValue = [v36 minimalFormattedStringValue];
          v24 = PKLocalizedPeerPaymentRecurringString(&cfstr_PeerPaymentSug_0.isa, &stru_1F3BDAC30.isa, givenName, minimalFormattedStringValue, dayOfWeek);
          goto LABEL_28;
        }

        if (v34 == 1)
        {
          minimalFormattedStringValue = [v36 minimalFormattedStringValue];
          v24 = PKLocalizedPeerPaymentRecurringString(&cfstr_PeerPaymentSug.isa, &stru_1F3BDAC30.isa, givenName, minimalFormattedStringValue, dayOfWeek);
LABEL_28:
          v26 = v24;

          v22 = v40;
          goto LABEL_29;
        }

        goto LABEL_23;
      }
    }

    else
    {
    }

    v22 = v40;
    if (v34 == 3)
    {
      minimalFormattedStringValue = [v36 minimalFormattedStringValue];
      v24 = PKLocalizedPeerPaymentRecurringString(&cfstr_PeerPaymentSug_4.isa, &stru_1F3BD6370.isa, givenName, minimalFormattedStringValue);
      goto LABEL_28;
    }

    if (v34 == 2)
    {
      minimalFormattedStringValue = [v36 minimalFormattedStringValue];
      v24 = PKLocalizedPeerPaymentRecurringString(&cfstr_PeerPaymentSug_3.isa, &stru_1F3BDAC30.isa, givenName, minimalFormattedStringValue, dayOfWeek);
      goto LABEL_28;
    }

    if (v34 == 1)
    {
      minimalFormattedStringValue = [v36 minimalFormattedStringValue];
      v24 = PKLocalizedPeerPaymentRecurringString(&cfstr_PeerPaymentSug_2.isa, &stru_1F3BDAC30.isa, givenName, minimalFormattedStringValue, dayOfWeek);
      goto LABEL_28;
    }

LABEL_23:
    v26 = 0;
LABEL_29:
    v27 = PKLocalizedPeerPaymentRecurringString(&cfstr_PeerPaymentSug_5.isa, &stru_1F3BD5BF0.isa, givenName);
    [(PKDashboardPassMessage *)v22 setTitle:v27];
    [(PKDashboardPassMessage *)v22 setMessage:v26];
    [(PKDashboardPassMessage *)v22 setAvatarContact:v43];
    v28 = PKLocalizedPeerPaymentRecurringString(&cfstr_PeerPaymentSug_6.isa);
    [(PKDashboardPassMessage *)v22 setButtonTitle:v28];

    memset(v57, 0, sizeof(v57));
    v29 = idsCopy;
    if ([v29 countByEnumeratingWithState:v57 objects:v63 count:16])
    {
      v30 = **(&v57[0] + 1);
    }

    else
    {
      v30 = @"Unknown";
    }

    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"recurringSuggestion-%@", v30];
    [(PKDashboardPassMessage *)v40 setIdentifier:v31];

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __97__PKDashboardPaymentPassDataSource__messageForPersonWithAmount_withHeuristicIds_andCurrencyCode___block_invoke;
    v49[3] = &unk_1E801E700;
    objc_copyWeak(v56, &location);
    v50 = v43;
    v51 = personId;
    v52 = codeCopy;
    v53 = v37;
    v56[1] = v34;
    v54 = signalDate;
    v32 = v29;
    v55 = v32;
    [(PKDashboardPassMessage *)v40 setActionOnButtonPress:v49];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __97__PKDashboardPaymentPassDataSource__messageForPersonWithAmount_withHeuristicIds_andCurrencyCode___block_invoke_2;
    v46[3] = &unk_1E80110E0;
    objc_copyWeak(&v48, &location);
    v47 = v32;
    [(PKDashboardPassMessage *)v40 setActionOnDismiss:v46];
    v25 = v40;

    objc_destroyWeak(&v48);
    objc_destroyWeak(v56);

    goto LABEL_33;
  }

  v25 = 0;
LABEL_33:

  objc_destroyWeak(&location);

  return v25;
}

void __97__PKDashboardPaymentPassDataSource__messageForPersonWithAmount_withHeuristicIds_andCurrencyCode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v14 = WeakRetained;
    v3 = [objc_alloc(MEMORY[0x1E69B8F28]) initWithPeerPaymentWebService:WeakRetained[118]];
    v4 = [PKPeerPaymentRemoteMessagesComposer alloc];
    v5 = objc_loadWeakRetained(v14 + 100);
    v6 = [v5 navigationController];
    v7 = [(PKPeerPaymentRemoteMessagesComposer *)v4 initWithPeerPaymentController:v3 presentingViewController:v6 actionType:2 sourceType:1];

    v8 = [objc_alloc(getCNComposeRecipientClass()) initWithContact:*(a1 + 32) address:*(a1 + 40) kind:5];
    v9 = objc_alloc_init(MEMORY[0x1E69B8FD0]);
    [v9 setCurrency:*(a1 + 48)];
    [v9 setAmount:*(a1 + 56)];
    [v9 setFrequency:*(a1 + 88)];
    [v9 setStartDate:*(a1 + 64)];
    v10 = [[PKAmountKeypadViewController alloc] initWithRemoteMessagesComposer:v7 recipient:v8 sendFlowType:2 familyCollection:v14[104]];
    [(PKAmountKeypadViewController *)v10 setRecurringPeerPayment:v9];
    [(PKAmountKeypadViewController *)v10 setShowCancelButton:1];
    v11 = [[PKNavigationController alloc] initWithRootViewController:v10];
    [(PKNavigationController *)v11 setOverrideUserInterfaceStyle:2];
    v12 = objc_loadWeakRetained(v14 + 100);
    v13 = [v12 navigationController];
    [v13 presentViewController:v11 animated:1 completion:0];

    [v14 _dismissRecurringPeerPaymentSuggestionsWithIdentifiers:*(a1 + 72) dismissalType:2];
    [v14 reloadMessagesAfterMessageInteraction];

    WeakRetained = v14;
  }
}

void __97__PKDashboardPaymentPassDataSource__messageForPersonWithAmount_withHeuristicIds_andCurrencyCode___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _dismissRecurringPeerPaymentSuggestionsWithIdentifiers:*(a1 + 32) dismissalType:1];
    [v3 reloadMessagesAfterMessageInteraction];
    WeakRetained = v3;
  }
}

- (void)setTransactions:(id)transactions
{
  v4 = [transactions copy];
  transactions = self->_transactions;
  self->_transactions = v4;
}

- (void)_calculateDiffAndUpdateWithTransactions:(id)transactions
{
  v30 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  self->_forceTransactionsUpdate = 0;
  date = [MEMORY[0x1E695DF00] date];
  lastTransactionReload = self->_lastTransactionReload;
  self->_lastTransactionReload = date;

  if (self->_allContentIsLoaded)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v8 = [PKCollectionViewItemsDiffCalculator calculateDiffBetweenOldItems:self->_transactions andNewItems:transactionsCopy inSection:[(PKDashboardPaymentPassDataSource *)self firstSectionIndexForSectionIdentifier:11]];
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        deletedIndexPaths = [v8 deletedIndexPaths];
        v17 = [deletedIndexPaths count];
        insertedIndexPaths = [v8 insertedIndexPaths];
        v11 = [insertedIndexPaths count];
        movedFromIndexPaths = [v8 movedFromIndexPaths];
        v13 = [movedFromIndexPaths count];
        changedIndexPaths = [v8 changedIndexPaths];
        *buf = 134218752;
        v23 = v17;
        v24 = 2048;
        v25 = v11;
        v26 = 2048;
        v27 = v13;
        v28 = 2048;
        v29 = [changedIndexPaths count];
        _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Bank Connect transactions batch updates: %ld deletions, %ld insertions, %ld moves, %ld updates", buf, 0x2Au);
      }

      objc_initWeak(buf, self);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __76__PKDashboardPaymentPassDataSource__calculateDiffAndUpdateWithTransactions___block_invoke;
      v19[3] = &unk_1E80110E0;
      objc_copyWeak(&v21, buf);
      v20 = transactionsCopy;
      [(PKDashboardPaymentPassDataSource *)self updateWithBlock:v19 andDiff:v8];

      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v15 = [transactionsCopy copy];
    transactions = self->_transactions;
    self->_transactions = v15;

    [(PKDashboardPaymentPassDataSource *)self updateContentIsLoaded];
  }
}

void __76__PKDashboardPaymentPassDataSource__calculateDiffAndUpdateWithTransactions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setTransactions:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_calculateDiffAndUpdateWithTransactionGroups:(id)groups
{
  v88 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  v5 = [(NSArray *)self->_transactionGroups mutableCopy];
  v56 = groupsCopy;
  v6 = [groupsCopy mutableCopy];
  v61 = [v5 count];
  v60 = [v6 count];
  if ([v5 count])
  {
    firstObject = [v5 firstObject];
    v7FirstObject = [firstObject firstObject];
  }

  else
  {
    v7FirstObject = 0;
  }

  if ([v6 count])
  {
    firstObject2 = [v6 firstObject];
    v8FirstObject = [firstObject2 firstObject];
  }

  else
  {
    v8FirstObject = 0;
  }

  if (v7FirstObject)
  {
    v10 = [(PKDashboardPaymentPassDataSource *)self isGroupInTheCurrentYear:?];
  }

  else
  {
    v10 = 0;
  }

  v53 = v8FirstObject;
  if (v8FirstObject)
  {
    v11 = [(PKDashboardPaymentPassDataSource *)self isGroupInTheCurrentYear:v8FirstObject];
  }

  else
  {
    v11 = 0;
  }

  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v79 = v61;
    v80 = 2048;
    v81 = v60;
    v82 = 2048;
    v83 = v10;
    v84 = 2048;
    v85 = v11;
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Preparing to calculate transaction groups diff: currentTransactionSectionCount (%ld), newSectionCount (%ld), hadCurrentYearGroups (%ld), hasCurrentYearGroups (%ld)", buf, 0x2Au);
  }

  v13 = MEMORY[0x1E695E0F0];
  firstObject3 = MEMORY[0x1E695E0F0];
  if (v10)
  {
    firstObject3 = [v5 firstObject];
    [v5 removeObjectAtIndex:0];
  }

  firstObject4 = [v5 firstObject];
  v15 = firstObject4;
  if (firstObject4)
  {
    v16 = firstObject4;
  }

  else
  {
    v16 = v13;
  }

  v55 = v16;

  firstObject5 = v13;
  if (v11)
  {
    firstObject5 = [v6 firstObject];
    [v6 removeObjectAtIndex:0];
  }

  firstObject6 = [v6 firstObject];
  v18 = firstObject6;
  if (firstObject6)
  {
    v19 = firstObject6;
  }

  else
  {
    v19 = v13;
  }

  v54 = v19;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__PKDashboardPaymentPassDataSource__calculateDiffAndUpdateWithTransactionGroups___block_invoke;
    aBlock[3] = &unk_1E80110E0;
    objc_copyWeak(&v76, &location);
    v75 = v56;
    v20 = _Block_copy(aBlock);
    v21 = [(PKDashboardPaymentPassDataSource *)self firstSectionIndexForSectionIdentifier:13];
    if (v60 == v61)
    {
      if ([firstObject3 count] && objc_msgSend(firstObject5, "count"))
      {
        v22 = [PKCollectionViewItemsDiffCalculator calculateDiffBetweenOldItems:firstObject3 andNewItems:firstObject5 inSection:v21];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          deletedIndexPaths = [v22 deletedIndexPaths];
          v45 = [deletedIndexPaths count];
          insertedIndexPaths = [v22 insertedIndexPaths];
          v43 = [insertedIndexPaths count];
          movedFromIndexPaths = [v22 movedFromIndexPaths];
          v41 = [movedFromIndexPaths count];
          movedToIndexPaths = [v22 movedToIndexPaths];
          v25 = [movedToIndexPaths count];
          changedIndexPaths = [v22 changedIndexPaths];
          v27 = [changedIndexPaths count];
          *buf = 134219008;
          v79 = v45;
          v80 = 2048;
          v81 = v43;
          v82 = 2048;
          v83 = v41;
          v84 = 2048;
          v85 = v25;
          v86 = 2048;
          v87 = v27;
          _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Monthly transaction groups batch updates: %ld deletions, %ld insertions, %ld moves from, %ld moves to, %ld updates", buf, 0x34u);

          v22 = v23;
        }

        v28 = 1;
      }

      else
      {
        v22 = 0;
        v28 = 0;
      }

      if ([v55 count] && objc_msgSend(v54, "count"))
      {
        v29 = [PKCollectionViewItemsDiffCalculator calculateDiffBetweenOldItems:v55 andNewItems:v54 inSection:&v21[v28]];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v22;
          deletedIndexPaths2 = [v29 deletedIndexPaths];
          v44 = [deletedIndexPaths2 count];
          insertedIndexPaths2 = [v29 insertedIndexPaths];
          v42 = [insertedIndexPaths2 count];
          movedFromIndexPaths2 = [v29 movedFromIndexPaths];
          v40 = [movedFromIndexPaths2 count];
          movedToIndexPaths2 = [v29 movedToIndexPaths];
          v31 = [movedToIndexPaths2 count];
          changedIndexPaths2 = [v29 changedIndexPaths];
          v33 = [changedIndexPaths2 count];
          *buf = 134219008;
          v79 = v44;
          v80 = 2048;
          v81 = v42;
          v82 = 2048;
          v83 = v40;
          v84 = 2048;
          v85 = v31;
          v86 = 2048;
          v87 = v33;
          _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Yearly transaction groups batch updates: %ld deletions, %ld insertions, %ld moves from, %ld moves to, %ld updates", buf, 0x34u);

          v22 = v30;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v22 = 0;
    }

    v29 = 0;
LABEL_40:
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __81__PKDashboardPaymentPassDataSource__calculateDiffAndUpdateWithTransactionGroups___block_invoke_2216;
    v68[3] = &unk_1E801E728;
    objc_copyWeak(v73, &location);
    v34 = v20;
    v72 = v34;
    v73[1] = v60;
    v73[2] = v61;
    v73[3] = v21;
    v35 = WeakRetained;
    v69 = v35;
    v36 = v22;
    v70 = v36;
    v37 = v29;
    v71 = v37;
    [v35 performBatchUpdates:v68 completion:0];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __81__PKDashboardPaymentPassDataSource__calculateDiffAndUpdateWithTransactionGroups___block_invoke_2217;
    v63[3] = &unk_1E801E750;
    objc_copyWeak(v67, &location);
    v67[1] = v60;
    v67[2] = v61;
    v67[3] = v21;
    v67[4] = (v21 != 0);
    v64 = v35;
    v38 = v36;
    v65 = v38;
    v39 = v37;
    v66 = v39;
    [v64 performBatchUpdates:v63 completion:0];

    objc_destroyWeak(v67);
    objc_destroyWeak(v73);

    objc_destroyWeak(&v76);
    objc_destroyWeak(&location);
  }
}

void __81__PKDashboardPaymentPassDataSource__calculateDiffAndUpdateWithTransactionGroups___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [*(a1 + 32) copy];
    v4 = *(v6 + 120);
    *(v6 + 120) = v3;

    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
    [*(v6 + 6) setObject:v5 forKeyedSubscript:&unk_1F3CC7B08];

    WeakRetained = v6;
  }
}

void __81__PKDashboardPaymentPassDataSource__calculateDiffAndUpdateWithTransactionGroups___block_invoke_2216(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    (*(*(a1 + 56) + 16))();
    v4 = *(a1 + 72);
    v3 = *(a1 + 80);
    v5 = v3 - v4;
    if (v3 >= v4)
    {
      if (v3 <= v4)
      {
        [WeakRetained _applyMovesFromDiff:*(a1 + 40)];
        [WeakRetained _applyMovesFromDiff:*(a1 + 48)];
      }

      else
      {
        v14 = *(a1 + 88);
        v15 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 134218240;
          v23 = v14 + v4;
          v24 = 2048;
          v25 = v14 + v3;
          _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "Transaction groups batch updates: deleting sections from %ld to %ld", &v22, 0x16u);
        }

        v16 = *(a1 + 32);
        v17 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v14 + v4, v5}];
        [v16 deleteSections:v17];

        v18 = *(a1 + 72);
        if (v18 >= 1)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(a1 + 88);
            v22 = 134218240;
            v23 = v19;
            v24 = 2048;
            v25 = v19 + v18;
            _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "Transaction groups batch updates: refreshing sections from %ld to %ld", &v22, 0x16u);
          }

          v20 = *(a1 + 32);
          v21 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{*(a1 + 88), *(a1 + 72)}];
          [v20 reloadSections:v21];
        }
      }
    }

    else
    {
      v6 = PKLogFacilityTypeGetObject();
      v7 = v6;
      if (v3 >= 1)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 88);
          v22 = 134218240;
          v23 = v8;
          v24 = 2048;
          v25 = v8 + v3;
          _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Transaction groups batch updates: refreshing sections from %ld to %ld", &v22, 0x16u);
        }

        v9 = *(a1 + 32);
        v10 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{*(a1 + 88), *(a1 + 80)}];
        [v9 reloadSections:v10];

        v4 = *(a1 + 72);
        v3 = *(a1 + 80);
      }

      v11 = *(a1 + 88);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 134218240;
        v23 = v11 + v3;
        v24 = 2048;
        v25 = v11 + v4;
        _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Transaction groups batch updates: inserting sections from %ld to %ld", &v22, 0x16u);
      }

      v12 = *(a1 + 32);
      v13 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v11 + v3, v4 - v3}];
      [v12 insertSections:v13];
    }
  }
}

void __81__PKDashboardPaymentPassDataSource__calculateDiffAndUpdateWithTransactionGroups___block_invoke_2217(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    if (v4 > v5)
    {
      v6 = *(a1 + 80);
      v4 = *(a1 + 88);
      v7 = v6 - v4;
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218240;
        v13 = v6 - v4;
        v14 = 2048;
        v15 = v6 + v5;
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Transaction groups batch updates: reloading sections from %ld to %ld", &v12, 0x16u);
      }

LABEL_10:

      v10 = *(a1 + 32);
      v11 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v7, v5 + v4}];
      [v10 reloadSections:v11];

      goto LABEL_11;
    }

    if (v4 < v5)
    {
      v9 = *(a1 + 80);
      v5 = *(a1 + 88);
      v7 = v9 - v5;
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218240;
        v13 = v9 - v5;
        v14 = 2048;
        v15 = v9 + v4;
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Transaction groups batch updates: reloading sections from %ld to %ld", &v12, 0x16u);
      }

      goto LABEL_10;
    }

    [WeakRetained _applyReloadsFromDiff:*(a1 + 40)];
    [v3 _applyReloadsFromDiff:*(a1 + 48)];
  }

LABEL_11:
}

- (void)issuerInstallmentDashboardMessagesWithCompletion:(id)completion
{
  v52 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (completionCopy)
  {
    v27 = completionCopy;
    val = self;
    paymentOffersController = [(PKDashboardPaymentPassDataSource *)self paymentOffersController];
    pass = [(PKDashboardPaymentPassDataSource *)self pass];
    uniqueID = [pass uniqueID];
    v28 = [paymentOffersController eligiblePaymentOfferCriteriaForPassUniqueID:uniqueID type:1];

    if (v28)
    {
      paymentOfferConfirmationRecordsByPaymentHash = [(PKDashboardPaymentPassDataSource *)self paymentOfferConfirmationRecordsByPaymentHash];

      if (!paymentOfferConfirmationRecordsByPaymentHash)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [(PKDashboardPaymentPassDataSource *)self setPaymentOfferConfirmationRecordsByPaymentHash:v9];
      }

      postPurchasePaymentOffersControllerByPaymentHash = [(PKDashboardPaymentPassDataSource *)self postPurchasePaymentOffersControllerByPaymentHash];

      if (!postPurchasePaymentOffersControllerByPaymentHash)
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [(PKDashboardPaymentPassDataSource *)self setPostPurchasePaymentOffersControllerByPaymentHash:v11];
      }

      paymentOfferFollowUpDashboardMessageIdentifiersLoading = [(PKDashboardPaymentPassDataSource *)self paymentOfferFollowUpDashboardMessageIdentifiersLoading];

      if (!paymentOfferFollowUpDashboardMessageIdentifiersLoading)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        [(PKDashboardPaymentPassDataSource *)self setPaymentOfferFollowUpDashboardMessageIdentifiersLoading:v13];
      }

      v14 = dispatch_group_create();
      paymentOfferConfirmationRecordsByPaymentHash2 = [(PKDashboardPaymentPassDataSource *)self paymentOfferConfirmationRecordsByPaymentHash];
      postPurchasePaymentOffersControllerByPaymentHash2 = [(PKDashboardPaymentPassDataSource *)self postPurchasePaymentOffersControllerByPaymentHash];
      objc_initWeak(&location, self);
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v16 = self->_transactions;
      v17 = [(NSArray *)v16 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v17)
      {
        v18 = *v47;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v47 != v18)
            {
              objc_enumerationMutation(v16);
            }

            paymentHash = [*(*(&v46 + 1) + 8 * i) paymentHash];
            if (paymentHash)
            {
              v21 = [paymentOfferConfirmationRecordsByPaymentHash2 objectForKeyedSubscript:paymentHash];
              if (!v21)
              {
                dispatch_group_enter(v14);
                paymentService = [(PKDashboardPaymentPassDataSource *)val paymentService];
                v42[0] = MEMORY[0x1E69E9820];
                v42[1] = 3221225472;
                v42[2] = __85__PKDashboardPaymentPassDataSource_issuerInstallmentDashboardMessagesWithCompletion___block_invoke;
                v42[3] = &unk_1E801E778;
                objc_copyWeak(&v45, &location);
                v43 = v14;
                v44 = paymentHash;
                [paymentService paymentOfferConfirmationRecordForTransactionWithPaymentHash:v44 completion:v42];

                objc_destroyWeak(&v45);
              }
            }
          }

          v17 = [(NSArray *)v16 countByEnumeratingWithState:&v46 objects:v51 count:16];
        }

        while (v17);
      }

      v40[0] = 0;
      v40[1] = v40;
      v40[2] = 0x3032000000;
      v40[3] = __Block_byref_object_copy__41;
      v40[4] = __Block_byref_object_dispose__41;
      v41 = 0;
      dispatch_group_enter(v14);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __85__PKDashboardPaymentPassDataSource_issuerInstallmentDashboardMessagesWithCompletion___block_invoke_4;
      v37[3] = &unk_1E801DCE0;
      v39 = v40;
      v23 = v14;
      v38 = v23;
      [(PKDashboardPaymentPassDataSource *)val dashboardMessageForTransactionHistoryDisabled:v37];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __85__PKDashboardPaymentPassDataSource_issuerInstallmentDashboardMessagesWithCompletion___block_invoke_5;
      block[3] = &unk_1E801E818;
      objc_copyWeak(&v36, &location);
      v31 = paymentOfferConfirmationRecordsByPaymentHash2;
      v32 = postPurchasePaymentOffersControllerByPaymentHash2;
      v33 = v28;
      v35 = v40;
      v34 = v27;
      v24 = postPurchasePaymentOffersControllerByPaymentHash2;
      v25 = paymentOfferConfirmationRecordsByPaymentHash2;
      dispatch_group_notify(v23, MEMORY[0x1E69E96A0], block);

      objc_destroyWeak(&v36);
      _Block_object_dispose(v40, 8);

      objc_destroyWeak(&location);
    }

    else
    {
      (*(v27 + 2))(v27, 0);
    }

    completionCopy = v27;
  }
}

void __85__PKDashboardPaymentPassDataSource_issuerInstallmentDashboardMessagesWithCompletion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85__PKDashboardPaymentPassDataSource_issuerInstallmentDashboardMessagesWithCompletion___block_invoke_2;
  v5[3] = &unk_1E8014828;
  objc_copyWeak(&v9, a1 + 6);
  v6 = a1[4];
  v7 = v3;
  v8 = a1[5];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v9);
}

void __85__PKDashboardPaymentPassDataSource_issuerInstallmentDashboardMessagesWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__PKDashboardPaymentPassDataSource_issuerInstallmentDashboardMessagesWithCompletion___block_invoke_3;
    aBlock[3] = &unk_1E8010970;
    v10 = *(a1 + 32);
    v3 = _Block_copy(aBlock);
    v4 = [*(a1 + 40) dashboardMessageTileDynamicContent];
    if (!v4)
    {
      v3[2](v3);
      goto LABEL_12;
    }

    v5 = PKPaymentOfferConfirmationRecordDashboardMessageIdentifier();
    if (!PKSharedCacheGetBoolForKey())
    {
      if (([*(a1 + 40) isSetupPaymentOfferAfterPurchase] & 1) == 0)
      {
        v6 = [*(a1 + 40) selectedOfferConfirmationRecord];
        v7 = [v6 selectedOffer];
        v8 = [v7 installmentSelectedPaymentOffer];

        if (!v8 || [v8 selectionType] != 2)
        {
          v3[2](v3);

          goto LABEL_10;
        }
      }

      [WeakRetained _udpdateInternalStateForConfirmationRecord:*(a1 + 40) paymentHash:*(a1 + 48)];
    }

    v3[2](v3);
LABEL_10:

LABEL_12:
  }
}

void __85__PKDashboardPaymentPassDataSource_issuerInstallmentDashboardMessagesWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __85__PKDashboardPaymentPassDataSource_issuerInstallmentDashboardMessagesWithCompletion___block_invoke_5(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__PKDashboardPaymentPassDataSource_issuerInstallmentDashboardMessagesWithCompletion___block_invoke_6;
    aBlock[3] = &unk_1E801E7A0;
    v28 = WeakRetained;
    aBlock[4] = WeakRetained;
    v25 = _Block_copy(aBlock);
    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = *(a1 + 32);
    v33 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v33)
    {
      v32 = *v53;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v53 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v3 = *(*(&v52 + 1) + 8 * i);
          v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
          v5 = [v4 dashboardMessageTileDynamicContent];
          if (v5)
          {
            v6 = PKPaymentOfferConfirmationRecordDashboardMessageIdentifier();
            if ((PKSharedCacheGetBoolForKey() & 1) == 0)
            {
              if (([v4 isSetupPaymentOfferAfterPurchase] & 1) != 0 || (objc_msgSend(v4, "selectedOfferConfirmationRecord"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "selectedOffer"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "installmentSelectedPaymentOffer"), v9 = objc_claimAutoreleasedReturnValue(), v8, v7, v9) && (v10 = objc_msgSend(v9, "selectionType") == 2, v9, v10))
              {
                v11 = [v4 selectedOfferConfirmationRecord];
                v12 = [v11 transaction];
                v31 = [v12 transactionDate];

                [v26 safelySetObject:v31 forKey:v6];
                v30 = [*(a1 + 40) objectForKeyedSubscript:v3];
                v13 = objc_alloc_init(PKDashboardPassMessage);
                v14 = [v5 title];
                [(PKDashboardPassMessage *)v13 setTitle:v14];

                v15 = [v5 body];
                [(PKDashboardPassMessage *)v13 setMessage:v15];

                [(PKDashboardPassMessage *)v13 setParseEmphasisInMessage:1];
                v16 = [v28 _messageCachedIconForPass:v28[119] useNotificationIcon:0];
                [(PKDashboardPassMessage *)v13 setImage:v16];

                [(PKDashboardPassMessage *)v13 setIdentifier:v6];
                v17 = [v28 paymentOfferFollowUpDashboardMessageIdentifiersLoading];
                -[PKDashboardPassMessage setShowSpinner:](v13, "setShowSpinner:", [v17 containsObject:v6]);

                v49[0] = MEMORY[0x1E69E9820];
                v49[1] = 3221225472;
                v49[2] = __85__PKDashboardPaymentPassDataSource_issuerInstallmentDashboardMessagesWithCompletion___block_invoke_7;
                v49[3] = &unk_1E80110E0;
                objc_copyWeak(&v51, (a1 + 72));
                v18 = v4;
                v50 = v18;
                [(PKDashboardPassMessage *)v13 setActionOnViewed:v49];
                v44[0] = MEMORY[0x1E69E9820];
                v44[1] = 3221225472;
                v44[2] = __85__PKDashboardPaymentPassDataSource_issuerInstallmentDashboardMessagesWithCompletion___block_invoke_2226;
                v44[3] = &unk_1E8011220;
                objc_copyWeak(&v48, (a1 + 72));
                v19 = v25;
                v47 = v19;
                v20 = v6;
                v45 = v20;
                v21 = v18;
                v46 = v21;
                [(PKDashboardPassMessage *)v13 setActionOnDismiss:v44];
                v22 = [v5 primaryActionTitle];
                if (v22)
                {
                  [(PKDashboardPassMessage *)v13 setButtonTitle:v22];
                  v37[0] = MEMORY[0x1E69E9820];
                  v37[1] = 3221225472;
                  v37[2] = __85__PKDashboardPaymentPassDataSource_issuerInstallmentDashboardMessagesWithCompletion___block_invoke_2_2227;
                  v37[3] = &unk_1E801E7C8;
                  objc_copyWeak(&v43, (a1 + 72));
                  v38 = v20;
                  v39 = v21;
                  v40 = v30;
                  v41 = *(a1 + 48);
                  v42 = v19;
                  [(PKDashboardPassMessage *)v13 setActionOnButtonPress:v37];

                  objc_destroyWeak(&v43);
                }

                [v27 addObject:v13];

                objc_destroyWeak(&v48);
                objc_destroyWeak(&v51);
              }
            }
          }
        }

        v33 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v33);
    }

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __85__PKDashboardPaymentPassDataSource_issuerInstallmentDashboardMessagesWithCompletion___block_invoke_4_2229;
    v35[3] = &unk_1E801E7F0;
    v23 = v26;
    v36 = v23;
    [v27 sortUsingComparator:v35];
    v24 = *(*(*(a1 + 64) + 8) + 40);
    if (v24)
    {
      [v27 insertObject:v24 atIndex:0];
    }

    (*(*(a1 + 56) + 16))();

    WeakRetained = v28;
  }
}

uint64_t __85__PKDashboardPaymentPassDataSource_issuerInstallmentDashboardMessagesWithCompletion___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  PKSharedCacheSetBoolForKey();
  v5 = [*(a1 + 32) paymentService];
  [v5 didInteractWithConfirmationRecordFollowupMessage:v4];

  v6 = *(a1 + 32);

  return [v6 reloadMessagesWithReason:@"interacted with payment offer confirmation record dashboard message"];
}

void __85__PKDashboardPaymentPassDataSource_issuerInstallmentDashboardMessagesWithCompletion___block_invoke_7(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = PKPaymentOfferConfirmationRecordFollowUpViewedIdentifier();
    if ((PKSharedCacheGetBoolForKey() & 1) == 0)
    {
      PKSharedCacheSetBoolForKey();
      v3 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 138412290;
        v5 = v2;
        _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Marking Payment Offer Confirmation Record Follow Up as viewed %@", &v4, 0xCu);
      }
    }
  }
}

void __85__PKDashboardPaymentPassDataSource_issuerInstallmentDashboardMessagesWithCompletion___block_invoke_2226(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 48) + 16))();
    WeakRetained = v3;
  }
}

void __85__PKDashboardPaymentPassDataSource_issuerInstallmentDashboardMessagesWithCompletion___block_invoke_2_2227(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained paymentOfferFollowUpDashboardMessageIdentifiersLoading];
    [v6 addObject:*(a1 + 32)];

    [v5 reloadMessagesAfterMessageInteraction];
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __85__PKDashboardPaymentPassDataSource_issuerInstallmentDashboardMessagesWithCompletion___block_invoke_3_2228;
    v10[3] = &unk_1E8011220;
    objc_copyWeak(&v14, (a1 + 72));
    v13 = *(a1 + 64);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    [v5 _presentPaymentOfferInstallmentSelectionForRecord:v7 paymentOffersController:v8 installmentCriteria:v9 completion:v10];

    objc_destroyWeak(&v14);
  }
}

void __85__PKDashboardPaymentPassDataSource_issuerInstallmentDashboardMessagesWithCompletion___block_invoke_3_2228(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    (*(*(a1 + 48) + 16))();
    v3 = [v4 paymentOfferFollowUpDashboardMessageIdentifiersLoading];
    [v3 removeObject:*(a1 + 32)];

    [v4 reloadMessagesAfterMessageInteraction];
    WeakRetained = v4;
  }
}

uint64_t __85__PKDashboardPaymentPassDataSource_issuerInstallmentDashboardMessagesWithCompletion___block_invoke_4_2229(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 identifier];
  v8 = [v5 objectForKeyedSubscript:v7];

  v9 = *(a1 + 32);
  v10 = [v6 identifier];

  v11 = [v9 objectForKeyedSubscript:v10];

  v12 = [v11 compare:v8];
  return v12;
}

- (void)_udpdateInternalStateForConfirmationRecord:(id)record paymentHash:(id)hash
{
  recordCopy = record;
  hashCopy = hash;
  paymentOfferConfirmationRecordsByPaymentHash = [(PKDashboardPaymentPassDataSource *)self paymentOfferConfirmationRecordsByPaymentHash];
  postPurchasePaymentOffersControllerByPaymentHash = [(PKDashboardPaymentPassDataSource *)self postPurchasePaymentOffersControllerByPaymentHash];
  [paymentOfferConfirmationRecordsByPaymentHash setObject:recordCopy forKeyedSubscript:hashCopy];
  v9 = [postPurchasePaymentOffersControllerByPaymentHash objectForKeyedSubscript:hashCopy];
  v10 = v9;
  if (v9)
  {
    [v9 invalidate];
  }

  selectedOfferConfirmationRecord = [recordCopy selectedOfferConfirmationRecord];
  selectedOffer = [selectedOfferConfirmationRecord selectedOffer];

  installmentSelectedPaymentOffer = [selectedOffer installmentSelectedPaymentOffer];
  userEnteredAmount = [installmentSelectedPaymentOffer userEnteredAmount];

  v15 = objc_alloc(MEMORY[0x1E69B8CF0]);
  transaction = [recordCopy transaction];
  v17 = [v15 initForPostPurchaseInstallmentsWithTransaction:transaction userEnteredAmount:userEnteredAmount];

  v18 = objc_alloc(MEMORY[0x1E69B8CE8]);
  paymentService = [(PKDashboardPaymentPassDataSource *)self paymentService];
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v21 = [v18 initWithPaymentService:paymentService paymentWebService:mEMORY[0x1E69B8EF8] configuration:v17];

  [v21 updateCurrentSelectedPaymentOffer:selectedOffer updateReason:11];
  [postPurchasePaymentOffersControllerByPaymentHash setObject:v21 forKeyedSubscript:hashCopy];
}

- (void)_presentPaymentOfferInstallmentSelectionForRecord:(id)record paymentOffersController:(id)controller installmentCriteria:(id)criteria completion:(id)completion
{
  recordCopy = record;
  controllerCopy = controller;
  criteriaCopy = criteria;
  completionCopy = completion;
  pass = [(PKDashboardPaymentPassDataSource *)self pass];
  v15 = [PKPaymentOfferInstallmentPlanSelectionModel initForPostPurchaseInstallmentsWithPaymentOffersController:controllerCopy criteria:criteriaCopy pass:pass fromPushNotification:0];

  [(PKDashboardPaymentPassDataSource *)self setInstallmentPlanSelectionModel:v15];
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__41;
  v24[4] = __Block_byref_object_dispose__41;
  v25 = 0;
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __141__PKDashboardPaymentPassDataSource__presentPaymentOfferInstallmentSelectionForRecord_paymentOffersController_installmentCriteria_completion___block_invoke;
  v19[3] = &unk_1E801E868;
  objc_copyWeak(&v22, &location);
  v21 = v24;
  v16 = completionCopy;
  v20 = v16;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __141__PKDashboardPaymentPassDataSource__presentPaymentOfferInstallmentSelectionForRecord_paymentOffersController_installmentCriteria_completion___block_invoke_3;
  v17[3] = &unk_1E801E890;
  objc_copyWeak(&v18, &location);
  v17[4] = v24;
  [v15 startWithCompletionHandler:v19 viewChangedHandler:v17];
  objc_destroyWeak(&v18);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
  _Block_object_dispose(v24, 8);
}

void __141__PKDashboardPaymentPassDataSource__presentPaymentOfferInstallmentSelectionForRecord_paymentOffersController_installmentCriteria_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __141__PKDashboardPaymentPassDataSource__presentPaymentOfferInstallmentSelectionForRecord_paymentOffersController_installmentCriteria_completion___block_invoke_2;
  block[3] = &unk_1E801E840;
  objc_copyWeak(&v12, (a1 + 48));
  v10 = v5;
  v8 = *(a1 + 32);
  v6 = v8;
  v11 = v8;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __141__PKDashboardPaymentPassDataSource__presentPaymentOfferInstallmentSelectionForRecord_paymentOffersController_installmentCriteria_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v2 = MEMORY[0x1E69DC650];
      v3 = PKLocalizedPaymentString(&cfstr_GenericErrorTi.isa);
      v4 = PKLocalizedPaymentString(&cfstr_GenericErrorMe.isa);
      v5 = [v2 alertControllerWithTitle:v3 message:v4 preferredStyle:1];

      v6 = MEMORY[0x1E69DC648];
      v7 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
      v8 = [v6 actionWithTitle:v7 style:0 handler:0];
      [v5 addAction:v8];

      v9 = objc_loadWeakRetained(WeakRetained + 100);
      v10 = [v9 navigationController];
      [v10 presentViewController:v5 animated:1 completion:0];
    }

    else
    {
      [*(*(*(a1 + 48) + 8) + 40) dismissViewControllerAnimated:1 completion:0];
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))();
    }
  }
}

void __141__PKDashboardPaymentPassDataSource__presentPaymentOfferInstallmentSelectionForRecord_paymentOffersController_installmentCriteria_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __141__PKDashboardPaymentPassDataSource__presentPaymentOfferInstallmentSelectionForRecord_paymentOffersController_installmentCriteria_completion___block_invoke_4;
  block[3] = &unk_1E801BB28;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __141__PKDashboardPaymentPassDataSource__presentPaymentOfferInstallmentSelectionForRecord_paymentOffersController_installmentCriteria_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v8 = WeakRetained;
      v4 = *(*(a1 + 40) + 8);
      v5 = *(v4 + 40);
      if (v5)
      {
        [v5 dismissViewControllerAnimated:1 completion:0];
        v3 = *(a1 + 32);
        v4 = *(*(a1 + 40) + 8);
      }

      objc_storeStrong((v4 + 40), v3);
      v6 = objc_loadWeakRetained(v8 + 100);
      v7 = [v6 navigationController];
      [v7 presentViewController:*(a1 + 32) animated:1 completion:0];

      WeakRetained = v8;
    }
  }
}

- (PKDashboardPassGroupViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (PKDashboardPaymentPassDataSourceDelegate)customDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_customDelegate);

  return WeakRetained;
}

- (PKDashboardDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_fetchBankConnectTransactions
{
  if ([(PKDashboardPaymentPassDataSource *)self supportsBankConnectTransactions])
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Starting fetching Bank Connect transactions and groups", v5, 2u);
    }

    bankConnectTransactionsProvider = [(PKDashboardPaymentPassDataSource *)self bankConnectTransactionsProvider];
    [bankConnectTransactionsProvider performFetchAndStartObservingNotifications];
  }
}

- (void)clearBankConnectData
{
  objc_initWeak(&location, self);
  delegate = [(PKDashboardPaymentPassDataSource *)self delegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__PKDashboardPaymentPassDataSource_BankConnect__clearBankConnectData__block_invoke;
  v4[3] = &unk_1E8010998;
  objc_copyWeak(&v5, &location);
  [delegate performBatchUpdates:v4 completion:0];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __69__PKDashboardPaymentPassDataSource_BankConnect__clearBankConnectData__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setBankConnectLinkedAccountData:0];
    [v2 setSpendingSummaryDataProvider:0];
    [v2 _hideLatestTransactions];
    [v2 _hideTransactionGroups];
    [v2 _reloadBalance];
    [v2 _hideBankConnectMessageAndReloadIfNeeded];
    WeakRetained = v2;
  }
}

- (void)reloadBankConnectData
{
  if ([(PKDashboardPaymentPassDataSource *)self isBankConnectSupported]&& [(PKDashboardPaymentPassDataSource *)self _isBankConnectPassReady])
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Starting to reload Bank Connect account", buf, 2u);
    }

    objc_initWeak(buf, self);
    bankConnectAccountsProvider = [(PKDashboardPaymentPassDataSource *)self bankConnectAccountsProvider];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __70__PKDashboardPaymentPassDataSource_BankConnect__reloadBankConnectData__block_invoke;
    v5[3] = &unk_1E8022288;
    v5[4] = self;
    objc_copyWeak(&v6, buf);
    [bankConnectAccountsProvider accountAndReconsentStatusWithCompletion:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }

  else
  {
    [(PKDashboardPaymentPassDataSource *)self setBankConnectDataLoaded:1];
    if ([(PKDashboardPaymentPassDataSource *)self isBankConnectLinked])
    {
      [(PKDashboardPaymentPassDataSource *)self clearBankConnectData];
    }

    [(PKDashboardPaymentPassDataSource *)self _hideBankConnectMessageAndReloadIfNeeded];
  }
}

void __70__PKDashboardPaymentPassDataSource_BankConnect__reloadBankConnectData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__PKDashboardPaymentPassDataSource_BankConnect__reloadBankConnectData__block_invoke_2;
  v9[3] = &unk_1E8013A38;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  objc_copyWeak(&v13, (a1 + 40));
  dispatch_async(MEMORY[0x1E69E96A0], v9);
  objc_destroyWeak(&v13);
}

void __70__PKDashboardPaymentPassDataSource_BankConnect__reloadBankConnectData__block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) account];

  if (!v2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      *buf = 138412290;
      v20 = v4;
    }

    goto LABEL_5;
  }

  if ([*(a1 + 32) consentStatus] == 1)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Bank Connect consent status is invalid", buf, 2u);
    }

LABEL_5:

    goto LABEL_10;
  }

  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) institution];
  [v5 _refetchBalanceAndTransactionsForInstitution:v6];

  v7 = *(a1 + 48);
  v8 = [*(a1 + 32) institution];
  v9 = [*(a1 + 32) account];
  [v7 _setupSpendingSummaryDataProviderIfNeededForInstitution:v8 account:v9 consentStatus:{objc_msgSend(*(a1 + 32), "consentStatus")}];

LABEL_10:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PKDashboardPaymentPassDataSource_BankConnect__reloadBankConnectData__block_invoke_107;
  aBlock[3] = &unk_1E80110E0;
  objc_copyWeak(&v18, (a1 + 56));
  v17 = *(a1 + 32);
  v10 = _Block_copy(aBlock);
  v11 = [*(a1 + 48) spendingSummaryDataProvider];
  v12 = v11 == 0;

  if (v12)
  {
    v10[2](v10);
  }

  else
  {
    v13 = [*(a1 + 48) spendingSummaryDataProvider];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70__PKDashboardPaymentPassDataSource_BankConnect__reloadBankConnectData__block_invoke_3;
    v14[3] = &unk_1E8012C28;
    v15 = v10;
    [v13 startAndCacheCurrentlySelectedSpendingSummaryWithCompletion:v14];
  }

  objc_destroyWeak(&v18);
}

void __70__PKDashboardPaymentPassDataSource_BankConnect__reloadBankConnectData__block_invoke_107(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __70__PKDashboardPaymentPassDataSource_BankConnect__reloadBankConnectData__block_invoke_2_108;
  v2[3] = &unk_1E80110E0;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v4);
}

void __70__PKDashboardPaymentPassDataSource_BankConnect__reloadBankConnectData__block_invoke_2_108(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) account];
  v3 = [*(a1 + 32) consentStatus];
  v4 = [*(a1 + 32) institution];
  [WeakRetained updateWithBankConnectAccount:v2 consentStatus:v3 institution:v4];
}

void __70__PKDashboardPaymentPassDataSource_BankConnect__reloadBankConnectData__block_invoke_3(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_error_impl(&dword_1BD026000, v4, OS_LOG_TYPE_ERROR, "Bank Connect Spending Summary failed to load with error: %@", &v5, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)_isShowingSetUpMessage
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  secondaryMessages = [(PKDashboardPaymentPassDataSource *)self secondaryMessages];
  v3 = [secondaryMessages countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(secondaryMessages);
        }

        identifier = [*(*(&v8 + 1) + 8 * i) identifier];

        if (identifier == @"bankConnectSetUp")
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [secondaryMessages countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)updateWithBankConnectAccount:(id)account consentStatus:(unint64_t)status institution:(id)institution
{
  accountCopy = account;
  institutionCopy = institution;
  v10 = ![(PKDashboardPaymentPassDataSource *)self bankConnectDataLoaded];
  [(PKDashboardPaymentPassDataSource *)self setBankConnectDataLoaded:1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __104__PKDashboardPaymentPassDataSource_BankConnect__updateWithBankConnectAccount_consentStatus_institution___block_invoke;
  aBlock[3] = &unk_1E801D930;
  v15 = accountCopy;
  selfCopy = self;
  v17 = institutionCopy;
  statusCopy = status;
  v19 = v10;
  v11 = institutionCopy;
  v12 = accountCopy;
  v13 = _Block_copy(aBlock);
  if ([(PKDashboardPaymentPassDataSource *)self allContentIsLoaded])
  {
    v13[2](v13);
  }

  else
  {
    [(PKDashboardPaymentPassDataSource *)self executeAfterContentIsLoaded:v13];
    [(PKDashboardPaymentPassDataSource *)self updateContentIsLoaded];
  }
}

void __104__PKDashboardPaymentPassDataSource_BankConnect__updateWithBankConnectAccount_consentStatus_institution___block_invoke(uint64_t a1)
{
  v39[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = PKLogFacilityTypeGetObject();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *v37 = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Updating Dashboard with Bank Connect data...", v37, 2u);
    }

    v5 = [*(a1 + 40) bankConnectLinkedAccountData];

    v6 = [*(a1 + 40) bankConnectLinkedAccountData];
    v7 = [v6 consentStatus] == 1 && *(a1 + 56) == 0;

    v9 = v5 == 0 || v7;
    v10 = [*(a1 + 40) isEligibleForPersonalizedInsights];
    v11 = [*(a1 + 32) fullyQualifiedAccountIdentifier];
    v12 = [v11 accountID];

    v13 = [*(a1 + 40) bankConnectMessage];
    v14 = [v13 identifier];

    v15 = [*(a1 + 40) bankConnectMessagesManager];
    v16 = [v15 isAccountMessageDismissed:2 forAccountIdentifier:v12];

    if (v14 != @"bankConnectConnected" || v16)
    {
      [*(a1 + 40) _hideBankConnectMessageAndReloadIfNeeded];
    }

    v17 = objc_alloc_init(PKDashboardBankConnectLinkedAccountData);
    [(PKDashboardBankConnectLinkedAccountData *)v17 setAccount:*(a1 + 32)];
    [(PKDashboardBankConnectLinkedAccountData *)v17 setConsentStatus:*(a1 + 56)];
    [(PKDashboardBankConnectLinkedAccountData *)v17 setInstitution:*(a1 + 48)];
    [*(a1 + 40) setBankConnectLinkedAccountData:v17];
    [*(a1 + 40) _reloadBalance];
    [*(a1 + 40) _showBankConnectMessageIfNeeded];
    [*(a1 + 40) _updateSearchAvailability];
    v18 = *(a1 + 40);
    if (v9)
    {
      [v18 _fetchBankConnectTransactions];
    }

    else if (([v18 supportsBankConnectTransactions] & 1) == 0)
    {
      [*(a1 + 40) reloadTransactionsWithSummariesReload:1];
      [*(a1 + 40) reloadTransactionGroups];
    }

    v19 = [*(a1 + 40) isEligibleForPersonalizedInsights];
    if (v10 != v19)
    {
      v20 = v19;
      [*(a1 + 40) _beginReportingIfNecessary];
      v21 = MEMORY[0x1E69B8540];
      v22 = *MEMORY[0x1E69BABE8];
      v38[0] = *MEMORY[0x1E69BA680];
      v38[1] = v22;
      v23 = *MEMORY[0x1E69BAC20];
      v39[0] = *MEMORY[0x1E69BA7E0];
      v39[1] = v23;
      v38[2] = *MEMORY[0x1E69BAA08];
      v24 = *MEMORY[0x1E69BB6F8];
      if (v20)
      {
        v25 = @"true";
      }

      else
      {
        v25 = @"false";
      }

      v39[2] = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:3];
      [v21 subject:v24 sendEvent:v26];
    }

LABEL_26:
    if (*(a1 + 64) == 1)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v27 safelySetObject:*MEMORY[0x1E69BA7E0] forKey:*MEMORY[0x1E69BA680]];
      [v27 safelySetObject:*MEMORY[0x1E69BAC10] forKey:*MEMORY[0x1E69BABE8]];
      [v27 safelySetObject:*MEMORY[0x1E69BAD88] forKey:*MEMORY[0x1E69BAC90]];
      v28 = [*(a1 + 40) getPassProductType];
      [v27 safelySetObject:v28 forKey:*MEMORY[0x1E69BAC88]];

      v29 = [*(a1 + 40) pass];
      v30 = [v29 issuerCountryCode];
      [v27 safelySetObject:v30 forKey:*MEMORY[0x1E69BAC78]];

      v31 = [*(a1 + 40) pass];
      v32 = PKDefaultPaymentNetworkNameForPaymentPass();
      [v27 safelySetObject:v32 forKey:*MEMORY[0x1E69BAD48]];

      if ([*(a1 + 40) isBankConnectLinked])
      {
        v33 = @"true";
      }

      else
      {
        v33 = @"false";
      }

      [v27 safelySetObject:v33 forKey:*MEMORY[0x1E69BA9E0]];
      v34 = *(a1 + 48);
      if (v34)
      {
        v35 = [v34 name];

        if (v35)
        {
          v36 = [*(a1 + 48) name];
          [v27 safelySetObject:v36 forKey:*MEMORY[0x1E69BAA28]];
        }
      }

      [MEMORY[0x1E69B8540] subject:*MEMORY[0x1E69BB6F8] sendEvent:v27];
    }

    return;
  }

  if (v4)
  {
    *v37 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Cleaning up Dashboard Bank Connect state...", v37, 2u);
  }

  if (([*(a1 + 40) _isShowingSetUpMessage] & 1) == 0)
  {
    [*(a1 + 40) _hideBankConnectMessageAndReloadIfNeeded];
    v8 = [*(a1 + 40) bankConnectLinkedAccountData];

    if (v8)
    {
      [*(a1 + 40) setBankConnectLinkedAccountData:0];
      [*(a1 + 40) setSpendingSummaryDataProvider:0];
      [*(a1 + 40) _reloadBalance];
      [*(a1 + 40) _hideLatestTransactions];
      [*(a1 + 40) _hideTransactionGroups];
      [*(a1 + 40) reloadTransactionsWithSummariesReload:1];
      [*(a1 + 40) reloadTransactionGroups];
      [*(a1 + 40) _updateSearchAvailability];
    }

    [*(a1 + 40) _showBankConnectMessageIfNeeded];
    goto LABEL_26;
  }
}

- (void)_refetchBalanceAndTransactionsForInstitution:(id)institution
{
  institutionCopy = institution;
  supportsTransactions = [institutionCopy supportsTransactions];
  v6 = *MEMORY[0x1E6967D50];
  v7 = *MEMORY[0x1E6967D58];
  if (supportsTransactions)
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{v6, v7, *MEMORY[0x1E6967D60], 0}];
  }

  else
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{v6, v7, 0, v12}];
  }
  v8 = ;
  objc_initWeak(&location, self);
  v9 = MEMORY[0x1E6967DA8];
  pass = [(PKDashboardPaymentPassDataSource *)self pass];
  primaryAccountIdentifier = [pass primaryAccountIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__PKDashboardPaymentPassDataSource_BankConnect___refetchBalanceAndTransactionsForInstitution___block_invoke;
  v13[3] = &unk_1E8011338;
  objc_copyWeak(&v14, &location);
  [v9 refreshAttributes:v8 forPrimaryAccountIdentifier:primaryAccountIdentifier completionHandler:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __94__PKDashboardPaymentPassDataSource_BankConnect___refetchBalanceAndTransactionsForInstitution___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = [v3 localizedDescription];
      v9 = 138412290;
      v10 = v8;
      _os_log_error_impl(&dword_1BD026000, v4, OS_LOG_TYPE_ERROR, "Failed to refresh Bank Connect attributes with error: %@", &v9, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained isEligibleForPersonalizedInsights];

  if (v6)
  {
    +[_TtC9PassKitUI36BankConnectTransactionInsightsLoader requestPersonalizedInsightsUpdate];
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Skip FinHealth Insights update. The institution is not eligible for personalized insights.", &v9, 2u);
    }
  }
}

- (void)_setupSpendingSummaryDataProviderIfNeededForInstitution:(id)institution account:(id)account consentStatus:(unint64_t)status
{
  accountCopy = account;
  if ([institution personalizedInsightsEnabled])
  {
    if (accountCopy)
    {
      if (!status)
      {
        spendingSummaryDataProvider = [(PKDashboardPaymentPassDataSource *)self spendingSummaryDataProvider];
        if (!spendingSummaryDataProvider || (v10 = spendingSummaryDataProvider, -[PKDashboardPaymentPassDataSource spendingSummaryDataProvider](self, "spendingSummaryDataProvider"), v11 = objc_claimAutoreleasedReturnValue(), [v11 accountID], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(accountCopy, "identifier"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqual:", v13), v13, v12, v11, v10, (v14 & 1) == 0))
        {
          v15 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v20 = 0;
            _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "Personalized insights enabled, setting data provider.", v20, 2u);
          }

          v16 = [FKSpendingSummaryDataProvider alloc];
          identifier = [accountCopy identifier];
          v18 = [(FKSpendingSummaryDataProvider *)v16 initWithAccountIdentifier:identifier];
          [(PKDashboardPaymentPassDataSource *)self setSpendingSummaryDataProvider:v18];
        }
      }
    }
  }

  else
  {
    v19 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    [(PKDashboardPaymentPassDataSource *)self setSpendingSummaryDataProvider:0];
  }
}

- (BOOL)isBankConnectSupported
{
  pass = [(PKDashboardPaymentPassDataSource *)self pass];
  v3 = PKBankConnectAvailableForPass();

  return v3;
}

- (BOOL)_isBankConnectPassReady
{
  pass = [(PKDashboardPaymentPassDataSource *)self pass];
  devicePrimaryPaymentApplication = [pass devicePrimaryPaymentApplication];
  state = [devicePrimaryPaymentApplication state];

  return state == 1;
}

- (BOOL)isBankConnectLinked
{
  if (![(PKDashboardPaymentPassDataSource *)self isBankConnectSupported])
  {
    return 0;
  }

  bankConnectLinkedAccountData = [(PKDashboardPaymentPassDataSource *)self bankConnectLinkedAccountData];
  consentStatus = [bankConnectLinkedAccountData consentStatus];
  account = [bankConnectLinkedAccountData account];
  if (account)
  {
    v6 = consentStatus == 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v7;
}

- (BOOL)hasBankConnectAccountBalance
{
  bankConnectLinkedAccountData = [(PKDashboardPaymentPassDataSource *)self bankConnectLinkedAccountData];
  account = [bankConnectLinkedAccountData account];

  if (-[PKDashboardPaymentPassDataSource isBankConnectLinked](self, "isBankConnectLinked") && [account isAccountEnabled])
  {
    balance = [account balance];
    v6 = balance != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)supportsBankConnectTransactions
{
  bankConnectLinkedAccountData = [(PKDashboardPaymentPassDataSource *)self bankConnectLinkedAccountData];
  institution = [bankConnectLinkedAccountData institution];

  if ([(PKDashboardPaymentPassDataSource *)self isBankConnectLinked])
  {
    supportsTransactions = [institution supportsTransactions];
  }

  else
  {
    supportsTransactions = 0;
  }

  return supportsTransactions;
}

- (BOOL)isEligibleForPersonalizedInsights
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1 || ![(PKDashboardPaymentPassDataSource *)self hasBankConnectAccountBalance]|| !PKBankConnectSpendingSummariesAndHighlightsEnabled())
  {
    return 0;
  }

  bankConnectLinkedAccountData = [(PKDashboardPaymentPassDataSource *)self bankConnectLinkedAccountData];
  institution = [bankConnectLinkedAccountData institution];

  if (institution)
  {
    personalizedInsightsEnabled = [institution personalizedInsightsEnabled];
  }

  else
  {
    personalizedInsightsEnabled = 0;
  }

  return personalizedInsightsEnabled;
}

- (unint64_t)numberOfBankConnectDashboardItems
{
  _enabledBankConnectAccountItemTypes = [(PKDashboardPaymentPassDataSource *)self _enabledBankConnectAccountItemTypes];
  v3 = [_enabledBankConnectAccountItemTypes count];

  return v3;
}

- (unint64_t)bankConnectAccountItemForItemIndex:(unint64_t)index
{
  _enabledBankConnectAccountItemTypes = [(PKDashboardPaymentPassDataSource *)self _enabledBankConnectAccountItemTypes];
  if ([_enabledBankConnectAccountItemTypes count] <= index)
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = [_enabledBankConnectAccountItemTypes objectAtIndex:index];
    integerValue = [v5 integerValue];
  }

  return integerValue;
}

- (id)_enabledBankConnectAccountItemTypes
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    if ([(PKDashboardPaymentPassDataSource *)self _accountItemTypeEnabled:v4])
    {
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
      [v3 addObject:v7];
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);

  return v3;
}

- (BOOL)_accountItemTypeEnabled:(unint64_t)enabled
{
  if (enabled == 1)
  {
    return [(PKDashboardPaymentPassDataSource *)self isEligibleForPersonalizedInsights];
  }

  if (enabled)
  {
    return 0;
  }

  return [(PKDashboardPaymentPassDataSource *)self hasBankConnectAccountBalance];
}

- (void)_reloadBalance
{
  v3 = [(PKDashboardPaymentPassDataSource *)self firstSectionIndexForSectionIdentifier:2];
  delegate = [(PKDashboardPaymentPassDataSource *)self delegate];
  v4 = [MEMORY[0x1E696AC90] indexSetWithIndex:v3];
  [delegate reloadSections:v4];
}

- (void)_hideTransactionGroups
{
  v3 = MEMORY[0x1E695E0F0];
  [(PKDashboardPaymentPassDataSource *)self setBankConnectMonthlyTransactionGroups:MEMORY[0x1E695E0F0]];

  [(PKDashboardPaymentPassDataSource *)self setBankConnectYearlyTransactionGroups:v3];
}

- (id)getPassProductType
{
  bankConnectLinkedAccountData = [(PKDashboardPaymentPassDataSource *)self bankConnectLinkedAccountData];
  account = [bankConnectLinkedAccountData account];

  accountType = [account accountType];
  v5 = MEMORY[0x1E69BB0A8];
  if (accountType != 1)
  {
    v5 = MEMORY[0x1E69BB0B0];
  }

  v6 = *v5;
  v7 = *v5;

  return v6;
}

- (void)_updateSearchAvailability
{
  delegate = [(PKDashboardPaymentPassDataSource *)self delegate];
  [delegate reloadNavigationBarAnimated:1];
}

- (void)_hideBankConnectMessageAndReloadIfNeeded
{
  bankConnectMessage = [(PKDashboardPaymentPassDataSource *)self bankConnectMessage];

  [(PKDashboardPaymentPassDataSource *)self setBankConnectMessage:0];
  if (bankConnectMessage)
  {

    [(PKDashboardPaymentPassDataSource *)self reloadSecondaryMessages];
  }
}

- (void)_reloadBankConnectConnectedMessageIfNeeded
{
  bankConnectLinkedAccountData = [(PKDashboardPaymentPassDataSource *)self bankConnectLinkedAccountData];
  account = [bankConnectLinkedAccountData account];
  fullyQualifiedAccountIdentifier = [account fullyQualifiedAccountIdentifier];
  accountID = [fullyQualifiedAccountIdentifier accountID];

  bankConnectLinkedAccountData2 = [(PKDashboardPaymentPassDataSource *)self bankConnectLinkedAccountData];
  institution = [bankConnectLinkedAccountData2 institution];

  bankConnectMessagesManager = [(PKDashboardPaymentPassDataSource *)self bankConnectMessagesManager];
  LOBYTE(fullyQualifiedAccountIdentifier) = [bankConnectMessagesManager isAccountMessageDismissed:2 forAccountIdentifier:accountID];

  if ((fullyQualifiedAccountIdentifier & 1) == 0)
  {
    v9 = [(PKDashboardPaymentPassDataSource *)self _createConnectedMessageWithInstitution:institution];
    bankConnectMessage = [(PKDashboardPaymentPassDataSource *)self bankConnectMessage];
    identifier = [bankConnectMessage identifier];

    identifier2 = [v9 identifier];
    if ([identifier isEqualToString:identifier2])
    {
      [(PKDashboardPaymentPassDataSource *)self _showBankConnectMessage:v9 forInstitution:institution shouldUseInstitutionLogo:1 forceUpdate:1];
    }
  }
}

- (void)_showBankConnectMessageIfNeeded
{
  if ([(PKDashboardPaymentPassDataSource *)self _isBankConnectPassReady]&& (PKRunningInRemoteContext() & 1) == 0)
  {
    bankConnectLinkedAccountData = [(PKDashboardPaymentPassDataSource *)self bankConnectLinkedAccountData];
    account = [bankConnectLinkedAccountData account];

    fullyQualifiedAccountIdentifier = [account fullyQualifiedAccountIdentifier];
    accountID = [fullyQualifiedAccountIdentifier accountID];

    bankConnectLinkedAccountData2 = [(PKDashboardPaymentPassDataSource *)self bankConnectLinkedAccountData];
    institution = [bankConnectLinkedAccountData2 institution];

    termsAndConditions = [institution termsAndConditions];
    shouldNotifyAboutChanges = [termsAndConditions shouldNotifyAboutChanges];
    bankConnectLinkedAccountData3 = [(PKDashboardPaymentPassDataSource *)self bankConnectLinkedAccountData];

    if (!bankConnectLinkedAccountData3)
    {
      bankConnectMessagesManager = [(PKDashboardPaymentPassDataSource *)self bankConnectMessagesManager];
      pass = [(PKDashboardPaymentPassDataSource *)self pass];
      primaryAccountIdentifier = [pass primaryAccountIdentifier];
      v27 = [bankConnectMessagesManager isPassMessageDismissed:0 forFPANIdentifier:primaryAccountIdentifier];

      if ((v27 & 1) == 0)
      {
        objc_initWeak(&location, self);
        bankConnectInstitutionMatcher = [(PKDashboardPaymentPassDataSource *)self bankConnectInstitutionMatcher];
        pass2 = [(PKDashboardPaymentPassDataSource *)self pass];
        primaryAccountIdentifier2 = [pass2 primaryAccountIdentifier];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __80__PKDashboardPaymentPassDataSource_BankConnect___showBankConnectMessageIfNeeded__block_invoke;
        v44[3] = &unk_1E80222B0;
        v44[4] = self;
        objc_copyWeak(&v45, &location);
        [bankConnectInstitutionMatcher institutionForPrimaryAccountIdentifier:primaryAccountIdentifier2 withCompletion:v44];

        objc_destroyWeak(&v45);
        objc_destroyWeak(&location);
      }

      goto LABEL_22;
    }

    bankConnectLinkedAccountData4 = [(PKDashboardPaymentPassDataSource *)self bankConnectLinkedAccountData];
    consentStatus = [bankConnectLinkedAccountData4 consentStatus];

    if (consentStatus == 1)
    {
      bankConnectMessagesManager2 = [(PKDashboardPaymentPassDataSource *)self bankConnectMessagesManager];
      v15 = [bankConnectMessagesManager2 isAccountMessageDismissed:1 forAccountIdentifier:accountID];

      if ((v15 & 1) == 0)
      {
        bankConnectLinkedAccountData5 = [(PKDashboardPaymentPassDataSource *)self bankConnectLinkedAccountData];
        account2 = [bankConnectLinkedAccountData5 account];
        consentUUID = [account2 consentUUID];

        v19 = [(PKDashboardPaymentPassDataSource *)self _createReconsentMessageWithInstitution:institution withPreviousConsentUUID:consentUUID];
        selfCopy2 = self;
        v21 = v19;
        v22 = institution;
        v23 = 1;
LABEL_16:
        [(PKDashboardPaymentPassDataSource *)selfCopy2 _showBankConnectMessage:v21 forInstitution:v22 shouldUseInstitutionLogo:v23 forceUpdate:0];
      }

LABEL_22:

      return;
    }

    if ([account isAccountMismatched])
    {
      bankConnectMessagesManager3 = [(PKDashboardPaymentPassDataSource *)self bankConnectMessagesManager];
      v32 = [bankConnectMessagesManager3 isAccountMessageDismissed:3 forAccountIdentifier:accountID];

      if ((v32 & 1) == 0)
      {
        bankConnectLinkedAccountData6 = [(PKDashboardPaymentPassDataSource *)self bankConnectLinkedAccountData];
        account3 = [bankConnectLinkedAccountData6 account];
        consentUUID = [account3 consentUUID];

        v19 = [(PKDashboardPaymentPassDataSource *)self _createMismatchedAccountMessageWithInstitution:institution withPreviousConsentUUID:consentUUID];
        selfCopy2 = self;
        v21 = v19;
        v22 = institution;
        v23 = 0;
        goto LABEL_16;
      }
    }

    if (shouldNotifyAboutChanges && (-[PKDashboardPaymentPassDataSource bankConnectMessagesManager](self, "bankConnectMessagesManager"), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v33 isAccountMessageDismissed:5 forAccountIdentifier:accountID], v33, (v34 & 1) == 0))
    {
      v40 = [(PKDashboardPaymentPassDataSource *)self _createTermsAndConditionsUpdateMessageWithTermsAndConditions:termsAndConditions];
      if (!v40)
      {
        goto LABEL_22;
      }

      v37 = v40;
      bankConnectMessage = [(PKDashboardPaymentPassDataSource *)self bankConnectMessage];
      identifier = [bankConnectMessage identifier];

      identifier2 = [v37 identifier];
      if (([identifier isEqualToString:identifier2] & 1) == 0)
      {
        [(PKDashboardPaymentPassDataSource *)self setBankConnectMessage:v37];
        [(PKDashboardPaymentPassDataSource *)self reloadSecondaryMessages];
      }
    }

    else
    {
      bankConnectMessagesManager4 = [(PKDashboardPaymentPassDataSource *)self bankConnectMessagesManager];
      v36 = [bankConnectMessagesManager4 isAccountMessageDismissed:2 forAccountIdentifier:accountID];

      if (v36)
      {
        goto LABEL_22;
      }

      v37 = [(PKDashboardPaymentPassDataSource *)self _createConnectedMessageWithInstitution:institution];
      [(PKDashboardPaymentPassDataSource *)self _showBankConnectMessage:v37 forInstitution:institution shouldUseInstitutionLogo:1 forceUpdate:0];
    }

    goto LABEL_22;
  }
}

void __80__PKDashboardPaymentPassDataSource_BankConnect___showBankConnectMessageIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PKDashboardPaymentPassDataSource_BankConnect___showBankConnectMessageIfNeeded__block_invoke_2;
  block[3] = &unk_1E8012808;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  objc_copyWeak(&v9, (a1 + 40));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v9);
}

void __80__PKDashboardPaymentPassDataSource_BankConnect___showBankConnectMessageIfNeeded__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) bankConnectLinkedAccountData];
    v3 = [v2 account];

    if (!v3)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      v4 = [*(a1 + 40) _createSetupMessageWithInstitution:*(a1 + 32)];
      [WeakRetained _showBankConnectMessage:v4 forInstitution:*(a1 + 32) shouldUseInstitutionLogo:1 forceUpdate:0];
    }
  }
}

- (void)_reportDashboardMessageStateChangeForMessageIdentifier:(id)identifier
{
  v19[3] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"bankConnectSetUp"])
  {
    v4 = MEMORY[0x1E69B8540];
    v5 = *MEMORY[0x1E69BB6F8];
    v6 = *MEMORY[0x1E69BA7E0];
    v7 = *MEMORY[0x1E69BABE8];
    v18[0] = *MEMORY[0x1E69BA680];
    v18[1] = v7;
    v8 = *MEMORY[0x1E69BAC10];
    v19[0] = v6;
    v19[1] = v8;
    v18[2] = *MEMORY[0x1E69BA9E8];
    v19[2] = @"true";
    v9 = MEMORY[0x1E695DF20];
    v10 = v19;
    v11 = v18;
LABEL_5:
    v15 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:3];
    [v4 subject:v5 sendEvent:v15];

    goto LABEL_6;
  }

  if ([identifierCopy isEqualToString:@"bankConnectReconsent"])
  {
    v4 = MEMORY[0x1E69B8540];
    v5 = *MEMORY[0x1E69BB6F8];
    v12 = *MEMORY[0x1E69BA7E0];
    v13 = *MEMORY[0x1E69BABE8];
    v16[0] = *MEMORY[0x1E69BA680];
    v16[1] = v13;
    v14 = *MEMORY[0x1E69BAC10];
    v17[0] = v12;
    v17[1] = v14;
    v16[2] = *MEMORY[0x1E69BB3B0];
    v17[2] = @"true";
    v9 = MEMORY[0x1E695DF20];
    v10 = v17;
    v11 = v16;
    goto LABEL_5;
  }

LABEL_6:
}

- (void)_setBankConnectMessage:(id)message
{
  messageCopy = message;
  bankConnectMessage = [(PKDashboardPaymentPassDataSource *)self bankConnectMessage];
  identifier = [bankConnectMessage identifier];

  identifier2 = [messageCopy identifier];
  if (([identifier isEqualToString:identifier2] & 1) == 0)
  {
    [(PKDashboardPaymentPassDataSource *)self _reportDashboardMessageStateChangeForMessageIdentifier:identifier2];
    [(PKDashboardPaymentPassDataSource *)self setBankConnectMessage:messageCopy];
  }
}

- (void)_showBankConnectMessage:(id)message forInstitution:(id)institution shouldUseInstitutionLogo:(BOOL)logo forceUpdate:(BOOL)update
{
  messageCopy = message;
  institutionCopy = institution;
  bankConnectMessage = [(PKDashboardPaymentPassDataSource *)self bankConnectMessage];
  identifier = [bankConnectMessage identifier];

  identifier2 = [messageCopy identifier];
  if (update || ([identifier isEqualToString:identifier2] & 1) == 0)
  {
    bankConnectImageProvider = [(PKDashboardPaymentPassDataSource *)self bankConnectImageProvider];
    if (bankConnectImageProvider)
    {
      v16 = PKUIScreenScale();
      institutionIdentifier = [institutionCopy institutionIdentifier];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __125__PKDashboardPaymentPassDataSource_BankConnect___showBankConnectMessage_forInstitution_shouldUseInstitutionLogo_forceUpdate___block_invoke;
      v19[3] = &unk_1E8022300;
      logoCopy = logo;
      v20 = institutionIdentifier;
      selfCopy = self;
      v22 = messageCopy;
      v18 = institutionIdentifier;
      [bankConnectImageProvider logoForInstitutionID:v18 size:v19 scale:45.0 completion:{45.0, v16}];
    }

    else
    {
      [(PKDashboardPaymentPassDataSource *)self _setBankConnectMessage:messageCopy];
      [(PKDashboardPaymentPassDataSource *)self reloadSecondaryMessages];
    }
  }
}

void __125__PKDashboardPaymentPassDataSource_BankConnect___showBankConnectMessage_forInstitution_shouldUseInstitutionLogo_forceUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __125__PKDashboardPaymentPassDataSource_BankConnect___showBankConnectMessage_forInstitution_shouldUseInstitutionLogo_forceUpdate___block_invoke_2;
  block[3] = &unk_1E80222D8;
  v9 = v3;
  v13 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __125__PKDashboardPaymentPassDataSource_BankConnect___showBankConnectMessage_forInstitution_shouldUseInstitutionLogo_forceUpdate___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (*(a1 + 64) == 1)
    {
      v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"institution-image-%@", *(a1 + 40)];
      v3 = *(a1 + 48);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __125__PKDashboardPaymentPassDataSource_BankConnect___showBankConnectMessage_forInstitution_shouldUseInstitutionLogo_forceUpdate___block_invoke_3;
      v5[3] = &unk_1E801E3D0;
      v6 = *(a1 + 32);
      v4 = [v3 _messageCachedImageWithIdentifier:v2 imageProvider:v5];
    }

    else
    {
      v4 = [*(a1 + 48) _mismatchedAccountImageWithInstitutionImage:? institutionIdentifier:?];
    }

    [*(a1 + 56) setImage:v4];
    [*(a1 + 48) _setBankConnectMessage:*(a1 + 56)];
    [*(a1 + 48) reloadSecondaryMessages];
  }
}

- (id)_createReconsentMessageWithInstitution:(id)institution withPreviousConsentUUID:(id)d
{
  institutionCopy = institution;
  dCopy = d;
  v8 = objc_alloc_init(PKDashboardPassMessage);
  [(PKDashboardPassMessage *)v8 setIdentifier:@"bankConnectReconsent"];
  [(PKDashboardPassMessage *)v8 setShowDisclosure:1];
  v9 = PKLocalizedBankConnectString(&cfstr_BankConnectDas_12.isa);
  [(PKDashboardPassMessage *)v8 setTitle:v9];

  v10 = PKLocalizedBankConnectString(&cfstr_BankConnectDas_13.isa);
  [(PKDashboardPassMessage *)v8 setMessage:v10];

  v11 = PKLocalizedBankConnectString(&cfstr_BankConnectDas_14.isa);
  [(PKDashboardPassMessage *)v8 setButtonTitle:v11];

  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __112__PKDashboardPaymentPassDataSource_BankConnect___createReconsentMessageWithInstitution_withPreviousConsentUUID___block_invoke;
  v17[3] = &unk_1E8015570;
  objc_copyWeak(&v20, &location);
  v12 = institutionCopy;
  v18 = v12;
  v13 = dCopy;
  v19 = v13;
  [(PKDashboardPassMessage *)v8 setActionOnButtonPress:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __112__PKDashboardPaymentPassDataSource_BankConnect___createReconsentMessageWithInstitution_withPreviousConsentUUID___block_invoke_2;
  v15[3] = &unk_1E8010998;
  objc_copyWeak(&v16, &location);
  [(PKDashboardPassMessage *)v8 setActionOnDismiss:v15];
  objc_destroyWeak(&v16);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v8;
}

void __112__PKDashboardPaymentPassDataSource_BankConnect___createReconsentMessageWithInstitution_withPreviousConsentUUID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _reconsentInstitution:*(a1 + 32) withPreviousConsentUUID:*(a1 + 40)];
}

void __112__PKDashboardPaymentPassDataSource_BankConnect___createReconsentMessageWithInstitution_withPreviousConsentUUID___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained bankConnectLinkedAccountData];
  v4 = [v3 accountID];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 bankConnectMessagesManager];
    [v6 setIsDismissed:1 forAccountMessage:1 withAccountIdentifier:v4];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__PKDashboardPaymentPassDataSource_BankConnect___createReconsentMessageWithInstitution_withPreviousConsentUUID___block_invoke_3;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v8, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v8);
}

void __112__PKDashboardPaymentPassDataSource_BankConnect___createReconsentMessageWithInstitution_withPreviousConsentUUID___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hideBankConnectMessageAndReloadIfNeeded];
}

- (id)_createSetupMessageWithInstitution:(id)institution
{
  institutionCopy = institution;
  v5 = objc_alloc_init(PKDashboardPassMessage);
  [(PKDashboardPassMessage *)v5 setIdentifier:@"bankConnectSetUp"];
  [(PKDashboardPassMessage *)v5 setShowDisclosure:0];
  if ([institutionCopy supportsTransactions])
  {
    v6 = @"BANK_CONNECT_DASHBOARD_MESSAGE_SETUP_TITLE";
  }

  else
  {
    v6 = @"BANK_CONNECT_DASHBOARD_MESSAGE_SETUP_TITLE_BALANCE_ONLY";
  }

  v7 = PKLocalizedBankConnectString(&v6->isa);
  [(PKDashboardPassMessage *)v5 setTitle:v7];

  name = [institutionCopy name];
  v9 = PKLocalizedBankConnectString(&cfstr_BankConnectDas_17.isa, &stru_1F3BD5BF0.isa, name);
  [(PKDashboardPassMessage *)v5 setMessage:v9];

  v10 = PKLocalizedBankConnectString(&cfstr_BankConnectDas_18.isa);
  [(PKDashboardPassMessage *)v5 setButtonTitle:v10];

  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__PKDashboardPaymentPassDataSource_BankConnect___createSetupMessageWithInstitution___block_invoke;
  v15[3] = &unk_1E8014F68;
  objc_copyWeak(&v17, &location);
  v11 = institutionCopy;
  v16 = v11;
  [(PKDashboardPassMessage *)v5 setActionOnButtonPress:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__PKDashboardPaymentPassDataSource_BankConnect___createSetupMessageWithInstitution___block_invoke_2;
  v13[3] = &unk_1E80110E0;
  objc_copyWeak(&v14, &location);
  v13[4] = self;
  [(PKDashboardPassMessage *)v5 setActionOnDismiss:v13];
  objc_destroyWeak(&v14);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v5;
}

void __84__PKDashboardPaymentPassDataSource_BankConnect___createSetupMessageWithInstitution___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _authorizeInstitution:*(a1 + 32)];
}

void __84__PKDashboardPaymentPassDataSource_BankConnect___createSetupMessageWithInstitution___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained bankConnectMessagesManager];
  v4 = [*(a1 + 32) pass];
  v5 = [v4 fkPaymentPass];
  v6 = [v5 primaryAccountIdentifier];
  [v3 setIsDismissed:1 forPassMessage:0 withFPANIdentifier:v6];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PKDashboardPaymentPassDataSource_BankConnect___createSetupMessageWithInstitution___block_invoke_3;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v8);
}

void __84__PKDashboardPaymentPassDataSource_BankConnect___createSetupMessageWithInstitution___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hideBankConnectMessageAndReloadIfNeeded];
}

- (id)_createConnectedMessageWithInstitution:(id)institution
{
  institutionCopy = institution;
  v5 = objc_alloc_init(PKDashboardPassMessage);
  [(PKDashboardPassMessage *)v5 setIdentifier:@"bankConnectConnected"];
  [(PKDashboardPassMessage *)v5 setShowDisclosure:1];
  name = [institutionCopy name];
  v7 = PKLocalizedBankConnectString(&cfstr_BankConnectDas_19.isa, &stru_1F3BD5BF0.isa, name);
  [(PKDashboardPassMessage *)v5 setTitle:v7];

  bankConnectLinkedAccountData = [(PKDashboardPaymentPassDataSource *)self bankConnectLinkedAccountData];
  account = [bankConnectLinkedAccountData account];
  if ([account loadingStatus] == 1)
  {
    supportsTransactions = [institutionCopy supportsTransactions];

    if (supportsTransactions)
    {
      v11 = @"BANK_CONNECT_DASHBOARD_CONNECTED_MESSAGE_TRANSACTIONS_LOADING";
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = @"BANK_CONNECT_DASHBOARD_CONNECTED_MESSAGE";
LABEL_6:
  v12 = PKLocalizedBankConnectString(&v11->isa);
  [(PKDashboardPassMessage *)v5 setMessage:v12];

  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__PKDashboardPaymentPassDataSource_BankConnect___createConnectedMessageWithInstitution___block_invoke;
  v14[3] = &unk_1E8010998;
  objc_copyWeak(&v15, &location);
  [(PKDashboardPassMessage *)v5 setActionOnDismiss:v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v5;
}

void __88__PKDashboardPaymentPassDataSource_BankConnect___createConnectedMessageWithInstitution___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained bankConnectLinkedAccountData];
  v4 = [v3 accountID];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 bankConnectMessagesManager];
    [v6 setIsDismissed:1 forAccountMessage:2 withAccountIdentifier:v4];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PKDashboardPaymentPassDataSource_BankConnect___createConnectedMessageWithInstitution___block_invoke_2;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v8, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v8);
}

void __88__PKDashboardPaymentPassDataSource_BankConnect___createConnectedMessageWithInstitution___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hideBankConnectMessageAndReloadIfNeeded];
}

- (id)_createTermsAndConditionsUpdateMessageWithTermsAndConditions:(id)conditions
{
  location[3] = *MEMORY[0x1E69E9840];
  conditionsCopy = conditions;
  identifier = [conditionsCopy identifier];
  if (identifier)
  {
    inEffectOn = [conditionsCopy inEffectOn];
    v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v8 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    [v7 setCalendar:v8];

    [v7 setDateStyle:3];
    [v7 setTimeStyle:0];
    v9 = objc_alloc_init(PKDashboardPassMessage);
    [(PKDashboardPassMessage *)v9 setIdentifier:@"bankConnectTermsAndConditionsUpdate"];
    v10 = PKLocalizedBankConnectString(&cfstr_BankConnectDas_22.isa);
    [(PKDashboardPassMessage *)v9 setTitle:v10];

    v11 = [v7 stringFromDate:inEffectOn];
    v12 = PKLocalizedBankConnectString(&cfstr_BankConnectDas_23.isa, &stru_1F3BD5BF0.isa, v11);
    [(PKDashboardPassMessage *)v9 setMessage:v12];

    v13 = PKLocalizedBankConnectString(&cfstr_BankConnectDas_24.isa);
    [(PKDashboardPassMessage *)v9 setButtonTitle:v13];

    v14 = [(PKDashboardPaymentPassDataSource *)self _messageCachedImageWithIdentifier:@"wallet" imageProvider:&__block_literal_global_220];
    [(PKDashboardPassMessage *)v9 setImage:v14];

    objc_initWeak(location, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __110__PKDashboardPaymentPassDataSource_BankConnect___createTermsAndConditionsUpdateMessageWithTermsAndConditions___block_invoke_2;
    v18[3] = &unk_1E8022348;
    v18[4] = self;
    v19 = identifier;
    objc_copyWeak(&v20, location);
    [(PKDashboardPassMessage *)v9 setActionOnButtonPress:v18];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __110__PKDashboardPaymentPassDataSource_BankConnect___createTermsAndConditionsUpdateMessageWithTermsAndConditions___block_invoke_5;
    v16[3] = &unk_1E8010998;
    objc_copyWeak(&v17, location);
    [(PKDashboardPassMessage *)v9 setActionOnDismiss:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v20);

    objc_destroyWeak(location);
  }

  else
  {
    inEffectOn = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(inEffectOn, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = conditionsCopy;
      _os_log_error_impl(&dword_1BD026000, inEffectOn, OS_LOG_TYPE_ERROR, "Failed to create a message for T&Cs %@", location, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

void __110__PKDashboardPaymentPassDataSource_BankConnect___createTermsAndConditionsUpdateMessageWithTermsAndConditions___block_invoke_2(uint64_t a1, void *a2)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) viewController];
  v5 = [v4 navigationController];

  if (v5)
  {
    v6 = MEMORY[0x1E69B8540];
    v7 = *MEMORY[0x1E69BA6F0];
    v8 = *MEMORY[0x1E69BABE8];
    v22[0] = *MEMORY[0x1E69BA680];
    v22[1] = v8;
    v9 = *MEMORY[0x1E69BAC10];
    v23[0] = v7;
    v23[1] = v9;
    v10 = *MEMORY[0x1E69BA568];
    v11 = *MEMORY[0x1E69BB0E0];
    v22[2] = *MEMORY[0x1E69BA440];
    v22[3] = v11;
    v12 = *MEMORY[0x1E69BA890];
    v23[2] = v10;
    v23[3] = v12;
    v22[4] = *MEMORY[0x1E69BA590];
    v23[4] = *MEMORY[0x1E69BA4F8];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:5];
    [v6 subject:*MEMORY[0x1E69BB6F8] sendEvent:v13];

    FKBankConnectTermsAndConditionsViewControllerProviderClass = getFKBankConnectTermsAndConditionsViewControllerProviderClass();
    v15 = *(a1 + 40);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __110__PKDashboardPaymentPassDataSource_BankConnect___createTermsAndConditionsUpdateMessageWithTermsAndConditions___block_invoke_3;
    v20 = &unk_1E8010998;
    objc_copyWeak(&v21, (a1 + 48));
    v16 = [(objc_class *)FKBankConnectTermsAndConditionsViewControllerProviderClass makeViewControllerWithTermsAndConditionsID:v15 completion:&v17];
    if (v16)
    {
      [v5 presentViewController:v16 animated:1 completion:{0, v17, v18, v19, v20}];
    }

    objc_destroyWeak(&v21);
  }
}

void __110__PKDashboardPaymentPassDataSource_BankConnect___createTermsAndConditionsUpdateMessageWithTermsAndConditions___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__PKDashboardPaymentPassDataSource_BankConnect___createTermsAndConditionsUpdateMessageWithTermsAndConditions___block_invoke_4;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __110__PKDashboardPaymentPassDataSource_BankConnect___createTermsAndConditionsUpdateMessageWithTermsAndConditions___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadBankConnectData];
}

void __110__PKDashboardPaymentPassDataSource_BankConnect___createTermsAndConditionsUpdateMessageWithTermsAndConditions___block_invoke_5(uint64_t a1)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69B8540];
  v3 = *MEMORY[0x1E69BB6F8];
  v4 = *MEMORY[0x1E69BA6F0];
  v5 = *MEMORY[0x1E69BABE8];
  v18[0] = *MEMORY[0x1E69BA680];
  v18[1] = v5;
  v6 = *MEMORY[0x1E69BAC10];
  v19[0] = v4;
  v19[1] = v6;
  v7 = *MEMORY[0x1E69BA578];
  v8 = *MEMORY[0x1E69BB0E0];
  v18[2] = *MEMORY[0x1E69BA440];
  v18[3] = v8;
  v9 = *MEMORY[0x1E69BA890];
  v19[2] = v7;
  v19[3] = v9;
  v18[4] = *MEMORY[0x1E69BA590];
  v19[4] = *MEMORY[0x1E69BA4F8];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];
  [v2 subject:v3 sendEvent:v10];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = [WeakRetained bankConnectLinkedAccountData];
  v13 = [v12 accountID];

  if (v13)
  {
    v14 = objc_loadWeakRetained((a1 + 32));
    v15 = [v14 bankConnectMessagesManager];
    [v15 setIsDismissed:1 forAccountMessage:5 withAccountIdentifier:v13];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __110__PKDashboardPaymentPassDataSource_BankConnect___createTermsAndConditionsUpdateMessageWithTermsAndConditions___block_invoke_6;
  v16[3] = &unk_1E8010998;
  objc_copyWeak(&v17, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], v16);
  objc_destroyWeak(&v17);
}

void __110__PKDashboardPaymentPassDataSource_BankConnect___createTermsAndConditionsUpdateMessageWithTermsAndConditions___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hideBankConnectMessageAndReloadIfNeeded];
}

- (id)_createMismatchedAccountMessageWithInstitution:(id)institution withPreviousConsentUUID:(id)d
{
  institutionCopy = institution;
  dCopy = d;
  v8 = objc_alloc_init(PKDashboardPassMessage);
  [(PKDashboardPassMessage *)v8 setIdentifier:@"bankConnectMismatchedAccount"];
  [(PKDashboardPassMessage *)v8 setShowDisclosure:1];
  v9 = PKLocalizedBankConnectString(&cfstr_BankConnectDas_25.isa);
  [(PKDashboardPassMessage *)v8 setTitle:v9];

  v10 = PKLocalizedBankConnectString(&cfstr_BankConnectDas_26.isa);
  [(PKDashboardPassMessage *)v8 setMessage:v10];

  v11 = PKLocalizedBankConnectString(&cfstr_BankConnectDas_27.isa);
  [(PKDashboardPassMessage *)v8 setButtonTitle:v11];

  v12 = [(PKDashboardPaymentPassDataSource *)self _mismatchedAccountImageWithInstitutionImage:0 institutionIdentifier:0];
  [(PKDashboardPassMessage *)v8 setImage:v12];

  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __120__PKDashboardPaymentPassDataSource_BankConnect___createMismatchedAccountMessageWithInstitution_withPreviousConsentUUID___block_invoke;
  v18[3] = &unk_1E8022370;
  v18[4] = self;
  v13 = institutionCopy;
  v19 = v13;
  v14 = dCopy;
  v20 = v14;
  objc_copyWeak(&v21, &location);
  [(PKDashboardPassMessage *)v8 setActionOnButtonPress:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __120__PKDashboardPaymentPassDataSource_BankConnect___createMismatchedAccountMessageWithInstitution_withPreviousConsentUUID___block_invoke_4;
  v16[3] = &unk_1E8010998;
  objc_copyWeak(&v17, &location);
  [(PKDashboardPassMessage *)v8 setActionOnDismiss:v16];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v21);

  objc_destroyWeak(&location);

  return v8;
}

void __120__PKDashboardPaymentPassDataSource_BankConnect___createMismatchedAccountMessageWithInstitution_withPreviousConsentUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) viewController];
  v5 = [v4 navigationController];

  if (v5)
  {
    v6 = +[PKDismissalPreventionAssertionManager sharedInstance];
    v7 = [v6 acquireAssertion];

    FKBankConnectReviewAccountConnectionFlowViewControllerProviderClass = getFKBankConnectReviewAccountConnectionFlowViewControllerProviderClass();
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) pass];
    v11 = *(a1 + 48);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __120__PKDashboardPaymentPassDataSource_BankConnect___createMismatchedAccountMessageWithInstitution_withPreviousConsentUUID___block_invoke_2;
    v15[3] = &unk_1E8013220;
    objc_copyWeak(&v18, (a1 + 56));
    v12 = v5;
    v16 = v12;
    v13 = v7;
    v17 = v13;
    v14 = [(objc_class *)FKBankConnectReviewAccountConnectionFlowViewControllerProviderClass makeViewControllerWithInstitution:v9 paymentPass:v10 previousConsentUUID:v11 completion:v15];

    [v12 presentViewController:v14 animated:1 completion:0];
    objc_destroyWeak(&v18);
  }
}

uint64_t __120__PKDashboardPaymentPassDataSource_BankConnect___createMismatchedAccountMessageWithInstitution_withPreviousConsentUUID___block_invoke_2(id *a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v4 = [WeakRetained bankConnectLinkedAccountData];
    v5 = [v4 accountID];

    if (v5)
    {
      v6 = objc_loadWeakRetained(a1 + 6);
      v7 = [v6 bankConnectMessagesManager];
      [v7 setIsDismissed:1 forAccountMessage:3 withAccountIdentifier:v5];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __120__PKDashboardPaymentPassDataSource_BankConnect___createMismatchedAccountMessageWithInstitution_withPreviousConsentUUID___block_invoke_3;
    block[3] = &unk_1E8010998;
    objc_copyWeak(&v10, a1 + 6);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v10);
  }

  [a1[4] dismissViewControllerAnimated:1 completion:0];
  return [a1[5] invalidate];
}

void __120__PKDashboardPaymentPassDataSource_BankConnect___createMismatchedAccountMessageWithInstitution_withPreviousConsentUUID___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hideBankConnectMessageAndReloadIfNeeded];
}

void __120__PKDashboardPaymentPassDataSource_BankConnect___createMismatchedAccountMessageWithInstitution_withPreviousConsentUUID___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained bankConnectLinkedAccountData];
  v4 = [v3 accountID];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 bankConnectMessagesManager];
    [v6 setIsDismissed:1 forAccountMessage:3 withAccountIdentifier:v4];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __120__PKDashboardPaymentPassDataSource_BankConnect___createMismatchedAccountMessageWithInstitution_withPreviousConsentUUID___block_invoke_5;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v8, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v8);
}

void __120__PKDashboardPaymentPassDataSource_BankConnect___createMismatchedAccountMessageWithInstitution_withPreviousConsentUUID___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hideBankConnectMessageAndReloadIfNeeded];
}

- (id)_mismatchedAccountImageWithInstitutionImage:(id)image institutionIdentifier:(id)identifier
{
  imageCopy = image;
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    identifierCopy = [@"institution-mismatched" stringByAppendingFormat:@"-%@", identifierCopy];
  }

  else
  {
    identifierCopy = @"institution-mismatched";
  }

  currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  userInterfaceStyle = [currentTraitCollection userInterfaceStyle];
  v11 = @"light";
  if (userInterfaceStyle == 2)
  {
    v11 = @"dark";
  }

  v12 = [(__CFString *)identifierCopy stringByAppendingFormat:@"-%@", v11];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __115__PKDashboardPaymentPassDataSource_BankConnect___mismatchedAccountImageWithInstitutionImage_institutionIdentifier___block_invoke;
  v16[3] = &unk_1E801E3D0;
  v17 = imageCopy;
  v13 = imageCopy;
  v14 = [(PKDashboardPaymentPassDataSource *)self _messageCachedImageWithIdentifier:v12 imageProvider:v16];

  return v14;
}

id __115__PKDashboardPaymentPassDataSource_BankConnect___mismatchedAccountImageWithInstitutionImage_institutionIdentifier___block_invoke(uint64_t a1)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69DCAD8];
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v13[0] = v3;
  v4 = [MEMORY[0x1E69DC888] labelColor];
  v13[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v6 = [v2 configurationWithPaletteColors:v5];

  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.circle.fill" withConfiguration:v6];
  v8 = *(a1 + 32);
  if (!v8)
  {
    v8 = PKUIImageNamed(@"BankAccountAppInverted");
  }

  [v7 scale];
  v10 = v9;
  v15.width = 50.0;
  v15.height = 50.0;
  UIGraphicsBeginImageContextWithOptions(v15, 0, v10);
  [v8 drawInRect:{0.0, 0.0, 40.0, 40.0}];
  [v7 drawInRect:{30.0, 30.0, 20.0, 20.0}];
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v11;
}

- (void)_startRefetchingData
{
  bankConnectLinkedAccountData = [(PKDashboardPaymentPassDataSource *)self bankConnectLinkedAccountData];
  account = [bankConnectLinkedAccountData account];
  fullyQualifiedAccountIdentifier = [account fullyQualifiedAccountIdentifier];

  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [v4 initWithFormat:@"prefs:root=PASSBOOK&path=%@", *MEMORY[0x1E69BC5A8]];
  if (fullyQualifiedAccountIdentifier)
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    institutionID = [fullyQualifiedAccountIdentifier institutionID];
    accountID = [fullyQualifiedAccountIdentifier accountID];
    v9 = [v6 initWithFormat:@"/%@/%@", institutionID, accountID];

    v10 = [v5 stringByAppendingString:v9];

    v5 = v10;
  }

  v11 = [MEMORY[0x1E695DFF8] URLWithString:v5];
  PKOpenURL();
}

- (void)_authorizeInstitution:(id)institution
{
  v31[6] = *MEMORY[0x1E69E9840];
  institutionCopy = institution;
  viewController = [(PKDashboardPaymentPassDataSource *)self viewController];
  navigationController = [viewController navigationController];

  [(PKDashboardPaymentPassDataSource *)self _beginReportingIfNecessary];
  v7 = MEMORY[0x1E69B8540];
  v8 = *MEMORY[0x1E69BA6F0];
  v9 = *MEMORY[0x1E69BABE8];
  v30[0] = *MEMORY[0x1E69BA680];
  v30[1] = v9;
  v10 = *MEMORY[0x1E69BAC20];
  v31[0] = v8;
  v31[1] = v10;
  v11 = *MEMORY[0x1E69BA440];
  v31[2] = *MEMORY[0x1E69BAA60];
  v12 = *MEMORY[0x1E69BAC90];
  v30[2] = v11;
  v30[3] = v12;
  getPassProductType = [(PKDashboardPaymentPassDataSource *)self getPassProductType];
  v31[3] = getPassProductType;
  v30[4] = *MEMORY[0x1E69BAA28];
  name = [institutionCopy name];
  v31[4] = name;
  v30[5] = *MEMORY[0x1E69BAC78];
  pass = [(PKDashboardPaymentPassDataSource *)self pass];
  issuerCountryCode = [pass issuerCountryCode];
  v31[5] = issuerCountryCode;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:6];
  [v7 subject:*MEMORY[0x1E69BB6F8] sendEvent:v17];

  if (navigationController)
  {
    objc_initWeak(&location, self);
    v18 = +[PKDismissalPreventionAssertionManager sharedInstance];
    acquireAssertion = [v18 acquireAssertion];

    FKBankConnectAuthorizationViewControllerProviderClass = getFKBankConnectAuthorizationViewControllerProviderClass();
    pass2 = [(PKDashboardPaymentPassDataSource *)self pass];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __71__PKDashboardPaymentPassDataSource_BankConnect___authorizeInstitution___block_invoke;
    v25[3] = &unk_1E8013220;
    objc_copyWeak(&v28, &location);
    v22 = navigationController;
    v26 = v22;
    v23 = acquireAssertion;
    v27 = v23;
    v24 = [(objc_class *)FKBankConnectAuthorizationViewControllerProviderClass makeAuthorizationViewControllerWithPaymentPass:pass2 institution:institutionCopy completion:v25];

    [v22 presentViewController:v24 animated:1 completion:0];
    objc_destroyWeak(&v28);

    objc_destroyWeak(&location);
  }
}

uint64_t __71__PKDashboardPaymentPassDataSource_BankConnect___authorizeInstitution___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained reloadBankConnectData];
  }

  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v4 = *(a1 + 40);

  return [v4 invalidate];
}

- (void)_reconsentInstitution:(id)institution withPreviousConsentUUID:(id)d
{
  institutionCopy = institution;
  dCopy = d;
  viewController = [(PKDashboardPaymentPassDataSource *)self viewController];
  navigationController = [viewController navigationController];

  if (navigationController)
  {
    objc_initWeak(&location, self);
    v10 = +[PKDismissalPreventionAssertionManager sharedInstance];
    acquireAssertion = [v10 acquireAssertion];

    FKBankConnectAuthorizationViewControllerProviderClass = getFKBankConnectAuthorizationViewControllerProviderClass();
    pass = [(PKDashboardPaymentPassDataSource *)self pass];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __95__PKDashboardPaymentPassDataSource_BankConnect___reconsentInstitution_withPreviousConsentUUID___block_invoke;
    v20 = &unk_1E8013220;
    objc_copyWeak(&v23, &location);
    v14 = navigationController;
    v21 = v14;
    v15 = acquireAssertion;
    v22 = v15;
    v16 = [(objc_class *)FKBankConnectAuthorizationViewControllerProviderClass makeReconsentAuthorizationViewControllerWithPaymentPass:pass institution:institutionCopy previousConsentUUID:dCopy completion:&v17];

    [v14 presentViewController:v16 animated:1 completion:{0, v17, v18, v19, v20}];
    objc_destroyWeak(&v23);

    objc_destroyWeak(&location);
  }
}

uint64_t __95__PKDashboardPaymentPassDataSource_BankConnect___reconsentInstitution_withPreviousConsentUUID___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained reloadBankConnectData];
  }

  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v4 = *(a1 + 40);

  return [v4 invalidate];
}

- (void)_startTransactionsLoadingMessageTimer
{
  if (!_transactionsLoadingMessageTimer)
  {
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v4 = _transactionsLoadingMessageTimer;
    _transactionsLoadingMessageTimer = v3;

    dispatch_source_set_timer(_transactionsLoadingMessageTimer, 0, 0x12A05F200uLL, 0x2FAF080uLL);
    objc_initWeak(&location, self);
    v5 = _transactionsLoadingMessageTimer;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __86__PKDashboardPaymentPassDataSource_BankConnect___startTransactionsLoadingMessageTimer__block_invoke;
    v6[3] = &unk_1E8010998;
    objc_copyWeak(&v7, &location);
    dispatch_source_set_event_handler(v5, v6);
    dispatch_source_set_cancel_handler(_transactionsLoadingMessageTimer, &__block_literal_global_227_0);
    dispatch_resume(_transactionsLoadingMessageTimer);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __86__PKDashboardPaymentPassDataSource_BankConnect___startTransactionsLoadingMessageTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    dispatch_source_cancel(_transactionsLoadingMessageTimer);
    v2 = [WeakRetained bankConnectLinkedAccountData];
    v3 = [v2 account];
    v4 = [v3 loadingStatus];

    if (v4 != 1)
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Transactions loading timer is over, reloading the Bank Connect Dashboard message", v6, 2u);
      }

      [WeakRetained _reloadBankConnectConnectedMessageIfNeeded];
    }
  }
}

void __86__PKDashboardPaymentPassDataSource_BankConnect___startTransactionsLoadingMessageTimer__block_invoke_225()
{
  v0 = _transactionsLoadingMessageTimer;
  _transactionsLoadingMessageTimer = 0;
}

- (void)didUpdateLatestTransactions:(id)transactions monthlyTransactionGroups:(id)groups yearlyTransactionGroups:(id)transactionGroups
{
  v66 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  groupsCopy = groups;
  transactionGroupsCopy = transactionGroups;
  if ([(PKDashboardPaymentPassDataSource *)self supportsBankConnectTransactions])
  {
    v46 = transactionGroupsCopy;
    if ([(PKDashboardPaymentPassDataSource *)self isEligibleForPersonalizedInsights])
    {
      +[_TtC9PassKitUI36BankConnectTransactionInsightsLoader requestPersonalizedInsightsUpdate];
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Skip FinHealth Insights update. The institution is not eligible for personalized insights.", buf, 2u);
      }
    }

    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(transactionsCopy, "count")}];
    selfCopy = self;
    bankConnectLinkedAccountData = [(PKDashboardPaymentPassDataSource *)self bankConnectLinkedAccountData];
    institution = [bankConnectLinkedAccountData institution];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v45 = transactionsCopy;
    v15 = transactionsCopy;
    v16 = [v15 countByEnumeratingWithState:&v58 objects:v65 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v59;
      do
      {
        v19 = 0;
        do
        {
          if (*v59 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [MEMORY[0x1E69B8EA8] transactionFromFKPaymentTransaction:*(*(&v58 + 1) + 8 * v19) institution:institution];
          [v12 safelyAddObject:v20];

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v58 objects:v65 count:16];
      }

      while (v17);
    }

    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(groupsCopy, "count")}];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v22 = groupsCopy;
    v23 = [v22 countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v55;
      do
      {
        v26 = 0;
        do
        {
          if (*v55 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [MEMORY[0x1E69B8EB0] transactionGroupFromFKTransactionGroup:*(*(&v54 + 1) + 8 * v26)];
          [v21 safelyAddObject:v27];

          ++v26;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v54 objects:v64 count:16];
      }

      while (v24);
    }

    v44 = groupsCopy;

    v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v46, "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v29 = v46;
    v30 = [v29 countByEnumeratingWithState:&v50 objects:v63 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v51;
      do
      {
        v33 = 0;
        do
        {
          if (*v51 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [MEMORY[0x1E69B8EB0] transactionGroupFromFKTransactionGroup:*(*(&v50 + 1) + 8 * v33)];
          [v28 safelyAddObject:v34];

          ++v33;
        }

        while (v31 != v33);
        v31 = [v29 countByEnumeratingWithState:&v50 objects:v63 count:16];
      }

      while (v31);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __126__PKDashboardPaymentPassDataSource_BankConnect__didUpdateLatestTransactions_monthlyTransactionGroups_yearlyTransactionGroups___block_invoke;
    aBlock[3] = &unk_1E8022060;
    aBlock[4] = selfCopy;
    v48 = v21;
    v49 = v28;
    v35 = v28;
    v36 = v21;
    v37 = _Block_copy(aBlock);
    v38 = MEMORY[0x1E69B8EA8];
    transactionSourceCollection = [(PKDashboardPaymentPassDataSource *)selfCopy transactionSourceCollection];
    transactionSourceIdentifiers = [transactionSourceCollection transactionSourceIdentifiers];
    pass = [(PKDashboardPaymentPassDataSource *)selfCopy pass];
    uniqueID = [pass uniqueID];
    [v38 augmentTransactionsIfNeeded:v12 transactionSourceIdentifiers:transactionSourceIdentifiers passUniqueID:uniqueID usingDataProvider:0 completion:v37];

    groupsCopy = v44;
    transactionsCopy = v45;
    transactionGroupsCopy = v46;
  }
}

uint64_t __126__PKDashboardPaymentPassDataSource_BankConnect__didUpdateLatestTransactions_monthlyTransactionGroups_yearlyTransactionGroups___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v3 setBankConnectMonthlyTransactionGroups:v4];
  [*(a1 + 32) setBankConnectYearlyTransactionGroups:*(a1 + 48)];
  [*(a1 + 32) updateWithTransactions:v5];

  v6 = *(a1 + 32);

  return [v6 reloadTransactionGroups];
}

- (void)bankConnectAccountDidChange:(id)change
{
  v22 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  bankConnectLinkedAccountData = [(PKDashboardPaymentPassDataSource *)self bankConnectLinkedAccountData];
  v6 = bankConnectLinkedAccountData;
  if (bankConnectLinkedAccountData)
  {
    account = [bankConnectLinkedAccountData account];
    if (([account isEqual:changeCopy] & 1) == 0)
    {
      if (account)
      {
        loadingStatus = [account loadingStatus];
        v9 = 0;
        if (changeCopy && loadingStatus != 1)
        {
          v9 = [(__CFString *)changeCopy loadingStatus]== 1;
        }

        loadingStatus2 = [account loadingStatus];
        v11 = 0;
        if (changeCopy && loadingStatus2 == 1)
        {
          v11 = [(__CFString *)changeCopy loadingStatus]!= 1;
        }
      }

      else
      {
        v9 = 0;
        v11 = 0;
      }

      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        account2 = [v6 account];
        v18 = 138412546;
        v19 = account2;
        v20 = 2112;
        v21 = changeCopy;
        _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Handling Bank Connect account update from %@ to %@", &v18, 0x16u);
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = @"NO";
        if (v9)
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        if (v11)
        {
          v14 = @"YES";
        }

        v18 = 138412546;
        v19 = v15;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "startedTransactionsLoading: %@, finishedTransactionsLoading: %@", &v18, 0x16u);
      }

      if (v9)
      {
        [v6 setAccount:changeCopy];
        [(PKDashboardPaymentPassDataSource *)self _startTransactionsLoadingMessageTimer];
LABEL_23:
        [(PKDashboardPaymentPassDataSource *)self _reloadBankConnectConnectedMessageIfNeeded];
        goto LABEL_30;
      }

      if (!v11)
      {
        consentStatus = [v6 consentStatus];
        institution = [v6 institution];
        [(PKDashboardPaymentPassDataSource *)self updateWithBankConnectAccount:changeCopy consentStatus:consentStatus institution:institution];

        goto LABEL_30;
      }

      [v6 setAccount:changeCopy];
      if (!_transactionsLoadingMessageTimer)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Finished loading transactions, reloading the Bank Connect Dashboard message", &v18, 2u);
        }

        goto LABEL_23;
      }
    }

LABEL_30:

    goto LABEL_31;
  }

  [(PKDashboardPaymentPassDataSource *)self reloadBankConnectData];
LABEL_31:
}

- (void)bankConnectConsentStatusDidChange:(unint64_t)change
{
  v16 = *MEMORY[0x1E69E9840];
  bankConnectLinkedAccountData = [(PKDashboardPaymentPassDataSource *)self bankConnectLinkedAccountData];
  v6 = bankConnectLinkedAccountData;
  if (bankConnectLinkedAccountData && [bankConnectLinkedAccountData consentStatus] != change)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218240;
      consentStatus = [v6 consentStatus];
      v14 = 2048;
      changeCopy = change;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Handling Bank Connect consent status update from %ld to %ld", &v12, 0x16u);
    }

    institution = [v6 institution];
    account = [v6 account];
    [(PKDashboardPaymentPassDataSource *)self _setupSpendingSummaryDataProviderIfNeededForInstitution:institution account:account consentStatus:change];

    account2 = [v6 account];
    institution2 = [v6 institution];
    [(PKDashboardPaymentPassDataSource *)self updateWithBankConnectAccount:account2 consentStatus:change institution:institution2];
  }
}

- (void)_beginReportingIfNecessary
{
  v2 = *MEMORY[0x1E69BB6F8];
  v3 = [MEMORY[0x1E69B8540] reporterForSubject:*MEMORY[0x1E69BB6F8]];

  if (!v3)
  {
    _didBeginPassManagementSubject = 1;
    v4 = MEMORY[0x1E69B8540];

    [v4 beginSubjectReporting:v2];
  }
}

@end