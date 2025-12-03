@interface PKPaymentPassDetailViewController
- (BOOL)_accountInGoodStateForAMPEligbilityCheck;
- (BOOL)_accountServiceCreditDetailsRowIsEnabled:(unint64_t)enabled;
- (BOOL)_accountServicePhysicalCardRowIsEnabled:(unint64_t)enabled;
- (BOOL)_accountServiceRewardsRowIsEnabled:(unint64_t)enabled;
- (BOOL)_canSelectBalanceOrCommutePlanCellAtRowIndex:(int64_t)index;
- (BOOL)_commutePlanIsSelectable:(id)selectable action:(id)action;
- (BOOL)_hasActionOfType:(unint64_t)type;
- (BOOL)_isBankConnectLinked;
- (BOOL)_isBankConnectSupportedForPaymentPass:(id)pass;
- (BOOL)_isDeletingPass;
- (BOOL)_isJapaneseRegion;
- (BOOL)_isShowingLostModeInterface;
- (BOOL)_peerPaymentMoneyActionEnabled:(unint64_t)enabled;
- (BOOL)_shouldShowAccessPersonInformation;
- (BOOL)_shouldShowAutomaticPresentation;
- (BOOL)_shouldShowBankConnect;
- (BOOL)_shouldShowBillingAddressCell;
- (BOOL)_shouldShowCardNumbersSection;
- (BOOL)_shouldShowContactCell;
- (BOOL)_shouldShowDeleteCell;
- (BOOL)_shouldShowNetworkBenefitsCell;
- (BOOL)_shouldShowPrivacyPolicyCell;
- (BOOL)_shouldShowProductBenefitsCell;
- (BOOL)_shouldShowServiceMode;
- (BOOL)_shouldShowServicingSection;
- (BOOL)_shouldShowTermsCell;
- (BOOL)_shouldShowTransactions;
- (BOOL)_shouldShowTransactionsSection;
- (BOOL)_shouldShowTransferCell;
- (BOOL)_showPeerPaymentBalanceFDICFooterView;
- (BOOL)_showsAddAccountUserButton;
- (BOOL)_showsTransactionHistorySwitch;
- (BOOL)_transactionCellEditActionsGenerateWithOutput:(id *)output forRowIndex:(int64_t)index tableView:(id)view;
- (BOOL)_transactionDeepLinkingEnabled;
- (BOOL)_transactionSectionsDataIsChangedForNewTransactions:(id)transactions oldTransactions:(id)oldTransactions newtransactionCountByPeriod:(id)period oldtransactionCountByPeriod:(id)byPeriod;
- (BOOL)_updateHeaderHeightDeterminingLayout:(BOOL)layout;
- (BOOL)canSelectAccountUserRowAtIndexPath:(id)path;
- (BOOL)handleDeletePassWithUniqueID:(id)d;
- (BOOL)paymentApplicationShouldShowFullDPAN:(id)n;
- (BOOL)shouldAllowRefresh;
- (BOOL)shouldHighlightRowAtIndexPath:(id)path section:(unint64_t)section;
- (BOOL)shouldMapSection:(unint64_t)section;
- (BOOL)shouldShowAccountUserStopSharingSection;
- (BOOL)shouldShowAccountUsersSection;
- (BOOL)shouldShowIdentityDocumentSection;
- (BOOL)shouldShowReplaceBiometricSection;
- (BOOL)shouldShowVerifySSNSection;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path section:(unint64_t)section;
- (CGPoint)_normalizedContentOffsetForTargetOffset:(CGPoint)offset;
- (PKContactAvatarManager)contactAvatarManager;
- (PKContactResolver)contactResolver;
- (PKPassDeleteHandler)deleteOverrider;
- (PKPaymentPassDetailViewController)initWithPass:(id)pass group:(id)group groupsController:(id)controller webService:(id)service peerPaymentWebService:(id)webService accountService:(id)accountService style:(int64_t)style passLibraryDataProvider:(id)self0 paymentServiceDataProvider:(id)self1 rendererState:(id)self2 context:(id)self3 familyCollection:(id)self4 contactAvatarManager:(id)self5 account:(id)self6;
- (PKPaymentPassDetailViewController)initWithPass:(id)pass group:(id)group groupsController:(id)controller webService:(id)service peerPaymentWebService:(id)webService style:(int64_t)style passLibraryDataProvider:(id)provider paymentServiceDataProvider:(id)self0;
- (PKPaymentPassDetailViewController)initWithPass:(id)pass group:(id)group groupsController:(id)controller webService:(id)service peerPaymentWebService:(id)webService style:(int64_t)style passLibraryDataProvider:(id)provider paymentServiceDataProvider:(id)self0 rendererState:(id)self1 context:(id)self2;
- (PKPaymentPassDetailViewController)initWithPass:(id)pass group:(id)group groupsController:(id)controller webService:(id)service style:(int64_t)style dataProvider:(id)provider;
- (double)_footerViewHeightForPassStateSectionWithTableView:(id)view;
- (double)_heightForPassStateSectionWithTableView:(id)view;
- (double)estimatedHeightForRowAtIndexPath:(id)path section:(unint64_t)section;
- (double)tableView:(id)view heightForFooterInSectionCase:(unint64_t)case;
- (double)tableView:(id)view heightForHeaderInSectionCase:(unint64_t)case;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path section:(unint64_t)section;
- (id)_accountResolutionController;
- (id)_accountServiceBankAccountsCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_accountServiceCardNumbersCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_accountServiceCreditDetailsCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_accountServiceMakeDefaultCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_accountServiceNotificationsSwitchCellForIndexPath:(id)path tableView:(id)view;
- (id)_accountServicePhysicalCardCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_accountServiceRewardsDetailsCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_accountUserTableViewCellForTableView:(id)view atIndexPath:(id)path;
- (id)_actionForCommutePlan:(id)plan;
- (id)_activationFooterView;
- (id)_activeOrderOfSectionIdentifiers;
- (id)_addAccounUserTableViewCellForTableView:(id)view atIndexPath:(id)path;
- (id)_automaticPresentationCellForTableView:(id)view;
- (id)_availableCommutePlanActions;
- (id)_balanceCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_balanceForRow:(unint64_t)row;
- (id)_balanceOrCommutePlanCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_balanceReminderCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_barcodeCell;
- (id)_billingAddressCellShowingAddress:(BOOL)address forTableView:(id)view;
- (id)_cardHolderPictureCellForTableView:(id)view;
- (id)_cellForField:(id)field tableView:(id)view;
- (id)_checkmarkCellWithText:(id)text forTableView:(id)view;
- (id)_commuterRouteCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_configurableSectionForSectionType:(unint64_t)type;
- (id)_configurableSections;
- (id)_contactInfoAttributedText:(id)text phoneNumber:(id)number;
- (id)_contactKeysToFetch;
- (id)_createTabBarWithSelectedIndex:(int64_t)index;
- (id)_defaultCellWithTextColor:(id)color forTableView:(id)view;
- (id)_deleteCardCellForTableView:(id)view;
- (id)_deleteContextualActionForTransaction:(id)transaction;
- (id)_deviceAccountNumberCellForIndexPath:(id)path tableView:(id)view;
- (id)_disabledCellWithText:(id)text forTableView:(id)view;
- (id)_familyMemberCellForIndexPath:(id)path tableView:(id)view;
- (id)_familyMemberCellWithRowModel:(id)model forTableView:(id)view;
- (id)_footerTextForPassStateSection;
- (id)_footerViewForAccountUsersSection;
- (id)_footerViewForApplePayProductPrivacySection;
- (id)_footerViewForManualIdentityVerificationSection;
- (id)_footerViewForMerchantTokensSection;
- (id)_footerViewForPassOperationsSection;
- (id)_footerViewForPassStateSection;
- (id)_footerViewForPeerPaymentBalanceSectionWithTableView:(id)view;
- (id)_footerViewForPendingPeerPaymentAssociatedAccount;
- (id)_headerTitleForPassStateSection;
- (id)_imageViewCellForImage:(id)image forTableView:(id)view;
- (id)_infoCellWithDescription:(id)description forTableView:(id)view;
- (id)_infoCellWithPrimaryText:(id)text detailText:(id)detailText cellStyle:(int64_t)style forTableView:(id)view;
- (id)_infoCellWithPrimaryText:(id)text detailText:(id)detailText cellStyle:(int64_t)style reuseIdentifier:(id)identifier forTableView:(id)view;
- (id)_installmentsPlanCellForTableView:(id)view atIndexPath:(id)path;
- (id)_legalNoticesFooterWithAttributedString:(id)string combineString:(id)combineString outputURL:(id *)l;
- (id)_linkCellWithText:(id)text forTableView:(id)view;
- (id)_linkedAppCellForTableView:(id)view;
- (id)_linkedApplicationCellForTableView:(id)view;
- (id)_manufacturerInfoCellForTableView:(id)view;
- (id)_merchantTokensCellForTableView:(id)view;
- (id)_messagesSwitchCellForTableView:(id)view;
- (id)_moreTransactionsCellForTableView:(id)view;
- (id)_passesInGroupCellForIndexPath:(id)path tableView:(id)view;
- (id)_paymentApplicationsCellForIndexPath:(id)path tableView:(id)view;
- (id)_paymentSetupNavigationControllerForProvisioningController:(id)controller;
- (id)_peerPaymentAccountActionCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_peerPaymentAutomaticallyAcceptPaymentsCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_peerPaymentBalanceCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_peerPaymentBankAccountsCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_peerPaymentBillingAddressCellForTableView:(id)view;
- (id)_peerPaymentManualIdentityVerificationCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_peerPaymentMoneyActionCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_peerPaymentNotificationsSwitchCellForIndexPath:(id)path tableView:(id)view;
- (id)_peerPaymentParticipantGraduationCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_peerPaymentStatementCellForTableView:(id)view;
- (id)_privacyTermsSectionCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_recomputeMappedSections;
- (id)_removeCardTextColor;
- (id)_renewActionForRow:(unint64_t)row commutePlanIdentifier:(id)identifier;
- (id)_settingsExpressTransitURL;
- (id)_settingsTableCellWithTitle:(id)title action:(SEL)action setOn:(BOOL)on enabled:(BOOL)enabled;
- (id)_spinnerCellForTableView:(id)view;
- (id)_stackedInfoCellWithPrimaryText:(id)text detailText:(id)detailText cellStyle:(int64_t)style forTableView:(id)view;
- (id)_subtitleCellForTableView:(id)view;
- (id)_switchCellWithText:(id)text forTableView:(id)view;
- (id)_topUpActionForRow:(unint64_t)row;
- (id)_transactionCellForIndexPath:(id)path tableView:(id)view;
- (id)_transactionCountByPeriodCellForIndexPath:(id)path tableView:(id)view;
- (id)_transactionCountFormatter;
- (id)_transactionDetailViewControllerForTransaction:(id)transaction;
- (id)_transactionYearFormatter;
- (id)_transactionsSwitchCellForIndexPath:(id)path tableView:(id)view;
- (id)_transferCardCellForTableView:(id)view;
- (id)_value1CellWithTextColor:(id)color forTableView:(id)view;
- (id)accountUserStopSharingTableViewCellForTableView:(id)view atIndexPath:(id)path;
- (id)accountUserTableViewCellForTableView:(id)view atIndexPath:(id)path;
- (id)cellForRow:(unint64_t)row inSection:(id)section;
- (id)contactIssuerHelper;
- (id)contextMenuConfigurationForCopyingText:(id)text;
- (id)contextMenuConfigurationForTransaction:(id)transaction;
- (id)createFooterHyperlinkViewWithText:(id)text action:(id)action;
- (id)createPrivacyFooterViewForContext:(unint64_t)context tintColor:(id)color;
- (id)createPrivacyFooterViewWithText:(id)text tintColor:(id)color privacyContext:(unint64_t)context;
- (id)footerForIdentityDocumentInTableView:(id)view;
- (id)identityDocumentTableViewCellForTableView:(id)view atIndexPath:(id)path;
- (id)presentationSceneIdentifierForPhysicalCardActionController:(id)controller;
- (id)privacyFooterAttributedStringWithText:(id)text privacyContext:(unint64_t)context outputURL:(id *)l;
- (id)replaceBiometricTableViewCellForTableView:(id)view atIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path section:(unint64_t)section;
- (id)tableView:(id)view contextMenuConfigurationForCardInfoAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point section:(unint64_t)section;
- (id)tableView:(id)view contextMenuConfigurationForTransactionAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path section:(unint64_t)section;
- (id)tableView:(id)view viewForFooterInSectionCase:(unint64_t)case;
- (id)tableView:(id)view viewForHeaderInSectionCase:(unint64_t)case;
- (id)titleForFooterInSection:(unint64_t)section;
- (id)titleForHeaderInSection:(unint64_t)section;
- (id)verifySSNTableViewCellForTableView:(id)view atIndexPath:(id)path;
- (int64_t)_numberOfAccountServiceCreditDetailsRowsEnabled;
- (int64_t)_numberOfAccountServicePhysicalCardRowsEnabled;
- (int64_t)_numberOfAccountServiceRewardsRowsEnabled;
- (int64_t)_rowIndexForExpressTransitSettingsCell;
- (int64_t)_transitCellGenerateCellWithOutput:(id *)output forRowIndex:(int64_t)index tableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSectionCase:(unint64_t)case;
- (unint64_t)_accessPersonInfoSectionGenerateCellWithOutput:(id *)output forRowIndex:(int64_t)index tableView:(id)view;
- (unint64_t)_accountFeature;
- (unint64_t)_accountServiceCreditDetailsRowForRowIndex:(int64_t)index;
- (unint64_t)_accountServicePhysicalCardRowForRowIndex:(int64_t)index;
- (unint64_t)_accountServiceRewardsRowForRowIndex:(int64_t)index;
- (unint64_t)_cardInfoSectionGenerateCellWithOutput:(id *)output forRowIndex:(int64_t)index tableView:(id)view;
- (unint64_t)_contactBankCellWithOutput:(id *)output forRowIndex:(int64_t)index tableView:(id)view;
- (unint64_t)_numberOfPeerPaymentMoneyActionsEnabled;
- (unint64_t)_numberOfPrivacyTermsInfoRows;
- (unint64_t)_passOperationsCellWithOutput:(id *)output forRowIndex:(int64_t)index tableView:(id)view;
- (unint64_t)_passStateSectionGenerateCellWithOutput:(id *)output forRowIndex:(int64_t)index tableView:(id)view;
- (unint64_t)_peerPaymentMoneyActionForRowIndex:(unint64_t)index;
- (unint64_t)_privacyTermsInfoRowTypeForRowIndex:(int64_t)index;
- (unint64_t)_removeUnsupportedContactIssuerOptions:(unint64_t)options;
- (unint64_t)_rowIndexForAccountServicePhysicalCardRow:(unint64_t)row;
- (unint64_t)_rowIndexForPeerPaymentActionRow:(unint64_t)row;
- (unint64_t)_rowIndexForPrivacyTermsInfoRowType:(unint64_t)type;
- (unint64_t)numberOfAccountUserRowsInTableView:(id)view;
- (void)_accountUsersForAccountIdentifier:(id)identifier completion:(id)completion;
- (void)_activationFooterPressed:(id)pressed;
- (void)_ampEligbilityUpdated:(BOOL)updated;
- (void)_applyDefaultDynamicStylingToCell:(id)cell;
- (void)_applyDefaultStaticStylingToCell:(id)cell;
- (void)_applyIvarsFromCollectedPropertiesViewModel:(id)model;
- (void)_applyStaticPassPropertiesForPass;
- (void)_automaticPresentationSwitchChanged:(id)changed;
- (void)_beginReportingForSubjectIfNecessary:(id)necessary;
- (void)_buildSections;
- (void)_cancelPendingTransactionTimer;
- (void)_dailyCashSwitchChanged:(id)changed;
- (void)_decorateSections;
- (void)_didSelectAccountServiceBankAccountsAtIndexPath:(id)path;
- (void)_didSelectAccountServiceCardNumbersAtIndexPath:(id)path;
- (void)_didSelectAccountServiceMakeDefaultAtIndexPath:(id)path;
- (void)_didSelectAccountServicePhysicalCardAtIndexPath:(id)path;
- (void)_didSelectAccountServiceRewardsDetailsAtIndexPath:(id)path;
- (void)_didSelectAutomaticallyAcceptPaymentsPreferenceAtIndexPath:(id)path;
- (void)_didSelectBalanceAtRowIndex:(int64_t)index;
- (void)_didSelectBalanceOrCommutePlanCellAtIndexPath:(id)path;
- (void)_didSelectBillingAddress;
- (void)_didSelectCardInfoCellAtIndexPath:(id)path;
- (void)_didSelectCommutePlanAtRowIndex:(int64_t)index;
- (void)_didSelectContactBankSectionAtIndexPath:(id)path;
- (void)_didSelectCreditDetailsCell:(id)cell;
- (void)_didSelectDeleteCardFromSourceItem:(id)item;
- (void)_didSelectFamilySharingAtIndexPath:(id)path;
- (void)_didSelectFixPeerPaymentAtIndexPath:(id)path;
- (void)_didSelectInstallmentPlansAtIndexPath:(id)path;
- (void)_didSelectMerchantTokensCell;
- (void)_didSelectNetworkBenefitsCell;
- (void)_didSelectPassInGroupAtIndexPath:(id)path;
- (void)_didSelectPassOperationsSectionAtIndexPath:(id)path;
- (void)_didSelectPassStateSection;
- (void)_didSelectPaymentApplicationSectionRowAtIndexPath:(id)path;
- (void)_didSelectPeerPaymentAccountActionAtIndexPath:(id)path;
- (void)_didSelectPeerPaymentBankAccountsAtIndexPath:(id)path;
- (void)_didSelectPeerPaymentManualIdentityVerificationAtIndexPath:(id)path;
- (void)_didSelectPeerPaymentMoneyActionAtRow:(int64_t)row;
- (void)_didSelectPeerPaymentParticipantGradutionAtIndexPath:(id)path;
- (void)_didSelectPeerPaymentStatementAtIndexPath:(id)path;
- (void)_didSelectPrivacySectionAtRow:(int64_t)row;
- (void)_didSelectProductBenefitsCell;
- (void)_didSelectRedeemAtIndexPath:(id)path;
- (void)_didSelectServicingWalletLink;
- (void)_didSelectTransactionAtIndexPath:(id)path;
- (void)_didSelectTransactionCountByPeriodAtIndexPath:(id)path;
- (void)_didSelectTransactionTransactionsSwitchInTableView:(id)view atIndexPath:(id)path;
- (void)_didSelectTransferCardAtIndexPath:(id)path;
- (void)_didSelectTransitTicketAtRow:(int64_t)row;
- (void)_doneLoadingPeerPaymentAccountAction;
- (void)_endReportingIfNecessary;
- (void)_fetchBalanceRemindersWithActionForBalanceIdentifier:(id)identifier transitProperties:(id)properties balances:(id)balances pass:(id)pass withCompletion:(id)completion;
- (void)_fetchMerchantTokens;
- (void)_handleAccountServiceAccountDidChangeNotification:(id)notification;
- (void)_handlePeerPaymentPreferencestDidChangeNotification:(id)notification;
- (void)_handleProvisioningError:(id)error;
- (void)_handleUpdatedBalanceReminder:(id)reminder forBalanceWithIdentifier:(id)identifier;
- (void)_ingestPassFields;
- (void)_loadAdditionalAccountDataWithCompletion:(id)completion;
- (void)_loadBankConnectTransactions;
- (void)_loadFamilyCollectionIfNecessaryWithCompletion:(id)completion;
- (void)_messagesSwitchChanged:(id)changed;
- (void)_normalizeContentOffset;
- (void)_notificationSwitchChanged:(id)changed;
- (void)_passSettingsChanged:(id)changed;
- (void)_pendingInvitationsForAccountIdentifier:(id)identifier completion:(id)completion;
- (void)_preflightWatchForTransferWithCompletion:(id)completion;
- (void)_presentInvitation:(id)invitation completion:(id)completion;
- (void)_presentLegalDisclosureViewController;
- (void)_presentMerchantDetailsViewWithTransaction:(id)transaction forCell:(id)cell;
- (void)_presentPhysicalCardPasswordAuthorization:(id)authorization;
- (void)_presentStopSharingAlertForTableView:(id)view indexPath:(id)path;
- (void)_presentTermsAndConditionsWithRow:(unint64_t)row;
- (void)_presentVerificationFlow;
- (void)_refreshDisplayWithBalances:(id)balances plans:(id)plans transitProperties:(id)properties;
- (void)_refreshFinished:(BOOL)finished;
- (void)_refreshPaymentApplicationsSelection;
- (void)_refreshStaleBalanceModelForPass:(id)pass completion:(id)completion;
- (void)_reloadMerchantTokenRows;
- (void)_reloadPassAndView;
- (void)_reloadTitle;
- (void)_reloadTransactionSectionsAnimated:(BOOL)animated forceReload:(BOOL)reload;
- (void)_reloadTransactionSourceCollectionIfNecessary;
- (void)_reloadTransactionsWithCompletion:(id)completion;
- (void)_reloadView;
- (void)_reportAddAccountUser;
- (void)_reportPassDetailsAnalyticsForTappedButtonTag:(id)tag additionalAnalytics:(id)analytics;
- (void)_reportPassDetailsAnalyticsForTappedRowTag:(id)tag additionalAnalytics:(id)analytics;
- (void)_reportPassDetailsAnalyticsForToggleTag:(id)tag toggleResult:(BOOL)result additionalAnalytics:(id)analytics;
- (void)_resetIdentityProofingData;
- (void)_resetSwitchesIfNecessary:(id)necessary;
- (void)_setupWidgetViewIfNeeded;
- (void)_showPeerPaymentActionViewControllerForAction:(unint64_t)action;
- (void)_showSpinner:(BOOL)spinner inCell:(id)cell detailText:(id)text;
- (void)_showSpinner:(BOOL)spinner inCell:(id)cell overrideTextColor:(id)color;
- (void)_startPendingTransactionTimer;
- (void)_startPrecursorProvisioningWithController:(id)controller completion:(id)completion;
- (void)_tabBarSegmentChanged:(id)changed;
- (void)_transactionsSwitchChanged:(id)changed;
- (void)_transitExpressStateDidChange;
- (void)_updateAmpEligibility;
- (void)_updateBalanceIfNecessary;
- (void)_updateCashbackPeerPaymentResolutionSection;
- (void)_updateDisplayableBalances;
- (void)_updateDisplayableBalancesPlansAndTransitPropertiesForPass:(id)pass balances:(id)balances plans:(id)plans transitProperties:(id)properties withCompletion:(id)completion;
- (void)_updateFamilyRows;
- (void)_updateHeaderActionView;
- (void)_updatePassPropertiesForPass:(id)pass completion:(id)completion;
- (void)_updatePassSnapshot;
- (void)_updatePassesInGroupSectionWithUpdatedGroup:(id)group;
- (void)_updatePeerPaymentAccount;
- (void)_updatePeerPaymentFamilyMemberRows;
- (void)_updatePeerPaymentPreferences;
- (void)_updatePeerPaymentPreferencesWithNewPreferences:(id)preferences;
- (void)_updateSectionControllersWithSelectedSectionSegment;
- (void)_updateTabBar;
- (void)_updateTabBarWithSegments:(id)segments;
- (void)_updateTransitExpressState;
- (void)accountUsersChanged:(id)changed forAccountIdentifier:(id)identifier;
- (void)addMoney;
- (void)ampEnrollmentManager:(id)manager didEnrollPaymentPass:(id)pass success:(BOOL)success;
- (void)appViewContentSizeChanged:(id)changed;
- (void)autoReloadSetupControllerDidComplete;
- (void)balanceDetailsViewController:(id)controller didUpdateBalanceReminder:(id)reminder forBalance:(id)balance;
- (void)callIssuerWithSourceItem:(id)item;
- (void)contactsDidChangeForContactResolver:(id)resolver;
- (void)contentIsLoaded;
- (void)dealloc;
- (void)deleteTransaction:(id)transaction completionHandler:(id)handler;
- (void)didChangeVerificationPresentation;
- (void)didEvaluatePolicyToOpenBankConnectAccountCredentials:(id)credentials accountCredentialsTitle:(id)title;
- (void)didFindLinkableBankConnectInstitution;
- (void)didFinishTogglingExpress;
- (void)didReloadBankConnectAccountCredentials;
- (void)didSelectAccountUserCellInTableView:(id)view atIndexPath:(id)path;
- (void)didSelectDeleteReAddForSectionController:(id)controller completion:(id)completion;
- (void)didSelectDigitalIDForSectionController:(id)controller tableViewCell:(id)cell completion:(id)completion;
- (void)didSelectIdentityDocumentCellInTableView:(id)view atIndexPath:(id)path;
- (void)didSelectInDemoMode;
- (void)didSelectMakePaymentWithConfig:(id)config;
- (void)didSelectManageExpress;
- (void)didSelectPayment:(id)payment;
- (void)didSelectPrecursorPassRequestForAction:(id)action controller:(id)controller sourceItem:(id)item completion:(id)completion;
- (void)didSelectReplaceBiometricCellInTableView:(id)view atIndexPath:(id)path;
- (void)didSelectVerifySSNCellInTableView:(id)view atIndexPath:(id)path;
- (void)didStartBankConnectAuthorizationForInstitution:(id)institution withCompletion:(id)completion;
- (void)didUpdateBankConnectAccount:(id)account;
- (void)didUpdateFamilyMembers:(id)members;
- (void)didUpdateLatestTransactions:(id)transactions monthlyTransactionGroups:(id)groups yearlyTransactionGroups:(id)transactionGroups;
- (void)emailIssuer;
- (void)executeAfterContentIsLoaded:(id)loaded;
- (void)featureApplicationAdded:(id)added;
- (void)featureApplicationChanged:(id)changed;
- (void)featureApplicationRemoved:(id)removed;
- (void)launchAppURL:(id)l;
- (void)launchURL:(id)l;
- (void)linkedApplicationDidChangeState:(id)state;
- (void)loadAccountUsersWithCompletion:(id)completion;
- (void)loadPendingAccountUserInvitationsWithCompletion:(id)completion;
- (void)loadView;
- (void)merchantTokenDetailViewController:(id)controller didDeleteMerchantToken:(id)token;
- (void)merchantTokensViewController:(id)controller didDeleteMerchantToken:(id)token;
- (void)openBusinessChat;
- (void)openIssuerWebsite;
- (void)passHeaderViewPassWasDeleted:(id)deleted;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableMessageService:(BOOL)service;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableTransactionService:(BOOL)service;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceivePlanUpdate:(id)update;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateBalanceReminder:(id)reminder forBalanceWithIdentifier:(id)withIdentifier;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties;
- (void)paymentSetupDidFinish:(id)finish;
- (void)peerPaymentAccountResolutionController:(id)controller requestsDismissCurrentViewControllerAnimated:(BOOL)animated;
- (void)peerPaymentActionViewControllerDidCancel:(id)cancel;
- (void)peerPaymentActionViewControllerDidPerformAction:(id)action;
- (void)performActionViewControllerDidCancel:(id)cancel;
- (void)performActionViewControllerDidPerformAction:(id)action;
- (void)physicalCardActionController:(id)controller didChangeToState:(int64_t)state withError:(id)error;
- (void)physicalCardsChanged:(id)changed forAccountIdentifier:(id)identifier;
- (void)popViewControllerInMerchantTokenStack;
- (void)postServiceModeNotification;
- (void)presentAccountUserDetailsForAccountUserAltDSID:(id)d;
- (void)presentAccountUserDetailsForRowModel:(id)model;
- (void)presentAccountUserInvitationForRowModel:(id)model;
- (void)presentAccountUserInvitationWithIdentifier:(id)identifier;
- (void)presentActivatePhysicalCard;
- (void)presentAddAccountUser;
- (void)presentAddCard;
- (void)presentAuthRequestForPolicy:(int64_t)policy completion:(id)completion;
- (void)presentBalanceDetails;
- (void)presentBankAccounts;
- (void)presentBillPaymentWithConfig:(id)config;
- (void)presentCardNumbers;
- (void)presentCombinedPassActionViewControllerFromBundle:(id)bundle;
- (void)presentDailyCashForDateComponents:(id)components;
- (void)presentDeleteCard;
- (void)presentISO18013Details;
- (void)presentIdentityVerification;
- (void)presentInstallmentPlanWithIdentifier:(id)identifier;
- (void)presentInstallmentPlansForFeature:(unint64_t)feature;
- (void)presentMakeDefaultAtApple;
- (void)presentMerchantTokenViewController:(id)controller;
- (void)presentOrderPhysicalCard;
- (void)presentPassActionViewController:(id)controller;
- (void)presentPassAlertIfNecessary;
- (void)presentPassDetailDrillInForField:(id)field;
- (void)presentReplacePhysicalCard;
- (void)presentSchedulePayments;
- (void)presentShareAccount;
- (void)presentTermsAcceptance;
- (void)presentTermsAndConditions;
- (void)presentTrackPhysicalCard;
- (void)presentTransactionDetailsForTransaction:(id)transaction presentingView:(int64_t)view;
- (void)recomputeMappedSectionsAndReloadSections:(id)sections;
- (void)refreshControlValueChanged:(id)changed;
- (void)reloadData:(BOOL)data;
- (void)reloadNecessarySectionControllerSections;
- (void)reloadPassDetailSections:(id)sections updates:(id)updates;
- (void)reloadSection:(unint64_t)section updates:(id)updates;
- (void)reloadSections:(id)sections;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setDeleteOverrider:(id)overrider;
- (void)setDetailTextColor:(id)color;
- (void)setHighlightColor:(id)color;
- (void)setLinkTextColor:(id)color;
- (void)setPrimaryTextColor:(id)color;
- (void)setShowDoneButton:(BOOL)button;
- (void)setWarningTextColor:(id)color;
- (void)sharesSectionControllerDidSelectViewEntitlements:(id)entitlements;
- (void)showStatementDetailsWithIdentifier:(id)identifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path section:(unint64_t)section;
- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction;
- (void)transactionSourceIdentifier:(id)identifier didRemoveTransactionWithIdentifier:(id)withIdentifier;
- (void)updateActivationFooterViewContents;
- (void)userInfoChanged;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willToggleExpress;
@end

@implementation PKPaymentPassDetailViewController

- (BOOL)shouldShowAccountUsersSection
{
  account = [(PKPaymentPassDetailViewController *)self account];
  v4 = account;
  if (account && ([account creditDetails], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = MEMORY[0x1E69B8770];
    transactionSourceCollection = [(PKPaymentPassDetailViewController *)self transactionSourceCollection];
    LOBYTE(v6) = [v6 shouldDisplayTransactionsForTransactionSourceCollection:transactionSourceCollection withAccount:v4];

    v8 = v6 ^ 1;
  }

  else
  {
    v8 = 1;
  }

  sortedFamilyMemberRowModels = [(PKPaymentPassDetailViewController *)self sortedFamilyMemberRowModels];
  v10 = [sortedFamilyMemberRowModels count];

  _showsAddAccountUserButton = v8 ^ 1;
  if ((v8 & 1) == 0 && !v10)
  {
    _showsAddAccountUserButton = [(PKPaymentPassDetailViewController *)self _showsAddAccountUserButton];
  }

  return _showsAddAccountUserButton;
}

- (BOOL)canSelectAccountUserRowAtIndexPath:(id)path
{
  pathCopy = path;
  sortedFamilyMemberRowModels = [(PKPaymentPassDetailViewController *)self sortedFamilyMemberRowModels];
  v6 = [sortedFamilyMemberRowModels count];

  v7 = [pathCopy row];
  if (v7 >= v6)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    account = [(PKPaymentPassDetailViewController *)self account];
    [account state];
    v9 = PKAccountStateIsTerminal() ^ 1;
  }

  return v9;
}

- (unint64_t)numberOfAccountUserRowsInTableView:(id)view
{
  sortedFamilyMemberRowModels = [(PKPaymentPassDetailViewController *)self sortedFamilyMemberRowModels];
  v5 = [sortedFamilyMemberRowModels count];
  v6 = v5 + [(PKPaymentPassDetailViewController *)self _showsAddAccountUserButton];

  return v6;
}

- (id)accountUserTableViewCellForTableView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  sortedFamilyMemberRowModels = [(PKPaymentPassDetailViewController *)self sortedFamilyMemberRowModels];
  v9 = [sortedFamilyMemberRowModels count];

  if ([pathCopy row] >= v9)
  {
    [(PKPaymentPassDetailViewController *)self _addAccounUserTableViewCellForTableView:viewCopy atIndexPath:pathCopy];
  }

  else
  {
    [(PKPaymentPassDetailViewController *)self _accountUserTableViewCellForTableView:viewCopy atIndexPath:pathCopy];
  }
  v10 = ;

  [v10 setAccessibilityIdentifier:*MEMORY[0x1E69B93C0]];

  return v10;
}

- (void)didSelectAccountUserCellInTableView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  sortedFamilyMemberRowModels = [(PKPaymentPassDetailViewController *)self sortedFamilyMemberRowModels];
  v6 = [sortedFamilyMemberRowModels count];
  v7 = [pathCopy row];

  if (v7 >= v6)
  {
    [(PKPaymentPassDetailViewController *)self presentAddAccountUser];
  }

  else
  {
    v8 = [sortedFamilyMemberRowModels objectAtIndex:v7];
    accountUser = [v8 accountUser];
    invitation = [v8 invitation];
    v11 = invitation;
    if (accountUser)
    {
      [(PKPaymentPassDetailViewController *)self presentAccountUserDetailsForRowModel:v8];
    }

    else if (invitation)
    {
      v20 = [PKAccountUserDetailViewController alloc];
      pass = [(PKPaymentPassDetailViewController *)self pass];
      detailViewStyle = [(PKPaymentPassDetailViewController *)self detailViewStyle];
      account = [(PKPaymentPassDetailViewController *)self account];
      familyCollection = [(PKPaymentPassDetailViewController *)self familyCollection];
      contactAvatarManager = [(PKPaymentPassDetailViewController *)self contactAvatarManager];
      contactResolver = [(PKPaymentPassDetailViewController *)self contactResolver];
      v18 = [(PKAccountUserDetailViewController *)v20 initWithPaymentPass:pass style:detailViewStyle account:account accountUserInvitation:v11 familyMemberCollection:familyCollection avatarManager:contactAvatarManager contactResolver:contactResolver];

      navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
      if ([navigationController pk_settings_useStateDrivenNavigation])
      {
        [navigationController pk_settings_pushViewController:v18];
      }

      else
      {
        [navigationController pushViewController:v18 animated:1];
      }
    }
  }
}

- (BOOL)shouldShowAccountUserStopSharingSection
{
  accountUserCollection = [(PKPaymentPassDetailViewController *)self accountUserCollection];
  currentAccountUser = [accountUserCollection currentAccountUser];

  if (currentAccountUser)
  {
    v4 = [currentAccountUser accessLevel] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accountUserStopSharingTableViewCellForTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  _removeCardTextColor = [(PKPaymentPassDetailViewController *)self _removeCardTextColor];
  v7 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:_removeCardTextColor forTableView:viewCopy];

  textLabel = [v7 textLabel];
  v9 = PKLocalizedFeatureString();
  [textLabel setText:v9];

  [(PKPaymentPassDetailViewController *)self _showSpinner:[(PKPaymentPassDetailViewController *)self isRemovingAccountUser] inCell:v7 overrideTextColor:_removeCardTextColor];
  [v7 setAccessibilityIdentifier:*MEMORY[0x1E69B9578]];

  return v7;
}

- (void)loadAccountUsersWithCompletion:(id)completion
{
  completionCopy = completion;
  account = [(PKPaymentPassDetailViewController *)self account];
  accountIdentifier = [account accountIdentifier];

  if (accountIdentifier)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __83__PKPaymentPassDetailViewController_PKAccountUser__loadAccountUsersWithCompletion___block_invoke;
    v7[3] = &unk_1E8010C98;
    v7[4] = self;
    v8 = completionCopy;
    [(PKPaymentPassDetailViewController *)self _accountUsersForAccountIdentifier:accountIdentifier completion:v7];
  }
}

uint64_t __83__PKPaymentPassDetailViewController_PKAccountUser__loadAccountUsersWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setAccountUserCollection:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)loadPendingAccountUserInvitationsWithCompletion:(id)completion
{
  completionCopy = completion;
  account = [(PKPaymentPassDetailViewController *)self account];
  accountIdentifier = [account accountIdentifier];

  if (accountIdentifier)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __100__PKPaymentPassDetailViewController_PKAccountUser__loadPendingAccountUserInvitationsWithCompletion___block_invoke;
    v7[3] = &unk_1E8010DF8;
    v7[4] = self;
    v8 = completionCopy;
    [(PKPaymentPassDetailViewController *)self _pendingInvitationsForAccountIdentifier:accountIdentifier completion:v7];
  }
}

uint64_t __100__PKPaymentPassDetailViewController_PKAccountUser__loadPendingAccountUserInvitationsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setAccountUserInvitations:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)presentAccountUserDetailsForRowModel:(id)model
{
  modelCopy = model;
  v5 = [PKAccountUserDetailViewController alloc];
  pass = [(PKPaymentPassDetailViewController *)self pass];
  detailViewStyle = [(PKPaymentPassDetailViewController *)self detailViewStyle];
  account = [(PKPaymentPassDetailViewController *)self account];
  accountUser = [modelCopy accountUser];

  familyCollection = [(PKPaymentPassDetailViewController *)self familyCollection];
  contactAvatarManager = [(PKPaymentPassDetailViewController *)self contactAvatarManager];
  contactResolver = [(PKPaymentPassDetailViewController *)self contactResolver];
  v14 = [(PKAccountUserDetailViewController *)v5 initWithPaymentPass:pass style:detailViewStyle account:account accountUser:accountUser familyMemberCollection:familyCollection avatarManager:contactAvatarManager contactResolver:contactResolver];

  navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_pushViewController:v14];
  }

  else
  {
    [navigationController pushViewController:v14 animated:1];
  }
}

- (void)presentAccountUserInvitationForRowModel:(id)model
{
  invitation = [model invitation];
  [(PKPaymentPassDetailViewController *)self _presentInvitation:invitation completion:0];
}

- (BOOL)shouldShowVerifySSNSection
{
  accountUserCollection = [(PKPaymentPassDetailViewController *)self accountUserCollection];
  currentAccountUser = [accountUserCollection currentAccountUser];

  LOBYTE(accountUserCollection) = [currentAccountUser identityStatus] == 2;
  return accountUserCollection;
}

- (id)verifySSNTableViewCellForTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  v6 = PKLocalizedFeatureString();
  v7 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v6 forTableView:viewCopy];

  [v7 setAccessibilityIdentifier:*MEMORY[0x1E69B9578]];

  return v7;
}

- (void)didSelectVerifySSNCellInTableView:(id)view atIndexPath:(id)path
{
  v5 = [PKAccountVerifySSNPageViewController alloc];
  account = [(PKPaymentPassDetailViewController *)self account];
  detailViewStyle = [(PKPaymentPassDetailViewController *)self detailViewStyle];
  v8 = 3;
  if (detailViewStyle != 1)
  {
    v8 = 0;
  }

  if (detailViewStyle == 2)
  {
    v9 = 4;
  }

  else
  {
    v9 = v8;
  }

  v11 = [(PKAccountVerifySSNPageViewController *)v5 initWithAccount:account context:v9];

  v10 = [[PKNavigationController alloc] initWithRootViewController:v11];
  [(PKPaymentPassDetailViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)_presentInvitation:(id)invitation completion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x1E69B8D48];
  invitationCopy = invitation;
  v9 = [v7 alloc];
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v11 = [v9 initWithWebService:mEMORY[0x1E69B8EF8]];

  v12 = [PKApplyControllerConfiguration alloc];
  detailViewStyle = [(PKPaymentPassDetailViewController *)self detailViewStyle];
  v14 = 3;
  if (detailViewStyle != 1)
  {
    v14 = 0;
  }

  if (detailViewStyle == 2)
  {
    v15 = 4;
  }

  else
  {
    v15 = v14;
  }

  v16 = [(PKApplyControllerConfiguration *)v12 initWithSetupDelegate:0 context:v15 provisioningController:v11];
  [(PKApplyControllerConfiguration *)v16 setFeatureApplication:invitationCopy];

  v17 = [[PKApplyController alloc] initWithApplyConfiguration:v16];
  v18 = MEMORY[0x1E69B8330];
  account = [(PKPaymentPassDetailViewController *)self account];
  v20 = [v18 analyticsAccountTypeForAccount:account];
  [(PKApplyController *)v17 setAnalyticsExistingAccountType:v20];

  [(PKPaymentPassDetailViewController *)self setApplyController:v17];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __82__PKPaymentPassDetailViewController_PKAccountUser___presentInvitation_completion___block_invoke;
  v22[3] = &unk_1E8010CC0;
  v22[4] = self;
  v23 = completionCopy;
  v21 = completionCopy;
  [(PKApplyController *)v17 nextViewControllerWithCompletion:v22];
}

void __82__PKPaymentPassDetailViewController_PKAccountUser___presentInvitation_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    v6 = [[PKNavigationController alloc] initWithRootViewController:v9];
  }

  else
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    v6 = PKAlertForDisplayableErrorWithHandlers(v5, 0, 0, 0);
  }

  v7 = v6;
  [*(a1 + 32) presentViewController:v6 animated:1 completion:0];

LABEL_6:
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

- (id)_removeCardTextColor
{
  warningTextColor = [(PKPaymentPassDetailViewController *)self warningTextColor];
  v3 = warningTextColor;
  if (warningTextColor)
  {
    systemRedColor = warningTextColor;
  }

  else
  {
    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  }

  v5 = systemRedColor;

  return v5;
}

- (void)_presentStopSharingAlertForTableView:(id)view indexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![(PKPaymentPassDetailViewController *)self isRemovingAccountUser])
  {
    v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
    v9 = PKLocalizedFeatureString();
    v10 = PKLocalizedFeatureString();
    v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v10 preferredStyle:0];
    popoverPresentationController = [v11 popoverPresentationController];
    [popoverPresentationController setSourceView:v8];

    v13 = MEMORY[0x1E69DC648];
    v14 = PKLocalizedFeatureString();
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __99__PKPaymentPassDetailViewController_PKAccountUser___presentStopSharingAlertForTableView_indexPath___block_invoke;
    v19[3] = &unk_1E8010D38;
    v19[4] = self;
    v20 = viewCopy;
    v21 = pathCopy;
    v15 = [v13 actionWithTitle:v14 style:2 handler:v19];
    [v11 addAction:v15];

    v16 = MEMORY[0x1E69DC648];
    v17 = PKLocalizedFeatureString();
    v18 = [v16 actionWithTitle:v17 style:1 handler:0];
    [v11 addAction:v18];

    [(PKPaymentPassDetailViewController *)self presentViewController:v11 animated:1 completion:0];
  }
}

void __99__PKPaymentPassDetailViewController_PKAccountUser___presentStopSharingAlertForTableView_indexPath___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] account];
  [a1[4] setRemovingAccountUser:1];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = [a1[5] cellForRowAtIndexPath:a1[6]];
  v5 = [a1[4] _removeCardTextColor];
  [a1[4] _showSpinner:1 inCell:v21[5] overrideTextColor:v5];
  v6 = [a1[4] accountService];
  v7 = [a1[4] accountUserCollection];
  v8 = [v7 currentAccountUser];
  v9 = [v8 altDSID];
  v10 = [v4 accountIdentifier];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __99__PKPaymentPassDetailViewController_PKAccountUser___presentStopSharingAlertForTableView_indexPath___block_invoke_51;
  v14[3] = &unk_1E8010D10;
  v11 = a1[5];
  v14[4] = a1[4];
  v19 = &v20;
  v15 = v11;
  v16 = a1[6];
  v12 = v5;
  v17 = v12;
  v13 = v4;
  v18 = v13;
  [v6 deleteAccountUserWithAltDSID:v9 forAccountWithIdentifier:v10 completion:v14];

  _Block_object_dispose(&v20, 8);
}

void __99__PKPaymentPassDetailViewController_PKAccountUser___presentStopSharingAlertForTableView_indexPath___block_invoke_51(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PKPaymentPassDetailViewController_PKAccountUser___presentStopSharingAlertForTableView_indexPath___block_invoke_2;
  block[3] = &unk_1E8010CE8;
  v15 = *(a1 + 72);
  v9 = *(a1 + 32);
  v4 = *(&v9 + 1);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v11 = v9;
  v12 = v7;
  v13 = v3;
  v14 = *(a1 + 64);
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __99__PKPaymentPassDetailViewController_PKAccountUser___presentStopSharingAlertForTableView_indexPath___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setRemovingAccountUser:0];
  v2 = [*(a1 + 40) cellForRowAtIndexPath:*(a1 + 48)];
  v3 = *(*(a1 + 80) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1 + 32) _showSpinner:0 inCell:*(*(*(a1 + 80) + 8) + 40) overrideTextColor:*(a1 + 56)];
  v5 = *(a1 + 64);
  if (v5)
  {
    v8 = +[PKAccountFlowController displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:](PKAccountFlowController, "displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:", v5, [*(a1 + 72) feature], 0, 0);
    v6 = PKAlertForDisplayableErrorWithHandlers(v8, 0, 0, 0);
    [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    v8 = [*(a1 + 32) pass];
    v6 = [*(a1 + 32) deleteOverrider];
    v7 = [*(a1 + 32) passLibraryDataProvider];
    +[PKPassDeleteHelper deletePaymentPass:withDeleteHander:passLibraryDataProvider:presentingViewController:detailViewStyle:](PKPassDeleteHelper, "deletePaymentPass:withDeleteHander:passLibraryDataProvider:presentingViewController:detailViewStyle:", v8, v6, v7, *(a1 + 32), [*(a1 + 32) detailViewStyle]);
  }
}

- (void)presentAddAccountUser
{
  account = [(PKPaymentPassDetailViewController *)self account];
  accountUserCollection = [(PKPaymentPassDetailViewController *)self accountUserCollection];
  familyCollection = [(PKPaymentPassDetailViewController *)self familyCollection];
  detailViewStyle = [(PKPaymentPassDetailViewController *)self detailViewStyle];
  v7 = 3;
  if (detailViewStyle != 1)
  {
    v7 = 0;
  }

  if (detailViewStyle == 2)
  {
    v8 = 4;
  }

  else
  {
    v8 = v7;
  }

  [PKAccountInvitationController presentCreateAccountUserInvitationWithViewController:self account:account accountUserCollection:accountUserCollection familyMemberCollection:familyCollection context:v8 completion:0];

  [(PKPaymentPassDetailViewController *)self _reportAddAccountUser];
}

- (void)_accountUsersForAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v6 = MEMORY[0x1E69B8400];
  identifierCopy = identifier;
  sharedInstance = [v6 sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __97__PKPaymentPassDetailViewController_PKAccountUser___accountUsersForAccountIdentifier_completion___block_invoke;
  v10[3] = &unk_1E8010D60;
  v11 = completionCopy;
  v9 = completionCopy;
  [sharedInstance accountUsersForAccountWithIdentifier:identifierCopy completion:v10];
}

void __97__PKPaymentPassDetailViewController_PKAccountUser___accountUsersForAccountIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69B8450];
  v4 = a2;
  v5 = [[v3 alloc] initWithAccountUsers:v4];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __97__PKPaymentPassDetailViewController_PKAccountUser___accountUsersForAccountIdentifier_completion___block_invoke_2;
  v8[3] = &unk_1E8010E20;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

- (void)_pendingInvitationsForAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  paymentServiceDataProvider = [(PKPaymentPassDetailViewController *)self paymentServiceDataProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __103__PKPaymentPassDetailViewController_PKAccountUser___pendingInvitationsForAccountIdentifier_completion___block_invoke;
  v10[3] = &unk_1E8010DA8;
  v11 = completionCopy;
  v9 = completionCopy;
  [paymentServiceDataProvider featureApplicationsForAccountIdentifier:identifierCopy completion:v10];
}

void __103__PKPaymentPassDetailViewController_PKAccountUser___pendingInvitationsForAccountIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __103__PKPaymentPassDetailViewController_PKAccountUser___pendingInvitationsForAccountIdentifier_completion___block_invoke_2;
  v5[3] = &unk_1E8010DD0;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __103__PKPaymentPassDetailViewController_PKAccountUser___pendingInvitationsForAccountIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pk_objectsPassingTest:&__block_literal_global_0];
  (*(*(a1 + 40) + 16))();
}

uint64_t __103__PKPaymentPassDetailViewController_PKAccountUser___pendingInvitationsForAccountIdentifier_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 applicationType] == 2)
  {
    [v2 applicationState];
    IsPendingInvitation = PKFeatureApplicationStateIsPendingInvitation();
  }

  else
  {
    IsPendingInvitation = 0;
  }

  return IsPendingInvitation;
}

- (id)_accountUserTableViewCellForTableView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"AccountUserCellReuseIdentifier"];
  if (!v7)
  {
    v7 = [[PKFamilyMemberTableViewCell alloc] initWithStyle:3 reuseIdentifier:@"AccountUserCellReuseIdentifier"];
  }

  sortedFamilyMemberRowModels = [(PKPaymentPassDetailViewController *)self sortedFamilyMemberRowModels];
  v9 = [sortedFamilyMemberRowModels objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  [(PKFamilyMemberTableViewCell *)v7 setRowModel:v9];
  v10 = [(PKPaymentPassDetailViewController *)self canSelectAccountUserRowAtIndexPath:pathCopy];

  if (!v10)
  {
    [(PKFamilyMemberTableViewCell *)v7 setAccessoryType:0];
  }

  return v7;
}

- (id)_addAccounUserTableViewCellForTableView:(id)view atIndexPath:(id)path
{
  v4 = [view dequeueReusableCellWithIdentifier:{@"AddAccountUserCellReuseIdentifier", path}];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"AddAccountUserCellReuseIdentifier"];
  }

  defaultContentConfiguration = [v4 defaultContentConfiguration];
  v6 = PKLocalizedFeatureString();
  [defaultContentConfiguration setText:v6];

  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus"];
  [defaultContentConfiguration setImage:v7];

  textProperties = [defaultContentConfiguration textProperties];
  linkColor = [MEMORY[0x1E69DC888] linkColor];
  [textProperties setColor:linkColor];

  [v4 setContentConfiguration:defaultContentConfiguration];
  [v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9400]];

  return v4;
}

- (BOOL)_showsAddAccountUserButton
{
  account = [(PKPaymentPassDetailViewController *)self account];
  v3 = [PKAccountInvitationController canInviteAccountUserWithAccount:account];

  return v3;
}

- (void)_reportAddAccountUser
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  account = [(PKPaymentPassDetailViewController *)self account];
  if (account)
  {
    account2 = [(PKPaymentPassDetailViewController *)self account];
    analyticsEventAccountType = [account2 analyticsEventAccountType];
  }

  else
  {
    analyticsEventAccountType = *MEMORY[0x1E69BA698];
  }

  if (analyticsEventAccountType)
  {
    [v3 setObject:analyticsEventAccountType forKey:*MEMORY[0x1E69BA688]];
  }

  [v3 setObject:*MEMORY[0x1E69BB230] forKey:*MEMORY[0x1E69BB170]];
  [v3 setObject:*MEMORY[0x1E69BA7C8] forKey:*MEMORY[0x1E69BA680]];
  v30 = v3;
  [v3 setObject:*MEMORY[0x1E69BAC28] forKey:*MEMORY[0x1E69BABE8]];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  accountUserCollection = [(PKPaymentPassDetailViewController *)self accountUserCollection];
  accountUsers = [accountUserCollection accountUsers];

  v9 = [accountUsers countByEnumeratingWithState:&v32 objects:v36 count:16];
  v29 = analyticsEventAccountType;
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v31 = 0;
    v13 = *v33;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(accountUsers);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        if (([v15 isCurrentUser] & 1) == 0)
        {
          familyCollection = [(PKPaymentPassDetailViewController *)self familyCollection];
          altDSID = [v15 altDSID];
          v18 = [familyCollection familyMemberForAltDSID:altDSID];

          memberType = [v18 memberType];
          switch(memberType)
          {
            case 2:
              ++v31;
              break;
            case 1:
              ++v12;
              break;
            case 0:
              ++v11;
              break;
          }
        }
      }

      v10 = [accountUsers countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v31 = 0;
  }

  v20 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
  stringValue = [v20 stringValue];
  [v30 setObject:stringValue forKey:*MEMORY[0x1E69BA230]];

  v22 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
  stringValue2 = [v22 stringValue];
  [v30 setObject:stringValue2 forKey:*MEMORY[0x1E69BA240]];

  v24 = [MEMORY[0x1E696AD98] numberWithInteger:v31];
  stringValue3 = [v24 stringValue];
  [v30 setObject:stringValue3 forKey:*MEMORY[0x1E69BA238]];

  v26 = MEMORY[0x1E69B8540];
  v27 = *MEMORY[0x1E69BB698];
  v28 = [v30 copy];
  [v26 subject:v27 sendEvent:v28];
}

- (BOOL)shouldShowIdentityDocumentSection
{
  v17 = *MEMORY[0x1E69E9840];
  pass = [(PKPaymentPassDetailViewController *)self pass];
  if ([pass isIdentityPass] && -[PKPaymentPassDetailViewController detailViewStyle](self, "detailViewStyle") != 2)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    deviceContactlessPaymentApplications = [pass deviceContactlessPaymentApplications];
    v4 = [deviceContactlessPaymentApplications countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v6 = *v13;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(deviceContactlessPaymentApplications);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          [v8 paymentType];
          if (PKPaymentMethodTypeIsIdentityDocument())
          {
            if ([v8 state] == 1)
            {
              subcredentials = [v8 subcredentials];
              v10 = [subcredentials count];

              if (v10)
              {
                LOBYTE(v4) = 1;
                goto LABEL_16;
              }
            }
          }
        }

        v4 = [deviceContactlessPaymentApplications countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)identityDocumentTableViewCellForTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  primaryTextColor = [(PKPaymentPassDetailViewController *)self primaryTextColor];
  if (primaryTextColor)
  {
    v7 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:primaryTextColor forTableView:viewCopy];
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v7 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:labelColor forTableView:viewCopy];
  }

  pass = [(PKPaymentPassDetailViewController *)self pass];
  identityType = [pass identityType];
  textLabel = [v7 textLabel];
  if (identityType == 5)
  {
    v12 = @"PHYSICAL_PASSPORT_IDENTITY_CARD_INFO";
  }

  else
  {
    v12 = @"GENERIC_IDENTITY_CARD_INFO";
  }

  v13 = PKLocalizedIdentityString(&v12->isa);
  [textLabel setText:v13];

  PKAccessibilityIDCellSet(v7, *MEMORY[0x1E69B9868]);
  loadingIdentityDetails = [(PKPaymentPassDetailViewController *)self loadingIdentityDetails];
  [(PKPaymentPassDetailViewController *)self _showSpinner:loadingIdentityDetails inCell:v7 overrideTextColor:0];
  if (!loadingIdentityDetails)
  {
    [v7 setAccessoryType:1];
  }

  return v7;
}

- (void)didSelectIdentityDocumentCellInTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![(PKPaymentPassDetailViewController *)self loadingIdentityDetails])
  {
    [(PKPaymentPassDetailViewController *)self setLoadingIdentityDetails:1];
    v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
    [(PKPaymentPassDetailViewController *)self _showSpinner:1 inCell:v8 overrideTextColor:0];
    v9 = [PKIdentityDocumentDetailsViewController alloc];
    pass = [(PKPaymentPassDetailViewController *)self pass];
    paymentServiceDataProvider = [(PKPaymentPassDetailViewController *)self paymentServiceDataProvider];
    v12 = [(PKIdentityDocumentDetailsViewController *)v9 initWithPass:pass dataProvider:paymentServiceDataProvider detailViewStyle:[(PKPaymentPassDetailViewController *)self detailViewStyle]];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __100__PKPaymentPassDetailViewController_Identity__didSelectIdentityDocumentCellInTableView_atIndexPath___block_invoke;
    v14[3] = &unk_1E80165C8;
    v14[4] = self;
    v15 = v12;
    v16 = viewCopy;
    v17 = pathCopy;
    v13 = v12;
    [(PKIdentityDocumentDetailsViewController *)v13 preflightWithCompletion:v14];
  }
}

void __100__PKPaymentPassDetailViewController_Identity__didSelectIdentityDocumentCellInTableView_atIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PKPaymentPassDetailViewController_Identity__didSelectIdentityDocumentCellInTableView_atIndexPath___block_invoke_2;
  block[3] = &unk_1E8011E38;
  v11 = v3;
  v9 = *(a1 + 32);
  v4 = *(&v9 + 1);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v12 = v9;
  v13 = v7;
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __100__PKPaymentPassDetailViewController_Identity__didSelectIdentityDocumentCellInTableView_atIndexPath___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 pass];
    v5 = [*(a1 + 40) navigationController];
    PKIdentityPassDetailsHandleBiometricError(v4, v5, *(a1 + 32));
  }

  else
  {
    v4 = [v2 navigationController];
    v6 = [v4 pk_settings_useStateDrivenNavigation];
    v7 = *(a1 + 48);
    if (v6)
    {
      [v4 pk_settings_pushViewController:v7];
    }

    else
    {
      [v4 pushViewController:v7 animated:1];
    }
  }

  [*(a1 + 40) setLoadingIdentityDetails:0];
  v8 = [*(a1 + 56) cellForRowAtIndexPath:*(a1 + 64)];
  if (v8)
  {
    v9 = v8;
    [*(a1 + 40) _showSpinner:0 inCell:v8 overrideTextColor:0];
    v8 = v9;
  }
}

- (id)footerForIdentityDocumentInTableView:(id)view
{
  pass = [(PKPaymentPassDetailViewController *)self pass];
  if ([pass identityType] == 5)
  {
    v4 = PKLocalizedIdentityString(&cfstr_UspassportIden.isa);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldShowReplaceBiometricSection
{
  fingeprintHelper = [(PKPaymentPassDetailViewController *)self fingeprintHelper];

  if (!fingeprintHelper)
  {
    v4 = [PKIdentityReplaceFingerprintHelper alloc];
    pass = [(PKPaymentPassDetailViewController *)self pass];
    secureElementPass = [pass secureElementPass];
    v7 = [(PKIdentityReplaceFingerprintHelper *)v4 initWithPass:secureElementPass isRemote:[(PKPaymentPassDetailViewController *)self detailViewStyle]== 2];
    [(PKPaymentPassDetailViewController *)self setFingeprintHelper:v7];
  }

  fingeprintHelper2 = [(PKPaymentPassDetailViewController *)self fingeprintHelper];
  if ([fingeprintHelper2 hasCachedEligibility])
  {
    isEligibile = [fingeprintHelper2 isEligibile];
  }

  else
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __80__PKPaymentPassDetailViewController_Identity__shouldShowReplaceBiometricSection__block_invoke;
    v11[3] = &unk_1E80113B0;
    objc_copyWeak(&v12, &location);
    v11[4] = self;
    [fingeprintHelper2 isEligibleWithCompletion:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    isEligibile = 0;
  }

  return isEligibile;
}

void __80__PKPaymentPassDetailViewController_Identity__shouldShowReplaceBiometricSection__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __80__PKPaymentPassDetailViewController_Identity__shouldShowReplaceBiometricSection__block_invoke_2;
  v2[3] = &unk_1E80110E0;
  objc_copyWeak(&v3, (a1 + 40));
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
}

void __80__PKPaymentPassDetailViewController_Identity__shouldShowReplaceBiometricSection__block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = PKPassDetailSectionTypeToString(5uLL);
    v6[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [v3 reloadPassDetailSections:v5 updates:0];
  }
}

- (id)replaceBiometricTableViewCellForTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  v6 = PKLocalizedIdentityString(&cfstr_ReplaceIdFinge.isa);
  v7 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v6 forTableView:viewCopy];

  return v7;
}

- (void)didSelectReplaceBiometricCellInTableView:(id)view atIndexPath:(id)path
{
  v5 = [(PKPaymentPassDetailViewController *)self fingeprintHelper:view];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __100__PKPaymentPassDetailViewController_Identity__didSelectReplaceBiometricCellInTableView_atIndexPath___block_invoke;
  v6[3] = &unk_1E80165F0;
  v6[4] = self;
  [v5 viewControllerWithCompletion:v6];
}

void __100__PKPaymentPassDetailViewController_Identity__didSelectReplaceBiometricCellInTableView_atIndexPath___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = a2;
    v4 = [v2 navigationController];
    [v4 presentViewController:v3 animated:1 completion:0];
  }
}

- (PKPaymentPassDetailViewController)initWithPass:(id)pass group:(id)group groupsController:(id)controller webService:(id)service style:(int64_t)style dataProvider:(id)provider
{
  v14 = MEMORY[0x1E69B9020];
  providerCopy = provider;
  serviceCopy = service;
  controllerCopy = controller;
  groupCopy = group;
  passCopy = pass;
  sharedService = [v14 sharedService];
  v21 = [(PKPaymentPassDetailViewController *)self initWithPass:passCopy group:groupCopy groupsController:controllerCopy webService:serviceCopy peerPaymentWebService:sharedService style:style passLibraryDataProvider:providerCopy paymentServiceDataProvider:0];

  return v21;
}

- (PKPaymentPassDetailViewController)initWithPass:(id)pass group:(id)group groupsController:(id)controller webService:(id)service peerPaymentWebService:(id)webService style:(int64_t)style passLibraryDataProvider:(id)provider paymentServiceDataProvider:(id)self0
{
  v17 = MEMORY[0x1E69B8400];
  dataProviderCopy = dataProvider;
  providerCopy = provider;
  webServiceCopy = webService;
  serviceCopy = service;
  controllerCopy = controller;
  groupCopy = group;
  passCopy = pass;
  sharedInstance = [v17 sharedInstance];
  v26 = [(PKPaymentPassDetailViewController *)self initWithPass:passCopy group:groupCopy groupsController:controllerCopy webService:serviceCopy peerPaymentWebService:webServiceCopy accountService:sharedInstance style:style passLibraryDataProvider:providerCopy paymentServiceDataProvider:dataProviderCopy rendererState:0 context:0 familyCollection:0 contactAvatarManager:0 account:0];

  return v26;
}

- (PKPaymentPassDetailViewController)initWithPass:(id)pass group:(id)group groupsController:(id)controller webService:(id)service peerPaymentWebService:(id)webService style:(int64_t)style passLibraryDataProvider:(id)provider paymentServiceDataProvider:(id)self0 rendererState:(id)self1 context:(id)self2
{
  v17 = MEMORY[0x1E69B8400];
  stateCopy = state;
  dataProviderCopy = dataProvider;
  providerCopy = provider;
  webServiceCopy = webService;
  serviceCopy = service;
  controllerCopy = controller;
  groupCopy = group;
  passCopy = pass;
  sharedInstance = [v17 sharedInstance];
  v27 = [(PKPaymentPassDetailViewController *)self initWithPass:passCopy group:groupCopy groupsController:controllerCopy webService:serviceCopy peerPaymentWebService:webServiceCopy accountService:sharedInstance style:style passLibraryDataProvider:providerCopy paymentServiceDataProvider:dataProviderCopy rendererState:stateCopy context:0 familyCollection:0 contactAvatarManager:0 account:0];

  return v27;
}

- (PKPaymentPassDetailViewController)initWithPass:(id)pass group:(id)group groupsController:(id)controller webService:(id)service peerPaymentWebService:(id)webService accountService:(id)accountService style:(int64_t)style passLibraryDataProvider:(id)self0 paymentServiceDataProvider:(id)self1 rendererState:(id)self2 context:(id)self3 familyCollection:(id)self4 contactAvatarManager:(id)self5 account:(id)self6
{
  v206[3] = *MEMORY[0x1E69E9840];
  passCopy = pass;
  groupCopy = group;
  controllerCopy = controller;
  serviceCopy = service;
  webServiceCopy = webService;
  accountServiceCopy = accountService;
  providerCopy = provider;
  dataProviderCopy = dataProvider;
  stateCopy = state;
  contextCopy = context;
  collectionCopy = collection;
  managerCopy = manager;
  accountCopy = account;
  v203.receiver = self;
  v203.super_class = PKPaymentPassDetailViewController;
  v19 = [(PKDynamicTableViewController *)&v203 init];
  v168 = v19;
  if (!v19)
  {
    goto LABEL_93;
  }

  v19->_expressStateNotificationToken = -1;
  uniqueID = [passCopy uniqueID];
  objc_storeStrong(&v168->_pass, pass);
  [(PKPaymentPassDetailViewController *)v168 _applyStaticPassPropertiesForPass];
  objc_storeStrong(&v168->_account, account);
  v168->_detailViewStyle = style;
  objc_storeStrong(&v168->_familyCollection, collection);
  objc_storeStrong(&v168->_contactAvatarManager, manager);
  objc_storeStrong(&v168->_webService, service);
  objc_storeStrong(&v168->_passLibraryDataProvider, provider);
  objc_storeStrong(&v168->_paymentServiceDataProvider, dataProvider);
  v20 = [objc_alloc(MEMORY[0x1E69B8850]) initWithPaymentDataProvider:v168->_paymentServiceDataProvider passLibraryDataProvider:v168->_passLibraryDataProvider isForWatch:style == 2];
  expressPassController = v168->_expressPassController;
  v168->_expressPassController = v20;

  [(PKExpressPassController *)v168->_expressPassController setPresentingViewController:?];
  v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  startedAnalyticsSubjects = v168->_startedAnalyticsSubjects;
  v168->_startedAnalyticsSubjects = v22;

  v24 = [[PKPassHeaderView alloc] initWithPass:v168->_pass rendererState:stateCopy];
  passHeaderView = v168->_passHeaderView;
  v168->_passHeaderView = v24;

  [(PKPassHeaderView *)v168->_passHeaderView setDelegate:?];
  [(PKPassHeaderView *)v168->_passHeaderView setPassLibraryOverride:v168->_passLibraryDataProvider];
  [(PKPassHeaderView *)v168->_passHeaderView setSmall:1];
  [(PKPaymentPassDetailViewController *)v168 _buildSections];
  [(PKPaymentPassDetailViewController *)v168 _decorateSections];
  v26 = objc_alloc_init(PKBusinessChatController);
  businessChatController = v168->_businessChatController;
  v168->_businessChatController = v26;

  systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
  v206[0] = objc_opt_class();
  v206[1] = objc_opt_class();
  v206[2] = objc_opt_class();
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v206 count:3];
  v30 = [systemTraitsAffectingColorAppearance arrayByAddingObjectsFromArray:v29];
  v31 = [(PKPaymentPassDetailViewController *)v168 registerForTraitChanges:v30 withHandler:&__block_literal_global_252];

  mEMORY[0x1E69B9328] = [MEMORY[0x1E69B9328] sharedInstance];
  v201[0] = MEMORY[0x1E69E9820];
  v201[1] = 3221225472;
  v201[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_2;
  v201[3] = &unk_1E8025E30;
  v33 = v168;
  v202 = v33;
  [mEMORY[0x1E69B9328] authorizationStatusWithCompletion:v201];

  if (controllerCopy)
  {
    objc_storeStrong(&v33->_groupsController, controller);
    if (groupCopy)
    {
      v34 = groupCopy;
    }

    else
    {
      groupsController = v33->_groupsController;
      uniqueID2 = [(PKPaymentPass *)v168->_pass uniqueID];
      v40 = [(PKGroupsController *)groupsController groupIndexForPassUniqueID:uniqueID2];

      v34 = [(PKGroupsController *)v33->_groupsController groupAtIndex:v40];
    }

    group = v33->_group;
    v33->_group = v34;

    [(PKGroup *)v33->_group addGroupObserver:v33];
  }

  else
  {
    v35 = objc_alloc_init(MEMORY[0x1E69B88E0]);
    v36 = v33->_groupsController;
    v33->_groupsController = v35;

    v37 = v33->_groupsController;
    v198[0] = MEMORY[0x1E69E9820];
    v198[1] = 3221225472;
    v198[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_4;
    v198[3] = &unk_1E8010A10;
    v199 = groupCopy;
    v200 = v33;
    [(PKGroupsController *)v37 loadGroupsWithCompletion:v198];
  }

  v145 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPaymentPass:v168->_pass];
  v42 = [objc_alloc(MEMORY[0x1E69B9300]) initWithTransactionSource:v145];
  transactionSourceCollection = v33->_transactionSourceCollection;
  v33->_transactionSourceCollection = v42;

  if (([(PKPaymentPass *)v168->_pass isStoredValuePass]& 1) != 0 || [(PKPaymentPass *)v168->_pass isAccessPass])
  {
    v44 = [objc_alloc(MEMORY[0x1E69B9308]) initWithPass:v168->_pass];
    transitBalanceModel = v33->_transitBalanceModel;
    v33->_transitBalanceModel = v44;
  }

  objc_storeStrong(&v33->_rendererState, state);
  v46 = [[PKLinkedApplication alloc] initWithPass:v168->_pass];
  linkedApplication = v33->_linkedApplication;
  v33->_linkedApplication = v46;

  [(PKLinkedApplication *)v33->_linkedApplication addObserver:v33];
  [(PKLinkedApplication *)v33->_linkedApplication reloadApplicationStateIfNecessary];
  v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
  contextualActionHandlers = v33->_contextualActionHandlers;
  v33->_contextualActionHandlers = v48;

  v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
  executionBlocksContentIsLoaded = v33->_executionBlocksContentIsLoaded;
  v33->_executionBlocksContentIsLoaded = v50;

  if (objc_opt_respondsToSelector())
  {
    [(PKPaymentDataProvider *)v168->_paymentServiceDataProvider addDelegate:v33];
  }

  v52 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  numberFormatter = v33->_numberFormatter;
  v33->_numberFormatter = v52;

  [(NSNumberFormatter *)v33->_numberFormatter setNumberStyle:1];
  transactions = v33->_transactions;
  v33->_transactions = MEMORY[0x1E695E0F0];

  v55 = [objc_alloc(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v33->_transactionSourceCollection paymentDataProvider:v168->_paymentServiceDataProvider];
  transactionFetcher = v33->_transactionFetcher;
  v33->_transactionFetcher = v55;

  detailViewStyle = v168->_detailViewStyle;
  v33->_hasTabBar = detailViewStyle != 0;
  if (detailViewStyle)
  {
    associatedAccountServiceAccountIdentifier = [(PKPaymentPass *)v168->_pass associatedAccountServiceAccountIdentifier];
    if ([associatedAccountServiceAccountIdentifier length])
    {
      v59 = v168->_detailViewStyle != 2;
    }

    else
    {
      v59 = 1;
    }

    v33->_hasTabBar = v59;
  }

  else
  {
    v33->_hasTabBar = 0;
  }

  objc_storeStrong(&v33->_context, context);
  context = [(PKPaymentWebService *)v168->_webService context];
  configuration = [context configuration];
  contactFormatConfiguration = [configuration contactFormatConfiguration];

  v62 = [objc_alloc(MEMORY[0x1E69B8730]) initWithConfiguration:contactFormatConfiguration];
  contactFormatValidator = v33->_contactFormatValidator;
  v33->_contactFormatValidator = v62;

  if ([(PKPaymentPass *)v168->_pass hasAssociatedPeerPaymentAccount])
  {
    v64 = webServiceCopy;
    mEMORY[0x1E69B9020] = webServiceCopy;
    if (!webServiceCopy)
    {
      mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
      v64 = 0;
    }

    v66 = v64 == 0;
    objc_storeStrong(&v33->_peerPaymentWebService, mEMORY[0x1E69B9020]);
    if (v66)
    {
    }

    targetDevice = [(PKPeerPaymentWebService *)v33->_peerPaymentWebService targetDevice];
    account = [targetDevice account];

    associatedPassUniqueID = [account associatedPassUniqueID];
    v70 = [associatedPassUniqueID isEqualToString:uniqueID];

    if (v70)
    {
      objc_storeStrong(&v33->_peerPaymentAccount, account);
      targetDevice2 = [(PKPeerPaymentWebService *)v33->_peerPaymentWebService targetDevice];
      v72 = objc_opt_respondsToSelector();

      if (v72)
      {
        targetDevice3 = [(PKPeerPaymentWebService *)v33->_peerPaymentWebService targetDevice];
        preferences = [targetDevice3 preferences];
        peerPaymentPreferences = v33->_peerPaymentPreferences;
        v33->_peerPaymentPreferences = preferences;
      }

      v76 = [PKPeerPaymentAccountResolutionController alloc];
      v77 = v168->_detailViewStyle;
      v78 = 3;
      if (v77 != 1)
      {
        v78 = 0;
      }

      if (v77 == 2)
      {
        v79 = 4;
      }

      else
      {
        v79 = v78;
      }

      v80 = [(PKPeerPaymentAccountResolutionController *)v76 initWithAccount:v33->_peerPaymentAccount webService:v33->_peerPaymentWebService context:v79 delegate:v33 passLibraryDataProvider:v168->_passLibraryDataProvider];
      peerPaymentAccountResolutionController = v33->_peerPaymentAccountResolutionController;
      v33->_peerPaymentAccountResolutionController = v80;

      [(PKPeerPaymentAccountResolutionController *)v33->_peerPaymentAccountResolutionController setSetupDelegate:v33];
      v33->_peerPaymentAccountResolution = [(PKPeerPaymentAccountResolutionController *)v33->_peerPaymentAccountResolutionController currentPeerPaymentAccountResolution];
      [(PKPassHeaderView *)v168->_passHeaderView setPeerPaymentAccount:v33->_peerPaymentAccount];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    targetDevice4 = [(PKPeerPaymentWebService *)v33->_peerPaymentWebService targetDevice];
    [defaultCenter addObserver:v33 selector:sel__handlePeerPaymentAccountDidChangeNotification_ name:*MEMORY[0x1E69BC378] object:targetDevice4];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    targetDevice5 = [(PKPeerPaymentWebService *)v33->_peerPaymentWebService targetDevice];
    [defaultCenter2 addObserver:v33 selector:sel__handlePeerPaymentPreferencestDidChangeNotification_ name:*MEMORY[0x1E69BC380] object:targetDevice5];

    v196[0] = MEMORY[0x1E69E9820];
    v196[1] = 3221225472;
    v196[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_6;
    v196[3] = &unk_1E8010970;
    v86 = v33;
    v197 = v86;
    [(PKPaymentPassDetailViewController *)v86 _loadFamilyCollectionIfNecessaryWithCompletion:v196];
    objc_initWeak(&location, v86);
    mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
    v192[0] = MEMORY[0x1E69E9820];
    v192[1] = 3221225472;
    v192[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_7;
    v192[3] = &unk_1E8025E58;
    objc_copyWeak(&v194, &location);
    v88 = mEMORY[0x1E69B9000];
    v193 = v88;
    [v88 userInfoWithCompletion:v192];
    [v88 registerObserver:v86];

    objc_destroyWeak(&v194);
    objc_destroyWeak(&location);

    goto LABEL_59;
  }

  associatedAccountServiceAccountIdentifier2 = [(PKPaymentPass *)v168->_pass associatedAccountServiceAccountIdentifier];

  if (!associatedAccountServiceAccountIdentifier2)
  {
    defaults = [MEMORY[0x1E69B8CF8] defaults];
    v105 = [defaults defaultBillingAddressForPaymentPass:v168->_pass];
    billingContact = v33->_billingContact;
    v33->_billingContact = v105;

    v33->_loadingBillingContact = 0;
    if (![(PKPaymentPassDetailViewController *)v33 _isBankConnectSupportedForPaymentPass:passCopy])
    {
      [(PKPaymentPassDetailViewController *)v33 contentIsLoaded];
    }

    goto LABEL_59;
  }

  v90 = accountServiceCopy;
  mEMORY[0x1E69B8400] = accountServiceCopy;
  if (!accountServiceCopy)
  {
    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    v90 = 0;
  }

  v92 = v90 == 0;
  objc_storeStrong(&v33->_accountService, mEMORY[0x1E69B8400]);
  if (v92)
  {
  }

  v93 = webServiceCopy;
  mEMORY[0x1E69B9020]2 = webServiceCopy;
  if (!webServiceCopy)
  {
    mEMORY[0x1E69B9020]2 = [MEMORY[0x1E69B9020] sharedService];
    v93 = 0;
  }

  v95 = v93 == 0;
  objc_storeStrong(&v33->_peerPaymentWebService, mEMORY[0x1E69B9020]2);
  if (v95)
  {
  }

  [(PKAccountService *)v33->_accountService registerObserver:v33];
  associatedAccountServiceAccountIdentifier3 = [(PKPaymentPass *)v168->_pass associatedAccountServiceAccountIdentifier];
  objc_initWeak(&location, v33);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_3_302;
  aBlock[3] = &unk_1E8025ED0;
  objc_copyWeak(&v191, &location);
  v97 = v33;
  v188 = v97;
  v189 = accountServiceCopy;
  v98 = associatedAccountServiceAccountIdentifier3;
  v190 = v98;
  v99 = _Block_copy(aBlock);
  account = v168->_account;
  if (!account)
  {
    goto LABEL_54;
  }

  accountIdentifier = [(PKAccount *)account accountIdentifier];
  v102 = v98;
  v103 = v102;
  if (accountIdentifier == v102)
  {
  }

  else
  {
    if (!v102 || !accountIdentifier)
    {

      goto LABEL_54;
    }

    v154 = [accountIdentifier isEqualToString:v102];

    if ((v154 & 1) == 0)
    {
LABEL_54:
      v184[0] = MEMORY[0x1E69E9820];
      v184[1] = 3221225472;
      v184[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_12;
      v184[3] = &unk_1E8025EF8;
      objc_copyWeak(&v186, &location);
      v185 = v99;
      v107 = _Block_copy(v184);
      if (([(PKPaymentPass *)v168->_pass isAppleBalancePass]& 1) != 0 || PKPassbookIsCurrentlyDeletedByUser())
      {
        targetDevice6 = [(PKPaymentWebService *)v168->_webService targetDevice];
        [targetDevice6 accountWithIdentifier:v98 completion:v107];
      }

      else
      {
        [(PKAccountService *)v33->_accountService accountWithIdentifier:v98 completion:v107];
      }

      objc_destroyWeak(&v186);
      goto LABEL_58;
    }
  }

  (*(v99 + 2))(v99, v168->_account, 0);
LABEL_58:
  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:v97 selector:sel__handleAccountServiceAccountDidChangeNotification_ name:*MEMORY[0x1E69B9E60] object:0];

  objc_destroyWeak(&v191);
  objc_destroyWeak(&location);

LABEL_59:
  supportsDeepLinkingTransactions = [(PKPaymentPass *)v168->_pass supportsDeepLinkingTransactions];
  if (supportsDeepLinkingTransactions)
  {
    LOBYTE(supportsDeepLinkingTransactions) = [PKPaymentNotificationAppURLHelper applicationExistsToHandleNotificationsForPaymentPass:passCopy];
  }

  v33->_deepLinkingUIEnabled = supportsDeepLinkingTransactions;
  contactResolver = [(PKPaymentPassDetailViewController *)v33 contactResolver];
  v111 = [[PKPaymentTransactionCellController alloc] initWithContactResolver:contactResolver];
  transactionCellController = v33->_transactionCellController;
  v33->_transactionCellController = v111;

  v113 = [[PKPaymentTransactionDetailsFactory alloc] initWithContactResolver:contactResolver peerPaymentWebService:v33->_peerPaymentWebService paymentServiceDataProvider:v168->_paymentServiceDataProvider detailViewStyle:v168->_detailViewStyle context:0];
  transactionDetailsFactory = v33->_transactionDetailsFactory;
  v33->_transactionDetailsFactory = v113;

  v115 = 3;
  if (style != 1)
  {
    v115 = 0;
  }

  if (style == 2)
  {
    v116 = 4;
  }

  else
  {
    v116 = v115;
  }

  v117 = [PKPaymentVerificationController alloc];
  pass = v168->_pass;
  passView = [(PKPassHeaderView *)v168->_passHeaderView passView];
  v120 = [(PKPaymentVerificationController *)v117 initWithPass:pass passView:passView webService:v168->_webService context:v116 delegate:v33 verificationContext:1];
  verificationController = v33->_verificationController;
  v33->_verificationController = v120;

  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  obja = v33->_devicePaymentApplications;
  v166 = [(NSArray *)obja countByEnumeratingWithState:&v180 objects:v205 count:16];
  if (v166)
  {
    v164 = *v181;
LABEL_68:
    v122 = 0;
    while (1)
    {
      if (*v181 != v164)
      {
        objc_enumerationMutation(obja);
      }

      v123 = *(*(&v180 + 1) + 8 * v122);
      v176 = 0u;
      v177 = 0u;
      v178 = 0u;
      v179 = 0u;
      automaticSelectionCriteria = [v123 automaticSelectionCriteria];
      v125 = [automaticSelectionCriteria countByEnumeratingWithState:&v176 objects:v204 count:16];
      if (v125)
      {
        v126 = *v177;
LABEL_73:
        v127 = 0;
        while (1)
        {
          if (*v177 != v126)
          {
            objc_enumerationMutation(automaticSelectionCriteria);
          }

          type = [*(*(&v176 + 1) + 8 * v127) type];
          v33->_isAppleAccess = PKEqualObjects();

          if (v33->_isAppleAccess)
          {
            break;
          }

          if (v125 == ++v127)
          {
            v125 = [automaticSelectionCriteria countByEnumeratingWithState:&v176 objects:v204 count:16];
            if (v125)
            {
              goto LABEL_73;
            }

            break;
          }
        }
      }

      if (v33->_isAppleAccess)
      {
        break;
      }

      if (++v122 == v166)
      {
        v166 = [(NSArray *)obja countByEnumeratingWithState:&v180 objects:v205 count:16];
        if (v166)
        {
          goto LABEL_68;
        }

        break;
      }
    }
  }

  v33->_isCredentialedPass = [(PKPaymentPass *)v168->_pass areCredentialsStoredInKML];
  objc_initWeak(&location, v33);
  for (i = 0; i < [(NSArray *)v33->_sectionControllers count]; ++i)
  {
    v130 = [(NSArray *)v33->_sectionControllers objectAtIndexedSubscript:i];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v131 = v130;
      sectionIdentifiers = [v131 sectionIdentifiers];
      v172[0] = MEMORY[0x1E69E9820];
      v172[1] = 3221225472;
      v172[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_13;
      v172[3] = &unk_1E8012808;
      v133 = v131;
      v173 = v133;
      v174 = sectionIdentifiers;
      objc_copyWeak(&v175, &location);
      [v133 preflight:v172];
      objc_destroyWeak(&v175);
    }
  }

  v134 = objc_alloc_init(PKMerchantTokenUnifiedListViewControllerProvider);
  merchantTokenUnifiedListViewControllerProvider = v33->_merchantTokenUnifiedListViewControllerProvider;
  v33->_merchantTokenUnifiedListViewControllerProvider = v134;

  [(PKPaymentPassDetailViewController *)v33 _updateHeaderActionView];
  [(PKPaymentPassDetailViewController *)v33 _updateTransitExpressState];
  [(PKPaymentPassDetailViewController *)v33 _updatePassPropertiesForPass:v168->_pass completion:0];
  PKObservePassSettingsChanged();
  defaultCenter4 = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter4 addObserver:v33 selector:sel__passSettingsChanged_ name:*MEMORY[0x1E69BBBF0] object:0];
  navigationItem = [(PKPaymentPassDetailViewController *)v33 navigationItem];
  [navigationItem setBackButtonDisplayMode:2];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    localizedDescription = [(PKPaymentPass *)v168->_pass localizedDescription];
    [navigationItem setBackButtonTitle:localizedDescription];

    [navigationItem pkui_setupScrollEdgeChromelessAppearance];
    [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
  }

  if (v168->_expressStateNotificationToken == -1 && [(PKPaymentPassDetailViewController *)v33 _shouldShowTransitExpressSettingCell])
  {
    objc_initWeak(&from, v33);
    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:v33 selector:sel__transitExpressStateDidChange name:@"PKExpressPassesViewControllerExpressPassChangedNotification" object:0];
    uTF8String = [*MEMORY[0x1E69BB808] UTF8String];
    v141 = MEMORY[0x1E69E96A0];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_14;
    handler[3] = &unk_1E8012010;
    objc_copyWeak(&v170, &from);
    notify_register_dispatch(uTF8String, &v168->_expressStateNotificationToken, MEMORY[0x1E69E96A0], handler);

    objc_destroyWeak(&v170);
    objc_destroyWeak(&from);
  }

  objc_destroyWeak(&location);
LABEL_93:

  return v168;
}

void __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _updateHeaderHeightDeterminingLayout:0];
  [v2 reloadData:0];
}

void __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_3;
  v3[3] = &unk_1E80119C8;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_4(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_5;
  v2[3] = &unk_1E8010A10;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = v2;
    v5 = *(v3 + 1096);
    *(v3 + 1096) = v4;
  }

  else
  {
    v6 = *(v3 + 2120);
    v7 = [*(v3 + 1088) uniqueID];
    v8 = [v6 groupIndexForPassUniqueID:v7];

    v9 = [*(*(a1 + 40) + 2120) groupAtIndex:v8];
    v10 = *(a1 + 40);
    v5 = *(v10 + 1096);
    *(v10 + 1096) = v9;
  }

  [*(*(a1 + 40) + 1096) addGroupObserver:?];
  v11 = *(a1 + 40);

  return [v11 reloadSection:39 updates:0];
}

uint64_t __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_6(uint64_t a1)
{
  v2 = [PKPeerPaymentAssociatedAccountsController alloc];
  v3 = *(a1 + 32);
  v4 = v3[280];
  v5 = v3[268];
  v6 = v3[278];
  v7 = v3[266];
  v8 = 3;
  if (v7 != 1)
  {
    v8 = 0;
  }

  if (v7 == 2)
  {
    v9 = 4;
  }

  else
  {
    v9 = v8;
  }

  v10 = [(PKPeerPaymentAssociatedAccountsController *)v2 initWithFamilyCollection:v4 avatarManager:v5 passLibraryDataProvider:v6 context:v9];
  v11 = *(a1 + 32);
  v12 = *(v11 + 1800);
  *(v11 + 1800) = v10;

  [*(a1 + 32) _updateFamilyRows];
  v13 = *(a1 + 32);

  return [v13 contentIsLoaded];
}

void __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__72;
    v14 = __Block_byref_object_dispose__72;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_298;
    aBlock[3] = &unk_1E8022410;
    objc_copyWeak(&v9, (a1 + 40));
    v15 = _Block_copy(aBlock);
    v5 = [WeakRetained[193] isEligibleForUserInfoUpdates];
    if (v5)
    {
      v5 = [v3 isOutOfDate];
    }

    if (!v3 || v5)
    {
      v6 = *(a1 + 32);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_2_300;
      v7[3] = &unk_1E8022438;
      v7[4] = &v10;
      [v6 fetchUserInfoWithCompletion:v7];
    }

    else
    {
      (*(v11[5] + 16))();
    }

    _Block_object_dispose(&v10, 8);

    objc_destroyWeak(&v9);
  }
}

void __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_298(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 206, a2);
    v6 = [v8 contact];
    v7 = v5[217];
    v5[217] = v6;
  }
}

void __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_3_302(id *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_4_303;
  block[3] = &unk_1E8011E88;
  objc_copyWeak(&v10, a1 + 7);
  v6 = v3;
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v10);
}

void __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_4_303(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained && *(a1 + 32))
  {
    if ([WeakRetained _accountFeature] == 4)
    {
      [v3 _updateBalanceIfNecessary];
      v4 = [[PKAppleBalanceAddMoneyUIManager alloc] initWithAccount:*(a1 + 32)];
      v5 = v3[247];
      v3[247] = v4;

      v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"PASS_DETAILS_BALANCE_FOOTER"];
      if (([v3[275] supportsInStorePayment] & 1) == 0)
      {
        [v6 appendString:@"_NO_IN_STORE_PAYMENT"];
      }

      v7 = v3[231];
      v8 = [v6 copy];
      v9 = PKLocalizedAppleBalanceString(v8);
      [v7 setFooterText:v9];
    }

    if ([*(*(a1 + 40) + 1776) limitServerLoad])
    {
      v10 = 86400.0;
    }

    else
    {
      v10 = 300.0;
    }

    if (PKPassbookIsCurrentlyDeletedByUser())
    {
      v11 = 0;
    }

    else
    {
      v12 = [*(a1 + 32) creditDetails];
      if (v12)
      {
        v13 = [MEMORY[0x1E695DF00] date];
        v14 = [*(a1 + 32) lastUpdated];
        [v13 timeIntervalSinceDate:v14];
        v11 = v15 > v10;
      }

      else
      {
        v11 = 0;
      }
    }

    if ([v3 _accountFeature] == 2)
    {
      v16 = *(a1 + 48);
      v17 = [*(a1 + 32) accountIdentifier];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_5_313;
      v31[3] = &unk_1E8025E80;
      v32 = v3;
      v33 = *(a1 + 40);
      v34 = *(a1 + 32);
      [v16 physicalCardsForAccountWithIdentifier:v17 completion:v31];
    }

    *(v3 + 1744) = 1;
    [v3 _reloadView];
    if (v11)
    {
      v18 = v3[270];
      v19 = *(a1 + 56);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_7_320;
      v29[3] = &unk_1E80159B0;
      objc_copyWeak(&v30, (a1 + 64));
      [v18 updateAccountWithIdentifier:v19 extended:0 completion:v29];
      objc_destroyWeak(&v30);
    }

    if ([v3 _accountFeature] == 2)
    {
      [v3 _updateCashbackPeerPaymentResolutionSection];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_9;
      v27[3] = &unk_1E8010970;
      v28 = v3;
      [v28 _loadAdditionalAccountDataWithCompletion:v27];
    }

    v20 = v3[270];
    v21 = *(a1 + 56);
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_10;
    v25 = &unk_1E8025EA8;
    objc_copyWeak(&v26, (a1 + 64));
    [v20 userInfoForAccountIdentifier:v21 forceFetch:0 completion:&v22];
    [v3 _updateAmpEligibility];
    [v3[238] setFeatureIdentifier:{objc_msgSend(*(a1 + 32), "feature")}];
    objc_destroyWeak(&v26);
  }
}

void __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_5_313(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_6_314;
  v5[3] = &unk_1E8011C98;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_6_314(void *a1)
{
  v2 = [PKPhysicalCardController alloc];
  v3 = [MEMORY[0x1E69B8400] sharedInstance];
  v4 = [(PKPhysicalCardController *)v2 initWithAccountService:v3 paymentPass:*(a1[5] + 1088) account:a1[6] accountUser:0 physicalCards:a1[7]];
  v5 = a1[4];
  v6 = *(v5 + 1608);
  *(v5 + 1608) = v4;

  v7 = [PKPhysicalCardActionController alloc];
  v8 = [MEMORY[0x1E69B8400] sharedInstance];
  v9 = [(PKPhysicalCardActionController *)v7 initWithAccountService:v8 account:a1[6] accountUser:0 delegate:a1[5]];
  v10 = a1[4];
  v11 = *(v10 + 1616);
  *(v10 + 1616) = v9;

  v12 = a1[4];

  return [v12 reloadSection:19 updates:0];
}

void __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_7_320(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_8;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 275, *(a1 + 32));
    [v3 _reloadView];
    WeakRetained = v3;
  }
}

void __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_11;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [*(a1 + 32) creditUserInfo];
    v4 = [v3 primaryUser];
    v5 = *(v6 + 217);
    *(v6 + 217) = v4;

    *(v6 + 1744) = 0;
    [*(v6 + 216) setShowSpinner:0];
    [v6 reloadSection:40 updates:0];
    WeakRetained = v6;
  }
}

void __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v8 && WeakRetained)
  {
    objc_storeStrong(WeakRetained + 275, a2);
    (*(*(a1 + 32) + 16))();
  }
}

void __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_13(id *a1)
{
  v4 = [a1[4] sectionIdentifiers];
  if (([a1[5] isEqualToArray:?] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v3 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained reloadSections:v4];
    }
  }
}

void __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _transitExpressStateDidChange];
}

- (BOOL)_shouldShowBankConnect
{
  v3 = PKBankConnectEnabled();
  if (v3)
  {
    LOBYTE(v3) = self->_detailViewStyle <= 1uLL && [(PKPaymentPass *)self->_pass activationState]== PKPaymentPassActivationStateActivated;
  }

  return v3;
}

- (BOOL)_isBankConnectSupportedForPaymentPass:(id)pass
{
  passCopy = pass;
  if ([(PKPaymentPassDetailViewController *)self _shouldShowBankConnect])
  {
    v5 = [_TtC9PassKitUI40PKPassDetailBankConnectSectionController validForPaymentPass:passCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isBankConnectLinked
{
  if (![(PKPaymentPassDetailViewController *)self _shouldShowBankConnect])
  {
    return 0;
  }

  bankConnectAccount = [(PKPaymentPassDetailViewController *)self bankConnectAccount];
  v4 = bankConnectAccount != 0;

  return v4;
}

- (void)_buildSections
{
  v127 = *MEMORY[0x1E69E9840];
  v101 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v119 = 0;
  v120 = &v119;
  v121 = 0x3032000000;
  v122 = __Block_byref_object_copy__339;
  v123 = __Block_byref_object_dispose__340;
  v124 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PKPaymentPassDetailViewController__buildSections__block_invoke;
  aBlock[3] = &unk_1E8025F20;
  aBlock[4] = &v119;
  v2 = _Block_copy(aBlock);
  v117[0] = MEMORY[0x1E69E9820];
  v117[1] = 3221225472;
  v117[2] = __51__PKPaymentPassDetailViewController__buildSections__block_invoke_2;
  v117[3] = &unk_1E8025F48;
  v117[4] = &v119;
  v100 = _Block_copy(v117);
  v3 = [[PKPaymentPassDetailWrapperSectionController alloc] initWithViewController:self];
  paymentPassDetailSectionController = self->_paymentPassDetailSectionController;
  self->_paymentPassDetailSectionController = v3;

  sectionIdentifiers = [(PKPaymentPassDetailWrapperSectionController *)self->_paymentPassDetailSectionController sectionIdentifiers];
  v6 = [sectionIdentifiers mutableCopy];
  v7 = v120[5];
  v120[5] = v6;

  [v101 addObject:self->_paymentPassDetailSectionController];
  _configurableSections = [(PKPaymentPassDetailViewController *)self _configurableSections];
  v99 = [_configurableSections pk_createSetByApplyingBlock:&__block_literal_global_346_0];
  v9 = [[PKConfigurablePassDetailSectionsController alloc] initWithPaymentPass:self->_pass clientReservedIdentifiers:v99];
  configurableSectionController = self->_configurableSectionController;
  self->_configurableSectionController = v9;

  [(PKConfigurablePassDetailSectionsController *)self->_configurableSectionController setDelegate:self];
  [(PKConfigurablePassDetailSectionsController *)self->_configurableSectionController setUseBridgeStyle:self->_detailViewStyle == 2];
  [v101 addObject:self->_configurableSectionController];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sectionIdentifiers2 = [(PKConfigurablePassDetailSectionsController *)self->_configurableSectionController sectionIdentifiers];
  [v11 addObjectsFromArray:sectionIdentifiers2];

  pk_arrayCopy = [v99 pk_arrayCopy];
  [v11 addObjectsFromArray:pk_arrayCopy];

  passDetailSections = [(PKPaymentPass *)self->_pass passDetailSections];
  v15 = [v11 count];
  do
  {
    if (!v15)
    {
      break;
    }

    v113[0] = MEMORY[0x1E69E9820];
    v113[1] = 3221225472;
    v113[2] = __51__PKPaymentPassDetailViewController__buildSections__block_invoke_4;
    v113[3] = &unk_1E8025F90;
    v16 = v11;
    v114 = v16;
    v116 = &v119;
    v115 = v2;
    [passDetailSections enumerateObjectsWithOptions:2 usingBlock:v113];
    v17 = [v16 count];
    v18 = v15 == v17;

    v15 = v17;
  }

  while (!v18);
  v110[0] = MEMORY[0x1E69E9820];
  v110[1] = 3221225472;
  v110[2] = __51__PKPaymentPassDetailViewController__buildSections__block_invoke_5;
  v110[3] = &unk_1E8025FB8;
  v110[4] = self;
  v112 = &v119;
  v19 = v2;
  v111 = v19;
  [v11 enumerateObjectsWithOptions:2 usingBlock:v110];

  selfCopy16 = self;
  if ([PKPaymentPassDetailBalanceSectionController validForPaymentPass:self->_pass])
  {
    v21 = [[PKPaymentPassDetailBalanceSectionController alloc] initWithDelegate:self];
    balanceSectionController = self->_balanceSectionController;
    self->_balanceSectionController = v21;

    [v101 addObject:self->_balanceSectionController];
    allSectionIdentifiers = [(PKPaymentPassDetailBalanceSectionController *)self->_balanceSectionController allSectionIdentifiers];
    v100[2](v100, allSectionIdentifiers, @"LinkedApplication");

    selfCopy16 = self;
  }

  if ([PKPaymentPassDetailAutoReloadActionSectionController validForPaymentPass:selfCopy16->_pass])
  {
    v24 = [[PKPaymentPassDetailAutoReloadActionSectionController alloc] initWithPass:selfCopy16->_pass paymentDataProvider:selfCopy16->_paymentServiceDataProvider viewStyle:selfCopy16->_detailViewStyle delegate:selfCopy16];
    autoReloadActionSectionController = selfCopy16->_autoReloadActionSectionController;
    selfCopy16->_autoReloadActionSectionController = v24;

    [v101 addObject:self->_autoReloadActionSectionController];
    [(PKPaymentPassDetailAutoReloadActionSectionController *)self->_autoReloadActionSectionController setSetupDelegate:self];
    allSectionIdentifiers2 = [(PKPaymentPassDetailAutoReloadActionSectionController *)self->_autoReloadActionSectionController allSectionIdentifiers];
    v100[2](v100, allSectionIdentifiers2, @"BalancesAndCommutePlans");

    selfCopy16 = self;
  }

  if ([PKPaymentPassDetailPassActionSectionController validForPaymentPass:selfCopy16->_pass])
  {
    v27 = [[PKPaymentPassDetailPassActionSectionController alloc] initWithPass:selfCopy16->_pass viewStyle:selfCopy16->_detailViewStyle paymentDataProvider:selfCopy16->_paymentServiceDataProvider webService:selfCopy16->_webService transitBalanceModel:selfCopy16->_transitBalanceModel delegate:selfCopy16];
    passActionSectionController = selfCopy16->_passActionSectionController;
    selfCopy16->_passActionSectionController = v27;

    [v101 addObject:self->_passActionSectionController];
    allSectionIdentifiers3 = [(PKPaymentPassDetailPassActionSectionController *)self->_passActionSectionController allSectionIdentifiers];
    v100[2](v100, allSectionIdentifiers3, @"BalancesAndCommutePlans");

    selfCopy16 = self;
  }

  if ([PKPassDetailSharesSectionController validForPaymentPass:selfCopy16->_pass])
  {
    v30 = objc_alloc(MEMORY[0x1E69B9268]);
    pass = selfCopy16->_pass;
    contactResolver = [(PKPaymentPassDetailViewController *)selfCopy16 contactResolver];
    webService = selfCopy16->_webService;
    paymentServiceDataProvider = selfCopy16->_paymentServiceDataProvider;
    v35 = MEMORY[0x1E69E96A0];
    v36 = MEMORY[0x1E69E96A0];
    v37 = [v30 initWithPass:pass contactResolver:contactResolver webService:webService paymentServiceProvider:paymentServiceDataProvider queue:v35];

    v38 = [[PKPassDetailSharesSectionController alloc] initWithSharesController:v37 delegate:self];
    sharesSectionController = self->_sharesSectionController;
    self->_sharesSectionController = v38;

    [v101 addObject:self->_sharesSectionController];
    allSectionIdentifiers4 = [(PKPassDetailSharesSectionController *)self->_sharesSectionController allSectionIdentifiers];
    v100[2](v100, allSectionIdentifiers4, @"TransactionsByYear");

    selfCopy16 = self;
  }

  if ([PKPassDetailScheduledPaymentsSectionController validForPaymentPass:selfCopy16->_pass])
  {
    v41 = [PKPassDetailScheduledPaymentsSectionController alloc];
    account = selfCopy16->_account;
    v43 = selfCopy16->_pass;
    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    v45 = [(PKPassDetailScheduledPaymentsSectionController *)v41 initWithAccount:account pass:v43 accountService:mEMORY[0x1E69B8400] delegate:selfCopy16];
    scheduledPaymentsSectionController = selfCopy16->_scheduledPaymentsSectionController;
    selfCopy16->_scheduledPaymentsSectionController = v45;

    [v101 addObject:self->_scheduledPaymentsSectionController];
    allSectionIdentifiers5 = [(PKPassDetailScheduledPaymentsSectionController *)self->_scheduledPaymentsSectionController allSectionIdentifiers];
    v100[2](v100, allSectionIdentifiers5, @"AccountUsers");

    selfCopy16 = self;
  }

  if ([(PKPaymentPassDetailViewController *)selfCopy16 _shouldShowBankConnect]&& [_TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController validForPaymentPass:selfCopy16->_pass])
  {
    objc_initWeak(&location, selfCopy16);
    v48 = [_TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController alloc];
    v49 = self->_pass;
    v108 = 0;
    v50 = [(PKPassDetailAccountCredentialsSectionController *)v48 initWithPass:v49 delegate:self throwsError:&v108];
    v51 = v108;
    accountCredentialsSectionController = self->_accountCredentialsSectionController;
    self->_accountCredentialsSectionController = v50;

    if (v51)
    {
      v53 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v126 = v51;
        _os_log_impl(&dword_1BD026000, v53, OS_LOG_TYPE_DEFAULT, "Failed to make PKPassDetailAccountCredentialsSectionController: %@.", buf, 0xCu);
      }
    }

    else
    {
      v54 = self->_accountCredentialsSectionController;
      v106[0] = MEMORY[0x1E69E9820];
      v106[1] = 3221225472;
      v106[2] = __51__PKPaymentPassDetailViewController__buildSections__block_invoke_6;
      v106[3] = &unk_1E80110E0;
      objc_copyWeak(&v107, &location);
      v106[4] = self;
      [(PKPassDetailAccountCredentialsSectionController *)v54 fetchPaymentInformationWithCompletion:v106];
      [v101 addObject:self->_accountCredentialsSectionController];
      allSectionIdentifiers6 = [(PKPassDetailAccountCredentialsSectionController *)self->_accountCredentialsSectionController allSectionIdentifiers];
      v100[2](v100, allSectionIdentifiers6, @"LinkedApplication");

      objc_destroyWeak(&v107);
    }

    objc_destroyWeak(&location);
    selfCopy16 = self;
  }

  if ([(PKPaymentPassDetailViewController *)selfCopy16 _isBankConnectSupportedForPaymentPass:selfCopy16->_pass])
  {
    v56 = [_TtC9PassKitUI40PKPassDetailBankConnectSectionController alloc];
    v57 = selfCopy16->_pass;
    v105 = 0;
    v58 = [(PKPassDetailBankConnectSectionController *)v56 initWithPass:v57 delegate:selfCopy16 throwsError:&v105];
    v59 = v105;
    bankConnectSectionController = selfCopy16->_bankConnectSectionController;
    selfCopy16->_bankConnectSectionController = v58;

    if (v59)
    {
      allSectionIdentifiers7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(allSectionIdentifiers7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v126 = v59;
        _os_log_impl(&dword_1BD026000, allSectionIdentifiers7, OS_LOG_TYPE_DEFAULT, "Failed to make PKPassDetailBankConnectSectionController: %@.", buf, 0xCu);
      }
    }

    else
    {
      [v101 addObject:self->_bankConnectSectionController];
      allSectionIdentifiers7 = [(PKPassDetailBankConnectSectionController *)self->_bankConnectSectionController allSectionIdentifiers];
      v100[2](v100, allSectionIdentifiers7, @"LinkedApplication");
    }

    selfCopy16 = self;
  }

  if ([PKPeerPaymentAutoReloadSectionController validForPaymentPass:selfCopy16->_pass]&& selfCopy16->_detailViewStyle != 2)
  {
    v62 = [PKPeerPaymentAutoReloadSectionController alloc];
    detailViewStyle = selfCopy16->_detailViewStyle;
    v64 = 3;
    if (detailViewStyle != 1)
    {
      v64 = 0;
    }

    if (detailViewStyle == 2)
    {
      v65 = 4;
    }

    else
    {
      v65 = v64;
    }

    v66 = [(PKPeerPaymentAutoReloadSectionController *)v62 initWithDelegate:selfCopy16 pass:selfCopy16->_pass context:v65 passLibraryDataProvider:selfCopy16->_passLibraryDataProvider];
    peerPaymentAutoReloadSectionController = selfCopy16->_peerPaymentAutoReloadSectionController;
    selfCopy16->_peerPaymentAutoReloadSectionController = v66;

    [v101 addObject:self->_peerPaymentAutoReloadSectionController];
    allSectionIdentifiers8 = [(PKPeerPaymentAutoReloadSectionController *)self->_peerPaymentAutoReloadSectionController allSectionIdentifiers];
    v100[2](v100, allSectionIdentifiers8, @"PeerPaymentMoneyActions");

    selfCopy16 = self;
  }

  if ([PKPeerPaymentRecurringPaymentPassDetailsSectionController validForPaymentPass:selfCopy16->_pass]&& selfCopy16->_detailViewStyle == 1)
  {
    v69 = [PKPeerPaymentRecurringPaymentPassDetailsSectionController alloc];
    v70 = selfCopy16->_detailViewStyle;
    v71 = 3;
    if (v70 != 1)
    {
      v71 = 0;
    }

    if (v70 == 2)
    {
      v72 = 4;
    }

    else
    {
      v72 = v71;
    }

    v73 = [(PKPeerPaymentRecurringPaymentPassDetailsSectionController *)v69 initWithDelegate:selfCopy16 pass:selfCopy16->_pass context:v72 passLibraryDataProvider:selfCopy16->_passLibraryDataProvider];
    peerPaymentRecurringPaymentSectionController = selfCopy16->_peerPaymentRecurringPaymentSectionController;
    selfCopy16->_peerPaymentRecurringPaymentSectionController = v73;

    [v101 addObject:self->_peerPaymentRecurringPaymentSectionController];
    allSectionIdentifiers9 = [(PKPeerPaymentRecurringPaymentPassDetailsSectionController *)self->_peerPaymentRecurringPaymentSectionController allSectionIdentifiers];
    v100[2](v100, allSectionIdentifiers9, @"PeerPaymentMoneyActions");

    selfCopy16 = self;
  }

  if ([PKPassDetailsPrecursorPassUpgradeSectionController validForPaymentPass:selfCopy16->_pass])
  {
    v76 = [[PKPassDetailsPrecursorPassUpgradeSectionController alloc] initWithPass:selfCopy16->_pass webService:selfCopy16->_webService delegate:selfCopy16];
    precursorSectionController = selfCopy16->_precursorSectionController;
    selfCopy16->_precursorSectionController = v76;

    [v101 addObject:self->_precursorSectionController];
    allSectionIdentifiers10 = [(PKPassDetailsPrecursorPassUpgradeSectionController *)self->_precursorSectionController allSectionIdentifiers];
    v100[2](v100, allSectionIdentifiers10, @"LinkedApplication");

    selfCopy16 = self;
  }

  if ([PKPassDetailsIdentityBioBindingSectionController validForPaymentPass:selfCopy16->_pass])
  {
    v79 = [[PKPassDetailsIdentityBioBindingSectionController alloc] initWithPass:selfCopy16->_pass webService:selfCopy16->_webService delegate:selfCopy16];
    bioBindingSectionController = selfCopy16->_bioBindingSectionController;
    selfCopy16->_bioBindingSectionController = v79;

    [v101 addObject:self->_bioBindingSectionController];
    allSectionIdentifiers11 = [(PKPassDetailsIdentityBioBindingSectionController *)self->_bioBindingSectionController allSectionIdentifiers];
    v100[2](v100, allSectionIdentifiers11, @"LinkedApplication");

    selfCopy16 = self;
  }

  if (selfCopy16->_detailViewStyle != 2 && [PKPassDetailsIdentityDigitalIDSectionController validForPaymentPass:selfCopy16->_pass])
  {
    v82 = [[PKPassDetailsIdentityDigitalIDSectionController alloc] initWithPass:selfCopy16->_pass detailViewStyle:selfCopy16->_detailViewStyle delegate:selfCopy16];
    digitalIDSectionController = selfCopy16->_digitalIDSectionController;
    selfCopy16->_digitalIDSectionController = v82;

    [v101 addObject:self->_digitalIDSectionController];
    allSectionIdentifiers12 = [(PKPassDetailsIdentityDigitalIDSectionController *)self->_digitalIDSectionController allSectionIdentifiers];
    v100[2](v100, allSectionIdentifiers12, @"IdentityDocumentDetails");

    selfCopy16 = self;
  }

  if ([PKPeerPaymentIdentityManagementSectionController validForPaymentPass:selfCopy16->_pass])
  {
    v85 = [[PKPeerPaymentIdentityManagementSectionController alloc] initWithDelegate:selfCopy16];
    peerPaymentIdentityManagementSectionController = selfCopy16->_peerPaymentIdentityManagementSectionController;
    selfCopy16->_peerPaymentIdentityManagementSectionController = v85;

    [v101 addObject:self->_peerPaymentIdentityManagementSectionController];
    allSectionIdentifiers13 = [(PKPeerPaymentIdentityManagementSectionController *)self->_peerPaymentIdentityManagementSectionController allSectionIdentifiers];
    v100[2](v100, allSectionIdentifiers13, @"PeerPaymentAutomaticallyAcceptPaymentsPreference");

    selfCopy16 = self;
  }

  if (PKIsPhone() && PKBroadwayDiscoverability2024Enabled() && [(PKPaymentPass *)selfCopy16->_pass isAppleCardPass])
  {
    v88 = objc_alloc_init(PKAppleCardFeaturesAndBenefitsSectionController);
    broadwayFeaturesAndBenefitsSectionController = selfCopy16->_broadwayFeaturesAndBenefitsSectionController;
    selfCopy16->_broadwayFeaturesAndBenefitsSectionController = v88;

    objc_initWeak(buf, self);
    v90 = self->_broadwayFeaturesAndBenefitsSectionController;
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = __51__PKPaymentPassDetailViewController__buildSections__block_invoke_364;
    v103[3] = &unk_1E8025FE0;
    objc_copyWeak(&v104, buf);
    [(PKAppleCardFeaturesAndBenefitsSectionController *)v90 setSelectionHandler:v103];
    [v101 addObject:self->_broadwayFeaturesAndBenefitsSectionController];
    allSectionIdentifiers14 = [(PKAppleCardFeaturesAndBenefitsSectionController *)self->_broadwayFeaturesAndBenefitsSectionController allSectionIdentifiers];
    v100[2](v100, allSectionIdentifiers14, @"BillingAddress");

    objc_destroyWeak(&v104);
    objc_destroyWeak(buf);
    selfCopy16 = self;
  }

  if ([PKExpressTogglesPaymentPassDetailSectionController validForPaymentPass:selfCopy16->_pass])
  {
    v92 = [[PKExpressTogglesPaymentPassDetailSectionController alloc] initWithPass:selfCopy16->_pass viewStyle:selfCopy16->_detailViewStyle expressPassController:selfCopy16->_expressPassController delegate:selfCopy16];
    expressTogglesSectionController = selfCopy16->_expressTogglesSectionController;
    selfCopy16->_expressTogglesSectionController = v92;

    [v101 addObject:self->_expressTogglesSectionController];
    allSectionIdentifiers15 = [(PKExpressTogglesPaymentPassDetailSectionController *)self->_expressTogglesSectionController allSectionIdentifiers];
    v100[2](v100, allSectionIdentifiers15, @"ManufacturerInfo");

    selfCopy16 = self;
  }

  v95 = [v101 copy];
  sectionControllers = selfCopy16->_sectionControllers;
  selfCopy16->_sectionControllers = v95;

  v97 = [v120[5] copy];
  orderOfSectionIdentifiers = self->_orderOfSectionIdentifiers;
  self->_orderOfSectionIdentifiers = v97;

  _Block_object_dispose(&v119, 8);
}

void __51__PKPaymentPassDetailViewController__buildSections__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(*(*(a1 + 32) + 8) + 40) indexOfObject:a3];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(*(*(a1 + 32) + 8) + 40) insertObject:v6 atIndex:v5 + 1];
  }
}

void __51__PKPaymentPassDetailViewController__buildSections__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [*(*(*(a1 + 32) + 8) + 40) indexOfObject:a3];
  if ([v9 count])
  {
    v6 = 0;
    do
    {
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = *(*(*(a1 + 32) + 8) + 40);
        v8 = [v9 objectAtIndexedSubscript:v6];
        [v7 insertObject:v8 atIndex:v5 + 1 + v6];
      }

      ++v6;
    }

    while (v6 < [v9 count]);
  }
}

void __51__PKPaymentPassDetailViewController__buildSections__block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 identifier];
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = [v6 insertAfterSection];
    if (!v4 || ([*(a1 + 32) containsObject:v4] & 1) == 0)
    {
      [*(a1 + 32) removeObject:v3];
      [*(*(*(a1 + 48) + 8) + 40) removeObject:v3];
      v5 = sectionIdentifierForInsertAfter(v4, *(*(*(a1 + 48) + 8) + 40));
      (*(*(a1 + 40) + 16))();
    }
  }
}

void __51__PKPaymentPassDetailViewController__buildSections__block_invoke_5(void *a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1[4] + 1888) sectionForIdentifier:?];
  if (v3)
  {
    [*(*(a1[6] + 8) + 40) removeObject:v6];
    v4 = [v3 insertAfterSection];
    v5 = sectionIdentifierForInsertAfter(v4, *(*(a1[6] + 8) + 40));

    (*(a1[5] + 16))();
  }
}

void __51__PKPaymentPassDetailViewController__buildSections__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(*(a1 + 32) + 1960) sectionIdentifiers];
  [WeakRetained reloadSections:v2];
}

void __51__PKPaymentPassDetailViewController__buildSections__block_invoke_364(uint64_t a1)
{
  v4 = objc_alloc_init(PKAppleCardFeaturesAndBenefitsViewController);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained navigationController];

  if ([v3 pk_settings_useStateDrivenNavigation])
  {
    [v3 pk_settings_pushViewController:v4];
  }

  else
  {
    [v3 pushViewController:v4 animated:1];
  }
}

- (void)_decorateSections
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_sectionControllers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          detailViewStyle = self->_detailViewStyle;
          v10 = v8;
          [v10 setDetailViewStyle:{detailViewStyle, v11}];
          [v10 setPrimaryTextColor:self->_primaryTextColor];
          [v10 setDetailTextColor:self->_detailTextColor];
          [v10 setLinkTextColor:self->_linkTextColor];
          [v10 setWarningTextColor:self->_warningTextColor];
          [v10 setHighlightColor:self->_highlightColor];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (id)_configurableSections
{
  passDetailSections = [(PKPaymentPass *)self->_pass passDetailSections];
  v3 = [passDetailSections pk_objectsPassingTest:&__block_literal_global_370_1];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

BOOL __58__PKPaymentPassDetailViewController__configurableSections__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 identifier];
  v4 = PKPassDetailSectionTypeFromString(v3);

  if (v4 == 28 || v4 == 6)
  {
    v6 = [v2 insertAfterSection];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_configurableSectionForSectionType:(unint64_t)type
{
  if (type == 28 || type == 6)
  {
    passDetailSections = [(PKPaymentPass *)self->_pass passDetailSections];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__PKPaymentPassDetailViewController__configurableSectionForSectionType___block_invoke;
    v7[3] = &__block_descriptor_40_e29_B16__0__PKPassDetailSection_8l;
    v7[4] = type;
    v5 = [passDetailSections pk_firstObjectPassingTest:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __72__PKPaymentPassDetailViewController__configurableSectionForSectionType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = v2 == PKPassDetailSectionTypeFromString(v3);

  return v4;
}

- (void)dealloc
{
  authenticationContext = self->_authenticationContext;
  if (authenticationContext)
  {
    [(LAContext *)authenticationContext invalidate];
    v4 = self->_authenticationContext;
    self->_authenticationContext = 0;
  }

  refreshTimeout = self->_refreshTimeout;
  if (refreshTimeout)
  {
    dispatch_source_cancel(refreshTimeout);
    v6 = self->_refreshTimeout;
    self->_refreshTimeout = 0;
  }

  inUseAssertion = self->_inUseAssertion;
  if (inUseAssertion)
  {
    [(CLInUseAssertion *)inUseAssertion invalidate];
    v8 = self->_inUseAssertion;
    self->_inUseAssertion = 0;
  }

  PKUnregisterPassSettingsChangedObserver();
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter2 removeObserver:self];

  expressStateNotificationToken = self->_expressStateNotificationToken;
  if (expressStateNotificationToken != -1)
  {
    notify_cancel(expressStateNotificationToken);
  }

  [(PKPaymentVerificationController *)self->_verificationController setDelegate:0];
  WeakRetained = objc_loadWeakRetained(&self->_deleteOverrider);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained setDeletionStatusHandler:0 forPass:self->_pass];
  }

  if (objc_opt_respondsToSelector())
  {
    [(PKPaymentDataProvider *)self->_paymentServiceDataProvider removeDelegate:self];
  }

  [(PKAccountService *)self->_accountService unregisterObserver:self];
  [(PKGroup *)self->_group removeGroupObserver:self];
  mEMORY[0x1E69B8310] = [MEMORY[0x1E69B8310] sharedManager];
  [mEMORY[0x1E69B8310] unregisterObserver:self];

  [(PKLinkedApplication *)self->_linkedApplication removeObserver:self];
  v14.receiver = self;
  v14.super_class = PKPaymentPassDetailViewController;
  [(PKPaymentPassDetailViewController *)&v14 dealloc];
}

- (void)executeAfterContentIsLoaded:(id)loaded
{
  loadedCopy = loaded;
  v5 = loadedCopy;
  if (loadedCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__PKPaymentPassDetailViewController_executeAfterContentIsLoaded___block_invoke;
    v6[3] = &unk_1E8010DD0;
    v6[4] = self;
    v7 = loadedCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __65__PKPaymentPassDetailViewController_executeAfterContentIsLoaded___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 1760) == 1)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = *(v2 + 1768);
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

- (void)setShowDoneButton:(BOOL)button
{
  buttonCopy = button;
  navigationItem = [(PKPaymentPassDetailViewController *)self navigationItem];
  if (buttonCopy)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
    [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
  }

  else
  {
    v5 = 0;
  }

  [navigationItem setRightBarButtonItem:v5];
}

- (void)_refreshStaleBalanceModelForPass:(id)pass completion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  if ([passCopy isStoredValuePass] & 1) != 0 || (objc_msgSend(passCopy, "isAccessPass"))
  {
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x3032000000;
    v37[3] = __Block_byref_object_copy__339;
    v37[4] = __Block_byref_object_dispose__340;
    v38 = 0;
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x3032000000;
    v35[3] = __Block_byref_object_copy__339;
    v35[4] = __Block_byref_object_dispose__340;
    v36 = 0;
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3032000000;
    v33[3] = __Block_byref_object_copy__339;
    v33[4] = __Block_byref_object_dispose__340;
    v34 = 0;
    uniqueID = [passCopy uniqueID];
    devicePrimaryPaymentApplication = [passCopy devicePrimaryPaymentApplication];
    v10 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke;
    v28[3] = &unk_1E8019938;
    v28[4] = self;
    v11 = uniqueID;
    v29 = v11;
    v12 = devicePrimaryPaymentApplication;
    v30 = v12;
    v32 = v37;
    v31 = passCopy;
    [v10 addOperation:v28];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke_4;
    v25[3] = &unk_1E8012D58;
    v25[4] = self;
    v13 = v11;
    v26 = v13;
    v27 = v35;
    [v10 addOperation:v25];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke_7;
    v22[3] = &unk_1E8012D58;
    v22[4] = self;
    v14 = v13;
    v23 = v14;
    v24 = v33;
    [v10 addOperation:v22];
    null = [MEMORY[0x1E695DFB0] null];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke_10;
    v17[3] = &unk_1E8026070;
    v18 = completionCopy;
    v19 = v35;
    v20 = v33;
    v21 = v37;
    v16 = [v10 evaluateWithInput:null completion:v17];

    _Block_object_dispose(v33, 8);
    _Block_object_dispose(v35, 8);

    _Block_object_dispose(v37, 8);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }
}

void __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 32) + 2152);
    v10 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke_2;
    v11[3] = &unk_1E8012D80;
    v16 = *(a1 + 64);
    v12 = v10;
    v13 = *(a1 + 56);
    v15 = v7;
    v14 = v6;
    [v9 transitStateWithPassUniqueIdentifier:v8 paymentApplication:v12 completion:v11];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke_3;
  v10[3] = &unk_1E8026048;
  v14 = *(a1 + 64);
  v11 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v6;
  *&v8 = v4;
  *(&v8 + 1) = v5;
  v12 = v8;
  v13 = v7;
  v9 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

uint64_t __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) transitPassPropertiesWithPaymentApplication:*(a1 + 40) pass:*(a1 + 48)];
  v3 = *(*(a1 + 72) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 64) + 16);

  return v5();
}

void __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke_4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = a1[5];
    v9 = *(a1[4] + 2152);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke_5;
    v10[3] = &unk_1E8012DA8;
    v13 = a1[6];
    v12 = v7;
    v11 = v6;
    [v9 balancesForPaymentPassWithUniqueIdentifier:v8 completion:v10];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke_6;
  block[3] = &unk_1E801B6A8;
  v8 = v3;
  v6 = *(a1 + 40);
  v4 = v6;
  v10 = v6;
  v9 = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke_6(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke_7(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = a1[5];
    v9 = *(a1[4] + 2152);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke_8;
    v10[3] = &unk_1E8012DD0;
    v13 = a1[6];
    v12 = v7;
    v11 = v6;
    [v9 plansForPaymentPassWithUniqueIdentifier:v8 completion:v10];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke_9;
  block[3] = &unk_1E801B6A8;
  v8 = v3;
  v6 = *(a1 + 40);
  v4 = v6;
  v10 = v6;
  v9 = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke_9(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke_10(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke_11;
  v2[3] = &unk_1E8016A98;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke_11(void *a1)
{
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40), *(*(a1[7] + 8) + 40));
  }

  return result;
}

- (void)loadView
{
  v25.receiver = self;
  v25.super_class = PKPaymentPassDetailViewController;
  [(PKPaymentPassDetailViewController *)&v25 loadView];
  tableView = [(PKPaymentPassDetailViewController *)self tableView];
  if ([(PKPaymentPassDetailViewController *)self shouldAllowRefresh])
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCE58]);
    refreshControl = self->_refreshControl;
    self->_refreshControl = v4;

    [(PKPaymentPassDetailViewController *)self setRefreshControl:self->_refreshControl];
    [(UIRefreshControl *)self->_refreshControl addTarget:self action:sel_refreshControlValueChanged_ forControlEvents:4096];
  }

  [tableView setEstimatedSectionHeaderHeight:0.0];
  PKFloatRoundToPixel();
  [tableView setEstimatedSectionFooterHeight:?];
  if (self->_detailViewStyle == 2)
  {
    [tableView setIndicatorStyle:2];
  }

  v6 = objc_alloc(MEMORY[0x1E69DD050]);
  v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  headerView = self->_headerView;
  self->_headerView = v7;

  if (self->_pass)
  {
    if (self->_primaryTextColor)
    {
      [(PKPassHeaderView *)self->_passHeaderView setPrimaryTextColor:?];
    }

    if (self->_detailTextColor)
    {
      [(PKPassHeaderView *)self->_passHeaderView setSecondaryTextColor:?];
    }

    contentView = [(UITableViewHeaderFooterView *)self->_headerView contentView];
    [contentView addSubview:self->_passHeaderView];

    [(PKPaymentPassDetailViewController *)self _updatePassSnapshot];
  }

  v10 = [(NSArray *)self->_tabBarSegments count];
  if (self->_hasTabBar)
  {
    if (v10 < 2)
    {
      goto LABEL_22;
    }

    v11 = PKPassDetailsLastSelectedSegment();
    v12 = PKSegmentStringToSegment(v11);
    if (!v12)
    {
      goto LABEL_18;
    }

    v13 = [(NSArray *)self->_tabBarSegments indexOfObject:v12];
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = v13;
      goto LABEL_20;
    }

    if (self->_hasTabBar)
    {
      v14 = [(NSArray *)self->_tabBarSegments objectAtIndex:0];
      unsignedIntegerValue = [v14 unsignedIntegerValue];

      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue];
      v17 = PKSegmentToSegmentString(v16);

      PKSetPassDetailsLastSelectedSegment();
      v18 = 0;
      v11 = v17;
    }

    else
    {
LABEL_18:
      v18 = 0;
    }

LABEL_20:
    v19 = [(PKPaymentPassDetailViewController *)self _createTabBarWithSelectedIndex:v18];
    tabBar = self->_tabBar;
    self->_tabBar = v19;

    contentView2 = [(UITableViewHeaderFooterView *)self->_headerView contentView];
    [contentView2 addSubview:self->_tabBar];

    goto LABEL_21;
  }

  v11 = self->_tabBar;
  self->_tabBar = 0;
LABEL_21:

LABEL_22:
  v22 = [[PKPassActionWidgetViewModel alloc] initWithViewStyle:self->_detailViewStyle];
  widgetViewModel = self->_widgetViewModel;
  self->_widgetViewModel = v22;

  [(PKPassActionWidgetViewModel *)self->_widgetViewModel setPaymentPass:self->_pass];
  [(PKPassActionWidgetViewModel *)self->_widgetViewModel setAccount:self->_account];
  [(PKPassActionWidgetViewModel *)self->_widgetViewModel setDelegate:self];
  [(PKPaymentPassDetailViewController *)self _setupWidgetViewIfNeeded];
  [(PKPaymentPassDetailViewController *)self _updateHeaderHeightDeterminingLayout:0];
  [(UITableViewHeaderFooterView *)self->_headerView setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), 0.0, self->_headerHeight + self->_tabBarHeight + self->_widgetViewHeight];
  [tableView setTableHeaderView:self->_headerView];
  if (self->_footerView)
  {
    [tableView setTableFooterView:?];
  }

  [tableView _setPinsTableHeaderView:1];
  if (self->_peerPaymentAccount && !self->_peerPaymentPreferences)
  {
    [(PKPaymentPassDetailViewController *)self _updatePeerPaymentPreferences];
  }

  [(PKPaymentPassDetailViewController *)self reloadData:0];
  view = [(PKPaymentPassDetailViewController *)self view];
  [view setAccessibilityIdentifier:*MEMORY[0x1E69B99E8]];
}

- (void)viewWillAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = PKPaymentPassDetailViewController;
  [(PKPaymentPassDetailViewController *)&v16 viewWillAppear:appear];
  [(PKPaymentPassDetailViewController *)self _updateHeaderHeightDeterminingLayout:1];
  objc_initWeak(&location, self);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __52__PKPaymentPassDetailViewController_viewWillAppear___block_invoke;
  v13 = &unk_1E8010998;
  objc_copyWeak(&v14, &location);
  [(PKPaymentPassDetailViewController *)self executeAfterContentIsLoaded:&v10];
  [(PKPaymentPassDetailViewController *)self _updateCashbackPeerPaymentResolutionSection:v10];
  [(PKPaymentPassDetailViewController *)self _fetchMerchantTokens];
  if (!self->_titleIconView)
  {
    navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];

    [navigationBar frame];
    v7 = [[PKAnimatedNavigationBarTitleView alloc] initWithFrame:0.0, 0.0, v6 + v6, v6];
    titleIconView = self->_titleIconView;
    self->_titleIconView = v7;

    [(PKAnimatedNavigationBarTitleView *)self->_titleIconView setMaxWidth:50.0];
    [(PKAnimatedNavigationBarTitleView *)self->_titleIconView setAlpha:0.0];
    navigationItem = [(PKPaymentPassDetailViewController *)self navigationItem];
    [navigationItem pkui_setCenterAlignedTitleView:self->_titleIconView];

    self->_showingTitleIconView = 0;
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __52__PKPaymentPassDetailViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadTransactionSectionsAnimated:0 forceReload:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v19[2] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = PKPaymentPassDetailViewController;
  [(PKPaymentPassDetailViewController *)&v17 viewDidAppear:appear];
  [(PKPaymentPassDetailViewController *)self _reloadTitle];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PKPDVCDidAppearNotification" object:self userInfo:0];

  [(PKPaymentPassDetailViewController *)self _beginReportingForSubjectIfNecessary:*MEMORY[0x1E69BB6F8]];
  if ([(PKPaymentPass *)self->_pass isPeerPaymentPass])
  {
    [(PKPaymentPassDetailViewController *)self _beginReportingForSubjectIfNecessary:*MEMORY[0x1E69BB6A8]];
  }

  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  v7 = *MEMORY[0x1E69BABE8];
  v18[0] = *MEMORY[0x1E69BA680];
  v18[1] = v7;
  v8 = *MEMORY[0x1E69BAC28];
  v19[0] = *MEMORY[0x1E69BA818];
  v19[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v10 = [v6 initWithDictionary:v9];

  if ([(PKPaymentPass *)self->_pass isIdentityPass])
  {
    v11 = [MEMORY[0x1E69B8540] updateIdentityEvent:v10 withPass:self->_pass];
    detailViewStyle = self->_detailViewStyle;
    if (detailViewStyle == 1)
    {
      v13 = MEMORY[0x1E69BAB48];
    }

    else
    {
      if (detailViewStyle != 2)
      {
        goto LABEL_9;
      }

      v13 = MEMORY[0x1E69BAB40];
    }

    [v10 setObject:*v13 forKeyedSubscript:*MEMORY[0x1E69BB0E0]];
  }

LABEL_9:
  if ([(PKPaymentPass *)self->_pass isPeerPaymentPass])
  {
    [v10 setObject:*MEMORY[0x1E69BAEE8] forKeyedSubscript:*MEMORY[0x1E69BA850]];
  }

  v14 = self->_pass;
  if ([(PKPaymentPass *)v14 passType]== 1)
  {
    secureElementPass = [(PKPaymentPass *)v14 secureElementPass];
    cardType = [secureElementPass cardType];
    if (cardType <= 4)
    {
      v3 = **(&unk_1E8026808 + cardType);
    }
  }

  else
  {
    v3 = @"other";
  }

  [v10 setObject:v3 forKeyedSubscript:*MEMORY[0x1E69BAC90]];
  [MEMORY[0x1E69B8540] reportDashboardEventIfNecessary:v10 forPass:self->_pass];
  [(PKPaymentPassDetailViewController *)self presentPassAlertIfNecessary];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = PKPaymentPassDetailViewController;
  [(PKPaymentPassDetailViewController *)&v6 viewWillDisappear:disappear];
  [(PKPaymentPassDetailViewController *)self _cancelPendingTransactionTimer];
  [(PKPaymentPassDetailViewController *)self _reloadTitle];
  inUseAssertion = self->_inUseAssertion;
  if (inUseAssertion)
  {
    [(CLInUseAssertion *)inUseAssertion invalidate];
    v5 = self->_inUseAssertion;
    self->_inUseAssertion = 0;
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v13[2] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = PKPaymentPassDetailViewController;
  [(PKPaymentPassDetailViewController *)&v11 viewDidDisappear:disappear];
  v4 = *MEMORY[0x1E69BAC28];
  if ([(PKPaymentPass *)self->_pass isIdentityPass])
  {
    v5 = *MEMORY[0x1E69BAC98];

    v4 = v5;
  }

  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  v7 = *MEMORY[0x1E69BA820];
  v8 = *MEMORY[0x1E69BABE8];
  v12[0] = *MEMORY[0x1E69BA680];
  v12[1] = v8;
  v13[0] = v7;
  v13[1] = v4;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 initWithDictionary:v9];

  if ([(PKPaymentPass *)self->_pass isPeerPaymentPass])
  {
    [v10 setObject:*MEMORY[0x1E69BAEE8] forKeyedSubscript:*MEMORY[0x1E69BA850]];
  }

  [MEMORY[0x1E69B8540] reportDashboardEventIfNecessary:v10 forPass:self->_pass];
  [(PKPaymentPassDetailViewController *)self _endReportingIfNecessary];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKPaymentPassDetailViewController;
  [(PKPaymentPassDetailViewController *)&v5 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    tableView = [(PKPaymentPassDetailViewController *)self tableView];
    navigationItem = [(PKPaymentPassDetailViewController *)self navigationItem];
    [tableView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }
}

- (void)viewDidLayoutSubviews
{
  v83.receiver = self;
  v83.super_class = PKPaymentPassDetailViewController;
  [(PKPaymentPassDetailViewController *)&v83 viewDidLayoutSubviews];
  tableView = [(PKPaymentPassDetailViewController *)self tableView];
  [tableView bounds];
  v78 = v5;
  v79 = v4;
  v7 = v6;
  [tableView safeAreaInsets];
  v9 = v8;
  v11 = v10;
  [tableView contentSize];
  v77 = v12;
  v14 = v13;
  [(PKPaymentPassDetailViewController *)self _offscreenHeaderHeight];
  v16 = v15;
  [tableView contentInset];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v7 - (v9 + v11);
  v25 = v14 <= v24;
  v26 = v14 - v24;
  v27 = !v25 && v26 < v16;
  v28 = v16 - v26;
  if (v27)
  {
    v29 = v28;
  }

  else
  {
    v29 = v17;
  }

  [tableView contentInset];
  v33 = v32 == v21;
  if (v34 != v19)
  {
    v33 = 0;
  }

  if (v31 != v23)
  {
    v33 = 0;
  }

  v35 = v30 == v29 && v33;
  if (!v35)
  {
    [tableView setContentInset:{v19, v21, v29, v23}];
  }

  isRefreshing = [(UIRefreshControl *)self->_refreshControl isRefreshing];
  superview = [(UIRefreshControl *)self->_refreshControl superview];
  v38 = 0.0;
  if (superview)
  {
    v39 = -(v9 + v19);

    v40 = v79;
    if (v79 < v39)
    {
      v38 = v39 - v79;
    }
  }

  else
  {
    v40 = v79;
  }

  memset(&slice, 0, sizeof(slice));
  [tableView layoutIfNeeded];
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    [tableView _moveContentSubview:self->_headerView toBack:0];
  }

  if (self->_previousLayoutContentSize.width != v77 || self->_previousLayoutContentSize.height != v14)
  {
    self->_previousLayoutContentSize.width = v77;
    self->_previousLayoutContentSize.height = v14;
    p_previousLayoutTableViewWidth = &self->_previousLayoutTableViewWidth;
    v43 = v78;
    if (self->_previousLayoutTableViewWidth == v78)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  p_previousLayoutTableViewWidth = &self->_previousLayoutTableViewWidth;
  v43 = v78;
  if (self->_previousLayoutTableViewWidth != v78)
  {
LABEL_29:
    [(PKPaymentPassDetailViewController *)self _updateHeaderHeightDeterminingLayout:0];
    *p_previousLayoutTableViewWidth = v43;
LABEL_30:
    [(PKPaymentPassDetailViewController *)self _normalizeContentOffset];
    goto LABEL_31;
  }

  if (!v35 && !isRefreshing)
  {
    goto LABEL_30;
  }

LABEL_31:
  [tableView _rectForTableHeaderView];
  v45 = v44;
  v46 = v16 + v19 + v38 - (v9 + v19 + v38);
  v47 = self->_headerHeight + self->_tabBarHeight + self->_widgetViewHeight;
  v48 = v40 - v46;
  [(UITableViewHeaderFooterView *)self->_headerView setFrame:?];
  if (v45 != v47)
  {
    [tableView _tableHeaderHeightDidChangeToHeight:v47];
  }

  [(PKPassHeaderView *)self->_passHeaderView updateShadow:fmin(fmax(v48 / (v46 + -20.0 - v46), 0.0), 1.0)];
  [(PKPassHeaderView *)self->_passHeaderView setAlpha:fmin(fmax((v40 - (v46 + 20.0)) / (v46 - (v46 + 20.0)), 0.0), 1.0)];
  contentView = [(UITableViewHeaderFooterView *)self->_headerView contentView];
  [contentView bounds];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  remainder.origin.x = v50;
  remainder.origin.y = v52;
  remainder.size.width = v54;
  remainder.size.height = v56;

  v84.origin.x = v51;
  v84.origin.y = v53;
  v84.size.width = v55;
  v84.size.height = v57;
  CGRectDivide(v84, &slice, &remainder, self->_headerHeight, CGRectMinYEdge);
  v80 = remainder;
  [(PKPassHeaderView *)self->_passHeaderView setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  remainder = v80;
  if (self->_widgetViewController)
  {
    CGRectDivide(remainder, &slice, &remainder, self->_widgetViewHeight, CGRectMinYEdge);
    view = [(UIViewController *)self->_widgetViewController view];
    [view setFrame:{slice.origin.x, slice.origin.y, slice.size.width, slice.size.height}];

    if (!self->_tabBar)
    {
      view2 = [(UIViewController *)self->_widgetViewController view];
      [(PKPassActionWidgetViewModel *)self->_widgetViewModel bottomPadding];
      [view2 setAlpha:{fmin(fmax(v48 / (v46 - v60 - v46), 0.0), 1.0)}];
    }
  }

  tabBar = self->_tabBar;
  if (tabBar)
  {
    [(UISegmentedControl *)tabBar frame];
    remainder.origin = vaddq_f64(remainder.origin, xmmword_1BE1170E0);
    remainder.size.height = remainder.size.height + -30.0;
    [(UISegmentedControl *)self->_tabBar setFrame:remainder.origin.x, remainder.origin.y, remainder.size.width];
    [(UISegmentedControl *)self->_tabBar setAlpha:fmin(fmax(v48 / (v46 + -15.0 - v46), 0.0), 1.0)];
  }

  footerView = self->_footerView;
  if (footerView)
  {
    contentView2 = [(UITableViewHeaderFooterView *)footerView contentView];
    _shouldReverseLayoutDirection = [contentView2 _shouldReverseLayoutDirection];
    [contentView2 layoutMargins];
    v66 = v65;
    v68 = v67;
    [contentView2 bounds];
    v70 = v66 + v69;
    v72 = v71 + 0.0;
    v74 = v73 - (v66 + v68);
    [(UIImageView *)self->_logoView frame];
    v76 = v70 + v74 - v75;
    if (!_shouldReverseLayoutDirection)
    {
      v76 = v70;
    }

    [(UIImageView *)self->_logoView setFrame:v76, v72];
  }
}

- (id)contactIssuerHelper
{
  contactIssuerHelper = self->_contactIssuerHelper;
  if (!contactIssuerHelper)
  {
    v4 = objc_alloc_init(PKSecureElementPassContactIssuerHelper);
    v5 = self->_contactIssuerHelper;
    self->_contactIssuerHelper = v4;

    [(PKSecureElementPassContactIssuerHelper *)self->_contactIssuerHelper setDelegate:self];
    [(PKSecureElementPassContactIssuerHelper *)self->_contactIssuerHelper setPass:self->_pass];
    [(PKSecureElementPassContactIssuerHelper *)self->_contactIssuerHelper setFeatureIdentifier:[(PKPaymentPassDetailViewController *)self _accountFeature]];
    objc_initWeak(&location, self);
    if (+[PKBusinessChatController deviceSupportsBusinessChat])
    {
      v6 = self->_contactIssuerHelper;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __56__PKPaymentPassDetailViewController_contactIssuerHelper__block_invoke;
      v8[3] = &unk_1E8010998;
      objc_copyWeak(&v9, &location);
      [(PKSecureElementPassContactIssuerHelper *)v6 setOpenBusinessChatHandler:v8];
      objc_destroyWeak(&v9);
    }

    objc_destroyWeak(&location);
    contactIssuerHelper = self->_contactIssuerHelper;
  }

  return contactIssuerHelper;
}

void __56__PKPaymentPassDetailViewController_contactIssuerHelper__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained openBusinessChat];
    WeakRetained = v2;
  }
}

- (void)presentTransactionDetailsForTransaction:(id)transaction presentingView:(int64_t)view
{
  v12 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  if (self->_peerPaymentAccount)
  {
    MEMORY[0x1BFB41980](*MEMORY[0x1E69BA128], 0);
  }

  v7 = [(PKPaymentPassDetailViewController *)self _transactionDetailViewControllerForTransaction:transactionCopy];
  navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_pushViewController:v7];
  }

  else
  {
    [navigationController pushViewController:v7 animated:1];
  }

  if (view == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = 138412290;
        v11 = transactionCopy;
        _os_log_debug_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEBUG, "Presenting confirm payment offer plan on transaction details view controller for transaction %@", &v10, 0xCu);
      }

      [v7 presentConfirmPaymentOfferPlan];
    }
  }
}

- (id)_transactionDetailViewControllerForTransaction:(id)transaction
{
  transactionCopy = transaction;
  if ([transactionCopy transactionType] == 9)
  {
    transactionFetcher = self->_transactionFetcher;
    identifier = [transactionCopy identifier];
    v7 = [(PKDashboardTransactionFetcher *)transactionFetcher cashbackGroupForTransactionWithIdentifier:identifier cashbackTransactionSourceCollection:0];
  }

  else
  {
    v7 = 0;
  }

  transactionDetailsFactory = self->_transactionDetailsFactory;
  transactionSourceCollection = self->_transactionSourceCollection;
  familyCollection = self->_familyCollection;
  account = self->_account;
  accountUserCollection = self->_accountUserCollection;
  connectedInstitution = [(PKPassDetailBankConnectSectionController *)self->_bankConnectSectionController connectedInstitution];
  physicalCards = self->_physicalCards;
  navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
  v16 = [(PKPaymentTransactionDetailsFactory *)transactionDetailsFactory viewControllerForTransaction:transactionCopy sourceCollection:transactionSourceCollection familyCollection:familyCollection account:account accountUserCollection:accountUserCollection bankConnectInstitution:connectedInstitution physicalCards:physicalCards group:v7 navigationController:navigationController];

  return v16;
}

- (void)presentDailyCashForDateComponents:(id)components
{
  componentsCopy = components;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__PKPaymentPassDetailViewController_presentDailyCashForDateComponents___block_invoke;
  v6[3] = &unk_1E8011828;
  objc_copyWeak(&v9, &location);
  v5 = componentsCopy;
  v7 = v5;
  selfCopy = self;
  [(PKPaymentPassDetailViewController *)self executeAfterContentIsLoaded:v6];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __71__PKPaymentPassDetailViewController_presentDailyCashForDateComponents___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71__PKPaymentPassDetailViewController_presentDailyCashForDateComponents___block_invoke_2;
    v6[3] = &unk_1E8012798;
    v6[4] = WeakRetained;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = v4;
    v8 = v5;
    [v3 _reloadTransactionsWithCompletion:v6];
  }
}

void __71__PKPaymentPassDetailViewController_presentDailyCashForDateComponents___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1256) cashbackGroupForDateComponents:*(a1 + 40) cashbackTransactionSourceCollection:0];
  if (v2)
  {
    v16 = v2;
    v3 = [*(*(a1 + 48) + 2184) transactionSourceIdentifiers];
    v4 = [v3 anyObject];
    v5 = [v16 transactionForCashbackGroupWithSourceIdentifier:v4];

    v6 = *(a1 + 32);
    v7 = v6[198];
    v8 = v6[273];
    v9 = v6[280];
    v10 = v6[275];
    v11 = v6[262];
    v12 = v6[279];
    v13 = [v6 navigationController];
    v14 = [v7 viewControllerForTransaction:v5 sourceCollection:v8 familyCollection:v9 account:v10 accountUserCollection:v11 bankConnectInstitution:0 physicalCards:v12 group:v16 navigationController:v13];

    v15 = [*(a1 + 32) navigationController];
    if ([v15 pk_settings_useStateDrivenNavigation])
    {
      [v15 pk_settings_pushViewController:v14];
    }

    else
    {
      [v15 pushViewController:v14 animated:1];
    }

    v2 = v16;
  }
}

- (void)_updatePassSnapshot
{
  passView = [(PKPassHeaderView *)self->_passHeaderView passView];
  v4 = passView;
  if (self->_rendererState)
  {
    v5 = [[PKPassView alloc] initWithPass:self->_pass content:4 suppressedContent:1527 rendererState:self->_rendererState];
    [(PKPassView *)v5 setModallyPresented:1];
    [(PKPassView *)v5 setPaused:1];
    [(PKPassView *)v5 sizeOfFrontFace];
    v7 = 52.0 / v6;
    layer = [(PKPassView *)v5 layer];
    CATransform3DMakeScale(&v13, v7, v7, 1.0);
    [layer setTransform:&v13];

    passSnapshotView = self->_passSnapshotView;
    self->_passSnapshotView = &v5->super;
  }

  else
  {
    v10 = [passView snapshotOfFrontFaceWithRequestedSize:{52.0, 33.0}];
    v11 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v10];
    v12 = self->_passSnapshotView;
    self->_passSnapshotView = v11;

    [(UIView *)self->_passSnapshotView setAccessibilityIgnoresInvertColors:1];
  }
}

- (void)_reloadPassAndView
{
  pass = [(PKPassHeaderView *)self->_passHeaderView pass];
  v6 = pass;
  if (pass && (v5 = [pass passType], v4 = v6, v5 == 1))
  {
    [(PKPaymentPassDetailViewController *)self _updatePassPropertiesForPass:v6];
  }

  else
  {
    [(PKPaymentPassDetailViewController *)self _reloadView];
  }
}

- (void)_loadBankConnectTransactions
{
  v3 = objc_alloc(MEMORY[0x1E6967DE0]);
  primaryAccountIdentifier = [(PKPaymentPass *)self->_pass primaryAccountIdentifier];
  v5 = [v3 initWithPrimaryAccountIdentifier:primaryAccountIdentifier];
  bankConnectTransactionsAndGroupsProvider = self->_bankConnectTransactionsAndGroupsProvider;
  self->_bankConnectTransactionsAndGroupsProvider = v5;

  [(FKBankConnectTransactionsAndGroupsProvider *)self->_bankConnectTransactionsAndGroupsProvider setDelegate:self];
  v7 = self->_bankConnectTransactionsAndGroupsProvider;

  [(FKBankConnectTransactionsAndGroupsProvider *)v7 performFetchAndStartObservingNotifications];
}

- (void)_reloadTitle
{
  navigationItem = [(PKPaymentPassDetailViewController *)self navigationItem];
  if (self->_detailViewStyle)
  {
    PKLocalizedPaymentString(&cfstr_Card_0.isa);
  }

  else
  {
    [(PKPaymentPass *)self->_pass localizedDescription];
  }
  v3 = ;
  [navigationItem setTitle:v3];
}

- (void)_reloadView
{
  if ([(PKPaymentPassDetailViewController *)self shouldMapSection:37])
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __48__PKPaymentPassDetailViewController__reloadView__block_invoke;
    v3[3] = &unk_1E8011D28;
    v3[4] = self;
    [(PKPaymentPassDetailViewController *)self _reloadTransactionsWithCompletion:v3];
  }

  else
  {

    [(PKPaymentPassDetailViewController *)self reloadData:0];
  }
}

- (void)_updateFamilyRows
{
  v65 = *MEMORY[0x1E69E9840];
  familyMembers = [(PKFamilyMemberCollection *)self->_familyCollection familyMembers];
  v4 = familyMembers;
  if (self->_peerPaymentAccount && self->_familyCollection && [familyMembers count])
  {
    v5 = [PKPeerPaymentFamilyMemberRowModel sortedPeerPaymentFamilyMemberRowModelsForFamilyMembers:v4 peerPaymentAccount:self->_peerPaymentAccount];
    sortedFamilyMemberRowModels = self->_sortedFamilyMemberRowModels;
    self->_sortedFamilyMemberRowModels = v5;

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = self->_sortedFamilyMemberRowModels;
    v7 = [(NSArray *)obj countByEnumeratingWithState:&v58 objects:v64 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v59;
      v44 = v4;
      v45 = v57;
      do
      {
        v10 = 0;
        v48 = v8;
        do
        {
          if (*v59 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v58 + 1) + 8 * v10);
          familyMember = [v11 familyMember];
          account = [v11 account];
          altDSID = [account altDSID];
          v15 = altDSID;
          if (altDSID)
          {
            altDSID2 = altDSID;
          }

          else
          {
            invitation = [v11 invitation];
            altDSID2 = [invitation altDSID];
          }

          contactAvatarManager = [(PKPaymentPassDetailViewController *)self contactAvatarManager];
          v19 = [contactAvatarManager cachedAvatarForAltDSID:altDSID2];

          if (!v19)
          {
            contactAvatarManager2 = [(PKPaymentPassDetailViewController *)self contactAvatarManager];
            account2 = [v11 account];
            [v11 invitation];
            v23 = v22 = v9;
            v56[0] = MEMORY[0x1E69E9820];
            v56[1] = 3221225472;
            v57[0] = __54__PKPaymentPassDetailViewController__updateFamilyRows__block_invoke;
            v57[1] = &unk_1E8010AB0;
            v57[2] = v11;
            v57[3] = self;
            [contactAvatarManager2 avatarForFamilyMember:familyMember peerPaymentAccount:account2 invitation:v23 completion:v56];

            v9 = v22;
            v8 = v48;
          }

          [v11 setImage:v19];

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSArray *)obj countByEnumeratingWithState:&v58 objects:v64 count:16];
      }

      while (v8);
LABEL_30:
      v4 = v44;
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  account = self->_account;
  if (account)
  {
    v25 = [PKAccountUserFamilyMemberRowModel sortedAccountUserFamilyMemberRowModelsForFamilyMemberCollection:self->_familyCollection account:account accountUserCollection:self->_accountUserCollection invitations:self->_accountUserInvitations];
    v26 = self->_sortedFamilyMemberRowModels;
    self->_sortedFamilyMemberRowModels = v25;

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = self->_sortedFamilyMemberRowModels;
    v27 = [(NSArray *)obj countByEnumeratingWithState:&v52 objects:v63 count:16];
    if (v27)
    {
      v28 = v27;
      v49 = *v53;
      v44 = v4;
      v46 = v51;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v53 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v52 + 1) + 8 * i);
          familyMember2 = [v30 familyMember];
          accountUser = [v30 accountUser];
          altDSID3 = [accountUser altDSID];
          v34 = altDSID3;
          if (altDSID3)
          {
            accountUserAltDSID = altDSID3;
          }

          else
          {
            invitation2 = [v30 invitation];
            invitationDetails = [invitation2 invitationDetails];
            accountUserAltDSID = [invitationDetails accountUserAltDSID];
          }

          contactAvatarManager3 = [(PKPaymentPassDetailViewController *)self contactAvatarManager];
          v39 = [contactAvatarManager3 cachedAvatarForAltDSID:accountUserAltDSID];

          if (!v39)
          {
            contactAvatarManager4 = [(PKPaymentPassDetailViewController *)self contactAvatarManager];
            accountUser2 = [v30 accountUser];
            invitation3 = [v30 invitation];
            v50[0] = MEMORY[0x1E69E9820];
            v50[1] = 3221225472;
            v51[0] = __54__PKPaymentPassDetailViewController__updateFamilyRows__block_invoke_3;
            v51[1] = &unk_1E8010AB0;
            v51[2] = v30;
            v51[3] = self;
            [contactAvatarManager4 avatarForFamilyMember:familyMember2 accountUser:accountUser2 invitation:invitation3 completion:v50];
          }

          [v30 setImage:v39];
        }

        v28 = [(NSArray *)obj countByEnumeratingWithState:&v52 objects:v63 count:16];
      }

      while (v28);
      goto LABEL_30;
    }

LABEL_31:

    v62[0] = @"FamilySharing";
    v62[1] = @"AccountUsers";
    v62[2] = @"AccountUserStopSharing";
    v62[3] = @"VerifySSN";
    v62[4] = @"PeerPaymentMoneyActions";
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:5];
    [(PKPaymentPassDetailViewController *)self reloadPassDetailSections:v43 updates:0];
  }
}

void __54__PKPaymentPassDetailViewController__updateFamilyRows__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PKPaymentPassDetailViewController__updateFamilyRows__block_invoke_2;
  block[3] = &unk_1E8010A88;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __54__PKPaymentPassDetailViewController__updateFamilyRows__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setImage:*(a1 + 40)];
  v2 = *(a1 + 48);

  return [v2 reloadSection:34 updates:0];
}

void __54__PKPaymentPassDetailViewController__updateFamilyRows__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PKPaymentPassDetailViewController__updateFamilyRows__block_invoke_4;
  block[3] = &unk_1E8010A88;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __54__PKPaymentPassDetailViewController__updateFamilyRows__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setImage:*(a1 + 40)];
  v2 = *(a1 + 48);

  return [v2 reloadSection:10 updates:0];
}

- (void)_loadFamilyCollectionIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_familyCollection || (objc_opt_respondsToSelector() & 1) == 0)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    paymentServiceDataProvider = self->_paymentServiceDataProvider;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __84__PKPaymentPassDetailViewController__loadFamilyCollectionIfNecessaryWithCompletion___block_invoke;
    v6[3] = &unk_1E8010DF8;
    v6[4] = self;
    v7 = completionCopy;
    [(PKPaymentDataProvider *)paymentServiceDataProvider familyMembersWithCompletion:v6];
  }
}

void __84__PKPaymentPassDetailViewController__loadFamilyCollectionIfNecessaryWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PKPaymentPassDetailViewController__loadFamilyCollectionIfNecessaryWithCompletion___block_invoke_2;
  block[3] = &unk_1E8012300;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __84__PKPaymentPassDetailViewController__loadFamilyCollectionIfNecessaryWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69B88A0]) initWithFamilyMembers:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 2240);
  *(v3 + 2240) = v2;

  [*(a1 + 32) _updateFamilyRows];
  result = *(a1 + 48);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)_loadAdditionalAccountDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x1E69B8658]);
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  if (PKStoreDemoModeEnabled() & 1) != 0 || (PKUIOnlyDemoModeEnabled())
  {
    v7 = 1;
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke;
    v20[3] = &unk_1E8019220;
    v20[4] = self;
    [v5 addOperation:v20];
    v7 = 0;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_3;
  v19[3] = &unk_1E8019220;
  v19[4] = self;
  [v5 addOperation:v19];
  if ((v7 & 1) == 0)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_5;
    v18[3] = &unk_1E8019220;
    v18[4] = self;
    [v5 addOperation:v18];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_7;
  v15[3] = &unk_1E80145B0;
  v16 = accountIdentifier;
  selfCopy = self;
  v8 = accountIdentifier;
  [v5 addOperation:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_10;
  v14[3] = &unk_1E8019220;
  v14[4] = self;
  [v5 addOperation:v14];
  null = [MEMORY[0x1E695DFB0] null];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_12;
  v12[3] = &unk_1E8014A58;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = [v5 evaluateWithInput:null completion:v12];
}

void __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_2;
  block[3] = &unk_1E8014918;
  v8 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  block[4] = v8;
  v9 = v6;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1840) updateWithAccount:*(*(a1 + 32) + 2200)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([*(*(a1 + 32) + 2200) isSharedAccount])
  {
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_4;
    v9[3] = &unk_1E8014918;
    v9[4] = v8;
    v11 = v7;
    v10 = v6;
    [v8 loadAccountUsersWithCompletion:v9];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

uint64_t __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _reloadTransactionSourceCollectionIfNecessary];
  [*(a1 + 32) _updateCashbackPeerPaymentResolutionSection];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_6;
  v11[3] = &unk_1E8010E20;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [v8 loadPendingAccountUserInvitationsWithCompletion:v11];
}

void __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_7(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69B8400] sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_8;
  v13[3] = &unk_1E8014A08;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13[4] = v9;
  v11 = v6;
  v12 = v7;
  [v8 physicalCardsForAccountWithIdentifier:v10 completion:v13];
}

void __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_9;
  v5[3] = &unk_1E8014760;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v8 = *(a1 + 48);
  v7 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 2232);
  *(v3 + 2232) = v2;

  v5 = *(*(a1 + 56) + 16);

  return v5();
}

void __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_11;
  v11[3] = &unk_1E8014918;
  v12 = v6;
  v13 = v7;
  v11[4] = v8;
  v9 = v6;
  v10 = v7;
  [v8 _loadFamilyCollectionIfNecessaryWithCompletion:v11];
}

uint64_t __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_11(uint64_t a1)
{
  [*(a1 + 32) _updateFamilyRows];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_12(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_13;
  block[3] = &unk_1E8010B50;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_13(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_reloadTransactionSectionsAnimated:(BOOL)animated forceReload:(BOOL)reload
{
  if ((reload || [(PKPaymentPassDetailViewController *)self shouldMapSection:37]) && self->_hasTabBar)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __84__PKPaymentPassDetailViewController__reloadTransactionSectionsAnimated_forceReload___block_invoke;
    v7[3] = &unk_1E8026098;
    reloadCopy = reload;
    animatedCopy = animated;
    v7[4] = self;
    [(PKPaymentPassDetailViewController *)self _reloadTransactionsWithCompletion:v7];
  }
}

void __84__PKPaymentPassDetailViewController__reloadTransactionSectionsAnimated_forceReload___block_invoke(uint64_t a1, int a2)
{
  v5[2] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 40) & 1) != 0 || a2)
  {
    v2 = *(a1 + 32);
    if (*(a1 + 41) == 1)
    {
      v5[0] = @"Transactions";
      v5[1] = @"TransactionsByYear";
      v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
      [v2 reloadPassDetailSections:v3 updates:0];
    }

    else
    {
      v4 = *(a1 + 32);

      [v4 reloadData:0];
    }
  }
}

- (void)_applyStaticPassPropertiesForPass
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  devicePaymentApplications = [(PKPaymentPass *)self->_pass devicePaymentApplications];
  v5 = [devicePaymentApplications countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(devicePaymentApplications);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        if ([v9 supportsContactlessPayment])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [devicePaymentApplications countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  contactlessPaymentApplications = self->_contactlessPaymentApplications;
  self->_contactlessPaymentApplications = v10;

  v12 = [(PKPaymentPass *)self->_pass sortedPaymentApplications:self->_contactlessPaymentApplications ascending:1];
  v13 = self->_contactlessPaymentApplications;
  self->_contactlessPaymentApplications = v12;

  devicePaymentApplications2 = [(PKPaymentPass *)self->_pass devicePaymentApplications];
  allObjects = [devicePaymentApplications2 allObjects];
  devicePaymentApplications = self->_devicePaymentApplications;
  self->_devicePaymentApplications = allObjects;

  v17 = [(PKPaymentPass *)self->_pass sortedPaymentApplications:self->_devicePaymentApplications ascending:1];
  v18 = self->_devicePaymentApplications;
  self->_devicePaymentApplications = v17;

  paymentServiceDataProvider = self->_paymentServiceDataProvider;
  uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
  v21 = [(PKPaymentDataProvider *)paymentServiceDataProvider defaultPaymentApplicationForPassUniqueIdentifier:uniqueID];
  defaultPaymentApplication = self->_defaultPaymentApplication;
  self->_defaultPaymentApplication = v21;

  if (!self->_defaultPaymentApplication)
  {
    devicePrimaryContactlessPaymentApplication = [(PKPaymentPass *)self->_pass devicePrimaryContactlessPaymentApplication];
    v24 = self->_defaultPaymentApplication;
    self->_defaultPaymentApplication = devicePrimaryContactlessPaymentApplication;
  }

  storeIdentifiers = [(PKPaymentPass *)self->_pass storeIdentifiers];
  appLaunchURL = [(PKPaymentPass *)self->_pass appLaunchURL];
  storeIDs = [(PKLinkedApplication *)self->_linkedApplication storeIDs];
  v28 = PKEqualObjects();

  defaultLaunchURL = [(PKLinkedApplication *)self->_linkedApplication defaultLaunchURL];
  v30 = PKEqualObjects();

  if ((v28 & 1) == 0)
  {
    [(PKLinkedApplication *)self->_linkedApplication setStoreIDs:storeIdentifiers];
  }

  if ((v30 & 1) == 0)
  {
    [(PKLinkedApplication *)self->_linkedApplication setDefaultLaunchURL:appLaunchURL];
  }

  [(PKPaymentPassDetailViewController *)self _reloadTitle];
}

- (void)_applyIvarsFromCollectedPropertiesViewModel:(id)model
{
  v38 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  pass = [modelCopy pass];
  pass = self->_pass;
  self->_pass = pass;

  [(PKPaymentPassDetailViewController *)self _applyStaticPassPropertiesForPass];
  transitBalanceModel = [modelCopy transitBalanceModel];
  transitBalanceModel = self->_transitBalanceModel;
  self->_transitBalanceModel = transitBalanceModel;

  balances = [modelCopy balances];
  balances = self->_balances;
  self->_balances = balances;

  actionForBalanceIdentifier = [modelCopy actionForBalanceIdentifier];
  actionForBalanceIdentifier = self->_actionForBalanceIdentifier;
  self->_actionForBalanceIdentifier = actionForBalanceIdentifier;

  transitPropertiesBalanceReminder = [modelCopy transitPropertiesBalanceReminder];
  transitPropertiesBalanceReminder = self->_transitPropertiesBalanceReminder;
  self->_transitPropertiesBalanceReminder = transitPropertiesBalanceReminder;

  reminderForBalanceIdentifier = [modelCopy reminderForBalanceIdentifier];
  v16 = [reminderForBalanceIdentifier mutableCopy];
  reminderForBalanceIdentifier = self->_reminderForBalanceIdentifier;
  self->_reminderForBalanceIdentifier = v16;

  transitPassProperties = [modelCopy transitPassProperties];
  transitProperties = self->_transitProperties;
  self->_transitProperties = transitPassProperties;

  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  displayableCommutePlans = [(PKTransitBalanceModel *)self->_transitBalanceModel displayableCommutePlans];
  v23 = [displayableCommutePlans countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v34;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(displayableCommutePlans);
        }

        v27 = *(*(&v33 + 1) + 8 * i);
        title = [v27 title];
        if (title)
        {
          [v21 addObject:v27];
          [v20 addObject:title];
        }
      }

      v24 = [displayableCommutePlans countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v24);
  }

  v29 = [v20 copy];
  commutePlanFields = self->_commutePlanFields;
  self->_commutePlanFields = v29;

  v31 = [v21 copy];
  commutePlans = self->_commutePlans;
  self->_commutePlans = v31;

  [(PKPaymentPassDetailViewController *)self _ingestPassFields];
  [(PKPaymentPassDetailViewController *)self _updateDisplayableBalances];
  [(PKPaymentPassDetailPassActionSectionController *)self->_passActionSectionController setTransitBalanceModel:self->_transitBalanceModel];
  [(PKPaymentPassDetailPassActionSectionController *)self->_passActionSectionController setPass:self->_pass];
  [(PKPaymentPassDetailAutoReloadActionSectionController *)self->_autoReloadActionSectionController updateAutoReloadSection:self->_pass];
  [(PKPassDetailBankConnectSectionController *)self->_bankConnectSectionController updatePass:self->_pass];
  [(PKPassDetailAccountCredentialsSectionController *)self->_accountCredentialsSectionController updatePass:self->_pass];
  [(PKPaymentPassDetailViewController *)self reloadData:0];
}

- (void)_updatePassPropertiesForPass:(id)pass completion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__PKPaymentPassDetailViewController__updatePassPropertiesForPass_completion___block_invoke;
  v10[3] = &unk_1E80260E8;
  objc_copyWeak(&v13, &location);
  v8 = passCopy;
  v11 = v8;
  v9 = completionCopy;
  v12 = v9;
  [(PKPaymentPassDetailViewController *)self _refreshStaleBalanceModelForPass:v8 completion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __77__PKPaymentPassDetailViewController__updatePassPropertiesForPass_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v11 = *(a1 + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77__PKPaymentPassDetailViewController__updatePassPropertiesForPass_completion___block_invoke_2;
    v13[3] = &unk_1E80260C0;
    objc_copyWeak(&v15, (a1 + 48));
    v14 = *(a1 + 40);
    [WeakRetained _updateDisplayableBalancesPlansAndTransitPropertiesForPass:v11 balances:v7 plans:v8 transitProperties:v9 withCompletion:v13];

    objc_destroyWeak(&v15);
  }

  else
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))();
    }
  }
}

void __77__PKPaymentPassDetailViewController__updatePassPropertiesForPass_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _applyIvarsFromCollectedPropertiesViewModel:v6];
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

- (void)_ingestPassFields
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  balanceFields = [(PKTransitBalanceModel *)self->_transitBalanceModel balanceFields];
  v5 = [balanceFields copy];
  balanceFields = self->_balanceFields;
  v20 = 1344;
  self->_balanceFields = v5;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  selfCopy = self;
  obj = [(PKPaymentPass *)self->_pass backFieldBuckets];
  v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v23 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v25;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v25 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v24 + 1) + 8 * j);
              v17 = [v16 key];
              if ([v17 hasPrefix:@"balance_identifier_field_"])
              {
                [v3 addObject:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v13);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  if (![*(&selfCopy->super.super.super.super.super.isa + v20) count])
  {
    v18 = [v3 copy];
    v19 = *(&selfCopy->super.super.super.super.super.isa + v20);
    *(&selfCopy->super.super.super.super.super.isa + v20) = v18;
  }
}

- (void)_transitExpressStateDidChange
{
  v4 = [(PKExpressPassController *)self->_expressPassController existingExpressPassConfigurationForPass:self->_pass];
  isNFCExpressEnabled = [v4 isNFCExpressEnabled];
  if (self->_nfcExpressModeEnabled != isNFCExpressEnabled)
  {
    self->_nfcExpressModeEnabled = isNFCExpressEnabled;
    [(PKPaymentPassDetailViewController *)self reloadSection:31 updates:0];
  }
}

- (void)_updateTransitExpressState
{
  v23 = *MEMORY[0x1E69E9840];
  if ((PKIsPad() & 1) == 0)
  {
    v3 = self->_pass;
    v4 = [(PKExpressPassController *)self->_expressPassController isExpressModeSupportedForPass:v3];
    expressPassController = self->_expressPassController;
    pass = self->_pass;
    if (v4)
    {
      v7 = [(PKExpressPassController *)expressPassController existingExpressPassConfigurationForPass:pass];
      self->_nfcExpressModeSupported = 1;
      self->_nfcExpressModeEnabled = [v7 isNFCExpressEnabled];
    }

    else
    {
      self->_nfcExpressModeSupported = [(PKExpressPassController *)expressPassController hasEligibleExpressUpgradeRequestForPass:pass];
      self->_nfcExpressModeEnabled = 0;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NO";
      nfcExpressModeSupported = self->_nfcExpressModeSupported;
      nfcExpressModeEnabled = self->_nfcExpressModeEnabled;
      if (self->_isCredentialedPass)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      if (v4)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v15 = 138413058;
      v16 = v12;
      if (nfcExpressModeSupported)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v17 = 2112;
      v18 = v13;
      if (nfcExpressModeEnabled)
      {
        v9 = @"YES";
      }

      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKPaymentPassDetailViewController: Updated for express info (credentialed: %@, express supported: %@, nfc supported: %@, nfc enabled: %@)", &v15, 0x2Au);
    }
  }
}

- (void)_updateDisplayableBalances
{
  v34 = *MEMORY[0x1E69E9840];
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy = self;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_balanceFields;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v30;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        if ([v7 foreignReferenceType] == 1 || objc_msgSend(v7, "foreignReferenceType") == 2)
        {
          foreignReferenceIdentifiers = [v7 foreignReferenceIdentifiers];
          if (foreignReferenceIdentifiers)
          {
            v9 = [(NSDictionary *)selfCopy->_balances objectForKeyedSubscript:foreignReferenceIdentifiers];
            localizedTitle = [v9 localizedTitle];
            v11 = localizedTitle;
            if (localizedTitle)
            {
              v12 = localizedTitle;
            }

            else
            {
              label = [v7 label];
              v14 = label;
              if (label)
              {
                v15 = label;
              }

              else
              {
                v15 = PKLocalizedPaymentString(&cfstr_PassDetailsDef.isa);
              }

              v12 = v15;
            }

            if (v9)
            {
              formattedValue = [v9 formattedValue];
            }

            else
            {
              formattedValue = 0;
            }

            label2 = [v7 label];
            v18 = PKEqualObjects();

            if ((v18 & 1) == 0)
            {
              [v7 setLabel:v12];
            }

            value = [v7 value];
            v20 = PKEqualObjects();

            if ((v20 & 1) == 0)
            {
              [v7 setUnformattedValue:formattedValue];
              [v7 flushCachedValue];
            }

            label3 = [v7 label];
            if (label3)
            {
              v22 = label3;
              value2 = [v7 value];

              if (value2)
              {
                [v26 addObject:v7];
              }
            }
          }
        }
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v4);
  }

  v24 = [v26 copy];
  displayableBalanceFields = selfCopy->_displayableBalanceFields;
  selfCopy->_displayableBalanceFields = v24;
}

- (void)_updateDisplayableBalancesPlansAndTransitPropertiesForPass:(id)pass balances:(id)balances plans:(id)plans transitProperties:(id)properties withCompletion:(id)completion
{
  v109 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  balancesCopy = balances;
  plansCopy = plans;
  propertiesCopy = properties;
  completionCopy = completion;
  transitBalanceModel = self->_transitBalanceModel;
  selfCopy = self;
  if (transitBalanceModel)
  {
    v16 = transitBalanceModel;
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x1E69B9308]) initWithPass:passCopy];
  }

  v17 = v16;
  [(PKTransitBalanceModel *)v16 setTransitProperties:propertiesCopy];
  [(PKTransitBalanceModel *)v17 updateWithDynamicBalances:balancesCopy];
  v68 = v17;
  v66 = plansCopy;
  [(PKTransitBalanceModel *)v17 updateWithDynamicCommutePlans:plansCopy];
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v19 = balancesCopy;
  v20 = [v19 countByEnumeratingWithState:&v100 objects:v108 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v101;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v101 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v100 + 1) + 8 * i);
        identifiers = [v24 identifiers];
        if (identifiers)
        {
          [v18 setObject:v24 forKeyedSubscript:identifiers];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v100 objects:v108 count:16];
    }

    while (v21);
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  displayableBalances = [(PKTransitBalanceModel *)v68 displayableBalances];
  v27 = [displayableBalances countByEnumeratingWithState:&v96 objects:v107 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v97;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v97 != v29)
        {
          objc_enumerationMutation(displayableBalances);
        }

        v31 = *(*(&v96 + 1) + 8 * j);
        identifiers2 = [v31 identifiers];
        if (identifiers2)
        {
          [v18 setObject:v31 forKeyedSubscript:identifiers2];
        }
      }

      v28 = [displayableBalances countByEnumeratingWithState:&v96 objects:v107 count:16];
    }

    while (v28);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  displayableCommutePlanBalances = [(PKTransitBalanceModel *)v68 displayableCommutePlanBalances];
  v34 = [displayableCommutePlanBalances countByEnumeratingWithState:&v92 objects:v106 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v93;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v93 != v36)
        {
          objc_enumerationMutation(displayableCommutePlanBalances);
        }

        v38 = *(*(&v92 + 1) + 8 * k);
        identifiers3 = [v38 identifiers];
        if (identifiers3)
        {
          [v18 setObject:v38 forKeyedSubscript:identifiers3];
        }
      }

      v35 = [displayableCommutePlanBalances countByEnumeratingWithState:&v92 objects:v106 count:16];
    }

    while (v35);
  }

  v64 = v18;
  v62 = [v18 copy];
  v75 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = v19;
  v72 = [obj countByEnumeratingWithState:&v88 objects:v105 count:16];
  if (v72)
  {
    v70 = *v89;
    v74 = *MEMORY[0x1E69BC060];
    v71 = passCopy;
    do
    {
      v40 = 0;
      do
      {
        if (*v89 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v73 = v40;
        identifiers4 = [*(*(&v88 + 1) + 8 * v40) identifiers];
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        availableActions = [passCopy availableActions];
        v42 = [availableActions countByEnumeratingWithState:&v84 objects:v104 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v85;
          do
          {
            for (m = 0; m != v43; ++m)
            {
              if (*v85 != v44)
              {
                objc_enumerationMutation(availableActions);
              }

              v46 = *(*(&v84 + 1) + 8 * m);
              associatedEnteredValueIdentifier = [v46 associatedEnteredValueIdentifier];
              v48 = [associatedEnteredValueIdentifier copy];
              v49 = v48;
              if (v48)
              {
                v50 = v48;
              }

              else
              {
                relevantPropertyIdentifier = [v46 relevantPropertyIdentifier];
                v52 = [relevantPropertyIdentifier copy];
                v53 = v52;
                v54 = v74;
                if (v52)
                {
                  v54 = v52;
                }

                v50 = v54;
              }

              if ([identifiers4 containsObject:v50])
              {
                [v75 setObject:v46 forKeyedSubscript:identifiers4];
              }
            }

            v43 = [availableActions countByEnumeratingWithState:&v84 objects:v104 count:16];
          }

          while (v43);
        }

        v40 = v73 + 1;
        passCopy = v71;
      }

      while (v73 + 1 != v72);
      v72 = [obj countByEnumeratingWithState:&v88 objects:v105 count:16];
    }

    while (v72);
  }

  v55 = [v75 copy];
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __144__PKPaymentPassDetailViewController__updateDisplayableBalancesPlansAndTransitPropertiesForPass_balances_plans_transitProperties_withCompletion___block_invoke;
  v77[3] = &unk_1E8026110;
  v78 = passCopy;
  v79 = propertiesCopy;
  v80 = v68;
  v81 = v62;
  v82 = v55;
  v83 = completionCopy;
  v56 = v55;
  v57 = v62;
  v58 = v68;
  v59 = propertiesCopy;
  v60 = passCopy;
  v61 = completionCopy;
  [(PKPaymentPassDetailViewController *)selfCopy _fetchBalanceRemindersWithActionForBalanceIdentifier:v75 transitProperties:v59 balances:v57 pass:v60 withCompletion:v77];
}

void __144__PKPaymentPassDetailViewController__updateDisplayableBalancesPlansAndTransitPropertiesForPass_balances_plans_transitProperties_withCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  if (a1[9])
  {
    v5 = a3;
    v6 = a2;
    v7 = [[PKPaymentPassDetailCollectedProperties alloc] initWithPass:a1[4] transitPassProperties:a1[5] transitBalanceModel:a1[6] balances:a1[7] actionForBalanceIdentifier:a1[8] transitPropertiesBalanceReminder:v6 reminderForBalanceIdentifier:v5];

    (*(a1[9] + 16))();
  }
}

- (void)_refreshDisplayWithBalances:(id)balances plans:(id)plans transitProperties:(id)properties
{
  balancesCopy = balances;
  plansCopy = plans;
  propertiesCopy = properties;
  v11 = self->_pass;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89__PKPaymentPassDetailViewController__refreshDisplayWithBalances_plans_transitProperties___block_invoke;
  v12[3] = &unk_1E8026138;
  objc_copyWeak(&v13, &location);
  [(PKPaymentPassDetailViewController *)self _updateDisplayableBalancesPlansAndTransitPropertiesForPass:v11 balances:balancesCopy plans:plansCopy transitProperties:propertiesCopy withCompletion:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __89__PKPaymentPassDetailViewController__refreshDisplayWithBalances_plans_transitProperties___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _applyIvarsFromCollectedPropertiesViewModel:v5];
  }
}

- (void)_handleUpdatedBalanceReminder:(id)reminder forBalanceWithIdentifier:(id)identifier
{
  reminderCopy = reminder;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v9 = [(NSMutableDictionary *)self->_reminderForBalanceIdentifier objectForKey:identifierCopy];

    if (v9)
    {
      reminderForBalanceIdentifier = self->_reminderForBalanceIdentifier;
      if (reminderCopy)
      {
        [(NSMutableDictionary *)reminderForBalanceIdentifier setObject:reminderCopy forKeyedSubscript:identifierCopy];
      }

      else
      {
        [(NSMutableDictionary *)reminderForBalanceIdentifier removeObjectForKey:identifierCopy];
      }

      goto LABEL_10;
    }

    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v12 = &v14;
LABEL_13:
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Received unknown balance reminder update.", v12, 2u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if (!self->_transitProperties)
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v12 = &v13;
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  objc_storeStrong(&self->_transitPropertiesBalanceReminder, reminder);
LABEL_10:
  [(PKPaymentPassDetailViewController *)self reloadSection:28 updates:0];
LABEL_15:
}

- (void)_fetchBalanceRemindersWithActionForBalanceIdentifier:(id)identifier transitProperties:(id)properties balances:(id)balances pass:(id)pass withCompletion:(id)completion
{
  v53 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  propertiesCopy = properties;
  balancesCopy = balances;
  passCopy = pass;
  completionCopy = completion;
  if (completionCopy)
  {
    v25 = completionCopy;
    v13 = dispatch_group_create();
    v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__339;
    v50 = __Block_byref_object_dispose__340;
    v51 = 0;
    if (objc_opt_respondsToSelector())
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      allKeys = [identifierCopy allKeys];
      v15 = [allKeys countByEnumeratingWithState:&v42 objects:v52 count:16];
      if (v15)
      {
        v16 = *v43;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v43 != v16)
            {
              objc_enumerationMutation(allKeys);
            }

            v18 = *(*(&v42 + 1) + 8 * i);
            v19 = [balancesCopy objectForKeyedSubscript:v18];
            if (v18)
            {
              dispatch_group_enter(v13);
              paymentServiceDataProvider = self->_paymentServiceDataProvider;
              v38[0] = MEMORY[0x1E69E9820];
              v38[1] = 3221225472;
              v38[2] = __137__PKPaymentPassDetailViewController__fetchBalanceRemindersWithActionForBalanceIdentifier_transitProperties_balances_pass_withCompletion___block_invoke;
              v38[3] = &unk_1E8026160;
              selfCopy = self;
              v22 = v19;
              v39 = v22;
              v40 = v28;
              v41 = v13;
              v23 = v22;
              self = selfCopy;
              [(PKPaymentDataProvider *)paymentServiceDataProvider balanceReminderThresholdForBalance:v23 pass:passCopy withCompletion:v38];
            }
          }

          v15 = [allKeys countByEnumeratingWithState:&v42 objects:v52 count:16];
        }

        while (v15);
      }

      if (propertiesCopy)
      {
        dispatch_group_enter(v13);
        v24 = self->_paymentServiceDataProvider;
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __137__PKPaymentPassDetailViewController__fetchBalanceRemindersWithActionForBalanceIdentifier_transitProperties_balances_pass_withCompletion___block_invoke_3;
        v35[3] = &unk_1E8026188;
        v37 = &v46;
        v36 = v13;
        [(PKPaymentDataProvider *)v24 balanceReminderThresholdForBalance:0 pass:passCopy withCompletion:v35];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __137__PKPaymentPassDetailViewController__fetchBalanceRemindersWithActionForBalanceIdentifier_transitProperties_balances_pass_withCompletion___block_invoke_5;
      block[3] = &unk_1E80261B0;
      v33 = v25;
      v34 = &v46;
      v32 = v28;
      dispatch_group_notify(v13, MEMORY[0x1E69E96A0], block);
    }

    else
    {
      (*(v25 + 2))(v25, v47[5], v28);
    }

    _Block_object_dispose(&v46, 8);

    completionCopy = v25;
  }
}

void __137__PKPaymentPassDetailViewController__fetchBalanceRemindersWithActionForBalanceIdentifier_transitProperties_balances_pass_withCompletion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] identifiers];
  v5 = [v4 anyObject];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __137__PKPaymentPassDetailViewController__fetchBalanceRemindersWithActionForBalanceIdentifier_transitProperties_balances_pass_withCompletion___block_invoke_2;
  v8[3] = &unk_1E8011C98;
  v9 = v3;
  v10 = v5;
  v11 = a1[5];
  v12 = a1[6];
  v6 = v5;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __137__PKPaymentPassDetailViewController__fetchBalanceRemindersWithActionForBalanceIdentifier_transitProperties_balances_pass_withCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32) && *(a1 + 40))
  {
    [*(a1 + 48) setObject:? forKeyedSubscript:?];
  }

  v2 = *(a1 + 56);

  dispatch_group_leave(v2);
}

void __137__PKPaymentPassDetailViewController__fetchBalanceRemindersWithActionForBalanceIdentifier_transitProperties_balances_pass_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __137__PKPaymentPassDetailViewController__fetchBalanceRemindersWithActionForBalanceIdentifier_transitProperties_balances_pass_withCompletion___block_invoke_4;
  block[3] = &unk_1E8021F48;
  v8 = v3;
  v6 = *(a1 + 32);
  v4 = v6;
  v9 = v6;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __137__PKPaymentPassDetailViewController__fetchBalanceRemindersWithActionForBalanceIdentifier_transitProperties_balances_pass_withCompletion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v2);
  }

  v3 = a1[5];

  dispatch_group_leave(v3);
}

- (unint64_t)_accountFeature
{
  result = [(PKAccount *)self->_account feature];
  if (!result)
  {
    pass = self->_pass;

    return [(PKPaymentPass *)pass associatedAccountFeatureIdentifier];
  }

  return result;
}

- (void)_fetchMerchantTokens
{
  if ([(PKPaymentPass *)self->_pass hasMerchantTokens])
  {
    if (!self->_merchantTokensResponse)
    {
      v3 = objc_alloc_init(MEMORY[0x1E69B9150]);
      [v3 setPass:self->_pass];
      objc_initWeak(&location, self);
      webService = self->_webService;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __57__PKPaymentPassDetailViewController__fetchMerchantTokens__block_invoke;
      v5[3] = &unk_1E8020730;
      objc_copyWeak(&v6, &location);
      [(PKPaymentWebService *)webService retrieveMerchantTokensWithRequest:v3 completion:v5];
      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }
  }
}

void __57__PKPaymentPassDetailViewController__fetchMerchantTokens__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__PKPaymentPassDetailViewController__fetchMerchantTokens__block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __57__PKPaymentPassDetailViewController__fetchMerchantTokens__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      if (!WeakRetained[246])
      {
        v4 = WeakRetained;
        objc_storeStrong(WeakRetained + 246, v3);
        [v4 _reloadMerchantTokenRows];
        WeakRetained = v4;
      }
    }
  }
}

- (void)_reloadMerchantTokenRows
{
  [(PKDynamicTableViewController *)self reloadRow:0 inSectionWithSectionIdentifier:@"MerchantTokens"];
  [(PKDynamicTableViewController *)self reloadRow:0 inSectionWithSectionIdentifier:@"AccountServiceMerchantTokens"];

  [(PKDynamicTableViewController *)self reloadRow:0 inSectionWithSectionIdentifier:@"PeerPaymentMerchantTokens"];
}

- (BOOL)shouldMapSection:(unint64_t)section
{
  tabBar = self->_tabBar;
  if (tabBar)
  {
    selectedSegmentIndex = [(UISegmentedControl *)tabBar selectedSegmentIndex];
  }

  else
  {
    selectedSegmentIndex = 0;
  }

  if ([(PKPaymentPass *)self->_pass activationState])
  {
    isShellPass = [(PKPaymentPass *)self->_pass isShellPass];
  }

  else
  {
    isShellPass = 1;
  }

  switch(section)
  {
    case 0uLL:
      if (selectedSegmentIndex)
      {
        goto LABEL_247;
      }

      storeIdentifiers = [(PKPaymentPass *)self->_pass storeIdentifiers];
      goto LABEL_184;
    case 1uLL:
      if (selectedSegmentIndex || !self->_peerPaymentAccount || !self->_peerPaymentAccountResolutionController)
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self _shouldShowAccountActions];
    case 2uLL:
      if (selectedSegmentIndex)
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self _shouldShowAccessPersonInformation];
    case 3uLL:
      if (selectedSegmentIndex || ![(PKPaymentPass *)self->_pass isAccessPass])
      {
        goto LABEL_247;
      }

      cardHolderPicture = [(PKPaymentPass *)self->_pass cardHolderPicture];
      if (!cardHolderPicture)
      {
        goto LABEL_249;
      }

      LOBYTE(selectedSegmentIndex) = ![(PKConfigurablePassDetailSectionsController *)self->_configurableSectionController hasArbitraryInfoField:*MEMORY[0x1E69BBB70]];
      goto LABEL_250;
    case 4uLL:
      if (selectedSegmentIndex)
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self shouldShowIdentityDocumentSection];
    case 5uLL:
      if (selectedSegmentIndex)
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self shouldShowReplaceBiometricSection];
    case 6uLL:
      if (selectedSegmentIndex)
      {
        goto LABEL_247;
      }

      storeIdentifiers = [(PKPaymentPass *)self->_pass barcodes];
LABEL_184:
      currentUser = storeIdentifiers;
      v10 = [storeIdentifiers count];
      goto LABEL_185;
    case 7uLL:
      if (((selectedSegmentIndex == 0) & isShellPass) != 1)
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self _shouldShowAutomaticPresentation];
    case 8uLL:
      if (selectedSegmentIndex)
      {
        goto LABEL_247;
      }

      pass = self->_pass;

      return [(PKPaymentPass *)pass isCarKeyPass];
    case 9uLL:
      if (selectedSegmentIndex)
      {
        goto LABEL_247;
      }

      cardHolderPicture = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
      if (![cardHolderPicture length] || -[PKPaymentPassDetailViewController _shouldShowServicingSection](self, "_shouldShowServicingSection"))
      {
        goto LABEL_249;
      }

      LOBYTE(selectedSegmentIndex) = [(PKPaymentPassDetailViewController *)self _accountFeature]!= 4;
      goto LABEL_250;
    case 0xAuLL:
      if (selectedSegmentIndex || ![(PKPaymentPassDetailViewController *)self _shouldShowServicingSection])
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self shouldShowAccountUsersSection];
    case 0xBuLL:
      if (selectedSegmentIndex)
      {
        goto LABEL_247;
      }

      cardHolderPicture = [(PKAccount *)self->_account creditDetails];
      installmentPlans = [cardHolderPicture installmentPlans];
      LOBYTE(selectedSegmentIndex) = [installmentPlans count] && -[PKPaymentPassDetailViewController _shouldShowServicingSection](self, "_shouldShowServicingSection") && (-[PKAccount blockAllAccountAccess](self->_account, "blockAllAccountAccess") & 1) == 0 && -[PKAccount state](self->_account, "state") != 3;
      goto LABEL_75;
    case 0xCuLL:
      if (selectedSegmentIndex)
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self _shouldShowCardNumbersSection];
    case 0xDuLL:
      if (selectedSegmentIndex)
      {
        goto LABEL_247;
      }

      account = self->_account;
      if (!account)
      {
        goto LABEL_247;
      }

      cardHolderPicture = [(PKAccount *)account creditDetails];
      if (cardHolderPicture && [(PKAccount *)self->_account supportsShowAccountSummary])
      {
        goto LABEL_168;
      }

      goto LABEL_249;
    case 0xEuLL:
      if (selectedSegmentIndex)
      {
        goto LABEL_247;
      }

      v19 = self->_account;
      if (!v19)
      {
        goto LABEL_247;
      }

      cardHolderPicture = [(PKAccount *)v19 creditDetails];
      if (!cardHolderPicture || ![(PKAccount *)self->_account supportsShowAccountSummary]|| ![(PKPaymentPassDetailViewController *)self _shouldShowServicingSection])
      {
        goto LABEL_249;
      }

LABEL_168:
      _shouldShowServicingSection = [MEMORY[0x1E69B8770] shouldDisplayAccountInformationForTransactionSourceCollection:self->_transactionSourceCollection withAccount:self->_account];
      goto LABEL_229;
    case 0xFuLL:
      if (selectedSegmentIndex || ([(PKPaymentPass *)self->_pass hasMerchantTokens]& 1) == 0 && ![(PKPaymentPass *)self->_pass hadMerchantTokens])
      {
        goto LABEL_247;
      }

      creditDetails = [(PKAccount *)self->_account creditDetails];
      LOBYTE(selectedSegmentIndex) = creditDetails != 0;
      goto LABEL_301;
    case 0x10uLL:
      if (selectedSegmentIndex || !self->_account || ![(PKPaymentPassDetailViewController *)self _shouldShowProductBenefitsCell])
      {
        goto LABEL_247;
      }

      goto LABEL_139;
    case 0x11uLL:
      if (selectedSegmentIndex || ![(PKPaymentPassDetailViewController *)self _accountInGoodStateForAMPEligbilityCheck])
      {
        goto LABEL_247;
      }

      isAmpEligible = self->_isAmpEligible;
      goto LABEL_10;
    case 0x12uLL:
      if (selectedSegmentIndex)
      {
        goto LABEL_247;
      }

      v34 = self->_account;
      if (!v34 || ![(PKAccount *)v34 supportsRedeemRewards]|| !self->_allowStatementCreditRedemption && !self->_cashbackResolution)
      {
        goto LABEL_247;
      }

      if (![MEMORY[0x1E69B8770] shouldDisplayAccountInformationForTransactionSourceCollection:self->_transactionSourceCollection withAccount:self->_account] || !-[PKPaymentPassDetailViewController _shouldShowServicingSection](self, "_shouldShowServicingSection"))
      {
        goto LABEL_247;
      }

      if ([(PKAccount *)self->_account accessLevel]!= 2 || self->_peerPaymentAccount)
      {
        goto LABEL_221;
      }

      currentUser = [(PKFamilyMemberCollection *)self->_familyCollection currentUser];
      LOBYTE(selectedSegmentIndex) = [currentUser memberType] == 0;
      goto LABEL_257;
    case 0x13uLL:
      if (selectedSegmentIndex)
      {
        goto LABEL_247;
      }

      v40 = self->_account;
      if (!v40)
      {
        goto LABEL_247;
      }

      cardHolderPicture = [(PKAccount *)v40 creditDetails];
      if (!cardHolderPicture || !self->_physicalCardController || -[PKPaymentPassDetailViewController _numberOfAccountServicePhysicalCardRowsEnabled](self, "_numberOfAccountServicePhysicalCardRowsEnabled") < 1 || ![MEMORY[0x1E69B8770] shouldDisplayAccountInformationForTransactionSourceCollection:self->_transactionSourceCollection withAccount:self->_account])
      {
        goto LABEL_249;
      }

      _shouldShowServicingSection = [(PKPaymentPassDetailViewController *)self _shouldShowServicingSection];
LABEL_229:
      LOBYTE(selectedSegmentIndex) = _shouldShowServicingSection;
      goto LABEL_250;
    case 0x14uLL:
      traitCollection = [(PKPaymentPassDetailViewController *)self traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      if ((((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL | selectedSegmentIndex) == 0) & isShellPass) != 1 || (objc_opt_respondsToSelector() & 1) == 0 || ![(PKPaymentDataProvider *)self->_paymentServiceDataProvider supportsMessagesForPass:self->_pass])
      {
        goto LABEL_247;
      }

      cardHolderPicture = [(PKPaymentPass *)self->_pass messageServiceURL];
      if (!cardHolderPicture)
      {
        goto LABEL_249;
      }

      messagePushTopic = [(PKPaymentPass *)self->_pass messagePushTopic];
      LOBYTE(selectedSegmentIndex) = messagePushTopic != 0;

      goto LABEL_250;
    case 0x15uLL:
      felicaProperties = [(PKTransitPassProperties *)self->_transitProperties felicaProperties];
      currentUser = felicaProperties;
      if (felicaProperties)
      {
        v31 = selectedSegmentIndex == 0;
      }

      else
      {
        v31 = 0;
      }

      if (v31)
      {
        LOBYTE(selectedSegmentIndex) = [felicaProperties hasGreenCarTicket];
      }

      else
      {
        LOBYTE(selectedSegmentIndex) = 0;
      }

      goto LABEL_257;
    case 0x16uLL:
    case 0x19uLL:
      if (selectedSegmentIndex)
      {
        goto LABEL_247;
      }

      isAmpEligible = self->_peerPaymentAccount != 0;
LABEL_10:
      LOBYTE(selectedSegmentIndex) = isAmpEligible & isShellPass;
      return selectedSegmentIndex & 1;
    case 0x17uLL:
      if (selectedSegmentIndex || ((self->_peerPaymentAccount != 0) & isShellPass) != 1)
      {
        goto LABEL_247;
      }

      v23 = self->_detailViewStyle == 2;
      goto LABEL_233;
    case 0x18uLL:
      if (selectedSegmentIndex)
      {
        goto LABEL_247;
      }

      peerPaymentAccount = self->_peerPaymentAccount;
      if (!peerPaymentAccount)
      {
        goto LABEL_247;
      }

      if (self->_loadingPeerPaymentPreferences)
      {
        if (!isShellPass)
        {
          goto LABEL_247;
        }
      }

      else if (((self->_peerPaymentPreferences != 0) & isShellPass) == 0)
      {
        goto LABEL_247;
      }

      if ([(PKPeerPaymentAccount *)peerPaymentAccount state]!= 3)
      {
        v23 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount state]== 4;
LABEL_233:
        LOBYTE(selectedSegmentIndex) = !v23;
        return selectedSegmentIndex & 1;
      }

LABEL_247:
      LOBYTE(selectedSegmentIndex) = 0;
      return selectedSegmentIndex & 1;
    case 0x1AuLL:
      if (((selectedSegmentIndex == 0) & isShellPass) != 1 || [(PKPaymentPass *)self->_pass contactlessActivationGroupingType]!= 2)
      {
        goto LABEL_247;
      }

      v42 = self->_pass;

      return [(PKPaymentPass *)v42 hasContactlessDevicePaymentApplicationsAvailable];
    case 0x1BuLL:
      if (selectedSegmentIndex || ![(PKPaymentPassDetailViewController *)self _isShowingLostModeInterface]&& isShellPass == 1 || !self->_detailViewStyle)
      {
        goto LABEL_247;
      }

      selectedSegmentIndex = self->_pass;
      currentUser = [(PKPaymentWebService *)self->_webService targetDevice];
      secureElementIdentifiers = [currentUser secureElementIdentifiers];
      LOBYTE(selectedSegmentIndex) = [selectedSegmentIndex isPrecursorPass:secureElementIdentifiers] ^ 1;

      goto LABEL_257;
    case 0x1CuLL:
      if (selectedSegmentIndex || ([(PKPaymentPass *)self->_pass isStoredValuePass]& 1) == 0 && ![(PKPaymentPass *)self->_pass isAccessPass]|| [(PKPaymentPass *)self->_pass activationState])
      {
        goto LABEL_247;
      }

      if ([(NSArray *)self->_displayableBalanceFields count])
      {
        goto LABEL_221;
      }

      v41 = [(NSArray *)self->_commutePlanFields count];
LABEL_232:
      v23 = v41 == 0;
      goto LABEL_233;
    case 0x1DuLL:
      if (selectedSegmentIndex)
      {
        goto LABEL_247;
      }

      v41 = [(PKPaymentPassDetailViewController *)self _contactBankCellWithOutput:0 forRowIndex:0 tableView:0];
      goto LABEL_232;
    case 0x1EuLL:
      if (selectedSegmentIndex || ([(PKPaymentPass *)self->_pass hasMerchantTokens]& 1) == 0 && ![(PKPaymentPass *)self->_pass hadMerchantTokens])
      {
        goto LABEL_247;
      }

      v23 = self->_peerPaymentAccount == 0;
      goto LABEL_233;
    case 0x1FuLL:
      if (selectedSegmentIndex || ([(PKPaymentPass *)self->_pass isAccessPass]& 1) != 0 || self->_isCredentialedPass || ![(PKPaymentPassDetailViewController *)self _cardInfoSectionGenerateCellWithOutput:0 forRowIndex:0 tableView:0])
      {
        goto LABEL_247;
      }

      if (self->_account)
      {
        goto LABEL_121;
      }

      goto LABEL_221;
    case 0x20uLL:
      if (selectedSegmentIndex || ([(PKPaymentPass *)self->_pass isTransitPass]& 1) != 0 || ([(PKPaymentPass *)self->_pass isAccessPass]& 1) != 0 || ([(PKPaymentPass *)self->_pass isIdentityPass]& 1) != 0 || ([(PKPaymentPass *)self->_pass supportsBarcodePayment]& 1) != 0 || ([(PKPaymentPass *)self->_pass isEMoneyPass]& 1) != 0 || self->_isCredentialedPass || self->_peerPaymentAccount)
      {
        goto LABEL_247;
      }

      cardHolderPicture = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
      if (cardHolderPicture && self->_detailViewStyle != 2 || [(PKPaymentPassDetailViewController *)self _accountFeature]== 4)
      {
LABEL_249:
        LOBYTE(selectedSegmentIndex) = 0;
      }

      else
      {
        installmentPlans = [(PKPaymentPass *)self->_pass deviceAccountNumberSuffix];
        if ([installmentPlans length])
        {
          LOBYTE(selectedSegmentIndex) = ![(PKPaymentPassDetailViewController *)self _shouldShowCardNumbersSection];
        }

        else
        {
          sanitizedDeviceAccountNumber = [(PKPaymentPass *)self->_pass sanitizedDeviceAccountNumber];
          if ([sanitizedDeviceAccountNumber length])
          {
            LOBYTE(selectedSegmentIndex) = ![(PKPaymentPassDetailViewController *)self _shouldShowCardNumbersSection];
          }

          else
          {
            LOBYTE(selectedSegmentIndex) = 0;
          }
        }

LABEL_75:
      }

LABEL_250:

      return selectedSegmentIndex & 1;
    case 0x21uLL:
      if (selectedSegmentIndex || ([(PKPaymentPass *)self->_pass hasMerchantTokens]& 1) == 0 && ![(PKPaymentPass *)self->_pass hadMerchantTokens])
      {
        goto LABEL_247;
      }

      creditDetails = [(PKAccount *)self->_account creditDetails];
      if (creditDetails)
      {
        LOBYTE(selectedSegmentIndex) = 0;
      }

      else
      {
        LOBYTE(selectedSegmentIndex) = self->_peerPaymentAccount == 0;
      }

LABEL_301:

      return selectedSegmentIndex & 1;
    case 0x22uLL:
      familyMembersByAltDSID = [(PKFamilyMemberCollection *)self->_familyCollection familyMembersByAltDSID];
      altDSID = [(PKPeerPaymentAccount *)self->_peerPaymentAccount altDSID];
      v16 = [familyMembersByAltDSID objectForKey:altDSID];

      if ([v16 isOrganizer])
      {
        isParent = 1;
      }

      else
      {
        isParent = [v16 isParent];
      }

      role = [(PKPeerPaymentAccount *)self->_peerPaymentAccount role];
      supportsFamilySharing = [(PKPeerPaymentAccount *)self->_peerPaymentAccount supportsFamilySharing];
      detailViewStyle = self->_detailViewStyle;
      v61 = supportsFamilySharing;
      if (detailViewStyle != 2)
      {
        v47 = 1;
        goto LABEL_288;
      }

      v60 = isParent;
      v59 = role;
      if (objc_opt_respondsToSelector())
      {
        deviceVersion = [(PKPaymentDataProvider *)self->_paymentServiceDataProvider deviceVersion];
      }

      else
      {
        deviceVersion = 0;
      }

      mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
      account = [mEMORY[0x1E69B9000] account];
      supportsFamilySharingFeatureDescriptor = [account supportsFamilySharingFeatureDescriptor];
      osVersionRange = [supportsFamilySharingFeatureDescriptor osVersionRange];

      if (!deviceVersion)
      {
        v47 = 0;
        isParent = v60;
        goto LABEL_286;
      }

      isParent = v60;
      if (osVersionRange || (PKPeerPaymentSkipFamilySharingVersionCheck() & 1) != 0)
      {
        v47 = [osVersionRange versionMeetsRequirements:deviceVersion deviceClass:@"Watch"];
LABEL_286:
        role = v59;
        goto LABEL_287;
      }

      v57 = PKLogFacilityTypeGetObject();
      role = v59;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v57, OS_LOG_TYPE_DEFAULT, "The server has not populated the minimum version requirement for familySharing. Assuming that the targetDevice is the correct version", buf, 2u);
      }

      v47 = 1;
LABEL_287:

      detailViewStyle = 2;
LABEL_288:
      if (selectedSegmentIndex)
      {
        goto LABEL_289;
      }

      v55 = [(NSArray *)self->_sortedFamilyMemberRowModels count];
      if (detailViewStyle && v55)
      {
        v56 = (self->_peerPaymentAccount != 0) & isShellPass;
        if (role)
        {
          v56 = 0;
        }

        if ((v56 & v61) == 1)
        {
          LOBYTE(selectedSegmentIndex) = (self->_familyCollection != 0) & isParent & v47;
        }

        else
        {
LABEL_289:
          LOBYTE(selectedSegmentIndex) = 0;
        }
      }

LABEL_290:

      return selectedSegmentIndex & 1;
    case 0x23uLL:
      if (((selectedSegmentIndex == self->_hasTabBar) & isShellPass) != 1 || !self->_allContentIsLoaded || (objc_opt_respondsToSelector() & 1) == 0 || ![(PKPaymentDataProvider *)self->_paymentServiceDataProvider supportsTransactionsForPass:self->_pass]|| !self->_detailViewStyle)
      {
        goto LABEL_247;
      }

      if (self->_peerPaymentAccount || ([(PKPaymentPass *)self->_pass supportsDPANNotifications]& 1) != 0 || ([(PKPaymentPass *)self->_pass supportsFPANNotifications]& 1) != 0 || ([(PKPaymentApplication *)self->_defaultPaymentApplication generatesLocalTransactions]& 1) != 0)
      {
        goto LABEL_221;
      }

      if (!self->_account)
      {
        goto LABEL_247;
      }

      goto LABEL_121;
    case 0x24uLL:
      if (selectedSegmentIndex != 1 || !self->_allContentIsLoaded || ![(PKPaymentDataProvider *)self->_paymentServiceDataProvider supportsTransactionsForPass:self->_pass]|| [(PKPaymentPassDetailViewController *)self shouldMapSection:37]|| ([(PKPaymentPass *)self->_pass supportsFPANNotifications]& 1) != 0)
      {
        goto LABEL_247;
      }

      supportsDPANNotifications = [(PKPaymentPass *)self->_pass supportsDPANNotifications];
      goto LABEL_69;
    case 0x25uLL:
      if (!self->_allContentIsLoaded)
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self _shouldShowTransactionsSection];
    case 0x26uLL:
      if (selectedSegmentIndex != 1 || ![(NSArray *)self->_transactionCountAndYear count])
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self shouldMapSection:37];
    case 0x27uLL:
      if (selectedSegmentIndex)
      {
        goto LABEL_247;
      }

      group = self->_group;
      if (!group)
      {
        goto LABEL_247;
      }

      LOBYTE(selectedSegmentIndex) = [(PKGroup *)group passCount]> 1;
      return selectedSegmentIndex & 1;
    case 0x28uLL:
      if (selectedSegmentIndex || ![(PKPaymentPassDetailViewController *)self _shouldShowBillingAddressCell])
      {
        goto LABEL_247;
      }

      if (!self->_account)
      {
        goto LABEL_221;
      }

      if (!self->_loadingBillingContact && !self->_billingContact || ![(PKPaymentPassDetailViewController *)self _shouldShowServicingSection])
      {
        goto LABEL_247;
      }

      if (!self->_account)
      {
LABEL_221:
        LOBYTE(selectedSegmentIndex) = 1;
        return selectedSegmentIndex & 1;
      }

LABEL_121:
      v24 = MEMORY[0x1E69B8770];
      transactionSourceCollection = self->_transactionSourceCollection;

      return [v24 shouldDisplayAccountInformationForTransactionSourceCollection:transactionSourceCollection withAccount:?];
    case 0x29uLL:
      if (selectedSegmentIndex || !self->_account || ![(PKPaymentPassDetailViewController *)self _shouldShowNetworkBenefitsCell])
      {
        goto LABEL_247;
      }

LABEL_139:
      if (![MEMORY[0x1E69B8770] shouldDisplayAccountInformationForTransactionSourceCollection:self->_transactionSourceCollection withAccount:self->_account])
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self _shouldShowServicingSection];
    case 0x2AuLL:
      familyMembersByAltDSID2 = [(PKFamilyMemberCollection *)self->_familyCollection familyMembersByAltDSID];
      altDSID2 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount altDSID];
      v16 = [familyMembersByAltDSID2 objectForKey:altDSID2];

      v39 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount state]== 1 && [(PKPeerPaymentAccount *)self->_peerPaymentAccount stage]== 3;
      if ([(PKPeerPaymentAccount *)self->_peerPaymentAccount isParticipantAccountLockedByOwner])
      {
        supportsGraduationWhileAssociatedAccountLocked = [(PKPeerPaymentAccount *)self->_peerPaymentAccount supportsGraduationWhileAssociatedAccountLocked];
      }

      else
      {
        supportsGraduationWhileAssociatedAccountLocked = 0;
      }

      if (PKIsAltAccountPairedOrPairing())
      {
        v49 = self->_detailViewStyle != 2;
      }

      else
      {
        v49 = 1;
      }

      if (selectedSegmentIndex)
      {
        goto LABEL_289;
      }

      v50 = self->_peerPaymentAccount;
      if (!v50 || ((self->_peerPaymentAccountResolutionController != 0) & isShellPass) != 1 || [(PKPeerPaymentAccount *)v50 role]!= 1)
      {
        goto LABEL_289;
      }

      LOBYTE(selectedSegmentIndex) = 0;
      if (!self->_familyCollection || !v16)
      {
        goto LABEL_290;
      }

      if ([v16 memberType] || !-[PKPeerPaymentAccount supportsFamilySharing](self->_peerPaymentAccount, "supportsFamilySharing"))
      {
        goto LABEL_289;
      }

      LOBYTE(selectedSegmentIndex) = v49 & (supportsGraduationWhileAssociatedAccountLocked | v39);
      goto LABEL_290;
    case 0x2BuLL:
      if (PKIsAltAccountPairedOrPairing() && self->_detailViewStyle == 2 || selectedSegmentIndex != self->_hasTabBar || ((self->_peerPaymentAccount != 0) & isShellPass) != 1)
      {
        goto LABEL_247;
      }

      currentUser = PKPrimaryAppleAccountEmail();
      v10 = [currentUser length];
LABEL_185:
      LOBYTE(selectedSegmentIndex) = v10 != 0;
LABEL_257:

      return selectedSegmentIndex & 1;
    case 0x2CuLL:
      if (selectedSegmentIndex)
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self shouldShowVerifySSNSection];
    case 0x2DuLL:
      if (selectedSegmentIndex)
      {
        goto LABEL_247;
      }

      if ([(PKPaymentPassDetailViewController *)self _shouldShowTermsCell]|| [(PKPaymentPassDetailViewController *)self _shouldShowPrivacyPolicyCell])
      {
        goto LABEL_221;
      }

      return [(PKPaymentPassDetailViewController *)self passSupportsDeviceAssessment];
    case 0x2EuLL:
      if (selectedSegmentIndex || !self->_peerPaymentAccount || !self->_peerPaymentAccountResolutionController || [(PKPaymentPassDetailViewController *)self _shouldShowAccountActions])
      {
        goto LABEL_247;
      }

      return PKPeerPaymentAccountCanPerformManualIdentityVerification();
    case 0x2FuLL:
      if (selectedSegmentIndex)
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self shouldShowAccountUserStopSharingSection];
    case 0x30uLL:
      if (selectedSegmentIndex)
      {
        goto LABEL_247;
      }

      supportsDPANNotifications = [(PKPaymentPass *)self->_pass isHomeKeyPass];
LABEL_69:
      LOBYTE(selectedSegmentIndex) = supportsDPANNotifications ^ 1;
      return selectedSegmentIndex & 1;
    default:
      goto LABEL_247;
  }
}

- (BOOL)_shouldShowTransactionsSection
{
  tabBar = self->_tabBar;
  if (!tabBar)
  {
    [(PKPaymentPassDetailViewController *)self _isBankConnectLinked];
    goto LABEL_18;
  }

  selectedSegmentIndex = [(UISegmentedControl *)tabBar selectedSegmentIndex];
  if ([(PKPaymentPassDetailViewController *)self _isBankConnectLinked])
  {
    if (selectedSegmentIndex == 1)
    {
      LOBYTE(v5) = [(PKPaymentPassDetailViewController *)self _transactionsCount]!= 0;
      return v5;
    }

LABEL_18:
    LOBYTE(v5) = 0;
    return v5;
  }

  if (selectedSegmentIndex != 1)
  {
    goto LABEL_18;
  }

  v5 = [(PKPaymentDataProvider *)self->_paymentServiceDataProvider supportsTransactionsForPass:self->_pass];
  if (!v5)
  {
    return v5;
  }

  if (self->_peerPaymentAccount || (([(PKPaymentPass *)self->_pass supportsFPANNotifications]& 1) != 0 || ([(PKPaymentPass *)self->_pass supportsDPANNotifications]& 1) != 0 || ([(PKPaymentPass *)self->_pass isStoredValuePass]& 1) != 0 || [(PKPaymentPass *)self->_pass isIdentityPass]) && ([(PKPaymentPass *)self->_pass settings]& 8) != 0)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  if (!self->_account)
  {
    goto LABEL_18;
  }

  v6 = MEMORY[0x1E69B8770];
  transactionSourceCollection = self->_transactionSourceCollection;

  LOBYTE(v5) = [v6 shouldDisplayAccountInformationForTransactionSourceCollection:transactionSourceCollection withAccount:?];
  return v5;
}

- (void)setPrimaryTextColor:(id)color
{
  objc_storeStrong(&self->_primaryTextColor, color);

  [(PKPaymentPassDetailViewController *)self _decorateSections];
}

- (void)setDetailTextColor:(id)color
{
  objc_storeStrong(&self->_detailTextColor, color);

  [(PKPaymentPassDetailViewController *)self _decorateSections];
}

- (void)setLinkTextColor:(id)color
{
  objc_storeStrong(&self->_linkTextColor, color);

  [(PKPaymentPassDetailViewController *)self _decorateSections];
}

- (void)setWarningTextColor:(id)color
{
  objc_storeStrong(&self->_warningTextColor, color);

  [(PKPaymentPassDetailViewController *)self _decorateSections];
}

- (void)setHighlightColor:(id)color
{
  objc_storeStrong(&self->_highlightColor, color);

  [(PKPaymentPassDetailViewController *)self _decorateSections];
}

- (void)reloadData:(BOOL)data
{
  viewIfLoaded = [(PKPaymentPassDetailViewController *)self viewIfLoaded];

  if (viewIfLoaded)
  {
    [(PKPaymentPassDetailViewController *)self _updateSectionControllersWithSelectedSectionSegment];
    paymentPassDetailSectionController = self->_paymentPassDetailSectionController;
    _recomputeMappedSections = [(PKPaymentPassDetailViewController *)self _recomputeMappedSections];
    [(PKPaymentPassDetailWrapperSectionController *)paymentPassDetailSectionController setSectionIdentifiers:_recomputeMappedSections];

    sectionControllers = self->_sectionControllers;
    _activeOrderOfSectionIdentifiers = [(PKPaymentPassDetailViewController *)self _activeOrderOfSectionIdentifiers];
    [(PKDynamicTableViewController *)self setSectionControllers:sectionControllers sectionIdentifiers:_activeOrderOfSectionIdentifiers];
  }
}

- (void)reloadSection:(unint64_t)section updates:(id)updates
{
  v10[1] = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  viewIfLoaded = [(PKPaymentPassDetailViewController *)self viewIfLoaded];

  if (viewIfLoaded)
  {
    v8 = PKPassDetailSectionTypeToString(section);
    v10[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(PKPaymentPassDetailViewController *)self reloadPassDetailSections:v9 updates:updatesCopy];
  }
}

- (void)reloadNecessarySectionControllerSections
{
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  allSectionIdentifiers = [(PKPassDetailBankConnectSectionController *)self->_bankConnectSectionController allSectionIdentifiers];
  [v6 addObjectsFromArray:allSectionIdentifiers];

  allSectionIdentifiers2 = [(PKPassDetailAccountCredentialsSectionController *)self->_accountCredentialsSectionController allSectionIdentifiers];
  [v6 addObjectsFromArray:allSectionIdentifiers2];

  allObjects = [v6 allObjects];
  [(PKPaymentPassDetailViewController *)self reloadSections:allObjects];
}

- (void)reloadPassDetailSections:(id)sections updates:(id)updates
{
  v30 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  updatesCopy = updates;
  viewIfLoaded = [(PKPaymentPassDetailViewController *)self viewIfLoaded];

  if (viewIfLoaded)
  {
    [(PKPaymentPassDetailViewController *)self _resetSwitchesIfNecessary:sectionsCopy];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = sectionsCopy;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = 0;
      v11 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = PKPassDetailSectionTypeFromString(v13);
          if (v14 >= 0x31)
          {
            __break(1u);
          }

          v15 = [(PKDynamicTableViewController *)self hasSectionForSectionIdentifier:v13];
          v16 = [(PKPaymentPassDetailViewController *)self shouldMapSection:v14];
          if (v15 && v16)
          {
            [v7 addObject:v13];
          }

          else
          {
            v10 |= v15 ^ v16;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);

      if (v10)
      {
        objc_initWeak(&location, self);
        _activeOrderOfSectionIdentifiers = [(PKPaymentPassDetailViewController *)self _activeOrderOfSectionIdentifiers];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __70__PKPaymentPassDetailViewController_reloadPassDetailSections_updates___block_invoke;
        v21[3] = &unk_1E8011108;
        objc_copyWeak(&v23, &location);
        v21[4] = self;
        v22 = updatesCopy;
        [(PKDynamicTableViewController *)self recomputeMappedSectionsAndReloadSections:v7 sectionIdentifiers:_activeOrderOfSectionIdentifiers updates:v21];

        objc_destroyWeak(&v23);
        objc_destroyWeak(&location);
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
    }

    if ([v7 count])
    {
      v20.receiver = self;
      v20.super_class = PKPaymentPassDetailViewController;
      [(PKDynamicTableViewController *)&v20 reloadSectionIdentifiers:v7 updates:updatesCopy];
    }

    goto LABEL_18;
  }

LABEL_19:
}

void __70__PKPaymentPassDetailViewController_reloadPassDetailSections_updates___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 40);
    v6 = WeakRetained;
    if (v3)
    {
      (*(v3 + 16))();
      WeakRetained = v6;
    }

    v4 = WeakRetained[235];
    v5 = [*(a1 + 32) _recomputeMappedSections];
    [v4 setSectionIdentifiers:v5];

    WeakRetained = v6;
  }
}

- (void)reloadSections:(id)sections
{
  sectionsCopy = sections;
  viewIfLoaded = [(PKPaymentPassDetailViewController *)self viewIfLoaded];

  if (viewIfLoaded && [sectionsCopy count])
  {
    [(PKPaymentPassDetailViewController *)self _resetSwitchesIfNecessary:sectionsCopy];
    _activeOrderOfSectionIdentifiers = [(PKPaymentPassDetailViewController *)self _activeOrderOfSectionIdentifiers];
    [(PKDynamicTableViewController *)self recomputeMappedSectionsAndReloadSections:sectionsCopy sectionIdentifiers:_activeOrderOfSectionIdentifiers updates:0];
  }
}

- (void)_resetSwitchesIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if ([necessaryCopy containsObject:@"TransactionTransactionsSwitch"])
  {
    transactionsSwitch = self->_transactionsSwitch;
    self->_transactionsSwitch = 0;

    notificationsSwitch = self->_notificationsSwitch;
    self->_notificationsSwitch = 0;

    dailyCashSwitch = self->_dailyCashSwitch;
    self->_dailyCashSwitch = 0;
  }

  if ([necessaryCopy containsObject:@"TransactionMessagesSwitch"])
  {
    messagesSwitch = self->_messagesSwitch;
    self->_messagesSwitch = 0;
  }

  if ([necessaryCopy containsObject:@"AutomaticPresentation"])
  {
    automaticPresentationSwitch = self->_automaticPresentationSwitch;
    self->_automaticPresentationSwitch = 0;
  }
}

- (id)_activeOrderOfSectionIdentifiers
{
  v19 = *MEMORY[0x1E69E9840];
  tabBar = self->_tabBar;
  if (!tabBar)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    goto LABEL_12;
  }

  selectedSegmentIndex = [(UISegmentedControl *)tabBar selectedSegmentIndex];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (selectedSegmentIndex != 1)
  {
LABEL_12:
    [v5 addObjectsFromArray:self->_orderOfSectionIdentifiers];
    goto LABEL_13;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_sectionControllers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        sectionIdentifiers = [*(*(&v14 + 1) + 8 * i) sectionIdentifiers];
        [v5 addObjectsFromArray:sectionIdentifiers];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

LABEL_13:
  v12 = [v5 copy];

  return v12;
}

- (id)_recomputeMappedSections
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 0; i != 49; ++i)
  {
    if ([(PKPaymentPassDetailViewController *)self shouldMapSection:i])
    {
      v5 = PKPassDetailSectionTypeToString(i);
      [v3 addObject:v5];
    }
  }

  v6 = [v3 copy];

  return v6;
}

- (id)titleForHeaderInSection:(unint64_t)section
{
  label = 0;
  switch(section)
  {
    case 2uLL:
      cardholderInfoSectionTitle = [(PKPaymentPass *)self->_pass cardholderInfoSectionTitle];
      organizationName = cardholderInfoSectionTitle;
      if (self->_isAppleAccess)
      {
        v8 = PKLocalizedPaymentString(&cfstr_EmployeeInfoHe.isa);
        goto LABEL_33;
      }

      if (cardholderInfoSectionTitle)
      {
        v8 = cardholderInfoSectionTitle;
        goto LABEL_33;
      }

      primaryFields = [(PKPaymentPass *)self->_pass primaryFields];
      firstObject = [primaryFields firstObject];

      label = [firstObject label];

      goto LABEL_34;
    case 0xAuLL:
      goto LABEL_23;
    case 0xDuLL:
    case 0x12uLL:
    case 0x13uLL:
      [(PKPaymentPassDetailViewController *)self _accountFeature];
      goto LABEL_23;
    case 0x15uLL:
      v9 = @"TICKET_SECTION_HEADER";
      goto LABEL_43;
    case 0x18uLL:
      v10 = @"PEER_PAYMENT_PASS_DETAILS_ACCEPT_PAYMENTS_HEADER_TITLE";
      goto LABEL_21;
    case 0x1AuLL:
      v9 = @"PAYMENT_ACCOUNT";
      goto LABEL_43;
    case 0x1BuLL:
      _headerTitleForPassStateSection = [(PKPaymentPassDetailViewController *)self _headerTitleForPassStateSection];
      goto LABEL_44;
    case 0x1FuLL:
      if (self->_peerPaymentAccount)
      {
        goto LABEL_29;
      }

      associatedAccountServiceAccountIdentifier = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
      if ([associatedAccountServiceAccountIdentifier length])
      {

LABEL_29:
        label = 0;
        goto LABEL_45;
      }

      _shouldShowCardNumbersSection = [(PKPaymentPassDetailViewController *)self _shouldShowCardNumbersSection];

      if (_shouldShowCardNumbersSection)
      {
        goto LABEL_29;
      }

      label = PKLocalizedPaymentString(&cfstr_CardInfoHeader.isa);
      if ([(PKPaymentPass *)self->_pass supportsBarcodePayment])
      {
        v22 = PKLocalizedAquamanString(&cfstr_PassInfoHeader.isa);

        label = v22;
      }

LABEL_45:
      v17 = [(PKPaymentPassDetailViewController *)self _configurableSectionForSectionType:section];
      header = [v17 header];

      if (header)
      {
        v19 = header;

        label = v19;
      }

      return label;
    case 0x20uLL:
      if ([(PKDynamicTableViewController *)self hasSectionForSectionIdentifier:@"CardInfo"]|| self->_peerPaymentAccount)
      {
        goto LABEL_29;
      }

      v9 = @"CARD_INFO_HEADER";
      goto LABEL_43;
    case 0x22uLL:
      v10 = @"BACK_OF_PASS_FAMILY_SHARING";
      goto LABEL_21;
    case 0x23uLL:
      if (self->_peerPaymentAccount)
      {
        v10 = @"PEER_PAYMENT_PASS_DETAILS_NOTIFICATIONS_SWITCHES_TITLE";
LABEL_21:
        _headerTitleForPassStateSection = PKLocalizedPeerPaymentString(&v10->isa);
      }

      else
      {
        associatedAccountServiceAccountIdentifier2 = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
        v14 = [associatedAccountServiceAccountIdentifier2 length];

        if (!v14)
        {
          v9 = @"TRANSACTIONS_HEADER";
          goto LABEL_43;
        }

        [(PKPaymentPassDetailViewController *)self _accountFeature];
LABEL_23:
        _headerTitleForPassStateSection = PKLocalizedFeatureString();
      }

      goto LABEL_44;
    case 0x24uLL:
      organizationName = [(PKPaymentPass *)self->_pass organizationName];
      v8 = PKLocalizedPaymentString(&cfstr_TransactionsUn.isa, &stru_1F3BD5BF0.isa, organizationName);
      goto LABEL_33;
    case 0x25uLL:
      if ([(PKPaymentPassDetailViewController *)self _isBankConnectLinked])
      {
        _headerTitleForPassStateSection = PKLocalizedBankConnectString(&cfstr_BankConnectDas_11.isa);
      }

      else
      {
        if ([(PKPaymentPass *)self->_pass isIdentityPass])
        {
          v9 = @"TRANSACTIONS_LATEST_ACTIVITIES_HEADER";
        }

        else
        {
          v9 = @"TRANSACTIONS_LATEST_HEADER";
        }

LABEL_43:
        _headerTitleForPassStateSection = PKLocalizedPaymentString(&v9->isa);
      }

LABEL_44:
      label = _headerTitleForPassStateSection;
      goto LABEL_45;
    case 0x26uLL:
      v10 = @"PEER_PAYMENT_PASS_DETAILS_TRANSACTIONS_BY_YEAR_SECTION_HEADER";
      goto LABEL_21;
    case 0x27uLL:
      _headerTitleForPassStateSection = PKLocalizedShareableCredentialString(&cfstr_CardsInGroupTi.isa);
      goto LABEL_44;
    case 0x28uLL:
      if (self->_account)
      {
        goto LABEL_29;
      }

      v9 = @"SETTINGS_OPTIONS_BILLING_ADDRESS_VC_TITLE";
      goto LABEL_43;
    case 0x29uLL:
      organizationName = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
      [organizationName paymentNetworkIdentifier];
      v8 = PKDisplayablePaymentNetworkNameForPaymentCredentialType();
LABEL_33:
      label = v8;
LABEL_34:

      goto LABEL_45;
    case 0x2DuLL:
      if ([(PKPaymentPassDetailViewController *)self _numberOfPrivacyTermsInfoRows]|| ![(PKPaymentPassDetailViewController *)self passSupportsDeviceAssessment])
      {
        goto LABEL_29;
      }

      v9 = @"DEVICE_ASSESSMENT_SUPPORTED_PASS_DETAILS_PRIVACY_HEADER";
      goto LABEL_43;
    default:
      goto LABEL_45;
  }
}

- (id)titleForFooterInSection:(unint64_t)section
{
  v5 = 0;
  v67 = *MEMORY[0x1E69E9840];
  detailViewStyle = self->_detailViewStyle;
  switch(section)
  {
    case 1uLL:
      peerPaymentAccountResolution = self->_peerPaymentAccountResolution;
      if (peerPaymentAccountResolution == 2)
      {
        v10 = @"PEER_PAYMENT_PASS_DETAILS_VERIFY_IDENTITY_FOOTER";
      }

      else
      {
        if (peerPaymentAccountResolution != 3)
        {
          goto LABEL_70;
        }

        if ([(PKPeerPaymentAccount *)self->_peerPaymentAccount state]== 2)
        {
          tableView = PKDeviceSpecificLocalizedStringKeyForKey(@"PEER_PAYMENT_ACCOUNT_STATE_FOOTER_RESTRICTED_CONTACT_SUPPORT_BODY", detailViewStyle == 2);
          v9 = PKLocalizedPeerPaymentString(tableView);
          goto LABEL_53;
        }

        v10 = @"PEER_PAYMENT_PASS_DETAILS_CONTACT_SUPPORT_FOOTER";
      }

      goto LABEL_106;
    case 4uLL:
      tableView = [(PKPaymentPassDetailViewController *)self tableView];
      v9 = [(PKPaymentPassDetailViewController *)self footerForIdentityDocumentInTableView:tableView];
      goto LABEL_53;
    case 5uLL:
      tableView = [(PKPaymentPassDetailViewController *)self tableView];
      v9 = [(PKPaymentPassDetailViewController *)self footerForReplaceBiometricIdentityInTableView:tableView];
      goto LABEL_53;
    case 7uLL:
      v20 = @"AUTOMATIC_PRESENTATION_FOOTER";
      goto LABEL_41;
    case 0xBuLL:
      localizedDeliveryExceptionReason = PKLocalizedFeatureString();
      goto LABEL_111;
    case 0xDuLL:
      creditDetails = [(PKAccount *)self->_account creditDetails];
      accountSummary = [creditDetails accountSummary];
      requiresDebtCollectionNotices = [accountSummary requiresDebtCollectionNotices];

      if (requiresDebtCollectionNotices || ([(PKAccount *)self->_account stateReason], !PKAccountStateReasonIsInMerge()))
      {
        [(PKPaymentPassDetailViewController *)self _accountFeature];
      }

      goto LABEL_95;
    case 0x11uLL:
      if (self->_isAmpEligible)
      {
        goto LABEL_94;
      }

      goto LABEL_70;
    case 0x12uLL:
      v5 = 0;
      cashbackResolution = self->_cashbackResolution;
      if (cashbackResolution > 2)
      {
        if (cashbackResolution != 3 && cashbackResolution != 4)
        {
          goto LABEL_108;
        }
      }

      else if (cashbackResolution == 1)
      {
        redemptionStatus = self->_redemptionStatus;
        if (redemptionStatus >= 2 && redemptionStatus != 2)
        {
          goto LABEL_70;
        }
      }

      else if (cashbackResolution != 2)
      {
        goto LABEL_108;
      }

LABEL_94:
      [(PKPaymentPassDetailViewController *)self _accountFeature];
LABEL_95:
      _footerTextForPassStateSection = PKLocalizedFeatureString();
      goto LABEL_107;
    case 0x13uLL:
      unactivatedPhysicalCard = [(PKPhysicalCardController *)self->_physicalCardController unactivatedPhysicalCard];
      v5 = unactivatedPhysicalCard;
      if (!unactivatedPhysicalCard)
      {
        goto LABEL_108;
      }

      latestShippingActivity = [unactivatedPhysicalCard latestShippingActivity];
      v25 = latestShippingActivity;
      if (latestShippingActivity && [latestShippingActivity shippingStatus])
      {
        shippingStatus = [v25 shippingStatus];
        localizedDeliveryExceptionReason = 0;
        if (shippingStatus > 2)
        {
          if (shippingStatus != 3)
          {
            if (shippingStatus != 4)
            {
              goto LABEL_152;
            }

            localizedDeliveryExceptionReason = [v25 localizedDeliveryExceptionReason];
            if (localizedDeliveryExceptionReason)
            {
              goto LABEL_152;
            }
          }

          goto LABEL_117;
        }

        if (shippingStatus != 1)
        {
          if (shippingStatus != 2)
          {
            goto LABEL_152;
          }

LABEL_117:
          [(PKPaymentPassDetailViewController *)self _accountFeature];
LABEL_151:
          localizedDeliveryExceptionReason = PKLocalizedFeatureString();
LABEL_152:

          goto LABEL_111;
        }

        estimatedDeliveryDate = [v25 estimatedDeliveryDate];

        [(PKPaymentPassDetailViewController *)self _accountFeature];
        if (!estimatedDeliveryDate)
        {
          goto LABEL_151;
        }

        formattedEstimatedDeliveryDate = [v25 formattedEstimatedDeliveryDate];
        v55 = PKLocalizedFeatureString();
      }

      else
      {
        formattedEstimatedDeliveryDate = [v5 latestOrderActivity];
        activity = [formattedEstimatedDeliveryDate activity];
        localizedDeliveryExceptionReason = 0;
        if (activity > 2)
        {
          if (activity != 3)
          {
            if (activity == 4)
            {
              localizedReason = [formattedEstimatedDeliveryDate localizedReason];
              v47 = localizedReason;
              if (localizedReason)
              {
                v48 = localizedReason;
              }

              else
              {
                [(PKPaymentPassDetailViewController *)self _accountFeature];
                v48 = PKLocalizedFeatureString();
              }

              localizedDeliveryExceptionReason = v48;
            }

            goto LABEL_145;
          }
        }

        else if (activity != 1 && activity != 2)
        {
          goto LABEL_145;
        }

        [(PKPaymentPassDetailViewController *)self _accountFeature];
        v55 = PKLocalizedFeatureString();
      }

      localizedDeliveryExceptionReason = v55;
LABEL_145:

      goto LABEL_152;
    case 0x14uLL:
      tableView = [(PKPaymentPass *)self->_pass organizationName];
      PKLocalizedPaymentString(&cfstr_MessageService_0.isa, &stru_1F3BD5BF0.isa, tableView);
      goto LABEL_52;
    case 0x16uLL:
      if ([(PKPaymentPassDetailViewController *)self _showPeerPaymentBalanceFDICFooterView])
      {
        goto LABEL_70;
      }

      v10 = @"PEER_PAYMENT_PASS_DETAILS_ACTION_EDUCATION_FOOTER";
      goto LABEL_106;
    case 0x1AuLL:
      v20 = @"PAYMENT_ACCOUNT_FOOTER";
      goto LABEL_41;
    case 0x1BuLL:
      _footerTextForPassStateSection = [(PKPaymentPassDetailViewController *)self _footerTextForPassStateSection];
      goto LABEL_107;
    case 0x1CuLL:
      v11 = [(NSArray *)self->_displayableBalanceFields count];
      v12 = [(NSArray *)self->_commutePlanFields count];
      v13 = [(PKPaymentPassDetailViewController *)self _hasActionOfType:2];
      v14 = [(PKPaymentPassDetailViewController *)self _hasActionOfType:1];
      v61 = PKLocalizedPaymentString(&cfstr_RemindersSecti_0.isa);
      if (([(PKPaymentPass *)self->_pass isAutoTopEnabled]& 1) != 0 || !(v12 | v11) && (v13 || v14))
      {
        goto LABEL_11;
      }

      if ((v12 == 0 || !v13) && v11 != 0 && (self->_transitProperties != 0 || v14))
      {
        if (detailViewStyle != 2)
        {
          goto LABEL_149;
        }

        goto LABEL_102;
      }

      if ((v11 == 0 || !v14) && v12 != 0 && v13)
      {
        if (detailViewStyle == 2)
        {
          goto LABEL_102;
        }

        v60 = 0;
LABEL_142:
        v58 = PKPassLocalizedStringWithFormat();
LABEL_150:
        v5 = v58;
        goto LABEL_12;
      }

      if (!v11)
      {
        goto LABEL_11;
      }

      if (!self->_transitProperties)
      {
        if (v14 && v13 && v12 != 0)
        {
          goto LABEL_147;
        }

LABEL_11:
        v5 = 0;
LABEL_12:
        tableView = v61;
        goto LABEL_54;
      }

      if (v12 == 0 || !v13)
      {
        goto LABEL_11;
      }

LABEL_147:
      v59 = [PKPaymentPassDetailAutoReloadSectionController externalActionContentForPass:self->_pass];

      if (!v59)
      {
        if (detailViewStyle == 2)
        {
          goto LABEL_102;
        }

        v60 = 0;
        goto LABEL_142;
      }

      if (detailViewStyle != 2)
      {
LABEL_149:
        v58 = PKLocalizedPaymentString(&cfstr_BalanceAndPlan.isa);
        goto LABEL_150;
      }

LABEL_102:
      tableView = v61;
      v9 = v61;
LABEL_53:
      v5 = v9;
LABEL_54:

LABEL_108:
      v50 = [(PKPaymentPassDetailViewController *)self _configurableSectionForSectionType:section, v60];
      footer = [v50 footer];

      if (footer)
      {
        v52 = footer;

        v5 = v52;
      }

      localizedDeliveryExceptionReason = v5;

LABEL_111:

      return localizedDeliveryExceptionReason;
    case 0x1DuLL:
      if ([(PKPaymentPassDetailViewController *)self _shouldShowServiceMode])
      {
        if ([(PKPaymentPass *)self->_pass isEMoneyPass])
        {
          v22 = @"SERVICE_MODE_NON_TRANSIT_SECTION_FOOTER";
        }

        else
        {
          v22 = @"SERVICE_MODE_SECTION_FOOTER";
        }

        v5 = PKLocalizedPaymentString(&v22->isa);
      }

      else
      {
        v5 = 0;
      }

      traitCollection = [(PKPaymentPassDetailViewController *)self traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      if (userInterfaceIdiom > 6 || ((1 << userInterfaceIdiom) & 0x62) == 0)
      {
        goto LABEL_108;
      }

      v40 = [(PKPaymentPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC100]];
      tableView = v40;
      if (v40)
      {
        v41 = PKLocalizedPaymentString(&cfstr_ContactIssuerB_0.isa, &stru_1F3BD5BF0.isa, v40);
        if ([v5 length])
        {
          v42 = [v5 stringByAppendingFormat:@"\n\n%@", v41];
        }

        else
        {
          v42 = v41;
        }

        v49 = v42;

        v5 = v49;
      }

      goto LABEL_54;
    case 0x20uLL:
      v20 = @"DPAN_FOOTER";
LABEL_41:
      _footerTextForPassStateSection = PKLocalizedPaymentString(&v20->isa);
      goto LABEL_107;
    case 0x22uLL:
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      associatedAccountInformation = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedAccountInformation];
      associatedAccountInvitations = [associatedAccountInformation associatedAccountInvitations];

      v29 = [associatedAccountInvitations countByEnumeratingWithState:&v62 objects:v66 count:16];
      if (!v29)
      {
        goto LABEL_63;
      }

      v30 = v29;
      v31 = *v63;
      while (2)
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v63 != v31)
          {
            objc_enumerationMutation(associatedAccountInvitations);
          }

          if ([*(*(&v62 + 1) + 8 * i) status] == 1)
          {

LABEL_70:
            v5 = 0;
            goto LABEL_108;
          }
        }

        v30 = [associatedAccountInvitations countByEnumeratingWithState:&v62 objects:v66 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }

LABEL_63:

      v10 = @"BACK_OF_PASS_FAMILY_SHARING_FOOTER";
LABEL_106:
      _footerTextForPassStateSection = PKLocalizedPeerPaymentString(&v10->isa);
LABEL_107:
      v5 = _footerTextForPassStateSection;
      goto LABEL_108;
    case 0x23uLL:
      if (![(PKPaymentPassDetailViewController *)self _showsTransactionHistorySwitch])
      {
        goto LABEL_70;
      }

      tableView = [(PKPaymentPass *)self->_pass organizationName];
      PKLocalizedPaymentString(&cfstr_TransactionsSe_0.isa, &stru_1F3BD5BF0.isa, tableView);
      goto LABEL_52;
    case 0x24uLL:
      tableView = [(PKPaymentPass *)self->_pass organizationName];
      PKLocalizedPaymentString(&cfstr_TransactionsUn_0.isa, &stru_1F3BD5BF0.isa, tableView);
      goto LABEL_52;
    case 0x25uLL:
      if ([(PKPaymentPassDetailViewController *)self _isBankConnectLinked]|| self->_peerPaymentAccount || self->_account)
      {
        goto LABEL_70;
      }

      if ([(PKPaymentPass *)self->_pass supportsFPANNotifications]&& [(PKPaymentPass *)self->_pass supportsDPANNotifications])
      {
        tableView = [(PKPaymentPass *)self->_pass organizationName];
        PKLocalizedPaymentString(&cfstr_TransactionsFo.isa, &stru_1F3BD5BF0.isa, tableView);
        v9 = LABEL_52:;
        goto LABEL_53;
      }

      if (([(PKPaymentPass *)self->_pass isStoredValuePass]& 1) == 0 && ([(PKPaymentPass *)self->_pass isIdentityPass]& 1) == 0)
      {
        tableView = PKDeviceSpecificLocalizedStringKeyForKey(@"TRANSACTIONS_FOOTER", self->_detailViewStyle == 2);
        organizationName = [(PKPaymentPass *)self->_pass organizationName];
        v54 = PKLocalizedPaymentString(tableView, &stru_1F3BD5BF0.isa, organizationName);
        goto LABEL_119;
      }

      if ([(PKPaymentPass *)self->_pass isIdentityPass])
      {
        v56 = detailViewStyle == 2;
      }

      else
      {
        v56 = 0;
      }

      if (v56 && [(PKPaymentPassDetailViewController *)self _transactionsCount])
      {
        _footerTextForPassStateSection = PKLocalizedIdentityString(&cfstr_ActivitiesComp.isa);
        goto LABEL_107;
      }

      goto LABEL_70;
    case 0x27uLL:
      tableView = [(PKLinkedApplication *)self->_linkedApplication displayName];
      if ([(NSString *)tableView length])
      {
        v60 = tableView;
        v33 = PKPassLocalizedStringWithFormat();
        organizationName = v33;
        if (!v33 || (v35 = v33, v35 == @"ADDITIONAL_SHARING_INFO") || (v36 = v35, v37 = [@"ADDITIONAL_SHARING_INFO" isEqualToString:{v35, tableView}], v36, (v37 & 1) != 0))
        {
          v5 = 0;
        }

        else
        {
          v54 = v36;
LABEL_119:
          v5 = v54;
        }
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_54;
    case 0x2AuLL:
      v10 = @"PEER_PAYMENT_PASS_DETAILS_GRADUATION_FOOTER";
      goto LABEL_106;
    case 0x2CuLL:
      goto LABEL_95;
    default:
      goto LABEL_108;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSectionCase:(unint64_t)case
{
  viewCopy = view;
  switch(case)
  {
    case 0uLL:
    case 1uLL:
    case 3uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x14uLL:
    case 0x16uLL:
    case 0x19uLL:
    case 0x1EuLL:
    case 0x21uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:
    case 0x2EuLL:
    case 0x2FuLL:
      goto LABEL_2;
    case 2uLL:
      _numberOfAccountServiceCreditDetailsRowsEnabled = [(PKPaymentPassDetailViewController *)self _accessPersonInfoSectionGenerateCellWithOutput:0 forRowIndex:0 tableView:0];
      goto LABEL_35;
    case 4uLL:
      _numberOfAccountServiceCreditDetailsRowsEnabled = [(PKPaymentPassDetailViewController *)self numberOfIdentityDocumentRowsInTableView:viewCopy];
      goto LABEL_35;
    case 5uLL:
      _numberOfAccountServiceCreditDetailsRowsEnabled = [(PKPaymentPassDetailViewController *)self numberOfReplaceBiometricRowsInTableView:viewCopy];
      goto LABEL_35;
    case 0xAuLL:
      _numberOfAccountServiceCreditDetailsRowsEnabled = [(PKPaymentPassDetailViewController *)self numberOfAccountUserRowsInTableView:viewCopy];
      goto LABEL_35;
    case 0xDuLL:
      _numberOfAccountServiceCreditDetailsRowsEnabled = [(PKPaymentPassDetailViewController *)self _numberOfAccountServiceCreditDetailsRowsEnabled];
      goto LABEL_35;
    case 0x10uLL:
      _shouldShowProductBenefitsCell = [(PKPaymentPassDetailViewController *)self _shouldShowProductBenefitsCell];
      goto LABEL_42;
    case 0x11uLL:
      isAmpEligible = self->_isAmpEligible;
      break;
    case 0x12uLL:
      _numberOfAccountServiceCreditDetailsRowsEnabled = [(PKPaymentPassDetailViewController *)self _numberOfAccountServiceRewardsRowsEnabled];
      goto LABEL_35;
    case 0x13uLL:
      _numberOfAccountServiceCreditDetailsRowsEnabled = [(PKPaymentPassDetailViewController *)self _numberOfAccountServicePhysicalCardRowsEnabled];
      goto LABEL_35;
    case 0x15uLL:
      _numberOfAccountServiceCreditDetailsRowsEnabled = [(PKPaymentPassDetailViewController *)self _transitCellGenerateCellWithOutput:0 forRowIndex:0 tableView:0];
      goto LABEL_35;
    case 0x17uLL:
      _numberOfAccountServiceCreditDetailsRowsEnabled = [(PKPaymentPassDetailViewController *)self _numberOfPeerPaymentMoneyActionsEnabled];
      goto LABEL_35;
    case 0x18uLL:
      if (self->_loadingPeerPaymentPreferences)
      {
        isAmpEligible = 0;
      }

      else
      {
        isAmpEligible = 2;
      }

      break;
    case 0x1AuLL:
      v8 = 1272;
      goto LABEL_26;
    case 0x1BuLL:
      _numberOfAccountServiceCreditDetailsRowsEnabled = [(PKPaymentPassDetailViewController *)self _passStateSectionGenerateCellWithOutput:0 forRowIndex:0 tableView:0];
      goto LABEL_35;
    case 0x1CuLL:
      v11 = [(NSArray *)self->_displayableBalanceFields count];
      isAmpEligible = [(NSArray *)self->_commutePlanFields count]+ v11;
      break;
    case 0x1DuLL:
      _numberOfAccountServiceCreditDetailsRowsEnabled = [(PKPaymentPassDetailViewController *)self _contactBankCellWithOutput:0 forRowIndex:0 tableView:0];
      goto LABEL_35;
    case 0x1FuLL:
      _numberOfAccountServiceCreditDetailsRowsEnabled = [(PKPaymentPassDetailViewController *)self _cardInfoSectionGenerateCellWithOutput:0 forRowIndex:0 tableView:0];
      goto LABEL_35;
    case 0x20uLL:
      v8 = 1264;
      goto LABEL_26;
    case 0x22uLL:
      passCount = [(NSArray *)self->_sortedFamilyMemberRowModels count];
      goto LABEL_32;
    case 0x23uLL:
      if ([(PKPaymentPassDetailViewController *)self _showsTransactionHistorySwitch])
      {
        if (([(PKPaymentPass *)self->_pass settings]& 8) != 0)
        {
          isAmpEligible = 2;
        }

        else
        {
          isAmpEligible = 1;
        }
      }

      else
      {
        peerPaymentAccount = self->_peerPaymentAccount;
        if (!peerPaymentAccount || [(PKPeerPaymentAccount *)peerPaymentAccount role])
        {
LABEL_2:
          isAmpEligible = 1;
        }

        else
        {
          isAmpEligible = 2;
        }
      }

      break;
    case 0x24uLL:
      storeIdentifiers = [(PKPaymentPass *)self->_pass storeIdentifiers];
      isAmpEligible = [storeIdentifiers count] != 0;

      break;
    case 0x25uLL:
      if (![(PKPaymentPassDetailViewController *)self _transactionsCount])
      {
        goto LABEL_2;
      }

      _transactionsCount = [(PKPaymentPassDetailViewController *)self _transactionsCount];
      isAmpEligible = _transactionsCount + [(PKPaymentPassDetailViewController *)self _transactionDeepLinkingEnabled];
      break;
    case 0x26uLL:
      v8 = 1232;
LABEL_26:
      _numberOfAccountServiceCreditDetailsRowsEnabled = [*(&self->super.super.super.super.super.isa + v8) count];
      goto LABEL_35;
    case 0x27uLL:
      passCount = [(PKGroup *)self->_group passCount];
LABEL_32:
      isAmpEligible = passCount + 1;
      break;
    case 0x28uLL:
      if (!self->_account)
      {
        goto LABEL_2;
      }

      isAmpEligible = !self->_loadingBillingContact;
      break;
    case 0x29uLL:
      _shouldShowProductBenefitsCell = [(PKPaymentPassDetailViewController *)self _shouldShowNetworkBenefitsCell];
LABEL_42:
      isAmpEligible = _shouldShowProductBenefitsCell;
      break;
    case 0x2DuLL:
      _numberOfAccountServiceCreditDetailsRowsEnabled = [(PKPaymentPassDetailViewController *)self _numberOfPrivacyTermsInfoRows];
      goto LABEL_35;
    case 0x30uLL:
      _numberOfAccountServiceCreditDetailsRowsEnabled = [(PKPaymentPassDetailViewController *)self _passOperationsCellWithOutput:0 forRowIndex:0 tableView:0];
LABEL_35:
      isAmpEligible = _numberOfAccountServiceCreditDetailsRowsEnabled;
      break;
    default:
      isAmpEligible = 0;
      break;
  }

  return isAmpEligible;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path section:(unint64_t)section
{
  v30 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  v10 = pathCopy;
  v25 = 0;
  switch(section)
  {
    case 0uLL:
      _barcodeCell = [(PKPaymentPassDetailViewController *)self _linkedAppCellForTableView:viewCopy];
      goto LABEL_63;
    case 1uLL:
      _barcodeCell = -[PKPaymentPassDetailViewController _peerPaymentAccountActionCellForRowIndex:tableView:](self, "_peerPaymentAccountActionCellForRowIndex:tableView:", [pathCopy row], viewCopy);
      goto LABEL_63;
    case 2uLL:
      -[PKPaymentPassDetailViewController _accessPersonInfoSectionGenerateCellWithOutput:forRowIndex:tableView:](self, "_accessPersonInfoSectionGenerateCellWithOutput:forRowIndex:tableView:", &v25, [pathCopy row], viewCopy);
      goto LABEL_51;
    case 3uLL:
      _barcodeCell = [(PKPaymentPassDetailViewController *)self _cardHolderPictureCellForTableView:viewCopy];
      goto LABEL_63;
    case 4uLL:
      _barcodeCell = [(PKPaymentPassDetailViewController *)self identityDocumentTableViewCellForTableView:viewCopy atIndexPath:pathCopy];
      goto LABEL_63;
    case 5uLL:
      _barcodeCell = [(PKPaymentPassDetailViewController *)self replaceBiometricTableViewCellForTableView:viewCopy atIndexPath:pathCopy];
      goto LABEL_63;
    case 6uLL:
      _barcodeCell = [(PKPaymentPassDetailViewController *)self _barcodeCell];
      goto LABEL_63;
    case 7uLL:
      _barcodeCell = [(PKPaymentPassDetailViewController *)self _automaticPresentationCellForTableView:viewCopy];
      goto LABEL_63;
    case 8uLL:
      _barcodeCell = [(PKPaymentPassDetailViewController *)self _manufacturerInfoCellForTableView:viewCopy];
      goto LABEL_63;
    case 9uLL:
      v13 = PKLocalizedPaymentString(&cfstr_LinkToWalletPa.isa);
      v14 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v13 forTableView:viewCopy];
      v25 = v14;

      v15 = MEMORY[0x1E69B9DD8];
      goto LABEL_40;
    case 0xAuLL:
      _barcodeCell = [(PKPaymentPassDetailViewController *)self accountUserTableViewCellForTableView:viewCopy atIndexPath:pathCopy];
      goto LABEL_63;
    case 0xBuLL:
      _barcodeCell = [(PKPaymentPassDetailViewController *)self _installmentsPlanCellForTableView:viewCopy atIndexPath:pathCopy];
      goto LABEL_63;
    case 0xCuLL:
      _barcodeCell = -[PKPaymentPassDetailViewController _accountServiceCardNumbersCellForRowIndex:tableView:](self, "_accountServiceCardNumbersCellForRowIndex:tableView:", [pathCopy row], viewCopy);
      goto LABEL_63;
    case 0xDuLL:
      _barcodeCell = -[PKPaymentPassDetailViewController _accountServiceCreditDetailsCellForRowIndex:tableView:](self, "_accountServiceCreditDetailsCellForRowIndex:tableView:", [pathCopy row], viewCopy);
      goto LABEL_63;
    case 0xEuLL:
      _barcodeCell = -[PKPaymentPassDetailViewController _accountServiceBankAccountsCellForRowIndex:tableView:](self, "_accountServiceBankAccountsCellForRowIndex:tableView:", [pathCopy row], viewCopy);
      goto LABEL_63;
    case 0xFuLL:
    case 0x1EuLL:
    case 0x21uLL:
      _barcodeCell = [(PKPaymentPassDetailViewController *)self _merchantTokensCellForTableView:viewCopy];
      goto LABEL_63;
    case 0x10uLL:
      [(PKPaymentPassDetailViewController *)self _accountFeature];
      v17 = PKLocalizedFeatureString();
      v14 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v17 forTableView:viewCopy];
      v25 = v14;

      v15 = MEMORY[0x1E69B9AF0];
      goto LABEL_40;
    case 0x11uLL:
      _barcodeCell = -[PKPaymentPassDetailViewController _accountServiceMakeDefaultCellForRowIndex:tableView:](self, "_accountServiceMakeDefaultCellForRowIndex:tableView:", [pathCopy row], viewCopy);
      goto LABEL_63;
    case 0x12uLL:
      _barcodeCell = -[PKPaymentPassDetailViewController _accountServiceRewardsDetailsCellForRowIndex:tableView:](self, "_accountServiceRewardsDetailsCellForRowIndex:tableView:", [pathCopy row], viewCopy);
      goto LABEL_63;
    case 0x13uLL:
      _barcodeCell = -[PKPaymentPassDetailViewController _accountServicePhysicalCardCellForRowIndex:tableView:](self, "_accountServicePhysicalCardCellForRowIndex:tableView:", [pathCopy row], viewCopy);
      goto LABEL_63;
    case 0x14uLL:
      _barcodeCell = [(PKPaymentPassDetailViewController *)self _messagesSwitchCellForTableView:viewCopy];
      goto LABEL_63;
    case 0x15uLL:
      -[PKPaymentPassDetailViewController _transitCellGenerateCellWithOutput:forRowIndex:tableView:](self, "_transitCellGenerateCellWithOutput:forRowIndex:tableView:", &v25, [pathCopy row], viewCopy);
      goto LABEL_51;
    case 0x16uLL:
      _barcodeCell = -[PKPaymentPassDetailViewController _peerPaymentBalanceCellForRowIndex:tableView:](self, "_peerPaymentBalanceCellForRowIndex:tableView:", [pathCopy row], viewCopy);
      goto LABEL_63;
    case 0x17uLL:
      _barcodeCell = -[PKPaymentPassDetailViewController _peerPaymentMoneyActionCellForRowIndex:tableView:](self, "_peerPaymentMoneyActionCellForRowIndex:tableView:", [pathCopy row], viewCopy);
      goto LABEL_63;
    case 0x18uLL:
      _barcodeCell = -[PKPaymentPassDetailViewController _peerPaymentAutomaticallyAcceptPaymentsCellForRowIndex:tableView:](self, "_peerPaymentAutomaticallyAcceptPaymentsCellForRowIndex:tableView:", [pathCopy row], viewCopy);
      goto LABEL_63;
    case 0x19uLL:
      _barcodeCell = -[PKPaymentPassDetailViewController _peerPaymentBankAccountsCellForRowIndex:tableView:](self, "_peerPaymentBankAccountsCellForRowIndex:tableView:", [pathCopy row], viewCopy);
      goto LABEL_63;
    case 0x1AuLL:
      _barcodeCell = [(PKPaymentPassDetailViewController *)self _paymentApplicationsCellForIndexPath:pathCopy tableView:viewCopy];
      goto LABEL_63;
    case 0x1BuLL:
      -[PKPaymentPassDetailViewController _passStateSectionGenerateCellWithOutput:forRowIndex:tableView:](self, "_passStateSectionGenerateCellWithOutput:forRowIndex:tableView:", &v25, [pathCopy row], viewCopy);
      goto LABEL_51;
    case 0x1CuLL:
      _barcodeCell = -[PKPaymentPassDetailViewController _balanceOrCommutePlanCellForRowIndex:tableView:](self, "_balanceOrCommutePlanCellForRowIndex:tableView:", [pathCopy row], viewCopy);
      goto LABEL_63;
    case 0x1DuLL:
      -[PKPaymentPassDetailViewController _contactBankCellWithOutput:forRowIndex:tableView:](self, "_contactBankCellWithOutput:forRowIndex:tableView:", &v25, [pathCopy row], viewCopy);
      goto LABEL_51;
    case 0x1FuLL:
      -[PKPaymentPassDetailViewController _cardInfoSectionGenerateCellWithOutput:forRowIndex:tableView:](self, "_cardInfoSectionGenerateCellWithOutput:forRowIndex:tableView:", &v25, [pathCopy row], viewCopy);
      goto LABEL_51;
    case 0x20uLL:
      _barcodeCell = [(PKPaymentPassDetailViewController *)self _deviceAccountNumberCellForIndexPath:pathCopy tableView:viewCopy];
      goto LABEL_63;
    case 0x22uLL:
      _barcodeCell = [(PKPaymentPassDetailViewController *)self _familyMemberCellForIndexPath:pathCopy tableView:viewCopy];
      goto LABEL_63;
    case 0x23uLL:
      if (self->_peerPaymentAccount)
      {
        _barcodeCell = [(PKPaymentPassDetailViewController *)self _peerPaymentNotificationsSwitchCellForIndexPath:pathCopy tableView:viewCopy];
        goto LABEL_63;
      }

      associatedAccountServiceAccountIdentifier = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
      v19 = [associatedAccountServiceAccountIdentifier length];

      if (v19)
      {
        [(PKPaymentPassDetailViewController *)self _accountServiceNotificationsSwitchCellForIndexPath:v10 tableView:viewCopy];
      }

      else
      {
        [(PKPaymentPassDetailViewController *)self _transactionsSwitchCellForIndexPath:v10 tableView:viewCopy];
      }

      goto LABEL_7;
    case 0x24uLL:
      _barcodeCell = [(PKPaymentPassDetailViewController *)self _linkedApplicationCellForTableView:viewCopy];
      goto LABEL_63;
    case 0x25uLL:
      if ([(PKPaymentPassDetailViewController *)self _transactionsCount])
      {
        v12 = [v10 row];
        if (v12 >= [(PKPaymentPassDetailViewController *)self _transactionsCount])
        {
          [(PKPaymentPassDetailViewController *)self _moreTransactionsCellForTableView:viewCopy];
        }

        else
        {
          [(PKPaymentPassDetailViewController *)self _transactionCellForIndexPath:v10 tableView:viewCopy];
        }

        _barcodeCell = LABEL_7:;
LABEL_63:
        v14 = _barcodeCell;
        v25 = _barcodeCell;
      }

      else
      {
        if (([(PKPaymentPass *)self->_pass isIdentityPass]& 1) != 0)
        {
          PKLocalizedIdentityString(&cfstr_ActivitiesNone.isa);
        }

        else
        {
          PKLocalizedPaymentString(&cfstr_TransactionsNo.isa);
        }
        v20 = ;
        v14 = [(PKPaymentPassDetailViewController *)self _infoCellWithDescription:v20 forTableView:viewCopy];
        v25 = v14;
      }

LABEL_64:
      if (!v14)
      {
LABEL_65:
        v21 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = PKPassDetailSectionTypeToString(section);
          *buf = 138543618;
          v27 = v10;
          v28 = 2114;
          v29 = v22;
          _os_log_impl(&dword_1BD026000, v21, OS_LOG_TYPE_DEFAULT, "nil cell returned from tableView:cellForRowAtIndexPath: (indexPath: %{public}@, section: %{public}@)", buf, 0x16u);
        }

        v14 = v25;
      }

      v23 = v14;

      return v23;
    case 0x26uLL:
      _barcodeCell = [(PKPaymentPassDetailViewController *)self _transactionCountByPeriodCellForIndexPath:pathCopy tableView:viewCopy];
      goto LABEL_63;
    case 0x27uLL:
      _barcodeCell = [(PKPaymentPassDetailViewController *)self _passesInGroupCellForIndexPath:pathCopy tableView:viewCopy];
      goto LABEL_63;
    case 0x28uLL:
      _barcodeCell = [(PKPaymentPassDetailViewController *)self _billingAddressCellShowingAddress:self->_account == 0 forTableView:viewCopy];
      goto LABEL_63;
    case 0x29uLL:
      [(PKPaymentPassDetailViewController *)self _accountFeature];
      v16 = PKLocalizedFeatureString();
      v14 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v16 forTableView:viewCopy];
      v25 = v14;

      v15 = MEMORY[0x1E69B9988];
LABEL_40:
      PKAccessibilityIDCellSet(v14, *v15);
      goto LABEL_64;
    case 0x2AuLL:
      _barcodeCell = -[PKPaymentPassDetailViewController _peerPaymentParticipantGraduationCellForRowIndex:tableView:](self, "_peerPaymentParticipantGraduationCellForRowIndex:tableView:", [pathCopy row], viewCopy);
      goto LABEL_63;
    case 0x2BuLL:
      _barcodeCell = [(PKPaymentPassDetailViewController *)self _peerPaymentStatementCellForTableView:viewCopy];
      goto LABEL_63;
    case 0x2CuLL:
      _barcodeCell = [(PKPaymentPassDetailViewController *)self verifySSNTableViewCellForTableView:viewCopy atIndexPath:pathCopy];
      goto LABEL_63;
    case 0x2DuLL:
      _barcodeCell = -[PKPaymentPassDetailViewController _privacyTermsSectionCellForRowIndex:tableView:](self, "_privacyTermsSectionCellForRowIndex:tableView:", [pathCopy row], viewCopy);
      goto LABEL_63;
    case 0x2EuLL:
      _barcodeCell = -[PKPaymentPassDetailViewController _peerPaymentManualIdentityVerificationCellForRowIndex:tableView:](self, "_peerPaymentManualIdentityVerificationCellForRowIndex:tableView:", [pathCopy row], viewCopy);
      goto LABEL_63;
    case 0x2FuLL:
      _barcodeCell = [(PKPaymentPassDetailViewController *)self accountUserStopSharingTableViewCellForTableView:viewCopy atIndexPath:pathCopy];
      goto LABEL_63;
    case 0x30uLL:
      -[PKPaymentPassDetailViewController _passOperationsCellWithOutput:forRowIndex:tableView:](self, "_passOperationsCellWithOutput:forRowIndex:tableView:", &v25, [pathCopy row], viewCopy);
LABEL_51:
      v14 = v25;
      goto LABEL_64;
    default:
      goto LABEL_65;
  }
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path section:(unint64_t)section
{
  viewCopy = view;
  pathCopy = path;
  v10 = section == 37 && !-[PKPaymentPassDetailViewController _isBankConnectLinked](self, "_isBankConnectLinked") && -[PKPaymentPassDetailViewController _transactionCellEditActionsGenerateWithOutput:forRowIndex:tableView:](self, "_transactionCellEditActionsGenerateWithOutput:forRowIndex:tableView:", 0, [pathCopy row], viewCopy);

  return v10;
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path section:(unint64_t)section
{
  v6 = 0;
  v12 = 0;
  if (section == 37)
  {
    viewCopy = view;
    -[PKPaymentPassDetailViewController _transactionCellEditActionsGenerateWithOutput:forRowIndex:tableView:](self, "_transactionCellEditActionsGenerateWithOutput:forRowIndex:tableView:", &v12, [path row], viewCopy);

    v6 = v12;
  }

  v10 = [MEMORY[0x1E69DCFC0] configurationWithActions:v6];
  [v10 setPerformsFirstActionWithFullSwipe:0];

  return v10;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  view = [(PKPaymentPassDetailViewController *)self view];
  [view setNeedsLayout];

  passView = [(PKPassHeaderView *)self->_passHeaderView passView];
  [passView frame];
  v8 = v7;
  v10 = v9;

  [scrollCopy contentOffset];
  v12 = v11;
  [scrollCopy adjustedContentInset];
  v14 = v13;

  v15 = v8 + v10 - v14;
  self->_showingTitleIconView = v12 >= v15;
  titleIconView = self->_titleIconView;
  if (v12 < v15)
  {
    passSnapshotView = 0;
  }

  else
  {
    passSnapshotView = self->_passSnapshotView;
  }

  [(PKAnimatedNavigationBarTitleView *)titleIconView setTitleView:passSnapshotView animated:1];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  [(PKPaymentPassDetailViewController *)self _normalizedContentOffsetForTargetOffset:dragging, offset->x, offset->y];
  offset->x = v6;
  offset->y = v7;
}

- (void)_normalizeContentOffset
{
  tableView = [(PKPaymentPassDetailViewController *)self tableView];
  if (([tableView isDragging] & 1) == 0 && (objc_msgSend(tableView, "isDecelerating") & 1) == 0)
  {
    [tableView contentOffset];
    v4 = v3;
    v6 = v5;
    [(PKPaymentPassDetailViewController *)self _normalizedContentOffsetForTargetOffset:?];
    if (v4 != v8 || v6 != v7)
    {
      [tableView setContentOffset:1 animated:?];
    }
  }
}

- (CGPoint)_normalizedContentOffsetForTargetOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  tableView = [(PKPaymentPassDetailViewController *)self tableView];
  [tableView adjustedContentInset];
  v8 = v7;
  v10 = v9;
  [tableView contentSize];
  v12 = v11;
  [tableView bounds];
  v14 = v13;
  [(PKPaymentPassDetailViewController *)self _offscreenHeaderHeight];
  v16 = -v8;
  v17 = v15 + v14 - (v10 + v8 + v12);
  if (v17 <= 0.0)
  {
    v19 = v15 - v8;
    if (y < v16)
    {
      v20 = -v8;
    }

    else
    {
      v20 = y;
    }

    if ((y + v8) / (v8 + v19) <= 0.5)
    {
      v21 = -v8;
    }

    else
    {
      v21 = v19;
    }

    if (y > v16 && y < v19)
    {
      v18 = v21;
    }

    else
    {
      v18 = v20;
    }
  }

  else
  {
    v18 = fmin(fmax(y, v16), fmax(v15 - v17, 0.0) - v8);
  }

  v23 = x;
  v24 = v18;
  result.y = v24;
  result.x = v23;
  return result;
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point section:(unint64_t)section
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  pathCopy = path;
  if (section == 37)
  {
    v13 = [(PKPaymentPassDetailViewController *)self tableView:viewCopy contextMenuConfigurationForTransactionAtIndexPath:pathCopy point:x, y];
    goto LABEL_5;
  }

  if (section == 31)
  {
    v13 = [(PKPaymentPassDetailViewController *)self tableView:viewCopy contextMenuConfigurationForCardInfoAtIndexPath:pathCopy];
LABEL_5:
    v14 = v13;
    goto LABEL_7;
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (id)tableView:(id)view contextMenuConfigurationForCardInfoAtIndexPath:(id)path
{
  v5 = [view cellForRowAtIndexPath:path];
  reuseIdentifier = [v5 reuseIdentifier];
  v7 = [reuseIdentifier isEqualToString:@"PKTableViewCellReuseIdentifierCustomerServiceIdentifier"];

  if (v7)
  {
    customerServiceIdentifier = [(PKPaymentPass *)self->_pass customerServiceIdentifier];
    v9 = [(PKPaymentPassDetailViewController *)self contextMenuConfigurationForCopyingText:customerServiceIdentifier];
  }

  else
  {
    reuseIdentifier2 = [v5 reuseIdentifier];
    v11 = [reuseIdentifier2 isEqualToString:@"cardNumberCell"];

    if (!v11)
    {
      v9 = 0;
      goto LABEL_11;
    }

    customerServiceIdentifier = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
    sanitizedDPAN = [customerServiceIdentifier sanitizedDPAN];
    if (sanitizedDPAN && [(PKPaymentPassDetailViewController *)self paymentApplicationShouldShowFullDPAN:customerServiceIdentifier])
    {
      v13 = PKFormattedSanitizedPAN();
      v9 = [(PKPaymentPassDetailViewController *)self contextMenuConfigurationForCopyingText:v13];
    }

    else
    {
      v9 = 0;
    }
  }

LABEL_11:

  return v9;
}

- (id)contextMenuConfigurationForCopyingText:(id)text
{
  textCopy = text;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PKPaymentPassDetailViewController_contextMenuConfigurationForCopyingText___block_invoke;
  aBlock[3] = &unk_1E8016090;
  v9 = textCopy;
  v4 = textCopy;
  v5 = _Block_copy(aBlock);
  v6 = [MEMORY[0x1E69DC8D8] configurationWithIdentifier:0 previewProvider:0 actionProvider:v5];

  return v6;
}

id __76__PKPaymentPassDetailViewController_contextMenuConfigurationForCopyingText___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x1E69DC628];
    v3 = PKLocalizedString(&cfstr_MenuActionCopy.isa);
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"document.on.document"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__PKPaymentPassDetailViewController_contextMenuConfigurationForCopyingText___block_invoke_2;
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

void __76__PKPaymentPassDetailViewController_contextMenuConfigurationForCopyingText___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v2 setString:*(a1 + 32)];
}

- (id)tableView:(id)view contextMenuConfigurationForTransactionAtIndexPath:(id)path point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  pathCopy = path;
  v11 = [pathCopy row];
  if (v11 >= [(PKPaymentPassDetailViewController *)self _transactionsCount])
  {
    v16 = 0;
  }

  else
  {
    v12 = [viewCopy cellForRowAtIndexPath:pathCopy];
    transactionView = [v12 transactionView];
    v14 = [transactionView shouldShowTransactionPreviewForTouchAtPoint:viewCopy inView:{x, y}];

    if (v14)
    {
      v15 = [(NSArray *)self->_transactions objectAtIndexedSubscript:v11];
      v16 = [(PKPaymentPassDetailViewController *)self contextMenuConfigurationForTransaction:v15];
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)contextMenuConfigurationForTransaction:(id)transaction
{
  transactionCopy = transaction;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PKPaymentPassDetailViewController_contextMenuConfigurationForTransaction___block_invoke;
  aBlock[3] = &unk_1E80261D8;
  aBlock[4] = self;
  v5 = transactionCopy;
  v17 = v5;
  v6 = _Block_copy(aBlock);
  objc_initWeak(&location, self);
  if ([v5 isDeletable] && objc_msgSend(v5, "transactionType") == 15)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__PKPaymentPassDetailViewController_contextMenuConfigurationForTransaction___block_invoke_2;
    v12[3] = &unk_1E8026200;
    objc_copyWeak(&v14, &location);
    v13 = v5;
    v7 = _Block_copy(v12);

    objc_destroyWeak(&v14);
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x1E69DC8D8];
  identifier = [v5 identifier];
  v10 = [v8 configurationWithIdentifier:identifier previewProvider:v6 actionProvider:v7];

  objc_destroyWeak(&location);

  return v10;
}

id __76__PKPaymentPassDetailViewController_contextMenuConfigurationForTransaction___block_invoke_2(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69DC628];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __76__PKPaymentPassDetailViewController_contextMenuConfigurationForTransaction___block_invoke_3;
  v15 = &unk_1E8012328;
  objc_copyWeak(&v17, (a1 + 40));
  v16 = *(a1 + 32);
  v5 = [v4 actionWithHandler:&v12];
  [v5 setAttributes:{2, v12, v13, v14, v15}];
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
  [v5 setImage:v6];

  v7 = PKLocalizedIdentityString(&cfstr_TransactionDel_0.isa);
  [v5 setTitle:v7];

  v8 = MEMORY[0x1E69DCC60];
  v18[0] = v5;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v10 = [v8 menuWithChildren:v9];

  objc_destroyWeak(&v17);

  return v10;
}

void __76__PKPaymentPassDetailViewController_contextMenuConfigurationForTransaction___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained deleteTransaction:*(a1 + 32) completionHandler:0];
}

- (void)tableView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  previewViewController = [animatorCopy previewViewController];
  v8 = previewViewController;
  if (previewViewController)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __105__PKPaymentPassDetailViewController_tableView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
    v9[3] = &unk_1E8010A10;
    v9[4] = self;
    v10 = previewViewController;
    [animatorCopy addAnimations:v9];
  }
}

void __105__PKPaymentPassDetailViewController_tableView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) navigationController];
  v2 = [v4 pk_settings_useStateDrivenNavigation];
  v3 = *(a1 + 40);
  if (v2)
  {
    [v4 pk_settings_pushViewController:v3];
  }

  else
  {
    [v4 pushViewController:v3 animated:1];
  }
}

- (id)tableView:(id)view viewForHeaderInSectionCase:(unint64_t)case
{
  viewCopy = view;
  v7 = viewCopy;
  if (case == 40)
  {
    if (!self->_account)
    {
      v8 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"spinner"];
      v9 = &OBJC_IVAR___PKPaymentPassDetailViewController__loadingBillingContact;
      v10 = 1728;
LABEL_6:
      v11 = (&self->super.super.super.super.super.isa + v10);
      v12 = *(&self->super.super.super.super.super.isa + v10);
      *v11 = v8;

      v13 = *v11;
      if (!*v11)
      {
        v14 = [[PKSpinnerHeaderView alloc] initWithReuseIdentifier:@"spinner"];
        v15 = *v11;
        *v11 = v14;

        v13 = *v11;
      }

      [v13 setShowSpinner:*(&self->super.super.super.super.super.isa + *v9)];
      v16 = *v11;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (case == 24)
  {
    v8 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"spinner"];
    v9 = &OBJC_IVAR___PKPaymentPassDetailViewController__loadingPeerPaymentPreferences;
    v10 = 1568;
    goto LABEL_6;
  }

  v17 = [(PKPaymentPassDetailViewController *)self titleForHeaderInSection:case];
  v18 = [v17 length];

  if (v18)
  {
    v19 = 0;
    goto LABEL_14;
  }

  v16 = [v7 dequeueReusableHeaderFooterViewWithIdentifier:@"default"];
  if (!v16)
  {
    v16 = [objc_alloc(MEMORY[0x1E69DD050]) initWithReuseIdentifier:@"default"];
  }

LABEL_13:
  v19 = v16;
LABEL_14:

  return v19;
}

- (double)tableView:(id)view heightForHeaderInSectionCase:(unint64_t)case
{
  if (case)
  {
    [view sectionHeaderHeight];
  }

  else
  {
    result = 10.0;
    if (self->_detailViewStyle == 1)
    {
      return 20.0;
    }
  }

  return result;
}

- (id)tableView:(id)view viewForFooterInSectionCase:(unint64_t)case
{
  v23 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (case > 32)
  {
    if (case > 44)
    {
      switch(case)
      {
        case '-':
          _footerViewForApplePayProductPrivacySection = [(PKPaymentPassDetailViewController *)self _footerViewForApplePayProductPrivacySection];
          break;
        case '.':
          _footerViewForApplePayProductPrivacySection = [(PKPaymentPassDetailViewController *)self _footerViewForManualIdentityVerificationSection];
          break;
        case '0':
          _footerViewForApplePayProductPrivacySection = [(PKPaymentPassDetailViewController *)self _footerViewForPassOperationsSection];
          break;
        default:
          goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (case != 33)
    {
      if (case == 34)
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        associatedAccountInformation = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedAccountInformation];
        associatedAccountInvitations = [associatedAccountInformation associatedAccountInvitations];

        v10 = [associatedAccountInvitations countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v19;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v19 != v12)
              {
                objc_enumerationMutation(associatedAccountInvitations);
              }

              if ([*(*(&v18 + 1) + 8 * i) status] == 1)
              {

                _footerViewForApplePayProductPrivacySection = [(PKPaymentPassDetailViewController *)self _footerViewForPendingPeerPaymentAssociatedAccount];
                goto LABEL_33;
              }
            }

            v11 = [associatedAccountInvitations countByEnumeratingWithState:&v18 objects:v22 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }
      }

      goto LABEL_34;
    }

LABEL_26:
    _footerViewForApplePayProductPrivacySection = [(PKPaymentPassDetailViewController *)self _footerViewForMerchantTokensSection];
    goto LABEL_33;
  }

  if (case > 21)
  {
    switch(case)
    {
      case 0x16uLL:
        _footerViewForApplePayProductPrivacySection = [(PKPaymentPassDetailViewController *)self _footerViewForPeerPaymentBalanceSectionWithTableView:viewCopy];
        break;
      case 0x1BuLL:
        _footerViewForApplePayProductPrivacySection = [(PKPaymentPassDetailViewController *)self _footerViewForPassStateSection];
        break;
      case 0x1EuLL:
        goto LABEL_26;
      default:
        goto LABEL_34;
    }

LABEL_33:
    v14 = _footerViewForApplePayProductPrivacySection;
    if (_footerViewForApplePayProductPrivacySection)
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  if (case == 10)
  {
    _footerViewForApplePayProductPrivacySection = [(PKPaymentPassDetailViewController *)self _footerViewForAccountUsersSection];
    goto LABEL_33;
  }

  if (case == 15)
  {
    goto LABEL_26;
  }

LABEL_34:
  v15 = [(PKPaymentPassDetailViewController *)self titleForFooterInSection:case];
  v16 = [v15 length];

  if (v16)
  {
    v14 = 0;
  }

  else
  {
    v14 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"default"];
    if (!v14)
    {
      v14 = [objc_alloc(MEMORY[0x1E69DD050]) initWithReuseIdentifier:@"default"];
    }
  }

LABEL_38:

  return v14;
}

- (double)tableView:(id)view heightForFooterInSectionCase:(unint64_t)case
{
  v26 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PKPaymentPassDetailViewController_tableView_heightForFooterInSectionCase___block_invoke;
  aBlock[3] = &unk_1E8026228;
  aBlock[4] = self;
  caseCopy = case;
  v7 = viewCopy;
  v23 = v7;
  v8 = _Block_copy(aBlock);
  if (case > 29)
  {
    if (case <= 33)
    {
      if (case != 30 && case != 33)
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    if (case == 34)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      associatedAccountInformation = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedAccountInformation];
      associatedAccountInvitations = [associatedAccountInformation associatedAccountInvitations];

      v12 = [associatedAccountInvitations countByEnumeratingWithState:&v18 objects:v25 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v19;
        while (2)
        {
          v15 = 0;
          do
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(associatedAccountInvitations);
            }

            if ([*(*(&v18 + 1) + 8 * v15) status] == 1)
            {

              goto LABEL_28;
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [associatedAccountInvitations countByEnumeratingWithState:&v18 objects:v25 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_25;
    }

    if (case == 45)
    {
      goto LABEL_28;
    }

LABEL_25:
    v9 = v8[2](v8);
    goto LABEL_26;
  }

  if (case <= 21)
  {
    if (case != 10 && case != 15)
    {
      goto LABEL_25;
    }

LABEL_28:
    v16 = *MEMORY[0x1E69DE3D0];
    goto LABEL_29;
  }

  if (case == 22)
  {
    goto LABEL_28;
  }

  if (case != 27)
  {
    goto LABEL_25;
  }

  [(PKPaymentPassDetailViewController *)self _footerViewHeightForPassStateSectionWithTableView:v7];
LABEL_26:
  v16 = v9;
LABEL_29:

  return v16;
}

uint64_t __76__PKPaymentPassDetailViewController_tableView_heightForFooterInSectionCase___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) titleForFooterInSection:*(a1 + 48)];
  v3 = [v2 length];

  if (v3 || (v4 = *(a1 + 32), PKPassDetailSectionTypeToString(*(a1 + 48)), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 indexOfSectionIdentifier:v5], v5, v6 == 0x7FFFFFFFFFFFFFFFLL) || (v7 = v6 + 1, v7 >= objc_msgSend(*(a1 + 32), "numberOfSections")) || (objc_msgSend(*(a1 + 32), "tableView:titleForHeaderInSection:", *(a1 + 40), v7), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, !v9))
  {
    v11 = *(a1 + 40);

    return [v11 sectionFooterHeight];
  }

  else
  {

    return PKFloatRoundToPixel();
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path section:(unint64_t)section
{
  viewCopy = view;
  pathCopy = path;
  if (section - 7 < 0x2A)
  {
    goto LABEL_2;
  }

  v11 = 0.0;
  if (section > 2)
  {
    if (section - 4 >= 2)
    {
      if (section != 3)
      {
        if (section != 6)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }

      cardHolderPicture = [(PKPaymentPass *)self->_pass cardHolderPicture];
      [cardHolderPicture size];
      v11 = 184.0;
      if (v14 < 184.0)
      {
        cardHolderPicture2 = [(PKPaymentPass *)self->_pass cardHolderPicture];
        [cardHolderPicture2 size];
        v11 = v16;
      }

      goto LABEL_3;
    }

LABEL_2:
    [viewCopy rowHeight];
    v11 = v10;
    goto LABEL_3;
  }

  if (!section)
  {
LABEL_13:
    v11 = *MEMORY[0x1E69DE3D0];
    goto LABEL_3;
  }

  if (section == 1 || section == 2)
  {
    goto LABEL_2;
  }

LABEL_3:

  return v11;
}

- (double)estimatedHeightForRowAtIndexPath:(id)path section:(unint64_t)section
{
  result = *MEMORY[0x1E69DE3D0];
  if (section >= 0x31)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)shouldHighlightRowAtIndexPath:(id)path section:(unint64_t)section
{
  pathCopy = path;
  v6 = pathCopy;
  v7 = section - 2;
  LOBYTE(section) = 0;
  switch(v7)
  {
    case 0uLL:
    case 1uLL:
    case 0x14uLL:
    case 0x1EuLL:
      break;
    case 8uLL:
      goto LABEL_34;
    case 0xAuLL:
      isLoadingVirtualCard = [(PKAccountCardNumbersPresenter *)self->_accountCardNumbersPresenter isLoadingVirtualCard];
      goto LABEL_18;
    case 0xBuLL:
      if (-[PKPaymentPassDetailViewController _accountServiceCreditDetailsRowForRowIndex:](self, "_accountServiceCreditDetailsRowForRowIndex:", [pathCopy row]))
      {
        goto LABEL_28;
      }

      isTotalBalanceCellSelectable = [(PKPaymentPassDetailViewController *)self isTotalBalanceCellSelectable];
      goto LABEL_35;
    case 0xCuLL:
      v17 = 1632;
      goto LABEL_32;
    case 0xDuLL:
    case 0x1CuLL:
    case 0x1FuLL:
      merchantTokens = [(PKRetrieveMerchantTokensResponse *)self->_merchantTokensResponse merchantTokens];
      LOBYTE(section) = [merchantTokens count] != 0;

      break;
    case 0x10uLL:
      v14 = -[PKPaymentPassDetailViewController _accountServiceRewardsRowForRowIndex:](self, "_accountServiceRewardsRowForRowIndex:", [pathCopy row]);
      if (v14 == 1 && !self->_redeemingRewards)
      {
        goto LABEL_10;
      }

      v15 = v14 == 2;
LABEL_23:
      LOBYTE(section) = v15;
      break;
    case 0x11uLL:
      if ([(PKPhysicalCardActionController *)self->_physicalCardActionController state]== 1 || self->_loadingOrderPhysicalCard)
      {
        goto LABEL_28;
      }

      v17 = 1635;
      goto LABEL_32;
    case 0x18uLL:
      v18 = -[NSArray objectAtIndex:](self->_contactlessPaymentApplications, "objectAtIndex:", [pathCopy row]);
      LOBYTE(section) = !self->_changingDefaultPaymentApplication && self->_defaultPaymentApplication != v18;

      break;
    case 0x1AuLL:
      isTotalBalanceCellSelectable = -[PKPaymentPassDetailViewController _canSelectBalanceOrCommutePlanCellAtRowIndex:](self, "_canSelectBalanceOrCommutePlanCellAtRowIndex:", [pathCopy row]);
      goto LABEL_35;
    case 0x1DuLL:
      _rowIndexForExpressTransitSettingsCell = [(PKPaymentPassDetailViewController *)self _rowIndexForExpressTransitSettingsCell];
      v15 = _rowIndexForExpressTransitSettingsCell == [v6 row];
      goto LABEL_23;
    case 0x20uLL:
      v10 = [pathCopy row];
      if (v10 >= [(NSArray *)self->_sortedFamilyMemberRowModels count])
      {
        goto LABEL_10;
      }

      v11 = [(NSArray *)self->_sortedFamilyMemberRowModels objectAtIndex:v10];
      state = [v11 state];
      if (state > 4)
      {

LABEL_34:
        isTotalBalanceCellSelectable = [(PKPaymentPassDetailViewController *)self canSelectAccountUserRowAtIndexPath:v6];
LABEL_35:
        LOBYTE(section) = isTotalBalanceCellSelectable;
      }

      else
      {
        LODWORD(section) = 0xEu >> state;
      }

      break;
    case 0x23uLL:
      LOBYTE(section) = [(PKPaymentPassDetailViewController *)self _transactionsCount]!= 0;
      break;
    case 0x29uLL:
      if (self->_requestingStatement)
      {
LABEL_28:
        LOBYTE(section) = 0;
      }

      else
      {
        v17 = 1713;
LABEL_32:
        LOBYTE(section) = *(&self->super.super.super.super.super.isa + v17) ^ 1;
      }

      break;
    case 0x2EuLL:
      isLoadingVirtualCard = [(PKPaymentPassDetailViewController *)self _isDeletingPass];
LABEL_18:
      LOBYTE(section) = !isLoadingVirtualCard;
      break;
    default:
LABEL_10:
      LOBYTE(section) = 1;
      break;
  }

  return section & 1;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path section:(unint64_t)section
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  switch(section)
  {
    case 1uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectPeerPaymentAccountActionAtIndexPath:pathCopy];
      break;
    case 4uLL:
      [(PKPaymentPassDetailViewController *)self didSelectIdentityDocumentCellInTableView:viewCopy atIndexPath:pathCopy];
      break;
    case 5uLL:
      [(PKPaymentPassDetailViewController *)self didSelectReplaceBiometricCellInTableView:viewCopy atIndexPath:pathCopy];
      break;
    case 9uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectServicingWalletLink];
      break;
    case 0xAuLL:
      [(PKPaymentPassDetailViewController *)self didSelectAccountUserCellInTableView:viewCopy atIndexPath:pathCopy];
      break;
    case 0xBuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectInstallmentPlansAtIndexPath:pathCopy];
      break;
    case 0xCuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectAccountServiceCardNumbersAtIndexPath:pathCopy];
      break;
    case 0xDuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectCreditDetailsCell:pathCopy];
      break;
    case 0xEuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectAccountServiceBankAccountsAtIndexPath:pathCopy];
      break;
    case 0xFuLL:
    case 0x1EuLL:
    case 0x21uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectMerchantTokensCell];
      break;
    case 0x10uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectProductBenefitsCell];
      break;
    case 0x11uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectAccountServiceMakeDefaultAtIndexPath:pathCopy];
      break;
    case 0x12uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectAccountServiceRewardsDetailsAtIndexPath:pathCopy];
      break;
    case 0x13uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectAccountServicePhysicalCardAtIndexPath:pathCopy];
      break;
    case 0x15uLL:
      -[PKPaymentPassDetailViewController _didSelectTransitTicketAtRow:](self, "_didSelectTransitTicketAtRow:", [pathCopy row]);
      break;
    case 0x17uLL:
      -[PKPaymentPassDetailViewController _didSelectPeerPaymentMoneyActionAtRow:](self, "_didSelectPeerPaymentMoneyActionAtRow:", [pathCopy row]);
      break;
    case 0x18uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectAutomaticallyAcceptPaymentsPreferenceAtIndexPath:pathCopy];
      break;
    case 0x19uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectPeerPaymentBankAccountsAtIndexPath:pathCopy];
      break;
    case 0x1AuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectPaymentApplicationSectionRowAtIndexPath:pathCopy];
      break;
    case 0x1BuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectPassStateSection];
      break;
    case 0x1CuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectBalanceOrCommutePlanCellAtIndexPath:pathCopy];
      break;
    case 0x1DuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectContactBankSectionAtIndexPath:pathCopy];
      break;
    case 0x1FuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectCardInfoCellAtIndexPath:pathCopy];
      break;
    case 0x22uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectFamilySharingAtIndexPath:pathCopy];
      break;
    case 0x23uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectTransactionTransactionsSwitchInTableView:viewCopy atIndexPath:pathCopy];
      break;
    case 0x24uLL:
      [(PKLinkedApplication *)self->_linkedApplication openApplication:self];
      break;
    case 0x25uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectTransactionAtIndexPath:pathCopy];
      break;
    case 0x26uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectTransactionCountByPeriodAtIndexPath:pathCopy];
      break;
    case 0x27uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectPassInGroupAtIndexPath:pathCopy];
      break;
    case 0x28uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectBillingAddress];
      break;
    case 0x29uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectNetworkBenefitsCell];
      break;
    case 0x2AuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectPeerPaymentParticipantGradutionAtIndexPath:pathCopy];
      break;
    case 0x2BuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectPeerPaymentStatementAtIndexPath:pathCopy];
      break;
    case 0x2CuLL:
      [(PKPaymentPassDetailViewController *)self didSelectVerifySSNCellInTableView:viewCopy atIndexPath:pathCopy];
      break;
    case 0x2DuLL:
      -[PKPaymentPassDetailViewController _didSelectPrivacySectionAtRow:](self, "_didSelectPrivacySectionAtRow:", [pathCopy row]);
      break;
    case 0x2EuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectPeerPaymentManualIdentityVerificationAtIndexPath:pathCopy];
      break;
    case 0x2FuLL:
      [(PKPaymentPassDetailViewController *)self didSelectAccountUserStopSharingCellInTableView:viewCopy atIndexPath:pathCopy];
      break;
    case 0x30uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectPassOperationsSectionAtIndexPath:pathCopy];
      break;
    default:
      break;
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__PKPaymentPassDetailViewController_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = identifierCopy;
  v12 = propertiesCopy;
  v8 = propertiesCopy;
  v9 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __104__PKPaymentPassDetailViewController_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 1088) uniqueID];
  if (PKEqualObjects())
  {
    v2 = PKEqualObjects();

    if ((v2 & 1) == 0)
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 48);

      [v3 _refreshDisplayWithBalances:0 plans:0 transitProperties:v4];
    }
  }

  else
  {
  }
}

- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction
{
  identifierCopy = identifier;
  transactionCopy = transaction;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PKPaymentPassDetailViewController_transactionSourceIdentifier_didReceiveTransaction___block_invoke;
  block[3] = &unk_1E8010A88;
  v11 = transactionCopy;
  selfCopy = self;
  v13 = identifierCopy;
  v8 = identifierCopy;
  v9 = transactionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __87__PKPaymentPassDetailViewController_transactionSourceIdentifier_didReceiveTransaction___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) hasBackingData];
  if (result)
  {
    result = [*(*(a1 + 40) + 1088) hasDeviceTransactionSourceIdentifier:*(a1 + 48)];
    if (result)
    {
      v3 = *(a1 + 40);

      return [v3 _startPendingTransactionTimer];
    }
  }

  return result;
}

- (void)transactionSourceIdentifier:(id)identifier didRemoveTransactionWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PKPaymentPassDetailViewController_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = identifierCopy;
  v12 = withIdentifierCopy;
  v8 = withIdentifierCopy;
  v9 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __100__PKPaymentPassDetailViewController_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 1088) hasDeviceTransactionSourceIdentifier:*(a1 + 40)])
  {
    v2 = [*(*(a1 + 32) + 1448) objectForKey:*(a1 + 48)];
    if (v2)
    {
      [MEMORY[0x1E6979518] begin];
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __100__PKPaymentPassDetailViewController_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke_2;
      v3[3] = &unk_1E8010970;
      v3[4] = *(a1 + 32);
      [MEMORY[0x1E6979518] setCompletionBlock:v3];
      v2[2](v2, 1);
      [MEMORY[0x1E6979518] commit];
      [*(*(a1 + 32) + 1448) removeObjectForKey:*(a1 + 48)];
    }

    else
    {
      [*(a1 + 32) _reloadTransactionSectionsAnimated:1 forceReload:0];
    }
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableMessageService:(BOOL)service
{
  identifierCopy = identifier;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__PKPaymentPassDetailViewController_paymentPassWithUniqueIdentifier_didEnableMessageService___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __93__PKPaymentPassDetailViewController_paymentPassWithUniqueIdentifier_didEnableMessageService___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 1088) uniqueID];
  if ([v3 isEqualToString:*(a1 + 40)])
  {
    v2 = [*(*(a1 + 32) + 1160) settingSwitch];
    [v2 setEnabled:1];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableTransactionService:(BOOL)service
{
  identifierCopy = identifier;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__PKPaymentPassDetailViewController_paymentPassWithUniqueIdentifier_didEnableTransactionService___block_invoke;
  block[3] = &unk_1E8013D60;
  block[4] = self;
  v9 = identifierCopy;
  serviceCopy = service;
  v7 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __97__PKPaymentPassDetailViewController_paymentPassWithUniqueIdentifier_didEnableTransactionService___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1088) uniqueID];
  [*(a1 + 32) _cancelPendingTransactionTimer];
  if ([v2 isEqualToString:*(a1 + 40)])
  {
    v3 = *(a1 + 32);
    if (*(a1 + 48) == 1)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __97__PKPaymentPassDetailViewController_paymentPassWithUniqueIdentifier_didEnableTransactionService___block_invoke_2;
      v5[3] = &unk_1E8011D28;
      v5[4] = v3;
      [v3 _reloadTransactionsWithCompletion:v5];
    }

    else
    {
      [v3 reloadData:1];
      [*(a1 + 32) _reloadTransactionSectionsAnimated:1 forceReload:0];
      v4 = [*(*(a1 + 32) + 1168) settingSwitch];
      [v4 setEnabled:1];
    }
  }
}

void __97__PKPaymentPassDetailViewController_paymentPassWithUniqueIdentifier_didEnableTransactionService___block_invoke_2(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v5[0] = @"Transactions";
  v5[1] = @"TransactionsByYear";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  [v2 reloadPassDetailSections:v3 updates:0];

  v4 = [*(*(a1 + 32) + 1168) settingSwitch];
  [v4 setEnabled:1];
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update
{
  identifierCopy = identifier;
  updateCopy = update;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__PKPaymentPassDetailViewController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = identifierCopy;
  v12 = updateCopy;
  v8 = updateCopy;
  v9 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __93__PKPaymentPassDetailViewController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1088) uniqueID];
  v3 = PKEqualObjects();

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);

    [v4 _refreshDisplayWithBalances:v5 plans:0 transitProperties:0];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceivePlanUpdate:(id)update
{
  identifierCopy = identifier;
  updateCopy = update;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKPaymentPassDetailViewController_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = identifierCopy;
  v12 = updateCopy;
  v8 = updateCopy;
  v9 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __90__PKPaymentPassDetailViewController_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1088) uniqueID];
  v3 = PKEqualObjects();

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);

    [v4 _refreshDisplayWithBalances:0 plans:v5 transitProperties:0];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateBalanceReminder:(id)reminder forBalanceWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  reminderCopy = reminder;
  withIdentifierCopy = withIdentifier;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __119__PKPaymentPassDetailViewController_paymentPassWithUniqueIdentifier_didUpdateBalanceReminder_forBalanceWithIdentifier___block_invoke;
  v14[3] = &unk_1E8011C98;
  v14[4] = self;
  v15 = identifierCopy;
  v16 = withIdentifierCopy;
  v17 = reminderCopy;
  v11 = reminderCopy;
  v12 = withIdentifierCopy;
  v13 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __119__PKPaymentPassDetailViewController_paymentPassWithUniqueIdentifier_didUpdateBalanceReminder_forBalanceWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1088) uniqueID];
  v3 = PKEqualObjects();

  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{*(a1 + 48), 0}];
    [*(a1 + 32) _handleUpdatedBalanceReminder:*(a1 + 56) forBalanceWithIdentifier:v4];
  }
}

- (void)featureApplicationRemoved:(id)removed
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKPaymentPassDetailViewController_featureApplicationRemoved___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __63__PKPaymentPassDetailViewController_featureApplicationRemoved___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__PKPaymentPassDetailViewController_featureApplicationRemoved___block_invoke_2;
  v3[3] = &unk_1E8010970;
  v3[4] = v1;
  return [v1 loadPendingAccountUserInvitationsWithCompletion:v3];
}

- (void)featureApplicationChanged:(id)changed
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKPaymentPassDetailViewController_featureApplicationChanged___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __63__PKPaymentPassDetailViewController_featureApplicationChanged___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__PKPaymentPassDetailViewController_featureApplicationChanged___block_invoke_2;
  v3[3] = &unk_1E8010970;
  v3[4] = v1;
  return [v1 loadPendingAccountUserInvitationsWithCompletion:v3];
}

- (void)featureApplicationAdded:(id)added
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PKPaymentPassDetailViewController_featureApplicationAdded___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __61__PKPaymentPassDetailViewController_featureApplicationAdded___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__PKPaymentPassDetailViewController_featureApplicationAdded___block_invoke_2;
  v3[3] = &unk_1E8010970;
  v3[4] = v1;
  return [v1 loadPendingAccountUserInvitationsWithCompletion:v3];
}

- (void)didUpdateFamilyMembers:(id)members
{
  membersCopy = members;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__PKPaymentPassDetailViewController_didUpdateFamilyMembers___block_invoke;
  v6[3] = &unk_1E8010A10;
  v7 = membersCopy;
  selfCopy = self;
  v5 = membersCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __60__PKPaymentPassDetailViewController_didUpdateFamilyMembers___block_invoke(uint64_t a1)
{
  obj = [objc_alloc(MEMORY[0x1E69B88A0]) initWithFamilyMembers:*(a1 + 32)];
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong((*(a1 + 40) + 2240), obj);
    [*(a1 + 40) _updateFamilyRows];
  }
}

- (void)_reloadTransactionSourceCollectionIfNecessary
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPaymentPass:self->_pass];
  [v3 addObject:v4];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  accountUsers = [(PKAccountUserCollection *)self->_accountUserCollection accountUsers];
  v6 = [accountUsers countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(accountUsers);
        }

        v10 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithAccountUser:*(*(&v19 + 1) + 8 * v9)];
        [v3 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [accountUsers countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  v11 = self->_transactionSourceCollection;
  v12 = objc_alloc(MEMORY[0x1E69B9300]);
  v13 = [v3 copy];
  v14 = [v12 initWithTransactionSources:v13];

  if ((PKEqualObjects() & 1) == 0)
  {
    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v14;
      _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "Pass details transaction source manager has changed %@.", buf, 0xCu);
    }

    objc_storeStrong(&self->_transactionSourceCollection, v14);
    resolutionController = self->_resolutionController;
    self->_resolutionController = 0;

    v17 = [objc_alloc(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:self->_transactionSourceCollection paymentDataProvider:self->_paymentServiceDataProvider];
    transactionFetcher = self->_transactionFetcher;
    self->_transactionFetcher = v17;

    [(PKPaymentPassDetailViewController *)self _reloadTransactionSectionsAnimated:1 forceReload:0];
  }
}

- (void)_reloadTransactionsWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PKPaymentPassDetailViewController *)self _isBankConnectLinked])
  {
    [(FKBankConnectTransactionsAndGroupsProvider *)self->_bankConnectTransactionsAndGroupsProvider performFetchAndStartObservingNotifications];
  }

  else
  {
    devicePrimaryPaymentApplication = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
    [devicePrimaryPaymentApplication paymentNetworkIdentifier];

    v6 = PKMaxPaymentTransactionsForCredentialType();
    v7 = dispatch_group_create();
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x3032000000;
    v26[3] = __Block_byref_object_copy__339;
    v26[4] = __Block_byref_object_dispose__340;
    v27 = 0;
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = __Block_byref_object_copy__339;
    v24[4] = __Block_byref_object_dispose__340;
    v25 = 0;
    dispatch_group_enter(v7);
    transactionFetcher = self->_transactionFetcher;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __71__PKPaymentPassDetailViewController__reloadTransactionsWithCompletion___block_invoke;
    v21[3] = &unk_1E8012BB0;
    v23 = v26;
    v9 = v7;
    v22 = v9;
    [(PKDashboardTransactionFetcher *)transactionFetcher reloadTransactionsWithCompletion:v21];
    if (self->_peerPaymentAccount || self->_account) && (objc_opt_respondsToSelector())
    {
      dispatch_group_enter(v9);
      v10 = objc_alloc_init(MEMORY[0x1E69B8EC8]);
      transactionSourceIdentifiers = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourceIdentifiers];
      [v10 setTransactionSourceIdentifiers:transactionSourceIdentifiers];

      paymentServiceDataProvider = self->_paymentServiceDataProvider;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __71__PKPaymentPassDetailViewController__reloadTransactionsWithCompletion___block_invoke_2;
      v17[3] = &unk_1E8026250;
      v19 = v24;
      v20 = v6;
      v18 = v9;
      [(PKPaymentDataProvider *)paymentServiceDataProvider transactionCountByPeriodForRequest:v10 gregorianCalendarUnit:4 includePurchaseTotal:0 completion:v17];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__PKPaymentPassDetailViewController__reloadTransactionsWithCompletion___block_invoke_3;
    block[3] = &unk_1E8019510;
    block[4] = self;
    v15 = v26;
    v16 = v24;
    v14 = completionCopy;
    dispatch_group_notify(v9, MEMORY[0x1E69E96A0], block);

    _Block_object_dispose(v24, 8);
    _Block_object_dispose(v26, 8);
  }
}

void __71__PKPaymentPassDetailViewController__reloadTransactionsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEB0];
  v4 = a2;
  v5 = [v3 sortDescriptorWithKey:@"transactionDate" ascending:0];
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [v4 sortedArrayUsingDescriptors:v6];

  v8 = [v7 copy];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  dispatch_group_leave(*(a1 + 32));
}

void __71__PKPaymentPassDetailViewController__reloadTransactionsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  v5 = v3;
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v7 += [*(*(&v12 + 1) + 8 * i) transactionCount];
        if (v7 > *(a1 + 48))
        {

          v10 = *(*(a1 + 40) + 8);
          v11 = v3;
          v5 = *(v10 + 40);
          *(v10 + 40) = v11;
          goto LABEL_11;
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    v5 = v3;
  }

LABEL_11:

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __71__PKPaymentPassDetailViewController__reloadTransactionsWithCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _transactionSectionsDataIsChangedForNewTransactions:*(*(*(a1 + 48) + 8) + 40) oldTransactions:*(*(a1 + 32) + 1224) newtransactionCountByPeriod:*(*(*(a1 + 56) + 8) + 40) oldtransactionCountByPeriod:*(*(a1 + 32) + 1232)];
  objc_storeStrong((*(a1 + 32) + 1224), *(*(*(a1 + 48) + 8) + 40));
  objc_storeStrong((*(a1 + 32) + 1232), *(*(*(a1 + 56) + 8) + 40));
  [*(a1 + 32) _cancelPendingTransactionTimer];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (BOOL)_transactionSectionsDataIsChangedForNewTransactions:(id)transactions oldTransactions:(id)oldTransactions newtransactionCountByPeriod:(id)period oldtransactionCountByPeriod:(id)byPeriod
{
  transactionsCopy = transactions;
  oldTransactionsCopy = oldTransactions;
  periodCopy = period;
  byPeriodCopy = byPeriod;
  if (transactionsCopy == oldTransactionsCopy)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v13 = [transactionsCopy isEqual:oldTransactionsCopy] ^ 1;
  }

  if (periodCopy != byPeriodCopy && (v13 & 1) == 0)
  {
    v13 = [periodCopy isEqual:byPeriodCopy] ^ 1;
  }

  return v13;
}

- (void)physicalCardsChanged:(id)changed forAccountIdentifier:(id)identifier
{
  changedCopy = changed;
  identifierCopy = identifier;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PKPaymentPassDetailViewController_physicalCardsChanged_forAccountIdentifier___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = identifierCopy;
  v12 = changedCopy;
  v8 = changedCopy;
  v9 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __79__PKPaymentPassDetailViewController_physicalCardsChanged_forAccountIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 2200);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [v2 accountIdentifier];
    v5 = v3;
    v6 = v4;
    v9 = v6;
    if (v5 == v6)
    {

LABEL_8:
      objc_initWeak(&location, *(a1 + 32));
      v8 = *(a1 + 32);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __79__PKPaymentPassDetailViewController_physicalCardsChanged_forAccountIdentifier___block_invoke_2;
      v10[3] = &unk_1E80110E0;
      objc_copyWeak(&v12, &location);
      v11 = *(a1 + 48);
      [v8 reloadSection:19 updates:v10];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
      return;
    }

    if (v5 && v6)
    {
      v7 = [v5 isEqualToString:v6];

      if ((v7 & 1) == 0)
      {
        return;
      }

      goto LABEL_8;
    }
  }
}

void __79__PKPaymentPassDetailViewController_physicalCardsChanged_forAccountIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[201] updateWithPhysicalCards:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)accountUsersChanged:(id)changed forAccountIdentifier:(id)identifier
{
  changedCopy = changed;
  identifierCopy = identifier;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PKPaymentPassDetailViewController_accountUsersChanged_forAccountIdentifier___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = identifierCopy;
  v12 = changedCopy;
  v8 = changedCopy;
  v9 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __78__PKPaymentPassDetailViewController_accountUsersChanged_forAccountIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 2200);
  if (!v2)
  {
    return;
  }

  v3 = *(a1 + 40);
  v4 = [v2 accountIdentifier];
  v5 = v3;
  v6 = v4;
  v12 = v6;
  if (v5 == v6)
  {

LABEL_8:
    v8 = [objc_alloc(MEMORY[0x1E69B8450]) initWithAccountUsers:*(a1 + 48)];
    v9 = *(a1 + 32);
    v10 = *(v9 + 2096);
    *(v9 + 2096) = v8;

    [*(a1 + 32) _updateFamilyRows];
    [*(a1 + 32) _reloadTransactionSourceCollectionIfNecessary];
    v11 = *(a1 + 32);

    [v11 _updateCashbackPeerPaymentResolutionSection];
    return;
  }

  if (v5 && v6)
  {
    v7 = [v5 isEqualToString:v6];

    if ((v7 & 1) == 0)
    {
      return;
    }

    goto LABEL_8;
  }
}

- (void)_applyDefaultStaticStylingToCell:(id)cell
{
  if (self->_highlightColor)
  {
    v4 = MEMORY[0x1E69DD250];
    cellCopy = cell;
    v6 = [v4 alloc];
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v7 setBackgroundColor:self->_highlightColor];
    [cellCopy setSelectedBackgroundView:v7];
  }

  else
  {
    [cell setSelectedBackgroundView:0];
  }

  PKAccessibilityIDDefaultCellSet(cell);
}

- (void)_applyDefaultDynamicStylingToCell:(id)cell
{
  cellCopy = cell;
  [cellCopy setAccessoryType:0];
  [cellCopy setSelectionStyle:3];
  PKAccessibilityIDDefaultCellSet(cellCopy);
}

- (id)_defaultCellWithTextColor:(id)color forTableView:(id)view
{
  colorCopy = color;
  v7 = [view dequeueReusableCellWithIdentifier:@"Cell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"Cell"];
    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v7];
  }

  [(PKPaymentPassDetailViewController *)self _applyDefaultDynamicStylingToCell:v7];
  textLabel = [v7 textLabel];
  [textLabel setText:0];
  [textLabel setTextColor:colorCopy];

  [textLabel setNumberOfLines:0];
  [textLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  [v7 setAccessoryView:0];

  return v7;
}

- (id)_value1CellWithTextColor:(id)color forTableView:(id)view
{
  colorCopy = color;
  v7 = [view dequeueReusableCellWithIdentifier:@"Cell-Value1"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"Cell-Value1"];
    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v7];
  }

  [(PKPaymentPassDetailViewController *)self _applyDefaultDynamicStylingToCell:v7];
  textLabel = [v7 textLabel];
  [textLabel setText:0];
  [textLabel setTextColor:colorCopy];

  [textLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  [v7 setAccessoryView:0];

  return v7;
}

- (id)_subtitleCellForTableView:(id)view
{
  v4 = [view dequeueReusableCellWithIdentifier:@"SubtitleCell"];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"SubtitleCell"];
    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v4];
    textLabel = [v4 textLabel];
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [textLabel setFont:v6];

    [textLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  }

  [(PKPaymentPassDetailViewController *)self _applyDefaultDynamicStylingToCell:v4];

  return v4;
}

- (id)_spinnerCellForTableView:(id)view
{
  v4 = [view dequeueReusableCellWithIdentifier:@"spinnerCell"];
  if (!v4)
  {
    v4 = [[PKLeftAlignedSpinnerCell alloc] initWithStyle:0 reuseIdentifier:@"spinnerCell"];
    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v4];
    [(PKLeftAlignedSpinnerCell *)v4 setAccessoryType:0];
    [(PKLeftAlignedSpinnerCell *)v4 setUserInteractionEnabled:0];
  }

  return v4;
}

- (id)_imageViewCellForImage:(id)image forTableView:(id)view
{
  imageCopy = image;
  v7 = [view dequeueReusableCellWithIdentifier:@"imageViewCell"];
  if (!v7)
  {
    v7 = [[PKImageViewCell alloc] initWithReuseIdentifier:@"imageViewCell"];
    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v7];
    [(PKImageViewCell *)v7 setUserInteractionEnabled:0];
  }

  [(PKImageViewCell *)v7 setImage:imageCopy];
  pkui_firstPixelColor = [imageCopy pkui_firstPixelColor];

  [(PKImageViewCell *)v7 setBackgroundColor:pkui_firstPixelColor];

  return v7;
}

- (id)_switchCellWithText:(id)text forTableView:(id)view
{
  textCopy = text;
  v6 = [[PKSettingTableCell alloc] initWithStyle:0 reuseIdentifier:@"PKSettingTableCellReuseIdentifier"];
  [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v6];
  textLabel = [(PKSettingTableCell *)v6 textLabel];
  [textLabel setText:textCopy];

  if (self->_primaryTextColor)
  {
    [textLabel setTextColor:?];
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [textLabel setTextColor:labelColor];
  }

  [textLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  return v6;
}

- (id)_disabledCellWithText:(id)text forTableView:(id)view
{
  v6 = MEMORY[0x1E69DC888];
  viewCopy = view;
  textCopy = text;
  placeholderTextColor = [v6 placeholderTextColor];
  v10 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:placeholderTextColor forTableView:viewCopy];

  textLabel = [v10 textLabel];
  [textLabel setText:textCopy];

  [v10 setSelectionStyle:0];

  return v10;
}

- (id)_linkCellWithText:(id)text forTableView:(id)view
{
  linkTextColor = self->_linkTextColor;
  if (linkTextColor)
  {
    viewCopy = view;
    textCopy = text;
    v9 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:linkTextColor forTableView:viewCopy];
  }

  else
  {
    v10 = MEMORY[0x1E69DC888];
    viewCopy2 = view;
    textCopy2 = text;
    viewCopy = [v10 linkColor];
    v9 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:viewCopy forTableView:viewCopy2];
  }

  textLabel = [v9 textLabel];
  [textLabel setText:text];

  [v9 setIsAccessibilityElement:1];

  return v9;
}

- (id)_checkmarkCellWithText:(id)text forTableView:(id)view
{
  textCopy = text;
  viewCopy = view;
  primaryTextColor = self->_primaryTextColor;
  if (primaryTextColor)
  {
    v9 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:primaryTextColor forTableView:viewCopy];
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v9 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:labelColor forTableView:viewCopy];
  }

  textLabel = [v9 textLabel];
  [textLabel setText:textCopy];

  if (self->_linkTextColor)
  {
    [v9 setTintColor:?];
  }

  return v9;
}

- (id)_infoCellWithDescription:(id)description forTableView:(id)view
{
  detailTextColor = self->_detailTextColor;
  if (detailTextColor)
  {
    viewCopy = view;
    descriptionCopy = description;
    v9 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:detailTextColor forTableView:viewCopy];
  }

  else
  {
    v10 = MEMORY[0x1E69DC888];
    viewCopy2 = view;
    descriptionCopy2 = description;
    viewCopy = [v10 secondaryLabelColor];
    v9 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:viewCopy forTableView:viewCopy2];
  }

  textLabel = [v9 textLabel];
  [textLabel setText:description];

  [v9 setSelectionStyle:0];

  return v9;
}

- (id)_infoCellWithPrimaryText:(id)text detailText:(id)detailText cellStyle:(int64_t)style forTableView:(id)view
{
  v10 = MEMORY[0x1E696AEC0];
  viewCopy = view;
  detailTextCopy = detailText;
  textCopy = text;
  style = [v10 stringWithFormat:@"CellStyle-%ld", style];
  v15 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:textCopy detailText:detailTextCopy cellStyle:style reuseIdentifier:style forTableView:viewCopy];

  return v15;
}

- (id)_infoCellWithPrimaryText:(id)text detailText:(id)detailText cellStyle:(int64_t)style reuseIdentifier:(id)identifier forTableView:(id)view
{
  identifierCopy = identifier;
  detailTextCopy = detailText;
  textCopy = text;
  v15 = [view dequeueReusableCellWithIdentifier:identifierCopy];
  if (!v15)
  {
    v15 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:style reuseIdentifier:identifierCopy];
    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v15];
  }

  [(PKPaymentPassDetailViewController *)self _applyDefaultDynamicStylingToCell:v15];
  textLabel = [v15 textLabel];
  [textLabel setText:textCopy];

  if (self->_primaryTextColor)
  {
    [textLabel setTextColor:?];
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [textLabel setTextColor:labelColor];
  }

  [textLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  detailTextLabel = [v15 detailTextLabel];
  [detailTextLabel setLineBreakMode:4];
  [detailTextLabel setText:detailTextCopy];

  if (self->_detailTextColor)
  {
    [detailTextLabel setTextColor:?];
  }

  else
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [detailTextLabel setTextColor:secondaryLabelColor];
  }

  [detailTextLabel setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];
  [v15 setIsAccessibilityElement:1];

  return v15;
}

- (id)_stackedInfoCellWithPrimaryText:(id)text detailText:(id)detailText cellStyle:(int64_t)style forTableView:(id)view
{
  detailTextCopy = detailText;
  textCopy = text;
  v12 = [view dequeueReusableCellWithIdentifier:@"StackedInfoCellIdentifier"];
  if (!v12)
  {
    v12 = [[PKStackedLabelCell alloc] initWithStyle:style reuseIdentifier:@"StackedInfoCellIdentifier"];
    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v12];
    if (self->_primaryTextColor)
    {
      [(PKStackedLabelCell *)v12 setTitleTextColor:?];
    }

    else
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [(PKStackedLabelCell *)v12 setTitleTextColor:labelColor];
    }

    if (self->_detailTextColor)
    {
      [(PKStackedLabelCell *)v12 setDetailTextColor:?];
    }

    else
    {
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(PKStackedLabelCell *)v12 setDetailTextColor:secondaryLabelColor];
    }
  }

  [(PKPaymentPassDetailViewController *)self _applyDefaultDynamicStylingToCell:v12];
  [(PKStackedLabelCell *)v12 setTitleText:textCopy];

  [(PKStackedLabelCell *)v12 setDetailText:detailTextCopy];
  [(PKStackedLabelCell *)v12 setIsAccessibilityElement:1];

  return v12;
}

- (id)_familyMemberCellWithRowModel:(id)model forTableView:(id)view
{
  modelCopy = model;
  v7 = [view dequeueReusableCellWithIdentifier:@"familyMemberCell"];
  if (!v7)
  {
    v7 = [[PKFamilyMemberTableViewCell alloc] initWithStyle:1 reuseIdentifier:@"familyMemberCell"];
    textLabel = [(PKFamilyMemberTableViewCell *)v7 textLabel];
    v9 = textLabel;
    if (self->_primaryTextColor)
    {
      [textLabel setTextColor:?];
    }

    else
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [v9 setTextColor:labelColor];
    }

    detailTextLabel = [(PKFamilyMemberTableViewCell *)v7 detailTextLabel];
    v12 = detailTextLabel;
    if (self->_detailTextColor)
    {
      [detailTextLabel setTextColor:?];
    }

    else
    {
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v12 setTextColor:secondaryLabelColor];
    }
  }

  PKAccessibilityIDCellSet(v7, *MEMORY[0x1E69B97C0]);
  [(PKFamilyMemberTableViewCell *)v7 setRowModel:modelCopy];

  [(PKFamilyMemberTableViewCell *)v7 setIsAccessibilityElement:1];

  return v7;
}

- (id)_linkedAppCellForTableView:(id)view
{
  v4 = [view dequeueReusableCellWithIdentifier:@"PKLinkedAppViewReuseIdentifier"];
  if (!v4)
  {
    v4 = [[PKLinkedAppView alloc] initWithLinkedApplication:self->_linkedApplication reuseIdentifier:@"PKLinkedAppViewReuseIdentifier"];
    linkedAppView = [(PKLinkedAppView *)v4 linkedAppView];
    [linkedAppView setDelegate:self];

    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v4];
  }

  if (self->_detailViewStyle == 2)
  {
    v6 = PKBridgeTextColor();
    [(PKLinkedAppView *)v4 setMainLabelColor:v6];

    v7 = PKBridgeAltTextColor();
    [(PKLinkedAppView *)v4 setSubTextLabelColor:v7];

    v8 = BPSBridgeTintColor();
    [(PKLinkedAppView *)v4 setButtonTintColor:v8];
  }

  return v4;
}

- (id)_linkedApplicationCellForTableView:(id)view
{
  v4 = [view dequeueReusableCellWithIdentifier:@"LinkedAppActionCell"];
  if (!v4)
  {
    v4 = [[PKLinkedApplicationActionCell alloc] initWithLinkedApplication:self->_linkedApplication reuseIdentifier:@"LinkedAppActionCell"];
    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v4];
    [(PKLinkedApplicationActionCell *)v4 setTextColor:self->_linkTextColor];
    appearance = [MEMORY[0x1E69C5710] appearance];
    altTextColor = [appearance altTextColor];
    [(PKLinkedApplicationActionCell *)v4 setDisabledTextColor:altTextColor];
  }

  PKAccessibilityIDCellSet(v4, *MEMORY[0x1E69B9900]);

  return v4;
}

- (id)_moreTransactionsCellForTableView:(id)view
{
  linkTextColor = self->_linkTextColor;
  if (linkTextColor)
  {
    viewCopy = view;
    v6 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:linkTextColor forTableView:viewCopy];
  }

  else
  {
    v7 = MEMORY[0x1E69DC888];
    viewCopy2 = view;
    viewCopy = [v7 systemBlueColor];
    v6 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:viewCopy forTableView:viewCopy2];
  }

  textLabel = [v6 textLabel];
  v10 = PKLocalizedPaymentString(&cfstr_TransactionsMo.isa);
  [textLabel setText:v10];

  [v6 setAccessibilityIdentifier:*MEMORY[0x1E69B9D60]];

  return v6;
}

- (id)_billingAddressCellShowingAddress:(BOOL)address forTableView:(id)view
{
  addressCopy = address;
  viewCopy = view;
  if (!self->_account && ([(PKPaymentPass *)self->_pass hasAssociatedPeerPaymentAccount]& 1) == 0)
  {
    defaults = [MEMORY[0x1E69B8CF8] defaults];
    v8 = [defaults defaultBillingAddressForPaymentPass:self->_pass];
    billingContact = self->_billingContact;
    self->_billingContact = v8;
  }

  v10 = self->_billingContact;
  if (v10)
  {
    v11 = !addressCopy;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    textLabel = PKLocalizedPaymentString(&cfstr_SettingsTransa_6.isa);
    v13 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:textLabel detailText:0 cellStyle:0 reuseIdentifier:@"BillingAddress" forTableView:viewCopy];
  }

  else if ([(PKPaymentPass *)self->_pass hasAssociatedPeerPaymentAccount])
  {
    v13 = [(PKPaymentPassDetailViewController *)self _peerPaymentBillingAddressCellForTableView:viewCopy];
    textLabel = [v13 textLabel];
    pkFormattedContactAddressWithoutName = [(CNContact *)v10 pkFormattedContactAddressWithoutName];
    [textLabel setText:pkFormattedContactAddressWithoutName];
  }

  else
  {
    v13 = [(PKPaymentPassDetailViewController *)self _subtitleCellForTableView:viewCopy];
    textLabel = [(CNContact *)v10 pkSingleLineFormattedContactAddress];
    pk_displayName = [(CNContact *)v10 pk_displayName];
    if (![pk_displayName length])
    {
      v16 = PKLocalizedPaymentString(&cfstr_SettingsTransa_5.isa);

      pk_displayName = v16;
    }

    textLabel2 = [v13 textLabel];
    [textLabel2 setText:pk_displayName];

    if (self->_primaryTextColor)
    {
      textLabel3 = [v13 textLabel];
      [textLabel3 setTextColor:self->_primaryTextColor];
    }

    detailTextLabel = [v13 detailTextLabel];
    [detailTextLabel setText:textLabel];

    detailTextLabel2 = [v13 detailTextLabel];
    v21 = detailTextLabel2;
    if (self->_detailTextColor)
    {
      [detailTextLabel2 setTextColor:?];
    }

    else
    {
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v21 setTextColor:secondaryLabelColor];
    }
  }

  [v13 setAccessoryType:1];
  [v13 setAccessibilityIdentifier:*MEMORY[0x1E69B9548]];

  return v13;
}

- (void)_didSelectBillingAddress
{
  v38[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PKPaymentPassDetailViewController__didSelectBillingAddress__block_invoke;
  aBlock[3] = &unk_1E8013F10;
  objc_copyWeak(&v36, &location);
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
  associatedAccountServiceAccountIdentifier = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
  v6 = [associatedAccountServiceAccountIdentifier length] == 0;

  if (!v6)
  {
    v7 = objc_alloc_init(PKBillingAddressViewControllerConfiguration);
    [(PKBillingAddressViewControllerConfiguration *)v7 setBillingAddress:self->_billingContact];
    [(PKBillingAddressViewControllerConfiguration *)v7 setAccount:self->_account];
    [(PKBillingAddressViewControllerConfiguration *)v7 setAccountService:self->_accountService];
    [(PKBillingAddressViewControllerConfiguration *)v7 setFeatureIdentifier:[(PKAccount *)self->_account feature]];
    [(PKBillingAddressViewControllerConfiguration *)v7 setDetailViewStyle:self->_detailViewStyle];
    v8 = [[PKBillingAddressViewController alloc] initWithConfiguration:v7 handler:v3];
    if ([navigationController pk_settings_useStateDrivenNavigation])
    {
LABEL_3:
      [navigationController pk_settings_pushViewController:v8];
      goto LABEL_22;
    }

LABEL_7:
    [navigationController pushViewController:v8 animated:1];
    goto LABEL_22;
  }

  if ([(PKPaymentPass *)self->_pass hasAssociatedPeerPaymentAccount])
  {
    contact = [(PKPeerPaymentUserInfo *)self->_peerPaymentUserInfo contact];
    billingContact = self->_billingContact;
    self->_billingContact = contact;

    v7 = objc_alloc_init(PKBillingAddressViewControllerConfiguration);
    [(PKBillingAddressViewControllerConfiguration *)v7 setUserInfo:self->_peerPaymentUserInfo];
    [(PKBillingAddressViewControllerConfiguration *)v7 setPeerPaymentAccount:self->_peerPaymentAccount];
    mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
    [(PKBillingAddressViewControllerConfiguration *)v7 setPeerPaymentService:mEMORY[0x1E69B9000]];

    [(PKBillingAddressViewControllerConfiguration *)v7 setFeatureIdentifier:1];
    [(PKBillingAddressViewControllerConfiguration *)v7 setDetailViewStyle:self->_detailViewStyle];
    v8 = [[PKBillingAddressViewController alloc] initWithConfiguration:v7 handler:v3];
    if ([navigationController pk_settings_useStateDrivenNavigation])
    {
      goto LABEL_3;
    }

    goto LABEL_7;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  defaults = [MEMORY[0x1E69B8CF8] defaults];
  v13 = [defaults defaultBillingAddressForPaymentPass:self->_pass];
  [(PKBillingAddressViewControllerConfiguration *)v7 safelyAddObject:v13];

  v8 = PKLocalizedPaymentString(&cfstr_SettingsOption_2.isa);
  v29 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp_19.isa);
  v14 = objc_alloc(MEMORY[0x1E69B8D30]);
  if ([(PKBillingAddressViewControllerConfiguration *)v7 count])
  {
    v15 = 0;
  }

  else
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v16 = [v14 initWithTitle:v29 preferences:v7 selectedIndex:v15 readOnly:0];
  v17 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp_20.isa);
  [v16 setAddNewTitle:v17];

  v18 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp_21.isa);
  [v16 setAddExistingTitle:v18];

  v19 = PKLocalizedPaymentString(&cfstr_InAppPaymentOp_22.isa);
  [v16 setEditExistingTitle:v19];

  [v16 setContactKey:*MEMORY[0x1E695C360]];
  [v16 mergeRecentsAndMeCard];
  [v16 setType:0];
  if (![(PKBillingAddressViewControllerConfiguration *)v7 count]|| self->_account)
  {
    [v16 setSelectedIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  PKContactFormatAssignFormatErrorsToPreferenceContact();
  v20 = self->_pass;
  objc_initWeak(&from, self);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __61__PKPaymentPassDetailViewController__didSelectBillingAddress__block_invoke_2;
  v30[3] = &unk_1E8016ED0;
  objc_copyWeak(&v33, &from);
  v21 = v16;
  v31 = v21;
  v27 = v20;
  v32 = v27;
  v22 = _Block_copy(v30);
  v28 = v3;
  if (self->_detailViewStyle == 2)
  {
    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  v24 = [PKPaymentPreferencesListViewController alloc];
  v38[0] = v21;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  v26 = [(PKPaymentPreferencesListViewController *)v24 initWithPreferences:v25 title:v8 style:v23 handler:v22 contactFormatValidator:self->_contactFormatValidator];

  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_pushViewController:v26];
  }

  else
  {
    [navigationController pushViewController:v26 animated:1];
  }

  v3 = v28;
  objc_destroyWeak(&v33);
  objc_destroyWeak(&from);

LABEL_22:
  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

void __61__PKPaymentPassDetailViewController__didSelectBillingAddress__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    objc_storeStrong((*(a1 + 32) + 1736), a2);
    if ([*(*(a1 + 32) + 1088) hasAssociatedPeerPaymentAccount])
    {
      v5 = [MEMORY[0x1E69B9018] userInfoFromContact:v8];
      v6 = *(a1 + 32);
      v7 = *(v6 + 1648);
      *(v6 + 1648) = v5;
    }

    [WeakRetained _reloadPassAndView];
  }
}

void __61__PKPaymentPassDetailViewController__didSelectBillingAddress__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) selectedIndex];
    v4 = [*(a1 + 32) preferences];
    v5 = [v4 count];

    if (v3 >= v5)
    {
      v7 = [MEMORY[0x1E69B8CF8] defaults];
      v8 = [MEMORY[0x1E69B8CF8] defaults];
      v9 = [v8 defaultBillingAddressForPaymentPass:*(a1 + 40)];
      [v7 deleteDefaultBillingAddress:v9];
    }

    else
    {
      v6 = [*(a1 + 32) preferences];
      v7 = [v6 objectAtIndex:{objc_msgSend(*(a1 + 32), "selectedIndex")}];

      v8 = [MEMORY[0x1E69B8CF8] defaults];
      [v8 setDefaultBillingAddress:v7 forPaymentPass:*(a1 + 40)];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__PKPaymentPassDetailViewController__didSelectBillingAddress__block_invoke_3;
    block[3] = &unk_1E8010970;
    v11 = WeakRetained;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (id)_privacyTermsSectionCellForRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  v7 = [(PKPaymentPassDetailViewController *)self _privacyTermsInfoRowTypeForRowIndex:index];
  if (v7)
  {
    if (v7 == 2)
    {
      v9 = PKLocalizedPaymentString(&cfstr_TermsButtonTex.isa);
      index = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v9 forTableView:viewCopy];
      if (self->_loadingAccountTermsAndConditions)
      {
        v10 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
        [v10 startAnimating];
        [index setAccessoryView:v10];
      }

      PKAccessibilityIDCellSet(index, *MEMORY[0x1E69B9D08]);
    }

    else if (v7 == 1)
    {
      v8 = PKLocalizedPaymentString(&cfstr_PrivacyButtonT.isa);
      index = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v8 forTableView:viewCopy];

      PKAccessibilityIDCellSet(index, *MEMORY[0x1E69B9AE8]);
    }
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_1BD026000, v11, OS_LOG_TYPE_ERROR, "Unknown privacy terms info row!", v13, 2u);
    }

    index = 0;
  }

  return index;
}

- (unint64_t)_numberOfPrivacyTermsInfoRows
{
  _shouldShowPrivacyPolicyCell = [(PKPaymentPassDetailViewController *)self _shouldShowPrivacyPolicyCell];
  _shouldShowTermsCell = [(PKPaymentPassDetailViewController *)self _shouldShowTermsCell];
  v5 = 1;
  if (_shouldShowPrivacyPolicyCell)
  {
    v5 = 2;
  }

  if (_shouldShowTermsCell)
  {
    return v5;
  }

  else
  {
    return _shouldShowPrivacyPolicyCell;
  }
}

- (unint64_t)_privacyTermsInfoRowTypeForRowIndex:(int64_t)index
{
  if ([(PKPaymentPassDetailViewController *)self _shouldShowPrivacyPolicyCell])
  {
    v5 = 1;
    if (!index)
    {
      return v5;
    }
  }

  else
  {
    v5 = 0;
  }

  if ([(PKPaymentPassDetailViewController *)self _shouldShowTermsCell]&& v5 == index)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)_rowIndexForPrivacyTermsInfoRowType:(unint64_t)type
{
  _numberOfPrivacyTermsInfoRows = [(PKPaymentPassDetailViewController *)self _numberOfPrivacyTermsInfoRows];
  if (!_numberOfPrivacyTermsInfoRows)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = _numberOfPrivacyTermsInfoRows;
  v7 = 0;
  while ([(PKPaymentPassDetailViewController *)self _privacyTermsInfoRowTypeForRowIndex:v7]!= type)
  {
    if (v6 == ++v7)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v7;
}

- (void)_didSelectPrivacySectionAtRow:(int64_t)row
{
  if (PKStoreDemoModeEnabled())
  {
    v9 = PKUIStoreDemoGatewayViewController();
    [(PKPaymentPassDetailViewController *)self presentViewController:v9 animated:1 completion:0];

    return;
  }

  v5 = [(PKPaymentPassDetailViewController *)self _privacyTermsInfoRowTypeForRowIndex:row];
  if (!v5)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BD026000, v8, OS_LOG_TYPE_ERROR, "Selected unknown privacy section row!", buf, 2u);
    }

    goto LABEL_18;
  }

  if (v5 == 2)
  {
    if (![(PKPaymentPassDetailViewController *)self _shouldShowTermsCell])
    {
      return;
    }

    [(PKPaymentPassDetailViewController *)self _presentTermsAndConditionsWithRow:row];
    v8 = *MEMORY[0x1E69BB310];
    if (!v8)
    {
      return;
    }

    goto LABEL_15;
  }

  if (v5 == 1 && [(PKPaymentPassDetailViewController *)self _shouldShowPrivacyPolicyCell])
  {
    v6 = [(PKPaymentPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC118]];
    v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
    if (v7)
    {
      PKOpenURL();
    }

    v8 = *MEMORY[0x1E69BB098];

    if (v8)
    {
LABEL_15:
      [(PKPaymentPassDetailViewController *)self _reportPassDetailsAnalyticsForTappedRowTag:v8 additionalAnalytics:0];
LABEL_18:
    }
  }
}

- (void)_presentLegalDisclosureViewController
{
  v4 = [[PKAccountLegalDisclosureViewController alloc] initWithFeature:[(PKPaymentPassDetailViewController *)self _accountFeature]];
  v3 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v4];
  [(PKPaymentPassDetailViewController *)self presentViewController:v3 animated:1 completion:0];
}

- (void)presentTermsAndConditions
{
  v3 = [(PKPaymentPassDetailViewController *)self _rowIndexForPrivacyTermsInfoRowType:2];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1BD026000, v4, OS_LOG_TYPE_ERROR, "Attempted to present terms and conditions, but no terms row was found!", v5, 2u);
    }
  }

  else
  {

    [(PKPaymentPassDetailViewController *)self _presentTermsAndConditionsWithRow:v3];
  }
}

- (void)_presentTermsAndConditionsWithRow:(unint64_t)row
{
  location[3] = *MEMORY[0x1E69E9840];
  account = self->_account;
  if (account)
  {
    creditDetails = [(PKAccount *)account creditDetails];
    termsIdentifier = [creditDetails termsIdentifier];

    if (termsIdentifier)
    {
      if (!self->_loadingAccountTermsAndConditions)
      {
        self->_loadingAccountTermsAndConditions = 1;
        v8 = [MEMORY[0x1E696AC88] indexPathForRow:row inSection:{-[PKDynamicTableViewController indexOfSectionIdentifier:](self, "indexOfSectionIdentifier:", @"PrivacyTermsInfo"}];
        tableView = [(PKPaymentPassDetailViewController *)self tableView];
        v10 = [tableView cellForRowAtIndexPath:v8];

        [(PKPaymentPassDetailViewController *)self _showSpinner:1 inCell:v10 overrideTextColor:0];
        v11 = [PKAccountTermsAndConditionsController alloc];
        detailViewStyle = self->_detailViewStyle;
        v13 = 3;
        if (detailViewStyle != 1)
        {
          v13 = 0;
        }

        if (detailViewStyle == 2)
        {
          v14 = 4;
        }

        else
        {
          v14 = v13;
        }

        v15 = [(PKAccountTermsAndConditionsController *)v11 initWithAccount:self->_account webService:self->_webService context:v14 termsIdentifier:termsIdentifier];
        termsController = self->_termsController;
        self->_termsController = v15;

        objc_initWeak(location, self);
        v17 = self->_termsController;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __71__PKPaymentPassDetailViewController__presentTermsAndConditionsWithRow___block_invoke;
        v23[3] = &unk_1E80162F0;
        objc_copyWeak(&v24, location);
        [(PKAccountTermsAndConditionsController *)v17 termsViewControllerWithCompletion:v23];
        objc_destroyWeak(&v24);
        objc_destroyWeak(location);
      }

      return;
    }

    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = accountIdentifier;
      _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "Error: Account: %@ is missing terms and conditions. Using the value in the pass instead.", location, 0xCu);
    }

    goto LABEL_18;
  }

  if (![(PKPeerPaymentAccount *)self->_peerPaymentAccount termsAcceptanceRequired])
  {
LABEL_18:
    v20 = [(PKPaymentPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC128]];
    v21 = [MEMORY[0x1E695DFF8] URLWithString:v20];
    if (v21)
    {
      PKOpenURL();
    }

    return;
  }

  targetDevice = [(PKPeerPaymentWebService *)self->_peerPaymentWebService targetDevice];
  [targetDevice updateAccountWithCompletion:&__block_literal_global_804];
}

void __71__PKPaymentPassDetailViewController__presentTermsAndConditionsWithRow___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v5)
    {
      v7 = PKAlertForDisplayableErrorWithHandlers(v5, 0, 0, 0);
      v8 = [WeakRetained navigationController];
      [v8 presentViewController:v7 animated:1 completion:0];
    }

    else
    {
      if (!v9)
      {
LABEL_7:
        WeakRetained[1636] = 0;
        [WeakRetained reloadSection:45 updates:0];
        goto LABEL_8;
      }

      v7 = [WeakRetained navigationController];
      [v7 presentViewController:v9 animated:1 completion:0];
    }

    goto LABEL_7;
  }

LABEL_8:
}

void __71__PKPaymentPassDetailViewController__presentTermsAndConditionsWithRow___block_invoke_801(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (PKIsPad())
    {
      v3 = MEMORY[0x1E696AD98];
      v4 = [MEMORY[0x1E69DC668] sharedApplication];
      v5 = [v3 numberWithInteger:{objc_msgSend(v4, "statusBarOrientation")}];
    }

    else
    {
      v5 = &unk_1F3CC7FD0;
    }

    v6 = [MEMORY[0x1E69B9000] sharedInstance];
    [v6 presentPeerPaymentTermsAndConditionsWithAccount:v2 orientation:v5 completion:&__block_literal_global_809];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Cannot present terms acceptance flow because the account is nil", v7, 2u);
    }
  }
}

void __71__PKPaymentPassDetailViewController__presentTermsAndConditionsWithRow___block_invoke_807()
{
  v0 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1BD026000, v0, OS_LOG_TYPE_DEFAULT, "Presented Terms & Conditions acceptance flow", v1, 2u);
  }
}

- (void)_didSelectPassOperationsSectionAtIndexPath:(id)path
{
  pathCopy = path;
  v4 = [pathCopy row];
  if ([(PKPaymentPassDetailViewController *)self _shouldShowTransferCell])
  {
    if (!v4)
    {
      [(PKPaymentPassDetailViewController *)self _didSelectTransferCardAtIndexPath:pathCopy];
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v4)
  {
    tableView = [(PKPaymentPassDetailViewController *)self tableView];
    v7 = [tableView cellForRowAtIndexPath:pathCopy];
    [(PKPaymentPassDetailViewController *)self _didSelectDeleteCardFromSourceItem:v7];
  }
}

- (BOOL)paymentApplicationShouldShowFullDPAN:(id)n
{
  nCopy = n;
  sanitizedDPAN = [nCopy sanitizedDPAN];
  if (sanitizedDPAN)
  {
    appletDataFormat = [nCopy appletDataFormat];
    if (PKEqualObjects())
    {
      isSuicaPass = 1;
    }

    else
    {
      appletDataFormat2 = [nCopy appletDataFormat];
      if (PKEqualObjects())
      {
        isSuicaPass = 1;
      }

      else
      {
        appletDataFormat3 = [nCopy appletDataFormat];
        if ((PKEqualObjects() & 1) != 0 || ([(PKPaymentPass *)self->_pass isEMoneyPass]& 1) != 0)
        {
          isSuicaPass = 1;
        }

        else
        {
          isSuicaPass = [(PKPaymentPass *)self->_pass isSuicaPass];
        }
      }
    }
  }

  else
  {
    isSuicaPass = 0;
  }

  return isSuicaPass;
}

- (unint64_t)_cardInfoSectionGenerateCellWithOutput:(id *)output forRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  if (self->_peerPaymentAccount)
  {
    v9 = 0;
    goto LABEL_35;
  }

  v10 = [(PKPaymentPass *)self->_pass fieldForKey:*MEMORY[0x1E69BC0D0]];
  value = [v10 value];
  if (value)
  {
    v12 = 1;
    if (output && !index)
    {
      if (PKHandsOnDemoModeEnabled() && (PKFakeCardholderName(), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 length], v13, v14))
      {
        v15 = PKFakeCardholderName();
      }

      else
      {
        v15 = value;
      }

      v16 = v15;
      v17 = PKLocalizedPaymentString(&cfstr_CardInfoName.isa);
      v18 = -[PKPaymentPassDetailViewController _infoCellWithPrimaryText:detailText:cellStyle:forTableView:](self, "_infoCellWithPrimaryText:detailText:cellStyle:forTableView:", v17, v16, [v10 cellStyle], viewCopy);
      v19 = *output;
      *output = v18;

      [*output setAccessibilityIdentifier:*MEMORY[0x1E69B95D0]];
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  v58 = v12;
  devicePrimaryPaymentApplication = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
  v21 = PKLocalizedPaymentString(&cfstr_CardInfoNumber.isa);
  v60 = value;
  if ([(PKPaymentPass *)self->_pass supportsBarcodePayment])
  {
    organizationName = [(PKPaymentPass *)self->_pass organizationName];
    v23 = PKLocalizedAquamanString(&cfstr_PassInfoAccoun.isa, &stru_1F3BD5BF0.isa, organizationName);

    v63 = v23;
  }

  else
  {
    v63 = v21;
  }

  if (![(PKPaymentPass *)self->_pass isSuicaPass])
  {
    if (![(PKPaymentPass *)self->_pass isOctopusPass])
    {
      goto LABEL_18;
    }

LABEL_21:
    v30 = PKSanitizedDeviceAccountNumberForPaymentApplication();
    goto LABEL_22;
  }

  sanitizedDPAN = [devicePrimaryPaymentApplication sanitizedDPAN];
  if (!sanitizedDPAN)
  {
    goto LABEL_21;
  }

  v25 = sanitizedDPAN;
  isOctopusPass = [(PKPaymentPass *)self->_pass isOctopusPass];

  if (isOctopusPass)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (![(PKPaymentPassDetailViewController *)self paymentApplicationShouldShowFullDPAN:devicePrimaryPaymentApplication])
  {
    if ([(PKPaymentPassDetailViewController *)self _shouldShowCardNumbersSection])
    {
LABEL_53:
      v28 = 0;
      goto LABEL_23;
    }

    primaryAccountNumberSuffix = [(PKPaymentPass *)self->_pass primaryAccountNumberSuffix];
    if (primaryAccountNumberSuffix || ([(PKPaymentPass *)self->_pass sanitizedPrimaryAccountNumber], (primaryAccountNumberSuffix = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      sanitizedPrimaryAccountName = [(PKPaymentPass *)self->_pass sanitizedPrimaryAccountName];

      if (!sanitizedPrimaryAccountName)
      {
        goto LABEL_53;
      }
    }

    v30 = PKSanitizedPrimaryAccountRepresentationForPass();
LABEL_22:
    v28 = v30;
    goto LABEL_23;
  }

  sanitizedDPAN2 = [devicePrimaryPaymentApplication sanitizedDPAN];
  v28 = PKFormattedSanitizedPAN();

  v29 = PKLocalizedPaymentString(&cfstr_CardInfoDigita.isa);

  v63 = v29;
LABEL_23:
  v61 = v10;
  v31 = [v28 length];
  v59 = devicePrimaryPaymentApplication;
  indexCopy = index;
  if (v31)
  {
    v32 = v58 + 1;
    if (output && v58 == index)
    {
      v33 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v63 detailText:v28 cellStyle:1 reuseIdentifier:@"cardNumberCell" forTableView:viewCopy];
      detailTextLabel = [v33 detailTextLabel];
      [detailTextLabel setAdjustsFontSizeToFitWidth:1];

      v35 = *output;
      *output = v33;
      v36 = v33;

      [*output setAccessibilityIdentifier:*MEMORY[0x1E69B95C0]];
    }
  }

  else
  {
    v32 = v58;
  }

  customerServiceIdentifier = [(PKPaymentPass *)self->_pass customerServiceIdentifier];
  v38 = customerServiceIdentifier;
  if (v31 || !customerServiceIdentifier)
  {
    v9 = v32;
  }

  else
  {
    v9 = v32 + 1;
    if (output && v32 == indexCopy)
    {
      v39 = PKPassLocalizedStringWithFormat();
      v40 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v39 detailText:v38 cellStyle:1 reuseIdentifier:@"PKTableViewCellReuseIdentifierCustomerServiceIdentifier" forTableView:viewCopy, 0];

      detailTextLabel2 = [v40 detailTextLabel];
      [detailTextLabel2 setAdjustsFontSizeToFitWidth:1];

      v42 = *output;
      *output = v40;
      v43 = v40;

      [*output setAccessibilityIdentifier:*MEMORY[0x1E69B9C28]];
    }
  }

  index = indexCopy;
LABEL_35:
  if ([(PKPaymentPassDetailViewController *)self _shouldShowTransitExpressSettingCell])
  {
    detailViewStyle = self->_detailViewStyle;
    if (output)
    {
      if (v9 == index)
      {
        v45 = PKLocalizedPaymentString(&cfstr_ExpressTransit.isa);
        if (self->_nfcExpressModeEnabled)
        {
          v46 = @"EXPRESS_MODE_STATE_ON";
        }

        else
        {
          v46 = @"EXPRESS_MODE_STATE_OFF";
        }

        v47 = PKLocalizedPaymentString(&v46->isa);
        v48 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v45 detailText:v47 cellStyle:1 reuseIdentifier:@"expressState" forTableView:viewCopy];
        v49 = *output;
        *output = v48;

        if (detailViewStyle)
        {
          [*output setAccessoryType:1];
        }

        [*output setAccessibilityIdentifier:*MEMORY[0x1E69B97B0]];
      }

      v50 = v9 + 1;
      if (!detailViewStyle)
      {
        v50 = v9 + 2;
        if (v9 + 1 == index)
        {
          v51 = PKLocalizedPaymentString(&cfstr_ExpressTransit_0.isa);
          v52 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v51 forTableView:viewCopy];
          v53 = *output;
          *output = v52;

          [*output setAccessibilityIdentifier:*MEMORY[0x1E69B97B8]];
        }
      }
    }

    else
    {
      v54 = 1;
      if (!detailViewStyle)
      {
        v54 = 2;
      }

      v50 = v54 + v9;
    }
  }

  else
  {
    v50 = v9;
  }

  return v50;
}

- (unint64_t)_accessPersonInfoSectionGenerateCellWithOutput:(id *)output forRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  v9 = [(PKPaymentPass *)self->_pass fieldForKey:*MEMORY[0x1E69BC0D0]];
  value = [v9 value];
  if (!value)
  {
    v11 = 0;
    goto LABEL_16;
  }

  v11 = 1;
  if (output && !index)
  {
    if (PKHandsOnDemoModeEnabled() && (PKFakeCardholderName(), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 length], v12, v13))
    {
      v14 = PKFakeCardholderName();
    }

    else
    {
      v14 = value;
    }

    v15 = v14;
    if (self->_isAppleAccess)
    {
      v16 = @"EMPLOYEE_INFO_CARDHOLDER_NAME";
    }

    else
    {
      label = [v9 label];

      if (label)
      {
        label2 = [v9 label];
LABEL_15:
        v19 = label2;
        v20 = -[PKPaymentPassDetailViewController _infoCellWithPrimaryText:detailText:cellStyle:forTableView:](self, "_infoCellWithPrimaryText:detailText:cellStyle:forTableView:", label2, v15, [v9 cellStyle], viewCopy);
        v21 = *output;
        *output = v20;

        v11 = 1;
        goto LABEL_16;
      }

      v16 = @"ACCESS_CARDHOLDER_NAME";
    }

    label2 = PKLocalizedPaymentString(&v16->isa);
    goto LABEL_15;
  }

LABEL_16:
  v40 = v9;
  v22 = viewCopy;
  v23 = [(PKPaymentPass *)self->_pass fieldForKey:*MEMORY[0x1E69BC0E0], value];
  value2 = [v23 value];
  if (value2)
  {
    v25 = v11 + 1;
    if (output && v11 == index)
    {
      label3 = [v23 label];
      if (self->_isAppleAccess)
      {
        cellStyle = 1;
      }

      else
      {
        cellStyle = [v23 cellStyle];
      }

      v28 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:label3 detailText:value2 cellStyle:cellStyle forTableView:v22];
      v29 = *output;
      *output = v28;
    }
  }

  else
  {
    v25 = v11;
  }

  v30 = [(PKPaymentPass *)self->_pass fieldForKey:*MEMORY[0x1E69BC0D8]];
  value3 = [v30 value];
  if (!value3)
  {
    v32 = v25;
LABEL_30:
    v33 = v39;
    goto LABEL_36;
  }

  v32 = v25 + 1;
  if (!output || v25 != index)
  {
    goto LABEL_30;
  }

  if (self->_isAppleAccess)
  {
    PKLocalizedPaymentString(&cfstr_EmployeeInfoCa_0.isa);
  }

  else
  {
    [v30 label];
  }
  v34 = ;
  if (self->_isAppleAccess)
  {
    cellStyle2 = 1;
  }

  else
  {
    cellStyle2 = [v30 cellStyle];
  }

  v33 = v39;
  v36 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v34 detailText:value3 cellStyle:cellStyle2 forTableView:v22];
  v37 = *output;
  *output = v36;

LABEL_36:
  return v32;
}

- (id)_cardHolderPictureCellForTableView:(id)view
{
  v4 = MEMORY[0x1E69DCAB8];
  pass = self->_pass;
  viewCopy = view;
  cardHolderPicture = [(PKPaymentPass *)pass cardHolderPicture];
  v8 = [v4 imageWithPKImage:cardHolderPicture];
  v9 = [(PKPaymentPassDetailViewController *)self _imageViewCellForImage:v8 forTableView:viewCopy];

  return v9;
}

- (id)_cellForField:(id)field tableView:(id)view
{
  viewCopy = view;
  fieldCopy = field;
  label = [fieldCopy label];
  value = [fieldCopy value];
  v10 = -[PKPaymentPassDetailViewController _infoCellWithPrimaryText:detailText:cellStyle:forTableView:](self, "_infoCellWithPrimaryText:detailText:cellStyle:forTableView:", label, value, [fieldCopy cellStyle], viewCopy);

  LODWORD(self) = [fieldCopy isDrillInField];
  if (self)
  {
    [v10 setAccessoryType:1];
  }

  PKAccessibilityIDCellSet(v10, *MEMORY[0x1E69B95D8]);

  return v10;
}

- (id)_renewActionForRow:(unint64_t)row commutePlanIdentifier:(id)identifier
{
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  _availableCommutePlanActions = [(PKPaymentPassDetailViewController *)self _availableCommutePlanActions];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [_availableCommutePlanActions countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_33;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v27;
  v11 = *MEMORY[0x1E69BBC28];
  if (identifierCopy)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  v25 = v13;
  v24 = *MEMORY[0x1E69BBC28];
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v27 != v10)
      {
        objc_enumerationMutation(_availableCommutePlanActions);
      }

      v15 = *(*(&v26 + 1) + 8 * i);
      if ([v15 type] == 2)
      {
        v16 = identifierCopy;
        v17 = v16;
        if (v11 == identifierCopy)
        {

          goto LABEL_18;
        }

        if (v25)
        {
          v18 = [v11 caseInsensitiveCompare:v16];

          if (!v18)
          {
LABEL_18:
            associatedPlanIdentifier = v9;
            v9 = v15;
            goto LABEL_28;
          }
        }

        else
        {
        }

        associatedPlanIdentifier = [v15 associatedPlanIdentifier];
        v20 = v17;
        v21 = v20;
        if (associatedPlanIdentifier == v20)
        {
        }

        else
        {
          if (!identifierCopy || !associatedPlanIdentifier)
          {

            goto LABEL_28;
          }

          v22 = [associatedPlanIdentifier caseInsensitiveCompare:v20];

          if (v22)
          {
            v11 = v24;
            continue;
          }
        }

        associatedPlanIdentifier = v9;
        v9 = v15;
        v11 = v24;
LABEL_28:

        continue;
      }
    }

    v8 = [_availableCommutePlanActions countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v8);
LABEL_33:

  return v9;
}

- (id)_topUpActionForRow:(unint64_t)row
{
  selfCopy = self;
  v53 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_displayableBalanceFields count]<= row)
  {
    v32 = 0;
    goto LABEL_55;
  }

  v5 = [(NSArray *)selfCopy->_displayableBalanceFields objectAtIndexedSubscript:row];
  [v5 foreignReferenceIdentifiers];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = v50 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (!v7)
  {
    v32 = 0;
    goto LABEL_54;
  }

  v8 = *v48;
  v42 = *MEMORY[0x1E69BC060];
  v39 = v6;
  v40 = v5;
  v35 = *v48;
  v36 = selfCopy;
  do
  {
    v9 = 0;
    v38 = v7;
    do
    {
      if (*v48 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v47 + 1) + 8 * v9);
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v11 = [(PKPaymentPassDetailViewController *)selfCopy _availableActions:v35];
      v12 = [v11 countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (!v12)
      {
        goto LABEL_44;
      }

      v13 = v12;
      v14 = *v44;
      if (v42)
      {
        v15 = v10 == 0;
      }

      else
      {
        v15 = 1;
      }

      v16 = !v15;
      v41 = v16;
      v37 = v9;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v44 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v43 + 1) + 8 * i);
          if ([v18 type] == 1)
          {
            v19 = v10;
            relevantPropertyIdentifier = v19;
            if (v42 == v10)
            {
              goto LABEL_52;
            }

            if (v41)
            {
              v21 = [v42 caseInsensitiveCompare:v19];

              if (!v21)
              {
                goto LABEL_53;
              }
            }

            else
            {
            }
          }

          if ([v18 featured])
          {
            associatedEnteredValueIdentifier = [v18 associatedEnteredValueIdentifier];

            if (!associatedEnteredValueIdentifier)
            {
              goto LABEL_53;
            }
          }

          relevantPropertyIdentifier = [v18 relevantPropertyIdentifier];
          v23 = v10;
          v24 = v23;
          if (relevantPropertyIdentifier == v23)
          {
            associatedEnteredValueIdentifier2 = v23;
            v33 = relevantPropertyIdentifier;
            goto LABEL_51;
          }

          if (v10 && relevantPropertyIdentifier)
          {
            v25 = [relevantPropertyIdentifier caseInsensitiveCompare:v23];

            if (!v25)
            {
              goto LABEL_52;
            }
          }

          else
          {
          }

          associatedEnteredValueIdentifier2 = [v18 associatedEnteredValueIdentifier];
          v27 = v24;
          v28 = v27;
          if (associatedEnteredValueIdentifier2 == v27)
          {

            v33 = associatedEnteredValueIdentifier2;
LABEL_51:

LABEL_52:
LABEL_53:
            v32 = v18;

            v6 = v39;
            v5 = v40;
            goto LABEL_54;
          }

          if (v10 && associatedEnteredValueIdentifier2)
          {
            v29 = [associatedEnteredValueIdentifier2 caseInsensitiveCompare:v27];

            if (!v29)
            {
              goto LABEL_53;
            }
          }

          else
          {
          }

          if ([v18 type] == 1)
          {
            relevantPropertyIdentifier2 = [v18 relevantPropertyIdentifier];
            if (relevantPropertyIdentifier2)
            {
            }

            else
            {
              associatedEnteredValueIdentifier3 = [v18 associatedEnteredValueIdentifier];

              if (!associatedEnteredValueIdentifier3)
              {
                goto LABEL_53;
              }
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v43 objects:v51 count:16];
        v6 = v39;
        v5 = v40;
        v8 = v35;
        selfCopy = v36;
        v9 = v37;
        if (v13)
        {
          continue;
        }

        break;
      }

LABEL_44:

      ++v9;
    }

    while (v9 != v38);
    v7 = [v6 countByEnumeratingWithState:&v47 objects:v52 count:16];
    v32 = 0;
  }

  while (v7);
LABEL_54:

LABEL_55:

  return v32;
}

- (id)_balanceForRow:(unint64_t)row
{
  v4 = [(NSArray *)self->_displayableBalanceFields objectAtIndexedSubscript:row];
  foreignReferenceIdentifiers = [v4 foreignReferenceIdentifiers];
  if (foreignReferenceIdentifiers)
  {
    v6 = [(NSDictionary *)self->_balances objectForKey:foreignReferenceIdentifiers];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_balanceOrCommutePlanCellForRowIndex:(int64_t)index tableView:(id)view
{
  displayableBalanceFields = self->_displayableBalanceFields;
  viewCopy = view;
  v8 = [(NSArray *)displayableBalanceFields count];
  if (index >= v8)
  {
    [(PKPaymentPassDetailViewController *)self _commuterRouteCellForRowIndex:index - v8 tableView:viewCopy];
  }

  else
  {
    [(PKPaymentPassDetailViewController *)self _balanceCellForRowIndex:index tableView:viewCopy];
  }
  v9 = ;

  return v9;
}

- (id)_commuterRouteCellForRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  displayableCommutePlans = [(PKTransitBalanceModel *)self->_transitBalanceModel displayableCommutePlans];
  if ([displayableCommutePlans count] <= index)
  {
    v17 = 0;
    goto LABEL_19;
  }

  v8 = [displayableCommutePlans objectAtIndex:index];
  properties = [v8 properties];
  title = [v8 title];
  label = [title label];
  value = [title value];
  if (PKCommutePlanFieldEitherLabelOrValueIsEmpty())
  {
LABEL_14:
    if ((properties & 4) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v28 = title;
  v13 = label;
  v14 = value;
  v15 = v14;
  if (v13 == v14)
  {

    title = v28;
    goto LABEL_14;
  }

  if (v13)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v27 = [v13 isEqualToString:v14];

    title = v28;
    if (!v27)
    {
      if ((properties & 4) != 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    goto LABEL_14;
  }

  title = v28;
  if ((properties & 4) != 0)
  {
LABEL_15:
    v18 = [v8 passFieldForKey:*MEMORY[0x1E69BC580]];
    if (([v18 foreignReferenceType] - 1) <= 1)
    {
      v29 = title;
      transitBalanceModel = self->_transitBalanceModel;
      foreignReferenceIdentifiers = [v18 foreignReferenceIdentifiers];
      v21 = [(PKTransitBalanceModel *)transitBalanceModel balanceForIdentifiers:foreignReferenceIdentifiers];

      formattedValue = [v21 formattedValue];

      title = v29;
      value = formattedValue;
    }
  }

LABEL_18:
  PKCommutePlanFormatTitleFromLabelAndValue();
  v23 = label;

  v24 = value;
  v17 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v24 detailText:v23 cellStyle:1 forTableView:viewCopy];

  v25 = [(PKPaymentPassDetailViewController *)self _actionForCommutePlan:v8];
  [v17 setAccessoryType:{-[PKPaymentPassDetailViewController _commutePlanIsSelectable:action:](self, "_commutePlanIsSelectable:action:", v8, v25)}];
  PKAccessibilityIDCellSet(v17, *MEMORY[0x1E69B9608]);

LABEL_19:

  return v17;
}

- (id)_balanceCellForRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  if ([(NSArray *)self->_displayableBalanceFields count]<= index)
  {
    v15 = 0;
  }

  else
  {
    v7 = [(NSArray *)self->_displayableBalanceFields objectAtIndexedSubscript:index];
    v8 = MEMORY[0x1E696AEC0];
    label = [v7 label];
    value = [v7 value];
    v11 = [v8 stringWithFormat:@"Balance-%@-%@", label, value];

    detailViewStyle = self->_detailViewStyle;
    v13 = v11;
    v14 = v7;
    v15 = [viewCopy dequeueReusableCellWithIdentifier:v13];
    if (!v15)
    {
      v15 = [[PKBackFieldTableCell alloc] initWithBridgeStyle:detailViewStyle == 2 reuseIdentifier:v13];
    }

    [(PKBackFieldTableCell *)v15 setShowLinks:0];
    [(PKBackFieldTableCell *)v15 setField:v14];

    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v15];
    [(PKPaymentPassDetailViewController *)self _applyDefaultDynamicStylingToCell:v15];
    [(PKBackFieldTableCell *)v15 setAccessoryType:[(PKPaymentPassDetailViewController *)self _canSelectBalanceOrCommutePlanCellAtRowIndex:index]];
  }

  PKAccessibilityIDCellSet(v15, *MEMORY[0x1E69B9500]);
  [(PKBackFieldTableCell *)v15 setIsAccessibilityElement:1];

  return v15;
}

- (id)_balanceReminderCellForRowIndex:(int64_t)index tableView:(id)view
{
  v33 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (!self->_transitProperties)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_5;
  }

  if (index)
  {
    v7 = 0;
    v8 = 0;
    --index;
    goto LABEL_5;
  }

  v15 = PKLocalizedPaymentString(&cfstr_LowBalanceRemi.isa);
  v11 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v15 detailText:0 cellStyle:1 forTableView:viewCopy];

  v7 = self->_transitPropertiesBalanceReminder;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  _availableActions = [(PKPaymentPassDetailViewController *)self _availableActions];
  v8 = [_availableActions countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v17 = *v29;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(_availableActions);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        if ([v19 type] == 1)
        {
          v8 = v19;
          goto LABEL_20;
        }
      }

      v8 = [_availableActions countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  if (!v11)
  {
    index = -1;
LABEL_5:
    if (index >= [(NSArray *)self->_displayableBalanceFields count])
    {
      v11 = 0;
    }

    else
    {
      v9 = [(NSArray *)self->_displayableBalanceFields objectAtIndexedSubscript:index];
      label = [v9 label];
      v11 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:label detailText:0 cellStyle:1 forTableView:viewCopy];

      foreignReferenceIdentifiers = [v9 foreignReferenceIdentifiers];
      if ([foreignReferenceIdentifiers count])
      {
        v13 = [(NSDictionary *)self->_actionForBalanceIdentifier objectForKeyedSubscript:foreignReferenceIdentifiers];

        v14 = [(NSMutableDictionary *)self->_reminderForBalanceIdentifier objectForKeyedSubscript:foreignReferenceIdentifiers];

        v8 = v13;
        v7 = v14;
      }
    }
  }

  if (v8)
  {
    if (v7 && [(PKPaymentBalanceReminder *)v7 isEnabled])
    {
      threshold = [(PKPaymentBalanceReminder *)v7 threshold];
      enteredValueItem = [v8 enteredValueItem];
      currency = [enteredValueItem currency];
      v23 = PKCurrencyAmountCreate(threshold, currency);
      formattedStringValue = [v23 formattedStringValue];

      v25 = PKLocalizedPaymentString(&cfstr_LowBalanceRemi_0.isa, &stru_1F3BD5BF0.isa, formattedStringValue);
      detailTextLabel = [v11 detailTextLabel];
      [detailTextLabel setText:v25];
    }

    else
    {
      formattedStringValue = [v11 detailTextLabel];
      v25 = PKLocalizedPaymentString(&cfstr_CommutePlanRen_2.isa);
      [formattedStringValue setText:v25];
    }

    [v11 setAccessoryType:1];
  }

  return v11;
}

- (id)_manufacturerInfoCellForTableView:(id)view
{
  viewCopy = view;
  v5 = PKLocalizedCredentialString(&cfstr_CarKeyIssuerNa.isa);
  organizationName = [(PKPaymentPass *)self->_pass organizationName];
  v7 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v5 detailText:organizationName cellStyle:1 reuseIdentifier:@"manufacturerInfo" forTableView:viewCopy];

  [v7 setSelectionStyle:0];

  return v7;
}

- (unint64_t)_passOperationsCellWithOutput:(id *)output forRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  if ([(PKPaymentPassDetailViewController *)self _shouldShowTransferCell])
  {
    v9 = 1;
    if (output && !index)
    {
      v10 = [(PKPaymentPassDetailViewController *)self _transferCardCellForTableView:viewCopy];
      v11 = *output;
      *output = v10;

      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  if ([(PKPaymentPassDetailViewController *)self _shouldShowDeleteCell])
  {
    v12 = v9 + 1;
    if (output && v9 == index)
    {
      v13 = [(PKPaymentPassDetailViewController *)self _deleteCardCellForTableView:viewCopy];
      v14 = *output;
      *output = v13;
    }
  }

  else
  {
    v12 = v9;
  }

  return v12;
}

- (unint64_t)_contactBankCellWithOutput:(id *)output forRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  if (![(PKPaymentPassDetailViewController *)self _shouldShowContactCell])
  {
    v9 = 0;
    goto LABEL_12;
  }

  v9 = 1;
  if (output && !index)
  {
    organizationName = [(PKPaymentPass *)self->_pass organizationName];
    if ([(PKPaymentPass *)self->_pass hasAssociatedPeerPaymentAccount])
    {
      v11 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_11.isa);
    }

    else
    {
      if (!self->_account)
      {
        if (!self->_isAppleAccess || ![(PKPaymentPass *)self->_pass isAccessPass])
        {
          goto LABEL_11;
        }

        v21 = [(PKPaymentPass *)self->_pass fieldForKey:*MEMORY[0x1E69BC0F8]];
        value = [v21 value];
        v23 = value;
        if (value)
        {
          v24 = value;
        }

        else
        {
          v24 = organizationName;
        }

        v12 = v24;

        organizationName = v21;
LABEL_10:

        organizationName = v12;
LABEL_11:
        v13 = PKLocalizedPaymentString(&cfstr_ContactIssuer.isa, &stru_1F3BD5BF0.isa, organizationName);
        v14 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v13 forTableView:viewCopy];
        v15 = *output;
        *output = v14;

        v9 = 1;
        goto LABEL_12;
      }

      [(PKPaymentPassDetailViewController *)self _accountFeature];
      v11 = PKLocalizedFeatureString();
    }

    v12 = v11;
    goto LABEL_10;
  }

LABEL_12:
  if ([(PKPaymentPassDetailViewController *)self _shouldShowServiceMode])
  {
    v16 = v9 + 1;
    if (output && v9 == index)
    {
      v17 = PKLocalizedPaymentString(&cfstr_ServiceModeCel.isa);
      v18 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v17 forTableView:viewCopy];
      v19 = *output;
      *output = v18;
    }
  }

  else
  {
    v16 = v9;
  }

  return v16;
}

- (id)_automaticPresentationCellForTableView:(id)view
{
  automaticPresentationSwitch = self->_automaticPresentationSwitch;
  if (!automaticPresentationSwitch)
  {
    v5 = [[PKSettingTableCell alloc] initWithStyle:0 reuseIdentifier:@"PKSettingTableCellReuseIdentifier"];
    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v5];
    primaryTextColor = self->_primaryTextColor;
    textLabel = [(PKSettingTableCell *)v5 textLabel];
    v8 = textLabel;
    if (primaryTextColor)
    {
      [textLabel setTextColor:self->_primaryTextColor];
    }

    else
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [v8 setTextColor:labelColor];
    }

    textLabel2 = [(PKSettingTableCell *)v5 textLabel];
    v11 = PKLocalizedString(&cfstr_SettingsAutoma_0.isa);
    [textLabel2 setText:v11];

    [(PKSettingTableCell *)v5 setTarget:self action:sel__automaticPresentationSwitchChanged_];
    [(PKSettingTableCell *)v5 setOn:([(PKPaymentPass *)self->_pass settings]>> 4) & 1];
    v12 = self->_automaticPresentationSwitch;
    self->_automaticPresentationSwitch = v5;

    automaticPresentationSwitch = self->_automaticPresentationSwitch;
  }

  return automaticPresentationSwitch;
}

- (id)_passesInGroupCellForIndexPath:(id)path tableView:(id)view
{
  pathCopy = path;
  viewCopy = view;
  v8 = [pathCopy row];
  if (v8 != [(PKGroup *)self->_group passCount])
  {
    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"PKPassesInGroupTableCellReuseIdentifier"];
    if (!v10)
    {
      v10 = [[PKTableViewCellWithDefaultStyle alloc] initWithStyle:0 reuseIdentifier:@"PKPassesInGroupTableCellReuseIdentifier"];
    }

    [(PKPaymentPassDetailViewController *)self _applyDefaultDynamicStylingToCell:v10];
    v9 = -[PKGroup passAtIndex:](self->_group, "passAtIndex:", [pathCopy row]);
    textLabel = [(PKTableViewCellWithDefaultStyle *)v10 textLabel];
    imageView = [(PKTableViewCellWithDefaultStyle *)v10 imageView];
    uniqueID = [v9 uniqueID];
    uniqueID2 = [(PKPaymentPass *)self->_pass uniqueID];
    if ([uniqueID isEqualToString:uniqueID2])
    {
      v14 = [(PKPaymentPass *)self->_pass isImageSetLoaded:0];

      if (v14)
      {
        passView = [(PKPassHeaderView *)self->_passHeaderView passView];
LABEL_10:
        v16 = [(PKPassView *)passView snapshotOfFrontFaceWithRequestedSize:52.0, 33.0];
        [imageView setImage:v16];
        v17 = [v9 fieldForKey:*MEMORY[0x1E69BC0D0]];
        value = [v17 value];
        [textLabel setText:value];

        if (self->_primaryTextColor)
        {
          [textLabel setTextColor:?];
        }

        else
        {
          labelColor = [MEMORY[0x1E69DC888] labelColor];
          [textLabel setTextColor:labelColor];
        }

        [(PKTableViewCellWithDefaultStyle *)v10 setUserInteractionEnabled:0];

        goto LABEL_14;
      }
    }

    else
    {
    }

    passView = [[PKPassView alloc] initWithPass:v9 content:4 suppressedContent:2039];
    [(PKPassView *)passView setPaused:1];
    [(PKPassView *)passView sizeToFit];
    goto LABEL_10;
  }

  v9 = PKLocalizedShareableCredentialString(&cfstr_EditPassesInGr.isa);
  v10 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v9 forTableView:viewCopy];
LABEL_14:

  return v10;
}

- (id)_barcodeCell
{
  v3 = [[PKBarcodeTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"PKBarcodeTableViewCellReuseIdentifier"];
  [(PKBarcodeTableViewCell *)v3 setPass:self->_pass];

  return v3;
}

- (id)_settingsTableCellWithTitle:(id)title action:(SEL)action setOn:(BOOL)on enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  onCopy = on;
  titleCopy = title;
  v11 = [[PKSettingTableCell alloc] initWithStyle:0 reuseIdentifier:@"PKSettingTableCellReuseIdentifier"];
  [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v11];
  primaryTextColor = self->_primaryTextColor;
  textLabel = [(PKSettingTableCell *)v11 textLabel];
  v14 = textLabel;
  if (primaryTextColor)
  {
    [textLabel setTextColor:self->_primaryTextColor];
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v14 setTextColor:labelColor];
  }

  textLabel2 = [(PKSettingTableCell *)v11 textLabel];
  [textLabel2 setText:titleCopy];

  [(PKSettingTableCell *)v11 setTarget:self action:action];
  [(PKSettingTableCell *)v11 setOn:onCopy];
  [(PKSettingTableCell *)v11 setUserInteractionEnabled:enabledCopy];

  return v11;
}

- (id)_messagesSwitchCellForTableView:(id)view
{
  messagesSwitch = self->_messagesSwitch;
  if (!messagesSwitch)
  {
    v5 = PKLocalizedPaymentString(&cfstr_MessageService_1.isa);
    settings = [(PKPaymentPass *)self->_pass settings];
    if (PKStoreDemoModeEnabled())
    {
      v7 = 0;
    }

    else
    {
      v7 = PKUIOnlyDemoModeEnabled() ^ 1;
    }

    v8 = [(PKPaymentPassDetailViewController *)self _settingsTableCellWithTitle:v5 action:sel__messagesSwitchChanged_ setOn:(settings >> 6) & 1 enabled:v7];
    v9 = self->_messagesSwitch;
    self->_messagesSwitch = v8;

    PKAccessibilityIDCellSet(self->_messagesSwitch, *MEMORY[0x1E69B9C78]);
    messagesSwitch = self->_messagesSwitch;
  }

  return messagesSwitch;
}

- (id)_peerPaymentNotificationsSwitchCellForIndexPath:(id)path tableView:(id)view
{
  v5 = [path row];
  if (v5 == 1)
  {
    p_dailyCashSwitch = &self->_dailyCashSwitch;
    dailyCashSwitch = self->_dailyCashSwitch;
    if (!dailyCashSwitch)
    {
      v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_2.isa);
      v11 = [(PKPaymentPassDetailViewController *)self _settingsTableCellWithTitle:v8 action:sel__dailyCashSwitchChanged_ setOn:([(PKPaymentPass *)self->_pass settings]& 0x400) == 0 enabled:1];
      v12 = *p_dailyCashSwitch;
      *p_dailyCashSwitch = v11;
      v13 = MEMORY[0x1E69B9670];
LABEL_11:

      PKAccessibilityIDCellSet(*p_dailyCashSwitch, *v13);
      dailyCashSwitch = *p_dailyCashSwitch;
    }
  }

  else
  {
    if (v5)
    {
      v14 = 0;
      goto LABEL_13;
    }

    p_dailyCashSwitch = &self->_transactionsSwitch;
    dailyCashSwitch = self->_transactionsSwitch;
    if (!dailyCashSwitch)
    {
      v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_1.isa);
      settings = [(PKPaymentPass *)self->_pass settings];
      if (PKStoreDemoModeEnabled())
      {
        v10 = 0;
      }

      else
      {
        v10 = PKUIOnlyDemoModeEnabled() ^ 1;
      }

      v15 = [(PKPaymentPassDetailViewController *)self _settingsTableCellWithTitle:v8 action:sel__transactionsSwitchChanged_ setOn:(settings >> 3) & 1 enabled:v10];
      v12 = *p_dailyCashSwitch;
      *p_dailyCashSwitch = v15;
      v13 = MEMORY[0x1E69B9D60];
      goto LABEL_11;
    }
  }

  v14 = dailyCashSwitch;
LABEL_13:

  return v14;
}

- (id)_accountServiceNotificationsSwitchCellForIndexPath:(id)path tableView:(id)view
{
  viewCopy = view;
  v7 = [path row];
  if (v7 == 1)
  {
    if (self->_notificationAuthorizationStatus == 1)
    {
      if (self->_detailViewStyle == 2)
      {
        v12 = @"SETTINGS_ALLOW_NOTIFICATIONS_TITLE_WATCH";
      }

      else
      {
        v12 = PDDeviceSpecificLocalizedStringKeyForKey();
      }

      v18 = PKLocalizedString(&v12->isa);
      v19 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v18 forTableView:viewCopy];
      allowNotificationCell = self->_allowNotificationCell;
      self->_allowNotificationCell = v19;

      v13 = self->_allowNotificationCell;
    }

    else
    {
      notificationsSwitch = self->_notificationsSwitch;
      if (!notificationsSwitch)
      {
        [(PKPaymentPassDetailViewController *)self _accountFeature];
        v15 = PKLocalizedFeatureString();
        v16 = [(PKPaymentPassDetailViewController *)self _settingsTableCellWithTitle:v15 action:sel__notificationSwitchChanged_ setOn:([(PKPaymentPass *)self->_pass settings]& 0x80) == 0 enabled:1];
        v17 = self->_notificationsSwitch;
        self->_notificationsSwitch = v16;

        notificationsSwitch = self->_notificationsSwitch;
      }

      v13 = notificationsSwitch;
    }

    PKAccessibilityIDCellSet(v13, *MEMORY[0x1E69B9438]);
  }

  else if (v7)
  {
    v13 = 0;
  }

  else
  {
    transactionsSwitch = self->_transactionsSwitch;
    if (!transactionsSwitch)
    {
      [(PKPaymentPassDetailViewController *)self _accountFeature];
      v9 = PKLocalizedFeatureString();
      settings = [(PKPaymentPass *)self->_pass settings];
      if (PKStoreDemoModeEnabled())
      {
        v11 = 0;
      }

      else
      {
        v11 = PKUIOnlyDemoModeEnabled() ^ 1;
      }

      v21 = [(PKPaymentPassDetailViewController *)self _settingsTableCellWithTitle:v9 action:sel__transactionsSwitchChanged_ setOn:(settings >> 3) & 1 enabled:v11];
      v22 = self->_transactionsSwitch;
      self->_transactionsSwitch = v21;

      PKAccessibilityIDCellSet(self->_transactionsSwitch, *MEMORY[0x1E69B9D60]);
      transactionsSwitch = self->_transactionsSwitch;
    }

    v13 = transactionsSwitch;
  }

  return v13;
}

- (id)_transactionsSwitchCellForIndexPath:(id)path tableView:(id)view
{
  pathCopy = path;
  viewCopy = view;
  if (![(PKPaymentPassDetailViewController *)self _showsTransactionHistorySwitch])
  {
LABEL_4:
    if (self->_notificationAuthorizationStatus == 1)
    {
      if (self->_detailViewStyle == 2)
      {
        v8 = @"SETTINGS_ALLOW_NOTIFICATIONS_TITLE_WATCH";
      }

      else
      {
        v8 = PDDeviceSpecificLocalizedStringKeyForKey();
      }

      v18 = PKLocalizedString(&v8->isa);
      v19 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v18 forTableView:viewCopy];
      allowNotificationCell = self->_allowNotificationCell;
      self->_allowNotificationCell = v19;

      v13 = self->_allowNotificationCell;
    }

    else
    {
      notificationsSwitch = self->_notificationsSwitch;
      if (!notificationsSwitch)
      {
        v10 = PKLocalizedString(&cfstr_SettingsShowNo.isa);
        v11 = [(PKPaymentPassDetailViewController *)self _settingsTableCellWithTitle:v10 action:sel__notificationSwitchChanged_ setOn:([(PKPaymentPass *)self->_pass settings]& 0x80) == 0 enabled:1];
        v12 = self->_notificationsSwitch;
        self->_notificationsSwitch = v11;

        notificationsSwitch = self->_notificationsSwitch;
      }

      v13 = notificationsSwitch;
    }

    PKAccessibilityIDCellSet(v13, *MEMORY[0x1E69B9438]);
    goto LABEL_20;
  }

  if ([pathCopy row])
  {
    if ([pathCopy row] != 1)
    {
      v13 = 0;
      goto LABEL_20;
    }

    goto LABEL_4;
  }

  transactionsSwitch = self->_transactionsSwitch;
  if (!transactionsSwitch)
  {
    v15 = PKLocalizedPaymentString(&cfstr_TransactionsSe_1.isa);
    settings = [(PKPaymentPass *)self->_pass settings];
    if (PKStoreDemoModeEnabled())
    {
      v17 = 0;
    }

    else
    {
      v17 = PKUIOnlyDemoModeEnabled() ^ 1;
    }

    v21 = [(PKPaymentPassDetailViewController *)self _settingsTableCellWithTitle:v15 action:sel__transactionsSwitchChanged_ setOn:(settings >> 3) & 1 enabled:v17];
    v22 = self->_transactionsSwitch;
    self->_transactionsSwitch = v21;

    PKAccessibilityIDCellSet(self->_transactionsSwitch, *MEMORY[0x1E69B9D60]);
    transactionsSwitch = self->_transactionsSwitch;
  }

  v13 = transactionsSwitch;
LABEL_20:

  return v13;
}

- (id)_transactionCellForIndexPath:(id)path tableView:(id)view
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PKPaymentTransactionTableCellReuseIdentifier"];
  v8 = [pathCopy row];

  v9 = [(PKPaymentPassDetailViewController *)self _transactionAtIndex:v8];
  if (!v7)
  {
    v7 = [[PKPaymentTransactionTableCell alloc] initWithStyle:3 reuseIdentifier:@"PKPaymentTransactionTableCellReuseIdentifier"];
    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v7];
    textLabel = [(PKPaymentTransactionTableCell *)v7 textLabel];
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [textLabel setFont:v11];
  }

  transactionSourceCollection = self->_transactionSourceCollection;
  transactionSourceIdentifier = [v9 transactionSourceIdentifier];
  v14 = [(PKTransactionSourceCollection *)transactionSourceCollection transactionSourceForTransactionSourceIdentifier:transactionSourceIdentifier];

  deviceName = [(PKPaymentDataProvider *)self->_paymentServiceDataProvider deviceName];
  v16 = deviceName;
  if (deviceName)
  {
    v17 = deviceName;
  }

  else
  {
    v17 = PKDeviceName();
  }

  v18 = v17;

  v19 = [(PKFamilyMemberCollection *)self->_familyCollection familyMemberForTransactionSource:v14];
  [(PKPaymentTransactionCellController *)self->_transactionCellController configureCell:v7 forTransaction:v9 transactionSource:v14 familyMember:v19 account:self->_account detailStyle:self->_detailViewStyle deviceName:v18 avatarViewDelegate:self];

  return v7;
}

- (id)_contactKeysToFetch
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v11[0] = v2;
  v3 = _MergedGlobals_27();
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v5 = -[objc_class descriptorForRequiredKeysWithThreeDTouchEnabled:](v3, "descriptorForRequiredKeysWithThreeDTouchEnabled:", [currentDevice _supportsForceTouch]);
  v11[1] = v5;
  descriptorForRequiredKeys = [off_1EE9A1F20() descriptorForRequiredKeys];
  v11[2] = descriptorForRequiredKeys;
  descriptorForRequiredKeys2 = [off_1EE9A1F28() descriptorForRequiredKeys];
  v8 = *MEMORY[0x1E695C208];
  v11[3] = descriptorForRequiredKeys2;
  v11[4] = v8;
  v11[5] = *MEMORY[0x1E695C330];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  return v9;
}

- (id)_deleteContextualActionForTransaction:(id)transaction
{
  transactionCopy = transaction;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DC8E8];
  v6 = PKLocalizedPaymentString(&cfstr_TransactionsSw.isa);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__PKPaymentPassDetailViewController__deleteContextualActionForTransaction___block_invoke;
  v11[3] = &unk_1E801BDA8;
  objc_copyWeak(&v13, &location);
  v7 = transactionCopy;
  v12 = v7;
  v8 = [v5 contextualActionWithStyle:1 title:v6 handler:v11];

  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
  [v8 setImage:v9];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8;
}

void __75__PKPaymentPassDetailViewController__deleteContextualActionForTransaction___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained deleteTransaction:*(a1 + 32) completionHandler:v5];
  }

  else
  {
    v5[2](v5, 0);
  }
}

- (void)deleteTransaction:(id)transaction completionHandler:(id)handler
{
  transactionCopy = transaction;
  handlerCopy = handler;
  if ([transactionCopy transactionType] == 15)
  {
    if (self->_detailViewStyle == 2)
    {
      v8 = @"TRANSACTION_DELETE_ACTIVITY_SHEET_TITLE_WATCH";
    }

    else
    {
      v8 = @"TRANSACTION_DELETE_ACTIVITY_SHEET_TITLE_IPHONE";
    }

    v9 = PKLocalizedIdentityString(&v8->isa);
    v10 = PKLocalizedIdentityString(&cfstr_TransactionDel_0.isa);
    v11 = PKLocalizedIdentityString(&cfstr_TransactionDel_1.isa);
    v12 = v11;
    if (v9)
    {
      v13 = v10 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13 && v11 != 0)
    {
      v15 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:0 preferredStyle:0];
      v16 = [MEMORY[0x1E696AC88] indexPathForRow:-[NSArray indexOfObject:](self->_transactions inSection:{"indexOfObject:", transactionCopy), -[PKDynamicTableViewController indexOfSectionIdentifier:](self, "indexOfSectionIdentifier:", @"Transactions"}];
      v26 = v15;
      popoverPresentationController = [v15 popoverPresentationController];
      tableView = [(PKPaymentPassDetailViewController *)self tableView];
      v25 = v16;
      v19 = [tableView cellForRowAtIndexPath:v16];
      [popoverPresentationController setSourceView:v19];

      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __73__PKPaymentPassDetailViewController_deleteTransaction_completionHandler___block_invoke;
      aBlock[3] = &unk_1E8026278;
      objc_copyWeak(&v32, &location);
      v20 = handlerCopy;
      v31 = v20;
      v30 = transactionCopy;
      v21 = _Block_copy(aBlock);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __73__PKPaymentPassDetailViewController_deleteTransaction_completionHandler___block_invoke_3;
      v27[3] = &unk_1E8011248;
      v28 = v20;
      v22 = _Block_copy(v27);
      v23 = [MEMORY[0x1E69DC648] actionWithTitle:v10 style:2 handler:v21];
      v24 = [MEMORY[0x1E69DC648] actionWithTitle:v12 style:1 handler:v22];
      [v26 addAction:v23];
      [v26 addAction:v24];
      [(PKPaymentPassDetailViewController *)self presentViewController:v26 animated:1 completion:0];

      objc_destroyWeak(&v32);
      objc_destroyWeak(&location);

      goto LABEL_16;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v12 = 0;
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_16:
}

void __73__PKPaymentPassDetailViewController_deleteTransaction_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && (v4 = [WeakRetained[153] indexOfObject:*(a1 + 32)], v4 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = v4;
    v7 = [v3 tableView];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__PKPaymentPassDetailViewController_deleteTransaction_completionHandler___block_invoke_2;
    v9[3] = &unk_1E8012C50;
    v9[4] = v3;
    v11 = v6;
    v10 = *(a1 + 32);
    [v7 performBatchUpdates:v9 completion:0];

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, 1);
    }
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }
}

void __73__PKPaymentPassDetailViewController_deleteTransaction_completionHandler___block_invoke_2(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 1224) mutableCopy];
  [v2 removeObjectAtIndex:*(a1 + 48)];
  v3 = [v2 copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1224);
  *(v4 + 1224) = v3;

  v6 = [*(a1 + 32) indexOfSectionIdentifier:@"Transactions"];
  if ([v2 count])
  {
    v7 = [MEMORY[0x1E696AC88] indexPathForRow:*(a1 + 48) inSection:v6];
    v8 = [*(a1 + 32) tableView];
    v15[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [v8 deleteRowsAtIndexPaths:v9 withRowAnimation:100];
  }

  else
  {
    v10 = [*(a1 + 32) tableView];
    v11 = [MEMORY[0x1E696AC90] indexSetWithIndex:v6];
    [v10 reloadSections:v11 withRowAnimation:100];
  }

  v12 = *(a1 + 40);
  v13 = *(*(a1 + 32) + 2152);
  v14 = [v12 identifier];
  [v13 deletePaymentTransactionWithIdentifier:v14];
}

uint64_t __73__PKPaymentPassDetailViewController_deleteTransaction_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (BOOL)_transactionCellEditActionsGenerateWithOutput:(id *)output forRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  if (output)
  {
    array = [MEMORY[0x1E695DF70] array];
  }

  else
  {
    array = 0;
  }

  if ([(PKPaymentPassDetailViewController *)self _transactionsCount]<= index)
  {
    v12 = 0;
    if (!output)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v10 = [(PKPaymentPassDetailViewController *)self _transactionAtIndex:index];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v10 isDeletable])
  {
    if (array)
    {
      v11 = [(PKPaymentPassDetailViewController *)self _deleteContextualActionForTransaction:v10];
      [array addObject:v11];
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  merchant = [v10 merchant];
  if (([merchant shouldIgnoreMapsMatches] & 1) == 0)
  {
    mapsMerchant = [merchant mapsMerchant];
    identifier = [mapsMerchant identifier];

    if (identifier)
    {
      if (!array)
      {
        PKTransactionDebugDetailsEnabled();
        goto LABEL_21;
      }

      identifier2 = [v10 identifier];
      v17 = MEMORY[0x1E69DC8E8];
      v18 = PKLocalizedPaymentString(&cfstr_TransactionsSw_0.isa);
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __105__PKPaymentPassDetailViewController__transactionCellEditActionsGenerateWithOutput_forRowIndex_tableView___block_invoke;
      v43[3] = &unk_1E80262A0;
      v43[4] = self;
      v44 = identifier2;
      v45 = viewCopy;
      v46 = v10;
      v19 = identifier2;
      v20 = [v17 contextualActionWithStyle:0 title:v18 handler:v43];

      v21 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"mappin"];
      [v20 setImage:v21];

      [array addObject:v20];
      v12 = 1;
    }
  }

  if ((PKTransactionDebugDetailsEnabled() & 1) == 0)
  {
    goto LABEL_22;
  }

  if (array)
  {
    v22 = MEMORY[0x1E69DC8E8];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __105__PKPaymentPassDetailViewController__transactionCellEditActionsGenerateWithOutput_forRowIndex_tableView___block_invoke_2;
    v40[3] = &unk_1E80262C8;
    v41 = v10;
    selfCopy = self;
    v23 = [v22 contextualActionWithStyle:0 title:@"Debug" handler:v40];
    v24 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ant"];
    [v23 setImage:v24];

    systemPurpleColor = [MEMORY[0x1E69DC888] systemPurpleColor];
    [v23 setBackgroundColor:systemPurpleColor];

    [array addObject:v23];
  }

LABEL_21:
  v12 = 1;
LABEL_22:
  if ([(PKPaymentPassDetailViewController *)self _transactionDeepLinkingEnabled])
  {
    if (array)
    {
      v26 = MEMORY[0x1E69DC8E8];
      v27 = PKLocalizedPaymentString(&cfstr_TransactionsSw_1.isa);
      v34 = MEMORY[0x1E69E9820];
      v35 = 3221225472;
      v36 = __105__PKPaymentPassDetailViewController__transactionCellEditActionsGenerateWithOutput_forRowIndex_tableView___block_invoke_3;
      v37 = &unk_1E80262C8;
      v38 = viewCopy;
      selfCopy2 = self;
      v28 = [v26 contextualActionWithStyle:0 title:v27 handler:&v34];

      v29 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"info.circle", v34, v35, v36, v37}];
      [v28 setImage:v29];

      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      [v28 setBackgroundColor:systemBlueColor];

      [array addObject:v28];
    }

    v12 = 1;
  }

  if (output)
  {
LABEL_27:
    v31 = [array copy];
    v32 = *output;
    *output = v31;
  }

LABEL_28:

  return v12;
}

void __105__PKPaymentPassDetailViewController__transactionCellEditActionsGenerateWithOutput_forRowIndex_tableView___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(*(a1 + 32) + 1448);
  v7 = a3;
  v8 = [a4 copy];
  [v6 setObject:v8 forKey:*(a1 + 40)];

  v9 = *(a1 + 48);
  [v7 center];
  [v9 convertPoint:v7 fromView:?];
  v11 = v10;
  v13 = v12;

  v15 = [v9 indexPathForRowAtPoint:{v11, v13}];
  v14 = [*(a1 + 48) cellForRowAtIndexPath:v15];
  [*(a1 + 32) _presentMerchantDetailsViewWithTransaction:*(a1 + 56) forCell:v14];
}

void __105__PKPaymentPassDetailViewController__transactionCellEditActionsGenerateWithOutput_forRowIndex_tableView___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7 = [[PKTransactionDebugDetailsTabBarController alloc] initWithTransaction:*(a1 + 32) transactionSourceCollection:*(*(a1 + 40) + 2184)];
  v6 = [*(a1 + 40) navigationController];
  if ([v6 pk_settings_useStateDrivenNavigation])
  {
    [v6 pk_settings_pushViewController:v7];
  }

  else
  {
    [v6 pushViewController:v7 animated:1];
  }

  v5[2](v5, 1);
}

void __105__PKPaymentPassDetailViewController__transactionCellEditActionsGenerateWithOutput_forRowIndex_tableView___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a3;
  [v8 center];
  [v6 convertPoint:v8 fromView:?];
  v10 = v9;
  v12 = v11;

  v13 = [v6 indexPathForRowAtPoint:{v10, v12}];
  [*(a1 + 40) _didSelectTransactionAtIndexPath:v13];
  v7[2](v7, 1);
}

- (int64_t)_transitCellGenerateCellWithOutput:(id *)output forRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  felicaProperties = [(PKTransitPassProperties *)self->_transitProperties felicaProperties];
  if ([felicaProperties hasGreenCarTicket])
  {
    v10 = 1;
    if (output && !index)
    {
      v11 = [(PKPaymentPassDetailViewController *)self _subtitleCellForTableView:viewCopy];
      v12 = *output;
      *output = v11;

      greenCarValidityStartDate = [felicaProperties greenCarValidityStartDate];
      calendar = [greenCarValidityStartDate calendar];
      date = [greenCarValidityStartDate date];
      v16 = [calendar dateByAddingUnit:16 value:1 toDate:date options:0];

      date2 = [MEMORY[0x1E695DF00] date];
      v18 = [date2 compare:v16];

      v19 = PKLocalizedPaymentString(&cfstr_TicketSectionG.isa);
      if (v18 == -1)
      {
        v35 = calendar;
        greenCarOriginStation = [felicaProperties greenCarOriginStation];
        greenCarDestinationStation = [felicaProperties greenCarDestinationStation];
        v23 = greenCarDestinationStation;
        if (greenCarOriginStation && greenCarDestinationStation)
        {
          v24 = PKLocalizedPaymentString(&cfstr_TransitTransac.isa, &cfstr_12.isa, greenCarOriginStation, greenCarDestinationStation);
          v20 = 0;
        }

        else
        {
          if (greenCarOriginStation)
          {
            v25 = greenCarOriginStation;
          }

          else
          {
            v25 = greenCarDestinationStation;
          }

          v20 = v25;
        }

        calendar = v35;
      }

      else
      {
        v20 = PKLocalizedPaymentString(&cfstr_TicketSectionE.isa);
      }

      v10 = 1;
      goto LABEL_18;
    }
  }

  else
  {
    v10 = 0;
  }

  if (!output)
  {
    goto LABEL_25;
  }

  v19 = 0;
  v20 = 0;
LABEL_18:
  [*output setSelectionStyle:3];
  [*output setAccessoryType:1];
  textLabel = [*output textLabel];
  [textLabel setText:v19];

  textLabel2 = [*output textLabel];
  v28 = textLabel2;
  if (self->_primaryTextColor)
  {
    [textLabel2 setTextColor:?];
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v28 setTextColor:labelColor];
  }

  detailTextLabel = [*output detailTextLabel];
  [detailTextLabel setText:v20];

  detailTextLabel2 = [*output detailTextLabel];
  v32 = detailTextLabel2;
  if (self->_detailTextColor)
  {
    [detailTextLabel2 setTextColor:?];
  }

  else
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v32 setTextColor:secondaryLabelColor];
  }

LABEL_25:
  return v10;
}

- (void)_didSelectTransitTicketAtRow:(int64_t)row
{
  felicaProperties = [(PKTransitPassProperties *)self->_transitProperties felicaProperties];
  hasGreenCarTicket = [felicaProperties hasGreenCarTicket];
  if (!row && hasGreenCarTicket && (v7 = [[PKGreenTicketDetailViewController alloc] initWithFelicaProperty:felicaProperties], PKLocalizedPaymentString(&cfstr_TicketSectionG.isa), v8 = objc_claimAutoreleasedReturnValue(), [(PKGreenTicketDetailViewController *)v7 setTitle:v8], v8, v7))
  {
    [(PKTransitTicketDetailViewController *)v7 setPrimaryTextColor:self->_primaryTextColor];
    [(PKTransitTicketDetailViewController *)v7 setSecondaryTextColor:self->_detailTextColor];
    navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
    if ([navigationController pk_settings_useStateDrivenNavigation])
    {
      [navigationController pk_settings_pushViewController:v7];
    }

    else
    {
      [navigationController pushViewController:v7 animated:1];
    }
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(&v7->super.super.super.super.super, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1BD026000, &v7->super.super.super.super.super, OS_LOG_TYPE_DEFAULT, "Selected an unexpected transit ticket type", v10, 2u);
    }
  }
}

- (id)_paymentApplicationsCellForIndexPath:(id)path tableView:(id)view
{
  pathCopy = path;
  viewCopy = view;
  primaryTextColor = self->_primaryTextColor;
  if (primaryTextColor)
  {
    v9 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:primaryTextColor forTableView:viewCopy];
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v9 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:labelColor forTableView:viewCopy];
  }

  v11 = -[NSArray objectAtIndex:](self->_contactlessPaymentApplications, "objectAtIndex:", [pathCopy row]);
  displayName = [v11 displayName];
  textLabel = [v9 textLabel];
  [textLabel setText:displayName];

  applicationIdentifier = [(PKPaymentApplication *)self->_defaultPaymentApplication applicationIdentifier];
  applicationIdentifier2 = [v11 applicationIdentifier];
  v16 = [applicationIdentifier isEqual:applicationIdentifier2];

  if (v16)
  {
    v17 = 3;
  }

  else
  {
    v17 = 0;
  }

  [v9 setAccessoryType:v17];
  if (self->_linkTextColor)
  {
    [v9 setTintColor:?];
  }

  return v9;
}

- (void)_didSelectPaymentApplicationSectionRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (!self->_changingDefaultPaymentApplication)
  {
    self->_changingDefaultPaymentApplication = 1;
    tableView = [(PKPaymentPassDetailViewController *)self tableView];
    v6 = [tableView cellForRowAtIndexPath:pathCopy];

    if (self->_detailViewStyle == 2)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [v7 setColor:whiteColor];

      [v7 startAnimating];
      [v6 setAccessoryView:v7];
    }

    else
    {
      v7 = 0;
    }

    v9 = -[NSArray objectAtIndex:](self->_contactlessPaymentApplications, "objectAtIndex:", [pathCopy row]);
    objc_initWeak(&location, self);
    paymentServiceDataProvider = self->_paymentServiceDataProvider;
    uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __87__PKPaymentPassDetailViewController__didSelectPaymentApplicationSectionRowAtIndexPath___block_invoke;
    v15[3] = &unk_1E80262F0;
    objc_copyWeak(&v19, &location);
    v12 = v7;
    v16 = v12;
    v13 = v6;
    v17 = v13;
    v14 = v9;
    v18 = v14;
    [(PKPaymentDataProvider *)paymentServiceDataProvider setDefaultPaymentApplication:v14 forPassUniqueIdentifier:uniqueID completion:v15];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __87__PKPaymentPassDetailViewController__didSelectPaymentApplicationSectionRowAtIndexPath___block_invoke(id *a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __87__PKPaymentPassDetailViewController__didSelectPaymentApplicationSectionRowAtIndexPath___block_invoke_2;
  v2[3] = &unk_1E8014828;
  objc_copyWeak(&v6, a1 + 7);
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v6);
}

void __87__PKPaymentPassDetailViewController__didSelectPaymentApplicationSectionRowAtIndexPath___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [a1[4] stopAnimating];
    [a1[4] removeFromSuperview];
    [a1[5] setAccessoryView:0];
    objc_storeStrong(v3 + 139, a1[6]);
    [v3 _refreshPaymentApplicationsSelection];
    WeakRetained = v3;
    *(v3 + 1416) = 0;
  }
}

- (void)_refreshPaymentApplicationsSelection
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_contactlessPaymentApplications;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        tableView = [(PKPaymentPassDetailViewController *)self tableView];
        v10 = [MEMORY[0x1E696AC88] indexPathForRow:v5 inSection:{-[PKDynamicTableViewController indexOfSectionIdentifier:](self, "indexOfSectionIdentifier:", @"PaymentApplications"}];
        v11 = [tableView cellForRowAtIndexPath:v10];

        if (v11)
        {
          applicationIdentifier = [(PKPaymentApplication *)self->_defaultPaymentApplication applicationIdentifier];
          applicationIdentifier2 = [v8 applicationIdentifier];
          v14 = [applicationIdentifier isEqual:applicationIdentifier2];

          if (v14)
          {
            v15 = 3;
          }

          else
          {
            v15 = 0;
          }

          [v11 setAccessoryType:v15];
        }

        ++v5;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }
}

- (id)_deviceAccountNumberCellForIndexPath:(id)path tableView:(id)view
{
  devicePaymentApplications = self->_devicePaymentApplications;
  viewCopy = view;
  pathCopy = path;
  if ([(NSArray *)devicePaymentApplications count]< 2)
  {
    displayName = PKLocalizedPaymentString(&cfstr_DpanTitle.isa);
  }

  else
  {
    v9 = -[NSArray objectAtIndex:](self->_devicePaymentApplications, "objectAtIndex:", [pathCopy row]);
    displayName = [v9 displayName];
  }

  v11 = self->_devicePaymentApplications;
  v12 = [pathCopy row];

  v13 = [(NSArray *)v11 objectAtIndex:v12];
  v14 = PKSanitizedDeviceAccountNumberForPaymentApplication();

  v15 = [(PKPaymentPassDetailViewController *)self _stackedInfoCellWithPrimaryText:displayName detailText:v14 cellStyle:1 forTableView:viewCopy];

  return v15;
}

- (id)_merchantTokensCellForTableView:(id)view
{
  viewCopy = view;
  v5 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokens_9.isa);
  v6 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v5 detailText:0 cellStyle:1 reuseIdentifier:@"merchantTokens" forTableView:viewCopy];

  merchantTokens = [(PKRetrieveMerchantTokensResponse *)self->_merchantTokensResponse merchantTokens];
  v8 = [merchantTokens count];

  if (v8)
  {
    [v6 setAccessoryView:0];
    [v6 setAccessoryType:1];
  }

  else
  {
    if (self->_merchantTokensResponse || ([(PKPaymentPass *)self->_pass hasMerchantTokens]& 1) == 0 && [(PKPaymentPass *)self->_pass hadMerchantTokens])
    {
      [v6 setAccessoryView:0];
      [v6 setAccessoryType:0];
      textLabel = [v6 textLabel];
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [textLabel setTextColor:secondaryLabelColor];
    }

    else
    {
      textLabel = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      [textLabel startAnimating];
      [v6 setAccessoryView:textLabel];
    }
  }

  PKAccessibilityIDCellSet(v6, *MEMORY[0x1E69B9950]);

  return v6;
}

- (id)_footerViewForMerchantTokensSection
{
  v3 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokens_10.isa);
  v4 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokens_11.isa, &stru_1F3BD5BF0.isa, v3);
  v5 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/ht212954?cid=mc-ols-applepay-article_ht212954-app-11122021"];
  v6 = PKAttributedStringByAddingLinkToSubstring(v4, v3, v5);
  v7 = &__block_literal_global_52;
  v8 = [(PKPaymentPassDetailViewController *)self createFooterHyperlinkViewWithText:v6 action:&__block_literal_global_52];

  return v8;
}

- (id)_transferCardCellForTableView:(id)view
{
  viewCopy = view;
  warningTextColor = self->_warningTextColor;
  if (warningTextColor)
  {
    v6 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:warningTextColor forTableView:viewCopy];
  }

  else
  {
    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
    v6 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:systemRedColor forTableView:viewCopy];
  }

  v8 = PKAssignedDeviceName();
  v9 = PKLocalizedPaymentString(&cfstr_SettingsTransf_7.isa, &stru_1F3BD5BF0.isa, v8);

  textLabel = [v6 textLabel];
  [textLabel setText:v9];

  _isDeletingPass = [(PKPaymentPassDetailViewController *)self _isDeletingPass];
  if (self->_performingCardTransfer)
  {
    v12 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v12 startAnimating];
    [v6 setAccessoryView:v12];
  }

  else
  {
    [v6 setAccessoryView:0];
  }

  v13 = self->_performingCardTransfer || _isDeletingPass;
  textLabel2 = [v6 textLabel];
  [textLabel2 setEnabled:!v13];

  PKAccessibilityIDCellSet(v6, *MEMORY[0x1E69B9D68]);

  return v6;
}

- (id)_deleteCardCellForTableView:(id)view
{
  viewCopy = view;
  warningTextColor = self->_warningTextColor;
  if (warningTextColor)
  {
    v6 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:warningTextColor forTableView:viewCopy];
  }

  else
  {
    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
    v6 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:systemRedColor forTableView:viewCopy];
  }

  if ([(PKPaymentPass *)self->_pass supportsBarcodePayment])
  {
    v8 = PKLocalizedAquamanString(&cfstr_DeletePassAcco.isa);
LABEL_29:
    v12 = v8;
    goto LABEL_30;
  }

  isIdentityPass = [(PKPaymentPass *)self->_pass isIdentityPass];
  pass = self->_pass;
  if (isIdentityPass)
  {
    identityType = [(PKPaymentPass *)pass identityType];
    v12 = 0;
    if (identityType > 2)
    {
      if ((identityType - 3) >= 3)
      {
        goto LABEL_30;
      }
    }

    else if (identityType)
    {
      if (identityType == 1)
      {
        v13 = @"DELETE_PASS_DL";
      }

      else
      {
        if (identityType != 2)
        {
          goto LABEL_30;
        }

        v13 = @"DELETE_PASS_STATE_ID";
      }

      goto LABEL_21;
    }

    v13 = @"DELETE_PASS_ID_CARD";
LABEL_21:
    v8 = PKLocalizedIdentityString(&v13->isa);
    goto LABEL_29;
  }

  if (![(PKPaymentPass *)pass isAccessPass])
  {
    goto LABEL_18;
  }

  accessType = [(PKPaymentPass *)self->_pass accessType];
  v12 = 0;
  if (accessType <= 2)
  {
    if (accessType)
    {
      if (accessType != 1)
      {
        if (accessType != 2)
        {
          goto LABEL_30;
        }

        v15 = @"DELETE_PASS_BADGE";
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_18:
    v15 = @"DELETE_PASS";
LABEL_28:
    v8 = PKLocalizedPaymentString(&v15->isa);
    goto LABEL_29;
  }

  if ((accessType - 5) < 2 || accessType == 3)
  {
LABEL_27:
    v15 = @"DELETE_PASS_KEY";
    goto LABEL_28;
  }

  if (accessType == 4)
  {
    v8 = PKLocalizedCredentialString(&cfstr_RemoveCarKey.isa);
    goto LABEL_29;
  }

LABEL_30:
  textLabel = [v6 textLabel];
  [textLabel setText:v12];

  if ([(PKPaymentPassDetailViewController *)self _isDeletingPass])
  {
    v18 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v18 startAnimating];
    [v6 setAccessoryView:v18];

    v19 = 0;
  }

  else
  {
    [v6 setAccessoryView:0];
    v19 = !self->_performingCardTransfer;
  }

  textLabel2 = [v6 textLabel];
  [textLabel2 setEnabled:v19];

  PKAccessibilityIDCellSet(v6, *MEMORY[0x1E69B9B58]);
  [v6 setIsAccessibilityElement:1];

  return v6;
}

- (id)_peerPaymentBalanceCellForRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_19.isa);
  currentBalance = [(PKPeerPaymentAccount *)self->_peerPaymentAccount currentBalance];
  formattedStringValue = [currentBalance formattedStringValue];
  v9 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v6 detailText:formattedStringValue cellStyle:1 forTableView:viewCopy];

  PKAccessibilityIDCellSet(v9, *MEMORY[0x1E69B9500]);

  return v9;
}

- (id)_peerPaymentMoneyActionCellForRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  v7 = [(PKPaymentPassDetailViewController *)self _peerPaymentMoneyActionForRowIndex:index];
  if (!v7)
  {
    v8 = MEMORY[0x1E69B93F0];
    v9 = @"PEER_PAYMENT_PASS_DETAILS_ADD_MONEY";
    goto LABEL_5;
  }

  if (v7 == 1)
  {
    v8 = MEMORY[0x1E69B9D70];
    v9 = @"PEER_PAYMENT_PASS_DETAILS_TRANSFER_TO_BANK";
LABEL_5:
    v10 = PKLocalizedPeerPaymentString(&v9->isa);
    v11 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v10 forTableView:viewCopy];
    PKAccessibilityIDCellSet(v11, *v8);
    goto LABEL_7;
  }

  v10 = 0;
  v11 = 0;
LABEL_7:

  return v11;
}

- (id)_peerPaymentManualIdentityVerificationCellForRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_22.isa);
  v7 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v6 forTableView:viewCopy];

  PKAccessibilityIDCellSet(v7, *MEMORY[0x1E69B9870]);

  return v7;
}

- (id)_peerPaymentParticipantGraduationCellForRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_23.isa);
  v7 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v6 forTableView:viewCopy];

  PKAccessibilityIDCellSet(v7, *MEMORY[0x1E69B9C50]);

  return v7;
}

- (id)_peerPaymentAccountActionCellForRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  v6 = self->_peerPaymentAccountResolution - 1;
  if (v6 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = PKLocalizedPeerPaymentString(&off_1E8026830[v6]->isa);
  }

  v8 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v7 forTableView:viewCopy];
  PKAccessibilityIDCellSet(v8, *MEMORY[0x1E69B93D0]);

  return v8;
}

- (id)_peerPaymentAutomaticallyAcceptPaymentsCellForRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  if (index == 1)
  {
    v7 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_27.isa);
    v8 = [(PKPaymentPassDetailViewController *)self _checkmarkCellWithText:v7 forTableView:viewCopy];
    requiresConfirmation = [(PKPeerPaymentPreferences *)self->_peerPaymentPreferences requiresConfirmation];
    v10 = MEMORY[0x1E69B9928];
    if (!requiresConfirmation)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (!index)
  {
    v7 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_26.isa);
    v8 = [(PKPaymentPassDetailViewController *)self _checkmarkCellWithText:v7 forTableView:viewCopy];
    requiresConfirmation2 = [(PKPeerPaymentPreferences *)self->_peerPaymentPreferences requiresConfirmation];
    v10 = MEMORY[0x1E69B94D8];
    if (requiresConfirmation2)
    {
LABEL_5:
      PKAccessibilityIDCellSet(v8, *v10);
      goto LABEL_9;
    }

LABEL_4:
    [v8 setAccessoryType:3];
    goto LABEL_5;
  }

  v7 = 0;
  v8 = 0;
LABEL_9:

  return v8;
}

- (id)_peerPaymentBankAccountsCellForRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  primaryTextColor = self->_primaryTextColor;
  if (primaryTextColor)
  {
    v7 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:primaryTextColor forTableView:viewCopy];
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v7 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:labelColor forTableView:viewCopy];
  }

  if (PKBankCredentialCenterEnabled())
  {
    v9 = @"PEER_PAYMENT_PASS_DETAILS_BANK_ACCOUNTS";
  }

  else
  {
    v9 = @"PEER_PAYMENT_PASS_DETAILS_BANK_ACCOUNT";
  }

  v10 = PKLocalizedPeerPaymentString(&v9->isa);
  textLabel = [v7 textLabel];
  [textLabel setText:v10];

  [v7 setAccessoryType:1];
  PKAccessibilityIDCellSet(v7, *MEMORY[0x1E69B9508]);

  return v7;
}

- (id)_peerPaymentStatementCellForTableView:(id)view
{
  viewCopy = view;
  v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_3.isa);
  v6 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v5 forTableView:viewCopy];

  if (self->_requestingStatement)
  {
    textLabel2 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [textLabel2 startAnimating];
    [v6 setAccessoryView:textLabel2];
    textLabel = [v6 textLabel];
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [textLabel setTextColor:tertiaryLabelColor];

    v10 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_4.isa);
    [textLabel setText:v10];

    detailTextLabel = [v6 detailTextLabel];
    [detailTextLabel setText:0];
  }

  else
  {
    if (!self->_sentStatement)
    {
      goto LABEL_6;
    }

    [v6 setAccessoryView:0];
    [v6 setAccessoryType:3];
    textLabel2 = [v6 textLabel];
    tertiaryLabelColor2 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [textLabel2 setTextColor:tertiaryLabelColor2];

    v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_5.isa);
    [textLabel2 setText:v13];

    textLabel = [v6 detailTextLabel];
    [textLabel setText:0];
  }

LABEL_6:
  PKAccessibilityIDCellSet(v6, *MEMORY[0x1E69B9CB0]);

  return v6;
}

- (id)_peerPaymentBillingAddressCellForTableView:(id)view
{
  v3 = [(PKPaymentPassDetailViewController *)self _subtitleCellForTableView:view];
  textLabel = [v3 textLabel];
  v5 = *MEMORY[0x1E69DDCF8];
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [textLabel setFont:v6];

  [textLabel setNumberOfLines:0];
  detailTextLabel = [v3 detailTextLabel];
  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v5];
  [detailTextLabel setFont:v8];

  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  [detailTextLabel setTextColor:systemRedColor];

  return v3;
}

- (id)_familyMemberCellForIndexPath:(id)path tableView:(id)view
{
  viewCopy = view;
  v7 = [path row];
  if (v7 >= [(NSArray *)self->_sortedFamilyMemberRowModels count])
  {
    v8 = PKLocalizedPeerPaymentString(&cfstr_BackOfPassFami_0.isa);
    [(PKPaymentPassDetailViewController *)self _linkCellWithText:v8 forTableView:viewCopy];
  }

  else
  {
    v8 = [(NSArray *)self->_sortedFamilyMemberRowModels objectAtIndex:v7];
    [(PKPaymentPassDetailViewController *)self _familyMemberCellWithRowModel:v8 forTableView:viewCopy];
  }
  v9 = ;

  PKAccessibilityIDCellSet(v9, *MEMORY[0x1E69B97C0]);

  return v9;
}

- (id)_accountServiceCreditDetailsCellForRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  creditDetails = [(PKAccount *)self->_account creditDetails];
  accountSummary = [creditDetails accountSummary];
  v8 = [(PKPaymentPassDetailViewController *)self _accountServiceCreditDetailsRowForRowIndex:index];
  creditDetails2 = [(PKAccount *)self->_account creditDetails];
  currencyCode = [creditDetails2 currencyCode];

  v11 = *MEMORY[0x1E69B9650];
  isTotalBalanceCellSelectable = 0;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      [(PKPaymentPassDetailViewController *)self _accountFeature];
      v13 = PKLocalizedFeatureString();
      availableCredit = [accountSummary availableCredit];
      v25 = PKCurrencyAmountCreate(availableCredit, currencyCode);
      formattedStringValue = [v25 formattedStringValue];

      v17 = MEMORY[0x1E69B94E8];
      goto LABEL_12;
    }

    if (v8 == 3)
    {
      [(PKPaymentPassDetailViewController *)self _accountFeature];
      v13 = PKLocalizedFeatureString();
      creditDetails3 = [(PKAccount *)self->_account creditDetails];
      rates = [creditDetails3 rates];
      formattedStringValue = [rates formattedAPRForPurchasesPercentageString];

      v17 = MEMORY[0x1E69B9388];
      goto LABEL_12;
    }

LABEL_8:
    formattedStringValue = 0;
    v13 = 0;
    goto LABEL_16;
  }

  if (!v8)
  {
    [(PKPaymentPassDetailViewController *)self _accountFeature];
    v13 = PKLocalizedFeatureString();
    cardBalance = [creditDetails cardBalance];
    amount = [cardBalance amount];
    zero = [MEMORY[0x1E696AB90] zero];
    v23 = [amount compare:zero];

    if (v23 == -1)
    {
      negativeValue = [cardBalance negativeValue];

      formattedStringValue2 = [negativeValue formattedStringValue];
      formattedStringValue = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, formattedStringValue2);

      cardBalance = negativeValue;
    }

    else
    {
      formattedStringValue = [cardBalance formattedStringValue];
    }

    isTotalBalanceCellSelectable = [(PKPaymentPassDetailViewController *)self isTotalBalanceCellSelectable];
    v26 = *MEMORY[0x1E69B9500];

    v11 = cardBalance;
    goto LABEL_15;
  }

  if (v8 != 1)
  {
    goto LABEL_8;
  }

  [(PKPaymentPassDetailViewController *)self _accountFeature];
  v13 = PKLocalizedFeatureString();
  creditLimit = [accountSummary creditLimit];
  v15 = PKCurrencyAmountCreate(creditLimit, currencyCode);
  formattedStringValue = [v15 formattedStringValue];

  v17 = MEMORY[0x1E69B9658];
LABEL_12:
  v26 = *v17;
  isTotalBalanceCellSelectable = 0;
LABEL_15:

  v11 = v26;
LABEL_16:
  v29 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v13 detailText:formattedStringValue cellStyle:1 forTableView:viewCopy];
  [v29 setAccessoryType:isTotalBalanceCellSelectable];
  PKAccessibilityIDCellSet(v29, v11);

  return v29;
}

- (int64_t)_numberOfAccountServiceCreditDetailsRowsEnabled
{
  v3 = 0;
  v4 = 0;
  do
  {
    v4 += [(PKPaymentPassDetailViewController *)self _accountServiceCreditDetailsRowIsEnabled:v3++];
  }

  while (v3 != 4);
  return v4;
}

- (BOOL)_accountServiceCreditDetailsRowIsEnabled:(unint64_t)enabled
{
  creditDetails = [(PKAccount *)self->_account creditDetails];
  accountSummary = [creditDetails accountSummary];

  LOBYTE(creditDetails) = 0;
  if (enabled > 1)
  {
    if (enabled == 2)
    {
      creditLimit = [accountSummary creditLimit];
      availableCredit = [accountSummary availableCredit];
      notANumber = [MEMORY[0x1E696AB90] notANumber];
      if (creditLimit)
      {
        LOBYTE(creditDetails) = 0;
        if (([creditLimit isEqualToNumber:notANumber] & 1) == 0 && availableCredit)
        {
          LODWORD(creditDetails) = [availableCredit isEqualToNumber:notANumber] ^ 1;
        }
      }

      else
      {
        LOBYTE(creditDetails) = 0;
      }

      goto LABEL_21;
    }

    if (enabled == 3)
    {
      creditLimit = [(PKAccount *)self->_account creditDetails];
      availableCredit = [creditLimit rates];
      LOBYTE(creditDetails) = availableCredit != 0;
      goto LABEL_21;
    }
  }

  else
  {
    if (!enabled)
    {
      adjustedBalance = [accountSummary adjustedBalance];
      creditLimit = adjustedBalance;
      if (self->_detailViewStyle)
      {
        v10 = adjustedBalance == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }

    if (enabled == 1)
    {
      creditLimit = [accountSummary creditLimit];
      if (creditLimit)
      {
LABEL_5:
        availableCredit = [MEMORY[0x1E696AB90] notANumber];
        LODWORD(creditDetails) = [creditLimit isEqualToNumber:availableCredit] ^ 1;
LABEL_21:

        goto LABEL_22;
      }

LABEL_14:
      LOBYTE(creditDetails) = 0;
LABEL_22:
    }
  }

  return creditDetails;
}

- (unint64_t)_accountServiceCreditDetailsRowForRowIndex:(int64_t)index
{
  v5 = 0;
  v6 = 0;
  do
  {
    if ([(PKPaymentPassDetailViewController *)self _accountServiceCreditDetailsRowIsEnabled:v5])
    {
      if (v6 == index)
      {
        return v5;
      }

      ++v6;
    }

    ++v5;
  }

  while (v5 != 4);
  return 0x7FFFFFFFFFFFFFFFLL;
}

- (id)_accountServiceBankAccountsCellForRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  primaryTextColor = self->_primaryTextColor;
  if (primaryTextColor)
  {
    labelColor = primaryTextColor;
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  v9 = labelColor;
  v10 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:labelColor forTableView:viewCopy];
  if (index)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    [(PKPaymentPassDetailViewController *)self _accountFeature];
    v12 = PKLocalizedFeatureString();
    if (self->_loadingBankAccounts)
    {
      tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];

      v11 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      [v11 startAnimating];
      v14 = 0;
      v9 = tertiaryLabelColor;
      goto LABEL_10;
    }

    v11 = 0;
  }

  v14 = 1;
LABEL_10:
  textLabel = [v10 textLabel];
  [textLabel setText:v12];

  textLabel2 = [v10 textLabel];
  [textLabel2 setTextColor:v9];

  detailTextLabel = [v10 detailTextLabel];
  [detailTextLabel setText:0];

  [v10 setAccessoryType:v14];
  [v10 setAccessoryView:v11];
  PKAccessibilityIDCellSet(v10, *MEMORY[0x1E69B9508]);

  return v10;
}

- (id)_accountServiceMakeDefaultCellForRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  [(PKPaymentPassDetailViewController *)self _accountFeature];
  v6 = PKLocalizedFeatureString();
  v7 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v6 forTableView:viewCopy];

  PKAccessibilityIDCellSet(v7, *MEMORY[0x1E69B9918]);

  return v7;
}

- (id)_accountServiceRewardsDetailsCellForRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  v7 = [(PKPaymentPassDetailViewController *)self _accountServiceRewardsRowForRowIndex:index];
  if (v7 == 2)
  {
    v23 = 0;
    cashbackResolution = self->_cashbackResolution;
    if (cashbackResolution > 2)
    {
      if (cashbackResolution == 3)
      {
        v25 = PKLocalizedFeatureString();
        goto LABEL_21;
      }

      v15 = 0;
      if (cashbackResolution != 4)
      {
LABEL_22:
        v16 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v15 forTableView:viewCopy];
        goto LABEL_23;
      }
    }

    else if (cashbackResolution != 1)
    {
      v15 = 0;
      if (cashbackResolution == 2)
      {
        v25 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_7.isa);
LABEL_21:
        v15 = v25;
        v23 = 0;
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    v15 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_15.isa);
    v23 = *MEMORY[0x1E69B9C30];
    goto LABEL_22;
  }

  if (v7 == 1)
  {
    [(PKPaymentPassDetailViewController *)self _accountFeature];
    v15 = PKLocalizedFeatureString();
    v16 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v15 forTableView:viewCopy];
    if (self->_redeemingRewards)
    {
      v17 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      [v17 startAnimating];
      [v16 setAccessoryView:v17];
      textLabel = [v16 textLabel];
      tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      [textLabel setTextColor:tertiaryLabelColor];

      textLabel2 = [v16 textLabel];
      [(PKPaymentPassDetailViewController *)self _accountFeature];
      v21 = PKLocalizedFeatureString();
      [textLabel2 setText:v21];

      detailTextLabel = [v16 detailTextLabel];
      [detailTextLabel setText:0];
    }

    v23 = *MEMORY[0x1E69B9B48];
  }

  else
  {
    if (v7)
    {
      v23 = 0;
      v16 = 0;
    }

    else
    {
      creditDetails = [(PKAccount *)self->_account creditDetails];
      accountSummary = [creditDetails accountSummary];
      currentAccountUser = [(PKAccountUserCollection *)self->_accountUserCollection currentAccountUser];
      v11 = [accountSummary redeemableRewardsBalanceForUser:currentAccountUser];

      if (v11)
      {
        currencyCode = [creditDetails currencyCode];
        v13 = PKCurrencyAmountCreate(v11, currencyCode);
        minimalFormattedStringValue = [v13 minimalFormattedStringValue];
      }

      else
      {
        minimalFormattedStringValue = 0;
      }

      [(PKPaymentPassDetailViewController *)self _accountFeature];
      v26 = PKLocalizedFeatureString();
      v16 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v26 detailText:minimalFormattedStringValue cellStyle:1 forTableView:viewCopy];

      v23 = *MEMORY[0x1E69B9500];
    }

    v15 = 0;
  }

LABEL_23:
  PKAccessibilityIDCellSet(v16, v23);

  return v16;
}

- (BOOL)_accountServiceRewardsRowIsEnabled:(unint64_t)enabled
{
  supportsRedeemRewards = [(PKAccount *)self->_account supportsRedeemRewards];
  if (enabled >= 2)
  {
    if (enabled == 2 && supportsRedeemRewards)
    {
      return self->_cashbackResolution != 0;
    }

    return 0;
  }

  if (!supportsRedeemRewards)
  {
    return 0;
  }

  return self->_allowStatementCreditRedemption;
}

- (int64_t)_numberOfAccountServiceRewardsRowsEnabled
{
  v3 = 0;
  v4 = 0;
  do
  {
    v4 += [(PKPaymentPassDetailViewController *)self _accountServiceRewardsRowIsEnabled:v3++];
  }

  while (v3 != 3);
  return v4;
}

- (unint64_t)_accountServiceRewardsRowForRowIndex:(int64_t)index
{
  v5 = 0;
  v6 = 0;
  do
  {
    if ([(PKPaymentPassDetailViewController *)self _accountServiceRewardsRowIsEnabled:v5])
    {
      if (v6 == index)
      {
        return v5;
      }

      ++v6;
    }

    ++v5;
  }

  while (v5 != 3);
  return 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)_accountServicePhysicalCardRowIsEnabled:(unint64_t)enabled
{
  v3 = 0;
  if (enabled <= 1)
  {
    if (enabled)
    {
      if (enabled == 1)
      {
        physicalCardController = self->_physicalCardController;

        return [(PKPhysicalCardController *)physicalCardController canActivatePhysicalCard];
      }
    }

    else
    {
      primaryPhysicalCard = [(PKPhysicalCardController *)self->_physicalCardController primaryPhysicalCard];
      state = [primaryPhysicalCard state];

      return (state & 0xFFFFFFFFFFFFFFFELL) == 2;
    }

    return v3;
  }

  if (enabled == 2)
  {
    v10 = self->_physicalCardController;

    return [(PKPhysicalCardController *)v10 canRequestNewPhysicalCard];
  }

  else
  {
    if (enabled != 3)
    {
      if (enabled == 4)
      {
        unactivatedPhysicalCard = [(PKPhysicalCardController *)self->_physicalCardController unactivatedPhysicalCard];
        if (unactivatedPhysicalCard)
        {
          v5 = unactivatedPhysicalCard;
          latestShippingActivity = [unactivatedPhysicalCard latestShippingActivity];
          shipmentTrackingURL = [latestShippingActivity shipmentTrackingURL];
          if (shipmentTrackingURL)
          {
            v3 = 1;
          }

          else
          {
            shipmentTrackingURL2 = [v5 shipmentTrackingURL];
            v3 = shipmentTrackingURL2 != 0;
          }
        }

        else
        {
          return 0;
        }
      }

      return v3;
    }

    v11 = self->_physicalCardController;

    return [(PKPhysicalCardController *)v11 canReplacePhysicalCard];
  }
}

- (int64_t)_numberOfAccountServicePhysicalCardRowsEnabled
{
  v3 = 0;
  v4 = 0;
  do
  {
    v4 += [(PKPaymentPassDetailViewController *)self _accountServicePhysicalCardRowIsEnabled:v3++];
  }

  while (v3 != 5);
  return v4;
}

- (unint64_t)_accountServicePhysicalCardRowForRowIndex:(int64_t)index
{
  v5 = 0;
  v6 = 0;
  do
  {
    if ([(PKPaymentPassDetailViewController *)self _accountServicePhysicalCardRowIsEnabled:v5])
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

- (unint64_t)_rowIndexForAccountServicePhysicalCardRow:(unint64_t)row
{
  if (![(PKPaymentPassDetailViewController *)self _accountServicePhysicalCardRowIsEnabled:?])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (!row)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v6 += [(PKPaymentPassDetailViewController *)self _accountServicePhysicalCardRowIsEnabled:v5++];
  }

  while (row != v5);
  return v6;
}

- (id)_accountServicePhysicalCardCellForRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  state = [(PKPhysicalCardActionController *)self->_physicalCardActionController state];
  v8 = *MEMORY[0x1E69B9AB8];
  v9 = [(PKPaymentPassDetailViewController *)self _accountServicePhysicalCardRowForRowIndex:index];
  v10 = 0;
  if (v9 > 1)
  {
    switch(v9)
    {
      case 2:
        [(PKPaymentPassDetailViewController *)self _accountFeature];
        v13 = PKLocalizedFeatureString();
        v10 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v13 forTableView:viewCopy];

        v14 = 1633;
        break;
      case 3:
        [(PKPaymentPassDetailViewController *)self _accountFeature];
        v15 = PKLocalizedFeatureString();
        v10 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v15 forTableView:viewCopy];

        v14 = 1635;
        break;
      case 4:
        [(PKPaymentPassDetailViewController *)self _accountFeature];
        v11 = PKLocalizedFeatureString();
        v10 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v11 forTableView:viewCopy];

        v12 = v8;
        v8 = *MEMORY[0x1E69B9AC0];
LABEL_15:

        goto LABEL_16;
      default:
        goto LABEL_16;
    }

    if (*(&self->super.super.super.super.super.isa + v14) == 1)
    {
      v12 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      [v12 startAnimating];
      [v10 setAccessoryView:v12];
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (!v9)
  {
    [(PKPhysicalCardController *)self->_physicalCardController primaryPhysicalCardEnabled];
    [(PKPaymentPassDetailViewController *)self _accountFeature];
    v12 = PKLocalizedFeatureString();
    v10 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v12 forTableView:viewCopy];
    if (self->_loadingEnableDisablePhysicalCard)
    {
      v16 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      [v16 startAnimating];
      [v10 setAccessoryView:v16];
    }

    goto LABEL_15;
  }

  if (v9 == 1)
  {
    [(PKPaymentPassDetailViewController *)self _accountFeature];
    v12 = PKLocalizedFeatureString();
    v10 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v12 forTableView:viewCopy];
    goto LABEL_15;
  }

LABEL_16:
  if (state == 1 || self->_loadingOrderPhysicalCard)
  {
    textLabel = [v10 textLabel];
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [textLabel setTextColor:tertiaryLabelColor];
  }

  PKAccessibilityIDCellSet(v10, v8);

  return v10;
}

- (id)_accountServiceCardNumbersCellForRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  primaryTextColor = self->_primaryTextColor;
  if (primaryTextColor)
  {
    v7 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:primaryTextColor forTableView:viewCopy];
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v7 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:labelColor forTableView:viewCopy];
  }

  textLabel = [v7 textLabel];
  v10 = PKLocalizedCardNumbersString(&cfstr_CardNumbersInf.isa);
  [textLabel setText:v10];

  [(PKPaymentPassDetailViewController *)self _showSpinner:[(PKAccountCardNumbersPresenter *)self->_accountCardNumbersPresenter isLoadingVirtualCard] inCell:v7 overrideTextColor:0];
  if (![(PKAccountCardNumbersPresenter *)self->_accountCardNumbersPresenter isLoadingVirtualCard])
  {
    [v7 setAccessoryType:1];
  }

  PKAccessibilityIDCellSet(v7, *MEMORY[0x1E69B95B8]);

  return v7;
}

- (id)_transactionYearFormatter
{
  transactionYearFormatter = self->_transactionYearFormatter;
  if (!transactionYearFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v5 = self->_transactionYearFormatter;
    self->_transactionYearFormatter = v4;

    v6 = self->_transactionYearFormatter;
    v7 = objc_alloc(MEMORY[0x1E695DEE8]);
    v8 = [v7 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    [(NSDateFormatter *)v6 setCalendar:v8];

    [(NSDateFormatter *)self->_transactionYearFormatter setLocalizedDateFormatFromTemplate:@"y"];
    transactionYearFormatter = self->_transactionYearFormatter;
  }

  return transactionYearFormatter;
}

- (id)_transactionCountFormatter
{
  transactionCountFormatter = self->_transactionCountFormatter;
  if (!transactionCountFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v5 = self->_transactionCountFormatter;
    self->_transactionCountFormatter = v4;

    [(NSNumberFormatter *)self->_transactionCountFormatter setNumberStyle:1];
    transactionCountFormatter = self->_transactionCountFormatter;
  }

  return transactionCountFormatter;
}

- (id)_transactionCountByPeriodCellForIndexPath:(id)path tableView:(id)view
{
  viewCopy = view;
  v7 = -[NSArray objectAtIndexedSubscript:](self->_transactionCountAndYear, "objectAtIndexedSubscript:", [path row]);
  startDate = [v7 startDate];
  transactionCount = [v7 transactionCount];
  _transactionYearFormatter = [(PKPaymentPassDetailViewController *)self _transactionYearFormatter];
  v11 = [_transactionYearFormatter stringFromDate:startDate];

  _transactionCountFormatter = [(PKPaymentPassDetailViewController *)self _transactionCountFormatter];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:transactionCount];
  v14 = [_transactionCountFormatter stringFromNumber:v13];

  v15 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas.isa, &stru_1F3BD5BF0.isa, v11);
  v16 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v15 detailText:v14 cellStyle:1 forTableView:viewCopy];

  [v16 setAccessoryType:1];
  PKAccessibilityIDCellSet(v16, *MEMORY[0x1E69B9D60]);

  return v16;
}

- (void)_didSelectTransactionCountByPeriodAtIndexPath:(id)path
{
  v14 = -[NSArray objectAtIndexedSubscript:](self->_transactionCountAndYear, "objectAtIndexedSubscript:", [path row]);
  startDate = [v14 startDate];
  v5 = [PKPaymentTransactionsInYearTableViewController alloc];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  transactionSourceCollection = self->_transactionSourceCollection;
  familyCollection = self->_familyCollection;
  detailViewStyle = self->_detailViewStyle;
  paymentServiceDataProvider = self->_paymentServiceDataProvider;
  contactResolver = [(PKPaymentPassDetailViewController *)self contactResolver];
  v12 = [(PKPaymentTransactionsInYearTableViewController *)v5 initWithDateFromYear:startDate calendar:currentCalendar transactionSourceCollection:transactionSourceCollection familyCollection:familyCollection detailViewStyle:detailViewStyle paymentServiceDataProvider:paymentServiceDataProvider contactResolver:contactResolver peerPaymentWebService:self->_peerPaymentWebService account:self->_account];

  navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_pushViewController:v12];
  }

  else
  {
    [navigationController pushViewController:v12 animated:1];
  }
}

- (void)_updatePeerPaymentPreferencesWithNewPreferences:(id)preferences
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__PKPaymentPassDetailViewController__updatePeerPaymentPreferencesWithNewPreferences___block_invoke;
  aBlock[3] = &unk_1E8026318;
  aBlock[4] = self;
  preferencesCopy = preferences;
  v5 = _Block_copy(aBlock);
  targetDevice = [(PKPeerPaymentWebService *)self->_peerPaymentWebService targetDevice];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    targetDevice2 = [(PKPeerPaymentWebService *)self->_peerPaymentWebService targetDevice];
    [targetDevice2 setPreferences:preferencesCopy completion:v5];
  }

  else
  {
    targetDevice2 = [objc_alloc(MEMORY[0x1E69B9008]) initWithPeerPaymentPreferences:preferencesCopy];

    peerPaymentWebService = self->_peerPaymentWebService;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __85__PKPaymentPassDetailViewController__updatePeerPaymentPreferencesWithNewPreferences___block_invoke_1144;
    v10[3] = &unk_1E8026340;
    v11 = v5;
    [(PKPeerPaymentWebService *)peerPaymentWebService peerPaymentUpdatePreferencesWithRequest:targetDevice2 completion:v10];
    preferencesCopy = v11;
  }
}

void __85__PKPaymentPassDetailViewController__updatePeerPaymentPreferencesWithNewPreferences___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PKPaymentPassDetailViewController__updatePeerPaymentPreferencesWithNewPreferences___block_invoke_2;
  block[3] = &unk_1E8010A88;
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __85__PKPaymentPassDetailViewController__updatePeerPaymentPreferencesWithNewPreferences___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Error updating peer payment preferences: %@", &v5, 0xCu);
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 40) + 1552), *(a1 + 48));
  }

  return [*(a1 + 40) _updatePeerPaymentPreferencesSectionVisibilityAndReloadIfNecessary];
}

void __85__PKPaymentPassDetailViewController__updatePeerPaymentPreferencesWithNewPreferences___block_invoke_1144(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 peerPaymentPreferences];
  (*(*(a1 + 32) + 16))();
}

- (void)peerPaymentAccountResolutionController:(id)controller requestsDismissCurrentViewControllerAnimated:(BOOL)animated
{
  [(PKPaymentPassDetailViewController *)self dismissViewControllerAnimated:animated completion:0];

  [(PKPaymentPassDetailViewController *)self _updateCashbackPeerPaymentResolutionSection];
}

- (void)_didSelectPeerPaymentMoneyActionAtRow:(int64_t)row
{
  v4 = [(PKPaymentPassDetailViewController *)self _peerPaymentMoneyActionForRowIndex:row];
  if (v4 == 1)
  {

    [(PKPaymentPassDetailViewController *)self _didSelectTransferToBank];
  }

  else if (!v4)
  {

    [(PKPaymentPassDetailViewController *)self presentTopUp];
  }
}

- (void)_didSelectPeerPaymentBankAccountsAtIndexPath:(id)path
{
  pathCopy = path;
  if (!PKBankCredentialCenterEnabled() || (v5 = [objc_alloc(MEMORY[0x1E69B86A8]) initWithType:0], objc_initWeak(&location, self), aBlock[0] = MEMORY[0x1E69E9820], aBlock[1] = 3221225472, aBlock[2] = __82__PKPaymentPassDetailViewController__didSelectPeerPaymentBankAccountsAtIndexPath___block_invoke, aBlock[3] = &unk_1E8026368, objc_copyWeak(&v19, &location), v6 = v5, v18 = v6, v7 = _Block_copy(aBlock), v12 = MEMORY[0x1E69E9820], v13 = 3221225472, v14 = __82__PKPaymentPassDetailViewController__didSelectPeerPaymentBankAccountsAtIndexPath___block_invoke_2, v15 = &unk_1E8010998, objc_copyWeak(&v16, &location), v8 = _Block_copy(&v12), v9 = [PKACHBankCredentialPickerViewController alloc], v10 = -[PKACHBankCredentialPickerViewController initWithCurrentBankInformation:selectAction:cancelAction:](v9, "initWithCurrentBankInformation:selectAction:cancelAction:", v6, v7, v8, v12, v13, v14, v15), v8, objc_destroyWeak(&v16), v7, v18, objc_destroyWeak(&v19), objc_destroyWeak(&location), v6, !v10))
  {
    v10 = [[PKPeerPaymentBankAccountsViewController alloc] initWithPeerPaymentAccount:self->_peerPaymentAccount detailViewStyle:self->_detailViewStyle];
  }

  navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_pushViewController:v10];
  }

  else
  {
    [navigationController pushViewController:v10 animated:1];
  }
}

void __82__PKPaymentPassDetailViewController__didSelectPeerPaymentBankAccountsAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = [v13 routingNumber];
    [v4 setRoutingNumber:v5];

    v6 = *(a1 + 32);
    v7 = [v13 accountNumber];
    [v6 setAccountNumber:v7];

    v8 = *(a1 + 32);
    v9 = [v13 bankName];
    [v8 setBankName:v9];

    v10 = *(a1 + 32);
    v11 = [v13 identifier];
    [v10 setIdentifier:v11];

    v12 = [WeakRetained navigationController];
    [v12 dismissViewControllerAnimated:1 completion:0];
  }
}

void __82__PKPaymentPassDetailViewController__didSelectPeerPaymentBankAccountsAtIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained navigationController];
    [v2 dismissViewControllerAnimated:1 completion:0];

    WeakRetained = v3;
  }
}

- (void)_didSelectAutomaticallyAcceptPaymentsPreferenceAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  requiresConfirmation = [(PKPeerPaymentPreferences *)self->_peerPaymentPreferences requiresConfirmation];
  tableView = [(PKPaymentPassDetailViewController *)self tableView];
  v8 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{objc_msgSend(pathCopy, "section")}];
  v17 = [tableView cellForRowAtIndexPath:v8];

  tableView2 = [(PKPaymentPassDetailViewController *)self tableView];
  v10 = MEMORY[0x1E696AC88];
  section = [pathCopy section];

  v12 = [v10 indexPathForRow:1 inSection:section];
  v13 = [tableView2 cellForRowAtIndexPath:v12];

  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_6;
    }

    v14 = 0;
    requiresConfirmation = 1;
    v15 = MEMORY[0x1E69BA108];
    v5 = 3;
  }

  else
  {
    requiresConfirmation = 0;
    v15 = MEMORY[0x1E69BA100];
    v14 = 3;
  }

  MEMORY[0x1BFB41980](*v15, 0);
  [v17 setAccessoryType:v14];
  [v13 setAccessoryType:v5];
LABEL_6:
  v16 = [(PKPeerPaymentPreferences *)self->_peerPaymentPreferences copy];
  [v16 setRequiresConfirmation:requiresConfirmation];
  [(PKPaymentPassDetailViewController *)self _updatePeerPaymentPreferencesWithNewPreferences:v16];
}

- (void)_didSelectPeerPaymentManualIdentityVerificationAtIndexPath:(id)path
{
  pathCopy = path;
  if (!self->_loadingPeerPaymentAccountActionIndexPath)
  {
    objc_storeStrong(&self->_loadingPeerPaymentAccountActionIndexPath, path);
    tableView = [(PKPaymentPassDetailViewController *)self tableView];
    v7 = [tableView cellForRowAtIndexPath:self->_loadingPeerPaymentAccountActionIndexPath];

    v8 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v8 startAnimating];
    [v7 setAccessoryView:v8];
    MEMORY[0x1BFB41980](*MEMORY[0x1E69BA150], 0);
    v9 = objc_alloc_init(MEMORY[0x1E69B8F08]);
    [v9 setVerificationContext:1];
    peerPaymentAccountResolutionController = self->_peerPaymentAccountResolutionController;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __96__PKPaymentPassDetailViewController__didSelectPeerPaymentManualIdentityVerificationAtIndexPath___block_invoke;
    v11[3] = &unk_1E8011D28;
    v11[4] = self;
    [(PKPeerPaymentAccountResolutionController *)peerPaymentAccountResolutionController presentFlowForAccountResolution:2 configuration:v9 completion:v11];
    [(PKPaymentPassDetailViewController *)self _reportPassDetailsAnalyticsForTappedRowTag:*MEMORY[0x1E69BB448] additionalAnalytics:0];
  }
}

void __96__PKPaymentPassDetailViewController__didSelectPeerPaymentManualIdentityVerificationAtIndexPath___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__PKPaymentPassDetailViewController__didSelectPeerPaymentManualIdentityVerificationAtIndexPath___block_invoke_2;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_didSelectPeerPaymentParticipantGradutionAtIndexPath:(id)path
{
  if (!self->_peerPaymentGraduationInProgress)
  {
    pathCopy = path;
    tableView = [(PKPaymentPassDetailViewController *)self tableView];
    v6 = [tableView cellForRowAtIndexPath:pathCopy];

    v7 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v7 startAnimating];
    [v6 setAccessoryView:v7];
    v8 = objc_alloc_init(MEMORY[0x1E69B8F08]);
    [v8 setGraduation:1];
    v9 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount state]== 1 && [(PKPeerPaymentAccount *)self->_peerPaymentAccount stage]== 3;
    if ([(PKPeerPaymentAccount *)self->_peerPaymentAccount isParticipantAccountLockedByOwner])
    {
      supportsGraduationWhileAssociatedAccountLocked = [(PKPeerPaymentAccount *)self->_peerPaymentAccount supportsGraduationWhileAssociatedAccountLocked];
    }

    else
    {
      supportsGraduationWhileAssociatedAccountLocked = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __90__PKPaymentPassDetailViewController__didSelectPeerPaymentParticipantGradutionAtIndexPath___block_invoke;
    aBlock[3] = &unk_1E8010970;
    aBlock[4] = self;
    v11 = _Block_copy(aBlock);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __90__PKPaymentPassDetailViewController__didSelectPeerPaymentParticipantGradutionAtIndexPath___block_invoke_2;
    v44[3] = &unk_1E8012300;
    v44[4] = self;
    v12 = v8;
    v45 = v12;
    v13 = v11;
    v46 = v13;
    v14 = _Block_copy(v44);
    v15 = v14;
    if (v9)
    {
      (*(v14 + 2))(v14);
    }

    else
    {
      v16 = MEMORY[0x1E69DC650];
      if (supportsGraduationWhileAssociatedAccountLocked)
      {
        v17 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentGra_0.isa);
        v18 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentGra_1.isa);
        v19 = [v16 alertControllerWithTitle:v17 message:v18 preferredStyle:0];

        popoverPresentationController = [v19 popoverPresentationController];
        [popoverPresentationController setSourceView:v6];

        v21 = MEMORY[0x1E69DC648];
        v22 = PKLocalizedPaymentString(&cfstr_Continue.isa);
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __90__PKPaymentPassDetailViewController__didSelectPeerPaymentParticipantGradutionAtIndexPath___block_invoke_5;
        v42[3] = &unk_1E8011248;
        v43 = v15;
        v23 = [v21 actionWithTitle:v22 style:0 handler:v42];
        [v19 addAction:v23];

        v24 = MEMORY[0x1E69DC648];
        v25 = PKLocalizedString(&cfstr_Cancel.isa);
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __90__PKPaymentPassDetailViewController__didSelectPeerPaymentParticipantGradutionAtIndexPath___block_invoke_6;
        v40[3] = &unk_1E8011248;
        v41 = v13;
        v26 = [v24 actionWithTitle:v25 style:1 handler:v40];
        [v19 addAction:v26];

        navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
        [navigationController presentViewController:v19 animated:1 completion:0];

        v28 = v43;
      }

      else
      {
        v29 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentFea.isa);
        v30 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentFea_0.isa);
        v19 = [v16 alertControllerWithTitle:v29 message:v30 preferredStyle:1];

        v31 = MEMORY[0x1E69DC648];
        v32 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
        v35 = MEMORY[0x1E69E9820];
        v36 = 3221225472;
        v37 = __90__PKPaymentPassDetailViewController__didSelectPeerPaymentParticipantGradutionAtIndexPath___block_invoke_7;
        v38 = &unk_1E8011248;
        v39 = v13;
        v33 = [v31 actionWithTitle:v32 style:0 handler:&v35];
        [v19 addAction:{v33, v35, v36, v37, v38}];

        navigationController2 = [(PKPaymentPassDetailViewController *)self navigationController];
        [navigationController2 presentViewController:v19 animated:1 completion:0];

        v28 = v39;
      }
    }
  }
}

void __90__PKPaymentPassDetailViewController__didSelectPeerPaymentParticipantGradutionAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) indexOfSectionIdentifier:@"PeerPaymentParticipantGraduation"];
  v3 = [*(a1 + 32) tableView];
  v4 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v2];
  v5 = [v3 cellForRowAtIndexPath:v4];

  [v5 setAccessoryView:0];
  *(*(a1 + 32) + 1792) = 0;
}

void __90__PKPaymentPassDetailViewController__didSelectPeerPaymentParticipantGradutionAtIndexPath___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 1696);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __90__PKPaymentPassDetailViewController__didSelectPeerPaymentParticipantGradutionAtIndexPath___block_invoke_3;
  v3[3] = &unk_1E8010AD8;
  v4 = *(a1 + 48);
  [v2 presentFlowForAccountResolution:2 configuration:v1 completion:v3];
}

void __90__PKPaymentPassDetailViewController__didSelectPeerPaymentParticipantGradutionAtIndexPath___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKPaymentPassDetailViewController__didSelectPeerPaymentParticipantGradutionAtIndexPath___block_invoke_4;
  block[3] = &unk_1E8010B50;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_didSelectPeerPaymentAccountActionAtIndexPath:(id)path
{
  pathCopy = path;
  if (!self->_loadingPeerPaymentAccountActionIndexPath)
  {
    objc_storeStrong(&self->_loadingPeerPaymentAccountActionIndexPath, path);
    tableView = [(PKPaymentPassDetailViewController *)self tableView];
    v7 = [tableView cellForRowAtIndexPath:self->_loadingPeerPaymentAccountActionIndexPath];

    v8 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v8 startAnimating];
    [v7 setAccessoryView:v8];
    peerPaymentAccountResolution = self->_peerPaymentAccountResolution;
    if (peerPaymentAccountResolution == 3)
    {
      MEMORY[0x1BFB41980](*MEMORY[0x1E69BA110], 0);
      peerPaymentAccountResolution = self->_peerPaymentAccountResolution;
    }

    if (peerPaymentAccountResolution)
    {
      peerPaymentAccountResolutionController = self->_peerPaymentAccountResolutionController;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __83__PKPaymentPassDetailViewController__didSelectPeerPaymentAccountActionAtIndexPath___block_invoke;
      v11[3] = &unk_1E8011D28;
      v11[4] = self;
      [(PKPeerPaymentAccountResolutionController *)peerPaymentAccountResolutionController presentResolutionForCurrentAccountStateWithCompletion:v11];
    }
  }
}

void __83__PKPaymentPassDetailViewController__didSelectPeerPaymentAccountActionAtIndexPath___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__PKPaymentPassDetailViewController__didSelectPeerPaymentAccountActionAtIndexPath___block_invoke_2;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_didSelectPeerPaymentStatementAtIndexPath:(id)path
{
  MEMORY[0x1BFB41980](*MEMORY[0x1E69BA118], 0, path);
  v4 = PKPrimaryAppleAccountEmail();
  if (v4)
  {
    v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_7.isa);
    v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_8.isa, &stru_1F3BD5BF0.isa, v4);
    v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v5 message:v6 preferredStyle:1];
    v8 = MEMORY[0x1E69DC648];
    v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_9.isa);
    v10 = [v8 actionWithTitle:v9 style:1 handler:0];

    v11 = MEMORY[0x1E69DC648];
    v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_10.isa);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __79__PKPaymentPassDetailViewController__didSelectPeerPaymentStatementAtIndexPath___block_invoke;
    v18[3] = &unk_1E8011310;
    v18[4] = self;
    v19 = v4;
    v13 = [v11 actionWithTitle:v12 style:0 handler:v18];

    [v7 addAction:v10];
    [v7 addAction:v13];
    [v7 setPreferredAction:v13];
    PKAccessibilityIDAlertSet(v7, *MEMORY[0x1E69B9618]);
    [(PKPaymentPassDetailViewController *)self presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentEma.isa);
    v15 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentEma_6.isa);
    v16 = PKDisplayableErrorCustom();

    v17 = PKAlertForDisplayableErrorWithHandlers(v16, 0, 0, 0);
    [(PKPaymentPassDetailViewController *)self presentViewController:v17 animated:1 completion:0];
  }
}

void __79__PKPaymentPassDetailViewController__didSelectPeerPaymentStatementAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 1712) = 1;
  [*(a1 + 32) reloadSectionIdentifier:@"PeerPaymentStatement"];
  objc_initWeak(&location, *(a1 + 32));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(v4 + 2176);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__PKPaymentPassDetailViewController__didSelectPeerPaymentStatementAtIndexPath___block_invoke_2;
  v7[3] = &unk_1E8020AD8;
  objc_copyWeak(&v8, &location);
  [v6 peerPaymentRequestStatementForAccountIdentifier:0 emailAddress:v5 completion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __79__PKPaymentPassDetailViewController__didSelectPeerPaymentStatementAtIndexPath___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PKPaymentPassDetailViewController__didSelectPeerPaymentStatementAtIndexPath___block_invoke_3;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __79__PKPaymentPassDetailViewController__didSelectPeerPaymentStatementAtIndexPath___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    WeakRetained[1712] = 0;
    v3 = [MEMORY[0x1E69B8F28] displayableErrorForError:*(a1 + 32)];
    v4 = *(a1 + 32);
    if (*(a1 + 40))
    {
      if (!v4)
      {
        v9[1713] = 1;
LABEL_8:
        [v9 reloadSectionIdentifier:@"PeerPaymentStatement"];

        WeakRetained = v9;
        goto LABEL_9;
      }
    }

    else if (!v4)
    {
      v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentEma.isa);
      v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentEma_0.isa);
      v7 = PKDisplayableErrorCustom();

      v3 = v7;
    }

    v8 = PKAlertForDisplayableErrorWithHandlers(v3, 0, 0, 0);
    [v9 presentViewController:v8 animated:1 completion:0];

    goto LABEL_8;
  }

LABEL_9:
}

- (void)_didSelectFamilySharingAtIndexPath:(id)path
{
  v4 = [path row];
  if (v4 >= [(NSArray *)self->_sortedFamilyMemberRowModels count])
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Opening apple cash family sharing settings from back of pass", buf, 2u);
    }

    v11 = PKPeerPaymentGetAppleCashFamilySettingsSensitiveURLForAltDSID();
    PKOpenURL();
  }

  else
  {
    v5 = [(NSArray *)self->_sortedFamilyMemberRowModels objectAtIndex:v4];
    familyMember = [v5 familyMember];

    v6 = [(NSArray *)self->_sortedFamilyMemberRowModels objectAtIndex:v4];
    if (([v6 state] - 1) <= 2)
    {
      v7 = [[PKPeerPaymentAssociatedAccountPresentationContext alloc] initWithPKFamilyMember:familyMember options:0];
      peerPaymentAssociatedAccountsController = self->_peerPaymentAssociatedAccountsController;
      navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
      [(PKPeerPaymentAssociatedAccountsController *)peerPaymentAssociatedAccountsController presentAssociatedAccountsFlowWithPresentationContext:v7 fromNavigationController:navigationController];
    }
  }
}

- (void)_didSelectBalanceOrCommutePlanCellAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(PKPaymentPassDetailViewController *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];

  v6 = [pathCopy row];
  v7 = [(NSArray *)self->_displayableBalanceFields count];
  if (v6 >= v7)
  {
    if (v6 - v7 >= 0)
    {

      [(PKPaymentPassDetailViewController *)self _didSelectCommutePlanAtRowIndex:v6 - v7];
    }
  }

  else
  {

    [(PKPaymentPassDetailViewController *)self _didSelectBalanceAtRowIndex:v6];
  }
}

- (void)_didSelectBalanceAtRowIndex:(int64_t)index
{
  v5 = [(PKPaymentPassDetailViewController *)self _balanceForRow:?];
  v6 = [(PKPaymentPassDetailViewController *)self _topUpActionForRow:index];
  objc_initWeak(&location, self);
  if (objc_opt_respondsToSelector())
  {
    paymentServiceDataProvider = self->_paymentServiceDataProvider;
    pass = self->_pass;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__PKPaymentPassDetailViewController__didSelectBalanceAtRowIndex___block_invoke;
    v9[3] = &unk_1E8026390;
    objc_copyWeak(&v13, &location);
    v10 = v5;
    selfCopy = self;
    v12 = v6;
    [(PKPaymentDataProvider *)paymentServiceDataProvider balanceReminderThresholdForBalance:v10 pass:pass withCompletion:v9];

    objc_destroyWeak(&v13);
  }

  objc_destroyWeak(&location);
}

void __65__PKPaymentPassDetailViewController__didSelectBalanceAtRowIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PKPaymentPassDetailViewController__didSelectBalanceAtRowIndex___block_invoke_2;
  block[3] = &unk_1E8011E88;
  objc_copyWeak(&v13, (a1 + 56));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v12 = v6;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v13);
}

void __65__PKPaymentPassDetailViewController__didSelectBalanceAtRowIndex___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = *(a1 + 32);
    v4 = [PKBalanceDetailsViewController alloc];
    if (v3)
    {
      v5 = [(PKBalanceDetailsViewController *)v4 initWithBalance:*(a1 + 32) forPass:*(*(a1 + 40) + 1088) balanceReminder:*(a1 + 48) associatedAction:*(a1 + 56) paymentDataProvider:*(*(a1 + 40) + 2152) webService:*(*(a1 + 40) + 2168) style:*(*(a1 + 40) + 2128) > 1uLL];
    }

    else
    {
      v6 = *(a1 + 40);
      v5 = [(PKBalanceDetailsViewController *)v4 initWithTransitPassProperties:v6[163] forPass:v6[136] balanceReminder:*(a1 + 48) associatedAction:*(a1 + 56) paymentDataProvider:v6[269] webService:v6[271] style:v6[266] > 1uLL];
    }

    v7 = v5;
    [(PKBalanceDetailsViewController *)v5 setDelegate:*(a1 + 40)];
    v8 = [*(a1 + 40) navigationController];
    if ([v8 pk_settings_useStateDrivenNavigation])
    {
      [v8 pk_settings_pushViewController:v7];
    }

    else
    {
      [v8 pushViewController:v7 animated:1];
    }

    WeakRetained = v9;
  }
}

- (id)_actionForCommutePlan:(id)plan
{
  identifier = [plan identifier];
  v4 = PKRenewActionForPaymentPassAndIdentifier();

  return v4;
}

- (BOOL)_commutePlanIsSelectable:(id)selectable action:(id)action
{
  selectableCopy = selectable;
  actionCopy = action;
  v7 = actionCopy || [selectableCopy hasDisplayableInformation];

  return v7;
}

- (void)_didSelectCommutePlanAtRowIndex:(int64_t)index
{
  v4 = [(NSArray *)self->_commutePlans objectAtIndex:index];
  v5 = [(PKPaymentPassDetailViewController *)self _actionForCommutePlan:v4];
  if ([(PKPaymentPassDetailViewController *)self _commutePlanIsSelectable:v4 action:v5])
  {
    v6 = [[PKCommutePlanDetailsViewController alloc] initWithCommutePlan:v4 associatedAction:v5 forPass:self->_pass paymentDataProvider:self->_paymentServiceDataProvider webService:self->_webService style:self->_detailViewStyle];
    if (v6)
    {
      objc_initWeak(&location, self);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __69__PKPaymentPassDetailViewController__didSelectCommutePlanAtRowIndex___block_invoke;
      v7[3] = &unk_1E80113B0;
      objc_copyWeak(&v9, &location);
      v8 = v6;
      [(PKCommutePlanDetailsViewController *)v8 preflightWithCompletion:v7];

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }
}

void __69__PKPaymentPassDetailViewController__didSelectCommutePlanAtRowIndex___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && a2)
  {
    v8 = WeakRetained;
    v5 = [WeakRetained navigationController];
    v6 = [v5 pk_settings_useStateDrivenNavigation];
    v7 = *(a1 + 32);
    if (v6)
    {
      [v5 pk_settings_pushViewController:v7];
    }

    else
    {
      [v5 pushViewController:v7 animated:1];
    }

    WeakRetained = v8;
  }
}

- (void)_didSelectPassInGroupAtIndexPath:(id)path
{
  group = self->_group;
  pathCopy = path;
  passCount = [(PKGroup *)group passCount];
  v7 = [pathCopy row];

  if (v7 == passCount)
  {
    v8 = [[PKEditPassesNavigationController alloc] initWithExistingGroupsController:self->_groupsController specificGroup:self->_group isForWatch:self->_detailViewStyle == 2 delegate:0];
    [(PKPaymentPassDetailViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (void)_didSelectCardInfoCellAtIndexPath:(id)path
{
  pathCopy = path;
  if (PKStoreDemoModeEnabled())
  {
    _settingsExpressTransitURL = PKUIStoreDemoGatewayViewController();
    [(PKPaymentPassDetailViewController *)self presentViewController:_settingsExpressTransitURL animated:1 completion:0];
  }

  else
  {
    _rowIndexForExpressTransitSettingsCell = [(PKPaymentPassDetailViewController *)self _rowIndexForExpressTransitSettingsCell];
    if (_rowIndexForExpressTransitSettingsCell != [pathCopy row])
    {
      goto LABEL_11;
    }

    detailViewStyle = self->_detailViewStyle;
    if (detailViewStyle)
    {
      _settingsExpressTransitURL = [[PKExpressPassesViewController alloc] initWithPaymentDataProvider:self->_paymentServiceDataProvider controller:self->_expressPassController style:detailViewStyle != 1];
      paymentPasses = [(PKPassLibraryDataProvider *)self->_passLibraryDataProvider paymentPasses];
      [(PKExpressPassesViewController *)_settingsExpressTransitURL setPasses:paymentPasses];

      navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
      if ([navigationController pk_settings_useStateDrivenNavigation])
      {
        [navigationController pk_settings_pushViewController:_settingsExpressTransitURL];
      }

      else
      {
        [navigationController pushViewController:_settingsExpressTransitURL animated:1];
      }
    }

    else
    {
      _settingsExpressTransitURL = [(PKPaymentPassDetailViewController *)self _settingsExpressTransitURL];
      PKOpenURL();
    }
  }

LABEL_11:
}

- (void)_didSelectMerchantTokensCell
{
  merchantTokens = [(PKRetrieveMerchantTokensResponse *)self->_merchantTokensResponse merchantTokens];
  v4 = [merchantTokens count];

  if (v4)
  {
    if (_os_feature_enabled_impl())
    {
      merchantTokens2 = [(PKRetrieveMerchantTokensResponse *)self->_merchantTokensResponse merchantTokens];
      v7 = [(PKMerchantTokenUnifiedListViewControllerProvider *)self->_merchantTokenUnifiedListViewControllerProvider makeViewControllerInNavigationContextForPass:self->_pass withDelegate:self prefetchedMerchantTokens:merchantTokens2];
    }

    else
    {
      v7 = [[PKMerchantTokensViewController alloc] initWithPass:self->_pass merchantTokensResponse:self->_merchantTokensResponse];
      [(PKMerchantTokensViewController *)v7 setDelegate:self];
    }

    navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
    if ([navigationController pk_settings_useStateDrivenNavigation])
    {
      [navigationController pk_settings_pushViewController:v7];
    }

    else
    {
      [navigationController pushViewController:v7 animated:1];
    }
  }
}

- (id)_settingsExpressTransitURL
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"prefs:root=PASSBOOK&path="];
  [v3 appendString:*MEMORY[0x1E69BC5B8]];
  [v3 appendString:@"&"];
  [v3 appendString:*MEMORY[0x1E69BC668]];
  [v3 appendString:@"="];
  v4 = objc_alloc_init(MEMORY[0x1E696AD48]);
  uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  [v4 formUnionWithCharacterSet:uRLQueryAllowedCharacterSet];

  [v4 removeCharactersInString:@"="];
  uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
  v7 = [uniqueID stringByAddingPercentEncodingWithAllowedCharacters:v4];

  [v3 appendString:v7];
  v8 = [MEMORY[0x1E695DFF8] URLWithString:v3];

  return v8;
}

- (void)_didSelectInstallmentPlansAtIndexPath:(id)path
{
  creditDetails = [(PKAccount *)self->_account creditDetails];
  installmentPlans = [creditDetails installmentPlans];

  v5 = [installmentPlans count];
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = [PKTransactionHistoryViewController alloc];
      anyObject = [installmentPlans anyObject];
      v8 = [(PKTransactionHistoryViewController *)v6 initWithInstallmentPlan:anyObject transactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection account:self->_account accountUserCollection:self->_accountUserCollection physicalCards:self->_physicalCards];

      if (!v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = [[PKInstallmentPlansViewController alloc] initWithAccount:self->_account accountUserCollection:self->_accountUserCollection physicalCards:self->_physicalCards accountService:self->_accountService transactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection dataProvider:self->_paymentServiceDataProvider];
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
    if ([navigationController pk_settings_useStateDrivenNavigation])
    {
      [navigationController pk_settings_pushViewController:v8];
    }

    else
    {
      [navigationController pushViewController:v8 animated:1];
    }
  }

LABEL_10:
}

- (id)_installmentsPlanCellForTableView:(id)view atIndexPath:(id)path
{
  account = self->_account;
  viewCopy = view;
  creditDetails = [(PKAccount *)account creditDetails];
  installmentPlans = [creditDetails installmentPlans];
  v9 = [installmentPlans count];

  v10 = MEMORY[0x1E696AEC0];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
  v12 = [v10 stringWithFormat:@"%@", v11];

  v13 = PKLocalizedFeatureString();
  v14 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v13 detailText:v12 cellStyle:1 forTableView:viewCopy];

  [v14 setAccessoryType:1];
  PKAccessibilityIDCellSet(v14, *MEMORY[0x1E69B98A0]);

  return v14;
}

- (void)_didSelectAccountServiceBankAccountsAtIndexPath:(id)path
{
  pathCopy = path;
  if (PKStoreDemoModeEnabled())
  {
    v4 = PKUIStoreDemoGatewayViewController();
    [(PKPaymentPassDetailViewController *)self presentViewController:v4 animated:1 completion:0];
  }

  else if (![pathCopy row])
  {
    [(PKPaymentPassDetailViewController *)self presentBankAccounts];
  }
}

- (void)_didSelectAccountServiceMakeDefaultAtIndexPath:(id)path
{
  [(PKPaymentPassDetailViewController *)self presentMakeDefaultAtApple];
  v4 = *MEMORY[0x1E69BAA80];

  [(PKPaymentPassDetailViewController *)self _reportPassDetailsAnalyticsForTappedRowTag:v4 additionalAnalytics:0];
}

- (void)_didSelectAccountServiceRewardsDetailsAtIndexPath:(id)path
{
  pathCopy = path;
  v4 = -[PKPaymentPassDetailViewController _accountServiceRewardsRowForRowIndex:](self, "_accountServiceRewardsRowForRowIndex:", [pathCopy row]);
  if (v4 == 2)
  {
    [(PKPaymentPassDetailViewController *)self _didSelectFixPeerPaymentAtIndexPath:pathCopy];
  }

  else
  {
    v5 = pathCopy;
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    [(PKPaymentPassDetailViewController *)self _didSelectRedeemAtIndexPath:pathCopy];
  }

  v5 = pathCopy;
LABEL_6:
}

- (void)_didSelectAccountServicePhysicalCardAtIndexPath:(id)path
{
  pathCopy = path;
  if (PKStoreDemoModeEnabled())
  {
    primaryPhysicalCard = PKUIStoreDemoGatewayViewController();
    [(PKPaymentPassDetailViewController *)self presentViewController:primaryPhysicalCard animated:1 completion:0];
LABEL_3:

    goto LABEL_4;
  }

  v6 = -[PKPaymentPassDetailViewController _accountServicePhysicalCardRowForRowIndex:](self, "_accountServicePhysicalCardRowForRowIndex:", [pathCopy row]);
  if (v6 <= 1)
  {
    if (!v6)
    {
      primaryPhysicalCard = [(PKPhysicalCardController *)self->_physicalCardController primaryPhysicalCard];
      if (primaryPhysicalCard && !self->_loadingEnableDisablePhysicalCard)
      {
        if (!self->_inUseAssertion)
        {
          v12 = MEMORY[0x1E695FBE0];
          v13 = PKPassKitCoreBundle();
          v14 = [v12 newAssertionForBundle:v13 withReason:@"Enable/disable physical card"];
          inUseAssertion = self->_inUseAssertion;
          self->_inUseAssertion = v14;
        }

        self->_loadingEnableDisablePhysicalCard = 1;
        if ([(PKPhysicalCardController *)self->_physicalCardController primaryPhysicalCardEnabled])
        {
          [(PKPhysicalCardActionController *)self->_physicalCardActionController disablePhysicalCard:primaryPhysicalCard];
        }

        else
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __85__PKPaymentPassDetailViewController__didSelectAccountServicePhysicalCardAtIndexPath___block_invoke;
          v16[3] = &unk_1E8013D88;
          v16[4] = self;
          v17 = primaryPhysicalCard;
          [(PKPaymentPassDetailViewController *)self _presentPhysicalCardPasswordAuthorization:v16];
        }
      }

      goto LABEL_3;
    }

    if (v6 == 1)
    {
      [(PKPaymentPassDetailViewController *)self presentActivatePhysicalCard];
    }
  }

  else
  {
    switch(v6)
    {
      case 2:
        [(PKPaymentPassDetailViewController *)self presentOrderPhysicalCard];
        break;
      case 3:
        v7 = [PKReplacePhysicalCardReasonViewController alloc];
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

        primaryPhysicalCard = [(PKReplacePhysicalCardReasonViewController *)v7 initWithPhysicalCardController:self->_physicalCardController context:v10];
        v11 = [[PKNavigationController alloc] initWithRootViewController:primaryPhysicalCard];
        [(PKPaymentPassDetailViewController *)self presentViewController:v11 animated:1 completion:0];

        goto LABEL_3;
      case 4:
        [(PKPaymentPassDetailViewController *)self presentTrackPhysicalCard];
        break;
    }
  }

LABEL_4:
}

void __85__PKPaymentPassDetailViewController__didSelectAccountServicePhysicalCardAtIndexPath___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v8 = v5;
    [*(v6 + 1616) enablePhysicalCard:*(a1 + 40)];
  }

  else
  {
    *(v6 + 1634) = 0;
    if (!v5)
    {
      goto LABEL_6;
    }

    v8 = v5;
    v7 = PKAlertForDisplayableErrorWithHandlers(v5, 0, 0, 0);
    [*(a1 + 32) presentViewController:v7 animated:1 completion:0];
  }

  v5 = v8;
LABEL_6:
}

- (void)_presentPhysicalCardPasswordAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  if (authorizationCopy)
  {
    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    _appleAccountInformation = [mEMORY[0x1E69B8EF8] _appleAccountInformation];

    v7 = objc_alloc_init(MEMORY[0x1E698DE80]);
    [v7 setPresentingViewController:self];
    appleID = [_appleAccountInformation appleID];
    [v7 setUsername:appleID];

    aaAlternateDSID = [_appleAccountInformation aaAlternateDSID];
    [v7 setAltDSID:aaAlternateDSID];

    [v7 setIsUsernameEditable:0];
    [v7 setShouldPromptForPasswordOnly:1];
    [v7 setAuthenticationType:2];
    [(PKAccount *)self->_account feature];
    appleID2 = [_appleAccountInformation appleID];
    v11 = PKLocalizedFeatureString();
    [v7 setReason:{v11, appleID2}];

    v12 = objc_alloc_init(MEMORY[0x1E698DCC0]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__PKPaymentPassDetailViewController__presentPhysicalCardPasswordAuthorization___block_invoke;
    v13[3] = &unk_1E80208E8;
    v13[4] = self;
    v14 = authorizationCopy;
    [v12 authenticateWithContext:v7 completion:v13];
  }
}

void __79__PKPaymentPassDetailViewController__presentPhysicalCardPasswordAuthorization___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__PKPaymentPassDetailViewController__presentPhysicalCardPasswordAuthorization___block_invoke_2;
  v10[3] = &unk_1E8014760;
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __79__PKPaymentPassDetailViewController__presentPhysicalCardPasswordAuthorization___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) allKeys];
    v4 = *(a1 + 40);
    v16 = 138412546;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Request for user authentication returned result with keys: %@ error: %@", &v16, 0x16u);
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    v9 = *(*(a1 + 56) + 16);
    goto LABEL_8;
  }

  v6 = [v5 domain];
  v7 = *MEMORY[0x1E698DB28];
  if ([v6 isEqual:*MEMORY[0x1E698DB28]])
  {
    v8 = [*(a1 + 40) code];

    if (v8 == -7003)
    {
      v9 = *(*(a1 + 56) + 16);
LABEL_8:
      v9();
      return;
    }
  }

  else
  {
  }

  v10 = [*(a1 + 40) domain];
  if ([v10 isEqual:v7])
  {
    v11 = [*(a1 + 40) code];

    if (v11 == -7005)
    {
      v12 = PKLocalizedPaymentString(&cfstr_CouldNotConnec.isa);
      v13 = PKLocalizedPaymentString(&cfstr_CouldNotConnec_0.isa);
      v14 = PKDisplayableErrorCustom();

      (*(*(a1 + 56) + 16))();
      return;
    }
  }

  else
  {
  }

  v15 = +[PKAccountFlowController displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:](PKAccountFlowController, "displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:", *(a1 + 40), [*(a1 + 48) _accountFeature], 0, 0);
  (*(*(a1 + 56) + 16))();
}

- (void)_didSelectAccountServiceCardNumbersAtIndexPath:(id)path
{
  [(PKPaymentPassDetailViewController *)self presentCardNumbers];
  v4 = *MEMORY[0x1E69BA4B0];

  [(PKPaymentPassDetailViewController *)self _reportPassDetailsAnalyticsForTappedRowTag:v4 additionalAnalytics:0];
}

- (void)_didSelectServicingWalletLink
{
  uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
  PKOpenPassDetails();
}

- (void)_doneLoadingPeerPaymentAccountAction
{
  tableView = [(PKPaymentPassDetailViewController *)self tableView];
  v5 = [tableView cellForRowAtIndexPath:self->_loadingPeerPaymentAccountActionIndexPath];

  [v5 setAccessoryView:0];
  loadingPeerPaymentAccountActionIndexPath = self->_loadingPeerPaymentAccountActionIndexPath;
  self->_loadingPeerPaymentAccountActionIndexPath = 0;
}

- (void)presentAddCard
{
  v3 = [PKPeerPaymentActionController startProvisionToAddDebitWithNetworkAllowlist:0];
  [(PKPaymentPassDetailViewController *)self presentViewController:v3 animated:1 completion:0];
}

- (void)presentIdentityVerification
{
  if (PKDeviceSupportsPeerPaymentIdentityVerification())
  {
    peerPaymentAccount = self->_peerPaymentAccount;
    if (peerPaymentAccount && self->_pass)
    {
      associatedPassUniqueID = [(PKPeerPaymentAccount *)peerPaymentAccount associatedPassUniqueID];
      uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
      v6 = associatedPassUniqueID;
      v7 = uniqueID;
      v8 = v7;
      if (v6 == v7)
      {

        goto LABEL_17;
      }

      if (v6)
      {
        v9 = v7 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
      }

      else
      {
        v10 = [v6 isEqualToString:v7];

        if (v10)
        {
LABEL_17:
          if ([(PKPaymentPassDetailViewController *)self _shouldShowAccountActions])
          {
            if (self->_peerPaymentAccountResolution == 2)
            {
              v11 = 1;
              goto LABEL_26;
            }
          }

          else if (PKPeerPaymentAccountCanPerformManualIdentityVerification())
          {
            v11 = 46;
LABEL_26:
            v15 = PKPassDetailSectionTypeToString(v11);
            v16 = [(PKDynamicTableViewController *)self hasSectionForSectionIdentifier:v15];

            if (v16)
            {
              v17 = MEMORY[0x1E696AC88];
              v18 = PKPassDetailSectionTypeToString(v11);
              v19 = [v17 indexPathForRow:0 inSection:{-[PKDynamicTableViewController indexOfSectionIdentifier:](self, "indexOfSectionIdentifier:", v18)}];

              [(PKPaymentPassDetailViewController *)self _didSelectPeerPaymentManualIdentityVerificationAtIndexPath:v19];
              goto LABEL_12;
            }
          }

          v12 = PKLogFacilityTypeGetObject();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_23;
          }

          v21 = 0;
          v13 = "Identity Verification not required";
          v14 = &v21;
          goto LABEL_22;
        }
      }
    }

    v12 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
LABEL_23:

      return;
    }

    *buf = 0;
    v13 = "Will not present peer payment identity verification: peer payment pass is not being presented";
    v14 = buf;
LABEL_22:
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
    goto LABEL_23;
  }

  v19 = PKCreateAlertControllerForPeerPaymentIdentityVerificationNotSupported(0);
  [(PKPaymentPassDetailViewController *)self presentViewController:v19 animated:1 completion:0];
LABEL_12:
}

- (void)presentISO18013Details
{
  v4 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[PKDynamicTableViewController indexOfSectionIdentifier:](self, "indexOfSectionIdentifier:", @"IdentityDocumentDetails"}];
  tableView = [(PKPaymentPassDetailViewController *)self tableView];
  [(PKPaymentPassDetailViewController *)self didSelectIdentityDocumentCellInTableView:tableView atIndexPath:v4];
}

- (void)presentTermsAcceptance
{
  peerPaymentAccount = self->_peerPaymentAccount;
  if (peerPaymentAccount && self->_pass)
  {
    associatedPassUniqueID = [(PKPeerPaymentAccount *)peerPaymentAccount associatedPassUniqueID];
    uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
    v6 = associatedPassUniqueID;
    v7 = uniqueID;
    v8 = v7;
    if (v6 == v7)
    {

      goto LABEL_12;
    }

    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
    }

    else
    {
      v10 = [v6 isEqualToString:v7];

      if (v10)
      {
LABEL_12:
        termsURL = [(PKPeerPaymentAccount *)self->_peerPaymentAccount termsURL];
        termsIdentifier = [(PKPeerPaymentAccount *)self->_peerPaymentAccount termsIdentifier];
        associatedPassUniqueID2 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
        if (termsURL)
        {
          v14 = termsIdentifier == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          v15 = [PKPeerPaymentTermsController alloc];
          mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
          v17 = [(PKPeerPaymentTermsController *)v15 initWithTermsURL:termsURL termsIdentifier:termsIdentifier passUniqueID:associatedPassUniqueID2 webService:mEMORY[0x1E69B9020]];

          objc_initWeak(location, self);
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __59__PKPaymentPassDetailViewController_presentTermsAcceptance__block_invoke;
          v18[3] = &unk_1E8012C78;
          objc_copyWeak(&v19, location);
          [(PKPeerPaymentTermsController *)v17 presentTermsOverController:self showInterstitialViewController:0 withCompletionHandler:v18];
          objc_destroyWeak(&v19);
          objc_destroyWeak(location);
        }

        goto LABEL_20;
      }
    }
  }

  termsURL = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(termsURL, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(location[0]) = 0;
    _os_log_impl(&dword_1BD026000, termsURL, OS_LOG_TYPE_DEFAULT, "Will not present peer payment terms for acceptance: peer payment pass is not being presented", location, 2u);
  }

LABEL_20:
}

void __59__PKPaymentPassDetailViewController_presentTermsAcceptance__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if ((a2 - 1) >= 2)
    {
      if (!a2)
      {
        v7 = [MEMORY[0x1E69B8F28] displayableErrorForError:v9];
        v8 = PKAlertForDisplayableErrorWithHandlers(v7, 0, 0, 0);

        [v6 presentViewController:v8 animated:1 completion:0];
      }
    }

    else
    {
      [WeakRetained dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (id)_accountResolutionController
{
  resolutionController = self->_resolutionController;
  if (!resolutionController)
  {
    v4 = [[PKAccountServiceAccountResolutionController alloc] initWithAccount:self->_account accountUserCollection:self->_accountUserCollection transactionSourceCollection:self->_transactionSourceCollection];
    v5 = self->_resolutionController;
    self->_resolutionController = v4;

    [(PKAccountServiceAccountResolutionController *)self->_resolutionController setDelegate:self];
    resolutionController = self->_resolutionController;
  }

  return resolutionController;
}

- (void)presentSchedulePayments
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__PKPaymentPassDetailViewController_presentSchedulePayments__block_invoke;
  v3[3] = &unk_1E80110E0;
  objc_copyWeak(&v4, &location);
  v3[4] = self;
  [(PKPaymentPassDetailViewController *)self executeAfterContentIsLoaded:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __60__PKPaymentPassDetailViewController_presentSchedulePayments__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) view];
    v4 = [v3 window];
    v5 = [v4 windowScene];
    v6 = [v5 _sceneIdentifier];

    v7 = WeakRetained[230];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__PKPaymentPassDetailViewController_presentSchedulePayments__block_invoke_2;
    v8[3] = &unk_1E8011FE8;
    objc_copyWeak(&v9, (a1 + 40));
    [v7 presentSchedulePayments:v6 completion:v8];
    objc_destroyWeak(&v9);
  }
}

void __60__PKPaymentPassDetailViewController_presentSchedulePayments__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained presentViewController:v5 animated:1 completion:0];
  }
}

- (void)presentCardNumbers
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to present virtual card and card numbers", buf, 2u);
  }

  if (PKStoreDemoModeEnabled())
  {
    v4 = PKUIStoreDemoGatewayViewController();
    [(PKPaymentPassDetailViewController *)self presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    objc_initWeak(buf, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__PKPaymentPassDetailViewController_presentCardNumbers__block_invoke;
    v5[3] = &unk_1E80110E0;
    objc_copyWeak(&v6, buf);
    v5[4] = self;
    [(PKPaymentPassDetailViewController *)self executeAfterContentIsLoaded:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

void __55__PKPaymentPassDetailViewController_presentCardNumbers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained[203] isLoadingVirtualCard] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{objc_msgSend(v3, "indexOfSectionIdentifier:", @"AccountServiceCardNumbers"}];
    v5 = [v3 tableView];
    v6 = [v5 cellForRowAtIndexPath:v4];

    [v3 _showSpinner:1 inCell:v6 overrideTextColor:0];
    v7 = [v3[275] creditDetails];
    v8 = [v7 virtualCards];
    v9 = [v8 anyObject];

    v10 = [MEMORY[0x1E69B8EF8] sharedService];
    LODWORD(v8) = PKVirtualCardEnabledWithWebService();

    if (v8)
    {
      v11 = [MEMORY[0x1E69B9338] cardsForPaymentPass:*(*(a1 + 32) + 1088)];
      v12 = [v11 anyObject];

      v9 = v12;
    }

    v13 = [PKAccountCardNumbersPresenter alloc];
    v14 = [v3[201] hasExpiredPhysicalCardOnly];
    v15 = v3[201];
    if (v14)
    {
      [v15 expiredPhysicalCard];
    }

    else
    {
      [v15 primaryPhysicalCard];
    }
    v16 = ;
    v17 = *(*(a1 + 32) + 2128);
    v18 = 3;
    if (v17 != 1)
    {
      v18 = 0;
    }

    if (v17 == 2)
    {
      v19 = 4;
    }

    else
    {
      v19 = v18;
    }

    v20 = [(PKAccountCardNumbersPresenter *)v13 initWithVirtualCard:v9 physicalCard:v16 account:v3[275] peerPaymentAccount:v3[193] pass:v3[136] context:v19];
    v21 = v3[203];
    v3[203] = v20;

    v22 = v3[203];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __55__PKPaymentPassDetailViewController_presentCardNumbers__block_invoke_2;
    v24[3] = &unk_1E801CE58;
    objc_copyWeak(&v26, (a1 + 40));
    v23 = v4;
    v25 = v23;
    [v22 presentCardNumbersWithCompletion:v24];

    objc_destroyWeak(&v26);
  }
}

void __55__PKPaymentPassDetailViewController_presentCardNumbers__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 40));
  v4 = objc_loadWeakRetained(&to);

  if (v4)
  {
    v5 = objc_loadWeakRetained(&to);
    v6 = [v5 tableView];
    v7 = [v6 cellForRowAtIndexPath:*(a1 + 32)];

    v8 = objc_loadWeakRetained(&to);
    [v8 _showSpinner:0 inCell:v7 overrideTextColor:0];

    if (v3)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v10 = objc_loadWeakRetained(&to);
      v11 = v10;
      if (isKindOfClass)
      {
        [v10 presentViewController:v3 animated:1 completion:0];
      }

      else
      {
        v12 = [v10 navigationController];

        if ([v12 pk_settings_useStateDrivenNavigation])
        {
          [v12 pk_settings_pushViewController:v3];
        }

        else
        {
          [v12 pushViewController:v3 animated:1];
        }

        v11 = v12;
      }
    }
  }

  objc_destroyWeak(&to);
}

- (void)presentBalanceDetails
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__PKPaymentPassDetailViewController_presentBalanceDetails__block_invoke;
  v3[3] = &unk_1E80110E0;
  objc_copyWeak(&v4, &location);
  v3[4] = self;
  [(PKPaymentPassDetailViewController *)self executeAfterContentIsLoaded:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __58__PKPaymentPassDetailViewController_presentBalanceDetails__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [[PKCreditBalanceDetailsViewController alloc] initWithStyle:1 transactionSourceCollection:v5[273] familyCollection:v5[280] webService:v5[271] account:v5[275] accountUserCollection:v5[262] physicalCards:v5[279] statement:0 previousStatements:0];
    v4 = [*(a1 + 32) navigationController];
    if ([v4 pk_settings_useStateDrivenNavigation])
    {
      [v4 pk_settings_pushViewController:v3];
    }

    else
    {
      [v4 pushViewController:v3 animated:1];
    }

    WeakRetained = v5;
  }
}

- (void)presentBankAccounts
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__PKPaymentPassDetailViewController_presentBankAccounts__block_invoke;
  v3[3] = &unk_1E8010998;
  objc_copyWeak(&v4, &location);
  [(PKPaymentPassDetailViewController *)self executeAfterContentIsLoaded:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __56__PKPaymentPassDetailViewController_presentBankAccounts__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && (WeakRetained[1632] & 1) == 0)
  {
    WeakRetained[1632] = 1;
    v4 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{objc_msgSend(WeakRetained, "indexOfSectionIdentifier:", @"AccountServiceBankAccounts"}];
    v5 = [v3 tableView];
    v6 = [v5 cellForRowAtIndexPath:v4];

    [v3 _showSpinner:1 inCell:v6 overrideTextColor:0];
    v7 = [PKAccountBankAccountsViewController alloc];
    v8 = v3[266];
    v9 = 3;
    if (v8 != 1)
    {
      v9 = 0;
    }

    if (v8 == 2)
    {
      v10 = 4;
    }

    else
    {
      v10 = v9;
    }

    v11 = [(PKAccountBankAccountsViewController *)v7 initWithAccount:v3[275] paymentWebService:v3[271] context:v10];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__PKPaymentPassDetailViewController_presentBankAccounts__block_invoke_2;
    v13[3] = &unk_1E8013B00;
    objc_copyWeak(&v15, (a1 + 32));
    v12 = v11;
    v14 = v12;
    [(PKAccountBankAccountsViewController *)v12 preflightWithCompletion:v13];

    objc_destroyWeak(&v15);
  }
}

void __56__PKPaymentPassDetailViewController_presentBankAccounts__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__PKPaymentPassDetailViewController_presentBankAccounts__block_invoke_3;
  v7[3] = &unk_1E8013AD8;
  objc_copyWeak(&v10, (a1 + 40));
  v11 = a2;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);

  objc_destroyWeak(&v10);
}

void __56__PKPaymentPassDetailViewController_presentBankAccounts__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v3 = [WeakRetained[173] objectAtIndex:{objc_msgSend(WeakRetained[188], "selectedSegmentIndex")}];
    v4 = [v3 unsignedIntegerValue];

    if (!v4)
    {
      v5 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{objc_msgSend(v13, "indexOfSectionIdentifier:", @"AccountServiceBankAccounts"}];
      v6 = [v13 tableView];
      v7 = [v6 cellForRowAtIndexPath:v5];

      [v13 _showSpinner:0 inCell:v7 overrideTextColor:0];
    }

    v8 = *(a1 + 32);
    if (*(a1 + 56) != 1 || v8)
    {
      v9 = +[PKAccountFlowController displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:](PKAccountFlowController, "displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:", v8, [v13[275] feature], 0, 0);
      v12 = PKAlertForDisplayableErrorWithHandlers(v9, 0, 0, 0);
      [v13 presentViewController:v12 animated:1 completion:0];
    }

    else
    {
      v9 = [v13 navigationController];
      v10 = [v9 pk_settings_useStateDrivenNavigation];
      v11 = *(a1 + 40);
      if (v10)
      {
        [v9 pk_settings_pushViewController:v11];
      }

      else
      {
        [v9 pushViewController:v11 animated:1];
      }
    }

    WeakRetained = v13;
    *(v13 + 1632) = 0;
  }
}

- (void)presentAccountUserDetailsForAccountUserAltDSID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __84__PKPaymentPassDetailViewController_presentAccountUserDetailsForAccountUserAltDSID___block_invoke;
  v6[3] = &unk_1E8011828;
  objc_copyWeak(&v8, &location);
  v6[4] = self;
  v5 = dCopy;
  v7 = v5;
  [(PKPaymentPassDetailViewController *)self executeAfterContentIsLoaded:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __84__PKPaymentPassDetailViewController_presentAccountUserDetailsForAccountUserAltDSID___block_invoke(uint64_t a1)
{
  v1 = a1;
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    goto LABEL_26;
  }

  if (([*(v1 + 32) shouldMapSection:10] & 1) == 0)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Not presenting account user details as section is not visible", buf, 2u);
    }

    goto LABEL_25;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = *(*(v1 + 32) + 2248);
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (!v4)
  {
    goto LABEL_25;
  }

  v5 = v4;
  v18 = WeakRetained;
  v6 = *v21;
LABEL_5:
  v7 = 0;
  while (1)
  {
    if (*v21 != v6)
    {
      objc_enumerationMutation(v3);
    }

    v8 = *(*(&v20 + 1) + 8 * v7);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_17;
    }

    v9 = [v8 accountUser];
    v10 = [v9 altDSID];
    v11 = v1;
    v12 = *(v1 + 40);
    v13 = v10;
    v14 = v12;
    v15 = v14;
    if (v13 == v14)
    {
      break;
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

      v1 = v11;
    }

    else
    {
      v19 = [v13 isEqualToString:v14];

      v1 = v11;
      if (v19)
      {
        goto LABEL_23;
      }
    }

LABEL_17:
    if (v5 == ++v7)
    {
      v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v5)
      {
        goto LABEL_5;
      }

      WeakRetained = v18;
      goto LABEL_25;
    }
  }

  v1 = v11;
LABEL_23:
  v17 = v8;

  WeakRetained = v18;
  if (!v17)
  {
    goto LABEL_26;
  }

  [*(v1 + 32) presentAccountUserDetailsForRowModel:v17];
  v3 = v17;
LABEL_25:

LABEL_26:
}

- (void)presentAccountUserInvitationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__PKPaymentPassDetailViewController_presentAccountUserInvitationWithIdentifier___block_invoke;
  v6[3] = &unk_1E8011828;
  objc_copyWeak(&v8, &location);
  v6[4] = self;
  v5 = identifierCopy;
  v7 = v5;
  [(PKPaymentPassDetailViewController *)self executeAfterContentIsLoaded:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __80__PKPaymentPassDetailViewController_presentAccountUserInvitationWithIdentifier___block_invoke(uint64_t a1)
{
  v1 = a1;
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    goto LABEL_26;
  }

  if (([*(v1 + 32) shouldMapSection:10] & 1) == 0)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Not presenting account user invitation as section is not visible", buf, 2u);
    }

    goto LABEL_25;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = *(*(v1 + 32) + 2248);
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (!v4)
  {
    goto LABEL_25;
  }

  v5 = v4;
  v18 = WeakRetained;
  v6 = *v21;
LABEL_5:
  v7 = 0;
  while (1)
  {
    if (*v21 != v6)
    {
      objc_enumerationMutation(v3);
    }

    v8 = *(*(&v20 + 1) + 8 * v7);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_17;
    }

    v9 = [v8 invitation];
    v10 = [v9 applicationIdentifier];
    v11 = v1;
    v12 = *(v1 + 40);
    v13 = v10;
    v14 = v12;
    v15 = v14;
    if (v13 == v14)
    {
      break;
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

      v1 = v11;
    }

    else
    {
      v19 = [v13 isEqualToString:v14];

      v1 = v11;
      if (v19)
      {
        goto LABEL_23;
      }
    }

LABEL_17:
    if (v5 == ++v7)
    {
      v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v5)
      {
        goto LABEL_5;
      }

      WeakRetained = v18;
      goto LABEL_25;
    }
  }

  v1 = v11;
LABEL_23:
  v17 = v8;

  WeakRetained = v18;
  if (!v17)
  {
    goto LABEL_26;
  }

  [*(v1 + 32) presentAccountUserInvitationForRowModel:v17];
  v3 = v17;
LABEL_25:

LABEL_26:
}

- (void)presentShareAccount
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__PKPaymentPassDetailViewController_presentShareAccount__block_invoke;
  v3[3] = &unk_1E8010998;
  objc_copyWeak(&v4, &location);
  [(PKPaymentPassDetailViewController *)self executeAfterContentIsLoaded:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __56__PKPaymentPassDetailViewController_presentShareAccount__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained presentAddAccountUser];
    WeakRetained = v2;
  }
}

- (void)presentMakeDefaultAtApple
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__PKPaymentPassDetailViewController_presentMakeDefaultAtApple__block_invoke;
  v3[3] = &unk_1E8010998;
  objc_copyWeak(&v4, &location);
  [(PKPaymentPassDetailViewController *)self executeAfterContentIsLoaded:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __62__PKPaymentPassDetailViewController_presentMakeDefaultAtApple__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v2 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:WeakRetained[271]];
    v3 = [objc_alloc(MEMORY[0x1E69B8350]) initWithAccount:v13[275]];
    [v3 setPaymentPass:v13[136]];
    v4 = [PKAccountFlowController alloc];
    v5 = v13[266];
    v6 = 3;
    if (v5 != 1)
    {
      v6 = 0;
    }

    if (v5 == 2)
    {
      v7 = 4;
    }

    else
    {
      v7 = v6;
    }

    v8 = [(PKAccountFlowController *)v4 initWithAccountCredential:v3 provisioningController:v2 setupDelegate:0 context:v7 operations:24];
    v9 = [(PKAccountFlowController *)v8 firstAccountViewController];
    v10 = [[PKNavigationController alloc] initWithRootViewController:v9];
    if (v13[266] == 2)
    {
      v11 = PKBridgeAppearanceGetAppearanceSpecifier();
      PKAppearanceApplyToContainer(v11, v10);
    }

    v12 = [v13 navigationController];
    [v12 presentViewController:v10 animated:1 completion:0];

    WeakRetained = v13;
  }
}

- (void)presentOrderPhysicalCard
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__PKPaymentPassDetailViewController_presentOrderPhysicalCard__block_invoke;
  v3[3] = &unk_1E8010998;
  objc_copyWeak(&v4, &location);
  [(PKPaymentPassDetailViewController *)self executeAfterContentIsLoaded:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __61__PKPaymentPassDetailViewController_presentOrderPhysicalCard__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && (WeakRetained[1633] & 1) == 0)
  {
    v3 = [WeakRetained tableView];
    v4 = [v2 indexOfSectionIdentifier:@"AccountServicePhysicalCard"];
    v5 = [v2 _rowIndexForAccountServicePhysicalCardRow:2];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:v4];
      [v3 scrollToRowAtIndexPath:v6 atScrollPosition:1 animated:1];
    }

    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v2[1633] = 1;
      [v2 reloadSection:19 updates:0];
      v7 = *(v2 + 201);
      v8 = *(v2 + 266);
      v9 = 3;
      if (v8 != 1)
      {
        v9 = 0;
      }

      if (v8 == 2)
      {
        v10 = 4;
      }

      else
      {
        v10 = v9;
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __61__PKPaymentPassDetailViewController_presentOrderPhysicalCard__block_invoke_2;
      v11[3] = &unk_1E801E0D8;
      v11[4] = v2;
      [v7 orderFlowViewControllerForReason:0 content:v10 completion:v11];
    }
  }
}

void __61__PKPaymentPassDetailViewController_presentOrderPhysicalCard__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PKPaymentPassDetailViewController_presentOrderPhysicalCard__block_invoke_3;
  aBlock[3] = &unk_1E8010970;
  aBlock[4] = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  if (v5)
  {
    v8 = [[PKNavigationController alloc] initWithRootViewController:v5];
    [(PKNavigationController *)v8 setModalPresentationStyle:2];
LABEL_5:
    [*(a1 + 32) presentViewController:v8 animated:1 completion:v7];

    goto LABEL_6;
  }

  if (v6)
  {
    v8 = PKAlertForDisplayableErrorWithHandlers(v6, 0, 0, 0);
    goto LABEL_5;
  }

LABEL_6:
}

- (void)presentReplacePhysicalCard
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__PKPaymentPassDetailViewController_presentReplacePhysicalCard__block_invoke;
  v3[3] = &unk_1E80110E0;
  objc_copyWeak(&v4, &location);
  v3[4] = self;
  [(PKPaymentPassDetailViewController *)self executeAfterContentIsLoaded:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __63__PKPaymentPassDetailViewController_presentReplacePhysicalCard__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && (WeakRetained[1635] & 1) == 0)
  {
    v4 = [WeakRetained tableView];
    v5 = [v3 indexOfSectionIdentifier:@"AccountServicePhysicalCard"];
    v6 = [v3 _rowIndexForAccountServicePhysicalCardRow:3];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:v5];
      [v4 scrollToRowAtIndexPath:v7 atScrollPosition:1 animated:1];
    }

    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v3[1635] = 1;
      [v3 reloadSection:19 updates:0];
      v8 = *(v3 + 201);
      v9 = *(v3 + 266);
      v10 = 3;
      if (v9 != 1)
      {
        v10 = 0;
      }

      if (v9 == 2)
      {
        v11 = 4;
      }

      else
      {
        v11 = v10;
      }

      v12 = [*(*(a1 + 32) + 1608) primaryPhysicalCard];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __63__PKPaymentPassDetailViewController_presentReplacePhysicalCard__block_invoke_2;
      v13[3] = &unk_1E80263B8;
      objc_copyWeak(&v14, (a1 + 40));
      [v8 replaceFlowViewControllerForReason:1 content:v11 currentPhysicalCard:v12 completion:v13];

      objc_destroyWeak(&v14);
    }
  }
}

void __63__PKPaymentPassDetailViewController_presentReplacePhysicalCard__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__PKPaymentPassDetailViewController_presentReplacePhysicalCard__block_invoke_3;
    aBlock[3] = &unk_1E8010970;
    aBlock[4] = WeakRetained;
    v9 = _Block_copy(aBlock);
    if (v5)
    {
      v10 = [[PKNavigationController alloc] initWithRootViewController:v5];
      [(PKNavigationController *)v10 setModalPresentationStyle:2];
    }

    else
    {
      if (!v6)
      {
LABEL_7:

        goto LABEL_8;
      }

      v10 = PKAlertForDisplayableErrorWithHandlers(v6, 0, 0, 0);
    }

    [v8 presentViewController:v10 animated:1 completion:v9];

    goto LABEL_7;
  }

LABEL_8:
}

- (void)presentActivatePhysicalCard
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__PKPaymentPassDetailViewController_presentActivatePhysicalCard__block_invoke;
  v3[3] = &unk_1E80110E0;
  objc_copyWeak(&v4, &location);
  v3[4] = self;
  [(PKPaymentPassDetailViewController *)self executeAfterContentIsLoaded:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __64__PKPaymentPassDetailViewController_presentActivatePhysicalCard__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v3 = [PKPhysicalCardManualActivationViewController alloc];
    v4 = [MEMORY[0x1E69B8400] sharedInstance];
    v5 = *(a1 + 32);
    v6 = *(v5 + 2200);
    v7 = *(v5 + 1088);
    v8 = [*(v5 + 1608) unactivatedPhysicalCard];
    v9 = [(PKPhysicalCardManualActivationViewController *)v3 initWithAccountService:v4 account:v6 accountUser:0 paymentPass:v7 physicalCard:v8 activationCode:0];

    v10 = [[PKNavigationController alloc] initWithRootViewController:v9];
    [v11 presentViewController:v10 animated:1 completion:0];

    WeakRetained = v11;
  }
}

- (void)presentTrackPhysicalCard
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__PKPaymentPassDetailViewController_presentTrackPhysicalCard__block_invoke;
  v3[3] = &unk_1E80110E0;
  objc_copyWeak(&v4, &location);
  v3[4] = self;
  [(PKPaymentPassDetailViewController *)self executeAfterContentIsLoaded:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __61__PKPaymentPassDetailViewController_presentTrackPhysicalCard__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [*(*(a1 + 32) + 1608) unactivatedPhysicalCard];
    v4 = [v3 shipmentTrackingURL];
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v6 = [v3 latestShippingActivity];
      v5 = [v6 shipmentTrackingURL];

      if (!v5)
      {
LABEL_6:

        WeakRetained = v7;
        goto LABEL_7;
      }
    }

    PKOpenURL();

    goto LABEL_6;
  }

LABEL_7:
}

- (void)showStatementDetailsWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__PKPaymentPassDetailViewController_showStatementDetailsWithIdentifier___block_invoke;
  v6[3] = &unk_1E80110E0;
  objc_copyWeak(&v8, &location);
  v5 = identifierCopy;
  v7 = v5;
  [(PKPaymentPassDetailViewController *)self executeAfterContentIsLoaded:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __72__PKPaymentPassDetailViewController_showStatementDetailsWithIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[270];
    v5 = [WeakRetained[275] accountIdentifier];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__PKPaymentPassDetailViewController_showStatementDetailsWithIdentifier___block_invoke_2;
    v6[3] = &unk_1E80263E0;
    v7 = *(a1 + 32);
    objc_copyWeak(&v8, (a1 + 40));
    [v4 creditStatementsForAccountIdentifier:v5 completion:v6];

    objc_destroyWeak(&v8);
  }
}

void __72__PKPaymentPassDetailViewController_showStatementDetailsWithIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__339;
    v16 = __Block_byref_object_dispose__340;
    v17 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__PKPaymentPassDetailViewController_showStatementDetailsWithIdentifier___block_invoke_3;
    v9[3] = &unk_1E8024BD8;
    v10 = *(a1 + 32);
    v11 = &v12;
    [v5 enumerateObjectsUsingBlock:v9];
    if (v13[5])
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __72__PKPaymentPassDetailViewController_showStatementDetailsWithIdentifier___block_invoke_4;
      v7[3] = &unk_1E801CB28;
      objc_copyWeak(&v8, (a1 + 40));
      v7[4] = &v12;
      dispatch_async(MEMORY[0x1E69E96A0], v7);
      objc_destroyWeak(&v8);
    }

    _Block_object_dispose(&v12, 8);
  }
}

void __72__PKPaymentPassDetailViewController_showStatementDetailsWithIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 identifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_7;
  }

  if (!v5 || !v6)
  {

    goto LABEL_9;
  }

  v8 = [v5 isEqualToString:v6];

  if (v8)
  {
LABEL_7:
    v9 = *(*(a1 + 40) + 8);
    v10 = v11;
    v5 = *(v9 + 40);
    *(v9 + 40) = v10;
LABEL_9:
  }
}

void __72__PKPaymentPassDetailViewController_showStatementDetailsWithIdentifier___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [[PKCreditBalanceDetailsViewController alloc] initWithStyle:1 transactionSourceCollection:v6[273] familyCollection:v6[280] webService:v6[271] account:v6[275] accountUserCollection:v6[262] physicalCards:v6[279] statement:0 previousStatements:0];
    v4 = [(PKCreditBalanceDetailsViewController *)v3 viewControllerForStatement:*(*(*(a1 + 32) + 8) + 40) style:1];
    v5 = [v6 navigationController];
    if ([v5 pk_settings_useStateDrivenNavigation])
    {
      [v5 pk_settings_pushViewController:v3];
      [v5 pk_settings_pushViewController:v4];
    }

    else
    {
      [v5 pushViewController:v3 animated:1];
      [v5 pushViewController:v4 animated:1];
    }

    WeakRetained = v6;
  }
}

- (void)presentBillPaymentWithConfig:(id)config
{
  configCopy = config;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__PKPaymentPassDetailViewController_presentBillPaymentWithConfig___block_invoke;
  v6[3] = &unk_1E8011828;
  objc_copyWeak(&v8, &location);
  v6[4] = self;
  v5 = configCopy;
  v7 = v5;
  [(PKPaymentPassDetailViewController *)self executeAfterContentIsLoaded:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __66__PKPaymentPassDetailViewController_presentBillPaymentWithConfig___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) didSelectMakePaymentWithConfig:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)presentInstallmentPlansForFeature:(unint64_t)feature
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__PKPaymentPassDetailViewController_presentInstallmentPlansForFeature___block_invoke;
  v4[3] = &unk_1E80110E0;
  objc_copyWeak(&v5, &location);
  v4[4] = self;
  [(PKPaymentPassDetailViewController *)self executeAfterContentIsLoaded:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __71__PKPaymentPassDetailViewController_presentInstallmentPlansForFeature___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[275];
    if (v4)
    {
      v20 = v3;
      v5 = [v4 creditDetails];
      v6 = [v5 installmentPlans];
      v7 = [v6 count];

      if (v7 == 1)
      {
        v8 = [v20[275] creditDetails];
        v9 = [v8 installmentPlans];
        v10 = [v9 allObjects];
        v11 = [v10 firstObject];

        if (!v11)
        {
LABEL_11:

          v3 = v20;
          goto LABEL_12;
        }

        v12 = *(a1 + 32);
        v13 = [v11 identifier];
        [v12 presentInstallmentPlanWithIdentifier:v13];
      }

      else
      {
        v11 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
        v14 = [PKInstallmentPlansViewController alloc];
        v15 = v20[275];
        v16 = v20[262];
        v17 = v20[279];
        v18 = [MEMORY[0x1E69B8400] sharedInstance];
        v13 = [(PKInstallmentPlansViewController *)v14 initWithAccount:v15 accountUserCollection:v16 physicalCards:v17 accountService:v18 transactionSourceCollection:v20[273] familyCollection:v20[280] dataProvider:v11];

        v19 = [v20 navigationController];
        if ([v19 pk_settings_useStateDrivenNavigation])
        {
          [v19 pk_settings_pushViewController:v13];
        }

        else
        {
          [v19 pushViewController:v13 animated:1];
        }
      }

      goto LABEL_11;
    }
  }

LABEL_12:
}

- (void)presentInstallmentPlanWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __74__PKPaymentPassDetailViewController_presentInstallmentPlanWithIdentifier___block_invoke;
    v5[3] = &unk_1E80110E0;
    objc_copyWeak(&v7, &location);
    v6 = identifierCopy;
    [(PKPaymentPassDetailViewController *)self executeAfterContentIsLoaded:v5];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __74__PKPaymentPassDetailViewController_presentInstallmentPlanWithIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[275];
    if (v4)
    {
      v10 = v3;
      v5 = [v4 creditDetails];

      v3 = v10;
      if (v5)
      {
        v6 = [v10[275] creditDetails];
        v7 = [v6 installmentPlanWithIdentifier:*(a1 + 32)];

        if (v7)
        {
          v8 = [[PKTransactionHistoryViewController alloc] initWithInstallmentPlan:v7 transactionSourceCollection:v10[273] familyCollection:v10[280] account:v10[275] accountUserCollection:v10[262] physicalCards:v10[279]];
          v9 = [v10 navigationController];
          if ([v9 pk_settings_useStateDrivenNavigation])
          {
            [v9 pk_settings_pushViewController:v8];
          }

          else
          {
            [v9 pushViewController:v8 animated:1];
          }
        }

        v3 = v10;
      }
    }
  }
}

- (void)presentDeleteCard
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__PKPaymentPassDetailViewController_presentDeleteCard__block_invoke;
  v3[3] = &unk_1E8010998;
  objc_copyWeak(&v4, &location);
  [(PKPaymentPassDetailViewController *)self executeAfterContentIsLoaded:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __54__PKPaymentPassDetailViewController_presentDeleteCard__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _didSelectDeleteCardFromSourceItem:0];
    WeakRetained = v2;
  }
}

- (void)_showSpinner:(BOOL)spinner inCell:(id)cell detailText:(id)text
{
  spinnerCopy = spinner;
  textCopy = text;
  cellCopy = cell;
  [(PKPaymentPassDetailViewController *)self _showSpinner:spinnerCopy inCell:cellCopy overrideTextColor:0];
  detailTextLabel = [cellCopy detailTextLabel];

  [detailTextLabel setText:textCopy];
}

- (void)_showSpinner:(BOOL)spinner inCell:(id)cell overrideTextColor:(id)color
{
  spinnerCopy = spinner;
  colorCopy = color;
  cellCopy = cell;
  textLabel = [cellCopy textLabel];
  primaryTextColor = colorCopy;
  if (colorCopy || (primaryTextColor = self->_primaryTextColor) != 0)
  {
    labelColor = primaryTextColor;
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  v12 = labelColor;
  if (spinnerCopy)
  {
    v13 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v13 startAnimating];
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];

    v12 = tertiaryLabelColor;
  }

  else
  {
    v13 = 0;
  }

  [textLabel setTextColor:v12];
  [cellCopy setAccessoryView:v13];
}

- (void)_didSelectFixPeerPaymentAtIndexPath:(id)path
{
  targetDevice = [(PKPeerPaymentWebService *)self->_peerPaymentWebService targetDevice];
  account = [targetDevice account];

  if (!self->_peerPaymentAccountResolutionControllerForAccountService)
  {
    v5 = [PKPeerPaymentAccountResolutionController alloc];
    detailViewStyle = self->_detailViewStyle;
    v7 = 3;
    if (detailViewStyle != 1)
    {
      v7 = 0;
    }

    if (detailViewStyle == 2)
    {
      v8 = 4;
    }

    else
    {
      v8 = v7;
    }

    v9 = [(PKPeerPaymentAccountResolutionController *)v5 initWithAccount:account webService:self->_peerPaymentWebService context:v8 delegate:self passLibraryDataProvider:self->_passLibraryDataProvider];
    peerPaymentAccountResolutionControllerForAccountService = self->_peerPaymentAccountResolutionControllerForAccountService;
    self->_peerPaymentAccountResolutionControllerForAccountService = v9;
  }

  pendingPaymentCount = [account pendingPaymentCount];
  v12 = PKSharedCacheGetStringForKey();
  if (account)
  {
    cashbackResolution = self->_cashbackResolution;
    if (cashbackResolution == 1 && pendingPaymentCount == 1)
    {
      if ([v12 length])
      {
        v15 = objc_alloc_init(MEMORY[0x1E69B8F08]);
        [v15 setRegistrationFlowState:2];
        [v15 setSenderAddress:v12];
        [(PKPeerPaymentAccountResolutionController *)self->_peerPaymentAccountResolutionControllerForAccountService presentFlowForAccountResolution:1 configuration:v15 completion:0];

        goto LABEL_19;
      }

      cashbackResolution = self->_cashbackResolution;
    }

    [(PKPeerPaymentAccountResolutionController *)self->_peerPaymentAccountResolutionControllerForAccountService presentFlowForAccountResolution:cashbackResolution configuration:0 completion:0];
  }

  else
  {
    v16 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=PASSBOOK"];
    PKOpenURL();
  }

LABEL_19:
}

- (void)_didSelectRedeemAtIndexPath:(id)path
{
  pathCopy = path;
  if (!self->_redeemingRewards)
  {
    creditDetails = [(PKAccount *)self->_account creditDetails];
    accountSummary = [creditDetails accountSummary];
    if (accountSummary)
    {
      self->_redeemingRewards = 1;
      tableView = [(PKPaymentPassDetailViewController *)self tableView];
      v8 = [tableView cellForRowAtIndexPath:pathCopy];

      textLabel = [v8 textLabel];
      text = [textLabel text];

      textLabel2 = [v8 textLabel];
      textColor = [textLabel2 textColor];

      detailTextLabel = [v8 detailTextLabel];
      text2 = [detailTextLabel text];

      detailTextLabel2 = [v8 detailTextLabel];
      textColor2 = [detailTextLabel2 textColor];

      v37 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      [v37 startAnimating];
      [v8 setAccessoryView:v37];
      textLabel3 = [v8 textLabel];
      [MEMORY[0x1E69DC888] tertiaryLabelColor];
      v14 = v38 = pathCopy;
      [textLabel3 setTextColor:v14];

      textLabel4 = [v8 textLabel];
      [(PKPaymentPassDetailViewController *)self _accountFeature];
      v16 = PKLocalizedFeatureString();
      [textLabel4 setText:v16];

      detailTextLabel3 = [v8 detailTextLabel];
      [detailTextLabel3 setText:0];

      currentAccountUser = [(PKAccountUserCollection *)self->_accountUserCollection currentAccountUser];
      v32 = [accountSummary redeemableRewardsBalanceForUser:currentAccountUser];
      v18 = objc_alloc_init(MEMORY[0x1E69B8338]);
      [v18 setActionType:0];
      [v18 setAmount:v32];
      currencyCode = [creditDetails currencyCode];
      [v18 setCurrencyCode:currencyCode];

      [v18 setRedemptionType:2];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      [v18 setIdentifier:uUIDString];

      accountService = self->_accountService;
      accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
      altDSID = [currentAccountUser altDSID];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __65__PKPaymentPassDetailViewController__didSelectRedeemAtIndexPath___block_invoke;
      v39[3] = &unk_1E8026408;
      v39[4] = self;
      v40 = text;
      v41 = text2;
      v42 = textColor;
      v43 = textColor2;
      v24 = textColor2;
      v25 = textColor;
      v26 = accountSummary;
      v27 = creditDetails;
      v28 = text2;
      v29 = text;
      [(PKAccountService *)accountService performAccountAction:v18 withAccountIdentifier:accountIdentifier accountUserAltDSID:altDSID completion:v39];

      pathCopy = v38;
      creditDetails = v27;
      accountSummary = v26;
    }
  }
}

void __65__PKPaymentPassDetailViewController__didSelectRedeemAtIndexPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PKPaymentPassDetailViewController__didSelectRedeemAtIndexPath___block_invoke_2;
  block[3] = &unk_1E801D300;
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

void __65__PKPaymentPassDetailViewController__didSelectRedeemAtIndexPath___block_invoke_2(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 1714) = 0;
  v2 = *(a1 + 40);
  if (v2 && !*(a1 + 48))
  {
    objc_storeStrong((*(a1 + 32) + 2200), v2);
    *(*(a1 + 32) + 1656) = 0;
    v16 = *(a1 + 32);
    v19[0] = @"AccountServiceRewardsDetails";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [v16 reloadPassDetailSections:v17 updates:0];

    [*(*(a1 + 32) + 1840) updateWithAccount:*(*(a1 + 32) + 2200)];
  }

  else
  {
    v3 = [*(*(a1 + 32) + 1384) objectAtIndex:{objc_msgSend(*(*(a1 + 32) + 1504), "selectedSegmentIndex")}];
    v4 = [v3 unsignedIntegerValue];

    if (!v4)
    {
      v5 = [*(a1 + 32) indexOfSectionIdentifier:@"AccountServiceRewardsDetails"];
      v6 = [*(a1 + 32) _accountServiceRewardsRowForRowIndex:1];
      v7 = [*(a1 + 32) tableView];
      v8 = [MEMORY[0x1E696AC88] indexPathForRow:v6 inSection:v5];
      v9 = [v7 cellForRowAtIndexPath:v8];

      if (v9)
      {
        [v9 setAccessoryView:0];
        v10 = [v9 textLabel];
        [v10 setText:*(a1 + 56)];

        v11 = [v9 detailTextLabel];
        [v11 setText:*(a1 + 64)];

        v12 = [v9 textLabel];
        [v12 setTextColor:*(a1 + 72)];

        v13 = [v9 detailTextLabel];
        [v13 setTextColor:*(a1 + 80)];
      }
    }

    v14 = *(a1 + 48);
    if (v14)
    {
      v18 = +[PKAccountFlowController displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:](PKAccountFlowController, "displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:", v14, [*(*(a1 + 32) + 2200) feature], 0, 0);
      v15 = PKAlertForDisplayableErrorWithHandlers(v18, 0, 0, 0);
      [*(a1 + 32) presentViewController:v15 animated:1 completion:0];
    }
  }
}

- (BOOL)_shouldShowNetworkBenefitsCell
{
  if (!self->_account || [(PKPaymentPassDetailViewController *)self _shouldShowProductBenefitsCell])
  {
    return 0;
  }

  v4 = [(PKPaymentPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC110]];
  v3 = [v4 length] != 0;

  return v3;
}

- (void)_didSelectNetworkBenefitsCell
{
  v4 = [(PKPaymentPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC110]];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:?];
  if (v3)
  {
    PKOpenURL();
  }

  [(PKPaymentPassDetailViewController *)self _reportPassDetailsAnalyticsForTappedRowTag:*MEMORY[0x1E69BB568] additionalAnalytics:0];
}

- (BOOL)_shouldShowProductBenefitsCell
{
  if (!self->_account)
  {
    return 0;
  }

  v2 = [(PKPaymentPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC120]];
  v3 = [v2 length] != 0;

  return v3;
}

- (void)_didSelectProductBenefitsCell
{
  v4 = [(PKPaymentPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC120]];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:?];
  if (v3)
  {
    PKOpenURL();
  }

  [(PKPaymentPassDetailViewController *)self _reportPassDetailsAnalyticsForTappedRowTag:*MEMORY[0x1E69BB5B8] additionalAnalytics:0];
}

- (void)_didSelectCreditDetailsCell:(id)cell
{
  if (!-[PKPaymentPassDetailViewController _accountServiceCreditDetailsRowForRowIndex:](self, "_accountServiceCreditDetailsRowForRowIndex:", [cell row]) && -[PKPaymentPassDetailViewController isTotalBalanceCellSelectable](self, "isTotalBalanceCellSelectable"))
  {
    v5 = [[PKCreditBalanceDetailsViewController alloc] initWithStyle:1 transactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection webService:self->_webService account:self->_account accountUserCollection:self->_accountUserCollection physicalCards:self->_physicalCards statement:0 previousStatements:0];
    navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
    if ([navigationController pk_settings_useStateDrivenNavigation])
    {
      [navigationController pk_settings_pushViewController:v5];
    }

    else
    {
      [navigationController pushViewController:v5 animated:1];
    }
  }
}

- (void)_showPeerPaymentActionViewControllerForAction:(unint64_t)action
{
  v22 = 0;
  v23 = 0;
  v5 = [PKPeerPaymentActionController canPerformPeerPaymentAction:action account:self->_peerPaymentAccount unableReason:&v23 displayableError:&v22];
  v6 = v22;
  if (v5)
  {
    detailViewStyle = self->_detailViewStyle;
    v8 = 3;
    if (detailViewStyle != 1)
    {
      v8 = 0;
    }

    if (detailViewStyle == 2)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = [PKPeerPaymentActionViewController peerPaymentActionViewControllerForAction:action paymentPass:self->_pass webService:self->_peerPaymentWebService passLibraryDataProvider:self->_passLibraryDataProvider context:v9];
    [(PKPeerPaymentActionViewController *)v10 setDelegate:self];
    peerPaymentActionViewController = self->_peerPaymentActionViewController;
    self->_peerPaymentActionViewController = v10;
    v12 = v10;

    v13 = [[PKNavigationController alloc] initWithRootViewController:v12];
    [(PKNavigationController *)v13 setSupportedInterfaceOrientations:2];
    if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
    {
      [(PKNavigationController *)v13 setModalPresentationStyle:2];
    }

    [(PKPaymentPassDetailViewController *)self presentViewController:v13 animated:1 completion:0];
  }

  else
  {
    objc_initWeak(&location, self);
    v14 = v23;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __83__PKPaymentPassDetailViewController__showPeerPaymentActionViewControllerForAction___block_invoke;
    v19 = &unk_1E8010998;
    objc_copyWeak(&v20, &location);
    v15 = [PKPeerPaymentActionController alertControllerForPeerPaymentActionUnableReason:v14 displayableError:v6 addCardActionHandler:&v16];
    [(PKPaymentPassDetailViewController *)self presentViewController:v15 animated:1 completion:0, v16, v17, v18, v19];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void __83__PKPaymentPassDetailViewController__showPeerPaymentActionViewControllerForAction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentAddCard];
}

- (void)peerPaymentActionViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  presentingViewController = [cancelCopy presentingViewController];

  if (presentingViewController)
  {
    [cancelCopy presentingViewController];
  }

  else
  {
    [(PKPaymentPassDetailViewController *)self navigationController];
  }
  v5 = ;
  [v5 dismissViewControllerAnimated:1 completion:0];

  peerPaymentActionViewController = self->_peerPaymentActionViewController;
  self->_peerPaymentActionViewController = 0;
}

- (void)peerPaymentActionViewControllerDidPerformAction:(id)action
{
  actionCopy = action;
  presentingViewController = [actionCopy presentingViewController];

  if (presentingViewController)
  {
    [actionCopy presentingViewController];
  }

  else
  {
    [(PKPaymentPassDetailViewController *)self navigationController];
  }
  v5 = ;
  [v5 dismissViewControllerAnimated:1 completion:0];

  peerPaymentActionViewController = self->_peerPaymentActionViewController;
  self->_peerPaymentActionViewController = 0;
}

- (void)_updatePeerPaymentAccount
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKPaymentPassDetailViewController__updatePeerPaymentAccount__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __62__PKPaymentPassDetailViewController__updatePeerPaymentAccount__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 2176) targetDevice];
  obj = [v2 account];

  v3 = [obj associatedPassUniqueID];
  v4 = [*(*(a1 + 32) + 1088) uniqueID];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    objc_storeStrong((*(a1 + 32) + 1544), obj);
    [*(*(a1 + 32) + 1696) setAccount:*(*(a1 + 32) + 1544)];
    [*(*(a1 + 32) + 1480) setPeerPaymentAccount:*(*(a1 + 32) + 1544)];
    [*(a1 + 32) _updateHeaderActionView];
    [*(*(a1 + 32) + 1576) setAccount:*(*(a1 + 32) + 1544)];
    *(*(a1 + 32) + 1704) = [*(*(a1 + 32) + 1696) currentPeerPaymentAccountResolution];
    [*(a1 + 32) _updateCashbackPeerPaymentResolutionSection];
    [*(a1 + 32) _updatePeerPaymentFamilyMemberRows];
    [*(a1 + 32) _reloadView];
  }
}

- (void)_updatePeerPaymentFamilyMemberRows
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_sortedFamilyMemberRowModels;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        familyMember = [v8 familyMember];
        altDSID = [familyMember altDSID];

        v11 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount peerPaymentAccountWithAltDSID:altDSID];
        [v8 setAccount:v11];

        v12 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount accountInvitationWithAltDSID:altDSID];
        [v8 setInvitation:v12];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)_updatePeerPaymentPreferences
{
  peerPaymentWebService = self->_peerPaymentWebService;
  if (peerPaymentWebService)
  {
    targetDevice = [(PKPeerPaymentWebService *)peerPaymentWebService targetDevice];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      targetDevice2 = [(PKPeerPaymentWebService *)self->_peerPaymentWebService targetDevice];
      preferences = [targetDevice2 preferences];
      peerPaymentPreferences = self->_peerPaymentPreferences;
      self->_peerPaymentPreferences = preferences;

      [(PKPaymentPassDetailViewController *)self _updatePeerPaymentPreferencesSectionVisibilityAndReloadIfNecessary];
    }

    else
    {
      self->_loadingPeerPaymentPreferences = 1;
      [(PKSpinnerHeaderView *)self->_peerPaymentPreferencesHeaderView setShowSpinner:1];
      v9 = self->_peerPaymentWebService;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __66__PKPaymentPassDetailViewController__updatePeerPaymentPreferences__block_invoke;
      v10[3] = &unk_1E8026430;
      v10[4] = self;
      [(PKPeerPaymentWebService *)v9 peerPaymentPreferencesWithCompletion:v10];
    }
  }
}

void __66__PKPaymentPassDetailViewController__updatePeerPaymentPreferences__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 peerPaymentPreferences];
  if (v5)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Error fetching peer payment preferences: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__PKPaymentPassDetailViewController__updatePeerPaymentPreferences__block_invoke_1266;
  v9[3] = &unk_1E8010A10;
  v9[4] = *(a1 + 32);
  v10 = v6;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

uint64_t __66__PKPaymentPassDetailViewController__updatePeerPaymentPreferences__block_invoke_1266(uint64_t a1)
{
  *(*(a1 + 32) + 1560) = 0;
  [*(*(a1 + 32) + 1568) setShowSpinner:0];
  objc_storeStrong((*(a1 + 32) + 1552), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _updatePeerPaymentPreferencesSectionVisibilityAndReloadIfNecessary];
}

- (void)_updateAmpEligibility
{
  if ([(PKPaymentPassDetailViewController *)self _accountInGoodStateForAMPEligbilityCheck])
  {
    if (!self->_loadingAMPEligibility)
    {
      self->_isAmpEligible = 0;
      self->_loadingAMPEligibility = 1;
      [(PKPaymentPassDetailViewController *)self reloadSection:17 updates:0];
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __58__PKPaymentPassDetailViewController__updateAmpEligibility__block_invoke;
      aBlock[3] = &unk_1E80148F0;
      objc_copyWeak(&v12, &location);
      v3 = _Block_copy(aBlock);
      mEMORY[0x1E69B8310] = [MEMORY[0x1E69B8310] sharedManager];
      [mEMORY[0x1E69B8310] registerObserver:self];
      pass = self->_pass;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __58__PKPaymentPassDetailViewController__updateAmpEligibility__block_invoke_3;
      v9[3] = &unk_1E8026458;
      v10 = v3;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __58__PKPaymentPassDetailViewController__updateAmpEligibility__block_invoke_1268;
      v7[3] = &unk_1E8013FF8;
      v6 = v10;
      v8 = v6;
      [mEMORY[0x1E69B8310] enrollmentStatusForPaymentPass:pass completion:v9 progress:v7];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

void __58__PKPaymentPassDetailViewController__updateAmpEligibility__block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__PKPaymentPassDetailViewController__updateAmpEligibility__block_invoke_2;
    v5[3] = &unk_1E8013F80;
    v5[4] = WeakRetained;
    v6 = a2;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void __58__PKPaymentPassDetailViewController__updateAmpEligibility__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134349314;
    v8 = a2;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "enrollmentStatusForPaymentPass completion status: %{public}lu error: %{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), a2 == 1, v5);
}

void __58__PKPaymentPassDetailViewController__updateAmpEligibility__block_invoke_1268(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "enrollmentStatusForPaymentPass progress success: %@ error: %{public}@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)ampEnrollmentManager:(id)manager didEnrollPaymentPass:(id)pass success:(BOOL)success
{
  passCopy = pass;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PKPaymentPassDetailViewController_ampEnrollmentManager_didEnrollPaymentPass_success___block_invoke;
  block[3] = &unk_1E8013D60;
  v10 = passCopy;
  selfCopy = self;
  successCopy = success;
  v8 = passCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __87__PKPaymentPassDetailViewController_ampEnrollmentManager_didEnrollPaymentPass_success___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) uniqueID];
  v3 = [*(*(a1 + 40) + 1088) uniqueID];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 48))
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "ampEnrollmentManager didEnrollPaymentPass: success: %@", &v8, 0xCu);
    }

    v7 = *(a1 + 40);
    if (*(a1 + 48) == 1)
    {
      [v7 _ampEligbilityUpdated:0];
    }

    else
    {
      [v7 _updateAmpEligibility];
    }
  }
}

- (void)_ampEligbilityUpdated:(BOOL)updated
{
  self->_loadingAMPEligibility = 0;
  self->_isAmpEligible = updated;
  [(PKPaymentPassDetailViewController *)self reloadData:0];
}

- (void)_handlePeerPaymentPreferencestDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PKPaymentPassDetailViewController__handlePeerPaymentPreferencestDidChangeNotification___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_handleAccountServiceAccountDidChangeNotification:(id)notification
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__PKPaymentPassDetailViewController__handleAccountServiceAccountDidChangeNotification___block_invoke;
  aBlock[3] = &unk_1E80112C0;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  associatedAccountServiceAccountIdentifier = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
  if (associatedAccountServiceAccountIdentifier)
  {
    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    [mEMORY[0x1E69B8400] accountWithIdentifier:associatedAccountServiceAccountIdentifier completion:v4];
  }
}

void __87__PKPaymentPassDetailViewController__handleAccountServiceAccountDidChangeNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __87__PKPaymentPassDetailViewController__handleAccountServiceAccountDidChangeNotification___block_invoke_2;
  v6[3] = &unk_1E8010A10;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __87__PKPaymentPassDetailViewController__handleAccountServiceAccountDidChangeNotification___block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = result;
    objc_storeStrong((*(result + 40) + 2200), v1);
    [*(*(v2 + 40) + 1904) setFeatureIdentifier:{objc_msgSend(*(v2 + 32), "feature")}];
    [*(*(v2 + 40) + 1608) updateWithAccount:*(v2 + 32)];
    [*(v2 + 40) _updateBalanceIfNecessary];
    v3 = *(v2 + 40);

    return [v3 _reloadView];
  }

  return result;
}

- (void)merchantTokensViewController:(id)controller didDeleteMerchantToken:(id)token
{
  merchantTokensResponse = self->_merchantTokensResponse;
  tokenCopy = token;
  merchantTokens = [(PKRetrieveMerchantTokensResponse *)merchantTokensResponse merchantTokens];
  v8 = [merchantTokens containsObject:tokenCopy];

  if (v8)
  {
    v9 = self->_merchantTokensResponse;
    self->_merchantTokensResponse = 0;

    [(PKPaymentPassDetailViewController *)self _reloadMerchantTokenRows];

    [(PKPaymentPassDetailViewController *)self _fetchMerchantTokens];
  }
}

- (void)merchantTokenDetailViewController:(id)controller didDeleteMerchantToken:(id)token
{
  tokenCopy = token;
  if (_os_feature_enabled_impl())
  {
    navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
    if ([navigationController pk_settings_useStateDrivenNavigation])
    {
      [navigationController pk_settings_popViewController];
    }

    else
    {
      v7 = [navigationController popViewControllerAnimated:1];
    }
  }

  merchantTokens = [(PKRetrieveMerchantTokensResponse *)self->_merchantTokensResponse merchantTokens];
  v9 = [merchantTokens containsObject:tokenCopy];

  if (v9)
  {
    merchantTokensResponse = self->_merchantTokensResponse;
    self->_merchantTokensResponse = 0;

    [(PKPaymentPassDetailViewController *)self _reloadMerchantTokenRows];

    [(PKPaymentPassDetailViewController *)self _fetchMerchantTokens];
  }
}

- (void)_startPendingTransactionTimer
{
  [(PKPaymentPassDetailViewController *)self _cancelPendingTransactionTimer];
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  transactionTimer = self->_transactionTimer;
  self->_transactionTimer = v3;

  v5 = self->_transactionTimer;
  v6 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  objc_initWeak(&location, self);
  v7 = self->_transactionTimer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__PKPaymentPassDetailViewController__startPendingTransactionTimer__block_invoke;
  v8[3] = &unk_1E8010998;
  objc_copyWeak(&v9, &location);
  dispatch_source_set_event_handler(v7, v8);
  dispatch_resume(self->_transactionTimer);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __66__PKPaymentPassDetailViewController__startPendingTransactionTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _reloadTransactionSectionsAnimated:1 forceReload:0];
    v2 = v3[134];
    v3[134] = 0;

    WeakRetained = v3;
  }
}

- (void)_cancelPendingTransactionTimer
{
  transactionTimer = self->_transactionTimer;
  if (transactionTimer)
  {
    dispatch_source_cancel(transactionTimer);
    v4 = self->_transactionTimer;
    self->_transactionTimer = 0;
  }
}

- (void)_updateHeaderActionView
{
  if (self->_hasTabBar)
  {
    [(PKPaymentPassDetailViewController *)self _updateTabBar];
  }
}

- (void)_updateTabBar
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  [v4 addObject:&unk_1F3CC7FE8];
  if ([(PKPaymentPassDetailViewController *)self _shouldShowTransactions])
  {
    [v4 addObject:&unk_1F3CC8000];
  }

  if ([v4 count])
  {
    v3 = v4;
  }

  else
  {

    v3 = 0;
  }

  v5 = v3;
  if ((PKEqualObjects() & 1) == 0)
  {
    [(PKPaymentPassDetailViewController *)self _updateTabBarWithSegments:v5];
  }
}

- (void)_updateSectionControllersWithSelectedSectionSegment
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_sectionControllers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          tabBar = self->_tabBar;
          v10 = v8;
          [v10 setCurrentSegment:{-[UISegmentedControl selectedSegmentIndex](tabBar, "selectedSegmentIndex", v11)}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_updateTabBarWithSegments:(id)segments
{
  segmentsCopy = segments;
  v5 = [segmentsCopy count];
  tabBar = self->_tabBar;
  if (tabBar)
  {
    selectedSegmentIndex = [(UISegmentedControl *)tabBar selectedSegmentIndex];
    p_tabBarSegments = &self->_tabBarSegments;
    tabBarSegments = self->_tabBarSegments;
    v9 = -1;
    if (tabBarSegments && (selectedSegmentIndex & 0x8000000000000000) == 0)
    {
      v10 = [(NSArray *)tabBarSegments objectAtIndexedSubscript:?];
      v11 = [segmentsCopy indexOfObject:v10];

      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = -1;
      }

      else
      {
        v9 = v11;
      }
    }
  }

  else
  {
    p_tabBarSegments = &self->_tabBarSegments;
    v9 = -1;
  }

  if (v5)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  if (v9 >= 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  v14 = [segmentsCopy copy];
  v15 = *p_tabBarSegments;
  *p_tabBarSegments = v14;

  viewIfLoaded = [(PKPaymentPassDetailViewController *)self viewIfLoaded];
  if (viewIfLoaded)
  {
    v17 = self->_tabBar;
    if (v17)
    {
      [(UISegmentedControl *)v17 removeTarget:self action:sel__tabBarSegmentChanged_ forControlEvents:4096];
      [(UISegmentedControl *)self->_tabBar removeFromSuperview];
      v18 = self->_tabBar;
      self->_tabBar = 0;
    }

    if (self->_hasTabBar && v5 >= 2)
    {
      v20 = [(PKPaymentPassDetailViewController *)self _createTabBarWithSelectedIndex:v13];
      v21 = self->_tabBar;
      self->_tabBar = v20;

      contentView = [(UITableViewHeaderFooterView *)self->_headerView contentView];
      [contentView addSubview:self->_tabBar];
    }

    if (v9 < 0)
    {
      [(PKPaymentPassDetailViewController *)self reloadData:0];
    }

    if ([(PKPaymentPassDetailViewController *)self _updateHeaderHeightDeterminingLayout:0])
    {
      [viewIfLoaded setNeedsLayout];
    }
  }
}

- (BOOL)_updateHeaderHeightDeterminingLayout:(BOOL)layout
{
  tableView = [(PKPaymentPassDetailViewController *)self tableView];
  [tableView contentSize];
  v6 = v5;
  v7 = [(NSArray *)self->_tabBarSegments count];
  pkui_userInterfaceIdiomSupportsLargeLayouts = [(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts];
  v9 = 80.0;
  if (!pkui_userInterfaceIdiomSupportsLargeLayouts)
  {
    v9 = 74.0;
  }

  [(PKPassHeaderView *)self->_passHeaderView sizeThatFits:v6, v9];
  v11 = 0.0;
  headerHeight = self->_headerHeight;
  if (v10 >= 0.0)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0.0;
  }

  self->_headerHeight = v13;
  widgetViewController = self->_widgetViewController;
  if (widgetViewController)
  {
    view = [(UIViewController *)widgetViewController view];
    [view sizeThatFits:{v6, 1.79769313e308}];
    v11 = v16;
  }

  v17 = headerHeight != v13 || self->_widgetViewHeight != v11;
  self->_widgetViewHeight = v11;
  tabBar = self->_tabBar;
  if (tabBar)
  {
    v19 = 0.0;
    if (v7 >= 2)
    {
      [(UISegmentedControl *)tabBar frame];
      v19 = v20 + 30.0;
    }

    if (v17)
    {
      goto LABEL_15;
    }

LABEL_17:
    v21 = self->_tabBarHeight != v19;
    goto LABEL_18;
  }

  v19 = 0.0;
  if (!v17)
  {
    goto LABEL_17;
  }

LABEL_15:
  v21 = 1;
LABEL_18:
  self->_tabBarHeight = v19;

  return v21;
}

- (id)_createTabBarWithSelectedIndex:(int64_t)index
{
  v22 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_tabBarSegments count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_tabBarSegments, "count")}];
  }

  else
  {
    v4 = 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_tabBarSegments;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        unsignedIntegerValue = [*(*(&v17 + 1) + 8 * i) unsignedIntegerValue];
        if (!unsignedIntegerValue)
        {
          v11 = @"PASS_DETAILS_INFO";
LABEL_15:
          v12 = PKLocalizedString(&v11->isa);
          goto LABEL_17;
        }

        if (unsignedIntegerValue == 1)
        {
          if ([(PKPaymentPass *)self->_pass isIdentityPass])
          {
            v11 = @"PASS_DETAILS_ACTIVITY";
          }

          else
          {
            v11 = @"PASS_DETAILS_TRANSACTIONS";
          }

          goto LABEL_15;
        }

        v12 = 0;
LABEL_17:
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = &stru_1F3BD7330;
        }

        [v4 addObject:v13];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [objc_alloc(MEMORY[0x1E69DCF38]) initWithItems:v4];
  [v14 setSelectedSegmentIndex:index];
  [v14 addTarget:self action:sel__tabBarSegmentChanged_ forControlEvents:4096];
  [v14 sizeToFit];
  if (self->_linkTextColor)
  {
    [v14 setTintColor:?];
  }

  return v14;
}

- (void)_setupWidgetViewIfNeeded
{
  if ([(PKPaymentPassDetailViewController *)self _shouldShowActionWidgets]&& !self->_widgetViewController)
  {
    v3 = [PKPaymentPassActionWidgetViewProvider passActionWidgetViewControllerWithViewModel:self->_widgetViewModel];
    widgetViewController = self->_widgetViewController;
    self->_widgetViewController = v3;

    [(PKPaymentPassDetailViewController *)self addChildViewController:self->_widgetViewController];
    contentView = [(UITableViewHeaderFooterView *)self->_headerView contentView];
    view = [(UIViewController *)self->_widgetViewController view];
    [contentView addSubview:view];

    v7 = self->_widgetViewController;

    [(UIViewController *)v7 didMoveToParentViewController:self];
  }
}

- (BOOL)_shouldShowTransactions
{
  v3 = [(PKPaymentDataProvider *)self->_paymentServiceDataProvider supportsTransactionsForPass:self->_pass];
  if (v3)
  {
    devicePrimaryPaymentApplication = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];

    if (devicePrimaryPaymentApplication && (-[PKPaymentPass devicePrimaryPaymentApplication](self->_pass, "devicePrimaryPaymentApplication"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 state], v5, v6 != 7))
    {
      if (!self->_account || (v3 = [MEMORY[0x1E69B8770] shouldDisplayTransactionsForTransactionSourceCollection:self->_transactionSourceCollection withAccount:?]) != 0)
      {
        if (![(PKPaymentPass *)self->_pass isTransitPass]|| ([(PKPaymentPass *)self->_pass supportsFPANNotifications]& 1) != 0 || ([(PKPaymentPass *)self->_pass supportsDPANNotifications]& 1) != 0)
        {
          LOBYTE(v3) = 1;
        }

        else
        {
          devicePrimaryPaymentApplication2 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
          generatesLocalTransactions = [devicePrimaryPaymentApplication2 generatesLocalTransactions];

          LOBYTE(v3) = generatesLocalTransactions;
        }
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)_showsTransactionHistorySwitch
{
  if (([(PKPaymentPass *)self->_pass supportsFPANNotifications]& 1) != 0 || (v3 = [(PKPaymentPass *)self->_pass supportsDPANNotifications]) != 0)
  {
    if (self->_peerPaymentAccount || self->_account)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(PKPaymentPassDetailViewController *)self _isBankConnectLinked];
    }
  }

  return v3;
}

- (BOOL)_shouldShowTransferCell
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_detailViewStyle != 2 || (PKIsAltAccountPairedOrPairing() & 1) != 0 || self->_detailViewStyle != 2 || [(PKPaymentPass *)self->_pass activationState]|| ![(PKPaymentPass *)self->_pass requiresTransferSerialNumberBasedProvisioning])
  {
    return 0;
  }

  if ([(PKPaymentPass *)self->_pass isStoredValuePass])
  {
    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    targetDevice = [mEMORY[0x1E69B8EF8] targetDevice];

    if ([(PKPaymentPass *)self->_pass requiresFelicaSecureElement])
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ([targetDevice felicaSecureElementIsAvailable] & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else if ((objc_opt_respondsToSelector() & 1) == 0 || ![targetDevice secureElementIsAvailable])
    {
      goto LABEL_30;
    }

    secureElementIdentifiers = [targetDevice secureElementIdentifiers];
    v8 = [secureElementIdentifiers count];

    pass = self->_pass;
    if (v8 == 2)
    {
      if ([(PKPaymentPass *)pass isSuicaPass])
      {
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        paymentApplications = [(PKPaymentPass *)self->_pass paymentApplications];
        v11 = [paymentApplications countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(paymentApplications);
              }

              supportedTransitNetworkIdentifiers = [*(*(&v17 + 1) + 8 * i) supportedTransitNetworkIdentifiers];
              v16 = [supportedTransitNetworkIdentifiers containsObject:@"transit.felica.suica"];

              if (!v16)
              {
                v5 = 0;
                goto LABEL_34;
              }
            }

            v12 = [paymentApplications countByEnumeratingWithState:&v17 objects:v21 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v5 = 1;
LABEL_34:

        goto LABEL_31;
      }
    }

    else
    {
      if (![(PKPaymentPass *)pass isOctopusPass])
      {
        v5 = 1;
        goto LABEL_31;
      }

      if (objc_opt_respondsToSelector())
      {
        v5 = [targetDevice supportsExpressForAutomaticSelectionTechnologyType:6];
LABEL_31:

        return v5;
      }
    }

LABEL_30:
    v5 = 0;
    goto LABEL_31;
  }

  return 1;
}

- (BOOL)_shouldShowDeleteCell
{
  if (self->_peerPaymentAccount)
  {
    return 0;
  }

  else
  {
    return PKRunningInViewService() ^ 1;
  }
}

- (unint64_t)_numberOfPeerPaymentMoneyActionsEnabled
{
  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = [(PKPaymentPassDetailViewController *)self _peerPaymentMoneyActionEnabled:v3];
    v5 = 0;
    v4 += v7;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  return v4;
}

- (BOOL)_peerPaymentMoneyActionEnabled:(unint64_t)enabled
{
  if (enabled == 1)
  {
    peerPaymentAccount = self->_peerPaymentAccount;
    currentUser = [(PKFamilyMemberCollection *)self->_familyCollection currentUser];
    v5 = [(PKPeerPaymentAccount *)peerPaymentAccount isEligibleToWithdrawForUser:currentUser];
  }

  else
  {
    if (enabled)
    {
      return 0;
    }

    v3 = self->_peerPaymentAccount;
    currentUser = [(PKFamilyMemberCollection *)self->_familyCollection currentUser];
    v5 = [(PKPeerPaymentAccount *)v3 isEligibleToAddMoneyForUser:currentUser];
  }

  v7 = v5;

  return v7;
}

- (unint64_t)_peerPaymentMoneyActionForRowIndex:(unint64_t)index
{
  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    if ([(PKPaymentPassDetailViewController *)self _peerPaymentMoneyActionEnabled:v5])
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
  return 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)_rowIndexForPeerPaymentActionRow:(unint64_t)row
{
  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    if ([(PKPaymentPassDetailViewController *)self _peerPaymentMoneyActionEnabled:v5])
    {
      if (v5 == row)
      {
        return v6;
      }

      ++v6;
    }

    v7 = 0;
    v5 = 1;
  }

  while ((v8 & 1) != 0);
  return 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)_shouldShowServicingSection
{
  if (self->_detailViewStyle == 2)
  {
    return 0;
  }

  associatedAccountServiceAccountIdentifier = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
  v2 = [associatedAccountServiceAccountIdentifier length] != 0;

  return v2;
}

- (BOOL)_shouldShowCardNumbersSection
{
  v3 = MEMORY[0x1E69B8770];
  cardAvailabilityInfo = [(PKAccount *)self->_account cardAvailabilityInfo];
  deviceAccountNumberSuffix = [(PKPaymentPass *)self->_pass deviceAccountNumberSuffix];
  v6 = [v3 shouldShowCardNumbersWithAccountAvailabilityInfo:cardAvailabilityInfo dpanSuffixForPaymentApplication:deviceAccountNumberSuffix];

  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  if (PKVirtualCardEnabledWithWebService() && [(PKPaymentPass *)self->_pass cardType]== 1)
  {
    creditDetails = [(PKAccount *)self->_account creditDetails];
    if (creditDetails)
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      v9 = [(PKPaymentPass *)self->_pass isEMoneyPass]^ 1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  if ([(PKPaymentPassDetailViewController *)self _accountFeature]== 4)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = [(PKPaymentPass *)self->_pass isAppleBalancePass]^ 1;
  }

  return (self->_detailViewStyle != 2) & v10 & (v6 | v9);
}

- (BOOL)_accountInGoodStateForAMPEligbilityCheck
{
  account = self->_account;
  if (account)
  {
    LOBYTE(account) = [(PKAccount *)account state]== 1 && [(PKPaymentPassDetailViewController *)self _accountFeature]!= 4;
  }

  return account;
}

- (BOOL)_shouldShowAutomaticPresentation
{
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  supportsAutomaticPassPresentation = [targetDevice supportsAutomaticPassPresentation];

  if (!supportsAutomaticPassPresentation)
  {
    goto LABEL_10;
  }

  if (([(PKPaymentPass *)self->_pass availableForAutomaticPresentationUsingBeaconContext]& 1) != 0)
  {
    v5 = 1;
    return v5 & 1;
  }

  availableForAutomaticPresentationUsingInAppOrWebContext = [(PKPaymentPass *)self->_pass availableForAutomaticPresentationUsingInAppOrWebContext];
  detailViewStyle = self->_detailViewStyle;
  v8 = detailViewStyle == 2;
  v5 = (detailViewStyle != 2) | availableForAutomaticPresentationUsingInAppOrWebContext;
  if (v8 || (availableForAutomaticPresentationUsingInAppOrWebContext & 1) != 0)
  {
    return v5 & 1;
  }

  if (!PKValueAddedServicesEnabled())
  {
LABEL_10:
    v5 = 0;
    return v5 & 1;
  }

  pass = self->_pass;

  return [(PKPaymentPass *)pass availableForAutomaticPresentationUsingVASContext];
}

- (BOOL)_shouldShowBillingAddressCell
{
  supportsBarcodePayment = [(PKPaymentPass *)self->_pass supportsBarcodePayment];
  if ([(PKAccount *)self->_account feature]== 2)
  {
    isClosedAndChargedOff = [(PKAccount *)self->_account isClosedAndChargedOff];
  }

  else
  {
    isClosedAndChargedOff = 0;
  }

  if (self->_peerPaymentAccount)
  {
    result = self->_detailViewStyle != 2;
  }

  else
  {
    result = [(PKPaymentDataProvider *)self->_paymentServiceDataProvider supportsInAppPaymentsForPass:self->_pass];
  }

  if ((supportsBarcodePayment | isClosedAndChargedOff))
  {
    return supportsBarcodePayment ^ 1;
  }

  return result;
}

- (BOOL)_shouldShowTermsCell
{
  creditDetails = [(PKAccount *)self->_account creditDetails];
  termsIdentifier = [creditDetails termsIdentifier];
  if ([termsIdentifier length])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PKPaymentPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC128]];
    v5 = [v6 length] != 0;
  }

  return v5;
}

- (BOOL)_shouldShowPrivacyPolicyCell
{
  v2 = [(PKPaymentPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC118]];
  v3 = [v2 length] != 0;

  return v3;
}

- (BOOL)_shouldShowContactCell
{
  v3 = [(PKPaymentPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC0F0]];
  v4 = [(PKPaymentPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC100]];
  v5 = [(PKPaymentPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC108]];
  businessChatIdentifier = [(PKPaymentPass *)self->_pass businessChatIdentifier];
  if (([v3 length] || objc_msgSend(v4, "length") || objc_msgSend(v5, "length")) && (-[PKPaymentPassDetailViewController _accountFeature](self, "_accountFeature") == 4 || self->_detailViewStyle == 2))
  {
    v7 = 1;
  }

  else if ([businessChatIdentifier length])
  {
    v7 = self->_detailViewStyle == 2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldShowAccessPersonInformation
{
  if (![(PKPaymentPass *)self->_pass isAccessPass])
  {
    return 0;
  }

  isAppleAccess = self->_isAppleAccess;
  if (isAppleAccess)
  {
    cardHolderPicture = [(PKPaymentPass *)self->_pass cardHolderPicture];
    if (cardHolderPicture)
    {
      v5 = 1;
LABEL_14:

      return v5;
    }
  }

  v6 = [(PKPaymentPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC0D0]];
  if ([v6 length])
  {

    v5 = 1;
    if (!isAppleAccess)
    {
      return v5;
    }

    goto LABEL_13;
  }

  v7 = [(PKPaymentPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC0D8]];
  if ([v7 length])
  {

    v5 = 1;
    if (!isAppleAccess)
    {
      return v5;
    }

    goto LABEL_13;
  }

  v8 = [(PKPaymentPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC0E0]];
  v5 = [v8 length] != 0;

  if (isAppleAccess)
  {
LABEL_13:
    cardHolderPicture = 0;
    goto LABEL_14;
  }

  return v5;
}

- (BOOL)_shouldShowServiceMode
{
  if ([(PKPaymentPass *)self->_pass isStoredValuePass])
  {
    devicePrimaryPaymentApplication = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
    if (![devicePrimaryPaymentApplication supportsServiceMode])
    {
      v8 = 0;
LABEL_12:

      return v8;
    }

    devicePrimaryPaymentApplication2 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
    supportsTransitHistory = [devicePrimaryPaymentApplication2 supportsTransitHistory];
    if ((supportsTransitHistory & 1) != 0 || (-[PKPaymentPass devicePrimaryPaymentApplication](self->_pass, "devicePrimaryPaymentApplication"), v2 = objc_claimAutoreleasedReturnValue(), [v2 appletDataFormat], v3 = objc_claimAutoreleasedReturnValue(), PKEqualObjects()))
    {
      [(PKPaymentPass *)self->_pass effectiveContactlessPaymentApplicationState];
      v8 = PKPaymentApplicationStateIsPersonalized() != 0;
      if (supportsTransitHistory)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  return 0;
}

- (id)_activationFooterView
{
  activationFooter = self->_activationFooter;
  if (!activationFooter)
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x1E69DC628];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __58__PKPaymentPassDetailViewController__activationFooterView__block_invoke;
    v13 = &unk_1E8010A60;
    objc_copyWeak(&v14, &location);
    v5 = [v4 actionWithHandler:&v10];
    v6 = [PKPaymentPassDetailActivationFooterView alloc];
    v7 = [(PKPaymentPassDetailActivationFooterView *)v6 initWithFrame:v5 activationAction:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), v10, v11, v12, v13];
    v8 = self->_activationFooter;
    self->_activationFooter = v7;

    [(PKPaymentPassDetailViewController *)self updateActivationFooterViewContents];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    activationFooter = self->_activationFooter;
  }

  return activationFooter;
}

void __58__PKPaymentPassDetailViewController__activationFooterView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _activationFooterPressed:v4];
}

- (void)updateActivationFooterViewContents
{
  activationFooter = self->_activationFooter;
  verificationBodyString = [(PKPaymentVerificationController *)self->_verificationController verificationBodyString];
  [(PKPaymentPassDetailActivationFooterView *)activationFooter setFooterText:verificationBodyString];

  v5 = self->_activationFooter;
  alternateMethodButtonTitle = [(PKPaymentVerificationController *)self->_verificationController alternateMethodButtonTitle];
  [(PKPaymentPassDetailActivationFooterView *)v5 setActivationButtonText:alternateMethodButtonTitle];
}

- (BOOL)_transactionDeepLinkingEnabled
{
  if (self->_deepLinkingUIEnabled)
  {
    v2 = objc_opt_respondsToSelector();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (id)_availableCommutePlanActions
{
  availableActions = [(PKPaymentPass *)self->_pass availableActions];
  v3 = [availableActions pk_objectsPassingTest:&__block_literal_global_1301];

  return v3;
}

- (BOOL)_hasActionOfType:(unint64_t)type
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _availableActions = [(PKPaymentPassDetailViewController *)self _availableActions];
  v5 = [_availableActions countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(_availableActions);
        }

        if ([*(*(&v11 + 1) + 8 * i) type] == type)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [_availableActions countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)_didSelectTransactionAtIndexPath:(id)path
{
  pathCopy = path;
  v4 = [pathCopy row];
  if (v4 < -[PKPaymentPassDetailViewController _transactionsCount](self, "_transactionsCount") && (-[PKPaymentPassDetailViewController _transactionAtIndex:](self, "_transactionAtIndex:", [pathCopy row]), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    [(PKPaymentPassDetailViewController *)self presentTransactionDetailsForTransaction:v5 presentingView:0];
  }

  else
  {
    if (![(PKPaymentPassDetailViewController *)self _transactionDeepLinkingEnabled])
    {
      goto LABEL_9;
    }

    paymentServiceDataProvider = self->_paymentServiceDataProvider;
    uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
    v6 = [(PKPaymentDataProvider *)paymentServiceDataProvider transactionsAppLaunchTokenForPassWithUniqueIdentifier:uniqueID];

    v9 = [PKPaymentNotificationAppURLHelper appURLForTransactionNotification:0 pass:self->_pass appLaunchToken:v6];
    if (v9)
    {
      PKOpenURL();
    }
  }

LABEL_9:
}

- (void)_didSelectTransactionTransactionsSwitchInTableView:(id)view atIndexPath:(id)path
{
  v5 = [view cellForRowAtIndexPath:path];
  if (v5 == self->_allowNotificationCell && self->_notificationAuthorizationStatus == 1)
  {
    v6 = MEMORY[0x1E695DFF8];
    v9 = v5;
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"prefs:root=NOTIFICATIONS_ID&path=%@", *MEMORY[0x1E69BC3D8]];
    v8 = [v6 URLWithString:v7];

    PKOpenURL();
    v5 = v9;
  }
}

- (void)_didSelectContactBankSectionAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(PKPaymentPassDetailViewController *)self _shouldShowContactCell])
  {
    if (![pathCopy row])
    {
      v5 = [(PKPaymentPassDetailViewController *)self _removeUnsupportedContactIssuerOptions:15];
      contactIssuerHelper = [(PKPaymentPassDetailViewController *)self contactIssuerHelper];
      tableView = [(PKPaymentPassDetailViewController *)self tableView];
      v8 = [tableView cellForRowAtIndexPath:pathCopy];
      [contactIssuerHelper presentContactViewController:v5 sourceItem:v8];
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  if (-[PKPaymentPassDetailViewController _shouldShowServiceMode](self, "_shouldShowServiceMode") && v9 == [pathCopy row])
  {
    MEMORY[0x1BFB41980](*MEMORY[0x1E69BA088], 0);
    if (objc_opt_respondsToSelector())
    {
      paymentServiceDataProvider = self->_paymentServiceDataProvider;
      uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
      [(PKPaymentDataProvider *)paymentServiceDataProvider startServiceModeForPassWithUniqueIdentifier:uniqueID visibleViewController:self];
    }

    else
    {
      if (PKRunningInRemoteContext())
      {
        navigationController = objc_alloc_init(MEMORY[0x1E696AF20]);
        [navigationController setScheme:@"shoebox"];
        [navigationController setHost:@"card"];
        v13 = MEMORY[0x1E696AEC0];
        uniqueID2 = [(PKPaymentPass *)self->_pass uniqueID];
        v15 = [v13 stringWithFormat:@"/%@/%@", uniqueID2, *MEMORY[0x1E69BC6B8]];
        [navigationController setPath:v15];

        v16 = [navigationController URL];
        PKOpenURL();
      }

      else
      {
        navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
        presentingViewController = [(PKPaymentPassDetailViewController *)self presentingViewController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [MEMORY[0x1E6979518] begin];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __77__PKPaymentPassDetailViewController__didSelectContactBankSectionAtIndexPath___block_invoke;
          v19[3] = &unk_1E8010970;
          v19[4] = self;
          [MEMORY[0x1E6979518] setCompletionBlock:v19];
          if ([navigationController pk_settings_useStateDrivenNavigation])
          {
            [navigationController pk_settings_popToRootViewController];
          }

          else
          {
            v18 = [navigationController popToRootViewControllerAnimated:1];
          }

          [MEMORY[0x1E6979518] commit];
        }

        else
        {
          [(PKPaymentPassDetailViewController *)self postServiceModeNotification];
          [presentingViewController dismissViewControllerAnimated:1 completion:0];
        }
      }
    }
  }
}

- (void)postServiceModeNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PKPDVCRequestedServiceMode" object:self userInfo:0];
}

- (unint64_t)_removeUnsupportedContactIssuerOptions:(unint64_t)options
{
  if ([(PKAccount *)self->_account feature]== 2)
  {
    v4 = +[PKBusinessChatController deviceSupportsBusinessChat];
    v5 = 7;
    if (v4)
    {
      v5 = 15;
    }
  }

  else
  {
    v5 = 7;
  }

  return v5 & options;
}

- (void)_preflightWatchForTransferWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
    if (targetDevice)
    {
      webService = self->_webService;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __78__PKPaymentPassDetailViewController__preflightWatchForTransferWithCompletion___block_invoke;
      v9[3] = &unk_1E8013FF8;
      v10 = completionCopy;
      [targetDevice paymentWebService:webService validateTransferPreconditionsWithCompletion:v9];
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Error: Unable to validate transfer preconditions of target device", v8, 2u);
      }

      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

- (void)_didSelectTransferCardAtIndexPath:(id)path
{
  pathCopy = path;
  transitProperties = self->_transitProperties;
  if (transitProperties)
  {
    if ([(PKTransitPassProperties *)transitProperties isEnRoute])
    {
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Unable to perform transfer. Pass is in transit.", buf, 2u);
      }

      v7 = MEMORY[0x1E69DC650];
      v8 = PKLocalizedPaymentString(&cfstr_CardInTransit.isa);
      v9 = @"CARD_IN_TRANSIT_MESSAGE_TRANSFER_CARD";
LABEL_11:
      v12 = PKLocalizedPaymentString(&v9->isa);
LABEL_17:
      v14 = v12;
      v15 = [v7 alertControllerWithTitle:v8 message:v12 preferredStyle:1];

      v16 = MEMORY[0x1E69DC648];
      v17 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
      v18 = [v16 actionWithTitle:v17 style:1 handler:0];
      [v15 addAction:v18];

      [(PKPaymentPassDetailViewController *)self presentViewController:v15 animated:1 completion:0];
      goto LABEL_18;
    }

    v10 = self->_transitProperties;
    if (v10 && [(PKTransitPassProperties *)v10 isBlocked])
    {
      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Unable to perform transfer. Pass is blocked.", buf, 2u);
      }

      v7 = MEMORY[0x1E69DC650];
      v8 = PKLocalizedPaymentString(&cfstr_CouldNotAddCar.isa);
      v9 = @"COULD_NOT_ADD_CARD_MESSAGE";
      goto LABEL_11;
    }
  }

  if (([MEMORY[0x1E69B9358] isWalletVisible] & 1) == 0)
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "Unable to perform transfer. Wallet app is not installed.", buf, 2u);
    }

    v7 = MEMORY[0x1E69DC650];
    v8 = PKLocalizedPaymentString(&cfstr_CouldNotAddCar.isa);
    v12 = PKLocalizedDeletableString(&cfstr_WalletUninstal_0.isa);
    goto LABEL_17;
  }

  self->_performingCardTransfer = 1;
  [(PKPaymentPassDetailViewController *)self reloadData:0];
  objc_initWeak(buf, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __71__PKPaymentPassDetailViewController__didSelectTransferCardAtIndexPath___block_invoke;
  v19[3] = &unk_1E8013B00;
  objc_copyWeak(&v20, buf);
  v19[4] = self;
  [(PKPaymentPassDetailViewController *)self _preflightWatchForTransferWithCompletion:v19];
  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
LABEL_18:
}

void __71__PKPaymentPassDetailViewController__didSelectTransferCardAtIndexPath___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__PKPaymentPassDetailViewController__didSelectTransferCardAtIndexPath___block_invoke_2;
  v8[3] = &unk_1E8013AD8;
  objc_copyWeak(&v11, (a1 + 40));
  v12 = a2;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);

  objc_destroyWeak(&v11);
}

void __71__PKPaymentPassDetailViewController__didSelectTransferCardAtIndexPath___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 56) == 1 && !*(a1 + 32))
    {
      v5 = objc_alloc(MEMORY[0x1E69B8D48]);
      v6 = [MEMORY[0x1E69B8EF8] sharedService];
      v7 = [v5 initWithWebService:v6];

      [v7 setPaymentDataProvider:*(*(a1 + 40) + 2152)];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __71__PKPaymentPassDetailViewController__didSelectTransferCardAtIndexPath___block_invoke_3;
      v9[3] = &unk_1E801D6E0;
      objc_copyWeak(&v11, (a1 + 48));
      v9[4] = *(a1 + 40);
      v8 = v7;
      v10 = v8;
      [v8 validatePreconditionsAndRegister:v9];

      objc_destroyWeak(&v11);
    }

    else
    {
      v3 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [*(a1 + 32) description];
        *buf = 138412290;
        v13 = v4;
        _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Transfer preflight failed for watch with error:%@", buf, 0xCu);
      }

      [WeakRetained _handleProvisioningError:*(a1 + 32)];
      WeakRetained[1298] = 0;
      [WeakRetained reloadData:0];
    }
  }
}

void __71__PKPaymentPassDetailViewController__didSelectTransferCardAtIndexPath___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PKPaymentPassDetailViewController__didSelectTransferCardAtIndexPath___block_invoke_4;
  block[3] = &unk_1E8026480;
  objc_copyWeak(&v13, (a1 + 48));
  v14 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v13);
}

void __71__PKPaymentPassDetailViewController__didSelectTransferCardAtIndexPath___block_invoke_4(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(a1 + 64) == 1 && !*(a1 + 32))
    {
      v5 = [objc_alloc(MEMORY[0x1E69B8C40]) initWithPaymentPass:*(*(a1 + 40) + 1088)];
      v6 = *(a1 + 48);
      v13[0] = v5;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __71__PKPaymentPassDetailViewController__didSelectTransferCardAtIndexPath___block_invoke_5;
      v8[3] = &unk_1E8013B00;
      objc_copyWeak(&v10, (a1 + 56));
      v9 = *(a1 + 48);
      [v6 associateCredentials:v7 withCompletionHandler:v8];

      objc_destroyWeak(&v10);
    }

    else
    {
      v3 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [*(a1 + 32) description];
        *buf = 138412290;
        v12 = v4;
        _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Transfer preflight failed for local device with error:%@", buf, 0xCu);
      }

      [WeakRetained _handleProvisioningError:*(a1 + 32)];
      WeakRetained[1298] = 0;
      [WeakRetained reloadData:0];
    }
  }
}

void __71__PKPaymentPassDetailViewController__didSelectTransferCardAtIndexPath___block_invoke_5(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__PKPaymentPassDetailViewController__didSelectTransferCardAtIndexPath___block_invoke_6;
  v7[3] = &unk_1E8013AD8;
  objc_copyWeak(&v10, (a1 + 40));
  v11 = a2;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);

  objc_destroyWeak(&v10);
}

void __71__PKPaymentPassDetailViewController__didSelectTransferCardAtIndexPath___block_invoke_6(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 56) == 1 && !*(a1 + 32))
    {
      v6 = [WeakRetained _paymentSetupNavigationControllerForProvisioningController:*(a1 + 40)];
      [v6 setAllowsManualEntry:0];
      [v6 setPaymentSetupMode:1];
      [v3 presentViewController:v6 animated:1 completion:0];
    }

    else
    {
      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 32) description];
        v7 = 138412290;
        v8 = v5;
        _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Transfer associateCredential failed for local device with error:%@", &v7, 0xCu);
      }

      [v3 _handleProvisioningError:*(a1 + 32)];
    }

    v3[1298] = 0;
    [v3 reloadData:0];
  }
}

- (id)_paymentSetupNavigationControllerForProvisioningController:(id)controller
{
  detailViewStyle = self->_detailViewStyle;
  v5 = 3;
  if (detailViewStyle != 1)
  {
    v5 = 0;
  }

  if (detailViewStyle == 2)
  {
    v6 = 4;
  }

  else
  {
    v6 = v5;
  }

  controllerCopy = controller;
  v8 = [[PKPaymentSetupNavigationController alloc] initWithProvisioningController:controllerCopy context:v6];

  [(PKPaymentSetupNavigationController *)v8 setGroupsController:self->_groupsController];
  [(PKNavigationController *)v8 setCustomFormSheetPresentationStyleForiPad];
  [(PKPaymentSetupNavigationController *)v8 setSetupDelegate:self];

  return v8;
}

- (void)_handleProvisioningError:(id)error
{
  v4 = [PKPaymentSetupNavigationController viewControllerForPresentingPaymentError:error];
  [(PKPaymentPassDetailViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (BOOL)_isJapaneseRegion
{
  targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
  deviceRegion = [targetDevice deviceRegion];
  v4 = [deviceRegion isEqualToString:@"JP"];

  return v4;
}

- (void)_didSelectDeleteCardFromSourceItem:(id)item
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = [PKViewControllerPresentationTarget targetWithPresentingViewController:self sourceItem:item];
  if ([(PKPaymentPass *)self->_pass hasMerchantTokens])
  {
    v5 = MEMORY[0x1E69B8540];
    v29[0] = *MEMORY[0x1E69BB6F8];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v7 = *MEMORY[0x1E69BA6F0];
    v8 = *MEMORY[0x1E69BA440];
    v27[0] = *MEMORY[0x1E69BA680];
    v27[1] = v8;
    v9 = *MEMORY[0x1E69BB140];
    v28[0] = v7;
    v28[1] = v9;
    v27[2] = *MEMORY[0x1E69BABE8];
    v28[2] = *MEMORY[0x1E69BAC28];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
    [v5 subjects:v6 sendEvent:v10];

    v11 = self->_detailViewStyle == 2;
    pass = self->_pass;
    account = self->_account;
    merchantTokensResponse = self->_merchantTokensResponse;
    WeakRetained = objc_loadWeakRetained(&self->_deleteOverrider);
    passLibraryDataProvider = self->_passLibraryDataProvider;
    navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
    LOBYTE(v25) = v11;
    [PKPassDeleteHelper presentMerchantTokenDeletePaymentPassAlertForPass:pass withAccount:account merchantTokensResponse:merchantTokensResponse deleteHander:WeakRetained passLibraryDataProvider:passLibraryDataProvider navigationController:navigationController presentationTarget:v4 isBridge:v25];
  }

  else
  {
    v26 = self->_pass;
    v18 = self->_account;
    paymentServiceDataProvider = self->_paymentServiceDataProvider;
    transitBalanceModel = self->_transitBalanceModel;
    transitProperties = self->_transitProperties;
    connectedInstitution = [(PKPassDetailBankConnectSectionController *)self->_bankConnectSectionController connectedInstitution];
    detailViewStyle = self->_detailViewStyle;
    v24 = objc_loadWeakRetained(&self->_deleteOverrider);
    [PKPassDeleteHelper presentDeletePaymentPassAlertForPass:v26 withAccount:v18 paymentServiceDataProvider:paymentServiceDataProvider transitBalanceModel:transitBalanceModel transitPassProperties:transitProperties fkInstitution:connectedInstitution detailViewStyle:detailViewStyle deleteHander:v24 passLibraryDataProvider:self->_passLibraryDataProvider presentationTarget:v4];
  }
}

- (void)_resetIdentityProofingData
{
  v3 = objc_alloc_init(MEMORY[0x1E6997DD8]);
  issuerAdministrativeAreaCode = [(PKPaymentPass *)self->_pass issuerAdministrativeAreaCode];
  issuerCountryCode = [(PKPaymentPass *)self->_pass issuerCountryCode];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PKPaymentPassDetailViewController__resetIdentityProofingData__block_invoke;
  v7[3] = &unk_1E80264A8;
  v7[4] = self;
  v8 = v3;
  v6 = v3;
  [v6 cancelProofingWithState:issuerAdministrativeAreaCode country:issuerCountryCode completion:v7];
}

void __63__PKPaymentPassDetailViewController__resetIdentityProofingData__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(*(a1 + 32) + 1088) uniqueID];
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Failed to cancel proofing session for pass '%@', error: %@", &v6, 0x16u);
    }
  }
}

- (void)_startPrecursorProvisioningWithController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v8 = [[PKPaymentSetupDismissibleNavigationController alloc] initWithContext:0];
  if (self->_detailViewStyle == 2)
  {
    [MEMORY[0x1E69B8D48] watchWebServiceForIssuerProvisioning];
  }

  else
  {
    [MEMORY[0x1E69B8EF8] sharedService];
  }
  v16 = ;
  v9 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:v16];
  v10 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:0 provisioningController:v9 groupsController:0];
  [v10 setIsFollowupProvisioning:1];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
  pass = self->_pass;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __90__PKPaymentPassDetailViewController__startPrecursorProvisioningWithController_completion___block_invoke;
  v21[3] = &unk_1E80264D0;
  v13 = navigationController;
  v22 = v13;
  v23 = v8;
  v25 = v26;
  v24 = completionCopy;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__PKPaymentPassDetailViewController__startPrecursorProvisioningWithController_completion___block_invoke_3;
  v17[3] = &unk_1E8016728;
  v20 = v26;
  v14 = v24;
  v19 = v14;
  v15 = v23;
  v18 = v15;
  [PKProvisioningFlowBridge startPrecursorPassFlowWithNavController:v15 context:v10 pass:pass precursorController:controllerCopy parentNavController:v13 presentNavController:v21 completion:v17];

  _Block_object_dispose(v26, 8);
}

void __90__PKPaymentPassDetailViewController__startPrecursorProvisioningWithController_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __90__PKPaymentPassDetailViewController__startPrecursorProvisioningWithController_completion___block_invoke_2;
  v5[3] = &unk_1E801A430;
  v4 = *(a1 + 48);
  v3 = v4;
  v6 = v4;
  [v1 presentViewController:v2 animated:1 completion:v5];
}

uint64_t __90__PKPaymentPassDetailViewController__startPrecursorProvisioningWithController_completion___block_invoke_3(void *a1)
{
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    (*(a1[5] + 16))();
  }

  v2 = a1[4];

  return [v2 dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)_canSelectBalanceOrCommutePlanCellAtRowIndex:(int64_t)index
{
  if (([(PKPaymentPass *)self->_pass isAutoTopEnabled]& 1) != 0)
  {
    return 0;
  }

  v6 = [(NSArray *)self->_displayableBalanceFields count];
  v7 = index - v6;
  if (index >= v6)
  {
    v8 = [(NSArray *)self->_commutePlans objectAtIndex:v7];
    v10 = [(PKPaymentPassDetailViewController *)self _actionForCommutePlan:v8];
    v5 = (v7 & 0x8000000000000000) == 0 && v7 < [(NSArray *)self->_commutePlanFields count]&& [(PKPaymentPassDetailViewController *)self _commutePlanIsSelectable:v8 action:v10];
  }

  else
  {
    v8 = [(PKPaymentPassDetailViewController *)self _topUpActionForRow:index];
    needsHardcodedReminderOptions = [(PKPaymentPass *)self->_pass needsHardcodedReminderOptions];
    if (v8)
    {
      v5 = 1;
    }

    else
    {
      v5 = needsHardcodedReminderOptions;
    }
  }

  return v5;
}

- (int64_t)_rowIndexForExpressTransitSettingsCell
{
  if (![(PKPaymentPassDetailViewController *)self _shouldShowTransitExpressSettingCell]|| ![(PKDynamicTableViewController *)self hasSectionForSectionIdentifier:@"CardInfo"])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  tableView = [(PKPaymentPassDetailViewController *)self tableView];
  v4 = [tableView numberOfRowsInSection:{-[PKDynamicTableViewController indexOfSectionIdentifier:](self, "indexOfSectionIdentifier:", @"CardInfo"}] - 1;

  return v4;
}

- (PKContactResolver)contactResolver
{
  contactResolver = self->_contactResolver;
  if (!contactResolver)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v5 = objc_alloc(MEMORY[0x1E69B8740]);
    _contactKeysToFetch = [(PKPaymentPassDetailViewController *)self _contactKeysToFetch];
    v7 = [v5 initWithContactStore:v4 keysToFetch:_contactKeysToFetch];
    v8 = self->_contactResolver;
    self->_contactResolver = v7;

    [(PKContactResolver *)self->_contactResolver addDelegate:self];
    contactResolver = self->_contactResolver;
  }

  return contactResolver;
}

- (PKContactAvatarManager)contactAvatarManager
{
  contactAvatarManager = self->_contactAvatarManager;
  if (!contactAvatarManager)
  {
    v4 = [PKContactAvatarManager alloc];
    contactResolver = [(PKPaymentPassDetailViewController *)self contactResolver];
    v6 = [(PKContactAvatarManager *)v4 initWithContactResolver:contactResolver paymentDataProvider:self->_paymentServiceDataProvider];
    v7 = self->_contactAvatarManager;
    self->_contactAvatarManager = v6;

    contactAvatarManager = self->_contactAvatarManager;
  }

  return contactAvatarManager;
}

- (id)_contactInfoAttributedText:(id)text phoneNumber:(id)number
{
  textCopy = text;
  numberCopy = number;
  v7 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = MEMORY[0x1E69DB648];
  v10 = MEMORY[0x1E69DB650];
  if (textCopy)
  {
    v11 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC78], 4096, 0);
    [v8 setObject:v11 forKeyedSubscript:*v9];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v8 setObject:secondaryLabelColor forKeyedSubscript:*v10];

    if (numberCopy)
    {
      v13 = @"%@\n";
    }

    else
    {
      v13 = @"%@";
    }

    textCopy = [MEMORY[0x1E696AEC0] stringWithFormat:v13, textCopy];
    v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:textCopy attributes:v8];
    [v7 appendAttributedString:v15];
  }

  if (numberCopy)
  {
    v16 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC70], 4096, 0);
    [v8 setObject:v16 forKeyedSubscript:*v9];

    linkColor = [MEMORY[0x1E69DC888] linkColor];
    [v8 setObject:linkColor forKeyedSubscript:*v10];

    v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:numberCopy attributes:v8];
    [v7 appendAttributedString:v18];
  }

  v19 = [v7 copy];

  return v19;
}

- (unint64_t)_passStateSectionGenerateCellWithOutput:(id *)output forRowIndex:(int64_t)index tableView:(id)view
{
  viewCopy = view;
  if (![(PKPaymentPassDetailViewController *)self _isShowingLostModeInterface])
  {
    if ([(PKPaymentPass *)self->_pass activationState]!= PKPaymentPassActivationStateRequiresActivation)
    {
      v9 = 0;
      goto LABEL_13;
    }

    continueVerificationButtonTitle = [(PKPaymentVerificationController *)self->_verificationController continueVerificationButtonTitle];
    traitCollection = [(PKPaymentPassDetailViewController *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    verificationRecord = [(PKPaymentVerificationController *)self->_verificationController verificationRecord];
    channel = [verificationRecord channel];
    if ([channel type] == 4)
    {

      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 0)
      {
        v9 = 0;
        goto LABEL_7;
      }
    }

    else
    {
    }

    v9 = 1;
    if (!output || index)
    {
      goto LABEL_7;
    }

    if (!continueVerificationButtonTitle)
    {
      v11 = [(PKPaymentPassDetailViewController *)self _spinnerCellForTableView:viewCopy];
      goto LABEL_6;
    }

LABEL_5:
    v11 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:continueVerificationButtonTitle forTableView:viewCopy];
LABEL_6:
    v12 = *output;
    *output = v11;

    v9 = 1;
LABEL_7:

    goto LABEL_13;
  }

  v9 = 1;
  if (output && !index)
  {
    continueVerificationButtonTitle = PKLocalizedPaymentString(&cfstr_LostmodeEnterP.isa);
    goto LABEL_5;
  }

LABEL_13:

  return v9;
}

- (id)_headerTitleForPassStateSection
{
  if ([(PKPaymentPassDetailViewController *)self _isShowingLostModeInterface])
  {
    v3 = @"LOSTMODE_HEADER";
LABEL_5:
    v4 = PKLocalizedPaymentString(&v3->isa);
    goto LABEL_7;
  }

  if ([(PKPaymentPass *)self->_pass activationState]== PKPaymentPassActivationStateRequiresActivation)
  {
    v3 = @"ACTIVATION_HEADER";
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (BOOL)_isShowingLostModeInterface
{
  devicePrimaryPaymentApplication = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
  if ([devicePrimaryPaymentApplication state] == 7)
  {
    v4 = 1;
  }

  else if (self->_detailViewStyle == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = PKNeedsLostModeExitAuth();
  }

  return v4;
}

- (void)_didSelectPassStateSection
{
  if ([(PKPaymentPassDetailViewController *)self _isShowingLostModeInterface])
  {
    if (self->_detailViewStyle == 2)
    {
      v5 = objc_alloc_init(getNPKCompanionAgentConnectionClass_8());
      [v5 initiateLostModeExitAuthWithCompletion:0];
    }

    else
    {
      v3 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Starting FMDFMIP lost mode exit.", buf, 2u);
      }

      mEMORY[0x1E699C848] = [MEMORY[0x1E699C848] sharedInstance];
      [mEMORY[0x1E699C848] initiateLostModeExitAuthWithCompletion:&__block_literal_global_1365];
    }
  }

  else if ([(PKPaymentPass *)self->_pass activationState]== PKPaymentPassActivationStateRequiresActivation)
  {

    [(PKPaymentPassDetailViewController *)self _presentVerificationFlow];
  }
}

void __63__PKPaymentPassDetailViewController__didSelectPassStateSection__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PKLogFacilityTypeGetObject();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [v2 localizedDescription];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Error exiting lost mode: %@", &v6, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Completed FMDFMIP lost mode exit.", &v6, 2u);
    }

    PKSetNeedsLostModeExitAuth();
  }
}

- (double)_footerViewHeightForPassStateSectionWithTableView:(id)view
{
  viewCopy = view;
  if (![(PKPaymentPassDetailViewController *)self _isShowingLostModeInterface]&& [(PKPaymentPass *)self->_pass activationState]== PKPaymentPassActivationStateRequiresActivation && ([(PKPaymentVerificationController *)self->_verificationController verificationRecord], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    [viewCopy bounds];
    v7 = v6;
    _activationFooterView = [(PKPaymentPassDetailViewController *)self _activationFooterView];
    [_activationFooterView sizeThatFits:{v7, 1.79769313e308}];
    v10 = v9;
  }

  else
  {
    [viewCopy sectionFooterHeight];
    v10 = v11;
  }

  return v10;
}

- (id)_footerViewForPassStateSection
{
  if (![(PKPaymentPassDetailViewController *)self _isShowingLostModeInterface]&& [(PKPaymentPass *)self->_pass activationState]== PKPaymentPassActivationStateRequiresActivation && ([(PKPaymentVerificationController *)self->_verificationController verificationRecord], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    _activationFooterView = [(PKPaymentPassDetailViewController *)self _activationFooterView];
  }

  else
  {
    _activationFooterView = 0;
  }

  return _activationFooterView;
}

- (id)createFooterHyperlinkViewWithText:(id)text action:(id)action
{
  actionCopy = action;
  textCopy = text;
  v8 = objc_alloc_init(PKFooterHyperlinkView);
  [(PKFooterHyperlinkView *)v8 setAttributedText:textCopy];

  [(PKFooterHyperlinkView *)v8 setLinkTextColor:self->_linkTextColor];
  [(PKFooterHyperlinkView *)v8 setAction:actionCopy];

  return v8;
}

- (id)_footerViewForPendingPeerPaymentAssociatedAccount
{
  v3 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentFam_1.isa);
  v4 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentFam_2.isa, &stru_1F3BD5BF0.isa, v3);
  v5 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/kb/HT211324"];
  v6 = PKAttributedStringByAddingLinkToSubstring(v4, v3, v5);
  v7 = &__block_literal_global_52;
  v8 = [(PKPaymentPassDetailViewController *)self createFooterHyperlinkViewWithText:v6 action:&__block_literal_global_52];

  return v8;
}

- (id)_footerViewForAccountUsersSection
{
  v3 = PKLocalizedFeatureString();
  v4 = PKLocalizedFeatureString();
  v5 = [MEMORY[0x1E695DFF8] URLWithString:{@"https://support.apple.com/kb/HT212020", v3}];
  v6 = PKAttributedStringByAddingLinkToSubstring(v4, v3, v5);
  v7 = &__block_literal_global_52;
  v8 = [(PKPaymentPassDetailViewController *)self createFooterHyperlinkViewWithText:v6 action:&__block_literal_global_52];

  return v8;
}

- (BOOL)_showPeerPaymentBalanceFDICFooterView
{
  v2 = PKPeerPaymentFDICSignageEnabled();
  if (v2)
  {

    LOBYTE(v2) = PKPeerPaymentAccountIsFDICInsured();
  }

  return v2;
}

- (id)_footerViewForPeerPaymentBalanceSectionWithTableView:(id)view
{
  viewCopy = view;
  if ([(PKPaymentPassDetailViewController *)self _showPeerPaymentBalanceFDICFooterView])
  {
    v5 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"PeerPaymentBalanceReuseIdentifier"];
    if (!v5)
    {
      v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_17.isa);
      v5 = [[PKFDICTableViewFooterView alloc] initWithReuseIdentifier:@"PeerPaymentBalanceReuseIdentifier" feature:1 displayingBankName:1 footerText:v6];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_footerViewForApplePayProductPrivacySection
{
  if (self->_detailViewStyle == 2)
  {
    linkTextColor = self->_linkTextColor;
  }

  else
  {
    linkTextColor = 0;
  }

  v4 = linkTextColor;
  if (self->_peerPaymentAccount)
  {
    v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_30.isa);
    v27 = 0;
    v6 = [(PKPaymentPassDetailViewController *)self privacyFooterAttributedStringWithText:v5 privacyContext:2 outputURL:&v27];
    v7 = v27;

    if ([(PKPaymentPassDetailViewController *)self shouldMapSection:46])
    {
      v8 = 0;
    }

    else
    {
      v26 = 0;
      v14 = [(PKPaymentPassDetailViewController *)self _legalNoticesFooterWithAttributedString:v6 combineString:@"\n\n" outputURL:&v26];
      v8 = v26;

      v6 = v14;
    }

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __80__PKPaymentPassDetailViewController__footerViewForApplePayProductPrivacySection__block_invoke;
    aBlock[3] = &unk_1E80264F8;
    objc_copyWeak(&v24, &location);
    v15 = v7;
    v21 = v15;
    v22 = v4;
    v16 = v8;
    v23 = v16;
    v17 = _Block_copy(aBlock);
    v18 = [(PKPaymentPassDetailViewController *)self createFooterHyperlinkViewWithText:v6 action:v17];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);

    goto LABEL_15;
  }

  if ([(PKAccount *)self->_account feature]== 2)
  {
    [(PKAccount *)self->_account feature];
    v9 = PKLocalizedFeatureString();
    selfCopy2 = self;
    v11 = v9;
    v12 = v4;
    v13 = 4;
LABEL_13:
    v18 = [(PKPaymentPassDetailViewController *)selfCopy2 createPrivacyFooterViewWithText:v11 tintColor:v12 privacyContext:v13];

    goto LABEL_15;
  }

  if ([(PKPaymentPassDetailViewController *)self passSupportsDeviceAssessment])
  {
    v9 = PKLocalizedPaymentString(&cfstr_DeviceAssessme_3.isa);
    selfCopy2 = self;
    v11 = v9;
    v12 = v4;
    v13 = 1;
    goto LABEL_13;
  }

  v18 = 0;
LABEL_15:

  return v18;
}

void __80__PKPaymentPassDetailViewController__footerViewForApplePayProductPrivacySection__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if ([v6 isEqual:*(a1 + 32)])
    {
      v4 = PKGenericOnboardingPresenter(WeakRetained, *(a1 + 40));
      v5 = PKOpenOnboardingHyperlinkAction(v4);
      (v5)[2](v5, v6);
    }

    else if ([v6 isEqual:*(a1 + 48)])
    {
      [WeakRetained _presentLegalDisclosureViewController];
    }
  }
}

- (id)createPrivacyFooterViewForContext:(unint64_t)context tintColor:(id)color
{
  colorCopy = color;
  v7 = [MEMORY[0x1E69B7D48] pk_privacyFlowForContext:context];
  v8 = v7;
  if (v7)
  {
    localizedButtonCaption = [v7 localizedButtonCaption];
    localizedButtonTitle = [v8 localizedButtonTitle];
    v11 = localizedButtonTitle;
    if (localizedButtonCaption)
    {
      v12 = PKLocalizedPaymentString(&cfstr_PassDetailsPri.isa, &stru_1F3BD6370.isa, localizedButtonCaption, localizedButtonTitle);
    }

    else
    {
      v12 = localizedButtonTitle;
    }

    v14 = v12;
    v15 = MEMORY[0x1E695DFF8];
    v16 = MEMORY[0x1E696AEC0];
    identifier = [v8 identifier];
    v18 = [v16 stringWithFormat:@"onboarding:%@", identifier];
    v19 = [v15 URLWithString:v18];

    v20 = PKAttributedStringByAddingLinkToSubstring(v14, v11, v19);
    v21 = PKGenericOnboardingPresenter(self, colorCopy);
    v22 = PKOpenOnboardingHyperlinkAction(v21);
    v13 = [(PKPaymentPassDetailViewController *)self createFooterHyperlinkViewWithText:v20 action:v22];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)createPrivacyFooterViewWithText:(id)text tintColor:(id)color privacyContext:(unint64_t)context
{
  colorCopy = color;
  v14 = 0;
  v9 = [(PKPaymentPassDetailViewController *)self privacyFooterAttributedStringWithText:text privacyContext:context outputURL:&v14];
  if (v14)
  {
    v10 = PKGenericOnboardingPresenter(self, colorCopy);
    v11 = PKOpenOnboardingHyperlinkAction(v10);
    v12 = [(PKPaymentPassDetailViewController *)self createFooterHyperlinkViewWithText:v9 action:v11];
  }

  else
  {
    v12 = [(PKPaymentPassDetailViewController *)self createFooterHyperlinkViewWithText:v9 action:&__block_literal_global_1413];
  }

  return v12;
}

- (id)privacyFooterAttributedStringWithText:(id)text privacyContext:(unint64_t)context outputURL:(id *)l
{
  textCopy = text;
  v8 = [MEMORY[0x1E69B7D48] pk_privacyFlowForContext:context];
  v9 = v8;
  if (v8)
  {
    localizedButtonTitle = [v8 localizedButtonTitle];
    v11 = localizedButtonTitle;
    if (textCopy)
    {
      v12 = PKLocalizedPaymentString(&cfstr_PassDetailsPri.isa, &stru_1F3BD6370.isa, textCopy, localizedButtonTitle);
    }

    else
    {
      v12 = localizedButtonTitle;
    }

    v14 = v12;
    v15 = MEMORY[0x1E695DFF8];
    v16 = MEMORY[0x1E696AEC0];
    identifier = [v9 identifier];
    v18 = [v16 stringWithFormat:@"onboarding:%@", identifier];
    v19 = [v15 URLWithString:v18];

    if (l)
    {
      v20 = v19;
      *l = v19;
    }

    v13 = PKAttributedStringByAddingLinkToSubstring(v14, v11, v19);
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:textCopy];
  }

  return v13;
}

- (id)_footerViewForManualIdentityVerificationSection
{
  v3 = PKPeerPaymentFDICSignageEnabled();
  v4 = @"PEER_PAYMENT_PASS_DETAILS_MANUAL_VERIFY_IDENTITY_FOOTER";
  if (v3)
  {
    v4 = @"PEER_PAYMENT_PASS_DETAILS_MANUAL_VERIFY_IDENTITY_FOOTER_FDIC";
  }

  v5 = v4;
  v6 = objc_alloc(MEMORY[0x1E696AAB0]);
  v7 = PKLocalizedPeerPaymentString(v5);
  v8 = [v6 initWithString:v7];

  v9 = [(PKPaymentPassDetailViewController *)self _legalNoticesFooterWithAttributedString:v8 combineString:@"\n\n" outputURL:0];

  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__PKPaymentPassDetailViewController__footerViewForManualIdentityVerificationSection__block_invoke;
  v12[3] = &unk_1E80122D8;
  objc_copyWeak(&v13, &location);
  v10 = [(PKPaymentPassDetailViewController *)self createFooterHyperlinkViewWithText:v9 action:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v10;
}

void __84__PKPaymentPassDetailViewController__footerViewForManualIdentityVerificationSection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentLegalDisclosureViewController];
}

- (id)_footerViewForPassOperationsSection
{
  if ([(PKPaymentPassDetailViewController *)self _accountFeature]== 2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
    v4 = [(PKPaymentPassDetailViewController *)self _legalNoticesFooterWithAttributedString:v3 combineString:&stru_1F3BD7330 outputURL:0];
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__PKPaymentPassDetailViewController__footerViewForPassOperationsSection__block_invoke;
    v7[3] = &unk_1E80122D8;
    objc_copyWeak(&v8, &location);
    v5 = [(PKPaymentPassDetailViewController *)self createFooterHyperlinkViewWithText:v4 action:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __72__PKPaymentPassDetailViewController__footerViewForPassOperationsSection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentLegalDisclosureViewController];
}

- (id)_legalNoticesFooterWithAttributedString:(id)string combineString:(id)combineString outputURL:(id *)l
{
  stringCopy = string;
  combineStringCopy = combineString;
  if ([(PKPaymentPassDetailViewController *)self _accountFeature]- 1 > 1)
  {
    v10 = 0;
    v12 = 0;
LABEL_9:
    v17 = stringCopy;
    goto LABEL_12;
  }

  v10 = PKDynamicLocalizedFeatureString();
  v11 = PKDynamicLocalizedFeatureString();
  v12 = v11;
  if (!v10 || !v11)
  {
    goto LABEL_9;
  }

  v13 = [MEMORY[0x1E695DFF8] URLWithString:{@"legalNotice", v10}];
  v14 = v13;
  if (l)
  {
    v15 = v13;
    *l = v14;
  }

  if (stringCopy)
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", combineStringCopy, v12];

    v17 = [stringCopy mutableCopy];
    v18 = PKAttributedStringByAddingLinkToSubstring(v16, v10, v14);
    [v17 appendAttributedString:v18];

    v12 = v16;
  }

  else
  {
    v17 = PKAttributedStringByAddingLinkToSubstring(v12, v10, v14);
  }

LABEL_12:

  return v17;
}

- (id)_footerTextForPassStateSection
{
  title = PKPassLocalizedStringForStateWithFormat(&cfstr_PassDashboardT.isa, &self->_pass->super, 0);
  pass = self->_pass;
  localizedDescription = [(PKPaymentPass *)pass localizedDescription];
  v6 = PKPassLocalizedStringForStateWithFormat(&cfstr_PassDashboardD_22.isa, &pass->super, &stru_1F3BD5BF0.isa, localizedDescription);

  if (title)
  {
    goto LABEL_34;
  }

  supportsBarcodePayment = [(PKPaymentPass *)self->_pass supportsBarcodePayment];
  v8 = MEMORY[0x1E69BC6F8];
  if (supportsBarcodePayment)
  {
    v9 = MEMORY[0x1E69BC700];
    v10 = @"_ACCOUNT";
  }

  else
  {
    cardType = [(PKPaymentPass *)self->_pass cardType];
    v8 = MEMORY[0x1E69BC708];
    v12 = MEMORY[0x1E69BC710];
    if (cardType == 3 && (v13 = [(PKPaymentPass *)self->_pass accessType]- 1, v8 = MEMORY[0x1E69BC708], v12 = MEMORY[0x1E69BC710], v13 <= 5))
    {
      v10 = off_1E8026848[v13];
      v8 = MEMORY[0x1E69BC708];
      v9 = MEMORY[0x1E69BC710];
    }

    else
    {
      v9 = v12;
      v10 = &stru_1F3BD7330;
    }
  }

  if ([(PKPaymentPassDetailViewController *)self _isShowingLostModeInterface])
  {
    title = 0;
    goto LABEL_34;
  }

  v14 = [(PKPaymentPass *)self->_pass appletStateMessageOverrideOfType:1];
  v15 = v14;
  if (v14)
  {
    title = [v14 title];
    [v15 body];
    v6 = v16 = v6;
LABEL_32:

    goto LABEL_33;
  }

  activationState = [(PKPaymentPass *)self->_pass activationState];
  activationState2 = [(PKPaymentPass *)self->_pass activationState];
  activationState3 = [(PKPaymentPass *)self->_pass activationState];
  devicePrimaryPaymentApplication = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
  state = [devicePrimaryPaymentApplication state];

  if (activationState == PKPaymentPassActivationStateActivating)
  {
    title = PKLocalizedPaymentString(&cfstr_ActivatingTitl.isa);
    v20 = @"ACTIVATING_MESSAGE";
    v21 = v10;
LABEL_29:
    v16 = [(__CFString *)v20 stringByAppendingString:v21];
    v30 = v8();
    goto LABEL_30;
  }

  v22 = v10;
  if (activationState2 == PKPaymentPassActivationStateDeactivated)
  {
    v23 = [@"PAYMENT_APP_ERROR_TITLE" stringByAppendingString:v10];
    title = v8();

    if (state == 5)
    {
      v20 = @"PAYMENT_APP_VERIFICATION_TERMINATED";
LABEL_28:
      v21 = v22;
      goto LABEL_29;
    }

    devicePrimaryPaymentApplication2 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
    state2 = [devicePrimaryPaymentApplication2 state];

    if (state2 == 10)
    {
      v25 = @"PAYMENT_APP_REMOVED_BY_ISSUER";
      goto LABEL_23;
    }
  }

  else
  {
    if (activationState3 == PKPaymentPassActivationStateSuspended)
    {
      v24 = [@"PAYMENT_APP_ERROR_TITLE" stringByAppendingString:v10];
      title = v8();

      if (state == 9)
      {
        localizedSuspendedReason = [(PKPaymentPass *)self->_pass localizedSuspendedReason];
        v16 = localizedSuspendedReason;
        if (!localizedSuspendedReason)
        {
          v36 = [@"PAYMENT_APP_ERROR_BODY" stringByAppendingString:v22];
          v31 = v8();

          v6 = v36;
          goto LABEL_31;
        }

        v30 = localizedSuspendedReason;
LABEL_30:
        v31 = v30;
LABEL_31:

        v6 = v31;
        goto LABEL_32;
      }

      if (state != 6)
      {
        v20 = @"PAYMENT_APP_ERROR_BODY";
        goto LABEL_28;
      }

      v25 = @"PAYMENT_APP_SUSPENDED_BY_ISSUER";
LABEL_23:
      v16 = [(__CFString *)v25 stringByAppendingString:v22];
      organizationName = [(PKPaymentPass *)self->_pass organizationName];
      v28 = v9(v16, @"%@");

      v6 = v28;
      goto LABEL_32;
    }

    title = 0;
  }

LABEL_33:

LABEL_34:
  pk_uppercaseStringForPreferredLocale = [title pk_uppercaseStringForPreferredLocale];

  if (v6)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@", v6];
    v34 = [pk_uppercaseStringForPreferredLocale stringByAppendingString:v33];
  }

  else
  {
    v34 = pk_uppercaseStringForPreferredLocale;
  }

  return v34;
}

- (double)_heightForPassStateSectionWithTableView:(id)view
{
  viewCopy = view;
  if ([(PKPaymentPass *)self->_pass activationState]== PKPaymentPassActivationStateRequiresActivation || [(PKPaymentPassDetailViewController *)self _isShowingLostModeInterface])
  {
    [viewCopy sectionHeaderHeight];
    v6 = v5;
  }

  else
  {
    v6 = 0.1;
  }

  return v6;
}

- (void)_updateBalanceIfNecessary
{
  if ([(PKPaymentPassDetailViewController *)self _accountFeature]== 4)
  {
    if ([(PKAccount *)self->_account state]== 1)
    {
      appleBalanceDetails = [(PKAccount *)self->_account appleBalanceDetails];
      accountSummary = [appleBalanceDetails accountSummary];
      currentBalance = [accountSummary currentBalance];
      currencyCode = [appleBalanceDetails currencyCode];
      v7 = PKCurrencyAmountMake();
    }

    else
    {
      v7 = 0;
    }

    [(PKPaymentPassDetailBalanceSectionController *)self->_balanceSectionController setBalance:v7];
  }
}

- (void)setDeleteOverrider:(id)overrider
{
  overriderCopy = overrider;
  WeakRetained = objc_loadWeakRetained(&self->_deleteOverrider);
  v6 = WeakRetained;
  if (WeakRetained != overriderCopy)
  {
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v6 setDeletionStatusHandler:0 forPass:self->_pass];
    }

    objc_storeWeak(&self->_deleteOverrider, overriderCopy);
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(&location, self);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __56__PKPaymentPassDetailViewController_setDeleteOverrider___block_invoke;
      v7[3] = &unk_1E8010998;
      objc_copyWeak(&v8, &location);
      [overriderCopy setDeletionStatusHandler:v7 forPass:self->_pass];
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

void __56__PKPaymentPassDetailViewController_setDeleteOverrider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadData:0];
    WeakRetained = v2;
  }
}

- (BOOL)_isDeletingPass
{
  WeakRetained = objc_loadWeakRetained(&self->_deleteOverrider);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [WeakRetained isDeletionInProgressForPass:self->_pass];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateCashbackPeerPaymentResolutionSection
{
  account = self->_account;
  if (account)
  {
    if ([(PKAccount *)account feature]== 2)
    {
      targetDevice = [(PKPeerPaymentWebService *)self->_peerPaymentWebService targetDevice];
      account = [targetDevice account];

      objc_initWeak(&location, self);
      v6 = MEMORY[0x1E69B8770];
      v7 = self->_account;
      currentAccountUser = [(PKAccountUserCollection *)self->_accountUserCollection currentAccountUser];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __80__PKPaymentPassDetailViewController__updateCashbackPeerPaymentResolutionSection__block_invoke;
      v9[3] = &unk_1E8026548;
      objc_copyWeak(&v10, &location);
      [v6 resolutionToReceiveCashbackForAccount:v7 accountUser:currentAccountUser withPeerPaymentAccount:account completion:v9];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __80__PKPaymentPassDetailViewController__updateCashbackPeerPaymentResolutionSection__block_invoke(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__PKPaymentPassDetailViewController__updateCashbackPeerPaymentResolutionSection__block_invoke_2;
  v8[3] = &unk_1E8026520;
  objc_copyWeak(v9, (a1 + 32));
  v10 = a3;
  v9[1] = a2;
  v9[2] = a5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
  objc_destroyWeak(v9);
}

void __80__PKPaymentPassDetailViewController__updateCashbackPeerPaymentResolutionSection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1656] = *(a1 + 56);
    *(WeakRetained + 208) = *(a1 + 40);
    *(WeakRetained + 209) = *(a1 + 48);
    v3 = WeakRetained;
    [WeakRetained reloadSection:18 updates:0];
    WeakRetained = v3;
  }
}

- (void)_tabBarSegmentChanged:(id)changed
{
  v4 = [(NSArray *)self->_tabBarSegments objectAtIndex:[(UISegmentedControl *)self->_tabBar selectedSegmentIndex]];
  v5 = PKSegmentToSegmentString(v4);
  if (v5)
  {
    PKSetPassDetailsLastSelectedSegment();
  }

  unsignedIntegerValue = [v4 unsignedIntegerValue];
  if (self->_peerPaymentAccount)
  {
    v7 = unsignedIntegerValue == 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    MEMORY[0x1BFB41980](*MEMORY[0x1E69BA148], 0);
    goto LABEL_10;
  }

  if (unsignedIntegerValue == 1)
  {
LABEL_10:
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__PKPaymentPassDetailViewController__tabBarSegmentChanged___block_invoke;
    v8[3] = &unk_1E8026570;
    v8[4] = self;
    v8[5] = 1;
    [(PKPaymentPassDetailViewController *)self _reloadTransactionsWithCompletion:v8];
    goto LABEL_11;
  }

  [(PKPaymentPassDetailViewController *)self reloadData:0];
LABEL_11:
}

uint64_t __59__PKPaymentPassDetailViewController__tabBarSegmentChanged___block_invoke(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) reloadData:0];
  }

  return result;
}

- (void)_automaticPresentationSwitchChanged:(id)changed
{
  pass = self->_pass;
  changedCopy = changed;
  settings = [(PKPaymentPass *)pass settings];
  isOn = [changedCopy isOn];

  if (((isOn ^ ((settings & 0x10) == 0)) & 1) == 0)
  {
    v8 = 16;
    if (!isOn)
    {
      v8 = 0;
    }

    v9 = self->_pass;

    [(PKPaymentPass *)v9 setSettings:settings & 0xFFFFFFFFFFFFFFCFLL | v8 | 0x20];
  }
}

- (void)_messagesSwitchChanged:(id)changed
{
  v15[1] = *MEMORY[0x1E69E9840];
  pass = self->_pass;
  changedCopy = changed;
  settings = [(PKPaymentPass *)pass settings];
  isOn = [changedCopy isOn];

  if (((isOn ^ ((settings & 0x40) == 0)) & 1) == 0)
  {
    v8 = settings & 0xFFFFFFFFFFFFFFBFLL;
    if (isOn)
    {
      v9 = 64;
    }

    else
    {
      v9 = 0;
    }

    v10 = *MEMORY[0x1E69BA078];
    v14 = @"messages";
    v11 = [MEMORY[0x1E696AD98] numberWithBool:isOn];
    v15[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    MEMORY[0x1BFB41980](v10, v12);

    settingSwitch = [(PKSettingTableCell *)self->_messagesSwitch settingSwitch];
    [settingSwitch setEnabled:0];

    [(PKPaymentPass *)self->_pass setSettings:v9 | v8];
  }
}

- (void)_transactionsSwitchChanged:(id)changed
{
  v16[1] = *MEMORY[0x1E69E9840];
  pass = self->_pass;
  changedCopy = changed;
  settings = [(PKPaymentPass *)pass settings];
  isOn = [changedCopy isOn];

  if (((isOn ^ ((settings & 8) == 0)) & 1) == 0)
  {
    v8 = settings & 0xFFFFFFFFFFFFFFF7;
    if (isOn)
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    v10 = *MEMORY[0x1E69BA078];
    v15 = @"transactions";
    v11 = [MEMORY[0x1E696AD98] numberWithBool:isOn];
    v16[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    MEMORY[0x1BFB41980](v10, v12);

    transactionServiceURL = [(PKPaymentPass *)self->_pass transactionServiceURL];

    if (transactionServiceURL)
    {
      settingSwitch = [(PKSettingTableCell *)self->_transactionsSwitch settingSwitch];
      [settingSwitch setEnabled:0];
    }

    [(PKPaymentPass *)self->_pass setSettings:v9 | v8];
    [(PKPaymentPassDetailViewController *)self reloadData:1];
    [(PKPaymentPassDetailViewController *)self _reportPassDetailsAnalyticsForToggleTag:*MEMORY[0x1E69BB368] toggleResult:isOn additionalAnalytics:0];
  }
}

- (void)_notificationSwitchChanged:(id)changed
{
  pass = self->_pass;
  changedCopy = changed;
  settings = [(PKPaymentPass *)pass settings];
  isOn = [changedCopy isOn];

  if (isOn == ((settings >> 7) & 1))
  {
    v8 = 128;
    if (isOn)
    {
      v8 = 0;
    }

    v9 = self->_pass;

    [(PKPaymentPass *)v9 setSettings:v8 | settings & 0xFFFFFFFFFFFFFF7FLL];
  }
}

- (void)_dailyCashSwitchChanged:(id)changed
{
  pass = self->_pass;
  changedCopy = changed;
  settings = [(PKPaymentPass *)pass settings];
  isOn = [changedCopy isOn];

  if (isOn == ((settings >> 10) & 1))
  {
    v8 = 1024;
    if (isOn)
    {
      v8 = 0;
    }

    v9 = self->_pass;

    [(PKPaymentPass *)v9 setSettings:v8 | settings & 0xFFFFFFFFFFFFFBFFLL];
  }
}

- (void)_activationFooterPressed:(id)pressed
{
  [(PKPaymentVerificationController *)self->_verificationController clearSelectedChannel];

  [(PKPaymentPassDetailViewController *)self _presentVerificationFlow];
}

- (void)_presentVerificationFlow
{
  v3 = [[PKPaymentSetupDismissibleNavigationController alloc] initWithContext:[(PKPaymentVerificationController *)self->_verificationController context]];
  v4 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:self->_webService];
  v5 = objc_alloc(MEMORY[0x1E69B90E0]);
  detailViewStyle = self->_detailViewStyle;
  v7 = 3;
  if (detailViewStyle != 1)
  {
    v7 = 0;
  }

  if (detailViewStyle == 2)
  {
    v8 = 4;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v5 initWithEnvironment:v8 provisioningController:v4 groupsController:self->_groupsController];
  [v9 setIsFollowupProvisioning:1];
  objc_initWeak(&location, self);
  pass = self->_pass;
  verificationController = self->_verificationController;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__PKPaymentPassDetailViewController__presentVerificationFlow__block_invoke;
  v15[3] = &unk_1E80110E0;
  objc_copyWeak(&v17, &location);
  v12 = v3;
  v16 = v12;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__PKPaymentPassDetailViewController__presentVerificationFlow__block_invoke_2;
  v13[3] = &unk_1E8010998;
  objc_copyWeak(&v14, &location);
  [PKProvisioningFlowBridge startVerificationFlowWithNavController:v12 context:v9 pass:pass verificationController:verificationController presentNavController:v15 completion:v13];
  objc_destroyWeak(&v14);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __61__PKPaymentPassDetailViewController__presentVerificationFlow__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained navigationController];
    [v3 presentViewController:*(a1 + 32) animated:1 completion:0];

    WeakRetained = v4;
  }
}

void __61__PKPaymentPassDetailViewController__presentVerificationFlow__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained navigationController];
    [v2 dismissViewControllerAnimated:1 completion:0];

    WeakRetained = v3;
  }
}

- (void)_passSettingsChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E69BBC18]];
  uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
  v8 = [v6 isEqual:uniqueID];

  if (v8)
  {
    userInfo2 = [changedCopy userInfo];
    v10 = [userInfo2 objectForKey:*MEMORY[0x1E69BBC10]];

    if (v10)
    {
      unsignedIntegerValue = [v10 unsignedIntegerValue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __58__PKPaymentPassDetailViewController__passSettingsChanged___block_invoke;
      v12[3] = &unk_1E80119C8;
      v12[4] = self;
      v12[5] = unsignedIntegerValue;
      dispatch_async(MEMORY[0x1E69E96A0], v12);
    }
  }
}

void __58__PKPaymentPassDetailViewController__passSettingsChanged___block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 1088) setSettingsWithoutUpdatingDataAccessor:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1168);
  if (v3)
  {
    v4 = [v3 isOn] ^ ((*(a1 + 40) & 8) == 0);
    v2 = *(a1 + 32);
  }

  else
  {
    v4 = 1;
  }

  v5 = [*(v2 + 1160) settingSwitch];
  [v5 setOn:(*(a1 + 40) >> 6) & 1];

  v6 = [*(*(a1 + 32) + 1168) settingSwitch];
  [v6 setOn:(*(a1 + 40) >> 3) & 1];

  v7 = [*(*(a1 + 32) + 1192) settingSwitch];
  [v7 setOn:(*(a1 + 40) >> 4) & 1];

  v8 = [*(*(a1 + 32) + 1184) settingSwitch];
  [v8 setOn:(*(a1 + 40) & 0x80) == 0];

  if ((v4 & 1) == 0)
  {
    v9 = *(a1 + 32);
    v11[0] = @"Transactions";
    v11[1] = @"TransactionTransactionsSwitch";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    [v9 reloadPassDetailSections:v10 updates:0];
  }
}

- (void)contactsDidChangeForContactResolver:(id)resolver
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PKPaymentPassDetailViewController_contactsDidChangeForContactResolver___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)paymentSetupDidFinish:(id)finish
{
  finishCopy = finish;
  provisioningController = [finishCopy provisioningController];
  provisionedPasses = [provisioningController provisionedPasses];
  lastObject = [provisionedPasses lastObject];
  secureElementPass = [lastObject secureElementPass];
  paymentPass = [secureElementPass paymentPass];

  if (self->_detailViewStyle == 2 && paymentPass != 0)
  {
    navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
    if ([navigationController pk_settings_useStateDrivenNavigation])
    {
      [navigationController pk_settings_popViewController];
    }

    else
    {
      v11 = [navigationController popViewControllerAnimated:1];
    }
  }

  [finishCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)passHeaderViewPassWasDeleted:(id)deleted
{
  deletedCopy = deleted;
  group = self->_group;
  if (group && [(PKGroup *)group passCount])
  {
    v5 = [(PKGroup *)self->_group passAtIndex:0];
    paymentPass = [v5 paymentPass];
    pass = self->_pass;
    self->_pass = paymentPass;

    [(PKPaymentPassDetailViewController *)self _applyStaticPassPropertiesForPass];
    [deletedCopy setPass:self->_pass];
    [(PKPaymentPassDetailViewController *)self _updatePassSnapshot];
    if (self->_showingTitleIconView)
    {
      [(PKAnimatedNavigationBarTitleView *)self->_titleIconView setTitleView:self->_passSnapshotView animated:0];
    }

    [(PKPaymentPassDetailViewController *)self reloadData:0];
  }
}

- (void)callIssuerWithSourceItem:(id)item
{
  itemCopy = item;
  contactIssuerHelper = [(PKPaymentPassDetailViewController *)self contactIssuerHelper];
  [contactIssuerHelper callIssuerWithSourceItem:itemCopy];

  v6 = *MEMORY[0x1E69BA458];

  [(PKPaymentPassDetailViewController *)self _reportPassDetailsAnalyticsForTappedButtonTag:v6 additionalAnalytics:0];
}

- (void)openIssuerWebsite
{
  contactIssuerHelper = [(PKPaymentPassDetailViewController *)self contactIssuerHelper];
  [contactIssuerHelper openIssuerWebsite];

  v4 = *MEMORY[0x1E69BB2E8];

  [(PKPaymentPassDetailViewController *)self _reportPassDetailsAnalyticsForTappedButtonTag:v4 additionalAnalytics:0];
}

- (void)emailIssuer
{
  contactIssuerHelper = [(PKPaymentPassDetailViewController *)self contactIssuerHelper];
  [contactIssuerHelper emailIssuer];
}

- (void)openBusinessChat
{
  if ([(PKPaymentPassDetailViewController *)self _isBankConnectLinked])
  {
    bankConnectAccount = [(PKPaymentPassDetailViewController *)self bankConnectAccount];
    actions = [bankConnectAccount actions];
    digitalServicingURL = [actions digitalServicingURL];

    v5 = digitalServicingURL;
    if (!digitalServicingURL)
    {
LABEL_7:

      return;
    }

    PKOpenURL();
LABEL_6:
    v5 = digitalServicingURL;
    goto LABEL_7;
  }

  if (PKStoreDemoModeEnabled())
  {
    digitalServicingURL = PKUIStoreDemoGatewayViewController();
    [(PKPaymentPassDetailViewController *)self presentViewController:digitalServicingURL animated:1 completion:0];
    goto LABEL_6;
  }

  if ([(PKAccount *)self->_account feature]== 2)
  {
    v6 = [[PKBusinessChatPassDetailsContext alloc] initWithPass:self->_pass];
    v7 = objc_alloc_init(MEMORY[0x1E69B8408]);
    [v7 setBusinessChatContext:v6];
    _accountResolutionController = [(PKPaymentPassDetailViewController *)self _accountResolutionController];
    [_accountResolutionController presentFlowForAccountResolution:3 configuration:v7 completion:0];
  }

  v9 = *MEMORY[0x1E69BAAF8];

  [(PKPaymentPassDetailViewController *)self _reportPassDetailsAnalyticsForTappedButtonTag:v9 additionalAnalytics:0];
}

- (void)addMoney
{
  if ([(PKPaymentPass *)self->_pass isPeerPaymentPass])
  {

    [(PKPaymentPassDetailViewController *)self presentTopUp];
  }

  else if ([(PKPaymentPass *)self->_pass isAppleBalancePass])
  {
    appleBalanceAddMoneyUIManager = self->_appleBalanceAddMoneyUIManager;

    [(PKAppleBalanceAddMoneyUIManager *)appleBalanceAddMoneyUIManager presentAddMoneyFromViewController:self dtuConfiguration:0 inStoreToken:0];
  }
}

- (void)presentCombinedPassActionViewControllerFromBundle:(id)bundle
{
  bundleCopy = bundle;
  actionGroups = [bundleCopy actionGroups];
  v6 = [bundleCopy actionsMatchingTypes:&unk_1F3CC8768];
  v7 = [bundleCopy actionsMatchingTypes:&unk_1F3CC8780];

  v8 = [actionGroups count];
  v9 = [v6 count];
  v10 = [v7 count];
  if (!v8)
  {
    if (v9)
    {
      v15 = [PKPaymentPassActionDataController alloc];
      pass = self->_pass;
      paymentServiceDataProvider = self->_paymentServiceDataProvider;
      webService = self->_webService;
      transitBalanceModel = self->_transitBalanceModel;
      v20 = v6;
      v21 = 2;
    }

    else
    {
      if (!v10)
      {
        goto LABEL_11;
      }

      v15 = [PKPaymentPassActionDataController alloc];
      pass = self->_pass;
      paymentServiceDataProvider = self->_paymentServiceDataProvider;
      webService = self->_webService;
      transitBalanceModel = self->_transitBalanceModel;
      v20 = v7;
      v21 = 1;
    }

    v25 = [(PKPaymentPassActionDataController *)v15 initWithPass:pass actions:v20 paymentDataProvider:paymentServiceDataProvider webService:webService actionType:v21 balanceModel:transitBalanceModel];
    actionController = self->_actionController;
    self->_actionController = v25;

LABEL_11:
    v27 = self->_actionController;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __87__PKPaymentPassDetailViewController_presentCombinedPassActionViewControllerFromBundle___block_invoke_3;
    v28[3] = &unk_1E8018B30;
    v28[4] = self;
    [(PKPaymentPassActionDataController *)v27 fetchViewController:v28];
    goto LABEL_12;
  }

  firstObject = [actionGroups firstObject];
  if ([firstObject hasExternalActionContent])
  {
    v12 = self->_pass;
    externalActionContent = [firstObject externalActionContent];
    title = [firstObject title];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __87__PKPaymentPassDetailViewController_presentCombinedPassActionViewControllerFromBundle___block_invoke;
    v30[3] = &unk_1E8014560;
    v30[4] = self;
    PKPaymentPassActionPerformExternalActionContent(v12, externalActionContent, title, v30);
  }

  else
  {
    v22 = [[PKPaymentPassCombinedActionDataController alloc] initWithPass:self->_pass actionGroups:actionGroups paymentDataProvider:self->_paymentServiceDataProvider webService:self->_webService balanceModel:self->_transitBalanceModel mode:0];
    combinedActionController = self->_combinedActionController;
    self->_combinedActionController = v22;

    v24 = self->_combinedActionController;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __87__PKPaymentPassDetailViewController_presentCombinedPassActionViewControllerFromBundle___block_invoke_2;
    v29[3] = &unk_1E8018B30;
    v29[4] = self;
    [(PKPaymentPassCombinedActionDataController *)v24 fetchViewController:v29];
  }

LABEL_12:
}

uint64_t __87__PKPaymentPassDetailViewController_presentCombinedPassActionViewControllerFromBundle___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(result + 32) presentViewController:a3 animated:1 completion:0];
  }

  return result;
}

void __87__PKPaymentPassDetailViewController_presentCombinedPassActionViewControllerFromBundle___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  if (a3)
  {
    [v5 presentViewController:a3 animated:1 completion:0];
  }

  else
  {
    v6 = [v5 navigationController];
    if ([v6 pk_settings_useStateDrivenNavigation])
    {
      [v6 pk_settings_pushViewController:v7];
    }

    else
    {
      [v6 pushViewController:v7 animated:1];
    }
  }
}

void __87__PKPaymentPassDetailViewController_presentCombinedPassActionViewControllerFromBundle___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) presentViewController:v5 animated:1 completion:0];
  }

  else if (v7)
  {
    v6 = [*(a1 + 32) navigationController];
    if ([v6 pk_settings_useStateDrivenNavigation])
    {
      [v6 pk_settings_pushViewController:v7];
    }

    else
    {
      [v6 pushViewController:v7 animated:1];
    }
  }
}

- (void)didChangeVerificationPresentation
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKPaymentPassDetailViewController_didChangeVerificationPresentation__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __70__PKPaymentPassDetailViewController_didChangeVerificationPresentation__block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateActivationFooterViewContents];
  [*(a1 + 32) reloadSection:27 updates:0];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v2 = [*(*(a1 + 32) + 1952) allSectionIdentifiers];
  [v6 addObjectsFromArray:v2];

  v3 = [*(*(a1 + 32) + 1960) allSectionIdentifiers];
  [v6 addObjectsFromArray:v3];

  v4 = *(a1 + 32);
  v5 = [v6 allObjects];
  [v4 reloadSections:v5];
}

- (void)_presentMerchantDetailsViewWithTransaction:(id)transaction forCell:(id)cell
{
  v32[1] = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  cellCopy = cell;
  merchant = [transactionCopy merchant];
  mapsMerchant = [merchant mapsMerchant];

  v10 = objc_alloc_init(MEMORY[0x1E696F260]);
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(mapsMerchant, "identifier")}];
  v32[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  [v10 _setMuids:v12];

  if ([mapsMerchant resultProviderIdentifier])
  {
    [v10 _setResultProviderID:{objc_msgSend(mapsMerchant, "resultProviderIdentifier")}];
  }

  v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  v14 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __88__PKPaymentPassDetailViewController__presentMerchantDetailsViewWithTransaction_forCell___block_invoke;
  handler[3] = &unk_1E8010A10;
  v15 = v13;
  v30 = v15;
  v16 = cellCopy;
  v31 = v16;
  dispatch_source_set_event_handler(v15, handler);
  dispatch_resume(v15);
  [v16 setUserInteractionEnabled:0];
  objc_initWeak(&location, self);
  v17 = [objc_alloc(MEMORY[0x1E696F248]) initWithRequest:v10];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __88__PKPaymentPassDetailViewController__presentMerchantDetailsViewWithTransaction_forCell___block_invoke_2;
  v22[3] = &unk_1E8026598;
  v18 = v15;
  v23 = v18;
  objc_copyWeak(&v27, &location);
  v19 = transactionCopy;
  v24 = v19;
  v20 = v16;
  v25 = v20;
  v21 = mapsMerchant;
  v26 = v21;
  [v17 startWithCompletionHandler:v22];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

uint64_t __88__PKPaymentPassDetailViewController__presentMerchantDetailsViewWithTransaction_forCell___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_source_cancel(v2);
  }

  v3 = *(a1 + 40);

  return [v3 setShowsActionSpinner:1];
}

void __88__PKPaymentPassDetailViewController__presentMerchantDetailsViewWithTransaction_forCell___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    dispatch_source_cancel(v7);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if ([WeakRetained isViewLoaded])
  {
    v9 = WeakRetained[181];
    v10 = [*(a1 + 40) identifier];
    v11 = [v9 objectForKey:v10];

    v12 = WeakRetained[181];
    v13 = [*(a1 + 40) identifier];
    [v12 removeObjectForKey:v13];

    [*(a1 + 48) setShowsActionSpinner:0];
    [*(a1 + 48) setUserInteractionEnabled:1];
    if (v6 || ([v5 mapItems], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "count"), v17, !v18))
    {
      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [*(a1 + 56) identifier];
        if (v6)
        {
          v16 = [v6 localizedDescription];
        }

        else
        {
          v16 = @"no map items.";
        }

        v24 = 134218242;
        v25 = v15;
        v26 = 2112;
        v27 = v16;
        _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "PKPaymentPassDetailViewController: MKLocalSearch could not resolve merchant maps for mapsID: %llu. Error: %@", &v24, 0x16u);
        if (v6)
        {
        }
      }

      if (v11)
      {
        v11[2](v11, 0);
      }

      goto LABEL_20;
    }

    v19 = [PKMerchantMapViewController alloc];
    v20 = [v5 mapItems];
    v21 = [v20 firstObject];
    v22 = [(PKMerchantMapViewController *)v19 initWithMapItem:v21 configOptions:0x2000000000081];

    v23 = [WeakRetained navigationController];
    if ([v23 pk_settings_useStateDrivenNavigation])
    {
      [v23 pk_settings_pushViewController:v22];
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      [v23 pushViewController:v22 animated:1];
      if (!v11)
      {
LABEL_19:

LABEL_20:
        goto LABEL_21;
      }
    }

    v11[2](v11, 1);
    goto LABEL_19;
  }

LABEL_21:
}

- (void)physicalCardActionController:(id)controller didChangeToState:(int64_t)state withError:(id)error
{
  errorCopy = error;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__PKPaymentPassDetailViewController_physicalCardActionController_didChangeToState_withError___block_invoke;
  block[3] = &unk_1E8012C50;
  v10 = errorCopy;
  stateCopy = state;
  block[4] = self;
  v8 = errorCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __93__PKPaymentPassDetailViewController_physicalCardActionController_didChangeToState_withError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = v2 == 2;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    *(*(a1 + 32) + 1635) = 0;
    *(*(a1 + 32) + 1634) = 0;
  }

  else if (v2 == 3)
  {
    *(*(a1 + 32) + 1635) = 0;
    *(*(a1 + 32) + 1634) = 0;
    v4 = +[PKAccountFlowController displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:](PKAccountFlowController, "displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:", *(a1 + 40), [*(a1 + 32) _accountFeature], 0, 0);
    v5 = PKAlertForDisplayableErrorWithHandlers(v4, 0, 0, 0);
    [*(a1 + 32) presentViewController:v5 animated:1 completion:0];
  }

  v6 = *(a1 + 32);

  return [v6 reloadSection:19 updates:0];
}

- (id)presentationSceneIdentifierForPhysicalCardActionController:(id)controller
{
  view = [(PKPaymentPassDetailViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _sceneIdentifier = [windowScene _sceneIdentifier];

  return _sceneIdentifier;
}

- (void)refreshControlValueChanged:(id)changed
{
  v46 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  if ([changedCopy isRefreshing])
  {
    objc_initWeak(&location, self);
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x2020000000;
    v43 = 0;
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x2020000000;
    v41 = 1;
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    refreshTimeout = self->_refreshTimeout;
    self->_refreshTimeout = v5;

    v7 = self->_refreshTimeout;
    v8 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    v9 = self->_refreshTimeout;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __64__PKPaymentPassDetailViewController_refreshControlValueChanged___block_invoke;
    handler[3] = &unk_1E8015600;
    handler[4] = v42;
    objc_copyWeak(&v39, &location);
    dispatch_source_set_event_handler(v9, handler);
    v10 = dispatch_group_create();
    devicePrimaryPaymentApplication = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
    appletDataFormat = [devicePrimaryPaymentApplication appletDataFormat];
    v13 = appletDataFormat == 0;

    if (!v13)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      context = [(PKPaymentWebService *)self->_webService context];
      obj = [context TSMPushTopics];

      v15 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
      if (v15)
      {
        v26 = *v35;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            v17 = changedCopy;
            if (*v35 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v34 + 1) + 8 * i);
            dispatch_group_enter(v10);
            targetDevice = [(PKPaymentWebService *)self->_webService targetDevice];
            webService = self->_webService;
            v31[0] = MEMORY[0x1E69E9820];
            v31[1] = 3221225472;
            v31[2] = __64__PKPaymentPassDetailViewController_refreshControlValueChanged___block_invoke_2;
            v31[3] = &unk_1E80265C0;
            v33 = v40;
            v32 = v10;
            [targetDevice paymentWebService:webService queueConnectionToTrustedServiceManagerForPushTopic:v18 withCompletion:v31];

            changedCopy = v17;
          }

          v15 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
        }

        while (v15);
      }
    }

    dispatch_group_enter(v10);
    v21 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__PKPaymentPassDetailViewController_refreshControlValueChanged___block_invoke_3;
    block[3] = &unk_1E8010970;
    v30 = v10;
    v22 = v10;
    v23 = MEMORY[0x1E69E96A0];
    dispatch_after(v21, MEMORY[0x1E69E96A0], block);

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __64__PKPaymentPassDetailViewController_refreshControlValueChanged___block_invoke_4;
    v27[3] = &unk_1E80265E8;
    v27[4] = v42;
    objc_copyWeak(&v28, &location);
    v27[5] = v40;
    v24 = MEMORY[0x1E69E96A0];
    dispatch_group_notify(v22, MEMORY[0x1E69E96A0], v27);

    dispatch_resume(self->_refreshTimeout);
    objc_destroyWeak(&v28);

    objc_destroyWeak(&v39);
    _Block_object_dispose(v40, 8);
    _Block_object_dispose(v42, 8);
    objc_destroyWeak(&location);
  }
}

void __64__PKPaymentPassDetailViewController_refreshControlValueChanged___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _refreshFinished:1];
  }
}

void __64__PKPaymentPassDetailViewController_refreshControlValueChanged___block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _refreshFinished:(*(*(*(a1 + 40) + 8) + 24) & 1) == 0];
  }
}

- (void)_refreshFinished:(BOOL)finished
{
  refreshTimeout = self->_refreshTimeout;
  if (refreshTimeout)
  {
    dispatch_source_cancel(refreshTimeout);
    v5 = self->_refreshTimeout;
    self->_refreshTimeout = 0;
  }

  refreshControl = self->_refreshControl;

  [(UIRefreshControl *)refreshControl endRefreshing];
}

- (BOOL)shouldAllowRefresh
{
  devicePrimaryPaymentApplication = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
  appletDataFormat = [devicePrimaryPaymentApplication appletDataFormat];
  if (appletDataFormat)
  {
    context = [(PKPaymentWebService *)self->_webService context];
    tSMPushTopics = [context TSMPushTopics];
    v7 = [tSMPushTopics count] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)balanceDetailsViewController:(id)controller didUpdateBalanceReminder:(id)reminder forBalance:(id)balance
{
  reminderCopy = reminder;
  identifiers = [balance identifiers];
  [(PKPaymentPassDetailViewController *)self _handleUpdatedBalanceReminder:reminderCopy forBalanceWithIdentifier:identifiers];
}

- (void)_updatePassesInGroupSectionWithUpdatedGroup:(id)group
{
  objc_storeStrong(&self->_group, group);

  [(PKPaymentPassDetailViewController *)self reloadSection:39 updates:0];
}

- (void)_reportPassDetailsAnalyticsForTappedRowTag:(id)tag additionalAnalytics:(id)analytics
{
  v16[3] = *MEMORY[0x1E69E9840];
  tagCopy = tag;
  analyticsCopy = analytics;
  if (tagCopy)
  {
    v8 = *MEMORY[0x1E69BAC20];
    v9 = *MEMORY[0x1E69BA680];
    v15[0] = *MEMORY[0x1E69BABE8];
    v15[1] = v9;
    v10 = *MEMORY[0x1E69BA7C8];
    v16[0] = v8;
    v16[1] = v10;
    v15[2] = *MEMORY[0x1E69BB170];
    v16[2] = tagCopy;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
    v12 = [v11 mutableCopy];

    if (analyticsCopy)
    {
      [v12 addEntriesFromDictionary:analyticsCopy];
    }

    v13 = MEMORY[0x1E69B8540];
    v14 = [v12 copy];
    [v13 reportDashboardEventIfNecessary:v14 forPass:self->_pass];
  }
}

- (void)_reportPassDetailsAnalyticsForTappedButtonTag:(id)tag additionalAnalytics:(id)analytics
{
  v16[3] = *MEMORY[0x1E69E9840];
  tagCopy = tag;
  analyticsCopy = analytics;
  if (tagCopy)
  {
    v8 = *MEMORY[0x1E69BAC20];
    v9 = *MEMORY[0x1E69BA680];
    v15[0] = *MEMORY[0x1E69BABE8];
    v15[1] = v9;
    v10 = *MEMORY[0x1E69BA6F0];
    v16[0] = v8;
    v16[1] = v10;
    v15[2] = *MEMORY[0x1E69BA440];
    v16[2] = tagCopy;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
    v12 = [v11 mutableCopy];

    if (analyticsCopy)
    {
      [v12 addEntriesFromDictionary:analyticsCopy];
    }

    v13 = MEMORY[0x1E69B8540];
    v14 = [v12 copy];
    [v13 reportDashboardEventIfNecessary:v14 forPass:self->_pass];
  }
}

- (void)_reportPassDetailsAnalyticsForToggleTag:(id)tag toggleResult:(BOOL)result additionalAnalytics:(id)analytics
{
  resultCopy = result;
  v21[4] = *MEMORY[0x1E69E9840];
  tagCopy = tag;
  analyticsCopy = analytics;
  if (tagCopy)
  {
    v10 = *MEMORY[0x1E69BAC20];
    v11 = *MEMORY[0x1E69BA680];
    v20[0] = *MEMORY[0x1E69BABE8];
    v20[1] = v11;
    v12 = *MEMORY[0x1E69BA7E8];
    v21[0] = v10;
    v21[1] = v12;
    v13 = *MEMORY[0x1E69BB2F0];
    v20[2] = *MEMORY[0x1E69BB320];
    v20[3] = v13;
    v14 = MEMORY[0x1E69BB300];
    if (!resultCopy)
    {
      v14 = MEMORY[0x1E69BB2F8];
    }

    v15 = *v14;
    v21[2] = tagCopy;
    v21[3] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];
    v17 = [v16 mutableCopy];

    if (analyticsCopy)
    {
      [v17 addEntriesFromDictionary:analyticsCopy];
    }

    v18 = MEMORY[0x1E69B8540];
    v19 = [v17 copy];
    [v18 reportDashboardEventIfNecessary:v19 forPass:self->_pass];
  }
}

- (void)_beginReportingForSubjectIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v4 = [MEMORY[0x1E69B8540] reporterForSubject:?];

  if (!v4)
  {
    [(NSMutableSet *)self->_startedAnalyticsSubjects addObject:necessaryCopy];
    [MEMORY[0x1E69B8540] beginSubjectReporting:necessaryCopy];
  }
}

- (void)_endReportingIfNecessary
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableSet *)self->_startedAnalyticsSubjects copy];
  [(NSMutableSet *)self->_startedAnalyticsSubjects removeAllObjects];
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

        [MEMORY[0x1E69B8540] endSubjectReporting:{*(*(&v9 + 1) + 8 * v8++), v9}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)linkedApplicationDidChangeState:(id)state
{
  stateCopy = state;
  v4 = [(PKDynamicTableViewController *)self hasSectionForSectionIdentifier:@"PassesInGroup"];
  v5 = stateCopy;
  if (v4 && self->_linkedApplication == stateCopy)
  {
    [(PKPaymentPassDetailViewController *)self reloadSection:39 updates:0];
    v5 = stateCopy;
  }
}

- (void)presentAuthRequestForPolicy:(int64_t)policy completion:(id)completion
{
  v19[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = completionCopy;
  if (policy)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696EE50]);
    authenticationContext = self->_authenticationContext;
    self->_authenticationContext = v8;

    v18[0] = &unk_1F3CC8030;
    v10 = PKLocalizedString(&cfstr_Wallet_1.isa);
    v18[1] = &unk_1F3CC8048;
    v19[0] = v10;
    v19[1] = MEMORY[0x1E695E118];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];

    objc_initWeak(&location, self);
    if (policy == 1)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    v13 = self->_authenticationContext;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76__PKPaymentPassDetailViewController_presentAuthRequestForPolicy_completion___block_invoke;
    v14[3] = &unk_1E8026610;
    objc_copyWeak(&v16, &location);
    v15 = v7;
    [(LAContext *)v13 evaluatePolicy:v12 options:v11 reply:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

void __76__PKPaymentPassDetailViewController_presentAuthRequestForPolicy_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__PKPaymentPassDetailViewController_presentAuthRequestForPolicy_completion___block_invoke_2;
  v10[3] = &unk_1E8011220;
  objc_copyWeak(&v14, (a1 + 40));
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v14);
}

void __76__PKPaymentPassDetailViewController_presentAuthRequestForPolicy_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained[160] invalidate];
    v3 = v5[160];
    v5[160] = 0;

    if (*(a1 + 32))
    {
      v4 = *(a1 + 40) == 0;
    }

    else
    {
      v4 = 0;
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v4);
    WeakRetained = v5;
  }
}

- (void)presentPassDetailDrillInForField:(id)field
{
  fieldCopy = field;
  v6 = -[PKPassDetailSectionDrillInViewController initWithPass:field:useBridgeStyle:isShowingSecureInformation:]([PKPassDetailSectionDrillInViewController alloc], "initWithPass:field:useBridgeStyle:isShowingSecureInformation:", self->_pass, fieldCopy, self->_detailViewStyle == 2, [fieldCopy authRequirement] != 0);

  navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_pushViewController:v6];
  }

  else
  {
    [navigationController pushViewController:v6 animated:1];
  }
}

- (void)sharesSectionControllerDidSelectViewEntitlements:(id)entitlements
{
  sharesController = [(PKPassDetailSharesSectionController *)self->_sharesSectionController sharesController];
  v4 = objc_alloc(MEMORY[0x1E69B8A38]);
  myEntitlements = [sharesController myEntitlements];
  possiblePredefinedEntitlements = [sharesController possiblePredefinedEntitlements];
  v7 = [v4 initWithMyEntitlements:myEntitlements predefinedSharedEntitlements:possiblePredefinedEntitlements];

  if (self->_detailViewStyle == 2)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v9 = [[PKPassShareEntitlementSelectionViewController alloc] initWithAccessType:[(PKPaymentPass *)self->_pass accessType] mode:v8 entitlementComposer:v7];
  navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_pushViewController:v9];
  }

  else
  {
    [navigationController pushViewController:v9 animated:1];
  }
}

- (void)performActionViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  [cancelCopy setDelegate:0];
  presentingViewController = [cancelCopy presentingViewController];

  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)performActionViewControllerDidPerformAction:(id)action
{
  actionCopy = action;
  [actionCopy setDelegate:0];
  presentingViewController = [actionCopy presentingViewController];

  [presentingViewController dismissViewControllerAnimated:1 completion:0];
  navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_popToRootViewController];
  }

  else
  {
    v6 = [navigationController popToRootViewControllerAnimated:1];
  }
}

- (void)presentPassActionViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PKPaymentPassDetailViewController *)self presentViewController:controllerCopy animated:1 completion:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [controllerCopy setDelegate:self];
      [controllerCopy setWebService:self->_webService];
      v4 = [[PKNavigationController alloc] initWithRootViewController:controllerCopy];
      [(PKNavigationController *)v4 setSupportedInterfaceOrientations:2];
      [(PKPaymentPassDetailViewController *)self presentViewController:v4 animated:1 completion:0];
    }

    else
    {
      v5 = controllerCopy;
      if (!controllerCopy)
      {
        goto LABEL_11;
      }

      navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
      if ([navigationController pk_settings_useStateDrivenNavigation])
      {
        [navigationController pk_settings_pushViewController:controllerCopy];
      }

      else
      {
        [navigationController pushViewController:controllerCopy animated:1];
      }
    }
  }

  v5 = controllerCopy;
LABEL_11:
}

- (void)autoReloadSetupControllerDidComplete
{
  navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_popToRootViewController];
  }

  else
  {
    v2 = [navigationController popToRootViewControllerAnimated:1];
  }
}

- (void)launchAppURL:(id)l
{
  lCopy = l;
  if (lCopy && ([MEMORY[0x1E6963608] defaultWorkspace], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isApplicationAvailableToOpenURL:error:", lCopy, 0), v5, v6))
  {
    PKOpenURL();
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__PKPaymentPassDetailViewController_launchAppURL___block_invoke;
    block[3] = &unk_1E8010970;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)launchURL:(id)l
{
  if (l)
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:?];
    v5 = [objc_alloc(MEMORY[0x1E6994680]) initWithURL:v4];
    [v5 setShouldReturnErrorOnUserCancellation:1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__PKPaymentPassDetailViewController_launchURL___block_invoke;
    v7[3] = &unk_1E8013D88;
    v7[4] = self;
    v8 = v4;
    v6 = v4;
    [v5 requestClipWithCompletion:v7];
  }

  else
  {

    [(PKPaymentPassDetailViewController *)self launchAppURL:?];
  }
}

void __47__PKPaymentPassDetailViewController_launchURL___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKPaymentPassDetailAutoReloadMerchantSectionControllerDelegate launches app clip", v8, 2u);
    }
  }

  else if ([v5 code] != 8)
  {
    [*(a1 + 32) launchAppURL:*(a1 + 40)];
  }
}

- (void)didSelectInDemoMode
{
  v3 = PKUIStoreDemoGatewayViewController();
  [(PKPaymentPassDetailViewController *)self presentViewController:v3 animated:1 completion:0];
}

- (void)didSelectMakePaymentWithConfig:(id)config
{
  configCopy = config;
  _accountResolutionController = [(PKPaymentPassDetailViewController *)self _accountResolutionController];
  [_accountResolutionController presentFlowForAccountResolution:1 configuration:configCopy completion:0];
}

- (void)didSelectPayment:(id)payment
{
  paymentCopy = payment;
  v6 = [[PKCreditAccountPaymentDetailsViewController alloc] initWithAccount:self->_account payment:paymentCopy paymentWebService:self->_webService detailViewStyle:self->_detailViewStyle];

  navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_pushViewController:v6];
  }

  else
  {
    [navigationController pushViewController:v6 animated:1];
  }
}

- (void)recomputeMappedSectionsAndReloadSections:(id)sections
{
  sectionsCopy = sections;
  _activeOrderOfSectionIdentifiers = [(PKPaymentPassDetailViewController *)self _activeOrderOfSectionIdentifiers];
  v6.receiver = self;
  v6.super_class = PKPaymentPassDetailViewController;
  [(PKDynamicTableViewController *)&v6 recomputeMappedSectionsAndReloadSections:sectionsCopy sectionIdentifiers:_activeOrderOfSectionIdentifiers updates:0];
}

- (id)cellForRow:(unint64_t)row inSection:(id)section
{
  v5 = [MEMORY[0x1E696AC88] indexPathForRow:row inSection:{-[PKDynamicTableViewController indexOfSectionIdentifier:](self, "indexOfSectionIdentifier:", section)}];
  tableView = [(PKPaymentPassDetailViewController *)self tableView];
  v7 = [tableView cellForRowAtIndexPath:v5];

  return v7;
}

- (void)didUpdateLatestTransactions:(id)transactions monthlyTransactionGroups:(id)groups yearlyTransactionGroups:(id)transactionGroups
{
  v46 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  transactionGroupsCopy = transactionGroups;
  if ([(PKPaymentPassDetailViewController *)self _isBankConnectLinked])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(transactionsCopy, "count")}];
    selfCopy = self;
    connectedInstitution = [(PKPassDetailBankConnectSectionController *)self->_bankConnectSectionController connectedInstitution];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v33 = transactionsCopy;
    v11 = transactionsCopy;
    v12 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v41;
      do
      {
        v15 = 0;
        do
        {
          if (*v41 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [MEMORY[0x1E69B8EA8] transactionFromFKPaymentTransaction:*(*(&v40 + 1) + 8 * v15) institution:connectedInstitution];
          [v9 safelyAddObject:v16];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v13);
    }

    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(transactionGroupsCopy, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v32 = transactionGroupsCopy;
    v18 = transactionGroupsCopy;
    v19 = [v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      do
      {
        v22 = 0;
        do
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [MEMORY[0x1E69B8EB0] transactionGroupFromFKTransactionGroup:*(*(&v36 + 1) + 8 * v22)];
          [v17 addObject:v23];

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v20);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __114__PKPaymentPassDetailViewController_didUpdateLatestTransactions_monthlyTransactionGroups_yearlyTransactionGroups___block_invoke;
    aBlock[3] = &unk_1E801F078;
    aBlock[4] = selfCopy;
    v35 = v17;
    v24 = v17;
    v25 = _Block_copy(aBlock);
    v26 = MEMORY[0x1E69B8EA8];
    transactionSourceCollection = [(PKPaymentPassDetailViewController *)selfCopy transactionSourceCollection];
    transactionSourceIdentifiers = [transactionSourceCollection transactionSourceIdentifiers];
    pass = [(PKPaymentPassDetailViewController *)selfCopy pass];
    uniqueID = [pass uniqueID];
    [v26 augmentTransactionsIfNeeded:v9 transactionSourceIdentifiers:transactionSourceIdentifiers passUniqueID:uniqueID usingDataProvider:0 completion:v25];

    transactionGroupsCopy = v32;
    transactionsCopy = v33;
  }
}

void __114__PKPaymentPassDetailViewController_didUpdateLatestTransactions_monthlyTransactionGroups_yearlyTransactionGroups___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_storeStrong((*(a1 + 32) + 1224), a2);
  objc_storeStrong((*(a1 + 32) + 1232), *(a1 + 40));
  v4 = [*(*(a1 + 32) + 1384) objectAtIndex:{objc_msgSend(*(*(a1 + 32) + 1504), "selectedSegmentIndex")}];
  v5 = [v4 unsignedIntegerValue];

  if (v5 == 1)
  {
    [*(a1 + 32) reloadData:0];
  }
}

- (void)didEvaluatePolicyToOpenBankConnectAccountCredentials:(id)credentials accountCredentialsTitle:(id)title
{
  v6 = [_TtC9PassKitUI51BankConnectAccountCredentialsViewControllerProvider makeViewControllerWithAccountCredentials:credentials title:title];
  navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_pushViewController:v6];
  }

  else
  {
    [navigationController pushViewController:v6 animated:1];
  }
}

- (void)didReloadBankConnectAccountCredentials
{
  if (![(UISegmentedControl *)self->_tabBar selectedSegmentIndex])
  {

    [(PKPaymentPassDetailViewController *)self reloadData:0];
  }
}

- (void)didFindLinkableBankConnectInstitution
{
  allSectionIdentifiers = [(PKPassDetailBankConnectSectionController *)self->_bankConnectSectionController allSectionIdentifiers];
  [(PKPaymentPassDetailViewController *)self reloadSections:allSectionIdentifiers];
}

- (void)didStartBankConnectAuthorizationForInstitution:(id)institution withCompletion:(id)completion
{
  v34[5] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = *MEMORY[0x1E69BB6F8];
  institutionCopy = institution;
  [(PKPaymentPassDetailViewController *)self _beginReportingForSubjectIfNecessary:v7];
  v9 = MEMORY[0x1E69B8540];
  v10 = *MEMORY[0x1E69BA6F0];
  v11 = *MEMORY[0x1E69BABE8];
  v33[0] = *MEMORY[0x1E69BA680];
  v33[1] = v11;
  v12 = *MEMORY[0x1E69BAC20];
  v34[0] = v10;
  v34[1] = v12;
  v13 = *MEMORY[0x1E69BA440];
  v34[2] = *MEMORY[0x1E69BAA60];
  v14 = *MEMORY[0x1E69BAA28];
  v33[2] = v13;
  v33[3] = v14;
  name = [institutionCopy name];
  v34[3] = name;
  v33[4] = *MEMORY[0x1E69BAC78];
  pass = [(PKPaymentPassDetailViewController *)self pass];
  issuerCountryCode = [pass issuerCountryCode];
  v34[4] = issuerCountryCode;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:5];
  [v9 subject:v7 sendEvent:v18];

  v19 = +[PKDismissalPreventionAssertionManager sharedInstance];
  acquireAssertion = [v19 acquireAssertion];

  FKBankConnectAuthorizationViewControllerProviderClass_1 = getFKBankConnectAuthorizationViewControllerProviderClass_1();
  pass2 = [(PKPaymentPassDetailViewController *)self pass];
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __99__PKPaymentPassDetailViewController_didStartBankConnectAuthorizationForInstitution_withCompletion___block_invoke;
  v29 = &unk_1E8018300;
  v31 = acquireAssertion;
  v32 = completionCopy;
  selfCopy = self;
  v23 = acquireAssertion;
  v24 = completionCopy;
  v25 = [(objc_class *)FKBankConnectAuthorizationViewControllerProviderClass_1 makeAuthorizationViewControllerWithPaymentPass:pass2 institution:institutionCopy completion:&v26];

  [(PKPaymentPassDetailViewController *)self presentViewController:v25 animated:1 completion:0, v26, v27, v28, v29, selfCopy];
}

uint64_t __99__PKPaymentPassDetailViewController_didStartBankConnectAuthorizationForInstitution_withCompletion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

- (void)didUpdateBankConnectAccount:(id)account
{
  accountCopy = account;
  [(PKPaymentPassDetailViewController *)self setBankConnectAccount:accountCopy];
  [(PKPassActionWidgetViewModel *)self->_widgetViewModel setBankConnectAccount:accountCopy];

  [(PKPaymentPassDetailViewController *)self _setupWidgetViewIfNeeded];
  if (accountCopy)
  {
    [(PKPaymentPassDetailViewController *)self _loadBankConnectTransactions];
  }

  else if ([(PKPaymentPassDetailViewController *)self _shouldShowTransactionsSection])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65__PKPaymentPassDetailViewController_didUpdateBankConnectAccount___block_invoke;
    v5[3] = &unk_1E8011D28;
    v5[4] = self;
    [(PKPaymentPassDetailViewController *)self _reloadTransactionsWithCompletion:v5];
    return;
  }

  [(PKPaymentPassDetailViewController *)self contentIsLoaded];

  [(PKPaymentPassDetailViewController *)self reloadData:0];
}

uint64_t __65__PKPaymentPassDetailViewController_didUpdateBankConnectAccount___block_invoke(uint64_t a1)
{
  [*(a1 + 32) contentIsLoaded];
  v2 = *(a1 + 32);

  return [v2 reloadData:0];
}

- (void)didSelectPrecursorPassRequestForAction:(id)action controller:(id)controller sourceItem:(id)item completion:(id)completion
{
  actionCopy = action;
  controllerCopy = controller;
  itemCopy = item;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __109__PKPaymentPassDetailViewController_didSelectPrecursorPassRequestForAction_controller_sourceItem_completion___block_invoke;
  aBlock[3] = &unk_1E8010B50;
  v14 = completionCopy;
  v20 = v14;
  v15 = _Block_copy(aBlock);
  actionType = [actionCopy actionType];
  if (actionType <= 2)
  {
    switch(actionType)
    {
      case 0:
LABEL_10:
        v15[2](v15);
        break;
      case 1:
LABEL_14:
        [(PKPaymentPassDetailViewController *)self _startPrecursorProvisioningWithController:controllerCopy completion:v15];
        break;
      case 2:
LABEL_9:
        [(PKPaymentPassDetailViewController *)self _didSelectDeleteCardFromSourceItem:itemCopy];
        goto LABEL_10;
    }
  }

  else
  {
    if (actionType <= 4)
    {
      if (actionType != 3)
      {
        actionURL = [actionCopy actionURL];
        if (actionURL)
        {
          v18 = v15;
          PKOpenURL();

LABEL_18:
          goto LABEL_19;
        }

LABEL_17:
        v15[2](v15);
        goto LABEL_18;
      }

      goto LABEL_9;
    }

    if (actionType == 5)
    {
      actionURL = [actionCopy actionURL];
      if (actionURL)
      {
        PKOpenURL();
      }

      goto LABEL_17;
    }

    if (actionType == 6)
    {
      [(PKPaymentPassDetailViewController *)self _resetIdentityProofingData];
      goto LABEL_14;
    }
  }

LABEL_19:
}

uint64_t __109__PKPaymentPassDetailViewController_didSelectPrecursorPassRequestForAction_controller_sourceItem_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)didSelectDigitalIDForSectionController:(id)controller tableViewCell:(id)cell completion:(id)completion
{
  cellCopy = cell;
  v7 = [PKIdentityDocumentDetailsViewController alloc];
  pass = [(PKPaymentPassDetailViewController *)self pass];
  paymentServiceDataProvider = [(PKPaymentPassDetailViewController *)self paymentServiceDataProvider];
  v10 = [(PKIdentityDocumentDetailsViewController *)v7 initDigitalIDViewWithPass:pass dataProvider:paymentServiceDataProvider detailViewStyle:[(PKPaymentPassDetailViewController *)self detailViewStyle]];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __101__PKPaymentPassDetailViewController_didSelectDigitalIDForSectionController_tableViewCell_completion___block_invoke;
  v13[3] = &unk_1E8026638;
  v13[4] = self;
  v14 = cellCopy;
  v15 = v10;
  v11 = v10;
  v12 = cellCopy;
  [v11 preflightWithCompletion:v13];
}

void __101__PKPaymentPassDetailViewController_didSelectDigitalIDForSectionController_tableViewCell_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __101__PKPaymentPassDetailViewController_didSelectDigitalIDForSectionController_tableViewCell_completion___block_invoke_2;
  v6[3] = &unk_1E8011C98;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __101__PKPaymentPassDetailViewController_didSelectDigitalIDForSectionController_tableViewCell_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _showSpinner:0 inCell:*(a1 + 40) overrideTextColor:0];
  v2 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v6 = [v2 pass];
    v3 = [*(a1 + 32) navigationController];
    PKIdentityPassDetailsHandleBiometricError(v6, v3, *(a1 + 48));
  }

  else
  {
    v6 = [v2 navigationController];
    v4 = [v6 pk_settings_useStateDrivenNavigation];
    v5 = *(a1 + 56);
    if (v4)
    {
      [v6 pk_settings_pushViewController:v5];
    }

    else
    {
      [v6 pushViewController:v5 animated:1];
    }
  }
}

- (void)didSelectDeleteReAddForSectionController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v8 = self->_webService;
  v9 = self->_pass;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PKPaymentPassDetailViewController_didSelectDeleteReAddForSectionController_completion___block_invoke;
  aBlock[3] = &unk_1E8010EE0;
  v10 = completionCopy;
  v22 = v10;
  objc_copyWeak(&v23, &location);
  v11 = _Block_copy(aBlock);
  targetDevice = [(PKPaymentWebService *)v8 targetDevice];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __89__PKPaymentPassDetailViewController_didSelectDeleteReAddForSectionController_completion___block_invoke_2;
  v16[3] = &unk_1E801AA28;
  objc_copyWeak(&v20, &location);
  v13 = v11;
  v19 = v13;
  v14 = v8;
  v17 = v14;
  v15 = v9;
  v18 = v15;
  [targetDevice paymentWebService:v14 removePass:v15 withCompletionHandler:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v23);

  objc_destroyWeak(&location);
}

void __89__PKPaymentPassDetailViewController_didSelectDeleteReAddForSectionController_completion___block_invoke(uint64_t a1, int a2)
{
  (*(*(a1 + 32) + 16))();
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained navigationController];

    if ([v6 pk_settings_useStateDrivenNavigation])
    {
      [v6 pk_settings_popViewController];
    }

    else
    {
      v5 = [v6 popViewControllerAnimated:1];
    }
  }
}

void __89__PKPaymentPassDetailViewController_didSelectDeleteReAddForSectionController_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v5 || (a2 & 1) == 0)
    {
      v9 = PKDisplayableErrorForCommonType();
      v10 = PKAlertForDisplayableErrorWithHandlers(v9, 0, 0, 0);
      [WeakRetained presentViewController:v10 animated:1 completion:0];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:*(a1 + 32)];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __89__PKPaymentPassDetailViewController_didSelectDeleteReAddForSectionController_completion___block_invoke_3;
      v11[3] = &unk_1E801AA28;
      objc_copyWeak(&v15, (a1 + 56));
      v14 = *(a1 + 48);
      v12 = *(a1 + 40);
      v8 = v7;
      v13 = v8;
      [v8 preflightWithRequirements:45 completionRequirements:45 completion:v11];

      objc_destroyWeak(&v15);
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __89__PKPaymentPassDetailViewController_didSelectDeleteReAddForSectionController_completion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v5 || (a2 & 1) == 0)
    {
      if (v5)
      {
        v14 = v5;
      }

      else
      {
        v14 = PKDisplayableErrorForCommonType();
      }

      v15 = v14;
      v16 = PKAlertForDisplayableErrorWithHandlers(v14, 0, 0, 0);
      [WeakRetained presentViewController:v16 animated:1 completion:0];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x1E69B8C40]);
      v8 = [*(a1 + 32) paymentPass];
      v9 = [v7 initWithPaymentPass:v8];

      v10 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:4 provisioningController:*(a1 + 40) groupsController:0];
      v11 = [[PKPaymentSetupDismissibleNavigationController alloc] initWithContext:4];
      [(PKPaymentSetupDismissibleNavigationController *)v11 setModalPresentationStyle:0];
      v12 = [WeakRetained navigationController];
      if (v12)
      {
        v26[0] = 0;
        v26[1] = v26;
        v26[2] = 0x2020000000;
        v27 = 0;
        v28[0] = v9;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __89__PKPaymentPassDetailViewController_didSelectDeleteReAddForSectionController_completion___block_invoke_4;
        v21[3] = &unk_1E80264D0;
        v22 = v12;
        v23 = v11;
        v25 = v26;
        v24 = *(a1 + 48);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __89__PKPaymentPassDetailViewController_didSelectDeleteReAddForSectionController_completion___block_invoke_6;
        v17[3] = &unk_1E8026660;
        v20 = v26;
        v18 = v22;
        v19 = *(a1 + 48);
        [PKProvisioningFlowBridge startCredentialsProvisioningFlowWithNavController:v23 context:v10 credentials:v13 parentNavController:v18 presentNavController:v21 completion:v17];

        _Block_object_dispose(v26, 8);
      }

      else
      {
        (*(*(a1 + 48) + 16))();
      }
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __89__PKPaymentPassDetailViewController_didSelectDeleteReAddForSectionController_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __89__PKPaymentPassDetailViewController_didSelectDeleteReAddForSectionController_completion___block_invoke_5;
  v5[3] = &unk_1E801A430;
  v4 = *(a1 + 48);
  v3 = v4;
  v6 = v4;
  [v1 presentViewController:v2 animated:1 completion:v5];
}

uint64_t __89__PKPaymentPassDetailViewController_didSelectDeleteReAddForSectionController_completion___block_invoke_6(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    return [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)presentPassAlertIfNecessary
{
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __64__PKPaymentPassDetailViewController_presentPassAlertIfNecessary__block_invoke;
    v5[3] = &unk_1E80110E0;
    objc_copyWeak(&v7, &location);
    v4 = uniqueID;
    v6 = v4;
    [(PKPaymentPassDetailViewController *)self executeAfterContentIsLoaded:v5];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __64__PKPaymentPassDetailViewController_presentPassAlertIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = WeakRetained[269];
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __64__PKPaymentPassDetailViewController_presentPassAlertIfNecessary__block_invoke_2;
    v5[3] = &unk_1E80113B0;
    objc_copyWeak(&v7, (a1 + 40));
    v6 = *(a1 + 32);
    [v3 hasEligibleCriteriaForPassUniqueID:v4 criteriaType:1 completion:v5];

    objc_destroyWeak(&v7);
  }
}

void __64__PKPaymentPassDetailViewController_presentPassAlertIfNecessary__block_invoke_2(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKPaymentPassDetailViewController_presentPassAlertIfNecessary__block_invoke_3;
  block[3] = &unk_1E8018A78;
  objc_copyWeak(&v6, (a1 + 40));
  v7 = a2;
  v5 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v6);
}

void __64__PKPaymentPassDetailViewController_presentPassAlertIfNecessary__block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && *(a1 + 48) == 1 && PKCanShowPaymentOfferCardBenefitInstallmentsEnablementAlert())
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Presenting card benefit pay later enablement alert for pass %@", buf, 0xCu);
    }

    v5 = PKCreateAlertCardBenefitPayLaterEnablement();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__PKPaymentPassDetailViewController_presentPassAlertIfNecessary__block_invoke_1522;
    v6[3] = &unk_1E8010970;
    v7 = *(a1 + 32);
    [WeakRetained presentViewController:v5 animated:1 completion:v6];
  }
}

- (void)appViewContentSizeChanged:(id)changed
{
  tableView = [(PKPaymentPassDetailViewController *)self tableView];
  [tableView beginUpdates];

  tableView2 = [(PKPaymentPassDetailViewController *)self tableView];
  [tableView2 endUpdates];
}

- (BOOL)handleDeletePassWithUniqueID:(id)d
{
  pass = self->_pass;
  dCopy = d;
  uniqueID = [(PKPaymentPass *)pass uniqueID];
  v7 = PKEqualObjects();

  if (v7)
  {
    [(PKPaymentPassDetailViewController *)self _didSelectDeleteCardFromSourceItem:0];
  }

  return v7;
}

- (void)popViewControllerInMerchantTokenStack
{
  navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_popViewController];
  }

  else
  {
    v2 = [navigationController popViewControllerAnimated:1];
  }
}

- (void)presentMerchantTokenViewController:(id)controller
{
  controllerCopy = controller;
  navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_pushViewController:controllerCopy];
  }

  else
  {
    [navigationController pushViewController:controllerCopy animated:1];
  }
}

- (void)willToggleExpress
{
  navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  [navigationBar setUserInteractionEnabled:0];
}

- (void)didFinishTogglingExpress
{
  navigationController = [(PKPaymentPassDetailViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  [navigationBar setUserInteractionEnabled:1];
}

- (void)didSelectManageExpress
{
  if ((PKRunningInPassbook() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = *MEMORY[0x1E69BC6E0];
    v5 = *MEMORY[0x1E69BC698];
    uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
    v8 = [v3 stringWithFormat:@"%@://%@/%@/%@", v4, v5, uniqueID, *MEMORY[0x1E69BC6A0]];

    v7 = [MEMORY[0x1E695DFF8] URLWithString:v8];
    PKOpenURL();
  }
}

- (void)userInfoChanged
{
  objc_initWeak(&location, self);
  mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__PKPaymentPassDetailViewController_userInfoChanged__block_invoke;
  v3[3] = &unk_1E8022410;
  objc_copyWeak(&v4, &location);
  [mEMORY[0x1E69B9000] userInfoWithCompletion:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __52__PKPaymentPassDetailViewController_userInfoChanged__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PKPaymentPassDetailViewController_userInfoChanged__block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __52__PKPaymentPassDetailViewController_userInfoChanged__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_storeStrong(WeakRetained + 206, *(a1 + 32));
    v3 = [*(a1 + 32) contact];
    v4 = v5[217];
    v5[217] = v3;

    [v5 reloadSection:40 updates:0];
    WeakRetained = v5;
  }
}

- (PKPassDeleteHandler)deleteOverrider
{
  WeakRetained = objc_loadWeakRetained(&self->_deleteOverrider);

  return WeakRetained;
}

@end