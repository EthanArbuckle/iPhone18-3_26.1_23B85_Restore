@interface PKDashboardPassGroupViewController
- ($2DE36CBD7484E59DE1E6BE98927F692F)externalVCContext:(SEL)a3 destinationFrameForViewWithSize:(id)a4 inViewControllerFrame:(id *)a5;
- (BOOL)_willUpdateControllerPositionForExternalVCContext:(id)a3 inTransition:(id)a4 viewSize:(id *)a5 expectedViewFrame:(id *)a6 instantaneousPositionDisplacement:(UIOffset *)a7;
- (BOOL)dashboardViewController:(id)a3 dismissInteractionShouldDismissForContentOffset:(CGPoint)a4 velocity:(CGPoint)a5;
- (BOOL)dashboardViewController:(id)a3 shouldStartDismissInteractionFromPoint:(CGPoint)a4;
- (BOOL)handleDeletePassRequestWithPass:(id)a3 forViewController:(id)a4;
- (BOOL)handleDeletePassWithUniqueID:(id)a3;
- (BOOL)isPassFooterViewInGroup:(id)a3;
- (BOOL)presentAddMoney;
- (BOOL)willActivateNavigationItemHandleWithVoucher:(id)a3;
- (PKDashboardPassGroupViewController)initWithDataSource:(id)a3 presenters:(id)a4 layout:(id)a5;
- (PKDashboardPassGroupViewController)initWithPass:(id)a3;
- (PKDashboardPassGroupViewController)initWithPassUniqueID:(id)a3 groupsController:(id)a4;
- (PKDashboardPassGroupViewControllerDelegate)dashboardPassGroupViewControllerDelegate;
- (PKNavigationItemConfiguration)_navigationItemConfiguration;
- (PKPaymentOffersController)frontmostPassPaymentOffersController;
- (double)_presentedViewFrameForViewWithSize:(uint64_t)a3;
- (double)groupViewModalReferenceScale:(id)a3 isValid:(BOOL *)a4;
- (id)_initWithPassGroupView:(void *)a3 groupsController:(void *)a4 sizeProvider:(void *)a5 context:;
- (id)_passGroupsViewNavigationController;
- (id)_passcodeButtonTitle;
- (id)_updateEffectiveNavigationItems;
- (id)configurationForNavigationItemHandle:(id)a3;
- (id)connectTransitionCoordinatorToReceiver:(id)a3;
- (id)presentationSceneIdentifierForAccountAutomaticPaymentsController:(id)a3;
- (id)transitionCoordinator:(id)a3 prepareForSendingNavigationItem:(id)a4;
- (id)transitionCoordinatorWillInvertReceiver:(id)a3;
- (id)transitionCoordinatorWillInvertSender:(id)a3;
- (int64_t)groupViewContentModeForFrontmostPassWhenPiled:(id)a3 withDefaultContentMode:(int64_t)a4;
- (int64_t)visibilityBackdropView:(id)a3 preferredStyleForTraitCollection:(id)a4;
- (uint64_t)_initWithPassGroupView:(void *)a3 groupsController:(void *)a4 sizeProvider:(void *)a5 context:(char)a6 coordinated:;
- (uint64_t)_isForegroundActive;
- (uint64_t)_leadingItemGroups;
- (uint64_t)_passFooterAlphaForPass:(char)a3 postTransaction:;
- (uint64_t)_passGroupsViewController;
- (uint64_t)_trailingItemGroups;
- (uint64_t)_updatePausedState;
- (uint64_t)_visibilityDidChange;
- (uint64_t)shouldOfferManualArchivalForPassWithUniqueID:(uint64_t)a1;
- (unint64_t)groupViewPassesSuppressedContent:(id)a3;
- (void)_afterDataSourceContentLoadedUpdateNavigationItems;
- (void)_applyNavigationItemConfiguration:(void *)a1;
- (void)_canPresentCreditDetailsViewControllerWithCompletion:(uint64_t)a1;
- (void)_dismiss;
- (void)_dismissWithVelocity:(double)a3 byDragging:;
- (void)_endReportingSessionForPassIfNecessary;
- (void)_ensureCardPresenceIfNecessary;
- (void)_groupViewTapped;
- (void)_handleUpdatedAccount:(uint64_t)a1 accountRemoved:(void *)a2;
- (void)_insertGroupView;
- (void)_performActivationStateUpdate:(uint64_t)a1;
- (void)_presentBarcodePassDetailsAnimated:(void *)a3 completion:;
- (void)_presentDailyCashOnAccountForDateComponents:(uint64_t)a3 redemptionType:(void *)a4 completion:;
- (void)_presentDailyCashOnPassForDateComponents:(void *)a3 completion:;
- (void)_presentInstallmentPlans:(uint64_t)a1;
- (void)_presentPassDetailsAnimated:(uint64_t)a3 action:;
- (void)_presentPaymentPassDetailsAnimated:(void *)a3 completion:;
- (void)_presentPeerPaymentAddDebitFlow;
- (void)_presentRewardsHubWithCompletion:(void *)a1;
- (void)_pushViewControllerWhenNavigationAvailable:(char)a3 animated:(void *)a4 completion:;
- (void)_relinquishGroupView;
- (void)_reloadNavigationItemsAnimated:(unsigned __int8 *)a1;
- (void)_requestModalPresentationFromButton:(uint64_t)a1;
- (void)_setFrontmostPass:(uint64_t)a1;
- (void)_startReportingSessionForPassIfNecessary;
- (void)_updateDashboardAndFooterContentPostTransaction:(uint64_t)a1;
- (void)_updateDefaultPasscodeButtonSize;
- (void)_updateFingerDetection;
- (void)_updateFooterAnimated:(uint64_t)a1;
- (void)_updateNavigationItemAnimated:(uint64_t)a1;
- (void)_updatePassFooterViewWithReload:(char)a3 postTransaction:;
- (void)_updateTitlePassView;
- (void)accountAutomaticPaymentsController:(id)a3 didSchedulePayment:(id)a4;
- (void)accountDidUpdate:(id)a3;
- (void)beginProvidingForNavigationItemHandle:(id)a3 withConsumedVoucher:(id)a4;
- (void)contentDidFinishScrollInteraction;
- (void)contentDidScroll;
- (void)dashboardViewController:(id)a3 didEndDismissInteraction:(BOOL)a4;
- (void)dashboardViewController:(id)a3 willStartDismissInteractionFromPoint:(CGPoint)a4;
- (void)dealloc;
- (void)deleteAnimationController:(id)a3 didComplete:(BOOL)a4;
- (void)deleteAnimationControllerWillBeginDeleteAnimation:(id)a3;
- (void)endProvidingForNavigationItemHandle:(id)a3;
- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4;
- (void)foregroundActiveArbiter:(id)a3 didUpdateDeactivationReasons:(unsigned int)a4;
- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4;
- (void)groupView:(id)a3 deleteButtonPressedForPass:(id)a4 sourceView:(id)a5;
- (void)groupView:(id)a3 didUpdatePassView:(id)a4;
- (void)groupView:(id)a3 faceViewFrameDidChangeForFrontmostPassView:(id)a4;
- (void)groupView:(id)a3 frontmostPassViewDidChange:(id)a4 withContext:(id)a5;
- (void)infoTapped;
- (void)invalidate;
- (void)loadView;
- (void)manuallyArchivePassWithUniqueID:(id *)a1;
- (void)menuFactoryDidUpdateMenu:(id)a3;
- (void)moreMenuTriggered;
- (void)operation:(id)a3 presenceStateChanged:(BOOL)a4;
- (void)passFooterViewDidTransact:(id)a3 success:(BOOL)a4;
- (void)passTilesItemPresenter:(id)a3 displayTileContext:(int64_t)a4 forPass:(id)a5 tile:(id)a6 overrideMaximumRows:(BOOL)a7;
- (void)passTilesItemPresenter:(id)a3 executeSEActionForPass:(id)a4 tile:(id)a5 withCompletion:(id)a6;
- (void)peerPaymentActionViewControllerDidCancel:(id)a3;
- (void)peerPaymentActionViewControllerDidPerformAction:(id)a3;
- (void)performPrecursorPassAction;
- (void)presentAccountPromotionWithProgramIdentifier:(void *)a3 completion:;
- (void)presentAccountWithConfiguration:(void *)a3 presentationContext:(char)a4 animated:(void *)a5 completion:;
- (void)presentActionGroupsWithPaymentDataProvider:(void *)a3 balanceModel:(void *)a4 webService:;
- (void)presentActionsWithPaymentDataProvider:(void *)a3 webService:(void *)a4 actionType:(void *)a5 transitBalanceModel:;
- (void)presentActivityDeletionConfirmationAtIndexPath:(id)a3 completion:(id)a4;
- (void)presentAddMoneyAppleBalance;
- (void)presentAddMoneyAppleBalanceDirectTopUp;
- (void)presentAddMoneyAppleBalanceInStoreTopUp;
- (void)presentAuxiliaryPassInformationItemWithIdentifier:(void *)a3 informationIdentifier:(void *)a4 completion:;
- (void)presentBalanceDetailsWithCompletion:(void *)a1;
- (void)presentCardNumbers;
- (void)presentCombinedActionsWithPaymentDataProvider:(void *)a3 webService:(void *)a4 balanceModel:(void *)a5 mode:;
- (void)presentDailyCashForDateComponents:(uint64_t)a3 redemptionType:(void *)a4 completion:;
- (void)presentEditCalendarEvent:(void *)a3 eventStore:;
- (void)presentExistingCalendarEvent:(void *)a1 eventStore:(void *)a2;
- (void)presentInstallmentPlan:(uint64_t)a1;
- (void)presentInstallmentPlans;
- (void)presentInvitationWithIdentifier:(void *)a3 completion:;
- (void)presentManageBarcodePassNotifications;
- (void)presentManagePaymentPassNotificationsControllerWithDataProvider:(void *)a3 peerPaymentAccount:(void *)a4 bankConnectAccount:(void *)a5 account:;
- (void)presentPassDetailsAnimated:(void *)a3 completion:;
- (void)presentPeerPaymentActionViewControllerForAction:(void *)a3 passLibraryDataProvider:;
- (void)presentPeerPaymentDeviceTapWithInitialAmount:(void *)a3 initialMemo:;
- (void)presentPeerPaymentRecurringPaymentsWithIdentifier:(void *)a3 completion:;
- (void)presentRedeemGiftcard;
- (void)presentRestrictedGuestAccessScheduleWithHomeIdentifier:(void *)a1;
- (void)presentRewardsHubMerchantsWithPrivateIdentifier:(void *)a3 completion:;
- (void)presentRewardsHubWithCompletion:(void *)a1;
- (void)presentScheduledPayments;
- (void)presentSearchWithCompletion:(id *)a1;
- (void)presentSearchWithQuery:(void *)a3 completion:;
- (void)presentShareFlow;
- (void)presentSharesList;
- (void)presentSpendingSummaryWithType:(void *)a3 categorization:(void *)a4 unit:(void *)a5 completion:;
- (void)presentTransaction:(void *)a3 forAccount:;
- (void)presentTransaction:(void *)a3 forPaymentPass:(void *)a4 presentingView:;
- (void)presentTransitCardNumber;
- (void)reportEventForPassIfNecessary:(uint64_t)a1;
- (void)secureElementDidEnterRestrictedMode:(id)a3;
- (void)secureElementDidLeaveRestrictedMode:(id)a3;
- (void)setDashboardPassGroupViewControllerDelegate:(id)a3;
- (void)setFooterSuppressed:(BOOL)a3;
- (void)showStatement:(void *)a3 completion:;
- (void)terminateTransitionCoordinator:(id)a3;
- (void)transitionCoordinator:(id)a3 didBeginTransition:(id)a4 dirty:(BOOL)a5 withState:(id)a6;
- (void)transitionCoordinator:(id)a3 transition:(id)a4 didUpdateFromState:(id)a5 toState:(id)a6 interactive:(BOOL)a7;
- (void)transitionCoordinator:(id)a3 transition:(id)a4 willUpdateFromState:(id)a5 interactive:(BOOL)a6;
- (void)transitionCoordinator:(id)a3 transitionDidMoveNavigationItem:(id)a4;
- (void)transitionCoordinator:(id)a3 transitionDidMoveView:(id)a4 withState:(id)a5;
- (void)transitionCoordinator:(id)a3 transitionWillInterruptViewMove:(id)a4 withState:(id)a5;
- (void)transitionCoordinator:(id)a3 transitionWillMoveNavigationItem:(id)a4;
- (void)transitionCoordinator:(id)a3 transitionWillMoveView:(id)a4 withState:(id)a5;
- (void)transitionCoordinator:(id)a3 willBeginTransition:(id)a4 dirty:(BOOL)a5;
- (void)transitionCoordinatorDidEndTransition:(id)a3 wasDirty:(BOOL)a4;
- (void)transitionCoordinatorDidInterruptTransition:(id)a3;
- (void)transitionCoordinatorSenderDidTapView:(id)a3;
- (void)transitionCoordinatorWillConnectReceiver:(id)a3 forRequest:(id)a4;
- (void)transitionCoordinatorWillEndTransition:(id)a3 wasDirty:(BOOL)a4;
- (void)transitionCoordinatorWillInterruptTransition:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PKDashboardPassGroupViewController

- (PKDashboardPassGroupViewController)initWithDataSource:(id)a3 presenters:(id)a4 layout:(id)a5
{
  v7 = a3;
  v8 = a4;
  result = a5;
  __break(1u);
  return result;
}

- (uint64_t)_initWithPassGroupView:(void *)a3 groupsController:(void *)a4 sizeProvider:(void *)a5 context:(char)a6 coordinated:
{
  v142[4] = *MEMORY[0x1E69E9840];
  v12 = a2;
  v13 = a3;
  v132 = a4;
  v130 = v13;
  v131 = a5;
  if (!a1)
  {
    goto LABEL_17;
  }

  if (!v12)
  {
    goto LABEL_42;
  }

  v128 = a6;
  if (!v13)
  {
    goto LABEL_42;
  }

  v14 = [v12 group];
  v15 = [v14 passCount];
  if (!v15)
  {

    goto LABEL_41;
  }

  v16 = 0;
  v17 = -1;
  do
  {
    v18 = [v14 passAtIndex:v16];
    v19 = v18;
    if (!v18)
    {
      goto LABEL_42;
    }

    v20 = [v18 passType];
    if (v17 == -1)
    {
      v17 = v20;
    }

    else if (v17 != v20)
    {

LABEL_17:
      v15 = 0;
      goto LABEL_41;
    }

    ++v16;
  }

  while (v15 != v16);

  if (v17 == -1)
  {
    goto LABEL_17;
  }

  v125 = [[PKDashboardPassGroupItemPresenter alloc] initWithPassGroupView:v12 sizeProvider:v132];
  v126 = objc_alloc_init(PKDashboardPassTilesItemPresenter);
  if (v17 == 1)
  {
    v127 = [[PKDashboardPaymentPassDataSource alloc] initWithGroupView:v12 context:v131];
    v119 = [[PKDashboardPaymentTransactionItemPresenter alloc] initWithContext:0 detailViewStyle:0 avatarViewDelegate:a1];
    v120 = objc_alloc_init(PKDashboardAccountModulePresenter);
    v141[0] = v125;
    obj = [[PKDashboardPassMessagePresenter alloc] initWithPassGroupView:v12];
    v141[1] = obj;
    v141[2] = v126;
    v117 = objc_alloc_init(PKDashboardAuxiliaryPassInformationPresenter);
    v141[3] = v117;
    v21 = [PKDashboardPaymentProductsTransitPresenter alloc];
    v124 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    v110 = [(PKDashboardPaymentProductsTransitPresenter *)v21 initWithPassGroupView:v12 paymentDataProvider:v124];
    v141[4] = v110;
    v111 = objc_alloc_init(PKTransactionGroupItemPresenter);
    v141[5] = v111;
    v112 = [[PKCreditBalanceAndPaymentPresenter alloc] initWithViewController:a1];
    v141[6] = v112;
    v114 = objc_alloc_init(PKDashboardTextActionItemPresenter);
    v141[7] = v114;
    v123 = objc_alloc_init(PKDashboardBalancePresenter);
    v141[8] = v123;
    v22 = objc_alloc_init(PKDashboardBankConnectPresenter);
    v141[9] = v22;
    v23 = objc_alloc_init(_TtC9PassKitUI41PKDashboardFinanceKitTransactionPresenter);
    v141[10] = v23;
    v24 = objc_alloc_init(PKDashboardRewardsBalancePresenter);
    v141[11] = v24;
    v141[12] = v119;
    v25 = objc_alloc_init(PKDashboardCenteredTextItemPresenter);
    v141[13] = v25;
    v141[14] = v120;
    v26 = objc_alloc_init(PKDashboardPeerPaymentPendingRequestItemPresenter);
    v141[15] = v26;
    v121 = [MEMORY[0x1E695DEC8] arrayWithObjects:v141 count:16];

    *&v122 = 0;
    *(&v122 + 1) = v127;
LABEL_19:

    if (!v127)
    {
      v127 = 0;
      v15 = 0;
      goto LABEL_39;
    }

    v15 = 0;
    if (v122 == 0 || !v121)
    {
      goto LABEL_39;
    }

    obja = objc_alloc_init(PKDashboardPassFlowLayout);
    if (obja)
    {
      v134.receiver = a1;
      v134.super_class = PKDashboardPassGroupViewController;
      v27 = objc_msgSendSuper2(&v134, sel_initWithDataSource_presenters_layout_, v127, v121);
      v28 = v27;
      if (!v27)
      {
LABEL_36:
        a1 = v28;

        v15 = a1;
LABEL_39:
        v108 = v119;
        goto LABEL_40;
      }

      v27[385] = 0;
      v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v30 = dispatch_queue_create("com.apple.passkit.dashboard.session", v29);
      v31 = *(v28 + 1544);
      *(v28 + 1544) = v30;

      *(v28 + 1473) = v128;
      objc_storeStrong((v28 + 1832), obja);
      v32 = [MEMORY[0x1E69B91E0] sharedSecureElement];
      v33 = *(v28 + 1232);
      *(v28 + 1232) = v32;

      objc_storeStrong((v28 + 1240), a3);
      objc_storeStrong((v28 + 1248), a2);
      v34 = [*(v28 + 1248) group];
      v35 = *(v28 + 1816);
      *(v28 + 1816) = v34;

      objc_storeStrong((v28 + 1256), a5);
      objc_storeStrong((v28 + 1208), v127);
      if (v122)
      {
        objc_storeStrong((v28 + 1216), v122);
      }

      v36 = *(&v122 + 1);
      if (*(&v122 + 1))
      {
        objc_storeStrong((v28 + 1224), *(&v122 + 1));
        v36 = *(&v122 + 1);
      }

      v37 = v36 != 0;
      *(v28 + 1459) = 1;
      objc_storeStrong((v28 + 1840), v119);
      objc_storeStrong((v28 + 1728), v120);
      v38 = [MEMORY[0x1E69B8400] sharedInstance];
      v39 = *(v28 + 1704);
      *(v28 + 1704) = v38;

      v129 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v129 addObject:objc_opt_class()];
      [v129 addObject:objc_opt_class()];
      v40 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
      [v129 addObjectsFromArray:v40];

      [v129 addObject:objc_opt_class()];
      v41 = [v28 registerForTraitChanges:v129 withHandler:&__block_literal_global_238];
      v42 = objc_alloc_init(PKDashboardMoreMenuFactory);
      v43 = *(v28 + 1712);
      *(v28 + 1712) = v42;

      [*(v28 + 1232) registerObserver:v28];
      if (v37)
      {
        [*(&v122 + 1) setCustomDelegate:v28];
      }

      [(PKDashboardPassGroupItemPresenter *)v125 setDelegate:v28, v110];
      [(PKDashboardPaymentPassDataSource *)v127 setViewController:v28];
      [*(v28 + 1712) setDashboardVC:v28];
      [*(v28 + 1712) setDelegate:v28];
      [*(v28 + 1704) registerObserver:v28];
      [(PKDashboardPassTilesItemPresenter *)v126 setDelegate:v28];
      v133.receiver = v28;
      v133.super_class = PKDashboardPassGroupViewController;
      objc_msgSendSuper2(&v133, sel_setDelegate_, v28);
      if ((_UISolariumEnabled() & 1) == 0)
      {
        [v28 setUseChromelessNavigationItem:1];
      }

      v44 = [v12 frontmostPassView];
      v45 = [v44 pass];
      [(PKDashboardPassGroupViewController *)v28 _setFrontmostPass:v45];

      if (*(v28 + 1448) != 1)
      {
        *(v28 + 1448) = 1;
        if (*(v28 + 1328) != 1)
        {
          *(v28 + 1328) = 1;
          objc_initWeak(&location, v28);
          aBlock = MEMORY[0x1E69E9820];
          v136 = 3221225472;
          v137 = __62__PKDashboardPassGroupViewController__createLeadingItemGroups__block_invoke;
          v138 = &unk_1E8023590;
          objc_copyWeak(&v139, &location);
          v46 = _Block_copy(&aBlock);
          v47 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 primaryAction:0];
          v48 = objc_alloc(MEMORY[0x1E69DC708]);
          v49 = MEMORY[0x1E69DC628];
          v50 = v46[2](v46, &__block_literal_global_153);
          v51 = [v49 actionWithHandler:v50];
          v52 = [v48 initWithBarButtonSystemItem:24 primaryAction:v51];

          [v52 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
          v53 = *(v28 + 1312);
          *(v28 + 1312) = v47;
          v54 = v47;

          v55 = *(v28 + 1320);
          *(v28 + 1320) = v52;

          v56 = [(PKDashboardPassGroupViewController *)v28 _leadingItemGroups];
          objc_destroyWeak(&v139);
          objc_destroyWeak(&location);

          if (*(v28 + 1432) != 1)
          {
            *(v28 + 1432) = 1;
            objc_initWeak(&location, v28);
            aBlock = MEMORY[0x1E69E9820];
            v136 = 3221225472;
            v137 = __63__PKDashboardPassGroupViewController__createTrailingItemGroups__block_invoke;
            v138 = &unk_1E8023590;
            objc_copyWeak(&v139, &location);
            v118 = _Block_copy(&aBlock);
            v57 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ellipsis"];
            v58 = PKLocalizedString(&cfstr_More.isa);
            v59 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v58 image:v57 target:0 action:0 menu:0];
            v60 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v58 image:v57 target:0 action:0 menu:0];
            v61 = *MEMORY[0x1E69B9970];
            [v60 setAccessibilityIdentifier:*MEMORY[0x1E69B9970]];
            v113 = v57;
            v62 = objc_alloc(MEMORY[0x1E69DC708]);
            v63 = MEMORY[0x1E69DC628];
            v64 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info"];
            v65 = v118[2](v118, &__block_literal_global_166_0);
            v66 = [v63 actionWithTitle:v58 image:v64 identifier:0 handler:v65];
            v67 = [v62 initWithPrimaryAction:v66];

            [v67 setAccessibilityIdentifier:v61];
            v68 = *(v28 + 1344);
            *(v28 + 1344) = v59;
            v69 = v59;

            v70 = *(v28 + 1352);
            *(v28 + 1352) = v60;
            v71 = v60;

            v72 = *(v28 + 1360);
            *(v28 + 1360) = v67;

            v73 = objc_alloc(MEMORY[0x1E69DC708]);
            v74 = MEMORY[0x1E69DC628];
            v75 = v118[2](v118, &__block_literal_global_168_0);
            v76 = [v74 actionWithHandler:v75];
            v77 = [v73 initWithBarButtonSystemItem:12 primaryAction:v76];

            [v77 setAccessibilityIdentifier:*MEMORY[0x1E69B9BD0]];
            v78 = *(v28 + 1368);
            *(v28 + 1368) = v77;

            v79 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ellipsis"];
            v80 = PKLocalizedString(&cfstr_Actions_0.isa);
            v81 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v80 image:v79 target:0 action:0 menu:0];
            v82 = *(v28 + 1392);
            *(v28 + 1392) = v81;

            v83 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up"];
            v84 = PKLocalizedPaymentString(&cfstr_DashboardShare.isa);
            v85 = objc_alloc(MEMORY[0x1E69DC708]);
            v86 = MEMORY[0x1E69DC628];
            v87 = v118[2](v118, &__block_literal_global_179);
            v88 = [v86 actionWithTitle:v84 image:v83 identifier:0 handler:v87];
            v89 = [v85 initWithPrimaryAction:v88];

            [v89 setAccessibilityIdentifier:*MEMORY[0x1E69B9C48]];
            v90 = *(v28 + 1400);
            *(v28 + 1400) = v89;

            v91 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle.badge.checkmark"];
            v92 = PKLocalizedPaymentString(&cfstr_DashboardViewS.isa);
            v93 = objc_alloc(MEMORY[0x1E69DC708]);
            v94 = MEMORY[0x1E69DC628];
            v95 = v118[2](v118, &__block_literal_global_187);
            v96 = [v94 actionWithTitle:v92 image:v91 identifier:0 handler:v95];
            v97 = [v93 initWithPrimaryAction:v96];

            [v97 setAccessibilityIdentifier:*MEMORY[0x1E69B9A88]];
            v98 = *(v28 + 1408);
            *(v28 + 1408) = v97;

            v99 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"creditcard.and.123"];
            v100 = PKLocalizedPaymentString(&cfstr_CardNumber.isa);
            v101 = objc_alloc(MEMORY[0x1E69DC708]);
            v102 = MEMORY[0x1E69DC628];
            v103 = v118[2](v118, &__block_literal_global_195);
            v104 = [v102 actionWithTitle:v100 image:v99 identifier:0 handler:v103];
            v105 = [v101 initWithPrimaryAction:v104];

            [v105 setAccessibilityIdentifier:*MEMORY[0x1E69B95C8]];
            v106 = *(v28 + 1416);
            *(v28 + 1416) = v105;

            v107 = [(PKDashboardPassGroupViewController *)v28 _trailingItemGroups];
            objc_destroyWeak(&v139);
            objc_destroyWeak(&location);

            [(PKDashboardPassGroupViewController *)v28 _reloadNavigationItemsAnimated:?];
            goto LABEL_36;
          }
        }
      }
    }

LABEL_42:
    __break(1u);
  }

  if (!v17)
  {
    v127 = [[PKDashboardBarcodePassDataSource alloc] initWithGroupView:v12 context:v131];
    v142[0] = v125;
    obj = [[PKDashboardPassMessagePresenter alloc] initWithPassGroupView:v12];
    v142[1] = obj;
    v142[2] = v126;
    v117 = objc_alloc_init(PKDashboardUpcomingPassInformationPresenter);
    v142[3] = v117;
    v121 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:4];
    v119 = 0;
    v120 = 0;
    v122 = v127;
    goto LABEL_19;
  }

  v108 = 0;
  v120 = 0;
  v121 = 0;
  v122 = 0uLL;
  v127 = 0;
  v15 = 0;
LABEL_40:

LABEL_41:
  return v15;
}

void __111__PKDashboardPassGroupViewController__initWithPassGroupView_groupsController_sizeProvider_context_coordinated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v4 = a3;
  v5 = [v12 traitCollection];
  v6 = [v4 hasDifferentColorAppearanceComparedToTraitCollection:v5];

  v7 = v12;
  if (v6)
  {
    v8 = v12[153];
    if (v8)
    {
      [v8 reloadMessagesWithReason:@"Traits change"];
      [v12[153] reloadSecondaryMessages];
      v7 = v12;
    }

    v9 = v7[152];
    if (v9)
    {
      [v9 reloadMessagesWithReason:@"Traits change"];
      v7 = v12;
    }
  }

  if (*(v7 + 1577) == 1)
  {
    v10 = v7[212];
    v11 = [MEMORY[0x1E69DB878] systemFontOfSize:{PKScaledValueForValueWithMaximumContentSizeCategory(*MEMORY[0x1E69DDC40], 18.0)}];
    [v10 pkui_updateConfigurationWithFont:v11];

    [(PKDashboardPassGroupViewController *)v12 _updateDefaultPasscodeButtonSize];
    v7 = v12;
  }
}

- (void)_updateDefaultPasscodeButtonSize
{
  if (a1)
  {
    v11 = [a1 view];
    [v11 safeAreaInsets];
    v3 = v2;
    v5 = v4;
    v6 = a1 + 210;
    v7 = a1[212];
    [v11 bounds];
    [v7 sizeThatFits:{v8 - v3 - v5, 1.79769313e308}];
    *v6 = v9;
    v6[1] = v10;
  }
}

- (void)_setFrontmostPass:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = atomic_load((a1 + 1552));
    if ((v5 & 1) != 0 || !*(a1 + 1248))
    {

      v4 = 0;
    }

    if (*(a1 + 1264) != v4)
    {
      v16 = v4;
      objc_storeStrong((a1 + 1264), v4);
      v6 = *(a1 + 1264);
      if (v6 && [v6 passType] == 1)
      {
        v7 = *(a1 + 1264);
      }

      else
      {
        v7 = 0;
      }

      objc_storeStrong((a1 + 1272), v7);
      [(PKDashboardPassGroupViewController *)a1 _updateFingerDetection];
      [(PKDashboardPassGroupViewController *)a1 _updateFooterAnimated:?];
      [(PKDashboardPassGroupViewController *)a1 _endReportingSessionForPassIfNecessary];
      [(PKDashboardPassGroupViewController *)a1 _startReportingSessionForPassIfNecessary];
      if (*(a1 + 1264))
      {
        [*(a1 + 1712) setPass:?];
      }

      if (*(a1 + 1448) == 1)
      {
        [(PKDashboardPassGroupViewController *)a1 _reloadNavigationItemsAnimated:?];
      }

      v8 = atomic_load((a1 + 1552));
      if ((v8 & 1) == 0 && *(a1 + 1264) && [a1 isViewLoaded])
      {
        objc_initWeak(&location, a1);
        v9 = *(a1 + 1208);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __79__PKDashboardPassGroupViewController__afterDataSourceContentLoadedUpdateFooter__block_invoke;
        v17[3] = &unk_1E8010998;
        objc_copyWeak(&v18, &location);
        [v9 executeAfterContentIsLoaded:v17];
        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }

      if (v16)
      {
        if (!*(a1 + 1736) && ![*(a1 + 1264) passType])
        {
          v10 = objc_alloc_init(PKBarcodePassBoopProvider);
          v11 = *(a1 + 1736);
          *(a1 + 1736) = v10;
        }

        v12 = [*(a1 + 1208) groupView];
        v13 = [v12 frontmostPassView];

        v14 = *(a1 + 1736);
        v15 = [v13 pass];
        [v14 setPass:v15 passView:v13];

        v4 = v16;
      }

      else
      {
        v4 = 0;
      }
    }
  }
}

