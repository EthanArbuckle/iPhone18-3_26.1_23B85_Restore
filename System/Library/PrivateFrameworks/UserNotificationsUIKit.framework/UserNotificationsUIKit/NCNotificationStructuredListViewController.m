@interface NCNotificationStructuredListViewController
- (BOOL)_forwarNotificationRequestToLongLookIfNecessary:(id)a3;
- (BOOL)_shouldPresentDigestOnboardingSuggestion;
- (BOOL)dismissModalFullScreenAnimated:(BOOL)a3;
- (BOOL)interpretsViewAsContent:(id)a3;
- (BOOL)isContentExtensionVisible:(id)a3;
- (BOOL)isHomeAffordanceVisible;
- (BOOL)isPresentingNotificationInLongLook;
- (BOOL)notificationListComponent:(id)a3 isClockNotificationRequest:(id)a4;
- (BOOL)notificationListComponent:(id)a3 shouldAllowInteractionsForNotificationRequest:(id)a4;
- (BOOL)notificationListComponentShouldAllowLongPressGesture:(id)a3;
- (BOOL)notificationOptionsMenu:(id)a3 isDisplayingStackSummaryForNotificationRequest:(id)a4;
- (BOOL)notificationOptionsMenu:(id)a3 isInPrioritySection:(id)a4;
- (BOOL)notificationRootList:(id)a3 shouldFilterNotificationRequest:(id)a4;
- (BOOL)notificationRootListAreHighlightsEnabled:(id)a3;
- (BOOL)notificationRootListShouldAllowNotificationHistoryReveal:(id)a3;
- (BOOL)requiresPushOffManagementForNotificationRootList:(id)a3;
- (BOOL)shouldHintDefaultActionForNotificationListBaseComponent:(id)a3;
- (CGPoint)scrollViewVisibleContentLayoutOffset;
- (CGRect)visibleContentExtent;
- (CGSize)effectiveContentSize;
- (Class)notificationRootListNotificationViewControllerClass:(id)a3;
- (NCNotificationListCoalescingControlsHandler)coalescingControlsHandlerInForceTouchState;
- (NCNotificationListComponent)notificationListComponentPresentingOptionsMenu;
- (NCNotificationListSectionHeaderView)headerViewInForceTouchState;
- (NCNotificationListSupplementaryViewsContaining)testRecipeSupplementaryViewsContainer;
- (NCNotificationStructuredListViewController)init;
- (NCNotificationStructuredListViewControllerDelegate)delegate;
- (NCNotificationViewController)notificationViewControllerPresentingLongLook;
- (UIEdgeInsets)_notificationListViewEdgeInsetsForSize:(CGSize)a3;
- (UIEdgeInsets)_overlayFooterViewEdgeInsetsForSize:(CGSize)a3;
- (UIEdgeInsets)insetMargins;
- (UIPanGestureRecognizer)homeAffordancePanGesture;
- (UIScrollView)scrollView;
- (double)cutoffOffsetForNotificationRootList:(id)a3;
- (id)_logDescription;
- (id)_notificationSystemSettings;
- (id)_sectionSettingsForSectionIdentifier:(id)a3;
- (id)containerViewForPreviewInteractionPresentedContentForNotificationListBaseComponent:(id)a3;
- (id)hideHomeAffordanceAnimationSettingsForNotificationListComponent:(id)a3;
- (id)insertSupplementaryViewsContainerAtListPosition:(unint64_t)a3 identifier:(id)a4 withDescription:(id)a5;
- (id)legibilitySettingsForNotificationListBaseComponent:(id)a3;
- (id)notificationListComponent:(id)a3 containerViewProviderForExpandedContentForViewController:(id)a4;
- (id)notificationListComponent:(id)a3 keyboardAssertionForGestureWindow:(id)a4;
- (id)notificationListComponent:(id)a3 notificationRequestForUUID:(id)a4;
- (id)notificationRootListRequestsDiagnosticsDictionary:(id)a3;
- (id)notificationUsageTrackingStateForNotificationListComponent:(id)a3;
- (id)settleHomeAffordanceAnimationBehaviorDescriptionForNotificationListComponent:(id)a3;
- (id)unhideHomeAffordanceAnimationSettingsForNotificationListComponent:(id)a3;
- (void)_contentSizeCategoryDidChange;
- (void)_didExitAlwaysOn;
- (void)_handleDeviceUnauthenticated;
- (void)_loadListView;
- (void)_presentNavigationControllerAndBeginModalInteraction:(id)a3 sender:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)_presentOptionsMenuForNotificationRequest:(id)a3 withPresentingView:(id)a4 optionsForSection:(BOOL)a5;
- (void)_requestAuthenticationAndPerformBlock:(id)a3;
- (void)_resetListStateBeforeUIAppears;
- (void)_resetSwipeInteractionWithRevealedActionsAnimated:(BOOL)a3;
- (void)_scheduleDigestOnboardingSuggestion;
- (void)_setDigestOnboardingSuggestionVisible:(BOOL)a3;
- (void)_setScheduledDeliveryEnabledForSectionIdentifier:(id)a3;
- (void)_setSystemScheduledDeliveryEnabled:(BOOL)a3 scheduledDeliveryTimes:(id)a4;
- (void)_toggleDigestOnboardingSuggestionIfNecessary;
- (void)_updateDebugHUD;
- (void)_updateListEdgeInsetsForSize:(CGSize)a3;
- (void)_updateListVisibleAreaForSize:(CGSize)a3;
- (void)_updateOrientationForSize:(CGSize)a3;
- (void)addContentObserver:(id)a3;
- (void)adjustForLegibilitySettingsChange:(id)a3;
- (void)createContactNavigationControllerDidComplete:(id)a3;
- (void)digestOnboardingNavigationController:(id)a3 didChangeDeliveryTimesActiveSelection:(id)a4 appBundleIdentifiersActiveSelection:(id)a5;
- (void)digestOnboardingNavigationController:(id)a3 didScheduleDigestDeliveryTimes:(id)a4 forAppBundleIdentifiers:(id)a5;
- (void)digestOnboardingNavigationControllerDidDeferSetup:(id)a3;
- (void)digestOnboardingSuggestionClient:(id)a3 didSuggestOnboarding:(id)a4;
- (void)insertNotificationRequest:(id)a3;
- (void)invalidateContentInsets;
- (void)loadView;
- (void)migrateNotifications;
- (void)modalNavigationControllerDidDismiss:(id)a3;
- (void)modeManager:(id)a3 didUpdateCurrentModeConfiguration:(id)a4 previousModeConfiguration:(id)a5;
- (void)modifyNotificationRequest:(id)a3;
- (void)notificationListBaseComponent:(id)a3 didAddViewController:(id)a4;
- (void)notificationListBaseComponent:(id)a3 didBeginUserInteractionWithViewController:(id)a4;
- (void)notificationListBaseComponent:(id)a3 didEndUserInteractionWithViewController:(id)a4;
- (void)notificationListBaseComponent:(id)a3 didPresentCoalescingControlsHandler:(id)a4 inForceTouchState:(BOOL)a5;
- (void)notificationListBaseComponent:(id)a3 didRemoveViewController:(id)a4;
- (void)notificationListBaseComponent:(id)a3 didTransitionActionsForSwipeInteraction:(id)a4 revealed:(BOOL)a5;
- (void)notificationListBaseComponent:(id)a3 didTransitionCoalescingControlsHandler:(id)a4 toClearState:(BOOL)a5;
- (void)notificationListBaseComponent:(id)a3 requestsClearingPresentables:(id)a4;
- (void)notificationListBaseComponent:(id)a3 requestsModalPresentationOfNavigationController:(id)a4 sender:(id)a5 animated:(BOOL)a6 completion:(id)a7;
- (void)notificationListBaseComponentDidSignificantUserInteraction:(id)a3;
- (void)notificationListComponent:(id)a3 acceptedSummaryOnboarding:(BOOL)a4;
- (void)notificationListComponent:(id)a3 didPresentSectionHeaderView:(id)a4 inForceTouchState:(BOOL)a5;
- (void)notificationListComponent:(id)a3 didTransitionSectionHeaderView:(id)a4 toClearState:(BOOL)a5;
- (void)notificationListComponent:(id)a3 isPresentingLongLookForViewController:(id)a4;
- (void)notificationListComponent:(id)a3 requestPermissionToExecuteAction:(id)a4 forNotificationRequest:(id)a5 withParameters:(id)a6 completion:(id)a7;
- (void)notificationListComponent:(id)a3 requestsAuthenticationAndPerformBlock:(id)a4;
- (void)notificationListComponent:(id)a3 requestsClearingNotificationRequestsInSections:(id)a4;
- (void)notificationListComponent:(id)a3 requestsExecuteAction:(id)a4 forNotificationRequest:(id)a5 requestAuthentication:(BOOL)a6 withParameters:(id)a7 completion:(id)a8;
- (void)notificationListComponent:(id)a3 requestsPresentingManagementViewForNotificationRequest:(id)a4 managementViewType:(unint64_t)a5 withPresentingView:(id)a6 completion:(id)a7;
- (void)notificationListComponent:(id)a3 requestsPresentingOptionsMenuForNotificationRequest:(id)a4 presentingViewProvider:(id)a5 optionsForSection:(BOOL)a6 completion:(id)a7;
- (void)notificationListComponent:(id)a3 requestsStackSummarySuggestionVisible:(BOOL)a4 forRequest:(id)a5;
- (void)notificationListComponent:(id)a3 setAllowsDirectMessages:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)notificationListComponent:(id)a3 setAllowsTimeSensitive:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)notificationListComponent:(id)a3 setMuted:(BOOL)a4 untilDate:(id)a5 forSectionIdentifier:(id)a6 threadIdentifier:(id)a7;
- (void)notificationListComponent:(id)a3 setNotificationSystemSettings:(id)a4;
- (void)notificationListComponent:(id)a3 setScheduledDelivery:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)notificationListComponent:(id)a3 shouldFinishLongLookTransitionForNotificationRequest:(id)a4 trigger:(int64_t)a5 withCompletionBlock:(id)a6;
- (void)notificationListComponent:(id)a3 willDismissLongLookForCancelActionForViewController:(id)a4;
- (void)notificationListCountIndicatorViewController:(id)a3 didChangeVisibility:(BOOL)a4;
- (void)notificationListCountIndicatorViewControllerDidUpdate:(id)a3;
- (void)notificationListCountIndicatorViewControllerLongPressed:(id)a3 presentingView:(id)a4;
- (void)notificationManagementViewPresenter:(id)a3 setAllowsCriticalAlerts:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6;
- (void)notificationManagementViewPresenter:(id)a3 setAllowsNotifications:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6;
- (void)notificationManagementViewPresenter:(id)a3 setAllowsTimeSensitive:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6;
- (void)notificationManagementViewPresenter:(id)a3 setDeliverQuietly:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6;
- (void)notificationManagementViewPresenter:(id)a3 setMuted:(BOOL)a4 untilDate:(id)a5 forNotificationRequest:(id)a6 withSectionIdentifier:(id)a7 threadIdentifier:(id)a8;
- (void)notificationManagementViewPresenter:(id)a3 setMuted:(BOOL)a4 untilDate:(id)a5 forSectionIdentifier:(id)a6 threadIdentifier:(id)a7;
- (void)notificationManagementViewPresenter:(id)a3 setScheduledDelivery:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6;
- (void)notificationManagementViewPresenterDidDismissManagementView:(id)a3;
- (void)notificationManagementViewPresenterWillPresentManagementView:(id)a3;
- (void)notificationOptionsMenu:(id)a3 addSenderToContactsForNotificationRequest:(id)a4 withSectionIdentifier:(id)a5;
- (void)notificationOptionsMenu:(id)a3 requestsClearingSectionWithIdentifier:(id)a4;
- (void)notificationOptionsMenu:(id)a3 setAllowsCriticalAlerts:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6;
- (void)notificationOptionsMenu:(id)a3 setAllowsNotifications:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6;
- (void)notificationOptionsMenu:(id)a3 setAllowsTimeSensitive:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6;
- (void)notificationOptionsMenu:(id)a3 setMuted:(BOOL)a4 untilDate:(id)a5 forNotificationRequest:(id)a6 withSectionIdentifier:(id)a7 threadIdentifier:(id)a8;
- (void)notificationOptionsMenu:(id)a3 setScheduledDelivery:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6;
- (void)notificationOptionsMenuWillDismiss:(id)a3;
- (void)notificationRootList:(id)a3 didUpdateNotificationsVisibilityInViewport:(BOOL)a4;
- (void)notificationRootList:(id)a3 isNotificationsHistoryRevealed:(BOOL)a4;
- (void)notificationRootList:(id)a3 requestsClearingFromIncomingSectionNotificationRequests:(id)a4;
- (void)notificationRootList:(id)a3 scrollViewDidScroll:(id)a4;
- (void)notificationRootList:(id)a3 scrollViewWillBeginDragging:(id)a4;
- (void)notificationRootList:(id)a3 scrollViewWillEndDragging:(id)a4 withVelocity:(CGPoint)a5 targetContentOffset:(CGPoint *)a6;
- (void)notificationRootListDidUpdateVisibleContentExtent:(id)a3;
- (void)notificationRootListWillExpandNotificationListCount:(id)a3;
- (void)notificationStructuredListView:(id)a3 didChangeFooterCenterY:(double)a4;
- (void)notificationsLoadedForSectionIdentifier:(id)a3;
- (void)notifyContentObservers;
- (void)removeContentObserver:(id)a3;
- (void)removeNotificationRequest:(id)a3;
- (void)revealNotificationHistory:(BOOL)a3 animated:(BOOL)a4;
- (void)setDeviceAuthenticated:(BOOL)a3;
- (void)setHomeAffordancePanGesture:(id)a3;
- (void)setHomeAffordanceVisible:(BOOL)a3;
- (void)setNotificationListExpandsVisibleRegionOnSignificantScroll:(BOOL)a3;
- (void)toggleFilteringForSectionIdentifier:(id)a3 shouldFilter:(BOOL)a4;
- (void)toolsOverlayViewRequestsBeginUserInteraction:(id)a3;
- (void)toolsOverlayViewRequestsEndUserInteraction:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateGlassContentInterfaceStyleToUserInterfaceStyle:(int64_t)a3 glassLuminanceValue:(double)a4 wallpaperLuminanceValue:(double)a5;
- (void)updateNotificationSectionSettings:(id)a3 previousSectionSettings:(id)a4;
- (void)updateNotificationSystemSettings:(id)a3 previousSystemSettings:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillMoveToWindow:(id)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation NCNotificationStructuredListViewController

