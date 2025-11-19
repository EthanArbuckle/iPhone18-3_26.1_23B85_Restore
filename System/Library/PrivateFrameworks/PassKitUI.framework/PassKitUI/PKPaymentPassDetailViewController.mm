@interface PKPaymentPassDetailViewController
- (BOOL)_accountInGoodStateForAMPEligbilityCheck;
- (BOOL)_accountServiceCreditDetailsRowIsEnabled:(unint64_t)a3;
- (BOOL)_accountServicePhysicalCardRowIsEnabled:(unint64_t)a3;
- (BOOL)_accountServiceRewardsRowIsEnabled:(unint64_t)a3;
- (BOOL)_canSelectBalanceOrCommutePlanCellAtRowIndex:(int64_t)a3;
- (BOOL)_commutePlanIsSelectable:(id)a3 action:(id)a4;
- (BOOL)_hasActionOfType:(unint64_t)a3;
- (BOOL)_isBankConnectLinked;
- (BOOL)_isBankConnectSupportedForPaymentPass:(id)a3;
- (BOOL)_isDeletingPass;
- (BOOL)_isJapaneseRegion;
- (BOOL)_isShowingLostModeInterface;
- (BOOL)_peerPaymentMoneyActionEnabled:(unint64_t)a3;
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
- (BOOL)_transactionCellEditActionsGenerateWithOutput:(id *)a3 forRowIndex:(int64_t)a4 tableView:(id)a5;
- (BOOL)_transactionDeepLinkingEnabled;
- (BOOL)_transactionSectionsDataIsChangedForNewTransactions:(id)a3 oldTransactions:(id)a4 newtransactionCountByPeriod:(id)a5 oldtransactionCountByPeriod:(id)a6;
- (BOOL)_updateHeaderHeightDeterminingLayout:(BOOL)a3;
- (BOOL)canSelectAccountUserRowAtIndexPath:(id)a3;
- (BOOL)handleDeletePassWithUniqueID:(id)a3;
- (BOOL)paymentApplicationShouldShowFullDPAN:(id)a3;
- (BOOL)shouldAllowRefresh;
- (BOOL)shouldHighlightRowAtIndexPath:(id)a3 section:(unint64_t)a4;
- (BOOL)shouldMapSection:(unint64_t)a3;
- (BOOL)shouldShowAccountUserStopSharingSection;
- (BOOL)shouldShowAccountUsersSection;
- (BOOL)shouldShowIdentityDocumentSection;
- (BOOL)shouldShowReplaceBiometricSection;
- (BOOL)shouldShowVerifySSNSection;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4 section:(unint64_t)a5;
- (CGPoint)_normalizedContentOffsetForTargetOffset:(CGPoint)a3;
- (PKContactAvatarManager)contactAvatarManager;
- (PKContactResolver)contactResolver;
- (PKPassDeleteHandler)deleteOverrider;
- (PKPaymentPassDetailViewController)initWithPass:(id)a3 group:(id)a4 groupsController:(id)a5 webService:(id)a6 peerPaymentWebService:(id)a7 accountService:(id)a8 style:(int64_t)a9 passLibraryDataProvider:(id)a10 paymentServiceDataProvider:(id)a11 rendererState:(id)a12 context:(id)a13 familyCollection:(id)a14 contactAvatarManager:(id)a15 account:(id)a16;
- (PKPaymentPassDetailViewController)initWithPass:(id)a3 group:(id)a4 groupsController:(id)a5 webService:(id)a6 peerPaymentWebService:(id)a7 style:(int64_t)a8 passLibraryDataProvider:(id)a9 paymentServiceDataProvider:(id)a10;
- (PKPaymentPassDetailViewController)initWithPass:(id)a3 group:(id)a4 groupsController:(id)a5 webService:(id)a6 peerPaymentWebService:(id)a7 style:(int64_t)a8 passLibraryDataProvider:(id)a9 paymentServiceDataProvider:(id)a10 rendererState:(id)a11 context:(id)a12;
- (PKPaymentPassDetailViewController)initWithPass:(id)a3 group:(id)a4 groupsController:(id)a5 webService:(id)a6 style:(int64_t)a7 dataProvider:(id)a8;
- (double)_footerViewHeightForPassStateSectionWithTableView:(id)a3;
- (double)_heightForPassStateSectionWithTableView:(id)a3;
- (double)estimatedHeightForRowAtIndexPath:(id)a3 section:(unint64_t)a4;
- (double)tableView:(id)a3 heightForFooterInSectionCase:(unint64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSectionCase:(unint64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4 section:(unint64_t)a5;
- (id)_accountResolutionController;
- (id)_accountServiceBankAccountsCellForRowIndex:(int64_t)a3 tableView:(id)a4;
- (id)_accountServiceCardNumbersCellForRowIndex:(int64_t)a3 tableView:(id)a4;
- (id)_accountServiceCreditDetailsCellForRowIndex:(int64_t)a3 tableView:(id)a4;
- (id)_accountServiceMakeDefaultCellForRowIndex:(int64_t)a3 tableView:(id)a4;
- (id)_accountServiceNotificationsSwitchCellForIndexPath:(id)a3 tableView:(id)a4;
- (id)_accountServicePhysicalCardCellForRowIndex:(int64_t)a3 tableView:(id)a4;
- (id)_accountServiceRewardsDetailsCellForRowIndex:(int64_t)a3 tableView:(id)a4;
- (id)_accountUserTableViewCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_actionForCommutePlan:(id)a3;
- (id)_activationFooterView;
- (id)_activeOrderOfSectionIdentifiers;
- (id)_addAccounUserTableViewCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_automaticPresentationCellForTableView:(id)a3;
- (id)_availableCommutePlanActions;
- (id)_balanceCellForRowIndex:(int64_t)a3 tableView:(id)a4;
- (id)_balanceForRow:(unint64_t)a3;
- (id)_balanceOrCommutePlanCellForRowIndex:(int64_t)a3 tableView:(id)a4;
- (id)_balanceReminderCellForRowIndex:(int64_t)a3 tableView:(id)a4;
- (id)_barcodeCell;
- (id)_billingAddressCellShowingAddress:(BOOL)a3 forTableView:(id)a4;
- (id)_cardHolderPictureCellForTableView:(id)a3;
- (id)_cellForField:(id)a3 tableView:(id)a4;
- (id)_checkmarkCellWithText:(id)a3 forTableView:(id)a4;
- (id)_commuterRouteCellForRowIndex:(int64_t)a3 tableView:(id)a4;
- (id)_configurableSectionForSectionType:(unint64_t)a3;
- (id)_configurableSections;
- (id)_contactInfoAttributedText:(id)a3 phoneNumber:(id)a4;
- (id)_contactKeysToFetch;
- (id)_createTabBarWithSelectedIndex:(int64_t)a3;
- (id)_defaultCellWithTextColor:(id)a3 forTableView:(id)a4;
- (id)_deleteCardCellForTableView:(id)a3;
- (id)_deleteContextualActionForTransaction:(id)a3;
- (id)_deviceAccountNumberCellForIndexPath:(id)a3 tableView:(id)a4;
- (id)_disabledCellWithText:(id)a3 forTableView:(id)a4;
- (id)_familyMemberCellForIndexPath:(id)a3 tableView:(id)a4;
- (id)_familyMemberCellWithRowModel:(id)a3 forTableView:(id)a4;
- (id)_footerTextForPassStateSection;
- (id)_footerViewForAccountUsersSection;
- (id)_footerViewForApplePayProductPrivacySection;
- (id)_footerViewForManualIdentityVerificationSection;
- (id)_footerViewForMerchantTokensSection;
- (id)_footerViewForPassOperationsSection;
- (id)_footerViewForPassStateSection;
- (id)_footerViewForPeerPaymentBalanceSectionWithTableView:(id)a3;
- (id)_footerViewForPendingPeerPaymentAssociatedAccount;
- (id)_headerTitleForPassStateSection;
- (id)_imageViewCellForImage:(id)a3 forTableView:(id)a4;
- (id)_infoCellWithDescription:(id)a3 forTableView:(id)a4;
- (id)_infoCellWithPrimaryText:(id)a3 detailText:(id)a4 cellStyle:(int64_t)a5 forTableView:(id)a6;
- (id)_infoCellWithPrimaryText:(id)a3 detailText:(id)a4 cellStyle:(int64_t)a5 reuseIdentifier:(id)a6 forTableView:(id)a7;
- (id)_installmentsPlanCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_legalNoticesFooterWithAttributedString:(id)a3 combineString:(id)a4 outputURL:(id *)a5;
- (id)_linkCellWithText:(id)a3 forTableView:(id)a4;
- (id)_linkedAppCellForTableView:(id)a3;
- (id)_linkedApplicationCellForTableView:(id)a3;
- (id)_manufacturerInfoCellForTableView:(id)a3;
- (id)_merchantTokensCellForTableView:(id)a3;
- (id)_messagesSwitchCellForTableView:(id)a3;
- (id)_moreTransactionsCellForTableView:(id)a3;
- (id)_passesInGroupCellForIndexPath:(id)a3 tableView:(id)a4;
- (id)_paymentApplicationsCellForIndexPath:(id)a3 tableView:(id)a4;
- (id)_paymentSetupNavigationControllerForProvisioningController:(id)a3;
- (id)_peerPaymentAccountActionCellForRowIndex:(int64_t)a3 tableView:(id)a4;
- (id)_peerPaymentAutomaticallyAcceptPaymentsCellForRowIndex:(int64_t)a3 tableView:(id)a4;
- (id)_peerPaymentBalanceCellForRowIndex:(int64_t)a3 tableView:(id)a4;
- (id)_peerPaymentBankAccountsCellForRowIndex:(int64_t)a3 tableView:(id)a4;
- (id)_peerPaymentBillingAddressCellForTableView:(id)a3;
- (id)_peerPaymentManualIdentityVerificationCellForRowIndex:(int64_t)a3 tableView:(id)a4;
- (id)_peerPaymentMoneyActionCellForRowIndex:(int64_t)a3 tableView:(id)a4;
- (id)_peerPaymentNotificationsSwitchCellForIndexPath:(id)a3 tableView:(id)a4;
- (id)_peerPaymentParticipantGraduationCellForRowIndex:(int64_t)a3 tableView:(id)a4;
- (id)_peerPaymentStatementCellForTableView:(id)a3;
- (id)_privacyTermsSectionCellForRowIndex:(int64_t)a3 tableView:(id)a4;
- (id)_recomputeMappedSections;
- (id)_removeCardTextColor;
- (id)_renewActionForRow:(unint64_t)a3 commutePlanIdentifier:(id)a4;
- (id)_settingsExpressTransitURL;
- (id)_settingsTableCellWithTitle:(id)a3 action:(SEL)a4 setOn:(BOOL)a5 enabled:(BOOL)a6;
- (id)_spinnerCellForTableView:(id)a3;
- (id)_stackedInfoCellWithPrimaryText:(id)a3 detailText:(id)a4 cellStyle:(int64_t)a5 forTableView:(id)a6;
- (id)_subtitleCellForTableView:(id)a3;
- (id)_switchCellWithText:(id)a3 forTableView:(id)a4;
- (id)_topUpActionForRow:(unint64_t)a3;
- (id)_transactionCellForIndexPath:(id)a3 tableView:(id)a4;
- (id)_transactionCountByPeriodCellForIndexPath:(id)a3 tableView:(id)a4;
- (id)_transactionCountFormatter;
- (id)_transactionDetailViewControllerForTransaction:(id)a3;
- (id)_transactionYearFormatter;
- (id)_transactionsSwitchCellForIndexPath:(id)a3 tableView:(id)a4;
- (id)_transferCardCellForTableView:(id)a3;
- (id)_value1CellWithTextColor:(id)a3 forTableView:(id)a4;
- (id)accountUserStopSharingTableViewCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)accountUserTableViewCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)cellForRow:(unint64_t)a3 inSection:(id)a4;
- (id)contactIssuerHelper;
- (id)contextMenuConfigurationForCopyingText:(id)a3;
- (id)contextMenuConfigurationForTransaction:(id)a3;
- (id)createFooterHyperlinkViewWithText:(id)a3 action:(id)a4;
- (id)createPrivacyFooterViewForContext:(unint64_t)a3 tintColor:(id)a4;
- (id)createPrivacyFooterViewWithText:(id)a3 tintColor:(id)a4 privacyContext:(unint64_t)a5;
- (id)footerForIdentityDocumentInTableView:(id)a3;
- (id)identityDocumentTableViewCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)presentationSceneIdentifierForPhysicalCardActionController:(id)a3;
- (id)privacyFooterAttributedStringWithText:(id)a3 privacyContext:(unint64_t)a4 outputURL:(id *)a5;
- (id)replaceBiometricTableViewCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 section:(unint64_t)a5;
- (id)tableView:(id)a3 contextMenuConfigurationForCardInfoAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5 section:(unint64_t)a6;
- (id)tableView:(id)a3 contextMenuConfigurationForTransactionAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4 section:(unint64_t)a5;
- (id)tableView:(id)a3 viewForFooterInSectionCase:(unint64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSectionCase:(unint64_t)a4;
- (id)titleForFooterInSection:(unint64_t)a3;
- (id)titleForHeaderInSection:(unint64_t)a3;
- (id)verifySSNTableViewCellForTableView:(id)a3 atIndexPath:(id)a4;
- (int64_t)_numberOfAccountServiceCreditDetailsRowsEnabled;
- (int64_t)_numberOfAccountServicePhysicalCardRowsEnabled;
- (int64_t)_numberOfAccountServiceRewardsRowsEnabled;
- (int64_t)_rowIndexForExpressTransitSettingsCell;
- (int64_t)_transitCellGenerateCellWithOutput:(id *)a3 forRowIndex:(int64_t)a4 tableView:(id)a5;
- (int64_t)tableView:(id)a3 numberOfRowsInSectionCase:(unint64_t)a4;
- (unint64_t)_accessPersonInfoSectionGenerateCellWithOutput:(id *)a3 forRowIndex:(int64_t)a4 tableView:(id)a5;
- (unint64_t)_accountFeature;
- (unint64_t)_accountServiceCreditDetailsRowForRowIndex:(int64_t)a3;
- (unint64_t)_accountServicePhysicalCardRowForRowIndex:(int64_t)a3;
- (unint64_t)_accountServiceRewardsRowForRowIndex:(int64_t)a3;
- (unint64_t)_cardInfoSectionGenerateCellWithOutput:(id *)a3 forRowIndex:(int64_t)a4 tableView:(id)a5;
- (unint64_t)_contactBankCellWithOutput:(id *)a3 forRowIndex:(int64_t)a4 tableView:(id)a5;
- (unint64_t)_numberOfPeerPaymentMoneyActionsEnabled;
- (unint64_t)_numberOfPrivacyTermsInfoRows;
- (unint64_t)_passOperationsCellWithOutput:(id *)a3 forRowIndex:(int64_t)a4 tableView:(id)a5;
- (unint64_t)_passStateSectionGenerateCellWithOutput:(id *)a3 forRowIndex:(int64_t)a4 tableView:(id)a5;
- (unint64_t)_peerPaymentMoneyActionForRowIndex:(unint64_t)a3;
- (unint64_t)_privacyTermsInfoRowTypeForRowIndex:(int64_t)a3;
- (unint64_t)_removeUnsupportedContactIssuerOptions:(unint64_t)a3;
- (unint64_t)_rowIndexForAccountServicePhysicalCardRow:(unint64_t)a3;
- (unint64_t)_rowIndexForPeerPaymentActionRow:(unint64_t)a3;
- (unint64_t)_rowIndexForPrivacyTermsInfoRowType:(unint64_t)a3;
- (unint64_t)numberOfAccountUserRowsInTableView:(id)a3;
- (void)_accountUsersForAccountIdentifier:(id)a3 completion:(id)a4;
- (void)_activationFooterPressed:(id)a3;
- (void)_ampEligbilityUpdated:(BOOL)a3;
- (void)_applyDefaultDynamicStylingToCell:(id)a3;
- (void)_applyDefaultStaticStylingToCell:(id)a3;
- (void)_applyIvarsFromCollectedPropertiesViewModel:(id)a3;
- (void)_applyStaticPassPropertiesForPass;
- (void)_automaticPresentationSwitchChanged:(id)a3;
- (void)_beginReportingForSubjectIfNecessary:(id)a3;
- (void)_buildSections;
- (void)_cancelPendingTransactionTimer;
- (void)_dailyCashSwitchChanged:(id)a3;
- (void)_decorateSections;
- (void)_didSelectAccountServiceBankAccountsAtIndexPath:(id)a3;
- (void)_didSelectAccountServiceCardNumbersAtIndexPath:(id)a3;
- (void)_didSelectAccountServiceMakeDefaultAtIndexPath:(id)a3;
- (void)_didSelectAccountServicePhysicalCardAtIndexPath:(id)a3;
- (void)_didSelectAccountServiceRewardsDetailsAtIndexPath:(id)a3;
- (void)_didSelectAutomaticallyAcceptPaymentsPreferenceAtIndexPath:(id)a3;
- (void)_didSelectBalanceAtRowIndex:(int64_t)a3;
- (void)_didSelectBalanceOrCommutePlanCellAtIndexPath:(id)a3;
- (void)_didSelectBillingAddress;
- (void)_didSelectCardInfoCellAtIndexPath:(id)a3;
- (void)_didSelectCommutePlanAtRowIndex:(int64_t)a3;
- (void)_didSelectContactBankSectionAtIndexPath:(id)a3;
- (void)_didSelectCreditDetailsCell:(id)a3;
- (void)_didSelectDeleteCardFromSourceItem:(id)a3;
- (void)_didSelectFamilySharingAtIndexPath:(id)a3;
- (void)_didSelectFixPeerPaymentAtIndexPath:(id)a3;
- (void)_didSelectInstallmentPlansAtIndexPath:(id)a3;
- (void)_didSelectMerchantTokensCell;
- (void)_didSelectNetworkBenefitsCell;
- (void)_didSelectPassInGroupAtIndexPath:(id)a3;
- (void)_didSelectPassOperationsSectionAtIndexPath:(id)a3;
- (void)_didSelectPassStateSection;
- (void)_didSelectPaymentApplicationSectionRowAtIndexPath:(id)a3;
- (void)_didSelectPeerPaymentAccountActionAtIndexPath:(id)a3;
- (void)_didSelectPeerPaymentBankAccountsAtIndexPath:(id)a3;
- (void)_didSelectPeerPaymentManualIdentityVerificationAtIndexPath:(id)a3;
- (void)_didSelectPeerPaymentMoneyActionAtRow:(int64_t)a3;
- (void)_didSelectPeerPaymentParticipantGradutionAtIndexPath:(id)a3;
- (void)_didSelectPeerPaymentStatementAtIndexPath:(id)a3;
- (void)_didSelectPrivacySectionAtRow:(int64_t)a3;
- (void)_didSelectProductBenefitsCell;
- (void)_didSelectRedeemAtIndexPath:(id)a3;
- (void)_didSelectServicingWalletLink;
- (void)_didSelectTransactionAtIndexPath:(id)a3;
- (void)_didSelectTransactionCountByPeriodAtIndexPath:(id)a3;
- (void)_didSelectTransactionTransactionsSwitchInTableView:(id)a3 atIndexPath:(id)a4;
- (void)_didSelectTransferCardAtIndexPath:(id)a3;
- (void)_didSelectTransitTicketAtRow:(int64_t)a3;
- (void)_doneLoadingPeerPaymentAccountAction;
- (void)_endReportingIfNecessary;
- (void)_fetchBalanceRemindersWithActionForBalanceIdentifier:(id)a3 transitProperties:(id)a4 balances:(id)a5 pass:(id)a6 withCompletion:(id)a7;
- (void)_fetchMerchantTokens;
- (void)_handleAccountServiceAccountDidChangeNotification:(id)a3;
- (void)_handlePeerPaymentPreferencestDidChangeNotification:(id)a3;
- (void)_handleProvisioningError:(id)a3;
- (void)_handleUpdatedBalanceReminder:(id)a3 forBalanceWithIdentifier:(id)a4;
- (void)_ingestPassFields;
- (void)_loadAdditionalAccountDataWithCompletion:(id)a3;
- (void)_loadBankConnectTransactions;
- (void)_loadFamilyCollectionIfNecessaryWithCompletion:(id)a3;
- (void)_messagesSwitchChanged:(id)a3;
- (void)_normalizeContentOffset;
- (void)_notificationSwitchChanged:(id)a3;
- (void)_passSettingsChanged:(id)a3;
- (void)_pendingInvitationsForAccountIdentifier:(id)a3 completion:(id)a4;
- (void)_preflightWatchForTransferWithCompletion:(id)a3;
- (void)_presentInvitation:(id)a3 completion:(id)a4;
- (void)_presentLegalDisclosureViewController;
- (void)_presentMerchantDetailsViewWithTransaction:(id)a3 forCell:(id)a4;
- (void)_presentPhysicalCardPasswordAuthorization:(id)a3;
- (void)_presentStopSharingAlertForTableView:(id)a3 indexPath:(id)a4;
- (void)_presentTermsAndConditionsWithRow:(unint64_t)a3;
- (void)_presentVerificationFlow;
- (void)_refreshDisplayWithBalances:(id)a3 plans:(id)a4 transitProperties:(id)a5;
- (void)_refreshFinished:(BOOL)a3;
- (void)_refreshPaymentApplicationsSelection;
- (void)_refreshStaleBalanceModelForPass:(id)a3 completion:(id)a4;
- (void)_reloadMerchantTokenRows;
- (void)_reloadPassAndView;
- (void)_reloadTitle;
- (void)_reloadTransactionSectionsAnimated:(BOOL)a3 forceReload:(BOOL)a4;
- (void)_reloadTransactionSourceCollectionIfNecessary;
- (void)_reloadTransactionsWithCompletion:(id)a3;
- (void)_reloadView;
- (void)_reportAddAccountUser;
- (void)_reportPassDetailsAnalyticsForTappedButtonTag:(id)a3 additionalAnalytics:(id)a4;
- (void)_reportPassDetailsAnalyticsForTappedRowTag:(id)a3 additionalAnalytics:(id)a4;
- (void)_reportPassDetailsAnalyticsForToggleTag:(id)a3 toggleResult:(BOOL)a4 additionalAnalytics:(id)a5;
- (void)_resetIdentityProofingData;
- (void)_resetSwitchesIfNecessary:(id)a3;
- (void)_setupWidgetViewIfNeeded;
- (void)_showPeerPaymentActionViewControllerForAction:(unint64_t)a3;
- (void)_showSpinner:(BOOL)a3 inCell:(id)a4 detailText:(id)a5;
- (void)_showSpinner:(BOOL)a3 inCell:(id)a4 overrideTextColor:(id)a5;
- (void)_startPendingTransactionTimer;
- (void)_startPrecursorProvisioningWithController:(id)a3 completion:(id)a4;
- (void)_tabBarSegmentChanged:(id)a3;
- (void)_transactionsSwitchChanged:(id)a3;
- (void)_transitExpressStateDidChange;
- (void)_updateAmpEligibility;
- (void)_updateBalanceIfNecessary;
- (void)_updateCashbackPeerPaymentResolutionSection;
- (void)_updateDisplayableBalances;
- (void)_updateDisplayableBalancesPlansAndTransitPropertiesForPass:(id)a3 balances:(id)a4 plans:(id)a5 transitProperties:(id)a6 withCompletion:(id)a7;
- (void)_updateFamilyRows;
- (void)_updateHeaderActionView;
- (void)_updatePassPropertiesForPass:(id)a3 completion:(id)a4;
- (void)_updatePassSnapshot;
- (void)_updatePassesInGroupSectionWithUpdatedGroup:(id)a3;
- (void)_updatePeerPaymentAccount;
- (void)_updatePeerPaymentFamilyMemberRows;
- (void)_updatePeerPaymentPreferences;
- (void)_updatePeerPaymentPreferencesWithNewPreferences:(id)a3;
- (void)_updateSectionControllersWithSelectedSectionSegment;
- (void)_updateTabBar;
- (void)_updateTabBarWithSegments:(id)a3;
- (void)_updateTransitExpressState;
- (void)accountUsersChanged:(id)a3 forAccountIdentifier:(id)a4;
- (void)addMoney;
- (void)ampEnrollmentManager:(id)a3 didEnrollPaymentPass:(id)a4 success:(BOOL)a5;
- (void)appViewContentSizeChanged:(id)a3;
- (void)autoReloadSetupControllerDidComplete;
- (void)balanceDetailsViewController:(id)a3 didUpdateBalanceReminder:(id)a4 forBalance:(id)a5;
- (void)callIssuerWithSourceItem:(id)a3;
- (void)contactsDidChangeForContactResolver:(id)a3;
- (void)contentIsLoaded;
- (void)dealloc;
- (void)deleteTransaction:(id)a3 completionHandler:(id)a4;
- (void)didChangeVerificationPresentation;
- (void)didEvaluatePolicyToOpenBankConnectAccountCredentials:(id)a3 accountCredentialsTitle:(id)a4;
- (void)didFindLinkableBankConnectInstitution;
- (void)didFinishTogglingExpress;
- (void)didReloadBankConnectAccountCredentials;
- (void)didSelectAccountUserCellInTableView:(id)a3 atIndexPath:(id)a4;
- (void)didSelectDeleteReAddForSectionController:(id)a3 completion:(id)a4;
- (void)didSelectDigitalIDForSectionController:(id)a3 tableViewCell:(id)a4 completion:(id)a5;
- (void)didSelectIdentityDocumentCellInTableView:(id)a3 atIndexPath:(id)a4;
- (void)didSelectInDemoMode;
- (void)didSelectMakePaymentWithConfig:(id)a3;
- (void)didSelectManageExpress;
- (void)didSelectPayment:(id)a3;
- (void)didSelectPrecursorPassRequestForAction:(id)a3 controller:(id)a4 sourceItem:(id)a5 completion:(id)a6;
- (void)didSelectReplaceBiometricCellInTableView:(id)a3 atIndexPath:(id)a4;
- (void)didSelectVerifySSNCellInTableView:(id)a3 atIndexPath:(id)a4;
- (void)didStartBankConnectAuthorizationForInstitution:(id)a3 withCompletion:(id)a4;
- (void)didUpdateBankConnectAccount:(id)a3;
- (void)didUpdateFamilyMembers:(id)a3;
- (void)didUpdateLatestTransactions:(id)a3 monthlyTransactionGroups:(id)a4 yearlyTransactionGroups:(id)a5;
- (void)emailIssuer;
- (void)executeAfterContentIsLoaded:(id)a3;
- (void)featureApplicationAdded:(id)a3;
- (void)featureApplicationChanged:(id)a3;
- (void)featureApplicationRemoved:(id)a3;
- (void)launchAppURL:(id)a3;
- (void)launchURL:(id)a3;
- (void)linkedApplicationDidChangeState:(id)a3;
- (void)loadAccountUsersWithCompletion:(id)a3;
- (void)loadPendingAccountUserInvitationsWithCompletion:(id)a3;
- (void)loadView;
- (void)merchantTokenDetailViewController:(id)a3 didDeleteMerchantToken:(id)a4;
- (void)merchantTokensViewController:(id)a3 didDeleteMerchantToken:(id)a4;
- (void)openBusinessChat;
- (void)openIssuerWebsite;
- (void)passHeaderViewPassWasDeleted:(id)a3;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didEnableMessageService:(BOOL)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didEnableTransactionService:(BOOL)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceivePlanUpdate:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateBalanceReminder:(id)a4 forBalanceWithIdentifier:(id)a5;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4;
- (void)paymentSetupDidFinish:(id)a3;
- (void)peerPaymentAccountResolutionController:(id)a3 requestsDismissCurrentViewControllerAnimated:(BOOL)a4;
- (void)peerPaymentActionViewControllerDidCancel:(id)a3;
- (void)peerPaymentActionViewControllerDidPerformAction:(id)a3;
- (void)performActionViewControllerDidCancel:(id)a3;
- (void)performActionViewControllerDidPerformAction:(id)a3;
- (void)physicalCardActionController:(id)a3 didChangeToState:(int64_t)a4 withError:(id)a5;
- (void)physicalCardsChanged:(id)a3 forAccountIdentifier:(id)a4;
- (void)popViewControllerInMerchantTokenStack;
- (void)postServiceModeNotification;
- (void)presentAccountUserDetailsForAccountUserAltDSID:(id)a3;
- (void)presentAccountUserDetailsForRowModel:(id)a3;
- (void)presentAccountUserInvitationForRowModel:(id)a3;
- (void)presentAccountUserInvitationWithIdentifier:(id)a3;
- (void)presentActivatePhysicalCard;
- (void)presentAddAccountUser;
- (void)presentAddCard;
- (void)presentAuthRequestForPolicy:(int64_t)a3 completion:(id)a4;
- (void)presentBalanceDetails;
- (void)presentBankAccounts;
- (void)presentBillPaymentWithConfig:(id)a3;
- (void)presentCardNumbers;
- (void)presentCombinedPassActionViewControllerFromBundle:(id)a3;
- (void)presentDailyCashForDateComponents:(id)a3;
- (void)presentDeleteCard;
- (void)presentISO18013Details;
- (void)presentIdentityVerification;
- (void)presentInstallmentPlanWithIdentifier:(id)a3;
- (void)presentInstallmentPlansForFeature:(unint64_t)a3;
- (void)presentMakeDefaultAtApple;
- (void)presentMerchantTokenViewController:(id)a3;
- (void)presentOrderPhysicalCard;
- (void)presentPassActionViewController:(id)a3;
- (void)presentPassAlertIfNecessary;
- (void)presentPassDetailDrillInForField:(id)a3;
- (void)presentReplacePhysicalCard;
- (void)presentSchedulePayments;
- (void)presentShareAccount;
- (void)presentTermsAcceptance;
- (void)presentTermsAndConditions;
- (void)presentTrackPhysicalCard;
- (void)presentTransactionDetailsForTransaction:(id)a3 presentingView:(int64_t)a4;
- (void)recomputeMappedSectionsAndReloadSections:(id)a3;
- (void)refreshControlValueChanged:(id)a3;
- (void)reloadData:(BOOL)a3;
- (void)reloadNecessarySectionControllerSections;
- (void)reloadPassDetailSections:(id)a3 updates:(id)a4;
- (void)reloadSection:(unint64_t)a3 updates:(id)a4;
- (void)reloadSections:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setDeleteOverrider:(id)a3;
- (void)setDetailTextColor:(id)a3;
- (void)setHighlightColor:(id)a3;
- (void)setLinkTextColor:(id)a3;
- (void)setPrimaryTextColor:(id)a3;
- (void)setShowDoneButton:(BOOL)a3;
- (void)setWarningTextColor:(id)a3;
- (void)sharesSectionControllerDidSelectViewEntitlements:(id)a3;
- (void)showStatementDetailsWithIdentifier:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 section:(unint64_t)a5;
- (void)tableView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4;
- (void)transactionSourceIdentifier:(id)a3 didRemoveTransactionWithIdentifier:(id)a4;
- (void)updateActivationFooterViewContents;
- (void)userInfoChanged;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willToggleExpress;
@end

@implementation PKPaymentPassDetailViewController

- (BOOL)shouldShowAccountUsersSection
{
  v3 = [(PKPaymentPassDetailViewController *)self account];
  v4 = v3;
  if (v3 && ([v3 creditDetails], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = MEMORY[0x1E69B8770];
    v7 = [(PKPaymentPassDetailViewController *)self transactionSourceCollection];
    LOBYTE(v6) = [v6 shouldDisplayTransactionsForTransactionSourceCollection:v7 withAccount:v4];

    v8 = v6 ^ 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = [(PKPaymentPassDetailViewController *)self sortedFamilyMemberRowModels];
  v10 = [v9 count];

  v11 = v8 ^ 1;
  if ((v8 & 1) == 0 && !v10)
  {
    v11 = [(PKPaymentPassDetailViewController *)self _showsAddAccountUserButton];
  }

  return v11;
}

- (BOOL)canSelectAccountUserRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentPassDetailViewController *)self sortedFamilyMemberRowModels];
  v6 = [v5 count];

  v7 = [v4 row];
  if (v7 >= v6)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v8 = [(PKPaymentPassDetailViewController *)self account];
    [v8 state];
    v9 = PKAccountStateIsTerminal() ^ 1;
  }

  return v9;
}

- (unint64_t)numberOfAccountUserRowsInTableView:(id)a3
{
  v4 = [(PKPaymentPassDetailViewController *)self sortedFamilyMemberRowModels];
  v5 = [v4 count];
  v6 = v5 + [(PKPaymentPassDetailViewController *)self _showsAddAccountUserButton];

  return v6;
}

- (id)accountUserTableViewCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentPassDetailViewController *)self sortedFamilyMemberRowModels];
  v9 = [v8 count];

  if ([v6 row] >= v9)
  {
    [(PKPaymentPassDetailViewController *)self _addAccounUserTableViewCellForTableView:v7 atIndexPath:v6];
  }

  else
  {
    [(PKPaymentPassDetailViewController *)self _accountUserTableViewCellForTableView:v7 atIndexPath:v6];
  }
  v10 = ;

  [v10 setAccessibilityIdentifier:*MEMORY[0x1E69B93C0]];

  return v10;
}

- (void)didSelectAccountUserCellInTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = a4;
  v21 = [(PKPaymentPassDetailViewController *)self sortedFamilyMemberRowModels];
  v6 = [v21 count];
  v7 = [v5 row];

  if (v7 >= v6)
  {
    [(PKPaymentPassDetailViewController *)self presentAddAccountUser];
  }

  else
  {
    v8 = [v21 objectAtIndex:v7];
    v9 = [v8 accountUser];
    v10 = [v8 invitation];
    v11 = v10;
    if (v9)
    {
      [(PKPaymentPassDetailViewController *)self presentAccountUserDetailsForRowModel:v8];
    }

    else if (v10)
    {
      v20 = [PKAccountUserDetailViewController alloc];
      v12 = [(PKPaymentPassDetailViewController *)self pass];
      v13 = [(PKPaymentPassDetailViewController *)self detailViewStyle];
      v14 = [(PKPaymentPassDetailViewController *)self account];
      v15 = [(PKPaymentPassDetailViewController *)self familyCollection];
      v16 = [(PKPaymentPassDetailViewController *)self contactAvatarManager];
      v17 = [(PKPaymentPassDetailViewController *)self contactResolver];
      v18 = [(PKAccountUserDetailViewController *)v20 initWithPaymentPass:v12 style:v13 account:v14 accountUserInvitation:v11 familyMemberCollection:v15 avatarManager:v16 contactResolver:v17];

      v19 = [(PKPaymentPassDetailViewController *)self navigationController];
      if ([v19 pk_settings_useStateDrivenNavigation])
      {
        [v19 pk_settings_pushViewController:v18];
      }

      else
      {
        [v19 pushViewController:v18 animated:1];
      }
    }
  }
}

- (BOOL)shouldShowAccountUserStopSharingSection
{
  v2 = [(PKPaymentPassDetailViewController *)self accountUserCollection];
  v3 = [v2 currentAccountUser];

  if (v3)
  {
    v4 = [v3 accessLevel] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accountUserStopSharingTableViewCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = a3;
  v6 = [(PKPaymentPassDetailViewController *)self _removeCardTextColor];
  v7 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:v6 forTableView:v5];

  v8 = [v7 textLabel];
  v9 = PKLocalizedFeatureString();
  [v8 setText:v9];

  [(PKPaymentPassDetailViewController *)self _showSpinner:[(PKPaymentPassDetailViewController *)self isRemovingAccountUser] inCell:v7 overrideTextColor:v6];
  [v7 setAccessibilityIdentifier:*MEMORY[0x1E69B9578]];

  return v7;
}

- (void)loadAccountUsersWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentPassDetailViewController *)self account];
  v6 = [v5 accountIdentifier];

  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __83__PKPaymentPassDetailViewController_PKAccountUser__loadAccountUsersWithCompletion___block_invoke;
    v7[3] = &unk_1E8010C98;
    v7[4] = self;
    v8 = v4;
    [(PKPaymentPassDetailViewController *)self _accountUsersForAccountIdentifier:v6 completion:v7];
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

- (void)loadPendingAccountUserInvitationsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentPassDetailViewController *)self account];
  v6 = [v5 accountIdentifier];

  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __100__PKPaymentPassDetailViewController_PKAccountUser__loadPendingAccountUserInvitationsWithCompletion___block_invoke;
    v7[3] = &unk_1E8010DF8;
    v7[4] = self;
    v8 = v4;
    [(PKPaymentPassDetailViewController *)self _pendingInvitationsForAccountIdentifier:v6 completion:v7];
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

- (void)presentAccountUserDetailsForRowModel:(id)a3
{
  v4 = a3;
  v5 = [PKAccountUserDetailViewController alloc];
  v6 = [(PKPaymentPassDetailViewController *)self pass];
  v7 = [(PKPaymentPassDetailViewController *)self detailViewStyle];
  v8 = [(PKPaymentPassDetailViewController *)self account];
  v9 = [v4 accountUser];

  v10 = [(PKPaymentPassDetailViewController *)self familyCollection];
  v11 = [(PKPaymentPassDetailViewController *)self contactAvatarManager];
  v12 = [(PKPaymentPassDetailViewController *)self contactResolver];
  v14 = [(PKAccountUserDetailViewController *)v5 initWithPaymentPass:v6 style:v7 account:v8 accountUser:v9 familyMemberCollection:v10 avatarManager:v11 contactResolver:v12];

  v13 = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([v13 pk_settings_useStateDrivenNavigation])
  {
    [v13 pk_settings_pushViewController:v14];
  }

  else
  {
    [v13 pushViewController:v14 animated:1];
  }
}

- (void)presentAccountUserInvitationForRowModel:(id)a3
{
  v4 = [a3 invitation];
  [(PKPaymentPassDetailViewController *)self _presentInvitation:v4 completion:0];
}

- (BOOL)shouldShowVerifySSNSection
{
  v2 = [(PKPaymentPassDetailViewController *)self accountUserCollection];
  v3 = [v2 currentAccountUser];

  LOBYTE(v2) = [v3 identityStatus] == 2;
  return v2;
}

- (id)verifySSNTableViewCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = a3;
  v6 = PKLocalizedFeatureString();
  v7 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v6 forTableView:v5];

  [v7 setAccessibilityIdentifier:*MEMORY[0x1E69B9578]];

  return v7;
}

- (void)didSelectVerifySSNCellInTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = [PKAccountVerifySSNPageViewController alloc];
  v6 = [(PKPaymentPassDetailViewController *)self account];
  v7 = [(PKPaymentPassDetailViewController *)self detailViewStyle];
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

  v11 = [(PKAccountVerifySSNPageViewController *)v5 initWithAccount:v6 context:v9];

  v10 = [[PKNavigationController alloc] initWithRootViewController:v11];
  [(PKPaymentPassDetailViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)_presentInvitation:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E69B8D48];
  v8 = a3;
  v9 = [v7 alloc];
  v10 = [MEMORY[0x1E69B8EF8] sharedService];
  v11 = [v9 initWithWebService:v10];

  v12 = [PKApplyControllerConfiguration alloc];
  v13 = [(PKPaymentPassDetailViewController *)self detailViewStyle];
  v14 = 3;
  if (v13 != 1)
  {
    v14 = 0;
  }

  if (v13 == 2)
  {
    v15 = 4;
  }

  else
  {
    v15 = v14;
  }

  v16 = [(PKApplyControllerConfiguration *)v12 initWithSetupDelegate:0 context:v15 provisioningController:v11];
  [(PKApplyControllerConfiguration *)v16 setFeatureApplication:v8];

  v17 = [[PKApplyController alloc] initWithApplyConfiguration:v16];
  v18 = MEMORY[0x1E69B8330];
  v19 = [(PKPaymentPassDetailViewController *)self account];
  v20 = [v18 analyticsAccountTypeForAccount:v19];
  [(PKApplyController *)v17 setAnalyticsExistingAccountType:v20];

  [(PKPaymentPassDetailViewController *)self setApplyController:v17];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __82__PKPaymentPassDetailViewController_PKAccountUser___presentInvitation_completion___block_invoke;
  v22[3] = &unk_1E8010CC0;
  v22[4] = self;
  v23 = v6;
  v21 = v6;
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
  v2 = [(PKPaymentPassDetailViewController *)self warningTextColor];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] systemRedColor];
  }

  v5 = v4;

  return v5;
}

- (void)_presentStopSharingAlertForTableView:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(PKPaymentPassDetailViewController *)self isRemovingAccountUser])
  {
    v8 = [v6 cellForRowAtIndexPath:v7];
    v9 = PKLocalizedFeatureString();
    v10 = PKLocalizedFeatureString();
    v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v10 preferredStyle:0];
    v12 = [v11 popoverPresentationController];
    [v12 setSourceView:v8];

    v13 = MEMORY[0x1E69DC648];
    v14 = PKLocalizedFeatureString();
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __99__PKPaymentPassDetailViewController_PKAccountUser___presentStopSharingAlertForTableView_indexPath___block_invoke;
    v19[3] = &unk_1E8010D38;
    v19[4] = self;
    v20 = v6;
    v21 = v7;
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
  v3 = [(PKPaymentPassDetailViewController *)self account];
  v4 = [(PKPaymentPassDetailViewController *)self accountUserCollection];
  v5 = [(PKPaymentPassDetailViewController *)self familyCollection];
  v6 = [(PKPaymentPassDetailViewController *)self detailViewStyle];
  v7 = 3;
  if (v6 != 1)
  {
    v7 = 0;
  }

  if (v6 == 2)
  {
    v8 = 4;
  }

  else
  {
    v8 = v7;
  }

  [PKAccountInvitationController presentCreateAccountUserInvitationWithViewController:self account:v3 accountUserCollection:v4 familyMemberCollection:v5 context:v8 completion:0];

  [(PKPaymentPassDetailViewController *)self _reportAddAccountUser];
}

- (void)_accountUsersForAccountIdentifier:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E69B8400];
  v7 = a3;
  v8 = [v6 sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __97__PKPaymentPassDetailViewController_PKAccountUser___accountUsersForAccountIdentifier_completion___block_invoke;
  v10[3] = &unk_1E8010D60;
  v11 = v5;
  v9 = v5;
  [v8 accountUsersForAccountWithIdentifier:v7 completion:v10];
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

- (void)_pendingInvitationsForAccountIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentPassDetailViewController *)self paymentServiceDataProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __103__PKPaymentPassDetailViewController_PKAccountUser___pendingInvitationsForAccountIdentifier_completion___block_invoke;
  v10[3] = &unk_1E8010DA8;
  v11 = v6;
  v9 = v6;
  [v8 featureApplicationsForAccountIdentifier:v7 completion:v10];
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

- (id)_accountUserTableViewCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"AccountUserCellReuseIdentifier"];
  if (!v7)
  {
    v7 = [[PKFamilyMemberTableViewCell alloc] initWithStyle:3 reuseIdentifier:@"AccountUserCellReuseIdentifier"];
  }

  v8 = [(PKPaymentPassDetailViewController *)self sortedFamilyMemberRowModels];
  v9 = [v8 objectAtIndex:{objc_msgSend(v6, "row")}];

  [(PKFamilyMemberTableViewCell *)v7 setRowModel:v9];
  v10 = [(PKPaymentPassDetailViewController *)self canSelectAccountUserRowAtIndexPath:v6];

  if (!v10)
  {
    [(PKFamilyMemberTableViewCell *)v7 setAccessoryType:0];
  }

  return v7;
}

- (id)_addAccounUserTableViewCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v4 = [a3 dequeueReusableCellWithIdentifier:{@"AddAccountUserCellReuseIdentifier", a4}];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"AddAccountUserCellReuseIdentifier"];
  }

  v5 = [v4 defaultContentConfiguration];
  v6 = PKLocalizedFeatureString();
  [v5 setText:v6];

  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus"];
  [v5 setImage:v7];

  v8 = [v5 textProperties];
  v9 = [MEMORY[0x1E69DC888] linkColor];
  [v8 setColor:v9];

  [v4 setContentConfiguration:v5];
  [v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9400]];

  return v4;
}

- (BOOL)_showsAddAccountUserButton
{
  v2 = [(PKPaymentPassDetailViewController *)self account];
  v3 = [PKAccountInvitationController canInviteAccountUserWithAccount:v2];

  return v3;
}

- (void)_reportAddAccountUser
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PKPaymentPassDetailViewController *)self account];
  if (v4)
  {
    v5 = [(PKPaymentPassDetailViewController *)self account];
    v6 = [v5 analyticsEventAccountType];
  }

  else
  {
    v6 = *MEMORY[0x1E69BA698];
  }

  if (v6)
  {
    [v3 setObject:v6 forKey:*MEMORY[0x1E69BA688]];
  }

  [v3 setObject:*MEMORY[0x1E69BB230] forKey:*MEMORY[0x1E69BB170]];
  [v3 setObject:*MEMORY[0x1E69BA7C8] forKey:*MEMORY[0x1E69BA680]];
  v30 = v3;
  [v3 setObject:*MEMORY[0x1E69BAC28] forKey:*MEMORY[0x1E69BABE8]];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = [(PKPaymentPassDetailViewController *)self accountUserCollection];
  v8 = [v7 accountUsers];

  v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
  v29 = v6;
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
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        if (([v15 isCurrentUser] & 1) == 0)
        {
          v16 = [(PKPaymentPassDetailViewController *)self familyCollection];
          v17 = [v15 altDSID];
          v18 = [v16 familyMemberForAltDSID:v17];

          v19 = [v18 memberType];
          switch(v19)
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

      v10 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
  v21 = [v20 stringValue];
  [v30 setObject:v21 forKey:*MEMORY[0x1E69BA230]];

  v22 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
  v23 = [v22 stringValue];
  [v30 setObject:v23 forKey:*MEMORY[0x1E69BA240]];

  v24 = [MEMORY[0x1E696AD98] numberWithInteger:v31];
  v25 = [v24 stringValue];
  [v30 setObject:v25 forKey:*MEMORY[0x1E69BA238]];

  v26 = MEMORY[0x1E69B8540];
  v27 = *MEMORY[0x1E69BB698];
  v28 = [v30 copy];
  [v26 subject:v27 sendEvent:v28];
}

- (BOOL)shouldShowIdentityDocumentSection
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(PKPaymentPassDetailViewController *)self pass];
  if ([v3 isIdentityPass] && -[PKPaymentPassDetailViewController detailViewStyle](self, "detailViewStyle") != 2)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v3 deviceContactlessPaymentApplications];
    v4 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v6 = *v13;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          [v8 paymentType];
          if (PKPaymentMethodTypeIsIdentityDocument())
          {
            if ([v8 state] == 1)
            {
              v9 = [v8 subcredentials];
              v10 = [v9 count];

              if (v10)
              {
                LOBYTE(v4) = 1;
                goto LABEL_16;
              }
            }
          }
        }

        v4 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)identityDocumentTableViewCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = a3;
  v6 = [(PKPaymentPassDetailViewController *)self primaryTextColor];
  if (v6)
  {
    v7 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:v6 forTableView:v5];
  }

  else
  {
    v8 = [MEMORY[0x1E69DC888] labelColor];
    v7 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:v8 forTableView:v5];
  }

  v9 = [(PKPaymentPassDetailViewController *)self pass];
  v10 = [v9 identityType];
  v11 = [v7 textLabel];
  if (v10 == 5)
  {
    v12 = @"PHYSICAL_PASSPORT_IDENTITY_CARD_INFO";
  }

  else
  {
    v12 = @"GENERIC_IDENTITY_CARD_INFO";
  }

  v13 = PKLocalizedIdentityString(&v12->isa);
  [v11 setText:v13];

  PKAccessibilityIDCellSet(v7, *MEMORY[0x1E69B9868]);
  v14 = [(PKPaymentPassDetailViewController *)self loadingIdentityDetails];
  [(PKPaymentPassDetailViewController *)self _showSpinner:v14 inCell:v7 overrideTextColor:0];
  if (!v14)
  {
    [v7 setAccessoryType:1];
  }

  return v7;
}

- (void)didSelectIdentityDocumentCellInTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(PKPaymentPassDetailViewController *)self loadingIdentityDetails])
  {
    [(PKPaymentPassDetailViewController *)self setLoadingIdentityDetails:1];
    v8 = [v6 cellForRowAtIndexPath:v7];
    [(PKPaymentPassDetailViewController *)self _showSpinner:1 inCell:v8 overrideTextColor:0];
    v9 = [PKIdentityDocumentDetailsViewController alloc];
    v10 = [(PKPaymentPassDetailViewController *)self pass];
    v11 = [(PKPaymentPassDetailViewController *)self paymentServiceDataProvider];
    v12 = [(PKIdentityDocumentDetailsViewController *)v9 initWithPass:v10 dataProvider:v11 detailViewStyle:[(PKPaymentPassDetailViewController *)self detailViewStyle]];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __100__PKPaymentPassDetailViewController_Identity__didSelectIdentityDocumentCellInTableView_atIndexPath___block_invoke;
    v14[3] = &unk_1E80165C8;
    v14[4] = self;
    v15 = v12;
    v16 = v6;
    v17 = v7;
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

- (id)footerForIdentityDocumentInTableView:(id)a3
{
  v3 = [(PKPaymentPassDetailViewController *)self pass];
  if ([v3 identityType] == 5)
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
  v3 = [(PKPaymentPassDetailViewController *)self fingeprintHelper];

  if (!v3)
  {
    v4 = [PKIdentityReplaceFingerprintHelper alloc];
    v5 = [(PKPaymentPassDetailViewController *)self pass];
    v6 = [v5 secureElementPass];
    v7 = [(PKIdentityReplaceFingerprintHelper *)v4 initWithPass:v6 isRemote:[(PKPaymentPassDetailViewController *)self detailViewStyle]== 2];
    [(PKPaymentPassDetailViewController *)self setFingeprintHelper:v7];
  }

  v8 = [(PKPaymentPassDetailViewController *)self fingeprintHelper];
  if ([v8 hasCachedEligibility])
  {
    v9 = [v8 isEligibile];
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
    [v8 isEligibleWithCompletion:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    v9 = 0;
  }

  return v9;
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

- (id)replaceBiometricTableViewCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = a3;
  v6 = PKLocalizedIdentityString(&cfstr_ReplaceIdFinge.isa);
  v7 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v6 forTableView:v5];

  return v7;
}

- (void)didSelectReplaceBiometricCellInTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = [(PKPaymentPassDetailViewController *)self fingeprintHelper:a3];
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

- (PKPaymentPassDetailViewController)initWithPass:(id)a3 group:(id)a4 groupsController:(id)a5 webService:(id)a6 style:(int64_t)a7 dataProvider:(id)a8
{
  v14 = MEMORY[0x1E69B9020];
  v15 = a8;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [v14 sharedService];
  v21 = [(PKPaymentPassDetailViewController *)self initWithPass:v19 group:v18 groupsController:v17 webService:v16 peerPaymentWebService:v20 style:a7 passLibraryDataProvider:v15 paymentServiceDataProvider:0];

  return v21;
}

- (PKPaymentPassDetailViewController)initWithPass:(id)a3 group:(id)a4 groupsController:(id)a5 webService:(id)a6 peerPaymentWebService:(id)a7 style:(int64_t)a8 passLibraryDataProvider:(id)a9 paymentServiceDataProvider:(id)a10
{
  v17 = MEMORY[0x1E69B8400];
  v18 = a10;
  v19 = a9;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = [v17 sharedInstance];
  v26 = [(PKPaymentPassDetailViewController *)self initWithPass:v24 group:v23 groupsController:v22 webService:v21 peerPaymentWebService:v20 accountService:v25 style:a8 passLibraryDataProvider:v19 paymentServiceDataProvider:v18 rendererState:0 context:0 familyCollection:0 contactAvatarManager:0 account:0];

  return v26;
}

- (PKPaymentPassDetailViewController)initWithPass:(id)a3 group:(id)a4 groupsController:(id)a5 webService:(id)a6 peerPaymentWebService:(id)a7 style:(int64_t)a8 passLibraryDataProvider:(id)a9 paymentServiceDataProvider:(id)a10 rendererState:(id)a11 context:(id)a12
{
  v17 = MEMORY[0x1E69B8400];
  v18 = a11;
  v19 = a10;
  v20 = a9;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v26 = [v17 sharedInstance];
  v27 = [(PKPaymentPassDetailViewController *)self initWithPass:v25 group:v24 groupsController:v23 webService:v22 peerPaymentWebService:v21 accountService:v26 style:a8 passLibraryDataProvider:v20 paymentServiceDataProvider:v19 rendererState:v18 context:0 familyCollection:0 contactAvatarManager:0 account:0];

  return v27;
}

- (PKPaymentPassDetailViewController)initWithPass:(id)a3 group:(id)a4 groupsController:(id)a5 webService:(id)a6 peerPaymentWebService:(id)a7 accountService:(id)a8 style:(int64_t)a9 passLibraryDataProvider:(id)a10 paymentServiceDataProvider:(id)a11 rendererState:(id)a12 context:(id)a13 familyCollection:(id)a14 contactAvatarManager:(id)a15 account:(id)a16
{
  v206[3] = *MEMORY[0x1E69E9840];
  v160 = a3;
  v156 = a4;
  v157 = a5;
  v146 = a6;
  v159 = a7;
  v153 = a8;
  v147 = a10;
  v148 = a11;
  v158 = a12;
  v149 = a13;
  v150 = a14;
  v151 = a15;
  v152 = a16;
  v203.receiver = self;
  v203.super_class = PKPaymentPassDetailViewController;
  v19 = [(PKDynamicTableViewController *)&v203 init];
  v168 = v19;
  if (!v19)
  {
    goto LABEL_93;
  }

  v19->_expressStateNotificationToken = -1;
  v143 = [v160 uniqueID];
  objc_storeStrong(&v168->_pass, a3);
  [(PKPaymentPassDetailViewController *)v168 _applyStaticPassPropertiesForPass];
  objc_storeStrong(&v168->_account, a16);
  v168->_detailViewStyle = a9;
  objc_storeStrong(&v168->_familyCollection, a14);
  objc_storeStrong(&v168->_contactAvatarManager, a15);
  objc_storeStrong(&v168->_webService, a6);
  objc_storeStrong(&v168->_passLibraryDataProvider, a10);
  objc_storeStrong(&v168->_paymentServiceDataProvider, a11);
  v20 = [objc_alloc(MEMORY[0x1E69B8850]) initWithPaymentDataProvider:v168->_paymentServiceDataProvider passLibraryDataProvider:v168->_passLibraryDataProvider isForWatch:a9 == 2];
  expressPassController = v168->_expressPassController;
  v168->_expressPassController = v20;

  [(PKExpressPassController *)v168->_expressPassController setPresentingViewController:?];
  v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  startedAnalyticsSubjects = v168->_startedAnalyticsSubjects;
  v168->_startedAnalyticsSubjects = v22;

  v24 = [[PKPassHeaderView alloc] initWithPass:v168->_pass rendererState:v158];
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

  v28 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
  v206[0] = objc_opt_class();
  v206[1] = objc_opt_class();
  v206[2] = objc_opt_class();
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v206 count:3];
  v30 = [v28 arrayByAddingObjectsFromArray:v29];
  v31 = [(PKPaymentPassDetailViewController *)v168 registerForTraitChanges:v30 withHandler:&__block_literal_global_252];

  v32 = [MEMORY[0x1E69B9328] sharedInstance];
  v201[0] = MEMORY[0x1E69E9820];
  v201[1] = 3221225472;
  v201[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_2;
  v201[3] = &unk_1E8025E30;
  v33 = v168;
  v202 = v33;
  [v32 authorizationStatusWithCompletion:v201];

  if (v157)
  {
    objc_storeStrong(&v33->_groupsController, a5);
    if (v156)
    {
      v34 = v156;
    }

    else
    {
      groupsController = v33->_groupsController;
      v39 = [(PKPaymentPass *)v168->_pass uniqueID];
      v40 = [(PKGroupsController *)groupsController groupIndexForPassUniqueID:v39];

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
    v199 = v156;
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

  objc_storeStrong(&v33->_rendererState, a12);
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
    v58 = [(PKPaymentPass *)v168->_pass associatedAccountServiceAccountIdentifier];
    if ([v58 length])
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

  objc_storeStrong(&v33->_context, a13);
  v60 = [(PKPaymentWebService *)v168->_webService context];
  v61 = [v60 configuration];
  v144 = [v61 contactFormatConfiguration];

  v62 = [objc_alloc(MEMORY[0x1E69B8730]) initWithConfiguration:v144];
  contactFormatValidator = v33->_contactFormatValidator;
  v33->_contactFormatValidator = v62;

  if ([(PKPaymentPass *)v168->_pass hasAssociatedPeerPaymentAccount])
  {
    v64 = v159;
    v65 = v159;
    if (!v159)
    {
      v65 = [MEMORY[0x1E69B9020] sharedService];
      v64 = 0;
    }

    v66 = v64 == 0;
    objc_storeStrong(&v33->_peerPaymentWebService, v65);
    if (v66)
    {
    }

    v67 = [(PKPeerPaymentWebService *)v33->_peerPaymentWebService targetDevice];
    v68 = [v67 account];

    v69 = [v68 associatedPassUniqueID];
    v70 = [v69 isEqualToString:v143];

    if (v70)
    {
      objc_storeStrong(&v33->_peerPaymentAccount, v68);
      v71 = [(PKPeerPaymentWebService *)v33->_peerPaymentWebService targetDevice];
      v72 = objc_opt_respondsToSelector();

      if (v72)
      {
        v73 = [(PKPeerPaymentWebService *)v33->_peerPaymentWebService targetDevice];
        v74 = [v73 preferences];
        peerPaymentPreferences = v33->_peerPaymentPreferences;
        v33->_peerPaymentPreferences = v74;
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

    v82 = [MEMORY[0x1E696AD88] defaultCenter];
    v83 = [(PKPeerPaymentWebService *)v33->_peerPaymentWebService targetDevice];
    [v82 addObserver:v33 selector:sel__handlePeerPaymentAccountDidChangeNotification_ name:*MEMORY[0x1E69BC378] object:v83];

    v84 = [MEMORY[0x1E696AD88] defaultCenter];
    v85 = [(PKPeerPaymentWebService *)v33->_peerPaymentWebService targetDevice];
    [v84 addObserver:v33 selector:sel__handlePeerPaymentPreferencestDidChangeNotification_ name:*MEMORY[0x1E69BC380] object:v85];

    v196[0] = MEMORY[0x1E69E9820];
    v196[1] = 3221225472;
    v196[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_6;
    v196[3] = &unk_1E8010970;
    v86 = v33;
    v197 = v86;
    [(PKPaymentPassDetailViewController *)v86 _loadFamilyCollectionIfNecessaryWithCompletion:v196];
    objc_initWeak(&location, v86);
    v87 = [MEMORY[0x1E69B9000] sharedInstance];
    v192[0] = MEMORY[0x1E69E9820];
    v192[1] = 3221225472;
    v192[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_7;
    v192[3] = &unk_1E8025E58;
    objc_copyWeak(&v194, &location);
    v88 = v87;
    v193 = v88;
    [v88 userInfoWithCompletion:v192];
    [v88 registerObserver:v86];

    objc_destroyWeak(&v194);
    objc_destroyWeak(&location);

    goto LABEL_59;
  }

  v89 = [(PKPaymentPass *)v168->_pass associatedAccountServiceAccountIdentifier];

  if (!v89)
  {
    v104 = [MEMORY[0x1E69B8CF8] defaults];
    v105 = [v104 defaultBillingAddressForPaymentPass:v168->_pass];
    billingContact = v33->_billingContact;
    v33->_billingContact = v105;

    v33->_loadingBillingContact = 0;
    if (![(PKPaymentPassDetailViewController *)v33 _isBankConnectSupportedForPaymentPass:v160])
    {
      [(PKPaymentPassDetailViewController *)v33 contentIsLoaded];
    }

    goto LABEL_59;
  }

  v90 = v153;
  v91 = v153;
  if (!v153)
  {
    v91 = [MEMORY[0x1E69B8400] sharedInstance];
    v90 = 0;
  }

  v92 = v90 == 0;
  objc_storeStrong(&v33->_accountService, v91);
  if (v92)
  {
  }

  v93 = v159;
  v94 = v159;
  if (!v159)
  {
    v94 = [MEMORY[0x1E69B9020] sharedService];
    v93 = 0;
  }

  v95 = v93 == 0;
  objc_storeStrong(&v33->_peerPaymentWebService, v94);
  if (v95)
  {
  }

  [(PKAccountService *)v33->_accountService registerObserver:v33];
  v96 = [(PKPaymentPass *)v168->_pass associatedAccountServiceAccountIdentifier];
  objc_initWeak(&location, v33);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_3_302;
  aBlock[3] = &unk_1E8025ED0;
  objc_copyWeak(&v191, &location);
  v97 = v33;
  v188 = v97;
  v189 = v153;
  v98 = v96;
  v190 = v98;
  v99 = _Block_copy(aBlock);
  account = v168->_account;
  if (!account)
  {
    goto LABEL_54;
  }

  v101 = [(PKAccount *)account accountIdentifier];
  v102 = v98;
  v103 = v102;
  if (v101 == v102)
  {
  }

  else
  {
    if (!v102 || !v101)
    {

      goto LABEL_54;
    }

    v154 = [v101 isEqualToString:v102];

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
        v108 = [(PKPaymentWebService *)v168->_webService targetDevice];
        [v108 accountWithIdentifier:v98 completion:v107];
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
  v109 = [MEMORY[0x1E696AD88] defaultCenter];
  [v109 addObserver:v97 selector:sel__handleAccountServiceAccountDidChangeNotification_ name:*MEMORY[0x1E69B9E60] object:0];

  objc_destroyWeak(&v191);
  objc_destroyWeak(&location);

LABEL_59:
  v110 = [(PKPaymentPass *)v168->_pass supportsDeepLinkingTransactions];
  if (v110)
  {
    LOBYTE(v110) = [PKPaymentNotificationAppURLHelper applicationExistsToHandleNotificationsForPaymentPass:v160];
  }

  v33->_deepLinkingUIEnabled = v110;
  v155 = [(PKPaymentPassDetailViewController *)v33 contactResolver];
  v111 = [[PKPaymentTransactionCellController alloc] initWithContactResolver:v155];
  transactionCellController = v33->_transactionCellController;
  v33->_transactionCellController = v111;

  v113 = [[PKPaymentTransactionDetailsFactory alloc] initWithContactResolver:v155 peerPaymentWebService:v33->_peerPaymentWebService paymentServiceDataProvider:v168->_paymentServiceDataProvider detailViewStyle:v168->_detailViewStyle context:0];
  transactionDetailsFactory = v33->_transactionDetailsFactory;
  v33->_transactionDetailsFactory = v113;

  v115 = 3;
  if (a9 != 1)
  {
    v115 = 0;
  }

  if (a9 == 2)
  {
    v116 = 4;
  }

  else
  {
    v116 = v115;
  }

  v117 = [PKPaymentVerificationController alloc];
  pass = v168->_pass;
  v119 = [(PKPassHeaderView *)v168->_passHeaderView passView];
  v120 = [(PKPaymentVerificationController *)v117 initWithPass:pass passView:v119 webService:v168->_webService context:v116 delegate:v33 verificationContext:1];
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
      v124 = [v123 automaticSelectionCriteria];
      v125 = [v124 countByEnumeratingWithState:&v176 objects:v204 count:16];
      if (v125)
      {
        v126 = *v177;
LABEL_73:
        v127 = 0;
        while (1)
        {
          if (*v177 != v126)
          {
            objc_enumerationMutation(v124);
          }

          v128 = [*(*(&v176 + 1) + 8 * v127) type];
          v33->_isAppleAccess = PKEqualObjects();

          if (v33->_isAppleAccess)
          {
            break;
          }

          if (v125 == ++v127)
          {
            v125 = [v124 countByEnumeratingWithState:&v176 objects:v204 count:16];
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
      v132 = [v131 sectionIdentifiers];
      v172[0] = MEMORY[0x1E69E9820];
      v172[1] = 3221225472;
      v172[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_13;
      v172[3] = &unk_1E8012808;
      v133 = v131;
      v173 = v133;
      v174 = v132;
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
  v136 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v136 addObserver:v33 selector:sel__passSettingsChanged_ name:*MEMORY[0x1E69BBBF0] object:0];
  v137 = [(PKPaymentPassDetailViewController *)v33 navigationItem];
  [v137 setBackButtonDisplayMode:2];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v138 = [(PKPaymentPass *)v168->_pass localizedDescription];
    [v137 setBackButtonTitle:v138];

    [v137 pkui_setupScrollEdgeChromelessAppearance];
    [v137 pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
  }

  if (v168->_expressStateNotificationToken == -1 && [(PKPaymentPassDetailViewController *)v33 _shouldShowTransitExpressSettingCell])
  {
    objc_initWeak(&from, v33);
    v139 = [MEMORY[0x1E696AD88] defaultCenter];
    [v139 addObserver:v33 selector:sel__transitExpressStateDidChange name:@"PKExpressPassesViewControllerExpressPassChangedNotification" object:0];
    v140 = [*MEMORY[0x1E69BB808] UTF8String];
    v141 = MEMORY[0x1E69E96A0];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __246__PKPaymentPassDetailViewController_initWithPass_group_groupsController_webService_peerPaymentWebService_accountService_style_passLibraryDataProvider_paymentServiceDataProvider_rendererState_context_familyCollection_contactAvatarManager_account___block_invoke_14;
    handler[3] = &unk_1E8012010;
    objc_copyWeak(&v170, &from);
    notify_register_dispatch(v140, &v168->_expressStateNotificationToken, MEMORY[0x1E69E96A0], handler);

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

- (BOOL)_isBankConnectSupportedForPaymentPass:(id)a3
{
  v4 = a3;
  if ([(PKPaymentPassDetailViewController *)self _shouldShowBankConnect])
  {
    v5 = [_TtC9PassKitUI40PKPassDetailBankConnectSectionController validForPaymentPass:v4];
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

  v3 = [(PKPaymentPassDetailViewController *)self bankConnectAccount];
  v4 = v3 != 0;

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

  v5 = [(PKPaymentPassDetailWrapperSectionController *)self->_paymentPassDetailSectionController sectionIdentifiers];
  v6 = [v5 mutableCopy];
  v7 = v120[5];
  v120[5] = v6;

  [v101 addObject:self->_paymentPassDetailSectionController];
  v8 = [(PKPaymentPassDetailViewController *)self _configurableSections];
  v99 = [v8 pk_createSetByApplyingBlock:&__block_literal_global_346_0];
  v9 = [[PKConfigurablePassDetailSectionsController alloc] initWithPaymentPass:self->_pass clientReservedIdentifiers:v99];
  configurableSectionController = self->_configurableSectionController;
  self->_configurableSectionController = v9;

  [(PKConfigurablePassDetailSectionsController *)self->_configurableSectionController setDelegate:self];
  [(PKConfigurablePassDetailSectionsController *)self->_configurableSectionController setUseBridgeStyle:self->_detailViewStyle == 2];
  [v101 addObject:self->_configurableSectionController];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = [(PKConfigurablePassDetailSectionsController *)self->_configurableSectionController sectionIdentifiers];
  [v11 addObjectsFromArray:v12];

  v13 = [v99 pk_arrayCopy];
  [v11 addObjectsFromArray:v13];

  v14 = [(PKPaymentPass *)self->_pass passDetailSections];
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
    [v14 enumerateObjectsWithOptions:2 usingBlock:v113];
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

  v20 = self;
  if ([PKPaymentPassDetailBalanceSectionController validForPaymentPass:self->_pass])
  {
    v21 = [[PKPaymentPassDetailBalanceSectionController alloc] initWithDelegate:self];
    balanceSectionController = self->_balanceSectionController;
    self->_balanceSectionController = v21;

    [v101 addObject:self->_balanceSectionController];
    v23 = [(PKPaymentPassDetailBalanceSectionController *)self->_balanceSectionController allSectionIdentifiers];
    v100[2](v100, v23, @"LinkedApplication");

    v20 = self;
  }

  if ([PKPaymentPassDetailAutoReloadActionSectionController validForPaymentPass:v20->_pass])
  {
    v24 = [[PKPaymentPassDetailAutoReloadActionSectionController alloc] initWithPass:v20->_pass paymentDataProvider:v20->_paymentServiceDataProvider viewStyle:v20->_detailViewStyle delegate:v20];
    autoReloadActionSectionController = v20->_autoReloadActionSectionController;
    v20->_autoReloadActionSectionController = v24;

    [v101 addObject:self->_autoReloadActionSectionController];
    [(PKPaymentPassDetailAutoReloadActionSectionController *)self->_autoReloadActionSectionController setSetupDelegate:self];
    v26 = [(PKPaymentPassDetailAutoReloadActionSectionController *)self->_autoReloadActionSectionController allSectionIdentifiers];
    v100[2](v100, v26, @"BalancesAndCommutePlans");

    v20 = self;
  }

  if ([PKPaymentPassDetailPassActionSectionController validForPaymentPass:v20->_pass])
  {
    v27 = [[PKPaymentPassDetailPassActionSectionController alloc] initWithPass:v20->_pass viewStyle:v20->_detailViewStyle paymentDataProvider:v20->_paymentServiceDataProvider webService:v20->_webService transitBalanceModel:v20->_transitBalanceModel delegate:v20];
    passActionSectionController = v20->_passActionSectionController;
    v20->_passActionSectionController = v27;

    [v101 addObject:self->_passActionSectionController];
    v29 = [(PKPaymentPassDetailPassActionSectionController *)self->_passActionSectionController allSectionIdentifiers];
    v100[2](v100, v29, @"BalancesAndCommutePlans");

    v20 = self;
  }

  if ([PKPassDetailSharesSectionController validForPaymentPass:v20->_pass])
  {
    v30 = objc_alloc(MEMORY[0x1E69B9268]);
    pass = v20->_pass;
    v32 = [(PKPaymentPassDetailViewController *)v20 contactResolver];
    webService = v20->_webService;
    paymentServiceDataProvider = v20->_paymentServiceDataProvider;
    v35 = MEMORY[0x1E69E96A0];
    v36 = MEMORY[0x1E69E96A0];
    v37 = [v30 initWithPass:pass contactResolver:v32 webService:webService paymentServiceProvider:paymentServiceDataProvider queue:v35];

    v38 = [[PKPassDetailSharesSectionController alloc] initWithSharesController:v37 delegate:self];
    sharesSectionController = self->_sharesSectionController;
    self->_sharesSectionController = v38;

    [v101 addObject:self->_sharesSectionController];
    v40 = [(PKPassDetailSharesSectionController *)self->_sharesSectionController allSectionIdentifiers];
    v100[2](v100, v40, @"TransactionsByYear");

    v20 = self;
  }

  if ([PKPassDetailScheduledPaymentsSectionController validForPaymentPass:v20->_pass])
  {
    v41 = [PKPassDetailScheduledPaymentsSectionController alloc];
    account = v20->_account;
    v43 = v20->_pass;
    v44 = [MEMORY[0x1E69B8400] sharedInstance];
    v45 = [(PKPassDetailScheduledPaymentsSectionController *)v41 initWithAccount:account pass:v43 accountService:v44 delegate:v20];
    scheduledPaymentsSectionController = v20->_scheduledPaymentsSectionController;
    v20->_scheduledPaymentsSectionController = v45;

    [v101 addObject:self->_scheduledPaymentsSectionController];
    v47 = [(PKPassDetailScheduledPaymentsSectionController *)self->_scheduledPaymentsSectionController allSectionIdentifiers];
    v100[2](v100, v47, @"AccountUsers");

    v20 = self;
  }

  if ([(PKPaymentPassDetailViewController *)v20 _shouldShowBankConnect]&& [_TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController validForPaymentPass:v20->_pass])
  {
    objc_initWeak(&location, v20);
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
      v55 = [(PKPassDetailAccountCredentialsSectionController *)self->_accountCredentialsSectionController allSectionIdentifiers];
      v100[2](v100, v55, @"LinkedApplication");

      objc_destroyWeak(&v107);
    }

    objc_destroyWeak(&location);
    v20 = self;
  }

  if ([(PKPaymentPassDetailViewController *)v20 _isBankConnectSupportedForPaymentPass:v20->_pass])
  {
    v56 = [_TtC9PassKitUI40PKPassDetailBankConnectSectionController alloc];
    v57 = v20->_pass;
    v105 = 0;
    v58 = [(PKPassDetailBankConnectSectionController *)v56 initWithPass:v57 delegate:v20 throwsError:&v105];
    v59 = v105;
    bankConnectSectionController = v20->_bankConnectSectionController;
    v20->_bankConnectSectionController = v58;

    if (v59)
    {
      v61 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v126 = v59;
        _os_log_impl(&dword_1BD026000, v61, OS_LOG_TYPE_DEFAULT, "Failed to make PKPassDetailBankConnectSectionController: %@.", buf, 0xCu);
      }
    }

    else
    {
      [v101 addObject:self->_bankConnectSectionController];
      v61 = [(PKPassDetailBankConnectSectionController *)self->_bankConnectSectionController allSectionIdentifiers];
      v100[2](v100, v61, @"LinkedApplication");
    }

    v20 = self;
  }

  if ([PKPeerPaymentAutoReloadSectionController validForPaymentPass:v20->_pass]&& v20->_detailViewStyle != 2)
  {
    v62 = [PKPeerPaymentAutoReloadSectionController alloc];
    detailViewStyle = v20->_detailViewStyle;
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

    v66 = [(PKPeerPaymentAutoReloadSectionController *)v62 initWithDelegate:v20 pass:v20->_pass context:v65 passLibraryDataProvider:v20->_passLibraryDataProvider];
    peerPaymentAutoReloadSectionController = v20->_peerPaymentAutoReloadSectionController;
    v20->_peerPaymentAutoReloadSectionController = v66;

    [v101 addObject:self->_peerPaymentAutoReloadSectionController];
    v68 = [(PKPeerPaymentAutoReloadSectionController *)self->_peerPaymentAutoReloadSectionController allSectionIdentifiers];
    v100[2](v100, v68, @"PeerPaymentMoneyActions");

    v20 = self;
  }

  if ([PKPeerPaymentRecurringPaymentPassDetailsSectionController validForPaymentPass:v20->_pass]&& v20->_detailViewStyle == 1)
  {
    v69 = [PKPeerPaymentRecurringPaymentPassDetailsSectionController alloc];
    v70 = v20->_detailViewStyle;
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

    v73 = [(PKPeerPaymentRecurringPaymentPassDetailsSectionController *)v69 initWithDelegate:v20 pass:v20->_pass context:v72 passLibraryDataProvider:v20->_passLibraryDataProvider];
    peerPaymentRecurringPaymentSectionController = v20->_peerPaymentRecurringPaymentSectionController;
    v20->_peerPaymentRecurringPaymentSectionController = v73;

    [v101 addObject:self->_peerPaymentRecurringPaymentSectionController];
    v75 = [(PKPeerPaymentRecurringPaymentPassDetailsSectionController *)self->_peerPaymentRecurringPaymentSectionController allSectionIdentifiers];
    v100[2](v100, v75, @"PeerPaymentMoneyActions");

    v20 = self;
  }

  if ([PKPassDetailsPrecursorPassUpgradeSectionController validForPaymentPass:v20->_pass])
  {
    v76 = [[PKPassDetailsPrecursorPassUpgradeSectionController alloc] initWithPass:v20->_pass webService:v20->_webService delegate:v20];
    precursorSectionController = v20->_precursorSectionController;
    v20->_precursorSectionController = v76;

    [v101 addObject:self->_precursorSectionController];
    v78 = [(PKPassDetailsPrecursorPassUpgradeSectionController *)self->_precursorSectionController allSectionIdentifiers];
    v100[2](v100, v78, @"LinkedApplication");

    v20 = self;
  }

  if ([PKPassDetailsIdentityBioBindingSectionController validForPaymentPass:v20->_pass])
  {
    v79 = [[PKPassDetailsIdentityBioBindingSectionController alloc] initWithPass:v20->_pass webService:v20->_webService delegate:v20];
    bioBindingSectionController = v20->_bioBindingSectionController;
    v20->_bioBindingSectionController = v79;

    [v101 addObject:self->_bioBindingSectionController];
    v81 = [(PKPassDetailsIdentityBioBindingSectionController *)self->_bioBindingSectionController allSectionIdentifiers];
    v100[2](v100, v81, @"LinkedApplication");

    v20 = self;
  }

  if (v20->_detailViewStyle != 2 && [PKPassDetailsIdentityDigitalIDSectionController validForPaymentPass:v20->_pass])
  {
    v82 = [[PKPassDetailsIdentityDigitalIDSectionController alloc] initWithPass:v20->_pass detailViewStyle:v20->_detailViewStyle delegate:v20];
    digitalIDSectionController = v20->_digitalIDSectionController;
    v20->_digitalIDSectionController = v82;

    [v101 addObject:self->_digitalIDSectionController];
    v84 = [(PKPassDetailsIdentityDigitalIDSectionController *)self->_digitalIDSectionController allSectionIdentifiers];
    v100[2](v100, v84, @"IdentityDocumentDetails");

    v20 = self;
  }

  if ([PKPeerPaymentIdentityManagementSectionController validForPaymentPass:v20->_pass])
  {
    v85 = [[PKPeerPaymentIdentityManagementSectionController alloc] initWithDelegate:v20];
    peerPaymentIdentityManagementSectionController = v20->_peerPaymentIdentityManagementSectionController;
    v20->_peerPaymentIdentityManagementSectionController = v85;

    [v101 addObject:self->_peerPaymentIdentityManagementSectionController];
    v87 = [(PKPeerPaymentIdentityManagementSectionController *)self->_peerPaymentIdentityManagementSectionController allSectionIdentifiers];
    v100[2](v100, v87, @"PeerPaymentAutomaticallyAcceptPaymentsPreference");

    v20 = self;
  }

  if (PKIsPhone() && PKBroadwayDiscoverability2024Enabled() && [(PKPaymentPass *)v20->_pass isAppleCardPass])
  {
    v88 = objc_alloc_init(PKAppleCardFeaturesAndBenefitsSectionController);
    broadwayFeaturesAndBenefitsSectionController = v20->_broadwayFeaturesAndBenefitsSectionController;
    v20->_broadwayFeaturesAndBenefitsSectionController = v88;

    objc_initWeak(buf, self);
    v90 = self->_broadwayFeaturesAndBenefitsSectionController;
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = __51__PKPaymentPassDetailViewController__buildSections__block_invoke_364;
    v103[3] = &unk_1E8025FE0;
    objc_copyWeak(&v104, buf);
    [(PKAppleCardFeaturesAndBenefitsSectionController *)v90 setSelectionHandler:v103];
    [v101 addObject:self->_broadwayFeaturesAndBenefitsSectionController];
    v91 = [(PKAppleCardFeaturesAndBenefitsSectionController *)self->_broadwayFeaturesAndBenefitsSectionController allSectionIdentifiers];
    v100[2](v100, v91, @"BillingAddress");

    objc_destroyWeak(&v104);
    objc_destroyWeak(buf);
    v20 = self;
  }

  if ([PKExpressTogglesPaymentPassDetailSectionController validForPaymentPass:v20->_pass])
  {
    v92 = [[PKExpressTogglesPaymentPassDetailSectionController alloc] initWithPass:v20->_pass viewStyle:v20->_detailViewStyle expressPassController:v20->_expressPassController delegate:v20];
    expressTogglesSectionController = v20->_expressTogglesSectionController;
    v20->_expressTogglesSectionController = v92;

    [v101 addObject:self->_expressTogglesSectionController];
    v94 = [(PKExpressTogglesPaymentPassDetailSectionController *)self->_expressTogglesSectionController allSectionIdentifiers];
    v100[2](v100, v94, @"ManufacturerInfo");

    v20 = self;
  }

  v95 = [v101 copy];
  sectionControllers = v20->_sectionControllers;
  v20->_sectionControllers = v95;

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
  v2 = [(PKPaymentPass *)self->_pass passDetailSections];
  v3 = [v2 pk_objectsPassingTest:&__block_literal_global_370_1];
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

- (id)_configurableSectionForSectionType:(unint64_t)a3
{
  if (a3 == 28 || a3 == 6)
  {
    v4 = [(PKPaymentPass *)self->_pass passDetailSections];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__PKPaymentPassDetailViewController__configurableSectionForSectionType___block_invoke;
    v7[3] = &__block_descriptor_40_e29_B16__0__PKPassDetailSection_8l;
    v7[4] = a3;
    v5 = [v4 pk_firstObjectPassingTest:v7];
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
  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 removeObserver:self];

  v10 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v10 removeObserver:self];

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
  v13 = [MEMORY[0x1E69B8310] sharedManager];
  [v13 unregisterObserver:self];

  [(PKLinkedApplication *)self->_linkedApplication removeObserver:self];
  v14.receiver = self;
  v14.super_class = PKPaymentPassDetailViewController;
  [(PKPaymentPassDetailViewController *)&v14 dealloc];
}

- (void)executeAfterContentIsLoaded:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__PKPaymentPassDetailViewController_executeAfterContentIsLoaded___block_invoke;
    v6[3] = &unk_1E8010DD0;
    v6[4] = self;
    v7 = v4;
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

- (void)setShowDoneButton:(BOOL)a3
{
  v3 = a3;
  v6 = [(PKPaymentPassDetailViewController *)self navigationItem];
  if (v3)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
    [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
  }

  else
  {
    v5 = 0;
  }

  [v6 setRightBarButtonItem:v5];
}

- (void)_refreshStaleBalanceModelForPass:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isStoredValuePass] & 1) != 0 || (objc_msgSend(v6, "isAccessPass"))
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
    v8 = [v6 uniqueID];
    v9 = [v6 devicePrimaryPaymentApplication];
    v10 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke;
    v28[3] = &unk_1E8019938;
    v28[4] = self;
    v11 = v8;
    v29 = v11;
    v12 = v9;
    v30 = v12;
    v32 = v37;
    v31 = v6;
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
    v15 = [MEMORY[0x1E695DFB0] null];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __81__PKPaymentPassDetailViewController__refreshStaleBalanceModelForPass_completion___block_invoke_10;
    v17[3] = &unk_1E8026070;
    v18 = v7;
    v19 = v35;
    v20 = v33;
    v21 = v37;
    v16 = [v10 evaluateWithInput:v15 completion:v17];

    _Block_object_dispose(v33, 8);
    _Block_object_dispose(v35, 8);

    _Block_object_dispose(v37, 8);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0, 0, 0);
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
  v3 = [(PKPaymentPassDetailViewController *)self tableView];
  if ([(PKPaymentPassDetailViewController *)self shouldAllowRefresh])
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCE58]);
    refreshControl = self->_refreshControl;
    self->_refreshControl = v4;

    [(PKPaymentPassDetailViewController *)self setRefreshControl:self->_refreshControl];
    [(UIRefreshControl *)self->_refreshControl addTarget:self action:sel_refreshControlValueChanged_ forControlEvents:4096];
  }

  [v3 setEstimatedSectionHeaderHeight:0.0];
  PKFloatRoundToPixel();
  [v3 setEstimatedSectionFooterHeight:?];
  if (self->_detailViewStyle == 2)
  {
    [v3 setIndicatorStyle:2];
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

    v9 = [(UITableViewHeaderFooterView *)self->_headerView contentView];
    [v9 addSubview:self->_passHeaderView];

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
      v15 = [v14 unsignedIntegerValue];

      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
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

    v21 = [(UITableViewHeaderFooterView *)self->_headerView contentView];
    [v21 addSubview:self->_tabBar];

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
  [v3 setTableHeaderView:self->_headerView];
  if (self->_footerView)
  {
    [v3 setTableFooterView:?];
  }

  [v3 _setPinsTableHeaderView:1];
  if (self->_peerPaymentAccount && !self->_peerPaymentPreferences)
  {
    [(PKPaymentPassDetailViewController *)self _updatePeerPaymentPreferences];
  }

  [(PKPaymentPassDetailViewController *)self reloadData:0];
  v24 = [(PKPaymentPassDetailViewController *)self view];
  [v24 setAccessibilityIdentifier:*MEMORY[0x1E69B99E8]];
}

- (void)viewWillAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = PKPaymentPassDetailViewController;
  [(PKPaymentPassDetailViewController *)&v16 viewWillAppear:a3];
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
    v4 = [(PKPaymentPassDetailViewController *)self navigationController];
    v5 = [v4 navigationBar];

    [v5 frame];
    v7 = [[PKAnimatedNavigationBarTitleView alloc] initWithFrame:0.0, 0.0, v6 + v6, v6];
    titleIconView = self->_titleIconView;
    self->_titleIconView = v7;

    [(PKAnimatedNavigationBarTitleView *)self->_titleIconView setMaxWidth:50.0];
    [(PKAnimatedNavigationBarTitleView *)self->_titleIconView setAlpha:0.0];
    v9 = [(PKPaymentPassDetailViewController *)self navigationItem];
    [v9 pkui_setCenterAlignedTitleView:self->_titleIconView];

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

- (void)viewDidAppear:(BOOL)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = PKPaymentPassDetailViewController;
  [(PKPaymentPassDetailViewController *)&v17 viewDidAppear:a3];
  [(PKPaymentPassDetailViewController *)self _reloadTitle];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"PKPDVCDidAppearNotification" object:self userInfo:0];

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
    v15 = [(PKPaymentPass *)v14 secureElementPass];
    v16 = [v15 cardType];
    if (v16 <= 4)
    {
      v3 = **(&unk_1E8026808 + v16);
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

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKPaymentPassDetailViewController;
  [(PKPaymentPassDetailViewController *)&v6 viewWillDisappear:a3];
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

- (void)viewDidDisappear:(BOOL)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = PKPaymentPassDetailViewController;
  [(PKPaymentPassDetailViewController *)&v11 viewDidDisappear:a3];
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
    v3 = [(PKPaymentPassDetailViewController *)self tableView];
    v4 = [(PKPaymentPassDetailViewController *)self navigationItem];
    [v3 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:v4];
  }
}

- (void)viewDidLayoutSubviews
{
  v83.receiver = self;
  v83.super_class = PKPaymentPassDetailViewController;
  [(PKPaymentPassDetailViewController *)&v83 viewDidLayoutSubviews];
  v3 = [(PKPaymentPassDetailViewController *)self tableView];
  [v3 bounds];
  v78 = v5;
  v79 = v4;
  v7 = v6;
  [v3 safeAreaInsets];
  v9 = v8;
  v11 = v10;
  [v3 contentSize];
  v77 = v12;
  v14 = v13;
  [(PKPaymentPassDetailViewController *)self _offscreenHeaderHeight];
  v16 = v15;
  [v3 contentInset];
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

  [v3 contentInset];
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
    [v3 setContentInset:{v19, v21, v29, v23}];
  }

  v36 = [(UIRefreshControl *)self->_refreshControl isRefreshing];
  v37 = [(UIRefreshControl *)self->_refreshControl superview];
  v38 = 0.0;
  if (v37)
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
  [v3 layoutIfNeeded];
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    [v3 _moveContentSubview:self->_headerView toBack:0];
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

  if (!v35 && !v36)
  {
    goto LABEL_30;
  }

LABEL_31:
  [v3 _rectForTableHeaderView];
  v45 = v44;
  v46 = v16 + v19 + v38 - (v9 + v19 + v38);
  v47 = self->_headerHeight + self->_tabBarHeight + self->_widgetViewHeight;
  v48 = v40 - v46;
  [(UITableViewHeaderFooterView *)self->_headerView setFrame:?];
  if (v45 != v47)
  {
    [v3 _tableHeaderHeightDidChangeToHeight:v47];
  }

  [(PKPassHeaderView *)self->_passHeaderView updateShadow:fmin(fmax(v48 / (v46 + -20.0 - v46), 0.0), 1.0)];
  [(PKPassHeaderView *)self->_passHeaderView setAlpha:fmin(fmax((v40 - (v46 + 20.0)) / (v46 - (v46 + 20.0)), 0.0), 1.0)];
  v49 = [(UITableViewHeaderFooterView *)self->_headerView contentView];
  [v49 bounds];
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
    v58 = [(UIViewController *)self->_widgetViewController view];
    [v58 setFrame:{slice.origin.x, slice.origin.y, slice.size.width, slice.size.height}];

    if (!self->_tabBar)
    {
      v59 = [(UIViewController *)self->_widgetViewController view];
      [(PKPassActionWidgetViewModel *)self->_widgetViewModel bottomPadding];
      [v59 setAlpha:{fmin(fmax(v48 / (v46 - v60 - v46), 0.0), 1.0)}];
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
    v63 = [(UITableViewHeaderFooterView *)footerView contentView];
    v64 = [v63 _shouldReverseLayoutDirection];
    [v63 layoutMargins];
    v66 = v65;
    v68 = v67;
    [v63 bounds];
    v70 = v66 + v69;
    v72 = v71 + 0.0;
    v74 = v73 - (v66 + v68);
    [(UIImageView *)self->_logoView frame];
    v76 = v70 + v74 - v75;
    if (!v64)
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

- (void)presentTransactionDetailsForTransaction:(id)a3 presentingView:(int64_t)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self->_peerPaymentAccount)
  {
    MEMORY[0x1BFB41980](*MEMORY[0x1E69BA128], 0);
  }

  v7 = [(PKPaymentPassDetailViewController *)self _transactionDetailViewControllerForTransaction:v6];
  v8 = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([v8 pk_settings_useStateDrivenNavigation])
  {
    [v8 pk_settings_pushViewController:v7];
  }

  else
  {
    [v8 pushViewController:v7 animated:1];
  }

  if (a4 == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = 138412290;
        v11 = v6;
        _os_log_debug_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEBUG, "Presenting confirm payment offer plan on transaction details view controller for transaction %@", &v10, 0xCu);
      }

      [v7 presentConfirmPaymentOfferPlan];
    }
  }
}

- (id)_transactionDetailViewControllerForTransaction:(id)a3
{
  v4 = a3;
  if ([v4 transactionType] == 9)
  {
    transactionFetcher = self->_transactionFetcher;
    v6 = [v4 identifier];
    v7 = [(PKDashboardTransactionFetcher *)transactionFetcher cashbackGroupForTransactionWithIdentifier:v6 cashbackTransactionSourceCollection:0];
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
  v13 = [(PKPassDetailBankConnectSectionController *)self->_bankConnectSectionController connectedInstitution];
  physicalCards = self->_physicalCards;
  v15 = [(PKPaymentPassDetailViewController *)self navigationController];
  v16 = [(PKPaymentTransactionDetailsFactory *)transactionDetailsFactory viewControllerForTransaction:v4 sourceCollection:transactionSourceCollection familyCollection:familyCollection account:account accountUserCollection:accountUserCollection bankConnectInstitution:v13 physicalCards:physicalCards group:v7 navigationController:v15];

  return v16;
}

- (void)presentDailyCashForDateComponents:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__PKPaymentPassDetailViewController_presentDailyCashForDateComponents___block_invoke;
  v6[3] = &unk_1E8011828;
  objc_copyWeak(&v9, &location);
  v5 = v4;
  v7 = v5;
  v8 = self;
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
  v3 = [(PKPassHeaderView *)self->_passHeaderView passView];
  v4 = v3;
  if (self->_rendererState)
  {
    v5 = [[PKPassView alloc] initWithPass:self->_pass content:4 suppressedContent:1527 rendererState:self->_rendererState];
    [(PKPassView *)v5 setModallyPresented:1];
    [(PKPassView *)v5 setPaused:1];
    [(PKPassView *)v5 sizeOfFrontFace];
    v7 = 52.0 / v6;
    v8 = [(PKPassView *)v5 layer];
    CATransform3DMakeScale(&v13, v7, v7, 1.0);
    [v8 setTransform:&v13];

    passSnapshotView = self->_passSnapshotView;
    self->_passSnapshotView = &v5->super;
  }

  else
  {
    v10 = [v3 snapshotOfFrontFaceWithRequestedSize:{52.0, 33.0}];
    v11 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v10];
    v12 = self->_passSnapshotView;
    self->_passSnapshotView = v11;

    [(UIView *)self->_passSnapshotView setAccessibilityIgnoresInvertColors:1];
  }
}

- (void)_reloadPassAndView
{
  v3 = [(PKPassHeaderView *)self->_passHeaderView pass];
  v6 = v3;
  if (v3 && (v5 = [v3 passType], v4 = v6, v5 == 1))
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
  v4 = [(PKPaymentPass *)self->_pass primaryAccountIdentifier];
  v5 = [v3 initWithPrimaryAccountIdentifier:v4];
  bankConnectTransactionsAndGroupsProvider = self->_bankConnectTransactionsAndGroupsProvider;
  self->_bankConnectTransactionsAndGroupsProvider = v5;

  [(FKBankConnectTransactionsAndGroupsProvider *)self->_bankConnectTransactionsAndGroupsProvider setDelegate:self];
  v7 = self->_bankConnectTransactionsAndGroupsProvider;

  [(FKBankConnectTransactionsAndGroupsProvider *)v7 performFetchAndStartObservingNotifications];
}

- (void)_reloadTitle
{
  v4 = [(PKPaymentPassDetailViewController *)self navigationItem];
  if (self->_detailViewStyle)
  {
    PKLocalizedPaymentString(&cfstr_Card_0.isa);
  }

  else
  {
    [(PKPaymentPass *)self->_pass localizedDescription];
  }
  v3 = ;
  [v4 setTitle:v3];
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
  v3 = [(PKFamilyMemberCollection *)self->_familyCollection familyMembers];
  v4 = v3;
  if (self->_peerPaymentAccount && self->_familyCollection && [v3 count])
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
          v12 = [v11 familyMember];
          v13 = [v11 account];
          v14 = [v13 altDSID];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v17 = [v11 invitation];
            v16 = [v17 altDSID];
          }

          v18 = [(PKPaymentPassDetailViewController *)self contactAvatarManager];
          v19 = [v18 cachedAvatarForAltDSID:v16];

          if (!v19)
          {
            v20 = [(PKPaymentPassDetailViewController *)self contactAvatarManager];
            v21 = [v11 account];
            [v11 invitation];
            v23 = v22 = v9;
            v56[0] = MEMORY[0x1E69E9820];
            v56[1] = 3221225472;
            v57[0] = __54__PKPaymentPassDetailViewController__updateFamilyRows__block_invoke;
            v57[1] = &unk_1E8010AB0;
            v57[2] = v11;
            v57[3] = self;
            [v20 avatarForFamilyMember:v12 peerPaymentAccount:v21 invitation:v23 completion:v56];

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
          v31 = [v30 familyMember];
          v32 = [v30 accountUser];
          v33 = [v32 altDSID];
          v34 = v33;
          if (v33)
          {
            v35 = v33;
          }

          else
          {
            v36 = [v30 invitation];
            v37 = [v36 invitationDetails];
            v35 = [v37 accountUserAltDSID];
          }

          v38 = [(PKPaymentPassDetailViewController *)self contactAvatarManager];
          v39 = [v38 cachedAvatarForAltDSID:v35];

          if (!v39)
          {
            v40 = [(PKPaymentPassDetailViewController *)self contactAvatarManager];
            v41 = [v30 accountUser];
            v42 = [v30 invitation];
            v50[0] = MEMORY[0x1E69E9820];
            v50[1] = 3221225472;
            v51[0] = __54__PKPaymentPassDetailViewController__updateFamilyRows__block_invoke_3;
            v51[1] = &unk_1E8010AB0;
            v51[2] = v30;
            v51[3] = self;
            [v40 avatarForFamilyMember:v31 accountUser:v41 invitation:v42 completion:v50];
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

- (void)_loadFamilyCollectionIfNecessaryWithCompletion:(id)a3
{
  v4 = a3;
  if (self->_familyCollection || (objc_opt_respondsToSelector() & 1) == 0)
  {
    if (v4)
    {
      v4[2](v4);
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
    v7 = v4;
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

- (void)_loadAdditionalAccountDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69B8658]);
  v6 = [(PKAccount *)self->_account accountIdentifier];
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
  v16 = v6;
  v17 = self;
  v8 = v6;
  [v5 addOperation:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_10;
  v14[3] = &unk_1E8019220;
  v14[4] = self;
  [v5 addOperation:v14];
  v9 = [MEMORY[0x1E695DFB0] null];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__PKPaymentPassDetailViewController__loadAdditionalAccountDataWithCompletion___block_invoke_12;
  v12[3] = &unk_1E8014A58;
  v13 = v4;
  v10 = v4;
  v11 = [v5 evaluateWithInput:v9 completion:v12];
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

- (void)_reloadTransactionSectionsAnimated:(BOOL)a3 forceReload:(BOOL)a4
{
  if ((a4 || [(PKPaymentPassDetailViewController *)self shouldMapSection:37]) && self->_hasTabBar)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __84__PKPaymentPassDetailViewController__reloadTransactionSectionsAnimated_forceReload___block_invoke;
    v7[3] = &unk_1E8026098;
    v8 = a4;
    v9 = a3;
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
  v4 = [(PKPaymentPass *)self->_pass devicePaymentApplications];
  v5 = [v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        if ([v9 supportsContactlessPayment])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  contactlessPaymentApplications = self->_contactlessPaymentApplications;
  self->_contactlessPaymentApplications = v10;

  v12 = [(PKPaymentPass *)self->_pass sortedPaymentApplications:self->_contactlessPaymentApplications ascending:1];
  v13 = self->_contactlessPaymentApplications;
  self->_contactlessPaymentApplications = v12;

  v14 = [(PKPaymentPass *)self->_pass devicePaymentApplications];
  v15 = [v14 allObjects];
  devicePaymentApplications = self->_devicePaymentApplications;
  self->_devicePaymentApplications = v15;

  v17 = [(PKPaymentPass *)self->_pass sortedPaymentApplications:self->_devicePaymentApplications ascending:1];
  v18 = self->_devicePaymentApplications;
  self->_devicePaymentApplications = v17;

  paymentServiceDataProvider = self->_paymentServiceDataProvider;
  v20 = [(PKPaymentPass *)self->_pass uniqueID];
  v21 = [(PKPaymentDataProvider *)paymentServiceDataProvider defaultPaymentApplicationForPassUniqueIdentifier:v20];
  defaultPaymentApplication = self->_defaultPaymentApplication;
  self->_defaultPaymentApplication = v21;

  if (!self->_defaultPaymentApplication)
  {
    v23 = [(PKPaymentPass *)self->_pass devicePrimaryContactlessPaymentApplication];
    v24 = self->_defaultPaymentApplication;
    self->_defaultPaymentApplication = v23;
  }

  v25 = [(PKPaymentPass *)self->_pass storeIdentifiers];
  v26 = [(PKPaymentPass *)self->_pass appLaunchURL];
  v27 = [(PKLinkedApplication *)self->_linkedApplication storeIDs];
  v28 = PKEqualObjects();

  v29 = [(PKLinkedApplication *)self->_linkedApplication defaultLaunchURL];
  v30 = PKEqualObjects();

  if ((v28 & 1) == 0)
  {
    [(PKLinkedApplication *)self->_linkedApplication setStoreIDs:v25];
  }

  if ((v30 & 1) == 0)
  {
    [(PKLinkedApplication *)self->_linkedApplication setDefaultLaunchURL:v26];
  }

  [(PKPaymentPassDetailViewController *)self _reloadTitle];
}

- (void)_applyIvarsFromCollectedPropertiesViewModel:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 pass];
  pass = self->_pass;
  self->_pass = v5;

  [(PKPaymentPassDetailViewController *)self _applyStaticPassPropertiesForPass];
  v7 = [v4 transitBalanceModel];
  transitBalanceModel = self->_transitBalanceModel;
  self->_transitBalanceModel = v7;

  v9 = [v4 balances];
  balances = self->_balances;
  self->_balances = v9;

  v11 = [v4 actionForBalanceIdentifier];
  actionForBalanceIdentifier = self->_actionForBalanceIdentifier;
  self->_actionForBalanceIdentifier = v11;

  v13 = [v4 transitPropertiesBalanceReminder];
  transitPropertiesBalanceReminder = self->_transitPropertiesBalanceReminder;
  self->_transitPropertiesBalanceReminder = v13;

  v15 = [v4 reminderForBalanceIdentifier];
  v16 = [v15 mutableCopy];
  reminderForBalanceIdentifier = self->_reminderForBalanceIdentifier;
  self->_reminderForBalanceIdentifier = v16;

  v18 = [v4 transitPassProperties];
  transitProperties = self->_transitProperties;
  self->_transitProperties = v18;

  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v22 = [(PKTransitBalanceModel *)self->_transitBalanceModel displayableCommutePlans];
  v23 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v33 + 1) + 8 * i);
        v28 = [v27 title];
        if (v28)
        {
          [v21 addObject:v27];
          [v20 addObject:v28];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
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

- (void)_updatePassPropertiesForPass:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__PKPaymentPassDetailViewController__updatePassPropertiesForPass_completion___block_invoke;
  v10[3] = &unk_1E80260E8;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v11 = v8;
  v9 = v7;
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
  v4 = [(PKTransitBalanceModel *)self->_transitBalanceModel balanceFields];
  v5 = [v4 copy];
  balanceFields = self->_balanceFields;
  v20 = 1344;
  self->_balanceFields = v5;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = self;
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

  if (![*(&v21->super.super.super.super.super.isa + v20) count])
  {
    v18 = [v3 copy];
    v19 = *(&v21->super.super.super.super.super.isa + v20);
    *(&v21->super.super.super.super.super.isa + v20) = v18;
  }
}

- (void)_transitExpressStateDidChange
{
  v4 = [(PKExpressPassController *)self->_expressPassController existingExpressPassConfigurationForPass:self->_pass];
  v3 = [v4 isNFCExpressEnabled];
  if (self->_nfcExpressModeEnabled != v3)
  {
    self->_nfcExpressModeEnabled = v3;
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
  v27 = self;
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
          v8 = [v7 foreignReferenceIdentifiers];
          if (v8)
          {
            v9 = [(NSDictionary *)v27->_balances objectForKeyedSubscript:v8];
            v10 = [v9 localizedTitle];
            v11 = v10;
            if (v10)
            {
              v12 = v10;
            }

            else
            {
              v13 = [v7 label];
              v14 = v13;
              if (v13)
              {
                v15 = v13;
              }

              else
              {
                v15 = PKLocalizedPaymentString(&cfstr_PassDetailsDef.isa);
              }

              v12 = v15;
            }

            if (v9)
            {
              v16 = [v9 formattedValue];
            }

            else
            {
              v16 = 0;
            }

            v17 = [v7 label];
            v18 = PKEqualObjects();

            if ((v18 & 1) == 0)
            {
              [v7 setLabel:v12];
            }

            v19 = [v7 value];
            v20 = PKEqualObjects();

            if ((v20 & 1) == 0)
            {
              [v7 setUnformattedValue:v16];
              [v7 flushCachedValue];
            }

            v21 = [v7 label];
            if (v21)
            {
              v22 = v21;
              v23 = [v7 value];

              if (v23)
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
  displayableBalanceFields = v27->_displayableBalanceFields;
  v27->_displayableBalanceFields = v24;
}

- (void)_updateDisplayableBalancesPlansAndTransitPropertiesForPass:(id)a3 balances:(id)a4 plans:(id)a5 transitProperties:(id)a6 withCompletion:(id)a7
{
  v109 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v67 = a6;
  v63 = a7;
  transitBalanceModel = self->_transitBalanceModel;
  v65 = self;
  if (transitBalanceModel)
  {
    v16 = transitBalanceModel;
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x1E69B9308]) initWithPass:v12];
  }

  v17 = v16;
  [(PKTransitBalanceModel *)v16 setTransitProperties:v67];
  [(PKTransitBalanceModel *)v17 updateWithDynamicBalances:v13];
  v68 = v17;
  v66 = v14;
  [(PKTransitBalanceModel *)v17 updateWithDynamicCommutePlans:v14];
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v19 = v13;
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
        v25 = [v24 identifiers];
        if (v25)
        {
          [v18 setObject:v24 forKeyedSubscript:v25];
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
  v26 = [(PKTransitBalanceModel *)v68 displayableBalances];
  v27 = [v26 countByEnumeratingWithState:&v96 objects:v107 count:16];
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
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v96 + 1) + 8 * j);
        v32 = [v31 identifiers];
        if (v32)
        {
          [v18 setObject:v31 forKeyedSubscript:v32];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v96 objects:v107 count:16];
    }

    while (v28);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v33 = [(PKTransitBalanceModel *)v68 displayableCommutePlanBalances];
  v34 = [v33 countByEnumeratingWithState:&v92 objects:v106 count:16];
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
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v92 + 1) + 8 * k);
        v39 = [v38 identifiers];
        if (v39)
        {
          [v18 setObject:v38 forKeyedSubscript:v39];
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v92 objects:v106 count:16];
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
    v71 = v12;
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
        v41 = [*(*(&v88 + 1) + 8 * v40) identifiers];
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v76 = [v12 availableActions];
        v42 = [v76 countByEnumeratingWithState:&v84 objects:v104 count:16];
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
                objc_enumerationMutation(v76);
              }

              v46 = *(*(&v84 + 1) + 8 * m);
              v47 = [v46 associatedEnteredValueIdentifier];
              v48 = [v47 copy];
              v49 = v48;
              if (v48)
              {
                v50 = v48;
              }

              else
              {
                v51 = [v46 relevantPropertyIdentifier];
                v52 = [v51 copy];
                v53 = v52;
                v54 = v74;
                if (v52)
                {
                  v54 = v52;
                }

                v50 = v54;
              }

              if ([v41 containsObject:v50])
              {
                [v75 setObject:v46 forKeyedSubscript:v41];
              }
            }

            v43 = [v76 countByEnumeratingWithState:&v84 objects:v104 count:16];
          }

          while (v43);
        }

        v40 = v73 + 1;
        v12 = v71;
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
  v78 = v12;
  v79 = v67;
  v80 = v68;
  v81 = v62;
  v82 = v55;
  v83 = v63;
  v56 = v55;
  v57 = v62;
  v58 = v68;
  v59 = v67;
  v60 = v12;
  v61 = v63;
  [(PKPaymentPassDetailViewController *)v65 _fetchBalanceRemindersWithActionForBalanceIdentifier:v75 transitProperties:v59 balances:v57 pass:v60 withCompletion:v77];
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

- (void)_refreshDisplayWithBalances:(id)a3 plans:(id)a4 transitProperties:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self->_pass;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89__PKPaymentPassDetailViewController__refreshDisplayWithBalances_plans_transitProperties___block_invoke;
  v12[3] = &unk_1E8026138;
  objc_copyWeak(&v13, &location);
  [(PKPaymentPassDetailViewController *)self _updateDisplayableBalancesPlansAndTransitPropertiesForPass:v11 balances:v8 plans:v9 transitProperties:v10 withCompletion:v12];
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

- (void)_handleUpdatedBalanceReminder:(id)a3 forBalanceWithIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_reminderForBalanceIdentifier objectForKey:v8];

    if (v9)
    {
      reminderForBalanceIdentifier = self->_reminderForBalanceIdentifier;
      if (v7)
      {
        [(NSMutableDictionary *)reminderForBalanceIdentifier setObject:v7 forKeyedSubscript:v8];
      }

      else
      {
        [(NSMutableDictionary *)reminderForBalanceIdentifier removeObjectForKey:v8];
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

  objc_storeStrong(&self->_transitPropertiesBalanceReminder, a3);
LABEL_10:
  [(PKPaymentPassDetailViewController *)self reloadSection:28 updates:0];
LABEL_15:
}

- (void)_fetchBalanceRemindersWithActionForBalanceIdentifier:(id)a3 transitProperties:(id)a4 balances:(id)a5 pass:(id)a6 withCompletion:(id)a7
{
  v53 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v26 = a4;
  v30 = a5;
  v29 = a6;
  v12 = a7;
  if (v12)
  {
    v25 = v12;
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
      v14 = [v27 allKeys];
      v15 = [v14 countByEnumeratingWithState:&v42 objects:v52 count:16];
      if (v15)
      {
        v16 = *v43;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v43 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v42 + 1) + 8 * i);
            v19 = [v30 objectForKeyedSubscript:v18];
            if (v18)
            {
              dispatch_group_enter(v13);
              paymentServiceDataProvider = self->_paymentServiceDataProvider;
              v38[0] = MEMORY[0x1E69E9820];
              v38[1] = 3221225472;
              v38[2] = __137__PKPaymentPassDetailViewController__fetchBalanceRemindersWithActionForBalanceIdentifier_transitProperties_balances_pass_withCompletion___block_invoke;
              v38[3] = &unk_1E8026160;
              v21 = self;
              v22 = v19;
              v39 = v22;
              v40 = v28;
              v41 = v13;
              v23 = v22;
              self = v21;
              [(PKPaymentDataProvider *)paymentServiceDataProvider balanceReminderThresholdForBalance:v23 pass:v29 withCompletion:v38];
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v42 objects:v52 count:16];
        }

        while (v15);
      }

      if (v26)
      {
        dispatch_group_enter(v13);
        v24 = self->_paymentServiceDataProvider;
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __137__PKPaymentPassDetailViewController__fetchBalanceRemindersWithActionForBalanceIdentifier_transitProperties_balances_pass_withCompletion___block_invoke_3;
        v35[3] = &unk_1E8026188;
        v37 = &v46;
        v36 = v13;
        [(PKPaymentDataProvider *)v24 balanceReminderThresholdForBalance:0 pass:v29 withCompletion:v35];
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

    v12 = v25;
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

- (BOOL)shouldMapSection:(unint64_t)a3
{
  tabBar = self->_tabBar;
  if (tabBar)
  {
    v6 = [(UISegmentedControl *)tabBar selectedSegmentIndex];
  }

  else
  {
    v6 = 0;
  }

  if ([(PKPaymentPass *)self->_pass activationState])
  {
    v7 = [(PKPaymentPass *)self->_pass isShellPass];
  }

  else
  {
    v7 = 1;
  }

  switch(a3)
  {
    case 0uLL:
      if (v6)
      {
        goto LABEL_247;
      }

      v26 = [(PKPaymentPass *)self->_pass storeIdentifiers];
      goto LABEL_184;
    case 1uLL:
      if (v6 || !self->_peerPaymentAccount || !self->_peerPaymentAccountResolutionController)
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self _shouldShowAccountActions];
    case 2uLL:
      if (v6)
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self _shouldShowAccessPersonInformation];
    case 3uLL:
      if (v6 || ![(PKPaymentPass *)self->_pass isAccessPass])
      {
        goto LABEL_247;
      }

      v20 = [(PKPaymentPass *)self->_pass cardHolderPicture];
      if (!v20)
      {
        goto LABEL_249;
      }

      LOBYTE(v6) = ![(PKConfigurablePassDetailSectionsController *)self->_configurableSectionController hasArbitraryInfoField:*MEMORY[0x1E69BBB70]];
      goto LABEL_250;
    case 4uLL:
      if (v6)
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self shouldShowIdentityDocumentSection];
    case 5uLL:
      if (v6)
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self shouldShowReplaceBiometricSection];
    case 6uLL:
      if (v6)
      {
        goto LABEL_247;
      }

      v26 = [(PKPaymentPass *)self->_pass barcodes];
LABEL_184:
      v9 = v26;
      v10 = [v26 count];
      goto LABEL_185;
    case 7uLL:
      if (((v6 == 0) & v7) != 1)
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self _shouldShowAutomaticPresentation];
    case 8uLL:
      if (v6)
      {
        goto LABEL_247;
      }

      pass = self->_pass;

      return [(PKPaymentPass *)pass isCarKeyPass];
    case 9uLL:
      if (v6)
      {
        goto LABEL_247;
      }

      v20 = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
      if (![v20 length] || -[PKPaymentPassDetailViewController _shouldShowServicingSection](self, "_shouldShowServicingSection"))
      {
        goto LABEL_249;
      }

      LOBYTE(v6) = [(PKPaymentPassDetailViewController *)self _accountFeature]!= 4;
      goto LABEL_250;
    case 0xAuLL:
      if (v6 || ![(PKPaymentPassDetailViewController *)self _shouldShowServicingSection])
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self shouldShowAccountUsersSection];
    case 0xBuLL:
      if (v6)
      {
        goto LABEL_247;
      }

      v20 = [(PKAccount *)self->_account creditDetails];
      v21 = [v20 installmentPlans];
      LOBYTE(v6) = [v21 count] && -[PKPaymentPassDetailViewController _shouldShowServicingSection](self, "_shouldShowServicingSection") && (-[PKAccount blockAllAccountAccess](self->_account, "blockAllAccountAccess") & 1) == 0 && -[PKAccount state](self->_account, "state") != 3;
      goto LABEL_75;
    case 0xCuLL:
      if (v6)
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self _shouldShowCardNumbersSection];
    case 0xDuLL:
      if (v6)
      {
        goto LABEL_247;
      }

      account = self->_account;
      if (!account)
      {
        goto LABEL_247;
      }

      v20 = [(PKAccount *)account creditDetails];
      if (v20 && [(PKAccount *)self->_account supportsShowAccountSummary])
      {
        goto LABEL_168;
      }

      goto LABEL_249;
    case 0xEuLL:
      if (v6)
      {
        goto LABEL_247;
      }

      v19 = self->_account;
      if (!v19)
      {
        goto LABEL_247;
      }

      v20 = [(PKAccount *)v19 creditDetails];
      if (!v20 || ![(PKAccount *)self->_account supportsShowAccountSummary]|| ![(PKPaymentPassDetailViewController *)self _shouldShowServicingSection])
      {
        goto LABEL_249;
      }

LABEL_168:
      v33 = [MEMORY[0x1E69B8770] shouldDisplayAccountInformationForTransactionSourceCollection:self->_transactionSourceCollection withAccount:self->_account];
      goto LABEL_229;
    case 0xFuLL:
      if (v6 || ([(PKPaymentPass *)self->_pass hasMerchantTokens]& 1) == 0 && ![(PKPaymentPass *)self->_pass hadMerchantTokens])
      {
        goto LABEL_247;
      }

      v18 = [(PKAccount *)self->_account creditDetails];
      LOBYTE(v6) = v18 != 0;
      goto LABEL_301;
    case 0x10uLL:
      if (v6 || !self->_account || ![(PKPaymentPassDetailViewController *)self _shouldShowProductBenefitsCell])
      {
        goto LABEL_247;
      }

      goto LABEL_139;
    case 0x11uLL:
      if (v6 || ![(PKPaymentPassDetailViewController *)self _accountInGoodStateForAMPEligbilityCheck])
      {
        goto LABEL_247;
      }

      isAmpEligible = self->_isAmpEligible;
      goto LABEL_10;
    case 0x12uLL:
      if (v6)
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

      v9 = [(PKFamilyMemberCollection *)self->_familyCollection currentUser];
      LOBYTE(v6) = [v9 memberType] == 0;
      goto LABEL_257;
    case 0x13uLL:
      if (v6)
      {
        goto LABEL_247;
      }

      v40 = self->_account;
      if (!v40)
      {
        goto LABEL_247;
      }

      v20 = [(PKAccount *)v40 creditDetails];
      if (!v20 || !self->_physicalCardController || -[PKPaymentPassDetailViewController _numberOfAccountServicePhysicalCardRowsEnabled](self, "_numberOfAccountServicePhysicalCardRowsEnabled") < 1 || ![MEMORY[0x1E69B8770] shouldDisplayAccountInformationForTransactionSourceCollection:self->_transactionSourceCollection withAccount:self->_account])
      {
        goto LABEL_249;
      }

      v33 = [(PKPaymentPassDetailViewController *)self _shouldShowServicingSection];
LABEL_229:
      LOBYTE(v6) = v33;
      goto LABEL_250;
    case 0x14uLL:
      v27 = [(PKPaymentPassDetailViewController *)self traitCollection];
      v28 = [v27 userInterfaceIdiom];

      if ((((v28 & 0xFFFFFFFFFFFFFFFBLL | v6) == 0) & v7) != 1 || (objc_opt_respondsToSelector() & 1) == 0 || ![(PKPaymentDataProvider *)self->_paymentServiceDataProvider supportsMessagesForPass:self->_pass])
      {
        goto LABEL_247;
      }

      v20 = [(PKPaymentPass *)self->_pass messageServiceURL];
      if (!v20)
      {
        goto LABEL_249;
      }

      v29 = [(PKPaymentPass *)self->_pass messagePushTopic];
      LOBYTE(v6) = v29 != 0;

      goto LABEL_250;
    case 0x15uLL:
      v30 = [(PKTransitPassProperties *)self->_transitProperties felicaProperties];
      v9 = v30;
      if (v30)
      {
        v31 = v6 == 0;
      }

      else
      {
        v31 = 0;
      }

      if (v31)
      {
        LOBYTE(v6) = [v30 hasGreenCarTicket];
      }

      else
      {
        LOBYTE(v6) = 0;
      }

      goto LABEL_257;
    case 0x16uLL:
    case 0x19uLL:
      if (v6)
      {
        goto LABEL_247;
      }

      isAmpEligible = self->_peerPaymentAccount != 0;
LABEL_10:
      LOBYTE(v6) = isAmpEligible & v7;
      return v6 & 1;
    case 0x17uLL:
      if (v6 || ((self->_peerPaymentAccount != 0) & v7) != 1)
      {
        goto LABEL_247;
      }

      v23 = self->_detailViewStyle == 2;
      goto LABEL_233;
    case 0x18uLL:
      if (v6)
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
        if (!v7)
        {
          goto LABEL_247;
        }
      }

      else if (((self->_peerPaymentPreferences != 0) & v7) == 0)
      {
        goto LABEL_247;
      }

      if ([(PKPeerPaymentAccount *)peerPaymentAccount state]!= 3)
      {
        v23 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount state]== 4;
LABEL_233:
        LOBYTE(v6) = !v23;
        return v6 & 1;
      }

LABEL_247:
      LOBYTE(v6) = 0;
      return v6 & 1;
    case 0x1AuLL:
      if (((v6 == 0) & v7) != 1 || [(PKPaymentPass *)self->_pass contactlessActivationGroupingType]!= 2)
      {
        goto LABEL_247;
      }

      v42 = self->_pass;

      return [(PKPaymentPass *)v42 hasContactlessDevicePaymentApplicationsAvailable];
    case 0x1BuLL:
      if (v6 || ![(PKPaymentPassDetailViewController *)self _isShowingLostModeInterface]&& v7 == 1 || !self->_detailViewStyle)
      {
        goto LABEL_247;
      }

      v6 = self->_pass;
      v9 = [(PKPaymentWebService *)self->_webService targetDevice];
      v13 = [v9 secureElementIdentifiers];
      LOBYTE(v6) = [v6 isPrecursorPass:v13] ^ 1;

      goto LABEL_257;
    case 0x1CuLL:
      if (v6 || ([(PKPaymentPass *)self->_pass isStoredValuePass]& 1) == 0 && ![(PKPaymentPass *)self->_pass isAccessPass]|| [(PKPaymentPass *)self->_pass activationState])
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
      if (v6)
      {
        goto LABEL_247;
      }

      v41 = [(PKPaymentPassDetailViewController *)self _contactBankCellWithOutput:0 forRowIndex:0 tableView:0];
      goto LABEL_232;
    case 0x1EuLL:
      if (v6 || ([(PKPaymentPass *)self->_pass hasMerchantTokens]& 1) == 0 && ![(PKPaymentPass *)self->_pass hadMerchantTokens])
      {
        goto LABEL_247;
      }

      v23 = self->_peerPaymentAccount == 0;
      goto LABEL_233;
    case 0x1FuLL:
      if (v6 || ([(PKPaymentPass *)self->_pass isAccessPass]& 1) != 0 || self->_isCredentialedPass || ![(PKPaymentPassDetailViewController *)self _cardInfoSectionGenerateCellWithOutput:0 forRowIndex:0 tableView:0])
      {
        goto LABEL_247;
      }

      if (self->_account)
      {
        goto LABEL_121;
      }

      goto LABEL_221;
    case 0x20uLL:
      if (v6 || ([(PKPaymentPass *)self->_pass isTransitPass]& 1) != 0 || ([(PKPaymentPass *)self->_pass isAccessPass]& 1) != 0 || ([(PKPaymentPass *)self->_pass isIdentityPass]& 1) != 0 || ([(PKPaymentPass *)self->_pass supportsBarcodePayment]& 1) != 0 || ([(PKPaymentPass *)self->_pass isEMoneyPass]& 1) != 0 || self->_isCredentialedPass || self->_peerPaymentAccount)
      {
        goto LABEL_247;
      }

      v20 = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
      if (v20 && self->_detailViewStyle != 2 || [(PKPaymentPassDetailViewController *)self _accountFeature]== 4)
      {
LABEL_249:
        LOBYTE(v6) = 0;
      }

      else
      {
        v21 = [(PKPaymentPass *)self->_pass deviceAccountNumberSuffix];
        if ([v21 length])
        {
          LOBYTE(v6) = ![(PKPaymentPassDetailViewController *)self _shouldShowCardNumbersSection];
        }

        else
        {
          v58 = [(PKPaymentPass *)self->_pass sanitizedDeviceAccountNumber];
          if ([v58 length])
          {
            LOBYTE(v6) = ![(PKPaymentPassDetailViewController *)self _shouldShowCardNumbersSection];
          }

          else
          {
            LOBYTE(v6) = 0;
          }
        }

LABEL_75:
      }

LABEL_250:

      return v6 & 1;
    case 0x21uLL:
      if (v6 || ([(PKPaymentPass *)self->_pass hasMerchantTokens]& 1) == 0 && ![(PKPaymentPass *)self->_pass hadMerchantTokens])
      {
        goto LABEL_247;
      }

      v18 = [(PKAccount *)self->_account creditDetails];
      if (v18)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        LOBYTE(v6) = self->_peerPaymentAccount == 0;
      }

LABEL_301:

      return v6 & 1;
    case 0x22uLL:
      v14 = [(PKFamilyMemberCollection *)self->_familyCollection familyMembersByAltDSID];
      v15 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount altDSID];
      v16 = [v14 objectForKey:v15];

      if ([v16 isOrganizer])
      {
        v17 = 1;
      }

      else
      {
        v17 = [v16 isParent];
      }

      v43 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount role];
      v44 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount supportsFamilySharing];
      detailViewStyle = self->_detailViewStyle;
      v61 = v44;
      if (detailViewStyle != 2)
      {
        v47 = 1;
        goto LABEL_288;
      }

      v60 = v17;
      v59 = v43;
      if (objc_opt_respondsToSelector())
      {
        v46 = [(PKPaymentDataProvider *)self->_paymentServiceDataProvider deviceVersion];
      }

      else
      {
        v46 = 0;
      }

      v51 = [MEMORY[0x1E69B9000] sharedInstance];
      v52 = [v51 account];
      v53 = [v52 supportsFamilySharingFeatureDescriptor];
      v54 = [v53 osVersionRange];

      if (!v46)
      {
        v47 = 0;
        v17 = v60;
        goto LABEL_286;
      }

      v17 = v60;
      if (v54 || (PKPeerPaymentSkipFamilySharingVersionCheck() & 1) != 0)
      {
        v47 = [v54 versionMeetsRequirements:v46 deviceClass:@"Watch"];
LABEL_286:
        v43 = v59;
        goto LABEL_287;
      }

      v57 = PKLogFacilityTypeGetObject();
      v43 = v59;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v57, OS_LOG_TYPE_DEFAULT, "The server has not populated the minimum version requirement for familySharing. Assuming that the targetDevice is the correct version", buf, 2u);
      }

      v47 = 1;
LABEL_287:

      detailViewStyle = 2;
LABEL_288:
      if (v6)
      {
        goto LABEL_289;
      }

      v55 = [(NSArray *)self->_sortedFamilyMemberRowModels count];
      if (detailViewStyle && v55)
      {
        v56 = (self->_peerPaymentAccount != 0) & v7;
        if (v43)
        {
          v56 = 0;
        }

        if ((v56 & v61) == 1)
        {
          LOBYTE(v6) = (self->_familyCollection != 0) & v17 & v47;
        }

        else
        {
LABEL_289:
          LOBYTE(v6) = 0;
        }
      }

LABEL_290:

      return v6 & 1;
    case 0x23uLL:
      if (((v6 == self->_hasTabBar) & v7) != 1 || !self->_allContentIsLoaded || (objc_opt_respondsToSelector() & 1) == 0 || ![(PKPaymentDataProvider *)self->_paymentServiceDataProvider supportsTransactionsForPass:self->_pass]|| !self->_detailViewStyle)
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
      if (v6 != 1 || !self->_allContentIsLoaded || ![(PKPaymentDataProvider *)self->_paymentServiceDataProvider supportsTransactionsForPass:self->_pass]|| [(PKPaymentPassDetailViewController *)self shouldMapSection:37]|| ([(PKPaymentPass *)self->_pass supportsFPANNotifications]& 1) != 0)
      {
        goto LABEL_247;
      }

      v12 = [(PKPaymentPass *)self->_pass supportsDPANNotifications];
      goto LABEL_69;
    case 0x25uLL:
      if (!self->_allContentIsLoaded)
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self _shouldShowTransactionsSection];
    case 0x26uLL:
      if (v6 != 1 || ![(NSArray *)self->_transactionCountAndYear count])
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self shouldMapSection:37];
    case 0x27uLL:
      if (v6)
      {
        goto LABEL_247;
      }

      group = self->_group;
      if (!group)
      {
        goto LABEL_247;
      }

      LOBYTE(v6) = [(PKGroup *)group passCount]> 1;
      return v6 & 1;
    case 0x28uLL:
      if (v6 || ![(PKPaymentPassDetailViewController *)self _shouldShowBillingAddressCell])
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
        LOBYTE(v6) = 1;
        return v6 & 1;
      }

LABEL_121:
      v24 = MEMORY[0x1E69B8770];
      transactionSourceCollection = self->_transactionSourceCollection;

      return [v24 shouldDisplayAccountInformationForTransactionSourceCollection:transactionSourceCollection withAccount:?];
    case 0x29uLL:
      if (v6 || !self->_account || ![(PKPaymentPassDetailViewController *)self _shouldShowNetworkBenefitsCell])
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
      v37 = [(PKFamilyMemberCollection *)self->_familyCollection familyMembersByAltDSID];
      v38 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount altDSID];
      v16 = [v37 objectForKey:v38];

      v39 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount state]== 1 && [(PKPeerPaymentAccount *)self->_peerPaymentAccount stage]== 3;
      if ([(PKPeerPaymentAccount *)self->_peerPaymentAccount isParticipantAccountLockedByOwner])
      {
        v48 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount supportsGraduationWhileAssociatedAccountLocked];
      }

      else
      {
        v48 = 0;
      }

      if (PKIsAltAccountPairedOrPairing())
      {
        v49 = self->_detailViewStyle != 2;
      }

      else
      {
        v49 = 1;
      }

      if (v6)
      {
        goto LABEL_289;
      }

      v50 = self->_peerPaymentAccount;
      if (!v50 || ((self->_peerPaymentAccountResolutionController != 0) & v7) != 1 || [(PKPeerPaymentAccount *)v50 role]!= 1)
      {
        goto LABEL_289;
      }

      LOBYTE(v6) = 0;
      if (!self->_familyCollection || !v16)
      {
        goto LABEL_290;
      }

      if ([v16 memberType] || !-[PKPeerPaymentAccount supportsFamilySharing](self->_peerPaymentAccount, "supportsFamilySharing"))
      {
        goto LABEL_289;
      }

      LOBYTE(v6) = v49 & (v48 | v39);
      goto LABEL_290;
    case 0x2BuLL:
      if (PKIsAltAccountPairedOrPairing() && self->_detailViewStyle == 2 || v6 != self->_hasTabBar || ((self->_peerPaymentAccount != 0) & v7) != 1)
      {
        goto LABEL_247;
      }

      v9 = PKPrimaryAppleAccountEmail();
      v10 = [v9 length];
LABEL_185:
      LOBYTE(v6) = v10 != 0;
LABEL_257:

      return v6 & 1;
    case 0x2CuLL:
      if (v6)
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self shouldShowVerifySSNSection];
    case 0x2DuLL:
      if (v6)
      {
        goto LABEL_247;
      }

      if ([(PKPaymentPassDetailViewController *)self _shouldShowTermsCell]|| [(PKPaymentPassDetailViewController *)self _shouldShowPrivacyPolicyCell])
      {
        goto LABEL_221;
      }

      return [(PKPaymentPassDetailViewController *)self passSupportsDeviceAssessment];
    case 0x2EuLL:
      if (v6 || !self->_peerPaymentAccount || !self->_peerPaymentAccountResolutionController || [(PKPaymentPassDetailViewController *)self _shouldShowAccountActions])
      {
        goto LABEL_247;
      }

      return PKPeerPaymentAccountCanPerformManualIdentityVerification();
    case 0x2FuLL:
      if (v6)
      {
        goto LABEL_247;
      }

      return [(PKPaymentPassDetailViewController *)self shouldShowAccountUserStopSharingSection];
    case 0x30uLL:
      if (v6)
      {
        goto LABEL_247;
      }

      v12 = [(PKPaymentPass *)self->_pass isHomeKeyPass];
LABEL_69:
      LOBYTE(v6) = v12 ^ 1;
      return v6 & 1;
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

  v4 = [(UISegmentedControl *)tabBar selectedSegmentIndex];
  if ([(PKPaymentPassDetailViewController *)self _isBankConnectLinked])
  {
    if (v4 == 1)
    {
      LOBYTE(v5) = [(PKPaymentPassDetailViewController *)self _transactionsCount]!= 0;
      return v5;
    }

LABEL_18:
    LOBYTE(v5) = 0;
    return v5;
  }

  if (v4 != 1)
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

- (void)setPrimaryTextColor:(id)a3
{
  objc_storeStrong(&self->_primaryTextColor, a3);

  [(PKPaymentPassDetailViewController *)self _decorateSections];
}

- (void)setDetailTextColor:(id)a3
{
  objc_storeStrong(&self->_detailTextColor, a3);

  [(PKPaymentPassDetailViewController *)self _decorateSections];
}

- (void)setLinkTextColor:(id)a3
{
  objc_storeStrong(&self->_linkTextColor, a3);

  [(PKPaymentPassDetailViewController *)self _decorateSections];
}

- (void)setWarningTextColor:(id)a3
{
  objc_storeStrong(&self->_warningTextColor, a3);

  [(PKPaymentPassDetailViewController *)self _decorateSections];
}

- (void)setHighlightColor:(id)a3
{
  objc_storeStrong(&self->_highlightColor, a3);

  [(PKPaymentPassDetailViewController *)self _decorateSections];
}

- (void)reloadData:(BOOL)a3
{
  v4 = [(PKPaymentPassDetailViewController *)self viewIfLoaded];

  if (v4)
  {
    [(PKPaymentPassDetailViewController *)self _updateSectionControllersWithSelectedSectionSegment];
    paymentPassDetailSectionController = self->_paymentPassDetailSectionController;
    v6 = [(PKPaymentPassDetailViewController *)self _recomputeMappedSections];
    [(PKPaymentPassDetailWrapperSectionController *)paymentPassDetailSectionController setSectionIdentifiers:v6];

    sectionControllers = self->_sectionControllers;
    v8 = [(PKPaymentPassDetailViewController *)self _activeOrderOfSectionIdentifiers];
    [(PKDynamicTableViewController *)self setSectionControllers:sectionControllers sectionIdentifiers:v8];
  }
}

- (void)reloadSection:(unint64_t)a3 updates:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(PKPaymentPassDetailViewController *)self viewIfLoaded];

  if (v7)
  {
    v8 = PKPassDetailSectionTypeToString(a3);
    v10[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(PKPaymentPassDetailViewController *)self reloadPassDetailSections:v9 updates:v6];
  }
}

- (void)reloadNecessarySectionControllerSections
{
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = [(PKPassDetailBankConnectSectionController *)self->_bankConnectSectionController allSectionIdentifiers];
  [v6 addObjectsFromArray:v3];

  v4 = [(PKPassDetailAccountCredentialsSectionController *)self->_accountCredentialsSectionController allSectionIdentifiers];
  [v6 addObjectsFromArray:v4];

  v5 = [v6 allObjects];
  [(PKPaymentPassDetailViewController *)self reloadSections:v5];
}

- (void)reloadPassDetailSections:(id)a3 updates:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v18 = a4;
  v6 = [(PKPaymentPassDetailViewController *)self viewIfLoaded];

  if (v6)
  {
    [(PKPaymentPassDetailViewController *)self _resetSwitchesIfNecessary:v19];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = v19;
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
        v17 = [(PKPaymentPassDetailViewController *)self _activeOrderOfSectionIdentifiers];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __70__PKPaymentPassDetailViewController_reloadPassDetailSections_updates___block_invoke;
        v21[3] = &unk_1E8011108;
        objc_copyWeak(&v23, &location);
        v21[4] = self;
        v22 = v18;
        [(PKDynamicTableViewController *)self recomputeMappedSectionsAndReloadSections:v7 sectionIdentifiers:v17 updates:v21];

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
      [(PKDynamicTableViewController *)&v20 reloadSectionIdentifiers:v7 updates:v18];
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

- (void)reloadSections:(id)a3
{
  v6 = a3;
  v4 = [(PKPaymentPassDetailViewController *)self viewIfLoaded];

  if (v4 && [v6 count])
  {
    [(PKPaymentPassDetailViewController *)self _resetSwitchesIfNecessary:v6];
    v5 = [(PKPaymentPassDetailViewController *)self _activeOrderOfSectionIdentifiers];
    [(PKDynamicTableViewController *)self recomputeMappedSectionsAndReloadSections:v6 sectionIdentifiers:v5 updates:0];
  }
}

- (void)_resetSwitchesIfNecessary:(id)a3
{
  v9 = a3;
  if ([v9 containsObject:@"TransactionTransactionsSwitch"])
  {
    transactionsSwitch = self->_transactionsSwitch;
    self->_transactionsSwitch = 0;

    notificationsSwitch = self->_notificationsSwitch;
    self->_notificationsSwitch = 0;

    dailyCashSwitch = self->_dailyCashSwitch;
    self->_dailyCashSwitch = 0;
  }

  if ([v9 containsObject:@"TransactionMessagesSwitch"])
  {
    messagesSwitch = self->_messagesSwitch;
    self->_messagesSwitch = 0;
  }

  if ([v9 containsObject:@"AutomaticPresentation"])
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

  v4 = [(UISegmentedControl *)tabBar selectedSegmentIndex];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4 != 1)
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

        v11 = [*(*(&v14 + 1) + 8 * i) sectionIdentifiers];
        [v5 addObjectsFromArray:v11];
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

- (id)titleForHeaderInSection:(unint64_t)a3
{
  v5 = 0;
  switch(a3)
  {
    case 2uLL:
      v6 = [(PKPaymentPass *)self->_pass cardholderInfoSectionTitle];
      v7 = v6;
      if (self->_isAppleAccess)
      {
        v8 = PKLocalizedPaymentString(&cfstr_EmployeeInfoHe.isa);
        goto LABEL_33;
      }

      if (v6)
      {
        v8 = v6;
        goto LABEL_33;
      }

      v15 = [(PKPaymentPass *)self->_pass primaryFields];
      v16 = [v15 firstObject];

      v5 = [v16 label];

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
      v11 = [(PKPaymentPassDetailViewController *)self _headerTitleForPassStateSection];
      goto LABEL_44;
    case 0x1FuLL:
      if (self->_peerPaymentAccount)
      {
        goto LABEL_29;
      }

      v12 = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
      if ([v12 length])
      {

LABEL_29:
        v5 = 0;
        goto LABEL_45;
      }

      v21 = [(PKPaymentPassDetailViewController *)self _shouldShowCardNumbersSection];

      if (v21)
      {
        goto LABEL_29;
      }

      v5 = PKLocalizedPaymentString(&cfstr_CardInfoHeader.isa);
      if ([(PKPaymentPass *)self->_pass supportsBarcodePayment])
      {
        v22 = PKLocalizedAquamanString(&cfstr_PassInfoHeader.isa);

        v5 = v22;
      }

LABEL_45:
      v17 = [(PKPaymentPassDetailViewController *)self _configurableSectionForSectionType:a3];
      v18 = [v17 header];

      if (v18)
      {
        v19 = v18;

        v5 = v19;
      }

      return v5;
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
        v11 = PKLocalizedPeerPaymentString(&v10->isa);
      }

      else
      {
        v13 = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
        v14 = [v13 length];

        if (!v14)
        {
          v9 = @"TRANSACTIONS_HEADER";
          goto LABEL_43;
        }

        [(PKPaymentPassDetailViewController *)self _accountFeature];
LABEL_23:
        v11 = PKLocalizedFeatureString();
      }

      goto LABEL_44;
    case 0x24uLL:
      v7 = [(PKPaymentPass *)self->_pass organizationName];
      v8 = PKLocalizedPaymentString(&cfstr_TransactionsUn.isa, &stru_1F3BD5BF0.isa, v7);
      goto LABEL_33;
    case 0x25uLL:
      if ([(PKPaymentPassDetailViewController *)self _isBankConnectLinked])
      {
        v11 = PKLocalizedBankConnectString(&cfstr_BankConnectDas_11.isa);
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
        v11 = PKLocalizedPaymentString(&v9->isa);
      }

LABEL_44:
      v5 = v11;
      goto LABEL_45;
    case 0x26uLL:
      v10 = @"PEER_PAYMENT_PASS_DETAILS_TRANSACTIONS_BY_YEAR_SECTION_HEADER";
      goto LABEL_21;
    case 0x27uLL:
      v11 = PKLocalizedShareableCredentialString(&cfstr_CardsInGroupTi.isa);
      goto LABEL_44;
    case 0x28uLL:
      if (self->_account)
      {
        goto LABEL_29;
      }

      v9 = @"SETTINGS_OPTIONS_BILLING_ADDRESS_VC_TITLE";
      goto LABEL_43;
    case 0x29uLL:
      v7 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
      [v7 paymentNetworkIdentifier];
      v8 = PKDisplayablePaymentNetworkNameForPaymentCredentialType();
LABEL_33:
      v5 = v8;
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

- (id)titleForFooterInSection:(unint64_t)a3
{
  v5 = 0;
  v67 = *MEMORY[0x1E69E9840];
  detailViewStyle = self->_detailViewStyle;
  switch(a3)
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
          v8 = PKDeviceSpecificLocalizedStringKeyForKey(@"PEER_PAYMENT_ACCOUNT_STATE_FOOTER_RESTRICTED_CONTACT_SUPPORT_BODY", detailViewStyle == 2);
          v9 = PKLocalizedPeerPaymentString(v8);
          goto LABEL_53;
        }

        v10 = @"PEER_PAYMENT_PASS_DETAILS_CONTACT_SUPPORT_FOOTER";
      }

      goto LABEL_106;
    case 4uLL:
      v8 = [(PKPaymentPassDetailViewController *)self tableView];
      v9 = [(PKPaymentPassDetailViewController *)self footerForIdentityDocumentInTableView:v8];
      goto LABEL_53;
    case 5uLL:
      v8 = [(PKPaymentPassDetailViewController *)self tableView];
      v9 = [(PKPaymentPassDetailViewController *)self footerForReplaceBiometricIdentityInTableView:v8];
      goto LABEL_53;
    case 7uLL:
      v20 = @"AUTOMATIC_PRESENTATION_FOOTER";
      goto LABEL_41;
    case 0xBuLL:
      v15 = PKLocalizedFeatureString();
      goto LABEL_111;
    case 0xDuLL:
      v17 = [(PKAccount *)self->_account creditDetails];
      v18 = [v17 accountSummary];
      v19 = [v18 requiresDebtCollectionNotices];

      if (v19 || ([(PKAccount *)self->_account stateReason], !PKAccountStateReasonIsInMerge()))
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
      v16 = PKLocalizedFeatureString();
      goto LABEL_107;
    case 0x13uLL:
      v23 = [(PKPhysicalCardController *)self->_physicalCardController unactivatedPhysicalCard];
      v5 = v23;
      if (!v23)
      {
        goto LABEL_108;
      }

      v24 = [v23 latestShippingActivity];
      v25 = v24;
      if (v24 && [v24 shippingStatus])
      {
        v26 = [v25 shippingStatus];
        v15 = 0;
        if (v26 > 2)
        {
          if (v26 != 3)
          {
            if (v26 != 4)
            {
              goto LABEL_152;
            }

            v15 = [v25 localizedDeliveryExceptionReason];
            if (v15)
            {
              goto LABEL_152;
            }
          }

          goto LABEL_117;
        }

        if (v26 != 1)
        {
          if (v26 != 2)
          {
            goto LABEL_152;
          }

LABEL_117:
          [(PKPaymentPassDetailViewController *)self _accountFeature];
LABEL_151:
          v15 = PKLocalizedFeatureString();
LABEL_152:

          goto LABEL_111;
        }

        v57 = [v25 estimatedDeliveryDate];

        [(PKPaymentPassDetailViewController *)self _accountFeature];
        if (!v57)
        {
          goto LABEL_151;
        }

        v43 = [v25 formattedEstimatedDeliveryDate];
        v55 = PKLocalizedFeatureString();
      }

      else
      {
        v43 = [v5 latestOrderActivity];
        v44 = [v43 activity];
        v15 = 0;
        if (v44 > 2)
        {
          if (v44 != 3)
          {
            if (v44 == 4)
            {
              v46 = [v43 localizedReason];
              v47 = v46;
              if (v46)
              {
                v48 = v46;
              }

              else
              {
                [(PKPaymentPassDetailViewController *)self _accountFeature];
                v48 = PKLocalizedFeatureString();
              }

              v15 = v48;
            }

            goto LABEL_145;
          }
        }

        else if (v44 != 1 && v44 != 2)
        {
          goto LABEL_145;
        }

        [(PKPaymentPassDetailViewController *)self _accountFeature];
        v55 = PKLocalizedFeatureString();
      }

      v15 = v55;
LABEL_145:

      goto LABEL_152;
    case 0x14uLL:
      v8 = [(PKPaymentPass *)self->_pass organizationName];
      PKLocalizedPaymentString(&cfstr_MessageService_0.isa, &stru_1F3BD5BF0.isa, v8);
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
      v16 = [(PKPaymentPassDetailViewController *)self _footerTextForPassStateSection];
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
        v8 = v61;
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
      v8 = v61;
      v9 = v61;
LABEL_53:
      v5 = v9;
LABEL_54:

LABEL_108:
      v50 = [(PKPaymentPassDetailViewController *)self _configurableSectionForSectionType:a3, v60];
      v51 = [v50 footer];

      if (v51)
      {
        v52 = v51;

        v5 = v52;
      }

      v15 = v5;

LABEL_111:

      return v15;
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

      v38 = [(PKPaymentPassDetailViewController *)self traitCollection];
      v39 = [v38 userInterfaceIdiom];

      if (v39 > 6 || ((1 << v39) & 0x62) == 0)
      {
        goto LABEL_108;
      }

      v40 = [(PKPaymentPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC100]];
      v8 = v40;
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
      v16 = PKLocalizedPaymentString(&v20->isa);
      goto LABEL_107;
    case 0x22uLL:
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v27 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedAccountInformation];
      v28 = [v27 associatedAccountInvitations];

      v29 = [v28 countByEnumeratingWithState:&v62 objects:v66 count:16];
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
            objc_enumerationMutation(v28);
          }

          if ([*(*(&v62 + 1) + 8 * i) status] == 1)
          {

LABEL_70:
            v5 = 0;
            goto LABEL_108;
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v62 objects:v66 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }

LABEL_63:

      v10 = @"BACK_OF_PASS_FAMILY_SHARING_FOOTER";
LABEL_106:
      v16 = PKLocalizedPeerPaymentString(&v10->isa);
LABEL_107:
      v5 = v16;
      goto LABEL_108;
    case 0x23uLL:
      if (![(PKPaymentPassDetailViewController *)self _showsTransactionHistorySwitch])
      {
        goto LABEL_70;
      }

      v8 = [(PKPaymentPass *)self->_pass organizationName];
      PKLocalizedPaymentString(&cfstr_TransactionsSe_0.isa, &stru_1F3BD5BF0.isa, v8);
      goto LABEL_52;
    case 0x24uLL:
      v8 = [(PKPaymentPass *)self->_pass organizationName];
      PKLocalizedPaymentString(&cfstr_TransactionsUn_0.isa, &stru_1F3BD5BF0.isa, v8);
      goto LABEL_52;
    case 0x25uLL:
      if ([(PKPaymentPassDetailViewController *)self _isBankConnectLinked]|| self->_peerPaymentAccount || self->_account)
      {
        goto LABEL_70;
      }

      if ([(PKPaymentPass *)self->_pass supportsFPANNotifications]&& [(PKPaymentPass *)self->_pass supportsDPANNotifications])
      {
        v8 = [(PKPaymentPass *)self->_pass organizationName];
        PKLocalizedPaymentString(&cfstr_TransactionsFo.isa, &stru_1F3BD5BF0.isa, v8);
        v9 = LABEL_52:;
        goto LABEL_53;
      }

      if (([(PKPaymentPass *)self->_pass isStoredValuePass]& 1) == 0 && ([(PKPaymentPass *)self->_pass isIdentityPass]& 1) == 0)
      {
        v8 = PKDeviceSpecificLocalizedStringKeyForKey(@"TRANSACTIONS_FOOTER", self->_detailViewStyle == 2);
        v34 = [(PKPaymentPass *)self->_pass organizationName];
        v54 = PKLocalizedPaymentString(v8, &stru_1F3BD5BF0.isa, v34);
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
        v16 = PKLocalizedIdentityString(&cfstr_ActivitiesComp.isa);
        goto LABEL_107;
      }

      goto LABEL_70;
    case 0x27uLL:
      v8 = [(PKLinkedApplication *)self->_linkedApplication displayName];
      if ([(NSString *)v8 length])
      {
        v60 = v8;
        v33 = PKPassLocalizedStringWithFormat();
        v34 = v33;
        if (!v33 || (v35 = v33, v35 == @"ADDITIONAL_SHARING_INFO") || (v36 = v35, v37 = [@"ADDITIONAL_SHARING_INFO" isEqualToString:{v35, v8}], v36, (v37 & 1) != 0))
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

- (int64_t)tableView:(id)a3 numberOfRowsInSectionCase:(unint64_t)a4
{
  v6 = a3;
  switch(a4)
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
      v9 = [(PKPaymentPassDetailViewController *)self _accessPersonInfoSectionGenerateCellWithOutput:0 forRowIndex:0 tableView:0];
      goto LABEL_35;
    case 4uLL:
      v9 = [(PKPaymentPassDetailViewController *)self numberOfIdentityDocumentRowsInTableView:v6];
      goto LABEL_35;
    case 5uLL:
      v9 = [(PKPaymentPassDetailViewController *)self numberOfReplaceBiometricRowsInTableView:v6];
      goto LABEL_35;
    case 0xAuLL:
      v9 = [(PKPaymentPassDetailViewController *)self numberOfAccountUserRowsInTableView:v6];
      goto LABEL_35;
    case 0xDuLL:
      v9 = [(PKPaymentPassDetailViewController *)self _numberOfAccountServiceCreditDetailsRowsEnabled];
      goto LABEL_35;
    case 0x10uLL:
      v13 = [(PKPaymentPassDetailViewController *)self _shouldShowProductBenefitsCell];
      goto LABEL_42;
    case 0x11uLL:
      isAmpEligible = self->_isAmpEligible;
      break;
    case 0x12uLL:
      v9 = [(PKPaymentPassDetailViewController *)self _numberOfAccountServiceRewardsRowsEnabled];
      goto LABEL_35;
    case 0x13uLL:
      v9 = [(PKPaymentPassDetailViewController *)self _numberOfAccountServicePhysicalCardRowsEnabled];
      goto LABEL_35;
    case 0x15uLL:
      v9 = [(PKPaymentPassDetailViewController *)self _transitCellGenerateCellWithOutput:0 forRowIndex:0 tableView:0];
      goto LABEL_35;
    case 0x17uLL:
      v9 = [(PKPaymentPassDetailViewController *)self _numberOfPeerPaymentMoneyActionsEnabled];
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
      v9 = [(PKPaymentPassDetailViewController *)self _passStateSectionGenerateCellWithOutput:0 forRowIndex:0 tableView:0];
      goto LABEL_35;
    case 0x1CuLL:
      v11 = [(NSArray *)self->_displayableBalanceFields count];
      isAmpEligible = [(NSArray *)self->_commutePlanFields count]+ v11;
      break;
    case 0x1DuLL:
      v9 = [(PKPaymentPassDetailViewController *)self _contactBankCellWithOutput:0 forRowIndex:0 tableView:0];
      goto LABEL_35;
    case 0x1FuLL:
      v9 = [(PKPaymentPassDetailViewController *)self _cardInfoSectionGenerateCellWithOutput:0 forRowIndex:0 tableView:0];
      goto LABEL_35;
    case 0x20uLL:
      v8 = 1264;
      goto LABEL_26;
    case 0x22uLL:
      v10 = [(NSArray *)self->_sortedFamilyMemberRowModels count];
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
      v12 = [(PKPaymentPass *)self->_pass storeIdentifiers];
      isAmpEligible = [v12 count] != 0;

      break;
    case 0x25uLL:
      if (![(PKPaymentPassDetailViewController *)self _transactionsCount])
      {
        goto LABEL_2;
      }

      v15 = [(PKPaymentPassDetailViewController *)self _transactionsCount];
      isAmpEligible = v15 + [(PKPaymentPassDetailViewController *)self _transactionDeepLinkingEnabled];
      break;
    case 0x26uLL:
      v8 = 1232;
LABEL_26:
      v9 = [*(&self->super.super.super.super.super.isa + v8) count];
      goto LABEL_35;
    case 0x27uLL:
      v10 = [(PKGroup *)self->_group passCount];
LABEL_32:
      isAmpEligible = v10 + 1;
      break;
    case 0x28uLL:
      if (!self->_account)
      {
        goto LABEL_2;
      }

      isAmpEligible = !self->_loadingBillingContact;
      break;
    case 0x29uLL:
      v13 = [(PKPaymentPassDetailViewController *)self _shouldShowNetworkBenefitsCell];
LABEL_42:
      isAmpEligible = v13;
      break;
    case 0x2DuLL:
      v9 = [(PKPaymentPassDetailViewController *)self _numberOfPrivacyTermsInfoRows];
      goto LABEL_35;
    case 0x30uLL:
      v9 = [(PKPaymentPassDetailViewController *)self _passOperationsCellWithOutput:0 forRowIndex:0 tableView:0];
LABEL_35:
      isAmpEligible = v9;
      break;
    default:
      isAmpEligible = 0;
      break;
  }

  return isAmpEligible;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 section:(unint64_t)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v25 = 0;
  switch(a5)
  {
    case 0uLL:
      v11 = [(PKPaymentPassDetailViewController *)self _linkedAppCellForTableView:v8];
      goto LABEL_63;
    case 1uLL:
      v11 = -[PKPaymentPassDetailViewController _peerPaymentAccountActionCellForRowIndex:tableView:](self, "_peerPaymentAccountActionCellForRowIndex:tableView:", [v9 row], v8);
      goto LABEL_63;
    case 2uLL:
      -[PKPaymentPassDetailViewController _accessPersonInfoSectionGenerateCellWithOutput:forRowIndex:tableView:](self, "_accessPersonInfoSectionGenerateCellWithOutput:forRowIndex:tableView:", &v25, [v9 row], v8);
      goto LABEL_51;
    case 3uLL:
      v11 = [(PKPaymentPassDetailViewController *)self _cardHolderPictureCellForTableView:v8];
      goto LABEL_63;
    case 4uLL:
      v11 = [(PKPaymentPassDetailViewController *)self identityDocumentTableViewCellForTableView:v8 atIndexPath:v9];
      goto LABEL_63;
    case 5uLL:
      v11 = [(PKPaymentPassDetailViewController *)self replaceBiometricTableViewCellForTableView:v8 atIndexPath:v9];
      goto LABEL_63;
    case 6uLL:
      v11 = [(PKPaymentPassDetailViewController *)self _barcodeCell];
      goto LABEL_63;
    case 7uLL:
      v11 = [(PKPaymentPassDetailViewController *)self _automaticPresentationCellForTableView:v8];
      goto LABEL_63;
    case 8uLL:
      v11 = [(PKPaymentPassDetailViewController *)self _manufacturerInfoCellForTableView:v8];
      goto LABEL_63;
    case 9uLL:
      v13 = PKLocalizedPaymentString(&cfstr_LinkToWalletPa.isa);
      v14 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v13 forTableView:v8];
      v25 = v14;

      v15 = MEMORY[0x1E69B9DD8];
      goto LABEL_40;
    case 0xAuLL:
      v11 = [(PKPaymentPassDetailViewController *)self accountUserTableViewCellForTableView:v8 atIndexPath:v9];
      goto LABEL_63;
    case 0xBuLL:
      v11 = [(PKPaymentPassDetailViewController *)self _installmentsPlanCellForTableView:v8 atIndexPath:v9];
      goto LABEL_63;
    case 0xCuLL:
      v11 = -[PKPaymentPassDetailViewController _accountServiceCardNumbersCellForRowIndex:tableView:](self, "_accountServiceCardNumbersCellForRowIndex:tableView:", [v9 row], v8);
      goto LABEL_63;
    case 0xDuLL:
      v11 = -[PKPaymentPassDetailViewController _accountServiceCreditDetailsCellForRowIndex:tableView:](self, "_accountServiceCreditDetailsCellForRowIndex:tableView:", [v9 row], v8);
      goto LABEL_63;
    case 0xEuLL:
      v11 = -[PKPaymentPassDetailViewController _accountServiceBankAccountsCellForRowIndex:tableView:](self, "_accountServiceBankAccountsCellForRowIndex:tableView:", [v9 row], v8);
      goto LABEL_63;
    case 0xFuLL:
    case 0x1EuLL:
    case 0x21uLL:
      v11 = [(PKPaymentPassDetailViewController *)self _merchantTokensCellForTableView:v8];
      goto LABEL_63;
    case 0x10uLL:
      [(PKPaymentPassDetailViewController *)self _accountFeature];
      v17 = PKLocalizedFeatureString();
      v14 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v17 forTableView:v8];
      v25 = v14;

      v15 = MEMORY[0x1E69B9AF0];
      goto LABEL_40;
    case 0x11uLL:
      v11 = -[PKPaymentPassDetailViewController _accountServiceMakeDefaultCellForRowIndex:tableView:](self, "_accountServiceMakeDefaultCellForRowIndex:tableView:", [v9 row], v8);
      goto LABEL_63;
    case 0x12uLL:
      v11 = -[PKPaymentPassDetailViewController _accountServiceRewardsDetailsCellForRowIndex:tableView:](self, "_accountServiceRewardsDetailsCellForRowIndex:tableView:", [v9 row], v8);
      goto LABEL_63;
    case 0x13uLL:
      v11 = -[PKPaymentPassDetailViewController _accountServicePhysicalCardCellForRowIndex:tableView:](self, "_accountServicePhysicalCardCellForRowIndex:tableView:", [v9 row], v8);
      goto LABEL_63;
    case 0x14uLL:
      v11 = [(PKPaymentPassDetailViewController *)self _messagesSwitchCellForTableView:v8];
      goto LABEL_63;
    case 0x15uLL:
      -[PKPaymentPassDetailViewController _transitCellGenerateCellWithOutput:forRowIndex:tableView:](self, "_transitCellGenerateCellWithOutput:forRowIndex:tableView:", &v25, [v9 row], v8);
      goto LABEL_51;
    case 0x16uLL:
      v11 = -[PKPaymentPassDetailViewController _peerPaymentBalanceCellForRowIndex:tableView:](self, "_peerPaymentBalanceCellForRowIndex:tableView:", [v9 row], v8);
      goto LABEL_63;
    case 0x17uLL:
      v11 = -[PKPaymentPassDetailViewController _peerPaymentMoneyActionCellForRowIndex:tableView:](self, "_peerPaymentMoneyActionCellForRowIndex:tableView:", [v9 row], v8);
      goto LABEL_63;
    case 0x18uLL:
      v11 = -[PKPaymentPassDetailViewController _peerPaymentAutomaticallyAcceptPaymentsCellForRowIndex:tableView:](self, "_peerPaymentAutomaticallyAcceptPaymentsCellForRowIndex:tableView:", [v9 row], v8);
      goto LABEL_63;
    case 0x19uLL:
      v11 = -[PKPaymentPassDetailViewController _peerPaymentBankAccountsCellForRowIndex:tableView:](self, "_peerPaymentBankAccountsCellForRowIndex:tableView:", [v9 row], v8);
      goto LABEL_63;
    case 0x1AuLL:
      v11 = [(PKPaymentPassDetailViewController *)self _paymentApplicationsCellForIndexPath:v9 tableView:v8];
      goto LABEL_63;
    case 0x1BuLL:
      -[PKPaymentPassDetailViewController _passStateSectionGenerateCellWithOutput:forRowIndex:tableView:](self, "_passStateSectionGenerateCellWithOutput:forRowIndex:tableView:", &v25, [v9 row], v8);
      goto LABEL_51;
    case 0x1CuLL:
      v11 = -[PKPaymentPassDetailViewController _balanceOrCommutePlanCellForRowIndex:tableView:](self, "_balanceOrCommutePlanCellForRowIndex:tableView:", [v9 row], v8);
      goto LABEL_63;
    case 0x1DuLL:
      -[PKPaymentPassDetailViewController _contactBankCellWithOutput:forRowIndex:tableView:](self, "_contactBankCellWithOutput:forRowIndex:tableView:", &v25, [v9 row], v8);
      goto LABEL_51;
    case 0x1FuLL:
      -[PKPaymentPassDetailViewController _cardInfoSectionGenerateCellWithOutput:forRowIndex:tableView:](self, "_cardInfoSectionGenerateCellWithOutput:forRowIndex:tableView:", &v25, [v9 row], v8);
      goto LABEL_51;
    case 0x20uLL:
      v11 = [(PKPaymentPassDetailViewController *)self _deviceAccountNumberCellForIndexPath:v9 tableView:v8];
      goto LABEL_63;
    case 0x22uLL:
      v11 = [(PKPaymentPassDetailViewController *)self _familyMemberCellForIndexPath:v9 tableView:v8];
      goto LABEL_63;
    case 0x23uLL:
      if (self->_peerPaymentAccount)
      {
        v11 = [(PKPaymentPassDetailViewController *)self _peerPaymentNotificationsSwitchCellForIndexPath:v9 tableView:v8];
        goto LABEL_63;
      }

      v18 = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
      v19 = [v18 length];

      if (v19)
      {
        [(PKPaymentPassDetailViewController *)self _accountServiceNotificationsSwitchCellForIndexPath:v10 tableView:v8];
      }

      else
      {
        [(PKPaymentPassDetailViewController *)self _transactionsSwitchCellForIndexPath:v10 tableView:v8];
      }

      goto LABEL_7;
    case 0x24uLL:
      v11 = [(PKPaymentPassDetailViewController *)self _linkedApplicationCellForTableView:v8];
      goto LABEL_63;
    case 0x25uLL:
      if ([(PKPaymentPassDetailViewController *)self _transactionsCount])
      {
        v12 = [v10 row];
        if (v12 >= [(PKPaymentPassDetailViewController *)self _transactionsCount])
        {
          [(PKPaymentPassDetailViewController *)self _moreTransactionsCellForTableView:v8];
        }

        else
        {
          [(PKPaymentPassDetailViewController *)self _transactionCellForIndexPath:v10 tableView:v8];
        }

        v11 = LABEL_7:;
LABEL_63:
        v14 = v11;
        v25 = v11;
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
        v14 = [(PKPaymentPassDetailViewController *)self _infoCellWithDescription:v20 forTableView:v8];
        v25 = v14;
      }

LABEL_64:
      if (!v14)
      {
LABEL_65:
        v21 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = PKPassDetailSectionTypeToString(a5);
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
      v11 = [(PKPaymentPassDetailViewController *)self _transactionCountByPeriodCellForIndexPath:v9 tableView:v8];
      goto LABEL_63;
    case 0x27uLL:
      v11 = [(PKPaymentPassDetailViewController *)self _passesInGroupCellForIndexPath:v9 tableView:v8];
      goto LABEL_63;
    case 0x28uLL:
      v11 = [(PKPaymentPassDetailViewController *)self _billingAddressCellShowingAddress:self->_account == 0 forTableView:v8];
      goto LABEL_63;
    case 0x29uLL:
      [(PKPaymentPassDetailViewController *)self _accountFeature];
      v16 = PKLocalizedFeatureString();
      v14 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v16 forTableView:v8];
      v25 = v14;

      v15 = MEMORY[0x1E69B9988];
LABEL_40:
      PKAccessibilityIDCellSet(v14, *v15);
      goto LABEL_64;
    case 0x2AuLL:
      v11 = -[PKPaymentPassDetailViewController _peerPaymentParticipantGraduationCellForRowIndex:tableView:](self, "_peerPaymentParticipantGraduationCellForRowIndex:tableView:", [v9 row], v8);
      goto LABEL_63;
    case 0x2BuLL:
      v11 = [(PKPaymentPassDetailViewController *)self _peerPaymentStatementCellForTableView:v8];
      goto LABEL_63;
    case 0x2CuLL:
      v11 = [(PKPaymentPassDetailViewController *)self verifySSNTableViewCellForTableView:v8 atIndexPath:v9];
      goto LABEL_63;
    case 0x2DuLL:
      v11 = -[PKPaymentPassDetailViewController _privacyTermsSectionCellForRowIndex:tableView:](self, "_privacyTermsSectionCellForRowIndex:tableView:", [v9 row], v8);
      goto LABEL_63;
    case 0x2EuLL:
      v11 = -[PKPaymentPassDetailViewController _peerPaymentManualIdentityVerificationCellForRowIndex:tableView:](self, "_peerPaymentManualIdentityVerificationCellForRowIndex:tableView:", [v9 row], v8);
      goto LABEL_63;
    case 0x2FuLL:
      v11 = [(PKPaymentPassDetailViewController *)self accountUserStopSharingTableViewCellForTableView:v8 atIndexPath:v9];
      goto LABEL_63;
    case 0x30uLL:
      -[PKPaymentPassDetailViewController _passOperationsCellWithOutput:forRowIndex:tableView:](self, "_passOperationsCellWithOutput:forRowIndex:tableView:", &v25, [v9 row], v8);
LABEL_51:
      v14 = v25;
      goto LABEL_64;
    default:
      goto LABEL_65;
  }
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4 section:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5 == 37 && !-[PKPaymentPassDetailViewController _isBankConnectLinked](self, "_isBankConnectLinked") && -[PKPaymentPassDetailViewController _transactionCellEditActionsGenerateWithOutput:forRowIndex:tableView:](self, "_transactionCellEditActionsGenerateWithOutput:forRowIndex:tableView:", 0, [v9 row], v8);

  return v10;
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4 section:(unint64_t)a5
{
  v6 = 0;
  v12 = 0;
  if (a5 == 37)
  {
    v9 = a3;
    -[PKPaymentPassDetailViewController _transactionCellEditActionsGenerateWithOutput:forRowIndex:tableView:](self, "_transactionCellEditActionsGenerateWithOutput:forRowIndex:tableView:", &v12, [a4 row], v9);

    v6 = v12;
  }

  v10 = [MEMORY[0x1E69DCFC0] configurationWithActions:v6];
  [v10 setPerformsFirstActionWithFullSwipe:0];

  return v10;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentPassDetailViewController *)self view];
  [v5 setNeedsLayout];

  v6 = [(PKPassHeaderView *)self->_passHeaderView passView];
  [v6 frame];
  v8 = v7;
  v10 = v9;

  [v4 contentOffset];
  v12 = v11;
  [v4 adjustedContentInset];
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

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  [(PKPaymentPassDetailViewController *)self _normalizedContentOffsetForTargetOffset:a3, a5->x, a5->y];
  a5->x = v6;
  a5->y = v7;
}

- (void)_normalizeContentOffset
{
  v10 = [(PKPaymentPassDetailViewController *)self tableView];
  if (([v10 isDragging] & 1) == 0 && (objc_msgSend(v10, "isDecelerating") & 1) == 0)
  {
    [v10 contentOffset];
    v4 = v3;
    v6 = v5;
    [(PKPaymentPassDetailViewController *)self _normalizedContentOffsetForTargetOffset:?];
    if (v4 != v8 || v6 != v7)
    {
      [v10 setContentOffset:1 animated:?];
    }
  }
}

- (CGPoint)_normalizedContentOffsetForTargetOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PKPaymentPassDetailViewController *)self tableView];
  [v6 adjustedContentInset];
  v8 = v7;
  v10 = v9;
  [v6 contentSize];
  v12 = v11;
  [v6 bounds];
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

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5 section:(unint64_t)a6
{
  y = a5.y;
  x = a5.x;
  v11 = a3;
  v12 = a4;
  if (a6 == 37)
  {
    v13 = [(PKPaymentPassDetailViewController *)self tableView:v11 contextMenuConfigurationForTransactionAtIndexPath:v12 point:x, y];
    goto LABEL_5;
  }

  if (a6 == 31)
  {
    v13 = [(PKPaymentPassDetailViewController *)self tableView:v11 contextMenuConfigurationForCardInfoAtIndexPath:v12];
LABEL_5:
    v14 = v13;
    goto LABEL_7;
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (id)tableView:(id)a3 contextMenuConfigurationForCardInfoAtIndexPath:(id)a4
{
  v5 = [a3 cellForRowAtIndexPath:a4];
  v6 = [v5 reuseIdentifier];
  v7 = [v6 isEqualToString:@"PKTableViewCellReuseIdentifierCustomerServiceIdentifier"];

  if (v7)
  {
    v8 = [(PKPaymentPass *)self->_pass customerServiceIdentifier];
    v9 = [(PKPaymentPassDetailViewController *)self contextMenuConfigurationForCopyingText:v8];
  }

  else
  {
    v10 = [v5 reuseIdentifier];
    v11 = [v10 isEqualToString:@"cardNumberCell"];

    if (!v11)
    {
      v9 = 0;
      goto LABEL_11;
    }

    v8 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
    v12 = [v8 sanitizedDPAN];
    if (v12 && [(PKPaymentPassDetailViewController *)self paymentApplicationShouldShowFullDPAN:v8])
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

- (id)contextMenuConfigurationForCopyingText:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PKPaymentPassDetailViewController_contextMenuConfigurationForCopyingText___block_invoke;
  aBlock[3] = &unk_1E8016090;
  v9 = v3;
  v4 = v3;
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

- (id)tableView:(id)a3 contextMenuConfigurationForTransactionAtIndexPath:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  v11 = [v10 row];
  if (v11 >= [(PKPaymentPassDetailViewController *)self _transactionsCount])
  {
    v16 = 0;
  }

  else
  {
    v12 = [v9 cellForRowAtIndexPath:v10];
    v13 = [v12 transactionView];
    v14 = [v13 shouldShowTransactionPreviewForTouchAtPoint:v9 inView:{x, y}];

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

- (id)contextMenuConfigurationForTransaction:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PKPaymentPassDetailViewController_contextMenuConfigurationForTransaction___block_invoke;
  aBlock[3] = &unk_1E80261D8;
  aBlock[4] = self;
  v5 = v4;
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
  v9 = [v5 identifier];
  v10 = [v8 configurationWithIdentifier:v9 previewProvider:v6 actionProvider:v7];

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

- (void)tableView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v6 = a5;
  v7 = [v6 previewViewController];
  v8 = v7;
  if (v7)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __105__PKPaymentPassDetailViewController_tableView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
    v9[3] = &unk_1E8010A10;
    v9[4] = self;
    v10 = v7;
    [v6 addAnimations:v9];
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

- (id)tableView:(id)a3 viewForHeaderInSectionCase:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 40)
  {
    if (!self->_account)
    {
      v8 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"spinner"];
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

  else if (a4 == 24)
  {
    v8 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"spinner"];
    v9 = &OBJC_IVAR___PKPaymentPassDetailViewController__loadingPeerPaymentPreferences;
    v10 = 1568;
    goto LABEL_6;
  }

  v17 = [(PKPaymentPassDetailViewController *)self titleForHeaderInSection:a4];
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

- (double)tableView:(id)a3 heightForHeaderInSectionCase:(unint64_t)a4
{
  if (a4)
  {
    [a3 sectionHeaderHeight];
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

- (id)tableView:(id)a3 viewForFooterInSectionCase:(unint64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 > 32)
  {
    if (a4 > 44)
    {
      switch(a4)
      {
        case '-':
          v7 = [(PKPaymentPassDetailViewController *)self _footerViewForApplePayProductPrivacySection];
          break;
        case '.':
          v7 = [(PKPaymentPassDetailViewController *)self _footerViewForManualIdentityVerificationSection];
          break;
        case '0':
          v7 = [(PKPaymentPassDetailViewController *)self _footerViewForPassOperationsSection];
          break;
        default:
          goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (a4 != 33)
    {
      if (a4 == 34)
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedAccountInformation];
        v9 = [v8 associatedAccountInvitations];

        v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
                objc_enumerationMutation(v9);
              }

              if ([*(*(&v18 + 1) + 8 * i) status] == 1)
              {

                v7 = [(PKPaymentPassDetailViewController *)self _footerViewForPendingPeerPaymentAssociatedAccount];
                goto LABEL_33;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
    v7 = [(PKPaymentPassDetailViewController *)self _footerViewForMerchantTokensSection];
    goto LABEL_33;
  }

  if (a4 > 21)
  {
    switch(a4)
    {
      case 0x16uLL:
        v7 = [(PKPaymentPassDetailViewController *)self _footerViewForPeerPaymentBalanceSectionWithTableView:v6];
        break;
      case 0x1BuLL:
        v7 = [(PKPaymentPassDetailViewController *)self _footerViewForPassStateSection];
        break;
      case 0x1EuLL:
        goto LABEL_26;
      default:
        goto LABEL_34;
    }

LABEL_33:
    v14 = v7;
    if (v7)
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  if (a4 == 10)
  {
    v7 = [(PKPaymentPassDetailViewController *)self _footerViewForAccountUsersSection];
    goto LABEL_33;
  }

  if (a4 == 15)
  {
    goto LABEL_26;
  }

LABEL_34:
  v15 = [(PKPaymentPassDetailViewController *)self titleForFooterInSection:a4];
  v16 = [v15 length];

  if (v16)
  {
    v14 = 0;
  }

  else
  {
    v14 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"default"];
    if (!v14)
    {
      v14 = [objc_alloc(MEMORY[0x1E69DD050]) initWithReuseIdentifier:@"default"];
    }
  }

LABEL_38:

  return v14;
}

- (double)tableView:(id)a3 heightForFooterInSectionCase:(unint64_t)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PKPaymentPassDetailViewController_tableView_heightForFooterInSectionCase___block_invoke;
  aBlock[3] = &unk_1E8026228;
  aBlock[4] = self;
  v24 = a4;
  v7 = v6;
  v23 = v7;
  v8 = _Block_copy(aBlock);
  if (a4 > 29)
  {
    if (a4 <= 33)
    {
      if (a4 != 30 && a4 != 33)
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    if (a4 == 34)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedAccountInformation];
      v11 = [v10 associatedAccountInvitations];

      v12 = [v11 countByEnumeratingWithState:&v18 objects:v25 count:16];
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
              objc_enumerationMutation(v11);
            }

            if ([*(*(&v18 + 1) + 8 * v15) status] == 1)
            {

              goto LABEL_28;
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v18 objects:v25 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_25;
    }

    if (a4 == 45)
    {
      goto LABEL_28;
    }

LABEL_25:
    v9 = v8[2](v8);
    goto LABEL_26;
  }

  if (a4 <= 21)
  {
    if (a4 != 10 && a4 != 15)
    {
      goto LABEL_25;
    }

LABEL_28:
    v16 = *MEMORY[0x1E69DE3D0];
    goto LABEL_29;
  }

  if (a4 == 22)
  {
    goto LABEL_28;
  }

  if (a4 != 27)
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

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4 section:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 - 7 < 0x2A)
  {
    goto LABEL_2;
  }

  v11 = 0.0;
  if (a5 > 2)
  {
    if (a5 - 4 >= 2)
    {
      if (a5 != 3)
      {
        if (a5 != 6)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }

      v13 = [(PKPaymentPass *)self->_pass cardHolderPicture];
      [v13 size];
      v11 = 184.0;
      if (v14 < 184.0)
      {
        v15 = [(PKPaymentPass *)self->_pass cardHolderPicture];
        [v15 size];
        v11 = v16;
      }

      goto LABEL_3;
    }

LABEL_2:
    [v8 rowHeight];
    v11 = v10;
    goto LABEL_3;
  }

  if (!a5)
  {
LABEL_13:
    v11 = *MEMORY[0x1E69DE3D0];
    goto LABEL_3;
  }

  if (a5 == 1 || a5 == 2)
  {
    goto LABEL_2;
  }

LABEL_3:

  return v11;
}

- (double)estimatedHeightForRowAtIndexPath:(id)a3 section:(unint64_t)a4
{
  result = *MEMORY[0x1E69DE3D0];
  if (a4 >= 0x31)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)shouldHighlightRowAtIndexPath:(id)a3 section:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  v7 = a4 - 2;
  LOBYTE(a4) = 0;
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
      v13 = [(PKAccountCardNumbersPresenter *)self->_accountCardNumbersPresenter isLoadingVirtualCard];
      goto LABEL_18;
    case 0xBuLL:
      if (-[PKPaymentPassDetailViewController _accountServiceCreditDetailsRowForRowIndex:](self, "_accountServiceCreditDetailsRowForRowIndex:", [v5 row]))
      {
        goto LABEL_28;
      }

      v16 = [(PKPaymentPassDetailViewController *)self isTotalBalanceCellSelectable];
      goto LABEL_35;
    case 0xCuLL:
      v17 = 1632;
      goto LABEL_32;
    case 0xDuLL:
    case 0x1CuLL:
    case 0x1FuLL:
      v9 = [(PKRetrieveMerchantTokensResponse *)self->_merchantTokensResponse merchantTokens];
      LOBYTE(a4) = [v9 count] != 0;

      break;
    case 0x10uLL:
      v14 = -[PKPaymentPassDetailViewController _accountServiceRewardsRowForRowIndex:](self, "_accountServiceRewardsRowForRowIndex:", [v5 row]);
      if (v14 == 1 && !self->_redeemingRewards)
      {
        goto LABEL_10;
      }

      v15 = v14 == 2;
LABEL_23:
      LOBYTE(a4) = v15;
      break;
    case 0x11uLL:
      if ([(PKPhysicalCardActionController *)self->_physicalCardActionController state]== 1 || self->_loadingOrderPhysicalCard)
      {
        goto LABEL_28;
      }

      v17 = 1635;
      goto LABEL_32;
    case 0x18uLL:
      v18 = -[NSArray objectAtIndex:](self->_contactlessPaymentApplications, "objectAtIndex:", [v5 row]);
      LOBYTE(a4) = !self->_changingDefaultPaymentApplication && self->_defaultPaymentApplication != v18;

      break;
    case 0x1AuLL:
      v16 = -[PKPaymentPassDetailViewController _canSelectBalanceOrCommutePlanCellAtRowIndex:](self, "_canSelectBalanceOrCommutePlanCellAtRowIndex:", [v5 row]);
      goto LABEL_35;
    case 0x1DuLL:
      v19 = [(PKPaymentPassDetailViewController *)self _rowIndexForExpressTransitSettingsCell];
      v15 = v19 == [v6 row];
      goto LABEL_23;
    case 0x20uLL:
      v10 = [v5 row];
      if (v10 >= [(NSArray *)self->_sortedFamilyMemberRowModels count])
      {
        goto LABEL_10;
      }

      v11 = [(NSArray *)self->_sortedFamilyMemberRowModels objectAtIndex:v10];
      v12 = [v11 state];
      if (v12 > 4)
      {

LABEL_34:
        v16 = [(PKPaymentPassDetailViewController *)self canSelectAccountUserRowAtIndexPath:v6];
LABEL_35:
        LOBYTE(a4) = v16;
      }

      else
      {
        LODWORD(a4) = 0xEu >> v12;
      }

      break;
    case 0x23uLL:
      LOBYTE(a4) = [(PKPaymentPassDetailViewController *)self _transactionsCount]!= 0;
      break;
    case 0x29uLL:
      if (self->_requestingStatement)
      {
LABEL_28:
        LOBYTE(a4) = 0;
      }

      else
      {
        v17 = 1713;
LABEL_32:
        LOBYTE(a4) = *(&self->super.super.super.super.super.isa + v17) ^ 1;
      }

      break;
    case 0x2EuLL:
      v13 = [(PKPaymentPassDetailViewController *)self _isDeletingPass];
LABEL_18:
      LOBYTE(a4) = !v13;
      break;
    default:
LABEL_10:
      LOBYTE(a4) = 1;
      break;
  }

  return a4 & 1;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 section:(unint64_t)a5
{
  v9 = a3;
  v8 = a4;
  [v9 deselectRowAtIndexPath:v8 animated:1];
  switch(a5)
  {
    case 1uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectPeerPaymentAccountActionAtIndexPath:v8];
      break;
    case 4uLL:
      [(PKPaymentPassDetailViewController *)self didSelectIdentityDocumentCellInTableView:v9 atIndexPath:v8];
      break;
    case 5uLL:
      [(PKPaymentPassDetailViewController *)self didSelectReplaceBiometricCellInTableView:v9 atIndexPath:v8];
      break;
    case 9uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectServicingWalletLink];
      break;
    case 0xAuLL:
      [(PKPaymentPassDetailViewController *)self didSelectAccountUserCellInTableView:v9 atIndexPath:v8];
      break;
    case 0xBuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectInstallmentPlansAtIndexPath:v8];
      break;
    case 0xCuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectAccountServiceCardNumbersAtIndexPath:v8];
      break;
    case 0xDuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectCreditDetailsCell:v8];
      break;
    case 0xEuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectAccountServiceBankAccountsAtIndexPath:v8];
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
      [(PKPaymentPassDetailViewController *)self _didSelectAccountServiceMakeDefaultAtIndexPath:v8];
      break;
    case 0x12uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectAccountServiceRewardsDetailsAtIndexPath:v8];
      break;
    case 0x13uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectAccountServicePhysicalCardAtIndexPath:v8];
      break;
    case 0x15uLL:
      -[PKPaymentPassDetailViewController _didSelectTransitTicketAtRow:](self, "_didSelectTransitTicketAtRow:", [v8 row]);
      break;
    case 0x17uLL:
      -[PKPaymentPassDetailViewController _didSelectPeerPaymentMoneyActionAtRow:](self, "_didSelectPeerPaymentMoneyActionAtRow:", [v8 row]);
      break;
    case 0x18uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectAutomaticallyAcceptPaymentsPreferenceAtIndexPath:v8];
      break;
    case 0x19uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectPeerPaymentBankAccountsAtIndexPath:v8];
      break;
    case 0x1AuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectPaymentApplicationSectionRowAtIndexPath:v8];
      break;
    case 0x1BuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectPassStateSection];
      break;
    case 0x1CuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectBalanceOrCommutePlanCellAtIndexPath:v8];
      break;
    case 0x1DuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectContactBankSectionAtIndexPath:v8];
      break;
    case 0x1FuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectCardInfoCellAtIndexPath:v8];
      break;
    case 0x22uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectFamilySharingAtIndexPath:v8];
      break;
    case 0x23uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectTransactionTransactionsSwitchInTableView:v9 atIndexPath:v8];
      break;
    case 0x24uLL:
      [(PKLinkedApplication *)self->_linkedApplication openApplication:self];
      break;
    case 0x25uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectTransactionAtIndexPath:v8];
      break;
    case 0x26uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectTransactionCountByPeriodAtIndexPath:v8];
      break;
    case 0x27uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectPassInGroupAtIndexPath:v8];
      break;
    case 0x28uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectBillingAddress];
      break;
    case 0x29uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectNetworkBenefitsCell];
      break;
    case 0x2AuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectPeerPaymentParticipantGradutionAtIndexPath:v8];
      break;
    case 0x2BuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectPeerPaymentStatementAtIndexPath:v8];
      break;
    case 0x2CuLL:
      [(PKPaymentPassDetailViewController *)self didSelectVerifySSNCellInTableView:v9 atIndexPath:v8];
      break;
    case 0x2DuLL:
      -[PKPaymentPassDetailViewController _didSelectPrivacySectionAtRow:](self, "_didSelectPrivacySectionAtRow:", [v8 row]);
      break;
    case 0x2EuLL:
      [(PKPaymentPassDetailViewController *)self _didSelectPeerPaymentManualIdentityVerificationAtIndexPath:v8];
      break;
    case 0x2FuLL:
      [(PKPaymentPassDetailViewController *)self didSelectAccountUserStopSharingCellInTableView:v9 atIndexPath:v8];
      break;
    case 0x30uLL:
      [(PKPaymentPassDetailViewController *)self _didSelectPassOperationsSectionAtIndexPath:v8];
      break;
    default:
      break;
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__PKPaymentPassDetailViewController_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PKPaymentPassDetailViewController_transactionSourceIdentifier_didReceiveTransaction___block_invoke;
  block[3] = &unk_1E8010A88;
  v11 = v7;
  v12 = self;
  v13 = v6;
  v8 = v6;
  v9 = v7;
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

- (void)transactionSourceIdentifier:(id)a3 didRemoveTransactionWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PKPaymentPassDetailViewController_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)paymentPassWithUniqueIdentifier:(id)a3 didEnableMessageService:(BOOL)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__PKPaymentPassDetailViewController_paymentPassWithUniqueIdentifier_didEnableMessageService___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
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

- (void)paymentPassWithUniqueIdentifier:(id)a3 didEnableTransactionService:(BOOL)a4
{
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__PKPaymentPassDetailViewController_paymentPassWithUniqueIdentifier_didEnableTransactionService___block_invoke;
  block[3] = &unk_1E8013D60;
  block[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
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

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__PKPaymentPassDetailViewController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceivePlanUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKPaymentPassDetailViewController_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateBalanceReminder:(id)a4 forBalanceWithIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __119__PKPaymentPassDetailViewController_paymentPassWithUniqueIdentifier_didUpdateBalanceReminder_forBalanceWithIdentifier___block_invoke;
  v14[3] = &unk_1E8011C98;
  v14[4] = self;
  v15 = v8;
  v16 = v10;
  v17 = v9;
  v11 = v9;
  v12 = v10;
  v13 = v8;
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

- (void)featureApplicationRemoved:(id)a3
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

- (void)featureApplicationChanged:(id)a3
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

- (void)featureApplicationAdded:(id)a3
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

- (void)didUpdateFamilyMembers:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__PKPaymentPassDetailViewController_didUpdateFamilyMembers___block_invoke;
  v6[3] = &unk_1E8010A10;
  v7 = v4;
  v8 = self;
  v5 = v4;
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
  v5 = [(PKAccountUserCollection *)self->_accountUserCollection accountUsers];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithAccountUser:*(*(&v19 + 1) + 8 * v9)];
        [v3 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
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

- (void)_reloadTransactionsWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PKPaymentPassDetailViewController *)self _isBankConnectLinked])
  {
    [(FKBankConnectTransactionsAndGroupsProvider *)self->_bankConnectTransactionsAndGroupsProvider performFetchAndStartObservingNotifications];
  }

  else
  {
    v5 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
    [v5 paymentNetworkIdentifier];

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
      v11 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourceIdentifiers];
      [v10 setTransactionSourceIdentifiers:v11];

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
    v14 = v4;
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

- (BOOL)_transactionSectionsDataIsChangedForNewTransactions:(id)a3 oldTransactions:(id)a4 newtransactionCountByPeriod:(id)a5 oldtransactionCountByPeriod:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v9 == v10)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v13 = [v9 isEqual:v10] ^ 1;
  }

  if (v11 != v12 && (v13 & 1) == 0)
  {
    v13 = [v11 isEqual:v12] ^ 1;
  }

  return v13;
}

- (void)physicalCardsChanged:(id)a3 forAccountIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PKPaymentPassDetailViewController_physicalCardsChanged_forAccountIdentifier___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
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

- (void)accountUsersChanged:(id)a3 forAccountIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PKPaymentPassDetailViewController_accountUsersChanged_forAccountIdentifier___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
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

- (void)_applyDefaultStaticStylingToCell:(id)a3
{
  if (self->_highlightColor)
  {
    v4 = MEMORY[0x1E69DD250];
    v5 = a3;
    v6 = [v4 alloc];
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v7 setBackgroundColor:self->_highlightColor];
    [v5 setSelectedBackgroundView:v7];
  }

  else
  {
    [a3 setSelectedBackgroundView:0];
  }

  PKAccessibilityIDDefaultCellSet(a3);
}

- (void)_applyDefaultDynamicStylingToCell:(id)a3
{
  v3 = a3;
  [v3 setAccessoryType:0];
  [v3 setSelectionStyle:3];
  PKAccessibilityIDDefaultCellSet(v3);
}

- (id)_defaultCellWithTextColor:(id)a3 forTableView:(id)a4
{
  v6 = a3;
  v7 = [a4 dequeueReusableCellWithIdentifier:@"Cell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"Cell"];
    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v7];
  }

  [(PKPaymentPassDetailViewController *)self _applyDefaultDynamicStylingToCell:v7];
  v8 = [v7 textLabel];
  [v8 setText:0];
  [v8 setTextColor:v6];

  [v8 setNumberOfLines:0];
  [v8 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  [v7 setAccessoryView:0];

  return v7;
}

- (id)_value1CellWithTextColor:(id)a3 forTableView:(id)a4
{
  v6 = a3;
  v7 = [a4 dequeueReusableCellWithIdentifier:@"Cell-Value1"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"Cell-Value1"];
    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v7];
  }

  [(PKPaymentPassDetailViewController *)self _applyDefaultDynamicStylingToCell:v7];
  v8 = [v7 textLabel];
  [v8 setText:0];
  [v8 setTextColor:v6];

  [v8 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  [v7 setAccessoryView:0];

  return v7;
}

- (id)_subtitleCellForTableView:(id)a3
{
  v4 = [a3 dequeueReusableCellWithIdentifier:@"SubtitleCell"];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"SubtitleCell"];
    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v4];
    v5 = [v4 textLabel];
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [v5 setFont:v6];

    [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  }

  [(PKPaymentPassDetailViewController *)self _applyDefaultDynamicStylingToCell:v4];

  return v4;
}

- (id)_spinnerCellForTableView:(id)a3
{
  v4 = [a3 dequeueReusableCellWithIdentifier:@"spinnerCell"];
  if (!v4)
  {
    v4 = [[PKLeftAlignedSpinnerCell alloc] initWithStyle:0 reuseIdentifier:@"spinnerCell"];
    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v4];
    [(PKLeftAlignedSpinnerCell *)v4 setAccessoryType:0];
    [(PKLeftAlignedSpinnerCell *)v4 setUserInteractionEnabled:0];
  }

  return v4;
}

- (id)_imageViewCellForImage:(id)a3 forTableView:(id)a4
{
  v6 = a3;
  v7 = [a4 dequeueReusableCellWithIdentifier:@"imageViewCell"];
  if (!v7)
  {
    v7 = [[PKImageViewCell alloc] initWithReuseIdentifier:@"imageViewCell"];
    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v7];
    [(PKImageViewCell *)v7 setUserInteractionEnabled:0];
  }

  [(PKImageViewCell *)v7 setImage:v6];
  v8 = [v6 pkui_firstPixelColor];

  [(PKImageViewCell *)v7 setBackgroundColor:v8];

  return v7;
}

- (id)_switchCellWithText:(id)a3 forTableView:(id)a4
{
  v5 = a3;
  v6 = [[PKSettingTableCell alloc] initWithStyle:0 reuseIdentifier:@"PKSettingTableCellReuseIdentifier"];
  [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v6];
  v7 = [(PKSettingTableCell *)v6 textLabel];
  [v7 setText:v5];

  if (self->_primaryTextColor)
  {
    [v7 setTextColor:?];
  }

  else
  {
    v8 = [MEMORY[0x1E69DC888] labelColor];
    [v7 setTextColor:v8];
  }

  [v7 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  return v6;
}

- (id)_disabledCellWithText:(id)a3 forTableView:(id)a4
{
  v6 = MEMORY[0x1E69DC888];
  v7 = a4;
  v8 = a3;
  v9 = [v6 placeholderTextColor];
  v10 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:v9 forTableView:v7];

  v11 = [v10 textLabel];
  [v11 setText:v8];

  [v10 setSelectionStyle:0];

  return v10;
}

- (id)_linkCellWithText:(id)a3 forTableView:(id)a4
{
  linkTextColor = self->_linkTextColor;
  if (linkTextColor)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:linkTextColor forTableView:v7];
  }

  else
  {
    v10 = MEMORY[0x1E69DC888];
    v11 = a4;
    v12 = a3;
    v7 = [v10 linkColor];
    v9 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:v7 forTableView:v11];
  }

  v13 = [v9 textLabel];
  [v13 setText:a3];

  [v9 setIsAccessibilityElement:1];

  return v9;
}

- (id)_checkmarkCellWithText:(id)a3 forTableView:(id)a4
{
  v6 = a3;
  v7 = a4;
  primaryTextColor = self->_primaryTextColor;
  if (primaryTextColor)
  {
    v9 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:primaryTextColor forTableView:v7];
  }

  else
  {
    v10 = [MEMORY[0x1E69DC888] labelColor];
    v9 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:v10 forTableView:v7];
  }

  v11 = [v9 textLabel];
  [v11 setText:v6];

  if (self->_linkTextColor)
  {
    [v9 setTintColor:?];
  }

  return v9;
}

- (id)_infoCellWithDescription:(id)a3 forTableView:(id)a4
{
  detailTextColor = self->_detailTextColor;
  if (detailTextColor)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:detailTextColor forTableView:v7];
  }

  else
  {
    v10 = MEMORY[0x1E69DC888];
    v11 = a4;
    v12 = a3;
    v7 = [v10 secondaryLabelColor];
    v9 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:v7 forTableView:v11];
  }

  v13 = [v9 textLabel];
  [v13 setText:a3];

  [v9 setSelectionStyle:0];

  return v9;
}

- (id)_infoCellWithPrimaryText:(id)a3 detailText:(id)a4 cellStyle:(int64_t)a5 forTableView:(id)a6
{
  v10 = MEMORY[0x1E696AEC0];
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [v10 stringWithFormat:@"CellStyle-%ld", a5];
  v15 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v13 detailText:v12 cellStyle:a5 reuseIdentifier:v14 forTableView:v11];

  return v15;
}

- (id)_infoCellWithPrimaryText:(id)a3 detailText:(id)a4 cellStyle:(int64_t)a5 reuseIdentifier:(id)a6 forTableView:(id)a7
{
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [a7 dequeueReusableCellWithIdentifier:v12];
  if (!v15)
  {
    v15 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:a5 reuseIdentifier:v12];
    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v15];
  }

  [(PKPaymentPassDetailViewController *)self _applyDefaultDynamicStylingToCell:v15];
  v16 = [v15 textLabel];
  [v16 setText:v14];

  if (self->_primaryTextColor)
  {
    [v16 setTextColor:?];
  }

  else
  {
    v17 = [MEMORY[0x1E69DC888] labelColor];
    [v16 setTextColor:v17];
  }

  [v16 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  v18 = [v15 detailTextLabel];
  [v18 setLineBreakMode:4];
  [v18 setText:v13];

  if (self->_detailTextColor)
  {
    [v18 setTextColor:?];
  }

  else
  {
    v19 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v18 setTextColor:v19];
  }

  [v18 setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];
  [v15 setIsAccessibilityElement:1];

  return v15;
}

- (id)_stackedInfoCellWithPrimaryText:(id)a3 detailText:(id)a4 cellStyle:(int64_t)a5 forTableView:(id)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [a6 dequeueReusableCellWithIdentifier:@"StackedInfoCellIdentifier"];
  if (!v12)
  {
    v12 = [[PKStackedLabelCell alloc] initWithStyle:a5 reuseIdentifier:@"StackedInfoCellIdentifier"];
    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v12];
    if (self->_primaryTextColor)
    {
      [(PKStackedLabelCell *)v12 setTitleTextColor:?];
    }

    else
    {
      v13 = [MEMORY[0x1E69DC888] labelColor];
      [(PKStackedLabelCell *)v12 setTitleTextColor:v13];
    }

    if (self->_detailTextColor)
    {
      [(PKStackedLabelCell *)v12 setDetailTextColor:?];
    }

    else
    {
      v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(PKStackedLabelCell *)v12 setDetailTextColor:v14];
    }
  }

  [(PKPaymentPassDetailViewController *)self _applyDefaultDynamicStylingToCell:v12];
  [(PKStackedLabelCell *)v12 setTitleText:v11];

  [(PKStackedLabelCell *)v12 setDetailText:v10];
  [(PKStackedLabelCell *)v12 setIsAccessibilityElement:1];

  return v12;
}

- (id)_familyMemberCellWithRowModel:(id)a3 forTableView:(id)a4
{
  v6 = a3;
  v7 = [a4 dequeueReusableCellWithIdentifier:@"familyMemberCell"];
  if (!v7)
  {
    v7 = [[PKFamilyMemberTableViewCell alloc] initWithStyle:1 reuseIdentifier:@"familyMemberCell"];
    v8 = [(PKFamilyMemberTableViewCell *)v7 textLabel];
    v9 = v8;
    if (self->_primaryTextColor)
    {
      [v8 setTextColor:?];
    }

    else
    {
      v10 = [MEMORY[0x1E69DC888] labelColor];
      [v9 setTextColor:v10];
    }

    v11 = [(PKFamilyMemberTableViewCell *)v7 detailTextLabel];
    v12 = v11;
    if (self->_detailTextColor)
    {
      [v11 setTextColor:?];
    }

    else
    {
      v13 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v12 setTextColor:v13];
    }
  }

  PKAccessibilityIDCellSet(v7, *MEMORY[0x1E69B97C0]);
  [(PKFamilyMemberTableViewCell *)v7 setRowModel:v6];

  [(PKFamilyMemberTableViewCell *)v7 setIsAccessibilityElement:1];

  return v7;
}

- (id)_linkedAppCellForTableView:(id)a3
{
  v4 = [a3 dequeueReusableCellWithIdentifier:@"PKLinkedAppViewReuseIdentifier"];
  if (!v4)
  {
    v4 = [[PKLinkedAppView alloc] initWithLinkedApplication:self->_linkedApplication reuseIdentifier:@"PKLinkedAppViewReuseIdentifier"];
    v5 = [(PKLinkedAppView *)v4 linkedAppView];
    [v5 setDelegate:self];

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

- (id)_linkedApplicationCellForTableView:(id)a3
{
  v4 = [a3 dequeueReusableCellWithIdentifier:@"LinkedAppActionCell"];
  if (!v4)
  {
    v4 = [[PKLinkedApplicationActionCell alloc] initWithLinkedApplication:self->_linkedApplication reuseIdentifier:@"LinkedAppActionCell"];
    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v4];
    [(PKLinkedApplicationActionCell *)v4 setTextColor:self->_linkTextColor];
    v5 = [MEMORY[0x1E69C5710] appearance];
    v6 = [v5 altTextColor];
    [(PKLinkedApplicationActionCell *)v4 setDisabledTextColor:v6];
  }

  PKAccessibilityIDCellSet(v4, *MEMORY[0x1E69B9900]);

  return v4;
}

- (id)_moreTransactionsCellForTableView:(id)a3
{
  linkTextColor = self->_linkTextColor;
  if (linkTextColor)
  {
    v5 = a3;
    v6 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:linkTextColor forTableView:v5];
  }

  else
  {
    v7 = MEMORY[0x1E69DC888];
    v8 = a3;
    v5 = [v7 systemBlueColor];
    v6 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:v5 forTableView:v8];
  }

  v9 = [v6 textLabel];
  v10 = PKLocalizedPaymentString(&cfstr_TransactionsMo.isa);
  [v9 setText:v10];

  [v6 setAccessibilityIdentifier:*MEMORY[0x1E69B9D60]];

  return v6;
}

- (id)_billingAddressCellShowingAddress:(BOOL)a3 forTableView:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (!self->_account && ([(PKPaymentPass *)self->_pass hasAssociatedPeerPaymentAccount]& 1) == 0)
  {
    v7 = [MEMORY[0x1E69B8CF8] defaults];
    v8 = [v7 defaultBillingAddressForPaymentPass:self->_pass];
    billingContact = self->_billingContact;
    self->_billingContact = v8;
  }

  v10 = self->_billingContact;
  if (v10)
  {
    v11 = !v4;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = PKLocalizedPaymentString(&cfstr_SettingsTransa_6.isa);
    v13 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v12 detailText:0 cellStyle:0 reuseIdentifier:@"BillingAddress" forTableView:v6];
  }

  else if ([(PKPaymentPass *)self->_pass hasAssociatedPeerPaymentAccount])
  {
    v13 = [(PKPaymentPassDetailViewController *)self _peerPaymentBillingAddressCellForTableView:v6];
    v12 = [v13 textLabel];
    v14 = [(CNContact *)v10 pkFormattedContactAddressWithoutName];
    [v12 setText:v14];
  }

  else
  {
    v13 = [(PKPaymentPassDetailViewController *)self _subtitleCellForTableView:v6];
    v12 = [(CNContact *)v10 pkSingleLineFormattedContactAddress];
    v15 = [(CNContact *)v10 pk_displayName];
    if (![v15 length])
    {
      v16 = PKLocalizedPaymentString(&cfstr_SettingsTransa_5.isa);

      v15 = v16;
    }

    v17 = [v13 textLabel];
    [v17 setText:v15];

    if (self->_primaryTextColor)
    {
      v18 = [v13 textLabel];
      [v18 setTextColor:self->_primaryTextColor];
    }

    v19 = [v13 detailTextLabel];
    [v19 setText:v12];

    v20 = [v13 detailTextLabel];
    v21 = v20;
    if (self->_detailTextColor)
    {
      [v20 setTextColor:?];
    }

    else
    {
      v22 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v21 setTextColor:v22];
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
  v4 = [(PKPaymentPassDetailViewController *)self navigationController];
  v5 = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
  v6 = [v5 length] == 0;

  if (!v6)
  {
    v7 = objc_alloc_init(PKBillingAddressViewControllerConfiguration);
    [(PKBillingAddressViewControllerConfiguration *)v7 setBillingAddress:self->_billingContact];
    [(PKBillingAddressViewControllerConfiguration *)v7 setAccount:self->_account];
    [(PKBillingAddressViewControllerConfiguration *)v7 setAccountService:self->_accountService];
    [(PKBillingAddressViewControllerConfiguration *)v7 setFeatureIdentifier:[(PKAccount *)self->_account feature]];
    [(PKBillingAddressViewControllerConfiguration *)v7 setDetailViewStyle:self->_detailViewStyle];
    v8 = [[PKBillingAddressViewController alloc] initWithConfiguration:v7 handler:v3];
    if ([v4 pk_settings_useStateDrivenNavigation])
    {
LABEL_3:
      [v4 pk_settings_pushViewController:v8];
      goto LABEL_22;
    }

LABEL_7:
    [v4 pushViewController:v8 animated:1];
    goto LABEL_22;
  }

  if ([(PKPaymentPass *)self->_pass hasAssociatedPeerPaymentAccount])
  {
    v9 = [(PKPeerPaymentUserInfo *)self->_peerPaymentUserInfo contact];
    billingContact = self->_billingContact;
    self->_billingContact = v9;

    v7 = objc_alloc_init(PKBillingAddressViewControllerConfiguration);
    [(PKBillingAddressViewControllerConfiguration *)v7 setUserInfo:self->_peerPaymentUserInfo];
    [(PKBillingAddressViewControllerConfiguration *)v7 setPeerPaymentAccount:self->_peerPaymentAccount];
    v11 = [MEMORY[0x1E69B9000] sharedInstance];
    [(PKBillingAddressViewControllerConfiguration *)v7 setPeerPaymentService:v11];

    [(PKBillingAddressViewControllerConfiguration *)v7 setFeatureIdentifier:1];
    [(PKBillingAddressViewControllerConfiguration *)v7 setDetailViewStyle:self->_detailViewStyle];
    v8 = [[PKBillingAddressViewController alloc] initWithConfiguration:v7 handler:v3];
    if ([v4 pk_settings_useStateDrivenNavigation])
    {
      goto LABEL_3;
    }

    goto LABEL_7;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = [MEMORY[0x1E69B8CF8] defaults];
  v13 = [v12 defaultBillingAddressForPaymentPass:self->_pass];
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

  if ([v4 pk_settings_useStateDrivenNavigation])
  {
    [v4 pk_settings_pushViewController:v26];
  }

  else
  {
    [v4 pushViewController:v26 animated:1];
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

- (id)_privacyTermsSectionCellForRowIndex:(int64_t)a3 tableView:(id)a4
{
  v6 = a4;
  v7 = [(PKPaymentPassDetailViewController *)self _privacyTermsInfoRowTypeForRowIndex:a3];
  if (v7)
  {
    if (v7 == 2)
    {
      v9 = PKLocalizedPaymentString(&cfstr_TermsButtonTex.isa);
      a3 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v9 forTableView:v6];
      if (self->_loadingAccountTermsAndConditions)
      {
        v10 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
        [v10 startAnimating];
        [a3 setAccessoryView:v10];
      }

      PKAccessibilityIDCellSet(a3, *MEMORY[0x1E69B9D08]);
    }

    else if (v7 == 1)
    {
      v8 = PKLocalizedPaymentString(&cfstr_PrivacyButtonT.isa);
      a3 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v8 forTableView:v6];

      PKAccessibilityIDCellSet(a3, *MEMORY[0x1E69B9AE8]);
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

    a3 = 0;
  }

  return a3;
}

- (unint64_t)_numberOfPrivacyTermsInfoRows
{
  v3 = [(PKPaymentPassDetailViewController *)self _shouldShowPrivacyPolicyCell];
  v4 = [(PKPaymentPassDetailViewController *)self _shouldShowTermsCell];
  v5 = 1;
  if (v3)
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)_privacyTermsInfoRowTypeForRowIndex:(int64_t)a3
{
  if ([(PKPaymentPassDetailViewController *)self _shouldShowPrivacyPolicyCell])
  {
    v5 = 1;
    if (!a3)
    {
      return v5;
    }
  }

  else
  {
    v5 = 0;
  }

  if ([(PKPaymentPassDetailViewController *)self _shouldShowTermsCell]&& v5 == a3)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)_rowIndexForPrivacyTermsInfoRowType:(unint64_t)a3
{
  v5 = [(PKPaymentPassDetailViewController *)self _numberOfPrivacyTermsInfoRows];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  v7 = 0;
  while ([(PKPaymentPassDetailViewController *)self _privacyTermsInfoRowTypeForRowIndex:v7]!= a3)
  {
    if (v6 == ++v7)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v7;
}

- (void)_didSelectPrivacySectionAtRow:(int64_t)a3
{
  if (PKStoreDemoModeEnabled())
  {
    v9 = PKUIStoreDemoGatewayViewController();
    [(PKPaymentPassDetailViewController *)self presentViewController:v9 animated:1 completion:0];

    return;
  }

  v5 = [(PKPaymentPassDetailViewController *)self _privacyTermsInfoRowTypeForRowIndex:a3];
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

    [(PKPaymentPassDetailViewController *)self _presentTermsAndConditionsWithRow:a3];
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

- (void)_presentTermsAndConditionsWithRow:(unint64_t)a3
{
  location[3] = *MEMORY[0x1E69E9840];
  account = self->_account;
  if (account)
  {
    v6 = [(PKAccount *)account creditDetails];
    v7 = [v6 termsIdentifier];

    if (v7)
    {
      if (!self->_loadingAccountTermsAndConditions)
      {
        self->_loadingAccountTermsAndConditions = 1;
        v8 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:{-[PKDynamicTableViewController indexOfSectionIdentifier:](self, "indexOfSectionIdentifier:", @"PrivacyTermsInfo"}];
        v9 = [(PKPaymentPassDetailViewController *)self tableView];
        v10 = [v9 cellForRowAtIndexPath:v8];

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

        v15 = [(PKAccountTermsAndConditionsController *)v11 initWithAccount:self->_account webService:self->_webService context:v14 termsIdentifier:v7];
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
      v19 = [(PKAccount *)self->_account accountIdentifier];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v19;
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

  v22 = [(PKPeerPaymentWebService *)self->_peerPaymentWebService targetDevice];
  [v22 updateAccountWithCompletion:&__block_literal_global_804];
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

- (void)_didSelectPassOperationsSectionAtIndexPath:(id)a3
{
  v8 = a3;
  v4 = [v8 row];
  if ([(PKPaymentPassDetailViewController *)self _shouldShowTransferCell])
  {
    if (!v4)
    {
      [(PKPaymentPassDetailViewController *)self _didSelectTransferCardAtIndexPath:v8];
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v4)
  {
    v6 = [(PKPaymentPassDetailViewController *)self tableView];
    v7 = [v6 cellForRowAtIndexPath:v8];
    [(PKPaymentPassDetailViewController *)self _didSelectDeleteCardFromSourceItem:v7];
  }
}

- (BOOL)paymentApplicationShouldShowFullDPAN:(id)a3
{
  v4 = a3;
  v5 = [v4 sanitizedDPAN];
  if (v5)
  {
    v6 = [v4 appletDataFormat];
    if (PKEqualObjects())
    {
      v7 = 1;
    }

    else
    {
      v8 = [v4 appletDataFormat];
      if (PKEqualObjects())
      {
        v7 = 1;
      }

      else
      {
        v9 = [v4 appletDataFormat];
        if ((PKEqualObjects() & 1) != 0 || ([(PKPaymentPass *)self->_pass isEMoneyPass]& 1) != 0)
        {
          v7 = 1;
        }

        else
        {
          v7 = [(PKPaymentPass *)self->_pass isSuicaPass];
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)_cardInfoSectionGenerateCellWithOutput:(id *)a3 forRowIndex:(int64_t)a4 tableView:(id)a5
{
  v8 = a5;
  if (self->_peerPaymentAccount)
  {
    v9 = 0;
    goto LABEL_35;
  }

  v10 = [(PKPaymentPass *)self->_pass fieldForKey:*MEMORY[0x1E69BC0D0]];
  v11 = [v10 value];
  if (v11)
  {
    v12 = 1;
    if (a3 && !a4)
    {
      if (PKHandsOnDemoModeEnabled() && (PKFakeCardholderName(), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 length], v13, v14))
      {
        v15 = PKFakeCardholderName();
      }

      else
      {
        v15 = v11;
      }

      v16 = v15;
      v17 = PKLocalizedPaymentString(&cfstr_CardInfoName.isa);
      v18 = -[PKPaymentPassDetailViewController _infoCellWithPrimaryText:detailText:cellStyle:forTableView:](self, "_infoCellWithPrimaryText:detailText:cellStyle:forTableView:", v17, v16, [v10 cellStyle], v8);
      v19 = *a3;
      *a3 = v18;

      [*a3 setAccessibilityIdentifier:*MEMORY[0x1E69B95D0]];
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  v58 = v12;
  v20 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
  v21 = PKLocalizedPaymentString(&cfstr_CardInfoNumber.isa);
  v60 = v11;
  if ([(PKPaymentPass *)self->_pass supportsBarcodePayment])
  {
    v22 = [(PKPaymentPass *)self->_pass organizationName];
    v23 = PKLocalizedAquamanString(&cfstr_PassInfoAccoun.isa, &stru_1F3BD5BF0.isa, v22);

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

  v24 = [v20 sanitizedDPAN];
  if (!v24)
  {
    goto LABEL_21;
  }

  v25 = v24;
  v26 = [(PKPaymentPass *)self->_pass isOctopusPass];

  if (v26)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (![(PKPaymentPassDetailViewController *)self paymentApplicationShouldShowFullDPAN:v20])
  {
    if ([(PKPaymentPassDetailViewController *)self _shouldShowCardNumbersSection])
    {
LABEL_53:
      v28 = 0;
      goto LABEL_23;
    }

    v56 = [(PKPaymentPass *)self->_pass primaryAccountNumberSuffix];
    if (v56 || ([(PKPaymentPass *)self->_pass sanitizedPrimaryAccountNumber], (v56 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v57 = [(PKPaymentPass *)self->_pass sanitizedPrimaryAccountName];

      if (!v57)
      {
        goto LABEL_53;
      }
    }

    v30 = PKSanitizedPrimaryAccountRepresentationForPass();
LABEL_22:
    v28 = v30;
    goto LABEL_23;
  }

  v27 = [v20 sanitizedDPAN];
  v28 = PKFormattedSanitizedPAN();

  v29 = PKLocalizedPaymentString(&cfstr_CardInfoDigita.isa);

  v63 = v29;
LABEL_23:
  v61 = v10;
  v31 = [v28 length];
  v59 = v20;
  v62 = a4;
  if (v31)
  {
    v32 = v58 + 1;
    if (a3 && v58 == a4)
    {
      v33 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v63 detailText:v28 cellStyle:1 reuseIdentifier:@"cardNumberCell" forTableView:v8];
      v34 = [v33 detailTextLabel];
      [v34 setAdjustsFontSizeToFitWidth:1];

      v35 = *a3;
      *a3 = v33;
      v36 = v33;

      [*a3 setAccessibilityIdentifier:*MEMORY[0x1E69B95C0]];
    }
  }

  else
  {
    v32 = v58;
  }

  v37 = [(PKPaymentPass *)self->_pass customerServiceIdentifier];
  v38 = v37;
  if (v31 || !v37)
  {
    v9 = v32;
  }

  else
  {
    v9 = v32 + 1;
    if (a3 && v32 == v62)
    {
      v39 = PKPassLocalizedStringWithFormat();
      v40 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v39 detailText:v38 cellStyle:1 reuseIdentifier:@"PKTableViewCellReuseIdentifierCustomerServiceIdentifier" forTableView:v8, 0];

      v41 = [v40 detailTextLabel];
      [v41 setAdjustsFontSizeToFitWidth:1];

      v42 = *a3;
      *a3 = v40;
      v43 = v40;

      [*a3 setAccessibilityIdentifier:*MEMORY[0x1E69B9C28]];
    }
  }

  a4 = v62;
LABEL_35:
  if ([(PKPaymentPassDetailViewController *)self _shouldShowTransitExpressSettingCell])
  {
    detailViewStyle = self->_detailViewStyle;
    if (a3)
    {
      if (v9 == a4)
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
        v48 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v45 detailText:v47 cellStyle:1 reuseIdentifier:@"expressState" forTableView:v8];
        v49 = *a3;
        *a3 = v48;

        if (detailViewStyle)
        {
          [*a3 setAccessoryType:1];
        }

        [*a3 setAccessibilityIdentifier:*MEMORY[0x1E69B97B0]];
      }

      v50 = v9 + 1;
      if (!detailViewStyle)
      {
        v50 = v9 + 2;
        if (v9 + 1 == a4)
        {
          v51 = PKLocalizedPaymentString(&cfstr_ExpressTransit_0.isa);
          v52 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v51 forTableView:v8];
          v53 = *a3;
          *a3 = v52;

          [*a3 setAccessibilityIdentifier:*MEMORY[0x1E69B97B8]];
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

- (unint64_t)_accessPersonInfoSectionGenerateCellWithOutput:(id *)a3 forRowIndex:(int64_t)a4 tableView:(id)a5
{
  v8 = a5;
  v9 = [(PKPaymentPass *)self->_pass fieldForKey:*MEMORY[0x1E69BC0D0]];
  v10 = [v9 value];
  if (!v10)
  {
    v11 = 0;
    goto LABEL_16;
  }

  v11 = 1;
  if (a3 && !a4)
  {
    if (PKHandsOnDemoModeEnabled() && (PKFakeCardholderName(), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 length], v12, v13))
    {
      v14 = PKFakeCardholderName();
    }

    else
    {
      v14 = v10;
    }

    v15 = v14;
    if (self->_isAppleAccess)
    {
      v16 = @"EMPLOYEE_INFO_CARDHOLDER_NAME";
    }

    else
    {
      v17 = [v9 label];

      if (v17)
      {
        v18 = [v9 label];
LABEL_15:
        v19 = v18;
        v20 = -[PKPaymentPassDetailViewController _infoCellWithPrimaryText:detailText:cellStyle:forTableView:](self, "_infoCellWithPrimaryText:detailText:cellStyle:forTableView:", v18, v15, [v9 cellStyle], v8);
        v21 = *a3;
        *a3 = v20;

        v11 = 1;
        goto LABEL_16;
      }

      v16 = @"ACCESS_CARDHOLDER_NAME";
    }

    v18 = PKLocalizedPaymentString(&v16->isa);
    goto LABEL_15;
  }

LABEL_16:
  v40 = v9;
  v22 = v8;
  v23 = [(PKPaymentPass *)self->_pass fieldForKey:*MEMORY[0x1E69BC0E0], v10];
  v24 = [v23 value];
  if (v24)
  {
    v25 = v11 + 1;
    if (a3 && v11 == a4)
    {
      v26 = [v23 label];
      if (self->_isAppleAccess)
      {
        v27 = 1;
      }

      else
      {
        v27 = [v23 cellStyle];
      }

      v28 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v26 detailText:v24 cellStyle:v27 forTableView:v22];
      v29 = *a3;
      *a3 = v28;
    }
  }

  else
  {
    v25 = v11;
  }

  v30 = [(PKPaymentPass *)self->_pass fieldForKey:*MEMORY[0x1E69BC0D8]];
  v31 = [v30 value];
  if (!v31)
  {
    v32 = v25;
LABEL_30:
    v33 = v39;
    goto LABEL_36;
  }

  v32 = v25 + 1;
  if (!a3 || v25 != a4)
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
    v35 = 1;
  }

  else
  {
    v35 = [v30 cellStyle];
  }

  v33 = v39;
  v36 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v34 detailText:v31 cellStyle:v35 forTableView:v22];
  v37 = *a3;
  *a3 = v36;

LABEL_36:
  return v32;
}

- (id)_cardHolderPictureCellForTableView:(id)a3
{
  v4 = MEMORY[0x1E69DCAB8];
  pass = self->_pass;
  v6 = a3;
  v7 = [(PKPaymentPass *)pass cardHolderPicture];
  v8 = [v4 imageWithPKImage:v7];
  v9 = [(PKPaymentPassDetailViewController *)self _imageViewCellForImage:v8 forTableView:v6];

  return v9;
}

- (id)_cellForField:(id)a3 tableView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 label];
  v9 = [v7 value];
  v10 = -[PKPaymentPassDetailViewController _infoCellWithPrimaryText:detailText:cellStyle:forTableView:](self, "_infoCellWithPrimaryText:detailText:cellStyle:forTableView:", v8, v9, [v7 cellStyle], v6);

  LODWORD(self) = [v7 isDrillInField];
  if (self)
  {
    [v10 setAccessoryType:1];
  }

  PKAccessibilityIDCellSet(v10, *MEMORY[0x1E69B95D8]);

  return v10;
}

- (id)_renewActionForRow:(unint64_t)a3 commutePlanIdentifier:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(PKPaymentPassDetailViewController *)self _availableCommutePlanActions];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_33;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v27;
  v11 = *MEMORY[0x1E69BBC28];
  if (v5)
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
        objc_enumerationMutation(v6);
      }

      v15 = *(*(&v26 + 1) + 8 * i);
      if ([v15 type] == 2)
      {
        v16 = v5;
        v17 = v16;
        if (v11 == v5)
        {

          goto LABEL_18;
        }

        if (v25)
        {
          v18 = [v11 caseInsensitiveCompare:v16];

          if (!v18)
          {
LABEL_18:
            v19 = v9;
            v9 = v15;
            goto LABEL_28;
          }
        }

        else
        {
        }

        v19 = [v15 associatedPlanIdentifier];
        v20 = v17;
        v21 = v20;
        if (v19 == v20)
        {
        }

        else
        {
          if (!v5 || !v19)
          {

            goto LABEL_28;
          }

          v22 = [v19 caseInsensitiveCompare:v20];

          if (v22)
          {
            v11 = v24;
            continue;
          }
        }

        v19 = v9;
        v9 = v15;
        v11 = v24;
LABEL_28:

        continue;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v8);
LABEL_33:

  return v9;
}

- (id)_topUpActionForRow:(unint64_t)a3
{
  v4 = self;
  v53 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_displayableBalanceFields count]<= a3)
  {
    v32 = 0;
    goto LABEL_55;
  }

  v5 = [(NSArray *)v4->_displayableBalanceFields objectAtIndexedSubscript:a3];
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
  v36 = v4;
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
      v11 = [(PKPaymentPassDetailViewController *)v4 _availableActions:v35];
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
            v20 = v19;
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
            v22 = [v18 associatedEnteredValueIdentifier];

            if (!v22)
            {
              goto LABEL_53;
            }
          }

          v20 = [v18 relevantPropertyIdentifier];
          v23 = v10;
          v24 = v23;
          if (v20 == v23)
          {
            v26 = v23;
            v33 = v20;
            goto LABEL_51;
          }

          if (v10 && v20)
          {
            v25 = [v20 caseInsensitiveCompare:v23];

            if (!v25)
            {
              goto LABEL_52;
            }
          }

          else
          {
          }

          v26 = [v18 associatedEnteredValueIdentifier];
          v27 = v24;
          v28 = v27;
          if (v26 == v27)
          {

            v33 = v26;
LABEL_51:

LABEL_52:
LABEL_53:
            v32 = v18;

            v6 = v39;
            v5 = v40;
            goto LABEL_54;
          }

          if (v10 && v26)
          {
            v29 = [v26 caseInsensitiveCompare:v27];

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
            v30 = [v18 relevantPropertyIdentifier];
            if (v30)
            {
            }

            else
            {
              v31 = [v18 associatedEnteredValueIdentifier];

              if (!v31)
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
        v4 = v36;
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

- (id)_balanceForRow:(unint64_t)a3
{
  v4 = [(NSArray *)self->_displayableBalanceFields objectAtIndexedSubscript:a3];
  v5 = [v4 foreignReferenceIdentifiers];
  if (v5)
  {
    v6 = [(NSDictionary *)self->_balances objectForKey:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_balanceOrCommutePlanCellForRowIndex:(int64_t)a3 tableView:(id)a4
{
  displayableBalanceFields = self->_displayableBalanceFields;
  v7 = a4;
  v8 = [(NSArray *)displayableBalanceFields count];
  if (a3 >= v8)
  {
    [(PKPaymentPassDetailViewController *)self _commuterRouteCellForRowIndex:a3 - v8 tableView:v7];
  }

  else
  {
    [(PKPaymentPassDetailViewController *)self _balanceCellForRowIndex:a3 tableView:v7];
  }
  v9 = ;

  return v9;
}

- (id)_commuterRouteCellForRowIndex:(int64_t)a3 tableView:(id)a4
{
  v6 = a4;
  v7 = [(PKTransitBalanceModel *)self->_transitBalanceModel displayableCommutePlans];
  if ([v7 count] <= a3)
  {
    v17 = 0;
    goto LABEL_19;
  }

  v8 = [v7 objectAtIndex:a3];
  v9 = [v8 properties];
  v10 = [v8 title];
  v11 = [v10 label];
  v12 = [v10 value];
  if (PKCommutePlanFieldEitherLabelOrValueIsEmpty())
  {
LABEL_14:
    if ((v9 & 4) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v28 = v10;
  v13 = v11;
  v14 = v12;
  v15 = v14;
  if (v13 == v14)
  {

    v10 = v28;
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

    v10 = v28;
    if (!v27)
    {
      if ((v9 & 4) != 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v10 = v28;
  if ((v9 & 4) != 0)
  {
LABEL_15:
    v18 = [v8 passFieldForKey:*MEMORY[0x1E69BC580]];
    if (([v18 foreignReferenceType] - 1) <= 1)
    {
      v29 = v10;
      transitBalanceModel = self->_transitBalanceModel;
      v20 = [v18 foreignReferenceIdentifiers];
      v21 = [(PKTransitBalanceModel *)transitBalanceModel balanceForIdentifiers:v20];

      v22 = [v21 formattedValue];

      v10 = v29;
      v12 = v22;
    }
  }

LABEL_18:
  PKCommutePlanFormatTitleFromLabelAndValue();
  v23 = v11;

  v24 = v12;
  v17 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v24 detailText:v23 cellStyle:1 forTableView:v6];

  v25 = [(PKPaymentPassDetailViewController *)self _actionForCommutePlan:v8];
  [v17 setAccessoryType:{-[PKPaymentPassDetailViewController _commutePlanIsSelectable:action:](self, "_commutePlanIsSelectable:action:", v8, v25)}];
  PKAccessibilityIDCellSet(v17, *MEMORY[0x1E69B9608]);

LABEL_19:

  return v17;
}

- (id)_balanceCellForRowIndex:(int64_t)a3 tableView:(id)a4
{
  v6 = a4;
  if ([(NSArray *)self->_displayableBalanceFields count]<= a3)
  {
    v15 = 0;
  }

  else
  {
    v7 = [(NSArray *)self->_displayableBalanceFields objectAtIndexedSubscript:a3];
    v8 = MEMORY[0x1E696AEC0];
    v9 = [v7 label];
    v10 = [v7 value];
    v11 = [v8 stringWithFormat:@"Balance-%@-%@", v9, v10];

    detailViewStyle = self->_detailViewStyle;
    v13 = v11;
    v14 = v7;
    v15 = [v6 dequeueReusableCellWithIdentifier:v13];
    if (!v15)
    {
      v15 = [[PKBackFieldTableCell alloc] initWithBridgeStyle:detailViewStyle == 2 reuseIdentifier:v13];
    }

    [(PKBackFieldTableCell *)v15 setShowLinks:0];
    [(PKBackFieldTableCell *)v15 setField:v14];

    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v15];
    [(PKPaymentPassDetailViewController *)self _applyDefaultDynamicStylingToCell:v15];
    [(PKBackFieldTableCell *)v15 setAccessoryType:[(PKPaymentPassDetailViewController *)self _canSelectBalanceOrCommutePlanCellAtRowIndex:a3]];
  }

  PKAccessibilityIDCellSet(v15, *MEMORY[0x1E69B9500]);
  [(PKBackFieldTableCell *)v15 setIsAccessibilityElement:1];

  return v15;
}

- (id)_balanceReminderCellForRowIndex:(int64_t)a3 tableView:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (!self->_transitProperties)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_5;
  }

  if (a3)
  {
    v7 = 0;
    v8 = 0;
    --a3;
    goto LABEL_5;
  }

  v15 = PKLocalizedPaymentString(&cfstr_LowBalanceRemi.isa);
  v11 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v15 detailText:0 cellStyle:1 forTableView:v6];

  v7 = self->_transitPropertiesBalanceReminder;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = [(PKPaymentPassDetailViewController *)self _availableActions];
  v8 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v17 = *v29;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v16);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        if ([v19 type] == 1)
        {
          v8 = v19;
          goto LABEL_20;
        }
      }

      v8 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
    a3 = -1;
LABEL_5:
    if (a3 >= [(NSArray *)self->_displayableBalanceFields count])
    {
      v11 = 0;
    }

    else
    {
      v9 = [(NSArray *)self->_displayableBalanceFields objectAtIndexedSubscript:a3];
      v10 = [v9 label];
      v11 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v10 detailText:0 cellStyle:1 forTableView:v6];

      v12 = [v9 foreignReferenceIdentifiers];
      if ([v12 count])
      {
        v13 = [(NSDictionary *)self->_actionForBalanceIdentifier objectForKeyedSubscript:v12];

        v14 = [(NSMutableDictionary *)self->_reminderForBalanceIdentifier objectForKeyedSubscript:v12];

        v8 = v13;
        v7 = v14;
      }
    }
  }

  if (v8)
  {
    if (v7 && [(PKPaymentBalanceReminder *)v7 isEnabled])
    {
      v20 = [(PKPaymentBalanceReminder *)v7 threshold];
      v21 = [v8 enteredValueItem];
      v22 = [v21 currency];
      v23 = PKCurrencyAmountCreate(v20, v22);
      v24 = [v23 formattedStringValue];

      v25 = PKLocalizedPaymentString(&cfstr_LowBalanceRemi_0.isa, &stru_1F3BD5BF0.isa, v24);
      v26 = [v11 detailTextLabel];
      [v26 setText:v25];
    }

    else
    {
      v24 = [v11 detailTextLabel];
      v25 = PKLocalizedPaymentString(&cfstr_CommutePlanRen_2.isa);
      [v24 setText:v25];
    }

    [v11 setAccessoryType:1];
  }

  return v11;
}

- (id)_manufacturerInfoCellForTableView:(id)a3
{
  v4 = a3;
  v5 = PKLocalizedCredentialString(&cfstr_CarKeyIssuerNa.isa);
  v6 = [(PKPaymentPass *)self->_pass organizationName];
  v7 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v5 detailText:v6 cellStyle:1 reuseIdentifier:@"manufacturerInfo" forTableView:v4];

  [v7 setSelectionStyle:0];

  return v7;
}

- (unint64_t)_passOperationsCellWithOutput:(id *)a3 forRowIndex:(int64_t)a4 tableView:(id)a5
{
  v8 = a5;
  if ([(PKPaymentPassDetailViewController *)self _shouldShowTransferCell])
  {
    v9 = 1;
    if (a3 && !a4)
    {
      v10 = [(PKPaymentPassDetailViewController *)self _transferCardCellForTableView:v8];
      v11 = *a3;
      *a3 = v10;

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
    if (a3 && v9 == a4)
    {
      v13 = [(PKPaymentPassDetailViewController *)self _deleteCardCellForTableView:v8];
      v14 = *a3;
      *a3 = v13;
    }
  }

  else
  {
    v12 = v9;
  }

  return v12;
}

- (unint64_t)_contactBankCellWithOutput:(id *)a3 forRowIndex:(int64_t)a4 tableView:(id)a5
{
  v8 = a5;
  if (![(PKPaymentPassDetailViewController *)self _shouldShowContactCell])
  {
    v9 = 0;
    goto LABEL_12;
  }

  v9 = 1;
  if (a3 && !a4)
  {
    v10 = [(PKPaymentPass *)self->_pass organizationName];
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
        v22 = [v21 value];
        v23 = v22;
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = v10;
        }

        v12 = v24;

        v10 = v21;
LABEL_10:

        v10 = v12;
LABEL_11:
        v13 = PKLocalizedPaymentString(&cfstr_ContactIssuer.isa, &stru_1F3BD5BF0.isa, v10);
        v14 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v13 forTableView:v8];
        v15 = *a3;
        *a3 = v14;

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
    if (a3 && v9 == a4)
    {
      v17 = PKLocalizedPaymentString(&cfstr_ServiceModeCel.isa);
      v18 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v17 forTableView:v8];
      v19 = *a3;
      *a3 = v18;
    }
  }

  else
  {
    v16 = v9;
  }

  return v16;
}

- (id)_automaticPresentationCellForTableView:(id)a3
{
  automaticPresentationSwitch = self->_automaticPresentationSwitch;
  if (!automaticPresentationSwitch)
  {
    v5 = [[PKSettingTableCell alloc] initWithStyle:0 reuseIdentifier:@"PKSettingTableCellReuseIdentifier"];
    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v5];
    primaryTextColor = self->_primaryTextColor;
    v7 = [(PKSettingTableCell *)v5 textLabel];
    v8 = v7;
    if (primaryTextColor)
    {
      [v7 setTextColor:self->_primaryTextColor];
    }

    else
    {
      v9 = [MEMORY[0x1E69DC888] labelColor];
      [v8 setTextColor:v9];
    }

    v10 = [(PKSettingTableCell *)v5 textLabel];
    v11 = PKLocalizedString(&cfstr_SettingsAutoma_0.isa);
    [v10 setText:v11];

    [(PKSettingTableCell *)v5 setTarget:self action:sel__automaticPresentationSwitchChanged_];
    [(PKSettingTableCell *)v5 setOn:([(PKPaymentPass *)self->_pass settings]>> 4) & 1];
    v12 = self->_automaticPresentationSwitch;
    self->_automaticPresentationSwitch = v5;

    automaticPresentationSwitch = self->_automaticPresentationSwitch;
  }

  return automaticPresentationSwitch;
}

- (id)_passesInGroupCellForIndexPath:(id)a3 tableView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 row];
  if (v8 != [(PKGroup *)self->_group passCount])
  {
    v10 = [v7 dequeueReusableCellWithIdentifier:@"PKPassesInGroupTableCellReuseIdentifier"];
    if (!v10)
    {
      v10 = [[PKTableViewCellWithDefaultStyle alloc] initWithStyle:0 reuseIdentifier:@"PKPassesInGroupTableCellReuseIdentifier"];
    }

    [(PKPaymentPassDetailViewController *)self _applyDefaultDynamicStylingToCell:v10];
    v9 = -[PKGroup passAtIndex:](self->_group, "passAtIndex:", [v6 row]);
    v11 = [(PKTableViewCellWithDefaultStyle *)v10 textLabel];
    v21 = [(PKTableViewCellWithDefaultStyle *)v10 imageView];
    v12 = [v9 uniqueID];
    v13 = [(PKPaymentPass *)self->_pass uniqueID];
    if ([v12 isEqualToString:v13])
    {
      v14 = [(PKPaymentPass *)self->_pass isImageSetLoaded:0];

      if (v14)
      {
        v15 = [(PKPassHeaderView *)self->_passHeaderView passView];
LABEL_10:
        v16 = [(PKPassView *)v15 snapshotOfFrontFaceWithRequestedSize:52.0, 33.0];
        [v21 setImage:v16];
        v17 = [v9 fieldForKey:*MEMORY[0x1E69BC0D0]];
        v18 = [v17 value];
        [v11 setText:v18];

        if (self->_primaryTextColor)
        {
          [v11 setTextColor:?];
        }

        else
        {
          v19 = [MEMORY[0x1E69DC888] labelColor];
          [v11 setTextColor:v19];
        }

        [(PKTableViewCellWithDefaultStyle *)v10 setUserInteractionEnabled:0];

        goto LABEL_14;
      }
    }

    else
    {
    }

    v15 = [[PKPassView alloc] initWithPass:v9 content:4 suppressedContent:2039];
    [(PKPassView *)v15 setPaused:1];
    [(PKPassView *)v15 sizeToFit];
    goto LABEL_10;
  }

  v9 = PKLocalizedShareableCredentialString(&cfstr_EditPassesInGr.isa);
  v10 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v9 forTableView:v7];
LABEL_14:

  return v10;
}

- (id)_barcodeCell
{
  v3 = [[PKBarcodeTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"PKBarcodeTableViewCellReuseIdentifier"];
  [(PKBarcodeTableViewCell *)v3 setPass:self->_pass];

  return v3;
}

- (id)_settingsTableCellWithTitle:(id)a3 action:(SEL)a4 setOn:(BOOL)a5 enabled:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = [[PKSettingTableCell alloc] initWithStyle:0 reuseIdentifier:@"PKSettingTableCellReuseIdentifier"];
  [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v11];
  primaryTextColor = self->_primaryTextColor;
  v13 = [(PKSettingTableCell *)v11 textLabel];
  v14 = v13;
  if (primaryTextColor)
  {
    [v13 setTextColor:self->_primaryTextColor];
  }

  else
  {
    v15 = [MEMORY[0x1E69DC888] labelColor];
    [v14 setTextColor:v15];
  }

  v16 = [(PKSettingTableCell *)v11 textLabel];
  [v16 setText:v10];

  [(PKSettingTableCell *)v11 setTarget:self action:a4];
  [(PKSettingTableCell *)v11 setOn:v7];
  [(PKSettingTableCell *)v11 setUserInteractionEnabled:v6];

  return v11;
}

- (id)_messagesSwitchCellForTableView:(id)a3
{
  messagesSwitch = self->_messagesSwitch;
  if (!messagesSwitch)
  {
    v5 = PKLocalizedPaymentString(&cfstr_MessageService_1.isa);
    v6 = [(PKPaymentPass *)self->_pass settings];
    if (PKStoreDemoModeEnabled())
    {
      v7 = 0;
    }

    else
    {
      v7 = PKUIOnlyDemoModeEnabled() ^ 1;
    }

    v8 = [(PKPaymentPassDetailViewController *)self _settingsTableCellWithTitle:v5 action:sel__messagesSwitchChanged_ setOn:(v6 >> 6) & 1 enabled:v7];
    v9 = self->_messagesSwitch;
    self->_messagesSwitch = v8;

    PKAccessibilityIDCellSet(self->_messagesSwitch, *MEMORY[0x1E69B9C78]);
    messagesSwitch = self->_messagesSwitch;
  }

  return messagesSwitch;
}

- (id)_peerPaymentNotificationsSwitchCellForIndexPath:(id)a3 tableView:(id)a4
{
  v5 = [a3 row];
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
      v9 = [(PKPaymentPass *)self->_pass settings];
      if (PKStoreDemoModeEnabled())
      {
        v10 = 0;
      }

      else
      {
        v10 = PKUIOnlyDemoModeEnabled() ^ 1;
      }

      v15 = [(PKPaymentPassDetailViewController *)self _settingsTableCellWithTitle:v8 action:sel__transactionsSwitchChanged_ setOn:(v9 >> 3) & 1 enabled:v10];
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

- (id)_accountServiceNotificationsSwitchCellForIndexPath:(id)a3 tableView:(id)a4
{
  v6 = a4;
  v7 = [a3 row];
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
      v19 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v18 forTableView:v6];
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
      v10 = [(PKPaymentPass *)self->_pass settings];
      if (PKStoreDemoModeEnabled())
      {
        v11 = 0;
      }

      else
      {
        v11 = PKUIOnlyDemoModeEnabled() ^ 1;
      }

      v21 = [(PKPaymentPassDetailViewController *)self _settingsTableCellWithTitle:v9 action:sel__transactionsSwitchChanged_ setOn:(v10 >> 3) & 1 enabled:v11];
      v22 = self->_transactionsSwitch;
      self->_transactionsSwitch = v21;

      PKAccessibilityIDCellSet(self->_transactionsSwitch, *MEMORY[0x1E69B9D60]);
      transactionsSwitch = self->_transactionsSwitch;
    }

    v13 = transactionsSwitch;
  }

  return v13;
}

- (id)_transactionsSwitchCellForIndexPath:(id)a3 tableView:(id)a4
{
  v6 = a3;
  v7 = a4;
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
      v19 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v18 forTableView:v7];
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

  if ([v6 row])
  {
    if ([v6 row] != 1)
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
    v16 = [(PKPaymentPass *)self->_pass settings];
    if (PKStoreDemoModeEnabled())
    {
      v17 = 0;
    }

    else
    {
      v17 = PKUIOnlyDemoModeEnabled() ^ 1;
    }

    v21 = [(PKPaymentPassDetailViewController *)self _settingsTableCellWithTitle:v15 action:sel__transactionsSwitchChanged_ setOn:(v16 >> 3) & 1 enabled:v17];
    v22 = self->_transactionsSwitch;
    self->_transactionsSwitch = v21;

    PKAccessibilityIDCellSet(self->_transactionsSwitch, *MEMORY[0x1E69B9D60]);
    transactionsSwitch = self->_transactionsSwitch;
  }

  v13 = transactionsSwitch;
LABEL_20:

  return v13;
}

- (id)_transactionCellForIndexPath:(id)a3 tableView:(id)a4
{
  v6 = a3;
  v7 = [a4 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionTableCellReuseIdentifier"];
  v8 = [v6 row];

  v9 = [(PKPaymentPassDetailViewController *)self _transactionAtIndex:v8];
  if (!v7)
  {
    v7 = [[PKPaymentTransactionTableCell alloc] initWithStyle:3 reuseIdentifier:@"PKPaymentTransactionTableCellReuseIdentifier"];
    [(PKPaymentPassDetailViewController *)self _applyDefaultStaticStylingToCell:v7];
    v10 = [(PKPaymentTransactionTableCell *)v7 textLabel];
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [v10 setFont:v11];
  }

  transactionSourceCollection = self->_transactionSourceCollection;
  v13 = [v9 transactionSourceIdentifier];
  v14 = [(PKTransactionSourceCollection *)transactionSourceCollection transactionSourceForTransactionSourceIdentifier:v13];

  v15 = [(PKPaymentDataProvider *)self->_paymentServiceDataProvider deviceName];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
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
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = -[objc_class descriptorForRequiredKeysWithThreeDTouchEnabled:](v3, "descriptorForRequiredKeysWithThreeDTouchEnabled:", [v4 _supportsForceTouch]);
  v11[1] = v5;
  v6 = [off_1EE9A1F20() descriptorForRequiredKeys];
  v11[2] = v6;
  v7 = [off_1EE9A1F28() descriptorForRequiredKeys];
  v8 = *MEMORY[0x1E695C208];
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = *MEMORY[0x1E695C330];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  return v9;
}

- (id)_deleteContextualActionForTransaction:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DC8E8];
  v6 = PKLocalizedPaymentString(&cfstr_TransactionsSw.isa);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__PKPaymentPassDetailViewController__deleteContextualActionForTransaction___block_invoke;
  v11[3] = &unk_1E801BDA8;
  objc_copyWeak(&v13, &location);
  v7 = v4;
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

- (void)deleteTransaction:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 transactionType] == 15)
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
      v16 = [MEMORY[0x1E696AC88] indexPathForRow:-[NSArray indexOfObject:](self->_transactions inSection:{"indexOfObject:", v6), -[PKDynamicTableViewController indexOfSectionIdentifier:](self, "indexOfSectionIdentifier:", @"Transactions"}];
      v26 = v15;
      v17 = [v15 popoverPresentationController];
      v18 = [(PKPaymentPassDetailViewController *)self tableView];
      v25 = v16;
      v19 = [v18 cellForRowAtIndexPath:v16];
      [v17 setSourceView:v19];

      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __73__PKPaymentPassDetailViewController_deleteTransaction_completionHandler___block_invoke;
      aBlock[3] = &unk_1E8026278;
      objc_copyWeak(&v32, &location);
      v20 = v7;
      v31 = v20;
      v30 = v6;
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

  if (v7)
  {
    (*(v7 + 2))(v7, 0);
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

- (BOOL)_transactionCellEditActionsGenerateWithOutput:(id *)a3 forRowIndex:(int64_t)a4 tableView:(id)a5
{
  v8 = a5;
  if (a3)
  {
    v9 = [MEMORY[0x1E695DF70] array];
  }

  else
  {
    v9 = 0;
  }

  if ([(PKPaymentPassDetailViewController *)self _transactionsCount]<= a4)
  {
    v12 = 0;
    if (!a3)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v10 = [(PKPaymentPassDetailViewController *)self _transactionAtIndex:a4];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v10 isDeletable])
  {
    if (v9)
    {
      v11 = [(PKPaymentPassDetailViewController *)self _deleteContextualActionForTransaction:v10];
      [v9 addObject:v11];
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v10 merchant];
  if (([v13 shouldIgnoreMapsMatches] & 1) == 0)
  {
    v14 = [v13 mapsMerchant];
    v15 = [v14 identifier];

    if (v15)
    {
      if (!v9)
      {
        PKTransactionDebugDetailsEnabled();
        goto LABEL_21;
      }

      v16 = [v10 identifier];
      v17 = MEMORY[0x1E69DC8E8];
      v18 = PKLocalizedPaymentString(&cfstr_TransactionsSw_0.isa);
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __105__PKPaymentPassDetailViewController__transactionCellEditActionsGenerateWithOutput_forRowIndex_tableView___block_invoke;
      v43[3] = &unk_1E80262A0;
      v43[4] = self;
      v44 = v16;
      v45 = v8;
      v46 = v10;
      v19 = v16;
      v20 = [v17 contextualActionWithStyle:0 title:v18 handler:v43];

      v21 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"mappin"];
      [v20 setImage:v21];

      [v9 addObject:v20];
      v12 = 1;
    }
  }

  if ((PKTransactionDebugDetailsEnabled() & 1) == 0)
  {
    goto LABEL_22;
  }

  if (v9)
  {
    v22 = MEMORY[0x1E69DC8E8];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __105__PKPaymentPassDetailViewController__transactionCellEditActionsGenerateWithOutput_forRowIndex_tableView___block_invoke_2;
    v40[3] = &unk_1E80262C8;
    v41 = v10;
    v42 = self;
    v23 = [v22 contextualActionWithStyle:0 title:@"Debug" handler:v40];
    v24 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ant"];
    [v23 setImage:v24];

    v25 = [MEMORY[0x1E69DC888] systemPurpleColor];
    [v23 setBackgroundColor:v25];

    [v9 addObject:v23];
  }

LABEL_21:
  v12 = 1;
LABEL_22:
  if ([(PKPaymentPassDetailViewController *)self _transactionDeepLinkingEnabled])
  {
    if (v9)
    {
      v26 = MEMORY[0x1E69DC8E8];
      v27 = PKLocalizedPaymentString(&cfstr_TransactionsSw_1.isa);
      v34 = MEMORY[0x1E69E9820];
      v35 = 3221225472;
      v36 = __105__PKPaymentPassDetailViewController__transactionCellEditActionsGenerateWithOutput_forRowIndex_tableView___block_invoke_3;
      v37 = &unk_1E80262C8;
      v38 = v8;
      v39 = self;
      v28 = [v26 contextualActionWithStyle:0 title:v27 handler:&v34];

      v29 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"info.circle", v34, v35, v36, v37}];
      [v28 setImage:v29];

      v30 = [MEMORY[0x1E69DC888] systemBlueColor];
      [v28 setBackgroundColor:v30];

      [v9 addObject:v28];
    }

    v12 = 1;
  }

  if (a3)
  {
LABEL_27:
    v31 = [v9 copy];
    v32 = *a3;
    *a3 = v31;
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

- (int64_t)_transitCellGenerateCellWithOutput:(id *)a3 forRowIndex:(int64_t)a4 tableView:(id)a5
{
  v8 = a5;
  v9 = [(PKTransitPassProperties *)self->_transitProperties felicaProperties];
  if ([v9 hasGreenCarTicket])
  {
    v10 = 1;
    if (a3 && !a4)
    {
      v11 = [(PKPaymentPassDetailViewController *)self _subtitleCellForTableView:v8];
      v12 = *a3;
      *a3 = v11;

      v13 = [v9 greenCarValidityStartDate];
      v14 = [v13 calendar];
      v15 = [v13 date];
      v16 = [v14 dateByAddingUnit:16 value:1 toDate:v15 options:0];

      v17 = [MEMORY[0x1E695DF00] date];
      v18 = [v17 compare:v16];

      v19 = PKLocalizedPaymentString(&cfstr_TicketSectionG.isa);
      if (v18 == -1)
      {
        v35 = v14;
        v21 = [v9 greenCarOriginStation];
        v22 = [v9 greenCarDestinationStation];
        v23 = v22;
        if (v21 && v22)
        {
          v24 = PKLocalizedPaymentString(&cfstr_TransitTransac.isa, &cfstr_12.isa, v21, v22);
          v20 = 0;
        }

        else
        {
          if (v21)
          {
            v25 = v21;
          }

          else
          {
            v25 = v22;
          }

          v20 = v25;
        }

        v14 = v35;
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

  if (!a3)
  {
    goto LABEL_25;
  }

  v19 = 0;
  v20 = 0;
LABEL_18:
  [*a3 setSelectionStyle:3];
  [*a3 setAccessoryType:1];
  v26 = [*a3 textLabel];
  [v26 setText:v19];

  v27 = [*a3 textLabel];
  v28 = v27;
  if (self->_primaryTextColor)
  {
    [v27 setTextColor:?];
  }

  else
  {
    v29 = [MEMORY[0x1E69DC888] labelColor];
    [v28 setTextColor:v29];
  }

  v30 = [*a3 detailTextLabel];
  [v30 setText:v20];

  v31 = [*a3 detailTextLabel];
  v32 = v31;
  if (self->_detailTextColor)
  {
    [v31 setTextColor:?];
  }

  else
  {
    v33 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v32 setTextColor:v33];
  }

LABEL_25:
  return v10;
}

- (void)_didSelectTransitTicketAtRow:(int64_t)a3
{
  v5 = [(PKTransitPassProperties *)self->_transitProperties felicaProperties];
  v6 = [v5 hasGreenCarTicket];
  if (!a3 && v6 && (v7 = [[PKGreenTicketDetailViewController alloc] initWithFelicaProperty:v5], PKLocalizedPaymentString(&cfstr_TicketSectionG.isa), v8 = objc_claimAutoreleasedReturnValue(), [(PKGreenTicketDetailViewController *)v7 setTitle:v8], v8, v7))
  {
    [(PKTransitTicketDetailViewController *)v7 setPrimaryTextColor:self->_primaryTextColor];
    [(PKTransitTicketDetailViewController *)v7 setSecondaryTextColor:self->_detailTextColor];
    v9 = [(PKPaymentPassDetailViewController *)self navigationController];
    if ([v9 pk_settings_useStateDrivenNavigation])
    {
      [v9 pk_settings_pushViewController:v7];
    }

    else
    {
      [v9 pushViewController:v7 animated:1];
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

- (id)_paymentApplicationsCellForIndexPath:(id)a3 tableView:(id)a4
{
  v6 = a3;
  v7 = a4;
  primaryTextColor = self->_primaryTextColor;
  if (primaryTextColor)
  {
    v9 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:primaryTextColor forTableView:v7];
  }

  else
  {
    v10 = [MEMORY[0x1E69DC888] labelColor];
    v9 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:v10 forTableView:v7];
  }

  v11 = -[NSArray objectAtIndex:](self->_contactlessPaymentApplications, "objectAtIndex:", [v6 row]);
  v12 = [v11 displayName];
  v13 = [v9 textLabel];
  [v13 setText:v12];

  v14 = [(PKPaymentApplication *)self->_defaultPaymentApplication applicationIdentifier];
  v15 = [v11 applicationIdentifier];
  v16 = [v14 isEqual:v15];

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

- (void)_didSelectPaymentApplicationSectionRowAtIndexPath:(id)a3
{
  v4 = a3;
  if (!self->_changingDefaultPaymentApplication)
  {
    self->_changingDefaultPaymentApplication = 1;
    v5 = [(PKPaymentPassDetailViewController *)self tableView];
    v6 = [v5 cellForRowAtIndexPath:v4];

    if (self->_detailViewStyle == 2)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      v8 = [MEMORY[0x1E69DC888] whiteColor];
      [v7 setColor:v8];

      [v7 startAnimating];
      [v6 setAccessoryView:v7];
    }

    else
    {
      v7 = 0;
    }

    v9 = -[NSArray objectAtIndex:](self->_contactlessPaymentApplications, "objectAtIndex:", [v4 row]);
    objc_initWeak(&location, self);
    paymentServiceDataProvider = self->_paymentServiceDataProvider;
    v11 = [(PKPaymentPass *)self->_pass uniqueID];
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
    [(PKPaymentDataProvider *)paymentServiceDataProvider setDefaultPaymentApplication:v14 forPassUniqueIdentifier:v11 completion:v15];

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
        v9 = [(PKPaymentPassDetailViewController *)self tableView];
        v10 = [MEMORY[0x1E696AC88] indexPathForRow:v5 inSection:{-[PKDynamicTableViewController indexOfSectionIdentifier:](self, "indexOfSectionIdentifier:", @"PaymentApplications"}];
        v11 = [v9 cellForRowAtIndexPath:v10];

        if (v11)
        {
          v12 = [(PKPaymentApplication *)self->_defaultPaymentApplication applicationIdentifier];
          v13 = [v8 applicationIdentifier];
          v14 = [v12 isEqual:v13];

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

- (id)_deviceAccountNumberCellForIndexPath:(id)a3 tableView:(id)a4
{
  devicePaymentApplications = self->_devicePaymentApplications;
  v7 = a4;
  v8 = a3;
  if ([(NSArray *)devicePaymentApplications count]< 2)
  {
    v10 = PKLocalizedPaymentString(&cfstr_DpanTitle.isa);
  }

  else
  {
    v9 = -[NSArray objectAtIndex:](self->_devicePaymentApplications, "objectAtIndex:", [v8 row]);
    v10 = [v9 displayName];
  }

  v11 = self->_devicePaymentApplications;
  v12 = [v8 row];

  v13 = [(NSArray *)v11 objectAtIndex:v12];
  v14 = PKSanitizedDeviceAccountNumberForPaymentApplication();

  v15 = [(PKPaymentPassDetailViewController *)self _stackedInfoCellWithPrimaryText:v10 detailText:v14 cellStyle:1 forTableView:v7];

  return v15;
}

- (id)_merchantTokensCellForTableView:(id)a3
{
  v4 = a3;
  v5 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokens_9.isa);
  v6 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v5 detailText:0 cellStyle:1 reuseIdentifier:@"merchantTokens" forTableView:v4];

  v7 = [(PKRetrieveMerchantTokensResponse *)self->_merchantTokensResponse merchantTokens];
  v8 = [v7 count];

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
      v9 = [v6 textLabel];
      v10 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v9 setTextColor:v10];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      [v9 startAnimating];
      [v6 setAccessoryView:v9];
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

- (id)_transferCardCellForTableView:(id)a3
{
  v4 = a3;
  warningTextColor = self->_warningTextColor;
  if (warningTextColor)
  {
    v6 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:warningTextColor forTableView:v4];
  }

  else
  {
    v7 = [MEMORY[0x1E69DC888] systemRedColor];
    v6 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:v7 forTableView:v4];
  }

  v8 = PKAssignedDeviceName();
  v9 = PKLocalizedPaymentString(&cfstr_SettingsTransf_7.isa, &stru_1F3BD5BF0.isa, v8);

  v10 = [v6 textLabel];
  [v10 setText:v9];

  v11 = [(PKPaymentPassDetailViewController *)self _isDeletingPass];
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

  v13 = self->_performingCardTransfer || v11;
  v14 = [v6 textLabel];
  [v14 setEnabled:!v13];

  PKAccessibilityIDCellSet(v6, *MEMORY[0x1E69B9D68]);

  return v6;
}

- (id)_deleteCardCellForTableView:(id)a3
{
  v4 = a3;
  warningTextColor = self->_warningTextColor;
  if (warningTextColor)
  {
    v6 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:warningTextColor forTableView:v4];
  }

  else
  {
    v7 = [MEMORY[0x1E69DC888] systemRedColor];
    v6 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:v7 forTableView:v4];
  }

  if ([(PKPaymentPass *)self->_pass supportsBarcodePayment])
  {
    v8 = PKLocalizedAquamanString(&cfstr_DeletePassAcco.isa);
LABEL_29:
    v12 = v8;
    goto LABEL_30;
  }

  v9 = [(PKPaymentPass *)self->_pass isIdentityPass];
  pass = self->_pass;
  if (v9)
  {
    v11 = [(PKPaymentPass *)pass identityType];
    v12 = 0;
    if (v11 > 2)
    {
      if ((v11 - 3) >= 3)
      {
        goto LABEL_30;
      }
    }

    else if (v11)
    {
      if (v11 == 1)
      {
        v13 = @"DELETE_PASS_DL";
      }

      else
      {
        if (v11 != 2)
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

  v14 = [(PKPaymentPass *)self->_pass accessType];
  v12 = 0;
  if (v14 <= 2)
  {
    if (v14)
    {
      if (v14 != 1)
      {
        if (v14 != 2)
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

  if ((v14 - 5) < 2 || v14 == 3)
  {
LABEL_27:
    v15 = @"DELETE_PASS_KEY";
    goto LABEL_28;
  }

  if (v14 == 4)
  {
    v8 = PKLocalizedCredentialString(&cfstr_RemoveCarKey.isa);
    goto LABEL_29;
  }

LABEL_30:
  v17 = [v6 textLabel];
  [v17 setText:v12];

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

  v20 = [v6 textLabel];
  [v20 setEnabled:v19];

  PKAccessibilityIDCellSet(v6, *MEMORY[0x1E69B9B58]);
  [v6 setIsAccessibilityElement:1];

  return v6;
}

- (id)_peerPaymentBalanceCellForRowIndex:(int64_t)a3 tableView:(id)a4
{
  v5 = a4;
  v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_19.isa);
  v7 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount currentBalance];
  v8 = [v7 formattedStringValue];
  v9 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v6 detailText:v8 cellStyle:1 forTableView:v5];

  PKAccessibilityIDCellSet(v9, *MEMORY[0x1E69B9500]);

  return v9;
}

- (id)_peerPaymentMoneyActionCellForRowIndex:(int64_t)a3 tableView:(id)a4
{
  v6 = a4;
  v7 = [(PKPaymentPassDetailViewController *)self _peerPaymentMoneyActionForRowIndex:a3];
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
    v11 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v10 forTableView:v6];
    PKAccessibilityIDCellSet(v11, *v8);
    goto LABEL_7;
  }

  v10 = 0;
  v11 = 0;
LABEL_7:

  return v11;
}

- (id)_peerPaymentManualIdentityVerificationCellForRowIndex:(int64_t)a3 tableView:(id)a4
{
  v5 = a4;
  v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_22.isa);
  v7 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v6 forTableView:v5];

  PKAccessibilityIDCellSet(v7, *MEMORY[0x1E69B9870]);

  return v7;
}

- (id)_peerPaymentParticipantGraduationCellForRowIndex:(int64_t)a3 tableView:(id)a4
{
  v5 = a4;
  v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_23.isa);
  v7 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v6 forTableView:v5];

  PKAccessibilityIDCellSet(v7, *MEMORY[0x1E69B9C50]);

  return v7;
}

- (id)_peerPaymentAccountActionCellForRowIndex:(int64_t)a3 tableView:(id)a4
{
  v5 = a4;
  v6 = self->_peerPaymentAccountResolution - 1;
  if (v6 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = PKLocalizedPeerPaymentString(&off_1E8026830[v6]->isa);
  }

  v8 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v7 forTableView:v5];
  PKAccessibilityIDCellSet(v8, *MEMORY[0x1E69B93D0]);

  return v8;
}

- (id)_peerPaymentAutomaticallyAcceptPaymentsCellForRowIndex:(int64_t)a3 tableView:(id)a4
{
  v6 = a4;
  if (a3 == 1)
  {
    v7 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_27.isa);
    v8 = [(PKPaymentPassDetailViewController *)self _checkmarkCellWithText:v7 forTableView:v6];
    v11 = [(PKPeerPaymentPreferences *)self->_peerPaymentPreferences requiresConfirmation];
    v10 = MEMORY[0x1E69B9928];
    if (!v11)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (!a3)
  {
    v7 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_26.isa);
    v8 = [(PKPaymentPassDetailViewController *)self _checkmarkCellWithText:v7 forTableView:v6];
    v9 = [(PKPeerPaymentPreferences *)self->_peerPaymentPreferences requiresConfirmation];
    v10 = MEMORY[0x1E69B94D8];
    if (v9)
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

- (id)_peerPaymentBankAccountsCellForRowIndex:(int64_t)a3 tableView:(id)a4
{
  v5 = a4;
  primaryTextColor = self->_primaryTextColor;
  if (primaryTextColor)
  {
    v7 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:primaryTextColor forTableView:v5];
  }

  else
  {
    v8 = [MEMORY[0x1E69DC888] labelColor];
    v7 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:v8 forTableView:v5];
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
  v11 = [v7 textLabel];
  [v11 setText:v10];

  [v7 setAccessoryType:1];
  PKAccessibilityIDCellSet(v7, *MEMORY[0x1E69B9508]);

  return v7;
}

- (id)_peerPaymentStatementCellForTableView:(id)a3
{
  v4 = a3;
  v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_3.isa);
  v6 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v5 forTableView:v4];

  if (self->_requestingStatement)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v7 startAnimating];
    [v6 setAccessoryView:v7];
    v8 = [v6 textLabel];
    v9 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [v8 setTextColor:v9];

    v10 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_4.isa);
    [v8 setText:v10];

    v11 = [v6 detailTextLabel];
    [v11 setText:0];
  }

  else
  {
    if (!self->_sentStatement)
    {
      goto LABEL_6;
    }

    [v6 setAccessoryView:0];
    [v6 setAccessoryType:3];
    v7 = [v6 textLabel];
    v12 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [v7 setTextColor:v12];

    v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_5.isa);
    [v7 setText:v13];

    v8 = [v6 detailTextLabel];
    [v8 setText:0];
  }

LABEL_6:
  PKAccessibilityIDCellSet(v6, *MEMORY[0x1E69B9CB0]);

  return v6;
}

- (id)_peerPaymentBillingAddressCellForTableView:(id)a3
{
  v3 = [(PKPaymentPassDetailViewController *)self _subtitleCellForTableView:a3];
  v4 = [v3 textLabel];
  v5 = *MEMORY[0x1E69DDCF8];
  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v4 setFont:v6];

  [v4 setNumberOfLines:0];
  v7 = [v3 detailTextLabel];
  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v5];
  [v7 setFont:v8];

  v9 = [MEMORY[0x1E69DC888] systemRedColor];
  [v7 setTextColor:v9];

  return v3;
}

- (id)_familyMemberCellForIndexPath:(id)a3 tableView:(id)a4
{
  v6 = a4;
  v7 = [a3 row];
  if (v7 >= [(NSArray *)self->_sortedFamilyMemberRowModels count])
  {
    v8 = PKLocalizedPeerPaymentString(&cfstr_BackOfPassFami_0.isa);
    [(PKPaymentPassDetailViewController *)self _linkCellWithText:v8 forTableView:v6];
  }

  else
  {
    v8 = [(NSArray *)self->_sortedFamilyMemberRowModels objectAtIndex:v7];
    [(PKPaymentPassDetailViewController *)self _familyMemberCellWithRowModel:v8 forTableView:v6];
  }
  v9 = ;

  PKAccessibilityIDCellSet(v9, *MEMORY[0x1E69B97C0]);

  return v9;
}

- (id)_accountServiceCreditDetailsCellForRowIndex:(int64_t)a3 tableView:(id)a4
{
  v6 = a4;
  v7 = [(PKAccount *)self->_account creditDetails];
  v31 = [v7 accountSummary];
  v8 = [(PKPaymentPassDetailViewController *)self _accountServiceCreditDetailsRowForRowIndex:a3];
  v9 = [(PKAccount *)self->_account creditDetails];
  v10 = [v9 currencyCode];

  v11 = *MEMORY[0x1E69B9650];
  v12 = 0;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      [(PKPaymentPassDetailViewController *)self _accountFeature];
      v13 = PKLocalizedFeatureString();
      v24 = [v31 availableCredit];
      v25 = PKCurrencyAmountCreate(v24, v10);
      v16 = [v25 formattedStringValue];

      v17 = MEMORY[0x1E69B94E8];
      goto LABEL_12;
    }

    if (v8 == 3)
    {
      [(PKPaymentPassDetailViewController *)self _accountFeature];
      v13 = PKLocalizedFeatureString();
      v18 = [(PKAccount *)self->_account creditDetails];
      v19 = [v18 rates];
      v16 = [v19 formattedAPRForPurchasesPercentageString];

      v17 = MEMORY[0x1E69B9388];
      goto LABEL_12;
    }

LABEL_8:
    v16 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  if (!v8)
  {
    [(PKPaymentPassDetailViewController *)self _accountFeature];
    v13 = PKLocalizedFeatureString();
    v20 = [v7 cardBalance];
    v21 = [v20 amount];
    v22 = [MEMORY[0x1E696AB90] zero];
    v23 = [v21 compare:v22];

    if (v23 == -1)
    {
      v27 = [v20 negativeValue];

      v28 = [v27 formattedStringValue];
      v16 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, v28);

      v20 = v27;
    }

    else
    {
      v16 = [v20 formattedStringValue];
    }

    v12 = [(PKPaymentPassDetailViewController *)self isTotalBalanceCellSelectable];
    v26 = *MEMORY[0x1E69B9500];

    v11 = v20;
    goto LABEL_15;
  }

  if (v8 != 1)
  {
    goto LABEL_8;
  }

  [(PKPaymentPassDetailViewController *)self _accountFeature];
  v13 = PKLocalizedFeatureString();
  v14 = [v31 creditLimit];
  v15 = PKCurrencyAmountCreate(v14, v10);
  v16 = [v15 formattedStringValue];

  v17 = MEMORY[0x1E69B9658];
LABEL_12:
  v26 = *v17;
  v12 = 0;
LABEL_15:

  v11 = v26;
LABEL_16:
  v29 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v13 detailText:v16 cellStyle:1 forTableView:v6];
  [v29 setAccessoryType:v12];
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

- (BOOL)_accountServiceCreditDetailsRowIsEnabled:(unint64_t)a3
{
  v6 = [(PKAccount *)self->_account creditDetails];
  v5 = [v6 accountSummary];

  LOBYTE(v6) = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v7 = [v5 creditLimit];
      v8 = [v5 availableCredit];
      v11 = [MEMORY[0x1E696AB90] notANumber];
      if (v7)
      {
        LOBYTE(v6) = 0;
        if (([v7 isEqualToNumber:v11] & 1) == 0 && v8)
        {
          LODWORD(v6) = [v8 isEqualToNumber:v11] ^ 1;
        }
      }

      else
      {
        LOBYTE(v6) = 0;
      }

      goto LABEL_21;
    }

    if (a3 == 3)
    {
      v7 = [(PKAccount *)self->_account creditDetails];
      v8 = [v7 rates];
      LOBYTE(v6) = v8 != 0;
      goto LABEL_21;
    }
  }

  else
  {
    if (!a3)
    {
      v9 = [v5 adjustedBalance];
      v7 = v9;
      if (self->_detailViewStyle)
      {
        v10 = v9 == 0;
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

    if (a3 == 1)
    {
      v7 = [v5 creditLimit];
      if (v7)
      {
LABEL_5:
        v8 = [MEMORY[0x1E696AB90] notANumber];
        LODWORD(v6) = [v7 isEqualToNumber:v8] ^ 1;
LABEL_21:

        goto LABEL_22;
      }

LABEL_14:
      LOBYTE(v6) = 0;
LABEL_22:
    }
  }

  return v6;
}

- (unint64_t)_accountServiceCreditDetailsRowForRowIndex:(int64_t)a3
{
  v5 = 0;
  v6 = 0;
  do
  {
    if ([(PKPaymentPassDetailViewController *)self _accountServiceCreditDetailsRowIsEnabled:v5])
    {
      if (v6 == a3)
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

- (id)_accountServiceBankAccountsCellForRowIndex:(int64_t)a3 tableView:(id)a4
{
  v6 = a4;
  primaryTextColor = self->_primaryTextColor;
  if (primaryTextColor)
  {
    v8 = primaryTextColor;
  }

  else
  {
    v8 = [MEMORY[0x1E69DC888] labelColor];
  }

  v9 = v8;
  v10 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:v8 forTableView:v6];
  if (a3)
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
      v13 = [MEMORY[0x1E69DC888] tertiaryLabelColor];

      v11 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      [v11 startAnimating];
      v14 = 0;
      v9 = v13;
      goto LABEL_10;
    }

    v11 = 0;
  }

  v14 = 1;
LABEL_10:
  v15 = [v10 textLabel];
  [v15 setText:v12];

  v16 = [v10 textLabel];
  [v16 setTextColor:v9];

  v17 = [v10 detailTextLabel];
  [v17 setText:0];

  [v10 setAccessoryType:v14];
  [v10 setAccessoryView:v11];
  PKAccessibilityIDCellSet(v10, *MEMORY[0x1E69B9508]);

  return v10;
}

- (id)_accountServiceMakeDefaultCellForRowIndex:(int64_t)a3 tableView:(id)a4
{
  v5 = a4;
  [(PKPaymentPassDetailViewController *)self _accountFeature];
  v6 = PKLocalizedFeatureString();
  v7 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v6 forTableView:v5];

  PKAccessibilityIDCellSet(v7, *MEMORY[0x1E69B9918]);

  return v7;
}

- (id)_accountServiceRewardsDetailsCellForRowIndex:(int64_t)a3 tableView:(id)a4
{
  v6 = a4;
  v7 = [(PKPaymentPassDetailViewController *)self _accountServiceRewardsRowForRowIndex:a3];
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
        v16 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v15 forTableView:v6];
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
    v16 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v15 forTableView:v6];
    if (self->_redeemingRewards)
    {
      v17 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      [v17 startAnimating];
      [v16 setAccessoryView:v17];
      v18 = [v16 textLabel];
      v19 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      [v18 setTextColor:v19];

      v20 = [v16 textLabel];
      [(PKPaymentPassDetailViewController *)self _accountFeature];
      v21 = PKLocalizedFeatureString();
      [v20 setText:v21];

      v22 = [v16 detailTextLabel];
      [v22 setText:0];
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
      v8 = [(PKAccount *)self->_account creditDetails];
      v9 = [v8 accountSummary];
      v10 = [(PKAccountUserCollection *)self->_accountUserCollection currentAccountUser];
      v11 = [v9 redeemableRewardsBalanceForUser:v10];

      if (v11)
      {
        v12 = [v8 currencyCode];
        v13 = PKCurrencyAmountCreate(v11, v12);
        v14 = [v13 minimalFormattedStringValue];
      }

      else
      {
        v14 = 0;
      }

      [(PKPaymentPassDetailViewController *)self _accountFeature];
      v26 = PKLocalizedFeatureString();
      v16 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v26 detailText:v14 cellStyle:1 forTableView:v6];

      v23 = *MEMORY[0x1E69B9500];
    }

    v15 = 0;
  }

LABEL_23:
  PKAccessibilityIDCellSet(v16, v23);

  return v16;
}

- (BOOL)_accountServiceRewardsRowIsEnabled:(unint64_t)a3
{
  v5 = [(PKAccount *)self->_account supportsRedeemRewards];
  if (a3 >= 2)
  {
    if (a3 == 2 && v5)
    {
      return self->_cashbackResolution != 0;
    }

    return 0;
  }

  if (!v5)
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

- (unint64_t)_accountServiceRewardsRowForRowIndex:(int64_t)a3
{
  v5 = 0;
  v6 = 0;
  do
  {
    if ([(PKPaymentPassDetailViewController *)self _accountServiceRewardsRowIsEnabled:v5])
    {
      if (v6 == a3)
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

- (BOOL)_accountServicePhysicalCardRowIsEnabled:(unint64_t)a3
{
  v3 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        physicalCardController = self->_physicalCardController;

        return [(PKPhysicalCardController *)physicalCardController canActivatePhysicalCard];
      }
    }

    else
    {
      v12 = [(PKPhysicalCardController *)self->_physicalCardController primaryPhysicalCard];
      v13 = [v12 state];

      return (v13 & 0xFFFFFFFFFFFFFFFELL) == 2;
    }

    return v3;
  }

  if (a3 == 2)
  {
    v10 = self->_physicalCardController;

    return [(PKPhysicalCardController *)v10 canRequestNewPhysicalCard];
  }

  else
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {
        v4 = [(PKPhysicalCardController *)self->_physicalCardController unactivatedPhysicalCard];
        if (v4)
        {
          v5 = v4;
          v6 = [v4 latestShippingActivity];
          v7 = [v6 shipmentTrackingURL];
          if (v7)
          {
            v3 = 1;
          }

          else
          {
            v14 = [v5 shipmentTrackingURL];
            v3 = v14 != 0;
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

- (unint64_t)_accountServicePhysicalCardRowForRowIndex:(int64_t)a3
{
  v5 = 0;
  v6 = 0;
  do
  {
    if ([(PKPaymentPassDetailViewController *)self _accountServicePhysicalCardRowIsEnabled:v5])
    {
      if (v6 == a3)
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

- (unint64_t)_rowIndexForAccountServicePhysicalCardRow:(unint64_t)a3
{
  if (![(PKPaymentPassDetailViewController *)self _accountServicePhysicalCardRowIsEnabled:?])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v6 += [(PKPaymentPassDetailViewController *)self _accountServicePhysicalCardRowIsEnabled:v5++];
  }

  while (a3 != v5);
  return v6;
}

- (id)_accountServicePhysicalCardCellForRowIndex:(int64_t)a3 tableView:(id)a4
{
  v6 = a4;
  v7 = [(PKPhysicalCardActionController *)self->_physicalCardActionController state];
  v8 = *MEMORY[0x1E69B9AB8];
  v9 = [(PKPaymentPassDetailViewController *)self _accountServicePhysicalCardRowForRowIndex:a3];
  v10 = 0;
  if (v9 > 1)
  {
    switch(v9)
    {
      case 2:
        [(PKPaymentPassDetailViewController *)self _accountFeature];
        v13 = PKLocalizedFeatureString();
        v10 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v13 forTableView:v6];

        v14 = 1633;
        break;
      case 3:
        [(PKPaymentPassDetailViewController *)self _accountFeature];
        v15 = PKLocalizedFeatureString();
        v10 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v15 forTableView:v6];

        v14 = 1635;
        break;
      case 4:
        [(PKPaymentPassDetailViewController *)self _accountFeature];
        v11 = PKLocalizedFeatureString();
        v10 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v11 forTableView:v6];

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
    v10 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v12 forTableView:v6];
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
    v10 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v12 forTableView:v6];
    goto LABEL_15;
  }

LABEL_16:
  if (v7 == 1 || self->_loadingOrderPhysicalCard)
  {
    v17 = [v10 textLabel];
    v18 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [v17 setTextColor:v18];
  }

  PKAccessibilityIDCellSet(v10, v8);

  return v10;
}

- (id)_accountServiceCardNumbersCellForRowIndex:(int64_t)a3 tableView:(id)a4
{
  v5 = a4;
  primaryTextColor = self->_primaryTextColor;
  if (primaryTextColor)
  {
    v7 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:primaryTextColor forTableView:v5];
  }

  else
  {
    v8 = [MEMORY[0x1E69DC888] labelColor];
    v7 = [(PKPaymentPassDetailViewController *)self _defaultCellWithTextColor:v8 forTableView:v5];
  }

  v9 = [v7 textLabel];
  v10 = PKLocalizedCardNumbersString(&cfstr_CardNumbersInf.isa);
  [v9 setText:v10];

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

- (id)_transactionCountByPeriodCellForIndexPath:(id)a3 tableView:(id)a4
{
  v6 = a4;
  v7 = -[NSArray objectAtIndexedSubscript:](self->_transactionCountAndYear, "objectAtIndexedSubscript:", [a3 row]);
  v8 = [v7 startDate];
  v9 = [v7 transactionCount];
  v10 = [(PKPaymentPassDetailViewController *)self _transactionYearFormatter];
  v11 = [v10 stringFromDate:v8];

  v12 = [(PKPaymentPassDetailViewController *)self _transactionCountFormatter];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
  v14 = [v12 stringFromNumber:v13];

  v15 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas.isa, &stru_1F3BD5BF0.isa, v11);
  v16 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v15 detailText:v14 cellStyle:1 forTableView:v6];

  [v16 setAccessoryType:1];
  PKAccessibilityIDCellSet(v16, *MEMORY[0x1E69B9D60]);

  return v16;
}

- (void)_didSelectTransactionCountByPeriodAtIndexPath:(id)a3
{
  v14 = -[NSArray objectAtIndexedSubscript:](self->_transactionCountAndYear, "objectAtIndexedSubscript:", [a3 row]);
  v4 = [v14 startDate];
  v5 = [PKPaymentTransactionsInYearTableViewController alloc];
  v6 = [MEMORY[0x1E695DEE8] currentCalendar];
  transactionSourceCollection = self->_transactionSourceCollection;
  familyCollection = self->_familyCollection;
  detailViewStyle = self->_detailViewStyle;
  paymentServiceDataProvider = self->_paymentServiceDataProvider;
  v11 = [(PKPaymentPassDetailViewController *)self contactResolver];
  v12 = [(PKPaymentTransactionsInYearTableViewController *)v5 initWithDateFromYear:v4 calendar:v6 transactionSourceCollection:transactionSourceCollection familyCollection:familyCollection detailViewStyle:detailViewStyle paymentServiceDataProvider:paymentServiceDataProvider contactResolver:v11 peerPaymentWebService:self->_peerPaymentWebService account:self->_account];

  v13 = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([v13 pk_settings_useStateDrivenNavigation])
  {
    [v13 pk_settings_pushViewController:v12];
  }

  else
  {
    [v13 pushViewController:v12 animated:1];
  }
}

- (void)_updatePeerPaymentPreferencesWithNewPreferences:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__PKPaymentPassDetailViewController__updatePeerPaymentPreferencesWithNewPreferences___block_invoke;
  aBlock[3] = &unk_1E8026318;
  aBlock[4] = self;
  v4 = a3;
  v5 = _Block_copy(aBlock);
  v6 = [(PKPeerPaymentWebService *)self->_peerPaymentWebService targetDevice];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(PKPeerPaymentWebService *)self->_peerPaymentWebService targetDevice];
    [v8 setPreferences:v4 completion:v5];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E69B9008]) initWithPeerPaymentPreferences:v4];

    peerPaymentWebService = self->_peerPaymentWebService;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __85__PKPaymentPassDetailViewController__updatePeerPaymentPreferencesWithNewPreferences___block_invoke_1144;
    v10[3] = &unk_1E8026340;
    v11 = v5;
    [(PKPeerPaymentWebService *)peerPaymentWebService peerPaymentUpdatePreferencesWithRequest:v8 completion:v10];
    v4 = v11;
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

- (void)peerPaymentAccountResolutionController:(id)a3 requestsDismissCurrentViewControllerAnimated:(BOOL)a4
{
  [(PKPaymentPassDetailViewController *)self dismissViewControllerAnimated:a4 completion:0];

  [(PKPaymentPassDetailViewController *)self _updateCashbackPeerPaymentResolutionSection];
}

- (void)_didSelectPeerPaymentMoneyActionAtRow:(int64_t)a3
{
  v4 = [(PKPaymentPassDetailViewController *)self _peerPaymentMoneyActionForRowIndex:a3];
  if (v4 == 1)
  {

    [(PKPaymentPassDetailViewController *)self _didSelectTransferToBank];
  }

  else if (!v4)
  {

    [(PKPaymentPassDetailViewController *)self presentTopUp];
  }
}

- (void)_didSelectPeerPaymentBankAccountsAtIndexPath:(id)a3
{
  v4 = a3;
  if (!PKBankCredentialCenterEnabled() || (v5 = [objc_alloc(MEMORY[0x1E69B86A8]) initWithType:0], objc_initWeak(&location, self), aBlock[0] = MEMORY[0x1E69E9820], aBlock[1] = 3221225472, aBlock[2] = __82__PKPaymentPassDetailViewController__didSelectPeerPaymentBankAccountsAtIndexPath___block_invoke, aBlock[3] = &unk_1E8026368, objc_copyWeak(&v19, &location), v6 = v5, v18 = v6, v7 = _Block_copy(aBlock), v12 = MEMORY[0x1E69E9820], v13 = 3221225472, v14 = __82__PKPaymentPassDetailViewController__didSelectPeerPaymentBankAccountsAtIndexPath___block_invoke_2, v15 = &unk_1E8010998, objc_copyWeak(&v16, &location), v8 = _Block_copy(&v12), v9 = [PKACHBankCredentialPickerViewController alloc], v10 = -[PKACHBankCredentialPickerViewController initWithCurrentBankInformation:selectAction:cancelAction:](v9, "initWithCurrentBankInformation:selectAction:cancelAction:", v6, v7, v8, v12, v13, v14, v15), v8, objc_destroyWeak(&v16), v7, v18, objc_destroyWeak(&v19), objc_destroyWeak(&location), v6, !v10))
  {
    v10 = [[PKPeerPaymentBankAccountsViewController alloc] initWithPeerPaymentAccount:self->_peerPaymentAccount detailViewStyle:self->_detailViewStyle];
  }

  v11 = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([v11 pk_settings_useStateDrivenNavigation])
  {
    [v11 pk_settings_pushViewController:v10];
  }

  else
  {
    [v11 pushViewController:v10 animated:1];
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

- (void)_didSelectAutomaticallyAcceptPaymentsPreferenceAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  v6 = [(PKPeerPaymentPreferences *)self->_peerPaymentPreferences requiresConfirmation];
  v7 = [(PKPaymentPassDetailViewController *)self tableView];
  v8 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{objc_msgSend(v4, "section")}];
  v17 = [v7 cellForRowAtIndexPath:v8];

  v9 = [(PKPaymentPassDetailViewController *)self tableView];
  v10 = MEMORY[0x1E696AC88];
  v11 = [v4 section];

  v12 = [v10 indexPathForRow:1 inSection:v11];
  v13 = [v9 cellForRowAtIndexPath:v12];

  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_6;
    }

    v14 = 0;
    v6 = 1;
    v15 = MEMORY[0x1E69BA108];
    v5 = 3;
  }

  else
  {
    v6 = 0;
    v15 = MEMORY[0x1E69BA100];
    v14 = 3;
  }

  MEMORY[0x1BFB41980](*v15, 0);
  [v17 setAccessoryType:v14];
  [v13 setAccessoryType:v5];
LABEL_6:
  v16 = [(PKPeerPaymentPreferences *)self->_peerPaymentPreferences copy];
  [v16 setRequiresConfirmation:v6];
  [(PKPaymentPassDetailViewController *)self _updatePeerPaymentPreferencesWithNewPreferences:v16];
}

- (void)_didSelectPeerPaymentManualIdentityVerificationAtIndexPath:(id)a3
{
  v5 = a3;
  if (!self->_loadingPeerPaymentAccountActionIndexPath)
  {
    objc_storeStrong(&self->_loadingPeerPaymentAccountActionIndexPath, a3);
    v6 = [(PKPaymentPassDetailViewController *)self tableView];
    v7 = [v6 cellForRowAtIndexPath:self->_loadingPeerPaymentAccountActionIndexPath];

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

- (void)_didSelectPeerPaymentParticipantGradutionAtIndexPath:(id)a3
{
  if (!self->_peerPaymentGraduationInProgress)
  {
    v4 = a3;
    v5 = [(PKPaymentPassDetailViewController *)self tableView];
    v6 = [v5 cellForRowAtIndexPath:v4];

    v7 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v7 startAnimating];
    [v6 setAccessoryView:v7];
    v8 = objc_alloc_init(MEMORY[0x1E69B8F08]);
    [v8 setGraduation:1];
    v9 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount state]== 1 && [(PKPeerPaymentAccount *)self->_peerPaymentAccount stage]== 3;
    if ([(PKPeerPaymentAccount *)self->_peerPaymentAccount isParticipantAccountLockedByOwner])
    {
      v10 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount supportsGraduationWhileAssociatedAccountLocked];
    }

    else
    {
      v10 = 0;
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
      if (v10)
      {
        v17 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentGra_0.isa);
        v18 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentGra_1.isa);
        v19 = [v16 alertControllerWithTitle:v17 message:v18 preferredStyle:0];

        v20 = [v19 popoverPresentationController];
        [v20 setSourceView:v6];

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

        v27 = [(PKPaymentPassDetailViewController *)self navigationController];
        [v27 presentViewController:v19 animated:1 completion:0];

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

        v34 = [(PKPaymentPassDetailViewController *)self navigationController];
        [v34 presentViewController:v19 animated:1 completion:0];

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

- (void)_didSelectPeerPaymentAccountActionAtIndexPath:(id)a3
{
  v5 = a3;
  if (!self->_loadingPeerPaymentAccountActionIndexPath)
  {
    objc_storeStrong(&self->_loadingPeerPaymentAccountActionIndexPath, a3);
    v6 = [(PKPaymentPassDetailViewController *)self tableView];
    v7 = [v6 cellForRowAtIndexPath:self->_loadingPeerPaymentAccountActionIndexPath];

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

- (void)_didSelectPeerPaymentStatementAtIndexPath:(id)a3
{
  MEMORY[0x1BFB41980](*MEMORY[0x1E69BA118], 0, a3);
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

- (void)_didSelectFamilySharingAtIndexPath:(id)a3
{
  v4 = [a3 row];
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
    v12 = [v5 familyMember];

    v6 = [(NSArray *)self->_sortedFamilyMemberRowModels objectAtIndex:v4];
    if (([v6 state] - 1) <= 2)
    {
      v7 = [[PKPeerPaymentAssociatedAccountPresentationContext alloc] initWithPKFamilyMember:v12 options:0];
      peerPaymentAssociatedAccountsController = self->_peerPaymentAssociatedAccountsController;
      v9 = [(PKPaymentPassDetailViewController *)self navigationController];
      [(PKPeerPaymentAssociatedAccountsController *)peerPaymentAssociatedAccountsController presentAssociatedAccountsFlowWithPresentationContext:v7 fromNavigationController:v9];
    }
  }
}

- (void)_didSelectBalanceOrCommutePlanCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentPassDetailViewController *)self tableView];
  [v5 deselectRowAtIndexPath:v4 animated:1];

  v6 = [v4 row];
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

- (void)_didSelectBalanceAtRowIndex:(int64_t)a3
{
  v5 = [(PKPaymentPassDetailViewController *)self _balanceForRow:?];
  v6 = [(PKPaymentPassDetailViewController *)self _topUpActionForRow:a3];
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
    v11 = self;
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

- (id)_actionForCommutePlan:(id)a3
{
  v3 = [a3 identifier];
  v4 = PKRenewActionForPaymentPassAndIdentifier();

  return v4;
}

- (BOOL)_commutePlanIsSelectable:(id)a3 action:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6 || [v5 hasDisplayableInformation];

  return v7;
}

- (void)_didSelectCommutePlanAtRowIndex:(int64_t)a3
{
  v4 = [(NSArray *)self->_commutePlans objectAtIndex:a3];
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

- (void)_didSelectPassInGroupAtIndexPath:(id)a3
{
  group = self->_group;
  v5 = a3;
  v6 = [(PKGroup *)group passCount];
  v7 = [v5 row];

  if (v7 == v6)
  {
    v8 = [[PKEditPassesNavigationController alloc] initWithExistingGroupsController:self->_groupsController specificGroup:self->_group isForWatch:self->_detailViewStyle == 2 delegate:0];
    [(PKPaymentPassDetailViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (void)_didSelectCardInfoCellAtIndexPath:(id)a3
{
  v9 = a3;
  if (PKStoreDemoModeEnabled())
  {
    v4 = PKUIStoreDemoGatewayViewController();
    [(PKPaymentPassDetailViewController *)self presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    v5 = [(PKPaymentPassDetailViewController *)self _rowIndexForExpressTransitSettingsCell];
    if (v5 != [v9 row])
    {
      goto LABEL_11;
    }

    detailViewStyle = self->_detailViewStyle;
    if (detailViewStyle)
    {
      v4 = [[PKExpressPassesViewController alloc] initWithPaymentDataProvider:self->_paymentServiceDataProvider controller:self->_expressPassController style:detailViewStyle != 1];
      v7 = [(PKPassLibraryDataProvider *)self->_passLibraryDataProvider paymentPasses];
      [(PKExpressPassesViewController *)v4 setPasses:v7];

      v8 = [(PKPaymentPassDetailViewController *)self navigationController];
      if ([v8 pk_settings_useStateDrivenNavigation])
      {
        [v8 pk_settings_pushViewController:v4];
      }

      else
      {
        [v8 pushViewController:v4 animated:1];
      }
    }

    else
    {
      v4 = [(PKPaymentPassDetailViewController *)self _settingsExpressTransitURL];
      PKOpenURL();
    }
  }

LABEL_11:
}

- (void)_didSelectMerchantTokensCell
{
  v3 = [(PKRetrieveMerchantTokensResponse *)self->_merchantTokensResponse merchantTokens];
  v4 = [v3 count];

  if (v4)
  {
    if (_os_feature_enabled_impl())
    {
      v5 = [(PKRetrieveMerchantTokensResponse *)self->_merchantTokensResponse merchantTokens];
      v7 = [(PKMerchantTokenUnifiedListViewControllerProvider *)self->_merchantTokenUnifiedListViewControllerProvider makeViewControllerInNavigationContextForPass:self->_pass withDelegate:self prefetchedMerchantTokens:v5];
    }

    else
    {
      v7 = [[PKMerchantTokensViewController alloc] initWithPass:self->_pass merchantTokensResponse:self->_merchantTokensResponse];
      [(PKMerchantTokensViewController *)v7 setDelegate:self];
    }

    v6 = [(PKPaymentPassDetailViewController *)self navigationController];
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

- (id)_settingsExpressTransitURL
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"prefs:root=PASSBOOK&path="];
  [v3 appendString:*MEMORY[0x1E69BC5B8]];
  [v3 appendString:@"&"];
  [v3 appendString:*MEMORY[0x1E69BC668]];
  [v3 appendString:@"="];
  v4 = objc_alloc_init(MEMORY[0x1E696AD48]);
  v5 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  [v4 formUnionWithCharacterSet:v5];

  [v4 removeCharactersInString:@"="];
  v6 = [(PKPaymentPass *)self->_pass uniqueID];
  v7 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v4];

  [v3 appendString:v7];
  v8 = [MEMORY[0x1E695DFF8] URLWithString:v3];

  return v8;
}

- (void)_didSelectInstallmentPlansAtIndexPath:(id)a3
{
  v4 = [(PKAccount *)self->_account creditDetails];
  v10 = [v4 installmentPlans];

  v5 = [v10 count];
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = [PKTransactionHistoryViewController alloc];
      v7 = [v10 anyObject];
      v8 = [(PKTransactionHistoryViewController *)v6 initWithInstallmentPlan:v7 transactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection account:self->_account accountUserCollection:self->_accountUserCollection physicalCards:self->_physicalCards];

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

    v9 = [(PKPaymentPassDetailViewController *)self navigationController];
    if ([v9 pk_settings_useStateDrivenNavigation])
    {
      [v9 pk_settings_pushViewController:v8];
    }

    else
    {
      [v9 pushViewController:v8 animated:1];
    }
  }

LABEL_10:
}

- (id)_installmentsPlanCellForTableView:(id)a3 atIndexPath:(id)a4
{
  account = self->_account;
  v6 = a3;
  v7 = [(PKAccount *)account creditDetails];
  v8 = [v7 installmentPlans];
  v9 = [v8 count];

  v10 = MEMORY[0x1E696AEC0];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
  v12 = [v10 stringWithFormat:@"%@", v11];

  v13 = PKLocalizedFeatureString();
  v14 = [(PKPaymentPassDetailViewController *)self _infoCellWithPrimaryText:v13 detailText:v12 cellStyle:1 forTableView:v6];

  [v14 setAccessoryType:1];
  PKAccessibilityIDCellSet(v14, *MEMORY[0x1E69B98A0]);

  return v14;
}

- (void)_didSelectAccountServiceBankAccountsAtIndexPath:(id)a3
{
  v5 = a3;
  if (PKStoreDemoModeEnabled())
  {
    v4 = PKUIStoreDemoGatewayViewController();
    [(PKPaymentPassDetailViewController *)self presentViewController:v4 animated:1 completion:0];
  }

  else if (![v5 row])
  {
    [(PKPaymentPassDetailViewController *)self presentBankAccounts];
  }
}

- (void)_didSelectAccountServiceMakeDefaultAtIndexPath:(id)a3
{
  [(PKPaymentPassDetailViewController *)self presentMakeDefaultAtApple];
  v4 = *MEMORY[0x1E69BAA80];

  [(PKPaymentPassDetailViewController *)self _reportPassDetailsAnalyticsForTappedRowTag:v4 additionalAnalytics:0];
}

- (void)_didSelectAccountServiceRewardsDetailsAtIndexPath:(id)a3
{
  v6 = a3;
  v4 = -[PKPaymentPassDetailViewController _accountServiceRewardsRowForRowIndex:](self, "_accountServiceRewardsRowForRowIndex:", [v6 row]);
  if (v4 == 2)
  {
    [(PKPaymentPassDetailViewController *)self _didSelectFixPeerPaymentAtIndexPath:v6];
  }

  else
  {
    v5 = v6;
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    [(PKPaymentPassDetailViewController *)self _didSelectRedeemAtIndexPath:v6];
  }

  v5 = v6;
LABEL_6:
}

- (void)_didSelectAccountServicePhysicalCardAtIndexPath:(id)a3
{
  v4 = a3;
  if (PKStoreDemoModeEnabled())
  {
    v5 = PKUIStoreDemoGatewayViewController();
    [(PKPaymentPassDetailViewController *)self presentViewController:v5 animated:1 completion:0];
LABEL_3:

    goto LABEL_4;
  }

  v6 = -[PKPaymentPassDetailViewController _accountServicePhysicalCardRowForRowIndex:](self, "_accountServicePhysicalCardRowForRowIndex:", [v4 row]);
  if (v6 <= 1)
  {
    if (!v6)
    {
      v5 = [(PKPhysicalCardController *)self->_physicalCardController primaryPhysicalCard];
      if (v5 && !self->_loadingEnableDisablePhysicalCard)
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
          [(PKPhysicalCardActionController *)self->_physicalCardActionController disablePhysicalCard:v5];
        }

        else
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __85__PKPaymentPassDetailViewController__didSelectAccountServicePhysicalCardAtIndexPath___block_invoke;
          v16[3] = &unk_1E8013D88;
          v16[4] = self;
          v17 = v5;
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

        v5 = [(PKReplacePhysicalCardReasonViewController *)v7 initWithPhysicalCardController:self->_physicalCardController context:v10];
        v11 = [[PKNavigationController alloc] initWithRootViewController:v5];
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

- (void)_presentPhysicalCardPasswordAuthorization:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E69B8EF8] sharedService];
    v6 = [v5 _appleAccountInformation];

    v7 = objc_alloc_init(MEMORY[0x1E698DE80]);
    [v7 setPresentingViewController:self];
    v8 = [v6 appleID];
    [v7 setUsername:v8];

    v9 = [v6 aaAlternateDSID];
    [v7 setAltDSID:v9];

    [v7 setIsUsernameEditable:0];
    [v7 setShouldPromptForPasswordOnly:1];
    [v7 setAuthenticationType:2];
    [(PKAccount *)self->_account feature];
    v10 = [v6 appleID];
    v11 = PKLocalizedFeatureString();
    [v7 setReason:{v11, v10}];

    v12 = objc_alloc_init(MEMORY[0x1E698DCC0]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__PKPaymentPassDetailViewController__presentPhysicalCardPasswordAuthorization___block_invoke;
    v13[3] = &unk_1E80208E8;
    v13[4] = self;
    v14 = v4;
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

- (void)_didSelectAccountServiceCardNumbersAtIndexPath:(id)a3
{
  [(PKPaymentPassDetailViewController *)self presentCardNumbers];
  v4 = *MEMORY[0x1E69BA4B0];

  [(PKPaymentPassDetailViewController *)self _reportPassDetailsAnalyticsForTappedRowTag:v4 additionalAnalytics:0];
}

- (void)_didSelectServicingWalletLink
{
  v2 = [(PKPaymentPass *)self->_pass uniqueID];
  PKOpenPassDetails();
}

- (void)_doneLoadingPeerPaymentAccountAction
{
  v3 = [(PKPaymentPassDetailViewController *)self tableView];
  v5 = [v3 cellForRowAtIndexPath:self->_loadingPeerPaymentAccountActionIndexPath];

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
      v4 = [(PKPeerPaymentAccount *)peerPaymentAccount associatedPassUniqueID];
      v5 = [(PKPaymentPass *)self->_pass uniqueID];
      v6 = v4;
      v7 = v5;
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
  v3 = [(PKPaymentPassDetailViewController *)self tableView];
  [(PKPaymentPassDetailViewController *)self didSelectIdentityDocumentCellInTableView:v3 atIndexPath:v4];
}

- (void)presentTermsAcceptance
{
  peerPaymentAccount = self->_peerPaymentAccount;
  if (peerPaymentAccount && self->_pass)
  {
    v4 = [(PKPeerPaymentAccount *)peerPaymentAccount associatedPassUniqueID];
    v5 = [(PKPaymentPass *)self->_pass uniqueID];
    v6 = v4;
    v7 = v5;
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
        v11 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount termsURL];
        v12 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount termsIdentifier];
        v13 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
        if (v11)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          v15 = [PKPeerPaymentTermsController alloc];
          v16 = [MEMORY[0x1E69B9020] sharedService];
          v17 = [(PKPeerPaymentTermsController *)v15 initWithTermsURL:v11 termsIdentifier:v12 passUniqueID:v13 webService:v16];

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

  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(location[0]) = 0;
    _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Will not present peer payment terms for acceptance: peer payment pass is not being presented", location, 2u);
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

- (void)presentAccountUserDetailsForAccountUserAltDSID:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __84__PKPaymentPassDetailViewController_presentAccountUserDetailsForAccountUserAltDSID___block_invoke;
  v6[3] = &unk_1E8011828;
  objc_copyWeak(&v8, &location);
  v6[4] = self;
  v5 = v4;
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

- (void)presentAccountUserInvitationWithIdentifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__PKPaymentPassDetailViewController_presentAccountUserInvitationWithIdentifier___block_invoke;
  v6[3] = &unk_1E8011828;
  objc_copyWeak(&v8, &location);
  v6[4] = self;
  v5 = v4;
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

- (void)showStatementDetailsWithIdentifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__PKPaymentPassDetailViewController_showStatementDetailsWithIdentifier___block_invoke;
  v6[3] = &unk_1E80110E0;
  objc_copyWeak(&v8, &location);
  v5 = v4;
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

- (void)presentBillPaymentWithConfig:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__PKPaymentPassDetailViewController_presentBillPaymentWithConfig___block_invoke;
  v6[3] = &unk_1E8011828;
  objc_copyWeak(&v8, &location);
  v6[4] = self;
  v5 = v4;
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

- (void)presentInstallmentPlansForFeature:(unint64_t)a3
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

- (void)presentInstallmentPlanWithIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __74__PKPaymentPassDetailViewController_presentInstallmentPlanWithIdentifier___block_invoke;
    v5[3] = &unk_1E80110E0;
    objc_copyWeak(&v7, &location);
    v6 = v4;
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

- (void)_showSpinner:(BOOL)a3 inCell:(id)a4 detailText:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = a4;
  [(PKPaymentPassDetailViewController *)self _showSpinner:v6 inCell:v9 overrideTextColor:0];
  v10 = [v9 detailTextLabel];

  [v10 setText:v8];
}

- (void)_showSpinner:(BOOL)a3 inCell:(id)a4 overrideTextColor:(id)a5
{
  v6 = a3;
  v15 = a5;
  v8 = a4;
  v9 = [v8 textLabel];
  primaryTextColor = v15;
  if (v15 || (primaryTextColor = self->_primaryTextColor) != 0)
  {
    v11 = primaryTextColor;
  }

  else
  {
    v11 = [MEMORY[0x1E69DC888] labelColor];
  }

  v12 = v11;
  if (v6)
  {
    v13 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v13 startAnimating];
    v14 = [MEMORY[0x1E69DC888] tertiaryLabelColor];

    v12 = v14;
  }

  else
  {
    v13 = 0;
  }

  [v9 setTextColor:v12];
  [v8 setAccessoryView:v13];
}

- (void)_didSelectFixPeerPaymentAtIndexPath:(id)a3
{
  v4 = [(PKPeerPaymentWebService *)self->_peerPaymentWebService targetDevice];
  v17 = [v4 account];

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

    v9 = [(PKPeerPaymentAccountResolutionController *)v5 initWithAccount:v17 webService:self->_peerPaymentWebService context:v8 delegate:self passLibraryDataProvider:self->_passLibraryDataProvider];
    peerPaymentAccountResolutionControllerForAccountService = self->_peerPaymentAccountResolutionControllerForAccountService;
    self->_peerPaymentAccountResolutionControllerForAccountService = v9;
  }

  v11 = [v17 pendingPaymentCount];
  v12 = PKSharedCacheGetStringForKey();
  if (v17)
  {
    cashbackResolution = self->_cashbackResolution;
    if (cashbackResolution == 1 && v11 == 1)
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

- (void)_didSelectRedeemAtIndexPath:(id)a3
{
  v4 = a3;
  if (!self->_redeemingRewards)
  {
    v5 = [(PKAccount *)self->_account creditDetails];
    v6 = [v5 accountSummary];
    if (v6)
    {
      self->_redeemingRewards = 1;
      v7 = [(PKPaymentPassDetailViewController *)self tableView];
      v8 = [v7 cellForRowAtIndexPath:v4];

      v9 = [v8 textLabel];
      v36 = [v9 text];

      v10 = [v8 textLabel];
      v35 = [v10 textColor];

      v11 = [v8 detailTextLabel];
      v34 = [v11 text];

      v12 = [v8 detailTextLabel];
      v33 = [v12 textColor];

      v37 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      [v37 startAnimating];
      [v8 setAccessoryView:v37];
      v13 = [v8 textLabel];
      [MEMORY[0x1E69DC888] tertiaryLabelColor];
      v14 = v38 = v4;
      [v13 setTextColor:v14];

      v15 = [v8 textLabel];
      [(PKPaymentPassDetailViewController *)self _accountFeature];
      v16 = PKLocalizedFeatureString();
      [v15 setText:v16];

      v17 = [v8 detailTextLabel];
      [v17 setText:0];

      v31 = [(PKAccountUserCollection *)self->_accountUserCollection currentAccountUser];
      v32 = [v6 redeemableRewardsBalanceForUser:v31];
      v18 = objc_alloc_init(MEMORY[0x1E69B8338]);
      [v18 setActionType:0];
      [v18 setAmount:v32];
      v19 = [v5 currencyCode];
      [v18 setCurrencyCode:v19];

      [v18 setRedemptionType:2];
      v20 = [MEMORY[0x1E696AFB0] UUID];
      v21 = [v20 UUIDString];
      [v18 setIdentifier:v21];

      accountService = self->_accountService;
      v22 = [(PKAccount *)self->_account accountIdentifier];
      v23 = [v31 altDSID];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __65__PKPaymentPassDetailViewController__didSelectRedeemAtIndexPath___block_invoke;
      v39[3] = &unk_1E8026408;
      v39[4] = self;
      v40 = v36;
      v41 = v34;
      v42 = v35;
      v43 = v33;
      v24 = v33;
      v25 = v35;
      v26 = v6;
      v27 = v5;
      v28 = v34;
      v29 = v36;
      [(PKAccountService *)accountService performAccountAction:v18 withAccountIdentifier:v22 accountUserAltDSID:v23 completion:v39];

      v4 = v38;
      v5 = v27;
      v6 = v26;
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

- (void)_didSelectCreditDetailsCell:(id)a3
{
  if (!-[PKPaymentPassDetailViewController _accountServiceCreditDetailsRowForRowIndex:](self, "_accountServiceCreditDetailsRowForRowIndex:", [a3 row]) && -[PKPaymentPassDetailViewController isTotalBalanceCellSelectable](self, "isTotalBalanceCellSelectable"))
  {
    v5 = [[PKCreditBalanceDetailsViewController alloc] initWithStyle:1 transactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection webService:self->_webService account:self->_account accountUserCollection:self->_accountUserCollection physicalCards:self->_physicalCards statement:0 previousStatements:0];
    v4 = [(PKPaymentPassDetailViewController *)self navigationController];
    if ([v4 pk_settings_useStateDrivenNavigation])
    {
      [v4 pk_settings_pushViewController:v5];
    }

    else
    {
      [v4 pushViewController:v5 animated:1];
    }
  }
}

- (void)_showPeerPaymentActionViewControllerForAction:(unint64_t)a3
{
  v22 = 0;
  v23 = 0;
  v5 = [PKPeerPaymentActionController canPerformPeerPaymentAction:a3 account:self->_peerPaymentAccount unableReason:&v23 displayableError:&v22];
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

    v10 = [PKPeerPaymentActionViewController peerPaymentActionViewControllerForAction:a3 paymentPass:self->_pass webService:self->_peerPaymentWebService passLibraryDataProvider:self->_passLibraryDataProvider context:v9];
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

- (void)peerPaymentActionViewControllerDidCancel:(id)a3
{
  v7 = a3;
  v4 = [v7 presentingViewController];

  if (v4)
  {
    [v7 presentingViewController];
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

- (void)peerPaymentActionViewControllerDidPerformAction:(id)a3
{
  v7 = a3;
  v4 = [v7 presentingViewController];

  if (v4)
  {
    [v7 presentingViewController];
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
        v9 = [v8 familyMember];
        v10 = [v9 altDSID];

        v11 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount peerPaymentAccountWithAltDSID:v10];
        [v8 setAccount:v11];

        v12 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount accountInvitationWithAltDSID:v10];
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
    v4 = [(PKPeerPaymentWebService *)peerPaymentWebService targetDevice];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(PKPeerPaymentWebService *)self->_peerPaymentWebService targetDevice];
      v7 = [v6 preferences];
      peerPaymentPreferences = self->_peerPaymentPreferences;
      self->_peerPaymentPreferences = v7;

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
      v4 = [MEMORY[0x1E69B8310] sharedManager];
      [v4 registerObserver:self];
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
      [v4 enrollmentStatusForPaymentPass:pass completion:v9 progress:v7];

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

- (void)ampEnrollmentManager:(id)a3 didEnrollPaymentPass:(id)a4 success:(BOOL)a5
{
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PKPaymentPassDetailViewController_ampEnrollmentManager_didEnrollPaymentPass_success___block_invoke;
  block[3] = &unk_1E8013D60;
  v10 = v7;
  v11 = self;
  v12 = a5;
  v8 = v7;
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

- (void)_ampEligbilityUpdated:(BOOL)a3
{
  self->_loadingAMPEligibility = 0;
  self->_isAmpEligible = a3;
  [(PKPaymentPassDetailViewController *)self reloadData:0];
}

- (void)_handlePeerPaymentPreferencestDidChangeNotification:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PKPaymentPassDetailViewController__handlePeerPaymentPreferencestDidChangeNotification___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_handleAccountServiceAccountDidChangeNotification:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__PKPaymentPassDetailViewController__handleAccountServiceAccountDidChangeNotification___block_invoke;
  aBlock[3] = &unk_1E80112C0;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
  if (v5)
  {
    v6 = [MEMORY[0x1E69B8400] sharedInstance];
    [v6 accountWithIdentifier:v5 completion:v4];
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

- (void)merchantTokensViewController:(id)a3 didDeleteMerchantToken:(id)a4
{
  merchantTokensResponse = self->_merchantTokensResponse;
  v6 = a4;
  v7 = [(PKRetrieveMerchantTokensResponse *)merchantTokensResponse merchantTokens];
  v8 = [v7 containsObject:v6];

  if (v8)
  {
    v9 = self->_merchantTokensResponse;
    self->_merchantTokensResponse = 0;

    [(PKPaymentPassDetailViewController *)self _reloadMerchantTokenRows];

    [(PKPaymentPassDetailViewController *)self _fetchMerchantTokens];
  }
}

- (void)merchantTokenDetailViewController:(id)a3 didDeleteMerchantToken:(id)a4
{
  v5 = a4;
  if (_os_feature_enabled_impl())
  {
    v6 = [(PKPaymentPassDetailViewController *)self navigationController];
    if ([v6 pk_settings_useStateDrivenNavigation])
    {
      [v6 pk_settings_popViewController];
    }

    else
    {
      v7 = [v6 popViewControllerAnimated:1];
    }
  }

  v8 = [(PKRetrieveMerchantTokensResponse *)self->_merchantTokensResponse merchantTokens];
  v9 = [v8 containsObject:v5];

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

- (void)_updateTabBarWithSegments:(id)a3
{
  v23 = a3;
  v5 = [v23 count];
  tabBar = self->_tabBar;
  if (tabBar)
  {
    v4 = [(UISegmentedControl *)tabBar selectedSegmentIndex];
    p_tabBarSegments = &self->_tabBarSegments;
    tabBarSegments = self->_tabBarSegments;
    v9 = -1;
    if (tabBarSegments && (v4 & 0x8000000000000000) == 0)
    {
      v10 = [(NSArray *)tabBarSegments objectAtIndexedSubscript:?];
      v11 = [v23 indexOfObject:v10];

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

  v14 = [v23 copy];
  v15 = *p_tabBarSegments;
  *p_tabBarSegments = v14;

  v16 = [(PKPaymentPassDetailViewController *)self viewIfLoaded];
  if (v16)
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

      v22 = [(UITableViewHeaderFooterView *)self->_headerView contentView];
      [v22 addSubview:self->_tabBar];
    }

    if (v9 < 0)
    {
      [(PKPaymentPassDetailViewController *)self reloadData:0];
    }

    if ([(PKPaymentPassDetailViewController *)self _updateHeaderHeightDeterminingLayout:0])
    {
      [v16 setNeedsLayout];
    }
  }
}

- (BOOL)_updateHeaderHeightDeterminingLayout:(BOOL)a3
{
  v4 = [(PKPaymentPassDetailViewController *)self tableView];
  [v4 contentSize];
  v6 = v5;
  v7 = [(NSArray *)self->_tabBarSegments count];
  v8 = [(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts];
  v9 = 80.0;
  if (!v8)
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
    v15 = [(UIViewController *)widgetViewController view];
    [v15 sizeThatFits:{v6, 1.79769313e308}];
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

- (id)_createTabBarWithSelectedIndex:(int64_t)a3
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

        v10 = [*(*(&v17 + 1) + 8 * i) unsignedIntegerValue];
        if (!v10)
        {
          v11 = @"PASS_DETAILS_INFO";
LABEL_15:
          v12 = PKLocalizedString(&v11->isa);
          goto LABEL_17;
        }

        if (v10 == 1)
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
  [v14 setSelectedSegmentIndex:a3];
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
    v5 = [(UITableViewHeaderFooterView *)self->_headerView contentView];
    v6 = [(UIViewController *)self->_widgetViewController view];
    [v5 addSubview:v6];

    v7 = self->_widgetViewController;

    [(UIViewController *)v7 didMoveToParentViewController:self];
  }
}

- (BOOL)_shouldShowTransactions
{
  v3 = [(PKPaymentDataProvider *)self->_paymentServiceDataProvider supportsTransactionsForPass:self->_pass];
  if (v3)
  {
    v4 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];

    if (v4 && (-[PKPaymentPass devicePrimaryPaymentApplication](self->_pass, "devicePrimaryPaymentApplication"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 state], v5, v6 != 7))
    {
      if (!self->_account || (v3 = [MEMORY[0x1E69B8770] shouldDisplayTransactionsForTransactionSourceCollection:self->_transactionSourceCollection withAccount:?]) != 0)
      {
        if (![(PKPaymentPass *)self->_pass isTransitPass]|| ([(PKPaymentPass *)self->_pass supportsFPANNotifications]& 1) != 0 || ([(PKPaymentPass *)self->_pass supportsDPANNotifications]& 1) != 0)
        {
          LOBYTE(v3) = 1;
        }

        else
        {
          v7 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
          v8 = [v7 generatesLocalTransactions];

          LOBYTE(v3) = v8;
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
    v3 = [MEMORY[0x1E69B8EF8] sharedService];
    v4 = [v3 targetDevice];

    if ([(PKPaymentPass *)self->_pass requiresFelicaSecureElement])
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ([v4 felicaSecureElementIsAvailable] & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else if ((objc_opt_respondsToSelector() & 1) == 0 || ![v4 secureElementIsAvailable])
    {
      goto LABEL_30;
    }

    v7 = [v4 secureElementIdentifiers];
    v8 = [v7 count];

    pass = self->_pass;
    if (v8 == 2)
    {
      if ([(PKPaymentPass *)pass isSuicaPass])
      {
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v10 = [(PKPaymentPass *)self->_pass paymentApplications];
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v17 + 1) + 8 * i) supportedTransitNetworkIdentifiers];
              v16 = [v15 containsObject:@"transit.felica.suica"];

              if (!v16)
              {
                v5 = 0;
                goto LABEL_34;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        v5 = [v4 supportsExpressForAutomaticSelectionTechnologyType:6];
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

- (BOOL)_peerPaymentMoneyActionEnabled:(unint64_t)a3
{
  if (a3 == 1)
  {
    peerPaymentAccount = self->_peerPaymentAccount;
    v4 = [(PKFamilyMemberCollection *)self->_familyCollection currentUser];
    v5 = [(PKPeerPaymentAccount *)peerPaymentAccount isEligibleToWithdrawForUser:v4];
  }

  else
  {
    if (a3)
    {
      return 0;
    }

    v3 = self->_peerPaymentAccount;
    v4 = [(PKFamilyMemberCollection *)self->_familyCollection currentUser];
    v5 = [(PKPeerPaymentAccount *)v3 isEligibleToAddMoneyForUser:v4];
  }

  v7 = v5;

  return v7;
}

- (unint64_t)_peerPaymentMoneyActionForRowIndex:(unint64_t)a3
{
  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    if ([(PKPaymentPassDetailViewController *)self _peerPaymentMoneyActionEnabled:v5])
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
  return 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)_rowIndexForPeerPaymentActionRow:(unint64_t)a3
{
  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    if ([(PKPaymentPassDetailViewController *)self _peerPaymentMoneyActionEnabled:v5])
    {
      if (v5 == a3)
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

  v3 = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
  v2 = [v3 length] != 0;

  return v2;
}

- (BOOL)_shouldShowCardNumbersSection
{
  v3 = MEMORY[0x1E69B8770];
  v4 = [(PKAccount *)self->_account cardAvailabilityInfo];
  v5 = [(PKPaymentPass *)self->_pass deviceAccountNumberSuffix];
  v6 = [v3 shouldShowCardNumbersWithAccountAvailabilityInfo:v4 dpanSuffixForPaymentApplication:v5];

  v7 = [MEMORY[0x1E69B8EF8] sharedService];
  if (PKVirtualCardEnabledWithWebService() && [(PKPaymentPass *)self->_pass cardType]== 1)
  {
    v8 = [(PKAccount *)self->_account creditDetails];
    if (v8)
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
  v3 = [(PKPaymentWebService *)self->_webService targetDevice];
  v4 = [v3 supportsAutomaticPassPresentation];

  if (!v4)
  {
    goto LABEL_10;
  }

  if (([(PKPaymentPass *)self->_pass availableForAutomaticPresentationUsingBeaconContext]& 1) != 0)
  {
    v5 = 1;
    return v5 & 1;
  }

  v6 = [(PKPaymentPass *)self->_pass availableForAutomaticPresentationUsingInAppOrWebContext];
  detailViewStyle = self->_detailViewStyle;
  v8 = detailViewStyle == 2;
  v5 = (detailViewStyle != 2) | v6;
  if (v8 || (v6 & 1) != 0)
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
  v3 = [(PKPaymentPass *)self->_pass supportsBarcodePayment];
  if ([(PKAccount *)self->_account feature]== 2)
  {
    v4 = [(PKAccount *)self->_account isClosedAndChargedOff];
  }

  else
  {
    v4 = 0;
  }

  if (self->_peerPaymentAccount)
  {
    result = self->_detailViewStyle != 2;
  }

  else
  {
    result = [(PKPaymentDataProvider *)self->_paymentServiceDataProvider supportsInAppPaymentsForPass:self->_pass];
  }

  if ((v3 | v4))
  {
    return v3 ^ 1;
  }

  return result;
}

- (BOOL)_shouldShowTermsCell
{
  v3 = [(PKAccount *)self->_account creditDetails];
  v4 = [v3 termsIdentifier];
  if ([v4 length])
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
  v6 = [(PKPaymentPass *)self->_pass businessChatIdentifier];
  if (([v3 length] || objc_msgSend(v4, "length") || objc_msgSend(v5, "length")) && (-[PKPaymentPassDetailViewController _accountFeature](self, "_accountFeature") == 4 || self->_detailViewStyle == 2))
  {
    v7 = 1;
  }

  else if ([v6 length])
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
    v4 = [(PKPaymentPass *)self->_pass cardHolderPicture];
    if (v4)
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
    v4 = 0;
    goto LABEL_14;
  }

  return v5;
}

- (BOOL)_shouldShowServiceMode
{
  if ([(PKPaymentPass *)self->_pass isStoredValuePass])
  {
    v5 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
    if (![v5 supportsServiceMode])
    {
      v8 = 0;
LABEL_12:

      return v8;
    }

    v6 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
    v7 = [v6 supportsTransitHistory];
    if ((v7 & 1) != 0 || (-[PKPaymentPass devicePrimaryPaymentApplication](self->_pass, "devicePrimaryPaymentApplication"), v2 = objc_claimAutoreleasedReturnValue(), [v2 appletDataFormat], v3 = objc_claimAutoreleasedReturnValue(), PKEqualObjects()))
    {
      [(PKPaymentPass *)self->_pass effectiveContactlessPaymentApplicationState];
      v8 = PKPaymentApplicationStateIsPersonalized() != 0;
      if (v7)
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
  v4 = [(PKPaymentVerificationController *)self->_verificationController verificationBodyString];
  [(PKPaymentPassDetailActivationFooterView *)activationFooter setFooterText:v4];

  v5 = self->_activationFooter;
  v6 = [(PKPaymentVerificationController *)self->_verificationController alternateMethodButtonTitle];
  [(PKPaymentPassDetailActivationFooterView *)v5 setActivationButtonText:v6];
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
  v2 = [(PKPaymentPass *)self->_pass availableActions];
  v3 = [v2 pk_objectsPassingTest:&__block_literal_global_1301];

  return v3;
}

- (BOOL)_hasActionOfType:(unint64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(PKPaymentPassDetailViewController *)self _availableActions];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) type] == a3)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)_didSelectTransactionAtIndexPath:(id)a3
{
  v10 = a3;
  v4 = [v10 row];
  if (v4 < -[PKPaymentPassDetailViewController _transactionsCount](self, "_transactionsCount") && (-[PKPaymentPassDetailViewController _transactionAtIndex:](self, "_transactionAtIndex:", [v10 row]), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
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
    v8 = [(PKPaymentPass *)self->_pass uniqueID];
    v6 = [(PKPaymentDataProvider *)paymentServiceDataProvider transactionsAppLaunchTokenForPassWithUniqueIdentifier:v8];

    v9 = [PKPaymentNotificationAppURLHelper appURLForTransactionNotification:0 pass:self->_pass appLaunchToken:v6];
    if (v9)
    {
      PKOpenURL();
    }
  }

LABEL_9:
}

- (void)_didSelectTransactionTransactionsSwitchInTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = [a3 cellForRowAtIndexPath:a4];
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

- (void)_didSelectContactBankSectionAtIndexPath:(id)a3
{
  v4 = a3;
  if ([(PKPaymentPassDetailViewController *)self _shouldShowContactCell])
  {
    if (![v4 row])
    {
      v5 = [(PKPaymentPassDetailViewController *)self _removeUnsupportedContactIssuerOptions:15];
      v6 = [(PKPaymentPassDetailViewController *)self contactIssuerHelper];
      v7 = [(PKPaymentPassDetailViewController *)self tableView];
      v8 = [v7 cellForRowAtIndexPath:v4];
      [v6 presentContactViewController:v5 sourceItem:v8];
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  if (-[PKPaymentPassDetailViewController _shouldShowServiceMode](self, "_shouldShowServiceMode") && v9 == [v4 row])
  {
    MEMORY[0x1BFB41980](*MEMORY[0x1E69BA088], 0);
    if (objc_opt_respondsToSelector())
    {
      paymentServiceDataProvider = self->_paymentServiceDataProvider;
      v11 = [(PKPaymentPass *)self->_pass uniqueID];
      [(PKPaymentDataProvider *)paymentServiceDataProvider startServiceModeForPassWithUniqueIdentifier:v11 visibleViewController:self];
    }

    else
    {
      if (PKRunningInRemoteContext())
      {
        v12 = objc_alloc_init(MEMORY[0x1E696AF20]);
        [v12 setScheme:@"shoebox"];
        [v12 setHost:@"card"];
        v13 = MEMORY[0x1E696AEC0];
        v14 = [(PKPaymentPass *)self->_pass uniqueID];
        v15 = [v13 stringWithFormat:@"/%@/%@", v14, *MEMORY[0x1E69BC6B8]];
        [v12 setPath:v15];

        v16 = [v12 URL];
        PKOpenURL();
      }

      else
      {
        v12 = [(PKPaymentPassDetailViewController *)self navigationController];
        v17 = [(PKPaymentPassDetailViewController *)self presentingViewController];
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
          if ([v12 pk_settings_useStateDrivenNavigation])
          {
            [v12 pk_settings_popToRootViewController];
          }

          else
          {
            v18 = [v12 popToRootViewControllerAnimated:1];
          }

          [MEMORY[0x1E6979518] commit];
        }

        else
        {
          [(PKPaymentPassDetailViewController *)self postServiceModeNotification];
          [v17 dismissViewControllerAnimated:1 completion:0];
        }
      }
    }
  }
}

- (void)postServiceModeNotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"PKPDVCRequestedServiceMode" object:self userInfo:0];
}

- (unint64_t)_removeUnsupportedContactIssuerOptions:(unint64_t)a3
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

  return v5 & a3;
}

- (void)_preflightWatchForTransferWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PKPaymentWebService *)self->_webService targetDevice];
    if (v5)
    {
      webService = self->_webService;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __78__PKPaymentPassDetailViewController__preflightWatchForTransferWithCompletion___block_invoke;
      v9[3] = &unk_1E8013FF8;
      v10 = v4;
      [v5 paymentWebService:webService validateTransferPreconditionsWithCompletion:v9];
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Error: Unable to validate transfer preconditions of target device", v8, 2u);
      }

      (*(v4 + 2))(v4, 0, 0);
    }
  }
}

- (void)_didSelectTransferCardAtIndexPath:(id)a3
{
  v4 = a3;
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

- (id)_paymentSetupNavigationControllerForProvisioningController:(id)a3
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

  v7 = a3;
  v8 = [[PKPaymentSetupNavigationController alloc] initWithProvisioningController:v7 context:v6];

  [(PKPaymentSetupNavigationController *)v8 setGroupsController:self->_groupsController];
  [(PKNavigationController *)v8 setCustomFormSheetPresentationStyleForiPad];
  [(PKPaymentSetupNavigationController *)v8 setSetupDelegate:self];

  return v8;
}

- (void)_handleProvisioningError:(id)a3
{
  v4 = [PKPaymentSetupNavigationController viewControllerForPresentingPaymentError:a3];
  [(PKPaymentPassDetailViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (BOOL)_isJapaneseRegion
{
  v2 = [(PKPaymentWebService *)self->_webService targetDevice];
  v3 = [v2 deviceRegion];
  v4 = [v3 isEqualToString:@"JP"];

  return v4;
}

- (void)_didSelectDeleteCardFromSourceItem:(id)a3
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = [PKViewControllerPresentationTarget targetWithPresentingViewController:self sourceItem:a3];
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
    v17 = [(PKPaymentPassDetailViewController *)self navigationController];
    LOBYTE(v25) = v11;
    [PKPassDeleteHelper presentMerchantTokenDeletePaymentPassAlertForPass:pass withAccount:account merchantTokensResponse:merchantTokensResponse deleteHander:WeakRetained passLibraryDataProvider:passLibraryDataProvider navigationController:v17 presentationTarget:v4 isBridge:v25];
  }

  else
  {
    v26 = self->_pass;
    v18 = self->_account;
    paymentServiceDataProvider = self->_paymentServiceDataProvider;
    transitBalanceModel = self->_transitBalanceModel;
    transitProperties = self->_transitProperties;
    v22 = [(PKPassDetailBankConnectSectionController *)self->_bankConnectSectionController connectedInstitution];
    detailViewStyle = self->_detailViewStyle;
    v24 = objc_loadWeakRetained(&self->_deleteOverrider);
    [PKPassDeleteHelper presentDeletePaymentPassAlertForPass:v26 withAccount:v18 paymentServiceDataProvider:paymentServiceDataProvider transitBalanceModel:transitBalanceModel transitPassProperties:transitProperties fkInstitution:v22 detailViewStyle:detailViewStyle deleteHander:v24 passLibraryDataProvider:self->_passLibraryDataProvider presentationTarget:v4];
  }
}

- (void)_resetIdentityProofingData
{
  v3 = objc_alloc_init(MEMORY[0x1E6997DD8]);
  v4 = [(PKPaymentPass *)self->_pass issuerAdministrativeAreaCode];
  v5 = [(PKPaymentPass *)self->_pass issuerCountryCode];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PKPaymentPassDetailViewController__resetIdentityProofingData__block_invoke;
  v7[3] = &unk_1E80264A8;
  v7[4] = self;
  v8 = v3;
  v6 = v3;
  [v6 cancelProofingWithState:v4 country:v5 completion:v7];
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

- (void)_startPrecursorProvisioningWithController:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v11 = [(PKPaymentPassDetailViewController *)self navigationController];
  pass = self->_pass;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __90__PKPaymentPassDetailViewController__startPrecursorProvisioningWithController_completion___block_invoke;
  v21[3] = &unk_1E80264D0;
  v13 = v11;
  v22 = v13;
  v23 = v8;
  v25 = v26;
  v24 = v7;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__PKPaymentPassDetailViewController__startPrecursorProvisioningWithController_completion___block_invoke_3;
  v17[3] = &unk_1E8016728;
  v20 = v26;
  v14 = v24;
  v19 = v14;
  v15 = v23;
  v18 = v15;
  [PKProvisioningFlowBridge startPrecursorPassFlowWithNavController:v15 context:v10 pass:pass precursorController:v6 parentNavController:v13 presentNavController:v21 completion:v17];

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

- (BOOL)_canSelectBalanceOrCommutePlanCellAtRowIndex:(int64_t)a3
{
  if (([(PKPaymentPass *)self->_pass isAutoTopEnabled]& 1) != 0)
  {
    return 0;
  }

  v6 = [(NSArray *)self->_displayableBalanceFields count];
  v7 = a3 - v6;
  if (a3 >= v6)
  {
    v8 = [(NSArray *)self->_commutePlans objectAtIndex:v7];
    v10 = [(PKPaymentPassDetailViewController *)self _actionForCommutePlan:v8];
    v5 = (v7 & 0x8000000000000000) == 0 && v7 < [(NSArray *)self->_commutePlanFields count]&& [(PKPaymentPassDetailViewController *)self _commutePlanIsSelectable:v8 action:v10];
  }

  else
  {
    v8 = [(PKPaymentPassDetailViewController *)self _topUpActionForRow:a3];
    v9 = [(PKPaymentPass *)self->_pass needsHardcodedReminderOptions];
    if (v8)
    {
      v5 = 1;
    }

    else
    {
      v5 = v9;
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

  v3 = [(PKPaymentPassDetailViewController *)self tableView];
  v4 = [v3 numberOfRowsInSection:{-[PKDynamicTableViewController indexOfSectionIdentifier:](self, "indexOfSectionIdentifier:", @"CardInfo"}] - 1;

  return v4;
}

- (PKContactResolver)contactResolver
{
  contactResolver = self->_contactResolver;
  if (!contactResolver)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v5 = objc_alloc(MEMORY[0x1E69B8740]);
    v6 = [(PKPaymentPassDetailViewController *)self _contactKeysToFetch];
    v7 = [v5 initWithContactStore:v4 keysToFetch:v6];
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
    v5 = [(PKPaymentPassDetailViewController *)self contactResolver];
    v6 = [(PKContactAvatarManager *)v4 initWithContactResolver:v5 paymentDataProvider:self->_paymentServiceDataProvider];
    v7 = self->_contactAvatarManager;
    self->_contactAvatarManager = v6;

    contactAvatarManager = self->_contactAvatarManager;
  }

  return contactAvatarManager;
}

- (id)_contactInfoAttributedText:(id)a3 phoneNumber:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = MEMORY[0x1E69DB648];
  v10 = MEMORY[0x1E69DB650];
  if (v5)
  {
    v11 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC78], 4096, 0);
    [v8 setObject:v11 forKeyedSubscript:*v9];

    v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v8 setObject:v12 forKeyedSubscript:*v10];

    if (v6)
    {
      v13 = @"%@\n";
    }

    else
    {
      v13 = @"%@";
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:v13, v5];
    v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v14 attributes:v8];
    [v7 appendAttributedString:v15];
  }

  if (v6)
  {
    v16 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC70], 4096, 0);
    [v8 setObject:v16 forKeyedSubscript:*v9];

    v17 = [MEMORY[0x1E69DC888] linkColor];
    [v8 setObject:v17 forKeyedSubscript:*v10];

    v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6 attributes:v8];
    [v7 appendAttributedString:v18];
  }

  v19 = [v7 copy];

  return v19;
}

- (unint64_t)_passStateSectionGenerateCellWithOutput:(id *)a3 forRowIndex:(int64_t)a4 tableView:(id)a5
{
  v8 = a5;
  if (![(PKPaymentPassDetailViewController *)self _isShowingLostModeInterface])
  {
    if ([(PKPaymentPass *)self->_pass activationState]!= PKPaymentPassActivationStateRequiresActivation)
    {
      v9 = 0;
      goto LABEL_13;
    }

    v10 = [(PKPaymentVerificationController *)self->_verificationController continueVerificationButtonTitle];
    v13 = [(PKPaymentPassDetailViewController *)self traitCollection];
    v14 = [v13 userInterfaceIdiom];

    v15 = [(PKPaymentVerificationController *)self->_verificationController verificationRecord];
    v16 = [v15 channel];
    if ([v16 type] == 4)
    {

      if ((v14 & 0xFFFFFFFFFFFFFFFBLL) != 0)
      {
        v9 = 0;
        goto LABEL_7;
      }
    }

    else
    {
    }

    v9 = 1;
    if (!a3 || a4)
    {
      goto LABEL_7;
    }

    if (!v10)
    {
      v11 = [(PKPaymentPassDetailViewController *)self _spinnerCellForTableView:v8];
      goto LABEL_6;
    }

LABEL_5:
    v11 = [(PKPaymentPassDetailViewController *)self _linkCellWithText:v10 forTableView:v8];
LABEL_6:
    v12 = *a3;
    *a3 = v11;

    v9 = 1;
LABEL_7:

    goto LABEL_13;
  }

  v9 = 1;
  if (a3 && !a4)
  {
    v10 = PKLocalizedPaymentString(&cfstr_LostmodeEnterP.isa);
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
  v3 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
  if ([v3 state] == 7)
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

      v4 = [MEMORY[0x1E699C848] sharedInstance];
      [v4 initiateLostModeExitAuthWithCompletion:&__block_literal_global_1365];
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

- (double)_footerViewHeightForPassStateSectionWithTableView:(id)a3
{
  v4 = a3;
  if (![(PKPaymentPassDetailViewController *)self _isShowingLostModeInterface]&& [(PKPaymentPass *)self->_pass activationState]== PKPaymentPassActivationStateRequiresActivation && ([(PKPaymentVerificationController *)self->_verificationController verificationRecord], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    [v4 bounds];
    v7 = v6;
    v8 = [(PKPaymentPassDetailViewController *)self _activationFooterView];
    [v8 sizeThatFits:{v7, 1.79769313e308}];
    v10 = v9;
  }

  else
  {
    [v4 sectionFooterHeight];
    v10 = v11;
  }

  return v10;
}

- (id)_footerViewForPassStateSection
{
  if (![(PKPaymentPassDetailViewController *)self _isShowingLostModeInterface]&& [(PKPaymentPass *)self->_pass activationState]== PKPaymentPassActivationStateRequiresActivation && ([(PKPaymentVerificationController *)self->_verificationController verificationRecord], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(PKPaymentPassDetailViewController *)self _activationFooterView];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)createFooterHyperlinkViewWithText:(id)a3 action:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(PKFooterHyperlinkView);
  [(PKFooterHyperlinkView *)v8 setAttributedText:v7];

  [(PKFooterHyperlinkView *)v8 setLinkTextColor:self->_linkTextColor];
  [(PKFooterHyperlinkView *)v8 setAction:v6];

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

- (id)_footerViewForPeerPaymentBalanceSectionWithTableView:(id)a3
{
  v4 = a3;
  if ([(PKPaymentPassDetailViewController *)self _showPeerPaymentBalanceFDICFooterView])
  {
    v5 = [v4 dequeueReusableHeaderFooterViewWithIdentifier:@"PeerPaymentBalanceReuseIdentifier"];
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
    v10 = self;
    v11 = v9;
    v12 = v4;
    v13 = 4;
LABEL_13:
    v18 = [(PKPaymentPassDetailViewController *)v10 createPrivacyFooterViewWithText:v11 tintColor:v12 privacyContext:v13];

    goto LABEL_15;
  }

  if ([(PKPaymentPassDetailViewController *)self passSupportsDeviceAssessment])
  {
    v9 = PKLocalizedPaymentString(&cfstr_DeviceAssessme_3.isa);
    v10 = self;
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

- (id)createPrivacyFooterViewForContext:(unint64_t)a3 tintColor:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E69B7D48] pk_privacyFlowForContext:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 localizedButtonCaption];
    v10 = [v8 localizedButtonTitle];
    v11 = v10;
    if (v9)
    {
      v12 = PKLocalizedPaymentString(&cfstr_PassDetailsPri.isa, &stru_1F3BD6370.isa, v9, v10);
    }

    else
    {
      v12 = v10;
    }

    v14 = v12;
    v15 = MEMORY[0x1E695DFF8];
    v16 = MEMORY[0x1E696AEC0];
    v17 = [v8 identifier];
    v18 = [v16 stringWithFormat:@"onboarding:%@", v17];
    v19 = [v15 URLWithString:v18];

    v20 = PKAttributedStringByAddingLinkToSubstring(v14, v11, v19);
    v21 = PKGenericOnboardingPresenter(self, v6);
    v22 = PKOpenOnboardingHyperlinkAction(v21);
    v13 = [(PKPaymentPassDetailViewController *)self createFooterHyperlinkViewWithText:v20 action:v22];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)createPrivacyFooterViewWithText:(id)a3 tintColor:(id)a4 privacyContext:(unint64_t)a5
{
  v8 = a4;
  v14 = 0;
  v9 = [(PKPaymentPassDetailViewController *)self privacyFooterAttributedStringWithText:a3 privacyContext:a5 outputURL:&v14];
  if (v14)
  {
    v10 = PKGenericOnboardingPresenter(self, v8);
    v11 = PKOpenOnboardingHyperlinkAction(v10);
    v12 = [(PKPaymentPassDetailViewController *)self createFooterHyperlinkViewWithText:v9 action:v11];
  }

  else
  {
    v12 = [(PKPaymentPassDetailViewController *)self createFooterHyperlinkViewWithText:v9 action:&__block_literal_global_1413];
  }

  return v12;
}

- (id)privacyFooterAttributedStringWithText:(id)a3 privacyContext:(unint64_t)a4 outputURL:(id *)a5
{
  v7 = a3;
  v8 = [MEMORY[0x1E69B7D48] pk_privacyFlowForContext:a4];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 localizedButtonTitle];
    v11 = v10;
    if (v7)
    {
      v12 = PKLocalizedPaymentString(&cfstr_PassDetailsPri.isa, &stru_1F3BD6370.isa, v7, v10);
    }

    else
    {
      v12 = v10;
    }

    v14 = v12;
    v15 = MEMORY[0x1E695DFF8];
    v16 = MEMORY[0x1E696AEC0];
    v17 = [v9 identifier];
    v18 = [v16 stringWithFormat:@"onboarding:%@", v17];
    v19 = [v15 URLWithString:v18];

    if (a5)
    {
      v20 = v19;
      *a5 = v19;
    }

    v13 = PKAttributedStringByAddingLinkToSubstring(v14, v11, v19);
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7];
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

- (id)_legalNoticesFooterWithAttributedString:(id)a3 combineString:(id)a4 outputURL:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(PKPaymentPassDetailViewController *)self _accountFeature]- 1 > 1)
  {
    v10 = 0;
    v12 = 0;
LABEL_9:
    v17 = v8;
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
  if (a5)
  {
    v15 = v13;
    *a5 = v14;
  }

  if (v8)
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", v9, v12];

    v17 = [v8 mutableCopy];
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
  v3 = PKPassLocalizedStringForStateWithFormat(&cfstr_PassDashboardT.isa, &self->_pass->super, 0);
  pass = self->_pass;
  v5 = [(PKPaymentPass *)pass localizedDescription];
  v6 = PKPassLocalizedStringForStateWithFormat(&cfstr_PassDashboardD_22.isa, &pass->super, &stru_1F3BD5BF0.isa, v5);

  if (v3)
  {
    goto LABEL_34;
  }

  v7 = [(PKPaymentPass *)self->_pass supportsBarcodePayment];
  v8 = MEMORY[0x1E69BC6F8];
  if (v7)
  {
    v9 = MEMORY[0x1E69BC700];
    v10 = @"_ACCOUNT";
  }

  else
  {
    v11 = [(PKPaymentPass *)self->_pass cardType];
    v8 = MEMORY[0x1E69BC708];
    v12 = MEMORY[0x1E69BC710];
    if (v11 == 3 && (v13 = [(PKPaymentPass *)self->_pass accessType]- 1, v8 = MEMORY[0x1E69BC708], v12 = MEMORY[0x1E69BC710], v13 <= 5))
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
    v3 = 0;
    goto LABEL_34;
  }

  v14 = [(PKPaymentPass *)self->_pass appletStateMessageOverrideOfType:1];
  v15 = v14;
  if (v14)
  {
    v3 = [v14 title];
    [v15 body];
    v6 = v16 = v6;
LABEL_32:

    goto LABEL_33;
  }

  v17 = [(PKPaymentPass *)self->_pass activationState];
  v18 = [(PKPaymentPass *)self->_pass activationState];
  v38 = [(PKPaymentPass *)self->_pass activationState];
  v19 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
  v39 = [v19 state];

  if (v17 == PKPaymentPassActivationStateActivating)
  {
    v3 = PKLocalizedPaymentString(&cfstr_ActivatingTitl.isa);
    v20 = @"ACTIVATING_MESSAGE";
    v21 = v10;
LABEL_29:
    v16 = [(__CFString *)v20 stringByAppendingString:v21];
    v30 = v8();
    goto LABEL_30;
  }

  v22 = v10;
  if (v18 == PKPaymentPassActivationStateDeactivated)
  {
    v23 = [@"PAYMENT_APP_ERROR_TITLE" stringByAppendingString:v10];
    v3 = v8();

    if (v39 == 5)
    {
      v20 = @"PAYMENT_APP_VERIFICATION_TERMINATED";
LABEL_28:
      v21 = v22;
      goto LABEL_29;
    }

    v26 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
    v27 = [v26 state];

    if (v27 == 10)
    {
      v25 = @"PAYMENT_APP_REMOVED_BY_ISSUER";
      goto LABEL_23;
    }
  }

  else
  {
    if (v38 == PKPaymentPassActivationStateSuspended)
    {
      v24 = [@"PAYMENT_APP_ERROR_TITLE" stringByAppendingString:v10];
      v3 = v8();

      if (v39 == 9)
      {
        v29 = [(PKPaymentPass *)self->_pass localizedSuspendedReason];
        v16 = v29;
        if (!v29)
        {
          v36 = [@"PAYMENT_APP_ERROR_BODY" stringByAppendingString:v22];
          v31 = v8();

          v6 = v36;
          goto LABEL_31;
        }

        v30 = v29;
LABEL_30:
        v31 = v30;
LABEL_31:

        v6 = v31;
        goto LABEL_32;
      }

      if (v39 != 6)
      {
        v20 = @"PAYMENT_APP_ERROR_BODY";
        goto LABEL_28;
      }

      v25 = @"PAYMENT_APP_SUSPENDED_BY_ISSUER";
LABEL_23:
      v16 = [(__CFString *)v25 stringByAppendingString:v22];
      v37 = [(PKPaymentPass *)self->_pass organizationName];
      v28 = v9(v16, @"%@");

      v6 = v28;
      goto LABEL_32;
    }

    v3 = 0;
  }

LABEL_33:

LABEL_34:
  v32 = [v3 pk_uppercaseStringForPreferredLocale];

  if (v6)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@", v6];
    v34 = [v32 stringByAppendingString:v33];
  }

  else
  {
    v34 = v32;
  }

  return v34;
}

- (double)_heightForPassStateSectionWithTableView:(id)a3
{
  v4 = a3;
  if ([(PKPaymentPass *)self->_pass activationState]== PKPaymentPassActivationStateRequiresActivation || [(PKPaymentPassDetailViewController *)self _isShowingLostModeInterface])
  {
    [v4 sectionHeaderHeight];
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
      v3 = [(PKAccount *)self->_account appleBalanceDetails];
      v4 = [v3 accountSummary];
      v5 = [v4 currentBalance];
      v6 = [v3 currencyCode];
      v7 = PKCurrencyAmountMake();
    }

    else
    {
      v7 = 0;
    }

    [(PKPaymentPassDetailBalanceSectionController *)self->_balanceSectionController setBalance:v7];
  }
}

- (void)setDeleteOverrider:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_deleteOverrider);
  v6 = WeakRetained;
  if (WeakRetained != v4)
  {
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v6 setDeletionStatusHandler:0 forPass:self->_pass];
    }

    objc_storeWeak(&self->_deleteOverrider, v4);
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(&location, self);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __56__PKPaymentPassDetailViewController_setDeleteOverrider___block_invoke;
      v7[3] = &unk_1E8010998;
      objc_copyWeak(&v8, &location);
      [v4 setDeletionStatusHandler:v7 forPass:self->_pass];
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
      v4 = [(PKPeerPaymentWebService *)self->_peerPaymentWebService targetDevice];
      v5 = [v4 account];

      objc_initWeak(&location, self);
      v6 = MEMORY[0x1E69B8770];
      v7 = self->_account;
      v8 = [(PKAccountUserCollection *)self->_accountUserCollection currentAccountUser];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __80__PKPaymentPassDetailViewController__updateCashbackPeerPaymentResolutionSection__block_invoke;
      v9[3] = &unk_1E8026548;
      objc_copyWeak(&v10, &location);
      [v6 resolutionToReceiveCashbackForAccount:v7 accountUser:v8 withPeerPaymentAccount:v5 completion:v9];

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

- (void)_tabBarSegmentChanged:(id)a3
{
  v4 = [(NSArray *)self->_tabBarSegments objectAtIndex:[(UISegmentedControl *)self->_tabBar selectedSegmentIndex]];
  v5 = PKSegmentToSegmentString(v4);
  if (v5)
  {
    PKSetPassDetailsLastSelectedSegment();
  }

  v6 = [v4 unsignedIntegerValue];
  if (self->_peerPaymentAccount)
  {
    v7 = v6 == 1;
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

  if (v6 == 1)
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

- (void)_automaticPresentationSwitchChanged:(id)a3
{
  pass = self->_pass;
  v5 = a3;
  v6 = [(PKPaymentPass *)pass settings];
  v7 = [v5 isOn];

  if (((v7 ^ ((v6 & 0x10) == 0)) & 1) == 0)
  {
    v8 = 16;
    if (!v7)
    {
      v8 = 0;
    }

    v9 = self->_pass;

    [(PKPaymentPass *)v9 setSettings:v6 & 0xFFFFFFFFFFFFFFCFLL | v8 | 0x20];
  }
}

- (void)_messagesSwitchChanged:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  pass = self->_pass;
  v5 = a3;
  v6 = [(PKPaymentPass *)pass settings];
  v7 = [v5 isOn];

  if (((v7 ^ ((v6 & 0x40) == 0)) & 1) == 0)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFBFLL;
    if (v7)
    {
      v9 = 64;
    }

    else
    {
      v9 = 0;
    }

    v10 = *MEMORY[0x1E69BA078];
    v14 = @"messages";
    v11 = [MEMORY[0x1E696AD98] numberWithBool:v7];
    v15[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    MEMORY[0x1BFB41980](v10, v12);

    v13 = [(PKSettingTableCell *)self->_messagesSwitch settingSwitch];
    [v13 setEnabled:0];

    [(PKPaymentPass *)self->_pass setSettings:v9 | v8];
  }
}

- (void)_transactionsSwitchChanged:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  pass = self->_pass;
  v5 = a3;
  v6 = [(PKPaymentPass *)pass settings];
  v7 = [v5 isOn];

  if (((v7 ^ ((v6 & 8) == 0)) & 1) == 0)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFF7;
    if (v7)
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    v10 = *MEMORY[0x1E69BA078];
    v15 = @"transactions";
    v11 = [MEMORY[0x1E696AD98] numberWithBool:v7];
    v16[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    MEMORY[0x1BFB41980](v10, v12);

    v13 = [(PKPaymentPass *)self->_pass transactionServiceURL];

    if (v13)
    {
      v14 = [(PKSettingTableCell *)self->_transactionsSwitch settingSwitch];
      [v14 setEnabled:0];
    }

    [(PKPaymentPass *)self->_pass setSettings:v9 | v8];
    [(PKPaymentPassDetailViewController *)self reloadData:1];
    [(PKPaymentPassDetailViewController *)self _reportPassDetailsAnalyticsForToggleTag:*MEMORY[0x1E69BB368] toggleResult:v7 additionalAnalytics:0];
  }
}

- (void)_notificationSwitchChanged:(id)a3
{
  pass = self->_pass;
  v5 = a3;
  v6 = [(PKPaymentPass *)pass settings];
  v7 = [v5 isOn];

  if (v7 == ((v6 >> 7) & 1))
  {
    v8 = 128;
    if (v7)
    {
      v8 = 0;
    }

    v9 = self->_pass;

    [(PKPaymentPass *)v9 setSettings:v8 | v6 & 0xFFFFFFFFFFFFFF7FLL];
  }
}

- (void)_dailyCashSwitchChanged:(id)a3
{
  pass = self->_pass;
  v5 = a3;
  v6 = [(PKPaymentPass *)pass settings];
  v7 = [v5 isOn];

  if (v7 == ((v6 >> 10) & 1))
  {
    v8 = 1024;
    if (v7)
    {
      v8 = 0;
    }

    v9 = self->_pass;

    [(PKPaymentPass *)v9 setSettings:v8 | v6 & 0xFFFFFFFFFFFFFBFFLL];
  }
}

- (void)_activationFooterPressed:(id)a3
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

- (void)_passSettingsChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E69BBC18]];
  v7 = [(PKPaymentPass *)self->_pass uniqueID];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [v4 userInfo];
    v10 = [v9 objectForKey:*MEMORY[0x1E69BBC10]];

    if (v10)
    {
      v11 = [v10 unsignedIntegerValue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __58__PKPaymentPassDetailViewController__passSettingsChanged___block_invoke;
      v12[3] = &unk_1E80119C8;
      v12[4] = self;
      v12[5] = v11;
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

- (void)contactsDidChangeForContactResolver:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PKPaymentPassDetailViewController_contactsDidChangeForContactResolver___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)paymentSetupDidFinish:(id)a3
{
  v12 = a3;
  v4 = [v12 provisioningController];
  v5 = [v4 provisionedPasses];
  v6 = [v5 lastObject];
  v7 = [v6 secureElementPass];
  v8 = [v7 paymentPass];

  if (self->_detailViewStyle == 2 && v8 != 0)
  {
    v10 = [(PKPaymentPassDetailViewController *)self navigationController];
    if ([v10 pk_settings_useStateDrivenNavigation])
    {
      [v10 pk_settings_popViewController];
    }

    else
    {
      v11 = [v10 popViewControllerAnimated:1];
    }
  }

  [v12 dismissViewControllerAnimated:1 completion:0];
}

- (void)passHeaderViewPassWasDeleted:(id)a3
{
  v8 = a3;
  group = self->_group;
  if (group && [(PKGroup *)group passCount])
  {
    v5 = [(PKGroup *)self->_group passAtIndex:0];
    v6 = [v5 paymentPass];
    pass = self->_pass;
    self->_pass = v6;

    [(PKPaymentPassDetailViewController *)self _applyStaticPassPropertiesForPass];
    [v8 setPass:self->_pass];
    [(PKPaymentPassDetailViewController *)self _updatePassSnapshot];
    if (self->_showingTitleIconView)
    {
      [(PKAnimatedNavigationBarTitleView *)self->_titleIconView setTitleView:self->_passSnapshotView animated:0];
    }

    [(PKPaymentPassDetailViewController *)self reloadData:0];
  }
}

- (void)callIssuerWithSourceItem:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentPassDetailViewController *)self contactIssuerHelper];
  [v5 callIssuerWithSourceItem:v4];

  v6 = *MEMORY[0x1E69BA458];

  [(PKPaymentPassDetailViewController *)self _reportPassDetailsAnalyticsForTappedButtonTag:v6 additionalAnalytics:0];
}

- (void)openIssuerWebsite
{
  v3 = [(PKPaymentPassDetailViewController *)self contactIssuerHelper];
  [v3 openIssuerWebsite];

  v4 = *MEMORY[0x1E69BB2E8];

  [(PKPaymentPassDetailViewController *)self _reportPassDetailsAnalyticsForTappedButtonTag:v4 additionalAnalytics:0];
}

- (void)emailIssuer
{
  v2 = [(PKPaymentPassDetailViewController *)self contactIssuerHelper];
  [v2 emailIssuer];
}

- (void)openBusinessChat
{
  if ([(PKPaymentPassDetailViewController *)self _isBankConnectLinked])
  {
    v3 = [(PKPaymentPassDetailViewController *)self bankConnectAccount];
    v4 = [v3 actions];
    v10 = [v4 digitalServicingURL];

    v5 = v10;
    if (!v10)
    {
LABEL_7:

      return;
    }

    PKOpenURL();
LABEL_6:
    v5 = v10;
    goto LABEL_7;
  }

  if (PKStoreDemoModeEnabled())
  {
    v10 = PKUIStoreDemoGatewayViewController();
    [(PKPaymentPassDetailViewController *)self presentViewController:v10 animated:1 completion:0];
    goto LABEL_6;
  }

  if ([(PKAccount *)self->_account feature]== 2)
  {
    v6 = [[PKBusinessChatPassDetailsContext alloc] initWithPass:self->_pass];
    v7 = objc_alloc_init(MEMORY[0x1E69B8408]);
    [v7 setBusinessChatContext:v6];
    v8 = [(PKPaymentPassDetailViewController *)self _accountResolutionController];
    [v8 presentFlowForAccountResolution:3 configuration:v7 completion:0];
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

- (void)presentCombinedPassActionViewControllerFromBundle:(id)a3
{
  v4 = a3;
  v5 = [v4 actionGroups];
  v6 = [v4 actionsMatchingTypes:&unk_1F3CC8768];
  v7 = [v4 actionsMatchingTypes:&unk_1F3CC8780];

  v8 = [v5 count];
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

  v11 = [v5 firstObject];
  if ([v11 hasExternalActionContent])
  {
    v12 = self->_pass;
    v13 = [v11 externalActionContent];
    v14 = [v11 title];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __87__PKPaymentPassDetailViewController_presentCombinedPassActionViewControllerFromBundle___block_invoke;
    v30[3] = &unk_1E8014560;
    v30[4] = self;
    PKPaymentPassActionPerformExternalActionContent(v12, v13, v14, v30);
  }

  else
  {
    v22 = [[PKPaymentPassCombinedActionDataController alloc] initWithPass:self->_pass actionGroups:v5 paymentDataProvider:self->_paymentServiceDataProvider webService:self->_webService balanceModel:self->_transitBalanceModel mode:0];
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

- (void)_presentMerchantDetailsViewWithTransaction:(id)a3 forCell:(id)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 merchant];
  v9 = [v8 mapsMerchant];

  v10 = objc_alloc_init(MEMORY[0x1E696F260]);
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v9, "identifier")}];
  v32[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  [v10 _setMuids:v12];

  if ([v9 resultProviderIdentifier])
  {
    [v10 _setResultProviderID:{objc_msgSend(v9, "resultProviderIdentifier")}];
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
  v16 = v7;
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
  v19 = v6;
  v24 = v19;
  v20 = v16;
  v25 = v20;
  v21 = v9;
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

- (void)physicalCardActionController:(id)a3 didChangeToState:(int64_t)a4 withError:(id)a5
{
  v7 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__PKPaymentPassDetailViewController_physicalCardActionController_didChangeToState_withError___block_invoke;
  block[3] = &unk_1E8012C50;
  v10 = v7;
  v11 = a4;
  block[4] = self;
  v8 = v7;
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

- (id)presentationSceneIdentifierForPhysicalCardActionController:(id)a3
{
  v3 = [(PKPaymentPassDetailViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 _sceneIdentifier];

  return v6;
}

- (void)refreshControlValueChanged:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isRefreshing])
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
    v11 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
    v12 = [v11 appletDataFormat];
    v13 = v12 == 0;

    if (!v13)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v14 = [(PKPaymentWebService *)self->_webService context];
      obj = [v14 TSMPushTopics];

      v15 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
      if (v15)
      {
        v26 = *v35;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            v17 = v4;
            if (*v35 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v34 + 1) + 8 * i);
            dispatch_group_enter(v10);
            v19 = [(PKPaymentWebService *)self->_webService targetDevice];
            webService = self->_webService;
            v31[0] = MEMORY[0x1E69E9820];
            v31[1] = 3221225472;
            v31[2] = __64__PKPaymentPassDetailViewController_refreshControlValueChanged___block_invoke_2;
            v31[3] = &unk_1E80265C0;
            v33 = v40;
            v32 = v10;
            [v19 paymentWebService:webService queueConnectionToTrustedServiceManagerForPushTopic:v18 withCompletion:v31];

            v4 = v17;
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

- (void)_refreshFinished:(BOOL)a3
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
  v3 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
  v4 = [v3 appletDataFormat];
  if (v4)
  {
    v5 = [(PKPaymentWebService *)self->_webService context];
    v6 = [v5 TSMPushTopics];
    v7 = [v6 count] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)balanceDetailsViewController:(id)a3 didUpdateBalanceReminder:(id)a4 forBalance:(id)a5
{
  v7 = a4;
  v8 = [a5 identifiers];
  [(PKPaymentPassDetailViewController *)self _handleUpdatedBalanceReminder:v7 forBalanceWithIdentifier:v8];
}

- (void)_updatePassesInGroupSectionWithUpdatedGroup:(id)a3
{
  objc_storeStrong(&self->_group, a3);

  [(PKPaymentPassDetailViewController *)self reloadSection:39 updates:0];
}

- (void)_reportPassDetailsAnalyticsForTappedRowTag:(id)a3 additionalAnalytics:(id)a4
{
  v16[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = *MEMORY[0x1E69BAC20];
    v9 = *MEMORY[0x1E69BA680];
    v15[0] = *MEMORY[0x1E69BABE8];
    v15[1] = v9;
    v10 = *MEMORY[0x1E69BA7C8];
    v16[0] = v8;
    v16[1] = v10;
    v15[2] = *MEMORY[0x1E69BB170];
    v16[2] = v6;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
    v12 = [v11 mutableCopy];

    if (v7)
    {
      [v12 addEntriesFromDictionary:v7];
    }

    v13 = MEMORY[0x1E69B8540];
    v14 = [v12 copy];
    [v13 reportDashboardEventIfNecessary:v14 forPass:self->_pass];
  }
}

- (void)_reportPassDetailsAnalyticsForTappedButtonTag:(id)a3 additionalAnalytics:(id)a4
{
  v16[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = *MEMORY[0x1E69BAC20];
    v9 = *MEMORY[0x1E69BA680];
    v15[0] = *MEMORY[0x1E69BABE8];
    v15[1] = v9;
    v10 = *MEMORY[0x1E69BA6F0];
    v16[0] = v8;
    v16[1] = v10;
    v15[2] = *MEMORY[0x1E69BA440];
    v16[2] = v6;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
    v12 = [v11 mutableCopy];

    if (v7)
    {
      [v12 addEntriesFromDictionary:v7];
    }

    v13 = MEMORY[0x1E69B8540];
    v14 = [v12 copy];
    [v13 reportDashboardEventIfNecessary:v14 forPass:self->_pass];
  }
}

- (void)_reportPassDetailsAnalyticsForToggleTag:(id)a3 toggleResult:(BOOL)a4 additionalAnalytics:(id)a5
{
  v6 = a4;
  v21[4] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (v8)
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
    if (!v6)
    {
      v14 = MEMORY[0x1E69BB2F8];
    }

    v15 = *v14;
    v21[2] = v8;
    v21[3] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];
    v17 = [v16 mutableCopy];

    if (v9)
    {
      [v17 addEntriesFromDictionary:v9];
    }

    v18 = MEMORY[0x1E69B8540];
    v19 = [v17 copy];
    [v18 reportDashboardEventIfNecessary:v19 forPass:self->_pass];
  }
}

- (void)_beginReportingForSubjectIfNecessary:(id)a3
{
  v5 = a3;
  v4 = [MEMORY[0x1E69B8540] reporterForSubject:?];

  if (!v4)
  {
    [(NSMutableSet *)self->_startedAnalyticsSubjects addObject:v5];
    [MEMORY[0x1E69B8540] beginSubjectReporting:v5];
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

- (void)linkedApplicationDidChangeState:(id)a3
{
  v6 = a3;
  v4 = [(PKDynamicTableViewController *)self hasSectionForSectionIdentifier:@"PassesInGroup"];
  v5 = v6;
  if (v4 && self->_linkedApplication == v6)
  {
    [(PKPaymentPassDetailViewController *)self reloadSection:39 updates:0];
    v5 = v6;
  }
}

- (void)presentAuthRequestForPolicy:(int64_t)a3 completion:(id)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (a3)
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
    if (a3 == 1)
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
    (*(v6 + 2))(v6, 1);
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

- (void)presentPassDetailDrillInForField:(id)a3
{
  v4 = a3;
  v6 = -[PKPassDetailSectionDrillInViewController initWithPass:field:useBridgeStyle:isShowingSecureInformation:]([PKPassDetailSectionDrillInViewController alloc], "initWithPass:field:useBridgeStyle:isShowingSecureInformation:", self->_pass, v4, self->_detailViewStyle == 2, [v4 authRequirement] != 0);

  v5 = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([v5 pk_settings_useStateDrivenNavigation])
  {
    [v5 pk_settings_pushViewController:v6];
  }

  else
  {
    [v5 pushViewController:v6 animated:1];
  }
}

- (void)sharesSectionControllerDidSelectViewEntitlements:(id)a3
{
  v11 = [(PKPassDetailSharesSectionController *)self->_sharesSectionController sharesController];
  v4 = objc_alloc(MEMORY[0x1E69B8A38]);
  v5 = [v11 myEntitlements];
  v6 = [v11 possiblePredefinedEntitlements];
  v7 = [v4 initWithMyEntitlements:v5 predefinedSharedEntitlements:v6];

  if (self->_detailViewStyle == 2)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v9 = [[PKPassShareEntitlementSelectionViewController alloc] initWithAccessType:[(PKPaymentPass *)self->_pass accessType] mode:v8 entitlementComposer:v7];
  v10 = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([v10 pk_settings_useStateDrivenNavigation])
  {
    [v10 pk_settings_pushViewController:v9];
  }

  else
  {
    [v10 pushViewController:v9 animated:1];
  }
}

- (void)performActionViewControllerDidCancel:(id)a3
{
  v3 = a3;
  [v3 setDelegate:0];
  v4 = [v3 presentingViewController];

  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)performActionViewControllerDidPerformAction:(id)a3
{
  v4 = a3;
  [v4 setDelegate:0];
  v5 = [v4 presentingViewController];

  [v5 dismissViewControllerAnimated:1 completion:0];
  v7 = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([v7 pk_settings_useStateDrivenNavigation])
  {
    [v7 pk_settings_popToRootViewController];
  }

  else
  {
    v6 = [v7 popToRootViewControllerAnimated:1];
  }
}

- (void)presentPassActionViewController:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PKPaymentPassDetailViewController *)self presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 setDelegate:self];
      [v7 setWebService:self->_webService];
      v4 = [[PKNavigationController alloc] initWithRootViewController:v7];
      [(PKNavigationController *)v4 setSupportedInterfaceOrientations:2];
      [(PKPaymentPassDetailViewController *)self presentViewController:v4 animated:1 completion:0];
    }

    else
    {
      v5 = v7;
      if (!v7)
      {
        goto LABEL_11;
      }

      v6 = [(PKPaymentPassDetailViewController *)self navigationController];
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

  v5 = v7;
LABEL_11:
}

- (void)autoReloadSetupControllerDidComplete
{
  v3 = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([v3 pk_settings_useStateDrivenNavigation])
  {
    [v3 pk_settings_popToRootViewController];
  }

  else
  {
    v2 = [v3 popToRootViewControllerAnimated:1];
  }
}

- (void)launchAppURL:(id)a3
{
  v4 = a3;
  if (v4 && ([MEMORY[0x1E6963608] defaultWorkspace], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isApplicationAvailableToOpenURL:error:", v4, 0), v5, v6))
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

- (void)launchURL:(id)a3
{
  if (a3)
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

- (void)didSelectMakePaymentWithConfig:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentPassDetailViewController *)self _accountResolutionController];
  [v5 presentFlowForAccountResolution:1 configuration:v4 completion:0];
}

- (void)didSelectPayment:(id)a3
{
  v4 = a3;
  v6 = [[PKCreditAccountPaymentDetailsViewController alloc] initWithAccount:self->_account payment:v4 paymentWebService:self->_webService detailViewStyle:self->_detailViewStyle];

  v5 = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([v5 pk_settings_useStateDrivenNavigation])
  {
    [v5 pk_settings_pushViewController:v6];
  }

  else
  {
    [v5 pushViewController:v6 animated:1];
  }
}

- (void)recomputeMappedSectionsAndReloadSections:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentPassDetailViewController *)self _activeOrderOfSectionIdentifiers];
  v6.receiver = self;
  v6.super_class = PKPaymentPassDetailViewController;
  [(PKDynamicTableViewController *)&v6 recomputeMappedSectionsAndReloadSections:v4 sectionIdentifiers:v5 updates:0];
}

- (id)cellForRow:(unint64_t)a3 inSection:(id)a4
{
  v5 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:{-[PKDynamicTableViewController indexOfSectionIdentifier:](self, "indexOfSectionIdentifier:", a4)}];
  v6 = [(PKPaymentPassDetailViewController *)self tableView];
  v7 = [v6 cellForRowAtIndexPath:v5];

  return v7;
}

- (void)didUpdateLatestTransactions:(id)a3 monthlyTransactionGroups:(id)a4 yearlyTransactionGroups:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if ([(PKPaymentPassDetailViewController *)self _isBankConnectLinked])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v31 = self;
    v10 = [(PKPassDetailBankConnectSectionController *)self->_bankConnectSectionController connectedInstitution];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v33 = v7;
    v11 = v7;
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

          v16 = [MEMORY[0x1E69B8EA8] transactionFromFKPaymentTransaction:*(*(&v40 + 1) + 8 * v15) institution:v10];
          [v9 safelyAddObject:v16];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v13);
    }

    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v32 = v8;
    v18 = v8;
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
    aBlock[4] = v31;
    v35 = v17;
    v24 = v17;
    v25 = _Block_copy(aBlock);
    v26 = MEMORY[0x1E69B8EA8];
    v27 = [(PKPaymentPassDetailViewController *)v31 transactionSourceCollection];
    v28 = [v27 transactionSourceIdentifiers];
    v29 = [(PKPaymentPassDetailViewController *)v31 pass];
    v30 = [v29 uniqueID];
    [v26 augmentTransactionsIfNeeded:v9 transactionSourceIdentifiers:v28 passUniqueID:v30 usingDataProvider:0 completion:v25];

    v8 = v32;
    v7 = v33;
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

- (void)didEvaluatePolicyToOpenBankConnectAccountCredentials:(id)a3 accountCredentialsTitle:(id)a4
{
  v6 = [_TtC9PassKitUI51BankConnectAccountCredentialsViewControllerProvider makeViewControllerWithAccountCredentials:a3 title:a4];
  v5 = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([v5 pk_settings_useStateDrivenNavigation])
  {
    [v5 pk_settings_pushViewController:v6];
  }

  else
  {
    [v5 pushViewController:v6 animated:1];
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
  v3 = [(PKPassDetailBankConnectSectionController *)self->_bankConnectSectionController allSectionIdentifiers];
  [(PKPaymentPassDetailViewController *)self reloadSections:v3];
}

- (void)didStartBankConnectAuthorizationForInstitution:(id)a3 withCompletion:(id)a4
{
  v34[5] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = *MEMORY[0x1E69BB6F8];
  v8 = a3;
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
  v15 = [v8 name];
  v34[3] = v15;
  v33[4] = *MEMORY[0x1E69BAC78];
  v16 = [(PKPaymentPassDetailViewController *)self pass];
  v17 = [v16 issuerCountryCode];
  v34[4] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:5];
  [v9 subject:v7 sendEvent:v18];

  v19 = +[PKDismissalPreventionAssertionManager sharedInstance];
  v20 = [v19 acquireAssertion];

  FKBankConnectAuthorizationViewControllerProviderClass_1 = getFKBankConnectAuthorizationViewControllerProviderClass_1();
  v22 = [(PKPaymentPassDetailViewController *)self pass];
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __99__PKPaymentPassDetailViewController_didStartBankConnectAuthorizationForInstitution_withCompletion___block_invoke;
  v29 = &unk_1E8018300;
  v31 = v20;
  v32 = v6;
  v30 = self;
  v23 = v20;
  v24 = v6;
  v25 = [(objc_class *)FKBankConnectAuthorizationViewControllerProviderClass_1 makeAuthorizationViewControllerWithPaymentPass:v22 institution:v8 completion:&v26];

  [(PKPaymentPassDetailViewController *)self presentViewController:v25 animated:1 completion:0, v26, v27, v28, v29, v30];
}

uint64_t __99__PKPaymentPassDetailViewController_didStartBankConnectAuthorizationForInstitution_withCompletion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

- (void)didUpdateBankConnectAccount:(id)a3
{
  v4 = a3;
  [(PKPaymentPassDetailViewController *)self setBankConnectAccount:v4];
  [(PKPassActionWidgetViewModel *)self->_widgetViewModel setBankConnectAccount:v4];

  [(PKPaymentPassDetailViewController *)self _setupWidgetViewIfNeeded];
  if (v4)
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

- (void)didSelectPrecursorPassRequestForAction:(id)a3 controller:(id)a4 sourceItem:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __109__PKPaymentPassDetailViewController_didSelectPrecursorPassRequestForAction_controller_sourceItem_completion___block_invoke;
  aBlock[3] = &unk_1E8010B50;
  v14 = v13;
  v20 = v14;
  v15 = _Block_copy(aBlock);
  v16 = [v10 actionType];
  if (v16 <= 2)
  {
    switch(v16)
    {
      case 0:
LABEL_10:
        v15[2](v15);
        break;
      case 1:
LABEL_14:
        [(PKPaymentPassDetailViewController *)self _startPrecursorProvisioningWithController:v11 completion:v15];
        break;
      case 2:
LABEL_9:
        [(PKPaymentPassDetailViewController *)self _didSelectDeleteCardFromSourceItem:v12];
        goto LABEL_10;
    }
  }

  else
  {
    if (v16 <= 4)
    {
      if (v16 != 3)
      {
        v17 = [v10 actionURL];
        if (v17)
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

    if (v16 == 5)
    {
      v17 = [v10 actionURL];
      if (v17)
      {
        PKOpenURL();
      }

      goto LABEL_17;
    }

    if (v16 == 6)
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

- (void)didSelectDigitalIDForSectionController:(id)a3 tableViewCell:(id)a4 completion:(id)a5
{
  v6 = a4;
  v7 = [PKIdentityDocumentDetailsViewController alloc];
  v8 = [(PKPaymentPassDetailViewController *)self pass];
  v9 = [(PKPaymentPassDetailViewController *)self paymentServiceDataProvider];
  v10 = [(PKIdentityDocumentDetailsViewController *)v7 initDigitalIDViewWithPass:v8 dataProvider:v9 detailViewStyle:[(PKPaymentPassDetailViewController *)self detailViewStyle]];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __101__PKPaymentPassDetailViewController_didSelectDigitalIDForSectionController_tableViewCell_completion___block_invoke;
  v13[3] = &unk_1E8026638;
  v13[4] = self;
  v14 = v6;
  v15 = v10;
  v11 = v10;
  v12 = v6;
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

- (void)didSelectDeleteReAddForSectionController:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_webService;
  v9 = self->_pass;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PKPaymentPassDetailViewController_didSelectDeleteReAddForSectionController_completion___block_invoke;
  aBlock[3] = &unk_1E8010EE0;
  v10 = v7;
  v22 = v10;
  objc_copyWeak(&v23, &location);
  v11 = _Block_copy(aBlock);
  v12 = [(PKPaymentWebService *)v8 targetDevice];
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
  [v12 paymentWebService:v14 removePass:v15 withCompletionHandler:v16];

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
    v3 = [(PKPaymentPass *)self->_pass uniqueID];
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __64__PKPaymentPassDetailViewController_presentPassAlertIfNecessary__block_invoke;
    v5[3] = &unk_1E80110E0;
    objc_copyWeak(&v7, &location);
    v4 = v3;
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

- (void)appViewContentSizeChanged:(id)a3
{
  v4 = [(PKPaymentPassDetailViewController *)self tableView];
  [v4 beginUpdates];

  v5 = [(PKPaymentPassDetailViewController *)self tableView];
  [v5 endUpdates];
}

- (BOOL)handleDeletePassWithUniqueID:(id)a3
{
  pass = self->_pass;
  v5 = a3;
  v6 = [(PKPaymentPass *)pass uniqueID];
  v7 = PKEqualObjects();

  if (v7)
  {
    [(PKPaymentPassDetailViewController *)self _didSelectDeleteCardFromSourceItem:0];
  }

  return v7;
}

- (void)popViewControllerInMerchantTokenStack
{
  v3 = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([v3 pk_settings_useStateDrivenNavigation])
  {
    [v3 pk_settings_popViewController];
  }

  else
  {
    v2 = [v3 popViewControllerAnimated:1];
  }
}

- (void)presentMerchantTokenViewController:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentPassDetailViewController *)self navigationController];
  if ([v5 pk_settings_useStateDrivenNavigation])
  {
    [v5 pk_settings_pushViewController:v4];
  }

  else
  {
    [v5 pushViewController:v4 animated:1];
  }
}

- (void)willToggleExpress
{
  v2 = [(PKPaymentPassDetailViewController *)self navigationController];
  v3 = [v2 navigationBar];

  [v3 setUserInteractionEnabled:0];
}

- (void)didFinishTogglingExpress
{
  v2 = [(PKPaymentPassDetailViewController *)self navigationController];
  v3 = [v2 navigationBar];

  [v3 setUserInteractionEnabled:1];
}

- (void)didSelectManageExpress
{
  if ((PKRunningInPassbook() & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = *MEMORY[0x1E69BC6E0];
    v5 = *MEMORY[0x1E69BC698];
    v6 = [(PKPaymentPass *)self->_pass uniqueID];
    v8 = [v3 stringWithFormat:@"%@://%@/%@/%@", v4, v5, v6, *MEMORY[0x1E69BC6A0]];

    v7 = [MEMORY[0x1E695DFF8] URLWithString:v8];
    PKOpenURL();
  }
}

- (void)userInfoChanged
{
  objc_initWeak(&location, self);
  v2 = [MEMORY[0x1E69B9000] sharedInstance];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__PKPaymentPassDetailViewController_userInfoChanged__block_invoke;
  v3[3] = &unk_1E8022410;
  objc_copyWeak(&v4, &location);
  [v2 userInfoWithCompletion:v3];

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