- (PKDashboardPassGroupViewController)initWithPass:(id)a3
{
  result = a3;
  if (result)
  {
    v5 = result;
    v6 = objc_alloc(MEMORY[0x1E69B88E0]);
    v7 = [MEMORY[0x1E69B8A58] sharedInstance];
    v8 = [v6 initWithPassLibrary:v7];

    if (v8)
    {
      [v8 loadGroupsSynchronously];
      v9 = [(PKDashboardPassGroupViewController *)v5 uniqueID];
      self = [(PKDashboardPassGroupViewController *)self initWithPassUniqueID:v9 groupsController:v8];

      v10 = self;
    }

    else
    {
      v10 = 0;
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (PKDashboardPassGroupViewController)initWithPassUniqueID:(id)a3 groupsController:(id)a4
{
  v6 = a3;
  result = a4;
  if (v6 && (v8 = result) != 0)
  {
    v9 = [(PKDashboardPassGroupViewController *)result groupAtIndex:[(PKDashboardPassGroupViewController *)result groupIndexForPassUniqueID:v6]];
    if (v9)
    {
      v10 = [[PKPassGroupView alloc] initWithGroup:v9 delegate:0 presentationState:3];
      v11 = v10;
      if (v10)
      {
        [(PKPassGroupView *)v10 presentPassWithUniqueID:v6];
        if (self)
        {
          v12 = [(PKDashboardPassGroupViewController *)self _initWithPassGroupView:v11 groupsController:v8 sizeProvider:0 context:0 coordinated:0];
          self = v12;
          if (v12)
          {
            [(PKDashboardViewController *)v12 shouldPresentAllContent:1 animated:0];
          }
        }

        self = self;
        v13 = self;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)_initWithPassGroupView:(void *)a3 groupsController:(void *)a4 sizeProvider:(void *)a5 context:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  result = a5;
  v13 = result;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (v9 && v10 && v11)
  {
    a1 = [(PKDashboardPassGroupViewController *)a1 _initWithPassGroupView:v9 groupsController:v10 sizeProvider:v11 context:result coordinated:1];
LABEL_6:

    return a1;
  }

  __break(1u);
  return result;
}

- (void)dealloc
{
  v3 = atomic_load(&self->_invalidated);
  if ((v3 & 1) == 0)
  {
    [(PKDashboardPassGroupViewController *)self invalidate];
  }

  [(PKSecureElement *)self->_secureElement unregisterObserver:self];
  [(PKAccountService *)self->_accountService unregisterObserver:self];
  v4 = +[PKUIForegroundActiveArbiter sharedInstance];
  v5 = v4;
  if (v4)
  {
    [v4 unregisterObserver:self];
    [v5 unregisterDeactivationObserver:self];
  }

  v6.receiver = self;
  v6.super_class = PKDashboardPassGroupViewController;
  [(PKDashboardViewController *)&v6 dealloc];
}

- (void)invalidate
{
  v2 = 0;
  v24 = *MEMORY[0x1E69E9840];
  atomic_compare_exchange_strong(&self->_invalidated, &v2, 1u);
  if (!v2)
  {
    os_unfair_lock_lock(&self->_lock);
    v4 = self->_sessionHandles;
    sessionHandles = self->_sessionHandles;
    self->_sessionHandles = 0;

    os_unfair_lock_unlock(&self->_lock);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v19 + 1) + 8 * i) invalidateSession];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    fingerDetectionOperation = self->_fingerDetectionOperation;
    if (fingerDetectionOperation)
    {
      [(BKPresenceDetectOperation *)fingerDetectionOperation setDelegate:0];
      [(BKPresenceDetectOperation *)self->_fingerDetectionOperation cancel];
      v12 = self->_fingerDetectionOperation;
      self->_fingerDetectionOperation = 0;
    }

    fingerTimer = self->_fingerTimer;
    if (fingerTimer)
    {
      dispatch_source_cancel(fingerTimer);
      v14 = self->_fingerTimer;
      self->_fingerTimer = 0;
    }

    [(PKDashboardPassGroupViewController *)self _relinquishGroupView];
    v15 = self->_transitionCoordinator;
    transitionCoordinator = self->_transitionCoordinator;
    self->_transitionCoordinator = 0;

    objc_storeWeak(&self->_dashboardPassGroupViewControllerDelegate, 0);
    if (v15)
    {
      [(PKPGVTransitionCoordinator *)v15 _assertTransceiver:0 deallocating:?];
      v17 = v15;
      [(PKPGVTransitionCoordinator *)v17 connectionDidTerminate:self];
    }

    [(PKPassFooterView *)self->_passFooterView invalidate];
    if (self->_activeAnalyticsSubject)
    {
      [MEMORY[0x1E69B8540] endSubjectReporting:?];
      activeAnalyticsSubject = self->_activeAnalyticsSubject;
      self->_activeAnalyticsSubject = 0;
    }

    if (self->_shouldPromptForReviewOnDismissal)
    {
      self->_shouldPromptForReviewOnDismissal = 0;
    }
  }
}

- (void)_relinquishGroupView
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 1248);
    if (v2)
    {
      v3 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 134218240;
        v6 = a1;
        v7 = 2048;
        v8 = v2;
        _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKDashboardPassGroupViewController (%p): relinquishing group view %p.", &v5, 0x16u);
      }

      v4 = *(a1 + 1248);
      *(a1 + 1248) = 0;

      *(a1 + 1458) = 0;
      [(PKDashboardPassGroupViewController *)a1 _setFrontmostPass:?];
      if (*(a1 + 1457) == 1)
      {
        *(a1 + 1457) = 0;
        [v2 removePassGroupViewObserver:a1];
        [v2 clearShadowAlphaOverride];
      }

      [(PKDashboardPassGroupViewController *)a1 _updatePassFooterViewWithReload:0 postTransaction:?];
    }
  }
}

- (void)loadView
{
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __46__PKDashboardPassGroupViewController_loadView__block_invoke;
  v18[3] = &unk_1E8010970;
  v18[4] = self;
  [(PKDashboardPassGroupViewController *)self _performActivationStateUpdate:v18];
  v17.receiver = self;
  v17.super_class = PKDashboardPassGroupViewController;
  [(PKDashboardViewController *)&v17 loadView];
  v3 = [(PKDashboardPassGroupViewController *)self view];
  v4 = [(PKDashboardPassGroupViewController *)self collectionView];
  v5 = [PKAnimatedNavigationBarTitleView alloc];
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [(PKAnimatedNavigationBarTitleView *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
  titleView = self->_titleView;
  self->_titleView = v10;

  [(PKAnimatedNavigationBarTitleView *)self->_titleView setMaxWidth:50.0];
  v12 = +[PKDashboardPassGroupViewController backgroundColor];
  [v3 setBackgroundColor:v12];

  v13 = [[PKPassthroughView alloc] initWithFrame:v6, v7, v8, v9];
  passthroughView = self->_passthroughView;
  self->_passthroughView = v13;

  [v3 insertSubview:self->_passthroughView aboveSubview:v4];
  v15 = [[PKPassthroughView alloc] initWithFrame:v6, v7, v8, v9];
  portalledPassthroughView = self->_portalledPassthroughView;
  self->_portalledPassthroughView = v15;

  [(PKPassthroughView *)self->_passthroughView setPortal:self->_portalledPassthroughView];
  [v3 insertSubview:self->_portalledPassthroughView belowSubview:v4];
  if (self->_passFooterView)
  {
    [(PKPassthroughView *)self->_portalledPassthroughView addSubview:?];
  }

  [(PKDashboardPassGroupViewController *)self _updateFooterAnimated:?];
}

void __46__PKDashboardPassGroupViewController_loadView__block_invoke(uint64_t a1)
{
  v2 = +[PKUIForegroundActiveArbiter sharedInstance];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v2)
  {
    v5 = v2;
    *(v4 + 1568) = [v2 registerObserver:*(a1 + 32)];
    LODWORD(v2) = [v5 registerDeactivationObserver:*(a1 + 32)];
    v3 = v5;
  }

  else
  {
    *(v4 + 1568) = 1;
    *(*(a1 + 32) + 1569) = 1;
  }

  *(*(a1 + 32) + 1572) = v2;
}

- (void)_performActivationStateUpdate:(uint64_t)a1
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!a1)
  {
    goto LABEL_20;
  }

  isForeground = [(PKDashboardPassGroupViewController *)a1 _isForegroundActive];
  isForegroundActiveFor = [(PKDashboardPassGroupViewController *)a1 _isForegroundActiveForAnalytics];
  v3[2](v3);
  v6 = [(PKDashboardPassGroupViewController *)a1 _isForegroundActive];
  v7 = [(PKDashboardPassGroupViewController *)a1 _isForegroundActiveForAnalytics];
  v8 = [a1 isViewLoaded];
  if (isForeground != v6)
  {
    v9 = v8;
    if (v6)
    {
      if (v8)
      {
        [(PKDashboardPassGroupViewController *)a1 _ensureCardPresenceIfNecessary];
      }

      v10 = [a1 navigationController];
      v11 = [v10 topViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v16 = *MEMORY[0x1E69BA680];
        v17[0] = *MEMORY[0x1E69BA818];
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
        [(PKDashboardPassGroupViewController *)a1 reportEventForPassIfNecessary:v13];
      }

LABEL_11:
      [(PKDashboardPassGroupViewController *)a1 _updateFingerDetection];
      if (!(isForeground & 1 | ((v9 & 1) == 0)) && ((v6 ^ 1) & 1) == 0 && *(a1 + 1576) - 1 <= 1)
      {
        [MEMORY[0x1E69BC740] currentStateForPolicy:0];
        [(PKDashboardPassGroupViewController *)a1 _updateFooterAnimated:?];
      }

      goto LABEL_16;
    }

    if (v8)
    {
      v14 = [*(a1 + 1264) nfcPayload];
      v15 = [v14 requiresAuthentication];

      if (v15)
      {
        [a1 shouldPresentAllContent:0 animated:0];
      }

      goto LABEL_11;
    }

    [(PKDashboardPassGroupViewController *)a1 _updateFingerDetection];
  }

LABEL_16:
  if (isForegroundActiveFor != v7)
  {
    if (v7)
    {
      [(PKDashboardPassGroupViewController *)a1 _startReportingSessionForPassIfNecessary];
    }

    else
    {
      [(PKDashboardPassGroupViewController *)a1 _endReportingSessionForPassIfNecessary];
    }
  }

LABEL_20:
}

- (void)_updateFooterAnimated:(uint64_t)a1
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = [a1 viewIfLoaded];
    if (!v4)
    {
LABEL_35:

      return;
    }

    v5 = [*(a1 + 1272) supportedRadioTechnologies];
    v6 = atomic_load((a1 + 1552));
    if (v6)
    {
      goto LABEL_27;
    }

    v7 = !*(a1 + 1272) || v5 == 2;
    if (v7 || *(a1 + 1576) - 1 > 1)
    {
      goto LABEL_27;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 1824));
    if (!WeakRetained || (objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_17;
    }

    v9 = [WeakRetained dashboardPassGroupViewController:a1 canRequestPaymentForPass:*(a1 + 1272)];

    if (!v9)
    {
LABEL_27:
      v11 = 0;
      goto LABEL_28;
    }

    WeakRetained = [*(a1 + 1272) devicePrimaryContactlessPaymentApplication];
    [*(a1 + 1272) effectiveContactlessPaymentApplicationState];
    if (PKPaymentApplicationStateIsPersonalized())
    {
      if (WeakRetained && ([WeakRetained requiresConsentForDataRelease] & 1) == 0)
      {
      }

      else
      {
        v10 = [*(a1 + 1272) supportsBarcodePayment];

        if (!v10)
        {
          goto LABEL_27;
        }
      }

      if (*(a1 + 1272) && (v12 = [MEMORY[0x1E69B8750] _copyDevicePrimaryContactlessAccessControlForSecureElementPass:?]) != 0)
      {
        v13 = v12;
        v14 = [MEMORY[0x1E69BC740] currentStateForAccessControl:v12];
        CFRelease(v13);
      }

      else
      {
        v14 = [MEMORY[0x1E69BC740] cachedStateForPolicy:0];
      }

      if ((v14 & 0xF) != 9)
      {
        goto LABEL_27;
      }

      if ([*(a1 + 1272) hasAssociatedPeerPaymentAccount])
      {
        v15 = [MEMORY[0x1E69B9000] sharedInstance];
        v16 = [v15 account];

        v17 = [v16 state];
        if (v17 == 3)
        {
          goto LABEL_27;
        }
      }

      if (![*(a1 + 1272) isAppleCardPass] || (v27 = *(a1 + 1224)) == 0)
      {
        v11 = 1;
LABEL_28:
        if (*(a1 + 1577) == v11)
        {
          v18 = *(a1 + 1696);
          if (v18)
          {
            v19 = [(PKDashboardPassGroupViewController *)a1 _passcodeButtonTitle];
            [v18 pkui_updateConfigurationWithTitle:v19];

            [(PKDashboardPassGroupViewController *)a1 _updateDefaultPasscodeButtonSize];
            v20 = [a1 viewIfLoaded];
            [v20 setNeedsLayout];
          }
        }

        else
        {
          *(a1 + 1577) = v11;
          if (v11)
          {
            v21 = objc_alloc(MEMORY[0x1E69DC708]);
            v22 = [(PKDashboardPassGroupViewController *)a1 _passcodeButtonTitle];
            v23 = [v21 initWithTitle:v22 style:0 target:a1 action:sel__passcodeTapped];

            v30[0] = v23;
            v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
            v25 = *(a1 + 1440);
            *(a1 + 1440) = v24;
          }

          else
          {
            v26 = *(a1 + 1440);
            *(a1 + 1440) = 0;
          }

          [(PKDashboardPassGroupViewController *)a1 _updateNavigationItemAnimated:a2];
        }

        goto LABEL_35;
      }

      WeakRetained = [v27 account];
      v28 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F3CC7EE0, &unk_1F3CC7EF8, &unk_1F3CC7F10, 0}];
      if (WeakRetained)
      {
        v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(WeakRetained, "state")}];
        v11 = [v28 containsObject:v29] ^ 1;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
LABEL_17:
      v11 = 0;
    }

    goto LABEL_28;
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = PKDashboardPassGroupViewController;
  [(PKDashboardPassGroupViewController *)&v4 viewSafeAreaInsetsDidChange];
  v3 = [(PKDashboardPassGroupViewController *)self view];
  [v3 setNeedsLayout];
}

- (void)viewWillLayoutSubviews
{
  v46.receiver = self;
  v46.super_class = PKDashboardPassGroupViewController;
  [(PKDashboardPassGroupViewController *)&v46 viewWillLayoutSubviews];
  v3 = [(PKDashboardPassGroupViewController *)self view];
  [v3 safeAreaInsets];
  v5 = v4;
  [v3 bounds];
  x = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(PKPassthroughView *)self->_passthroughView setFrame:?];
  [(PKPassthroughView *)self->_portalledPassthroughView setFrame:x, v9, v11, v13];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v14 = *MEMORY[0x1E69DDCE0];
  v15 = *(MEMORY[0x1E69DDCE0] + 8);
  v16 = *(MEMORY[0x1E69DDCE0] + 16);
  v43 = *(MEMORY[0x1E69DDCE0] + 24);
  if (self->_footerBackground)
  {
    v41 = *(MEMORY[0x1E69DDCE0] + 8);
    v42 = *MEMORY[0x1E69DDCE0];
    height = self->_defaultPasscodeButtonSize.height;
    remainder.origin.x = x;
    remainder.origin.y = v9;
    remainder.size.width = v11;
    remainder.size.height = v13;
    v17 = height + 12.0 + 12.0;
    v18 = v5 + v17;
    v19 = x;
    v20 = v9;
    v21 = v11;
    v22 = v13;
    if (self->_footerVisible)
    {
      CGRectDivide(*&v19, &slice, &remainder, v5 + v17, CGRectMaxYEdge);
      x = slice.origin.x;
      y = slice.origin.y;
      width = slice.size.width;
      v18 = slice.size.height;
    }

    else
    {
      y = CGRectGetMaxY(*&v19);
      width = remainder.size.width;
      slice.origin.x = x;
      slice.origin.y = y;
      slice.size.width = remainder.size.width;
      slice.size.height = v5 + v17;
    }

    [(_PKVisibilityBackdropView *)self->_footerBackground setFrame:x, y, width, v18];
    [(_PKVisibilityBackdropView *)self->_footerBackground layoutIfNeeded];
    if (self->_footerVisible)
    {
      v16 = height + 12.0 + 12.0;
    }

    [(_PKVisibilityBackdropView *)self->_footerBackground bounds];
    remainder = v47;
    CGRectDivide(v47, &remainder, &slice, v5, CGRectMaxYEdge);
    __asm { FMOV            V0.2D, #12.0 }

    v29 = vaddq_f64(slice.origin, _Q0);
    __asm { FMOV            V0.2D, #-24.0 }

    passcodeButton = self->_passcodeButton;
    slice.origin = v29;
    slice.size = vaddq_f64(slice.size, _Q0);
    PKSizeAlignedInRect();
    [(UIButton *)passcodeButton setFrame:?];
    v15 = v41;
    v14 = v42;
  }

  v32 = [(PKDashboardPassGroupViewController *)self collectionView];
  [v32 contentInset];
  if (v15 != v36 || v14 != v33 || v43 != v35 || v16 != v34)
  {
    [v32 setContentInset:{v14, v15, v16, v43}];
  }
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = PKDashboardPassGroupViewController;
  [(PKDashboardPassGroupViewController *)&v18 viewDidLayoutSubviews];
  v3 = [(PKDashboardPassGroupViewController *)self collectionView];
  [v3 safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v8 = [(PKPassGroupView *)self->_passGroupView frontmostPassView];
  v9 = [(PKPassGroupView *)self->_passGroupView superview];
  [v8 frameOfVisibleFace];
  [v9 convertRect:v8 fromView:?];

  PKSizeRoundToPixel();
  v11 = v10;
  memset(&slice, 0, sizeof(slice));
  [(PKPassthroughView *)self->_portalledPassthroughView bounds];
  v16 = v19;
  CGRectDivide(v19, &slice, &v16, v5, CGRectMinYEdge);
  +[PKDashboardPassFlowLayout topMarginInFirstSection];
  CGRectDivide(v16, &slice, &v16, v11 + v12, CGRectMinYEdge);
  CGRectDivide(v16, &v16, &slice, v7, CGRectMaxYEdge);
  v13 = [(PKPassFooterView *)self->_passFooterView configuration];
  v14 = [v13 pass];

  if (v14)
  {
    [v14 style];
  }

  PKPassFrontFaceContentSize();
  passFooterView = self->_passFooterView;
  PKSizeAlignedInRect();
  [(PKPassFooterView *)passFooterView setFrame:?];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = PKDashboardPassGroupViewController;
  [(PKDashboardPassGroupViewController *)&v8 viewWillAppear:a3];
  self->_visibility = 1;
  [MEMORY[0x1E69BC740] currentStateForPolicy:0];
  [(PKDashboardPassGroupViewController *)self _visibilityDidChange];
  [(PKDashboardPassGroupViewController *)self _ensureCardPresenceIfNecessary];
  if (([(PKDashboardPassGroupViewController *)self isMovingToParentViewController]& 1) == 0)
  {
    passGroupView = self->_passGroupView;
    v5 = [(PKPass *)self->_frontmostPass uniqueID];
    [(PKPassGroupView *)passGroupView presentPassWithUniqueID:v5 withContext:0 animated:0];
  }

  if ([(PKPaymentPass *)self->_frontmostPaymentPass isIdentityPass])
  {
    if (self->_activeAnalyticsSubject)
    {
      [(PKDashboardPassGroupViewController *)self _endReportingSessionForPassIfNecessary];
    }

    else
    {
      v6 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:self->_frontmostPass];
      if (v6)
      {
        v7 = [MEMORY[0x1E69B8540] reporterForSubject:v6];

        if (v7)
        {
          [MEMORY[0x1E69B8540] endSubjectReporting:v6];
        }
      }
    }

    [(PKDashboardPassGroupViewController *)self _startReportingSessionForPassIfNecessary];
  }
}

- (uint64_t)_visibilityDidChange
{
  if (result)
  {
    v1 = result;
    [(PKDashboardPassGroupViewController *)result _updatePausedState];
    [(PKDashboardPassGroupViewController *)v1 _updateFingerDetection];
    [(PKDashboardPassGroupViewController *)v1 _updateFooterAnimated:?];
    if (*(v1 + 1576) == 2)
    {
      v2 = [v1 dataSource];
      v3 = [v2 groupView];
      v4 = [v3 frontmostPassView];
      v5 = [v4 pass];

      if ([v5 passType] == 1)
      {
        v6 = v2;
        objc_initWeak(&location, v1);
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __66__PKDashboardPassGroupViewController__displayPassAlertIfNecessary__block_invoke;
        v9[3] = &unk_1E80110E0;
        objc_copyWeak(&v11, &location);
        v10 = v5;
        [v6 executeAfterContentIsLoaded:v9];

        objc_destroyWeak(&v11);
        objc_destroyWeak(&location);
      }
    }

    result = objc_opt_respondsToSelector();
    if (result)
    {
      v7 = *(v1 + 1208);
      v8 = *(v1 + 1576);

      return [v7 visibilityDidChangeToState:v8];
    }
  }

  return result;
}

- (void)_ensureCardPresenceIfNecessary
{
  if (a1)
  {
    v2 = atomic_load((a1 + 1552));
    if ((v2 & 1) == 0 && *(a1 + 1569) == 1 && *(a1 + 1576) - 1 <= 1 && (*(a1 + 1458) & 1) == 0 && *(a1 + 1248))
    {
      v3 = *(a1 + 1480);
      v4 = v3;
      if (!v3 || !*(v3 + 1) && (*(v3 + 16) & 1) == 0 && (*(a1 + 1496) & 1) == 0)
      {
        v5 = [a1 collectionView];
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __68__PKDashboardPassGroupViewController__ensureCardPresenceIfNecessary__block_invoke_2;
        v6[3] = &unk_1E8011D28;
        v6[4] = a1;
        [v5 performBatchUpdates:&__block_literal_global_138 completion:v6];
      }
    }
  }
}

- (void)_endReportingSessionForPassIfNecessary
{
  if (a1 && *(a1 + 1280))
  {
    [MEMORY[0x1E69B8540] endSubjectReporting:?];
    v2 = *(a1 + 1280);
    *(a1 + 1280) = 0;
  }
}

- (void)_startReportingSessionForPassIfNecessary
{
  if (a1)
  {
    if (!*(a1 + 1280))
    {
      v2 = atomic_load((a1 + 1552));
      if ((v2 & 1) == 0 && [(PKDashboardPassGroupViewController *)a1 _isForegroundActiveForAnalytics])
      {
        if (*(a1 + 1264))
        {
          v3 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:?];
          if (v3)
          {
            obj = v3;
            v4 = [MEMORY[0x1E69B8540] reporterForSubject:v3];

            if (!v4)
            {
              [MEMORY[0x1E69B8540] beginSubjectReporting:obj];
              objc_storeStrong((a1 + 1280), obj);
            }

            v3 = obj;
          }
        }

        else
        {
          v3 = 0;
        }
      }
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = PKDashboardPassGroupViewController;
  [(PKDashboardPassGroupViewController *)&v9 viewDidAppear:a3];
  self->_visibility = 2;
  [(PKDashboardPassGroupViewController *)self _visibilityDidChange];
  v4 = [(PKDashboardPassGroupViewController *)self collectionView];
  [v4 flashScrollIndicators];

  v10 = *MEMORY[0x1E69BA680];
  v11[0] = *MEMORY[0x1E69BA818];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [(PKDashboardPassGroupViewController *)self reportEventForPassIfNecessary:v5];

  v6 = [(PKDashboardPassGroupViewController *)self view];
  v7 = [v6 window];
  v8 = [v7 windowScene];

  [v8 setActivityItemsConfigurationSource:self->_shareablePassProvider];
}

- (void)reportEventForPassIfNecessary:(uint64_t)a1
{
  v3 = a2;
  if (a1 && v3)
  {
    v24 = v3;
    v4 = *(a1 + 1264);
    if (!v4)
    {
LABEL_53:

      v3 = v24;
      goto LABEL_54;
    }

    v5 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:v4];
    if (!v5)
    {
LABEL_52:

      goto LABEL_53;
    }

    v6 = [v4 passType];
    if (v6 == 1)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = [v24 mutableCopy];
    [v9 setObject:*MEMORY[0x1E69BAC10] forKeyedSubscript:*MEMORY[0x1E69BABE8]];
    if (v6 != 1)
    {
      [MEMORY[0x1E69B8540] subject:v5 sendEvent:v9];
LABEL_51:

      goto LABEL_52;
    }

    [v9 setObject:*MEMORY[0x1E69BAD88] forKeyedSubscript:*MEMORY[0x1E69BAC90]];
    v10 = [v4 organizationName];
    [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69BAC80]];

    v11 = [v4 devicePrimaryPaymentApplication];
    v12 = v11;
    if (v11)
    {
      [v11 paymentNetworkIdentifier];
      v13 = PKPaymentNetworkNameForPaymentCredentialType();
      [v9 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69BAD48]];
    }

    if ([v4 isPeerPaymentPass])
    {
      [v9 setObject:*MEMORY[0x1E69BAEE8] forKeyedSubscript:*MEMORY[0x1E69BA850]];
    }

    if (![v4 isIdentityPass])
    {
LABEL_50:

      [MEMORY[0x1E69B8540] subject:v5 sendEvent:v9];
      v23 = [MEMORY[0x1E695DF00] date];
      PKSetLastViewedFrontOfCardDate();

      goto LABEL_51;
    }

    v14 = [v4 secureElementPass];
    if ([v14 isIdentityPass])
    {
      v15 = [v14 identityType];
      if (v15 <= 2)
      {
        if (v15 == 1)
        {
          v16 = MEMORY[0x1E69BA648];
          goto LABEL_36;
        }

        if (v15 == 2)
        {
          v16 = MEMORY[0x1E69BB2C8];
          goto LABEL_36;
        }
      }

      else
      {
        switch(v15)
        {
          case 3:
            goto LABEL_19;
          case 4:
            v16 = MEMORY[0x1E69BA8E0];
            goto LABEL_36;
          case 5:
LABEL_19:
            v16 = MEMORY[0x1E69BACB0];
LABEL_36:
            v20 = *v16;
LABEL_49:

            [v9 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69BAC88]];
            v22 = [MEMORY[0x1E69B8540] updateIdentityEvent:v9 withPass:v4];
            goto LABEL_50;
        }
      }

LABEL_29:
      v16 = MEMORY[0x1E69BB3A8];
      goto LABEL_36;
    }

    if (![v14 isAccessPass])
    {
      goto LABEL_29;
    }

    v17 = [v14 accessType];
    v18 = [v14 accessReportingType];
    v19 = v18;
    if (v17 <= 2)
    {
      switch(v17)
      {
        case 0:
          v21 = @"general";
          if (v18)
          {
            v21 = v18;
          }

          goto LABEL_44;
        case 1:
          v20 = @"hospitality";
          goto LABEL_48;
        case 2:
          v20 = @"corporate";
LABEL_48:

          goto LABEL_49;
      }
    }

    else
    {
      if (v17 <= 4)
      {
        if (v17 == 3)
        {
          v20 = @"singlefamily";
        }

        else
        {
          v20 = @"cars";
        }

        goto LABEL_48;
      }

      if (v17 == 5)
      {
        v20 = @"multifamily";
        goto LABEL_48;
      }

      if (v17 == 6)
      {
        v20 = @"urbanmobility";
        goto LABEL_48;
      }
    }

    v21 = *MEMORY[0x1E69BB3A8];
LABEL_44:
    v20 = v21;
    goto LABEL_48;
  }

LABEL_54:
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKDashboardPassGroupViewController;
  [(PKDashboardPassGroupViewController *)&v4 viewWillDisappear:a3];
  self->_visibility = 3;
  [(PKDashboardPassGroupViewController *)self _visibilityDidChange];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E69BA680];
  v5 = v12;
  v13[0] = *MEMORY[0x1E69BA820];
  v6 = v13[0];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [(PKDashboardPassGroupViewController *)self reportEventForPassIfNecessary:v7];

  v9.receiver = self;
  v9.super_class = PKDashboardPassGroupViewController;
  [(PKDashboardPassGroupViewController *)&v9 viewDidDisappear:v3];
  self->_visibility = 0;
  [(PKDashboardPassGroupViewController *)self _visibilityDidChange];
  v10 = v5;
  v11 = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [(PKDashboardPassGroupViewController *)self reportEventForPassIfNecessary:v8];
}

- (id)_passGroupsViewNavigationController
{
  if (!a1)
  {
    return 0;
  }

  v1 = atomic_load((a1 + 1552));
  if (v1 & 1) != 0 || !*(a1 + 1248) || (*(a1 + 1456))
  {
    return 0;
  }

  v4 = [a1 navigationController];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)_passGroupsViewController
{
  if (!a1)
  {
    return 0;
  }

  v1 = atomic_load((a1 + 1552));
  if (v1 & 1) != 0 || !*(a1 + 1248) || (*(a1 + 1456))
  {
    return 0;
  }

  v4 = [(PKDashboardPassGroupViewController *)a1 _passGroupsViewNavigationController];
  v2 = [v4 passGroupsViewController];

  return v2;
}

void __78__PKDashboardPassGroupViewController__adjustFrozenOffsetForDismissalToOffset___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 setContentOffset:{*(*(a1 + 32) + 1520), *(*(a1 + 32) + 1528)}];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

- (void)_insertGroupView
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = atomic_load((a1 + 1552));
    if ((v2 & 1) == 0 && *(a1 + 1248) && (*(a1 + 1458) & 1) == 0 && (*(a1 + 1456) & 1) == 0)
    {
      v3 = [a1 collectionView];
      v4 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
      v5 = [v3 cellForItemAtIndexPath:v4];
      if (v5 || (v20[0] = v4, [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "reloadItemsAtIndexPaths:", v6), v6, objc_msgSend(v3, "cellForItemAtIndexPath:", v4), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v7 = v5;
        *(a1 + 1458) = 1;
        v8 = [v5 contentView];
        v9 = [*(a1 + 1248) superview];
        v10 = v9;
        if (v8)
        {
          if (v8 != v9)
          {
            [v8 addSubview:*(a1 + 1248)];
            [*(a1 + 1248) bounds];
            [*(a1 + 1248) anchorPoint];
            v12 = v11;
            v14 = v13;
            [v8 bounds];
            PKSizeAlignedInRect();
            [*(a1 + 1248) setCenter:{v15 + v12 * v16, v17 + v14 * v18}];
            v19 = [*(a1 + 1248) layer];
            [v19 removeAllAnimations];

            [*(a1 + 1248) updatePageControlFrameAnimated:0];
          }
        }
      }
    }
  }
}

uint64_t __68__PKDashboardPassGroupViewController__ensureCardPresenceIfNecessary__block_invoke_2(uint64_t a1)
{
  [(PKDashboardPassGroupViewController *)*(a1 + 32) _insertGroupView];
  [*(*(a1 + 32) + 1248) setNeedsLayout];
  v2 = *(a1 + 32);
  v3 = [v2[158] nfcPayload];
  v4 = [v3 requiresAuthentication];

  return [v2 shouldPresentAllContent:v4 ^ 1u animated:1];
}