- (NCNotificationViewController)notificationViewControllerPresentingLongLook
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationViewControllerPresentingLongLook);

  return WeakRetained;
}

- (NCNotificationListSectionHeaderView)headerViewInForceTouchState
{
  WeakRetained = objc_loadWeakRetained(&self->_headerViewInForceTouchState);

  return WeakRetained;
}

- (NCNotificationListCoalescingControlsHandler)coalescingControlsHandlerInForceTouchState
{
  WeakRetained = objc_loadWeakRetained(&self->_coalescingControlsHandlerInForceTouchState);

  return WeakRetained;
}

- (id)_logDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"Notification List [%@]", v4];

  return v5;
}

- (UIScrollView)scrollView
{
  [(NCNotificationStructuredListViewController *)self loadViewIfNeeded];
  listView = self->_listView;

  return listView;
}

- (void)notifyContentObservers
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v6 = [(NCNotificationRootList *)self->_listModel incomingCount];
    v7 = [(NCNotificationRootList *)self->_listModel incomingTitle];
    *buf = 138543874;
    v22 = v5;
    v23 = 2048;
    v24 = v6;
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_INFO, "%{public}@ notifyContentObservers; incomingCount %lu; incomingTitle: %{public}@", buf, 0x20u);
  }

  v8 = [(NCNotificationStructuredListViewController *)self countIndicatorViewController];
  [v8 setCount:{-[NCNotificationRootList incomingCount](self->_listModel, "incomingCount")}];

  v9 = [(NCNotificationStructuredListViewController *)self countIndicatorViewController];
  v10 = [(NCNotificationRootList *)self->_listModel incomingTitle];
  [v9 setIncomingTitle:v10];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = [(NCNotificationStructuredListViewController *)self observers];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v15++) structuredListContentChanged:{-[NCNotificationStructuredListViewController hasVisibleContent](self, "hasVisibleContent")}];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)_resetListStateBeforeUIAppears
{
  [(NCNotificationStructuredListViewController *)self _resetSwipeInteractionWithRevealedActionsAnimated:0];
  v3 = [(NCNotificationStructuredListViewController *)self legibilitySettingsForNotificationListBaseComponent:self->_listModel];
  [(NCNotificationStructuredListViewController *)self adjustForLegibilitySettingsChange:v3];
  v4 = [(NCNotificationStructuredListViewController *)self listView];
  v5 = [v4 window];

  if (v5)
  {
    v6 = [(NCNotificationStructuredListViewController *)self listView];
    v7 = [v6 window];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v12 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      [(NCNotificationStructuredListViewController *)v12 _resetListStateBeforeUIAppears];
    }

    v6 = [MEMORY[0x277D759A0] mainScreen];
    [v6 bounds];
    v9 = v13;
    v11 = v14;
  }

  [(NCNotificationStructuredListViewController *)self _updateOrientationForSize:v9, v11];
  listView = self->_listView;
  v16 = [(NCNotificationStructuredListViewController *)self traitCollection];
  [(NCNotificationListView *)listView updateBottomViewTransitionStyleWithTraitCollection:v16];

  listModel = self->_listModel;
  v18 = [(NCNotificationStructuredListViewController *)self traitCollection];
  -[NCNotificationRootList didUpdateToUserInterfaceSizeClass:](listModel, "didUpdateToUserInterfaceSizeClass:", [v18 verticalSizeClass]);

  v19 = [(NCNotificationStructuredListViewController *)self _listViewContainer];
  v20 = [(NCNotificationStructuredListViewController *)self traitCollection];
  [v19 setUserInterfaceSizeClass:{objc_msgSend(v20, "verticalSizeClass")}];

  [(NCNotificationRootList *)self->_listModel prepareForUIAppear];
}

- (NCNotificationStructuredListViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)scrollViewVisibleContentLayoutOffset
{
  [(NCNotificationRootList *)self->_listModel scrollViewVisibleContentLayoutOffsetY];
  v3 = v2;
  v4 = 0.0;
  result.y = v3;
  result.x = v4;
  return result;
}

- (CGRect)visibleContentExtent
{
  [(NCNotificationRootList *)self->_listModel aggregatedVisibleContentExtent];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_didExitAlwaysOn
{
  v3 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21E77E000, v3, OS_LOG_TYPE_DEFAULT, "NCStructuredListVC didExitAlwaysOn", v6, 2u);
  }

  [(NCNotificationRootList *)self->_listModel removeOverrideNotificationListDisplayStyleSettingForReason:@"NCNotificationListDisplayStyleReasonOverrideDeviceLocked"];
  v4 = [(NCNotificationRootList *)self->_listModel notificationSections];
  [v4 enumerateObjectsUsingBlock:&__block_literal_global_32];

  v5 = [(NCNotificationStructuredListViewController *)self _listViewContainer];
  [v5 didExitAlwaysOn];

  [(NCNotificationRootList *)self->_listModel _backlightChangedToBacklightLuminance:2];
}

- (NCNotificationStructuredListViewController)init
{
  v10.receiver = self;
  v10.super_class = NCNotificationStructuredListViewController;
  v2 = [(NCNotificationStructuredListViewController *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_backgroundBlurred = 1;
    v2->_itemSpacing = 8.0;
    v4 = _NCNotificationListInsetMarginHorizontal();
    v3->_insetMargins.top = 0.0;
    v3->_insetMargins.left = v4;
    v3->_insetMargins.bottom = 0.0;
    v3->_insetMargins.right = v4;
    v5 = objc_alloc_init(NCNotificationManagementViewPresenter);
    managementViewPresenter = v3->_managementViewPresenter;
    v3->_managementViewPresenter = v5;

    [(NCNotificationManagementViewPresenter *)v3->_managementViewPresenter setDelegate:v3];
    v7 = objc_alloc_init(NCModeManager);
    modeManager = v3->_modeManager;
    v3->_modeManager = v7;
  }

  return v3;
}

- (void)loadView
{
  v3 = [NCNotificationStructuredListView alloc];
  v4 = [(NCNotificationStructuredListView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(NCNotificationStructuredListView *)v4 setDelegate:self];
  [(NCNotificationStructuredListViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = NCNotificationStructuredListViewController;
  [(NCNotificationStructuredListViewController *)&v7 viewDidLoad];
  [NCSupplementaryViewPrototypeRecipe registerRecipeWithDelegate:self];
  v3 = objc_alloc_init(NCNotificationListCountIndicatorViewController);
  countIndicatorViewController = self->_countIndicatorViewController;
  self->_countIndicatorViewController = v3;

  [(NCNotificationListCountIndicatorViewController *)self->_countIndicatorViewController setDelegate:self];
  [(NCNotificationStructuredListViewController *)self addChildViewController:self->_countIndicatorViewController];
  [(NCNotificationListCountIndicatorViewController *)self->_countIndicatorViewController didMoveToParentViewController:self];
  v5 = [(NCNotificationStructuredListViewController *)self _listViewContainer];
  v6 = [(NCNotificationListCountIndicatorViewController *)self->_countIndicatorViewController view];
  [v5 setFooterView:v6];

  [(NCNotificationStructuredListViewController *)self _loadListView];
  [(NCModeManager *)self->_modeManager addObserver:self];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NCNotificationStructuredListViewController;
  [(NCNotificationStructuredListViewController *)&v4 viewWillAppear:a3];
  [(NCNotificationStructuredListViewController *)self _resetListStateBeforeUIAppears];
}

- (void)viewDidAppear:(BOOL)a3
{
  v17.receiver = self;
  v17.super_class = NCNotificationStructuredListViewController;
  [(NCNotificationStructuredListViewController *)&v17 viewDidAppear:a3];
  v4 = [(NCNotificationStructuredListViewController *)self view];
  [v4 frame];
  [(NCNotificationStructuredListViewController *)self _updateListVisibleAreaForSize:v5, v6];

  if (!self->_touchEaterManager)
  {
    v7 = [(NCNotificationStructuredListViewController *)self view];
    v8 = [v7 window];

    if (v8)
    {
      v9 = [NCNotificationListTouchEaterManager alloc];
      v10 = [(NCNotificationStructuredListViewController *)self view];
      v11 = [(NCNotificationListTouchEaterManager *)v9 initForView:v10];
      touchEaterManager = self->_touchEaterManager;
      self->_touchEaterManager = v11;
    }
  }

  v13 = +[NCPlatterView useRegularMaterial];
  v14 = [(NCNotificationStructuredListViewController *)self delegate];
  v15 = v14;
  if (v13)
  {
    if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v16 = 1;
LABEL_11:
      [v15 notificationStructuredListViewController:self glassContentInterfaceStyleOverridenToUserInterfaceStyle:v16];
    }
  }

  else if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v16 = 2;
    goto LABEL_11;
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = NCNotificationStructuredListViewController;
  [(NCNotificationStructuredListViewController *)&v7 viewWillDisappear:?];
  v5 = [(NCNotificationStructuredListViewController *)self managementViewPresenter];
  [v5 dismissManagementViewIfPresentedAnimated:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NCModalNavigationController *)self->_modalNavigationController dismissViewControllerAnimated:v3 completion:0];
  }

  v6 = [(NCNotificationStructuredListViewController *)self optionsMenu];
  [v6 dismissMenu];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = NCNotificationStructuredListViewController;
  [(NCNotificationStructuredListViewController *)&v5 viewDidDisappear:a3];
  [(NCNotificationStructuredListViewController *)self _resetSwipeInteractionWithRevealedActionsAnimated:0];
  [(NCNotificationListTouchEaterManager *)self->_touchEaterManager removeTouchGestureRecognizer];
  touchEaterManager = self->_touchEaterManager;
  self->_touchEaterManager = 0;
}

- (void)viewWillMoveToWindow:(id)a3
{
  if (!a3)
  {
    v8 = [(NCNotificationStructuredListViewController *)self view];
    v5 = [v8 window];
    v6 = [v5 windowScene];
    v7 = [v6 _alwaysOnEnvironment];
    [v7 removeObserver:self];
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v15.receiver = self;
  v15.super_class = NCNotificationStructuredListViewController;
  [(NCNotificationStructuredListViewController *)&v15 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  if (!self->_touchEaterManager)
  {
    v7 = [(NCNotificationStructuredListViewController *)self view];
    v8 = [v7 window];

    if (v8)
    {
      v9 = [NCNotificationListTouchEaterManager alloc];
      v10 = [(NCNotificationStructuredListViewController *)self view];
      v11 = [(NCNotificationListTouchEaterManager *)v9 initForView:v10];
      touchEaterManager = self->_touchEaterManager;
      self->_touchEaterManager = v11;
    }
  }

  if (v6)
  {
    v13 = [v6 windowScene];
    v14 = [v13 _alwaysOnEnvironment];
    [v14 addObserver:self];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v26 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v17.receiver = self;
  v17.super_class = NCNotificationStructuredListViewController;
  [(NCNotificationStructuredListViewController *)&v17 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(NCNotificationStructuredListViewController *)self _updateOrientationForSize:width, height];
  [(NCNotificationStructuredListViewController *)self _updateListVisibleAreaForSize:width, height];
  v8 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v11 = [(NCNotificationStructuredListViewController *)self traitCollection];
    v12 = [v11 verticalSizeClass];
    *buf = 138544130;
    v19 = v10;
    v20 = 2048;
    v21 = v12;
    v22 = 2048;
    v23 = width;
    v24 = 2048;
    v25 = height;
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ viewWillTransitionToSize; verticalSizeClass: %ld; W: %.2f; H: %.2f", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __97__NCNotificationStructuredListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v15[3] = &unk_2783720A0;
  objc_copyWeak(&v16, buf);
  v15[4] = self;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __97__NCNotificationStructuredListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v13[3] = &unk_2783720A0;
  objc_copyWeak(&v14, buf);
  v13[4] = self;
  [v7 animateAlongsideTransition:v15 completion:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

void __97__NCNotificationStructuredListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained listView];
  v3 = [*(a1 + 32) traitCollection];
  [v2 updateBottomViewTransitionStyleWithTraitCollection:v3];

  v4 = [WeakRetained listModel];
  v5 = [*(a1 + 32) traitCollection];
  [v4 didUpdateToUserInterfaceSizeClass:{objc_msgSend(v5, "verticalSizeClass")}];

  v6 = [WeakRetained _listViewContainer];
  v7 = [*(a1 + 32) traitCollection];
  [v6 setUserInterfaceSizeClass:{objc_msgSend(v7, "verticalSizeClass")}];

  v8 = [WeakRetained listModel];
  [v8 layoutForRootListSizeChange];
}

void __97__NCNotificationStructuredListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained listView];
  v3 = [*(a1 + 32) traitCollection];
  [v2 updateBottomViewTransitionStyleWithTraitCollection:v3];

  v4 = [WeakRetained listModel];
  v5 = [*(a1 + 32) traitCollection];
  [v4 didUpdateToUserInterfaceSizeClass:{objc_msgSend(v5, "verticalSizeClass")}];

  v6 = [WeakRetained _listViewContainer];
  v7 = [*(a1 + 32) traitCollection];
  [v6 setUserInterfaceSizeClass:{objc_msgSend(v7, "verticalSizeClass")}];

  v8 = [WeakRetained listModel];
  [v8 layoutForRootListSizeChange];
}

- (void)insertNotificationRequest:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D77DD0];
  v6 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v9 = [v4 notificationIdentifier];
    v10 = [v9 un_logDigest];
    v27 = 138543618;
    v28 = v8;
    v29 = 2114;
    v30 = v10;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting notification request %{public}@", &v27, 0x16u);
  }

  allNotificationRequests = self->_allNotificationRequests;
  if (allNotificationRequests)
  {
    v12 = [v4 sectionIdentifier];
    v13 = [(NSMutableDictionary *)allNotificationRequests objectForKey:v12];

    if (!v13)
    {
      v14 = self->_allNotificationRequests;
      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v16 = [v4 sectionIdentifier];
      [(NSMutableDictionary *)v14 setObject:v15 forKey:v16];
    }

    v17 = self->_allNotificationRequests;
    v18 = [v4 sectionIdentifier];
    v19 = [(NSMutableDictionary *)v17 objectForKey:v18];
    v20 = [v4 notificationIdentifier];
    [v19 setObject:v4 forKey:v20];

    [(NCNotificationStructuredListViewController *)self _updateDebugHUD];
  }

  if ([(NCNotificationStructuredListViewController *)self _forwarNotificationRequestToLongLookIfNecessary:v4])
  {
    v21 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v22 = v21;
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = [v4 notificationIdentifier];
      v26 = [v25 un_logDigest];
      v27 = 138543618;
      v28 = v24;
      v29 = 2114;
      v30 = v26;
      _os_log_impl(&dword_21E77E000, v22, OS_LOG_TYPE_INFO, "%{public}@ forwarded insert notification request %{public}@ to long look", &v27, 0x16u);
    }
  }

  else
  {
    [(NCNotificationRootList *)self->_listModel insertNotificationRequest:v4];
  }
}

