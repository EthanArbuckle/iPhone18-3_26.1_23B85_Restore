@interface PKPassGroupsViewController
+ (void)_beginSuppressingFooter;
+ (void)beginSuppressingFooter;
+ (void)endSuppressingFooter;
+ (void)endTrackingAction;
- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor;
- (BOOL)_canPerformExternalModalPresentation;
- (BOOL)_showNavigationBar;
- (BOOL)doesContainActivatedPaymentPasses;
- (BOOL)groupStackView:(id)view requiresSectionForPassType:(unint64_t)type withState:(id *)state;
- (BOOL)groupStackView:(id)view willHaveHeaderViewForPassType:(unint64_t)type withState:(id *)state;
- (BOOL)groupStackView:(id)view willHaveSubheaderViewsWithState:(id *)state;
- (BOOL)hasDiscoveryCardWithItemIdentifier:(id)identifier;
- (BOOL)hasDiscoveryContent;
- (BOOL)prefersExternalPresentation;
- (BOOL)presentSubcredentialPairingFlowIfPossibleWithConfig:(id)config animated:(BOOL)animated;
- (BOOL)supportsExternalPresentation;
- (BOOL)willActivateNavigationItemHandleWithVoucher:(id)voucher;
- (PKDashboardPassGroupViewController)dashboardPassGroupViewController;
- (PKDashboardPassGroupViewController)visibleDashboardPassGroupViewController;
- (PKNavigationItemConfiguration)_navigationItemConfiguration;
- (PKPassGroupStackView)groupStackView;
- (PKPassGroupsViewController)initWithCoder:(id)coder;
- (PKPassGroupsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_appleCardUpsellAlertWithAccount:(id)account;
- (id)_application_createTrailingItemGroups;
- (id)_barcodePassDetailsViewControllerForBarcodePass:(id)pass;
- (id)_createLeadingItemGroups;
- (id)_createTrailingItemGroups;
- (id)_dashboardPassGroupViewControllerWithRequirements:(unsigned __int8)requirements;
- (id)_initWithGroupsController:(char)controller kind:(void *)kind style:;
- (id)_init_application;
- (id)_leadingItemGroups;
- (id)_makeDiscoveryGalleryViewWithState:(id *)state;
- (id)_passFromGroupsControllerWithUniqueIdentifier:(id)identifier;
- (id)_passGroupsViewNavigationController;
- (id)_passPendingActivationToPresent;
- (id)_passToPresent;
- (id)_passWithDeviceAssessmentEducationToPresent;
- (id)_paymentPassDetailsViewControllerForPaymentPass:(id)pass;
- (id)_paymentSetupNavigationControllerForProvisioningController:(id)controller;
- (id)_peerPaymentAccountResolutionController;
- (id)_trailingItemGroups;
- (id)acquireNavigationItemVoucherForGroupStackView:(id)view;
- (id)configurationForNavigationItemHandle:(id)handle;
- (id)featuredGroup;
- (id)footerForGroupStackView:(id)view;
- (id)groupAtIndex:(unint64_t)index;
- (id)groupStackView:(id)view headerForPassType:(unint64_t)type withState:(id *)state;
- (id)groupStackView:(id)view subheadersWithState:(id *)state;
- (id)groupStackView:(id)view touchesShouldCancelInContentView:(id)contentView;
- (id)itemIdentifierForFrontmostDiscoveryCard;
- (id)passForSectionHeaderView:(id)view;
- (id)presentationContextForFieldProperties:(id)properties fieldPassUniqueIdentifiers:(id)identifiers passUniqueIdentifierToPresent:(id *)present;
- (id)presentedPass;
- (id)providerForNavigationItemController:(id)controller;
- (int64_t)_cardSizeTypeForArticleLayouts:(id)layouts;
- (int64_t)visibilityBackdropView:(id)view preferredStyleForTraitCollection:(id)collection;
- (void)_applyNavigationItemConfiguration:(id)configuration;
- (void)_applyPresentationState;
- (void)_beginSuppressingInstanceFooter;
- (void)_clearPassViewedNotificationTimer;
- (void)_createNavigationGroups;
- (void)_endSuppressingInstanceFooterWithContext:(id)context;
- (void)_fetchAutoFillCards:(id)cards;
- (void)_handleChildViewControllerRequestingServiceMode:(id)mode;
- (void)_handleExpressNotification;
- (void)_handlePeerPaymentAccountDidChangeNotification:(id)notification;
- (void)_handleProvisioningError:(id)error;
- (void)_handleStatusBarChange:(id)change;
- (void)_invalidateForType:(int64_t)type;
- (void)_passViewedNotificationTimerFired;
- (void)_presentAccountTransactionDetailsForTransaction:(id)transaction;
- (void)_presentAddPassesControllerWithPasses:(id)passes;
- (void)_presentExpiredPasses;
- (void)_presentFPANConsentFlowWithEligibleCredentials:(id)credentials ineligibleCredentials:(id)ineligibleCredentials selectedCredentials:(id)selectedCredentials referralSource:(unint64_t)source showProvisioningSection:(BOOL)section animated:(BOOL)animated completion:(id)completion;
- (void)_presentGroupWithIndex:(unint64_t)index context:(id)context animated:(BOOL)animated completionHandler:(id)handler;
- (void)_presentHowToUseWalletWithModel:(id)model destinationCard:(id)card;
- (void)_presentShareRedemptionFlowWithInvitation:(id)invitation handle:(id)handle referralSource:(id)source originalShareURL:(id)l;
- (void)_presentSubcredentialPairingFlowWithConfig:(id)config animated:(BOOL)animated;
- (void)_presentTransactionDetailsForTransaction:(id)transaction forPaymentPass:(id)pass confirmPaymentOfferPlan:(BOOL)plan;
- (void)_presentTransactionDetailsForTransaction:(id)transaction transactionSourceType:(unint64_t)type confirmPaymentOfferPlan:(BOOL)plan;
- (void)_regionConfigurationDidChangeNotification;
- (void)_registerForExpressTransactionNotifications:(BOOL)notifications;
- (void)_setExternalNavigationController:(void *)controller;
- (void)_setupItemForExpressUpgradeWithAsset:(id)asset hideDisableAction:(unint64_t)action pass:(id)pass reportingMetadata:(id)metadata completionHandler:(id)handler;
- (void)_startPassViewedNotificationTimer;
- (void)_updateFooterSuppressionAnimated:(BOOL)animated;
- (void)_updateFooterSuppressionWithContext:(id)context;
- (void)_updateNavigationItemAnimated:(BOOL)animated;
- (void)_warnFailForward;
- (void)accountServiceAccountResolutionController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated;
- (void)addVASPassWithIdentifier:(id)identifier;
- (void)allowIdleTimer;
- (void)applicationMessageView:(id)view requestsContentDismissal:(id)dismissal;
- (void)applicationMessageView:(id)view tappedApplicationMessageWithKey:(id)key;
- (void)applicationMessageViewNeedsRemoval:(id)removal;
- (void)applicationMessageViewNeedsSizeUpdate:(id)update;
- (void)beginProvidingForNavigationItemHandle:(id)handle withConsumedVoucher:(id)voucher;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)coder;
- (void)didDeactivateNavigationItemController:(id)controller dirty:(BOOL)dirty;
- (void)didReceivePendingProvisioningUpdate:(id)update;
- (void)didUpdateApplicationMessages:(id)messages;
- (void)discoveryDataSource:(id)source didUpdateArticleLayouts:(id)layouts;
- (void)dismissDiscoveryArticleViewController:(id)controller afterActionCompleted:(BOOL)completed withRelevantPassUniqueIdenitifer:(id)idenitifer;
- (void)dismissPresentedVCsWithRequirements:(unint64_t)requirements animated:(BOOL)animated performAction:(id)action;
- (void)dismissVerificationPageForPassWithDeviceAccountID:(id)d;
- (void)encodeRestorableStateWithCoder:(id)coder;
- (void)endProvidingForNavigationItemHandle:(id)handle;
- (void)finishedEditingExpiredPass;
- (void)forceModalPresentationFromButton:(BOOL)button;
- (void)foregroundActiveArbiter:(id)arbiter didUpdateForegroundActiveState:(id)state;
- (void)groupStackView:(id)view deleteConfirmedForPass:(id)pass;
- (void)groupStackView:(id)view didTransitionToState:(int64_t)state animated:(BOOL)animated;
- (void)groupStackView:(id)view wantsBottomContentSeparatorWithVisibility:(double)visibility animated:(BOOL)animated;
- (void)groupStackView:(id)view wantsTopContentSeparatorWithVisibility:(double)visibility animated:(BOOL)animated;
- (void)groupStackViewDidChangeCoachingState:(id)state;
- (void)groupStackViewDidChangeContentScrollView:(id)view;
- (void)groupsController:(id)controller didInsertGroup:(id)group atIndex:(unint64_t)index;
- (void)groupsController:(id)controller didMoveGroup:(id)group fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)groupsController:(id)controller didRemoveGroup:(id)group atIndex:(unint64_t)index;
- (void)inboxDataSourceDidUpdateInboxMessages:(id)messages;
- (void)loadView;
- (void)navigationItemController:(id)controller updateItemWithConfiguration:(id)configuration;
- (void)passPersonalizationViewController:(id)controller didFinishPersonalizingPass:(id)pass success:(BOOL)success;
- (void)paymentDeviceDidEnterFieldWithProperties:(id)properties;
- (void)paymentDeviceDidExitField;
- (void)paymentServiceReceivedInterruption;
- (void)paymentSetupDidFinish:(id)finish;
- (void)peerPaymentAccountResolutionController:(id)controller requestsDismissCurrentViewControllerAnimated:(BOOL)animated;
- (void)peerPaymentAccountResolutionController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated;
- (void)performActionViewControllerDidCancel:(id)cancel;
- (void)performActionViewControllerDidPerformAction:(id)action;
- (void)presentAccountFeature:(unint64_t)feature animated:(BOOL)animated destination:(unint64_t)destination fundingSourceIdentifier:(id)identifier completion:(id)completion;
- (void)presentAccountPromotionForPassUniqueIdentifier:(id)identifier programIdentifier:(id)programIdentifier animated:(BOOL)animated completion:(id)completion;
- (void)presentAccountServiceSchedulePayment:(id)payment billPayAmountType:(int64_t)type billPayAmount:(id)amount completion:(id)completion;
- (void)presentActionViewControllerWithUniqueID:(id)d actionType:(unint64_t)type;
- (void)presentAddShareablePassConfiguration:(id)configuration animated:(BOOL)animated;
- (void)presentAppStorePageForItemWithIdentifier:(id)identifier;
- (void)presentAppleBalanceAddMoneyAnimated:(BOOL)animated completion:(id)completion;
- (void)presentAppleBalanceAddMoneyDirectTopUpAnimated:(BOOL)animated completion:(id)completion;
- (void)presentAppleBalanceAddMoneyInStoreTopUpAnimated:(BOOL)animated completion:(id)completion;
- (void)presentApplePayUserEducationDemoFromSource:(unint64_t)source;
- (void)presentApplicationWithIdentifier:(id)identifier;
- (void)presentAuthorizationFlowAnimated:(BOOL)animated completion:(id)completion;
- (void)presentAuthorizationViewControllerWithSession:(id)session animated:(BOOL)animated completion:(id)completion;
- (void)presentAutoFillCards;
- (void)presentAuxiliaryPassInformationItemDetailForItemIdentifier:(id)identifier informationIdentifier:(id)informationIdentifier forPassUniqueID:(id)d completion:(id)completion;
- (void)presentBackgroundRefreshConfirmationAnimated:(BOOL)animated;
- (void)presentBalanceDetailsForPassUniqueIdentifier:(id)identifier animated:(BOOL)animated completion:(id)completion;
- (void)presentCreateAccountUserInvitationWithCompletion:(id)completion;
- (void)presentDailyCashForPassUniqueIdentifier:(id)identifier dateComponents:(id)components redemptionType:(unint64_t)type animated:(BOOL)animated completion:(id)completion;
- (void)presentDefaultPaymentPassInPaymentPresentationFromButton:(BOOL)button withAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)presentDiscoveryArticleForItemWithIdentifier:(id)identifier referrerIdentifier:(id)referrerIdentifier animated:(BOOL)animated completion:(id)completion;
- (void)presentEntitlementDetailsForPassUniqueIdentifier:(id)identifier;
- (void)presentExpiredPassWithUniqueID:(id)d animated:(BOOL)animated completionHandler:(id)handler;
- (void)presentExpiredPassesAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)presentExpressUpgradeDetailForPassUniqueID:(id)d assetIdentifier:(id)identifier hideDisableAction:(unint64_t)action reportingMetadata:(id)metadata animated:(BOOL)animated completionHandler:(id)handler;
- (void)presentFeatureSetupOrFeaturePass:(unint64_t)pass referrerIdentifier:(id)identifier presentationContext:(id)context completion:(id)completion;
- (void)presentGroupTableAnimated:(BOOL)animated;
- (void)presentHowToUseWallet;
- (void)presentHowToUseWalletWithCardLotIdentifier:(id)identifier;
- (void)presentInitialState:(BOOL *)state;
- (void)presentInstallmentPlanWithIdentifier:(id)identifier forAccountIdentifier:(id)accountIdentifier completion:(id)completion;
- (void)presentInstallmentPlansForFeature:(unint64_t)feature completion:(id)completion;
- (void)presentInvitationWithIdentifier:(id)identifier forAccountWithIdentifier:(id)withIdentifier completion:(id)completion;
- (void)presentInvitationsForHeaderView:(id)view;
- (void)presentInvitationsInboxAnimated:(BOOL)animated completion:(id)completion;
- (void)presentMerchantTokenWithIdentifier:(id)identifier animated:(BOOL)animated completion:(id)completion;
- (void)presentNotificationSettings;
- (void)presentOffscreenAnimated:(BOOL)animated split:(BOOL)split withCompletionHandler:(id)handler;
- (void)presentOnscreen:(BOOL)onscreen context:(id)context withCompletionHandler:(id)handler;
- (void)presentOrderManagementAnimated:(BOOL)animated completion:(id)completion;
- (void)presentPassDetailsAssociatedWithVirtualCardID:(id)d animated:(BOOL)animated completion:(id)completion;
- (void)presentPassDetailsForHeaderView:(id)view;
- (void)presentPassDetailsWithUniqueID:(id)d animated:(BOOL)animated action:(unint64_t)action completionHandler:(id)handler;
- (void)presentPassForFeatureIdentifier:(unint64_t)identifier animated:(BOOL)animated completion:(id)completion;
- (void)presentPassWithAssociatedAccountIdentifier:(id)identifier animated:(BOOL)animated completion:(id)completion;
- (void)presentPassWithFieldProperties:(id)properties fieldMetadata:(id)metadata animated:(BOOL)animated;
- (void)presentPassWithUniqueID:(id)d animated:(BOOL)animated campaignAttributionReferrerIdentifier:(id)identifier completionHandler:(id)handler;
- (void)presentPassWithUniqueID:(id)d context:(id)context animated:(BOOL)animated completionHandler:(id)handler;
- (void)presentPassWithUpdateUserNotificationIdentifier:(id)identifier;
- (void)presentPaymentOfferCriteriaIdentifier:(id)identifier productIdentifier:(id)productIdentifier;
- (void)presentPaymentSetupController;
- (void)presentPaymentSetupForHeaderView:(id)view;
- (void)presentPaymentSetupInMode:(int64_t)mode referrerIdentifier:(id)identifier referralSource:(id)source campaignIdentifier:(id)campaignIdentifier paymentNetwork:(id)network transitNetworkIdentifier:(id)networkIdentifier allowedFeatureIdentifiers:(id)identifiers productIdentifiers:(id)self0 sectionIdentifier:(id)self1;
- (void)presentPeerPaymentDeviceTapWithInitialAmount:(id)amount initialMemo:(id)memo;
- (void)presentPeerPaymentPassAnimated:(BOOL)animated campaignAttributionReferrerIdentifier:(id)identifier completion:(id)completion;
- (void)presentPeerPaymentRecurringPaymentWithIdentifier:(id)identifier;
- (void)presentPeerPaymentSendOrRequest;
- (void)presentPeerPaymentSetupWithConfiguration:(id)configuration;
- (void)presentPeerPaymentTermsAcceptance;
- (void)presentPeerPaymentTopUp;
- (void)presentPeerPaymentTransferToBank;
- (void)presentPeerPaymentVerifyIdentity;
- (void)presentPileOffscreen;
- (void)presentPrecursorPassUpdateForPassUniqueIdentifier:(id)identifier;
- (void)presentProvisioningForPendingProvisioningOfType:(id)type identifier:(id)identifier;
- (void)presentRewardsHubForPassUniqueIdentifier:(id)identifier animated:(BOOL)animated completion:(id)completion;
- (void)presentRewardsHubMerchantsForPassUniqueIdentifier:(id)identifier privateIdentifier:(id)privateIdentifier animated:(BOOL)animated completion:(id)completion;
- (void)presentSearchWithCompletion:(id)completion;
- (void)presentSearchWithQuery:(id)query completion:(id)completion;
- (void)presentSecurePassSessionWithIssuerData:(id)data withSignature:(id)signature animated:(BOOL)animated;
- (void)presentSetupVirtualCardNumberForPassUniqueIdentifier:(id)identifier animated:(BOOL)animated completion:(id)completion;
- (void)presentShareActivationWithShareIdentifier:(id)identifier;
- (void)presentShareDetailsForPassUniqueIdentifier:(id)identifier shareIdentifier:(id)shareIdentifier;
- (void)presentShareInvitationWithMailboxAddress:(id)address referralSource:(id)source animated:(BOOL)animated;
- (void)presentShareableCredentialWithEncryptedProvisioningTargetsHexEncodedString:(id)string passThumbnailImageData:(id)data animated:(BOOL)animated;
- (void)presentSpendingSummaryForPassUniqueIdentifier:(id)identifier type:(unint64_t)type categorization:(unint64_t)categorization unit:(unint64_t)unit animated:(BOOL)animated completion:(id)completion;
- (void)presentTransactionDetailsForBankConnectTransaction:(id)transaction applePayPrimaryAccountIdentifier:(id)identifier;
- (void)presentTransactionDetailsForTransactionWithIdentifier:(id)identifier confirmPaymentOfferPlan:(BOOL)plan;
- (void)presentTransactionDetailsForTransactionWithServiceIdentifier:(id)identifier transactionSourceIdentifier:(id)sourceIdentifier confirmPaymentOfferPlan:(BOOL)plan;
- (void)reloadPasses;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)showStatementForIdentifier:(id)identifier passUniqueIdentifier:(id)uniqueIdentifier animated:(BOOL)animated completion:(id)completion;
- (void)startPaymentPreflight:(id)preflight withPaymentSetupMode:(int64_t)mode referrerIdentifier:(id)identifier referralSource:(id)source campaignIdentifier:(id)campaignIdentifier paymentNetworks:(id)networks transitNetworkIdentifiers:(id)identifiers allowedFeatureIdentifiers:(id)self0 productIdentifiers:(id)self1 sectionIdentifier:(id)self2;
- (void)updateLockscreenIdleTimer;
- (void)updatePassesIfNecessaryWithCompletion:(id)completion;
- (void)updateRegionSupportIfNecessary;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)virtualCardEnrollmentViewController:(id)controller didCompleteWithSuccess:(BOOL)success;
- (void)willActivateNavigationItemController:(id)controller;
@end

@implementation PKPassGroupsViewController

- (id)itemIdentifierForFrontmostDiscoveryCard
{
  if ([(PKPassGroupsViewController *)self hasDiscoveryContent]&& (v3 = objc_loadWeakRetained(&self->_discoveryGalleryView), v3, v3))
  {
    WeakRetained = objc_loadWeakRetained(&self->_discoveryGalleryView);
    frontmostItemIdentifier = [WeakRetained frontmostItemIdentifier];
  }

  else
  {
    frontmostItemIdentifier = 0;
  }

  return frontmostItemIdentifier;
}

- (BOOL)hasDiscoveryContent
{
  articleLayouts = [(PKDiscoveryDataSource *)self->_discoveryDataSource articleLayouts];
  v3 = [articleLayouts count] != 0;

  return v3;
}

- (void)loadView
{
  v37 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = PKPassGroupsViewController;
  [(PKPassGroupsViewController *)&v32 loadView];
  if (self->_invalidationStatus)
  {
    return;
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [[PKPassGroupStackView alloc] initWithFrame:v5, v7, v9, v11];
  groupStackView = self->_groupStackView;
  self->_groupStackView = v12;

  [(PKPassGroupStackView *)self->_groupStackView setScrollEnabled:0];
  v14 = self->_groupStackView;
  if (v14)
  {
    v14->_externalNavigationController = self->_externalNavigationController;
    v15 = self->_groupStackView;
    p_kind = &self->_kind;
    v17 = self->_kind == 1;
    if (v15 && v15->_parentViewControllerWantsNavigationBar != v17)
    {
      v15->_parentViewControllerWantsNavigationBar = v17;
      [(PKPassGroupStackView *)v15 _updateNeedsNavigationBar];
      v15 = self->_groupStackView;
    }
  }

  else
  {
    v15 = 0;
    p_kind = &self->_kind;
  }

  contentScrollView = [(PKPassGroupStackView *)v15 contentScrollView];
  contentScrollView = self->_contentScrollView;
  self->_contentScrollView = contentScrollView;

  [(PKPassGroupsViewController *)self setContentScrollView:self->_contentScrollView forEdge:15];
  [(PKPassGroupStackView *)self->_groupStackView setDiscoveryDatasource:self->_discoveryDataSource];
  [(PKPassGroupStackView *)self->_groupStackView setGroupsController:self->_groupsController];
  [(PKPassGroupStackView *)self->_groupStackView setDatasource:self];
  [(PKPassGroupStackView *)self->_groupStackView setDelegate:self];
  v20 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = self->_groupStackView;
    *buf = 134349312;
    selfCopy = self;
    v35 = 2050;
    v36 = v21;
    _os_log_impl(&dword_1BD026000, v20, OS_LOG_TYPE_DEFAULT, "PKPassGroupsViewController (%{public}p): created PKPassGroupStackView %{public}p.", buf, 0x16u);
  }

  [(PKPassGroupsViewController *)self _updatePeerPaymentAccount];
  view = [(PKPassGroupsViewController *)self view];
  [view setAutoresizingMask:0];
  [view addSubview:self->_groupStackView];
  [view addSubview:self->_headerBackground];
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    [view addSubview:self->_footerBackground];
  }

  style = self->_style;
  if (style == 1)
  {
    [view setOpaque:0];
    [view setClipsToBounds:1];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    goto LABEL_14;
  }

  if (!style)
  {
    [view setOpaque:1];
    clearColor = +[PKPassGroupStackView backgroundColor];
LABEL_14:
    v25 = clearColor;
    [view setBackgroundColor:clearColor];
  }

  if (!self->_invalidationStatus)
  {
    paymentService = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = self->_paymentService;
    self->_paymentService = paymentService;

    [(PKPaymentService *)self->_paymentService registerObserver:self];
    objc_initWeak(buf, self);
    v28 = self->_paymentService;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __38__PKPassGroupsViewController_loadView__block_invoke;
    v30[3] = &unk_1E8011158;
    objc_copyWeak(&v31, buf);
    [(PKPaymentService *)v28 applicationMessagesWithCompletion:v30];
    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }

  if (*p_kind == 1)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__localeDidChangeNotification_ name:*MEMORY[0x1E695D8F0] object:0];
    [defaultCenter addObserver:self selector:sel__regionConfigurationDidChangeNotification name:*MEMORY[0x1E69BC4F8] object:0];
  }

  [(PKPassGroupsViewController *)self _updateNavigationItemAnimated:0];
}

void __38__PKPassGroupsViewController_loadView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__PKPassGroupsViewController_loadView__block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

- (BOOL)prefersExternalPresentation
{
  kind = self->_kind;
  if (kind >= 3)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(self) = kind == 1;
  }

  return self;
}

- (BOOL)supportsExternalPresentation
{
  kind = self->_kind;
  if (kind >= 3)
  {
    __break(1u);
  }

  else
  {
    LODWORD(self) = (6u >> (kind & 7)) & 1;
  }

  return self;
}

- (void)_applyPresentationState
{
  [(PKPassGroupStackView *)self->_groupStackView setPresentationState:self->_presentationState animated:0];
  v3 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PKPassGroupsViewController__applyPresentationState__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
}

- (void)viewSafeAreaInsetsDidChange
{
  v5.receiver = self;
  v5.super_class = PKPassGroupsViewController;
  [(PKPassGroupsViewController *)&v5 viewSafeAreaInsetsDidChange];
  viewIfLoaded = [(PKPassGroupsViewController *)self viewIfLoaded];
  v4 = viewIfLoaded;
  if (viewIfLoaded)
  {
    [viewIfLoaded setNeedsLayout];
  }
}

- (void)viewWillLayoutSubviews
{
  v21.receiver = self;
  v21.super_class = PKPassGroupsViewController;
  [(PKPassGroupsViewController *)&v21 viewWillLayoutSubviews];
  view = [(PKPassGroupsViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [view safeAreaInsets];
  v13 = v12;
  v15 = v14;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  if (self->_headerBackground)
  {
    remainder.origin.x = v5;
    remainder.origin.y = v7;
    remainder.size.width = v9;
    remainder.size.height = v11;
    v22.origin.x = v5;
    v22.origin.y = v7;
    v22.size.width = v9;
    v22.size.height = v11;
    CGRectDivide(v22, &slice, &remainder, v13, CGRectMinYEdge);
    [(_PKVisibilityBackdropView *)self->_headerBackground frame];
    if (!CGRectEqualToRect(v23, slice))
    {
      [(_PKVisibilityBackdropView *)self->_headerBackground setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
    }
  }

  groupStackView = self->_groupStackView;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52__PKPassGroupsViewController_viewWillLayoutSubviews__block_invoke;
  v18[3] = &unk_1E8012160;
  v18[4] = self;
  *&v18[5] = v5;
  *&v18[6] = v7;
  *&v18[7] = v9;
  *&v18[8] = v11;
  IsAnimated = PKCATrackedLayoutIsAnimated();
  [(PKPassGroupStackView *)groupStackView _performGeometryUpdates:v18 animated:IsAnimated];
  if (self->_footerBackground)
  {
    remainder.origin.x = v5;
    remainder.origin.y = v7;
    remainder.size.width = v9;
    remainder.size.height = v11;
    v24.origin.x = v5;
    v24.origin.y = v7;
    v24.size.width = v9;
    v24.size.height = v11;
    CGRectDivide(v24, &slice, &remainder, v15, CGRectMaxYEdge);
    [(_PKVisibilityBackdropView *)self->_footerBackground setHidden:slice.size.height <= 0.0, slice.size.height];
    [(_PKVisibilityBackdropView *)self->_footerBackground frame];
    if (!CGRectEqualToRect(v25, slice))
    {
      [(_PKVisibilityBackdropView *)self->_footerBackground setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
    }
  }
}

uint64_t __52__PKPassGroupsViewController_viewWillLayoutSubviews__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1152) frame];
  result = CGRectEqualToRect(v9, *(a1 + 40));
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 1152);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);

    return [v3 setFrame:{v4, v5, v6, v7}];
  }

  return result;
}

void __38__PKPassGroupsViewController_loadView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && !WeakRetained[126])
  {
    v4 = WeakRetained;
    v3 = [*(a1 + 32) count] ? *(a1 + 32) : 0;
    objc_storeStrong(v4 + 174, v3);
    WeakRetained = v4;
    if (v4[174])
    {
      [v4[144] updateHeaderAndSubheaderViewsIfNecessary];
      WeakRetained = v4;
    }
  }
}

- (id)_passToPresent
{
  _passPendingActivationToPresent = [(PKPassGroupsViewController *)self _passPendingActivationToPresent];
  v4 = _passPendingActivationToPresent;
  if (_passPendingActivationToPresent)
  {
    v5 = _passPendingActivationToPresent;
  }

  else
  {
    _passWithDeviceAssessmentEducationToPresent = [(PKPassGroupsViewController *)self _passWithDeviceAssessmentEducationToPresent];
    v5 = _passWithDeviceAssessmentEducationToPresent;
    if (_passWithDeviceAssessmentEducationToPresent)
    {
      v7 = _passWithDeviceAssessmentEducationToPresent;
    }
  }

  return v5;
}

- (id)_passPendingActivationToPresent
{
  if (PKSharedCacheGetBoolForKey())
  {
    firstObject = 0;
  }

  else
  {
    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    passesPendingActivation = [mEMORY[0x1E69B8A58] passesPendingActivation];
    if ([passesPendingActivation count])
    {
      firstObject = [passesPendingActivation firstObject];
      PKSharedCacheSetBoolForKey();
    }

    else
    {
      firstObject = 0;
    }
  }

  return firstObject;
}

- (id)_passWithDeviceAssessmentEducationToPresent
{
  if (PKHasSeenDeviceAssessmentEducation())
  {
    v2 = 0;
  }

  else
  {
    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    v4 = [mEMORY[0x1E69B8A58] passesOfType:1];

    v2 = [v4 pk_firstObjectPassingTest:&__block_literal_global_388];
  }

  return v2;
}

uint64_t __73__PKPassGroupsViewController__passWithDeviceAssessmentEducationToPresent__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69B8EF8];
  v3 = a2;
  v4 = [v2 sharedService];
  v5 = [v3 supportsDeviceAssessmentAccordingToService:v4];

  return v5;
}

- (void)updateRegionSupportIfNecessary
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Updating region support", buf, 2u);
  }

  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v4 = MEMORY[0x1E69B8D58];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__PKPassGroupsViewController_updateRegionSupportIfNecessary__block_invoke;
  v6[3] = &unk_1E8013908;
  v7 = mEMORY[0x1E69B8EF8];
  v5 = mEMORY[0x1E69B8EF8];
  [v4 configureWebServiceIfNecessary:v5 completion:v6];
}

+ (void)endTrackingAction
{
  if (!atomic_fetch_add(&ActionCounter, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "INVARIANT VIOLATION: attempting to stop tracking a non-existent action.", v3, 2u);
    }

    atomic_fetch_add(&ActionCounter, 1uLL);
  }
}

+ (void)beginSuppressingFooter
{
  if (!atomic_fetch_add(&FooterSuppressionCounter, 1uLL))
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_242);
  }
}

void __52__PKPassGroupsViewController_beginSuppressingFooter__block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"PKPassGroupsViewControllerFooterSupressionDidChange" object:0];
}

+ (void)_beginSuppressingFooter
{
  if (!atomic_fetch_add(&FooterSuppressionCounter, 1uLL))
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PKPassGroupsViewControllerFooterSupressionDidChange" object:0];
  }
}

+ (void)endSuppressingFooter
{
  add = atomic_fetch_add(&FooterSuppressionCounter, 0xFFFFFFFFFFFFFFFFLL);
  if (add == 1)
  {
    v4 = MEMORY[0x1E69E96A0];

    dispatch_async(v4, &__block_literal_global_69);
  }

  else if (!add)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "INVARIANT VIOLATION: attempting to end footer suppression when already stopped.", v5, 2u);
    }

    atomic_fetch_add(&FooterSuppressionCounter, 1uLL);
  }
}

void __50__PKPassGroupsViewController_endSuppressingFooter__block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"PKPassGroupsViewControllerFooterSupressionDidChange" object:0];
}

- (PKPassGroupsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  result = bundle;
  __break(1u);
  return result;
}

- (PKPassGroupsViewController)initWithCoder:(id)coder
{
  result = coder;
  __break(1u);
  return result;
}

- (id)_init_application
{
  v3 = objc_alloc_init(MEMORY[0x1E69B88E0]);
  v4 = [(PKPassGroupsViewController *)&self->super.super.super.isa _initWithGroupsController:v3 kind:1 style:1];

  return v4;
}

- (id)_initWithGroupsController:(char)controller kind:(void *)kind style:
{
  v8 = a2;
  if (self)
  {
    v38.receiver = self;
    v38.super_class = PKPassGroupsViewController;
    v9 = objc_msgSendSuper2(&v38, sel_initWithNibName_bundle_, 0, 0);
    self = v9;
    if (v9)
    {
      *(v9 + 992) = controller;
      v9[125] = kind;
      *(v9 + 1293) = [MEMORY[0x1E69B91E0] isInFailForward];
      if (PKSecureElementIsAvailable())
      {
        v10 = *(self + 1293) ^ 1;
      }

      else
      {
        v10 = 0;
      }

      *(self + 1294) = v10 & 1;
      if (*(self + 1294))
      {
        v11 = MEMORY[0x1E69B8D58];
        mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
        *(self + 1295) = [v11 _isPaymentSetupSupportedForWebService:mEMORY[0x1E69B8EF8]];
      }

      else
      {
        *(self + 1295) = 0;
      }

      objc_storeStrong(self + 178, a2);
      [v8 setShouldSeparatePaymentPasses:*(self + 992) == 1];
      [self[178] setDelegate:self];
      [self[178] loadGroupsSynchronously];
      self[156] = 1;
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = self[159];
      self[159] = v13;

      *(self + 1416) = 0;
      *(self + 1417) = 1;
      v15 = PKIsLowEndDevice();
      v16 = 512;
      if (!v15)
      {
        v16 = 0;
      }

      self[179] = v16;
      v17 = objc_alloc_init(MEMORY[0x1E69B8A60]);
      v18 = self[164];
      self[164] = v17;

      mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
      v20 = self[165];
      self[165] = mEMORY[0x1E69B9000];

      v21 = objc_alloc_init(MEMORY[0x1E69B8680]);
      v22 = self[170];
      self[170] = v21;

      v23 = [objc_alloc(MEMORY[0x1E69B87E0]) initWithDelegate:self];
      v24 = self[172];
      self[172] = v23;

      v25 = [PKContactAvatarManager alloc];
      defaultContactResolver = [MEMORY[0x1E69B8740] defaultContactResolver];
      defaultDataProvider = [MEMORY[0x1E69B8BD8] defaultDataProvider];
      v28 = [(PKContactAvatarManager *)v25 initWithContactResolver:defaultContactResolver paymentDataProvider:defaultDataProvider];
      v29 = self[173];
      self[173] = v28;

      v30 = [PKInboxDataSource alloc];
      if (*(self + 992) == 1)
      {
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }

      v32 = [(PKInboxDataSource *)v30 initWithDelegate:selfCopy];
      v33 = self[168];
      self[168] = v32;

      [self setRestorationIdentifier:@"PKPassGroupsViewController"];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__handleStatusBarChange_ name:*MEMORY[0x1E69DDAB8] object:0];
      [defaultCenter addObserver:self selector:sel__handleFooterSupressionChange_ name:@"PKPassGroupsViewControllerFooterSupressionDidChange" object:0];
      [defaultCenter addObserver:self selector:sel__handlePeerPaymentAccountDidChangeNotification_ name:*MEMORY[0x1E69BC360] object:self[165]];
      if ((PKRunningInRemoteContext() & 1) == 0)
      {
        [defaultCenter addObserver:self selector:sel__handleChildViewControllerRequestingServiceMode_ name:@"PKPDVCRequestedServiceMode" object:0];
      }

      v35 = +[PKUIForegroundActiveArbiter sharedInstance];
      v36 = v35;
      if (v35)
      {
        *(self + 508) = [v35 registerObserver:self];
      }

      else
      {
        *(self + 508) = 257;
      }

      *(self + 326) = -1;
      [self _registerForExpressTransactionNotifications:*(self + 1017)];
      [self _createNavigationGroups];
    }
  }

  return self;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4 = +[PKUIForegroundActiveArbiter sharedInstance];
  [v4 unregisterObserver:self];

  [(PKPassGroupsViewController *)self _registerForExpressTransactionNotifications:0];
  [(PKGroupsController *)self->_groupsController setDelegate:0];
  [(PKPassGroupStackView *)self->_groupStackView setDatasource:0];
  [(PKPassGroupStackView *)self->_groupStackView setDelegate:0];
  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  [(NSTimer *)self->_allowDimmingTimer invalidate];
  [(NSTimer *)self->_passViewedNotificationTimer invalidate];
  [self->_LAContext invalidate];
  LAContext = self->_LAContext;
  self->_LAContext = 0;

  [(PKPassGroupsViewController *)self invalidate];
  v6.receiver = self;
  v6.super_class = PKPassGroupsViewController;
  [(PKPassGroupsViewController *)&v6 dealloc];
}

- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor
{
  needsDefaultStatusBar = self->_needsDefaultStatusBar;
  v3 = 0;
  result.var1 = v3;
  result.var0 = needsDefaultStatusBar;
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = PKPassGroupsViewController;
  [(PKPassGroupsViewController *)&v6 viewWillAppear:?];
  self->_viewAppeared = 1;
  [(PKPassGroupsViewController *)self _updateFooterSuppressionAnimated:appearCopy];
  [(PKPassGroupStackView *)self->_groupStackView updateHeaderAndSubheaderViewsIfNecessary];
  if (!self->_viewWillAppearedBefore)
  {
    self->_viewWillAppearedBefore = 1;
    groupCount = [(PKGroupsController *)self->_groupsController groupCount];
    [(PKPassGroupStackView *)self->_groupStackView tilePassesEagerly:1];
    if (!groupCount)
    {
      [(PKPassGroupStackView *)self->_groupStackView setModalGroupIndex:0x7FFFFFFFFFFFFFFFLL];
      self->_presentationState = 4;
    }

    [(PKPassGroupsViewController *)self _applyPresentationState];
  }

  [(PKPassGroupStackView *)self->_groupStackView setPaused:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v12[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = PKPassGroupsViewController;
  [(PKPassGroupsViewController *)&v9 viewDidAppear:appear];
  v4 = MEMORY[0x1E69B8540];
  v12[0] = *MEMORY[0x1E69BB718];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v6 = *MEMORY[0x1E69BABE8];
  v10[0] = *MEMORY[0x1E69BA680];
  v10[1] = v6;
  v7 = *MEMORY[0x1E69BAC60];
  v11[0] = *MEMORY[0x1E69BA818];
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v4 subjects:v5 sendEvent:v8];

  if (!self->_viewDidAppearedBefore)
  {
    self->_viewDidAppearedBefore = 1;
    [(_PKVisibilityBackdropView *)self->_headerBackground pkui_setVisibility:1 animated:self->_headerBackgroundVisibility];
    [(_PKVisibilityBackdropView *)self->_footerBackground pkui_setVisibility:1 animated:self->_footerBackgroundVisibility];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69B8540];
  v13[0] = *MEMORY[0x1E69BB718];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v7 = *MEMORY[0x1E69BABE8];
  v11[0] = *MEMORY[0x1E69BA680];
  v11[1] = v7;
  v8 = *MEMORY[0x1E69BAC60];
  v12[0] = *MEMORY[0x1E69BA820];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v5 subjects:v6 sendEvent:v9];

  self->_viewAppeared = 0;
  [(PKPassGroupsViewController *)self _updateFooterSuppressionAnimated:disappearCopy];
  [(PKPassGroupStackView *)self->_groupStackView setPaused:1];
  v10.receiver = self;
  v10.super_class = PKPassGroupsViewController;
  [(PKPassGroupsViewController *)&v10 viewDidDisappear:disappearCopy];
}

- (void)decodeRestorableStateWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PKPassGroupsViewController;
  coderCopy = coder;
  [(PKPassGroupsViewController *)&v6 decodeRestorableStateWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"modalUniqueID", v6.receiver, v6.super_class}];

  if (v5)
  {
    [(PKPassGroupsViewController *)self presentPassWithUniqueID:v5 animated:0 completionHandler:0];
  }
}

- (void)encodeRestorableStateWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PKPassGroupsViewController;
  [(PKPassGroupsViewController *)&v8 encodeRestorableStateWithCoder:coderCopy];
  modalGroupFrontmostPass = [(PKPassGroupStackView *)self->_groupStackView modalGroupFrontmostPass];
  v6 = modalGroupFrontmostPass;
  if (modalGroupFrontmostPass)
  {
    uniqueID = [modalGroupFrontmostPass uniqueID];
    if (uniqueID)
    {
      [coderCopy encodeObject:uniqueID forKey:@"modalUniqueID"];
    }
  }
}

- (void)finishedEditingExpiredPass
{
  moreMenuFactory = self->_moreMenuFactory;
  if (moreMenuFactory)
  {
    [(PKPassGroupsMoreMenuFactory *)moreMenuFactory setExpiredPassesCount:[(PKGroupsController *)self->_groupsController expiredSectionPassesCount]];
    more = self->_navigationItem.trailing.more.items.more;
    if (more)
    {
      moreMenu = [(PKPassGroupsMoreMenuFactory *)self->_moreMenuFactory moreMenu];
      [(UIBarButtonItem *)more setMenu:moreMenu];
    }
  }
}

- (id)groupAtIndex:(unint64_t)index
{
  if ([(PKPassGroupsViewController *)self numberOfGroups]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(PKGroupsController *)self->_groupsController groupAtIndex:index];
  }

  return v5;
}

- (BOOL)hasDiscoveryCardWithItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_discoveryGalleryView);
  v6 = [WeakRetained cardViewForCardWithItemIdentifier:identifierCopy];

  return v6 != 0;
}

- (id)featuredGroup
{
  if (PKRunningInViewService())
  {
    account = [(PKPeerPaymentService *)self->_peerPaymentService account];
    if ([account supportsCardBalancePromotion] && (objc_msgSend(account, "cardBalancePromotionFeatureDescriptor"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "minimumAmount"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(account, "currentBalance"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "amount"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "compare:", v7), v7, v6, v5, v4, v8 != 1))
    {
      groupsController = self->_groupsController;
      associatedPassUniqueID = [account associatedPassUniqueID];
      v12 = [(PKGroupsController *)groupsController groupIndexForPassUniqueID:associatedPassUniqueID];

      v9 = [(PKGroupsController *)self->_groupsController groupAtIndex:v12];
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

  return v9;
}

- (BOOL)groupStackView:(id)view requiresSectionForPassType:(unint64_t)type withState:(id *)state
{
  viewCopy = view;
  if (!type)
  {
    if ((*(state + 16) & 2) == 0)
    {
      v11 = *&state->var0;
      v12 = *(state + 2);
      canAddSecureElementCards = ![(PKPassGroupsViewController *)self groupStackView:viewCopy requiresSectionForPassType:1 withState:&v11];
      goto LABEL_7;
    }

LABEL_6:
    canAddSecureElementCards = 0;
    goto LABEL_7;
  }

  if (type != 1)
  {
    goto LABEL_6;
  }

  canAddSecureElementCards = self->_canAddSecureElementCards;
LABEL_7:

  return canAddSecureElementCards & 1;
}

- (BOOL)groupStackView:(id)view willHaveHeaderViewForPassType:(unint64_t)type withState:(id *)state
{
  viewCopy = view;
  if (!type)
  {
    if ((*(state + 24) & 2) == 0)
    {
      v12 = *(&state->var0 + 1);
      v14[0] = *&state->var0.var0;
      v14[1] = v12;
      v11 = [(PKPassGroupsViewController *)self groupStackView:viewCopy willHaveHeaderViewForPassType:1 withState:v14];
      goto LABEL_7;
    }

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  if (type != 1)
  {
    goto LABEL_6;
  }

  paymentService = self->_paymentService;
  v10 = PKPendingProvisioningBackgroundProvisioningInBuddyTypes();
  v11 = [(PKPaymentService *)paymentService hasPendingProvisioningsOfTypes:v10];

LABEL_7:
  return v11;
}

- (BOOL)groupStackView:(id)view willHaveSubheaderViewsWithState:(id *)state
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationMessageView);
  v7 = WeakRetained;
  if (self->_messages || WeakRetained && ![WeakRetained needsRemoval])
  {
    v8 = 1;
  }

  else
  {

    objc_storeWeak(&self->_applicationMessageView, 0);
    discoveryDataSource = self->_discoveryDataSource;
    v10 = *(&state->var0 + 1);
    v12[0] = *&state->var0.var0;
    v12[1] = v10;
    v8 = [PKDiscoveryGalleryView isVisibleForSectionsState:v12 dataSource:discoveryDataSource];
    v7 = 0;
  }

  return v8;
}

- (id)groupStackView:(id)view headerForPassType:(unint64_t)type withState:(id *)state
{
  if (type == 1)
  {
    v8 = &OBJC_IVAR___PKPassGroupsViewController__paymentHeaderView;
    goto LABEL_5;
  }

  if (!type)
  {
    v8 = &OBJC_IVAR___PKPassGroupsViewController__barcodeHeaderView;
LABEL_5:
    v9 = (&self->super.super.super.isa + *v8);
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  paymentService = self->_paymentService;
  v11 = PKPendingProvisioningBackgroundProvisioningInBuddyTypes();
  v12 = [(PKPaymentService *)paymentService hasPendingProvisioningsOfTypes:v11];

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(v9);
    if (WeakRetained)
    {
      v14 = WeakRetained;
      if (![(PKGSVWalletHeaderView *)WeakRetained needsRemoval])
      {
LABEL_12:
        v17 = v14;

        goto LABEL_14;
      }
    }

    v15 = [PKGSVWalletHeaderView alloc];
    v16 = *(&state->var0 + 1);
    v19[0] = *&state->var0.var0;
    v19[1] = v16;
    v14 = [(PKGSVWalletHeaderView *)v15 initWithPassType:type state:v19 delegate:self];
    objc_storeWeak(v9, v14);
    [(PKGSVWalletHeaderView *)v14 setHeaderDelegate:self];
    [(PKGSVWalletHeaderView *)v14 setShowBackgroundProvisioningHint:v12 animated:0];
    goto LABEL_12;
  }

  v17 = 0;
LABEL_14:

  return v17;
}

- (id)groupStackView:(id)view subheadersWithState:(id *)state
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationMessageView);
  messages = self->_messages;
  if (!(messages | WeakRetained))
  {
    v8 = 0;
    goto LABEL_10;
  }

  v8 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_5;
  }

  if ([WeakRetained needsRemoval])
  {

    objc_storeWeak(&self->_applicationMessageView, 0);
    messages = self->_messages;
LABEL_5:
    if (messages)
    {
      v9 = [PKApplicationMessageViewConfiguration alloc];
      +[PKDiscoveryCardView compressedWidth];
      v11 = [(PKApplicationMessageViewConfiguration *)v9 initWithWidth:v10 + -8.0];
      v8 = [[PKApplicationMessageView alloc] initWithConfiguration:v11];
      objc_storeWeak(&self->_applicationMessageView, v8);

      v12 = *(&state->var0 + 1);
      v36 = *&state->var0.var0;
      v37 = v12;
      [(PKApplicationMessageView *)v8 setSectionsState:&v36];
      v13 = [MEMORY[0x1E69B85C0] createForMessages:self->_messages];
      [(PKApplicationMessageView *)v8 setContent:v13 animated:0];
      [(PKApplicationMessageView *)v8 bounds];
      v15 = v14;
      v17 = v16;
      configuration = [(PKApplicationMessageView *)v8 configuration];
      [configuration width];
      v20 = v19;

      [(PKApplicationMessageView *)v8 sizeThatFits:v20, 1.79769313e308];
      [(PKApplicationMessageView *)v8 setBounds:v15, v17, v21, v22];
      [(PKApplicationMessageView *)v8 layoutIfNeededAnimated:0];
      [(PKApplicationMessageView *)v8 setSubheaderDelegate:self];
      [(PKApplicationMessageView *)v8 setDelegate:self];

      goto LABEL_10;
    }

    v8 = 0;
  }

  v23 = *(&state->var0 + 1);
  v36 = *&state->var0.var0;
  v37 = v23;
  [(PKApplicationMessageView *)v8 setSectionsState:&v36];
LABEL_10:
  discoveryDataSource = self->_discoveryDataSource;
  v25 = *(&state->var0 + 1);
  v36 = *&state->var0.var0;
  v37 = v25;
  if ([PKDiscoveryGalleryView isVisibleForSectionsState:&v36 dataSource:discoveryDataSource])
  {
    v26 = objc_loadWeakRetained(&self->_discoveryGalleryView);
    if (v26)
    {
      v27 = v26;
      if (![v26 needsRemoval])
      {
        v33 = *(&state->var0 + 1);
        v36 = *&state->var0.var0;
        v37 = v33;
        [v27 setSectionsState:&v36];
        v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v31 = v34;
        if (v8)
        {
          [v34 addObject:v8];
        }

LABEL_24:
        [v31 addObject:v27];

        goto LABEL_25;
      }

      objc_storeWeak(&self->_discoveryGalleryView, 0);
    }

    v28 = *(&state->var0 + 1);
    v36 = *&state->var0.var0;
    v37 = v28;
    v27 = [(PKPassGroupsViewController *)self _makeDiscoveryGalleryViewWithState:&v36];
    objc_storeWeak(&self->_discoveryGalleryView, v27);
    layer = [v27 layer];
    [layer setAnchorPoint:{0.5, 0.0}];

    [v27 setSubheaderDelegate:self];
  }

  else
  {
    v27 = 0;
  }

  if (!(v8 | v27))
  {
    v32 = 0;
    goto LABEL_26;
  }

  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = v30;
  if (v8)
  {
    [v30 addObject:v8];
  }

  if (v27)
  {
    goto LABEL_24;
  }

LABEL_25:
  v32 = [v31 copy];

LABEL_26:

  return v32;
}

- (id)_makeDiscoveryGalleryViewWithState:(id *)state
{
  articleLayouts = [(PKDiscoveryDataSource *)self->_discoveryDataSource articleLayouts];
  v6 = [[PKDiscoveryGalleryView alloc] initWithCardSizeType:[(PKPassGroupsViewController *)self _cardSizeTypeForArticleLayouts:articleLayouts]];
  [(PKDiscoveryGalleryView *)v6 setDataSource:self->_discoveryDataSource];
  [(PKDiscoveryGalleryView *)v6 updateArticleLayouts:articleLayouts];
  v7 = *(&state->var0 + 1);
  v9[0] = *&state->var0.var0;
  v9[1] = v7;
  [(PKDiscoveryGalleryView *)v6 setSectionsState:v9];
  [(PKDiscoveryGalleryView *)v6 sizeToFit];

  return v6;
}

- (id)footerForGroupStackView:(id)view
{
  if (_UISolariumFeatureFlagEnabled())
  {
    v4 = 0;
  }

  else
  {
    refreshed = PKExpiredPassesRefreshEnabled();
    v6 = [PKPGSVFooterView alloc];
    v4 = [(PKPGSVFooterView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    if (refreshed)
    {
      [(PKPGSVFooterView *)v4 setExpiredSectionCount:[(PKGroupsController *)self->_groupsController expiredSectionPassesCount]];
    }

    [(PKPGSVFooterView *)v4 setDelegate:self];
    [(PKPGSVFooterView *)v4 sizeToFit];
    view = [(PKPassGroupsViewController *)self view];
    -[PKPGSVFooterView setOpaque:](v4, "setOpaque:", [view isOpaque]);
    backgroundColor = [view backgroundColor];
    [(PKPGSVFooterView *)v4 setBackgroundColor:backgroundColor];
  }

  return v4;
}

- (void)groupStackViewDidChangeContentScrollView:(id)view
{
  contentScrollView = [(PKPassGroupStackView *)self->_groupStackView contentScrollView];
  if (self->_contentScrollView != contentScrollView)
  {
    v5 = contentScrollView;
    objc_storeStrong(&self->_contentScrollView, contentScrollView);
    [(PKPassGroupsViewController *)self setContentScrollView:self->_contentScrollView forEdge:15];
    contentScrollView = v5;
  }
}

- (id)acquireNavigationItemVoucherForGroupStackView:(id)view
{
  viewCopy = view;
  p_navigationItem = &self->_navigationItem;
  v6 = self->_navigationItem.active.handle;
  v7 = v6;
  if (v6)
  {
    consume = [(PKNavigationItemHandle *)v6 consume];
LABEL_5:
    v10 = consume;

    return v10;
  }

  result = p_navigationItem->controller;
  if (p_navigationItem->controller)
  {
    [(PKNavigationItemController *)result _ensure];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

- (void)groupStackView:(id)view deleteConfirmedForPass:(id)pass
{
  groupsController = self->_groupsController;
  uniqueID = [pass uniqueID];
  [(PKGroupsController *)groupsController handleUserPassDelete:uniqueID];
}

- (id)groupStackView:(id)view touchesShouldCancelInContentView:(id)contentView
{
  contentViewCopy = contentView;
  WeakRetained = objc_loadWeakRetained(&self->_applicationMessageView);
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_applicationMessageView);
    v8 = [contentViewCopy isDescendantOfView:v7];

    if (v8)
    {
      WeakRetained = [MEMORY[0x1E696AD98] numberWithBool:1];
    }

    else
    {
      WeakRetained = 0;
    }
  }

  return WeakRetained;
}

- (void)allowIdleTimer
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] setIdleTimerDisabled:0];

  [(NSTimer *)self->_allowDimmingTimer invalidate];
  allowDimmingTimer = self->_allowDimmingTimer;
  self->_allowDimmingTimer = 0;
}

- (void)updateLockscreenIdleTimer
{
  if ((PKRunningInRemoteContext() & 1) == 0)
  {
    if ([(PKPassGroupStackView *)self->_groupStackView isPresentingPassViewFront]&& ([(PKPassGroupStackView *)self->_groupStackView modalGroupFrontmostPass], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v4 = v3;
      v5 = [v3 passType] != 1;
    }

    else
    {
      v5 = 0;
    }

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668] setIdleTimerDisabled:v5];

    [(NSTimer *)self->_allowDimmingTimer invalidate];
    allowDimmingTimer = self->_allowDimmingTimer;
    self->_allowDimmingTimer = 0;

    if (v5)
    {
      v8 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_allowIdleTimer selector:0 userInfo:0 repeats:120.0];
      v9 = self->_allowDimmingTimer;
      self->_allowDimmingTimer = v8;
    }
  }
}

- (void)_handleStatusBarChange:(id)change
{
  if (self->_viewAppeared)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v5 = [mEMORY[0x1E69DC668] applicationState] == 0;
  }

  else
  {
    v5 = 0;
  }

  view = [(PKPassGroupsViewController *)self view];
  [view layoutIfNeeded];
  [(PKPassGroupStackView *)self->_groupStackView layoutContentForCurrentPresentationState:v5];
}

- (void)_startPassViewedNotificationTimer
{
  modalGroupFrontmostPass = [(PKPassGroupStackView *)self->_groupStackView modalGroupFrontmostPass];
  if (modalGroupFrontmostPass)
  {
    v6 = modalGroupFrontmostPass;
    v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__passViewedNotificationTimerFired selector:0 userInfo:0 repeats:5.0];
    passViewedNotificationTimer = self->_passViewedNotificationTimer;
    self->_passViewedNotificationTimer = v4;

    modalGroupFrontmostPass = v6;
  }
}

- (void)_clearPassViewedNotificationTimer
{
  [(NSTimer *)self->_passViewedNotificationTimer invalidate];
  passViewedNotificationTimer = self->_passViewedNotificationTimer;
  self->_passViewedNotificationTimer = 0;
}

- (void)_passViewedNotificationTimerFired
{
  modalGroupFrontmostPass = [(PKPassGroupStackView *)self->_groupStackView modalGroupFrontmostPass];
  if (modalGroupFrontmostPass)
  {
    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    uniqueID = [modalGroupFrontmostPass uniqueID];
    [mEMORY[0x1E69B8A58] notifyPassUsedWithIdentifier:uniqueID fromSource:1];
  }

  passViewedNotificationTimer = self->_passViewedNotificationTimer;
  self->_passViewedNotificationTimer = 0;
}

- (void)foregroundActiveArbiter:(id)arbiter didUpdateForegroundActiveState:(id)state
{
  v4 = *&state.var0;
  arbiterCopy = arbiter;
  foregroundActive = self->_foregroundActiveState.foregroundActive;
  self->_foregroundActiveState = v4;
  if (foregroundActive != BYTE1(v4))
  {
    [(PKPassGroupsViewController *)self _registerForExpressTransactionNotifications:(v4 >> 8) & 1];
    if (self->_foregroundActiveState.foregroundActive)
    {
      self->_inField = 0;
      _passToPresent = [(PKPassGroupsViewController *)self _passToPresent];
      v9 = _passToPresent;
      if (_passToPresent)
      {
        uniqueID = [_passToPresent uniqueID];
        [(PKPassGroupsViewController *)self presentPassWithUniqueID:uniqueID animated:1 completionHandler:0];
      }

      if (([(PKPassGroupStackView *)self->_groupStackView presentationState]& 0xFFFFFFFFFFFFFFFDLL) == 5)
      {
        [(PKPassGroupsViewController *)self _clearPassViewedNotificationTimer];
        [(PKPassGroupsViewController *)self _startPassViewedNotificationTimer];
      }

      objc_initWeak(&location, self);
      paymentService = self->_paymentService;
      if (paymentService)
      {
        v12 = MEMORY[0x1E69E9820];
        v13 = 3221225472;
        v14 = __85__PKPassGroupsViewController_foregroundActiveArbiter_didUpdateForegroundActiveState___block_invoke;
        v15 = &unk_1E8011158;
        objc_copyWeak(&v16, &location);
        [(PKPaymentService *)paymentService applicationMessagesWithCompletion:&v12];
        objc_destroyWeak(&v16);
      }

      else
      {
        [(PKPassGroupStackView *)self->_groupStackView updateHeaderAndSubheaderViewsIfNecessary];
      }

      [(PKDiscoveryDataSource *)self->_discoveryDataSource updateArticleLayouts:v12];
      objc_destroyWeak(&location);
    }

    else
    {
      self->_passesAreOutdated = 1;
      [(PKPassGroupsViewController *)self _clearPassViewedNotificationTimer];
      [(PKPassGroupsViewController *)self allowIdleTimer];
    }
  }
}

void __85__PKPassGroupsViewController_foregroundActiveArbiter_didUpdateForegroundActiveState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85__PKPassGroupsViewController_foregroundActiveArbiter_didUpdateForegroundActiveState___block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __85__PKPassGroupsViewController_foregroundActiveArbiter_didUpdateForegroundActiveState___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && !WeakRetained[126])
  {
    v7 = WeakRetained;
    if ([*(a1 + 32) count])
    {
      v3 = *(a1 + 32);
    }

    else
    {
      v3 = 0;
    }

    objc_storeStrong(v7 + 174, v3);
    v4 = objc_loadWeakRetained(v7 + 153);

    if (v4)
    {
      v5 = [MEMORY[0x1E69B85C0] createForMessages:*(a1 + 32)];
      v6 = objc_loadWeakRetained(v7 + 153);
      [v6 setContent:v5 animated:1];
    }

    [v7[144] updateHeaderAndSubheaderViewsIfNecessary];
    WeakRetained = v7;
  }
}

- (void)groupStackView:(id)view wantsTopContentSeparatorWithVisibility:(double)visibility animated:(BOOL)animated
{
  self->_headerBackgroundVisibility = visibility;
  if (self->_viewDidAppearedBefore)
  {
    [(_PKVisibilityBackdropView *)self->_headerBackground pkui_setVisibility:animated animated:?];
  }
}

- (void)groupStackView:(id)view wantsBottomContentSeparatorWithVisibility:(double)visibility animated:(BOOL)animated
{
  self->_footerBackgroundVisibility = visibility;
  if (self->_viewDidAppearedBefore)
  {
    [(_PKVisibilityBackdropView *)self->_footerBackground pkui_setVisibility:animated animated:?];
  }
}

- (void)groupStackView:(id)view didTransitionToState:(int64_t)state animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  if (animatedCopy)
  {
    [(PKPassGroupsViewController *)self _clearPassViewedNotificationTimer];
    if (state != 7)
    {
      if (state != 5)
      {
        if (state == 4 && ![(PKPassGroupStackView *)self->_groupStackView isReordering]&& ([(PKPassGroupStackView *)self->_groupStackView isDragging]& 1) == 0 && ([(PKPassGroupStackView *)self->_groupStackView isDecelerating]& 1) == 0)
        {
          [(PKPassGroupStackView *)self->_groupStackView tilePassesEagerly:1];
        }

        goto LABEL_12;
      }

      modalGroupFrontmostPass = [viewCopy modalGroupFrontmostPass];
      paymentPass = [modalGroupFrontmostPass paymentPass];
      isIdentityPass = [paymentPass isIdentityPass];

      if (isIdentityPass)
      {
        mEMORY[0x1E69B89C0] = [MEMORY[0x1E69B89C0] sharedInstance];
        [mEMORY[0x1E69B89C0] fetchRPIdentifierMappingDiscretionary:0 localOnly:0 completionHandler:0];
      }
    }

    [(PKPassGroupsViewController *)self _startPassViewedNotificationTimer];
LABEL_12:
    [(PKPassGroupsViewController *)self updateLockscreenIdleTimer];
  }

  WeakRetained = objc_loadWeakRetained(&self->_applicationMessageView);
  if (WeakRetained)
  {

    if ((state & 0xFFFFFFFFFFFFFFFDLL) == 5)
    {
      v13 = objc_loadWeakRetained(&self->_applicationMessageView);
      [v13 collapse];
    }
  }
}

- (void)groupStackViewDidChangeCoachingState:(id)state
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134349056;
    coachingState = [state coachingState];
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Ignoring coaching feedback: %{public}ld", &v5, 0xCu);
  }
}

- (void)willActivateNavigationItemController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
  }

  else
  {
    __break(1u);
  }
}

- (void)navigationItemController:(id)controller updateItemWithConfiguration:(id)configuration
{
  controllerCopy = controller;
  configurationCopy = configuration;
  if (controllerCopy && configurationCopy)
  {
    [(PKPassGroupsViewController *)self _applyNavigationItemConfiguration:configurationCopy];
  }

  else
  {
    __break(1u);
  }
}

- (void)didDeactivateNavigationItemController:(id)controller dirty:(BOOL)dirty
{
  dirtyCopy = dirty;
  controllerCopy = controller;
  if (!controllerCopy)
  {
    __break(1u);
    return;
  }

  if (!self->_navigationItem.connecting.pendingVoucher)
  {
    if (!dirtyCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (dirtyCopy && !self->_navigationItem.connecting.external)
  {
LABEL_5:
    v7 = controllerCopy;
    [(PKPassGroupsViewController *)self _updateNavigationItemAnimated:1];
    controllerCopy = v7;
  }

LABEL_6:
}

- (id)providerForNavigationItemController:(id)controller
{
  result = controller;
  if (result)
  {
    v5 = result;
    selfCopy = self;

    return selfCopy;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)willActivateNavigationItemHandleWithVoucher:(id)voucher
{
  voucherCopy = voucher;
  if (!voucherCopy || (p_navigationItem = &self->_navigationItem, p_navigationItem->active.handle) || (v3 = voucherCopy, p_navigationItem->connecting.pendingVoucher))
  {
    __break(1u);
LABEL_13:
    v10 = 0;
    goto LABEL_10;
  }

  objc_storeStrong(&p_navigationItem->connecting.pendingVoucher, voucher);
  if (!p_navigationItem->controller)
  {
    v10 = 0;
    p_navigationItem->connecting.external = 1;
LABEL_10:

    goto LABEL_11;
  }

  v8 = [(PKNavigationItemController *)p_navigationItem->controller isActiveVoucher:v3];
  p_navigationItem->connecting.external = v8 ^ 1;
  if ((v8 & 1) == 0)
  {
    if (p_navigationItem->controller)
    {
      [(PKNavigationItemController *)p_navigationItem->controller _interrupt];
      v10 = v9;
      if (v9)
      {
        [(PKNavigationItemVoucher *)v9 _invalidateFromDisconnect:?];
      }

      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_11:

  return 1;
}

- (void)beginProvidingForNavigationItemHandle:(id)handle withConsumedVoucher:(id)voucher
{
  handleCopy = handle;
  voucherCopy = voucher;
  if (!handleCopy || !voucherCopy || (pendingVoucher = self->_navigationItem.connecting.pendingVoucher, pendingVoucher != voucherCopy) || self->_navigationItem.active.handle || (v14 = voucherCopy, !self->_navigationItem.active.external) && !self->_navigationItem.controller)
  {
    __break(1u);
LABEL_15:
    v12 = 0;
    goto LABEL_10;
  }

  self->_navigationItem.connecting.pendingVoucher = 0;

  handle = self->_navigationItem.active.handle;
  self->_navigationItem.active.handle = handleCopy;

  external = self->_navigationItem.connecting.external;
  self->_navigationItem.active.external = external;
  if (!external)
  {
    goto LABEL_11;
  }

  _navigationItemConfiguration = [(PKPassGroupsViewController *)self _navigationItemConfiguration];
  handleCopy = _navigationItemConfiguration;
  if (!_navigationItemConfiguration)
  {
    goto LABEL_15;
  }

  v12 = [(PKNavigationItemConfiguration *)_navigationItemConfiguration copy];
  *(v12 + 8) = 1;
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

LABEL_10:
  [(PKPassGroupsViewController *)self _applyNavigationItemConfiguration:v12];

LABEL_11:
}

- (PKNavigationItemConfiguration)_navigationItemConfiguration
{
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  v2 = objc_alloc_init(PKNavigationItemConfiguration);
  _showNavigationBar = [selfCopy _showNavigationBar];
  if (v2)
  {
    v2->_visible = _showNavigationBar;
    v2->_backButtonDisplayMode = 2;
  }

  _leadingItemGroups = [selfCopy _leadingItemGroups];
  [(PKNavigationItemConfiguration *)v2 setLeadingItemGroups:_leadingItemGroups];

  _trailingItemGroups = [selfCopy _trailingItemGroups];
  [(PKNavigationItemConfiguration *)v2 setTrailingItemGroups:_trailingItemGroups];

  v6 = selfCopy[992];
  if (v6 == 2)
  {
    goto LABEL_7;
  }

  if (v6 == 1)
  {
    selfCopy = PKLocalizedString(&cfstr_Wallet_1.isa);
    if (v2)
    {
      objc_setProperty_nonatomic_copy(v2, v7, selfCopy, 32);

      v2->_largeTitleDisplayMode = 3;
      v2->_automaticallyHideTitle = 1;
      return v2;
    }

LABEL_14:

    return v2;
  }

  if (selfCopy[992])
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_7:
  if (v2)
  {
    v2->_largeTitleDisplayMode = 2;
  }

  return v2;
}

- (id)configurationForNavigationItemHandle:(id)handle
{
  result = handle;
  if (result)
  {
    v5 = result;
    _navigationItemConfiguration = [(PKPassGroupsViewController *)self _navigationItemConfiguration];

    return _navigationItemConfiguration;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)endProvidingForNavigationItemHandle:(id)handle
{
  handleCopy = handle;
  if (handleCopy && (handle = self->_navigationItem.active.handle, handle == handleCopy))
  {
    v6 = handleCopy;
    self->_navigationItem.active.handle = 0;

    if (self->_navigationItem.active.external)
    {
      [(PKPassGroupsViewController *)self _updateNavigationItemAnimated:1];
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)passPersonalizationViewController:(id)controller didFinishPersonalizingPass:(id)pass success:(BOOL)success
{
  uniqueID = [pass uniqueID];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__PKPassGroupsViewController_passPersonalizationViewController_didFinishPersonalizingPass_success___block_invoke;
  v7[3] = &unk_1E8011D28;
  v7[4] = self;
  [(PKPassGroupsViewController *)self presentPassWithUniqueID:uniqueID animated:1 completionHandler:v7];
}

- (void)scrollViewDidScroll:(id)scroll
{
  [(PKPassGroupStackView *)self->_groupStackView tilePassesEagerly:0];
  WeakRetained = objc_loadWeakRetained(&self->_applicationMessageView);
  [WeakRetained dropSwipe];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  if (!decelerate)
  {
    [(PKPassGroupStackView *)self->_groupStackView tilePassesEagerly:1];
  }

  [draggingCopy contentOffset];
  v7 = v6;
  [draggingCopy adjustedContentInset];
  v9 = -v8;
  if (v7 < v9 && v9 - v7 >= 66.0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_applicationMessageView);
    [WeakRetained collapse];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  [(PKPassGroupStackView *)self->_groupStackView tilePassesEagerly:1];
  groupStackView = self->_groupStackView;

  [(PKPassGroupStackView *)groupStackView noteDidEndScrollingForTesting];
}

- (void)groupsController:(id)controller didInsertGroup:(id)group atIndex:(unint64_t)index
{
  if (-[PKPassGroupStackView presentationState](self->_groupStackView, "presentationState", controller, group) != 6 && ([objc_opt_class() isPerformingAction] & 1) == 0)
  {
    [(PKPassGroupStackView *)self->_groupStackView updateHeaderAndSubheaderViewsIfNecessary];
    [(PKPassGroupStackView *)self->_groupStackView stageGroupInPresentationState:2 atIndex:index];
    groupStackView = self->_groupStackView;
    presentationState = [(PKPassGroupStackView *)groupStackView presentationState];
    foregroundActive = self->_foregroundActiveState.foregroundActive;

    [(PKPassGroupStackView *)groupStackView setPresentationState:presentationState animated:foregroundActive];
  }
}

- (void)groupsController:(id)controller didRemoveGroup:(id)group atIndex:(unint64_t)index
{
  groupCopy = group;
  if ([(PKPassGroupStackView *)self->_groupStackView presentationState]!= 6)
  {
    if ([(PKPassGroupStackView *)self->_groupStackView presentationState]== 7 && [(PKPassGroupStackView *)self->_groupStackView modalGroupIndex]== index)
    {
      [(PKPassGroupsViewController *)self dismissPresentedVCsWithRequirements:0 animated:1 performAction:0];
    }

    [(PKPassGroupStackView *)self->_groupStackView deleteGroup:groupCopy atIndex:index];
  }
}

- (void)groupsController:(id)controller didMoveGroup:(id)group fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  groupCopy = group;
  if ([(PKPassGroupStackView *)self->_groupStackView presentationState]== 4 && self->_foregroundActiveState.foregroundActive)
  {
    if (index != toIndex)
    {
      [(PKPassGroupStackView *)self->_groupStackView moveGroup:groupCopy fromIndex:index toIndex:toIndex];
    }
  }

  else if ([(PKPassGroupStackView *)self->_groupStackView presentationState]== 5 || [(PKPassGroupStackView *)self->_groupStackView presentationState]== 7)
  {
    [(PKPassGroupStackView *)self->_groupStackView reloadData];
    if ([(PKPassGroupStackView *)self->_groupStackView modalGroupIndex]== index)
    {
      [(PKPassGroupStackView *)self->_groupStackView setModalGroupIndex:toIndex];
    }

    [(PKPassGroupStackView *)self->_groupStackView setPresentationState:[(PKPassGroupStackView *)self->_groupStackView presentationState] animated:self->_foregroundActiveState.foregroundActive];
  }
}

- (void)didUpdateApplicationMessages:(id)messages
{
  messagesCopy = messages;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PKPassGroupsViewController_didUpdateApplicationMessages___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = messagesCopy;
  v5 = messagesCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __59__PKPassGroupsViewController_didUpdateApplicationMessages___block_invoke(uint64_t a1)
{
  if ([*(a1 + 40) count])
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong((*(a1 + 32) + 1392), v2);
  v4 = [MEMORY[0x1E69B85C0] createForMessages:*(*(a1 + 32) + 1392)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1224));
  [WeakRetained setContent:v4 animated:1];

  [*(*(a1 + 32) + 1152) updateHeaderAndSubheaderViewsIfNecessary];
}

- (void)paymentDeviceDidEnterFieldWithProperties:(id)properties
{
  propertiesCopy = properties;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__PKPassGroupsViewController_paymentDeviceDidEnterFieldWithProperties___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = propertiesCopy;
  v5 = propertiesCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __71__PKPassGroupsViewController_paymentDeviceDidEnterFieldWithProperties___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (!*(v1 + 1008))
  {
    *(v1 + 1400) = 1;
    if (*(*(a1 + 32) + 1417) == 1)
    {
      v3 = *(a1 + 40);
      if (!v3 || ![v3 secondaryPropertiesRequired] || objc_msgSend(*(a1 + 40), "secondaryPropertiesAcquired"))
      {
        v4 = [*(a1 + 32) pkui_frontMostViewController];
        v5 = objc_autoreleasePoolPush();
        if (__71__PKPassGroupsViewController_paymentDeviceDidEnterFieldWithProperties___block_invoke_2(v4))
        {
          v6 = v4;
          goto LABEL_16;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_autoreleasePoolPop(v5);
          goto LABEL_21;
        }

        v7 = v4;
        v8 = [v7 topViewController];
        v9 = [v7 viewControllers];

        v10 = [v9 firstObject];

        if (v8)
        {
          v11 = __71__PKPassGroupsViewController_paymentDeviceDidEnterFieldWithProperties___block_invoke_2(v8);
          v12 = v8;
          if (v11)
          {
            goto LABEL_14;
          }
        }

        v6 = 0;
        if (!v10 || v10 == v8)
        {
          goto LABEL_15;
        }

        v13 = __71__PKPassGroupsViewController_paymentDeviceDidEnterFieldWithProperties___block_invoke_2(v10);
        v12 = v10;
        if (v13)
        {
LABEL_14:
          v6 = v12;
        }

        else
        {
          v6 = 0;
        }

LABEL_15:

LABEL_16:
        objc_autoreleasePoolPop(v5);
        if (v6)
        {
          v14 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a1 + 32);
            *buf = 134218498;
            v23 = v15;
            v24 = 2114;
            v25 = objc_opt_class();
            v26 = 2048;
            v27 = v6;
            v16 = v25;
            _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "PKPassGroupsViewController (%p): presented view controller (%{public}@:%p) supressed field detect.", buf, 0x20u);
          }

          goto LABEL_22;
        }

LABEL_21:
        objc_initWeak(buf, *(a1 + 32));
        v17 = [MEMORY[0x1E69B8A58] sharedInstance];
        v18 = *(a1 + 40);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __71__PKPassGroupsViewController_paymentDeviceDidEnterFieldWithProperties___block_invoke_194;
        v19[3] = &unk_1E8024368;
        objc_copyWeak(&v21, buf);
        v20 = *(a1 + 40);
        [v17 getMetadataForFieldWithProperties:v18 withHandler:v19];

        objc_destroyWeak(&v21);
        objc_destroyWeak(buf);
        v6 = 0;
LABEL_22:
      }
    }
  }
}

id __71__PKPassGroupsViewController_paymentDeviceDidEnterFieldWithProperties___block_invoke_2(void *a1)
{
  result = a1;
  if (result)
  {
    v2 = result;
    if ([result conformsToProtocol:&unk_1F3D0FD48])
    {
      v3 = [v2 suppressFieldDetect];
    }

    else
    {
      v3 = 0;
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void __71__PKPassGroupsViewController_paymentDeviceDidEnterFieldWithProperties___block_invoke_194(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && ![v3 shouldIgnoreField])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__PKPassGroupsViewController_paymentDeviceDidEnterFieldWithProperties___block_invoke_195;
    block[3] = &unk_1E8011828;
    objc_copyWeak(&v11, (a1 + 40));
    v9 = *(a1 + 32);
    v10 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v11);
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v7 = *(a1 + 32);
      *buf = 134218242;
      v13 = WeakRetained;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPassGroupsViewController (%p): ignoring entered field: %@.", buf, 0x16u);
    }
  }
}

void __71__PKPassGroupsViewController_paymentDeviceDidEnterFieldWithProperties___block_invoke_195(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained presentPassWithFieldProperties:*(a1 + 32) fieldMetadata:*(a1 + 40) animated:1];
    WeakRetained = v3;
  }
}

- (void)paymentDeviceDidExitField
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PKPassGroupsViewController_paymentDeviceDidExitField__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __55__PKPassGroupsViewController_paymentDeviceDidExitField__block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 1400) = 0;
  v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v1 setObject:*MEMORY[0x1E69BA748] forKeyedSubscript:*MEMORY[0x1E69BA680]];
  [v1 setObject:*MEMORY[0x1E69BAC60] forKeyedSubscript:*MEMORY[0x1E69BABE8]];
  v2 = MEMORY[0x1E69B8540];
  v4[0] = *MEMORY[0x1E69BB718];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v2 subjects:v3 sendEvent:v1];
}

- (void)paymentServiceReceivedInterruption
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKPassGroupsViewController_paymentServiceReceivedInterruption__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)didReceivePendingProvisioningUpdate:(id)update
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PKPassGroupsViewController_didReceivePendingProvisioningUpdate___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __66__PKPassGroupsViewController_didReceivePendingProvisioningUpdate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1232);
  v3 = PKPendingProvisioningBackgroundProvisioningInBuddyTypes();
  v4 = [v2 hasPendingProvisioningsOfTypes:v3];

  v5 = 1200;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1200));

  v7 = *(a1 + 32);
  if (!v4)
  {
    if (!WeakRetained)
    {
      v5 = 1208;
      v11 = objc_loadWeakRetained((v7 + 1208));

      if (!v11)
      {
        return;
      }

      v7 = *(a1 + 32);
    }

    v9 = objc_loadWeakRetained((v7 + v5));
    v13 = v9;
    v10 = 0;
    goto LABEL_9;
  }

  if (WeakRetained || (v5 = 1208, v8 = objc_loadWeakRetained((v7 + 1208)), v8, v7 = *(a1 + 32), v8))
  {
    v9 = objc_loadWeakRetained((v7 + v5));
    v13 = v9;
    v10 = 1;
LABEL_9:
    [v9 setShowBackgroundProvisioningHint:v10 animated:1];

    return;
  }

  v12 = *(v7 + 1152);

  [v12 updateHeaderAndSubheaderViewsIfNecessary];
}

- (PKPassGroupStackView)groupStackView
{
  [(PKPassGroupsViewController *)self loadViewIfNeeded];
  groupStackView = self->_groupStackView;

  return groupStackView;
}

- (id)presentedPass
{
  if ([(PKPassGroupsViewController *)self presentingPass])
  {
    modalGroupFrontmostPass = [(PKPassGroupStackView *)self->_groupStackView modalGroupFrontmostPass];
  }

  else
  {
    modalGroupFrontmostPass = 0;
  }

  return modalGroupFrontmostPass;
}

- (PKDashboardPassGroupViewController)dashboardPassGroupViewController
{
  _dashboardPassGroupViewController = [(PKPassGroupsViewController *)self _dashboardPassGroupViewController];

  return _dashboardPassGroupViewController;
}

- (PKDashboardPassGroupViewController)visibleDashboardPassGroupViewController
{
  v2 = [(PKPassGroupsViewController *)self _dashboardPassGroupViewControllerWithRequirements:3];

  return v2;
}

- (void)_presentGroupWithIndex:(unint64_t)index context:(id)context animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  contextCopy = context;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (handlerCopy)
    {
      v13 = *(handlerCopy + 2);
LABEL_4:
      v13();
    }
  }

  else
  {
    [(PKPassGroupsViewController *)self loadViewIfNeeded];
    v28 = 0;
    v14 = [(PKPassGroupStackView *)self->_groupStackView stageForModalPresentationOfGroupAtIndex:index withPassPresentationContext:contextCopy requireUpdate:&v28];
    if ([(PKPassGroupStackView *)self->_groupStackView modalGroupIndex]== index && [(PKPassGroupStackView *)self->_groupStackView presentationState]== v14 && (v28 & 1) == 0)
    {
      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = v12[2];
      goto LABEL_4;
    }

    [(PKPassGroupStackView *)self->_groupStackView presentDiff:0 completion:0];
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__PKPassGroupsViewController__presentGroupWithIndex_context_animated_completionHandler___block_invoke;
    aBlock[3] = &unk_1E8024390;
    objc_copyWeak(v25, &location);
    v25[1] = index;
    v25[2] = v14;
    v24 = contextCopy;
    v26 = animatedCopy;
    v15 = _Block_copy(aBlock);
    _passGroupsViewNavigationController = [(PKPassGroupsViewController *)self _passGroupsViewNavigationController];
    if (([_passGroupsViewNavigationController VCsState] | 2) == 3 && (-[PKPassGroupsViewController presentGroupTableAnimated:](self, "presentGroupTableAnimated:", 0), objc_msgSend(_passGroupsViewNavigationController, "popToPassGroupsVCAnimated:", animatedCopy), animatedCopy) && (objc_msgSend(_passGroupsViewNavigationController, "transitionCoordinator"), (v17 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __88__PKPassGroupsViewController__presentGroupWithIndex_context_animated_completionHandler___block_invoke_3;
      v20[3] = &unk_1E80243E0;
      v21 = v15;
      v22 = v12;
      [v17 animateAlongsideTransition:0 completion:v20];
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __88__PKPassGroupsViewController__presentGroupWithIndex_context_animated_completionHandler___block_invoke_6;
      v18[3] = &unk_1E8010AD8;
      v19 = v12;
      (*(v15 + 2))(v15, v18);
      v17 = v19;
    }

    objc_destroyWeak(v25);
    objc_destroyWeak(&location);
  }

LABEL_14:
}

void __88__PKPassGroupsViewController__presentGroupWithIndex_context_animated_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 144) setModalGroupIndex:*(a1 + 48)];
    v6 = v5[144];
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9 = *(a1 + 64);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __88__PKPassGroupsViewController__presentGroupWithIndex_context_animated_completionHandler___block_invoke_2;
    v10[3] = &unk_1E80110B8;
    objc_copyWeak(&v12, (a1 + 40));
    v11 = v3;
    [v6 setPresentationState:v7 withContext:v8 animated:v9 completion:v10];

    objc_destroyWeak(&v12);
  }

  else if (v3)
  {
    (*(v3 + 2))(v3, 1);
  }
}

void __88__PKPassGroupsViewController__presentGroupWithIndex_context_animated_completionHandler___block_invoke_2(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v9 = *(a1 + 32);
    if (!v9)
    {
      goto LABEL_9;
    }

    v8 = *(v9 + 16);
    v10 = 0;
    goto LABEL_8;
  }

  v10 = WeakRetained;
  if ((a2 & 1) == 0)
  {
    v6 = [WeakRetained[144] presentationState];
    v5 = v10;
    v10[156] = v6;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 16);
LABEL_8:
    v8();
    v5 = v10;
  }

LABEL_9:
}

void __88__PKPassGroupsViewController__presentGroupWithIndex_context_animated_completionHandler___block_invoke_3(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __88__PKPassGroupsViewController__presentGroupWithIndex_context_animated_completionHandler___block_invoke_4;
  v2[3] = &unk_1E80243B8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __88__PKPassGroupsViewController__presentGroupWithIndex_context_animated_completionHandler___block_invoke_4(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __88__PKPassGroupsViewController__presentGroupWithIndex_context_animated_completionHandler___block_invoke_5;
  v2[3] = &unk_1E8010AD8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  (*(v1 + 16))(v1, v2);
}

uint64_t __88__PKPassGroupsViewController__presentGroupWithIndex_context_animated_completionHandler___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __88__PKPassGroupsViewController__presentGroupWithIndex_context_animated_completionHandler___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)forceModalPresentationFromButton:(BOOL)button
{
  buttonCopy = button;
  if ([(PKPassGroupsViewController *)self presentingPass])
  {
    _dashboardPassGroupViewController = [(PKPassGroupsViewController *)self _dashboardPassGroupViewController];
    v6 = _dashboardPassGroupViewController;
    if (_dashboardPassGroupViewController)
    {
      _passGroupsViewNavigationController = [(PKDashboardPassGroupViewController *)_dashboardPassGroupViewController _passGroupsViewNavigationController];
      if (_passGroupsViewNavigationController)
      {
        v8 = _passGroupsViewNavigationController;
        v9 = [_passGroupsViewNavigationController VCsState] & 0xFFFFFFFFFFFFFFFDLL;
        modalGroupFrontmostPass = [(PKPassGroupStackView *)self->_groupStackView modalGroupFrontmostPass];
        uniqueID = [modalGroupFrontmostPass uniqueID];

        v12 = objc_alloc_init(PKPassPresentationContext);
        [(PKPassPresentationContext *)v12 setForceModalPresentation:1];
        [(PKPassPresentationContext *)v12 setForcedFromButton:buttonCopy];
        frontmostPassPaymentOffersController = [v6 frontmostPassPaymentOffersController];
        selectedOfferDetails = [frontmostPassPaymentOffersController selectedOfferDetails];
        selectedPaymentOffer = [selectedOfferDetails selectedPaymentOffer];

        [(PKPassPresentationContext *)v12 setSelectedPaymentOffer:selectedPaymentOffer];
        if (v9)
        {
          [(PKPassGroupsViewController *)self _beginSuppressingInstanceFooter];
          objc_initWeak(&location, self);
          v16 = objc_alloc_init(PKPassPresentationContext);
          [(PKPassPresentationContext *)v16 setForceModalPresentation:1];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __63__PKPassGroupsViewController_forceModalPresentationFromButton___block_invoke;
          v18[3] = &unk_1E80113B0;
          objc_copyWeak(&v20, &location);
          v19 = v12;
          [(PKPassGroupsViewController *)self presentPassWithUniqueID:uniqueID context:v16 animated:1 completionHandler:v18];

          objc_destroyWeak(&v20);
          objc_destroyWeak(&location);
        }

        else
        {
          [(PKPassGroupsViewController *)self presentPassWithUniqueID:uniqueID context:v12 animated:1 completionHandler:0];
        }
      }
    }
  }

  else
  {
    presentedViewController = [(PKPassGroupsViewController *)self presentedViewController];
    if (presentedViewController)
    {
    }

    else
    {
      [(PKPassGroupsViewController *)self presentDefaultPaymentPassInPaymentPresentationFromButton:buttonCopy withAnimated:1 completionHandler:0];
    }

    v6 = 0;
  }
}

void __63__PKPassGroupsViewController_forceModalPresentationFromButton___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(a1 + 32);
    }

    v6 = WeakRetained;
    [WeakRetained _endSuppressingInstanceFooterWithContext:v5];
    WeakRetained = v6;
  }
}

- (void)presentDefaultPaymentPassInPaymentPresentationFromButton:(BOOL)button withAnimated:(BOOL)animated completionHandler:(id)handler
{
  buttonCopy = button;
  handlerCopy = handler;
  _dashboardPassGroupViewController = [(PKPassGroupsViewController *)self _dashboardPassGroupViewController];
  frontmostPassPaymentOffersController = [_dashboardPassGroupViewController frontmostPassPaymentOffersController];
  selectedOfferDetails = [frontmostPassPaymentOffersController selectedOfferDetails];
  selectedPaymentOffer = [selectedOfferDetails selectedPaymentOffer];

  v11 = objc_alloc_init(PKPassPresentationContext);
  [(PKPassPresentationContext *)v11 setForceModalPresentation:1];
  [(PKPassPresentationContext *)v11 setForcedFromButton:buttonCopy];
  [(PKPassPresentationContext *)v11 setSelectedPaymentOffer:selectedPaymentOffer];
  defaultPaymentPassUniqueIdentifier = [(PKPaymentService *)self->_paymentService defaultPaymentPassUniqueIdentifier];
  [(PKPassGroupsViewController *)self presentPassWithUniqueID:defaultPaymentPassUniqueIdentifier context:v11 animated:1 completionHandler:handlerCopy];
}

- (void)presentPassWithUpdateUserNotificationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__PKPassGroupsViewController_presentPassWithUpdateUserNotificationIdentifier___block_invoke;
  v6[3] = &unk_1E8010A10;
  v7 = identifierCopy;
  selfCopy = self;
  v5 = identifierCopy;
  [(PKPassGroupsViewController *)self _presentWithUpdatedPasses:v6];
}

void __78__PKPassGroupsViewController_presentPassWithUpdateUserNotificationIdentifier___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69B8A58] sharedInstance];
  v3 = [v2 diffForPassUpdateUserNotificationWithIdentifier:*(a1 + 32)];
  v4 = [v3 passUniqueID];
  if (v4)
  {
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __78__PKPassGroupsViewController_presentPassWithUpdateUserNotificationIdentifier___block_invoke_2;
    v8[3] = &unk_1E8012FD0;
    v8[4] = v5;
    v9 = v3;
    [v5 presentPassWithUniqueID:v4 animated:1 completionHandler:v8];
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Invalid bulletin URL specified. Ignoring.", v7, 2u);
    }
  }
}

uint64_t __78__PKPassGroupsViewController_presentPassWithUpdateUserNotificationIdentifier___block_invoke_2(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(*(result + 32) + 1152) presentDiff:*(result + 40) completion:0];
  }

  return result;
}

- (void)presentPassWithFieldProperties:(id)properties fieldMetadata:(id)metadata animated:(BOOL)animated
{
  animatedCopy = animated;
  propertiesCopy = properties;
  metadataCopy = metadata;
  if (!self->_invalidationStatus && self->_foregroundActiveState.foregroundActive)
  {
    modalGroupFrontmostPass = [(PKPassGroupStackView *)self->_groupStackView modalGroupFrontmostPass];
    _dashboardPassGroupViewController = [(PKPassGroupsViewController *)self _dashboardPassGroupViewController];
    v12 = modalGroupFrontmostPass && [modalGroupFrontmostPass passType] != 1 && PKValueAddedServicesEnabledForPass() == 0;
    if (-[PKPassGroupStackView isModallyPresentedPassAuthorized](self->_groupStackView, "isModallyPresentedPassAuthorized") || (([_dashboardPassGroupViewController isFrontmostPassAuthorized] | v12) & 1) != 0)
    {
      [(PKPassGroupsViewController *)self dismissPresentedVCsWithRequirements:6 animated:1 performAction:0];
    }

    else
    {
      associatedPassIdentifiers = [metadataCopy associatedPassIdentifiers];
      v19 = 0;
      v14 = [(PKPassGroupsViewController *)self presentationContextForFieldProperties:propertiesCopy fieldPassUniqueIdentifiers:associatedPassIdentifiers passUniqueIdentifierToPresent:&v19];
      if (v14)
      {
        [(PKPassGroupsViewController *)self presentPassWithUniqueID:v19 context:v14 animated:animatedCopy completionHandler:0];
      }

      else
      {
        objc_initWeak(&location, self);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __84__PKPassGroupsViewController_presentPassWithFieldProperties_fieldMetadata_animated___block_invoke;
        v15[3] = &unk_1E80111A8;
        objc_copyWeak(&v16, &location);
        v17 = animatedCopy;
        [(PKPassGroupsViewController *)self dismissPresentedVCsWithRequirements:0 animated:animatedCopy performAction:v15];
        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __84__PKPassGroupsViewController_presentPassWithFieldProperties_fieldMetadata_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentOnscreen:*(a1 + 40) context:0 withCompletionHandler:0];
}

- (id)presentationContextForFieldProperties:(id)properties fieldPassUniqueIdentifiers:(id)identifiers passUniqueIdentifierToPresent:(id *)present
{
  v79 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  identifiersCopy = identifiers;
  modalGroupFrontmostPass = [(PKPassGroupStackView *)self->_groupStackView modalGroupFrontmostPass];
  uniqueID = [modalGroupFrontmostPass uniqueID];
  _dashboardPassGroupViewController = [(PKPassGroupsViewController *)self _dashboardPassGroupViewController];
  frontmostPassPaymentOffersController = [_dashboardPassGroupViewController frontmostPassPaymentOffersController];
  selectedOfferDetails = [frontmostPassPaymentOffersController selectedOfferDetails];
  selectedPaymentOffer = [selectedOfferDetails selectedPaymentOffer];

  if (!modalGroupFrontmostPass || [modalGroupFrontmostPass style] == 8)
  {
    goto LABEL_78;
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v16 setObject:*MEMORY[0x1E69BA740] forKeyedSubscript:*MEMORY[0x1E69BA680]];
  [v16 setObject:*MEMORY[0x1E69BAC60] forKeyedSubscript:*MEMORY[0x1E69BABE8]];
  v17 = v16;
  v18 = modalGroupFrontmostPass;
  v19 = v18;
  if (v17)
  {
    passType = [v18 passType];
    v72 = propertiesCopy;
    if ((passType + 1) >= 3)
    {
      v21 = *MEMORY[0x1E69BB3A8];
    }

    else
    {
      v21 = off_1E8025210[passType + 1];
    }

    [v17 setObject:v21 forKeyedSubscript:*MEMORY[0x1E69BACA8]];

    style = [v19 style];
    secureElementPass = [v19 secureElementPass];
    isIdentityPass = [secureElementPass isIdentityPass];

    presentCopy = present;
    if (isIdentityPass)
    {
      v25 = @"identity";
    }

    else if (style < 0xE && ((0x27FFu >> style) & 1) != 0)
    {
      v25 = off_1E8025228[style];
    }

    else
    {
      v25 = *MEMORY[0x1E69BB3A8];
    }

    [v17 setObject:v25 forKeyedSubscript:*MEMORY[0x1E69BACA0]];

    nfcPayload = [v19 nfcPayload];
    v27 = PKAnalyticsReportSwitchToggleResultValue();
    [v17 setObject:v27 forKeyedSubscript:*MEMORY[0x1E69BAC68]];

    v28 = v19;
    v70 = selectedPaymentOffer;
    if ([v28 passType] == 1)
    {
      secureElementPass2 = [v28 secureElementPass];
      cardType = [secureElementPass2 cardType];
      if (cardType <= 4)
      {
        nfcPayload = **(&unk_1E8025298 + cardType);
      }
    }

    else
    {
      nfcPayload = @"other";
    }

    [v17 setObject:nfcPayload forKeyedSubscript:*MEMORY[0x1E69BAC90]];
    secureElementPass3 = [v28 secureElementPass];
    if ([secureElementPass3 isIdentityPass])
    {
      identityType = [secureElementPass3 identityType];
      if (identityType <= 2)
      {
        if (identityType == 1)
        {
          v33 = MEMORY[0x1E69BA648];
          goto LABEL_39;
        }

        if (identityType == 2)
        {
          v33 = MEMORY[0x1E69BB2C8];
          goto LABEL_39;
        }
      }

      else
      {
        switch(identityType)
        {
          case 3:
            goto LABEL_23;
          case 4:
            v33 = MEMORY[0x1E69BA8E0];
            goto LABEL_39;
          case 5:
LABEL_23:
            v33 = MEMORY[0x1E69BACB0];
LABEL_39:
            v37 = *v33;
            goto LABEL_52;
        }
      }

LABEL_32:
      v33 = MEMORY[0x1E69BB3A8];
      goto LABEL_39;
    }

    if (![secureElementPass3 isAccessPass])
    {
      goto LABEL_32;
    }

    accessType = [secureElementPass3 accessType];
    accessReportingType = [secureElementPass3 accessReportingType];
    v36 = accessReportingType;
    if (accessType <= 2)
    {
      switch(accessType)
      {
        case 0:
          v38 = @"general";
          if (accessReportingType)
          {
            v38 = accessReportingType;
          }

          goto LABEL_47;
        case 1:
          v37 = @"hospitality";
          goto LABEL_51;
        case 2:
          v37 = @"corporate";
LABEL_51:

LABEL_52:
          [v17 setObject:v37 forKeyedSubscript:*MEMORY[0x1E69BAC88]];

          secureElementPass4 = [v28 secureElementPass];
          devicePaymentApplications = [secureElementPass4 devicePaymentApplications];
          [devicePaymentApplications count];

          v41 = PKAnalyticsReportSwitchToggleResultValue();

          [v17 setObject:v41 forKeyedSubscript:*MEMORY[0x1E69BA4E0]];
          secureElementPass5 = [v28 secureElementPass];
          v43 = *MEMORY[0x1E69BB3A8];
          organizationName = [secureElementPass5 organizationName];
          if ([organizationName length])
          {
            cardType2 = [secureElementPass5 cardType];
            if (cardType2 <= 4 && ((1 << cardType2) & 0x16) != 0)
            {
              v46 = organizationName;

              v43 = v46;
            }
          }

          [v17 setObject:v43 forKeyedSubscript:*MEMORY[0x1E69BAA28]];
          secureElementPass6 = [v28 secureElementPass];
          v48 = secureElementPass6;
          if (secureElementPass6)
          {
            v68 = v19;
            v69 = v17;
            [secureElementPass6 devicePaymentApplications];
            v73 = 0u;
            v74 = 0u;
            v75 = 0u;
            v49 = v76 = 0u;
            v50 = [v49 countByEnumeratingWithState:&v73 objects:v78 count:16];
            if (v50)
            {
              v51 = v50;
              paymentType = 0;
              v53 = *v74;
              while (2)
              {
                for (i = 0; i != v51; ++i)
                {
                  if (*v74 != v53)
                  {
                    objc_enumerationMutation(v49);
                  }

                  v55 = *(*(&v73 + 1) + 8 * i);
                  if (paymentType && paymentType != [*(*(&v73 + 1) + 8 * i) paymentType])
                  {

                    v56 = @"multiple";
                    goto LABEL_69;
                  }

                  paymentType = [v55 paymentType];
                }

                v51 = [v49 countByEnumeratingWithState:&v73 objects:v78 count:16];
                if (v51)
                {
                  continue;
                }

                break;
              }
            }

            v56 = PKPaymentMethodTypeToString();
LABEL_69:

            v17 = v69;
            [v69 setObject:v56 forKeyedSubscript:*MEMORY[0x1E69BAD40]];

            issuerCountryCode = [v48 issuerCountryCode];
            [v69 setObject:issuerCountryCode forKeyedSubscript:*MEMORY[0x1E69BAC78]];

            v19 = v68;
          }

          present = presentCopy;
          propertiesCopy = v72;
          selectedPaymentOffer = v70;
          goto LABEL_71;
      }
    }

    else
    {
      if (accessType <= 4)
      {
        if (accessType == 3)
        {
          v37 = @"singlefamily";
        }

        else
        {
          v37 = @"cars";
        }

        goto LABEL_51;
      }

      if (accessType == 5)
      {
        v37 = @"multifamily";
        goto LABEL_51;
      }

      if (accessType == 6)
      {
        v37 = @"urbanmobility";
        goto LABEL_51;
      }
    }

    v38 = *MEMORY[0x1E69BB3A8];
LABEL_47:
    v37 = v38;
    goto LABEL_51;
  }

LABEL_71:

  v58 = v17;
  terminalType = [propertiesCopy terminalType];
  if (terminalType <= 5)
  {
    v60 = MEMORY[0x1E69BB0C0];
    if (((1 << terminalType) & 0x2D) == 0)
    {
      v61 = *MEMORY[0x1E69BB0C0];
      if (terminalType != 1)
      {
        [v58 setObject:@"identity" forKeyedSubscript:*MEMORY[0x1E69BB0C0]];
      }

      [v58 setObject:@"payment" forKeyedSubscript:v61];
    }

    [v58 setObject:*MEMORY[0x1E69BABC0] forKeyedSubscript:*v60];
  }

  v62 = MEMORY[0x1E69B8540];
  v77 = *MEMORY[0x1E69BB718];
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
  [v62 subjects:v63 sendEvent:v58];

LABEL_78:
  if (uniqueID && ([identifiersCopy containsObject:uniqueID] & 1) != 0 || (objc_msgSend(identifiersCopy, "firstObject"), v64 = objc_claimAutoreleasedReturnValue(), uniqueID, (uniqueID = v64) != 0))
  {
    valueAddedServiceMode = [propertiesCopy valueAddedServiceMode];
    v66 = [identifiersCopy pk_arrayByRemovingObject:uniqueID];
    v64 = +[PKPassPresentationContext contextWithWasAutomaticallySelected:additionalPassUniqueIdentifiers:userInfo:terminalType:](PKPassPresentationContext, "contextWithWasAutomaticallySelected:additionalPassUniqueIdentifiers:userInfo:terminalType:", (valueAddedServiceMode - 2) < 3, v66, 0, [propertiesCopy terminalType]);
    [v64 setFieldDetect:1];
    [v64 setSelectedPaymentOffer:selectedPaymentOffer];
    if (present)
    {
      objc_storeStrong(present, uniqueID);
    }
  }

  return v64;
}

- (void)reloadPasses
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->_reloadingPasses)
  {
    groupsController = self->_groupsController;
    self->_reloadingPasses = groupsController != 0;
    if (groupsController)
    {
      v4 = self->_groupsController;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __42__PKPassGroupsViewController_reloadPasses__block_invoke;
      v15[3] = &unk_1E8010970;
      v15[4] = self;
      [(PKGroupsController *)v4 reloadGroupsWithCompletion:v15];
    }

    else
    {
      v5 = [(NSMutableArray *)self->_blocksQueuedForUpdateCompletion copy];
      [(NSMutableArray *)self->_blocksQueuedForUpdateCompletion removeAllObjects];
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
            ++v10;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
        }

        while (v8);
      }
    }
  }
}

void __42__PKPassGroupsViewController_reloadPasses__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 1416) = 0;
  *(*(a1 + 32) + 1292) = 0;
  v2 = [*(*(a1 + 32) + 1272) copy];
  [*(*(a1 + 32) + 1272) removeAllObjects];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v2;
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

        (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)updatePassesIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_passesAreOutdated || self->_reloadingPasses)
  {
    if (completionCopy)
    {
      blocksQueuedForUpdateCompletion = self->_blocksQueuedForUpdateCompletion;
      v6 = [completionCopy copy];
      [(NSMutableArray *)blocksQueuedForUpdateCompletion addObject:v6];
    }

    [(PKPassGroupsViewController *)self reloadPasses];
    goto LABEL_6;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
LABEL_6:
    completionCopy = v7;
  }
}

- (void)presentInitialState:(BOOL *)state
{
  if (self->_inFailForward)
  {
    [(PKPassGroupsViewController *)self _warnFailForward];
  }

  if (([(PKPassGroupStackView *)self->_groupStackView presentationState]- 1) > 2)
  {
    v6 = 0;
    if (state)
    {
LABEL_10:
      *state = v6;
    }
  }

  else
  {
    _passToPresent = [(PKPassGroupsViewController *)self _passToPresent];
    v6 = _passToPresent != 0;
    if (_passToPresent)
    {
      [(PKPassGroupsViewController *)self presentOffscreenAnimated:0 split:1 withCompletionHandler:0];
      uniqueID = [_passToPresent uniqueID];
      [(PKPassGroupsViewController *)self presentPassWithUniqueID:uniqueID animated:1 completionHandler:0];
    }

    else
    {
      [(PKPassGroupsViewController *)self presentOnscreen:1 context:0 withCompletionHandler:0];
    }

    if (state)
    {
      goto LABEL_10;
    }
  }
}

- (void)presentPaymentOfferCriteriaIdentifier:(id)identifier productIdentifier:(id)productIdentifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  productIdentifierCopy = productIdentifier;
  paymentOffersCatalog = [(PKPaymentService *)self->_paymentService paymentOffersCatalog];
  v9 = [paymentOffersCatalog criteriaWithIdentifier:identifierCopy];
  v10 = v9;
  if (v9)
  {
    associatedPassUniqueID = [v9 associatedPassUniqueID];
    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    if ([mEMORY[0x1E69B8A58] hasPassWithUniqueID:associatedPassUniqueID])
    {
      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v18 = identifierCopy;
        v19 = 2112;
        v20 = associatedPassUniqueID;
        _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "Opening payment offer pass with criteriaIdentifier %@ and passUniqueID %@", buf, 0x16u);
      }

      [(PKPassGroupsViewController *)self presentPassWithUniqueID:associatedPassUniqueID animated:1 completionHandler:0];
    }

    else if (productIdentifierCopy && !associatedPassUniqueID && [v10 type] == 1)
    {
      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = productIdentifierCopy;
        _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Opening payment offer installment setup with productIdentifier %@", buf, 0xCu);
      }

      v15 = [MEMORY[0x1E695DFD8] set];
      v16 = [MEMORY[0x1E695DFD8] setWithObject:productIdentifierCopy];
      [(PKPassGroupsViewController *)self presentPaymentSetupInMode:3 referrerIdentifier:0 referralSource:0 campaignIdentifier:0 paymentNetwork:0 transitNetworkIdentifier:0 allowedFeatureIdentifiers:v15 productIdentifiers:v16 sectionIdentifier:0];
    }
  }

  else
  {
    associatedPassUniqueID = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(associatedPassUniqueID, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = identifierCopy;
      _os_log_impl(&dword_1BD026000, associatedPassUniqueID, OS_LOG_TYPE_DEFAULT, "Cannot open payment offer pass with criteriaIdentifier %@ since no criteria exists in the catalog", buf, 0xCu);
    }
  }
}

- (void)presentPaymentSetupInMode:(int64_t)mode referrerIdentifier:(id)identifier referralSource:(id)source campaignIdentifier:(id)campaignIdentifier paymentNetwork:(id)network transitNetworkIdentifier:(id)networkIdentifier allowedFeatureIdentifiers:(id)identifiers productIdentifiers:(id)self0 sectionIdentifier:(id)self1
{
  identifierCopy = identifier;
  sourceCopy = source;
  campaignIdentifierCopy = campaignIdentifier;
  networkCopy = network;
  networkIdentifierCopy = networkIdentifier;
  identifiersCopy = identifiers;
  productIdentifiersCopy = productIdentifiers;
  sectionIdentifierCopy = sectionIdentifier;
  if (self->_kind == 1 && !self->_inFailForward)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __212__PKPassGroupsViewController_presentPaymentSetupInMode_referrerIdentifier_referralSource_campaignIdentifier_paymentNetwork_transitNetworkIdentifier_allowedFeatureIdentifiers_productIdentifiers_sectionIdentifier___block_invoke;
    aBlock[3] = &unk_1E8024408;
    aBlock[4] = self;
    v34 = networkIdentifierCopy;
    v35 = networkCopy;
    modeCopy = mode;
    v28 = identifierCopy;
    v36 = identifierCopy;
    v37 = sourceCopy;
    v38 = campaignIdentifierCopy;
    v39 = identifiersCopy;
    v40 = productIdentifiersCopy;
    v41 = sectionIdentifierCopy;
    v25 = _Block_copy(aBlock);
    presentedViewController = [(PKPassGroupsViewController *)self presentedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![presentedViewController isBeingDismissed])
      {
LABEL_9:

        identifierCopy = v28;
        goto LABEL_10;
      }

      transitionCoordinator = [(PKPassGroupsViewController *)self transitionCoordinator];
      if (transitionCoordinator)
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __212__PKPassGroupsViewController_presentPaymentSetupInMode_referrerIdentifier_referralSource_campaignIdentifier_paymentNetwork_transitNetworkIdentifier_allowedFeatureIdentifiers_productIdentifiers_sectionIdentifier___block_invoke_3;
        v29[3] = &unk_1E8015D28;
        v30 = v25;
        [transitionCoordinator animateAlongsideTransition:0 completion:v29];
      }

      else
      {
        v25[2]();
      }
    }

    else
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __212__PKPassGroupsViewController_presentPaymentSetupInMode_referrerIdentifier_referralSource_campaignIdentifier_paymentNetwork_transitNetworkIdentifier_allowedFeatureIdentifiers_productIdentifiers_sectionIdentifier___block_invoke_2;
      v31[3] = &unk_1E8010B50;
      v32 = v25;
      [(PKPassGroupsViewController *)self dismissPresentedVCsWithRequirements:0 animated:1 performAction:v31];
      transitionCoordinator = v32;
    }

    goto LABEL_9;
  }

LABEL_10:
}

void __212__PKPassGroupsViewController_presentPaymentSetupInMode_referrerIdentifier_referralSource_campaignIdentifier_paymentNetwork_transitNetworkIdentifier_allowedFeatureIdentifiers_productIdentifiers_sectionIdentifier___block_invoke(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 1152) headerForPassType:1];
  if (*(a1 + 40))
  {
    v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{*(a1 + 40), 0}];
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 48))
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{*(a1 + 48), 0}];
  }

  else
  {
    v3 = 0;
  }

  [*(a1 + 32) startPaymentPreflight:v4 withPaymentSetupMode:*(a1 + 104) referrerIdentifier:*(a1 + 56) referralSource:*(a1 + 64) campaignIdentifier:*(a1 + 72) paymentNetworks:v3 transitNetworkIdentifiers:v2 allowedFeatureIdentifiers:*(a1 + 80) productIdentifiers:*(a1 + 88) sectionIdentifier:*(a1 + 96)];
}

- (void)presentOnscreen:(BOOL)onscreen context:(id)context withCompletionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  modalGroupIndex = [(PKPassGroupStackView *)self->_groupStackView modalGroupIndex];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__PKPassGroupsViewController_presentOnscreen_context_withCompletionHandler___block_invoke;
  v14[3] = &unk_1E801FA78;
  v11 = 4;
  v14[4] = self;
  v15 = contextCopy;
  if (modalGroupIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 5;
  }

  onscreenCopy = onscreen;
  v16 = handlerCopy;
  v17 = v11;
  v12 = handlerCopy;
  v13 = contextCopy;
  [(PKPassGroupsViewController *)self _presentWithUpdatedPasses:v14];
}

- (void)presentOffscreenAnimated:(BOOL)animated split:(BOOL)split withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__PKPassGroupsViewController_presentOffscreenAnimated_split_withCompletionHandler___block_invoke;
  v10[3] = &unk_1E8013FA8;
  splitCopy = split;
  animatedCopy = animated;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(PKPassGroupsViewController *)self _presentWithUpdatedPasses:v10];
}

uint64_t __83__PKPassGroupsViewController_presentOffscreenAnimated_split_withCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = 2;
  if (*(a1 + 48))
  {
    v1 = 3;
  }

  *(*(a1 + 32) + 1248) = v1;
  return [*(*(a1 + 32) + 1152) setPresentationState:*(*(a1 + 32) + 1248) withContext:0 animated:*(a1 + 49) completion:*(a1 + 40)];
}

- (void)presentPileOffscreen
{
  if (![(PKPassGroupStackView *)self->_groupStackView pilingMode])
  {
    groupStackView = self->_groupStackView;

    [(PKPassGroupStackView *)groupStackView setPilingMode:1];
  }
}

- (void)presentGroupTableAnimated:(BOOL)animated
{
  [(PKPassGroupStackView *)self->_groupStackView setModalGroupIndex:0x7FFFFFFFFFFFFFFFLL];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__PKPassGroupsViewController_presentGroupTableAnimated___block_invoke;
  v5[3] = &unk_1E8013F80;
  v5[4] = self;
  animatedCopy = animated;
  [(PKPassGroupsViewController *)self _presentWithUpdatedPasses:v5];
}

uint64_t __56__PKPassGroupsViewController_presentGroupTableAnimated___block_invoke(uint64_t result)
{
  *(*(result + 32) + 1248) = 4;
  v1 = *(result + 32);
  if (*(v1 + 1289) == 1)
  {
    return [*(v1 + 1152) setPresentationState:*(v1 + 1248) animated:*(result + 40)];
  }

  return result;
}

- (void)presentPassWithUniqueID:(id)d animated:(BOOL)animated campaignAttributionReferrerIdentifier:(id)identifier completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  identifierCopy = identifier;
  dCopy = d;
  v13 = objc_alloc_init(PKPassPresentationContext);
  [(PKPassPresentationContext *)v13 setCampaignAttributionReferrerIdentifier:identifierCopy];

  [(PKPassGroupsViewController *)self presentPassWithUniqueID:dCopy context:v13 animated:animatedCopy completionHandler:handlerCopy];
}

- (void)presentPassDetailsWithUniqueID:(id)d animated:(BOOL)animated action:(unint64_t)action completionHandler:(id)handler
{
  animatedCopy = animated;
  dCopy = d;
  handlerCopy = handler;
  v12 = [(PKPassGroupsViewController *)self _passFromGroupsControllerWithUniqueIdentifier:dCopy];
  passType = [v12 passType];
  v14 = passType == 1;
  if (v12 && (passType != 1 || !self->_inFailForward))
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __95__PKPassGroupsViewController_presentPassDetailsWithUniqueID_animated_action_completionHandler___block_invoke_2;
    v16[3] = &unk_1E8024430;
    v20 = animatedCopy;
    v16[4] = self;
    actionCopy = action;
    v18 = handlerCopy;
    v21 = v14;
    v17 = v12;
    [(PKPassGroupsViewController *)self presentPassWithUniqueID:dCopy animated:animatedCopy completionHandler:v16];

    v15 = v18;
    goto LABEL_7;
  }

  if ([(PKGroupsController *)self->_groupsController containsExpiredPassWithUniqueID:dCopy])
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __95__PKPassGroupsViewController_presentPassDetailsWithUniqueID_animated_action_completionHandler___block_invoke;
    v22[3] = &unk_1E8010AD8;
    v23 = handlerCopy;
    [(PKPassGroupsViewController *)self presentExpiredPassWithUniqueID:dCopy animated:animatedCopy completionHandler:v22];
    v15 = v23;
LABEL_7:

    goto LABEL_8;
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
  }

LABEL_8:
}

uint64_t __95__PKPassGroupsViewController_presentPassDetailsWithUniqueID_animated_action_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __95__PKPassGroupsViewController_presentPassDetailsWithUniqueID_animated_action_completionHandler___block_invoke_2(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    v5 = [*(a1 + 32) _dashboardPassGroupViewController];
    v6 = v5;
    if (v5)
    {
      [(PKDashboardPassGroupViewController *)v5 _presentPassDetailsAnimated:*(a1 + 56) action:?];
      v7 = *(a1 + 48);
      if (v7)
      {
        (*(v7 + 16))(v7, 0);
      }
    }

    else
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      if (*(a1 + 65) == 1)
      {
        [v8 _paymentPassDetailsViewControllerForPaymentPass:v9];
      }

      else
      {
        [v8 _barcodePassDetailsViewControllerForBarcodePass:v9];
      }
      v10 = ;
      if (v10)
      {
        v11 = [*(a1 + 32) presentedViewController];
        if (v11)
        {
          [*(a1 + 32) dismissViewControllerAnimated:0 completion:0];
        }

        v12 = *(a1 + 32);
        v13 = [[PKNavigationController alloc] initWithRootViewController:v10];
        v14 = *(a1 + 64);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __95__PKPassGroupsViewController_presentPassDetailsWithUniqueID_animated_action_completionHandler___block_invoke_3;
        v16[3] = &unk_1E8010B50;
        v17 = *(a1 + 48);
        [v12 presentViewController:v13 animated:v14 completion:v16];
      }

      else
      {
        v15 = *(a1 + 48);
        if (v15)
        {
          (*(v15 + 16))(v15, 1);
        }
      }
    }
  }
}

uint64_t __95__PKPassGroupsViewController_presentPassDetailsWithUniqueID_animated_action_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)_presentFPANConsentFlowWithEligibleCredentials:(id)credentials ineligibleCredentials:(id)ineligibleCredentials selectedCredentials:(id)selectedCredentials referralSource:(unint64_t)source showProvisioningSection:(BOOL)section animated:(BOOL)animated completion:(id)completion
{
  credentialsCopy = credentials;
  ineligibleCredentialsCopy = ineligibleCredentials;
  selectedCredentialsCopy = selectedCredentials;
  completionCopy = completion;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __178__PKPassGroupsViewController__presentFPANConsentFlowWithEligibleCredentials_ineligibleCredentials_selectedCredentials_referralSource_showProvisioningSection_animated_completion___block_invoke;
  block[3] = &unk_1E8024458;
  objc_copyWeak(v28, &location);
  v23 = credentialsCopy;
  v24 = ineligibleCredentialsCopy;
  sectionCopy = section;
  v25 = selectedCredentialsCopy;
  selfCopy = self;
  v28[1] = source;
  v27 = completionCopy;
  v18 = completionCopy;
  v19 = selectedCredentialsCopy;
  v20 = ineligibleCredentialsCopy;
  v21 = credentialsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v28);
  objc_destroyWeak(&location);
}

void __178__PKPassGroupsViewController__presentFPANConsentFlowWithEligibleCredentials_ineligibleCredentials_selectedCredentials_referralSource_showProvisioningSection_animated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = [[PKPaymentSetupDismissibleNavigationController alloc] initWithContext:0];
    v12 = [MEMORY[0x1E69B8EF8] sharedService];
    v11 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:v12];
    v4 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:0 provisioningController:v11 groupsController:0];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v10 = *(a1 + 80);
    v9 = *(a1 + 88);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __178__PKPassGroupsViewController__presentFPANConsentFlowWithEligibleCredentials_ineligibleCredentials_selectedCredentials_referralSource_showProvisioningSection_animated_completion___block_invoke_2;
    v16[3] = &unk_1E8010A10;
    v7 = *(a1 + 48);
    v16[4] = *(a1 + 56);
    v17 = v3;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __178__PKPassGroupsViewController__presentFPANConsentFlowWithEligibleCredentials_ineligibleCredentials_selectedCredentials_referralSource_showProvisioningSection_animated_completion___block_invoke_3;
    v13[3] = &unk_1E80158C0;
    v14 = v17;
    v15 = *(a1 + 64);
    v8 = v17;
    [PKProvisioningFlowBridge startAutoFillCredentialProvisioningFlowWithNavController:v8 eligibleCredentials:v5 ineligibleCredentials:v6 context:v4 referralSource:v10 showProvisioningSection:v9 selectedCredentials:v7 presentNavController:v16 completion:v13];
  }
}

void __178__PKPassGroupsViewController__presentFPANConsentFlowWithEligibleCredentials_ineligibleCredentials_selectedCredentials_referralSource_showProvisioningSection_animated_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pkui_frontMostViewController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

uint64_t __178__PKPassGroupsViewController__presentFPANConsentFlowWithEligibleCredentials_ineligibleCredentials_selectedCredentials_referralSource_showProvisioningSection_animated_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)presentSetupVirtualCardNumberForPassUniqueIdentifier:(id)identifier animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  identifierCopy = identifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v10 = [(PKPassGroupsViewController *)self _passFromGroupsControllerWithUniqueIdentifier:identifierCopy];
  paymentPass = [v10 paymentPass];

  if (paymentPass)
  {
    if (self->_inFailForward)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1);
      }
    }

    else
    {
      if ([paymentPass supportsVirtualCardNumber])
      {
        v12 = [paymentPass hasActiveVirtualCard] ^ 1;
      }

      else
      {
        v12 = 0;
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __103__PKPassGroupsViewController_presentSetupVirtualCardNumberForPassUniqueIdentifier_animated_completion___block_invoke;
      v13[3] = &unk_1E8024480;
      objc_copyWeak(&v17, &location);
      v18 = v12;
      v14 = paymentPass;
      selfCopy = self;
      v16 = completionCopy;
      [(PKPassGroupsViewController *)self presentPassWithUniqueID:identifierCopy animated:animatedCopy completionHandler:v13];

      objc_destroyWeak(&v17);
    }
  }

  objc_destroyWeak(&location);
}

void __103__PKPassGroupsViewController_presentSetupVirtualCardNumberForPassUniqueIdentifier_animated_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __103__PKPassGroupsViewController_presentSetupVirtualCardNumberForPassUniqueIdentifier_animated_completion___block_invoke_2;
    block[3] = &unk_1E8023940;
    objc_copyWeak(&v12, (a1 + 56));
    v13 = *(a1 + 64);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = v5;
    v10 = v6;
    v11 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v12);
  }
}

void __103__PKPassGroupsViewController_presentSetupVirtualCardNumberForPassUniqueIdentifier_animated_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 64) == 1)
  {
    v3 = PKDismissedKeyForPass();
    PKSharedCacheSetBoolForKey();

    v4 = [[PKVirtualCardEnrollmentViewController alloc] initWithPaymentPass:*(a1 + 32) context:0 delegate:WeakRetained];
    v5 = [[PKNavigationController alloc] initWithRootViewController:v4];
    [(PKNavigationController *)v5 setModalPresentationStyle:2];
    v6 = [*(a1 + 40) pkui_frontMostViewController];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __103__PKPassGroupsViewController_presentSetupVirtualCardNumberForPassUniqueIdentifier_animated_completion___block_invoke_3;
    v8[3] = &unk_1E8010B50;
    v9 = *(a1 + 48);
    [v6 presentViewController:v5 animated:1 completion:v8];
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }
}

uint64_t __103__PKPassGroupsViewController_presentSetupVirtualCardNumberForPassUniqueIdentifier_animated_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)presentExpressUpgradeDetailForPassUniqueID:(id)d assetIdentifier:(id)identifier hideDisableAction:(unint64_t)action reportingMetadata:(id)metadata animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  v48 = *MEMORY[0x1E69E9840];
  dCopy = d;
  identifierCopy = identifier;
  metadataCopy = metadata;
  handlerCopy = handler;
  v18 = [(PKPassGroupsViewController *)self _passFromGroupsControllerWithUniqueIdentifier:dCopy];
  paymentPass = [v18 paymentPass];

  if (paymentPass)
  {
    actionCopy = action;
    v30 = animatedCopy;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    devicePaymentApplications = [paymentPass devicePaymentApplications];
    v21 = [devicePaymentApplications countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v44;
LABEL_4:
      v24 = 0;
      while (1)
      {
        if (*v44 != v23)
        {
          objc_enumerationMutation(devicePaymentApplications);
        }

        if ([*(*(&v43 + 1) + 8 * v24) supportsExpress])
        {
          break;
        }

        if (v22 == ++v24)
        {
          v22 = [devicePaymentApplications countByEnumeratingWithState:&v43 objects:v47 count:16];
          if (v22)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      if (self->_inFailForward)
      {
        goto LABEL_12;
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __152__PKPassGroupsViewController_presentExpressUpgradeDetailForPassUniqueID_assetIdentifier_hideDisableAction_reportingMetadata_animated_completionHandler___block_invoke;
      aBlock[3] = &unk_1E80244A8;
      v25 = paymentPass;
      v39 = v25;
      selfCopy = self;
      v42 = v30;
      v26 = handlerCopy;
      v41 = v26;
      v27 = _Block_copy(aBlock);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __152__PKPassGroupsViewController_presentExpressUpgradeDetailForPassUniqueID_assetIdentifier_hideDisableAction_reportingMetadata_animated_completionHandler___block_invoke_3;
      v31[3] = &unk_1E80244F8;
      v31[4] = self;
      v32 = identifierCopy;
      v37 = actionCopy;
      v33 = v25;
      v34 = metadataCopy;
      v35 = v27;
      v36 = v26;
      v28 = v27;
      [(PKPassGroupsViewController *)self presentPassWithUniqueID:dCopy animated:v30 completionHandler:v31];
    }

    else
    {
LABEL_10:

LABEL_12:
      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, 1);
      }
    }
  }
}

void __152__PKPassGroupsViewController_presentExpressUpgradeDetailForPassUniqueID_assetIdentifier_hideDisableAction_reportingMetadata_animated_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(PKNavigationController);
  v5 = [MEMORY[0x1E69B8EF8] sharedService];
  v6 = [v5 targetDevice];

  v7 = [PKPaymentSetupMoreInfoViewController alloc];
  v14[0] = v3;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v9 = [(PKPaymentSetupMoreInfoViewController *)v7 initWithMoreInfoItems:v8 paymentPass:*(a1 + 32) targetDevice:v6 context:0 dismissalHandler:0 reportingSource:1];

  [(PKNavigationController *)v4 pushViewController:v9 animated:0];
  v10 = [*(a1 + 40) pkui_frontMostViewController];
  v11 = *(a1 + 56);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __152__PKPassGroupsViewController_presentExpressUpgradeDetailForPassUniqueID_assetIdentifier_hideDisableAction_reportingMetadata_animated_completionHandler___block_invoke_2;
  v12[3] = &unk_1E8010B50;
  v13 = *(a1 + 48);
  [v10 presentViewController:v4 animated:v11 completion:v12];
}

uint64_t __152__PKPassGroupsViewController_presentExpressUpgradeDetailForPassUniqueID_assetIdentifier_hideDisableAction_reportingMetadata_animated_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __152__PKPassGroupsViewController_presentExpressUpgradeDetailForPassUniqueID_assetIdentifier_hideDisableAction_reportingMetadata_animated_completionHandler___block_invoke_3(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 72);
    if (v4)
    {
      v5 = *(v4 + 16);

      v5();
    }
  }

  else
  {
    v13 = v2;
    v14 = v3;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 80);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __152__PKPassGroupsViewController_presentExpressUpgradeDetailForPassUniqueID_assetIdentifier_hideDisableAction_reportingMetadata_animated_completionHandler___block_invoke_4;
    v11[3] = &unk_1E80244D0;
    v12 = *(a1 + 64);
    [v6 _setupItemForExpressUpgradeWithAsset:v7 hideDisableAction:v8 pass:v9 reportingMetadata:v10 completionHandler:v11];
  }
}

void __152__PKPassGroupsViewController_presentExpressUpgradeDetailForPassUniqueID_assetIdentifier_hideDisableAction_reportingMetadata_animated_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __152__PKPassGroupsViewController_presentExpressUpgradeDetailForPassUniqueID_assetIdentifier_hideDisableAction_reportingMetadata_animated_completionHandler___block_invoke_5;
  v6[3] = &unk_1E8010E20;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_setupItemForExpressUpgradeWithAsset:(id)asset hideDisableAction:(unint64_t)action pass:(id)pass reportingMetadata:(id)metadata completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  passCopy = pass;
  metadataCopy = metadata;
  handlerCopy = handler;
  v15 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = assetCopy;
    _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "PKPassGroupsViewController: _setupItemForExpressUpgradeMarket: %@", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __126__PKPassGroupsViewController__setupItemForExpressUpgradeWithAsset_hideDisableAction_pass_reportingMetadata_completionHandler___block_invoke;
  aBlock[3] = &unk_1E8012A48;
  v16 = handlerCopy;
  v27 = v16;
  v17 = _Block_copy(aBlock);
  if (assetCopy)
  {
    v18 = action == 1;
    mEMORY[0x1E69B89C0] = [MEMORY[0x1E69B89C0] sharedInstance];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __126__PKPassGroupsViewController__setupItemForExpressUpgradeWithAsset_hideDisableAction_pass_reportingMetadata_completionHandler___block_invoke_2;
    v21[3] = &unk_1E8024520;
    v24 = v17;
    v25 = v18;
    v22 = passCopy;
    v23 = metadataCopy;
    [mEMORY[0x1E69B89C0] fetchMarketNotificationAssetsForIdentifier:assetCopy isDiscretionary:0 completionHandler:v21];

    v20 = v24;
  }

  else
  {
    v20 = PKPaymentSetupMoreInfoItemDictionaryForExpressUpgradeMarket();
    (*(v17 + 2))(v17, v20);
  }
}

void __126__PKPassGroupsViewController__setupItemForExpressUpgradeWithAsset_hideDisableAction_pass_reportingMetadata_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = MEMORY[0x1E69B8E40];
    v4 = a2;
    v5 = [[v3 alloc] initWithMoreInfoDictionary:v4];

    (*(v2 + 16))(v2, v5);
  }
}

void __126__PKPassGroupsViewController__setupItemForExpressUpgradeWithAsset_hideDisableAction_pass_reportingMetadata_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = PKPaymentSetupMoreInfoItemDictionaryForExpressUpgradeMarket();
  (*(v1 + 16))(v1, v2);
}

- (void)presentExpiredPassWithUniqueID:(id)d animated:(BOOL)animated completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v10 = [[PKExpiredPassesNavigationController alloc] initWithExistingGroupsController:self->_groupsController];
  v11 = v10;
  if (dCopy && v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __88__PKPassGroupsViewController_presentExpiredPassWithUniqueID_animated_completionHandler___block_invoke;
    v12[3] = &unk_1E8021110;
    v12[4] = self;
    v13 = v10;
    animatedCopy = animated;
    v14 = dCopy;
    v15 = handlerCopy;
    [(PKPassGroupsViewController *)self _presentWithUpdatedPasses:v12];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
  }
}

void __88__PKPassGroupsViewController_presentExpiredPassWithUniqueID_animated_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];

  if (v2)
  {
    [*(a1 + 32) dismissViewControllerAnimated:0 completion:0];
  }

  objc_initWeak(&location, *(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88__PKPassGroupsViewController_presentExpiredPassWithUniqueID_animated_completionHandler___block_invoke_2;
  v6[3] = &unk_1E80111F8;
  objc_copyWeak(&v9, &location);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v3 presentViewController:v4 animated:v5 completion:v6];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __88__PKPassGroupsViewController_presentExpiredPassWithUniqueID_animated_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained expiredPassesViewController];
    v5 = [v4 indexPathOfExpiredPassWithUniqueID:*(a1 + 32)];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 tableView];
      [v4 tableView:v7 didSelectRowAtIndexPath:v6];

      (*(*(a1 + 40) + 16))();
      goto LABEL_7;
    }

    v3 = v9;
  }

  v8 = *(a1 + 40);
  if (!v8)
  {
    goto LABEL_8;
  }

  (*(v8 + 16))(v8, 1);
LABEL_7:
  v3 = v9;
LABEL_8:
}

- (void)presentExpiredPassesAnimated:(BOOL)animated completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [[PKExpiredPassesNavigationController alloc] initWithExistingGroupsController:self->_groupsController];
  v8 = v7;
  if (v7)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __77__PKPassGroupsViewController_presentExpiredPassesAnimated_completionHandler___block_invoke;
    v9[3] = &unk_1E8024548;
    v9[4] = self;
    v10 = v7;
    animatedCopy = animated;
    v11 = handlerCopy;
    [(PKPassGroupsViewController *)self _presentWithUpdatedPasses:v9];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
  }
}

void __77__PKPassGroupsViewController_presentExpiredPassesAnimated_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];

  if (v2)
  {
    [*(a1 + 32) dismissViewControllerAnimated:0 completion:0];
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__PKPassGroupsViewController_presentExpiredPassesAnimated_completionHandler___block_invoke_2;
  v6[3] = &unk_1E8010B50;
  v7 = *(a1 + 48);
  [v3 presentViewController:v4 animated:v5 completion:v6];
}

uint64_t __77__PKPassGroupsViewController_presentExpiredPassesAnimated_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)presentPassWithUniqueID:(id)d context:(id)context animated:(BOOL)animated completionHandler:(id)handler
{
  v35[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  contextCopy = context;
  handlerCopy = handler;
  v13 = handlerCopy;
  if (!self->_invalidationStatus)
  {
    if (handlerCopy)
    {
      v14 = objc_alloc(MEMORY[0x1E69B8798]);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __89__PKPassGroupsViewController_presentPassWithUniqueID_context_animated_completionHandler___block_invoke;
      v33[3] = &unk_1E8010B50;
      v15 = v13;
      v34 = v15;
      v16 = [v14 initWithBlock:v33];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __89__PKPassGroupsViewController_presentPassWithUniqueID_context_animated_completionHandler___block_invoke_3;
      aBlock[3] = &unk_1E80158C0;
      v31 = v16;
      v32 = v15;
      v17 = v16;
      v18 = _Block_copy(aBlock);

      if (!dCopy)
      {
        if (!v18)
        {
          goto LABEL_15;
        }

        v18[2](v18, 1);
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      if (!dCopy)
      {
        goto LABEL_15;
      }

      v18 = 0;
    }

    if ([(PKGroupsController *)self->_groupsController filteringEnabled])
    {
      filteredPassUniqueIDs = [(PKGroupsController *)self->_groupsController filteredPassUniqueIDs];
      v20 = [filteredPassUniqueIDs containsObject:dCopy];

      if (v20)
      {
        v35[0] = dCopy;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
        passUniqueIDsToExcludeFromFiltering = self->_passUniqueIDsToExcludeFromFiltering;
        self->_passUniqueIDsToExcludeFromFiltering = v21;

        self->_passesAreOutdated = 1;
      }
    }

    objc_initWeak(&location, self);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __89__PKPassGroupsViewController_presentPassWithUniqueID_context_animated_completionHandler___block_invoke_4;
    v23[3] = &unk_1E801E330;
    objc_copyWeak(&v27, &location);
    v18 = v18;
    v26 = v18;
    v24 = dCopy;
    animatedCopy = animated;
    v25 = contextCopy;
    [(PKPassGroupsViewController *)self _presentWithUpdatedPasses:v23];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    goto LABEL_14;
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
  }

LABEL_15:
}

void __89__PKPassGroupsViewController_presentPassWithUniqueID_context_animated_completionHandler___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PKPassGroupsViewController_presentPassWithUniqueID_context_animated_completionHandler___block_invoke_2;
  block[3] = &unk_1E8010B50;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __89__PKPassGroupsViewController_presentPassWithUniqueID_context_animated_completionHandler___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) invalidate];
  if (result)
  {
    __break(1u);
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void __89__PKPassGroupsViewController_presentPassWithUniqueID_context_animated_completionHandler___block_invoke_4(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [*(WeakRetained + 178) groupIndexForPassUniqueID:*(a1 + 32)];
    v5 = v3[178];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v5 containsExpiredPassWithUniqueID:*(a1 + 32)])
      {
        v6 = *(a1 + 32);
        v7 = *(a1 + 64);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __89__PKPassGroupsViewController_presentPassWithUniqueID_context_animated_completionHandler___block_invoke_7;
        v16[3] = &unk_1E80110B8;
        objc_copyWeak(&v18, (a1 + 56));
        v17 = *(a1 + 48);
        [v3 presentExpiredPassWithUniqueID:v6 animated:v7 & 1 completionHandler:v16];

        objc_destroyWeak(&v18);
      }

      else
      {
        v13 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 32);
          *buf = 134218242;
          v27 = v3;
          v28 = 2112;
          v29 = v14;
          _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "PKPassGroupsViewController (%p): could not present pass %@ - does not exist.", buf, 0x16u);
        }

        v15 = *(a1 + 48);
        if (v15)
        {
          (*(v15 + 16))(v15, 1);
        }
      }
    }

    else
    {
      v9 = [v5 groupAtIndex:?];
      v10 = [v9 passCount];
      v11 = v10 > 1;
      if (v10 >= 2)
      {
        [v3 _beginSuppressingInstanceFooter];
      }

      v12 = *(a1 + 64);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __89__PKPassGroupsViewController_presentPassWithUniqueID_context_animated_completionHandler___block_invoke_5;
      v19[3] = &unk_1E8024598;
      objc_copyWeak(&v23, (a1 + 56));
      v22 = *(a1 + 48);
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v24 = *(a1 + 64);
      v25 = v11;
      [v3 dismissPresentedVCsWithRequirements:4 animated:v12 & 1 performAction:v19];

      objc_destroyWeak(&v23);
    }
  }

  else
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, 1);
    }
  }
}

void __89__PKPassGroupsViewController_presentPassWithUniqueID_context_animated_completionHandler___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[178] groupIndexForPassUniqueID:*(a1 + 32)];
    v5 = *(a1 + 40);
    v6 = *(a1 + 64);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __89__PKPassGroupsViewController_presentPassWithUniqueID_context_animated_completionHandler___block_invoke_6;
    v8[3] = &unk_1E8024570;
    objc_copyWeak(v12, (a1 + 56));
    v11 = *(a1 + 48);
    v12[1] = v4;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v13 = *(a1 + 64);
    [v3 _presentGroupWithIndex:v4 context:v5 animated:v6 completionHandler:v8];

    objc_destroyWeak(v12);
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, 1);
    }
  }
}

void __89__PKPassGroupsViewController_presentPassWithUniqueID_context_animated_completionHandler___block_invoke_6(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v5 = *(a1 + 48);
    if (!v5)
    {
      goto LABEL_20;
    }

    v6 = *(v5 + 16);
    goto LABEL_19;
  }

  if ((a2 & 1) == 0)
  {
    v7 = [WeakRetained[144] modalGroupIndex];
    v8 = [WeakRetained[178] groupCount];
    if (v7 == *(a1 + 64) || (v7 == 0x7FFFFFFFFFFFFFFFLL ? (v9 = v8 == 1) : (v9 = 0), v9))
    {
      [WeakRetained[144] presentPassWithUniqueID:*(a1 + 32) withContext:*(a1 + 40) animated:*(a1 + 72)];
    }

    if ((*(a1 + 73) & 1) == 0)
    {
      goto LABEL_17;
    }

    v4 = *(a1 + 40);
    goto LABEL_16;
  }

  if (*(a1 + 73))
  {
    v4 = 0;
LABEL_16:
    [WeakRetained _endSuppressingInstanceFooterWithContext:v4];
  }

LABEL_17:
  v10 = *(a1 + 48);
  if (!v10)
  {
    goto LABEL_20;
  }

  v6 = *(v10 + 16);
LABEL_19:
  v6();
LABEL_20:
}

void __89__PKPassGroupsViewController_presentPassWithUniqueID_context_animated_completionHandler___block_invoke_7(uint64_t a1, unsigned int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  if (v5)
  {
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v6 = a2;
    }

    else
    {
      v6 = 1;
    }

    (*(v5 + 16))(v5, v6);
    WeakRetained = v7;
  }
}

- (void)presentSearchWithCompletion:(id)completion
{
  completionCopy = completion;
  _dashboardPassGroupViewController = [(PKPassGroupsViewController *)self _dashboardPassGroupViewController];
  v5 = _dashboardPassGroupViewController;
  if (_dashboardPassGroupViewController)
  {
    [(PKDashboardPassGroupViewController *)_dashboardPassGroupViewController presentSearchWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)presentSearchWithQuery:(id)query completion:(id)completion
{
  queryCopy = query;
  completionCopy = completion;
  _dashboardPassGroupViewController = [(PKPassGroupsViewController *)self _dashboardPassGroupViewController];
  v8 = _dashboardPassGroupViewController;
  if (_dashboardPassGroupViewController)
  {
    [(PKDashboardPassGroupViewController *)_dashboardPassGroupViewController presentSearchWithQuery:queryCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)presentFeatureSetupOrFeaturePass:(unint64_t)pass referrerIdentifier:(id)identifier presentationContext:(id)context completion:(id)completion
{
  identifierCopy = identifier;
  contextCopy = context;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v13 = MEMORY[0x1E695DFD8];
  v14 = PKFeatureIdentifierToString();
  v15 = [v13 setWithObject:v14];

  if (pass <= 3)
  {
    if (pass >= 2)
    {
      if (pass == 2)
      {
        mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
        v17 = v21;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __113__PKPassGroupsViewController_presentFeatureSetupOrFeaturePass_referrerIdentifier_presentationContext_completion___block_invoke;
        v21[3] = &unk_1E80245E8;
        v18 = &v22;
        objc_copyWeak(&v22, &location);
        v21[6] = completionCopy;
        v21[4] = identifierCopy;
        v21[5] = v15;
        [mEMORY[0x1E69B8400] defaultAccountForFeature:2 completion:v21];
LABEL_8:

        objc_destroyWeak(v18);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

LABEL_9:
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    goto LABEL_11;
  }

  if (pass == 4)
  {
    goto LABEL_9;
  }

  if (pass == 5)
  {
    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    v17 = v19;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __113__PKPassGroupsViewController_presentFeatureSetupOrFeaturePass_referrerIdentifier_presentationContext_completion___block_invoke_4;
    v19[3] = &unk_1E8024660;
    v18 = v20;
    objc_copyWeak(v20, &location);
    v19[6] = completionCopy;
    v19[4] = contextCopy;
    v20[1] = 5;
    v19[5] = identifierCopy;
    [mEMORY[0x1E69B8400] defaultAccountForFeature:5 completion:v19];
    goto LABEL_8;
  }

LABEL_11:

  objc_destroyWeak(&location);
}

void __113__PKPassGroupsViewController_presentFeatureSetupOrFeaturePass_referrerIdentifier_presentationContext_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __113__PKPassGroupsViewController_presentFeatureSetupOrFeaturePass_referrerIdentifier_presentationContext_completion___block_invoke_2;
  block[3] = &unk_1E801EF10;
  objc_copyWeak(&v10, a1 + 7);
  v9 = a1[6];
  v6 = v3;
  v7 = a1[4];
  v8 = a1[5];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v10);
}

void __113__PKPassGroupsViewController_presentFeatureSetupOrFeaturePass_referrerIdentifier_presentationContext_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __113__PKPassGroupsViewController_presentFeatureSetupOrFeaturePass_referrerIdentifier_presentationContext_completion___block_invoke_3;
      v5[3] = &unk_1E80245C0;
      objc_copyWeak(&v9, (a1 + 64));
      v8 = *(a1 + 56);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      [v3 presentCreditPassAnimated:1 completion:v5];

      objc_destroyWeak(&v9);
      goto LABEL_7;
    }

    [WeakRetained presentPaymentSetupInMode:4 referrerIdentifier:*(a1 + 40) referralSource:0 campaignIdentifier:0 paymentNetwork:0 transitNetworkIdentifier:0 allowedFeatureIdentifiers:*(a1 + 48) productIdentifiers:0 sectionIdentifier:0];
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    (*(v4 + 16))();
  }

LABEL_7:
}

void __113__PKPassGroupsViewController_presentFeatureSetupOrFeaturePass_referrerIdentifier_presentationContext_completion___block_invoke_3(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  v7 = WeakRetained;
  if (WeakRetained && a2)
  {
    [WeakRetained presentPaymentSetupInMode:0 referrerIdentifier:*(a1 + 32) referralSource:0 campaignIdentifier:0 paymentNetwork:0 transitNetworkIdentifier:0 allowedFeatureIdentifiers:*(a1 + 40) productIdentifiers:0 sectionIdentifier:0];
    v5 = v7;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
    v5 = v7;
  }
}

void __113__PKPassGroupsViewController_presentFeatureSetupOrFeaturePass_referrerIdentifier_presentationContext_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __113__PKPassGroupsViewController_presentFeatureSetupOrFeaturePass_referrerIdentifier_presentationContext_completion___block_invoke_5;
  v7[3] = &unk_1E8024610;
  objc_copyWeak(v12, (a1 + 56));
  v11 = *(a1 + 48);
  v8 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v9 = v4;
  v12[1] = v5;
  v10 = *(a1 + 40);
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v7);

  objc_destroyWeak(v12);
}

void __113__PKPassGroupsViewController_presentFeatureSetupOrFeaturePass_referrerIdentifier_presentationContext_completion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3 && [v3 state] != 4)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __113__PKPassGroupsViewController_presentFeatureSetupOrFeaturePass_referrerIdentifier_presentationContext_completion___block_invoke_6;
      v14[3] = &unk_1E80245C0;
      v5 = &v18;
      objc_copyWeak(&v18, (a1 + 64));
      v17 = *(a1 + 56);
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      [WeakRetained presentCreditPassAnimated:1 completion:v14];

      v8 = v17;
    }

    else
    {
      v4 = [MEMORY[0x1E69B8400] sharedInstance];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __113__PKPassGroupsViewController_presentFeatureSetupOrFeaturePass_referrerIdentifier_presentationContext_completion___block_invoke_8;
      v10[3] = &unk_1E8024638;
      v5 = v13;
      objc_copyWeak(v13, (a1 + 64));
      v6 = *(a1 + 56);
      v7 = *(a1 + 72);
      v12 = v6;
      v13[1] = v7;
      v11 = *(a1 + 48);
      [v4 defaultAccountForFeature:2 completion:v10];

      v8 = v12;
    }

    objc_destroyWeak(v5);
  }

  else
  {
    v9 = *(a1 + 56);
    if (v9)
    {
      (*(v9 + 16))();
    }
  }
}

void __113__PKPassGroupsViewController_presentFeatureSetupOrFeaturePass_referrerIdentifier_presentationContext_completion___block_invoke_6(uint64_t a1, char a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && a3 && (a2 & 1) == 0)
  {
    v7 = objc_alloc_init(PKAccountViewInterfaceConfiguration);
    [(PKAccountViewInterfaceConfiguration *)v7 setAccount:*(a1 + 32)];
    [(PKAccountViewInterfaceConfiguration *)v7 setDestination:0];
    [(PKAccountViewInterfaceConfiguration *)v7 setViewStyle:0];
    v8 = [WeakRetained _dashboardPassGroupViewController];
    if (v8)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __113__PKPassGroupsViewController_presentFeatureSetupOrFeaturePass_referrerIdentifier_presentationContext_completion___block_invoke_7;
      v12[3] = &unk_1E8010AD8;
      v9 = *(a1 + 40);
      v13 = *(a1 + 48);
      [(PKDashboardPassGroupViewController *)v8 presentAccountWithConfiguration:v7 presentationContext:v9 animated:1 completion:v12];
    }

    else
    {
      v11 = *(a1 + 48);
      if (v11)
      {
        (*(v11 + 16))();
      }
    }
  }

  else
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))();
    }
  }
}

uint64_t __113__PKPassGroupsViewController_presentFeatureSetupOrFeaturePass_referrerIdentifier_presentationContext_completion___block_invoke_7(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __113__PKPassGroupsViewController_presentFeatureSetupOrFeaturePass_referrerIdentifier_presentationContext_completion___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __113__PKPassGroupsViewController_presentFeatureSetupOrFeaturePass_referrerIdentifier_presentationContext_completion___block_invoke_9;
  v11[3] = &unk_1E8024610;
  objc_copyWeak(v16, (a1 + 48));
  v7 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v8 = *(a1 + 56);
  v15 = v7;
  v16[1] = v8;
  v14 = *(a1 + 32);
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v11);

  objc_destroyWeak(v16);
}

void __113__PKPassGroupsViewController_presentFeatureSetupOrFeaturePass_referrerIdentifier_presentationContext_completion___block_invoke_9(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
LABEL_7:
    v6 = *(a1 + 56);
    if (v6)
    {
      (*(v6 + 16))();
    }

    goto LABEL_16;
  }

  v3 = *(a1 + 32);
  if (!v3 || *(a1 + 40))
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 138412290;
      v24 = v5;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Cannot present feature apply, card account not here with error %@", buf, 0xCu);
    }

    goto LABEL_7;
  }

  v7 = [v3 redeemRewardsFeatureDescriptor];
  v8 = [v7 productForFeature:*(a1 + 72)];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E69B8D48]);
    v10 = [MEMORY[0x1E69B8EF8] sharedService];
    v11 = [v9 initWithWebService:v10];

    [v11 setReferrerIdentifier:*(a1 + 48)];
    v12 = [PKFeatureOnBoardingViewController alloc];
    v13 = [v8 onboardingItems];
    v14 = [v13 firstObject];
    v15 = [(PKFeatureOnBoardingViewController *)v12 initWithParentFlowController:0 setupDelegate:0 setupContext:0 onboardingContext:0 featureIdentifier:5 provisioningController:v11 paymentSetupProduct:v8 currentPage:v14];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __113__PKPassGroupsViewController_presentFeatureSetupOrFeaturePass_referrerIdentifier_presentationContext_completion___block_invoke_221;
    v19[3] = &unk_1E8012300;
    v20 = v15;
    v21 = WeakRetained;
    v22 = *(a1 + 56);
    v16 = v15;
    [WeakRetained dismissPresentedVCsWithRequirements:4 animated:1 performAction:v19];
  }

  else
  {
    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "Cannot retrieve feature product to present apply flow", buf, 2u);
    }

    v18 = *(a1 + 56);
    if (v18)
    {
      (*(v18 + 16))();
    }
  }

LABEL_16:
}

void __113__PKPassGroupsViewController_presentFeatureSetupOrFeaturePass_referrerIdentifier_presentationContext_completion___block_invoke_221(uint64_t a1)
{
  v3 = [[PKNavigationController alloc] initWithRootViewController:*(a1 + 32)];
  [(PKNavigationController *)v3 setModalInPresentation:1];
  v2 = [*(a1 + 40) pkui_frontMostViewController];
  [v2 presentViewController:v3 animated:1 completion:*(a1 + 48)];
}

- (void)presentInstallmentPlansForFeature:(unint64_t)feature completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (feature)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x3032000000;
    v30[3] = __Block_byref_object_copy__65;
    v30[4] = __Block_byref_object_dispose__65;
    v31 = 0;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy__65;
    v28[4] = __Block_byref_object_dispose__65;
    v29 = 0;
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x3032000000;
    v26[3] = __Block_byref_object_copy__65;
    v26[4] = __Block_byref_object_dispose__65;
    v27 = 0;
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = __Block_byref_object_copy__65;
    v24[4] = __Block_byref_object_dispose__65;
    v25 = 0;
    objc_initWeak(&location, self);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke;
    v22[3] = &unk_1E8024688;
    v22[4] = v30;
    v22[5] = feature;
    [v8 addOperation:v22];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_4;
    v21[3] = &unk_1E8015E88;
    v21[4] = v30;
    v21[5] = v28;
    [v8 addOperation:v21];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_7;
    v20[3] = &unk_1E8015E88;
    v20[4] = v30;
    v20[5] = v26;
    [v8 addOperation:v20];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_10;
    v18[3] = &unk_1E801B6D0;
    objc_copyWeak(&v19, &location);
    v18[4] = v24;
    [v8 addOperation:v18];
    null = [MEMORY[0x1E695DFB0] null];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_13;
    v11[3] = &unk_1E8024700;
    objc_copyWeak(&v17, &location);
    v13 = v30;
    v12 = v7;
    v14 = v28;
    v15 = v26;
    v16 = v24;
    v10 = [v8 evaluateWithInput:null completion:v11];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    _Block_object_dispose(v24, 8);

    _Block_object_dispose(v26, 8);
    _Block_object_dispose(v28, 8);

    _Block_object_dispose(v30, 8);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
  }
}

void __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69B8400] sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_2;
  v13[3] = &unk_1E8012D30;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v15 = v7;
  v16 = v9;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  [v8 defaultAccountForFeature:v10 completion:v13];
}

void __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_3;
  block[3] = &unk_1E801B6A8;
  v8 = v3;
  v6 = *(a1 + 40);
  v4 = v6;
  v10 = v6;
  v9 = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_3(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v9 = [MEMORY[0x1E69B8400] sharedInstance];
    v10 = [*(*(*(a1 + 32) + 8) + 40) accountIdentifier];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_5;
    v11[3] = &unk_1E8012DA8;
    v14 = *(a1 + 40);
    v13 = v8;
    v12 = v6;
    [v9 accountUsersForAccountWithIdentifier:v10 completion:v11];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_6;
  block[3] = &unk_1E80114A8;
  v8 = v3;
  v6 = *(a1 + 40);
  v4 = v6;
  v10 = v6;
  v9 = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_6(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [objc_alloc(MEMORY[0x1E69B8450]) initWithAccountUsers:*(a1 + 32)];
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

void __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_7(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v9 = [MEMORY[0x1E69B8400] sharedInstance];
    v10 = [*(*(*(a1 + 32) + 8) + 40) accountIdentifier];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_8;
    v11[3] = &unk_1E8012DA8;
    v14 = *(a1 + 40);
    v13 = v8;
    v12 = v6;
    [v9 physicalCardsForAccountWithIdentifier:v10 completion:v11];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_9;
  block[3] = &unk_1E80114A8;
  v8 = v3;
  v6 = *(a1 + 40);
  v4 = v6;
  v10 = v6;
  v9 = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_9(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) copy];
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

void __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = *(WeakRetained + 154);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_11;
    v11[3] = &unk_1E8012DD0;
    v14 = *(a1 + 32);
    v13 = v7;
    v12 = v6;
    [v10 familyMembersWithCompletion:v11];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_12;
  block[3] = &unk_1E801B6A8;
  v8 = v3;
  v6 = *(a1 + 40);
  v4 = v6;
  v10 = v6;
  v9 = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_12(void *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69B88A0]) initWithFamilyMembers:a1[4]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1[6] + 16);

  return v5();
}

void __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_13(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_14;
  block[3] = &unk_1E80246D8;
  objc_copyWeak(&v9, (a1 + 72));
  v4 = *(a1 + 32);
  v2 = v4;
  v3 = *(a1 + 48);
  v6 = v4;
  v7 = v3;
  v8 = *(a1 + 64);
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    if (v3)
    {
      v4 = [v3 creditDetails];
      v5 = [v4 installmentPlans];
      v6 = [v5 count];

      v7 = *(*(*(a1 + 40) + 8) + 40);
      if (v6 == 1)
      {
        v8 = [v7 creditDetails];
        v9 = [v8 installmentPlans];
        v10 = [v9 allObjects];
        v11 = [v10 firstObject];

        if (v11)
        {
          v12 = [v11 identifier];
          v13 = [*(*(*(a1 + 40) + 8) + 40) accountIdentifier];
          [WeakRetained presentInstallmentPlanWithIdentifier:v12 forAccountIdentifier:v13 completion:*(a1 + 32)];
        }
      }

      else
      {
        v15 = [v7 associatedPassUniqueID];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v18 = *(a1 + 32);
        v22 = *(a1 + 48);
        v19[2] = __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_15;
        v19[3] = &unk_1E80246B0;
        v19[4] = WeakRetained;
        v20 = v15;
        v23 = *(a1 + 64);
        v16 = v18;
        v21 = v18;
        v17 = v15;
        [WeakRetained presentPassDetailsWithUniqueID:v17 animated:1 completionHandler:v19];
      }
    }

    else
    {
      v14 = *(a1 + 32);
      if (v14)
      {
        (*(v14 + 16))();
      }
    }
  }
}

uint64_t __75__PKPassGroupsViewController_presentInstallmentPlansForFeature_completion___block_invoke_15(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = [*(a1 + 32) presentedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [*(*(a1 + 32) + 1424) passWithUniqueID:*(a1 + 40)];
      v16 = [v4 paymentPass];

      v5 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPaymentPass:v16];
      v6 = [objc_alloc(MEMORY[0x1E69B9300]) initWithTransactionSource:v5];
      v7 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
      v8 = [PKInstallmentPlansViewController alloc];
      v9 = *(*(*(a1 + 56) + 8) + 40);
      v10 = *(*(*(a1 + 64) + 8) + 40);
      v11 = *(*(*(a1 + 72) + 8) + 40);
      v12 = [MEMORY[0x1E69B8400] sharedInstance];
      v13 = [(PKInstallmentPlansViewController *)v8 initWithAccount:v9 accountUserCollection:v10 physicalCards:v11 accountService:v12 transactionSourceCollection:v6 familyCollection:*(*(*(a1 + 80) + 8) + 40) dataProvider:v7];

      [v3 pushViewController:v13 animated:1];
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    v15 = *(result + 16);

    return v15();
  }

  return result;
}

- (void)presentInstallmentPlanWithIdentifier:(id)identifier forAccountIdentifier:(id)accountIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  accountIdentifierCopy = accountIdentifier;
  completionCopy = completion;
  v11 = completionCopy;
  if (identifierCopy && accountIdentifierCopy)
  {
    objc_initWeak(&location, self);
    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __99__PKPassGroupsViewController_presentInstallmentPlanWithIdentifier_forAccountIdentifier_completion___block_invoke;
    v13[3] = &unk_1E8024728;
    objc_copyWeak(&v16, &location);
    v14 = identifierCopy;
    v15 = v11;
    [mEMORY[0x1E69B8400] accountWithIdentifier:accountIdentifierCopy completion:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
  }
}

void __99__PKPassGroupsViewController_presentInstallmentPlanWithIdentifier_forAccountIdentifier_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __99__PKPassGroupsViewController_presentInstallmentPlanWithIdentifier_forAccountIdentifier_completion___block_invoke_2;
  v5[3] = &unk_1E8019A28;
  objc_copyWeak(&v9, a1 + 6);
  v6 = v3;
  v7 = a1[4];
  v8 = a1[5];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v9);
}

void __99__PKPassGroupsViewController_presentInstallmentPlanWithIdentifier_forAccountIdentifier_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) creditDetails];
    v4 = [v3 installmentPlanWithIdentifier:*(a1 + 40)];

    if (v4)
    {
      v5 = [*(a1 + 32) associatedPassUniqueID];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __99__PKPassGroupsViewController_presentInstallmentPlanWithIdentifier_forAccountIdentifier_completion___block_invoke_3;
      v7[3] = &unk_1E8019A98;
      v7[4] = WeakRetained;
      v8 = v4;
      v9 = *(a1 + 48);
      [WeakRetained presentPassWithUniqueID:v5 animated:1 completionHandler:v7];
    }

    else
    {
      v6 = *(a1 + 48);
      if (v6)
      {
        (*(v6 + 16))();
      }
    }
  }
}

uint64_t __99__PKPassGroupsViewController_presentInstallmentPlanWithIdentifier_forAccountIdentifier_completion___block_invoke_3(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = [*(a1 + 32) _dashboardPassGroupViewController];
    v4 = v3;
    if (v3)
    {
      [(PKDashboardPassGroupViewController *)v3 presentInstallmentPlan:?];
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)presentInvitationsInboxAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_inboxDataSource)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__PKPassGroupsViewController_presentInvitationsInboxAnimated_completion___block_invoke;
    v8[3] = &unk_1E80150A8;
    v8[4] = self;
    v10 = animatedCopy;
    v9 = completionCopy;
    [(PKPassGroupsViewController *)self dismissPresentedVCsWithRequirements:0 animated:animatedCopy performAction:v8];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __73__PKPassGroupsViewController_presentInvitationsInboxAnimated_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1344);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __73__PKPassGroupsViewController_presentInvitationsInboxAnimated_completion___block_invoke_2;
  v3[3] = &unk_1E80150A8;
  v3[4] = v1;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 updateInboxWithCompletion:v3];
}

void __73__PKPassGroupsViewController_presentInvitationsInboxAnimated_completion___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PKPassGroupsViewController_presentInvitationsInboxAnimated_completion___block_invoke_3;
  block[3] = &unk_1E80150A8;
  v1 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = *(a1 + 48);
  v3 = v1;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __73__PKPassGroupsViewController_presentInvitationsInboxAnimated_completion___block_invoke_3(uint64_t a1)
{
  if ([*(*(a1 + 32) + 1344) hasInboxMessages])
  {
    v2 = [[PKInboxViewController alloc] initWithInboxDataSource:*(*(a1 + 32) + 1344) contactAvatarManager:*(*(a1 + 32) + 1384) context:0];
    v3 = [[PKNavigationController alloc] initWithRootViewController:v2];
    v4 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__PKPassGroupsViewController_presentInvitationsInboxAnimated_completion___block_invoke_4;
    v10[3] = &unk_1E8010E20;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v11 = v2;
    v12 = v6;
    v7 = v2;
    [v5 presentViewController:v3 animated:v4 completion:v10];
  }

  else
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 16);

      v9();
    }
  }
}

uint64_t __73__PKPassGroupsViewController_presentInvitationsInboxAnimated_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)presentCreateAccountUserInvitationWithCompletion:(id)completion
{
  completionCopy = completion;
  pkui_frontMostViewController = [(UIViewController *)self pkui_frontMostViewController];
  [PKAccountInvitationController presentCreateAccountUserInvitationWithViewController:pkui_frontMostViewController account:0 accountUserCollection:0 familyMemberCollection:0 context:0 completion:completionCopy];
}

- (void)presentInvitationWithIdentifier:(id)identifier forAccountWithIdentifier:(id)withIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  completionCopy = completion;
  v11 = completionCopy;
  if (identifierCopy && withIdentifierCopy)
  {
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __98__PKPassGroupsViewController_presentInvitationWithIdentifier_forAccountWithIdentifier_completion___block_invoke;
    v12[3] = &unk_1E8024750;
    objc_copyWeak(&v15, &location);
    v13 = identifierCopy;
    v14 = v11;
    [(PKPassGroupsViewController *)self presentPassWithAssociatedAccountIdentifier:withIdentifierCopy animated:1 completion:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
  }
}

void __98__PKPassGroupsViewController_presentInvitationWithIdentifier_forAccountWithIdentifier_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (!v5 || (a2 & 1) != 0)
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v7 = WeakRetained;
      v8 = [WeakRetained _dashboardPassGroupViewController];
      if (v8)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __98__PKPassGroupsViewController_presentInvitationWithIdentifier_forAccountWithIdentifier_completion___block_invoke_2;
        v11[3] = &unk_1E8010B50;
        v9 = *(a1 + 32);
        v12 = *(a1 + 40);
        [(PKDashboardPassGroupViewController *)v8 presentInvitationWithIdentifier:v9 completion:v11];
      }
    }
  }
}

uint64_t __98__PKPassGroupsViewController_presentInvitationWithIdentifier_forAccountWithIdentifier_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)presentAppStorePageForItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[PKStoreProductViewPresenter alloc] initWithProductDelegate:0];
  [(PKStoreProductViewPresenter *)v5 loadProductForItemIdentifier:identifierCopy customProductPageIdentifier:0];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__PKPassGroupsViewController_presentAppStorePageForItemWithIdentifier___block_invoke;
  v6[3] = &unk_1E8024778;
  v6[4] = self;
  [(PKStoreProductViewPresenter *)v5 presentStoreViewWithBlock:v6];
}

void __71__PKPassGroupsViewController_presentAppStorePageForItemWithIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 pkui_frontMostViewController];
  [v7 presentViewController:v6 animated:1 completion:v5];
}

- (void)presentTransactionDetailsForTransactionWithIdentifier:(id)identifier confirmPaymentOfferPlan:(BOOL)plan
{
  planCopy = plan;
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy && !self->_inFailForward)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (planCopy)
      {
        v8 = @"YES";
      }

      *buf = 138412546;
      v14 = identifierCopy;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Presenting transaction details for transactionID %@, confirmPaymentOfferPlan %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    paymentService = self->_paymentService;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __108__PKPassGroupsViewController_presentTransactionDetailsForTransactionWithIdentifier_confirmPaymentOfferPlan___block_invoke;
    v10[3] = &unk_1E80247F0;
    objc_copyWeak(&v11, buf);
    v10[4] = self;
    v12 = planCopy;
    [(PKPaymentService *)paymentService transactionWithTransactionIdentifier:identifierCopy completion:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

void __108__PKPassGroupsViewController_presentTransactionDetailsForTransactionWithIdentifier_confirmPaymentOfferPlan___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 154);
    v7 = [v3 transactionSourceIdentifier];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __108__PKPassGroupsViewController_presentTransactionDetailsForTransactionWithIdentifier_confirmPaymentOfferPlan___block_invoke_2;
    v8[3] = &unk_1E80247C8;
    v8[4] = *(a1 + 32);
    v9 = v3;
    v10 = *(a1 + 48);
    [v6 transactionSourceTypeForTransactionSourceIdentifier:v7 completion:v8];
  }
}

void __108__PKPassGroupsViewController_presentTransactionDetailsForTransactionWithIdentifier_confirmPaymentOfferPlan___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __108__PKPassGroupsViewController_presentTransactionDetailsForTransactionWithIdentifier_confirmPaymentOfferPlan___block_invoke_3;
  v5[3] = &unk_1E80247A0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = a2;
  v8 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (void)presentTransactionDetailsForTransactionWithServiceIdentifier:(id)identifier transactionSourceIdentifier:(id)sourceIdentifier confirmPaymentOfferPlan:(BOOL)plan
{
  planCopy = plan;
  v40 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  sourceIdentifierCopy = sourceIdentifier;
  if (identifierCopy && !self->_inFailForward)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      *buf = 138412802;
      *&buf[4] = identifierCopy;
      *&buf[12] = 2112;
      if (planCopy)
      {
        v11 = @"YES";
      }

      *&buf[14] = sourceIdentifierCopy;
      *&buf[22] = 2112;
      v37 = v11;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Presenting transaction details for serviceIdentifier %@, transactionSourceIdentifier %@, confirmPaymentOfferPlan %@", buf, 0x20u);
    }

    objc_initWeak(&location, self);
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v34[3] = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v37 = __Block_byref_object_copy__65;
    v38 = __Block_byref_object_dispose__65;
    v39 = 0;
    v12 = dispatch_group_create();
    dispatch_group_enter(v12);
    paymentService = self->_paymentService;
    if (sourceIdentifierCopy)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __143__PKPassGroupsViewController_presentTransactionDetailsForTransactionWithServiceIdentifier_transactionSourceIdentifier_confirmPaymentOfferPlan___block_invoke;
      v30[3] = &unk_1E8024818;
      v14 = &v33;
      objc_copyWeak(&v33, &location);
      v32 = v34;
      v15 = v12;
      v31 = v15;
      [(PKPaymentService *)paymentService transactionSourceTypeForTransactionSourceIdentifier:sourceIdentifierCopy completion:v30];
      dispatch_group_enter(v15);
      v16 = self->_paymentService;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __143__PKPassGroupsViewController_presentTransactionDetailsForTransactionWithServiceIdentifier_transactionSourceIdentifier_confirmPaymentOfferPlan___block_invoke_2;
      v26[3] = &unk_1E8024840;
      objc_copyWeak(&v29, &location);
      v28 = buf;
      v27 = v15;
      [(PKPaymentService *)v16 transactionWithServiceIdentifier:identifierCopy transactionSourceIdentifier:sourceIdentifierCopy completion:v26];

      objc_destroyWeak(&v29);
    }

    else
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __143__PKPassGroupsViewController_presentTransactionDetailsForTransactionWithServiceIdentifier_transactionSourceIdentifier_confirmPaymentOfferPlan___block_invoke_3;
      v20[3] = &unk_1E8024868;
      v14 = &v25;
      objc_copyWeak(&v25, &location);
      v20[4] = self;
      v21 = 0;
      v23 = buf;
      v24 = v34;
      v22 = v12;
      [(PKPaymentService *)paymentService ambiguousTransactionWithServiceIdentifier:identifierCopy completion:v20];
    }

    objc_destroyWeak(v14);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __143__PKPassGroupsViewController_presentTransactionDetailsForTransactionWithServiceIdentifier_transactionSourceIdentifier_confirmPaymentOfferPlan___block_invoke_5;
    block[3] = &unk_1E8024890;
    objc_copyWeak(&v18, &location);
    block[4] = buf;
    block[5] = v34;
    v19 = planCopy;
    dispatch_group_notify(v12, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v18);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(v34, 8);
    objc_destroyWeak(&location);
  }
}

void __143__PKPassGroupsViewController_presentTransactionDetailsForTransactionWithServiceIdentifier_transactionSourceIdentifier_confirmPaymentOfferPlan___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __143__PKPassGroupsViewController_presentTransactionDetailsForTransactionWithServiceIdentifier_transactionSourceIdentifier_confirmPaymentOfferPlan___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __143__PKPassGroupsViewController_presentTransactionDetailsForTransactionWithServiceIdentifier_transactionSourceIdentifier_confirmPaymentOfferPlan___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 1232);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __143__PKPassGroupsViewController_presentTransactionDetailsForTransactionWithServiceIdentifier_transactionSourceIdentifier_confirmPaymentOfferPlan___block_invoke_4;
  v8[3] = &unk_1E8024818;
  objc_copyWeak(&v11, (a1 + 72));
  v10 = *(a1 + 64);
  v9 = *(a1 + 48);
  [v7 transactionSourceTypeForTransactionSourceIdentifier:v6 completion:v8];

  objc_destroyWeak(&v11);
}

void __143__PKPassGroupsViewController_presentTransactionDetailsForTransactionWithServiceIdentifier_transactionSourceIdentifier_confirmPaymentOfferPlan___block_invoke_4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __143__PKPassGroupsViewController_presentTransactionDetailsForTransactionWithServiceIdentifier_transactionSourceIdentifier_confirmPaymentOfferPlan___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _presentTransactionDetailsForTransaction:*(*(*(a1 + 32) + 8) + 40) transactionSourceType:*(*(*(a1 + 40) + 8) + 24) confirmPaymentOfferPlan:*(a1 + 56)];
}

- (void)presentTransactionDetailsForBankConnectTransaction:(id)transaction applePayPrimaryAccountIdentifier:(id)identifier
{
  if (transaction && identifier)
  {
    v6 = MEMORY[0x1E69B8EA8];
    identifierCopy = identifier;
    v8 = [v6 transactionFromFKPaymentTransaction:transaction];
    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    v10 = [mEMORY[0x1E69B8A58] passWithFPANIdentifier:identifierCopy];

    if (v10)
    {
      paymentPass = [v10 paymentPass];
      uniqueID = [paymentPass uniqueID];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __114__PKPassGroupsViewController_presentTransactionDetailsForBankConnectTransaction_applePayPrimaryAccountIdentifier___block_invoke;
      v14[3] = &unk_1E8012798;
      v14[4] = self;
      v15 = v8;
      v16 = paymentPass;
      v13 = paymentPass;
      [(PKPassGroupsViewController *)self presentPassWithUniqueID:uniqueID context:0 animated:1 completionHandler:v14];
    }
  }
}

void __114__PKPassGroupsViewController_presentTransactionDetailsForBankConnectTransaction_applePayPrimaryAccountIdentifier___block_invoke(id *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = [a1[4] _dashboardPassGroupViewController];
    if (v4)
    {
      v5 = v4;
      [(PKDashboardPassGroupViewController *)v4 presentTransaction:a1[6] forPaymentPass:0 presentingView:?];
      v4 = v5;
    }
  }
}

- (void)_presentTransactionDetailsForTransaction:(id)transaction transactionSourceType:(unint64_t)type confirmPaymentOfferPlan:(BOOL)plan
{
  v36 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  v9 = transactionCopy;
  if (transactionCopy)
  {
    if (type > 1)
    {
      if (type == 2)
      {
        goto LABEL_10;
      }

      if (type == 3)
      {
        [(PKPassGroupsViewController *)self _presentAccountTransactionDetailsForTransaction:transactionCopy];
      }
    }

    else if (type)
    {
      if (type == 1)
      {
        accountIdentifier = [transactionCopy accountIdentifier];
        mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
        account = [mEMORY[0x1E69B9000] account];

        v13 = [account peerPaymentAccountWithIdentifier:accountIdentifier];
        if (!v13)
        {
          v21 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v35 = v9;
            v22 = "Cannot find a peer payment account for transaction %@";
            goto LABEL_17;
          }

LABEL_18:

          goto LABEL_19;
        }

        v14 = v13;
        paymentService = self->_paymentService;
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __117__PKPassGroupsViewController__presentTransactionDetailsForTransaction_transactionSourceType_confirmPaymentOfferPlan___block_invoke_246;
        v26[3] = &unk_1E8022F00;
        v27 = v13;
        selfCopy = self;
        v29 = account;
        v30 = v9;
        v16 = account;
        v17 = v14;
        [(PKPaymentService *)paymentService familyMembersWithCompletion:v26];

LABEL_10:
        accountIdentifier = [v9 accountIdentifier];
        account = [v9 altDSID];
        if (account)
        {
          mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __117__PKPassGroupsViewController__presentTransactionDetailsForTransaction_transactionSourceType_confirmPaymentOfferPlan___block_invoke_251;
          v23[3] = &unk_1E8024908;
          v23[4] = self;
          v24 = v9;
          planCopy = plan;
          [mEMORY[0x1E69B8400] accountWithIdentifier:accountIdentifier completion:v23];

LABEL_19:
          goto LABEL_20;
        }

        v21 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v35 = v9;
          v22 = "There is no altDSID defined for account user on tranasction %@";
LABEL_17:
          _os_log_impl(&dword_1BD026000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
          goto LABEL_18;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v19 = self->_paymentService;
      identifier = [transactionCopy identifier];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __117__PKPassGroupsViewController__presentTransactionDetailsForTransaction_transactionSourceType_confirmPaymentOfferPlan___block_invoke;
      v31[3] = &unk_1E80248B8;
      v31[4] = self;
      v32 = v9;
      planCopy2 = plan;
      [(PKPaymentService *)v19 passUniqueIdentifierForTransactionWithIdentifier:identifier completion:v31];
    }
  }

LABEL_20:
}

void __117__PKPassGroupsViewController__presentTransactionDetailsForTransaction_transactionSourceType_confirmPaymentOfferPlan___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __117__PKPassGroupsViewController__presentTransactionDetailsForTransaction_transactionSourceType_confirmPaymentOfferPlan___block_invoke_2;
  v6[3] = &unk_1E80170D8;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __117__PKPassGroupsViewController__presentTransactionDetailsForTransaction_transactionSourceType_confirmPaymentOfferPlan___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _passFromGroupsControllerWithUniqueIdentifier:*(a1 + 40)];
  v3 = [v2 paymentPass];

  [*(a1 + 32) _presentTransactionDetailsForTransaction:*(a1 + 48) forPaymentPass:v3 confirmPaymentOfferPlan:*(a1 + 56)];
}

void __117__PKPassGroupsViewController__presentTransactionDetailsForTransaction_transactionSourceType_confirmPaymentOfferPlan___block_invoke_246(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__PKPassGroupsViewController__presentTransactionDetailsForTransaction_transactionSourceType_confirmPaymentOfferPlan___block_invoke_2_247;
  block[3] = &unk_1E8011E38;
  v7 = *(a1 + 32);
  v8 = v3;
  v4 = *(a1 + 48);
  v9 = *(a1 + 40);
  v10 = v4;
  v11 = *(a1 + 56);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __117__PKPassGroupsViewController__presentTransactionDetailsForTransaction_transactionSourceType_confirmPaymentOfferPlan___block_invoke_2_247(id *a1)
{
  location[3] = *MEMORY[0x1E69E9840];
  v2 = [a1[4] altDSID];
  if (!v2)
  {
    v12 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v13 = a1[4];
    LODWORD(location[0]) = 138412290;
    *(location + 4) = v13;
    v14 = "There is no altDSID defined for associated account %@";
    goto LABEL_22;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = a1[5];
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v4)
  {
LABEL_14:

LABEL_20:
    v12 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    LODWORD(location[0]) = 138412290;
    *(location + 4) = v2;
    v14 = "Cannot find a family member with altDSID %@";
LABEL_22:
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, v14, location, 0xCu);
    goto LABEL_23;
  }

  v5 = *v27;
LABEL_4:
  v6 = 0;
  while (1)
  {
    if (*v27 != v5)
    {
      objc_enumerationMutation(v3);
    }

    v7 = *(*(&v26 + 1) + 8 * v6);
    v8 = [v7 altDSID];
    v9 = v2;
    v10 = v9;
    if (v8 == v9)
    {
      break;
    }

    if (v8)
    {
      v11 = [v8 isEqualToString:v9];

      if (v11)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    if (v4 == ++v6)
    {
      v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

LABEL_18:
  v15 = v7;

  if (!v15)
  {
    goto LABEL_20;
  }

  objc_initWeak(location, a1[6]);
  v16 = a1[6];
  v17 = [a1[7] associatedPassUniqueID];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __117__PKPassGroupsViewController__presentTransactionDetailsForTransaction_transactionSourceType_confirmPaymentOfferPlan___block_invoke_248;
  v20[3] = &unk_1E80248E0;
  objc_copyWeak(&v25, location);
  v18 = a1[5];
  v19 = a1[6];
  v21 = v18;
  v22 = v19;
  v12 = v15;
  v23 = v12;
  v24 = a1[8];
  [v16 presentPassWithUniqueID:v17 context:0 animated:1 completionHandler:v20];

  objc_destroyWeak(&v25);
  objc_destroyWeak(location);
LABEL_23:
}

void __117__PKPassGroupsViewController__presentTransactionDetailsForTransaction_transactionSourceType_confirmPaymentOfferPlan___block_invoke_248(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    if (WeakRetained)
    {
      v13 = WeakRetained;
      v5 = [WeakRetained _dashboardPassGroupViewController];
      v6 = [objc_alloc(MEMORY[0x1E69B88A0]) initWithFamilyMembers:*(a1 + 32)];
      v7 = [[PKPeerPaymentAssociatedAccountsController alloc] initWithFamilyCollection:v6 avatarManager:*(*(a1 + 40) + 1384) passLibraryDataProvider:*(*(a1 + 40) + 1312) context:0];
      v8 = *(a1 + 40);
      v9 = *(v8 + 1336);
      *(v8 + 1336) = v7;

      v10 = [[PKPeerPaymentAssociatedAccountPresentationContext alloc] initWithPKFamilyMember:*(a1 + 48) transaction:*(a1 + 56)];
      v11 = *(*(a1 + 40) + 1336);
      v12 = [v5 navigationController];
      [v11 presentAssociatedAccountsFlowWithPresentationContext:v10 fromNavigationController:v12];

      WeakRetained = v13;
    }
  }
}

void __117__PKPassGroupsViewController__presentTransactionDetailsForTransaction_transactionSourceType_confirmPaymentOfferPlan___block_invoke_251(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __117__PKPassGroupsViewController__presentTransactionDetailsForTransaction_transactionSourceType_confirmPaymentOfferPlan___block_invoke_2_252;
  v6[3] = &unk_1E80170D8;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __117__PKPassGroupsViewController__presentTransactionDetailsForTransaction_transactionSourceType_confirmPaymentOfferPlan___block_invoke_2_252(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) associatedPassUniqueID];
  v4 = [v2 _passFromGroupsControllerWithUniqueIdentifier:v3];
  v6 = [v4 paymentPass];

  v5 = v6;
  if (v6)
  {
    [*(a1 + 32) _presentTransactionDetailsForTransaction:*(a1 + 48) forPaymentPass:v6 confirmPaymentOfferPlan:*(a1 + 56)];
    v5 = v6;
  }
}

- (void)_presentAccountTransactionDetailsForTransaction:(id)transaction
{
  transactionCopy = transaction;
  accountIdentifier = [transactionCopy accountIdentifier];
  objc_initWeak(&location, self);
  mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__PKPassGroupsViewController__presentAccountTransactionDetailsForTransaction___block_invoke;
  v8[3] = &unk_1E8024958;
  v8[4] = self;
  objc_copyWeak(&v10, &location);
  v7 = transactionCopy;
  v9 = v7;
  [mEMORY[0x1E69B8400] accountWithIdentifier:accountIdentifier completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __78__PKPassGroupsViewController__presentAccountTransactionDetailsForTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 feature] == 5)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __78__PKPassGroupsViewController__presentAccountTransactionDetailsForTransaction___block_invoke_2;
    v4[3] = &unk_1E8022A60;
    v4[4] = *(a1 + 32);
    objc_copyWeak(&v7, (a1 + 48));
    v5 = *(a1 + 40);
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v4);

    objc_destroyWeak(&v7);
  }
}

void __78__PKPassGroupsViewController__presentAccountTransactionDetailsForTransaction___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __78__PKPassGroupsViewController__presentAccountTransactionDetailsForTransaction___block_invoke_3;
  v3[3] = &unk_1E8024930;
  objc_copyWeak(&v6, (a1 + 56));
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 presentCreditPassAnimated:1 completion:v3];

  objc_destroyWeak(&v6);
}

void __78__PKPassGroupsViewController__presentAccountTransactionDetailsForTransaction___block_invoke_3(void **a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    if (WeakRetained)
    {
      v7 = WeakRetained;
      v5 = [WeakRetained _dashboardPassGroupViewController];
      v6 = v5;
      if (v5)
      {
        [(PKDashboardPassGroupViewController *)v5 presentTransaction:a1[5] forAccount:?];
      }

      WeakRetained = v7;
    }
  }
}

- (void)_presentTransactionDetailsForTransaction:(id)transaction forPaymentPass:(id)pass confirmPaymentOfferPlan:(BOOL)plan
{
  transactionCopy = transaction;
  passCopy = pass;
  v10 = passCopy;
  if (transactionCopy && passCopy)
  {
    v11 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPaymentPass:passCopy];
    uniqueID = [v10 uniqueID];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __110__PKPassGroupsViewController__presentTransactionDetailsForTransaction_forPaymentPass_confirmPaymentOfferPlan___block_invoke;
    v14[3] = &unk_1E8024980;
    v15 = v10;
    v16 = transactionCopy;
    selfCopy = self;
    planCopy = plan;
    v18 = v11;
    v13 = v11;
    [(PKPassGroupsViewController *)self presentPassWithUniqueID:uniqueID context:0 animated:1 completionHandler:v14];
  }
}

void __110__PKPassGroupsViewController__presentTransactionDetailsForTransaction_forPaymentPass_confirmPaymentOfferPlan___block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) isTransitPass];
  if ((a2 & 1) == 0 && (v4 & 1) == 0 && [*(a1 + 40) hasBackingData])
  {
    objc_initWeak(&location, *(a1 + 48));
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __110__PKPassGroupsViewController__presentTransactionDetailsForTransaction_forPaymentPass_confirmPaymentOfferPlan___block_invoke_2;
    aBlock[3] = &unk_1E8013AD8;
    objc_copyWeak(&v15, &location);
    v16 = *(a1 + 64);
    v13 = *(a1 + 40);
    v14 = *(a1 + 32);
    v5 = _Block_copy(aBlock);
    v6 = [*(a1 + 32) associatedAccountServiceAccountIdentifier];

    if (v6)
    {
      v7 = [MEMORY[0x1E69B8400] sharedInstance];
      v8 = [*(a1 + 32) associatedAccountServiceAccountIdentifier];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __110__PKPassGroupsViewController__presentTransactionDetailsForTransaction_forPaymentPass_confirmPaymentOfferPlan___block_invoke_3;
      v9[3] = &unk_1E8017178;
      v10 = *(a1 + 56);
      v11 = v5;
      [v7 accountWithIdentifier:v8 completion:v9];
    }

    else
    {
      v5[2](v5);
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __110__PKPassGroupsViewController__presentTransactionDetailsForTransaction_forPaymentPass_confirmPaymentOfferPlan___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 56);
    v6 = WeakRetained;
    v4 = [WeakRetained _dashboardPassGroupViewController];
    v5 = v4;
    if (v4)
    {
      [(PKDashboardPassGroupViewController *)v4 presentTransaction:*(a1 + 40) forPaymentPass:v3 presentingView:?];
    }

    WeakRetained = v6;
  }
}

void __110__PKPassGroupsViewController__presentTransactionDetailsForTransaction_forPaymentPass_confirmPaymentOfferPlan___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = MEMORY[0x1E69B8770];
    v8 = [objc_alloc(MEMORY[0x1E69B9300]) initWithTransactionSource:*(a1 + 32)];
    LODWORD(v7) = [v7 shouldDisplayTransactionsForTransactionSourceCollection:v8 withAccount:v5];

    if (v7)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __110__PKPassGroupsViewController__presentTransactionDetailsForTransaction_forPaymentPass_confirmPaymentOfferPlan___block_invoke_4;
      block[3] = &unk_1E8010B50;
      v10 = *(a1 + 40);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)presentPeerPaymentTermsAcceptance
{
  peerPaymentPassUniqueID = [(PKPassLibraryDataProvider *)self->_passLibraryDataProvider peerPaymentPassUniqueID];
  if (peerPaymentPassUniqueID && !self->_inFailForward)
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __63__PKPassGroupsViewController_presentPeerPaymentTermsAcceptance__block_invoke;
    v4[3] = &unk_1E80113B0;
    objc_copyWeak(&v6, &location);
    v5 = peerPaymentPassUniqueID;
    [(PKPassGroupsViewController *)self presentPassWithUniqueID:v5 animated:1 completionHandler:v4];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __63__PKPassGroupsViewController_presentPeerPaymentTermsAcceptance__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained _passFromGroupsControllerWithUniqueIdentifier:*(a1 + 32)];
    v5 = [v4 paymentPass];

    if (v5)
    {
      v6 = [WeakRetained[165] account];
      v7 = [v6 termsURL];
      v8 = [v6 termsIdentifier];
      v9 = [v6 associatedPassUniqueID];
      if (v7)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v11 = [PKPeerPaymentTermsController alloc];
        v12 = [MEMORY[0x1E69B9020] sharedService];
        v13 = [(PKPeerPaymentTermsController *)v11 initWithTermsURL:v7 termsIdentifier:v8 passUniqueID:v9 webService:v12];

        v14 = [WeakRetained pkui_frontMostViewController];
        v15 = v14;
        if (v14)
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __63__PKPassGroupsViewController_presentPeerPaymentTermsAcceptance__block_invoke_2;
          v16[3] = &unk_1E80249A8;
          v17 = v14;
          [(PKPeerPaymentTermsController *)v13 presentTermsOverController:v17 showInterstitialViewController:0 withCompletionHandler:v16];
        }
      }
    }
  }
}

uint64_t __63__PKPassGroupsViewController_presentPeerPaymentTermsAcceptance__block_invoke_2(uint64_t result, uint64_t a2)
{
  if ((a2 - 1) <= 1)
  {
    return [*(result + 32) dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

- (void)presentPeerPaymentVerifyIdentity
{
  if (!self->_inFailForward)
  {
    if (PKDeviceSupportsPeerPaymentIdentityVerification())
    {
      objc_initWeak(&location, self);
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __62__PKPassGroupsViewController_presentPeerPaymentVerifyIdentity__block_invoke;
      v3[3] = &unk_1E80249D0;
      objc_copyWeak(&v4, &location);
      [(PKPassGroupsViewController *)self presentPeerPaymentPassAnimated:1 completion:v3];
      objc_destroyWeak(&v4);
      objc_destroyWeak(&location);
    }
  }
}

void __62__PKPassGroupsViewController_presentPeerPaymentVerifyIdentity__block_invoke(uint64_t a1, char a2, void *a3)
{
  if (a3 && (a2 & 1) == 0)
  {
    v4 = a3;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained _passFromGroupsControllerWithUniqueIdentifier:v4];

    v6 = [v5 paymentPass];

    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E69B8F08]);
      [v7 setVerificationContext:1];
      v8 = [WeakRetained _peerPaymentAccountResolutionController];
      [v8 presentFlowForAccountResolution:2 configuration:v7 completion:0];
    }
  }
}

- (void)presentPeerPaymentTopUp
{
  peerPaymentPassUniqueID = [(PKPassLibraryDataProvider *)self->_passLibraryDataProvider peerPaymentPassUniqueID];
  if (peerPaymentPassUniqueID && !self->_inFailForward)
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __53__PKPassGroupsViewController_presentPeerPaymentTopUp__block_invoke;
    v4[3] = &unk_1E8013220;
    objc_copyWeak(&v7, &location);
    v5 = peerPaymentPassUniqueID;
    selfCopy = self;
    [(PKPassGroupsViewController *)self presentPassWithUniqueID:v5 animated:1 completionHandler:v4];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __53__PKPassGroupsViewController_presentPeerPaymentTopUp__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v4 = [WeakRetained _passFromGroupsControllerWithUniqueIdentifier:*(a1 + 32)];
    v5 = [v4 paymentPass];

    if (v5)
    {
      v6 = [*(a1 + 40) _peerPaymentAccountResolutionController];
      [v6 presentFlowForAccountResolution:5 configuration:0 completion:0];
    }
  }
}

- (void)presentPeerPaymentSetupWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  peerPaymentPassUniqueID = [(PKPassLibraryDataProvider *)self->_passLibraryDataProvider peerPaymentPassUniqueID];
  if (peerPaymentPassUniqueID)
  {
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71__PKPassGroupsViewController_presentPeerPaymentSetupWithConfiguration___block_invoke;
    v6[3] = &unk_1E8013220;
    objc_copyWeak(&v9, &location);
    v7 = peerPaymentPassUniqueID;
    v8 = configurationCopy;
    [(PKPassGroupsViewController *)self presentPassWithUniqueID:v7 animated:1 completionHandler:v6];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __71__PKPassGroupsViewController_presentPeerPaymentSetupWithConfiguration___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v4 = [WeakRetained _passFromGroupsControllerWithUniqueIdentifier:*(a1 + 32)];
    v5 = [v4 paymentPass];

    if (v5)
    {
      v6 = [WeakRetained _peerPaymentAccountResolutionController];
      v7 = [v6 peerPaymentPassIsProvisionedOnDevice];

      if ((v7 & 1) == 0)
      {
        v8 = [WeakRetained _peerPaymentAccountResolutionController];
        [v8 presentFlowForAccountResolution:1 configuration:*(a1 + 40) completion:0];
      }
    }
  }
}

- (void)presentPeerPaymentRecurringPaymentWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  peerPaymentPassUniqueID = [(PKPassLibraryDataProvider *)self->_passLibraryDataProvider peerPaymentPassUniqueID];
  if (peerPaymentPassUniqueID && !self->_inFailForward)
  {
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __79__PKPassGroupsViewController_presentPeerPaymentRecurringPaymentWithIdentifier___block_invoke;
    v6[3] = &unk_1E8013220;
    objc_copyWeak(&v9, &location);
    v7 = peerPaymentPassUniqueID;
    v8 = identifierCopy;
    [(PKPassGroupsViewController *)self presentPassWithUniqueID:v7 animated:1 completionHandler:v6];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __79__PKPassGroupsViewController_presentPeerPaymentRecurringPaymentWithIdentifier___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v4 = [WeakRetained _passFromGroupsControllerWithUniqueIdentifier:*(a1 + 32)];
    v5 = [v4 paymentPass];

    if (v5)
    {
      v6 = [WeakRetained _dashboardPassGroupViewController];
      v7 = v6;
      if (v6)
      {
        [(PKDashboardPassGroupViewController *)v6 presentPeerPaymentRecurringPaymentsWithIdentifier:0 completion:?];
      }
    }
  }
}

- (void)presentPeerPaymentTransferToBank
{
  peerPaymentPassUniqueID = [(PKPassLibraryDataProvider *)self->_passLibraryDataProvider peerPaymentPassUniqueID];
  if (peerPaymentPassUniqueID && !self->_inFailForward)
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __62__PKPassGroupsViewController_presentPeerPaymentTransferToBank__block_invoke;
    v4[3] = &unk_1E80113B0;
    objc_copyWeak(&v6, &location);
    v5 = peerPaymentPassUniqueID;
    [(PKPassGroupsViewController *)self presentPassWithUniqueID:v5 animated:1 completionHandler:v4];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __62__PKPassGroupsViewController_presentPeerPaymentTransferToBank__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained _passFromGroupsControllerWithUniqueIdentifier:*(a1 + 32)];
    v5 = [v4 paymentPass];

    if (v5)
    {
      v6 = [WeakRetained _dashboardPassGroupViewController];
      if (v6)
      {
        v7 = objc_alloc_init(MEMORY[0x1E69B8A60]);
        [(PKDashboardPassGroupViewController *)v6 presentPeerPaymentActionViewControllerForAction:v7 passLibraryDataProvider:?];
      }
    }
  }
}

- (void)presentPeerPaymentSendOrRequest
{
  peerPaymentPassUniqueID = [(PKPassLibraryDataProvider *)self->_passLibraryDataProvider peerPaymentPassUniqueID];
  if (peerPaymentPassUniqueID && !self->_inFailForward)
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __61__PKPassGroupsViewController_presentPeerPaymentSendOrRequest__block_invoke;
    v4[3] = &unk_1E80113B0;
    objc_copyWeak(&v6, &location);
    v5 = peerPaymentPassUniqueID;
    [(PKPassGroupsViewController *)self presentPassWithUniqueID:v5 animated:1 completionHandler:v4];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __61__PKPassGroupsViewController_presentPeerPaymentSendOrRequest__block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ((a2 & 1) == 0 && WeakRetained)
  {
    v14 = WeakRetained;
    v5 = [WeakRetained _passFromGroupsControllerWithUniqueIdentifier:*(a1 + 32)];
    v6 = [v5 paymentPass];

    if (v6)
    {
      v7 = [v14 _dashboardPassGroupViewController];
      if (v7)
      {
        v8 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPaymentPass:v6];
        v9 = [objc_alloc(MEMORY[0x1E69B9300]) initWithTransactionSource:v8];
        v10 = [[PKRecipientPickerViewController alloc] initWithTransactionSourceCollection:v9 familyCollection:0 peerPaymentSendFlowType:1];
        v11 = objc_alloc_init(PKNearbyPeerPaymentViewProvider);
        [(PKRecipientPickerViewController *)v10 setNearbyViewProvider:v11];

        v12 = [[PKNavigationController alloc] initWithRootViewController:v10];
        [(PKNavigationController *)v12 setModalPresentationStyle:1];
        v13 = [v14 pkui_frontMostViewController];
        [v13 presentViewController:v12 animated:1 completion:0];
      }
    }

    WeakRetained = v14;
  }
}

- (void)presentPeerPaymentDeviceTapWithInitialAmount:(id)amount initialMemo:(id)memo
{
  amountCopy = amount;
  memoCopy = memo;
  peerPaymentPassUniqueID = [(PKPassLibraryDataProvider *)self->_passLibraryDataProvider peerPaymentPassUniqueID];
  if (peerPaymentPassUniqueID && !self->_inFailForward)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __87__PKPassGroupsViewController_presentPeerPaymentDeviceTapWithInitialAmount_initialMemo___block_invoke;
    v9[3] = &unk_1E8020030;
    objc_copyWeak(&v13, &location);
    v10 = peerPaymentPassUniqueID;
    v11 = amountCopy;
    v12 = memoCopy;
    [(PKPassGroupsViewController *)self presentPassWithUniqueID:v10 animated:1 completionHandler:v9];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __87__PKPassGroupsViewController_presentPeerPaymentDeviceTapWithInitialAmount_initialMemo___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v4 = [WeakRetained _passFromGroupsControllerWithUniqueIdentifier:*(a1 + 32)];
    v5 = [v4 paymentPass];

    if (v5)
    {
      v6 = [v5 devicePrimaryPaymentApplication];
      v7 = v6;
      if (v6 && [v6 state] == 1)
      {
        v8 = [WeakRetained _peerPaymentAccountResolutionController];
        v9 = [v8 currentPeerPaymentAccountResolution];

        if (v9)
        {
          v10 = [WeakRetained _peerPaymentAccountResolutionController];
          [v10 presentResolutionForCurrentAccountStateWithCompletion:0];
        }

        else
        {
          v11 = [WeakRetained _dashboardPassGroupViewController];
          v10 = v11;
          if (v11)
          {
            [(PKDashboardPassGroupViewController *)v11 presentPeerPaymentDeviceTapWithInitialAmount:*(a1 + 48) initialMemo:?];
          }
        }
      }
    }
  }
}

- (void)presentAccountServiceSchedulePayment:(id)payment billPayAmountType:(int64_t)type billPayAmount:(id)amount completion:(id)completion
{
  paymentCopy = payment;
  amountCopy = amount;
  completionCopy = completion;
  if (paymentCopy)
  {
    objc_initWeak(&location, self);
    v13 = objc_alloc_init(PKPassPresentationContext);
    [(PKPassPresentationContext *)v13 setLimitServerLoad:1];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __110__PKPassGroupsViewController_presentAccountServiceSchedulePayment_billPayAmountType_billPayAmount_completion___block_invoke;
    v14[3] = &unk_1E8024A20;
    objc_copyWeak(v19, &location);
    v15 = paymentCopy;
    selfCopy = self;
    v19[1] = type;
    v17 = amountCopy;
    v18 = completionCopy;
    [(PKPassGroupsViewController *)self presentPassWithUniqueID:v15 context:v13 animated:1 completionHandler:v14];

    objc_destroyWeak(v19);
    objc_destroyWeak(&location);
  }
}

void __110__PKPassGroupsViewController_presentAccountServiceSchedulePayment_billPayAmountType_billPayAmount_completion___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v4 = [WeakRetained _passFromGroupsControllerWithUniqueIdentifier:*(a1 + 32)];
    v5 = [v4 paymentPass];

    v6 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPaymentPass:v5];
    v7 = [objc_alloc(MEMORY[0x1E69B9300]) initWithTransactionSource:v6];
    v8 = [v5 associatedAccountServiceAccountIdentifier];
    v9 = v8;
    if (v5)
    {
      if (v8)
      {
        v31[0] = 0;
        v31[1] = v31;
        v31[2] = 0x3032000000;
        v31[3] = __Block_byref_object_copy__65;
        v31[4] = __Block_byref_object_dispose__65;
        v32 = 0;
        v29[0] = 0;
        v29[1] = v29;
        v29[2] = 0x3032000000;
        v29[3] = __Block_byref_object_copy__65;
        v29[4] = __Block_byref_object_dispose__65;
        v30 = 0;
        v10 = objc_alloc_init(MEMORY[0x1E69B8658]);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __110__PKPassGroupsViewController_presentAccountServiceSchedulePayment_billPayAmountType_billPayAmount_completion___block_invoke_2;
        v26[3] = &unk_1E8016750;
        v11 = v9;
        v27 = v11;
        v28 = v31;
        [v10 addOperation:v26];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __110__PKPassGroupsViewController_presentAccountServiceSchedulePayment_billPayAmountType_billPayAmount_completion___block_invoke_5;
        v23[3] = &unk_1E8016750;
        v24 = v11;
        v25 = v29;
        [v10 addOperation:v23];
        v12 = [MEMORY[0x1E695DFB0] null];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __110__PKPassGroupsViewController_presentAccountServiceSchedulePayment_billPayAmountType_billPayAmount_completion___block_invoke_8;
        v16[3] = &unk_1E80249F8;
        v16[4] = *(a1 + 40);
        v20 = v31;
        v21 = v29;
        v13 = v7;
        v14 = *(a1 + 72);
        v17 = v13;
        v22 = v14;
        v18 = *(a1 + 48);
        v19 = *(a1 + 56);
        v15 = [v10 evaluateWithInput:v12 completion:v16];

        _Block_object_dispose(v29, 8);
        _Block_object_dispose(v31, 8);
      }
    }
  }
}

void __110__PKPassGroupsViewController_presentAccountServiceSchedulePayment_billPayAmountType_billPayAmount_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69B8400] sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __110__PKPassGroupsViewController_presentAccountServiceSchedulePayment_billPayAmountType_billPayAmount_completion___block_invoke_3;
  v13[3] = &unk_1E8012D30;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v15 = v7;
  v16 = v9;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  [v8 accountWithIdentifier:v10 completion:v13];
}

void __110__PKPassGroupsViewController_presentAccountServiceSchedulePayment_billPayAmountType_billPayAmount_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__PKPassGroupsViewController_presentAccountServiceSchedulePayment_billPayAmountType_billPayAmount_completion___block_invoke_4;
  block[3] = &unk_1E801B6A8;
  v8 = v3;
  v6 = *(a1 + 40);
  v4 = v6;
  v10 = v6;
  v9 = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __110__PKPassGroupsViewController_presentAccountServiceSchedulePayment_billPayAmountType_billPayAmount_completion___block_invoke_4(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __110__PKPassGroupsViewController_presentAccountServiceSchedulePayment_billPayAmountType_billPayAmount_completion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69B8400] sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __110__PKPassGroupsViewController_presentAccountServiceSchedulePayment_billPayAmountType_billPayAmount_completion___block_invoke_6;
  v13[3] = &unk_1E8012DA8;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v15 = v7;
  v16 = v9;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  [v8 accountUsersForAccountWithIdentifier:v10 completion:v13];
}

void __110__PKPassGroupsViewController_presentAccountServiceSchedulePayment_billPayAmountType_billPayAmount_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__PKPassGroupsViewController_presentAccountServiceSchedulePayment_billPayAmountType_billPayAmount_completion___block_invoke_7;
  block[3] = &unk_1E80114A8;
  v8 = v3;
  v6 = *(a1 + 40);
  v4 = v6;
  v10 = v6;
  v9 = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __110__PKPassGroupsViewController_presentAccountServiceSchedulePayment_billPayAmountType_billPayAmount_completion___block_invoke_7(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [objc_alloc(MEMORY[0x1E69B8450]) initWithAccountUsers:*(a1 + 32)];
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

void __110__PKPassGroupsViewController_presentAccountServiceSchedulePayment_billPayAmountType_billPayAmount_completion___block_invoke_8(void *a1)
{
  if (!*(a1[4] + 1368))
  {
    v2 = [[PKAccountServiceAccountResolutionController alloc] initWithAccount:*(*(a1[8] + 8) + 40) accountUserCollection:*(*(a1[9] + 8) + 40) transactionSourceCollection:a1[5]];
    v3 = a1[4];
    v4 = *(v3 + 1368);
    *(v3 + 1368) = v2;

    [*(a1[4] + 1368) setDelegate:?];
  }

  v5 = objc_alloc_init(MEMORY[0x1E69B8408]);
  [v5 setBillPayAmountType:a1[10]];
  [v5 setBillPayAmount:a1[6]];
  [*(a1[4] + 1368) presentFlowForAccountResolution:1 configuration:v5 completion:a1[7]];
}

- (void)presentActionViewControllerWithUniqueID:(id)d actionType:(unint64_t)type
{
  dCopy = d;
  v7 = dCopy;
  if (dCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __81__PKPassGroupsViewController_presentActionViewControllerWithUniqueID_actionType___block_invoke;
    v8[3] = &unk_1E8024A48;
    selfCopy = self;
    typeCopy = type;
    v9 = dCopy;
    [(PKPassGroupsViewController *)self presentPassWithUniqueID:v9 animated:1 completionHandler:v8];
  }
}

void __81__PKPassGroupsViewController_presentActionViewControllerWithUniqueID_actionType___block_invoke(uint64_t a1, char a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    return;
  }

  v3 = [MEMORY[0x1E69B8A58] sharedInstance];
  v4 = [v3 passWithUniqueID:*(a1 + 32)];
  v5 = [v4 paymentPass];
  v6 = v5;
  if (!v5)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      *buf = 138412290;
      v33 = v18;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Cannot present payment pass action for non-payment pass %@", buf, 0xCu);
    }

    goto LABEL_26;
  }

  [v5 availableActions];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v31 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (!v8)
  {
    goto LABEL_25;
  }

  v9 = v8;
  v10 = *v29;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v29 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v28 + 1) + 8 * i);
      if ([v12 type] == *(a1 + 48))
      {
        v26 = 0;
        v27 = 0;
        v13 = [v6 canPerformAction:v12 unableReason:&v27 displayableError:&v26];
        v14 = v26;
        if ((v13 & 1) != 0 || v27 == 2)
        {
          if ([v12 hasExternalActionContent])
          {
            v19 = [v12 externalActionContent];
            v20 = [v12 title];
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __81__PKPassGroupsViewController_presentActionViewControllerWithUniqueID_actionType___block_invoke_2;
            v25[3] = &unk_1E8014560;
            v25[4] = *(a1 + 40);
            PKPaymentPassActionPerformExternalActionContent(v6, v19, v20, v25);

LABEL_24:
            goto LABEL_25;
          }

          v15 = [[PKPerformActionViewController alloc] initWithPass:v6 action:v12];
          [(PKPerformActionViewController *)v15 setDelegate:*(a1 + 40)];
          v16 = [[PKNavigationController alloc] initWithRootViewController:v15];
          [(PKNavigationController *)v16 setSupportedInterfaceOrientations:2];
          v21 = [*(a1 + 40) pkui_frontMostViewController];
          [v21 presentViewController:v16 animated:1 completion:0];

          v22 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = PKPaymentPassActionTypeToString();
            *buf = 138412290;
            v33 = v23;
            _os_log_impl(&dword_1BD026000, v22, OS_LOG_TYPE_DEFAULT, "Presented PKPerformActionViewController for actionType %@", buf, 0xCu);
          }
        }

        else
        {
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __81__PKPassGroupsViewController_presentActionViewControllerWithUniqueID_actionType___block_invoke_264;
          v24[3] = &unk_1E8010970;
          v24[4] = *(a1 + 40);
          v15 = [PKPerformActionViewController alertControllerForUnableReason:v27 action:v12 displayableError:v14 addCardActionHandler:v24 unavailableActionHandler:0 cancelActionHandler:0];
          [*(a1 + 40) presentViewController:v15 animated:1 completion:0];
          v16 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(&v16->super.super.super.super, OS_LOG_TYPE_DEFAULT))
          {
            v17 = PKPaymentPassActionTypeToString();
            *buf = 138412546;
            v33 = v17;
            v34 = 2112;
            v35 = v14;
            _os_log_impl(&dword_1BD026000, &v16->super.super.super.super, OS_LOG_TYPE_DEFAULT, "PKPerformActionViewController unavailable for actionType %@, error: %@", buf, 0x16u);
          }
        }

        goto LABEL_24;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_25:

LABEL_26:
}

void __81__PKPassGroupsViewController_presentActionViewControllerWithUniqueID_actionType___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Presented PKPerformActionViewController for externalActionContent", v6, 2u);
  }

  if (v4)
  {
    [*(a1 + 32) presentViewController:v4 animated:1 completion:0];
  }
}

- (void)presentAuxiliaryPassInformationItemDetailForItemIdentifier:(id)identifier informationIdentifier:(id)informationIdentifier forPassUniqueID:(id)d completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  informationIdentifierCopy = informationIdentifier;
  dCopy = d;
  completionCopy = completion;
  if (identifierCopy && dCopy)
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478339;
      v20 = identifierCopy;
      v21 = 2113;
      v22 = informationIdentifierCopy;
      v23 = 2114;
      v24 = dCopy;
      _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "PKPassGroupsViewController: Presenting auxiliaryPassInformationItem with identifier %{private}@ in info %{private}@ for pass %{public}@", buf, 0x20u);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __138__PKPassGroupsViewController_presentAuxiliaryPassInformationItemDetailForItemIdentifier_informationIdentifier_forPassUniqueID_completion___block_invoke;
    v15[3] = &unk_1E801D980;
    v18 = completionCopy;
    v15[4] = self;
    v16 = identifierCopy;
    v17 = informationIdentifierCopy;
    [(PKPassGroupsViewController *)self presentPassWithUniqueID:dCopy animated:1 completionHandler:v15];
  }
}

void __138__PKPassGroupsViewController_presentAuxiliaryPassInformationItemDetailForItemIdentifier_informationIdentifier_forPassUniqueID_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    v5 = [*(a1 + 32) _dashboardPassGroupViewController];
    if (v5)
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __138__PKPassGroupsViewController_presentAuxiliaryPassInformationItemDetailForItemIdentifier_informationIdentifier_forPassUniqueID_completion___block_invoke_2;
      v11[3] = &unk_1E8010AD8;
      v12 = *(a1 + 56);
      [(PKDashboardPassGroupViewController *)v5 presentAuxiliaryPassInformationItemWithIdentifier:v6 informationIdentifier:v7 completion:v11];
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Unable to present aux pass information item detail", v10, 2u);
      }

      v9 = *(a1 + 56);
      if (v9)
      {
        (*(v9 + 16))(v9, 1);
      }
    }
  }
}

uint64_t __138__PKPassGroupsViewController_presentAuxiliaryPassInformationItemDetailForItemIdentifier_informationIdentifier_forPassUniqueID_completion___block_invoke_2(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 ^ 1u);
  }

  return result;
}

- (void)presentPassForFeatureIdentifier:(unint64_t)identifier animated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__PKPassGroupsViewController_presentPassForFeatureIdentifier_animated_completion___block_invoke;
  v11[3] = &unk_1E8024A70;
  animatedCopy = animated;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [mEMORY[0x1E69B8400] defaultAccountForFeature:identifier completion:v11];
}

void __82__PKPassGroupsViewController_presentPassForFeatureIdentifier_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__PKPassGroupsViewController_presentPassForFeatureIdentifier_animated_completion___block_invoke_2;
  v7[3] = &unk_1E8024548;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v11 = *(a1 + 48);
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __82__PKPassGroupsViewController_presentPassForFeatureIdentifier_animated_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 associatedPassUniqueID];
    if (v3)
    {
      v4 = *(a1 + 56);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __82__PKPassGroupsViewController_presentPassForFeatureIdentifier_animated_completion___block_invoke_3;
      v9[3] = &unk_1E80109C0;
      v5 = *(a1 + 40);
      v11 = *(a1 + 48);
      v10 = v3;
      [v5 presentPassWithUniqueID:v10 animated:v4 completionHandler:v9];
    }

    else
    {
      v8 = *(a1 + 48);
      if (v8)
      {
        (*(v8 + 16))(v8, 1, 0);
      }
    }
  }

  else
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }
  }
}

uint64_t __82__PKPassGroupsViewController_presentPassForFeatureIdentifier_animated_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2, *(a1 + 32));
  }

  return result;
}

- (void)presentAccountFeature:(unint64_t)feature animated:(BOOL)animated destination:(unint64_t)destination fundingSourceIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v14 = objc_alloc_init(PKPassPresentationContext);
  [(PKPassPresentationContext *)v14 setPresentationSource:5];
  v15 = objc_alloc_init(PKAccountViewInterfaceConfiguration);
  [(PKAccountViewInterfaceConfiguration *)v15 setDestination:destination];
  [(PKAccountViewInterfaceConfiguration *)v15 setViewStyle:0];
  objc_initWeak(location, self);
  v16 = objc_alloc_init(MEMORY[0x1E69B8658]);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __108__PKPassGroupsViewController_presentAccountFeature_animated_destination_fundingSourceIdentifier_completion___block_invoke;
  v35[3] = &unk_1E8024AE8;
  v35[4] = self;
  animatedCopy = animated;
  objc_copyWeak(&v37, location);
  v17 = completionCopy;
  v36 = v17;
  [v16 addOperation:v35];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __108__PKPassGroupsViewController_presentAccountFeature_animated_destination_fundingSourceIdentifier_completion___block_invoke_4;
  v32[3] = &unk_1E8024B10;
  featureCopy = feature;
  v18 = v15;
  v33 = v18;
  [v16 addOperation:v32];
  if (destination == 12)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __108__PKPassGroupsViewController_presentAccountFeature_animated_destination_fundingSourceIdentifier_completion___block_invoke_6;
    v29[3] = &unk_1E80145B0;
    v30 = identifierCopy;
    v31 = v18;
    [v16 addOperation:v29];
  }

  null = [MEMORY[0x1E695DFB0] null];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __108__PKPassGroupsViewController_presentAccountFeature_animated_destination_fundingSourceIdentifier_completion___block_invoke_8;
  v24[3] = &unk_1E8024B60;
  v20 = v17;
  v27 = v20;
  objc_copyWeak(&v28, location);
  v21 = v18;
  v25 = v21;
  v22 = v14;
  v26 = v22;
  v23 = [v16 evaluateWithInput:null completion:v24];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v37);

  objc_destroyWeak(location);
}

void __108__PKPassGroupsViewController_presentAccountFeature_animated_destination_fundingSourceIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(a1 + 56);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __108__PKPassGroupsViewController_presentAccountFeature_animated_destination_fundingSourceIdentifier_completion___block_invoke_2;
  v14[3] = &unk_1E8024AC0;
  objc_copyWeak(&v18, (a1 + 48));
  v12 = v9;
  v16 = v12;
  v13 = v8;
  v15 = v13;
  v17 = *(a1 + 40);
  [v10 presentCreditPassAnimated:v11 completion:v14];

  objc_destroyWeak(&v18);
}

void __108__PKPassGroupsViewController_presentAccountFeature_animated_destination_fundingSourceIdentifier_completion___block_invoke_2(id *a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __108__PKPassGroupsViewController_presentAccountFeature_animated_destination_fundingSourceIdentifier_completion___block_invoke_3;
  block[3] = &unk_1E8024A98;
  objc_copyWeak(&v8, a1 + 7);
  v6 = a1[5];
  v5 = a1[4];
  v7 = a1[6];
  v9 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __108__PKPassGroupsViewController_presentAccountFeature_animated_destination_fundingSourceIdentifier_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(a1 + 64) & 1) == 0)
    {
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    (*(*(a1 + 48) + 16))();
  }
}

void __108__PKPassGroupsViewController_presentAccountFeature_animated_destination_fundingSourceIdentifier_completion___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69B8400] sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __108__PKPassGroupsViewController_presentAccountFeature_animated_destination_fundingSourceIdentifier_completion___block_invoke_5;
  v13[3] = &unk_1E8014990;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v15 = v6;
  v16 = v7;
  v14 = v10;
  v11 = v6;
  v12 = v7;
  [v8 defaultAccountForFeature:v9 completion:v13];
}

void __108__PKPassGroupsViewController_presentAccountFeature_animated_destination_fundingSourceIdentifier_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setAccount:v3];
  if (v3)
  {
    [v3 state];
  }

  (*(*(a1 + 48) + 16))();
}

void __108__PKPassGroupsViewController_presentAccountFeature_animated_destination_fundingSourceIdentifier_completion___block_invoke_6(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69B8400] sharedInstance];
  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) account];
  v11 = [v10 accountIdentifier];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __108__PKPassGroupsViewController_presentAccountFeature_animated_destination_fundingSourceIdentifier_completion___block_invoke_7;
  v15[3] = &unk_1E8024B38;
  v12 = *(a1 + 40);
  v17 = v6;
  v18 = v7;
  v16 = v12;
  v13 = v6;
  v14 = v7;
  [v8 paymentFundingSourceForIdentifier:v9 accountIdentifier:v11 completion:v15];
}

uint64_t __108__PKPassGroupsViewController_presentAccountFeature_animated_destination_fundingSourceIdentifier_completion___block_invoke_7(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setFundingSource:a2];
  if (!a2)
  {
    [*(a1 + 32) setDestination:4];
  }

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

void __108__PKPassGroupsViewController_presentAccountFeature_animated_destination_fundingSourceIdentifier_completion___block_invoke_8(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ([a4 isCanceled])
  {
    v5 = a1[6];
    if (v5)
    {
      v6 = *(v5 + 2);

      v6();
    }
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __108__PKPassGroupsViewController_presentAccountFeature_animated_destination_fundingSourceIdentifier_completion___block_invoke_9;
    v7[3] = &unk_1E8011220;
    objc_copyWeak(&v11, a1 + 7);
    v10 = a1[6];
    v8 = a1[4];
    v9 = a1[5];
    dispatch_async(MEMORY[0x1E69E96A0], v7);

    objc_destroyWeak(&v11);
  }
}

void __108__PKPassGroupsViewController_presentAccountFeature_animated_destination_fundingSourceIdentifier_completion___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _dashboardPassGroupViewController];
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __108__PKPassGroupsViewController_presentAccountFeature_animated_destination_fundingSourceIdentifier_completion___block_invoke_10;
      v7[3] = &unk_1E8010AD8;
      v8 = *(a1 + 48);
      [(PKDashboardPassGroupViewController *)v4 presentAccountWithConfiguration:v5 presentationContext:v6 animated:1 completion:v7];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t __108__PKPassGroupsViewController_presentAccountFeature_animated_destination_fundingSourceIdentifier_completion___block_invoke_10(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 ^ 1u, 0);
  }

  return result;
}

- (void)presentAppleBalanceAddMoneyAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__PKPassGroupsViewController_presentAppleBalanceAddMoneyAnimated_completion___block_invoke;
  v8[3] = &unk_1E8024B88;
  objc_copyWeak(&v10, &location);
  v7 = completionCopy;
  v9 = v7;
  [(PKPassGroupsViewController *)self presentPassForFeatureIdentifier:4 animated:animatedCopy completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __77__PKPassGroupsViewController_presentAppleBalanceAddMoneyAnimated_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v14 = v5;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = [WeakRetained _dashboardPassGroupViewController];
    v10 = v9;
    if (v9)
    {
      [(PKDashboardPassGroupViewController *)v9 presentAddMoneyAppleBalance];
      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = *(v11 + 16);
LABEL_9:
        v12();
      }
    }

    else
    {
      v13 = *(a1 + 32);
      if (v13)
      {
        v12 = *(v13 + 16);
        goto LABEL_9;
      }
    }

    goto LABEL_11;
  }

  v7 = *(a1 + 32);
  if (!v7)
  {
    goto LABEL_12;
  }

  v14 = v6;
  (*(v7 + 16))(v7, 1);
LABEL_11:
  v6 = v14;
LABEL_12:
}

- (void)presentAppleBalanceAddMoneyInStoreTopUpAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__PKPassGroupsViewController_presentAppleBalanceAddMoneyInStoreTopUpAnimated_completion___block_invoke;
  v8[3] = &unk_1E8024B88;
  objc_copyWeak(&v10, &location);
  v7 = completionCopy;
  v9 = v7;
  [(PKPassGroupsViewController *)self presentPassForFeatureIdentifier:4 animated:animatedCopy completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __89__PKPassGroupsViewController_presentAppleBalanceAddMoneyInStoreTopUpAnimated_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v14 = v5;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = [WeakRetained _dashboardPassGroupViewController];
    v10 = v9;
    if (v9)
    {
      [(PKDashboardPassGroupViewController *)v9 presentAddMoneyAppleBalanceInStoreTopUp];
      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = *(v11 + 16);
LABEL_9:
        v12();
      }
    }

    else
    {
      v13 = *(a1 + 32);
      if (v13)
      {
        v12 = *(v13 + 16);
        goto LABEL_9;
      }
    }

    goto LABEL_11;
  }

  v7 = *(a1 + 32);
  if (!v7)
  {
    goto LABEL_12;
  }

  v14 = v6;
  (*(v7 + 16))(v7, 1);
LABEL_11:
  v6 = v14;
LABEL_12:
}

- (void)presentAppleBalanceAddMoneyDirectTopUpAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88__PKPassGroupsViewController_presentAppleBalanceAddMoneyDirectTopUpAnimated_completion___block_invoke;
  v8[3] = &unk_1E8024B88;
  objc_copyWeak(&v10, &location);
  v7 = completionCopy;
  v9 = v7;
  [(PKPassGroupsViewController *)self presentPassForFeatureIdentifier:4 animated:animatedCopy completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __88__PKPassGroupsViewController_presentAppleBalanceAddMoneyDirectTopUpAnimated_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v14 = v5;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = [WeakRetained _dashboardPassGroupViewController];
    v10 = v9;
    if (v9)
    {
      [(PKDashboardPassGroupViewController *)v9 presentAddMoneyAppleBalanceDirectTopUp];
      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = *(v11 + 16);
LABEL_9:
        v12();
      }
    }

    else
    {
      v13 = *(a1 + 32);
      if (v13)
      {
        v12 = *(v13 + 16);
        goto LABEL_9;
      }
    }

    goto LABEL_11;
  }

  v7 = *(a1 + 32);
  if (!v7)
  {
    goto LABEL_12;
  }

  v14 = v6;
  (*(v7 + 16))(v7, 1);
LABEL_11:
  v6 = v14;
LABEL_12:
}

- (void)presentPassWithAssociatedAccountIdentifier:(id)identifier animated:(BOOL)animated completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = completionCopy;
  if (identifierCopy)
  {
    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __93__PKPassGroupsViewController_presentPassWithAssociatedAccountIdentifier_animated_completion___block_invoke;
    v12[3] = &unk_1E8024A70;
    v12[4] = self;
    animatedCopy = animated;
    v13 = v10;
    [mEMORY[0x1E69B8400] accountWithIdentifier:identifierCopy completion:v12];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

void __93__PKPassGroupsViewController_presentPassWithAssociatedAccountIdentifier_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__PKPassGroupsViewController_presentPassWithAssociatedAccountIdentifier_animated_completion___block_invoke_2;
  v7[3] = &unk_1E8024548;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v11 = *(a1 + 48);
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __93__PKPassGroupsViewController_presentPassWithAssociatedAccountIdentifier_animated_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 associatedPassUniqueID];
    if (v3)
    {
      v4 = *(a1 + 56);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __93__PKPassGroupsViewController_presentPassWithAssociatedAccountIdentifier_animated_completion___block_invoke_3;
      v9[3] = &unk_1E80109C0;
      v5 = *(a1 + 40);
      v11 = *(a1 + 48);
      v10 = v3;
      [v5 presentPassWithUniqueID:v10 animated:v4 completionHandler:v9];
    }

    else
    {
      v8 = *(a1 + 48);
      if (v8)
      {
        (*(v8 + 16))(v8, 1, 0);
      }
    }
  }

  else
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }
  }
}

uint64_t __93__PKPassGroupsViewController_presentPassWithAssociatedAccountIdentifier_animated_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2, *(a1 + 32));
  }

  return result;
}

- (void)presentPassDetailsAssociatedWithVirtualCardID:(id)d animated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  v9 = MEMORY[0x1E69B8400];
  dCopy = d;
  sharedInstance = [v9 sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__PKPassGroupsViewController_presentPassDetailsAssociatedWithVirtualCardID_animated_completion___block_invoke;
  v13[3] = &unk_1E8024A70;
  animatedCopy = animated;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [sharedInstance accountWithVirtualCardIdentifier:dCopy completion:v13];
}

void __96__PKPassGroupsViewController_presentPassDetailsAssociatedWithVirtualCardID_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__PKPassGroupsViewController_presentPassDetailsAssociatedWithVirtualCardID_animated_completion___block_invoke_2;
  v7[3] = &unk_1E8024548;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v11 = *(a1 + 48);
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __96__PKPassGroupsViewController_presentPassDetailsAssociatedWithVirtualCardID_animated_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 associatedPassUniqueID];
    if (v3)
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 56);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __96__PKPassGroupsViewController_presentPassDetailsAssociatedWithVirtualCardID_animated_completion___block_invoke_3;
      v9[3] = &unk_1E8016CF8;
      v9[4] = v4;
      v10 = *(a1 + 32);
      v12 = *(a1 + 56);
      v11 = *(a1 + 48);
      [v4 presentPassDetailsWithUniqueID:v3 animated:v5 completionHandler:v9];
    }

    else
    {
      v8 = *(a1 + 48);
      if (v8)
      {
        (*(v8 + 16))(v8, 1);
      }
    }
  }

  else
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }
  }
}

uint64_t __96__PKPassGroupsViewController_presentPassDetailsAssociatedWithVirtualCardID_animated_completion___block_invoke_3(uint64_t a1, int a2)
{
  if (a2 && PKSecureElementIsAvailable())
  {
    v3 = *(a1 + 32);
    v4 = [v3 _appleCardUpsellAlertWithAccount:*(a1 + 40)];
    [v3 presentViewController:v4 animated:*(a1 + 56) completion:0];
  }

  result = *(a1 + 48);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)presentSpendingSummaryForPassUniqueIdentifier:(id)identifier type:(unint64_t)type categorization:(unint64_t)categorization unit:(unint64_t)unit animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  identifierCopy = identifier;
  v16 = objc_alloc_init(PKPassPresentationContext);
  [(PKPassPresentationContext *)v16 setLimitServerLoad:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __121__PKPassGroupsViewController_presentSpendingSummaryForPassUniqueIdentifier_type_categorization_unit_animated_completion___block_invoke;
  v18[3] = &unk_1E8024BB0;
  typeCopy = type;
  categorizationCopy = categorization;
  unitCopy = unit;
  v18[4] = self;
  v19 = completionCopy;
  v17 = completionCopy;
  [(PKPassGroupsViewController *)self presentPassWithUniqueID:identifierCopy context:v16 animated:animatedCopy completionHandler:v18];
}

void __121__PKPassGroupsViewController_presentSpendingSummaryForPassUniqueIdentifier_type_categorization_unit_animated_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    v5 = [*(a1 + 32) _dashboardPassGroupViewController];
    v6 = v5;
    if (v5 && ([v5 navigationController], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isBeingDismissed"), v7, (v8 & 1) == 0))
    {
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __121__PKPassGroupsViewController_presentSpendingSummaryForPassUniqueIdentifier_type_categorization_unit_animated_completion___block_invoke_2;
      v13[3] = &unk_1E8010B50;
      v14 = *(a1 + 40);
      [(PKDashboardPassGroupViewController *)v6 presentSpendingSummaryWithType:v10 categorization:v11 unit:v12 completion:v13];
    }

    else
    {
      v9 = *(a1 + 40);
      if (v9)
      {
        (*(v9 + 16))(v9, 1);
      }
    }
  }
}

uint64_t __121__PKPassGroupsViewController_presentSpendingSummaryForPassUniqueIdentifier_type_categorization_unit_animated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)presentBalanceDetailsForPassUniqueIdentifier:(id)identifier animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  identifierCopy = identifier;
  v10 = objc_alloc_init(PKPassPresentationContext);
  [(PKPassPresentationContext *)v10 setLimitServerLoad:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __95__PKPassGroupsViewController_presentBalanceDetailsForPassUniqueIdentifier_animated_completion___block_invoke;
  v12[3] = &unk_1E80158C0;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [(PKPassGroupsViewController *)self presentPassWithUniqueID:identifierCopy context:v10 animated:animatedCopy completionHandler:v12];
}

void __95__PKPassGroupsViewController_presentBalanceDetailsForPassUniqueIdentifier_animated_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    v5 = [*(a1 + 32) _dashboardPassGroupViewController];
    v6 = v5;
    if (v5 && ([v5 navigationController], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isBeingDismissed"), v7, (v8 & 1) == 0))
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __95__PKPassGroupsViewController_presentBalanceDetailsForPassUniqueIdentifier_animated_completion___block_invoke_2;
      v10[3] = &unk_1E8010B50;
      v11 = *(a1 + 40);
      [(PKDashboardPassGroupViewController *)v6 presentBalanceDetailsWithCompletion:v10];
    }

    else
    {
      v9 = *(a1 + 40);
      if (v9)
      {
        (*(v9 + 16))(v9, 1);
      }
    }
  }
}

uint64_t __95__PKPassGroupsViewController_presentBalanceDetailsForPassUniqueIdentifier_animated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)showStatementForIdentifier:(id)identifier passUniqueIdentifier:(id)uniqueIdentifier animated:(BOOL)animated completion:(id)completion
{
  identifierCopy = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  completionCopy = completion;
  v13 = objc_alloc_init(PKPassPresentationContext);
  [(PKPassPresentationContext *)v13 setLimitServerLoad:1];
  objc_initWeak(&location, self);
  mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __98__PKPassGroupsViewController_showStatementForIdentifier_passUniqueIdentifier_animated_completion___block_invoke;
  v19[3] = &unk_1E8024C78;
  v15 = completionCopy;
  v23 = v15;
  v16 = identifierCopy;
  v20 = v16;
  objc_copyWeak(&v24, &location);
  v17 = uniqueIdentifierCopy;
  v21 = v17;
  v18 = v13;
  v22 = v18;
  animatedCopy = animated;
  [mEMORY[0x1E69B8400] accountForPassWithUniqueID:v17 completion:v19];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __98__PKPassGroupsViewController_showStatementForIdentifier_passUniqueIdentifier_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E69B8400] sharedInstance];
    v5 = [v3 accountIdentifier];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __98__PKPassGroupsViewController_showStatementForIdentifier_passUniqueIdentifier_animated_completion___block_invoke_2;
    v7[3] = &unk_1E8024C50;
    v8 = *(a1 + 32);
    objc_copyWeak(&v12, (a1 + 64));
    v11 = *(a1 + 56);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v13 = *(a1 + 72);
    [v4 creditStatementsForAccountIdentifier:v5 completion:v7];

    objc_destroyWeak(&v12);
  }

  else
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      (*(v6 + 16))(v6, 1);
    }
  }
}

void __98__PKPassGroupsViewController_showStatementForIdentifier_passUniqueIdentifier_animated_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__65;
  v23 = __Block_byref_object_dispose__65;
  v24 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98__PKPassGroupsViewController_showStatementForIdentifier_passUniqueIdentifier_animated_completion___block_invoke_3;
  v16[3] = &unk_1E8024BD8;
  v17 = *(a1 + 32);
  v18 = &v19;
  [v5 enumerateObjectsUsingBlock:v16];
  if (v20[5])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __98__PKPassGroupsViewController_showStatementForIdentifier_passUniqueIdentifier_animated_completion___block_invoke_4;
    v9[3] = &unk_1E8024C28;
    objc_copyWeak(&v14, (a1 + 64));
    v12 = *(a1 + 56);
    v10 = *(a1 + 40);
    v7 = *(a1 + 48);
    v15 = *(a1 + 72);
    v11 = v7;
    v13 = &v19;
    dispatch_async(MEMORY[0x1E69E96A0], v9);

    objc_destroyWeak(&v14);
  }

  else
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      (*(v8 + 16))(v8, 1);
    }
  }

  _Block_object_dispose(&v19, 8);
}

void __98__PKPassGroupsViewController_showStatementForIdentifier_passUniqueIdentifier_animated_completion___block_invoke_3(uint64_t a1, void *a2)
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

void __98__PKPassGroupsViewController_showStatementForIdentifier_passUniqueIdentifier_animated_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 72);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __98__PKPassGroupsViewController_showStatementForIdentifier_passUniqueIdentifier_animated_completion___block_invoke_5;
    v9[3] = &unk_1E8024C00;
    objc_copyWeak(&v12, (a1 + 64));
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v10 = v6;
    v11 = v7;
    [WeakRetained presentPassWithUniqueID:v3 context:v4 animated:v5 completionHandler:v9];

    objc_destroyWeak(&v12);
  }

  else
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, 1);
    }
  }
}

void __98__PKPassGroupsViewController_showStatementForIdentifier_passUniqueIdentifier_animated_completion___block_invoke_5(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = [WeakRetained _dashboardPassGroupViewController];
      v8 = v7;
      if (v7 && ([v7 navigationController], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isBeingDismissed"), v9, (v10 & 1) == 0))
      {
        v13 = *(*(*(a1 + 40) + 8) + 40);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __98__PKPassGroupsViewController_showStatementForIdentifier_passUniqueIdentifier_animated_completion___block_invoke_6;
        v14[3] = &unk_1E8010B50;
        v15 = *(a1 + 32);
        [(PKDashboardPassGroupViewController *)v8 showStatement:v13 completion:v14];
      }

      else
      {
        v11 = *(a1 + 32);
        if (v11)
        {
          (*(v11 + 16))(v11, 1);
        }
      }
    }

    else
    {
      v12 = *(a1 + 32);
      if (v12)
      {
        (*(v12 + 16))(v12, 1);
      }
    }
  }
}

uint64_t __98__PKPassGroupsViewController_showStatementForIdentifier_passUniqueIdentifier_animated_completion___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)presentDailyCashForPassUniqueIdentifier:(id)identifier dateComponents:(id)components redemptionType:(unint64_t)type animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  identifierCopy = identifier;
  componentsCopy = components;
  completionCopy = completion;
  if (type >= 3)
  {
    if (type == 3)
    {
      objc_initWeak(&location, self);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __120__PKPassGroupsViewController_presentDailyCashForPassUniqueIdentifier_dateComponents_redemptionType_animated_completion___block_invoke_3;
      v16[3] = &unk_1E8024CF0;
      v16[4] = self;
      objc_copyWeak(v19, &location);
      v18 = completionCopy;
      v17 = componentsCopy;
      v19[1] = 3;
      dispatch_async(MEMORY[0x1E69E96A0], v16);

      objc_destroyWeak(v19);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v15 = objc_alloc_init(PKPassPresentationContext);
    [(PKPassPresentationContext *)v15 setLimitServerLoad:1];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __120__PKPassGroupsViewController_presentDailyCashForPassUniqueIdentifier_dateComponents_redemptionType_animated_completion___block_invoke;
    v21[3] = &unk_1E8024CA0;
    v21[4] = self;
    v22 = componentsCopy;
    typeCopy = type;
    v23 = completionCopy;
    [(PKPassGroupsViewController *)self presentPassWithUniqueID:identifierCopy context:v15 animated:animatedCopy completionHandler:v21];
  }
}

void __120__PKPassGroupsViewController_presentDailyCashForPassUniqueIdentifier_dateComponents_redemptionType_animated_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    v5 = [*(a1 + 32) _dashboardPassGroupViewController];
    v6 = v5;
    if (v5 && ([v5 navigationController], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isBeingDismissed"), v7, (v8 & 1) == 0))
    {
      v10 = *(a1 + 56);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __120__PKPassGroupsViewController_presentDailyCashForPassUniqueIdentifier_dateComponents_redemptionType_animated_completion___block_invoke_2;
      v12[3] = &unk_1E8010B50;
      v11 = *(a1 + 40);
      v13 = *(a1 + 48);
      [(PKDashboardPassGroupViewController *)v6 presentDailyCashForDateComponents:v11 redemptionType:v10 completion:v12];
    }

    else
    {
      v9 = *(a1 + 48);
      if (v9)
      {
        (*(v9 + 16))(v9, 1);
      }
    }
  }
}

uint64_t __120__PKPassGroupsViewController_presentDailyCashForPassUniqueIdentifier_dateComponents_redemptionType_animated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __120__PKPassGroupsViewController_presentDailyCashForPassUniqueIdentifier_dateComponents_redemptionType_animated_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __120__PKPassGroupsViewController_presentDailyCashForPassUniqueIdentifier_dateComponents_redemptionType_animated_completion___block_invoke_4;
  v5[3] = &unk_1E8024CC8;
  objc_copyWeak(v8, (a1 + 56));
  v7 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v6 = v3;
  v8[1] = v4;
  [v2 presentCreditPassAnimated:1 completion:v5];

  objc_destroyWeak(v8);
}

void __120__PKPassGroupsViewController_presentDailyCashForPassUniqueIdentifier_dateComponents_redemptionType_animated_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if ((a2 & 1) != 0 || !WeakRetained)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, a2);
    }
  }

  else
  {
    v6 = [WeakRetained _dashboardPassGroupViewController];
    if (v6)
    {
      v7 = *(a1 + 56);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __120__PKPassGroupsViewController_presentDailyCashForPassUniqueIdentifier_dateComponents_redemptionType_animated_completion___block_invoke_5;
      v11[3] = &unk_1E8010B50;
      v8 = *(a1 + 32);
      v12 = *(a1 + 40);
      [(PKDashboardPassGroupViewController *)v6 presentDailyCashForDateComponents:v8 redemptionType:v7 completion:v11];
    }

    else
    {
      v10 = *(a1 + 40);
      if (v10)
      {
        (*(v10 + 16))(v10, 1);
      }
    }
  }
}

uint64_t __120__PKPassGroupsViewController_presentDailyCashForPassUniqueIdentifier_dateComponents_redemptionType_animated_completion___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)presentRewardsHubForPassUniqueIdentifier:(id)identifier animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  identifierCopy = identifier;
  v10 = objc_alloc_init(PKPassPresentationContext);
  [(PKPassPresentationContext *)v10 setLimitServerLoad:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91__PKPassGroupsViewController_presentRewardsHubForPassUniqueIdentifier_animated_completion___block_invoke;
  v12[3] = &unk_1E80158C0;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [(PKPassGroupsViewController *)self presentPassWithUniqueID:identifierCopy context:v10 animated:animatedCopy completionHandler:v12];
}

void __91__PKPassGroupsViewController_presentRewardsHubForPassUniqueIdentifier_animated_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    v5 = [*(a1 + 32) _dashboardPassGroupViewController];
    v6 = v5;
    if (v5 && ([v5 navigationController], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isBeingDismissed"), v7, (v8 & 1) == 0))
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __91__PKPassGroupsViewController_presentRewardsHubForPassUniqueIdentifier_animated_completion___block_invoke_2;
      v10[3] = &unk_1E8010B50;
      v11 = *(a1 + 40);
      [(PKDashboardPassGroupViewController *)v6 presentRewardsHubWithCompletion:v10];
    }

    else
    {
      v9 = *(a1 + 40);
      if (v9)
      {
        (*(v9 + 16))(v9, 1);
      }
    }
  }
}

uint64_t __91__PKPassGroupsViewController_presentRewardsHubForPassUniqueIdentifier_animated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)presentAccountPromotionForPassUniqueIdentifier:(id)identifier programIdentifier:(id)programIdentifier animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  programIdentifierCopy = programIdentifier;
  completionCopy = completion;
  identifierCopy = identifier;
  v13 = objc_alloc_init(PKPassPresentationContext);
  [(PKPassPresentationContext *)v13 setLimitServerLoad:1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __115__PKPassGroupsViewController_presentAccountPromotionForPassUniqueIdentifier_programIdentifier_animated_completion___block_invoke;
  v16[3] = &unk_1E8019A98;
  v16[4] = self;
  v17 = programIdentifierCopy;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = programIdentifierCopy;
  [(PKPassGroupsViewController *)self presentPassWithUniqueID:identifierCopy context:v13 animated:animatedCopy completionHandler:v16];
}

void __115__PKPassGroupsViewController_presentAccountPromotionForPassUniqueIdentifier_programIdentifier_animated_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    v5 = [*(a1 + 32) _dashboardPassGroupViewController];
    v6 = v5;
    if (v5 && ([v5 navigationController], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isBeingDismissed"), v7, (v8 & 1) == 0))
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __115__PKPassGroupsViewController_presentAccountPromotionForPassUniqueIdentifier_programIdentifier_animated_completion___block_invoke_2;
      v11[3] = &unk_1E8010B50;
      v10 = *(a1 + 40);
      v12 = *(a1 + 48);
      [(PKDashboardPassGroupViewController *)v6 presentAccountPromotionWithProgramIdentifier:v10 completion:v11];
    }

    else
    {
      v9 = *(a1 + 48);
      if (v9)
      {
        (*(v9 + 16))(v9, 1);
      }
    }
  }
}

uint64_t __115__PKPassGroupsViewController_presentAccountPromotionForPassUniqueIdentifier_programIdentifier_animated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)presentRewardsHubMerchantsForPassUniqueIdentifier:(id)identifier privateIdentifier:(id)privateIdentifier animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  privateIdentifierCopy = privateIdentifier;
  completionCopy = completion;
  identifierCopy = identifier;
  v13 = objc_alloc_init(PKPassPresentationContext);
  [(PKPassPresentationContext *)v13 setLimitServerLoad:1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __118__PKPassGroupsViewController_presentRewardsHubMerchantsForPassUniqueIdentifier_privateIdentifier_animated_completion___block_invoke;
  v16[3] = &unk_1E8019A98;
  v16[4] = self;
  v17 = privateIdentifierCopy;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = privateIdentifierCopy;
  [(PKPassGroupsViewController *)self presentPassWithUniqueID:identifierCopy context:v13 animated:animatedCopy completionHandler:v16];
}

void __118__PKPassGroupsViewController_presentRewardsHubMerchantsForPassUniqueIdentifier_privateIdentifier_animated_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    v5 = [*(a1 + 32) _dashboardPassGroupViewController];
    v6 = v5;
    if (v5 && ([v5 navigationController], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isBeingDismissed"), v7, (v8 & 1) == 0))
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __118__PKPassGroupsViewController_presentRewardsHubMerchantsForPassUniqueIdentifier_privateIdentifier_animated_completion___block_invoke_2;
      v11[3] = &unk_1E8010B50;
      v10 = *(a1 + 40);
      v12 = *(a1 + 48);
      [(PKDashboardPassGroupViewController *)v6 presentRewardsHubMerchantsWithPrivateIdentifier:v10 completion:v11];
    }

    else
    {
      v9 = *(a1 + 48);
      if (v9)
      {
        (*(v9 + 16))(v9, 1);
      }
    }
  }
}

uint64_t __118__PKPassGroupsViewController_presentRewardsHubMerchantsForPassUniqueIdentifier_privateIdentifier_animated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (int64_t)_cardSizeTypeForArticleLayouts:(id)layouts
{
  layoutsCopy = layouts;
  if ([(PKDiscoveryDataSource *)self->_discoveryDataSource isMiniCardsAllowed])
  {
    if (layoutsCopy)
    {
      articleLayouts = layoutsCopy;
    }

    else
    {
      articleLayouts = [(PKDiscoveryDataSource *)self->_discoveryDataSource articleLayouts];
    }

    v7 = articleLayouts;
    v8 = [articleLayouts pk_containsObjectPassingTest:&__block_literal_global_271_0];
    v6 = (PKDiscoveryForceIgnoreCEOCards() & 1) != 0 || (v8 & 1) == 0 && ![(PKPassGroupStackView *)self->_groupStackView discoveryGalleryHasWelcomeCards];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __61__PKPassGroupsViewController__cardSizeTypeForArticleLayouts___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 entitledToForceLargeCard])
  {
    v3 = [v2 hasHitMaxLargeViewCount] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)presentDiscoveryArticleForItemWithIdentifier:(id)identifier referrerIdentifier:(id)referrerIdentifier animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v36[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  discoveryDataSource = self->_discoveryDataSource;
  referrerIdentifierCopy = referrerIdentifier;
  v14 = [(PKDiscoveryDataSource *)discoveryDataSource cachedDiscoveryArticleLayoutForItemWithIdentifier:identifierCopy];
  v15 = v14;
  v16 = v14 == 0;
  if (v14)
  {
    v36[0] = v14;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    v18 = [(PKPassGroupsViewController *)self _cardSizeTypeForArticleLayouts:v17];
  }

  else
  {
    v18 = 2;
  }

  v19 = [[PKDiscoveryArticleViewController alloc] initWithArticleLayout:v15 referrerIdentifier:referrerIdentifierCopy cardSize:v18];

  v20 = [(PKDiscoveryArticleViewController *)v19 defaultZoomTransitionForDiscoveryCardView:0];
  v21 = [[PKNavigationController alloc] initWithRootViewController:v19];
  [(PKNavigationController *)v21 setModalPresentationStyle:0];
  [(PKNavigationController *)v21 setPreferredTransition:v20];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __114__PKPassGroupsViewController_presentDiscoveryArticleForItemWithIdentifier_referrerIdentifier_animated_completion___block_invoke;
  v31[3] = &unk_1E8024D38;
  v31[4] = self;
  v22 = v21;
  v32 = v22;
  v34 = animatedCopy;
  v35 = v16;
  v23 = completionCopy;
  v33 = v23;
  [(PKPassGroupsViewController *)self dismissPresentedVCsWithRequirements:4 animated:animatedCopy performAction:v31];
  if (!v15)
  {
    v24 = self->_discoveryDataSource;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __114__PKPassGroupsViewController_presentDiscoveryArticleForItemWithIdentifier_referrerIdentifier_animated_completion___block_invoke_3;
    v25[3] = &unk_1E8024D88;
    v25[4] = self;
    v26 = v19;
    v30 = animatedCopy;
    v27 = identifierCopy;
    v28 = v22;
    v29 = v23;
    [(PKDiscoveryDataSource *)v24 discoveryArticleLayoutForItemWithIdentifier:v27 completion:v25];
  }
}

void __114__PKPassGroupsViewController_presentDiscoveryArticleForItemWithIdentifier_referrerIdentifier_animated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pkui_frontMostViewController];
  v3 = *(a1 + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __114__PKPassGroupsViewController_presentDiscoveryArticleForItemWithIdentifier_referrerIdentifier_animated_completion___block_invoke_2;
  v5[3] = &unk_1E8010FA8;
  v7 = *(a1 + 57);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v2 presentViewController:v4 animated:v3 completion:v5];
}

uint64_t __114__PKPassGroupsViewController_presentDiscoveryArticleForItemWithIdentifier_referrerIdentifier_animated_completion___block_invoke_2(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void __114__PKPassGroupsViewController_presentDiscoveryArticleForItemWithIdentifier_referrerIdentifier_animated_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__PKPassGroupsViewController_presentDiscoveryArticleForItemWithIdentifier_referrerIdentifier_animated_completion___block_invoke_4;
  block[3] = &unk_1E8024D60;
  v15 = v6;
  v16 = v5;
  v13 = *(a1 + 32);
  v7 = *(&v13 + 1);
  v20 = *(a1 + 72);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v17 = v13;
  v18 = v10;
  v19 = *(a1 + 64);
  v11 = v5;
  v12 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __114__PKPassGroupsViewController_presentDiscoveryArticleForItemWithIdentifier_referrerIdentifier_animated_completion___block_invoke_4(uint64_t a1)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 || !*(a1 + 40))
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 64);
      *buf = 138412546;
      v21 = v4;
      v22 = 2112;
      v23 = v2;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Error presenting Discovery Article for itemIdentifier: %@ error: %@", buf, 0x16u);
    }

    v5 = PKLocalizedDiscoveryString(&cfstr_DiscoveryArtic_0.isa);
    v6 = PKLocalizedPaymentString(&cfstr_GenericErrorMe.isa);
    v7 = [*(a1 + 32) domain];
    if ([v7 isEqualToString:*MEMORY[0x1E696A978]])
    {
      v8 = [*(a1 + 32) code];

      if (v8 != -1009)
      {
LABEL_8:
        v10 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v5 message:v6 preferredStyle:1];
        v11 = MEMORY[0x1E69DC648];
        v12 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __114__PKPassGroupsViewController_presentDiscoveryArticleForItemWithIdentifier_referrerIdentifier_animated_completion___block_invoke_290;
        v18[3] = &unk_1E80112E8;
        v19 = *(a1 + 72);
        v13 = [v11 actionWithTitle:v12 style:1 handler:v18];
        [v10 addAction:v13];

        [*(a1 + 56) setIsDownloading:0];
        [*(a1 + 72) presentViewController:v10 animated:1 completion:0];

        goto LABEL_11;
      }

      v9 = PKLocalizedDiscoveryString(&cfstr_DiscoveryArtic_1.isa);

      PKLocalizedPaymentString(&cfstr_CouldNotConnec_0.isa);
      v6 = v7 = v6;
      v5 = v9;
    }

    goto LABEL_8;
  }

  v14 = *(a1 + 48);
  v24[0] = *(a1 + 40);
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v16 = [v14 _cardSizeTypeForArticleLayouts:v15];

  [*(a1 + 56) setArticleLayout:*(a1 + 40) cardSize:v16 animated:*(a1 + 88)];
LABEL_11:
  result = *(a1 + 80);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)presentSubcredentialPairingFlowIfPossibleWithConfig:(id)config animated:(BOOL)animated
{
  animatedCopy = animated;
  v33 = *MEMORY[0x1E69E9840];
  configCopy = config;
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  targetDevice = [mEMORY[0x1E69B8EF8] targetDevice];
  v9 = [targetDevice paymentWebService:mEMORY[0x1E69B8EF8] supportedRegionFeatureOfType:2];

  if (v9)
  {
    selfCopy = self;
    v25 = configCopy;
    v23 = animatedCopy;
    issuerIdentifier = [configCopy issuerIdentifier];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    supportedTerminals = [v9 supportedTerminals];
    v12 = [supportedTerminals countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(supportedTerminals);
        }

        v16 = *(*(&v26 + 1) + 8 * v15);
        partnerIdentifier = [v16 partnerIdentifier];
        v18 = [partnerIdentifier isEqualToString:issuerIdentifier];

        if (v18)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [supportedTerminals countByEnumeratingWithState:&v26 objects:v32 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v19 = v16;

      if (!v19)
      {
        goto LABEL_14;
      }

      configCopy = v25;
      if ([(PKPassLibraryDataProvider *)selfCopy->_passLibraryDataProvider canAddSecureElementPassWithConfiguration:v25])
      {
        [(PKPassGroupsViewController *)selfCopy _presentSubcredentialPairingFlowWithConfig:v25 animated:v23];
        v20 = 1;
        goto LABEL_23;
      }

      v21 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v25;
        _os_log_impl(&dword_1BD026000, v21, OS_LOG_TYPE_DEFAULT, "Unable to start provisioning flow with config: %@", buf, 0xCu);
      }
    }

    else
    {
LABEL_10:

LABEL_14:
      v19 = PKLogFacilityTypeGetObject();
      configCopy = v25;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = issuerIdentifier;
        _os_log_impl(&dword_1BD026000, v19, OS_LOG_TYPE_DEFAULT, "Subcredential pairing flow not supported with issuer: %@", buf, 0xCu);
      }
    }

    v20 = 0;
LABEL_23:
  }

  else
  {
    issuerIdentifier = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(issuerIdentifier, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, issuerIdentifier, OS_LOG_TYPE_DEFAULT, "Subcredential pairing flow not supported in region!", buf, 2u);
    }

    v20 = 0;
  }

  return v20;
}

- (void)_presentSubcredentialPairingFlowWithConfig:(id)config animated:(BOOL)animated
{
  configCopy = config;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__PKPassGroupsViewController__presentSubcredentialPairingFlowWithConfig_animated___block_invoke;
  v8[3] = &unk_1E8013D60;
  v8[4] = self;
  v9 = configCopy;
  animatedCopy = animated;
  v7 = configCopy;
  [(PKPassGroupsViewController *)self dismissPresentedVCsWithRequirements:0 animated:1 performAction:v8];
}

void __82__PKPassGroupsViewController__presentSubcredentialPairingFlowWithConfig_animated___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69B8D48]);
  v3 = [MEMORY[0x1E69B8EF8] sharedService];
  v4 = [v2 initWithWebService:v3];

  v5 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:0 provisioningController:v4 groupsController:*(*(a1 + 32) + 1424)];
  v6 = [[PKPaymentSetupDismissibleNavigationController alloc] initWithContext:0];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __82__PKPassGroupsViewController__presentSubcredentialPairingFlowWithConfig_animated___block_invoke_2;
  v14 = &unk_1E801ABD0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v15 = v6;
  v16 = v7;
  v9 = v6;
  [PKProvisioningFlowBridge startInAppFlowWithNavController:v9 context:v5 addCarKeyConfiguration:v8 completion:&v11];
  v10 = [*(a1 + 32) pkui_frontMostViewController];
  [v10 presentViewController:v9 animated:*(a1 + 48) completion:0];
}

void __82__PKPassGroupsViewController__presentSubcredentialPairingFlowWithConfig_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__PKPassGroupsViewController__presentSubcredentialPairingFlowWithConfig_animated___block_invoke_3;
  v7[3] = &unk_1E8010A10;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [v5 dismissViewControllerAnimated:1 completion:v7];
}

void __82__PKPassGroupsViewController__presentSubcredentialPairingFlowWithConfig_animated___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];
  if (v2)
  {
    v3 = *(a1 + 40);
    v5 = v2;
    v4 = [v2 uniqueID];
    [v3 presentPassWithUniqueID:v4 animated:1 completionHandler:0];

    v2 = v5;
  }
}

- (void)presentShareableCredentialWithEncryptedProvisioningTargetsHexEncodedString:(id)string passThumbnailImageData:(id)data animated:(BOOL)animated
{
  v42 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v9 = MEMORY[0x1E69B8EF8];
  stringCopy = string;
  sharedService = [v9 sharedService];
  v12 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:sharedService];
  pk_decodeHexadecimal = [stringCopy pk_decodeHexadecimal];

  v39 = 0;
  v14 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:pk_decodeHexadecimal error:&v39];
  v15 = v39;
  if (v14)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {
    v17 = v15;
    [v14 finishDecoding];
    v18 = 0;
LABEL_12:
    v27 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v17 description];
      *buf = 138412290;
      v41 = v28;
      _os_log_impl(&dword_1BD026000, v27, OS_LOG_TYPE_DEFAULT, "Unable to decode encrypted provisioning target: %@", buf, 0xCu);
    }

    v26 = PKDisplayableErrorForCommonType();
    v29 = PKAlertForDisplayableErrorWithHandlers(v26, 0, 0, 0);
    if (v29)
    {
      [(PKPassGroupsViewController *)self presentViewController:v29 animated:1 completion:0];
    }

    goto LABEL_17;
  }

  animatedCopy = animated;
  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  v22 = *MEMORY[0x1E696A508];
  v38 = 0;
  v18 = [v14 decodeTopLevelObjectOfClasses:v21 forKey:v22 error:&v38];
  v17 = v38;

  [v14 finishDecoding];
  if (!v18)
  {
    goto LABEL_12;
  }

  if (![v18 count])
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v23 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v18;
    _os_log_impl(&dword_1BD026000, v23, OS_LOG_TYPE_DEFAULT, "Presenting shareable credentials with encrypted provisioning targets: %@", buf, 0xCu);
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __137__PKPassGroupsViewController_presentShareableCredentialWithEncryptedProvisioningTargetsHexEncodedString_passThumbnailImageData_animated___block_invoke;
  v36[3] = &unk_1E8024DB0;
  v37 = dataCopy;
  v24 = [v18 pk_arrayByApplyingBlock:v36];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __137__PKPassGroupsViewController_presentShareableCredentialWithEncryptedProvisioningTargetsHexEncodedString_passThumbnailImageData_animated___block_invoke_2;
  v31[3] = &unk_1E8024DD8;
  v32 = v12;
  selfCopy = self;
  v34 = v24;
  v35 = animatedCopy;
  v25 = v24;
  [v32 validatePreconditions:v31];

  v26 = v37;
LABEL_17:
}

id __137__PKPassGroupsViewController_presentShareableCredentialWithEncryptedProvisioningTargetsHexEncodedString_passThumbnailImageData_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(MEMORY[0x1E69B8E78]) initWithEncryptedProvisioningTarget:v3 provisioningSharingIdentifier:0 passThumbnailImageData:*(a1 + 32)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __137__PKPassGroupsViewController_presentShareableCredentialWithEncryptedProvisioningTargetsHexEncodedString_passThumbnailImageData_animated___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "Present navigation controller for shareable credential failed: %@", &buf, 0xCu);
    }

    v6 = [*(a1 + 32) alertForDisplayableError:v5];
    if (v6)
    {
      [*(a1 + 40) presentViewController:v6 animated:1 completion:0];
    }
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:0 provisioningController:*(a1 + 32) groupsController:*(*(a1 + 40) + 1424)];
    v7 = [[PKPaymentSetupDismissibleNavigationController alloc] initWithContext:0];
    [(PKPaymentSetupDismissibleNavigationController *)v7 useStandardPlatformPresentationStyle];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v19 = 0x2020000000;
    v20 = 0;
    v8 = *(a1 + 48);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __137__PKPassGroupsViewController_presentShareableCredentialWithEncryptedProvisioningTargetsHexEncodedString_passThumbnailImageData_animated___block_invoke_298;
    v15[3] = &unk_1E8014BD0;
    p_buf = &buf;
    v9 = v7;
    v16 = v9;
    [PKProvisioningFlowBridge startShareableCredentialFlowWithNavController:v9 context:v6 credentials:v8 completion:v15];
    if (*(*(&buf + 1) + 24) == 1)
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14[0] = 0;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Failed to present shareable provisioning flow", v14, 2u);
      }

      v11 = PKDisplayableErrorForCommonType();
      v12 = PKAlertForDisplayableErrorWithHandlers(v11, 0, 0, 0);
      [*(a1 + 40) presentViewController:v12 animated:1 completion:0];
    }

    else
    {
      v11 = [*(a1 + 40) pkui_frontMostViewController];
      [v11 presentViewController:v9 animated:*(a1 + 56) completion:0];
    }

    _Block_object_dispose(&buf, 8);
  }
}

- (void)presentAddShareablePassConfiguration:(id)configuration animated:(BOOL)animated
{
  configurationCopy = configuration;
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v8 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:mEMORY[0x1E69B8EF8]];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__PKPassGroupsViewController_presentAddShareablePassConfiguration_animated___block_invoke;
  v11[3] = &unk_1E8024E00;
  objc_copyWeak(&v15, &location);
  v9 = v8;
  v12 = v9;
  selfCopy = self;
  v10 = configurationCopy;
  v14 = v10;
  animatedCopy = animated;
  [v9 validatePreconditionsAndRegister:v11];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __76__PKPassGroupsViewController_presentAddShareablePassConfiguration_animated___block_invoke(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v5 || (a2 & 1) == 0)
    {
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v5;
        _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Present navigation controller for shareable configuration failed: %@", buf, 0xCu);
      }

      v7 = [*(a1 + 32) alertForDisplayableError:v5];
      if (v7)
      {
        [WeakRetained presentViewController:v7 animated:1 completion:0];
      }
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:7 provisioningController:*(a1 + 32) groupsController:*(*(a1 + 40) + 1424)];
      v8 = [[PKPaymentSetupDismissibleNavigationController alloc] initWithContext:0];
      [(PKPaymentSetupDismissibleNavigationController *)v8 useStandardPlatformPresentationStyle];
      v9 = *(a1 + 48);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __76__PKPassGroupsViewController_presentAddShareablePassConfiguration_animated___block_invoke_300;
      v13[3] = &unk_1E80197A0;
      v14 = v8;
      v10 = v8;
      [PKProvisioningFlowBridge startInAppFlowWithNavController:v10 context:v7 addPassConfiguration:v9 completion:v13];
      v11 = [WeakRetained pkui_frontMostViewController];
      [v11 presentViewController:v10 animated:*(a1 + 64) completion:0];
    }
  }
}

- (void)presentShareInvitationWithMailboxAddress:(id)address referralSource:(id)source animated:(BOOL)animated
{
  addressCopy = address;
  sourceCopy = source;
  v7 = addressCopy;
  v8 = sourceCopy;
  PKSharingFetchInvitationFromMailboxAddress();
}

void __95__PKPassGroupsViewController_presentShareInvitationWithMailboxAddress_referralSource_animated___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v9 = PKAlertForDisplayableErrorWithHandlers(a4, 0, 0, 0);
    v5 = [*(a1 + 32) pkui_frontMostViewController];
    [v5 presentViewController:v9 animated:1 completion:0];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);

    [v6 _presentShareRedemptionFlowWithInvitation:a2 handle:a3 referralSource:v7 originalShareURL:v8];
  }
}

- (void)_presentShareRedemptionFlowWithInvitation:(id)invitation handle:(id)handle referralSource:(id)source originalShareURL:(id)l
{
  invitationCopy = invitation;
  handleCopy = handle;
  sourceCopy = source;
  lCopy = l;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __111__PKPassGroupsViewController__presentShareRedemptionFlowWithInvitation_handle_referralSource_originalShareURL___block_invoke;
  v18[3] = &unk_1E8011E38;
  v18[4] = self;
  v19 = handleCopy;
  v20 = invitationCopy;
  v21 = sourceCopy;
  v22 = lCopy;
  v14 = lCopy;
  v15 = sourceCopy;
  v16 = invitationCopy;
  v17 = handleCopy;
  [(PKPassGroupsViewController *)self dismissPresentedVCsWithRequirements:0 animated:1 performAction:v18];
}

void __111__PKPassGroupsViewController__presentShareRedemptionFlowWithInvitation_handle_referralSource_originalShareURL___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69B8D48]);
  v3 = [MEMORY[0x1E69B8EF8] sharedService];
  v4 = [v2 initWithWebService:v3];

  v5 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:0 provisioningController:v4 groupsController:*(*(a1 + 32) + 1424)];
  v6 = [[PKPaymentSetupDismissibleNavigationController alloc] initWithContext:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __111__PKPassGroupsViewController__presentShareRedemptionFlowWithInvitation_handle_referralSource_originalShareURL___block_invoke_2;
  aBlock[3] = &unk_1E8024E50;
  v11 = *(a1 + 40);
  v7 = v6;
  v8 = *(a1 + 32);
  v12 = v7;
  v13 = v8;
  v9 = _Block_copy(aBlock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 40) invalidate];
    [PKProvisioningFlowBridge startShareRedemptionFlowWithNavController:v7 context:v5 invitation:*(a1 + 48) referralSource:*(a1 + 56) completion:v9];
  }

  else
  {
    [PKProvisioningFlowBridge startCarKeyShareRedemptionFlowWithNavController:v7 context:v5 invitation:*(a1 + 48) handle:*(a1 + 40) originalShareURL:*(a1 + 64) completion:v9];
  }

  [*(a1 + 32) presentViewController:v7 animated:1 completion:0];
}

void __111__PKPassGroupsViewController__presentShareRedemptionFlowWithInvitation_handle_referralSource_originalShareURL___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __111__PKPassGroupsViewController__presentShareRedemptionFlowWithInvitation_handle_referralSource_originalShareURL___block_invoke_3;
  v7[3] = &unk_1E8010A10;
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [v5 dismissViewControllerAnimated:1 completion:v7];
}

void __111__PKPassGroupsViewController__presentShareRedemptionFlowWithInvitation_handle_referralSource_originalShareURL___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];
  if (v2)
  {
    v3 = *(a1 + 40);
    v5 = v2;
    v4 = [v2 uniqueID];
    [v3 presentPassWithUniqueID:v4 animated:1 completionHandler:0];

    v2 = v5;
  }
}

- (void)presentShareDetailsForPassUniqueIdentifier:(id)identifier shareIdentifier:(id)shareIdentifier
{
  identifierCopy = identifier;
  shareIdentifierCopy = shareIdentifier;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__PKPassGroupsViewController_presentShareDetailsForPassUniqueIdentifier_shareIdentifier___block_invoke;
  v10[3] = &unk_1E8012798;
  v10[4] = self;
  v11 = identifierCopy;
  v12 = shareIdentifierCopy;
  v8 = shareIdentifierCopy;
  v9 = identifierCopy;
  [(PKPassGroupsViewController *)self presentPassWithUniqueID:v9 animated:1 completionHandler:v10];
}

void __89__PKPassGroupsViewController_presentShareDetailsForPassUniqueIdentifier_shareIdentifier___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = [*(a1 + 32) _passFromGroupsControllerWithUniqueIdentifier:*(a1 + 40)];
    v4 = [v3 secureElementPass];

    v5 = objc_alloc(MEMORY[0x1E69B9268]);
    v6 = [MEMORY[0x1E69B8EF8] sharedService];
    v7 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    v8 = [v5 initWithPass:v4 webService:v6 paymentServiceProvider:v7 queue:MEMORY[0x1E69E96A0]];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __89__PKPassGroupsViewController_presentShareDetailsForPassUniqueIdentifier_shareIdentifier___block_invoke_2;
    v12[3] = &unk_1E8010A88;
    v13 = v8;
    v9 = *(a1 + 48);
    v10 = *(a1 + 32);
    v14 = v9;
    v15 = v10;
    v11 = v8;
    [v11 updateSharesWithCompletion:v12];
  }
}

void __89__PKPassGroupsViewController_presentShareDetailsForPassUniqueIdentifier_shareIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) shareForShareIdentifier:*(a1 + 40)];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69B9248]);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __89__PKPassGroupsViewController_presentShareDetailsForPassUniqueIdentifier_shareIdentifier___block_invoke_3;
    v8[3] = &unk_1E801F5D0;
    v9 = v2;
    v10 = *(a1 + 32);
    v11 = v3;
    v12 = *(a1 + 48);
    v4 = v3;
    [v4 authorizeDeviceOwnerWithAuthHandler:0 completion:v8];
  }

  else
  {
    v5 = [[PKPassSharesListViewController alloc] initWithSharesController:*(a1 + 32)];
    v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
    v7 = [*(a1 + 48) pkui_frontMostViewController];
    [v7 presentViewController:v6 animated:1 completion:0];
  }
}

void __89__PKPassGroupsViewController_presentShareDetailsForPassUniqueIdentifier_shareIdentifier___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v5 = [[PKPassShareDetailsViewController alloc] initWithShare:*(a1 + 32) sharesController:*(a1 + 40) authorizer:*(a1 + 48)];
    v3 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
    v4 = [*(a1 + 56) pkui_frontMostViewController];
    [v4 presentViewController:v3 animated:1 completion:0];
  }
}

- (void)presentEntitlementDetailsForPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__PKPassGroupsViewController_presentEntitlementDetailsForPassUniqueIdentifier___block_invoke;
  v6[3] = &unk_1E8012FD0;
  v6[4] = self;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [(PKPassGroupsViewController *)self presentPassWithUniqueID:v5 animated:1 completionHandler:v6];
}

void __79__PKPassGroupsViewController_presentEntitlementDetailsForPassUniqueIdentifier___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = [*(a1 + 32) _passFromGroupsControllerWithUniqueIdentifier:*(a1 + 40)];
    v4 = [v3 secureElementPass];

    v5 = objc_alloc(MEMORY[0x1E69B9268]);
    v6 = [MEMORY[0x1E69B8EF8] sharedService];
    v7 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    v8 = [v5 initWithPass:v4 webService:v6 paymentServiceProvider:v7 queue:MEMORY[0x1E69E96A0]];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__PKPassGroupsViewController_presentEntitlementDetailsForPassUniqueIdentifier___block_invoke_2;
    v11[3] = &unk_1E8010A88;
    v12 = v8;
    v13 = v4;
    v14 = *(a1 + 32);
    v9 = v4;
    v10 = v8;
    [v10 updateEntitlementsWithCompletion:v11];
  }
}

void __79__PKPassGroupsViewController_presentEntitlementDetailsForPassUniqueIdentifier___block_invoke_2(id *a1)
{
  v2 = objc_alloc(MEMORY[0x1E69B8A38]);
  v3 = [a1[4] myEntitlements];
  v4 = [a1[4] possiblePredefinedEntitlements];
  v8 = [v2 initWithMyEntitlements:v3 predefinedSharedEntitlements:v4];

  v5 = -[PKPassShareEntitlementSelectionViewController initWithAccessType:mode:entitlementComposer:]([PKPassShareEntitlementSelectionViewController alloc], "initWithAccessType:mode:entitlementComposer:", [a1[5] accessType], 2, v8);
  [(PKPassShareEntitlementSelectionViewController *)v5 setShowDoneButton:1];
  v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  v7 = [a1[6] pkui_frontMostViewController];
  [v7 presentViewController:v6 animated:1 completion:0];
}

- (void)presentShareActivationWithShareIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__PKPassGroupsViewController_presentShareActivationWithShareIdentifier___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [(PKPassGroupsViewController *)self dismissPresentedVCsWithRequirements:0 animated:1 performAction:v6];
}

uint64_t __72__PKPassGroupsViewController_presentShareActivationWithShareIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 1232);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__PKPassGroupsViewController_presentShareActivationWithShareIdentifier___block_invoke_2;
  v5[3] = &unk_1E8024E78;
  v5[4] = v2;
  return [v3 pendingShareActivationForShareIdentifier:v1 completion:v5];
}

void __72__PKPassGroupsViewController_presentShareActivationWithShareIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__PKPassGroupsViewController_presentShareActivationWithShareIdentifier___block_invoke_3;
  v6[3] = &unk_1E8010A10;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __72__PKPassGroupsViewController_presentShareActivationWithShareIdentifier___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v5 = [[PKPassShareActivationViewController alloc] initWithPendingActivation:*(a1 + 32)];
    v2 = [[PKNavigationController alloc] initWithRootViewController:v5];
    v3 = [*(a1 + 40) pkui_frontMostViewController];
    [v3 presentViewController:v2 animated:1 completion:0];
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] pkSharingError:5];
    v5 = PKAlertForDisplayableErrorWithHandlers(v4, 0, 0, 0);

    v2 = [*(a1 + 40) pkui_frontMostViewController];
    [(PKNavigationController *)v2 presentViewController:v5 animated:1 completion:0];
  }
}

- (void)presentProvisioningForPendingProvisioningOfType:(id)type identifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__PKPassGroupsViewController_presentProvisioningForPendingProvisioningOfType_identifier___block_invoke;
  v10[3] = &unk_1E8010A88;
  v10[4] = self;
  v11 = typeCopy;
  v12 = identifierCopy;
  v8 = identifierCopy;
  v9 = typeCopy;
  [(PKPassGroupsViewController *)self dismissPresentedVCsWithRequirements:0 animated:1 performAction:v10];
}

void __89__PKPassGroupsViewController_presentProvisioningForPendingProvisioningOfType_identifier___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(v2 + 1232);
  v5 = a1[6];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89__PKPassGroupsViewController_presentProvisioningForPendingProvisioningOfType_identifier___block_invoke_2;
  v6[3] = &unk_1E8024EC8;
  v6[4] = v2;
  v7 = v3;
  v8 = a1[6];
  [v4 retrievePendingProvisioningOfType:v7 withUniqueIdentifier:v5 completion:v6];
}

void __89__PKPassGroupsViewController_presentProvisioningForPendingProvisioningOfType_identifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status] == 3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __89__PKPassGroupsViewController_presentProvisioningForPendingProvisioningOfType_identifier___block_invoke_3;
    v7[3] = &unk_1E8011C98;
    v4 = v3;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

void __89__PKPassGroupsViewController_presentProvisioningForPendingProvisioningOfType_identifier___block_invoke_3(id *a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = [a1[4] credential];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69B8D48]);
    v4 = [MEMORY[0x1E69B8EF8] sharedService];
    v5 = [v3 initWithWebService:v4];

    v6 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:0 provisioningController:v5 groupsController:0];
    v7 = [[PKPaymentSetupDismissibleNavigationController alloc] initWithContext:0];
    objc_initWeak(&location, a1[5]);
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v20 = 0;
    v22[0] = v2;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v9 = [a1[5] navigationController];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __89__PKPassGroupsViewController_presentProvisioningForPendingProvisioningOfType_identifier___block_invoke_4;
    v13[3] = &unk_1E8024EA0;
    objc_copyWeak(&v18, &location);
    v17 = v19;
    v10 = v7;
    v14 = v10;
    v15 = a1[6];
    v16 = a1[7];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __89__PKPassGroupsViewController_presentProvisioningForPendingProvisioningOfType_identifier___block_invoke_6;
    v11[3] = &unk_1E801E260;
    objc_copyWeak(&v12, &location);
    v11[4] = a1[5];
    v11[5] = v19;
    [PKProvisioningFlowBridge startCredentialsProvisioningFlowWithNavController:v10 context:v6 credentials:v8 parentNavController:v9 presentNavController:v13 completion:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v18);
    _Block_object_dispose(v19, 8);
    objc_destroyWeak(&location);
  }
}

void __89__PKPassGroupsViewController_presentProvisioningForPendingProvisioningOfType_identifier___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v4 = WeakRetained;
    v3 = [WeakRetained pkui_frontMostViewController];
    [v3 presentViewController:*(a1 + 32) animated:1 completion:0];

    [v4[154] removePendingProvisioningOfType:*(a1 + 40) withUniqueIdentifier:*(a1 + 48) completion:&__block_literal_global_313_0];
    WeakRetained = v4;
  }
}

void __89__PKPassGroupsViewController_presentProvisioningForPendingProvisioningOfType_identifier___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && *(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v3 = WeakRetained;
    [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
    WeakRetained = v3;
  }
}

- (void)presentPeerPaymentPassAnimated:(BOOL)animated campaignAttributionReferrerIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __110__PKPassGroupsViewController_presentPeerPaymentPassAnimated_campaignAttributionReferrerIdentifier_completion___block_invoke;
  v13[3] = &unk_1E8024EF0;
  v14 = identifierCopy;
  selfCopy = self;
  animatedCopy = animated;
  v16 = completionCopy;
  v11 = completionCopy;
  v12 = identifierCopy;
  [mEMORY[0x1E69B9000] accountWithCompletion:v13];
}

void __110__PKPassGroupsViewController_presentPeerPaymentPassAnimated_campaignAttributionReferrerIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__PKPassGroupsViewController_presentPeerPaymentPassAnimated_campaignAttributionReferrerIdentifier_completion___block_invoke_2;
  block[3] = &unk_1E8021110;
  v9 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  v13 = *(a1 + 56);
  v12 = v6;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __110__PKPassGroupsViewController_presentPeerPaymentPassAnimated_campaignAttributionReferrerIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) associatedPassUniqueID];
  if (v2)
  {
    v3 = objc_alloc_init(PKPassPresentationContext);
    [(PKPassPresentationContext *)v3 setCampaignAttributionReferrerIdentifier:*(a1 + 40)];
    v4 = *(a1 + 64);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __110__PKPassGroupsViewController_presentPeerPaymentPassAnimated_campaignAttributionReferrerIdentifier_completion___block_invoke_3;
    v7[3] = &unk_1E80109C0;
    v5 = *(a1 + 48);
    v9 = *(a1 + 56);
    v8 = v2;
    [v5 presentPassWithUniqueID:v8 context:v3 animated:v4 completionHandler:v7];
  }

  else
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      (*(v6 + 16))(v6, 1, 0);
    }
  }
}

uint64_t __110__PKPassGroupsViewController_presentPeerPaymentPassAnimated_campaignAttributionReferrerIdentifier_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2, *(a1 + 32));
  }

  return result;
}

- (void)presentSecurePassSessionWithIssuerData:(id)data withSignature:(id)signature animated:(BOOL)animated
{
  dataCopy = data;
  signatureCopy = signature;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __92__PKPassGroupsViewController_presentSecurePassSessionWithIssuerData_withSignature_animated___block_invoke;
  v12[3] = &unk_1E80170D8;
  v12[4] = self;
  v13 = dataCopy;
  v14 = signatureCopy;
  animatedCopy = animated;
  v10 = signatureCopy;
  v11 = dataCopy;
  [(PKPassGroupsViewController *)self dismissPresentedVCsWithRequirements:0 animated:1 performAction:v12];
}

void __92__PKPassGroupsViewController_presentSecurePassSessionWithIssuerData_withSignature_animated___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(PKServiceAddPassesViewController);
  [(PKServiceAddPassesViewController *)v2 setResultsDelegate:*(a1 + 32)];
  [(PKServiceAddPassesViewController *)v2 ingestPasses:0 orPassesContainer:0 orIssuerData:*(a1 + 40) withSignature:*(a1 + 48) fromPresentationSource:2];
  if (v2 && ([(PKServiceAddPassesViewController *)v2 topViewController], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [*(a1 + 32) pkui_frontMostViewController];
    [v4 presentViewController:v2 animated:*(a1 + 56) completion:0];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Unable to present issuer binding view controller", v11, 2u);
    }

    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BBBC8] code:1 userInfo:0];
    v6 = PKLocalizedPaymentString(&cfstr_IssuerDataGene_3.isa);
    v7 = PKLocalizedPaymentString(&cfstr_IssuerDataGene_6.isa);
    v8 = PKDisplayableErrorCustom();

    v9 = PKAlertForDisplayableErrorWithHandlers(v8, 0, 0, 0);
    v10 = [*(a1 + 32) pkui_frontMostViewController];
    [v10 presentViewController:v9 animated:1 completion:0];
  }
}

- (void)presentApplicationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  paymentService = self->_paymentService;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PKPassGroupsViewController_presentApplicationWithIdentifier___block_invoke;
  v7[3] = &unk_1E801ABD0;
  v8 = identifierCopy;
  selfCopy = self;
  v6 = identifierCopy;
  [(PKPaymentService *)paymentService featureApplicationsForProvisioningWithCompletion:v7];
}

void __63__PKPassGroupsViewController_presentApplicationWithIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __63__PKPassGroupsViewController_presentApplicationWithIdentifier___block_invoke_2;
  v20[3] = &unk_1E8014968;
  v21 = *(a1 + 32);
  v7 = [v5 pk_firstObjectPassingTest:v20];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E69B8D48]);
    v9 = [MEMORY[0x1E69B8EF8] sharedService];
    v10 = [v8 initWithWebService:v9];

    v11 = [[PKApplyControllerConfiguration alloc] initWithSetupDelegate:0 context:0 provisioningController:v10];
    [(PKApplyControllerConfiguration *)v11 setFeatureApplication:v7];
    -[PKApplyControllerConfiguration setFeature:](v11, "setFeature:", [v7 feature]);
    v12 = [[PKApplyController alloc] initWithApplyConfiguration:v11];
    v14 = *(a1 + 40);
    v13 = (a1 + 40);
    v15 = *(v14 + 1352);
    *(v14 + 1352) = v12;

    objc_initWeak(location, *v13);
    v16 = *(*v13 + 169);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __63__PKPassGroupsViewController_presentApplicationWithIdentifier___block_invoke_326;
    v18[3] = &unk_1E80162F0;
    objc_copyWeak(&v19, location);
    [v16 nextViewControllerWithCompletion:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v17;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "No application found with identifier %@", location, 0xCu);
    }
  }
}

uint64_t __63__PKPassGroupsViewController_presentApplicationWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 applicationIdentifier];
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

void __63__PKPassGroupsViewController_presentApplicationWithIdentifier___block_invoke_326(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKPassGroupsViewController_presentApplicationWithIdentifier___block_invoke_2_327;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __63__PKPassGroupsViewController_presentApplicationWithIdentifier___block_invoke_2_327(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v4 = [WeakRetained pkui_frontMostViewController];
      [v4 presentViewController:*(a1 + 32) animated:1 completion:0];
    }

    else
    {
      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v6 = 138412290;
        v7 = v5;
        _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "No apply view returned with error: %@", &v6, 0xCu);
      }
    }
  }
}

- (void)presentPrecursorPassUpdateForPassUniqueIdentifier:(id)identifier
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__PKPassGroupsViewController_presentPrecursorPassUpdateForPassUniqueIdentifier___block_invoke;
  v3[3] = &unk_1E8011D28;
  v3[4] = self;
  [(PKPassGroupsViewController *)self presentPassWithUniqueID:identifier animated:1 completionHandler:v3];
}

void __80__PKPassGroupsViewController_presentPrecursorPassUpdateForPassUniqueIdentifier___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = [*(a1 + 32) _dashboardPassGroupViewController];
    if (v3)
    {
      v6 = v3;
      v4 = [v3 navigationController];
      v5 = [v4 isBeingDismissed];

      v3 = v6;
      if ((v5 & 1) == 0)
      {
        [(PKDashboardPassGroupViewController *)v6 performPrecursorPassAction];
        v3 = v6;
      }
    }
  }
}

- (void)presentApplePayUserEducationDemoFromSource:(unint64_t)source
{
  v5 = 4 * (source == 4);
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__PKPassGroupsViewController_presentApplePayUserEducationDemoFromSource___block_invoke;
  v6[3] = &unk_1E801E5C8;
  objc_copyWeak(v7, &location);
  v7[1] = source;
  [(PKPassGroupsViewController *)self dismissPresentedVCsWithRequirements:v5 animated:1 performAction:v6];
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __73__PKPassGroupsViewController_presentApplePayUserEducationDemoFromSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v3 = [WeakRetained navigationController];
    v4 = [v3 pkui_frontMostViewController];

    if (PKIsApplePayUserEducationDemoSupported())
    {
      v5 = [PKApplePayUserEducationDemoProvider viewControllerWithSource:*(a1 + 40)];
      v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
      [v4 presentViewController:v6 animated:1 completion:0];
    }

    else
    {
      v7 = MEMORY[0x1E69DC650];
      v8 = PKLocalizedPaymentString(&cfstr_UserEducationD_4.isa);
      v5 = [v7 alertControllerWithTitle:v8 message:0 preferredStyle:1];

      v9 = MEMORY[0x1E69DC648];
      v10 = PKLocalizedPaymentString(&cfstr_UserEducationD_5.isa);
      v11 = [v9 actionWithTitle:v10 style:0 handler:0];
      [v5 addAction:v11];

      [v4 presentViewController:v5 animated:1 completion:0];
    }

    WeakRetained = v12;
  }
}

- (void)presentHowToUseWalletWithCardLotIdentifier:(id)identifier
{
  location[3] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (PKEvergreenEducationEnabled())
  {
    mEMORY[0x1E69B8908] = [MEMORY[0x1E69B8908] sharedInstance];
    latestHowToUseWalletModel = [mEMORY[0x1E69B8908] latestHowToUseWalletModel];
    if ([identifierCopy length])
    {
      v7 = [mEMORY[0x1E69B8908] latestCardForLotIdentifier:identifierCopy];
      v8 = v7;
      if (v7)
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __73__PKPassGroupsViewController_presentHowToUseWalletWithCardLotIdentifier___block_invoke;
        v27[3] = &unk_1E8024F18;
        v9 = v7;
        v28 = v9;
        if ([latestHowToUseWalletModel containsCardPassingTest:v27])
        {
          objc_initWeak(location, self);
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __73__PKPassGroupsViewController_presentHowToUseWalletWithCardLotIdentifier___block_invoke_2;
          v23[3] = &unk_1E8011828;
          objc_copyWeak(&v26, location);
          v24 = latestHowToUseWalletModel;
          v25 = v9;
          [(PKPassGroupsViewController *)self dismissPresentedVCsWithRequirements:0 animated:1 performAction:v23];

          objc_destroyWeak(&v26);
          objc_destroyWeak(location);
        }

        else
        {
          v11 = [PKDiscoveryArticleViewController alloc];
          article = [v9 article];
          v13 = [(PKDiscoveryArticleViewController *)v11 initWithArticleLayout:article referrerIdentifier:0 cardSize:[v9 cardSizeType]];

          v14 = [(PKDiscoveryArticleViewController *)v13 defaultZoomTransitionForDiscoveryCardView:0];
          v15 = [[PKNavigationController alloc] initWithRootViewController:v13];
          [(PKNavigationController *)v15 setModalPresentationStyle:0];
          [(PKNavigationController *)v15 setPreferredTransition:v14];
          objc_initWeak(location, self);
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __73__PKPassGroupsViewController_presentHowToUseWalletWithCardLotIdentifier___block_invoke_3;
          v20[3] = &unk_1E80110E0;
          objc_copyWeak(&v22, location);
          v16 = v15;
          v21 = v16;
          [(PKPassGroupsViewController *)self dismissPresentedVCsWithRequirements:4 animated:1 performAction:v20];

          objc_destroyWeak(&v22);
          objc_destroyWeak(location);
        }

        v10 = v28;
      }

      else
      {
        v10 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = identifierCopy;
          _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "No card found for lot identifier '%@'", location, 0xCu);
        }
      }
    }

    else
    {
      objc_initWeak(location, self);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __73__PKPassGroupsViewController_presentHowToUseWalletWithCardLotIdentifier___block_invoke_338;
      v17[3] = &unk_1E80110E0;
      objc_copyWeak(&v19, location);
      v18 = latestHowToUseWalletModel;
      [(PKPassGroupsViewController *)self dismissPresentedVCsWithRequirements:0 animated:1 performAction:v17];

      objc_destroyWeak(&v19);
      objc_destroyWeak(location);
    }
  }
}

uint64_t __73__PKPassGroupsViewController_presentHowToUseWalletWithCardLotIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
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

void __73__PKPassGroupsViewController_presentHowToUseWalletWithCardLotIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _presentHowToUseWalletWithModel:*(a1 + 32) destinationCard:*(a1 + 40)];
}

void __73__PKPassGroupsViewController_presentHowToUseWalletWithCardLotIdentifier___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained pkui_frontMostViewController];
  [v2 presentViewController:*(a1 + 32) animated:1 completion:0];
}

void __73__PKPassGroupsViewController_presentHowToUseWalletWithCardLotIdentifier___block_invoke_338(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _presentHowToUseWalletWithModel:*(a1 + 32) destinationCard:0];
}

- (void)peerPaymentAccountResolutionController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  pkui_frontMostViewController = [(UIViewController *)self pkui_frontMostViewController];
  [pkui_frontMostViewController presentViewController:viewControllerCopy animated:animatedCopy completion:0];
}

- (void)peerPaymentAccountResolutionController:(id)controller requestsDismissCurrentViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  pkui_frontMostViewController = [(UIViewController *)self pkui_frontMostViewController];
  [pkui_frontMostViewController dismissViewControllerAnimated:animatedCopy completion:0];

  peerPaymentAccountResolutionController = self->_peerPaymentAccountResolutionController;
  self->_peerPaymentAccountResolutionController = 0;
}

- (void)accountServiceAccountResolutionController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  pkui_frontMostViewController = [(UIViewController *)self pkui_frontMostViewController];
  [pkui_frontMostViewController presentViewController:viewControllerCopy animated:animatedCopy completion:0];
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
}

- (void)startPaymentPreflight:(id)preflight withPaymentSetupMode:(int64_t)mode referrerIdentifier:(id)identifier referralSource:(id)source campaignIdentifier:(id)campaignIdentifier paymentNetworks:(id)networks transitNetworkIdentifiers:(id)identifiers allowedFeatureIdentifiers:(id)self0 productIdentifiers:(id)self1 sectionIdentifier:(id)self2
{
  preflightCopy = preflight;
  identifierCopy = identifier;
  sourceCopy = source;
  campaignIdentifierCopy = campaignIdentifier;
  networksCopy = networks;
  identifiersCopy = identifiers;
  featureIdentifiersCopy = featureIdentifiers;
  productIdentifiersCopy = productIdentifiers;
  sectionIdentifierCopy = sectionIdentifier;
  PKTimeProfileBegin();
  v21 = PKLogFacilityTypeGetObject();
  v22 = os_signpost_id_make_with_pointer(v21, self);
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v23 = v22;
    if (os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v23, "provisioning:preflight:add_card_button_total", "", buf, 2u);
    }
  }

  objc_opt_class();
  v24 = preflightCopy;
  if (objc_opt_isKindOfClass())
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __231__PKPassGroupsViewController_startPaymentPreflight_withPaymentSetupMode_referrerIdentifier_referralSource_campaignIdentifier_paymentNetworks_transitNetworkIdentifiers_allowedFeatureIdentifiers_productIdentifiers_sectionIdentifier___block_invoke;
    aBlock[3] = &unk_1E8011D28;
    v67 = preflightCopy;
    v25 = _Block_copy(aBlock);
    v26 = [v25 copy];

    v27 = v67;
  }

  else
  {
    v27 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v27 startAnimating];
    v28 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v27];
    barButtonItems = [(UIBarButtonItemGroup *)self->_navigationItem.trailing.add.group barButtonItems];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __231__PKPassGroupsViewController_startPaymentPreflight_withPaymentSetupMode_referrerIdentifier_referralSource_campaignIdentifier_paymentNetworks_transitNetworkIdentifiers_allowedFeatureIdentifiers_productIdentifiers_sectionIdentifier___block_invoke_2;
    v63[3] = &unk_1E8012798;
    v63[4] = self;
    v64 = v28;
    v65 = barButtonItems;
    v30 = sourceCopy;
    v31 = barButtonItems;
    v32 = v28;
    v33 = _Block_copy(v63);
    v26 = [v33 copy];

    v24 = preflightCopy;
    sourceCopy = v30;
  }

  v35 = campaignIdentifierCopy;
  v34 = identifierCopy;

  if (([objc_opt_class() isPerformingAction] & 1) == 0)
  {
    presentedViewController = [(PKPassGroupsViewController *)self presentedViewController];

    if (!presentedViewController)
    {
      v26[2](v26, 1);
      [objc_opt_class() beginTrackingAction];
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      [mEMORY[0x1E69DC668] _setIdleTimerDisabled:1 forReason:@"SetupPayments"];

      mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
      v38 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:mEMORY[0x1E69B8EF8]];
      [v38 setReferrerIdentifier:identifierCopy];
      [v38 setAllowedFeatureIdentifiers:featureIdentifiersCopy];
      [v38 setAllowedProductIdentifiers:productIdentifiersCopy];
      [v38 setSelectedSectionIdentifier:sectionIdentifierCopy];
      [v38 setAllowProductsInUnsupportedRegion:1];
      [v38 setReferralSource:sourceCopy];
      [v38 setCampaignAttributionReferrerIdentifier:v35];
      if (networksCopy)
      {
        [v38 setAllowedPaymentNetworks:networksCopy];
      }

      v48 = sourceCopy;
      if (identifiersCopy)
      {
        [v38 setRequiredTransitNetworkIdentifiers:identifiersCopy];
      }

      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __231__PKPassGroupsViewController_startPaymentPreflight_withPaymentSetupMode_referrerIdentifier_referralSource_campaignIdentifier_paymentNetworks_transitNetworkIdentifiers_allowedFeatureIdentifiers_productIdentifiers_sectionIdentifier___block_invoke_3;
      v59[3] = &unk_1E8024F40;
      v59[4] = self;
      v61 = v26;
      v39 = v38;
      v60 = v39;
      modeCopy = mode;
      v40 = _Block_copy(v59);
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __231__PKPassGroupsViewController_startPaymentPreflight_withPaymentSetupMode_referrerIdentifier_referralSource_campaignIdentifier_paymentNetworks_transitNetworkIdentifiers_allowedFeatureIdentifiers_productIdentifiers_sectionIdentifier___block_invoke_354;
      v52[3] = &unk_1E8024F68;
      v41 = v39;
      v53 = v41;
      modeCopy2 = mode;
      v54 = networksCopy;
      v55 = identifiersCopy;
      v56 = productIdentifiersCopy;
      v57 = v40;
      v42 = v40;
      v43 = _Block_copy(v52);
      if (mode == 2)
      {
        [v41 preflightWithRequirements:1007 completionRequirements:1007 completion:v43];
      }

      else
      {
        [v41 preflightWithCompletion:v43];
      }

      sourceCopy = v48;
    }
  }
}

void __231__PKPassGroupsViewController_startPaymentPreflight_withPaymentSetupMode_referrerIdentifier_referralSource_campaignIdentifier_paymentNetworks_transitNetworkIdentifiers_allowedFeatureIdentifiers_productIdentifiers_sectionIdentifier___block_invoke_2(void *a1, int a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1[4] + 1072);
  if (a2)
  {
    v6[0] = a1[5];
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [v2 setBarButtonItems:v3];
  }

  else
  {
    v4 = a1[6];
    v5 = *(a1[4] + 1072);

    [v5 setBarButtonItems:v4];
  }
}

void __231__PKPassGroupsViewController_startPaymentPreflight_withPaymentSetupMode_referrerIdentifier_referralSource_campaignIdentifier_paymentNetworks_transitNetworkIdentifiers_allowedFeatureIdentifiers_productIdentifiers_sectionIdentifier___block_invoke_3(uint64_t a1, int a2, void *a3, void *a4)
{
  v41[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  [objc_opt_class() endTrackingAction];
  v9 = [MEMORY[0x1E69DC668] sharedApplication];
  [v9 _setIdleTimerDisabled:0 forReason:@"SetupPayments"];

  v10 = [*(a1 + 32) presentedViewController];

  if (v10)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_16;
  }

  if (a2)
  {
    v11 = [[PKPaymentSetupNavigationController alloc] initWithProvisioningController:*(a1 + 40) context:0];
    [(PKPaymentSetupNavigationController *)v11 setSetupDelegate:*(a1 + 32)];
    [(PKPaymentSetupNavigationController *)v11 setPaymentSetupMode:*(a1 + 56)];
    [(PKPaymentSetupNavigationController *)v11 setGroupsController:*(*(a1 + 32) + 1424)];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __231__PKPassGroupsViewController_startPaymentPreflight_withPaymentSetupMode_referrerIdentifier_referralSource_campaignIdentifier_paymentNetworks_transitNetworkIdentifiers_allowedFeatureIdentifiers_productIdentifiers_sectionIdentifier___block_invoke_4;
    v33[3] = &unk_1E8019A98;
    v33[4] = *(a1 + 32);
    v34 = v11;
    v35 = *(a1 + 48);
    v12 = v11;
    [(PKPaymentSetupNavigationController *)v12 preflightWithCompletion:v33];

    goto LABEL_16;
  }

  if (v7)
  {
    v13 = *(a1 + 32);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __231__PKPassGroupsViewController_startPaymentPreflight_withPaymentSetupMode_referrerIdentifier_referralSource_campaignIdentifier_paymentNetworks_transitNetworkIdentifiers_allowedFeatureIdentifiers_productIdentifiers_sectionIdentifier___block_invoke_351;
    v31[3] = &unk_1E8010AD8;
    v32 = *(a1 + 48);
    [v13 presentPassWithUniqueID:v7 animated:1 completionHandler:v31];

    goto LABEL_16;
  }

  (*(*(a1 + 48) + 16))();
  v14 = [v8 domain];
  v15 = [v14 isEqualToString:*MEMORY[0x1E69BB840]];

  if (v15)
  {
    if ([v8 code] == 6)
    {
      v16 = MEMORY[0x1E69B8540];
      v17 = *MEMORY[0x1E69BB6E8];
      v41[0] = *MEMORY[0x1E69BB6E0];
      v41[1] = v17;
      v41[2] = *MEMORY[0x1E69BB728];
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
      v19 = *MEMORY[0x1E69BABE8];
      v39[0] = *MEMORY[0x1E69BA680];
      v39[1] = v19;
      v20 = *MEMORY[0x1E69BB458];
      v40[0] = *MEMORY[0x1E69BA818];
      v40[1] = v20;
      v21 = MEMORY[0x1E695DF20];
      v22 = v40;
      v23 = v39;
LABEL_12:
      v27 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:2];
      [v16 subjects:v18 sendEvent:v27];

      goto LABEL_13;
    }

    if ([v8 code] == 9)
    {
      v16 = MEMORY[0x1E69B8540];
      v24 = *MEMORY[0x1E69BB6E8];
      v38[0] = *MEMORY[0x1E69BB6E0];
      v38[1] = v24;
      v38[2] = *MEMORY[0x1E69BB728];
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
      v25 = *MEMORY[0x1E69BABE8];
      v36[0] = *MEMORY[0x1E69BA680];
      v36[1] = v25;
      v26 = *MEMORY[0x1E69BB590];
      v37[0] = *MEMORY[0x1E69BA818];
      v37[1] = v26;
      v21 = MEMORY[0x1E695DF20];
      v22 = v37;
      v23 = v36;
      goto LABEL_12;
    }
  }

LABEL_13:
  v28 = PKAlertForDisplayableErrorWithHandlers(v8, 0, 0, 0);
  if (v28)
  {
    v29 = *(a1 + 32);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __231__PKPassGroupsViewController_startPaymentPreflight_withPaymentSetupMode_referrerIdentifier_referralSource_campaignIdentifier_paymentNetworks_transitNetworkIdentifiers_allowedFeatureIdentifiers_productIdentifiers_sectionIdentifier___block_invoke_2_352;
    v30[3] = &unk_1E8010970;
    v30[4] = v29;
    [v29 presentViewController:v28 animated:1 completion:v30];
  }

LABEL_16:
}

void __231__PKPassGroupsViewController_startPaymentPreflight_withPaymentSetupMode_referrerIdentifier_referralSource_campaignIdentifier_paymentNetworks_transitNetworkIdentifiers_allowedFeatureIdentifiers_productIdentifiers_sectionIdentifier___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];

  if (v2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __231__PKPassGroupsViewController_startPaymentPreflight_withPaymentSetupMode_referrerIdentifier_referralSource_campaignIdentifier_paymentNetworks_transitNetworkIdentifiers_allowedFeatureIdentifiers_productIdentifiers_sectionIdentifier___block_invoke_5;
    v7[3] = &unk_1E8010E20;
    v6 = *(a1 + 48);
    v7[4] = *(a1 + 32);
    v8 = v6;
    [v4 presentViewController:v5 animated:1 completion:v7];
  }
}

void __231__PKPassGroupsViewController_startPaymentPreflight_withPaymentSetupMode_referrerIdentifier_referralSource_campaignIdentifier_paymentNetworks_transitNetworkIdentifiers_allowedFeatureIdentifiers_productIdentifiers_sectionIdentifier___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = PKLogFacilityTypeGetObject();
  v3 = os_signpost_id_make_with_pointer(v2, *(a1 + 32));
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v2, OS_SIGNPOST_INTERVAL_END, v4, "provisioning:preflight:add_card_button_total", "", v7, 2u);
    }
  }

  v5 = PKLogFacilityTypeGetObject();
  v6 = PKTimeProfileEnd();
}

void __231__PKPassGroupsViewController_startPaymentPreflight_withPaymentSetupMode_referrerIdentifier_referralSource_campaignIdentifier_paymentNetworks_transitNetworkIdentifiers_allowedFeatureIdentifiers_productIdentifiers_sectionIdentifier___block_invoke_2_352(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  v3 = PKTimeProfileEnd();

  v4 = PKLogFacilityTypeGetObject();
  v5 = os_signpost_id_make_with_pointer(v4, *(a1 + 32));
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v4, OS_SIGNPOST_INTERVAL_END, v6, "provisioning:preflight:add_card_button_total", "", v7, 2u);
    }
  }
}

void __231__PKPassGroupsViewController_startPaymentPreflight_withPaymentSetupMode_referrerIdentifier_referralSource_campaignIdentifier_paymentNetworks_transitNetworkIdentifiers_allowedFeatureIdentifiers_productIdentifiers_sectionIdentifier___block_invoke_354(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = @"SetupPayments";
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Enabling Idle Timer: %@", buf, 0xCu);
  }

  v7 = [*(a1 + 32) paymentSetupProductModel];
  v8 = [v7 allSetupProducts];

  if (a2 && *(a1 + 72) == 3 && (*(a1 + 40) || *(a1 + 48) || *(a1 + 56)) && [v8 count] == 1)
  {
    v9 = [v8 firstObject];
    v10 = [v9 configuration];
    v11 = [v10 type];

    if (v11 == 12)
    {
      v12 = [v9 criteriaIdentifier];
      v13 = [*(a1 + 32) paymentOffersController];
      v14 = [v13 paymentOfferCriteriaForIdentifier:v12];

      if (!v14)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v22 = v12;
          v23 = 2112;
          v24 = v9;
          _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "There is no payment offer criteria defined for criteriaIdentifier %@ defined for issuer installment prodiuct %@", buf, 0x16u);
        }
      }

      v15 = [v14 associatedPassUniqueID];
      if (v15)
      {
        v16 = v15;
        (*(*(a1 + 64) + 16))();

LABEL_20:
        goto LABEL_17;
      }
    }

    v17 = *(a1 + 32);
    v18 = [v8 firstObject];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __231__PKPassGroupsViewController_startPaymentPreflight_withPaymentSetupMode_referrerIdentifier_referralSource_campaignIdentifier_paymentNetworks_transitNetworkIdentifiers_allowedFeatureIdentifiers_productIdentifiers_sectionIdentifier___block_invoke_355;
    v19[3] = &unk_1E8010B28;
    v20 = *(a1 + 64);
    [v17 setupProductForProvisioning:v18 includePurchases:1 withCompletionHandler:v19];

    goto LABEL_20;
  }

  (*(*(a1 + 64) + 16))();
LABEL_17:
}

- (void)addVASPassWithIdentifier:(id)identifier
{
  v21[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MEMORY[0x1E695DFF8];
  v6 = PKVASPassCacheDirectoryPath();
  v7 = [v5 fileURLWithPath:v6];

  v8 = [v7 URLByAppendingPathComponent:identifierCopy isDirectory:0];

  v9 = [v8 URLByAppendingPathExtension:*MEMORY[0x1E69BC390]];

  v16 = 0;
  v10 = [MEMORY[0x1E69B8A20] createWithFileURL:v9 warnings:0 error:&v16];
  v11 = v16;
  v12 = PKLogFacilityTypeGetObject();
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [v10 uniqueID];
      *buf = 138412290;
      v18 = uniqueID;
      _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "Add VAS pass with identifier: %@", buf, 0xCu);
    }

    v21[0] = v10;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [(PKPassGroupsViewController *)self _presentAddPassesControllerWithPasses:v13];
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v18 = identifierCopy;
    v19 = 2114;
    v20 = v11;
    _os_log_error_impl(&dword_1BD026000, v13, OS_LOG_TYPE_ERROR, "Failed to add VAS pass with identifier: %{public}@ %{public}@.", buf, 0x16u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager removeItemAtURL:v9 error:0];
}

- (void)presentOrderManagementAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PKPassGroupsViewController_presentOrderManagementAnimated_completion___block_invoke;
  aBlock[3] = &unk_1E80150A8;
  aBlock[4] = self;
  v13 = animatedCopy;
  v7 = completionCopy;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  presentedViewController = [(PKPassGroupsViewController *)self presentedViewController];
  v10 = presentedViewController;
  if (presentedViewController && ([presentedViewController isBeingDismissed] & 1) == 0)
  {
    if ([v10 conformsToProtocol:&unk_1F3E3D608])
    {
      (*(v7 + 2))(v7, v10);
    }

    else
    {
      [(PKPassGroupsViewController *)self dismissViewControllerAnimated:animatedCopy completion:v8];
    }
  }

  else
  {
    v8[2](v8);
  }
}

void __72__PKPassGroupsViewController_presentOrderManagementAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [(objc_class *)getFKOrderManagementViewControllerProviderClass() makeViewController];
  v3 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__PKPassGroupsViewController_presentOrderManagementAnimated_completion___block_invoke_2;
  v7[3] = &unk_1E8010E20;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v2;
  v9 = v5;
  v6 = v2;
  [v4 presentViewController:v6 animated:v3 completion:v7];
}

uint64_t __72__PKPassGroupsViewController_presentOrderManagementAnimated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)presentMerchantTokenWithIdentifier:(id)identifier animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  identifierCopy = identifier;
  completionCopy = completion;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __85__PKPassGroupsViewController_presentMerchantTokenWithIdentifier_animated_completion___block_invoke;
  v18 = &unk_1E8024548;
  v10 = identifierCopy;
  v19 = v10;
  selfCopy = self;
  v22 = animatedCopy;
  v11 = completionCopy;
  v21 = v11;
  v12 = _Block_copy(&v15);
  v13 = [(PKPassGroupsViewController *)self presentedViewController:v15];
  v14 = v13;
  if (v13 && ([v13 isBeingDismissed] & 1) == 0)
  {
    if ([v14 conformsToProtocol:&unk_1F3E3BF80])
    {
      (*(v11 + 2))(v11, v14);
    }

    else
    {
      [(PKPassGroupsViewController *)self dismissViewControllerAnimated:animatedCopy completion:v12];
    }
  }

  else
  {
    v12[2](v12);
  }
}

void __85__PKPassGroupsViewController_presentMerchantTokenWithIdentifier_animated_completion___block_invoke(uint64_t a1)
{
  v2 = +[PKMerchantTokenUnifiedListViewControllerProvider makeViewController];
  v3 = v2;
  if (*(a1 + 32))
  {
    [v2 presentMerchantTokenWithIdentifier:?];
  }

  v4 = *(a1 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__PKPassGroupsViewController_presentMerchantTokenWithIdentifier_animated_completion___block_invoke_2;
  v8[3] = &unk_1E8010E20;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 presentViewController:v7 animated:v4 completion:v8];
}

uint64_t __85__PKPassGroupsViewController_presentMerchantTokenWithIdentifier_animated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)presentAuthorizationFlowAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __74__PKPassGroupsViewController_presentAuthorizationFlowAnimated_completion___block_invoke;
  v18 = &unk_1E8021ED8;
  v7 = completionCopy;
  v19 = v7;
  objc_copyWeak(&v20, &location);
  v21 = animatedCopy;
  v8 = _Block_copy(&v15);
  v9 = [(UIViewController *)self pkui_frontMostViewController:v15];
  v10 = v9;
  if (v9 && ([v9 isBeingDismissed] & 1) == 0)
  {
    if ([v10 conformsToProtocol:&unk_1F3E3D668])
    {
      (*(v7 + 2))(v7, v10);
    }

    else
    {
      presentingViewController = [v10 presentingViewController];
      v12 = [presentingViewController conformsToProtocol:&unk_1F3E3D668];

      if (v12)
      {
        presentingViewController2 = [v10 presentingViewController];
        (*(v7 + 2))(v7, presentingViewController2);
      }

      else
      {
        childViewControllers = [v10 childViewControllers];
        presentingViewController2 = [childViewControllers pk_firstObjectPassingTest:&__block_literal_global_383];

        if (presentingViewController2)
        {
          (*(v7 + 2))(v7, presentingViewController2);
        }

        else
        {
          [(PKPassGroupsViewController *)self dismissViewControllerAnimated:animatedCopy completion:v8];
          presentingViewController2 = 0;
        }
      }
    }
  }

  else
  {
    v8[2](v8);
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __74__PKPassGroupsViewController_presentAuthorizationFlowAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E6967DB0]);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__PKPassGroupsViewController_presentAuthorizationFlowAnimated_completion___block_invoke_2;
  v3[3] = &unk_1E8024FB8;
  v4 = *(a1 + 32);
  objc_copyWeak(&v5, (a1 + 40));
  v6 = *(a1 + 48);
  [v2 authorizationSessionWithCompletion:v3];
  objc_destroyWeak(&v5);
}

void __74__PKPassGroupsViewController_presentAuthorizationFlowAnimated_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __74__PKPassGroupsViewController_presentAuthorizationFlowAnimated_completion___block_invoke_376;
    v5[3] = &unk_1E8020C68;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    v6 = v3;
    v9 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], v5);

    objc_destroyWeak(&v8);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BD026000, v4, OS_LOG_TYPE_ERROR, "Failed to handle BankConnect auth redirect. The auth session is nil!", buf, 2u);
    }
  }
}

void __74__PKPassGroupsViewController_presentAuthorizationFlowAnimated_completion___block_invoke_376(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69B8A58]);
    v4 = [*(a1 + 32) fpanId];
    if (v4 && (v5 = v4, [*(a1 + 32) fpanId], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "passWithFPANIdentifier:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, v5, v7))
    {
      v8 = [v7 uniqueID];
      v9 = *(a1 + 56);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __74__PKPassGroupsViewController_presentAuthorizationFlowAnimated_completion___block_invoke_2_377;
      v10[3] = &unk_1E8024F90;
      v10[4] = WeakRetained;
      v12 = *(a1 + 40);
      v11 = *(a1 + 32);
      v13 = *(a1 + 56);
      [WeakRetained presentPassWithUniqueID:v8 animated:v9 completionHandler:v10];
    }

    else
    {
      [WeakRetained presentAuthorizationViewControllerWithSession:*(a1 + 32) animated:*(a1 + 56) completion:*(a1 + 40)];
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __74__PKPassGroupsViewController_presentAuthorizationFlowAnimated_completion___block_invoke_2_377(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || (v3 = [*(a1 + 32) _dashboardPassGroupViewControllerWithRequirements:3], v3, !v3))
  {
    v9 = *(*(a1 + 48) + 16);

    return v9();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    v7 = *(a1 + 48);

    return [v4 presentAuthorizationViewControllerWithSession:v5 animated:v6 completion:v7];
  }
}

- (void)presentAuthorizationViewControllerWithSession:(id)session animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  sessionCopy = session;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v10 = +[PKDismissalPreventionAssertionManager sharedInstance];
  acquireAssertion = [v10 acquireAssertion];

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__65;
  v32 = __Block_byref_object_dispose__65;
  v33 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PKPassGroupsViewController_presentAuthorizationViewControllerWithSession_animated_completion___block_invoke;
  aBlock[3] = &unk_1E8025000;
  objc_copyWeak(&v26, &location);
  v12 = completionCopy;
  v25 = v12;
  v27 = animatedCopy;
  v13 = acquireAssertion;
  v24 = v13;
  v14 = _Block_copy(aBlock);
  v15 = [(objc_class *)getFKBankConnectAuthorizationViewControllerProviderClass_0() makeAuthorizationViewControllerForAuthorizationSession:sessionCopy completion:v14];
  v16 = v29[5];
  v29[5] = v15;

  pkui_frontMostViewController = [(UIViewController *)self pkui_frontMostViewController];
  v18 = v29[5];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __96__PKPassGroupsViewController_presentAuthorizationViewControllerWithSession_animated_completion___block_invoke_2;
  v20[3] = &unk_1E8017240;
  v19 = v12;
  v21 = v19;
  v22 = &v28;
  [pkui_frontMostViewController presentViewController:v18 animated:animatedCopy completion:v20];

  objc_destroyWeak(&v26);
  _Block_object_dispose(&v28, 8);

  objc_destroyWeak(&location);
}

void __96__PKPassGroupsViewController_presentAuthorizationViewControllerWithSession_animated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained dismissViewControllerAnimated:*(a1 + 56) completion:0];
    [*(a1 + 32) invalidate];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)presentBackgroundRefreshConfirmationAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__PKPassGroupsViewController_presentBackgroundRefreshConfirmationAnimated___block_invoke;
  v8[3] = &unk_1E8013F80;
  v8[4] = self;
  animatedCopy2 = animated;
  v5 = _Block_copy(v8);
  presentedViewController = [(PKPassGroupsViewController *)self presentedViewController];
  v7 = presentedViewController;
  if (presentedViewController && ([presentedViewController isBeingDismissed] & 1) == 0)
  {
    [(PKPassGroupsViewController *)self dismissViewControllerAnimated:animatedCopy completion:v5];
  }

  else
  {
    v5[2](v5);
  }
}

void __75__PKPassGroupsViewController_presentBackgroundRefreshConfirmationAnimated___block_invoke(uint64_t a1)
{
  v2 = [(objc_class *)getFKBankConnectBackgroundRefreshConfirmationViewControllerProviderClass() makeViewController];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) presentViewController:v2 animated:*(a1 + 40) completion:0];
    v2 = v3;
  }
}

- (void)dismissDiscoveryArticleViewController:(id)controller afterActionCompleted:(BOOL)completed withRelevantPassUniqueIdenitifer:(id)idenitifer
{
  completedCopy = completed;
  idenitiferCopy = idenitifer;
  v8 = idenitiferCopy;
  v9 = 0;
  if (idenitiferCopy && completedCopy)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __122__PKPassGroupsViewController_dismissDiscoveryArticleViewController_afterActionCompleted_withRelevantPassUniqueIdenitifer___block_invoke;
    v13 = &unk_1E8010A10;
    selfCopy = self;
    v15 = idenitiferCopy;
    v9 = _Block_copy(&v10);
  }

  [(PKPassGroupsViewController *)self dismissPresentedVCsWithRequirements:0 animated:1 performAction:v9, v10, v11, v12, v13, selfCopy];
}

- (void)_invalidateForType:(int64_t)type
{
  v17 = *MEMORY[0x1E69E9840];
  invalidationStatus = self->_invalidationStatus;
  if (invalidationStatus != type)
  {
    self->_invalidationStatus = type;
    if (type >= 1 && invalidationStatus <= 0)
    {
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        groupStackView = self->_groupStackView;
        v13 = 134349312;
        selfCopy2 = self;
        v15 = 2050;
        v16 = groupStackView;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKPassGroupsViewController (%{public}p:%{public}p): partially invalidated.", &v13, 0x16u);
      }

      [(PKPassGroupStackView *)self->_groupStackView _tombstone];
      [(PKPaymentService *)self->_paymentService unregisterObserver:self];
      paymentService = self->_paymentService;
      self->_paymentService = 0;

      [(PKPassGroupsViewController *)self _registerForExpressTransactionNotifications:0];
    }

    if (type > 1 && invalidationStatus <= 1)
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = self->_groupStackView;
        v13 = 134349312;
        selfCopy2 = self;
        v15 = 2050;
        v16 = v10;
        _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "PKPassGroupsViewController (%{public}p:%{public}p): invalidated.", &v13, 0x16u);
      }

      self->_externalNavigationController = 0;
      [(PKPassGroupStackView *)self->_groupStackView setPaused:1];
      [(PKPassGroupStackView *)self->_groupStackView setDelegate:0];
      v11 = self->_groupStackView;
      if (v11)
      {
        v11->_externalNavigationController = 0;
        v12 = self->_groupStackView;
      }

      else
      {
        v12 = 0;
      }

      [(PKPassGroupStackView *)v12 invalidate];
    }
  }
}

- (id)_passGroupsViewNavigationController
{
  result = [(PKPassGroupsViewController *)self navigationController];
  if (result)
  {
    v3 = result;
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

- (id)_dashboardPassGroupViewControllerWithRequirements:(unsigned __int8)requirements
{
  _dashboardPassGroupViewController = [(PKPassGroupsViewController *)self _dashboardPassGroupViewController];
  v6 = _dashboardPassGroupViewController;
  if (_dashboardPassGroupViewController)
  {
    navigationController = [_dashboardPassGroupViewController navigationController];
    v8 = navigationController;
    if ((requirements & 1) != 0 && ([navigationController presentedViewController], v9 = objc_claimAutoreleasedReturnValue(), v9, v9) || (requirements & 2) != 0 && (objc_msgSend(v8, "topViewController"), v10 = objc_claimAutoreleasedReturnValue(), v10, v10 != self))
    {
      v11 = 0;
    }

    else
    {
      v11 = v6;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_setExternalNavigationController:(void *)controller
{
  v3 = a2;
  if (controller)
  {
    if (controller[126] == 2)
    {

      v3 = 0;
    }

    if (controller[180] != v3)
    {
      controller[180] = v3;
      v4 = controller[144];
      if (v4)
      {
        *(v4 + 3056) = v3;
      }
    }
  }
}

- (void)_updateFooterSuppressionAnimated:(BOOL)animated
{
  if (self->_persistentCardEmulationQueued)
  {
    animatedCopy = animated;
    v7 = objc_alloc_init(PKPassPresentationContext);
    [(PKPassPresentationContext *)v7 setPersistentCardEmulation:1];
    modalGroupFrontmostPass = [(PKPassGroupStackView *)self->_groupStackView modalGroupFrontmostPass];
    uniqueID = [modalGroupFrontmostPass uniqueID];
    [(PKPassGroupsViewController *)self presentPassWithUniqueID:uniqueID context:v7 animated:animatedCopy completionHandler:0];
  }

  else
  {
    v7 = 0;
  }

  [(PKPassGroupsViewController *)self _updateFooterSuppressionWithContext:v7];
}

- (void)_updateFooterSuppressionWithContext:(id)context
{
  contextCopy = context;
  v5 = atomic_load(&FooterSuppressionCounter);
  v8 = contextCopy;
  if (v5 || self->_instanceFooterSuppressionCounter)
  {
    [(PKPassGroupStackView *)self->_groupStackView setFooterSuppressed:1 withContext:contextCopy];
    [(PKPassGroupStackView *)self->_groupStackView setExternalFooterSuppressed:1];
    if (!self->_invalidationStatus)
    {
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      [mEMORY[0x1E69DC668] pkui_consumeSharedRootAuthenticationContext];
    }
  }

  else
  {
    viewAppeared = self->_viewAppeared;
    if (viewAppeared)
    {
      self->_persistentCardEmulationQueued = 0;
    }

    [(PKPassGroupStackView *)self->_groupStackView setFooterSuppressed:!viewAppeared withContext:contextCopy];
    [(PKPassGroupStackView *)self->_groupStackView setExternalFooterSuppressed:0];
  }
}

- (id)_passFromGroupsControllerWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy && (v5 = [(PKGroupsController *)self->_groupsController groupIndexForPassUniqueID:identifierCopy], v5 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = [(PKGroupsController *)self->_groupsController groupAtIndex:v5];
    v8 = [v7 indexForPassUniqueID:identifierCopy];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      v6 = [v7 passAtIndex:v8];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_createNavigationGroups
{
  kind = self->_kind;
  if (kind == 2)
  {

    _createTrailingItemGroups = [(PKPassGroupsViewController *)self _createTrailingItemGroups];
    goto LABEL_7;
  }

  if (kind == 1)
  {

    _createTrailingItemGroups = [(PKPassGroupsViewController *)self _application_createTrailingItemGroups];
LABEL_7:

    v6 = [[PKNavigationItemController alloc] initWithDelegate:?];
    controller = self->_navigationItem.controller;
    self->_navigationItem.controller = v6;
    goto LABEL_8;
  }

  if (self->_kind)
  {
    goto LABEL_9;
  }

  controller = [(PKPassGroupsViewController *)self _createTrailingItemGroups];
LABEL_8:

LABEL_9:

  [(PKPassGroupsViewController *)self _updateNavigationItemAnimated:0];
}

- (id)_createLeadingItemGroups
{
  if (*(self + 1064) == 1)
  {
    __break(1u);
  }

  else
  {
    *(self + 1064) = 1;
    return [self _leadingItemGroups];
  }

  return self;
}

- (id)_leadingItemGroups
{
  if (*(self + 1064))
  {
    return MEMORY[0x1E695E0F0];
  }

  __break(1u);
  return self;
}

- (id)_createTrailingItemGroups
{
  if (*(self + 992) == 1 || *(self + 1136) == 1)
  {
    __break(1u);
  }

  else
  {
    *(self + 1136) = 1;
    return [self _trailingItemGroups];
  }

  return self;
}

- (id)_application_createTrailingItemGroups
{
  if (*(self + 992) != 1 || (v2 = self, v3 = (self + 1024), *(self + 1136) == 1))
  {
    __break(1u);
  }

  else
  {
    *(self + 1136) = 1;
    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__PKPassGroupsViewController__application_createTrailingItemGroups__block_invoke;
    aBlock[3] = &unk_1E8025048;
    objc_copyWeak(&v44, location);
    v4 = _Block_copy(aBlock);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __67__PKPassGroupsViewController__application_createTrailingItemGroups__block_invoke_3;
    v41[3] = &unk_1E8025098;
    v38 = v4;
    v42 = v38;
    v5 = _Block_copy(v41);
    v6 = [[PKPassGroupsMoreMenuFactory alloc] initWithAutoFillCardManager:*(v2 + 170)];
    v7 = *(v2 + 143);
    *(v2 + 143) = v6;

    [*(v2 + 143) setArePaymentPassesProvisioned:{objc_msgSend(v2, "doesContainActivatedPaymentPasses")}];
    [*(v2 + 143) setExpiredPassesCount:{objc_msgSend(*(v2 + 178), "expiredSectionPassesCount")}];
    [*(v2 + 143) setDelegate:v2];
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ellipsis"];
    v9 = PKLocalizedString(&cfstr_More.isa);
    v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v9 image:v8 target:0 action:0 menu:0];
    v11 = objc_alloc(MEMORY[0x1E69DC708]);
    moreMenu = [*(v2 + 143) moreMenu];
    v13 = [v11 initWithTitle:v9 image:v8 target:0 action:0 menu:moreMenu];

    objc_storeStrong(v3 + 10, v10);
    objc_storeStrong(v3 + 11, v13);
    v14 = PKLocalizedPaymentString(&cfstr_MoreButtonTool_5.isa);
    [v13 setAccessibilityLabel:v14];

    [v13 setAccessibilityIdentifier:*MEMORY[0x1E69B9970]];
    v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus"];
    v16 = PKLocalizedPaymentString(&cfstr_ApplePay_0.isa);
    v17 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v16 image:v15 target:0 action:0 menu:0];
    v18 = objc_alloc(MEMORY[0x1E69DC708]);
    v19 = MEMORY[0x1E69DC628];
    v20 = v5[2](v5, &__block_literal_global_412);
    v21 = [v19 actionWithTitle:v16 image:v15 identifier:0 handler:v20];
    v22 = [v18 initWithPrimaryAction:v21];

    objc_storeStrong(v3 + 7, v17);
    objc_storeStrong(v3 + 8, v22);
    v23 = PKLocalizedPaymentString(&cfstr_AddCard.isa);
    [v22 setAccessibilityLabel:v23];

    [v22 setAccessibilityIdentifier:*MEMORY[0x1E69B93E8]];
    if (PKInWalletSearchEnabled())
    {
      v24 = objc_alloc(MEMORY[0x1E69DC708]);
      v25 = MEMORY[0x1E69DC628];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __67__PKPassGroupsViewController__application_createTrailingItemGroups__block_invoke_6;
      v40[3] = &unk_1E80250E0;
      v40[4] = v2;
      v26 = v5[2](v5, v40);
      v27 = [v25 actionWithHandler:{v26, v38}];
      v28 = [v24 initWithBarButtonSystemItem:12 primaryAction:v27];

      objc_storeStrong(v3 + 12, v28);
      v29 = PKLocalizedPaymentString(&cfstr_SearchAccessib.isa);
      [v28 setAccessibilityLabel:v29];

      [v28 setAccessibilityIdentifier:*MEMORY[0x1E69B9BD0]];
    }

    v30 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"person.crop.circle", v38}];
    v31 = PKLocalizedString(&cfstr_DashboardMoreM_50.isa);
    v32 = objc_alloc(MEMORY[0x1E69DC708]);
    v33 = MEMORY[0x1E69DC628];
    v34 = v5[2](v5, &__block_literal_global_431);
    v35 = [v33 actionWithTitle:v31 image:v30 identifier:0 handler:v34];
    v36 = [v32 initWithPrimaryAction:v35];

    objc_storeStrong(v3 + 13, v36);
    [v36 setAccessibilityIdentifier:*MEMORY[0x1E69B9A90]];

    _trailingItemGroups = [v2 _trailingItemGroups];
    objc_destroyWeak(&v44);
    objc_destroyWeak(location);
    return _trailingItemGroups;
  }

  return self;
}

id __67__PKPassGroupsViewController__application_createTrailingItemGroups__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__PKPassGroupsViewController__application_createTrailingItemGroups__block_invoke_2;
  v7[3] = &unk_1E8023568;
  objc_copyWeak(&v9, (a1 + 32));
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(v7);

  objc_destroyWeak(&v9);

  return v5;
}

void __67__PKPassGroupsViewController__application_createTrailingItemGroups__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[128];
    if (!v5 || *(v5 + 56) != 1 || WeakRetained[131])
    {
      v6 = [WeakRetained viewIfLoaded];
      if (v6)
      {
        (*(*(a1 + 32) + 16))();
      }
    }
  }
}

id __67__PKPassGroupsViewController__application_createTrailingItemGroups__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__PKPassGroupsViewController__application_createTrailingItemGroups__block_invoke_4;
  v9[3] = &unk_1E8025070;
  v10 = v3;
  v5 = *(v4 + 16);
  v6 = v3;
  v7 = v5(v4, v9);

  return v7;
}

void __67__PKPassGroupsViewController__application_createTrailingItemGroups__block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (PKUIStoreDemoGatewayWithView(v7))
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __67__PKPassGroupsViewController__application_createTrailingItemGroups__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69B8540];
  v5 = *MEMORY[0x1E69BB718];
  v6 = *MEMORY[0x1E69BA440];
  v12[0] = *MEMORY[0x1E69BA680];
  v12[1] = v6;
  v7 = *MEMORY[0x1E69BB028];
  v13[0] = *MEMORY[0x1E69BA6F0];
  v13[1] = v7;
  v8 = MEMORY[0x1E695DF20];
  v9 = a3;
  v10 = a2;
  v11 = [v8 dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v4 subject:v5 sendEvent:v11];

  [v10 startPaymentPreflight:v9 withPaymentSetupMode:0 referrerIdentifier:0 referralSource:*MEMORY[0x1E69BB0E8] campaignIdentifier:0 paymentNetworks:0 transitNetworkIdentifiers:0 allowedFeatureIdentifiers:0 productIdentifiers:0 sectionIdentifier:0];
}

void __67__PKPassGroupsViewController__application_createTrailingItemGroups__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 navigationController];
  v4 = [v3 presentedViewController];

  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Another VC already presented", buf, 2u);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    v6 = [[PKSearchResultsViewController alloc] initWithPaymentDataProvider:v5 transactionSourceCollection:0 familyCollection:0];
    [(PKSearchResultsViewController *)v6 preflightWithCompletion:0];
    [(PKSearchResultsViewController *)v6 setDelegate:*(a1 + 32)];
    v7 = [objc_alloc(MEMORY[0x1E69DCF10]) initWithSearchResultsController:0];
    [v7 setSearchResultsUpdater:v6];
    v8 = [v7 searchBar];
    [v8 setDelegate:v6];
    v9 = [v8 searchTextField];
    [v9 setAllowsCopyingTokens:0];

    v10 = [[PKNavigationController alloc] initWithRootViewController:v6];
    [(PKNavigationController *)v10 setModalPresentationStyle:5];
    [(PKNavigationController *)v10 setModalTransitionStyle:2];
    v11 = [(PKSearchResultsViewController *)v6 navigationItem];
    [v11 setSearchController:v7];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__PKPassGroupsViewController__application_createTrailingItemGroups__block_invoke_418;
    v13[3] = &unk_1E8010970;
    v14 = v7;
    v12 = v7;
    [v3 presentViewController:v10 animated:1 completion:v13];
  }
}

void __67__PKPassGroupsViewController__application_createTrailingItemGroups__block_invoke_418(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PKPassGroupsViewController__application_createTrailingItemGroups__block_invoke_2_419;
  block[3] = &unk_1E8010970;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __67__PKPassGroupsViewController__application_createTrailingItemGroups__block_invoke_2_419(uint64_t a1)
{
  v1 = [*(a1 + 32) searchBar];
  [v1 becomeFirstResponder];
}

void __67__PKPassGroupsViewController__application_createTrailingItemGroups__block_invoke_3_429(uint64_t a1, void *a2)
{
  v6 = a2;
  v2 = [v6 navigationController];
  v3 = [v2 presentedViewController];

  if (!v3)
  {
    v4 = [[PKInboxViewController alloc] initWithInboxDataSource:v6[168] contactAvatarManager:v6[173] context:0];
    v5 = [[PKNavigationController alloc] initWithRootViewController:v4];
    [v2 presentViewController:v5 animated:1 completion:0];
  }
}

- (id)_trailingItemGroups
{
  v16[2] = *MEMORY[0x1E69E9840];
  p_navigationItem = &self->_navigationItem;
  if (!self->_navigationItem.trailing.created)
  {
    __break(1u);
  }

  if (self->_kind != 1)
  {
    return MEMORY[0x1E695E0F0];
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(PKInboxDataSource *)self->_inboxDataSource inboxVisible])
  {
    badgeCount = [(PKInboxDataSource *)self->_inboxDataSource badgeCount];
    if (badgeCount)
    {
      v6 = [MEMORY[0x1E69DC718] badgeWithCount:badgeCount];
      [(UIBarButtonItem *)p_navigationItem->trailing.more.items.inbox setBadge:v6];
    }

    else
    {
      [(UIBarButtonItem *)p_navigationItem->trailing.more.items.inbox setBadge:?];
    }

    [v4 addObject:p_navigationItem->trailing.more.items.inbox];
  }

  if (p_navigationItem->trailing.more.items.search)
  {
    [v4 addObject:?];
  }

  [v4 addObject:p_navigationItem->trailing.more.items.more];
  group = p_navigationItem->trailing.more.group;
  if (group)
  {
    [(UIBarButtonItemGroup *)group setBarButtonItems:v4];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E69DC720]) initWithBarButtonItems:v4 representativeItem:p_navigationItem->trailing.more.representativeItem];
    v10 = p_navigationItem->trailing.more.group;
    p_navigationItem->trailing.more.group = v9;
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v11 addObject:p_navigationItem->trailing.add.items.add];
  v12 = p_navigationItem->trailing.add.group;
  if (v12)
  {
    [(UIBarButtonItemGroup *)v12 setBarButtonItems:v11];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E69DC720]) initWithBarButtonItems:v11 representativeItem:p_navigationItem->trailing.add.representativeItem];
    v14 = p_navigationItem->trailing.add.group;
    p_navigationItem->trailing.add.group = v13;
  }

  v15 = p_navigationItem->trailing.more.group;
  v16[0] = p_navigationItem->trailing.add.group;
  v16[1] = v15;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  return objc_claimAutoreleasedReturnValue();
}

- (BOOL)_showNavigationBar
{
  if (self->_navigationItem.active.handle && self->_navigationItem.active.external)
  {
    return 0;
  }

  if (![(PKPassGroupsViewController *)self isViewLoaded])
  {
    return self->_kind == 1;
  }

  groupStackView = self->_groupStackView;

  return [(PKPassGroupStackView *)groupStackView needsNavigationBar];
}

- (void)_applyNavigationItemConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy)
  {
    v7 = configurationCopy;
    [(PKNavigationItemConfiguration *)configurationCopy applyToViewController:?];
    v5 = v7;
    v6 = (*(v7 + 9) & 1) == 0;
    if (self->_needsDefaultStatusBar != v6)
    {
      self->_needsDefaultStatusBar = v6;
      [(PKNavigationController *)self->_externalNavigationController setNeedsNavigationBarUpdateAnimated:1];
      v5 = v7;
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)_updateNavigationItemAnimated:(BOOL)animated
{
  animatedCopy = animated;
  controller = self->_navigationItem.controller;
  if (!controller || !controller->_activated || self->_navigationItem.active.handle)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__PKPassGroupsViewController__updateNavigationItemAnimated___block_invoke;
    aBlock[3] = &unk_1E8013F80;
    aBlock[4] = self;
    animatedCopy2 = animated;
    v5 = _Block_copy(aBlock);
    v6 = v5;
    v7 = MEMORY[0x1E69DD250];
    if (animatedCopy)
    {
      [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:6 animations:v5 completion:0];
    }

    else
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __60__PKPassGroupsViewController__updateNavigationItemAnimated___block_invoke_3;
      v8[3] = &unk_1E8010B50;
      v9 = v5;
      [v7 performWithoutAnimation:v8];
    }
  }
}

void __60__PKPassGroupsViewController__updateNavigationItemAnimated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1152);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__PKPassGroupsViewController__updateNavigationItemAnimated___block_invoke_2;
  v3[3] = &unk_1E8010970;
  v3[4] = v1;
  [(PKPassGroupStackView *)v2 _performGeometryUpdates:v3 animated:*(a1 + 40)];
}

void __60__PKPassGroupsViewController__updateNavigationItemAnimated___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1048);
  if (v3)
  {
    [(PKNavigationItemHandle *)v3 updateItem];
    v4 = *(a1 + 32);
    if (v4[1056] != 1)
    {
      return;
    }

    v5 = [(PKPassGroupsViewController *)v4 _navigationItemConfiguration];
    v6 = v5;
    if (v5)
    {
      v7 = [(PKNavigationItemConfiguration *)v5 copy];
      *(v7 + 8) = 1;
      v8 = *(v7 + 40);
      v11 = v7;
      *(v7 + 40) = 0;
    }

    else
    {
      v11 = 0;
    }

    v9 = *(a1 + 32);
    v10 = v11;
  }

  else
  {
    v10 = [(PKPassGroupsViewController *)v2 _navigationItemConfiguration];
    v9 = v2;
    v11 = v10;
  }

  [v9 _applyNavigationItemConfiguration:v10];
}

- (id)_peerPaymentAccountResolutionController
{
  peerPaymentAccountResolutionController = self->_peerPaymentAccountResolutionController;
  if (!peerPaymentAccountResolutionController)
  {
    v4 = [PKPeerPaymentAccountResolutionController alloc];
    account = [(PKPeerPaymentService *)self->_peerPaymentService account];
    mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
    v7 = [(PKPeerPaymentAccountResolutionController *)v4 initWithAccount:account webService:mEMORY[0x1E69B9020] context:0 delegate:self passLibraryDataProvider:self->_passLibraryDataProvider];
    v8 = self->_peerPaymentAccountResolutionController;
    self->_peerPaymentAccountResolutionController = v7;

    peerPaymentAccountResolutionController = self->_peerPaymentAccountResolutionController;
  }

  return peerPaymentAccountResolutionController;
}

- (void)dismissVerificationPageForPassWithDeviceAccountID:(id)d
{
  dCopy = d;
  presentedPass = [(PKPassGroupsViewController *)self presentedPass];
  paymentPass = [presentedPass paymentPass];

  deviceAccountIdentifier = [paymentPass deviceAccountIdentifier];
  v7 = [deviceAccountIdentifier isEqualToString:dCopy];

  if (v7)
  {
    objc_opt_class();
    presentedViewController = [(PKPassGroupsViewController *)self presentedViewController];
    v8PresentedViewController = [presentedViewController presentedViewController];
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      presentedViewController2 = [(PKPassGroupsViewController *)self presentedViewController];
      [presentedViewController2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)_presentAddPassesControllerWithPasses:(id)passes
{
  passesCopy = passes;
  v5 = [[PKAddPassesViewController alloc] initWithPasses:passesCopy fromPresentationSource:1];

  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__PKPassGroupsViewController__presentAddPassesControllerWithPasses___block_invoke;
    v8[3] = &unk_1E8010A10;
    v8[4] = self;
    v9 = v5;
    [(PKPassGroupsViewController *)self dismissPresentedVCsWithRequirements:0 animated:1 performAction:v8];
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Couldn't add passes", v7, 2u);
    }
  }
}

- (void)presentPaymentSetupController
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x1E69B8D48]);
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v4 = [v2 initWithWebService:mEMORY[0x1E69B8EF8]];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PKPassGroupsViewController_presentPaymentSetupController__block_invoke;
  v6[3] = &unk_1E8013B00;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [v5 validatePreconditionsAndRegister:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __59__PKPassGroupsViewController_presentPaymentSetupController__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PKPassGroupsViewController_presentPaymentSetupController__block_invoke_2;
  v7[3] = &unk_1E8013AD8;
  objc_copyWeak(&v10, (a1 + 40));
  v11 = a2;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);

  objc_destroyWeak(&v10);
}

void __59__PKPassGroupsViewController_presentPaymentSetupController__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 56) == 1 && *(a1 + 32) == 0)
    {
      v5 = [WeakRetained _paymentSetupNavigationControllerForProvisioningController:*(a1 + 40)];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __59__PKPassGroupsViewController_presentPaymentSetupController__block_invoke_3;
      v7[3] = &unk_1E8012FD0;
      v8 = v3;
      v9 = v5;
      v6 = v5;
      [v6 preflightWithCompletion:v7];
    }

    else
    {
      [WeakRetained _handleProvisioningError:?];
    }
  }
}

- (id)_paymentSetupNavigationControllerForProvisioningController:(id)controller
{
  controllerCopy = controller;
  v5 = [[PKPaymentSetupNavigationController alloc] initWithProvisioningController:controllerCopy context:0];

  [(PKNavigationController *)v5 setCustomFormSheetPresentationStyleForiPad];
  [(PKPaymentSetupNavigationController *)v5 setSetupDelegate:self];
  [(PKPaymentSetupNavigationController *)v5 setGroupsController:self->_groupsController];

  return v5;
}

- (void)_handleProvisioningError:(id)error
{
  v4 = [PKPaymentSetupNavigationController viewControllerForPresentingPaymentError:error];
  [(PKPassGroupsViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)dismissPresentedVCsWithRequirements:(unint64_t)requirements animated:(BOOL)animated performAction:(id)action
{
  animatedCopy = animated;
  actionCopy = action;
  if (requirements)
  {
    if (self->_invalidationStatus || !self->_foregroundActiveState.foregroundActive)
    {
      goto LABEL_29;
    }

    selfCopy = self;
    v17 = actionCopy;
  }

  else
  {
    selfCopy2 = self;
    v10 = actionCopy;
    if (!selfCopy2)
    {
      goto LABEL_30;
    }
  }

  navigationController = [(PKPassGroupsViewController *)self navigationController];
  presentedViewController = [navigationController presentedViewController];
  if (presentedViewController)
  {
    if ((requirements & 2) != 0)
    {
      viewServiceBundleID = [MEMORY[0x1E69BC740] viewServiceBundleID];
      if (viewServiceBundleID && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        serviceBundleIdentifier = [presentedViewController serviceBundleIdentifier];
        v15 = [serviceBundleIdentifier isEqualToString:viewServiceBundleID];

        if (v15)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }
    }

    if (!PresentationTrackingCounter)
    {
      isBeingPresented = [presentedViewController isBeingPresented];
      isBeingDismissed = [presentedViewController isBeingDismissed];
      transitionCoordinator = [presentedViewController transitionCoordinator];
      v21 = transitionCoordinator;
      if (transitionCoordinator)
      {
        LODWORD(transitionCoordinator) = [transitionCoordinator isCancelled];
      }

      if ((isBeingPresented | isBeingDismissed))
      {
        if (isBeingDismissed)
        {
          v22 = transitionCoordinator ^ 1;
        }

        else
        {
          v22 = isBeingPresented & transitionCoordinator;
        }

        if (!v21 || !v22)
        {
          goto LABEL_27;
        }

        objc_initWeak(&location, self);
        v23 = v29;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __SanitizePresentedVC_block_invoke;
        v29[3] = &unk_1E80251A0;
        objc_copyWeak(v31, &location);
        v31[1] = requirements;
        v32 = animatedCopy;
        v30 = actionCopy;
        [v21 animateAlongsideTransition:0 completion:v29];
        v24 = v30;
      }

      else
      {
        objc_initWeak(&location, self);
        v23 = v25;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __SanitizePresentedVC_block_invoke_3;
        v25[3] = &unk_1E80231E0;
        objc_copyWeak(v27, &location);
        v27[1] = requirements;
        v28 = animatedCopy;
        v26 = actionCopy;
        [navigationController dismissViewControllerAnimated:animatedCopy completion:v25];
        v24 = v26;
      }

      objc_destroyWeak(v23 + 5);
      objc_destroyWeak(&location);
LABEL_27:
    }

LABEL_28:

LABEL_29:
    return;
  }

  if (navigationController)
  {
    SanitizeNavigationController(requirements, animatedCopy, self, navigationController, actionCopy);
    goto LABEL_28;
  }

LABEL_30:
  __break(1u);
}

- (id)_appleCardUpsellAlertWithAccount:(id)account
{
  feature = [account feature];
  v5 = MEMORY[0x1E69DC650];
  v6 = PKLocalizedFeatureString();
  v7 = PKLocalizedFeatureString();
  v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v9 = MEMORY[0x1E69DC648];
  v10 = PKLocalizedPaymentString(&cfstr_AddCard.isa);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__PKPassGroupsViewController__appleCardUpsellAlertWithAccount___block_invoke;
  v16[3] = &unk_1E8025108;
  v16[4] = self;
  v16[5] = feature;
  v11 = [v9 actionWithTitle:v10 style:0 handler:v16];

  v12 = MEMORY[0x1E69DC648];
  v13 = PKLocalizedString(&cfstr_Cancel.isa);
  v14 = [v12 actionWithTitle:v13 style:1 handler:0];

  [v8 addAction:v11];
  [v8 addAction:v14];

  return v8;
}

void __63__PKPassGroupsViewController__appleCardUpsellAlertWithAccount___block_invoke(uint64_t a1)
{
  v3 = PKFeatureIdentifierToString();
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v3, 0}];
  [*(a1 + 32) presentPaymentSetupInMode:4 referrerIdentifier:0 referralSource:0 campaignIdentifier:0 paymentNetwork:0 transitNetworkIdentifier:0 allowedFeatureIdentifiers:v2 productIdentifiers:0 sectionIdentifier:0];
}

- (void)_beginSuppressingInstanceFooter
{
  instanceFooterSuppressionCounter = self->_instanceFooterSuppressionCounter;
  self->_instanceFooterSuppressionCounter = instanceFooterSuppressionCounter + 1;
  if (!instanceFooterSuppressionCounter)
  {
    [(PKPassGroupsViewController *)self _updateFooterSuppressionAnimated:1];
  }
}

- (void)_endSuppressingInstanceFooterWithContext:(id)context
{
  contextCopy = context;
  instanceFooterSuppressionCounter = self->_instanceFooterSuppressionCounter;
  if (instanceFooterSuppressionCounter)
  {
    v6 = instanceFooterSuppressionCounter - 1;
    self->_instanceFooterSuppressionCounter = v6;
    if (!v6)
    {
      [(PKPassGroupsViewController *)self _updateFooterSuppressionWithContext:contextCopy];
    }
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "INVARIANT VIOLATION: attempting to end footer suppression when already stopped.", v8, 2u);
    }
  }
}

- (id)_paymentPassDetailsViewControllerForPaymentPass:(id)pass
{
  if (pass)
  {
    groupsController = self->_groupsController;
    passCopy = pass;
    uniqueID = [passCopy uniqueID];
    v7 = [(PKGroupsController *)groupsController groupAtIndex:[(PKGroupsController *)groupsController groupIndexForPassUniqueID:uniqueID]];

    defaultDataProvider = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    v9 = [PKPaymentPassDetailViewController alloc];
    v10 = self->_groupsController;
    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
    v13 = [(PKPaymentPassDetailViewController *)v9 initWithPass:passCopy group:v7 groupsController:v10 webService:mEMORY[0x1E69B8EF8] peerPaymentWebService:mEMORY[0x1E69B9020] style:0 passLibraryDataProvider:self->_passLibraryDataProvider paymentServiceDataProvider:defaultDataProvider];

    [(PKPaymentPassDetailViewController *)v13 setShowDoneButton:1];
    groupStackView = [(PKPassGroupsViewController *)self groupStackView];
    [(PKPaymentPassDetailViewController *)v13 setDeleteOverrider:groupStackView];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_barcodePassDetailsViewControllerForBarcodePass:(id)pass
{
  if (pass)
  {
    passCopy = pass;
    v5 = [[PKBarcodePassDetailViewController alloc] initWithPass:passCopy];

    v6 = (PKRunningInRemoteContext() & 1) != 0 || [(PKPassGroupStackView *)self->_groupStackView isTableModalPresentation];
    [(PKBarcodePassDetailViewController *)v5 setShowCloseButton:v6];
    groupStackView = [(PKPassGroupsViewController *)self groupStackView];
    [(PKBarcodePassDetailViewController *)v5 setDeleteOverrider:groupStackView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_warnFailForward
{
  v13 = PDDeviceSpecificLocalizedStringKeyForKey();
  v3 = MEMORY[0x1E69DC650];
  v4 = PKLocalizedPaymentString(v13);
  v5 = PKLocalizedPaymentString(&cfstr_FailForwardUpd_1.isa);
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = MEMORY[0x1E69DC648];
  v8 = PKLocalizedPaymentString(&cfstr_FailForwardLea.isa);
  v9 = [v7 actionWithTitle:v8 style:1 handler:&__block_literal_global_463_0];
  [v6 addAction:v9];

  v10 = MEMORY[0x1E69DC648];
  v11 = PKLocalizedPaymentString(&cfstr_FailForwardDon.isa);
  v12 = [v10 actionWithTitle:v11 style:0 handler:0];

  [v6 addAction:v12];
  [v6 setPreferredAction:v12];
  [(PKPassGroupsViewController *)self presentViewController:v6 animated:1 completion:0];
}

void __46__PKPassGroupsViewController__warnFailForward__block_invoke()
{
  v0 = [MEMORY[0x1E695DFF8] URLWithString:*MEMORY[0x1E69BB8C8]];
  PKOpenURL();
}

- (void)_presentExpiredPasses
{
  MEMORY[0x1BFB41980](*MEMORY[0x1E69B9EB0], 0);
  v3 = [[PKExpiredPassesNavigationController alloc] initWithExistingGroupsController:self->_groupsController delegate:self];
  [(PKPassGroupsViewController *)self presentViewController:v3 animated:1 completion:0];
}

- (void)_handlePeerPaymentAccountDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PKPassGroupsViewController__handlePeerPaymentAccountDidChangeNotification___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_registerForExpressTransactionNotifications:(BOOL)notifications
{
  v19 = *MEMORY[0x1E69E9840];
  if (notifications && !self->_invalidationStatus)
  {
    if (self->_expressTransactionNotificationObserver == -1)
    {
      objc_initWeak(&location, self);
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __74__PKPassGroupsViewController__registerForExpressTransactionNotifications___block_invoke;
      v14 = &unk_1E8012010;
      objc_copyWeak(&v15, &location);
      v5 = _Block_copy(&v11);
      uTF8String = [*MEMORY[0x1E69BBB40] UTF8String];
      v7 = MEMORY[0x1E69E96A0];
      v8 = MEMORY[0x1E69E96A0];
      LODWORD(v7) = notify_register_dispatch(uTF8String, &self->_expressTransactionNotificationObserver, v7, v5) == 0;

      v9 = PKLogFacilityTypeGetObject();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v10)
        {
          *buf = 134349056;
          selfCopy3 = self;
          _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "PKPassGroupsViewController (%{public}p): registered for express transaction handling.", buf, 0xCu);
        }
      }

      else
      {
        if (v10)
        {
          *buf = 134349056;
          selfCopy3 = self;
          _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "PKPassGroupsViewController (%{public}p): ERROR - failed to register for express transaction notifications!", buf, 0xCu);
        }

        self->_expressTransactionNotificationObserver = -1;
      }

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }

  else if (self->_expressTransactionNotificationObserver != -1)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      selfCopy3 = self;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "PKPassGroupsViewController (%{public}p): unregistered for express transaction handling.", buf, 0xCu);
    }

    notify_cancel(self->_expressTransactionNotificationObserver);
    self->_expressTransactionNotificationObserver = -1;
  }
}

void __74__PKPassGroupsViewController__registerForExpressTransactionNotifications___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleExpressNotification];
}

- (void)_handleExpressNotification
{
  if (!self->_invalidationStatus && self->_foregroundActiveState.foregroundActive)
  {
    presentedViewController = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(presentedViewController, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1BD026000, presentedViewController, OS_LOG_TYPE_DEFAULT, "PKPassGroupsViewController: handling outstanding express transaction...", buf, 2u);
    }

    outstandingExpressTransactionState = [(PKPaymentService *)self->_paymentService outstandingExpressTransactionState];
    v5 = outstandingExpressTransactionState;
    if (!outstandingExpressTransactionState)
    {
      goto LABEL_30;
    }

    passUniqueIdentifier = [outstandingExpressTransactionState passUniqueIdentifier];
    if (!passUniqueIdentifier)
    {
LABEL_29:

LABEL_30:
      return;
    }

    if (![(PKPassGroupStackView *)self->_groupStackView presentedPassIsPerformingPayment])
    {
      isIgnorable = [v5 isIgnorable];
      goto LABEL_13;
    }

    modalGroupFrontmostPass = [(PKPassGroupStackView *)self->_groupStackView modalGroupFrontmostPass];
    uniqueID = [modalGroupFrontmostPass uniqueID];
    v9 = passUniqueIdentifier;
    v10 = uniqueID;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      if (!v10)
      {

LABEL_24:
        if ([v5 isIgnorable])
        {
          if (os_log_type_enabled(presentedViewController, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf[0]) = 0;
            v19 = "PKPassGroupsViewController: skipping express notification because a transaction is already underway and the event is for a failure transaction";
            goto LABEL_27;
          }

          goto LABEL_28;
        }

        isIgnorable = 0;
LABEL_13:
        presentedViewController = [(PKPassGroupsViewController *)self presentedViewController];
        if (presentedViewController || (v14 = -[PKPassGroupsViewController _passGroupsViewNavigationController](self, "_passGroupsViewNavigationController"), v15 = [v14 VCsState], v14, v15))
        {
          [(PKPassGroupsViewController *)self _beginSuppressingInstanceFooter];
          LOBYTE(v15) = 1;
        }

        v16 = objc_alloc_init(PKPassPresentationContext);
        -[PKPassPresentationContext setStandaloneTransactionType:](v16, "setStandaloneTransactionType:", [v5 standaloneTransactionType]);
        [(PKPassPresentationContext *)v16 setPostPayment:isIgnorable ^ 1];
        [(PKPassPresentationContext *)v16 setFieldDetect:isIgnorable];
        if (v15)
        {
          v17 = objc_alloc_init(PKPassPresentationContext);
          [(PKPassPresentationContext *)v17 setForceModalPresentation:1];
        }

        else
        {
          v17 = v16;
        }

        objc_initWeak(buf, self);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __56__PKPassGroupsViewController__handleExpressNotification__block_invoke;
        v20[3] = &unk_1E8025130;
        v23 = v15;
        objc_copyWeak(&v22, buf);
        v18 = v16;
        v21 = v18;
        [(PKPassGroupsViewController *)self presentPassWithUniqueID:passUniqueIdentifier context:v17 animated:1 completionHandler:v20];

        objc_destroyWeak(&v22);
        objc_destroyWeak(buf);

        goto LABEL_28;
      }

      v12 = [v9 isEqualToString:v10];

      if ((v12 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    if (os_log_type_enabled(presentedViewController, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v19 = "PKPassGroupsViewController: skipping express notification because a transaction for same pass already underway";
LABEL_27:
      _os_log_impl(&dword_1BD026000, presentedViewController, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
    }

LABEL_28:

    goto LABEL_29;
  }
}

void __56__PKPassGroupsViewController__handleExpressNotification__block_invoke(uint64_t a1, char a2)
{
  if (*(a1 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (a2)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(a1 + 32);
    }

    v7 = WeakRetained;
    [WeakRetained _endSuppressingInstanceFooterWithContext:v6];
  }
}

- (void)_handleChildViewControllerRequestingServiceMode:(id)mode
{
  v6 = objc_alloc_init(PKPassPresentationContext);
  [(PKPassPresentationContext *)v6 setPersistentCardEmulation:1];
  modalGroupFrontmostPass = [(PKPassGroupStackView *)self->_groupStackView modalGroupFrontmostPass];
  uniqueID = [modalGroupFrontmostPass uniqueID];
  [(PKPassGroupsViewController *)self presentPassWithUniqueID:uniqueID context:v6 animated:1 completionHandler:0];
}

- (void)_regionConfigurationDidChangeNotification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PKPassGroupsViewController__regionConfigurationDidChangeNotification__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __71__PKPassGroupsViewController__regionConfigurationDidChangeNotification__block_invoke(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Region configuration changed", v4, 2u);
  }

  return [*(*(a1 + 32) + 1152) updateHeaderAndSubheaderViewsIfNecessary];
}

- (BOOL)_canPerformExternalModalPresentation
{
  kind = self->_kind;
  if ((kind - 1) >= 2)
  {
    if (self->_kind)
    {
      __break(1u);
      return self;
    }
  }

  else
  {
    LOBYTE(kind) = !self->_inField;
  }

  LOBYTE(self) = kind & 1;
  return self;
}

- (void)paymentSetupDidFinish:(id)finish
{
  groupsController = self->_groupsController;
  finishCopy = finish;
  passes = [(PKGroupsController *)groupsController passes];
  provisioningController = [finishCopy provisioningController];

  provisionedPasses = [provisioningController provisionedPasses];

  reverseObjectEnumerator = [provisionedPasses reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__PKPassGroupsViewController_paymentSetupDidFinish___block_invoke;
  v16[3] = &unk_1E8025158;
  v11 = passes;
  v17 = v11;
  v12 = [allObjects pk_firstObjectPassingTest:v16];

  secureElementPass = [v12 secureElementPass];
  uniqueID = [secureElementPass uniqueID];

  if (uniqueID)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__PKPassGroupsViewController_paymentSetupDidFinish___block_invoke_3;
    v15[3] = &unk_1E8011D28;
    v15[4] = self;
    [(PKPassGroupsViewController *)self presentPassWithUniqueID:uniqueID animated:1 completionHandler:v15];
  }

  else
  {
    [(PKPassGroupsViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t __52__PKPassGroupsViewController_paymentSetupDidFinish___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 secureElementPass];
  v4 = [v3 uniqueID];

  if (v4)
  {
    v5 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__PKPassGroupsViewController_paymentSetupDidFinish___block_invoke_2;
    v8[3] = &unk_1E8011C28;
    v9 = v4;
    v6 = [v5 pk_containsObjectPassingTest:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __52__PKPassGroupsViewController_paymentSetupDidFinish___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __52__PKPassGroupsViewController_paymentSetupDidFinish___block_invoke_3(uint64_t a1, int a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = *(a1 + 32);

    [v2 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v3 = MEMORY[0x1E69B8540];
    v4 = *MEMORY[0x1E69BB728];
    v5 = *MEMORY[0x1E69BABE8];
    v8[0] = *MEMORY[0x1E69BA680];
    v8[1] = v5;
    v6 = *MEMORY[0x1E69BB4E8];
    v9[0] = *MEMORY[0x1E69BA818];
    v9[1] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
    [v3 subject:v4 sendEvent:v7];
  }
}

- (void)discoveryDataSource:(id)source didUpdateArticleLayouts:(id)layouts
{
  layoutsCopy = layouts;
  WeakRetained = objc_loadWeakRetained(&self->_discoveryGalleryView);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained updateArticleLayouts:layoutsCopy];
  }

  else
  {
    v7 = [layoutsCopy count];

    if (v7)
    {
      [(PKPassGroupStackView *)self->_groupStackView updateHeaderAndSubheaderViewsIfNecessary];
    }
  }
}

- (void)inboxDataSourceDidUpdateInboxMessages:(id)messages
{
  if (self->_kind == 1)
  {
    block[5] = v3;
    block[6] = v4;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__PKPassGroupsViewController_inboxDataSourceDidUpdateInboxMessages___block_invoke;
    block[3] = &unk_1E8010970;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)virtualCardEnrollmentViewController:(id)controller didCompleteWithSuccess:(BOOL)success
{
  presentingViewController = [controller presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)applicationMessageViewNeedsSizeUpdate:(id)update
{
  updateCopy = update;
  WeakRetained = objc_loadWeakRetained(&self->_applicationMessageView);

  if (WeakRetained == updateCopy)
  {
    configuration = [updateCopy configuration];
    [configuration width];
    v7 = v6;

    [updateCopy sizeThatFits:{v7, 1.79769313e308}];
    v9 = v8;
    v11 = v10;
    [updateCopy bounds];
    if (v9 != v13 || v11 != v12)
    {
      [updateCopy setBounds:?];
      [updateCopy layoutIfNeededAnimated:1];
      [(PKPassGroupStackView *)self->_groupStackView updateHeaderAndSubheaderViewsIfNecessary];
    }
  }
}

- (void)applicationMessageViewNeedsRemoval:(id)removal
{
  removalCopy = removal;
  WeakRetained = objc_loadWeakRetained(&self->_applicationMessageView);

  if (WeakRetained == removalCopy)
  {
    groupStackView = self->_groupStackView;

    [(PKPassGroupStackView *)groupStackView updateHeaderAndSubheaderViewsIfNecessary];
  }
}

- (void)applicationMessageView:(id)view requestsContentDismissal:(id)dismissal
{
  v10 = 0;
  v5 = [MEMORY[0x1E69B85B8] messageKeysForNode:dismissal localKeys:&v10];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 count];
    if (v7)
    {
      if (v7 == 1)
      {
        paymentService = self->_paymentService;
        firstObject = [v6 firstObject];
        [(PKPaymentService *)paymentService removeApplicationMessageWithKey:firstObject];
      }

      else
      {
        [(PKPaymentService *)self->_paymentService removeApplicationMessagesWithKeys:v6 completion:0];
      }
    }
  }
}

- (void)applicationMessageView:(id)view tappedApplicationMessageWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy source])
  {
    [(PKPaymentService *)self->_paymentService tappedApplicationMessageWithKey:keyCopy];
  }
}

- (void)presentPaymentSetupForHeaderView:(id)view
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69B8540];
  v5 = *MEMORY[0x1E69BB718];
  v6 = *MEMORY[0x1E69BA440];
  v11[0] = *MEMORY[0x1E69BA680];
  v11[1] = v6;
  v7 = *MEMORY[0x1E69BB028];
  v12[0] = *MEMORY[0x1E69BA6F0];
  v12[1] = v7;
  v8 = MEMORY[0x1E695DF20];
  viewCopy = view;
  v10 = [v8 dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v4 subject:v5 sendEvent:v10];

  [(PKPassGroupsViewController *)self startPaymentPreflight:viewCopy withPaymentSetupMode:0 referrerIdentifier:0 referralSource:0 campaignIdentifier:0 paymentNetworks:0 transitNetworkIdentifiers:0 allowedFeatureIdentifiers:0 productIdentifiers:0 sectionIdentifier:0];
}

- (id)passForSectionHeaderView:(id)view
{
  if ([(PKGroupsController *)self->_groupsController groupCount]== 1 && [(PKGroupsController *)self->_groupsController indexOfSeparationGroup]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(PKGroupsController *)self->_groupsController groupAtIndex:0];
    v5 = [v4 passAtIndex:{objc_msgSend(v4, "frontmostPassIndex")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)presentPassDetailsForHeaderView:(id)view
{
  v7 = [(PKGroupsController *)self->_groupsController groupAtIndex:0];
  v4 = [v7 passAtIndex:{objc_msgSend(v7, "frontmostPassIndex")}];
  v5 = v4;
  if (v4)
  {
    uniqueID = [v4 uniqueID];
    [(PKPassGroupsViewController *)self presentPassDetailsWithUniqueID:uniqueID animated:1 completionHandler:0];
  }
}

- (void)presentInvitationsForHeaderView:(id)view
{
  v5 = [[PKInboxViewController alloc] initWithInboxDataSource:self->_inboxDataSource contactAvatarManager:self->_avatarManager context:0];
  v4 = [[PKNavigationController alloc] initWithRootViewController:v5];
  [(PKPassGroupsViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (BOOL)doesContainActivatedPaymentPasses
{
  passes = [(PKGroupsController *)self->_groupsController passes];
  v3 = [passes pk_containsObjectPassingTest:&__block_literal_global_473];

  return v3;
}

BOOL __63__PKPassGroupsViewController_doesContainActivatedPaymentPasses__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 passType] == 1)
  {
    v3 = [v2 paymentPass];
    v4 = [v3 passActivationState] == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __52__PKPassGroupsViewController_presentOrderManagement__block_invoke()
{
  v7[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69B8540];
  v1 = *MEMORY[0x1E69BB6F0];
  v2 = *MEMORY[0x1E69BA6F0];
  v3 = *MEMORY[0x1E69BB0E0];
  v6[0] = *MEMORY[0x1E69BA680];
  v6[1] = v3;
  v4 = *MEMORY[0x1E69BB118];
  v7[0] = v2;
  v7[1] = v4;
  v6[2] = *MEMORY[0x1E69BAA40];
  v7[2] = *MEMORY[0x1E69BAA48];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
  [v0 subject:v1 sendEvent:v5];
}

- (void)presentNotificationSettings
{
  v4 = objc_alloc_init(PKNotificationSettingsViewController);
  v3 = [[PKNavigationController alloc] initWithRootViewController:v4];
  [(PKPassGroupsViewController *)self presentViewController:v3 animated:1 completion:0];
}

- (void)presentHowToUseWallet
{
  mEMORY[0x1E69B8908] = [MEMORY[0x1E69B8908] sharedInstance];
  latestHowToUseWalletModel = [mEMORY[0x1E69B8908] latestHowToUseWalletModel];
  [(PKPassGroupsViewController *)self _presentHowToUseWalletWithModel:latestHowToUseWalletModel destinationCard:0];
}

- (void)_presentHowToUseWalletWithModel:(id)model destinationCard:(id)card
{
  v5 = [PKHowToUseWalletViewProvider makeViewControllerWithModel:model destinationCard:card];
  if (v5)
  {
    v8 = v5;
    v6 = [[PKNavigationController alloc] initWithRootViewController:v5];
    navigationBar = [(PKNavigationController *)v6 navigationBar];
    [navigationBar setPrefersLargeTitles:1];

    [(PKPassGroupsViewController *)self presentViewController:v6 animated:1 completion:0];
    v5 = v8;
  }
}

- (void)presentAutoFillCards
{
  v3 = [[PKPaymentSetupDismissibleNavigationController alloc] initWithContext:0];
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v5 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:mEMORY[0x1E69B8EF8]];
  v6 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:0 provisioningController:v5 groupsController:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__PKPassGroupsViewController_presentAutoFillCards__block_invoke;
  v10[3] = &unk_1E8010A10;
  v10[4] = self;
  v11 = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__PKPassGroupsViewController_presentAutoFillCards__block_invoke_2;
  v8[3] = &unk_1E8012FD0;
  v8[4] = self;
  v9 = v11;
  v7 = v11;
  [PKProvisioningFlowBridge presentAutoFillCardsWithNavController:v7 groupsViewController:self context:v6 presentNavController:v10 completion:v8];
}

void __50__PKPassGroupsViewController_presentAutoFillCards__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pkui_frontMostViewController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

uint64_t __50__PKPassGroupsViewController_presentAutoFillCards__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pkui_frontMostViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];

  v3 = *(a1 + 40);

  return [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_fetchAutoFillCards:(id)cards
{
  cardsCopy = cards;
  v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F3CC8738];
  autoFillCardManager = self->_autoFillCardManager;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__PKPassGroupsViewController__fetchAutoFillCards___block_invoke;
  v8[3] = &unk_1E8010DA8;
  v9 = cardsCopy;
  v7 = cardsCopy;
  [(PKAutoFillCardManager *)autoFillCardManager activeFPANCardsWithOptions:7 allowedCardTypes:v5 sortType:1 completion:v8];
}

- (int64_t)visibilityBackdropView:(id)view preferredStyleForTraitCollection:(id)collection
{
  if ([collection userInterfaceStyle] == 2)
  {
    return 2030;
  }

  else
  {
    return 2010;
  }
}

@end