- (void)_pushViewControllerWhenNavigationAvailable:(char)a3 animated:(void *)a4 completion:
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (!a1)
  {
    goto LABEL_32;
  }

  if (!v7)
  {
    __break(1u);
  }

  if (*(a1 + 1579) != 1)
  {
    v12 = atomic_load((a1 + 1552));
    if ((v12 & 1) != 0 || !*(a1 + 1248) || *(a1 + 1456) == 1)
    {
      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 134218498;
        v35 = a1;
        v36 = 2114;
        v37 = v15;
        v38 = 2048;
        v39 = v7;
        _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "PKDashboardPassGroupViewController (%p): ignoring requested push of (%{public}@:%p) onto obsolete context.", buf, 0x20u);
      }

      if (v8)
      {
        goto LABEL_7;
      }

      goto LABEL_32;
    }

    v16 = [a1 navigationController];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 presentedViewController];

      if (!v18)
      {
        *(a1 + 1579) = 1;
        objc_initWeak(buf, a1);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __101__PKDashboardPassGroupViewController__pushViewControllerWhenNavigationAvailable_animated_completion___block_invoke;
        aBlock[3] = &unk_1E8018FD0;
        objc_copyWeak(&v32, buf);
        v30 = v7;
        v33 = a3;
        v31 = v8;
        v25 = _Block_copy(aBlock);
        v26 = [v17 transitionCoordinator];
        if (v26 && (([v17 isBeingPresented] & 1) != 0 || objc_msgSend(v17, "isBeingDismissed")))
        {
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __101__PKDashboardPassGroupViewController__pushViewControllerWhenNavigationAvailable_animated_completion___block_invoke_2;
          v27[3] = &unk_1E8015D28;
          v28 = v25;
          [v26 animateAlongsideTransition:0 completion:v27];
        }

        else
        {
          v25[2](v25);
        }

        objc_destroyWeak(&v32);
        objc_destroyWeak(buf);
        goto LABEL_31;
      }

      v19 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 134218498;
        v35 = a1;
        v36 = 2114;
        v37 = v21;
        v38 = 2048;
        v39 = v7;
        _os_log_impl(&dword_1BD026000, v19, OS_LOG_TYPE_DEFAULT, "PKDashboardPassGroupViewController (%p): ignoring requested push of (%{public}@:%p) due to an existing presented view controller.", buf, 0x20u);
      }

      if (!v8)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v22 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 134218498;
        v35 = a1;
        v36 = 2114;
        v37 = v24;
        v38 = 2048;
        v39 = v7;
        _os_log_impl(&dword_1BD026000, v22, OS_LOG_TYPE_DEFAULT, "PKDashboardPassGroupViewController (%p): ignoring requested push of (%{public}@:%p) due to missing navigation controller.", buf, 0x20u);
      }

      if (!v8)
      {
        goto LABEL_31;
      }
    }

    (*(v8 + 2))(v8, 1);
LABEL_31:

    goto LABEL_32;
  }

  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 134218498;
    v35 = a1;
    v36 = 2114;
    v37 = v11;
    v38 = 2048;
    v39 = v7;
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "PKDashboardPassGroupViewController (%p): ignoring requested push of (%{public}@:%p) due to existing push.", buf, 0x20u);
  }

  if (v8)
  {
LABEL_7:
    (*(v8 + 2))(v8, 1);
  }

LABEL_32:
}

void __101__PKDashboardPassGroupViewController__pushViewControllerWhenNavigationAvailable_animated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained navigationController];
    v4 = v3;
    if (v3)
    {
      [v3 pushViewController:*(a1 + 32) animated:*(a1 + 56)];
      v5 = *(a1 + 40);
      if (v5)
      {
        v6 = *(v5 + 16);
LABEL_7:
        v6();
      }
    }

    else
    {
      v7 = *(a1 + 40);
      if (v7)
      {
        v6 = *(v7 + 16);
        goto LABEL_7;
      }
    }

    v8[1579] = 0;

    WeakRetained = v8;
  }
}

- (BOOL)willActivateNavigationItemHandleWithVoucher:(id)a3
{
  v4 = a3;
  if (!v4 || (p_navigationItem = &self->_navigationItem, self->_navigationItem.active.handle) || p_navigationItem->connecting.pendingVoucher)
  {
    __break(1u);
  }

  else
  {
    p_navigationItem->connecting.pendingVoucher = v4;
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (void)beginProvidingForNavigationItemHandle:(id)a3 withConsumedVoucher:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && v7 && (pendingVoucher = self->_navigationItem.connecting.pendingVoucher, pendingVoucher == v7) && (v13 = v7, !self->_navigationItem.active.handle))
  {
    self->_navigationItem.connecting.pendingVoucher = 0;

    handle = self->_navigationItem.active.handle;
    self->_navigationItem.active.handle = v6;

    v10 = [(PKDashboardPassGroupViewController *)&self->super.super.super.super.super.isa _navigationItemConfiguration];
    v6 = v10;
    if (v10)
    {
      v11 = [(PKNavigationItemConfiguration *)v10 copy];
      *(v11 + 8) = 1;
      v12 = *(v11 + 40);
      *(v11 + 40) = 0;

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  v11 = 0;
LABEL_7:

  [(PKDashboardPassGroupViewController *)self _applyNavigationItemConfiguration:v11];
}

- (PKNavigationItemConfiguration)_navigationItemConfiguration
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_alloc_init(PKNavigationItemConfiguration);
  [(PKNavigationItemConfiguration *)v2 setTitleView:?];
  if (v2)
  {
    v2->_largeTitleDisplayMode = 2;
  }

  v3 = [a1[158] localizedDescription];
  v5 = v3;
  if (v2)
  {
    objc_setProperty_nonatomic_copy(v2, v4, v3, 88);

    v2->_backButtonDisplayMode = 2;
  }

  else
  {
  }

  v6 = [(PKDashboardPassGroupViewController *)a1 _leadingItemGroups];
  [(PKNavigationItemConfiguration *)v2 setLeadingItemGroups:v6];

  v7 = [(PKDashboardPassGroupViewController *)a1 _trailingItemGroups];
  [(PKNavigationItemConfiguration *)v2 setTrailingItemGroups:v7];

  if (v2)
  {
    objc_setProperty_nonatomic_copy(v2, v8, a1[180], 120);
  }

  return v2;
}

- (void)_applyNavigationItemConfiguration:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    [(PKNavigationItemConfiguration *)v3 applyToViewController:a1];
    v3 = v4;
  }
}

- (id)configurationForNavigationItemHandle:(id)a3
{
  result = a3;
  if (result)
  {
    v5 = result;
    v6 = [(PKDashboardPassGroupViewController *)&self->super.super.super.super.super.isa _navigationItemConfiguration];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)endProvidingForNavigationItemHandle:(id)a3
{
  v4 = a3;
  if (v4 && (handle = self->_navigationItem.active.handle, handle == v4))
  {
    self->_navigationItem.active.handle = 0;
    v6 = v4;

    [(PKDashboardPassGroupViewController *)self _updateNavigationItemAnimated:?];
  }

  else
  {
    __break(1u);
  }
}

- (void)_updateNavigationItemAnimated:(uint64_t)a1
{
  if (a1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__PKDashboardPassGroupViewController__updateNavigationItemAnimated___block_invoke;
    aBlock[3] = &unk_1E8010970;
    aBlock[4] = a1;
    v3 = _Block_copy(aBlock);
    v4 = v3;
    v5 = MEMORY[0x1E69DD250];
    if (a2)
    {
      [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:6 animations:v3 completion:0];
    }

    else
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __68__PKDashboardPassGroupViewController__updateNavigationItemAnimated___block_invoke_2;
      v6[3] = &unk_1E8010B50;
      v7 = v3;
      [v5 performWithoutAnimation:v6];
    }
  }
}

- (id)connectTransitionCoordinatorToReceiver:(id)a3
{
  v5 = a3;
  if (!v5 || self->_transitionCoordinator)
  {
    goto LABEL_9;
  }

  v3 = v5;
  v6 = atomic_load(&self->_invalidated);
  if ((v6 & 1) != 0 || self->_dismissed || !self->_passGroupView)
  {
    goto LABEL_10;
  }

  v7 = 0;
  atomic_compare_exchange_strong(&self->_connecting, &v7, 1u);
  if (v7 || (v8 = (*(v5 + 2))(v5, self), self->_transitionCoordinator != v8) || (v9 = v8, v10 = 1, atomic_compare_exchange_strong(&self->_connecting, &v10, 0), v10 != 1))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    v9 = 0;
  }

  return v9;
}

- (void)transitionCoordinatorWillConnectReceiver:(id)a3 forRequest:(id)a4
{
  v15 = a3;
  v8 = a4;
  if (!v15)
  {
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = atomic_load(&self->_invalidated);
  if ((v9 & 1) != 0 || self->_transitionCoordinator)
  {
    goto LABEL_12;
  }

  objc_storeStrong(&self->_transitionCoordinator, a3);
  self->_sendingToTransitionCoordinator = 0;
  passGroupView = self->_passGroupView;
  transitionCoordinator = self->_transitionCoordinator;
  if (!transitionCoordinator)
  {
    goto LABEL_13;
  }

  v11 = transitionCoordinator->_state;
  v12 = v11;
  if (!v11)
  {
    goto LABEL_14;
  }

  for (i = v11->_passGroupView; ; i = 0)
  {
    v14 = i;

    if (passGroupView == v14)
    {
      break;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    v12 = 0;
LABEL_14:
    ;
  }
}

- (void)terminateTransitionCoordinator:(id)a3
{
  v4 = a3;
  if (v4 && (transitionCoordinator = self->_transitionCoordinator, v6 = v4, transitionCoordinator == v4))
  {
    self->_transitionCoordinator = 0;

    [(PKDashboardPassGroupViewController *)self _relinquishGroupView];
  }

  else
  {
    __break(1u);
  }
}

- (void)transitionCoordinator:(id)a3 willBeginTransition:(id)a4 dirty:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  if (v7 && (v9 = v8) != 0 && self->_transitionCoordinator == v7)
  {
    objc_storeStrong(&self->_transition, a4);
    if (self->_sendingToTransitionCoordinator && !self->_dismissed)
    {
      self->_dismissed = 1;
      v10 = [(PKDashboardPassGroupViewController *)self view];
      v11 = [(PKDashboardPassGroupViewController *)self collectionView];
      self->_freezeContentOffset = 1;
      [v11 bounds];
      self->_frozenContentOffset.x = v12;
      self->_frozenContentOffset.y = v13;
      [(PKDashboardPassDataSource *)self->_dataSource freezeContentLoaded];
      [v10 _setSafeAreaInsetsFrozen:1];
      [v11 setScrollEnabled:0];
      v14 = MEMORY[0x1E69DD250];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __86__PKDashboardPassGroupViewController_transitionCoordinator_willBeginTransition_dirty___block_invoke;
      v20[3] = &unk_1E8010970;
      v15 = v10;
      v21 = v15;
      [v14 performWithoutAnimation:v20];

      [(PKDashboardPassGroupViewController *)self _updateTitlePassView];
      if (self->_shouldPromptForReviewOnDismissal)
      {
        self->_shouldPromptForReviewOnDismissal = 0;
        v16 = atomic_load(&self->_invalidated);
        if (v16)
        {
          v17 = [v15 window];
          v18 = [v17 windowScene];

          if (v18)
          {
            v19 = objc_alloc_init(PKStoreKitReviewPromptHelper);
            [(PKStoreKitReviewPromptHelper *)v19 requestReviewInSceneIfEligible:v18 trigger:self->_reviewTrigger];
          }
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)_updateTitlePassView
{
  if (!a1)
  {
    return;
  }

  if (*(a1 + 1459))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 1456) ^ 1;
  }

  v21 = [*(a1 + 1248) frontmostPassView];
  v3 = [v21 pass];
  v4 = v3;
  v5 = *(a1 + 1624);
  if (v3)
  {
    v6 = v5 == v3;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    *(a1 + 1624) = 0;

    v7 = *(a1 + 1632);
    *(a1 + 1632) = 0;
  }

  v8 = [*(a1 + 1376) count];
  v9 = [*(a1 + 1424) count];
  if (!v4 || (v2 & ((v9 + v8) < 2)) == 0)
  {
    v11 = *(a1 + 1640);
    v10 = 0;
    goto LABEL_15;
  }

  v10 = *(a1 + 1632);
  if (!v10)
  {
    objc_storeStrong((a1 + 1624), v4);
    if ([v4 passType] == 1)
    {
      v12 = v4;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = [v13 associatedAccountServiceAccountIdentifier];
    if (v14)
    {
    }

    else
    {
      v15 = [v13 dynamicLayerConfiguration];

      if (!v15)
      {
        goto LABEL_26;
      }
    }

    if ((PKIsLowEndDevice() & 1) == 0)
    {
      v16 = [v21 rendererState];
      v20 = [[PKPassView alloc] initWithPass:v4 content:4 suppressedContent:1527 rendererState:v16];
      [(PKPassView *)v20 setModallyPresented:1];
      [(PKPassView *)v20 setPaused:1];
      v17 = *(a1 + 1632);
      *(a1 + 1632) = v20;
      goto LABEL_28;
    }

LABEL_26:
    v16 = [[PKPassView alloc] initWithPass:v4 content:4 suppressedContent:2039];
    v17 = [(PKPassView *)v16 snapshotOfFrontFaceWithRequestedSize:50.0, 50.0];
    v18 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v17];
    v19 = *(a1 + 1632);
    *(a1 + 1632) = v18;

    [*(a1 + 1632) setContentMode:1];
    [*(a1 + 1632) setAccessibilityIgnoresInvertColors:1];
LABEL_28:

    if ((*(a1 + 1459) & 1) == 0)
    {
      [*(a1 + 1640) setTitleView:*(a1 + 1632) animated:1];
    }

    goto LABEL_16;
  }

  v11 = *(a1 + 1640);
LABEL_15:
  [v11 setTitleView:v10 animated:1];
LABEL_16:
}

- (void)transitionCoordinator:(id)a3 didBeginTransition:(id)a4 dirty:(BOOL)a5 withState:(id)a6
{
  v43 = a3;
  v11 = a4;
  v12 = a6;
  if (!v43 || self->_transitionCoordinator != v43 || !v11 || !v12)
  {
    goto LABEL_32;
  }

  v7 = 1496;
  if (self->_sendingToTransitionCoordinator)
  {
    v13 = v12;
    transitionCoordinator = self->_transitionCoordinator;
    if (!transitionCoordinator || !self->_sendingToTransitionCoordinator)
    {
      goto LABEL_32;
    }

    v6 = v13;
    if (self->_passGroupViewInserted)
    {
      v15 = transitionCoordinator->_state;
      v7 = v15;
      if (!v15)
      {
        goto LABEL_33;
      }

      for (i = v15->_passGroupView; ; i = 0)
      {
        v17 = i;

        if (v17)
        {
          break;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        ;
      }

      v18 = [(PKPassGroupView *)v17 superview];
      if (v18)
      {
        v19 = [(PKDashboardPassGroupViewController *)self view];
        [v19 bounds];
        [v18 convertRect:v19 fromView:?];
        v41 = v20;
        v42 = v21;
        v23 = v22;
        v25 = v24;
        v26 = v6[3];
        if (v26)
        {
          v27 = v26[3];
          v28 = v26[4];
          v30 = v26[5];
          v29 = v26[6];
          v31 = v26[15];
        }

        else
        {
          v27 = 0.0;
          v28 = 0.0;
          v30 = 0.0;
          v29 = 0.0;
          v31 = 0.0;
        }

        v32 = v28 * v31;
        v33 = v31 == 1.0;
        if (v31 == 1.0)
        {
          v34 = v27;
        }

        else
        {
          v34 = v27 * v31;
        }

        if (v33)
        {
          v35 = v28;
        }

        else
        {
          v35 = v32;
        }

        [(PKPassGroupView *)v17 center];
        v37 = v36;
        v38 = fmin(fmax(v36, v42 - v25 + v29 * v35), v25 + v42 + v25 - (1.0 - v29) * v35);
        if (v39 != fmin(fmax(v39, v41 - v23 + v30 * v34), v23 + v41 + v23 - (1.0 - v30) * v34) || v37 != v38)
        {
          [(PKPassGroupView *)v17 setCenter:?];
          [(PKPassGroupView *)v17 updatePageControlFrameAnimated:0];
        }
      }
    }
  }
}

- (void)transitionCoordinator:(id)a3 transitionWillMoveNavigationItem:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7 && self->_transitionCoordinator == v7)
  {
  }

  else
  {
    __break(1u);
  }
}

- (void)transitionCoordinator:(id)a3 transitionDidMoveNavigationItem:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7 && self->_transitionCoordinator == v7)
  {
  }

  else
  {
    __break(1u);
  }
}

- (void)transitionCoordinatorWillInterruptTransition:(id)a3
{
  v4 = a3;
  if (v4 && self->_transitionCoordinator == v4)
  {
    transition = self->_transition;
    self->_transition = 0;
    v6 = v4;
  }

  else
  {
    __break(1u);
  }
}

- (void)transitionCoordinatorDidInterruptTransition:(id)a3
{
  v4 = a3;
  if (v4 && self->_transitionCoordinator == v4)
  {
  }

  else
  {
    __break(1u);
  }
}

- (void)transitionCoordinator:(id)a3 transitionWillMoveView:(id)a4 withState:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v8 = a4;
  v9 = a5;
  if (!v22 || self->_transitionCoordinator != v22 || !v8 || !v9)
  {
    goto LABEL_22;
  }

  if (self->_sendingToTransitionCoordinator)
  {
    goto LABEL_19;
  }

  passGroupView = self->_passGroupView;
  if (!passGroupView || ![(PKPassGroupView *)passGroupView isLoaned])
  {
LABEL_22:
    __break(1u);
  }

  v11 = atomic_load(&self->_invalidated);
  v12 = self->_passGroupView;
  if ((v11 & 1) == 0 && v12 && !self->_passGroupViewAcquired)
  {
    v13 = [(PKDashboardPassGroupViewController *)self viewIfLoaded];
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_passGroupView;
      *buf = 134218240;
      v24 = self;
      v25 = 2048;
      v26 = v15;
      _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "PKDashboardPassGroupViewController (%p): acquiring group view %p.", buf, 0x16u);
    }

    self->_passGroupViewAcquired = 1;
    v16 = [(PKPassGroupView *)self->_passGroupView delegate];
    objc_storeWeak(&self->_originalGroupViewDelegate, v16);

    [(PKPassGroupView *)self->_passGroupView setDelegate:self];
    [(PKPassGroupView *)self->_passGroupView addPassGroupViewObserver:self];
    v17 = [(PKPassGroupView *)self->_passGroupView frontmostPassView];
    v18 = [v17 pass];

    if (!v18)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v24 = self;
        _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "PKDashboardPassGroupViewController (%p): acquired a group view with no frontmost pass.", buf, 0xCu);
      }
    }

    [(PKDashboardPassGroupViewController *)self _setFrontmostPass:v18];
    [v13 setNeedsLayout];
    [(PKDashboardPassGroupViewController *)self _updatePassFooterViewWithReload:0 postTransaction:?];
    v19 = [(PKDashboardPassGroupViewController *)self viewIfLoaded];
    [v19 setNeedsLayout];

    v12 = self->_passGroupView;
  }

  self->_paused = [(PKPassGroupView *)v12 isPaused];
  [(PKDashboardPassGroupViewController *)self _updatePausedState];
  v20 = [(PKPass *)self->_frontmostPass nfcPayload];
  v21 = [v20 requiresAuthentication];

  [(PKDashboardViewController *)self shouldPresentAllContent:v21 ^ 1u animated:0];
LABEL_19:
}

- (uint64_t)_updatePausedState
{
  if (result)
  {
    v1 = result;
    if (*(result + 1576) && *(result + 1459) == 1)
    {
      v2 = atomic_load((result + 1552));
    }

    else
    {
      v2 = 1;
    }

    v3 = v2 & 1;
    if (*(result + 1578) != v3)
    {
      *(result + 1578) = v3;
      result = [*(result + 1248) isLoaned];
      if (result)
      {
        v4 = *(v1 + 1248);
        v5 = *(v1 + 1578);

        return [v4 setPaused:v5];
      }
    }
  }

  return result;
}

- (void)transitionCoordinator:(id)a3 transitionWillInterruptViewMove:(id)a4 withState:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  if (v10 && self->_transitionCoordinator == v10 && v8 && v9 && !self->_sendingToTransitionCoordinator)
  {
    self->_passGroupViewInserted = 0;
  }

  else
  {
    __break(1u);
  }
}

- (void)transitionCoordinator:(id)a3 transitionDidMoveView:(id)a4 withState:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  if (v10 && self->_transitionCoordinator == v10 && v8 && v9)
  {
    if (self->_sendingToTransitionCoordinator)
    {
      [(PKDashboardPassGroupViewController *)self _relinquishGroupView];
    }

    else
    {
      [(PKDashboardPassGroupViewController *)self _insertGroupView];
      [(PKPassGroupView *)self->_passGroupView setNeedsLayout];
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)transitionCoordinatorWillEndTransition:(id)a3 wasDirty:(BOOL)a4
{
  v5 = a3;
  if (v5 && self->_transitionCoordinator == v5)
  {
    transition = self->_transition;
    self->_transition = 0;
    v7 = v5;
  }

  else
  {
    __break(1u);
  }
}

- (void)transitionCoordinatorDidEndTransition:(id)a3 wasDirty:(BOOL)a4
{
  v5 = a3;
  if (v5 && self->_transitionCoordinator == v5)
  {
  }

  else
  {
    __break(1u);
  }
}

- (void)transitionCoordinator:(id)a3 transition:(id)a4 willUpdateFromState:(id)a5 interactive:(BOOL)a6
{
  v11 = a3;
  v9 = a4;
  v10 = a5;
  if (v11 && self->_transitionCoordinator == v11 && v9 && v10)
  {
  }

  else
  {
    __break(1u);
  }
}

- (void)transitionCoordinator:(id)a3 transition:(id)a4 didUpdateFromState:(id)a5 toState:(id)a6 interactive:(BOOL)a7
{
  v14 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v14 && self->_transitionCoordinator == v14 && v11 && v12 && v13)
  {
  }

  else
  {
    __break(1u);
  }
}

- (id)transitionCoordinator:(id)a3 prepareForSendingNavigationItem:(id)a4
{
  v6 = a3;
  result = a4;
  if (v6 && self->_transitionCoordinator == v6 && ((v8 = result, v9 = self->_navigationItem.active.handle, result = [(PKNavigationItemHandle *)v9 consume], (v10 = result) != 0) || v6->_tombstoned || v6->_invalidated))
  {

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)transitionCoordinatorWillInvertSender:(id)a3
{
  result = a3;
  if (result && self->_transitionCoordinator == result && self->_sendingToTransitionCoordinator)
  {
    self->_sendingToTransitionCoordinator = 0;
  }

  __break(1u);
  return result;
}

- (void)transitionCoordinatorSenderDidTapView:(id)a3
{
  v4 = a3;
  if (v4 && self->_transitionCoordinator == v4 && (v5 = v4, !self->_sendingToTransitionCoordinator))
  {
    [(PKDashboardPassGroupViewController *)self _groupViewTapped];
  }

  else
  {
    __break(1u);
  }
}

- (void)_groupViewTapped
{
  if (a1)
  {
    v2 = *(a1 + 1480);
    if (v2 && (*(a1 + 1496) & 1) != 0)
    {
      [(PKPGVTransitionCoordinator *)*(a1 + 1480) _assertSender:a1 deallocating:0];
      v3 = v2;
      [v3 senderDidTapView:a1];
    }

    else
    {

      [(PKDashboardPassGroupViewController *)a1 _dismiss];
    }
  }
}

- (id)transitionCoordinatorWillInvertReceiver:(id)a3
{
  result = a3;
  if (result && (v5 = result, self->_transitionCoordinator == result) && !self->_sendingToTransitionCoordinator)
  {
    self->_sendingToTransitionCoordinator = 1;
    v6 = self;

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (double)_presentedViewFrameForViewWithSize:(uint64_t)a3
{
  if (a2)
  {
    v5 = *(a2 + 1832);
    v6 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
    v22 = [v5 layoutAttributesForItemAtIndexPath:v6];

    v7 = *(a3 + 80);
    v8 = *(a3 + 88);
    v10 = *(a3 + 96);
    v9 = *(a3 + 104);
    v11 = *(a3 + 112);
    if (v11 != 1.0)
    {
      v7 = v7 * v11;
      v8 = v8 * v11;
      v10 = v10 * v11;
      v9 = v9 * v11;
    }

    [v22 frame];
    PKSizeAlignedInRect();
    v16 = *(a3 + 80);
    v17 = *(a3 + 96);
    v18 = *(a3 + 48);
    *(a1 + 64) = *(a3 + 64);
    *(a1 + 80) = v16;
    *(a1 + 96) = v17;
    *(a1 + 112) = *(a3 + 112);
    v19 = *(a3 + 16);
    *a1 = *a3;
    *(a1 + 16) = v19;
    *(a1 + 32) = *(a3 + 32);
    *(a1 + 48) = v18;
    v20 = v13 - v7 + *(a3 + 40) * (v15 - (-v10 - v7));
    *(a1 + 120) = v12 - v8 + *(a3 + 32) * (v14 - (-v9 - v8));
    *(a1 + 128) = v20;
  }

  else
  {
    *(a1 + 128) = 0;
    result = 0.0;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

- ($2DE36CBD7484E59DE1E6BE98927F692F)externalVCContext:(SEL)a3 destinationFrameForViewWithSize:(id)a4 inViewControllerFrame:(id *)a5
{
  v9 = a4;
  v10 = 1480;
  if (!self->_transitionCoordinator)
  {
    goto LABEL_8;
  }

  v21 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  for (i = *(v9 + 6); ; i = 0)
  {
    v12 = i;
    v10 = *(&self->super.super.super.super.super.isa + v10);

    if (v12 == v10)
    {
      break;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    ;
  }

  retstr->var1.y = 0.0;
  *&retstr->var0.var3.var1.bottom = 0u;
  *&retstr->var0.var4.var0 = 0u;
  *&retstr->var0.var3.var0.bottom = 0u;
  *&retstr->var0.var3.var1.top = 0u;
  retstr->var0.var2 = 0u;
  *&retstr->var0.var3.var0.top = 0u;
  retstr->var0.var0 = 0u;
  retstr->var0.var1 = 0u;
  v13 = *&a5->var3.var1.top;
  v22[4] = *&a5->var3.var0.bottom;
  v22[5] = v13;
  v22[6] = *&a5->var3.var1.bottom;
  var0 = a5->var4.var0;
  var1 = a5->var1;
  v22[0] = a5->var0;
  v22[1] = var1;
  v15 = *&a5->var3.var0.top;
  v22[2] = a5->var2;
  v22[3] = v15;
  v16 = [(PKDashboardPassGroupViewController *)self view];
  v17 = [(PKDashboardPassGroupViewController *)self collectionView];
  [v16 convertPoint:v17 fromView:{retstr->var1.x, retstr->var1.y}];
  retstr->var1.x = v18;
  retstr->var1.y = v19;

  return result;
}

- (BOOL)_willUpdateControllerPositionForExternalVCContext:(id)a3 inTransition:(id)a4 viewSize:(id *)a5 expectedViewFrame:(id *)a6 instantaneousPositionDisplacement:(UIOffset *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = 1480;
  if (!self->_transitionCoordinator)
  {
    goto LABEL_20;
  }

  a4 = v13;
  if (!v12)
  {
    goto LABEL_21;
  }

  for (i = v12[6]; ; i = 0)
  {
    v16 = i;
    v14 = *(&self->super.super.super.super.super.isa + v14);

    if (v16 == v14 && a4 && a6)
    {
      if (!self->_sendingToTransitionCoordinator)
      {
        v66 = 0.0;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0;
        v61 = 0u;
        v58 = 0;
        v59 = 0;
        v17 = *&a5->var3.var1.top;
        v54 = *&a5->var3.var0.bottom;
        v55 = v17;
        v56 = *&a5->var3.var1.bottom;
        var0 = a5->var4.var0;
        var1 = a5->var1;
        v50 = a5->var0;
        v51 = var1;
        v19 = *&a5->var3.var0.top;
        var2 = a5->var2;
        v53 = v19;
        v20 = [(PKDashboardPassGroupViewController *)self view];
        v21 = [(PKDashboardPassGroupViewController *)self collectionView];
        [v20 convertPoint:v21 fromView:{*(&v65 + 1), v66}];
        *(&v65 + 1) = v22;
        v66 = v23;

        v24 = v61;
        a6->var0.var2 = v60;
        *&a6->var0.var3.var0.top = v24;
        a6->var1.y = v66;
        v25 = v65;
        *&a6->var0.var3.var1.bottom = v64;
        *&a6->var0.var4.var0 = v25;
        v26 = v63;
        *&a6->var0.var3.var0.bottom = v62;
        *&a6->var0.var3.var1.top = v26;
        v27 = v59;
        a6->var0.var0 = v58;
        a6->var0.var1 = v27;
        LOBYTE(a5) = 1;
        *a7 = *MEMORY[0x1E69DE258];
        goto LABEL_19;
      }

      if (self->_passGroupViewInserted)
      {
        LOBYTE(a5) = 0;
        goto LABEL_19;
      }

      v28 = [(PKDashboardPassGroupViewController *)self view];
      v14 = [(PKDashboardPassGroupViewController *)self collectionView];
      [v14 bounds];
      v30 = v29;
      v32 = v31;
      [v14 adjustedContentInset];
      v34 = v33;
      v66 = 0.0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0;
      v61 = 0u;
      v58 = 0;
      v59 = 0;
      v35 = *&a5->var3.var1.top;
      v54 = *&a5->var3.var0.bottom;
      v55 = v35;
      v56 = *&a5->var3.var1.bottom;
      var0 = a5->var4.var0;
      v36 = a5->var1;
      v50 = a5->var0;
      v51 = v36;
      v37 = *&a5->var3.var0.top;
      var2 = a5->var2;
      v53 = v37;
      [(PKDashboardPassGroupViewController *)&v58 _presentedViewFrameForViewWithSize:&v50];
      height = v59.height;
      v39 = v66;
      if (*&v65 != 1.0)
      {
        height = v59.height * *&v65;
      }

      v40 = height + v66 - v60.y * height;
      a5 = (v40 >= v32);
      if (v40 < v32)
      {
        goto LABEL_18;
      }

      v41 = *(&v65 + 1);
      v42 = -v34 - v32;
      if (v42 <= 0.0)
      {
        goto LABEL_17;
      }

      if (self->_freezeContentOffset)
      {
        break;
      }
    }

LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  self->_frozenContentOffset.x = v30;
  self->_frozenContentOffset.y = -v34;
  *&v50.x = MEMORY[0x1E69E9820];
  *&v50.y = 3221225472;
  *&v51.width = __78__PKDashboardPassGroupViewController__adjustFrozenOffsetForDismissalToOffset___block_invoke;
  *&v51.height = &unk_1E8010970;
  *&var2.x = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:&v50];
  a7->horizontal = v30 - v30;
  a7->vertical = v42;
LABEL_17:
  [v28 convertPoint:v14 fromView:{v41, v39}];
  *(&v65 + 1) = v43;
  v66 = v44;
  v45 = v61;
  a6->var0.var2 = v60;
  *&a6->var0.var3.var0.top = v45;
  v46 = v63;
  *&a6->var0.var3.var0.bottom = v62;
  *&a6->var0.var3.var1.top = v46;
  v47 = v59;
  a6->var0.var0 = v58;
  a6->var0.var1 = v47;
  v48 = v65;
  *&a6->var0.var3.var1.bottom = v64;
  *&a6->var0.var4.var0 = v48;
  a6->var1.y = v66;
LABEL_18:

LABEL_19:
  return a5;
}

- (void)setFooterSuppressed:(BOOL)a3
{
  if (self->_footerSuppressed != a3)
  {
    self->_footerSuppressed = a3;
    [(PKDashboardPassGroupViewController *)self _updatePassFooterViewWithReload:0 postTransaction:?];
  }
}

- (void)_updatePassFooterViewWithReload:(char)a3 postTransaction:
{
  v47 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((a3 & 1) == 0)
    {
      v6 = *(a1 + 1592);
      if (v6)
      {
        dispatch_source_cancel(v6);
        v7 = *(a1 + 1592);
        *(a1 + 1592) = 0;
      }
    }

    v8 = [*(a1 + 1248) frontmostPassView];
    v9 = v8;
    v10 = 0;
    v11 = atomic_load((a1 + 1552));
    if (v8 && (v11 & 1) == 0)
    {
      v12 = [v8 pass];
      if (PKValueAddedServicesEnabledForPass())
      {
        if ([*(a1 + 1232) isInRestrictedMode])
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }
      }

      else
      {
        v13 = 0;
      }

      v10 = [[PKPassFooterViewConfiguration alloc] initWithPassView:v9 state:v13];
    }

    v14 = atomic_load((a1 + 1552));
    v15 = 0.0;
    if (v14 & 1) != 0 || ![(PKPassFooterViewConfiguration *)v10 state]|| (*(a1 + 1616) & 1) != 0 || *(a1 + 1457) != 1 || (*(a1 + 1808))
    {
      v16 = 0;
      v17 = 0;
      a2 = 0;
      v18 = v10;
      v10 = 0;
    }

    else
    {
      v18 = [v9 pass];
      v15 = [(PKDashboardPassGroupViewController *)a1 _passFooterAlphaForPass:v18 postTransaction:a3];
      v16 = 1;
      v17 = 1;
    }

    v19 = *(a1 + 1580);
    [*(a1 + 1664) alpha];
    v21 = v20;
    v22 = [*(a1 + 1664) configuration];
    v23 = PKEqualObjects();

    v24 = v23 ^ 1;
    if ((v16 & a2 & 1) == 0 && v19 == v17 && (v24 & 1) == 0 && v21 == v15)
    {
      goto LABEL_54;
    }

    v38 = [a1 viewIfLoaded];
    *(a1 + 1580) = v17;
    v25 = *(a1 + 1664);
    if (v25)
    {
      v26 = v19 == v17;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      if (v16)
      {
        if (!v25)
        {
          goto LABEL_32;
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (v16)
      {
        [v25 willBecomeVisibleAnimated:1];
        if (!*(a1 + 1664))
        {
LABEL_32:
          v27 = objc_alloc_init(PKPassFooterView);
          v28 = *(a1 + 1664);
          *(a1 + 1664) = v27;

          [*(a1 + 1664) setDelegate:a1];
          if (v38)
          {
            [*(a1 + 1664) setAlpha:0.0];
            [*(a1 + 1656) insertSubview:*(a1 + 1664) atIndex:0];
          }

          [*(a1 + 1664) willBecomeVisibleAnimated:1];
        }

LABEL_35:
        if ((a2 | v24) == 1)
        {
          v29 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = *(a1 + 1664);
            *buf = 134349312;
            v44 = a1;
            v45 = 2050;
            v46 = v30;
            _os_log_impl(&dword_1BD026000, v29, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): configuring PKPassFooterView %{public}p.", buf, 0x16u);
          }

          if (v21 > 0.0)
          {
            v31 = v19;
          }

          else
          {
            v31 = 0;
          }

          v32 = (v31 & 1) != 0 || *(a1 + 1584) != 0;
          v33 = 2;
          if (!a2)
          {
            v33 = 0;
          }

          [*(a1 + 1664) configureWithConfiguration:v10 context:0 options:v32 | v33];
        }

        ++*(a1 + 1584);
        [v38 setNeedsLayout];
        [v38 layoutIfNeeded];
        goto LABEL_50;
      }

      [v25 willBecomeHiddenAnimated:1];
    }

    ++*(a1 + 1584);
LABEL_50:
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__PKDashboardPassGroupViewController__updatePassFooterViewWithReload_postTransaction___block_invoke_2;
    aBlock[3] = &unk_1E80119C8;
    aBlock[4] = a1;
    *&aBlock[5] = v15;
    v34 = _Block_copy(aBlock);
    v35 = v34;
    if (v38 != 0 && v21 != v15)
    {
      objc_initWeak(buf, a1);
      v36 = MEMORY[0x1E69DD250];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __86__PKDashboardPassGroupViewController__updatePassFooterViewWithReload_postTransaction___block_invoke_3;
      v39[3] = &unk_1E80110B8;
      objc_copyWeak(&v41, buf);
      v40 = &__block_literal_global_146_1;
      [v36 animateWithDuration:6 delay:v35 options:v39 animations:0.25 completion:0.0];

      objc_destroyWeak(&v41);
      objc_destroyWeak(buf);
    }

    else
    {
      v37 = (*(v34 + 2))(v34);
      __86__PKDashboardPassGroupViewController__updatePassFooterViewWithReload_postTransaction___block_invoke(v37, a1);
    }

LABEL_54:
  }
}

- (uint64_t)_passFooterAlphaForPass:(char)a3 postTransaction:
{
  v5 = a2;
  if ([v5 style] != 9)
  {
    if ([v5 passType])
    {
LABEL_7:
      v6 = 0;
      goto LABEL_10;
    }

    v7 = [v5 nfcPayload];
    v8 = v7 != 0;
LABEL_9:

    v6 = v8;
    goto LABEL_10;
  }

  if ((a3 & 1) == 0)
  {
    if (*(a1 + 1600))
    {
      goto LABEL_7;
    }

    v7 = [*(a1 + 1264) nfcPayload];
    v8 = [v7 requiresAuthentication];
    goto LABEL_9;
  }

  v6 = 1;
LABEL_10:

  return v6;
}

void __86__PKDashboardPassGroupViewController__updatePassFooterViewWithReload_postTransaction___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!--*(v2 + 396))
  {
    v3 = *(v2 + 1580);
    v5 = v2;
    v4 = v2[208];
    if (v3 == 1)
    {
      [v4 didBecomeVisibleAnimated:1];
    }

    else
    {
      [v4 didBecomeHiddenAnimated:1];
      [v5[208] configureWithConfiguration:0 context:0 options:0];
    }

    v2 = v5;
  }
}

void __86__PKDashboardPassGroupViewController__updatePassFooterViewWithReload_postTransaction___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

uint64_t __76__PKDashboardPassGroupViewController__startPostTransactionTimerIfNeccessary__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 1592);
  if (v2)
  {
    v3 = result;
    *(v1 + 1592) = 0;

    v4 = *(v3 + 32);

    return [(PKDashboardPassGroupViewController *)v4 _updateDashboardAndFooterContentPostTransaction:?];
  }

  return result;
}

- (void)_updateDashboardAndFooterContentPostTransaction:(uint64_t)a1
{
  if (a1)
  {
    if ([a1 isViewLoaded])
    {
      [*(a1 + 1832) setFade:1];
      [a1 shouldPresentAllContent:-[PKDashboardPassGroupViewController _passFooterAlphaForPass:postTransaction:](a1 animated:{*(a1 + 1264), a2) == 0, 1}];
      [(PKDashboardPassGroupViewController *)a1 _updatePassFooterViewWithReload:a2 postTransaction:?];
      [*(a1 + 1832) setFade:0];
      if (a2)
      {
        if (!*(a1 + 1592))
        {
          v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
          v5 = *(a1 + 1592);
          *(a1 + 1592) = v4;

          v6 = *(a1 + 1592);
          v7 = dispatch_time(0, 2500000000);
          dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
          v8 = *(a1 + 1592);
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 3221225472;
          handler[2] = __76__PKDashboardPassGroupViewController__startPostTransactionTimerIfNeccessary__block_invoke;
          handler[3] = &unk_1E8010970;
          handler[4] = a1;
          dispatch_source_set_event_handler(v8, handler);
          v9 = *(a1 + 1592);
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 3221225472;
          v10[2] = __76__PKDashboardPassGroupViewController__startPostTransactionTimerIfNeccessary__block_invoke_2;
          v10[3] = &unk_1E8010970;
          v10[4] = a1;
          dispatch_source_set_cancel_handler(v9, v10);
          dispatch_resume(*(a1 + 1592));
        }
      }
    }
  }
}

void __76__PKDashboardPassGroupViewController__startPostTransactionTimerIfNeccessary__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1592);
  *(v1 + 1592) = 0;
}