- (void)removeNotificationRequest:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D77DD0];
  v6 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v9 = [v4 notificationIdentifier];
    v10 = [v9 un_logDigest];
    v34 = 138543618;
    v35 = v8;
    v36 = 2114;
    v37 = v10;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notification request %{public}@", &v34, 0x16u);
  }

  allNotificationRequests = self->_allNotificationRequests;
  if (allNotificationRequests)
  {
    v12 = [v4 sectionIdentifier];
    v13 = [(NSMutableDictionary *)allNotificationRequests objectForKey:v12];
    v14 = [v4 notificationIdentifier];
    v15 = [v13 objectForKey:v14];

    if (v15)
    {
      v16 = self->_allNotificationRequests;
      v17 = [v4 sectionIdentifier];
      v18 = [(NSMutableDictionary *)v16 objectForKey:v17];
      v19 = [v4 notificationIdentifier];
      [v18 removeObjectForKey:v19];

      v20 = self->_allNotificationRequests;
      v21 = [v4 sectionIdentifier];
      v22 = [(NSMutableDictionary *)v20 objectForKey:v21];
      v23 = [v22 count];

      if (!v23)
      {
        v24 = self->_allNotificationRequests;
        v25 = [v4 sectionIdentifier];
        [(NSMutableDictionary *)v24 removeObjectForKey:v25];
      }

      [(NCNotificationStructuredListViewController *)self _updateDebugHUD];
    }
  }

  v26 = [(NCNotificationStructuredListViewController *)self notificationViewControllerPresentingLongLook];
  v27 = [v26 notificationRequest];
  v28 = [v27 matchesRequest:v4];

  if (v28)
  {
    v29 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v29;
      v31 = [(NCNotificationStructuredListViewController *)self _logDescription];
      v32 = [v4 notificationIdentifier];
      v33 = [v32 un_logDigest];
      v34 = 138543618;
      v35 = v31;
      v36 = 2114;
      v37 = v33;
      _os_log_impl(&dword_21E77E000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ deferring removal of notification request %{public}@ since it is presented in long look", &v34, 0x16u);
    }

    [(NCNotificationStructuredListViewController *)self setNotificationRequestRemovedWhilePresentingLongLook:v4];
  }

  else
  {
    [(NCNotificationRootList *)self->_listModel removeNotificationRequest:v4];
  }
}

- (void)modifyNotificationRequest:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D77DD0];
  v6 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v9 = [v4 notificationIdentifier];
    v10 = [v9 un_logDigest];
    v20 = 138543618;
    v21 = v8;
    v22 = 2114;
    v23 = v10;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ modifying notification request %{public}@", &v20, 0x16u);
  }

  allNotificationRequests = self->_allNotificationRequests;
  if (allNotificationRequests)
  {
    v12 = [v4 sectionIdentifier];
    v13 = [(NSMutableDictionary *)allNotificationRequests objectForKey:v12];
    v14 = [v4 notificationIdentifier];
    [v13 setObject:v4 forKey:v14];
  }

  if ([(NCNotificationStructuredListViewController *)self _forwarNotificationRequestToLongLookIfNecessary:v4])
  {
    v15 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      v17 = [(NCNotificationStructuredListViewController *)self _logDescription];
      v18 = [v4 notificationIdentifier];
      v19 = [v18 un_logDigest];
      v20 = 138543618;
      v21 = v17;
      v22 = 2114;
      v23 = v19;
      _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_INFO, "%{public}@ forwarded modify notification request %{public}@ to long look", &v20, 0x16u);
    }
  }

  else
  {
    [(NCNotificationRootList *)self->_listModel modifyNotificationRequest:v4];
  }
}

- (void)updateNotificationSectionSettings:(id)a3 previousSectionSettings:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v11 = [v6 sectionIdentifier];
    v12 = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ updating notification section settings for section %{public}@", &v12, 0x16u);
  }

  [(NCNotificationRootList *)self->_listModel updateNotificationSectionSettings:v6 previousSectionSettings:v7];
}

- (void)updateNotificationSystemSettings:(id)a3 previousSystemSettings:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v11 = 138543618;
    v12 = v10;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ updating notification system settings = %@", &v11, 0x16u);
  }

  [(NCNotificationRootList *)self->_listModel updateNotificationSystemSettings:v6 previousSystemSettings:v7];
  [(NCNotificationStructuredListViewController *)self _toggleDigestOnboardingSuggestionIfNecessary];
}

- (void)notificationsLoadedForSectionIdentifier:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ notifications loaded for section %{public}@", &v8, 0x16u);
  }

  [(NCNotificationRootList *)self->_listModel notificationsLoadedForSectionIdentifier:v4];
}

- (void)setDeviceAuthenticated:(BOOL)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_deviceAuthenticated != a3)
  {
    v3 = a3;
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(NCNotificationStructuredListViewController *)self _logDescription];
      v8 = 138543618;
      v9 = v7;
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ setting device authenticated to %{BOOL}d", &v8, 0x12u);
    }

    self->_deviceAuthenticated = v3;
    if (!v3)
    {
      [(NCNotificationStructuredListViewController *)self _handleDeviceUnauthenticated];
    }

    [(NCNotificationRootList *)self->_listModel setDeviceAuthenticated:v3];
    [(NCNotificationStructuredListViewController *)self _resetSwipeInteractionWithRevealedActionsAnimated:1];
  }
}

- (void)_handleDeviceUnauthenticated
{
  if ([(NCNotificationStructuredListViewController *)self isPresentingNotificationInLongLook])
  {
    v3 = [(NCNotificationStructuredListViewController *)self notificationViewControllerPresentingLongLook];
    v6 = [v3 notificationRequest];

    v4 = [v6 options];
    v5 = [v4 contentPreviewSetting];

    if (v5)
    {
      [(NCNotificationStructuredListViewController *)self dismissModalFullScreenAnimated:0];
    }
  }
}

- (void)migrateNotifications
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ migrating notification requests", &v6, 0xCu);
  }

  [(NCNotificationRootList *)self->_listModel migrateNotificationsFromIncomingSectionToHistorySection];
}

- (void)toggleFilteringForSectionIdentifier:(id)a3 shouldFilter:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v10 = @"OFF";
    *v11 = 138543874;
    *&v11[4] = v9;
    if (v4)
    {
      v10 = @"ON";
    }

    *&v11[12] = 2112;
    *&v11[14] = v10;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ turning filtering %@ for section %{public}@", v11, 0x20u);
  }

  [(NCNotificationRootList *)self->_listModel toggleFilteringForSectionIdentifier:v6 shouldFilter:v4, *v11];
}

- (CGSize)effectiveContentSize
{
  v2 = [(NCNotificationStructuredListViewController *)self scrollView];
  [v2 contentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)dismissModalFullScreenAnimated:(BOOL)a3
{
  v3 = a3;
  v37 = *MEMORY[0x277D85DE8];
  v5 = [(NCNotificationStructuredListViewController *)self notificationViewControllerPresentingLongLook];
  v6 = [(NCNotificationStructuredListViewController *)self headerViewInForceTouchState];
  v7 = [(NCNotificationStructuredListViewController *)self coalescingControlsHandlerInForceTouchState];
  v8 = v7;
  if (v5)
  {
    v9 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [(NCNotificationStructuredListViewController *)self _logDescription];
      v12 = [v5 notificationRequest];
      v13 = [v12 notificationIdentifier];
      v14 = [v13 un_logDigest];
      v33 = 138543618;
      v34 = v11;
      v35 = 2114;
      v36 = v14;
      _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissing presented long look for notification request %{public}@", &v33, 0x16u);
    }

    v15 = [v5 dismissPresentedViewControllerAnimated:v3];
    goto LABEL_14;
  }

  if (v6)
  {
    v16 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [(NCNotificationStructuredListViewController *)self _logDescription];
      v19 = [v6 sectionIdentifier];
      v33 = 138543618;
      v34 = v18;
      v35 = 2114;
      v36 = v19;
      _os_log_impl(&dword_21E77E000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissing header view in force touch state for section %{public}@", &v33, 0x16u);
    }

    v20 = v6;
LABEL_13:
    v15 = [v20 dismissModalFullScreenIfNeeded];
LABEL_14:
    v24 = v15;
    goto LABEL_15;
  }

  if (v7)
  {
    v21 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      v23 = [(NCNotificationStructuredListViewController *)self _logDescription];
      v33 = 138543362;
      v34 = v23;
      _os_log_impl(&dword_21E77E000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissing coalescing controls in force touch state", &v33, 0xCu);
    }

    v20 = v8;
    goto LABEL_13;
  }

  if (self->_modalNavigationController && ([(NCNotificationStructuredListViewController *)self presentedViewController], v26 = objc_claimAutoreleasedReturnValue(), modalNavigationController = self->_modalNavigationController, v26, v26 == modalNavigationController))
  {
    v28 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      v30 = [(NCNotificationStructuredListViewController *)self _logDescription];
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = 138543618;
      v34 = v30;
      v35 = 2114;
      v36 = v32;
      _os_log_impl(&dword_21E77E000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissing navigation controller of type '%{public}@'.", &v33, 0x16u);
    }

    [(NCNotificationStructuredListViewController *)self dismissViewControllerAnimated:v3 completion:0];
    v24 = 1;
  }

  else
  {
    v24 = 0;
  }

LABEL_15:

  return v24;
}

- (BOOL)isContentExtensionVisible:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredListViewController *)self notificationViewControllerPresentingLongLook];
  v6 = [v5 isContentExtensionVisible:v4];

  return v6;
}

- (BOOL)isPresentingNotificationInLongLook
{
  v2 = [(NCNotificationStructuredListViewController *)self notificationViewControllerPresentingLongLook];
  v3 = v2 != 0;

  return v3;
}

- (void)revealNotificationHistory:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v10 = v9;
    v11 = @"HIDING";
    if (v5)
    {
      v11 = @"REVEALING";
    }

    v14 = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %@ notification history", &v14, 0x16u);
  }

  [(NCNotificationRootList *)self->_listModel revealNotificationHistory:v5 animated:v4];
  if (!v5)
  {
    v12 = [(NCNotificationStructuredListViewController *)self managementViewPresenter];
    [v12 dismissManagementViewIfPresentedAnimated:0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NCModalNavigationController *)self->_modalNavigationController dismissViewControllerAnimated:v4 completion:0];
    }

    v13 = [(NCNotificationStructuredListViewController *)self optionsMenu];
    [v13 dismissMenu];

    [(NCNotificationStructuredListViewController *)self _resetSwipeInteractionWithRevealedActionsAnimated:0];
  }

  [(NCNotificationStructuredListViewController *)self notifyContentObservers];
}

- (BOOL)isHomeAffordanceVisible
{
  v2 = [(NCNotificationStructuredListViewController *)self notificationViewControllerPresentingLongLook];
  v3 = [v2 isCustomContentHomeAffordanceVisible];

  return v3;
}

- (void)setHomeAffordanceVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(NCNotificationStructuredListViewController *)self notificationViewControllerPresentingLongLook];
  [v4 setCustomContentHomeAffordanceVisible:v3];
}

- (UIPanGestureRecognizer)homeAffordancePanGesture
{
  v2 = [(NCNotificationStructuredListViewController *)self notificationViewControllerPresentingLongLook];
  v3 = [v2 customContentHomeAffordanceGestureRecognizer];

  return v3;
}

- (void)setHomeAffordancePanGesture:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredListViewController *)self notificationViewControllerPresentingLongLook];
  [v5 setCustomContentHomeAffordanceGestureRecognizer:v4];
}

- (BOOL)interpretsViewAsContent:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && ([(NCNotificationStructuredListViewController *)self view], v5 = objc_claimAutoreleasedReturnValue(), v6 = [(NCNotificationModernListView *)v4 isDescendantOfView:v5], v5, v6) && self->_listView != v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [(NCNotificationRootList *)self->_listModel notificationSections];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) listView];

          if (v12 == v4)
          {
            v13 = 0;
            goto LABEL_16;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_16:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)insertSupplementaryViewsContainerAtListPosition:(unint64_t)a3 identifier:(id)a4 withDescription:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(NCNotificationStructuredListViewController *)self loadViewIfNeeded];
  v10 = [(NCNotificationRootList *)self->_listModel insertSupplementaryViewsContainerAtListPosition:a3 identifier:v9 withDescription:v8];

  return v10;
}

- (void)setNotificationListExpandsVisibleRegionOnSignificantScroll:(BOOL)a3
{
  [(NCNotificationRootList *)self->_listModel setExpandsVisibleRegionOnSignificantScroll:a3];
  listModel = self->_listModel;
  v7 = [(NCNotificationStructuredListViewController *)self view];
  [v7 frame];
  [(NCNotificationRootList *)listModel updateListViewVisibleRectForSize:v5, v6];
}

- (void)invalidateContentInsets
{
  v5 = [(NCNotificationStructuredListViewController *)self view];
  [v5 frame];
  [(NCNotificationStructuredListViewController *)self _updateListEdgeInsetsForSize:v3, v4];
}

- (void)updateGlassContentInterfaceStyleToUserInterfaceStyle:(int64_t)a3 glassLuminanceValue:(double)a4 wallpaperLuminanceValue:(double)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v9 = [(NCNotificationStructuredListViewController *)self traitCollection];
  if ([v9 userInterfaceStyle] == a3)
  {
    v10 = [(NCNotificationStructuredListViewController *)self traitCollection];
    [v10 glassLuminanceValue];
    v12 = v11;

    if (v12 == a4)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v13 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    listView = self->_listView;
    v15 = v13;
    v16 = [(NCNotificationModernListView *)listView overrideUserInterfaceStyle];
    v17 = [(NCNotificationModernListView *)self->_listView traitCollection];
    [v17 glassLuminanceValue];
    *buf = 134219008;
    v33 = a3;
    v34 = 2048;
    v35 = a4;
    v36 = 2048;
    v37 = a5;
    v38 = 2048;
    v39 = v16;
    v40 = 2048;
    v41 = v18;
    _os_log_impl(&dword_21E77E000, v15, OS_LOG_TYPE_DEFAULT, "GlassContentInterfaceStyle update to userInterfaceStyle: %ld; glassLuminanceValue: %.2f; wallpaperLuminanceValue: %.2f; currentOverrideUserInterfaceStyle: %ld; currentLuminanceValue: %.2f", buf, 0x34u);
  }

  v19 = [(NCNotificationStructuredListViewController *)self traitOverrides];
  v20 = v19;
  if (a3)
  {
    [v19 setUserInterfaceStyle:a3];
  }

  else
  {
    v21 = objc_opt_self();
    [v20 removeTrait:v21];
  }

  v22 = [(NCNotificationStructuredListViewController *)self traitOverrides];
  [v22 setCGFloatValue:objc_opt_class() forTrait:a4];

  [(NCNotificationStructuredListViewController *)self updateTraitsIfNeeded];
  v23 = [(NCNotificationStructuredListViewController *)self view];
  [v23 setNeedsLayout];

  v24 = [(NCNotificationStructuredListViewController *)self view];
  [v24 layoutIfNeeded];

LABEL_11:
  v25 = [(NCNotificationStructuredListViewController *)self traitCollection];
  v26 = _NCStringFromUserInterfaceStyle([v25 userInterfaceStyle]);
  [NCListDebugHUDModelBridge plotString:v26 label:@"userInterfaceStyle" inListView:0];

  v27 = objc_alloc(MEMORY[0x277CCACA8]);
  v28 = [(NCNotificationStructuredListViewController *)self traitCollection];
  [v28 glassLuminanceValue];
  v30 = [v27 initWithFormat:@"%.2f", v29];
  [NCListDebugHUDModelBridge plotString:v30 label:@"glassLuminanceValue" inListView:0];

  v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%.2f", *&a5];
  [NCListDebugHUDModelBridge plotString:v31 label:@"wallpaperLuminance" inListView:0];
}

- (void)addContentObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:0];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)removeContentObserver:(id)a3
{
  v4 = a3;
  if ([(NSHashTable *)self->_observers containsObject:?])
  {
    [(NSHashTable *)self->_observers removeObject:v4];
  }
}

- (void)notificationStructuredListView:(id)a3 didChangeFooterCenterY:(double)a4
{
  v7 = [(NCNotificationStructuredListViewController *)self listView];
  *&v5 = a4;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [v7 setFooterCenterY:v6];
}

- (void)adjustForLegibilitySettingsChange:(id)a3
{
  listModel = self->_listModel;
  v5 = a3;
  [(NCNotificationRootList *)listModel adjustForLegibilitySettingsChange:v5];
  v6 = [(NCNotificationStructuredListViewController *)self countIndicatorViewController];
  [v6 adjustForLegibilitySettingsChange:v5];

  v7 = [(NCNotificationStructuredListViewController *)self _listViewContainer];
  [v7 adjustForLegibilitySettingsChange:v5];
}

- (id)containerViewForPreviewInteractionPresentedContentForNotificationListBaseComponent:(id)a3
{
  v3 = [(UIViewController *)self nc_presentationContextDefiningViewController];
  v4 = [v3 view];
  v5 = [v4 superview];

  return v5;
}

- (BOOL)shouldHintDefaultActionForNotificationListBaseComponent:(id)a3
{
  v4 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v4 notificationStructuredListViewControllerShouldHintForDefaultAction:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)legibilitySettingsForNotificationListBaseComponent:(id)a3
{
  v4 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v4 legibilitySettingsForNotificationStructuredListViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)notificationListBaseComponentDidSignificantUserInteraction:(id)a3
{
  v4 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v5 notificationStructuredListViewControllerDidSignificantUserInteraction:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notificationListBaseComponent:(id)a3 didBeginUserInteractionWithViewController:(id)a4
{
  v6 = a4;
  v5 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 notificationStructuredListViewController:self didBeginUserInteractionWithViewController:v6];
  }
}

- (void)notificationListBaseComponent:(id)a3 didEndUserInteractionWithViewController:(id)a4
{
  v6 = a4;
  v5 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 notificationStructuredListViewController:self didEndUserInteractionWithViewController:v6];
  }
}

- (void)notificationListBaseComponent:(id)a3 didAddViewController:(id)a4
{
  v6 = a4;
  v5 = [v6 parentViewController];

  if (v5 != self)
  {
    [(NCNotificationStructuredListViewController *)self addChildViewController:v6];
    [v6 didMoveToParentViewController:self];
  }
}

- (void)notificationListBaseComponent:(id)a3 didRemoveViewController:(id)a4
{
  v6 = a4;
  v5 = [v6 parentViewController];

  if (v5 == self)
  {
    [v6 removeFromParentViewController];
    [v6 didMoveToParentViewController:0];
  }
}

- (void)notificationListBaseComponent:(id)a3 requestsModalPresentationOfNavigationController:(id)a4 sender:(id)a5 animated:(BOOL)a6 completion:(id)a7
{
  v7 = a6;
  v11 = a7;
  v12 = a5;
  v13 = a4;
  [v13 setPresenterDelegate:self];
  [(NCNotificationStructuredListViewController *)self _presentNavigationControllerAndBeginModalInteraction:v13 sender:v12 animated:v7 completion:v11];
}

- (void)notificationListBaseComponent:(id)a3 requestsClearingPresentables:(id)a4
{
  v5 = MEMORY[0x277CBEB58];
  v6 = a4;
  v7 = objc_alloc_init(v5);
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __105__NCNotificationStructuredListViewController_notificationListBaseComponent_requestsClearingPresentables___block_invoke;
  v15 = &unk_2783720C8;
  v9 = v7;
  v16 = v9;
  v10 = v8;
  v17 = v10;
  [v6 enumerateObjectsUsingBlock:&v12];

  v11 = [(NCNotificationStructuredListViewController *)self delegate:v12];
  if (v11)
  {
    if ([v9 count] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v11 notificationStructuredListViewController:self requestsClearingNotificationRequests:v9];
    }

    if ([v10 count] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v11 notificationStructuredListViewController:self requestsClearingSupplementaryViewControllers:v10];
    }
  }
}

void __105__NCNotificationStructuredListViewController_notificationListBaseComponent_requestsClearingPresentables___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v5];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = *(a1 + 40);
      v4 = [v5 hostedViewController];
      [v3 addObject:v4];
    }
  }
}

- (void)notificationListBaseComponent:(id)a3 didTransitionActionsForSwipeInteraction:(id)a4 revealed:(BOOL)a5
{
  v10 = a4;
  v7 = v10;
  if (!a5)
  {
    v8 = [(NCNotificationStructuredListViewController *)self optionsMenu];
    [v8 dismissMenu];

    v7 = 0;
  }

  v9 = [(NCNotificationStructuredListViewController *)self touchEaterManager];
  [v9 setSwipeInteractionInRevealedState:v7];
}

- (void)notificationListBaseComponent:(id)a3 didTransitionCoalescingControlsHandler:(id)a4 toClearState:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [(NCNotificationStructuredListViewController *)self touchEaterManager];
  v10 = v8;
  if (v5)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  [v8 setCoalescingControlsHandlerInClearState:v9];
}

- (void)notificationListBaseComponent:(id)a3 didPresentCoalescingControlsHandler:(id)a4 inForceTouchState:(BOOL)a5
{
  if (!a5)
  {
    a4 = 0;
  }

  objc_storeWeak(&self->_coalescingControlsHandlerInForceTouchState, a4);
}

- (void)notificationListComponent:(id)a3 requestsClearingNotificationRequestsInSections:(id)a4
{
  v6 = a4;
  v5 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 notificationStructuredListViewController:self requestsClearingNotificationRequestsInSections:v6];
  }
}

- (void)notificationListComponent:(id)a3 didTransitionSectionHeaderView:(id)a4 toClearState:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [(NCNotificationStructuredListViewController *)self touchEaterManager];
  v10 = v8;
  if (v5)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  [v8 setHeaderViewInClearState:v9];
}

- (void)notificationListComponent:(id)a3 requestPermissionToExecuteAction:(id)a4 forNotificationRequest:(id)a5 withParameters:(id)a6 completion:(id)a7
{
  v28 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v18 = [v11 identifier];
    v19 = [v12 notificationIdentifier];
    v20 = [v19 un_logDigest];
    v22 = 138543874;
    v23 = v17;
    v24 = 2114;
    v25 = v18;
    v26 = 2114;
    v27 = v20;
    _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ requests permission to execute action %{public}@ for notification request %{public}@", &v22, 0x20u);
  }

  v21 = [(NCNotificationStructuredListViewController *)self delegate];
  [v21 notificationStructuredListViewController:self requestPermissionToExecuteAction:v11 forNotificationRequest:v12 withParameters:v13 completion:v14];
}

- (void)notificationListComponent:(id)a3 requestsExecuteAction:(id)a4 forNotificationRequest:(id)a5 requestAuthentication:(BOOL)a6 withParameters:(id)a7 completion:(id)a8
{
  v10 = a6;
  v31 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = a8;
  v17 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    [(NCNotificationStructuredListViewController *)self _logDescription];
    v19 = v24 = v10;
    v20 = [v13 identifier];
    v21 = [v14 notificationIdentifier];
    v22 = [v21 un_logDigest];
    *buf = 138543874;
    v26 = v19;
    v27 = 2114;
    v28 = v20;
    v29 = 2114;
    v30 = v22;
    _os_log_impl(&dword_21E77E000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ requests executing action %{public}@ for notification request %{public}@", buf, 0x20u);

    v10 = v24;
  }

  [(NCNotificationManagementViewPresenter *)self->_managementViewPresenter dismissManagementViewIfPresentedAnimated:1];
  v23 = [(NCNotificationStructuredListViewController *)self delegate];
  [v23 notificationStructuredListViewController:self requestsExecuteAction:v13 forNotificationRequest:v14 requestAuthentication:v10 withParameters:v15 completion:v16];
}

- (void)notificationListComponent:(id)a3 willDismissLongLookForCancelActionForViewController:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v9 = 138543618;
    v10 = v8;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ will dismiss long look for cancel action for view controller %{public}@", &v9, 0x16u);
  }

  [(NCNotificationManagementViewPresenter *)self->_managementViewPresenter dismissManagementViewIfPresentedAnimated:1];
}

- (BOOL)notificationListComponent:(id)a3 shouldAllowInteractionsForNotificationRequest:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v6 notificationStructuredListViewController:self shouldAllowInteractionsForNotificationRequest:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)notificationListComponent:(id)a3 containerViewProviderForExpandedContentForViewController:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained notificationStructuredListViewController:self containerViewProviderForExpandedContentForViewController:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)notificationListComponent:(id)a3 shouldFinishLongLookTransitionForNotificationRequest:(id)a4 trigger:(int64_t)a5 withCompletionBlock:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = [(NCNotificationStructuredListViewController *)self delegate];
  [v11 notificationStructuredListViewController:self shouldFinishLongLookTransitionForNotificationRequest:v10 trigger:a5 withCompletionBlock:v9];
}

- (void)notificationListComponent:(id)a3 isPresentingLongLookForViewController:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(NCNotificationStructuredListViewController *)self notificationViewControllerPresentingLongLook];
  if (v6 == v5)
  {
    goto LABEL_17;
  }

  v7 = MEMORY[0x277D77DD0];
  v8 = *MEMORY[0x277D77DD0];
  v9 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v9)
    {
      goto LABEL_8;
    }

    v10 = v8;
    v11 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v12 = [v5 notificationRequest];
    v13 = [v12 notificationIdentifier];
    v14 = [v13 un_logDigest];
    *v24 = 138543618;
    *&v24[4] = v11;
    *&v24[12] = 2114;
    *&v24[14] = v14;
    v15 = "%{public}@ presenting long look for notification request %{public}@";
  }

  else
  {
    if (!v9)
    {
      goto LABEL_8;
    }

    v10 = v8;
    v11 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v12 = [v6 notificationRequest];
    v13 = [v12 notificationIdentifier];
    v14 = [v13 un_logDigest];
    *v24 = 138543618;
    *&v24[4] = v11;
    *&v24[12] = 2114;
    *&v24[14] = v14;
    v15 = "%{public}@ dismissed long look for notification request %{public}@";
  }

  _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, v15, v24, 0x16u);