- (void)setDashboardPassGroupViewControllerDelegate:(id)a3
{
  v3 = atomic_load(&self->_invalidated);
  if ((v3 & 1) == 0)
  {
    objc_storeWeak(&self->_dashboardPassGroupViewControllerDelegate, a3);
  }
}

- (PKPaymentOffersController)frontmostPassPaymentOffersController
{
  paymentPassDataSource = self->_paymentPassDataSource;
  if (paymentPassDataSource)
  {
    paymentPassDataSource = [paymentPassDataSource paymentOffersController];
    v2 = vars8;
  }

  return paymentPassDataSource;
}

- (void)_reloadNavigationItemsAnimated:(unsigned __int8 *)a1
{
  if (a1)
  {
    v3 = atomic_load(a1 + 1552);
    if ((v3 & 1) == 0)
    {
      if ([(PKDashboardPassGroupViewController *)a1 _updateEffectiveNavigationItems])
      {
        [(PKDashboardPassGroupViewController *)a1 _updateNavigationItemAnimated:a2];
      }

      [(PKDashboardPassGroupViewController *)a1 _afterDataSourceContentLoadedUpdateNavigationItems];
    }
  }
}

id __62__PKDashboardPassGroupViewController__createLeadingItemGroups__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PKDashboardPassGroupViewController__createLeadingItemGroups__block_invoke_2;
  v7[3] = &unk_1E8023568;
  objc_copyWeak(&v9, (a1 + 32));
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(v7);

  objc_destroyWeak(&v9);

  return v5;
}

void __62__PKDashboardPassGroupViewController__createLeadingItemGroups__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained viewIfLoaded];
    if (v5 && v4[1576] - 1 <= 1)
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

- (void)_dismiss
{
  if (a1)
  {
    v2 = atomic_load((a1 + 1552));
    if ((v2 & 1) == 0 && *(a1 + 1248) && (*(a1 + 1456) & 1) == 0)
    {
      if (PKRunningInRemoteContext())
      {

        [(PKDashboardPassGroupViewController *)a1 _requestModalPresentationFromButton:?];
      }

      else
      {

        [(PKDashboardPassGroupViewController *)a1 _dismissWithVelocity:0.0 byDragging:?];
      }
    }
  }
}

- (uint64_t)_leadingItemGroups
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 1328) & 1) == 0)
  {
    __break(1u);
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v2 addObject:*(a1 + 1320)];
  v3 = *(a1 + 1304);
  if (v3)
  {
    [v3 setBarButtonItems:v2];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC720]) initWithBarButtonItems:v2 representativeItem:*(a1 + 1312)];
    v5 = *(a1 + 1304);
    *(a1 + 1304) = v4;
  }

  v7[0] = *(a1 + 1304);
  [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  return objc_claimAutoreleasedReturnValue();
}

id __63__PKDashboardPassGroupViewController__createTrailingItemGroups__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PKDashboardPassGroupViewController__createTrailingItemGroups__block_invoke_2;
  v7[3] = &unk_1E8023568;
  objc_copyWeak(&v9, (a1 + 32));
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(v7);

  objc_destroyWeak(&v9);

  return v5;
}

void __63__PKDashboardPassGroupViewController__createTrailingItemGroups__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained viewIfLoaded];
    if (v5 && v4[1576] - 1 <= 1)
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

void __63__PKDashboardPassGroupViewController__createTrailingItemGroups__block_invoke_4(uint64_t a1, id *a2)
{
  v8[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    [(PKDashboardPassGroupViewController *)a2 presentSearchWithCompletion:?];
    v3 = *MEMORY[0x1E69BA6F0];
    v4 = *MEMORY[0x1E69BA440];
    v7[0] = *MEMORY[0x1E69BA680];
    v7[1] = v4;
    v5 = *MEMORY[0x1E69BB198];
    v8[0] = v3;
    v8[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
    [(PKDashboardPassGroupViewController *)a2 reportEventForPassIfNecessary:v6];
  }
}

void __63__PKDashboardPassGroupViewController__createTrailingItemGroups__block_invoke_7(uint64_t a1, void *a2)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = a2;
  [v2 presentCardNumbers];
  v3 = *MEMORY[0x1E69BA6F0];
  v4 = *MEMORY[0x1E69BA440];
  v7[0] = *MEMORY[0x1E69BA680];
  v7[1] = v4;
  v5 = *MEMORY[0x1E69BA4A8];
  v8[0] = v3;
  v8[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [(PKDashboardPassGroupViewController *)v2 reportEventForPassIfNecessary:v6];
}

- (uint64_t)_trailingItemGroups
{
  if (*(result + 1432))
  {
    v1 = result;
    v2 = *(result + 1376);
    v3 = [v2 count];
    v4 = *(v1 + 1336);
    if (v3)
    {
      if (v4)
      {
        v5 = [v4 barButtonItems];
        v6 = BarButtonItemsEqual(v5, v2);

        if (!v6)
        {
          [*(v1 + 1336) setBarButtonItems:v2];
        }
      }

      else
      {
        v7 = [objc_alloc(MEMORY[0x1E69DC720]) initWithBarButtonItems:v2 representativeItem:*(v1 + 1344)];
        v8 = *(v1 + 1336);
        *(v1 + 1336) = v7;
      }
    }

    else
    {
      *(v1 + 1336) = 0;
    }

    v9 = *(v1 + 1424);
    v10 = [v9 count];
    v11 = *(v1 + 1384);
    if (v10)
    {
      if (v11)
      {
        v12 = [v11 barButtonItems];
        v13 = BarButtonItemsEqual(v12, v9);

        if (!v13)
        {
          [*(v1 + 1384) setBarButtonItems:v9];
        }
      }

      else
      {
        v14 = [objc_alloc(MEMORY[0x1E69DC720]) initWithBarButtonItems:v9 representativeItem:*(v1 + 1392)];
        v15 = *(v1 + 1384);
        *(v1 + 1384) = v14;
      }
    }

    else
    {
      *(v1 + 1384) = 0;
    }

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__PKDashboardPassGroupViewController__trailingItemGroups__block_invoke;
    aBlock[3] = &unk_1E80235D8;
    v21 = v16;
    v17 = v16;
    v18 = _Block_copy(aBlock);
    v18[2](v18, *(v1 + 1384));
    v18[2](v18, *(v1 + 1336));
    v19 = [v17 copy];

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __57__PKDashboardPassGroupViewController__trailingItemGroups__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

void __68__PKDashboardPassGroupViewController__updateNavigationItemAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1296);
  if (v3)
  {
    [(PKNavigationItemHandle *)v3 updateItem];
    v4 = [(PKDashboardPassGroupViewController *)*(a1 + 32) _navigationItemConfiguration];
    v5 = v4;
    if (v4)
    {
      v6 = [(PKNavigationItemConfiguration *)v4 copy];
      *(v6 + 8) = 1;
      v7 = *(v6 + 40);
      v10 = v6;
      *(v6 + 40) = 0;
    }

    else
    {
      v10 = 0;
    }

    v8 = *(a1 + 32);
    v9 = v10;
  }

  else
  {
    v9 = [(PKDashboardPassGroupViewController *)v2 _navigationItemConfiguration];
    v8 = v2;
    v10 = v9;
  }

  [(PKDashboardPassGroupViewController *)v8 _applyNavigationItemConfiguration:v9];
}

- (id)_updateEffectiveNavigationItems
{
  if ((*(result + 1432) & 1) == 0)
  {
    goto LABEL_61;
  }

  v1 = result;
  if (!*(result + 158))
  {
    v52 = 0;
    v2 = 0;
    *(result + 1433) = 1;
    *(result + 1720) = 1;
    goto LABEL_8;
  }

  if (!*(result + 159))
  {
    v2 = 0;
    v52 = 0;
    goto LABEL_10;
  }

  v52 = [*(result + 153) account];
  v2 = [v1[153] peerPaymentAccount];
  if (([v1[159] hasAssociatedPeerPaymentAccount] & 1) == 0)
  {
LABEL_10:
    v4 = 0;
    *(v1 + 1433) = 0;
    *(v1 + 1720) = 1;
    goto LABEL_11;
  }

  v3 = PKPeerPaymentAccountResolutionForAccountAndPeerPaymentPass();
  *(v1 + 1433) = v3 == 1;
  *(v1 + 1720) = 1;
  if (v3 != 1)
  {
    v4 = 0;
LABEL_11:
    v5 = v52;
    goto LABEL_12;
  }

LABEL_8:
  [v1[214] setSourceItem:0];
  v5 = 0;
  v4 = 1;
LABEL_12:
  [v1[214] setAccount:v5];
  if ((v4 & 1) == 0)
  {
    v6 = v1[153];
    if (v6)
    {
      v7 = v1[214];
      v8 = [v6 familyCollection];
      [v7 setFamilyCollection:v8];

      [v1[214] setPeerPaymentAccount:v2];
      [v1[214] setHomeKitHasHomeGuestAccessSchedule:{objc_msgSend(v1[153], "homeKitHasHomeGuestAccessSchedule")}];
      v9 = v1[214];
      v10 = [v1[153] homeKitHomeIdentifier];
      [v9 setHomeKitHomeIdentifier:v10];

      v11 = v1[214];
      v12 = [v1[153] bankConnectLinkedAccountData];
      v13 = [v12 account];
      [v11 setBankConnectAccount:v13];
    }
  }

  *(v1 + 1720) = 0;
  if (v4)
  {
    if ([v1[172] count])
    {
      v14 = 1;
    }

    else
    {
      v14 = [v1[178] count] != 0;
    }

    v27 = v1[172];
    v1[172] = 0;

    v28 = v1[178];
    v1[178] = 0;
    goto LABEL_58;
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = v15;
  v17 = v1[159];
  if (v17)
  {
    v18 = v15;
    v19 = v17;
    result = v52;
    if ((v1[179] & 1) == 0)
    {
      goto LABEL_61;
    }

    v20 = result;
    if ([v19 cardType] == 1)
    {
      v21 = [v19 devicePrimaryPaymentApplication];
      v22 = v2;
      v23 = [v21 paymentType];

      v24 = v23 - 3;
      v2 = v22;
      if (v24 >= 0xFFFFFFFFFFFFFFFELL)
      {
        if (PKSupportsSearchForPass())
        {
          [v18 addObject:v1[171]];
        }
      }
    }
  }

  v25 = [v1[214] moreMenu];
  if (v25)
  {
    v26 = v1[169];
    [v26 setMenu:v25];
    [v16 addObject:v26];
    [v1[214] setSourceItem:v26];
  }

  else
  {
    [v16 addObject:v1[170]];
    [v1[214] setSourceItem:0];
  }

  v29 = BarButtonItemsEqual(v1[172], v16);
  if (!v29)
  {
    objc_storeStrong(v1 + 172, v16);
  }

  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = v30;
  v31 = v1[159];
  if (v31)
  {
    v32 = v2;
    v33 = v30;
    v34 = v31;
    result = v52;
    if ((v1[179] & 1) == 0)
    {
      goto LABEL_61;
    }

    v35 = result;
    if ([v34 cardType] != 1)
    {
      goto LABEL_39;
    }

    v36 = [v34 devicePrimaryPaymentApplication];
    v37 = [v36 paymentType];

    if ((v37 - 3) < 0xFFFFFFFFFFFFFFFELL)
    {
      goto LABEL_39;
    }

    v38 = [v34 passActivationState];
    if ([v34 isAppleCardPass])
    {
      v50 = MEMORY[0x1E69B8770];
      v39 = [v35 cardAvailabilityInfo];
      v40 = [v34 deviceAccountNumberSuffix];
      LOBYTE(v50) = [v50 shouldShowCardNumbersWithAccountAvailabilityInfo:v39 dpanSuffixForPaymentApplication:v40];

      if ((v50 & 1) == 0)
      {
LABEL_39:

        v2 = v32;
        goto LABEL_40;
      }
    }

    else if (v38)
    {
      goto LABEL_39;
    }

    [v33 addObject:v1[177]];
    goto LABEL_39;
  }

LABEL_40:
  v41 = v1[158];
  if (!v41)
  {
LABEL_55:
    if (BarButtonItemsEqual(v1[178], v28))
    {
      v14 = !v29;
    }

    else
    {
      objc_storeStrong(v1 + 178, v28);
      v14 = 1;
    }

LABEL_58:

    return v14;
  }

  v42 = v28;
  result = v41;
  if (v1[179])
  {
    v43 = result;
    v44 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    if ([v43 passType] == 1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v45 = v43;
      if (([v45 passActivationState] - 5) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v46 = [v45 devicePrimaryPaymentApplication];
        v51 = v2;
        v47 = [v46 state];

        v48 = v47 == 15;
        v2 = v51;
        if (!v48)
        {
          v53 = 0;
          v49 = [v45 uniqueID];
          [v44 sharingCapabilitiesForPassIdentifier:v49 outHasShares:&v53 + 1 outHasShareableEntitlements:&v53];

          if (HIBYTE(v53) == 1)
          {
            [v42 addObject:v1[176]];
          }

          v2 = v51;
          if ([v45 supportsFeatureForCurrentDevice:1] && v53 == 1)
          {
            [v42 addObject:v1[175]];
          }
        }
      }
    }

    else if (PKBarcodePassSharingEnabled())
    {
      [v42 addObject:v1[175]];
    }

    goto LABEL_55;
  }

LABEL_61:
  __break(1u);
  return result;
}

- (void)_afterDataSourceContentLoadedUpdateNavigationItems
{
  if (a1)
  {
    v2 = atomic_load((a1 + 1552));
    if ((v2 & 1) == 0)
    {
      v3 = *(a1 + 1264);
      if (v3)
      {
        if ([v3 passType] == 1)
        {
          objc_initWeak(&location, a1);
          v4 = *(a1 + 1224);
          v5[0] = MEMORY[0x1E69E9820];
          v5[1] = 3221225472;
          v5[2] = __88__PKDashboardPassGroupViewController__afterDataSourceContentLoadedUpdateNavigationItems__block_invoke;
          v5[3] = &unk_1E8010998;
          objc_copyWeak(&v6, &location);
          [v4 executeAfterContentIsLoaded:v5];
          objc_destroyWeak(&v6);
          objc_destroyWeak(&location);
        }
      }
    }
  }
}

void __88__PKDashboardPassGroupViewController__afterDataSourceContentLoadedUpdateNavigationItems__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = atomic_load(WeakRetained + 1552);
    if ((v2 & 1) == 0 && *(WeakRetained + 159) && (!*(WeakRetained + 185) || (*(WeakRetained + 1496) & 1) == 0))
    {
      v5 = WeakRetained;
      v3 = [*(WeakRetained + 153) account];
      if (!v3)
      {
        v4 = [v5[153] peerPaymentAccount];
        if (v4)
        {
        }

        else if (![v5[159] isHomeKeyPass])
        {
LABEL_12:

          WeakRetained = v5;
          goto LABEL_13;
        }
      }

      if ([(PKDashboardPassGroupViewController *)v5 _updateEffectiveNavigationItems])
      {
        [(PKDashboardPassGroupViewController *)v5 _updateNavigationItemAnimated:?];
      }

      goto LABEL_12;
    }
  }

LABEL_13:
}

- (void)_requestModalPresentationFromButton:(uint64_t)a1
{
  if (a1)
  {
    v3 = atomic_load((a1 + 1552));
    if ((v3 & 1) == 0 && *(a1 + 1248) && (*(a1 + 1456) & 1) == 0 && *(a1 + 1264) && (*(a1 + 1616) & 1) == 0 && *(a1 + 1480) && (*(a1 + 1496) & 1) == 0)
    {
      v5 = [(PKDashboardPassGroupViewController *)a1 _passGroupsViewController];
      v6 = [v5 groupStackView];
      if (v6)
      {
        v7 = v6[2997];

        if (v7)
        {
          return;
        }
      }

      else
      {
      }

      v10 = objc_alloc_init(PKPassPresentationContext);
      [(PKPassPresentationContext *)v10 setForceModalPresentation:1];
      if (a2)
      {
        [(PKPassPresentationContext *)v10 setForcedFromButton:1];
      }

      v8 = [PKPGVTransitionContext createForAnimatedTransition:v10 withPassContext:?];
      v9 = *(a1 + 1480);
      [-[PKPGVTransitionCoordinator coordinatorForTransceiver:](v9 a1)];
    }
  }
}

- (void)_dismissWithVelocity:(double)a3 byDragging:
{
  if (!a1)
  {
    return;
  }

  v4 = atomic_load((a1 + 1552));
  if (v4 & 1) != 0 || !*(a1 + 1248) || (*(a1 + 1456))
  {
    return;
  }

  if (a3 > 0.0 && (a2 & 1) != 0)
  {
    v5 = [(PKPGVTransitionContext *)a3 createForPanGestureWithPassContext:0 velocity:?];
  }

  else
  {
    v5 = [PKPGVTransitionContext createForAnimatedTransition:0 withPassContext:?];
  }

  if (*(a1 + 1480) && (*(a1 + 1496) & 1) == 0)
  {
    v10 = v5;
    v6 = [(PKDashboardPassGroupViewController *)a1 _passGroupsViewController];
    v7 = [v6 groupStackView];
    if (!v7)
    {

      goto LABEL_14;
    }

    v8 = v7[2997];

    v5 = v10;
    if ((v8 & 1) == 0)
    {
LABEL_14:
      v9 = *(a1 + 1480);
      [-[PKPGVTransitionCoordinator coordinatorForTransceiver:](v9 a1)];

      v5 = v10;
    }
  }
}

- (void)infoTapped
{
  if (self)
  {
    [(PKDashboardPassGroupViewController *)self presentPassDetailsAnimated:0 completion:?];
  }
}

- (void)_presentPassDetailsAnimated:(uint64_t)a3 action:
{
  if (a1)
  {
    if ((a3 - 1) >= 0xB)
    {
      if (!a3)
      {

        [(PKDashboardPassGroupViewController *)a1 presentPassDetailsAnimated:a2 completion:0];
      }
    }

    else
    {
      v5[5] = v3;
      v5[6] = v4;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __73__PKDashboardPassGroupViewController__presentPassDetailsAnimated_action___block_invoke;
      v5[3] = &__block_descriptor_40_e43_v16__0__PKPaymentPassDetailViewController_8l;
      v5[4] = a3;
      [(PKDashboardPassGroupViewController *)a1 _presentPaymentPassDetailsAnimated:a2 completion:v5];
    }
  }
}

- (void)moreMenuTriggered
{
  v8[2] = *MEMORY[0x1E69E9840];
  [(PKDashboardPassGroupViewController *)self menuFactoryDidUpdateMenu:self->_moreMenuFactory];
  v3 = *MEMORY[0x1E69BA6F0];
  v4 = *MEMORY[0x1E69BA440];
  v7[0] = *MEMORY[0x1E69BA680];
  v7[1] = v4;
  v5 = *MEMORY[0x1E69BA2E0];
  v8[0] = v3;
  v8[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [(PKDashboardPassGroupViewController *)self reportEventForPassIfNecessary:v6];
}

- (void)_updateFingerDetection
{
  v23 = *MEMORY[0x1E69E9840];
  if (PKPearlIsAvailable() & 1) != 0 || (PKUserIntentIsAvailable() & 1) != 0 || (v2 = atomic_load((a1 + 1552)), (v2) || *(a1 + 1576) - 1 > 1 || ![(PKDashboardPassGroupViewController *)a1 _isForegroundActive]|| !*(a1 + 1272))
  {
    v12 = *(a1 + 1752);
    if (v12)
    {
      [v12 setDelegate:0];
      [*(a1 + 1752) cancel];
      v13 = *(a1 + 1752);
      *(a1 + 1752) = 0;
    }

    v14 = *(a1 + 1760);
    if (v14)
    {
      dispatch_source_cancel(v14);
      v15 = *(a1 + 1760);
      *(a1 + 1760) = 0;
    }
  }

  else if (!*(a1 + 1752))
  {
    [(objc_class *)_MergedGlobals_55() availableDevices];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = v21 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
LABEL_10:
      v7 = 0;
      while (1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        if ([v8 type] == 1)
        {
          v9 = [off_1EE9A1ED0() deviceWithDescriptor:v8 error:0];
          if (v9)
          {
            break;
          }
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v5)
          {
            goto LABEL_10;
          }

          goto LABEL_17;
        }
      }

      v10 = v9;

      v16 = [v10 createPresenceDetectOperationWithError:0];
      v17 = *(a1 + 1752);
      *(a1 + 1752) = v16;

      [*(a1 + 1752) setPriority:40];
      [*(a1 + 1752) setDelegate:a1];
      if ([*(a1 + 1752) startWithError:0])
      {
        goto LABEL_27;
      }

      [*(a1 + 1752) setDelegate:0];
      v11 = *(a1 + 1752);
      *(a1 + 1752) = 0;
    }

    else
    {
LABEL_17:
      v10 = 0;
      v11 = v3;
    }

LABEL_27:
  }
}

void __79__PKDashboardPassGroupViewController__afterDataSourceContentLoadedUpdateFooter__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = atomic_load(WeakRetained + 1552);
    if ((v2 & 1) == 0)
    {
      if (*(WeakRetained + 158))
      {
        v3 = WeakRetained;
        [(PKDashboardPassGroupViewController *)WeakRetained _updateDashboardAndFooterContentPostTransaction:?];
        WeakRetained = v3;
      }
    }
  }
}

- (uint64_t)_isForegroundActive
{
  v1 = atomic_load((a1 + 1552));
  if (v1)
  {
    return 0;
  }

  if (*(a1 + 1569) != 1)
  {
    return 0;
  }

  if ([PKUIForegroundActiveArbiter isDeactivedForReasons:*(a1 + 1572)])
  {
    return 0;
  }

  v3 = atomic_load((a1 + 1552));
  if ((v3 & 1) != 0 || *(a1 + 1568) != 1)
  {
    return 0;
  }

  else
  {
    return [PKUIForegroundActiveArbiter isBackgroundedForReasons:*(a1 + 1572)]^ 1;
  }
}

- (void)accountDidUpdate:(id)a3
{
  [(PKDashboardPassGroupViewController *)self _updateFooterAnimated:?];
  v4 = self->_visibility - 1 < 2;

  [(PKDashboardPassGroupViewController *)self _reloadNavigationItemsAnimated:v4];
}

- (id)_passcodeButtonTitle
{
  if ([*(a1 + 1272) isAccessPass])
  {
    v2 = @"GENERIC_PASSCODE";
  }

  else if ([*(a1 + 1272) isIdentityPass])
  {
    v2 = @"PRESENT_PASSCODE";
  }

  else
  {
    v2 = @"PAYMENT_PASSCODE";
  }

  v3 = PKLocalizedPaymentString(&v2->isa);

  return v3;
}

void __66__PKDashboardPassGroupViewController__displayPassAlertIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) uniqueID];
    v4 = [MEMORY[0x1E69B8DB8] paymentService];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__PKDashboardPassGroupViewController__displayPassAlertIfNecessary__block_invoke_2;
    v6[3] = &unk_1E80113B0;
    objc_copyWeak(&v8, (a1 + 40));
    v5 = v3;
    v7 = v5;
    [v4 hasEligibleCriteriaForPassUniqueID:v5 criteriaType:1 completion:v6];

    objc_destroyWeak(&v8);
  }
}

void __66__PKDashboardPassGroupViewController__displayPassAlertIfNecessary__block_invoke_2(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PKDashboardPassGroupViewController__displayPassAlertIfNecessary__block_invoke_3;
  block[3] = &unk_1E8018A78;
  objc_copyWeak(&v6, (a1 + 40));
  v7 = a2;
  v5 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v6);
}

void __66__PKDashboardPassGroupViewController__displayPassAlertIfNecessary__block_invoke_3(uint64_t a1)
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
    v6[2] = __66__PKDashboardPassGroupViewController__displayPassAlertIfNecessary__block_invoke_237;
    v6[3] = &unk_1E8010970;
    v7 = *(a1 + 32);
    [WeakRetained presentViewController:v5 animated:1 completion:v6];
  }
}

- (BOOL)dashboardViewController:(id)a3 shouldStartDismissInteractionFromPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = v7;
  v9 = atomic_load(&self->_invalidated);
  if (v9)
  {
    LOBYTE(passGroupView) = 0;
  }

  else
  {
    passGroupView = self->_passGroupView;
    if (passGroupView)
    {
      v11 = [v7 view];
      [(PKPassGroupView *)passGroupView convertPoint:v11 fromView:x, y];
      LOBYTE(passGroupView) = [(PKPassGroupView *)passGroupView pointInside:0 withEvent:?];
    }
  }

  return passGroupView;
}

- (void)dashboardViewController:(id)a3 willStartDismissInteractionFromPoint:(CGPoint)a4
{
  [(PKDashboardPassFlowLayout *)self->_passFlowLayout passPanDidBegin:a3];
  if (self->_transitionCoordinator && !self->_sendingToTransitionCoordinator && !self->_interactionCompletion)
  {
    v5 = [(PKDashboardPassGroupViewController *)self _passGroupsViewController];
    v6 = [v5 groupStackView];
    if (v6)
    {
      v7 = v6[2997];

      if (v7)
      {
        return;
      }
    }

    else
    {
    }

    transitionCoordinator = self->_transitionCoordinator;
    [(PKPGVTransitionCoordinator *)transitionCoordinator coordinatorForReceiver:?];
    v8 = [(PKPGVTransitionCoordinator *)transitionCoordinator becomeInteractiveForReceiver:self];
    interactionCompletion = self->_interactionCompletion;
    self->_interactionCompletion = v8;
  }
}

- (BOOL)dashboardViewController:(id)a3 dismissInteractionShouldDismissForContentOffset:(CGPoint)a4 velocity:(CGPoint)a5
{
  y = a5.y;
  v6 = a4.y;
  v7 = [a3 collectionView];
  [v7 adjustedContentInset];
  v9 = v8;

  return y <= 0.0 && v6 < -80.0 - v9;
}

- (void)dashboardViewController:(id)a3 didEndDismissInteraction:(BOOL)a4
{
  if (!a4)
  {
    [(PKDashboardPassFlowLayout *)self->_passFlowLayout passPanDidEnd];
  }
}

- (void)contentDidScroll
{
  v45 = [(PKDashboardPassGroupViewController *)self collectionView];
  [v45 bounds];
  v5 = v4;
  v7 = v6;
  if (self->_freezeContentOffset && (v3 != self->_frozenContentOffset.x || v4 != self->_frozenContentOffset.y))
  {
    if (!self->_inFrozenOffsetRecovery)
    {
      self->_inFrozenOffsetRecovery = 1;
      [v45 setContentOffset:{self->_frozenContentOffset.x, self->_frozenContentOffset.y}];
      self->_inFrozenOffsetRecovery = 0;
    }

    goto LABEL_37;
  }

  v9 = [(PKDashboardPassGroupViewController *)self view];
  [v9 setNeedsLayout];

  [v45 adjustedContentInset];
  v11 = v10;
  v13 = v12;
  passFlowLayout = self->_passFlowLayout;
  v15 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  v16 = [(PKDashboardPassFlowLayout *)passFlowLayout layoutAttributesForItemAtIndexPath:v15];

  [v16 frame];
  v18 = v17;
  v20 = v19;
  v21 = v17 - v5;
  +[PKDashboardPassFlowLayout topMarginInFirstSection];
  v23 = v21 - (v11 + v22);
  v24 = 1.0;
  if (v23 > 0.0)
  {
    v24 = 0.0;
    if (v23 < 50.0)
    {
      v24 = 1.0 - fmin(fmax(v23 / 50.0, 0.0), 1.0);
    }
  }

  [(PKPassthroughView *)self->_passthroughView setAlpha:v24];
  [(PKPassthroughView *)self->_portalledPassthroughView setAlpha:v24];
  transitionCoordinator = self->_transitionCoordinator;
  if (transitionCoordinator && !self->_sendingToTransitionCoordinator && (transition = self->_transition) != 0)
  {
    if (transition->_interactive)
    {
      v27 = -v11 - v5;
      v28 = 1.0;
      if (v27 > 0.0)
      {
        v29 = (v7 - (v11 + v13)) * 0.5;
        v28 = 0.0;
        if (v27 < v29)
        {
          v28 = 1.0 - v27 / v29;
        }
      }

      if (self->_passGroupViewAcquired)
      {
        [(PKPassGroupView *)self->_passGroupView overrideShadowAlpha:v28];
        transitionCoordinator = self->_transitionCoordinator;
      }

      [-[PKPGVTransitionCoordinator coordinatorForReceiver:](transitionCoordinator self)];
    }

    else
    {
      if (self->_passGroupViewAcquired)
      {
        [(PKPassGroupView *)self->_passGroupView clearShadowAlphaOverride];
        transitionCoordinator = self->_transitionCoordinator;
      }

      [-[PKPGVTransitionCoordinator coordinatorForReceiver:](transitionCoordinator self)];
    }
  }

  else if (self->_passGroupViewAcquired)
  {
    [(PKPassGroupView *)self->_passGroupView clearShadowAlphaOverride];
  }

  if ([(PKDashboardViewController *)self shouldPresentAllContent])
  {
    v30 = [(PKDashboardPassGroupViewController *)self collectionView];
    v31 = [v30 numberOfSections];
    if (v31 >= 2)
    {
      v32 = v31;
      v33 = 1;
      while ([v30 numberOfItemsInSection:v33] <= 0)
      {
        if (v32 == ++v33)
        {
          goto LABEL_32;
        }
      }

      [(PKPassGroupView *)self->_passGroupView clearPageControlAlphaOverride];
      goto LABEL_34;
    }

LABEL_32:
  }

  [(PKPassGroupView *)self->_passGroupView overridePageControlAlpha:v24];
LABEL_34:
  v34 = [(PKDashboardPassGroupViewController *)self navigationController];
  v35 = [v34 navigationBar];

  [v35 frame];
  v37 = v36;
  v38 = *MEMORY[0x1E695EFF8];
  v39 = *(MEMORY[0x1E695EFF8] + 8);
  v40 = v36 + v36;
  [(PKAnimatedNavigationBarTitleView *)self->_titleView bounds];
  v48.origin.x = v41;
  v48.origin.y = v42;
  v48.size.width = v43;
  v48.size.height = v44;
  v47.origin.x = v38;
  v47.origin.y = v39;
  v47.size.width = v40;
  v47.size.height = v37;
  if (!CGRectEqualToRect(v47, v48))
  {
    [(PKAnimatedNavigationBarTitleView *)self->_titleView setBounds:v38, v39, v40, v37];
    [v35 setNeedsLayout];
  }

  self->_passGroupViewVisible = v18 + v20 - v5 >= v11;
  [(PKDashboardPassGroupViewController *)self _updatePausedState];
  [(PKDashboardPassGroupViewController *)self _updateTitlePassView];

LABEL_37:
}

- (void)contentDidFinishScrollInteraction
{
  interactionCompletion = self->_interactionCompletion;
  if (interactionCompletion)
  {
    v5 = _Block_copy(interactionCompletion);
    v4 = self->_interactionCompletion;
    self->_interactionCompletion = 0;

    v5[2]();
  }
}

- (void)_handleUpdatedAccount:(uint64_t)a1 accountRemoved:(void *)a2
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __75__PKDashboardPassGroupViewController__handleUpdatedAccount_accountRemoved___block_invoke;
    v5[3] = &unk_1E8010A10;
    v5[4] = a1;
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void __75__PKDashboardPassGroupViewController__handleUpdatedAccount_accountRemoved___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 1208) groupView];
  v3 = [v2 frontmostPassView];
  v4 = [v3 pass];

  v5 = [v4 paymentPass];
  v6 = [v5 associatedAccountServiceAccountIdentifier];
  v7 = [*(a1 + 40) accountIdentifier];
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {

LABEL_10:
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 40) accountIdentifier];
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "Updating navigation items via account %@ change", &v15, 0xCu);
    }

    [(PKDashboardPassGroupViewController *)*(a1 + 32) _afterDataSourceContentLoadedUpdateNavigationItems];
    goto LABEL_13;
  }

  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {

    goto LABEL_13;
  }

  v12 = [v8 isEqualToString:v9];

  if (v12)
  {
    goto LABEL_10;
  }

LABEL_13:
}

- (void)presentActivityDeletionConfirmationAtIndexPath:(id)a3 completion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = a3;
    v19 = PKLocalizedIdentityString(&cfstr_TransactionDel.isa);
    v8 = PKLocalizedIdentityString(&cfstr_TransactionDel_0.isa);
    v9 = PKLocalizedIdentityString(&cfstr_TransactionDel_1.isa);
    v10 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v19 message:0 preferredStyle:0];
    v11 = [(PKDashboardPassGroupViewController *)self collectionView];
    v12 = [v11 cellForItemAtIndexPath:v7];

    v13 = [v10 popoverPresentationController];
    [v13 setSourceView:v12];

    v14 = MEMORY[0x1E69DC648];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __96__PKDashboardPassGroupViewController_presentActivityDeletionConfirmationAtIndexPath_completion___block_invoke;
    v22[3] = &unk_1E8011248;
    v15 = v6;
    v23 = v15;
    v16 = [v14 actionWithTitle:v8 style:2 handler:v22];
    [v10 addAction:v16];

    v17 = MEMORY[0x1E69DC648];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __96__PKDashboardPassGroupViewController_presentActivityDeletionConfirmationAtIndexPath_completion___block_invoke_2;
    v20[3] = &unk_1E8011248;
    v21 = v15;
    v18 = [v17 actionWithTitle:v9 style:1 handler:v20];
    [v10 addAction:v18];

    [(PKDashboardPassGroupViewController *)self presentViewController:v10 animated:1 completion:0];
  }
}

- (void)operation:(id)a3 presenceStateChanged:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (self->_fingerPresent == !v4)
  {
    self->_fingerPresent = v4;
    if (v4)
    {
      v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      fingerTimer = self->_fingerTimer;
      self->_fingerTimer = v7;

      v9 = self->_fingerTimer;
      v10 = dispatch_time(0, 400000000);
      dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      objc_initWeak(&location, self);
      v11 = self->_fingerTimer;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __69__PKDashboardPassGroupViewController_operation_presenceStateChanged___block_invoke;
      v14[3] = &unk_1E8010998;
      objc_copyWeak(&v15, &location);
      dispatch_source_set_event_handler(v11, v14);
      dispatch_resume(self->_fingerTimer);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      v12 = self->_fingerTimer;
      if (v12)
      {
        dispatch_source_cancel(v12);
        v13 = self->_fingerTimer;
        self->_fingerTimer = 0;
      }
    }
  }
}

void __69__PKDashboardPassGroupViewController_operation_presenceStateChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[220];
    v5 = v2;
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = v5[220];
      v5[220] = 0;

      v2 = v5;
    }

    [(PKDashboardPassGroupViewController *)v2 _requestModalPresentationFromButton:?];
    v2 = v5;
  }
}

- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __93__PKDashboardPassGroupViewController_foregroundActiveArbiter_didUpdateForegroundActiveState___block_invoke;
  v4[3] = &unk_1E8019910;
  v4[4] = self;
  v5 = a4;
  [(PKDashboardPassGroupViewController *)self _performActivationStateUpdate:v4];
}

- (void)foregroundActiveArbiter:(id)a3 didUpdateDeactivationReasons:(unsigned int)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __91__PKDashboardPassGroupViewController_foregroundActiveArbiter_didUpdateDeactivationReasons___block_invoke;
  v4[3] = &unk_1E80217E0;
  v4[4] = self;
  v5 = a4;
  [(PKDashboardPassGroupViewController *)self _performActivationStateUpdate:v4];
}

- (void)secureElementDidEnterRestrictedMode:(id)a3
{
  if (self)
  {
    [(PKDashboardPassGroupViewController *)self _updatePassFooterViewWithReload:0 postTransaction:?];
  }
}

- (void)secureElementDidLeaveRestrictedMode:(id)a3
{
  if (self)
  {
    [(PKDashboardPassGroupViewController *)self _updatePassFooterViewWithReload:0 postTransaction:?];
  }
}

- (BOOL)isPassFooterViewInGroup:(id)a3
{
  v3 = [(PKPassGroupView *)self->_passGroupView group];
  v4 = [v3 passCount] > 1;

  return v4;
}

- (void)passFooterViewDidTransact:(id)a3 success:(BOOL)a4
{
  v5 = [a3 configuration];
  v6 = [v5 pass];
  v7 = [v6 style];

  if (v7 == 9)
  {

    [(PKDashboardPassGroupViewController *)self _updateDashboardAndFooterContentPostTransaction:?];
  }
}

- (int64_t)groupViewContentModeForFrontmostPassWhenPiled:(id)a3 withDefaultContentMode:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_originalGroupViewDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    a4 = [WeakRetained groupViewContentModeForFrontmostPassWhenPiled:v6 withDefaultContentMode:a4];
  }

  return a4;
}

- (unint64_t)groupViewPassesSuppressedContent:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_originalGroupViewDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [WeakRetained groupViewPassesSuppressedContent:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)groupViewModalReferenceScale:(id)a3 isValid:(BOOL *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_originalGroupViewDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained groupViewModalReferenceScale:v6 isValid:a4];
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
    if (a4)
    {
      *a4 = 0;
    }
  }

  return v9;
}

- (void)groupView:(id)a3 didUpdatePassView:(id)a4
{
  v8 = a4;
  v5 = [(PKPassGroupView *)self->_passGroupView frontmostPassView];

  if (v5 == v8)
  {
    v6 = [(PKDashboardPassGroupViewController *)self viewIfLoaded];
    [v6 setNeedsLayout];

    [(PKDashboardPassGroupViewController *)self _updatePassFooterViewWithReload:0 postTransaction:?];
    v7 = [v8 pass];
    [(PKDashboardPassGroupViewController *)self _setFrontmostPass:v7];
  }
}

- (void)groupView:(id)a3 frontmostPassViewDidChange:(id)a4 withContext:(id)a5
{
  v6 = [(PKDashboardPassGroupViewController *)self viewIfLoaded:a3];
  [v6 setNeedsLayout];

  v7 = [(PKPassGroupView *)self->_passGroupView frontmostPassView];
  v8 = [v7 pass];

  [(PKDashboardPassGroupViewController *)self _setFrontmostPass:v8];
}

- (void)groupView:(id)a3 faceViewFrameDidChangeForFrontmostPassView:(id)a4
{
  v4 = [(PKDashboardPassGroupViewController *)self viewIfLoaded:a3];
  [v4 setNeedsLayout];
}

- (void)groupView:(id)a3 deleteButtonPressedForPass:(id)a4 sourceView:(id)a5
{
  if (!self->_deleteAnimationController)
  {
    v11 = a5;
    v6 = [(PKDashboardPassGroupViewController *)self view];
    [v6 setUserInteractionEnabled:0];

    v7 = [PKPassDeleteAnimationController alloc];
    v8 = [(PKPassGroupView *)self->_passGroupView frontmostPassView];
    v9 = [(PKPassDeleteAnimationController *)v7 initWithPassView:v8 groupView:self->_passGroupView];
    deleteAnimationController = self->_deleteAnimationController;
    self->_deleteAnimationController = v9;

    [(PKPassDeleteAnimationController *)self->_deleteAnimationController setDelegate:self];
    [(PKPassDeleteAnimationController *)self->_deleteAnimationController showInViewController:self sourceView:v11];
  }
}

- (BOOL)handleDeletePassRequestWithPass:(id)a3 forViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_deleteAnimationController)
  {
    v8 = 0;
  }

  else
  {
    v9 = [v6 uniqueID];
    v10 = [(PKPassGroupView *)self->_passGroupView group];
    v11 = v10;
    if (v10 && [v10 indexForPassUniqueID:v9] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = [(PKDashboardPassGroupViewController *)self _passGroupsViewNavigationController];
      v8 = v12 != 0;
      if (v12)
      {
        v22 = v12;
        v13 = [PKPassDeleteAnimationController alloc];
        v14 = [(PKPassGroupView *)self->_passGroupView frontmostPassView];
        v15 = [(PKPassDeleteAnimationController *)v13 initWithPassView:v14 groupView:self->_passGroupView];
        deleteAnimationController = self->_deleteAnimationController;
        self->_deleteAnimationController = v15;

        [(PKPassDeleteAnimationController *)self->_deleteAnimationController setDelegate:self];
        v17 = [(PKDashboardPassGroupViewController *)self view];
        [v17 setUserInteractionEnabled:0];

        objc_initWeak(&location, self);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __88__PKDashboardPassGroupViewController_handleDeletePassRequestWithPass_forViewController___block_invoke;
        aBlock[3] = &unk_1E8011828;
        objc_copyWeak(&v29, &location);
        v18 = v22;
        v27 = v18;
        v28 = v9;
        v19 = _Block_copy(aBlock);
        v20 = [v18 transitionCoordinator];
        if (v20)
        {
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __88__PKDashboardPassGroupViewController_handleDeletePassRequestWithPass_forViewController___block_invoke_5;
          v23[3] = &unk_1E8023600;
          objc_copyWeak(&v25, &location);
          v24 = v19;
          [v20 animateAlongsideTransition:0 completion:v23];

          objc_destroyWeak(&v25);
        }

        else
        {
          v19[2](v19);
        }

        objc_destroyWeak(&v29);
        objc_destroyWeak(&location);
        v12 = v22;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

void __88__PKDashboardPassGroupViewController_handleDeletePassRequestWithPass_forViewController___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    [a1[4] popToDashboardPassGroupVCAnimated:1];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__PKDashboardPassGroupViewController_handleDeletePassRequestWithPass_forViewController___block_invoke_2;
    aBlock[3] = &unk_1E80110E0;
    objc_copyWeak(&v9, a1 + 6);
    v8 = a1[5];
    v3 = _Block_copy(aBlock);
    v4 = [a1[4] transitionCoordinator];
    if (v4)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __88__PKDashboardPassGroupViewController_handleDeletePassRequestWithPass_forViewController___block_invoke_4;
      v5[3] = &unk_1E8015D28;
      v6 = v3;
      [v4 animateAlongsideTransition:0 completion:v5];
    }

    else
    {
      v3[2](v3);
    }

    objc_destroyWeak(&v9);
  }
}

void __88__PKDashboardPassGroupViewController_handleDeletePassRequestWithPass_forViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[156] presentPassWithUniqueID:*(a1 + 32)];
    v4 = dispatch_time(0, 400000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__PKDashboardPassGroupViewController_handleDeletePassRequestWithPass_forViewController___block_invoke_3;
    block[3] = &unk_1E8010998;
    objc_copyWeak(&v6, (a1 + 40));
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v6);
  }
}

void __88__PKDashboardPassGroupViewController_handleDeletePassRequestWithPass_forViewController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[201] forceDeleteAnimation];
    WeakRetained = v2;
  }
}

void __88__PKDashboardPassGroupViewController_handleDeletePassRequestWithPass_forViewController___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [(PKDashboardPassGroupViewController *)WeakRetained _passGroupsViewNavigationController];

    WeakRetained = v4;
    if (v3)
    {
      (*(*(a1 + 32) + 16))();
      WeakRetained = v4;
    }
  }
}

- (void)deleteAnimationControllerWillBeginDeleteAnimation:(id)a3
{
  v4 = a3;
  if (self->_transitionCoordinator && !self->_sendingToTransitionCoordinator && self->_deleteAnimationController == v4)
  {
    self->_passDeletionInitiated = 1;
    v6 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_dashboardPassGroupViewControllerDelegate);
    [WeakRetained dashboardPassGroupViewController:self willBeginDeleteAnimation:v6];

    [(PKDashboardViewController *)self shouldPresentAllContent:0 animated:1];
    [(PKDashboardPassGroupViewController *)self _updatePassFooterViewWithReload:0 postTransaction:?];
    v4 = v6;
  }
}

- (void)deleteAnimationController:(id)a3 didComplete:(BOOL)a4
{
  v4 = a4;
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  deleteAnimationController = self->_deleteAnimationController;
  if (deleteAnimationController == v6)
  {
    v8 = deleteAnimationController;
    v9 = self->_deleteAnimationController;
    self->_deleteAnimationController = 0;

    self->_passDeletionInitiated = 0;
    if (self->_transitionCoordinator)
    {
      if (!self->_sendingToTransitionCoordinator)
      {
        v10 = [(PKDashboardPassGroupViewController *)self viewIfLoaded];
        [v10 setUserInteractionEnabled:1];

        WeakRetained = objc_loadWeakRetained(&self->_dashboardPassGroupViewControllerDelegate);
        [WeakRetained dashboardPassGroupViewController:self didFinishDeleteAnimation:v6 deleted:v4];

        if (v4)
        {
          v27 = v8;
          v12 = [(PKPassDeleteAnimationController *)v6 passView];
          v13 = [v12 pass];

          [(PKPassGroupView *)self->_passGroupView group];
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v26 = v31 = 0u;
          v14 = [v26 passes];
          v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v29;
            while (2)
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v29 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = [*(*(&v28 + 1) + 8 * i) uniqueID];
                v20 = [v13 uniqueID];
                v21 = v19;
                v22 = v20;
                v23 = v22;
                if (v21 == v22)
                {
                }

                else
                {
                  if (v21)
                  {
                    v24 = v22 == 0;
                  }

                  else
                  {
                    v24 = 1;
                  }

                  if (v24)
                  {

LABEL_22:
                    [(PKDashboardViewController *)self shouldPresentAllContent:1 animated:1];
                    goto LABEL_23;
                  }

                  v25 = [v21 isEqualToString:v22];

                  if ((v25 & 1) == 0)
                  {
                    goto LABEL_22;
                  }
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

          [(PKDashboardPassGroupViewController *)self _dismiss];
LABEL_23:

          v8 = v27;
        }
      }
    }
  }
}

- (int64_t)visibilityBackdropView:(id)a3 preferredStyleForTraitCollection:(id)a4
{
  if ([a4 userInterfaceStyle] == 2)
  {
    return 2030;
  }

  else
  {
    return 2010;
  }
}

- (void)menuFactoryDidUpdateMenu:(id)a3
{
  v4 = a3;
  if (self->_navigationItem.created && !self->_navigationItem.trailing.suppressed && !self->_willUpdateMoreMenuNavigationItem)
  {
    v10 = v4;
    v5 = [(PKDashboardMoreMenuFactory *)self->_moreMenuFactory moreMenu];
    v6 = [(NSArray *)self->_navigationItem.trailing.more.effectiveItems firstObject];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 menu];
      v9 = v8 != 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9 == (v5 != 0))
    {
      [v7 setMenu:v5];
    }

    else
    {
      [(PKDashboardPassGroupViewController *)self _reloadNavigationItemsAnimated:?];
    }

    v4 = v10;
  }
}

- (void)passTilesItemPresenter:(id)a3 executeSEActionForPass:(id)a4 tile:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  v15 = atomic_load(&self->_invalidated);
  if ((v15 & 1) != 0 || self->_frontmostPass != v11 || self->_visibility - 1 >= 2)
  {
    (*(v13 + 2))(v13, 0);
  }

  else
  {
    v16 = [v12 state];
    v17 = MEMORY[0x1E69B8D10];
    v18 = [v16 actions];
    v19 = [v17 effectiveActionForActions:v18];

    if (v19 && [v19 type] == 4)
    {
      v74 = 0;
      v75 = &v74;
      v76 = 0x2020000000;
      v77 = *MEMORY[0x1E69DDBE8];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __104__PKDashboardPassGroupViewController_passTilesItemPresenter_executeSEActionForPass_tile_withCompletion___block_invoke;
      aBlock[3] = &unk_1E8011A18;
      aBlock[4] = &v74;
      v20 = _Block_copy(aBlock);
      v21 = [MEMORY[0x1E69DC668] sharedApplication];
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __104__PKDashboardPassGroupViewController_passTilesItemPresenter_executeSEActionForPass_tile_withCompletion___block_invoke_2;
      v71[3] = &unk_1E8010B50;
      v22 = v20;
      v72 = v22;
      v23 = [v21 beginBackgroundTaskWithExpirationHandler:v71];
      v75[3] = v23;

      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __104__PKDashboardPassGroupViewController_passTilesItemPresenter_executeSEActionForPass_tile_withCompletion___block_invoke_4;
      v68[3] = &unk_1E801A3B8;
      v39 = v22;
      v69 = v39;
      v70 = v14;
      v24 = _Block_copy(v68);
      objc_initWeak(&location, self);
      v63 = 0;
      v64 = &v63;
      v65 = 0x2020000000;
      v66 = 1;
      v57 = 0;
      v58 = &v57;
      v59 = 0x3032000000;
      v60 = __Block_byref_object_copy__63;
      v61 = __Block_byref_object_dispose__63;
      v62 = 0;
      v51 = 0;
      v52 = &v51;
      v53 = 0x3032000000;
      v54 = __Block_byref_object_copy__63;
      v55 = __Block_byref_object_dispose__63;
      v56 = 0;
      v25 = MEMORY[0x1E69B8DC0];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __104__PKDashboardPassGroupViewController_passTilesItemPresenter_executeSEActionForPass_tile_withCompletion___block_invoke_261;
      v43[3] = &unk_1E801A408;
      objc_copyWeak(&v50, &location);
      v26 = v24;
      v46 = v26;
      v47 = &v63;
      v48 = &v57;
      v49 = &v51;
      v44 = v11;
      v45 = v12;
      v27 = [v25 startDigitalCarKeySessionWithCompletion:v43];
      if (v27)
      {
        v28 = 1540;
        os_unfair_lock_lock(&self->_lock);
        v29 = 1;
        atomic_compare_exchange_strong(v64 + 24, &v29, 0);
        if (v29 == 1)
        {
          sessionHandles = self->_sessionHandles;
          if (!sessionHandles)
          {
            v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v32 = self->_sessionHandles;
            self->_sessionHandles = v31;

            sessionHandles = self->_sessionHandles;
          }

          [(NSMutableArray *)sessionHandles addObject:v27, 1540];
          objc_storeStrong(v58 + 5, v27);
          v33 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
          v34 = v52[5];
          v52[5] = v33;

          v35 = v52[5];
          v36 = dispatch_time(0, 10000000000);
          dispatch_source_set_timer(v35, v36, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
          v37 = v52[5];
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 3221225472;
          handler[2] = __104__PKDashboardPassGroupViewController_passTilesItemPresenter_executeSEActionForPass_tile_withCompletion___block_invoke_4_267;
          handler[3] = &unk_1E801A430;
          v42 = &v57;
          v41 = v39;
          dispatch_source_set_event_handler(v37, handler);
          dispatch_resume(v52[5]);

          v28 = v38;
        }

        os_unfair_lock_unlock((self + v28));
      }

      objc_destroyWeak(&v50);
      _Block_object_dispose(&v51, 8);

      _Block_object_dispose(&v57, 8);
      _Block_object_dispose(&v63, 8);
      objc_destroyWeak(&location);

      _Block_object_dispose(&v74, 8);
    }

    else
    {
      v14[2](v14, 0);
    }
  }
}

void __104__PKDashboardPassGroupViewController_passTilesItemPresenter_executeSEActionForPass_tile_withCompletion___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __104__PKDashboardPassGroupViewController_passTilesItemPresenter_executeSEActionForPass_tile_withCompletion___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__PKDashboardPassGroupViewController_passTilesItemPresenter_executeSEActionForPass_tile_withCompletion___block_invoke_3;
  block[3] = &unk_1E8010B50;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __104__PKDashboardPassGroupViewController_passTilesItemPresenter_executeSEActionForPass_tile_withCompletion___block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __104__PKDashboardPassGroupViewController_passTilesItemPresenter_executeSEActionForPass_tile_withCompletion___block_invoke_5;
    v12[3] = &unk_1E8010B50;
    v13 = *(a1 + 32);
    [v5 invalidateSessionWithCompletion:v12];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__PKDashboardPassGroupViewController_passTilesItemPresenter_executeSEActionForPass_tile_withCompletion___block_invoke_6;
  block[3] = &unk_1E801A390;
  v8 = v5;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = a2;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __104__PKDashboardPassGroupViewController_passTilesItemPresenter_executeSEActionForPass_tile_withCompletion___block_invoke_6(void *a1)
{
  if (!a1[4])
  {
    (*(a1[5] + 16))();
  }

  v2 = *(a1[6] + 16);

  return v2();
}