LABEL_8:
  [(NCNotificationStructuredListViewController *)self setNotificationViewControllerPresentingLongLook:v5, *v24, *&v24[16], v25];
  v16 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v16 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v16 notificationStructuredListViewController:self isPresentingLongLookForViewController:v5];
  }

  v17 = [(NCNotificationStructuredListViewController *)self notificationRequestRemovedWhilePresentingLongLook];
  v18 = v17;
  if (!v5 && v17)
  {
    v19 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [(NCNotificationStructuredListViewController *)self _logDescription];
      v22 = [v18 notificationIdentifier];
      v23 = [v22 un_logDigest];
      *v24 = 138543618;
      *&v24[4] = v21;
      *&v24[12] = 2114;
      *&v24[14] = v23;
      _os_log_impl(&dword_21E77E000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notification request %{public}@ on long look dismissal", v24, 0x16u);
    }

    [(NCNotificationStructuredListViewController *)self removeNotificationRequest:v18];
    [(NCNotificationStructuredListViewController *)self setNotificationRequestRemovedWhilePresentingLongLook:0];
  }

LABEL_17:
}

- (void)notificationListComponent:(id)a3 didPresentSectionHeaderView:(id)a4 inForceTouchState:(BOOL)a5
{
  if (!a5)
  {
    a4 = 0;
  }

  objc_storeWeak(&self->_headerViewInForceTouchState, a4);
}

- (void)notificationListComponent:(id)a3 requestsPresentingManagementViewForNotificationRequest:(id)a4 managementViewType:(unint64_t)a5 withPresentingView:(id)a6 completion:(id)a7
{
  v37 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v18 = [v12 notificationIdentifier];
    v19 = [v18 un_logDigest];
    v20 = [v12 sectionIdentifier];
    *buf = 138544130;
    v30 = v17;
    v31 = 2114;
    v32 = v19;
    v33 = 2114;
    v34 = v20;
    v35 = 2048;
    v36 = a5;
    _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ requests presenting management view for notification request %{public}@ for section %{public}@ with type %ld", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __176__NCNotificationStructuredListViewController_notificationListComponent_requestsPresentingManagementViewForNotificationRequest_managementViewType_withPresentingView_completion___block_invoke;
  v25[3] = &unk_2783720F0;
  objc_copyWeak(v28, buf);
  v28[1] = a5;
  v21 = v12;
  v26 = v21;
  v22 = v13;
  v27 = v22;
  [(NCNotificationStructuredListViewController *)self _requestAuthenticationAndPerformBlock:v25];
  v23 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v23 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v23 notificationStructuredListViewControllerDidSignificantUserInteraction:self];
  }

  objc_destroyWeak(v28);
  objc_destroyWeak(buf);
}

void __176__NCNotificationStructuredListViewController_notificationListComponent_requestsPresentingManagementViewForNotificationRequest_managementViewType_withPresentingView_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v3 = [WeakRetained managementViewPresenter];
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = [WeakRetained bs_topPresentedViewController];
    [v3 presentNotificationManagementViewType:v4 forNotificationRequest:v5 withPresentingViewController:v6 withPresentingView:*(a1 + 40)];
  }
}

- (void)notificationListComponent:(id)a3 requestsPresentingOptionsMenuForNotificationRequest:(id)a4 presentingViewProvider:(id)a5 optionsForSection:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v42 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v26 = a7;
  v15 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v18 = [v13 notificationIdentifier];
    v19 = [v18 un_logDigest];
    v20 = [v13 sectionIdentifier];
    *buf = 138544130;
    v35 = v17;
    v36 = 2114;
    v37 = v19;
    v38 = 2114;
    v39 = v20;
    v40 = 1024;
    v41 = v8;
    _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ requests presenting options menu for notification request %{public}@ for section %{public}@ [optionsForSection=%{BOOL}d]", buf, 0x26u);
  }

  objc_initWeak(buf, self);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __176__NCNotificationStructuredListViewController_notificationListComponent_requestsPresentingOptionsMenuForNotificationRequest_presentingViewProvider_optionsForSection_completion___block_invoke;
  v27[3] = &unk_278372140;
  objc_copyWeak(&v32, buf);
  v33 = v8;
  v21 = v12;
  v28 = v21;
  v22 = v14;
  v30 = v22;
  v23 = v13;
  v29 = v23;
  v24 = v26;
  v31 = v24;
  [(NCNotificationStructuredListViewController *)self _requestAuthenticationAndPerformBlock:v27];
  v25 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v25 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v25 notificationStructuredListViewControllerDidSignificantUserInteraction:self];
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(buf);
}

uint64_t __176__NCNotificationStructuredListViewController_notificationListComponent_requestsPresentingOptionsMenuForNotificationRequest_presentingViewProvider_optionsForSection_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v5 = WeakRetained;
    if (*(a1 + 72) == 1)
    {
      [WeakRetained setNotificationListComponentPresentingOptionsMenu:*(a1 + 32)];
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __176__NCNotificationStructuredListViewController_notificationListComponent_requestsPresentingOptionsMenuForNotificationRequest_presentingViewProvider_optionsForSection_completion___block_invoke_2;
    v8[3] = &unk_278372118;
    v8[4] = v5;
    v6 = *(a1 + 48);
    v9 = *(a1 + 40);
    v10 = *(a1 + 72);
    (*(v6 + 16))(v6, v8);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void __176__NCNotificationStructuredListViewController_notificationListComponent_requestsPresentingOptionsMenuForNotificationRequest_presentingViewProvider_optionsForSection_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = a2;
  [v5 _presentOptionsMenuForNotificationRequest:v6 withPresentingView:a3 optionsForSection:v7];
  v9 = [*(a1 + 32) touchEaterManager];
  v10 = [v8 swipeInteraction];

  [v9 setSwipeInteractionInRevealedState:v10];
  v11 = [*(a1 + 32) touchEaterManager];
  [v11 setEnabled:0];
}

- (void)notificationListComponent:(id)a3 setMuted:(BOOL)a4 untilDate:(id)a5 forSectionIdentifier:(id)a6 threadIdentifier:(id)a7
{
  v9 = a4;
  v14 = a5;
  v11 = a6;
  v12 = a7;
  v13 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v13 notificationStructuredListViewController:self setMuted:v9 untilDate:v14 forSectionIdentifier:v11 threadIdentifier:v12];
  }
}

- (void)notificationListComponent:(id)a3 setScheduledDelivery:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v8 = a5;
  v7 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 notificationStructuredListViewController:self setScheduledDelivery:v5 forSectionIdentifier:v8];
  }
}

- (void)notificationListComponent:(id)a3 setAllowsTimeSensitive:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v8 = a5;
  v7 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 notificationStructuredListViewController:self setAllowsTimeSensitive:v5 forSectionIdentifier:v8];
  }
}

- (void)notificationListComponent:(id)a3 setAllowsDirectMessages:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v8 = a5;
  v7 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 notificationStructuredListViewController:self setAllowsDirectMessages:v5 forSectionIdentifier:v8];
  }
}

- (id)notificationListComponent:(id)a3 notificationRequestForUUID:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v6 notificationStructuredListViewController:self notificationRequestForUUID:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)notificationListComponent:(id)a3 isClockNotificationRequest:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v6 notificationStructuredListViewController:self isClockNotificationRequest:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)notificationListComponent:(id)a3 requestsAuthenticationAndPerformBlock:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationStructuredListViewController *)self delegate];
  [v6 notificationStructuredListViewController:self requestsAuthenticationAndPerformBlock:v5];
}

- (id)notificationUsageTrackingStateForNotificationListComponent:(id)a3
{
  v4 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v4 notificationUsageTrackingStateForNotificationStructuredListViewController:self];
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

- (id)notificationListComponent:(id)a3 keyboardAssertionForGestureWindow:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v6 notificationStructuredListViewController:self keyboardAssertionForGestureWindow:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)hideHomeAffordanceAnimationSettingsForNotificationListComponent:(id)a3
{
  v4 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v4 hideHomeAffordanceAnimationSettingsForNotificationStructuredListViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)unhideHomeAffordanceAnimationSettingsForNotificationListComponent:(id)a3
{
  v4 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v4 unhideHomeAffordanceAnimationSettingsForNotificationStructuredListViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)settleHomeAffordanceAnimationBehaviorDescriptionForNotificationListComponent:(id)a3
{
  v4 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v4 settleHomeAffordanceAnimationBehaviorDescriptionForNotificationStructuredListViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)notificationListComponentShouldAllowLongPressGesture:(id)a3
{
  v4 = [(NCNotificationStructuredListViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 notificationStructuredListViewControllerShouldAllowLongPressGesture:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)notificationListComponent:(id)a3 acceptedSummaryOnboarding:(BOOL)a4
{
  v4 = a4;
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *MEMORY[0x277D77DD0];
  v8 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v8)
    {
      v9 = v7;
      v10 = [(NCNotificationStructuredListViewController *)self _logDescription];
      v24 = 138543362;
      v25 = v10;
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ presenting digest onboarding flow", &v24, 0xCu);
    }

    v11 = [(NCNotificationStructuredListViewController *)self digestOnboardingSuggestionClient];
    v12 = [(NCNotificationStructuredListViewController *)self digestOnboardingSuggestion];
    [v11 userAcceptedDigestOnboardingSuggestion:v12];

    v13 = [(NCNotificationStructuredListViewController *)self digestOnboardingSuggestionLogging];
    v14 = [MEMORY[0x277CBEAA8] date];
    v15 = [(NCNotificationStructuredListViewController *)self digestOnboardingSuggestionPresentationTime];
    [v14 timeIntervalSinceDate:v15];
    [v13 logDigestOnboardingSuggestionWithOutcome:1 timeToResolution:?];

    v16 = NCUserNotificationsUIKitFrameworkBundle();
    v17 = [v16 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_INTRODUCTION_DISMISS_BUTTON" value:&stru_282FE84F8 table:0];
    v18 = [NCDigestOnboardingNavigationController navigationControllerWithOnboardingDelegate:self deferButtonText:v17 previousBundleIdentifiersSelection:self->_digestOnboardingLastBundleIdentifiersSelection previousDeliveryTimesSelection:self->_digestOnboardingLastScheduledDeliveryTimesSelection];

    [(NCNotificationStructuredListViewController *)self _presentNavigationControllerAndBeginModalInteraction:v18 sender:v6 animated:1 completion:0];
  }

  else
  {
    if (v8)
    {
      v19 = v7;
      v20 = [(NCNotificationStructuredListViewController *)self _logDescription];
      v24 = 138543362;
      v25 = v20;
      _os_log_impl(&dword_21E77E000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissing digest onboarding suggestion", &v24, 0xCu);
    }

    v21 = [(NCNotificationStructuredListViewController *)self digestOnboardingSuggestionLogging];
    v22 = [MEMORY[0x277CBEAA8] date];
    v23 = [(NCNotificationStructuredListViewController *)self digestOnboardingSuggestionPresentationTime];
    [v22 timeIntervalSinceDate:v23];
    [v21 logDigestOnboardingSuggestionWithOutcome:0 timeToResolution:?];

    [(NCNotificationRootList *)self->_listModel setOnboardingSummaryVisible:0];
  }
}

- (void)notificationListComponent:(id)a3 requestsStackSummarySuggestionVisible:(BOOL)a4 forRequest:(id)a5
{
  v5 = a4;
  listModel = self->_listModel;
  v7 = a5;
  v8 = [(NCNotificationRootList *)listModel suggestionManager];
  [v8 requestStackSummarySuggestionVisible:v5 forRequest:v7];
}

- (Class)notificationRootListNotificationViewControllerClass:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained notificationStructuredListViewControllerNotificationViewControllerClass:self];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)notificationRootList:(id)a3 requestsClearingFromIncomingSectionNotificationRequests:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationStructuredListViewController *)self delegate];
  [v6 notificationStructuredListViewController:self requestsClearingFromIncomingSectionNotificationRequests:v5];
}

- (void)notificationRootListDidUpdateVisibleContentExtent:(id)a3
{
  [(NCNotificationRootList *)self->_listModel aggregatedVisibleContentExtent];
  [NCListDebugHUDModelBridge plotRect:@"aggregatedVisibleContentExtent" label:?];
  v4 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v5 notificationStructuredListViewControllerDidUpdateVisibleContentExtent:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (BOOL)notificationRootListShouldAllowNotificationHistoryReveal:(id)a3
{
  v4 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v4 notificationStructuredListViewControllerShouldAllowNotificationHistoryReveal:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)notificationRootList:(id)a3 scrollViewWillBeginDragging:(id)a4
{
  v6 = a4;
  v5 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 scrollViewWillBeginDragging:v6];
  }
}

- (void)notificationRootList:(id)a3 scrollViewDidScroll:(id)a4
{
  v11 = a4;
  v5 = [(NCNotificationStructuredListViewController *)self delegate];
  if ([v11 isTracking] && v5)
  {
    if (objc_opt_respondsToSelector())
    {
      [v5 notificationStructuredListViewControllerDidSignificantUserInteraction:self];
    }
  }

  else if (!v5)
  {
    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 scrollViewDidScroll:v11];
  }

LABEL_8:
  v6 = [v11 isTracking];
  v7 = [(NCNotificationStructuredListViewController *)self _listViewContainer];
  v8 = v7;
  if (v6)
  {
    v9 = [(NCNotificationStructuredListViewController *)self listView];
    v10 = [v9 distanceScrolledBeyondBottomOfContent];
    [v8 setDistanceScrolledBeyondBottomOfContent:v10];
  }

  else
  {
    [v7 setDistanceScrolledBeyondBottomOfContent:0];
  }
}