void __104__PKDashboardPassGroupViewController_passTilesItemPresenter_executeSEActionForPass_tile_withCompletion___block_invoke_261(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[193];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __104__PKDashboardPassGroupViewController_passTilesItemPresenter_executeSEActionForPass_tile_withCompletion___block_invoke_2_262;
    block[3] = &unk_1E801A3E0;
    block[4] = WeakRetained;
    v16 = *(a1 + 56);
    v17 = *(a1 + 72);
    v11 = v5;
    v12 = v6;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    dispatch_async(v9, block);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __104__PKDashboardPassGroupViewController_passTilesItemPresenter_executeSEActionForPass_tile_withCompletion___block_invoke_2_262(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = 1;
  atomic_compare_exchange_strong((*(*(a1 + 80) + 8) + 24), &v2, 0);
  if (v2 != 1)
  {
    os_unfair_lock_lock((*(a1 + 32) + 1540));
    [*(*(a1 + 32) + 1560) removeObjectIdenticalTo:*(*(*(a1 + 88) + 8) + 40)];
    dispatch_source_cancel(*(*(*(a1 + 96) + 8) + 40));
    os_unfair_lock_unlock((*(a1 + 32) + 1540));
  }

  if (*(a1 + 40))
  {
    if (!*(a1 + 48))
    {
      v3 = atomic_load((*(a1 + 32) + 1552));
      if ((v3 & 1) == 0)
      {
        [MEMORY[0x1E69B8758] attachDefaultBehaviorToSession:*(a1 + 40)];
        v5 = [*(a1 + 56) deviceContactlessPaymentApplications];
        v6 = [v5 pk_arrayCopy];

        v7 = v6;
        v8 = [*(a1 + 40) activatePaymentApplications:v6 forPaymentPass:*(a1 + 56)];
        v9 = 0;
        v44 = 0;
        v45 = 0;
        if (v8)
        {
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v27 = v6;
          obj = v6;
          v30 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
          v9 = 0;
          if (v30)
          {
            v29 = *v41;
LABEL_12:
            v10 = 0;
            while (1)
            {
              if (*v41 != v29)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(*(&v40 + 1) + 8 * v10);
              v12 = [v11 applicationIdentifier];
              v36 = 0u;
              v37 = 0u;
              v38 = 0u;
              v39 = 0u;
              v13 = [v11 subcredentials];
              v14 = [v13 countByEnumeratingWithState:&v36 objects:v46 count:16];
              if (v14)
              {
                v15 = v14;
                v31 = v10;
                v32 = v9;
                v16 = *v37;
                while (2)
                {
                  for (i = 0; i != v15; ++i)
                  {
                    if (*v37 != v16)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v18 = *(a1 + 64);
                    v19 = [*(*(&v36 + 1) + 8 * i) identifier];
                    [PKPassTileGroupView extractSupportedVehicleFunction:&v45 action:&v44 forTile:v18 applicationIdentifier:v12 keyIdentifier:v19];

                    if (v45 && v44)
                    {
                      v9 = v12;

                      goto LABEL_26;
                    }
                  }

                  v15 = [v13 countByEnumeratingWithState:&v36 objects:v46 count:16];
                  if (v15)
                  {
                    continue;
                  }

                  break;
                }

LABEL_26:
                v10 = v31;
              }

              v20 = v44;
              v21 = v45;

              if (v21)
              {
                if (v20)
                {
                  break;
                }
              }

              if (++v10 == v30)
              {
                v30 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
                if (v30)
                {
                  goto LABEL_12;
                }

                break;
              }
            }
          }

          v22 = v45;
          if (v45)
          {
            v23 = v44;
            v7 = v27;
            if (v44)
            {
              v24 = *(a1 + 40);
              v33[0] = MEMORY[0x1E69E9820];
              v33[1] = 3221225472;
              v33[2] = __104__PKDashboardPassGroupViewController_passTilesItemPresenter_executeSEActionForPass_tile_withCompletion___block_invoke_3_265;
              v33[3] = &unk_1E80109C0;
              v35 = *(a1 + 72);
              v34 = *(a1 + 40);
              [v24 sendRKEFunction:v22 action:v23 withAuthorization:0 completion:v33];
              v25 = [MEMORY[0x1E69B8DB8] paymentService];
              v26 = [*(a1 + 56) uniqueID];
              [v25 recordPassTransactionActivitySummaryForPassUniqueIdentifier:v26 paymentApplicationIdentifier:v9 presentmentType:1];

LABEL_36:
              return;
            }
          }

          else
          {
            v7 = v27;
          }
        }

        (*(*(a1 + 72) + 16))();
        goto LABEL_36;
      }
    }
  }

  v4 = *(*(a1 + 72) + 16);

  v4();
}

void __104__PKDashboardPassGroupViewController_passTilesItemPresenter_executeSEActionForPass_tile_withCompletion___block_invoke_4_267(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __104__PKDashboardPassGroupViewController_passTilesItemPresenter_executeSEActionForPass_tile_withCompletion___block_invoke_5_268;
  v2[3] = &unk_1E8010B50;
  v3 = *(a1 + 32);
  [v1 invalidateSessionWithCompletion:v2];
}

- (void)passTilesItemPresenter:(id)a3 displayTileContext:(int64_t)a4 forPass:(id)a5 tile:(id)a6 overrideMaximumRows:(BOOL)a7
{
  v7 = a7;
  v37 = a3;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (self->_frontmostPass == v12 && self->_visibility - 1 <= 1)
  {
    v15 = [v13 metadata];
    v16 = [v15 identifier];

    v17 = [(PKPassGroupView *)self->_passGroupView frontmostPassView];
    if (self->_barcodePassDataSource)
    {
      v18 = [PKDashboardSectionDataSourcePassSemanticTiles alloc];
      v19 = [(PKDashboardBarcodePassDataSource *)self->_barcodePassDataSource tileDescriptor];
      v20 = [(PKDashboardBarcodePassDataSource *)self->_barcodePassDataSource tileFactory];
      v21 = [(PKDashboardSectionDataSourcePassSemanticTiles *)v18 initWithDescriptor:v19 forContext:a4 tileFactory:v20 tileGroupID:v16 passStateProvider:v17 overridesMaximumRows:v7];
    }

    else
    {
      v21 = [[PKDashboardSectionDataSourcePassTiles alloc] initWithPass:v12 forContext:a4 tileGroupID:v16 passStateProvider:v17 overridesMaximumRows:v7];
    }

    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = [v22 addObject:v21];
    v24 = &stru_1F3BD7330;
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        v28 = PKLocalizedTicketingString(&cfstr_AdditionalTick.isa);
LABEL_22:
        v24 = v28;
        goto LABEL_23;
      }

      if ((a4 - 4) < 2)
      {
        goto LABEL_19;
      }
    }

    else
    {
      switch(a4)
      {
        case 1:
          v29 = [v14 state];
          v30 = [v29 stateTypeGroup];
          v24 = [v30 header];

          break;
        case 2:
          v23 = [(PKPass *)v12 style];
          if (v23 <= 9)
          {
            if (v23 == 9)
            {
              v25 = [(PKPass *)v12 eventName];
              v26 = v25;
              if (v25)
              {
                v27 = v25;
              }

              else
              {
                v27 = PKLocalizedTicketingString(&cfstr_EventGuideFall.isa);
              }

              v24 = v27;

              v34 = [PKDashboardSectionDataSourceLinkedApp alloc];
              v35 = [(PKPass *)v12 auxiliaryStoreIdentifiers];
              v36 = [(PKDashboardSectionDataSourceLinkedApp *)v34 initWithStoreIDs:v35 applicationBundleIdentifiers:0 defaultLaunchURL:0];
              [v22 addObject:v36];
            }

            else if (v23 < 9)
            {
              do
              {
                __break(1u);
LABEL_29:
                ;
              }

              while (v23 == 13);
            }

            break;
          }

          goto LABEL_20;
        case 0:
LABEL_19:
          __break(1u);
LABEL_20:
          if (v23 != 10)
          {
            goto LABEL_29;
          }

          v28 = PKLocalizedFlightString(&cfstr_PassDashboardD_23.isa);
          goto LABEL_22;
      }
    }

LABEL_23:
    v31 = [[PKSectionedDashboardDataSource alloc] initWithSectionDataSources:v22];
    v32 = [[PKDashboardTileContextViewController alloc] initWithTitle:v24 dataSource:v31];
    v33 = [(PKDashboardPassGroupViewController *)self navigationController];
    [v33 pushViewController:v32 animated:1];
  }
}

- (BOOL)handleDeletePassWithUniqueID:(id)a3
{
  frontmostPass = self->_frontmostPass;
  v5 = a3;
  v6 = [(PKPass *)frontmostPass uniqueID];
  v7 = PKEqualObjects();

  if (v7)
  {
    v8 = [(PKDashboardPassGroupViewController *)self navigationController];
    v9 = [PKViewControllerPresentationTarget targetWithPresentingViewController:v8];
    v10 = [(PKPass *)self->_frontmostPass passType];
    if (v10 == PKPassTypeSecureElement)
    {
      v12 = [(PKPass *)self->_frontmostPass paymentPass];
      if ([v12 hasMerchantTokens])
      {
        v13 = [(PKDashboardPaymentPassDataSource *)self->_paymentPassDataSource account];
        v14 = objc_alloc_init(MEMORY[0x1E69B8A60]);
        LOBYTE(v19) = 0;
        [PKPassDeleteHelper presentMerchantTokenDeletePaymentPassAlertForPass:v12 withAccount:v13 merchantTokensResponse:0 deleteHander:self passLibraryDataProvider:v14 navigationController:v8 presentationTarget:v9 isBridge:v19];
      }

      else
      {
        if ([v12 isStoredValuePass])
        {
          v13 = [MEMORY[0x1E69B9310] passPropertiesForPass:v12];
          v14 = [objc_alloc(MEMORY[0x1E69B9308]) initWithPass:v12];
          [v14 setTransitProperties:v13 andApplyStoredValueBalances:1];
        }

        else
        {
          v13 = 0;
          v14 = 0;
        }

        v15 = [(PKDashboardPaymentPassDataSource *)self->_paymentPassDataSource account];
        v16 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
        v17 = objc_alloc_init(MEMORY[0x1E69B8A60]);
        [PKPassDeleteHelper presentDeletePaymentPassAlertForPass:v12 withAccount:v15 paymentServiceDataProvider:v16 transitBalanceModel:v14 transitPassProperties:v13 fkInstitution:0 detailViewStyle:0 deleteHander:self passLibraryDataProvider:v17 presentationTarget:v9];
      }
    }

    else
    {
      if (v10)
      {
        v11 = 0;
LABEL_15:

        return v11;
      }

      [PKPassDeleteHelper presentDeleteBarcodePassAlertForPass:self->_frontmostPass withHandler:self presentationTarget:v9];
    }

    v11 = 1;
    goto LABEL_15;
  }

  return 0;
}

- (void)presentCombinedActionsWithPaymentDataProvider:(void *)a3 webService:(void *)a4 balanceModel:(void *)a5 mode:
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    v12 = a1[158];
    if (!v12)
    {
      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        v28 = a1;
        v29 = 2080;
        v30 = "[PKDashboardPassGroupViewController presentCombinedActionsWithPaymentDataProvider:webService:balanceModel:mode:]";
        _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Frontmost pass is nil", buf, 0x16u);
      }
    }

    v14 = [v12 paymentPass];
    if ([v14 isTransitPass])
    {
      v15 = [v14 actionGroups];
      if (v15)
      {
        v16 = a1[153];
        if (!v16)
        {
          v17 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134349314;
            v28 = a1;
            v29 = 2080;
            v30 = "[PKDashboardPassGroupViewController presentCombinedActionsWithPaymentDataProvider:webService:balanceModel:mode:]";
            _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Data source is nil", buf, 0x16u);
          }
        }

        objc_initWeak(buf, a1);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __113__PKDashboardPassGroupViewController_presentCombinedActionsWithPaymentDataProvider_webService_balanceModel_mode___block_invoke;
        v19[3] = &unk_1E8023628;
        objc_copyWeak(v26, buf);
        v18 = v15;
        v20 = v18;
        v21 = v14;
        v22 = a1;
        v23 = v9;
        v24 = v10;
        v25 = v11;
        v26[1] = a5;
        [v16 executeAfterContentIsLoaded:v19];

        objc_destroyWeak(v26);
        objc_destroyWeak(buf);
      }
    }
  }
}

void __113__PKDashboardPassGroupViewController_presentCombinedActionsWithPaymentDataProvider_webService_balanceModel_mode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) firstObject];
    if ([v3 hasExternalActionContent])
    {
      v4 = *(a1 + 40);
      v5 = [v3 externalActionContent];
      v6 = [v3 title];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __113__PKDashboardPassGroupViewController_presentCombinedActionsWithPaymentDataProvider_webService_balanceModel_mode___block_invoke_2;
      v12[3] = &unk_1E8014560;
      v12[4] = WeakRetained;
      PKPaymentPassActionPerformExternalActionContent(v4, v5, v6, v12);
    }

    else
    {
      v7 = [[PKPaymentPassCombinedActionDataController alloc] initWithPass:*(a1 + 40) actionGroups:*(a1 + 32) paymentDataProvider:*(a1 + 56) webService:*(a1 + 64) balanceModel:*(a1 + 72) mode:*(a1 + 88)];
      v8 = *(a1 + 48);
      v9 = *(v8 + 1784);
      *(v8 + 1784) = v7;

      v10 = *(*(a1 + 48) + 1784);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __113__PKDashboardPassGroupViewController_presentCombinedActionsWithPaymentDataProvider_webService_balanceModel_mode___block_invoke_3;
      v11[3] = &unk_1E8018B30;
      v11[4] = WeakRetained;
      [v10 fetchViewController:v11];
    }
  }
}

uint64_t __113__PKDashboardPassGroupViewController_presentCombinedActionsWithPaymentDataProvider_webService_balanceModel_mode___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(result + 32) presentViewController:a3 animated:1 completion:0];
  }

  return result;
}

void __113__PKDashboardPassGroupViewController_presentCombinedActionsWithPaymentDataProvider_webService_balanceModel_mode___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) navigationController];
    [v6 presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_6;
    }

    v6 = [*(a1 + 32) navigationController];
    [v6 pushViewController:v7 animated:1];
  }

LABEL_6:
}

- (void)presentActionGroupsWithPaymentDataProvider:(void *)a3 balanceModel:(void *)a4 webService:
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = a1[158];
    if (!v10)
    {
      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        v25 = a1;
        v26 = 2080;
        v27 = "[PKDashboardPassGroupViewController presentActionGroupsWithPaymentDataProvider:balanceModel:webService:]";
        _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Frontmost pass is nil", buf, 0x16u);
      }
    }

    v12 = [v10 paymentPass];
    v13 = [v12 actionGroups];
    if ([v12 isTransitPass])
    {
      v14 = a1[153];
      if (!v14)
      {
        v15 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349314;
          v25 = a1;
          v26 = 2080;
          v27 = "[PKDashboardPassGroupViewController presentActionGroupsWithPaymentDataProvider:balanceModel:webService:]";
          _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Data source is nil", buf, 0x16u);
        }
      }

      objc_initWeak(buf, a1);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __105__PKDashboardPassGroupViewController_presentActionGroupsWithPaymentDataProvider_balanceModel_webService___block_invoke;
      v16[3] = &unk_1E8023650;
      objc_copyWeak(&v23, buf);
      v17 = v13;
      v18 = v12;
      v19 = a1;
      v20 = v7;
      v21 = v9;
      v22 = v8;
      [v14 executeAfterContentIsLoaded:v16];

      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }
  }
}

void __105__PKDashboardPassGroupViewController_presentActionGroupsWithPaymentDataProvider_balanceModel_webService___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) firstObject];
    if ([v3 hasExternalActionContent])
    {
      v4 = *(a1 + 40);
      v5 = [v3 externalActionContent];
      v6 = [v3 title];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __105__PKDashboardPassGroupViewController_presentActionGroupsWithPaymentDataProvider_balanceModel_webService___block_invoke_2;
      v12[3] = &unk_1E8014560;
      v12[4] = WeakRetained;
      PKPaymentPassActionPerformExternalActionContent(v4, v5, v6, v12);
    }

    else
    {
      v7 = [[PKPaymentPassCombinedActionDataController alloc] initWithPass:*(a1 + 40) actionGroups:*(a1 + 32) paymentDataProvider:*(a1 + 56) webService:*(a1 + 64) balanceModel:*(a1 + 72) mode:0];
      v8 = *(a1 + 48);
      v9 = *(v8 + 1784);
      *(v8 + 1784) = v7;

      v10 = *(*(a1 + 48) + 1784);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __105__PKDashboardPassGroupViewController_presentActionGroupsWithPaymentDataProvider_balanceModel_webService___block_invoke_3;
      v11[3] = &unk_1E8018B30;
      v11[4] = WeakRetained;
      [v10 fetchViewController:v11];
    }
  }
}

uint64_t __105__PKDashboardPassGroupViewController_presentActionGroupsWithPaymentDataProvider_balanceModel_webService___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(result + 32) presentViewController:a3 animated:1 completion:0];
  }

  return result;
}

void __105__PKDashboardPassGroupViewController_presentActionGroupsWithPaymentDataProvider_balanceModel_webService___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) navigationController];
    [v6 presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_6;
    }

    v6 = [*(a1 + 32) navigationController];
    [v6 pushViewController:v7 animated:1];
  }

LABEL_6:
}

- (void)presentActionsWithPaymentDataProvider:(void *)a3 webService:(void *)a4 actionType:(void *)a5 transitBalanceModel:
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1)
  {
    v12 = a1[158];
    if (!v12)
    {
      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        v26 = a1;
        v27 = 2080;
        v28 = "[PKDashboardPassGroupViewController presentActionsWithPaymentDataProvider:webService:actionType:transitBalanceModel:]";
        _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Frontmost pass is nil", buf, 0x16u);
      }
    }

    v14 = [v12 paymentPass];
    v15 = [v14 availableActions];
    if ([v14 isStoredValuePass])
    {
      v16 = a1[153];
      if (!v16)
      {
        v17 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349314;
          v26 = a1;
          v27 = 2080;
          v28 = "[PKDashboardPassGroupViewController presentActionsWithPaymentDataProvider:webService:actionType:transitBalanceModel:]";
          _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Data source is nil", buf, 0x16u);
        }
      }

      objc_initWeak(buf, a1);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __118__PKDashboardPassGroupViewController_presentActionsWithPaymentDataProvider_webService_actionType_transitBalanceModel___block_invoke;
      v18[3] = &unk_1E8023628;
      objc_copyWeak(v24, buf);
      v18[4] = a1;
      v19 = v14;
      v20 = v15;
      v21 = v9;
      v22 = v10;
      v24[1] = a4;
      v23 = v11;
      [v16 executeAfterContentIsLoaded:v18];

      objc_destroyWeak(v24);
      objc_destroyWeak(buf);
    }
  }
}

void __118__PKDashboardPassGroupViewController_presentActionsWithPaymentDataProvider_webService_actionType_transitBalanceModel___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v3 = [[PKPaymentPassActionDataController alloc] initWithPass:*(a1 + 40) actions:*(a1 + 48) paymentDataProvider:*(a1 + 56) webService:*(a1 + 64) actionType:*(a1 + 88) balanceModel:*(a1 + 72)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 1792);
    *(v4 + 1792) = v3;

    v6 = *(*(a1 + 32) + 1792);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __118__PKDashboardPassGroupViewController_presentActionsWithPaymentDataProvider_webService_actionType_transitBalanceModel___block_invoke_2;
    v7[3] = &unk_1E8018B30;
    v7[4] = WeakRetained;
    [v6 fetchViewController:v7];
  }
}

void __118__PKDashboardPassGroupViewController_presentActionsWithPaymentDataProvider_webService_actionType_transitBalanceModel___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __118__PKDashboardPassGroupViewController_presentActionsWithPaymentDataProvider_webService_actionType_transitBalanceModel___block_invoke_3;
  block[3] = &unk_1E8010A88;
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __118__PKDashboardPassGroupViewController_presentActionsWithPaymentDataProvider_webService_actionType_transitBalanceModel___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) navigationController];
    [v2 presentViewController:*(a1 + 32) animated:1 completion:0];
  }

  else
  {
    if (!*(a1 + 48))
    {
      return;
    }

    v2 = [*(a1 + 40) navigationController];
    [v2 pushViewController:*(a1 + 48) animated:1];
  }
}

- (BOOL)presentAddMoney
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = self->_frontmostPass;
  if (!v3)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134349314;
      v14 = self;
      v15 = 2080;
      v16 = "[PKDashboardPassGroupViewController presentAddMoney]";
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Frontmost pass is nil", &v13, 0x16u);
    }
  }

  v5 = [(PKPass *)v3 paymentPass];
  if (([v5 isTransitPass] & 1) != 0 || objc_msgSend(v5, "isEMoneyPass"))
  {
    v6 = [objc_alloc(MEMORY[0x1E69B9308]) initWithPass:v5];
    v7 = [MEMORY[0x1E69B9310] passPropertiesForPass:v5];
    v8 = 1;
    [v6 setTransitProperties:v7 andApplyStoredValueBalances:1];
    v9 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    v10 = [MEMORY[0x1E69B8EF8] sharedService];
    [(PKDashboardPassGroupViewController *)&self->super.super.super.super.super.isa presentActionsWithPaymentDataProvider:v9 webService:v10 actionType:1 transitBalanceModel:v6];
  }

  else if ([v5 isAppleBalancePass])
  {
    [(PKDashboardPassGroupViewController *)self presentAddMoneyAppleBalance];
    v8 = 1;
  }

  else if ([v5 isPeerPaymentPass])
  {
    v12 = objc_alloc_init(MEMORY[0x1E69B8A60]);
    [(PKDashboardPassGroupViewController *)self presentPeerPaymentActionViewControllerForAction:v12 passLibraryDataProvider:?];

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)presentAddMoneyAppleBalance
{
  if (a1)
  {
    v2 = [*(a1 + 1224) appleBalanceAddMoneyUIManager];
    [v2 presentAddMoneyFromViewController:a1 dtuConfiguration:0 inStoreToken:0];
  }
}

- (void)presentPeerPaymentActionViewControllerForAction:(void *)a3 passLibraryDataProvider:
{
  v5 = a3;
  if (a1)
  {
    v6 = a1[159];
    if (v6)
    {
      if ([v6 isPeerPaymentPass])
      {
        v7 = [MEMORY[0x1E69B9020] sharedService];
        v25 = 0;
        v8 = [v7 targetDevice];
        v9 = [v8 account];

        v24 = 0;
        v10 = [PKPeerPaymentActionController canPerformPeerPaymentAction:a2 account:v9 unableReason:&v25 displayableError:&v24];
        v11 = v24;
        if (v10)
        {
          v12 = [PKPeerPaymentActionViewController peerPaymentActionViewControllerForAction:a2 paymentPass:a1[159] webService:v7 passLibraryDataProvider:v5 context:0];
          [v12 setDelegate:a1];
          v13 = [[PKNavigationController alloc] initWithRootViewController:v12];
          [(PKNavigationController *)v13 setSupportedInterfaceOrientations:2];
          v14 = [a1 navigationController];
          [v14 presentViewController:v13 animated:1 completion:0];
        }

        else
        {
          objc_initWeak(&location, a1);
          v15 = v25;
          v18 = MEMORY[0x1E69E9820];
          v19 = 3221225472;
          v20 = __110__PKDashboardPassGroupViewController_presentPeerPaymentActionViewControllerForAction_passLibraryDataProvider___block_invoke;
          v21 = &unk_1E8010998;
          objc_copyWeak(&v22, &location);
          v16 = [PKPeerPaymentActionController alertControllerForPeerPaymentActionUnableReason:v15 displayableError:v11 addCardActionHandler:&v18];
          v17 = [a1 navigationController];
          [v17 presentViewController:v16 animated:1 completion:0];

          objc_destroyWeak(&v22);
          objc_destroyWeak(&location);
        }
      }
    }
  }
}

- (void)presentAddMoneyAppleBalanceDirectTopUp
{
  if (a1)
  {
    v2 = [*(a1 + 1224) appleBalanceAddMoneyUIManager];
    [v2 presentDirectTopUpFromViewController:a1 context:1 configuration:0 promotion:0 completion:0];
  }
}

- (void)presentAddMoneyAppleBalanceInStoreTopUp
{
  if (a1)
  {
    v2 = [*(a1 + 1224) appleBalanceAddMoneyUIManager];
    [v2 presentInStoreTopUpFromViewController:a1 context:0 token:0];
  }
}

- (void)presentTransitCardNumber
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1[158];
    if (!v2)
    {
      v3 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        v11 = a1;
        v12 = 2080;
        v13 = "[PKDashboardPassGroupViewController presentTransitCardNumber]";
        _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Frontmost pass is nil", buf, 0x16u);
      }
    }

    v4 = a1[159];
    if ([v4 isStoredValuePass])
    {
      v5 = a1[153];
      if (!v5)
      {
        v6 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349314;
          v11 = a1;
          v12 = 2080;
          v13 = "[PKDashboardPassGroupViewController presentTransitCardNumber]";
          _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Data source is nil", buf, 0x16u);
        }
      }

      objc_initWeak(buf, a1);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __62__PKDashboardPassGroupViewController_presentTransitCardNumber__block_invoke;
      v7[3] = &unk_1E80110E0;
      objc_copyWeak(&v9, buf);
      v8 = v4;
      [v5 executeAfterContentIsLoaded:v7];

      objc_destroyWeak(&v9);
      objc_destroyWeak(buf);
    }
  }
}

void __62__PKDashboardPassGroupViewController_presentTransitCardNumber__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [[PKTransitCardNumberViewController alloc] initWithPass:*(a1 + 32)];
    v4 = [v5 navigationController];
    [v4 pushViewController:v3 animated:1];

    WeakRetained = v5;
  }
}

- (void)presentManageBarcodePassNotifications
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1[158];
    if (!v2)
    {
      v3 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 134349314;
        v7 = a1;
        v8 = 2080;
        v9 = "[PKDashboardPassGroupViewController presentManageBarcodePassNotifications]";
        _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Frontmost pass is nil", &v6, 0x16u);
      }
    }

    v4 = [[PKManageBarcodePassNotificationsViewController alloc] initWithPass:v2];
    v5 = [a1 navigationController];
    [v5 pushViewController:v4 animated:1];
  }
}

- (void)presentManagePaymentPassNotificationsControllerWithDataProvider:(void *)a3 peerPaymentAccount:(void *)a4 bankConnectAccount:(void *)a5 account:
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v13 = a1[158];
    if (!v13)
    {
      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        v27 = a1;
        v28 = 2080;
        v29 = "[PKDashboardPassGroupViewController presentManagePaymentPassNotificationsControllerWithDataProvider:peerPaymentAccount:bankConnectAccount:account:]";
        _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Frontmost pass is nil", buf, 0x16u);
      }
    }

    v15 = a1[159];
    v16 = a1[153];
    if (!v16)
    {
      v17 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        v27 = a1;
        v28 = 2080;
        v29 = "[PKDashboardPassGroupViewController presentManagePaymentPassNotificationsControllerWithDataProvider:peerPaymentAccount:bankConnectAccount:account:]";
        _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Data source is nil", buf, 0x16u);
      }
    }

    objc_initWeak(buf, a1);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __148__PKDashboardPassGroupViewController_presentManagePaymentPassNotificationsControllerWithDataProvider_peerPaymentAccount_bankConnectAccount_account___block_invoke;
    v19[3] = &unk_1E80179D8;
    objc_copyWeak(&v25, buf);
    v18 = v15;
    v20 = v18;
    v21 = v9;
    v22 = v10;
    v23 = v11;
    v24 = v12;
    [v16 executeAfterContentIsLoaded:v19];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }
}

void __148__PKDashboardPassGroupViewController_presentManagePaymentPassNotificationsControllerWithDataProvider_peerPaymentAccount_bankConnectAccount_account___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPaymentPass:*(a1 + 32)];
    v4 = [objc_alloc(MEMORY[0x1E69B9300]) initWithTransactionSource:v3];
    v5 = [[PKManagePaymentPassNotificationsViewController alloc] initWithPass:*(a1 + 32) dataProvider:*(a1 + 40) peerPaymentAccount:*(a1 + 48) bankConnectAccount:*(a1 + 56) account:*(a1 + 64) transactionSourceCollection:v4];
    v6 = [v7 navigationController];
    [v6 pushViewController:v5 animated:1];

    WeakRetained = v7;
  }
}

- (void)presentCardNumbers
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to present virtual card and card numbers", buf, 2u);
  }

  if (PKStoreDemoModeEnabled())
  {
    v4 = PKUIStoreDemoGatewayViewController();
    [(PKDashboardPassGroupViewController *)self presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    v4 = self->_paymentPassDataSource;
    if (!v4)
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        v13 = self;
        v14 = 2080;
        v15 = "[PKDashboardPassGroupViewController presentCardNumbers]";
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Data source is nil", buf, 0x16u);
      }
    }

    v6 = self->_frontmostPaymentPass;
    if (v6)
    {
      objc_initWeak(buf, self);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __56__PKDashboardPassGroupViewController_presentCardNumbers__block_invoke;
      v8[3] = &unk_1E8011828;
      objc_copyWeak(&v11, buf);
      v9 = v4;
      v10 = v6;
      [(PKDashboardPaymentPassDataSource *)v9 executeAfterContentIsLoaded:v8];

      objc_destroyWeak(&v11);
      objc_destroyWeak(buf);
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        v13 = self;
        v14 = 2080;
        v15 = "[PKDashboardPassGroupViewController presentCardNumbers]";
        _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Frontmost pass is nil", buf, 0x16u);
      }
    }
  }
}

void __56__PKDashboardPassGroupViewController_presentCardNumbers__block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!WeakRetained)
  {
    goto LABEL_10;
  }

  v3 = [MEMORY[0x1E69B8400] sharedInstance];
  v4 = [a1[4] account];
  v5 = [PKPhysicalCardController alloc];
  v6 = a1[5];
  v7 = [a1[4] physicalCards];
  v8 = [(PKPhysicalCardController *)v5 initWithAccountService:v3 paymentPass:v6 account:v4 accountUser:0 physicalCards:v7];

  v9 = [v4 creditDetails];
  v10 = [v9 virtualCards];
  v11 = [v10 anyObject];

  v12 = [MEMORY[0x1E69B8EF8] sharedService];
  if (!PKVirtualCardEnabledWithWebService())
  {
    goto LABEL_5;
  }

  v13 = [a1[5] hasActiveVirtualCard];

  if (v13)
  {
    v12 = [MEMORY[0x1E69B9338] cardsForPaymentPass:a1[5]];
    v14 = [v12 anyObject];

    v11 = v14;
LABEL_5:
  }

  v15 = [a1[4] peerPaymentAccount];
  v16 = [PKAccountCardNumbersPresenter alloc];
  if ([(PKPhysicalCardController *)v8 hasExpiredPhysicalCardOnly])
  {
    [(PKPhysicalCardController *)v8 expiredPhysicalCard];
  }

  else
  {
    [(PKPhysicalCardController *)v8 primaryPhysicalCard];
  }
  v17 = ;
  v18 = [(PKAccountCardNumbersPresenter *)v16 initWithVirtualCard:v11 physicalCard:v17 account:v4 peerPaymentAccount:v15 pass:a1[5] context:0];
  v19 = WeakRetained[225];
  WeakRetained[225] = v18;

  v20 = WeakRetained[225];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __56__PKDashboardPassGroupViewController_presentCardNumbers__block_invoke_2;
  v21[3] = &unk_1E8011FE8;
  objc_copyWeak(&v22, a1 + 6);
  [v20 presentCardNumbersWithCompletion:v21];
  objc_destroyWeak(&v22);

LABEL_10:
}

void __56__PKDashboardPassGroupViewController_presentCardNumbers__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__PKDashboardPassGroupViewController_presentCardNumbers__block_invoke_3;
    v6[3] = &unk_1E8010A10;
    v7 = v3;
    v8 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __56__PKDashboardPassGroupViewController_presentCardNumbers__block_invoke_3(uint64_t a1)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = *(a1 + 40);
  if (isKindOfClass)
  {
    v5 = [v3 navigationController];
    [v5 presentViewController:*(a1 + 32) animated:1 completion:0];
  }

  else
  {
    v4 = *(a1 + 32);

    [(PKDashboardPassGroupViewController *)v3 _pushViewControllerWhenNavigationAvailable:v4 animated:1 completion:0];
  }
}

- (void)_presentBarcodePassDetailsAnimated:(void *)a3 completion:
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a1)
  {
    if (*(a1 + 1264) && *(a1 + 1248))
    {
      v6 = [[PKBarcodePassDetailViewController alloc] initWithPass:*(a1 + 1264)];
      [(PKBarcodePassDetailViewController *)v6 setDeleteOverrider:a1];
      if (v6)
      {
        v13 = MEMORY[0x1E69E9820];
        v14 = 3221225472;
        v15 = __84__PKDashboardPassGroupViewController__presentBarcodePassDetailsAnimated_completion___block_invoke;
        v16 = &unk_1E80109C0;
        v18 = v5;
        v7 = v6;
        v17 = v7;
        [(PKDashboardPassGroupViewController *)a1 _pushViewControllerWhenNavigationAvailable:v7 animated:a2 completion:&v13];
        v8 = *MEMORY[0x1E69BA6F0];
        v9 = *MEMORY[0x1E69BA440];
        v19[0] = *MEMORY[0x1E69BA680];
        v19[1] = v9;
        v10 = *MEMORY[0x1E69BA490];
        v20[0] = v8;
        v20[1] = v10;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:{2, v13, v14, v15, v16}];
        [(PKDashboardPassGroupViewController *)a1 reportEventForPassIfNecessary:v11];

LABEL_12:
        goto LABEL_13;
      }
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        v22 = a1;
        v23 = 2080;
        v24 = "[PKDashboardPassGroupViewController _barcodePassDetailsViewController]";
        _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Frontmost pass is nil", buf, 0x16u);
      }
    }

    if (v5)
    {
      (*(v5 + 2))(v5, 0);
    }

    v7 = 0;
    goto LABEL_12;
  }

LABEL_13:
}

uint64_t __84__PKDashboardPassGroupViewController__presentBarcodePassDetailsAnimated_completion___block_invoke(uint64_t a1, char a2)
{
  result = *(a1 + 40);
  if (result)
  {
    if (a2)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(a1 + 32);
    }

    return (*(result + 16))(result, v4);
  }

  return result;
}

- (void)_presentPaymentPassDetailsAnimated:(void *)a3 completion:
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a1)
  {
    if (*(a1 + 1272) && *(a1 + 1248))
    {
      v20 = a2;
      v6 = MEMORY[0x1E69B8BD8];
      v30 = v5;
      v7 = *(a1 + 1224);
      v26 = [v6 defaultDataProvider];
      v28 = [PKPaymentPassDetailViewController alloc];
      v8 = *(a1 + 1272);
      v29 = [*(a1 + 1248) group];
      v27 = *(a1 + 1240);
      v25 = [MEMORY[0x1E69B8EF8] sharedService];
      v24 = [MEMORY[0x1E69B9020] sharedService];
      v22 = [MEMORY[0x1E69B8400] sharedInstance];
      v21 = objc_alloc_init(MEMORY[0x1E69B8A60]);
      v23 = [*(a1 + 1248) frontmostPassView];
      v9 = [v23 rendererState];
      v10 = [v7 familyCollection];
      v11 = [v7 avatarManager];
      v12 = [v7 account];
      v13 = [(PKPaymentPassDetailViewController *)v28 initWithPass:v8 group:v29 groupsController:v27 webService:v25 peerPaymentWebService:v24 accountService:v22 style:0 passLibraryDataProvider:v21 paymentServiceDataProvider:v26 rendererState:v9 context:0 familyCollection:v10 contactAvatarManager:v11 account:v12];

      [(PKPaymentPassDetailViewController *)v13 setDeleteOverrider:a1];
      v5 = v30;

      if (v13)
      {
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __84__PKDashboardPassGroupViewController__presentPaymentPassDetailsAnimated_completion___block_invoke;
        v31[3] = &unk_1E80109C0;
        v33 = v30;
        v14 = v13;
        v32 = v14;
        [(PKDashboardPassGroupViewController *)a1 _pushViewControllerWhenNavigationAvailable:v14 animated:v20 completion:v31];
        v15 = *MEMORY[0x1E69BA6F0];
        v16 = *MEMORY[0x1E69BA440];
        v34[0] = *MEMORY[0x1E69BA680];
        v34[1] = v16;
        v17 = *MEMORY[0x1E69BA490];
        v35[0] = v15;
        v35[1] = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
        [(PKDashboardPassGroupViewController *)a1 reportEventForPassIfNecessary:v18];

LABEL_12:
        goto LABEL_13;
      }
    }

    else
    {
      v19 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        v37 = a1;
        v38 = 2080;
        v39 = "[PKDashboardPassGroupViewController _paymentPassDetailsViewController]";
        _os_log_impl(&dword_1BD026000, v19, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Frontmost pass is nil", buf, 0x16u);
      }
    }

    if (v5)
    {
      (*(v5 + 2))(v5, 0);
    }

    v14 = 0;
    goto LABEL_12;
  }

LABEL_13:
}

uint64_t __84__PKDashboardPassGroupViewController__presentPaymentPassDetailsAnimated_completion___block_invoke(uint64_t a1, char a2)
{
  result = *(a1 + 40);
  if (result)
  {
    if (a2)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(a1 + 32);
    }

    return (*(result + 16))(result, v4);
  }

  return result;
}

- (void)presentPassDetailsAnimated:(void *)a3 completion:
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    if (*(a1 + 1272))
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __76__PKDashboardPassGroupViewController_presentPassDetailsAnimated_completion___block_invoke;
      v10[3] = &unk_1E8023678;
      v7 = &v11;
      v11 = v5;
      [(PKDashboardPassGroupViewController *)a1 _presentPaymentPassDetailsAnimated:a2 completion:v10];
    }

    else
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __76__PKDashboardPassGroupViewController_presentPassDetailsAnimated_completion___block_invoke_2;
      v8[3] = &unk_1E80236A0;
      v7 = &v9;
      v9 = v5;
      [(PKDashboardPassGroupViewController *)a1 _presentBarcodePassDetailsAnimated:a2 completion:v8];
    }
  }
}

uint64_t __76__PKDashboardPassGroupViewController_presentPassDetailsAnimated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __76__PKDashboardPassGroupViewController_presentPassDetailsAnimated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __73__PKDashboardPassGroupViewController__presentPassDetailsAnimated_action___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (v4 <= 5)
  {
    if (v4 > 2)
    {
      if (v4 == 3)
      {
        [v3 presentISO18013Details];
      }

      else if (v4 == 4)
      {
        [v3 presentShareAccount];
      }

      else
      {
        [v3 presentMakeDefaultAtApple];
      }

      goto LABEL_24;
    }

    switch(v4)
    {
      case 1:
        [v3 presentSchedulePayments];
        goto LABEL_24;
      case 2:
        [v3 presentBankAccounts];
        goto LABEL_24;
      case 0:
        __break(1u);
        return;
    }
  }

  else
  {
    if (v4 <= 8)
    {
      if (v4 == 6)
      {
        [v3 presentOrderPhysicalCard];
      }

      else if (v4 == 7)
      {
        [v3 presentActivatePhysicalCard];
      }

      else
      {
        [v3 presentTrackPhysicalCard];
      }

      goto LABEL_24;
    }

    switch(v4)
    {
      case 9:
        [v3 presentAutoReload];
        goto LABEL_24;
      case 10:
        [v3 presentReplacePhysicalCard];
        goto LABEL_24;
      case 11:
        [v3 presentDeleteCard];
LABEL_24:
        v3 = v5;
        break;
    }
  }
}

- (void)presentSpendingSummaryWithType:(void *)a3 categorization:(void *)a4 unit:(void *)a5 completion:
{
  v9 = a5;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __100__PKDashboardPassGroupViewController_presentSpendingSummaryWithType_categorization_unit_completion___block_invoke;
    v10[3] = &unk_1E80236E8;
    objc_copyWeak(v12, &location);
    v11 = v9;
    v12[1] = a2;
    v12[2] = a4;
    v12[3] = a3;
    [(PKDashboardPassGroupViewController *)a1 _canPresentCreditDetailsViewControllerWithCompletion:v10];

    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }
}

void __100__PKDashboardPassGroupViewController_presentSpendingSummaryWithType_categorization_unit_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v27 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained && (a2 & 1) != 0)
  {
    v7 = WeakRetained[153];
    v25 = [PKSpendingSummaryViewController alloc];
    v26 = [v7 familyCollection];
    v24 = [v7 avatarManager];
    v23 = [v7 account];
    v22 = [v7 accountUserCollection];
    v21 = [v7 physicalCards];
    v18 = [v7 summaryFetcher];
    v17 = [v7 weeks];
    v16 = [v7 months];
    v8 = [v7 years];
    v19 = *(a1 + 48);
    v15 = *(a1 + 56);
    v9 = [v7 currentMonthTransactions];
    v10 = [v7 pendingPayments];
    v11 = [v7 upcomingScheduledPayments];
    v20 = [(PKSpendingSummaryViewController *)v25 initWithTransactionSourceCollection:v27 familyCollection:v26 avatarManager:v24 account:v23 accountUserCollection:v22 physicalCards:v21 fetcher:v18 weeks:v17 months:v16 years:v8 type:v19 unit:v15 currentMonthTransactions:v9 pendingPayments:v10 upcomingScheduledPayments:v11 dispayType:0];

    [(PKSpendingSummaryViewController *)v20 setCategorization:*(a1 + 64)];
    v12 = [v6 navigationController];
    [v12 pushViewController:v20 animated:1];

    v13 = *(a1 + 32);
    if (v13)
    {
      (*(v13 + 16))();
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

- (void)_canPresentCreditDetailsViewControllerWithCompletion:(uint64_t)a1
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      __break(1u);
    }

    v5 = *(a1 + 1272);
    if (v5)
    {
      if (*(a1 + 1579) == 1)
      {
        v4[2](v4, 0, 0);
      }

      else
      {
        v7 = *(a1 + 1224);
        if (v7)
        {
          objc_initWeak(buf, a1);
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __91__PKDashboardPassGroupViewController__canPresentCreditDetailsViewControllerWithCompletion___block_invoke;
          v9[3] = &unk_1E8011220;
          objc_copyWeak(&v13, buf);
          v12 = v4;
          v10 = v5;
          v11 = v7;
          [v11 executeAfterContentIsLoaded:v9];

          objc_destroyWeak(&v13);
          objc_destroyWeak(buf);
        }

        else
        {
          v8 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134349314;
            v15 = a1;
            v16 = 2080;
            v17 = "[PKDashboardPassGroupViewController _canPresentCreditDetailsViewControllerWithCompletion:]";
            _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Data source is nil", buf, 0x16u);
          }

          v4[2](v4, 0, 0);
        }
      }
    }

    else
    {
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        v15 = a1;
        v16 = 2080;
        v17 = "[PKDashboardPassGroupViewController _canPresentCreditDetailsViewControllerWithCompletion:]";
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Frontmost pass is nil", buf, 0x16u);
      }
    }
  }
}

- (void)presentBalanceDetailsWithCompletion:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __74__PKDashboardPassGroupViewController_presentBalanceDetailsWithCompletion___block_invoke;
    v4[3] = &unk_1E8023710;
    objc_copyWeak(&v6, &location);
    v5 = v3;
    [(PKDashboardPassGroupViewController *)a1 _canPresentCreditDetailsViewControllerWithCompletion:v4];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __74__PKDashboardPassGroupViewController_presentBalanceDetailsWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained && a2 && *(WeakRetained + 1579) != 1)
  {
    v8 = WeakRetained[153];
    v9 = [PKCreditBalanceDetailsViewController alloc];
    v10 = [v8 familyCollection];
    v11 = [MEMORY[0x1E69B8EF8] sharedService];
    v12 = [v8 account];
    v13 = [v8 accountUserCollection];
    v14 = [v8 physicalCards];
    v15 = [(PKCreditBalanceDetailsViewController *)v9 initWithStyle:0 transactionSourceCollection:v18 familyCollection:v10 webService:v11 account:v12 accountUserCollection:v13 physicalCards:v14 statement:0 previousStatements:0];

    v16 = [v6 navigationController];
    [v16 pushViewController:v15 animated:1];

    v17 = *(a1 + 32);
    if (v17)
    {
      (*(v17 + 16))();
    }
  }

  else
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }
}

- (void)showStatement:(void *)a3 completion:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v5)
    {
      objc_initWeak(&location, a1);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __63__PKDashboardPassGroupViewController_showStatement_completion___block_invoke;
      v8[3] = &unk_1E8023738;
      objc_copyWeak(&v11, &location);
      v10 = v7;
      v9 = v5;
      [(PKDashboardPassGroupViewController *)a1 _canPresentCreditDetailsViewControllerWithCompletion:v8];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }

    else if (v6)
    {
      (*(v6 + 2))(v6);
    }
  }
}

void __63__PKDashboardPassGroupViewController_showStatement_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v20 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained && (a2 & 1) != 0)
  {
    v7 = WeakRetained[153];
    v8 = [v7 account];
    v9 = [PKCreditBalanceDetailsViewController alloc];
    v10 = [v7 familyCollection];
    v11 = [MEMORY[0x1E69B8EF8] sharedService];
    v12 = [v7 accountUserCollection];
    v13 = [v7 physicalCards];
    v14 = [(PKCreditBalanceDetailsViewController *)v9 initWithStyle:0 transactionSourceCollection:v20 familyCollection:v10 webService:v11 account:v8 accountUserCollection:v12 physicalCards:v13 statement:0 previousStatements:0];

    v15 = [v6 navigationController];
    [v15 pushViewController:v14 animated:1];

    v16 = [(PKCreditBalanceDetailsViewController *)v14 viewControllerForStatement:*(a1 + 32) style:1];
    v17 = [v6 navigationController];
    [v17 pushViewController:v16 animated:1];

    v18 = *(a1 + 40);
    if (v18)
    {
      (*(v18 + 16))();
    }
  }

  else
  {
    v19 = *(a1 + 40);
    if (v19)
    {
      (*(v19 + 16))();
    }
  }
}

void __91__PKDashboardPassGroupViewController__canPresentCreditDetailsViewControllerWithCompletion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__PKDashboardPassGroupViewController__canPresentCreditDetailsViewControllerWithCompletion___block_invoke_2;
    aBlock[3] = &unk_1E8018300;
    v12 = a1[6];
    v10 = a1[4];
    v11 = a1[5];
    v3 = _Block_copy(aBlock);
    v4 = [a1[5] account];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 creditDetails];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 accountSummary];
        v3[2](v3, [v8 requiresDebtCollectionNotices] ^ 1);
      }

      else
      {
        v3[2](v3, 0);
      }
    }

    else
    {
      v3[2](v3, 1);
    }
  }

  else
  {
    (*(a1[6] + 2))();
  }
}

void __91__PKDashboardPassGroupViewController__canPresentCreditDetailsViewControllerWithCompletion___block_invoke_2(uint64_t a1, char a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPaymentPass:*(a1 + 32)];
    [v3 addObject:v4];
    v5 = [*(a1 + 40) accountUserCollection];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [v5 accountUsers];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithAccountUser:*(*(&v16 + 1) + 8 * i)];
          [v3 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v12 = objc_alloc(MEMORY[0x1E69B9300]);
    v13 = [v3 copy];
    v14 = [v12 initWithTransactionSources:v13];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v15 = *(*(a1 + 48) + 16);

    v15();
  }
}

- (void)presentDailyCashForDateComponents:(uint64_t)a3 redemptionType:(void *)a4 completion:
{
  v9 = a2;
  v7 = a4;
  v8 = v7;
  if (a1)
  {
    if ((a3 - 1) >= 2)
    {
      if (a3 == 3)
      {
        [(PKDashboardPassGroupViewController *)a1 _presentDailyCashOnAccountForDateComponents:v9 redemptionType:3 completion:v7];
      }

      else if (v7)
      {
        v7[2](v7);
      }
    }

    else
    {
      [(PKDashboardPassGroupViewController *)a1 _presentDailyCashOnPassForDateComponents:v9 completion:v7];
    }
  }
}

- (void)_presentDailyCashOnPassForDateComponents:(void *)a3 completion:
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = a1[159];
    if (v7)
    {
      v8 = a1[153];
      v9 = [a1[230] transactionDetailsFactory];
      if (!v8)
      {
        v10 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349314;
          v21 = a1;
          v22 = 2080;
          v23 = "[PKDashboardPassGroupViewController _presentDailyCashOnPassForDateComponents:completion:]";
          _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Data source is nil", buf, 0x16u);
        }
      }

      objc_initWeak(buf, a1);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __90__PKDashboardPassGroupViewController__presentDailyCashOnPassForDateComponents_completion___block_invoke;
      v14[3] = &unk_1E801EF10;
      objc_copyWeak(&v19, buf);
      v18 = v6;
      v11 = v8;
      v15 = v11;
      v16 = v5;
      v12 = v9;
      v17 = v12;
      [v11 executeAfterContentIsLoaded:v14];

      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
    }

    else
    {
      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        v21 = a1;
        v22 = 2080;
        v23 = "[PKDashboardPassGroupViewController _presentDailyCashOnPassForDateComponents:completion:]";
        _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Frontmost pass is nil", buf, 0x16u);
      }

      if (v6)
      {
        v6[2](v6);
      }
    }
  }
}

- (void)_presentDailyCashOnAccountForDateComponents:(uint64_t)a3 redemptionType:(void *)a4 completion:
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (a1)
  {
    if (a3 == 3)
    {
      objc_initWeak(&location, a1);
      v10 = [MEMORY[0x1E69B8400] sharedInstance];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __108__PKDashboardPassGroupViewController__presentDailyCashOnAccountForDateComponents_redemptionType_completion___block_invoke;
      v11[3] = &unk_1E801F000;
      objc_copyWeak(&v14, &location);
      v13 = v9;
      v12 = v7;
      [v10 defaultAccountForFeature:5 completion:v11];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    else if (v8)
    {
      (*(v8 + 2))(v8);
    }
  }
}

void __90__PKDashboardPassGroupViewController__presentDailyCashOnPassForDateComponents_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v19 = WeakRetained;
    v4 = [WeakRetained navigationController];
    if (v4)
    {
      v5 = [*(a1 + 32) transactionFetcher];
      v6 = [v5 cashbackGroupForDateComponents:*(a1 + 40) cashbackTransactionSourceCollection:0];

      if (v6)
      {
        v7 = [*(a1 + 32) transactionSourceCollection];
        v8 = [v7 transactionSourceIdentifiers];
        v9 = [v8 anyObject];
        v10 = [v6 transactionForCashbackGroupWithSourceIdentifier:v9];

        v11 = *(a1 + 48);
        v12 = [*(a1 + 32) familyCollection];
        v13 = [*(a1 + 32) account];
        v14 = [*(a1 + 32) accountUserCollection];
        v15 = [*(a1 + 32) physicalCards];
        v16 = [v11 viewControllerForTransaction:v10 sourceCollection:v7 familyCollection:v12 account:v13 accountUserCollection:v14 bankConnectInstitution:0 physicalCards:v15 group:v6 navigationController:v4];

        [v16 setShouldPromptForReview:1];
        [v4 pushViewController:v16 animated:1];
      }
    }

    v17 = *(a1 + 56);
    if (v17)
    {
      (*(v17 + 16))();
    }
  }

  else
  {
    v18 = *(a1 + 56);
    if (!v18)
    {
      goto LABEL_11;
    }

    v19 = 0;
    (*(v18 + 16))();
  }

  v3 = v19;
LABEL_11:
}

void __108__PKDashboardPassGroupViewController__presentDailyCashOnAccountForDateComponents_redemptionType_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = objc_alloc_init(PKAccountViewInterfaceConfiguration);
    [(PKAccountViewInterfaceConfiguration *)v5 setAccount:v3];
    [(PKAccountViewInterfaceConfiguration *)v5 setRewardsDateComponents:*(a1 + 32)];
    [(PKAccountViewInterfaceConfiguration *)v5 setDestination:9];
    [(PKAccountViewInterfaceConfiguration *)v5 setViewStyle:0];
    v6 = objc_alloc_init(PKPassPresentationContext);
    [(PKPassPresentationContext *)v6 setPresentationSource:5];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __108__PKDashboardPassGroupViewController__presentDailyCashOnAccountForDateComponents_redemptionType_completion___block_invoke_2;
    v8[3] = &unk_1E8010AD8;
    v9 = *(a1 + 40);
    [(PKDashboardPassGroupViewController *)WeakRetained presentAccountWithConfiguration:v5 presentationContext:v6 animated:1 completion:v8];
  }

  else
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }
}

uint64_t __108__PKDashboardPassGroupViewController__presentDailyCashOnAccountForDateComponents_redemptionType_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)presentAccountWithConfiguration:(void *)a3 presentationContext:(char)a4 animated:(void *)a5 completion:
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1)
  {
    v12 = a1[153];
    if (!v12)
    {
      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        v23 = a1;
        v24 = 2080;
        v25 = "[PKDashboardPassGroupViewController presentAccountWithConfiguration:presentationContext:animated:completion:]";
        _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Data source is nil", buf, 0x16u);
      }
    }

    v14 = a1[159];
    if (v14)
    {
      objc_initWeak(buf, a1);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __110__PKDashboardPassGroupViewController_presentAccountWithConfiguration_presentationContext_animated_completion___block_invoke;
      v16[3] = &unk_1E8023940;
      objc_copyWeak(&v20, buf);
      v17 = v10;
      v21 = a4;
      v18 = v9;
      v19 = v11;
      [v12 executeAfterContentIsLoaded:v16];

      objc_destroyWeak(&v20);
      objc_destroyWeak(buf);
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        v23 = a1;
        v24 = 2080;
        v25 = "[PKDashboardPassGroupViewController presentAccountWithConfiguration:presentationContext:animated:completion:]";
        _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Frontmost pass is nil", buf, 0x16u);
      }
    }
  }
}

- (void)presentTransaction:(void *)a3 forPaymentPass:(void *)a4 presentingView:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __87__PKDashboardPassGroupViewController_presentTransaction_forPaymentPass_presentingView___block_invoke;
    v9[3] = &unk_1E8023800;
    objc_copyWeak(v13, &location);
    v10 = v7;
    v11 = v8;
    v12 = a1;
    v13[1] = a4;
    [(PKDashboardPassGroupViewController *)a1 _canPresentCreditDetailsViewControllerWithCompletion:v9];

    objc_destroyWeak(v13);
    objc_destroyWeak(&location);
  }
}

void __87__PKDashboardPassGroupViewController_presentTransaction_forPaymentPass_presentingView___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained && a2)
  {
    v8 = WeakRetained[153];
    v9 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3032000000;
    v25[3] = __Block_byref_object_copy__63;
    v25[4] = __Block_byref_object_dispose__63;
    v26 = 0;
    if ([*(a1 + 32) isBankConnectTransaction])
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __87__PKDashboardPassGroupViewController_presentTransaction_forPaymentPass_presentingView___block_invoke_2;
      v21[3] = &unk_1E8012D58;
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v22 = v10;
      v23 = v11;
      v24 = v25;
      [v9 addOperation:v21];
    }

    v12 = [MEMORY[0x1E695DFB0] null];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __87__PKDashboardPassGroupViewController_presentTransaction_forPaymentPass_presentingView___block_invoke_323;
    v15[3] = &unk_1E80237D8;
    objc_copyWeak(v20, (a1 + 56));
    v16 = *(a1 + 32);
    v17 = v5;
    v13 = v8;
    v18 = v13;
    v19 = v25;
    v20[1] = *(a1 + 64);
    v14 = [v9 evaluateWithInput:v12 completion:v15];

    objc_destroyWeak(v20);
    _Block_object_dispose(v25, 8);
  }
}

void __87__PKDashboardPassGroupViewController_presentTransaction_forPaymentPass_presentingView___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E6967DA0]);
  v9 = [*(a1 + 32) primaryAccountIdentifier];
  v10 = [v8 initWithPrimaryAccountIdentifier:v9];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__PKDashboardPassGroupViewController_presentTransaction_forPaymentPass_presentingView___block_invoke_3;
  v14[3] = &unk_1E8023788;
  v11 = *(a1 + 48);
  v14[4] = *(a1 + 40);
  v15 = v6;
  v16 = v7;
  v17 = v11;
  v12 = v6;
  v13 = v7;
  [v10 accountAndReconsentStatusWithCompletion:v14];
}

void __87__PKDashboardPassGroupViewController_presentTransaction_forPaymentPass_presentingView___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__PKDashboardPassGroupViewController_presentTransaction_forPaymentPass_presentingView___block_invoke_4;
  v11[3] = &unk_1E8023760;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v16 = *(a1 + 48);
  v8 = *(a1 + 40);
  v17 = *(a1 + 56);
  v14 = v8;
  v15 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

uint64_t __87__PKDashboardPassGroupViewController_presentTransaction_forPaymentPass_presentingView___block_invoke_4(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v10 = 134349570;
      v11 = v4;
      v12 = 2080;
      v13 = "[PKDashboardPassGroupViewController presentTransaction:forPaymentPass:presentingView:]_block_invoke_4";
      v14 = 2112;
      v15 = v2;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Failed to fetch Bank Connect account: %@", &v10, 0x20u);
    }

    return (*(*(a1 + 64) + 16))();
  }

  else
  {
    v6 = [*(a1 + 56) institution];
    v7 = *(*(a1 + 72) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(*(a1 + 64) + 16);

    return v9();
  }
}

void __87__PKDashboardPassGroupViewController_presentTransaction_forPaymentPass_presentingView___block_invoke_323(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __87__PKDashboardPassGroupViewController_presentTransaction_forPaymentPass_presentingView___block_invoke_2_324;
  v6[3] = &unk_1E80237B0;
  objc_copyWeak(v9, (a1 + 64));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = *(a1 + 56);
  *&v5 = v2;
  *(&v5 + 1) = v3;
  v7 = v5;
  v8 = v4;
  v9[1] = *(a1 + 72);
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  objc_destroyWeak(v9);
}

void __87__PKDashboardPassGroupViewController_presentTransaction_forPaymentPass_presentingView___block_invoke_2_324(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 1579) & 1) == 0)
  {
    v4 = [WeakRetained navigationController];
    v5 = [v3[230] transactionDetailsFactory];
    if (v4)
    {
      v6 = *(a1 + 40);
      v16 = *(a1 + 32);
      v7 = v5;
      v8 = [*(a1 + 48) familyCollection];
      v9 = [*(a1 + 48) account];
      v10 = [*(a1 + 48) accountUserCollection];
      v11 = *(*(*(a1 + 56) + 8) + 40);
      v12 = [*(a1 + 48) physicalCards];
      v17 = v7;
      v13 = [v7 viewControllerForTransaction:v16 sourceCollection:v6 familyCollection:v8 account:v9 accountUserCollection:v10 bankConnectInstitution:v11 physicalCards:v12 group:0 navigationController:v4];

      [v4 pushViewController:v13 animated:1];
      if (*(a1 + 72) == 1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = *(a1 + 32);
            *buf = 138412290;
            v19 = v15;
            _os_log_debug_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEBUG, "Presenting confirm payment offer plan on transaction details view controller for transaction %@", buf, 0xCu);
          }

          [v13 presentConfirmPaymentOfferPlan];
        }
      }

      v5 = v17;
    }
  }
}

- (void)presentTransaction:(void *)a3 forAccount:
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  if (a1 && [v5 type] == 4)
  {
    v7 = objc_alloc_init(PKAccountViewInterfaceConfiguration);
    [(PKAccountViewInterfaceConfiguration *)v7 setAccount:v6];
    [(PKAccountViewInterfaceConfiguration *)v7 setTransaction:v9];
    [(PKAccountViewInterfaceConfiguration *)v7 setDestination:8];
    [(PKAccountViewInterfaceConfiguration *)v7 setViewStyle:0];
    v8 = objc_alloc_init(PKPassPresentationContext);
    [(PKPassPresentationContext *)v8 setPresentationSource:5];
    [(PKDashboardPassGroupViewController *)a1 presentAccountWithConfiguration:v7 presentationContext:v8 animated:1 completion:0];
  }
}

- (void)presentScheduledPayments
{
  if (a1)
  {
    v2 = a1[153];
    v3 = [MEMORY[0x1E69B8EF8] sharedService];
    objc_initWeak(&location, a1);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__PKDashboardPassGroupViewController_presentScheduledPayments__block_invoke;
    v6[3] = &unk_1E8014828;
    objc_copyWeak(&v10, &location);
    v4 = v2;
    v7 = v4;
    v5 = v3;
    v8 = v5;
    v9 = a1;
    [v4 executeAfterContentIsLoaded:v6];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __62__PKDashboardPassGroupViewController_presentScheduledPayments__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = [*(a1 + 32) account];
    v4 = [*(a1 + 32) recurringPayments];
    v5 = [v4 firstObject];

    if (v5)
    {
      v6 = [[PKCreditAccountPaymentDetailsViewController alloc] initWithAccount:v3 payment:v5 paymentWebService:*(a1 + 40) detailViewStyle:0];
      v7 = [v10 navigationController];
      [(PKAccountAutomaticPaymentsController *)v7 pushViewController:v6 animated:1];
    }

    else
    {
      v6 = [MEMORY[0x1E69B8400] sharedInstance];
      v7 = [[PKAccountAutomaticPaymentsController alloc] initWithAccountService:v6 paymentWebService:*(a1 + 40) account:v3 context:0];
      [(PKAccountAutomaticPaymentsController *)v7 setDelegate:*(a1 + 48)];
      v8 = [[PKAccountAutomaticPaymentsViewController alloc] initWithController:v7 showSetupPrompt:0];
      v9 = [v10 navigationController];
      [v9 presentViewController:v8 animated:1 completion:0];
    }

    WeakRetained = v10;
  }
}

- (void)presentInstallmentPlan:(uint64_t)a1
{
  if (a1 && a2)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObject:a2];
    [(PKDashboardPassGroupViewController *)a1 _presentInstallmentPlans:v3];
  }
}

- (void)_presentInstallmentPlans:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v24 = v3;
    v4 = [v3 count];
    v3 = v24;
    if (v4)
    {
      v5 = *(a1 + 1248);
      v6 = *(a1 + 1224);
      v7 = [v5 frontmostPassView];
      v8 = [v7 pass];
      v9 = [v8 paymentPass];

      v23 = v9;
      v10 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPaymentPass:v9];
      v11 = [objc_alloc(MEMORY[0x1E69B9300]) initWithTransactionSource:v10];
      if (v4 == 1)
      {
        v12 = [PKTransactionHistoryViewController alloc];
        v13 = [v24 anyObject];
        v14 = [v6 familyCollection];
        v15 = [v6 account];
        v16 = [v6 accountUserCollection];
        v17 = [v6 physicalCards];

        v18 = [(PKTransactionHistoryViewController *)v12 initWithInstallmentPlan:v13 transactionSourceCollection:v11 familyCollection:v14 account:v15 accountUserCollection:v16 physicalCards:v17];
      }

      else
      {
        v13 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
        v22 = [PKInstallmentPlansViewController alloc];
        v14 = [v6 account];
        v15 = [v6 accountUserCollection];
        v16 = [v6 physicalCards];
        v17 = [MEMORY[0x1E69B8400] sharedInstance];
        [v6 familyCollection];
        v20 = v19 = v10;

        v18 = [(PKInstallmentPlansViewController *)v22 initWithAccount:v14 accountUserCollection:v15 physicalCards:v16 accountService:v17 transactionSourceCollection:v11 familyCollection:v20 dataProvider:v13];
        v10 = v19;
      }

      if (v18)
      {
        v21 = [a1 navigationController];
        [v21 pushViewController:v18 animated:1];
      }

      v3 = v24;
    }
  }
}

- (void)presentInstallmentPlans
{
  if (a1)
  {
    v4 = [*(a1 + 1224) account];
    v2 = [v4 creditDetails];
    v3 = [v2 installmentPlans];

    [(PKDashboardPassGroupViewController *)a1 _presentInstallmentPlans:v3];
  }
}

- (void)presentRewardsHubWithCompletion:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __70__PKDashboardPassGroupViewController_presentRewardsHubWithCompletion___block_invoke;
    v5[3] = &unk_1E8023828;
    v6 = v3;
    [(PKDashboardPassGroupViewController *)a1 _presentRewardsHubWithCompletion:v5];
  }
}

uint64_t __70__PKDashboardPassGroupViewController_presentRewardsHubWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_presentRewardsHubWithCompletion:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __71__PKDashboardPassGroupViewController__presentRewardsHubWithCompletion___block_invoke;
    v4[3] = &unk_1E8023710;
    objc_copyWeak(&v6, &location);
    v5 = v3;
    [(PKDashboardPassGroupViewController *)a1 _canPresentCreditDetailsViewControllerWithCompletion:v4];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)presentAccountPromotionWithProgramIdentifier:(void *)a3 completion:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __94__PKDashboardPassGroupViewController_presentAccountPromotionWithProgramIdentifier_completion___block_invoke;
    v7[3] = &unk_1E8023850;
    v8 = v5;
    v9 = v6;
    [(PKDashboardPassGroupViewController *)a1 _presentRewardsHubWithCompletion:v7];
  }
}

void __94__PKDashboardPassGroupViewController_presentAccountPromotionWithProgramIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94__PKDashboardPassGroupViewController_presentAccountPromotionWithProgramIdentifier_completion___block_invoke_2;
    block[3] = &unk_1E8012300;
    v7 = v3;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }
}

void __94__PKDashboardPassGroupViewController_presentAccountPromotionWithProgramIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __94__PKDashboardPassGroupViewController_presentAccountPromotionWithProgramIdentifier_completion___block_invoke_3;
  v3[3] = &unk_1E8010AD8;
  v4 = *(a1 + 48);
  [v1 scrollToPromotionWithProgramIdentifier:v2 animated:1 completion:v3];
}