- (void)notificationRootList:(id)a3 scrollViewWillEndDragging:(id)a4 withVelocity:(CGPoint)a5 targetContentOffset:(CGPoint *)a6
{
  y = a5.y;
  x = a5.x;
  v12 = a4;
  v10 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v10 scrollViewWillEndDragging:v12 withVelocity:a6 targetContentOffset:{x, y}];
  }

  v11 = [(NCNotificationStructuredListViewController *)self _listViewContainer];
  [v11 setDistanceScrolledBeyondBottomOfContent:0];
}

- (BOOL)requiresPushOffManagementForNotificationRootList:(id)a3
{
  v3 = [(NCNotificationStructuredListViewController *)self traitCollection];
  v4 = _NCIsNotVerticalSpaceConstrained(v3);

  return v4;
}

- (double)cutoffOffsetForNotificationRootList:(id)a3
{
  v3 = 0.0;
  if (self->_listModel == a3)
  {
    v5 = [(NCNotificationStructuredListViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 clippingOffsetForNotificationStructuredListViewController:self];
      v3 = v6;
    }
  }

  return v3;
}

- (BOOL)notificationRootList:(id)a3 shouldFilterNotificationRequest:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v6 notificationStructuredListViewController:self shouldFilterNotificationRequest:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)notificationRootListAreHighlightsEnabled:(id)a3
{
  v3 = [(NCNotificationStructuredListViewController *)self _notificationSystemSettings];
  v4 = [v3 areHighlightsEnabled];

  return v4;
}

- (void)notificationListComponent:(id)a3 setNotificationSystemSettings:(id)a4
{
  v6 = a4;
  v5 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 notificationStructuredListViewController:self setNotificationSystemSettings:v6];
  }
}

- (void)notificationRootListWillExpandNotificationListCount:(id)a3
{
  v4 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v5 notificationStructuredListViewControllerWillExpandNotificationListCount:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notificationRootList:(id)a3 didUpdateNotificationsVisibilityInViewport:(BOOL)a4
{
  v4 = a4;
  v6 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v6)
  {
    v7 = v6;
    if (objc_opt_respondsToSelector())
    {
      [v7 notificationStructuredListViewController:self didUpdateNotificationsVisibilityInViewport:v4];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notificationRootList:(id)a3 isNotificationsHistoryRevealed:(BOOL)a4
{
  v4 = a4;
  v6 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v6)
  {
    v7 = v6;
    if (objc_opt_respondsToSelector())
    {
      [v7 notificationStructuredListViewController:self isNotificationsHistoryRevealed:v4];
    }
  }

  MEMORY[0x2821F9730]();
}

- (id)notificationRootListRequestsDiagnosticsDictionary:(id)a3
{
  v4 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v4 notificationStructuredListViewControllerRequestsDiagnosticsDictionary:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)notificationOptionsMenuWillDismiss:(id)a3
{
  [(NCNotificationListTouchEaterManager *)self->_touchEaterManager setEnabled:1];

  [(NCNotificationStructuredListViewController *)self _resetSwipeInteractionWithRevealedActionsAnimated:1];
}

- (void)notificationOptionsMenu:(id)a3 setAllowsNotifications:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6
{
  v8 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v16 = [v11 notificationIdentifier];
    v17 = [v16 un_logDigest];
    v20 = 138544130;
    v21 = v15;
    v22 = 1024;
    v23 = v8;
    v24 = 2114;
    v25 = v17;
    v26 = 2114;
    v27 = v12;
    _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ set allows notifications = %{BOOL}d for notification request %{public}@ and section identifier %{public}@", &v20, 0x26u);
  }

  v18 = [(NCNotificationRootList *)self->_listModel suggestionManager];
  [v18 logResponseForNotificationRequest:v11 allowsNotifications:v8];

  v19 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v19 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v19 notificationStructuredListViewController:self setAllowsNotifications:v8 forSectionIdentifier:v12];
  }
}

- (void)notificationOptionsMenu:(id)a3 setAllowsCriticalAlerts:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6
{
  v8 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v16 = [v11 notificationIdentifier];
    v17 = [v16 un_logDigest];
    v19 = 138544130;
    v20 = v15;
    v21 = 1024;
    v22 = v8;
    v23 = 2114;
    v24 = v17;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ set allows critical alerts = %{BOOL}d for notification request %{public}@ and section identifier %{public}@", &v19, 0x26u);
  }

  v18 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v18 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v18 notificationStructuredListViewController:self setAllowsCriticalAlerts:v8 forSectionIdentifier:v12];
  }
}

- (void)notificationOptionsMenu:(id)a3 setMuted:(BOOL)a4 untilDate:(id)a5 forNotificationRequest:(id)a6 withSectionIdentifier:(id)a7 threadIdentifier:(id)a8
{
  v10 = a4;
  v15 = a5;
  v12 = a7;
  v13 = a8;
  v14 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v14 notificationStructuredListViewController:self setMuted:v10 untilDate:v15 forSectionIdentifier:v12 threadIdentifier:v13];
  }
}

- (void)notificationOptionsMenu:(id)a3 setAllowsTimeSensitive:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6
{
  v8 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v16 = [v11 notificationIdentifier];
    v17 = [v16 un_logDigest];
    v20 = 138544130;
    v21 = v15;
    v22 = 1024;
    v23 = v8;
    v24 = 2114;
    v25 = v17;
    v26 = 2114;
    v27 = v12;
    _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ set allows time sensitive notifications = %{BOOL}d for notification request %{public}@ and section identifier %{public}@", &v20, 0x26u);
  }

  v18 = [(NCNotificationRootList *)self->_listModel suggestionManager];
  [v18 logResponseForNotificationRequest:v11 allowsTimeSensitive:v8];

  v19 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v19 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v19 notificationStructuredListViewController:self setAllowsTimeSensitive:v8 forSectionIdentifier:v12];
  }
}

- (void)notificationOptionsMenu:(id)a3 setScheduledDelivery:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6
{
  v6 = a4;
  v9 = a6;
  v8 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 notificationStructuredListViewController:self setScheduledDelivery:v6 forSectionIdentifier:v9];
  }
}

- (void)notificationOptionsMenu:(id)a3 addSenderToContactsForNotificationRequest:(id)a4 withSectionIdentifier:(id)a5
{
  v13 = a4;
  v6 = [v13 content];
  v7 = [v6 communicationContext];

  v8 = [v7 sender];
  if (v8)
  {
    v9 = [v7 contentURL];
    if (v9)
    {
      v10 = [MEMORY[0x277D77F48] imageDataForContentURL:v9];
    }

    else
    {
      v10 = 0;
    }

    v11 = [v13 topLevelSectionIdentifier];
    v12 = [NCCreateContactNavigationViewController navigationControllerWithContact:v8 bundleIdentifier:v11 imageData:v10 presenterDelegate:self];

    [(NCNotificationStructuredListViewController *)self _presentNavigationControllerAndBeginModalInteraction:v12 sender:v8 animated:1 completion:0];
  }
}

- (void)notificationOptionsMenu:(id)a3 requestsClearingSectionWithIdentifier:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(NCNotificationStructuredListViewController *)self notificationListComponentPresentingOptionsMenu];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = v6;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
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

    v10 = v9;

    v11 = [v10 sectionIdentifier];
    v12 = [v5 isEqualToString:v11];

    if (v12)
    {
      v13 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v15 = [(NCNotificationStructuredListViewController *)self _logDescription];
        v16 = [v10 logDescription];
        v17 = 138543618;
        v18 = v15;
        v19 = 2114;
        v20 = v16;
        _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ clearing all notifications for app section %{public}@ triggered from options menu", &v17, 0x16u);
      }

      [v10 clearAll];
      [(NCNotificationStructuredListViewController *)self setNotificationListComponentPresentingOptionsMenu:0];
    }
  }
}

- (BOOL)notificationOptionsMenu:(id)a3 isDisplayingStackSummaryForNotificationRequest:(id)a4
{
  listModel = self->_listModel;
  v5 = a4;
  v6 = [(NCNotificationRootList *)listModel _sectionContainsNotificationRequest:v5];
  v7 = [v6 isShowingSummarizedStackForNotificationRequest:v5];

  return v7;
}

- (BOOL)notificationOptionsMenu:(id)a3 isInPrioritySection:(id)a4
{
  v4 = [(NCNotificationRootList *)self->_listModel _sectionContainsNotificationRequest:a4];
  v5 = [v4 sectionType] == 10;

  return v5;
}

- (void)modalNavigationControllerDidDismiss:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_modalNavigationController == v4)
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [(NCNotificationStructuredListViewController *)self _logDescription];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v12 = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ ending lock screen interaction for dismissed navigation navigation controller of type '%{public}@'.", &v12, 0x16u);
    }

    v10 = [(NCNotificationStructuredListViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v10 notificationStructuredListViewControllerDidEndUserInteraction:self];
    }

    modalNavigationController = self->_modalNavigationController;
    self->_modalNavigationController = 0;
  }
}

- (void)createContactNavigationControllerDidComplete:(id)a3
{
  v3 = [(NCNotificationRootList *)self->_listModel suggestionManager];
  [v3 reloadContactSuggestions];
}

- (void)notificationManagementViewPresenter:(id)a3 setAllowsNotifications:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6
{
  v8 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v16 = [v11 notificationIdentifier];
    v17 = [v16 un_logDigest];
    v20 = 138544130;
    v21 = v15;
    v22 = 1024;
    v23 = v8;
    v24 = 2114;
    v25 = v17;
    v26 = 2114;
    v27 = v12;
    _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ set allows notifications = %{BOOL}d for notification request %{public}@ and section identifier %{public}@", &v20, 0x26u);
  }

  v18 = [(NCNotificationRootList *)self->_listModel suggestionManager];
  [v18 logResponseForNotificationRequest:v11 allowsNotifications:v8];

  v19 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v19 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v19 notificationStructuredListViewController:self setAllowsNotifications:v8 forSectionIdentifier:v12];
  }
}

- (void)notificationManagementViewPresenter:(id)a3 setDeliverQuietly:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6
{
  v8 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v16 = [v11 notificationIdentifier];
    v17 = [v16 un_logDigest];
    v20 = 138544130;
    v21 = v15;
    v22 = 1024;
    v23 = v8;
    v24 = 2114;
    v25 = v17;
    v26 = 2114;
    v27 = v12;
    _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ set deliver quietly = %{BOOL}d for notification request %{public}@ and section identifier %{public}@", &v20, 0x26u);
  }

  v18 = [(NCNotificationRootList *)self->_listModel suggestionManager];
  [v18 logResponseForNotificationRequest:v11 deliveryQuietly:v8];

  v19 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v19 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v19 notificationStructuredListViewController:self setDeliverQuietly:v8 forSectionIdentifier:v12];
  }
}

- (void)notificationManagementViewPresenter:(id)a3 setAllowsCriticalAlerts:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6
{
  v8 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v16 = [v11 notificationIdentifier];
    v17 = [v16 un_logDigest];
    v19 = 138544130;
    v20 = v15;
    v21 = 1024;
    v22 = v8;
    v23 = 2114;
    v24 = v17;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ set allows critical alerts = %{BOOL}d for notification request %{public}@ and section identifier %{public}@", &v19, 0x26u);
  }

  v18 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v18 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v18 notificationStructuredListViewController:self setAllowsCriticalAlerts:v8 forSectionIdentifier:v12];
  }
}

- (void)notificationManagementViewPresenter:(id)a3 setMuted:(BOOL)a4 untilDate:(id)a5 forSectionIdentifier:(id)a6 threadIdentifier:(id)a7
{
  v9 = a4;
  v14 = a5;
  v11 = a6;
  v12 = a7;
  v13 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v13 notificationStructuredListViewController:self setMuted:v9 untilDate:v14 forSectionIdentifier:v11 threadIdentifier:v12];
  }
}

- (void)notificationManagementViewPresenter:(id)a3 setScheduledDelivery:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6
{
  v7 = a4;
  v13 = a6;
  listModel = self->_listModel;
  v10 = a5;
  v11 = [(NCNotificationRootList *)listModel suggestionManager];
  [v11 logResponseForNotificationRequest:v10 scheduledDelivery:v7];

  v12 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v12 notificationStructuredListViewController:self setScheduledDelivery:v7 forSectionIdentifier:v13];
  }
}

- (void)notificationManagementViewPresenterWillPresentManagementView:(id)a3
{
  v5 = [(NCNotificationStructuredListViewController *)self bs_topPresentedViewController];
  if (objc_opt_respondsToSelector())
  {
    [v5 preserveInputViews];
  }

  v4 = [(NCNotificationStructuredListViewController *)self touchEaterManager];
  [v4 setEnabled:0];
}

- (void)notificationManagementViewPresenterDidDismissManagementView:(id)a3
{
  v5 = [(NCNotificationStructuredListViewController *)self bs_topPresentedViewController];
  if (objc_opt_respondsToSelector())
  {
    [v5 restoreInputViews];
  }

  v4 = [(NCNotificationStructuredListViewController *)self touchEaterManager];
  [v4 setEnabled:1];
}

- (void)notificationManagementViewPresenter:(id)a3 setAllowsTimeSensitive:(BOOL)a4 forNotificationRequest:(id)a5 withSectionIdentifier:(id)a6
{
  v8 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v16 = [v11 notificationIdentifier];
    v17 = [v16 un_logDigest];
    v20 = 138544130;
    v21 = v15;
    v22 = 1024;
    v23 = v8;
    v24 = 2114;
    v25 = v17;
    v26 = 2114;
    v27 = v12;
    _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ set allows time sensitive notifications = %{BOOL}d for notification request %{public}@ and section identifier %{public}@", &v20, 0x26u);
  }

  v18 = [(NCNotificationRootList *)self->_listModel suggestionManager];
  [v18 logResponseForNotificationRequest:v11 allowsTimeSensitive:v8];

  v19 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v19 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v19 notificationStructuredListViewController:self setAllowsTimeSensitive:v8 forSectionIdentifier:v12];
  }
}

- (void)notificationManagementViewPresenter:(id)a3 setMuted:(BOOL)a4 untilDate:(id)a5 forNotificationRequest:(id)a6 withSectionIdentifier:(id)a7 threadIdentifier:(id)a8
{
  v12 = a4;
  v37 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    [(NCNotificationStructuredListViewController *)self _logDescription];
    v28 = v12;
    v21 = v15;
    v23 = v22 = v14;
    v24 = [v16 notificationIdentifier];
    v25 = [v24 un_logDigest];
    *buf = 138544130;
    v30 = v23;
    v31 = 2114;
    v32 = v25;
    v33 = 2114;
    v34 = v17;
    v35 = 2114;
    v36 = v18;
    _os_log_impl(&dword_21E77E000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ mute notifications for request %{public}@, section identifier %{public}@, thread identifier %{public}@", buf, 0x2Au);

    v14 = v22;
    v15 = v21;
    v12 = v28;
  }

  v26 = [(NCNotificationRootList *)self->_listModel suggestionManager];
  [v26 logResponseForNotificationRequest:v16 muted:v12];

  v27 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v27 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v27 notificationStructuredListViewController:self setMuted:v12 untilDate:v15 forSectionIdentifier:v17 threadIdentifier:v18];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = NCNotificationStructuredListViewController;
  [(NCNotificationStructuredListViewController *)&v23 traitCollectionDidChange:v4];
  v5 = [(NCNotificationStructuredListViewController *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    [(NCNotificationStructuredListViewController *)self _contentSizeCategoryDidChange];
  }

  v8 = [v4 _backlightLuminance];
  v9 = [(NCNotificationStructuredListViewController *)self traitCollection];
  v10 = [v9 _backlightLuminance];

  if ((v8 != 1) == (v10 == 1))
  {
    v11 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"on";
      if (v10 == 1)
      {
        v12 = @"off";
      }

      *buf = 138412290;
      v25 = v12;
      _os_log_impl(&dword_21E77E000, v11, OS_LOG_TYPE_DEFAULT, "AOD traitsDidChange. display: %@", buf, 0xCu);
    }

    if (v10 == 1)
    {
      if (![(NCNotificationStructuredListViewController *)self showNotificationsInAlwaysOn])
      {
        listModel = self->_listModel;
        v16 = 2;
        v17 = 1;
        goto LABEL_14;
      }

      v13 = [(NCNotificationStructuredListViewController *)self _notificationSystemSettings];
      v14 = [v13 listDisplayStyleSetting];

      if (!v14)
      {
        listModel = self->_listModel;
        v16 = 1;
        v17 = 0;
LABEL_14:
        [(NCNotificationRootList *)listModel setOverrideNotificationListDisplayStyleSetting:v16 forReason:@"NCNotificationListDisplayStyleReasonOverrideDeviceLocked" hideNotificationCount:v17];
      }
    }

    else
    {
      [(NCNotificationRootList *)self->_listModel removeOverrideNotificationListDisplayStyleSettingForReason:@"NCNotificationListDisplayStyleReasonOverrideDeviceLocked"];
    }
  }

  v18 = [v4 _backlightLuminance];
  v19 = [(NCNotificationStructuredListViewController *)self traitCollection];
  v20 = [v19 _backlightLuminance];

  if (v18 != v20)
  {
    v21 = [(NCNotificationStructuredListViewController *)self traitCollection];
    v22 = [v21 _backlightLuminance];

    if ((v22 + 1) <= 3)
    {
      [(NCNotificationRootList *)self->_listModel _backlightChangedToBacklightLuminance:qword_21E946750[v22 + 1]];
    }
  }
}

- (void)toolsOverlayViewRequestsBeginUserInteraction:(id)a3
{
  v4 = [(NCNotificationStructuredListViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationStructuredListViewControllerDidBeginUserInteraction:self];
  }
}

- (void)toolsOverlayViewRequestsEndUserInteraction:(id)a3
{
  v4 = [(NCNotificationStructuredListViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationStructuredListViewControllerDidEndUserInteraction:self];
  }
}

- (void)notificationListCountIndicatorViewControllerLongPressed:(id)a3 presentingView:(id)a4
{
  v6 = a4;
  v5 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 notificationStructuredListViewController:self requestsPresentingFocusActivityPickerFromView:v6];
  }
}

- (void)notificationListCountIndicatorViewController:(id)a3 didChangeVisibility:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    if (objc_opt_respondsToSelector())
    {
      [v7 notificationStructuredListViewController:self didUpdateOverlayFooterContentVisibility:v4];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notificationListCountIndicatorViewControllerDidUpdate:(id)a3
{
  v3 = [(NCNotificationStructuredListViewController *)self view];
  [v3 setNeedsLayout];
}

- (void)digestOnboardingSuggestionClient:(id)a3 didSuggestOnboarding:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v11 = 138543362;
    v12 = v10;
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ digest onboarding suggestion client did suggest onboarding", &v11, 0xCu);
  }

  if ([(NCNotificationStructuredListViewController *)self _shouldPresentDigestOnboardingSuggestion])
  {
    [(NCNotificationStructuredListViewController *)self _setDigestOnboardingSuggestionVisible:1];
    [(NCNotificationStructuredListViewController *)self setDigestOnboardingSuggestion:v7];
  }
}

- (void)modeManager:(id)a3 didUpdateCurrentModeConfiguration:(id)a4 previousModeConfiguration:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [v7 mode];
  v10 = [v8 mode];
  v11 = [v9 modeIdentifier];
  v40 = v10;
  v12 = [v10 modeIdentifier];
  v13 = [v7 configuration];
  v14 = [v13 suppressionType];

  v15 = [v8 configuration];

  v16 = [v15 suppressionType];
  v17 = MEMORY[0x277D77DD0];
  v18 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    v20 = [(NCNotificationStructuredListViewController *)self _logDescription];
    *buf = 138543874;
    v42 = v20;
    v43 = 2114;
    v44 = v11;
    v45 = 2114;
    v46 = v12;
    _os_log_impl(&dword_21E77E000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ received DND mode update with current mode %{public}@ and previous mode %{public}@", buf, 0x20u);

    v17 = MEMORY[0x277D77DD0];
  }

  if ([v11 isEqualToString:v12])
  {
    if (v14 == 2 && v16 != 2)
    {
      v21 = *v17;
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        v23 = [(NCNotificationStructuredListViewController *)self _logDescription];
        *buf = 138543618;
        v42 = v23;
        v43 = 2114;
        v44 = v11;
        _os_log_impl(&dword_21E77E000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ setting missed section active for DND mode %{public}@ on suppression type changed to delay delivery", buf, 0x16u);
      }

      listModel = self->_listModel;
      v25 = 1;
      v26 = v9;
      v27 = 1;
LABEL_27:
      [(NCNotificationRootList *)listModel toggleMissedSectionActive:v25 forDNDMode:v26 hideVisibleNotifications:v27];
      goto LABEL_28;
    }

    if (v14 != 2 && v16 == 2)
    {
      v32 = *v17;
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
        v34 = [(NCNotificationStructuredListViewController *)self _logDescription];
        *buf = 138543618;
        v42 = v34;
        v43 = 2114;
        v44 = v12;
        _os_log_impl(&dword_21E77E000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ setting missed section inactive for DND mode %{public}@ on suppression type changed from delay delivery", buf, 0x16u);
      }

      listModel = self->_listModel;
      v25 = 0;
      v26 = v40;
      v27 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    if (v8 && v16 == 2)
    {
      v28 = *v17;
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
        v30 = [(NCNotificationStructuredListViewController *)self _logDescription];
        *buf = 138543874;
        v42 = v30;
        v43 = 2114;
        v44 = v12;
        v45 = 2114;
        v46 = v11;
        _os_log_impl(&dword_21E77E000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ setting missed section inactive for DND mode %{public}@ on mode change to %{public}@", buf, 0x20u);

        v17 = MEMORY[0x277D77DD0];
      }

      [(NCNotificationRootList *)self->_listModel toggleMissedSectionActive:0 forDNDMode:v40 hideVisibleNotifications:0];
    }

    if (v7 && v14 == 2)
    {
      if (v8)
      {
        v31 = [v7 dimsLockScreen] != 0;
      }

      else
      {
        v31 = 1;
      }

      v35 = *v17;
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        v36 = v35;
        v37 = [(NCNotificationStructuredListViewController *)self _logDescription];
        *buf = 138543874;
        v42 = v37;
        v43 = 2114;
        v44 = v11;
        v45 = 1024;
        LODWORD(v46) = v31;
        _os_log_impl(&dword_21E77E000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ setting missed section active for DND mode %{public}@ and hiding visible notifications = %{BOOL}d", buf, 0x1Cu);
      }

      listModel = self->_listModel;
      v25 = 1;
      v26 = v9;
      v27 = v31;
      goto LABEL_27;
    }
  }

LABEL_28:
  [(NCNotificationRootList *)self->_listModel reloadRemoteSuggestions];
  [(NCNotificationRootList *)self->_listModel setActiveDNDModeConfiguration:v7];
  v38 = [(NCNotificationStructuredListViewController *)self countIndicatorViewController];
  [v38 setActiveDNDModeConfiguration:v7];

  v39 = [(NCNotificationStructuredListViewController *)self _listViewContainer];
  [v39 setNeedsLayout];
}

- (void)digestOnboardingNavigationController:(id)a3 didScheduleDigestDeliveryTimes:(id)a4 forAppBundleIdentifiers:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [(NCNotificationStructuredListViewController *)self _logDescription];
    *buf = 138543618;
    v28 = v13;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&dword_21E77E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ received updated scheduled delivery settings from onboarding view controller with delivery times %@", buf, 0x16u);
  }

  [(NCNotificationStructuredListViewController *)self _setDigestOnboardingSuggestionVisible:0];
  v14 = [v9 copy];
  [(NCNotificationStructuredListViewController *)self _setSystemScheduledDeliveryEnabled:1 scheduledDeliveryTimes:v14];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = v10;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(NCNotificationStructuredListViewController *)self _setScheduledDeliveryEnabledForSectionIdentifier:*(*(&v22 + 1) + 8 * v19++), v22];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v17);
  }

  digestOnboardingLastBundleIdentifiersSelection = self->_digestOnboardingLastBundleIdentifiersSelection;
  self->_digestOnboardingLastBundleIdentifiersSelection = 0;

  digestOnboardingLastScheduledDeliveryTimesSelection = self->_digestOnboardingLastScheduledDeliveryTimesSelection;
  self->_digestOnboardingLastScheduledDeliveryTimesSelection = 0;
}

- (void)digestOnboardingNavigationController:(id)a3 didChangeDeliveryTimesActiveSelection:(id)a4 appBundleIdentifiersActiveSelection:(id)a5
{
  v7 = a4;
  objc_storeStrong(&self->_digestOnboardingLastBundleIdentifiersSelection, a5);
  v9 = a5;
  digestOnboardingLastScheduledDeliveryTimesSelection = self->_digestOnboardingLastScheduledDeliveryTimesSelection;
  self->_digestOnboardingLastScheduledDeliveryTimesSelection = v7;
}

- (void)digestOnboardingNavigationControllerDidDeferSetup:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  [(NCNotificationStructuredListViewController *)self _setDigestOnboardingSuggestionVisible:0];
  v4 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ User deferred digest setup. Onboarding navigation controller dismissed", &v7, 0xCu);
  }
}

- (void)_toggleDigestOnboardingSuggestionIfNecessary
{
  if ([(NCNotificationStructuredListViewController *)self _shouldPresentDigestOnboardingSuggestion])
  {
    if (!self->_digestOnboardingSuggestionClient)
    {

      [(NCNotificationStructuredListViewController *)self _scheduleDigestOnboardingSuggestion];
    }
  }

  else if ([(NCNotificationStructuredListViewController *)self _isPresentingDigestOnboardingSuggestion])
  {

    [(NCNotificationStructuredListViewController *)self _setDigestOnboardingSuggestionVisible:0];
  }
}

- (void)_presentNavigationControllerAndBeginModalInteraction:(id)a3 sender:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v12;
  if (self->_modalNavigationController)
  {
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }

  else
  {
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
    }

    else
    {
      v15 = @"<null>";
    }

    v16 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [(NCNotificationStructuredListViewController *)self _logDescription];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138543874;
      v26 = v18;
      v27 = 2114;
      v28 = v20;
      v29 = 2114;
      v30 = v15;
      _os_log_impl(&dword_21E77E000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ presenting navigation controller of type '%{public}@' from sender of type: '%{public}@'", buf, 0x20u);
    }

    v21 = [(NCNotificationStructuredListViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v21 notificationStructuredListViewControllerDidBeginUserInteraction:self];
    }

    objc_storeStrong(&self->_modalNavigationController, a3);
    modalNavigationController = self->_modalNavigationController;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __126__NCNotificationStructuredListViewController__presentNavigationControllerAndBeginModalInteraction_sender_animated_completion___block_invoke;
    v23[3] = &unk_27836F910;
    v24 = v13;
    [(NCNotificationStructuredListViewController *)self presentViewController:modalNavigationController animated:1 completion:v23];
  }
}