uint64_t __94__PKDashboardPassGroupViewController_presentAccountPromotionWithProgramIdentifier_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)presentRewardsHubMerchantsWithPrivateIdentifier:(void *)a3 completion:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __97__PKDashboardPassGroupViewController_presentRewardsHubMerchantsWithPrivateIdentifier_completion___block_invoke;
    v7[3] = &unk_1E8023850;
    v8 = v5;
    v9 = v6;
    [(PKDashboardPassGroupViewController *)a1 _presentRewardsHubWithCompletion:v7];
  }
}

void __97__PKDashboardPassGroupViewController_presentRewardsHubMerchantsWithPrivateIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__PKDashboardPassGroupViewController_presentRewardsHubMerchantsWithPrivateIdentifier_completion___block_invoke_2;
    block[3] = &unk_1E8012300;
    v7 = v3;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }
}

void __97__PKDashboardPassGroupViewController_presentRewardsHubMerchantsWithPrivateIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __97__PKDashboardPassGroupViewController_presentRewardsHubMerchantsWithPrivateIdentifier_completion___block_invoke_3;
  v3[3] = &unk_1E8023878;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 presentEnhancedMerchantsListWithCompletion:v3];
}

void __97__PKDashboardPassGroupViewController_presentRewardsHubMerchantsWithPrivateIdentifier_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __97__PKDashboardPassGroupViewController_presentRewardsHubMerchantsWithPrivateIdentifier_completion___block_invoke_4;
  v4[3] = &unk_1E8010AD8;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 scrollToMerchantWithPrivateIdentifier:v3 animated:1 completion:v4];
}

uint64_t __97__PKDashboardPassGroupViewController_presentRewardsHubMerchantsWithPrivateIdentifier_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __71__PKDashboardPassGroupViewController__presentRewardsHubWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained && (a2 & 1) != 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__PKDashboardPassGroupViewController__presentRewardsHubWithCompletion___block_invoke_2;
    aBlock[3] = &unk_1E8023850;
    aBlock[4] = WeakRetained;
    v22 = *(a1 + 32);
    v8 = _Block_copy(aBlock);
    *(v7 + 1579) = 1;
    v9 = *(v7 + 153);
    v10 = [v9 account];
    v11 = [v10 feature];

    if (v11 == 2)
    {
      v12 = [PKRewardsHubViewController alloc];
      v13 = [v9 account];
      v14 = [MEMORY[0x1E69B8400] sharedInstance];
      v15 = [(PKRewardsHubViewController *)v12 initWithAccount:v13 transactionSourceCollection:v5 accountService:v14];

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __71__PKDashboardPassGroupViewController__presentRewardsHubWithCompletion___block_invoke_3;
      v18[3] = &unk_1E8019A98;
      v18[4] = v7;
      v19 = v15;
      v20 = v8;
      v16 = v15;
      [(PKRewardsHubViewController *)v16 preflightWithCompletion:v18];
    }

    else
    {
      (*(v8 + 2))(v8, 0);
    }
  }

  else
  {
    v17 = *(a1 + 32);
    if (v17)
    {
      (*(v17 + 16))(v17, 0);
    }
  }
}

uint64_t __71__PKDashboardPassGroupViewController__presentRewardsHubWithCompletion___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 1579) = 0;
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __71__PKDashboardPassGroupViewController__presentRewardsHubWithCompletion___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PKDashboardPassGroupViewController__presentRewardsHubWithCompletion___block_invoke_4;
  block[3] = &unk_1E8012300;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __71__PKDashboardPassGroupViewController__presentRewardsHubWithCompletion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 pushViewController:*(a1 + 40) animated:1];

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void __110__PKDashboardPassGroupViewController_presentAccountWithConfiguration_presentationContext_animated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __110__PKDashboardPassGroupViewController_presentAccountWithConfiguration_presentationContext_animated_completion___block_invoke_2;
    v13[3] = &unk_1E80238C8;
    objc_copyWeak(&v15, (a1 + 56));
    v14 = *(a1 + 32);
    v16 = *(a1 + 64);
    [v3 addOperation:v13];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __110__PKDashboardPassGroupViewController_presentAccountWithConfiguration_presentationContext_animated_completion___block_invoke_5;
    v8[3] = &unk_1E8023918;
    objc_copyWeak(&v11, (a1 + 56));
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v12 = *(a1 + 64);
    [v3 addOperation:v8];
    v4 = [MEMORY[0x1E695DFB0] null];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __110__PKDashboardPassGroupViewController_presentAccountWithConfiguration_presentationContext_animated_completion___block_invoke_8;
    v6[3] = &unk_1E8020CB8;
    v7 = *(a1 + 48);
    v5 = [v3 evaluateWithInput:v4 completion:v6];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v15);
  }
}

void __110__PKDashboardPassGroupViewController_presentAccountWithConfiguration_presentationContext_animated_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __110__PKDashboardPassGroupViewController_presentAccountWithConfiguration_presentationContext_animated_completion___block_invoke_3;
    block[3] = &unk_1E8014940;
    v10 = *(a1 + 32);
    v11 = WeakRetained;
    v14 = *(a1 + 48);
    v13 = v7;
    v12 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    (*(v7 + 2))(v7, v6, 1);
  }
}

void __110__PKDashboardPassGroupViewController_presentAccountWithConfiguration_presentationContext_animated_completion___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) presentationSource] == 1 || objc_msgSend(*(a1 + 32), "presentationSource") == 2)
  {
    v2 = [(PKDashboardPassGroupViewController *)*(a1 + 40) _passGroupsViewNavigationController];
    [v2 popToDashboardPassGroupVCAnimated:*(a1 + 64)];
    v3 = [v2 transitionCoordinator];
    v4 = v3;
    if (*(a1 + 64) == 1 && v3)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __110__PKDashboardPassGroupViewController_presentAccountWithConfiguration_presentationContext_animated_completion___block_invoke_4;
      v6[3] = &unk_1E80238A0;
      v8 = *(a1 + 56);
      v7 = *(a1 + 48);
      [v4 animateAlongsideTransition:0 completion:v6];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v5 = *(*(a1 + 56) + 16);

    v5();
  }
}

void __110__PKDashboardPassGroupViewController_presentAccountWithConfiguration_presentationContext_animated_completion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __110__PKDashboardPassGroupViewController_presentAccountWithConfiguration_presentationContext_animated_completion___block_invoke_6;
  v10[3] = &unk_1E80238F0;
  objc_copyWeak(&v15, (a1 + 48));
  v14 = v7;
  v11 = v6;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v16 = *(a1 + 56);
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v15);
}

void __110__PKDashboardPassGroupViewController_presentAccountWithConfiguration_presentationContext_animated_completion___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained navigationController];
    v5 = [v3[216] accountViewControllerWithConfiguration:*(a1 + 40) presentationContext:*(a1 + 48)];
    [v4 pushViewController:v5 animated:*(a1 + 72)];
    v6 = [v4 transitionCoordinator];
    v7 = v6;
    if (*(a1 + 72) == 1 && v6)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __110__PKDashboardPassGroupViewController_presentAccountWithConfiguration_presentationContext_animated_completion___block_invoke_7;
      v8[3] = &unk_1E80238A0;
      v10 = *(a1 + 56);
      v9 = *(a1 + 32);
      [v7 animateAlongsideTransition:0 completion:v8];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t __110__PKDashboardPassGroupViewController_presentAccountWithConfiguration_presentationContext_animated_completion___block_invoke_8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)presentPeerPaymentRecurringPaymentsWithIdentifier:(void *)a3 completion:
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = a1[159];
    v8 = v7;
    if (v7)
    {
      if ([v7 isPeerPaymentPass])
      {
        v9 = [v8 secureElementPass];
        v10 = [v9 devicePrimaryPaymentApplication];
        v11 = [v10 state];

        if (v11 == 7)
        {
          if (v6)
          {
            v6[2](v6, 0);
          }
        }

        else
        {
          objc_initWeak(&location, a1);
          v13 = a1[153];
          if (!v13)
          {
            v14 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134349314;
              v23 = a1;
              v24 = 2080;
              v25 = "[PKDashboardPassGroupViewController presentPeerPaymentRecurringPaymentsWithIdentifier:completion:]";
              _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Data source is nil", buf, 0x16u);
            }
          }

          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __99__PKDashboardPassGroupViewController_presentPeerPaymentRecurringPaymentsWithIdentifier_completion___block_invoke;
          v16[3] = &unk_1E801BAB0;
          objc_copyWeak(&v20, &location);
          v15 = v13;
          v17 = v15;
          v19 = v6;
          v18 = v5;
          [v15 executeAfterContentIsLoaded:v16];

          objc_destroyWeak(&v20);
          objc_destroyWeak(&location);
        }

LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        v23 = a1;
        v24 = 2080;
        v25 = "[PKDashboardPassGroupViewController presentPeerPaymentRecurringPaymentsWithIdentifier:completion:]";
        _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Frontmost pass is nil", buf, 0x16u);
      }
    }

    if (v6)
    {
      v6[2](v6, 0);
    }

    goto LABEL_17;
  }

LABEL_18:
}

void __99__PKDashboardPassGroupViewController_presentPeerPaymentRecurringPaymentsWithIdentifier_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    if ((PKPeerPaymentRecurringPaymentHasShownEducationMessage() & 1) != 0 || ([a1[4] recurringPeerPayments], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "count"), v3, v4))
    {
      v5 = [PKPeerPaymentRecurringPaymentViewController alloc];
      v6 = [MEMORY[0x1E69B9000] sharedInstance];
      v7 = [a1[4] transactionSourceCollection];
      v8 = [a1[4] familyCollection];
      v9 = [(PKPeerPaymentRecurringPaymentViewController *)v5 initWithContext:0 peerPaymentService:v6 transactionSourceCollection:v7 familyCollection:v8];

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __99__PKDashboardPassGroupViewController_presentPeerPaymentRecurringPaymentsWithIdentifier_completion___block_invoke_4;
      v12[3] = &unk_1E8023968;
      objc_copyWeak(&v16, a1 + 7);
      v10 = v9;
      v13 = v10;
      v14 = a1[5];
      v15 = a1[6];
      [(PKPeerPaymentRecurringPaymentViewController *)v10 preflightWithCompletion:v12];

      objc_destroyWeak(&v16);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __99__PKDashboardPassGroupViewController_presentPeerPaymentRecurringPaymentsWithIdentifier_completion___block_invoke_2;
      block[3] = &unk_1E80110E0;
      objc_copyWeak(&v19, a1 + 7);
      v18 = a1[4];
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v11 = a1[6];
      if (v11)
      {
        v11[2](v11, 1);
      }

      objc_destroyWeak(&v19);
    }
  }
}

void __99__PKDashboardPassGroupViewController_presentPeerPaymentRecurringPaymentsWithIdentifier_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [PKPeerPaymentRecurringPaymentEducationViewController alloc];
    v4 = [*(a1 + 32) transactionSourceCollection];
    v5 = [*(a1 + 32) familyCollection];
    v6 = [(PKPeerPaymentRecurringPaymentEducationViewController *)v3 initWithContext:0 transactionSourceCollection:v4 familyCollection:v5];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __99__PKDashboardPassGroupViewController_presentPeerPaymentRecurringPaymentsWithIdentifier_completion___block_invoke_3;
    v9[3] = &unk_1E8010998;
    objc_copyWeak(&v10, (a1 + 40));
    [(PKPeerPaymentRecurringPaymentEducationViewController *)v6 setAddCardHandler:v9];
    v7 = [[PKNavigationController alloc] initWithRootViewController:v6];
    v8 = [WeakRetained navigationController];
    [v8 presentViewController:v7 animated:1 completion:0];

    objc_destroyWeak(&v10);
  }
}

void __99__PKDashboardPassGroupViewController_presentPeerPaymentRecurringPaymentsWithIdentifier_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(PKDashboardPassGroupViewController *)WeakRetained _presentPeerPaymentAddDebitFlow];
    WeakRetained = v2;
  }
}

- (void)_presentPeerPaymentAddDebitFlow
{
  if (a1)
  {
    v3 = [PKPeerPaymentActionController startProvisionToAddDebitWithNetworkAllowlist:0];
    v2 = [a1 navigationController];
    [v2 presentViewController:v3 animated:1 completion:0];
  }
}

void __99__PKDashboardPassGroupViewController_presentPeerPaymentRecurringPaymentsWithIdentifier_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    if (a2)
    {
      v6 = [WeakRetained navigationController];
      [v6 pushViewController:*(a1 + 32) animated:1];

      v5 = v8;
      if (*(a1 + 40))
      {
        [*(a1 + 32) showDetailsForRecurringPaymentIdentifier:?];
        v5 = v8;
      }
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, a2);
      v5 = v8;
    }
  }
}

void __110__PKDashboardPassGroupViewController_presentPeerPaymentActionViewControllerForAction_passLibraryDataProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PKDashboardPassGroupViewController *)WeakRetained _presentPeerPaymentAddDebitFlow];
}

- (void)presentPeerPaymentDeviceTapWithInitialAmount:(void *)a3 initialMemo:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = a1[153];
    objc_initWeak(&location, a1);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __95__PKDashboardPassGroupViewController_presentPeerPaymentDeviceTapWithInitialAmount_initialMemo___block_invoke;
    v13 = &unk_1E8010998;
    objc_copyWeak(&v14, &location);
    v8 = [v7 deviceTapAmountEntryViewControllerWithInitialAmount:v5 initialMemo:v6 dismissAction:&v10];
    v9 = [a1 navigationController];
    [v9 presentViewController:v8 animated:1 completion:0];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __95__PKDashboardPassGroupViewController_presentPeerPaymentDeviceTapWithInitialAmount_initialMemo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)presentAuxiliaryPassInformationItemWithIdentifier:(void *)a3 informationIdentifier:(void *)a4 completion:
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = a1[158];
    v11 = v10;
    if (!v10)
    {
      v21 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        v28 = a1;
        v29 = 2080;
        v30 = "[PKDashboardPassGroupViewController presentAuxiliaryPassInformationItemWithIdentifier:informationIdentifier:completion:]";
        _os_log_impl(&dword_1BD026000, v21, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Frontmost pass is nil", buf, 0x16u);
      }

      if (v9)
      {
        v9[2](v9, 0);
      }

      goto LABEL_30;
    }

    v12 = [v10 secureElementPass];
    v13 = v12;
    if (!v12)
    {
      if (v9)
      {
        v9[2](v9, 0);
      }

      goto LABEL_29;
    }

    v14 = [v12 auxiliaryPassInformation];
    v15 = v14;
    if (!v14 || ![v14 count])
    {
      if (v9)
      {
        v9[2](v9, 0);
      }

      goto LABEL_28;
    }

    if (v8)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __121__PKDashboardPassGroupViewController_presentAuxiliaryPassInformationItemWithIdentifier_informationIdentifier_completion___block_invoke;
      v25[3] = &unk_1E8015820;
      v22 = &v26;
      v26 = v8;
      v16 = [v15 pk_firstObjectPassingTest:v25];
      if (v16)
      {
LABEL_8:
        v17 = [v16 items];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __121__PKDashboardPassGroupViewController_presentAuxiliaryPassInformationItemWithIdentifier_informationIdentifier_completion___block_invoke_2;
        v23[3] = &unk_1E8015848;
        v24 = v7;
        v18 = [v17 pk_firstObjectPassingTest:v23];

        if (v18)
        {
          v19 = [[PKDashboardAuxiliaryPassInformationViewController alloc] initWithItem:v18 forPass:v13];
          v20 = [a1 navigationController];
          [v20 pushViewController:v19 animated:1];

          if (v9)
          {
            v9[2](v9, 1);
          }
        }

        else if (v9)
        {
          v9[2](v9, 0);
        }

LABEL_26:
        if (v8)
        {
        }

LABEL_28:

LABEL_29:
LABEL_30:

        goto LABEL_31;
      }
    }

    else
    {
      v16 = [v15 firstObject];
      if (v16)
      {
        goto LABEL_8;
      }
    }

    if (v9)
    {
      v9[2](v9, 0);
    }

    goto LABEL_26;
  }

LABEL_31:
}

uint64_t __121__PKDashboardPassGroupViewController_presentAuxiliaryPassInformationItemWithIdentifier_informationIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
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

uint64_t __121__PKDashboardPassGroupViewController_presentAuxiliaryPassInformationItemWithIdentifier_informationIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
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

- (void)presentEditCalendarEvent:(void *)a3 eventStore:
{
  if (a1)
  {
    v5 = MEMORY[0x1E6966B88];
    v6 = a3;
    v7 = a2;
    v9 = objc_alloc_init(v5);
    [v9 setEditViewDelegate:a1];
    [v9 setEventStore:v6];

    [v9 setEvent:v7];
    v8 = [a1 navigationController];
    [v8 presentViewController:v9 animated:1 completion:0];
  }
}

- (void)presentExistingCalendarEvent:(void *)a1 eventStore:(void *)a2
{
  if (a1)
  {
    v3 = MEMORY[0x1E6966B90];
    v4 = a2;
    v7 = objc_alloc_init(v3);
    [v7 setDelegate:a1];
    [v7 setEvent:v4];

    v5 = [objc_opt_new() initWithRootViewController:v7];
    v6 = [a1 navigationController];
    [v6 presentViewController:v5 animated:1 completion:0];
  }
}

- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4
{
  if ((a4 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    [a3 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)presentRestrictedGuestAccessScheduleWithHomeIdentifier:(void *)a1
{
  if (a1 && a2)
  {
    v3 = getHUScheduleAccessViewControllerClass;
    v4 = a2;
    v5 = objc_alloc(v3());
    v6 = [MEMORY[0x1E69DC888] labelColor];
    v8 = [v5 initWithHomeID:v4 tintColor:v6];

    v7 = [a1 navigationController];
    [v7 pushViewController:v8 animated:1];
  }
}

- (void)performPrecursorPassAction
{
  if (a1)
  {
    v1 = *(a1 + 1224);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __64__PKDashboardPassGroupViewController_performPrecursorPassAction__block_invoke;
    v3[3] = &unk_1E8010970;
    v4 = v1;
    v2 = v1;
    [v2 executeAfterContentIsLoaded:v3];
  }
}

- (void)presentSearchWithCompletion:(id *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __66__PKDashboardPassGroupViewController_presentSearchWithCompletion___block_invoke;
    v5[3] = &unk_1E8010AD8;
    v6 = v3;
    [(PKDashboardPassGroupViewController *)a1 presentSearchWithQuery:v5 completion:?];
  }
}

uint64_t __66__PKDashboardPassGroupViewController_presentSearchWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)presentSearchWithQuery:(void *)a3 completion:
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = a1[158];
    if (!v7)
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        v18 = a1;
        v19 = 2080;
        v20 = "[PKDashboardPassGroupViewController presentSearchWithQuery:completion:]";
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Frontmost pass is nil", buf, 0x16u);
      }
    }

    v9 = a1[153];
    if (!v9)
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        v18 = a1;
        v19 = 2080;
        v20 = "[PKDashboardPassGroupViewController presentSearchWithQuery:completion:]";
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "PKNavigationDashboardPassViewController (%{public}p): %s: Data source is nil", buf, 0x16u);
      }
    }

    if (PKSupportsSearchForPass())
    {
      objc_initWeak(buf, a1);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __72__PKDashboardPassGroupViewController_presentSearchWithQuery_completion___block_invoke;
      v11[3] = &unk_1E8023990;
      objc_copyWeak(&v16, buf);
      v15 = v6;
      v12 = v9;
      v13 = a1;
      v14 = v5;
      [(PKDashboardPassGroupViewController *)a1 _canPresentCreditDetailsViewControllerWithCompletion:v11];

      objc_destroyWeak(&v16);
      objc_destroyWeak(buf);
    }

    else if (v6)
    {
      (*(v6 + 2))(v6, 0);
    }
  }
}

void __72__PKDashboardPassGroupViewController_presentSearchWithQuery_completion___block_invoke(id *a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v7 = WeakRetained;
  if (WeakRetained && (a2 & 1) != 0)
  {
    *(WeakRetained + 1579) = 1;
    v8 = objc_alloc_init(MEMORY[0x1E69B8BD8]);
    v9 = [PKSearchResultsViewController alloc];
    v10 = [a1[4] familyCollection];
    v11 = [(PKSearchResultsViewController *)v9 initWithPaymentDataProvider:v8 transactionSourceCollection:v5 familyCollection:v10];

    [(PKSearchResultsViewController *)v11 preflightWithCompletion:0];
    v12 = [objc_alloc(MEMORY[0x1E69DCF10]) initWithSearchResultsController:0];
    [v12 setSearchResultsUpdater:v11];
    v13 = [v12 searchBar];
    [v13 setDelegate:v11];
    v14 = [v13 searchTextField];
    [v14 setAllowsCopyingTokens:0];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__PKDashboardPassGroupViewController_presentSearchWithQuery_completion___block_invoke_2;
    aBlock[3] = &unk_1E80110B8;
    objc_copyWeak(v30, a1 + 8);
    v29 = a1[7];
    v15 = _Block_copy(aBlock);
    v16 = [a1[5] presentedViewController];

    if (v16)
    {
      v17 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "Another VC already presented", buf, 2u);
      }

      v15[2](v15, 0);
    }

    else
    {
      v19 = [[PKNavigationController alloc] initWithRootViewController:v11];
      [(PKNavigationController *)v19 setModalPresentationStyle:5];
      [(PKNavigationController *)v19 setModalTransitionStyle:2];
      v20 = [(PKSearchResultsViewController *)v11 navigationItem];
      [v20 setSearchController:v12];

      v21 = a1[5];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __72__PKDashboardPassGroupViewController_presentSearchWithQuery_completion___block_invoke_349;
      v22[3] = &unk_1E8011D78;
      v23 = v12;
      v24 = a1[6];
      v25 = v11;
      v26 = v15;
      [v21 presentViewController:v19 animated:1 completion:v22];
    }

    objc_destroyWeak(v30);
  }

  else
  {
    v18 = a1[7];
    if (v18)
    {
      v18[2](v18, 0);
    }
  }
}

void __72__PKDashboardPassGroupViewController_presentSearchWithQuery_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 1579) = 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = v5;
    (*(v6 + 16))(v6, a2);
    v5 = v7;
  }
}

void __72__PKDashboardPassGroupViewController_presentSearchWithQuery_completion___block_invoke_349(id *a1)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__PKDashboardPassGroupViewController_presentSearchWithQuery_completion___block_invoke_2_350;
  v8[3] = &unk_1E8011D78;
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

uint64_t __72__PKDashboardPassGroupViewController_presentSearchWithQuery_completion___block_invoke_2_350(uint64_t a1)
{
  v2 = [*(a1 + 32) searchBar];
  [v2 becomeFirstResponder];

  if (*(a1 + 40))
  {
    [*(a1 + 48) setQuery:?];
  }

  v3 = *(*(a1 + 56) + 16);

  return v3();
}

- (void)presentInvitationWithIdentifier:(void *)a3 completion:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v5)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __81__PKDashboardPassGroupViewController_presentInvitationWithIdentifier_completion___block_invoke;
      v8[3] = &unk_1E80239B8;
      v9 = v5;
      v10 = v7;
      [(PKDashboardPassGroupViewController *)a1 _presentPaymentPassDetailsAnimated:v8 completion:?];
    }

    else if (v6)
    {
      (*(v6 + 2))(v6);
    }
  }
}

uint64_t __81__PKDashboardPassGroupViewController_presentInvitationWithIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  [a2 presentAccountUserInvitationWithIdentifier:*(a1 + 32)];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)presentSharesList
{
  v3 = self->_frontmostPaymentPass;
  if (v3)
  {
    if (PKRunningInRemoteContext())
    {
      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_INFO, "Shares list requested from remote context. Sending to Wallet to complete action.", buf, 2u);
      }

      v5 = MEMORY[0x1E696AEC0];
      v6 = *MEMORY[0x1E69BC6E0];
      v7 = *MEMORY[0x1E69BC698];
      v8 = [(PKPaymentPass *)v3 uniqueID];
      v9 = [v5 stringWithFormat:@"%@://%@/%@/%@", v6, v7, v8, *MEMORY[0x1E69BC620]];

      v10 = [MEMORY[0x1E695DFF8] URLWithString:v9];
      PKOpenURL();
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x1E69B9268]);
      v12 = [MEMORY[0x1E69B8EF8] sharedService];
      v13 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
      v14 = [v11 initWithPass:v3 webService:v12 paymentServiceProvider:v13 queue:MEMORY[0x1E69E96A0]];

      objc_initWeak(buf, self);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __55__PKDashboardPassGroupViewController_presentSharesList__block_invoke;
      v15[3] = &unk_1E80110E0;
      objc_copyWeak(&v17, buf);
      v9 = v14;
      v16 = v9;
      [v9 updateSharesWithCompletion:v15];

      objc_destroyWeak(&v17);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "SharedWith: Tried to present non SE pass!", buf, 2u);
    }
  }
}

void __55__PKDashboardPassGroupViewController_presentSharesList__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [[PKPassSharesListViewController alloc] initWithSharesController:*(a1 + 32)];
    v4 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v3];
    v5 = [v6 navigationController];
    [v5 presentViewController:v4 animated:1 completion:0];

    WeakRetained = v6;
  }
}

- (void)presentShareFlow
{
  v3 = self->_frontmostPass;
  if ([(PKPass *)v3 passType]== PKPassTypeSecureElement)
  {
    if (PKRunningInRemoteContext())
    {
      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_INFO, "Share flow requested from remote context. Sending user to Wallet to complete action.", buf, 2u);
      }

      v5 = MEMORY[0x1E696AEC0];
      v6 = *MEMORY[0x1E69BC6E0];
      v7 = *MEMORY[0x1E69BC698];
      v8 = [(PKPass *)v3 uniqueID];
      v9 = [v5 stringWithFormat:@"%@://%@/%@/%@", v6, v7, v8, *MEMORY[0x1E69BC618]];

      v10 = [MEMORY[0x1E695DFF8] URLWithString:v9];
      PKOpenURL();
    }

    else
    {
      v14 = [(PKPass *)v3 secureElementPass];
      v15 = objc_alloc(MEMORY[0x1E69B9268]);
      v16 = [MEMORY[0x1E69B8EF8] sharedService];
      v17 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
      v18 = [v15 initWithPass:v14 webService:v16 paymentServiceProvider:v17 queue:MEMORY[0x1E69E96A0]];

      objc_initWeak(buf, self);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __54__PKDashboardPassGroupViewController_presentShareFlow__block_invoke;
      v21[3] = &unk_1E8019628;
      v10 = v18;
      v22 = v10;
      objc_copyWeak(&v24, buf);
      v9 = v14;
      v23 = v9;
      [v10 updateEntitlementsWithCompletion:v21];

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v9 = [[PKLinkedApplication alloc] initWithPass:v3];
    v11 = MEMORY[0x1E69CD9F8];
    v12 = [(PKPassGroupView *)self->_passGroupView frontmostPassView];
    v10 = [v11 pkui_activityControllerForPass:v3 passView:v12 passLinkedApplication:v9];

    if (v10)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __54__PKDashboardPassGroupViewController_presentShareFlow__block_invoke_3;
      v19[3] = &unk_1E8012528;
      v20 = v3;
      [v10 setCompletionWithItemsHandler:v19];
      v13 = [(PKDashboardPassGroupViewController *)self navigationController];
      [v13 presentViewController:v10 animated:1 completion:0];
    }
  }
}

void __54__PKDashboardPassGroupViewController_presentShareFlow__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__PKDashboardPassGroupViewController_presentShareFlow__block_invoke_2;
  v3[3] = &unk_1E8013F58;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  [v2 canSendInvitationWithCompletion:v3];

  objc_destroyWeak(&v5);
}

void __54__PKDashboardPassGroupViewController_presentShareFlow__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v4 = PKAlertForDisplayableErrorWithHandlers(v6, 0, 0, 0);
      [WeakRetained presentViewController:v4 animated:1 completion:0];
    }

    else
    {
      v4 = [[PKShareSecureElementPassViewController alloc] initWithSecureElementPass:*(a1 + 32) environment:0 isFromPeopleScreen:0 delegate:0];
      [(PKShareSecureElementPassViewController *)v4 setModalPresentationStyle:5];
      v5 = [WeakRetained navigationController];
      [v5 presentViewController:v4 animated:-[PKShareSecureElementPassViewController shouldViewControllerBeAnimatedIn](v4 completion:{"shouldViewControllerBeAnimatedIn"), 0}];
    }
  }
}

void __54__PKDashboardPassGroupViewController_presentShareFlow__block_invoke_3(uint64_t a1, void *a2, int a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) noteShared];
    v6 = *MEMORY[0x1E69B9EE0];
    v8 = @"activity";
    v9[0] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    MEMORY[0x1BFB41980](v6, v7);
  }

  else
  {
    MEMORY[0x1BFB41980](*MEMORY[0x1E69B9EE8], 0);
  }
}

- (void)presentRedeemGiftcard
{
  if (a1)
  {
    v2 = [*(a1 + 1224) appleBalanceAddMoneyUIManager];
    [v2 presentAMSRedeemGiftcardFromViewController:a1 webViewDelegate:0];
  }
}

- (void)peerPaymentActionViewControllerDidCancel:(id)a3
{
  v3 = [(PKDashboardPassGroupViewController *)self navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)peerPaymentActionViewControllerDidPerformAction:(id)a3
{
  v3 = [(PKDashboardPassGroupViewController *)self navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)accountAutomaticPaymentsController:(id)a3 didSchedulePayment:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(PKDashboardPassGroupViewController *)self navigationController];
  if (v7)
  {
    v8 = [v11 account];
    v9 = [MEMORY[0x1E69B8EF8] sharedService];
    v10 = [[PKCreditAccountPaymentDetailsViewController alloc] initWithAccount:v8 payment:v6 paymentWebService:v9 detailViewStyle:0];
    [v7 pushViewController:v10 animated:1];
  }
}

- (id)presentationSceneIdentifierForAccountAutomaticPaymentsController:(id)a3
{
  v3 = [(PKDashboardPassGroupViewController *)self viewIfLoaded];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 _sceneIdentifier];

  return v6;
}

- (void)manuallyArchivePassWithUniqueID:(id *)a1
{
  v3 = a2;
  if (a1 && PKManualArchiveEnabled())
  {
    objc_initWeak(&location, a1);
    v4 = [MEMORY[0x1E69B8A58] sharedInstance];
    [v4 archivePassWithUniqueID:v3];

    [a1[155] handleUserPassArchive:v3];
    v5 = a1[155];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __70__PKDashboardPassGroupViewController_manuallyArchivePassWithUniqueID___block_invoke;
    v6[3] = &unk_1E8010998;
    objc_copyWeak(&v7, &location);
    [v5 reloadGroupsWithCompletion:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __70__PKDashboardPassGroupViewController_manuallyArchivePassWithUniqueID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [(PKDashboardPassGroupViewController *)WeakRetained _passGroupsViewNavigationController];
    [v2 popToDashboardPassGroupVCAnimated:1];

    WeakRetained = v3;
  }
}

- (uint64_t)shouldOfferManualArchivalForPassWithUniqueID:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if (PKManualArchiveEnabled() && ([*(a1 + 1240) passAnnotationsByUniqueId], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectForKey:", v3), v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
    {
      a1 = [v5 isArchived] ^ 1;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (PKDashboardPassGroupViewControllerDelegate)dashboardPassGroupViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dashboardPassGroupViewControllerDelegate);

  return WeakRetained;
}

@end