uint64_t __126__NCNotificationStructuredListViewController__presentNavigationControllerAndBeginModalInteraction_sender_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)_setDigestOnboardingSuggestionVisible:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(NCNotificationStructuredListViewController *)self _isPresentingDigestOnboardingSuggestion];
  if (v3)
  {
    if (!v5)
    {
      v6 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        v8 = [(NCNotificationStructuredListViewController *)self _logDescription];
        v17 = 138543362;
        v18 = v8;
        _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ presenting digest onboarding suggestion on lock screen", &v17, 0xCu);
      }

      v9 = objc_opt_new();
      digestOnboardingSuggestionLogging = self->_digestOnboardingSuggestionLogging;
      self->_digestOnboardingSuggestionLogging = v9;

      v11 = [MEMORY[0x277CBEAA8] date];
      digestOnboardingSuggestionPresentationTime = self->_digestOnboardingSuggestionPresentationTime;
      self->_digestOnboardingSuggestionPresentationTime = v11;

      [(NCNotificationRootList *)self->_listModel setOnboardingSummaryVisible:1];
    }
  }

  else if (v5)
  {
    v13 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [(NCNotificationStructuredListViewController *)self _logDescription];
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ removing digest onboarding suggestion from lock screen", &v17, 0xCu);
    }

    [(NCNotificationRootList *)self->_listModel setOnboardingSummaryVisible:0];
    v16 = self->_digestOnboardingSuggestionLogging;
    self->_digestOnboardingSuggestionLogging = 0;
  }
}

- (BOOL)_shouldPresentDigestOnboardingSuggestion
{
  v2 = [(NCNotificationStructuredListViewController *)self _notificationSystemSettings];
  v3 = [v2 isScheduledDeliveryUninitialized];

  return v3;
}

- (void)_scheduleDigestOnboardingSuggestion
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_digestOnboardingSuggestionClient)
  {
    v3 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [(NCNotificationStructuredListViewController *)self _logDescription];
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling digest onboarding suggestion", &v8, 0xCu);
    }

    v6 = [MEMORY[0x277CEB4A8] sharedInstance];
    digestOnboardingSuggestionClient = self->_digestOnboardingSuggestionClient;
    self->_digestOnboardingSuggestionClient = v6;

    [(ATXDigestOnboardingSuggestionClient *)self->_digestOnboardingSuggestionClient registerObserver:self];
    [(ATXDigestOnboardingSuggestionClient *)self->_digestOnboardingSuggestionClient registerForOnboardingSuggestions];
  }
}

- (void)_setSystemScheduledDeliveryEnabled:(BOOL)a3 scheduledDeliveryTimes:(id)a4
{
  v4 = a3;
  v7 = a4;
  v6 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 notificationStructuredListViewController:self setSystemScheduledDeliveryEnabled:v4 scheduledDeliveryTimes:v7];
  }
}

- (void)_setScheduledDeliveryEnabledForSectionIdentifier:(id)a3
{
  v5 = a3;
  v4 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 notificationStructuredListViewController:self setScheduledDelivery:1 forSectionIdentifier:v5];
  }
}

- (void)_presentOptionsMenuForNotificationRequest:(id)a3 withPresentingView:(id)a4 optionsForSection:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[NCNotificationOptionsMenu alloc] initWithNotificationRequest:v9 presentingView:v8 settingsDelegate:self optionsForSection:v5];

  optionsMenu = self->_optionsMenu;
  self->_optionsMenu = v10;

  v12 = self->_optionsMenu;

  [(NCNotificationOptionsMenu *)v12 presentMenu];
}

- (id)_sectionSettingsForSectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredListViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 notificationStructuredListViewController:self requestsSectionSettingsForSectionIdentifier:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_notificationSystemSettings
{
  v3 = [(NCNotificationStructuredListViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 notificationStructuredListViewControllerRequestsSystemSettings:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_requestAuthenticationAndPerformBlock:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationStructuredListViewController *)self delegate];
  [v5 notificationStructuredListViewController:self requestsAuthenticationAndPerformBlock:v4];
}

- (void)_contentSizeCategoryDidChange
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(NCNotificationStructuredListViewController *)self _logDescription];
    *buf = 138543362;
    v20 = v5;
    _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ adjusting for content size change", buf, 0xCu);
  }

  [(NCNotificationRootList *)self->_listModel adjustForContentSizeCategoryChange];
  listView = self->_listView;
  v7 = [(NCNotificationStructuredListViewController *)self traitCollection];
  [(NCNotificationListView *)listView updateBottomViewTransitionStyleWithTraitCollection:v7];

  [(NCNotificationListCountIndicatorViewController *)self->_countIndicatorViewController adjustForContentSizeCategoryChange];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NCNotificationStructuredListViewController *)self childViewControllers];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 adjustForContentSizeCategoryChange];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (BOOL)_forwarNotificationRequestToLongLookIfNecessary:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationStructuredListViewController *)self notificationViewControllerPresentingLongLook];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 notificationRequest];
    if (![v4 isUniqueThreadIdentifier] || !objc_msgSend(v7, "isUniqueThreadIdentifier") || !objc_msgSend(v4, "matchesThreadForRequest:", v7))
    {
      goto LABEL_13;
    }

    v8 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = [(NCNotificationStructuredListViewController *)self _logDescription];
      v11 = [v4 notificationIdentifier];
      v12 = [v11 un_logDigest];
      v20 = 138543618;
      v21 = v10;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_INFO, "%{public}@ forwarding request %{public}@ to a presented long look", &v20, 0x16u);
    }

    if ([v6 didForwardNotificationRequestToCustomContent:v4])
    {
      if ([v4 matchesRequest:v7])
      {
        v13 = *MEMORY[0x277D77DD0];
        if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          v15 = [(NCNotificationStructuredListViewController *)self _logDescription];
          v16 = [v4 notificationIdentifier];
          v17 = [v16 un_logDigest];
          v20 = 138543618;
          v21 = v15;
          v22 = 2114;
          v23 = v17;
          _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ updating notification view presenting long look on receiving forwarded request %{public}@", &v20, 0x16u);
        }

        [v6 setNotificationRequest:v4];
      }

      v18 = 1;
    }

    else
    {
LABEL_13:
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)_resetSwipeInteractionWithRevealedActionsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(NCNotificationListTouchEaterManager *)self->_touchEaterManager swipeInteractionInRevealedState];
  if (v5)
  {
    v6 = v5;
    [v5 hideActionsAnimated:v3 fastAnimation:1 completion:0];
    [(NCNotificationListTouchEaterManager *)self->_touchEaterManager setSwipeInteractionInRevealedState:0];
    v5 = v6;
  }
}

- (void)_loadListView
{
  v3 = [[NCNotificationModernListView alloc] initWithModelType:objc_opt_class() purpose:@"TopLevel"];
  listView = self->_listView;
  self->_listView = v3;

  [(NCNotificationListView *)self->_listView setPreferredBottomTransitionTransformer:0];
  v5 = [(NCNotificationModernListView *)self->_listView traitOverrides];
  v6 = objc_opt_self();
  [v5 setNSIntegerValue:1 forTrait:v6];

  v7 = [[NCNotificationRootModernList alloc] initWithListView:self->_listView delegate:self];
  listModel = self->_listModel;
  self->_listModel = &v7->super;

  v10 = [(NCNotificationStructuredListViewController *)self _notificationSystemSettings];
  if (v10)
  {
    [(NCNotificationRootList *)self->_listModel updateNotificationSystemSettings:v10 previousSystemSettings:0];
  }

  [(NCNotificationModernListView *)self->_listView setScrollEnabled:1];
  [(NCNotificationModernListView *)self->_listView setContentInsetAdjustmentBehavior:2];
  [NCListDebugHUDModelBridge trackListView:self->_listView];
  v9 = [(NCNotificationStructuredListViewController *)self _listViewContainer];
  [v9 setListView:self->_listView];
}

- (void)_updateDebugHUD
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  allNotificationRequests = self->_allNotificationRequests;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __61__NCNotificationStructuredListViewController__updateDebugHUD__block_invoke;
  v3[3] = &unk_278372168;
  v3[4] = &v4;
  [(NSMutableDictionary *)allNotificationRequests enumerateKeysAndObjectsUsingBlock:v3];
  [NCListDebugHUDModelBridge updateNotificationCount:v5[3]];
  _Block_object_dispose(&v4, 8);
}

uint64_t __61__NCNotificationStructuredListViewController__updateDebugHUD__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (void)_updateListVisibleAreaForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(NCNotificationRootList *)self->_listModel updateListViewVisibleRectForSize:?];

  [(NCNotificationStructuredListViewController *)self _updateListEdgeInsetsForSize:width, height];
}

- (UIEdgeInsets)_overlayFooterViewEdgeInsetsForSize:(CGSize)a3
{
  if (a3.width <= a3.height)
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  v5 = [(NCNotificationStructuredListViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 notificationStructuredListViewControllerRequestsEdgeInsetsForFooterView:self forOrientation:v4];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v11 = 0.0;
      *&v12 = 55.0;
      *&v10 = 110.0;
      v13 = 0.0;
      goto LABEL_10;
    }

    [v5 notificationStructuredListViewControllerRequestsEdgeInsetsForOverlayFooterView:self forOrientation:v4];
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
LABEL_10:

  v14 = *&v10;
  v15 = v11;
  v16 = *&v12;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (UIEdgeInsets)_notificationListViewEdgeInsetsForSize:(CGSize)a3
{
  if (a3.width <= a3.height)
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  v5 = [(NCNotificationStructuredListViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 notificationStructuredListViewControllerRequestsEdgeInsetsForNotificationListView:self forOrientation:v4];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v11 = 0.0;
      *&v10 = 110.0;
      *&v12 = 110.0;
      v13 = 0.0;
      goto LABEL_10;
    }

    [v5 notificationStructuredListViewControllerRequestsEdgeInsetsForOverlayFooterView:self forOrientation:v4];
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
LABEL_10:

  v14 = *&v10;
  v15 = v11;
  v16 = *&v12;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)_updateListEdgeInsetsForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(NCNotificationStructuredListViewController *)self _overlayFooterViewEdgeInsetsForSize:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(NCNotificationStructuredListViewController *)self _listViewContainer];
  [v14 setFooterInsets:{v7, v9, v11, v13}];

  [(NCNotificationStructuredListViewController *)self _notificationListViewEdgeInsetsForSize:width, height];
  v16 = v15;
  v17 = [(NCNotificationStructuredListViewController *)self delegate];
  if (v17 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v18 = [(NCNotificationStructuredListViewController *)self view];
    [v18 bounds];
    [v17 notificationStructuredListViewController:self requestsUpdateNotificationDimViewFadeRadiusY:v19 / 12.0];
  }

  v20 = +[NCUNUIKitPrototypeDomain rootSettings];
  v21 = [v20 listAnimationSettings];
  [v21 bottomListPadding];
  v23 = v16 + v22;

  [(NCNotificationRootList *)self->_listModel visibleRectBottomMarginForRollUnder];
  v25 = v24;
  [(NCNotificationRootList *)self->_listModel setVisibleRectBottomMarginForRollUnder:v23];
  v26 = [(NCNotificationStructuredListViewController *)self _listViewContainer];
  [v26 setContentBottomMargin:v23];

  [NCListDebugHUDModelBridge plotProperty:@"visibleRectBottomMarginForRollUnder" label:0 inListView:v23];
  if (v23 != v25)
  {
    v27 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 0;
      _os_log_impl(&dword_21E77E000, v27, OS_LOG_TYPE_DEFAULT, "visibleRectBottomMargin updated, layoutForRootListSizeChange", v28, 2u);
    }

    [(NCNotificationRootList *)self->_listModel layoutForRootListSizeChange];
  }
}

- (void)_updateOrientationForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v23 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = [(NCNotificationStructuredListViewController *)self traitOverrides];
  v9 = v8;
  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1 || width <= height)
  {
    [v8 setVerticalSizeClass:2];

    [(NCNotificationRootList *)self->_listModel removeOverrideNotificationListDisplayStyleSettingForReason:@"NCNotificationListDisplayStyleReasonOverrideLandscapeOrientation"];
  }

  else
  {
    [v8 setVerticalSizeClass:1];

    [(NCNotificationRootList *)self->_listModel setOverrideNotificationListDisplayStyleSetting:0 forReason:@"NCNotificationListDisplayStyleReasonOverrideLandscapeOrientation" hideNotificationCount:0];
  }

  v11 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [(NCNotificationStructuredListViewController *)self _logDescription];
    v14 = [(NCNotificationStructuredListViewController *)self traitCollection];
    v15 = [v14 verticalSizeClass];
    v16 = [MEMORY[0x277D75C80] currentTraitCollection];
    v17 = 138543874;
    v18 = v13;
    v19 = 2048;
    v20 = v15;
    v21 = 2048;
    v22 = [v16 verticalSizeClass];
    _os_log_impl(&dword_21E77E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ orientation updated; verticalSizeClass: %lu; global verticalSizeClass: %lu", &v17, 0x20u);
  }

  [(NCNotificationStructuredListViewController *)self updateTraitsIfNeeded];
}

- (NCNotificationListSupplementaryViewsContaining)testRecipeSupplementaryViewsContainer
{
  testRecipeSupplementaryViewsContainer = self->_testRecipeSupplementaryViewsContainer;
  if (!testRecipeSupplementaryViewsContainer)
  {
    v4 = [(NCNotificationStructuredListViewController *)self insertSupplementaryViewsContainerAtListPosition:0 identifier:@"prototype-section" withDescription:@"Test Recipe Supplementary Views Section"];
    [(NCNotificationStructuredListViewController *)self setTestRecipeSupplementaryViewsContainer:v4];

    testRecipeSupplementaryViewsContainer = self->_testRecipeSupplementaryViewsContainer;
  }

  return testRecipeSupplementaryViewsContainer;
}

- (UIEdgeInsets)insetMargins
{
  top = self->_insetMargins.top;
  left = self->_insetMargins.left;
  bottom = self->_insetMargins.bottom;
  right = self->_insetMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (NCNotificationListComponent)notificationListComponentPresentingOptionsMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationListComponentPresentingOptionsMenu);

  return WeakRetained;
}

@end