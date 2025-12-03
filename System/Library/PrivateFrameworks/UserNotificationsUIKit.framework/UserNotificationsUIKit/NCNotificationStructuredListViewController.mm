@interface NCNotificationStructuredListViewController
- (BOOL)_forwarNotificationRequestToLongLookIfNecessary:(id)necessary;
- (BOOL)_shouldPresentDigestOnboardingSuggestion;
- (BOOL)dismissModalFullScreenAnimated:(BOOL)animated;
- (BOOL)interpretsViewAsContent:(id)content;
- (BOOL)isContentExtensionVisible:(id)visible;
- (BOOL)isHomeAffordanceVisible;
- (BOOL)isPresentingNotificationInLongLook;
- (BOOL)notificationListComponent:(id)component isClockNotificationRequest:(id)request;
- (BOOL)notificationListComponent:(id)component shouldAllowInteractionsForNotificationRequest:(id)request;
- (BOOL)notificationListComponentShouldAllowLongPressGesture:(id)gesture;
- (BOOL)notificationOptionsMenu:(id)menu isDisplayingStackSummaryForNotificationRequest:(id)request;
- (BOOL)notificationOptionsMenu:(id)menu isInPrioritySection:(id)section;
- (BOOL)notificationRootList:(id)list shouldFilterNotificationRequest:(id)request;
- (BOOL)notificationRootListAreHighlightsEnabled:(id)enabled;
- (BOOL)notificationRootListShouldAllowNotificationHistoryReveal:(id)reveal;
- (BOOL)requiresPushOffManagementForNotificationRootList:(id)list;
- (BOOL)shouldHintDefaultActionForNotificationListBaseComponent:(id)component;
- (CGPoint)scrollViewVisibleContentLayoutOffset;
- (CGRect)visibleContentExtent;
- (CGSize)effectiveContentSize;
- (Class)notificationRootListNotificationViewControllerClass:(id)class;
- (NCNotificationListCoalescingControlsHandler)coalescingControlsHandlerInForceTouchState;
- (NCNotificationListComponent)notificationListComponentPresentingOptionsMenu;
- (NCNotificationListSectionHeaderView)headerViewInForceTouchState;
- (NCNotificationListSupplementaryViewsContaining)testRecipeSupplementaryViewsContainer;
- (NCNotificationStructuredListViewController)init;
- (NCNotificationStructuredListViewControllerDelegate)delegate;
- (NCNotificationViewController)notificationViewControllerPresentingLongLook;
- (UIEdgeInsets)_notificationListViewEdgeInsetsForSize:(CGSize)size;
- (UIEdgeInsets)_overlayFooterViewEdgeInsetsForSize:(CGSize)size;
- (UIEdgeInsets)insetMargins;
- (UIPanGestureRecognizer)homeAffordancePanGesture;
- (UIScrollView)scrollView;
- (double)cutoffOffsetForNotificationRootList:(id)list;
- (id)_logDescription;
- (id)_notificationSystemSettings;
- (id)_sectionSettingsForSectionIdentifier:(id)identifier;
- (id)containerViewForPreviewInteractionPresentedContentForNotificationListBaseComponent:(id)component;
- (id)hideHomeAffordanceAnimationSettingsForNotificationListComponent:(id)component;
- (id)insertSupplementaryViewsContainerAtListPosition:(unint64_t)position identifier:(id)identifier withDescription:(id)description;
- (id)legibilitySettingsForNotificationListBaseComponent:(id)component;
- (id)notificationListComponent:(id)component containerViewProviderForExpandedContentForViewController:(id)controller;
- (id)notificationListComponent:(id)component keyboardAssertionForGestureWindow:(id)window;
- (id)notificationListComponent:(id)component notificationRequestForUUID:(id)d;
- (id)notificationRootListRequestsDiagnosticsDictionary:(id)dictionary;
- (id)notificationUsageTrackingStateForNotificationListComponent:(id)component;
- (id)settleHomeAffordanceAnimationBehaviorDescriptionForNotificationListComponent:(id)component;
- (id)unhideHomeAffordanceAnimationSettingsForNotificationListComponent:(id)component;
- (void)_contentSizeCategoryDidChange;
- (void)_didExitAlwaysOn;
- (void)_handleDeviceUnauthenticated;
- (void)_loadListView;
- (void)_presentNavigationControllerAndBeginModalInteraction:(id)interaction sender:(id)sender animated:(BOOL)animated completion:(id)completion;
- (void)_presentOptionsMenuForNotificationRequest:(id)request withPresentingView:(id)view optionsForSection:(BOOL)section;
- (void)_requestAuthenticationAndPerformBlock:(id)block;
- (void)_resetListStateBeforeUIAppears;
- (void)_resetSwipeInteractionWithRevealedActionsAnimated:(BOOL)animated;
- (void)_scheduleDigestOnboardingSuggestion;
- (void)_setDigestOnboardingSuggestionVisible:(BOOL)visible;
- (void)_setScheduledDeliveryEnabledForSectionIdentifier:(id)identifier;
- (void)_setSystemScheduledDeliveryEnabled:(BOOL)enabled scheduledDeliveryTimes:(id)times;
- (void)_toggleDigestOnboardingSuggestionIfNecessary;
- (void)_updateDebugHUD;
- (void)_updateListEdgeInsetsForSize:(CGSize)size;
- (void)_updateListVisibleAreaForSize:(CGSize)size;
- (void)_updateOrientationForSize:(CGSize)size;
- (void)addContentObserver:(id)observer;
- (void)adjustForLegibilitySettingsChange:(id)change;
- (void)createContactNavigationControllerDidComplete:(id)complete;
- (void)digestOnboardingNavigationController:(id)controller didChangeDeliveryTimesActiveSelection:(id)selection appBundleIdentifiersActiveSelection:(id)activeSelection;
- (void)digestOnboardingNavigationController:(id)controller didScheduleDigestDeliveryTimes:(id)times forAppBundleIdentifiers:(id)identifiers;
- (void)digestOnboardingNavigationControllerDidDeferSetup:(id)setup;
- (void)digestOnboardingSuggestionClient:(id)client didSuggestOnboarding:(id)onboarding;
- (void)insertNotificationRequest:(id)request;
- (void)invalidateContentInsets;
- (void)loadView;
- (void)migrateNotifications;
- (void)modalNavigationControllerDidDismiss:(id)dismiss;
- (void)modeManager:(id)manager didUpdateCurrentModeConfiguration:(id)configuration previousModeConfiguration:(id)modeConfiguration;
- (void)modifyNotificationRequest:(id)request;
- (void)notificationListBaseComponent:(id)component didAddViewController:(id)controller;
- (void)notificationListBaseComponent:(id)component didBeginUserInteractionWithViewController:(id)controller;
- (void)notificationListBaseComponent:(id)component didEndUserInteractionWithViewController:(id)controller;
- (void)notificationListBaseComponent:(id)component didPresentCoalescingControlsHandler:(id)handler inForceTouchState:(BOOL)state;
- (void)notificationListBaseComponent:(id)component didRemoveViewController:(id)controller;
- (void)notificationListBaseComponent:(id)component didTransitionActionsForSwipeInteraction:(id)interaction revealed:(BOOL)revealed;
- (void)notificationListBaseComponent:(id)component didTransitionCoalescingControlsHandler:(id)handler toClearState:(BOOL)state;
- (void)notificationListBaseComponent:(id)component requestsClearingPresentables:(id)presentables;
- (void)notificationListBaseComponent:(id)component requestsModalPresentationOfNavigationController:(id)controller sender:(id)sender animated:(BOOL)animated completion:(id)completion;
- (void)notificationListBaseComponentDidSignificantUserInteraction:(id)interaction;
- (void)notificationListComponent:(id)component acceptedSummaryOnboarding:(BOOL)onboarding;
- (void)notificationListComponent:(id)component didPresentSectionHeaderView:(id)view inForceTouchState:(BOOL)state;
- (void)notificationListComponent:(id)component didTransitionSectionHeaderView:(id)view toClearState:(BOOL)state;
- (void)notificationListComponent:(id)component isPresentingLongLookForViewController:(id)controller;
- (void)notificationListComponent:(id)component requestPermissionToExecuteAction:(id)action forNotificationRequest:(id)request withParameters:(id)parameters completion:(id)completion;
- (void)notificationListComponent:(id)component requestsAuthenticationAndPerformBlock:(id)block;
- (void)notificationListComponent:(id)component requestsClearingNotificationRequestsInSections:(id)sections;
- (void)notificationListComponent:(id)component requestsExecuteAction:(id)action forNotificationRequest:(id)request requestAuthentication:(BOOL)authentication withParameters:(id)parameters completion:(id)completion;
- (void)notificationListComponent:(id)component requestsPresentingManagementViewForNotificationRequest:(id)request managementViewType:(unint64_t)type withPresentingView:(id)view completion:(id)completion;
- (void)notificationListComponent:(id)component requestsPresentingOptionsMenuForNotificationRequest:(id)request presentingViewProvider:(id)provider optionsForSection:(BOOL)section completion:(id)completion;
- (void)notificationListComponent:(id)component requestsStackSummarySuggestionVisible:(BOOL)visible forRequest:(id)request;
- (void)notificationListComponent:(id)component setAllowsDirectMessages:(BOOL)messages forSectionIdentifier:(id)identifier;
- (void)notificationListComponent:(id)component setAllowsTimeSensitive:(BOOL)sensitive forSectionIdentifier:(id)identifier;
- (void)notificationListComponent:(id)component setMuted:(BOOL)muted untilDate:(id)date forSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier;
- (void)notificationListComponent:(id)component setNotificationSystemSettings:(id)settings;
- (void)notificationListComponent:(id)component setScheduledDelivery:(BOOL)delivery forSectionIdentifier:(id)identifier;
- (void)notificationListComponent:(id)component shouldFinishLongLookTransitionForNotificationRequest:(id)request trigger:(int64_t)trigger withCompletionBlock:(id)block;
- (void)notificationListComponent:(id)component willDismissLongLookForCancelActionForViewController:(id)controller;
- (void)notificationListCountIndicatorViewController:(id)controller didChangeVisibility:(BOOL)visibility;
- (void)notificationListCountIndicatorViewControllerDidUpdate:(id)update;
- (void)notificationListCountIndicatorViewControllerLongPressed:(id)pressed presentingView:(id)view;
- (void)notificationManagementViewPresenter:(id)presenter setAllowsCriticalAlerts:(BOOL)alerts forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)notificationManagementViewPresenter:(id)presenter setAllowsNotifications:(BOOL)notifications forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)notificationManagementViewPresenter:(id)presenter setAllowsTimeSensitive:(BOOL)sensitive forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)notificationManagementViewPresenter:(id)presenter setDeliverQuietly:(BOOL)quietly forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)notificationManagementViewPresenter:(id)presenter setMuted:(BOOL)muted untilDate:(id)date forNotificationRequest:(id)request withSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier;
- (void)notificationManagementViewPresenter:(id)presenter setMuted:(BOOL)muted untilDate:(id)date forSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier;
- (void)notificationManagementViewPresenter:(id)presenter setScheduledDelivery:(BOOL)delivery forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)notificationManagementViewPresenterDidDismissManagementView:(id)view;
- (void)notificationManagementViewPresenterWillPresentManagementView:(id)view;
- (void)notificationOptionsMenu:(id)menu addSenderToContactsForNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)notificationOptionsMenu:(id)menu requestsClearingSectionWithIdentifier:(id)identifier;
- (void)notificationOptionsMenu:(id)menu setAllowsCriticalAlerts:(BOOL)alerts forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)notificationOptionsMenu:(id)menu setAllowsNotifications:(BOOL)notifications forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)notificationOptionsMenu:(id)menu setAllowsTimeSensitive:(BOOL)sensitive forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)notificationOptionsMenu:(id)menu setMuted:(BOOL)muted untilDate:(id)date forNotificationRequest:(id)request withSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier;
- (void)notificationOptionsMenu:(id)menu setScheduledDelivery:(BOOL)delivery forNotificationRequest:(id)request withSectionIdentifier:(id)identifier;
- (void)notificationOptionsMenuWillDismiss:(id)dismiss;
- (void)notificationRootList:(id)list didUpdateNotificationsVisibilityInViewport:(BOOL)viewport;
- (void)notificationRootList:(id)list isNotificationsHistoryRevealed:(BOOL)revealed;
- (void)notificationRootList:(id)list requestsClearingFromIncomingSectionNotificationRequests:(id)requests;
- (void)notificationRootList:(id)list scrollViewDidScroll:(id)scroll;
- (void)notificationRootList:(id)list scrollViewWillBeginDragging:(id)dragging;
- (void)notificationRootList:(id)list scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)notificationRootListDidUpdateVisibleContentExtent:(id)extent;
- (void)notificationRootListWillExpandNotificationListCount:(id)count;
- (void)notificationStructuredListView:(id)view didChangeFooterCenterY:(double)y;
- (void)notificationsLoadedForSectionIdentifier:(id)identifier;
- (void)notifyContentObservers;
- (void)removeContentObserver:(id)observer;
- (void)removeNotificationRequest:(id)request;
- (void)revealNotificationHistory:(BOOL)history animated:(BOOL)animated;
- (void)setDeviceAuthenticated:(BOOL)authenticated;
- (void)setHomeAffordancePanGesture:(id)gesture;
- (void)setHomeAffordanceVisible:(BOOL)visible;
- (void)setNotificationListExpandsVisibleRegionOnSignificantScroll:(BOOL)scroll;
- (void)toggleFilteringForSectionIdentifier:(id)identifier shouldFilter:(BOOL)filter;
- (void)toolsOverlayViewRequestsBeginUserInteraction:(id)interaction;
- (void)toolsOverlayViewRequestsEndUserInteraction:(id)interaction;
- (void)traitCollectionDidChange:(id)change;
- (void)updateGlassContentInterfaceStyleToUserInterfaceStyle:(int64_t)style glassLuminanceValue:(double)value wallpaperLuminanceValue:(double)luminanceValue;
- (void)updateNotificationSectionSettings:(id)settings previousSectionSettings:(id)sectionSettings;
- (void)updateNotificationSystemSettings:(id)settings previousSystemSettings:(id)systemSettings;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillMoveToWindow:(id)window;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    incomingCount = [(NCNotificationRootList *)self->_listModel incomingCount];
    incomingTitle = [(NCNotificationRootList *)self->_listModel incomingTitle];
    *buf = 138543874;
    v22 = _logDescription;
    v23 = 2048;
    v24 = incomingCount;
    v25 = 2114;
    v26 = incomingTitle;
    _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_INFO, "%{public}@ notifyContentObservers; incomingCount %lu; incomingTitle: %{public}@", buf, 0x20u);
  }

  countIndicatorViewController = [(NCNotificationStructuredListViewController *)self countIndicatorViewController];
  [countIndicatorViewController setCount:{-[NCNotificationRootList incomingCount](self->_listModel, "incomingCount")}];

  countIndicatorViewController2 = [(NCNotificationStructuredListViewController *)self countIndicatorViewController];
  incomingTitle2 = [(NCNotificationRootList *)self->_listModel incomingTitle];
  [countIndicatorViewController2 setIncomingTitle:incomingTitle2];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  observers = [(NCNotificationStructuredListViewController *)self observers];
  v12 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(observers);
        }

        [*(*(&v16 + 1) + 8 * v15++) structuredListContentChanged:{-[NCNotificationStructuredListViewController hasVisibleContent](self, "hasVisibleContent")}];
      }

      while (v13 != v15);
      v13 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)_resetListStateBeforeUIAppears
{
  [(NCNotificationStructuredListViewController *)self _resetSwipeInteractionWithRevealedActionsAnimated:0];
  v3 = [(NCNotificationStructuredListViewController *)self legibilitySettingsForNotificationListBaseComponent:self->_listModel];
  [(NCNotificationStructuredListViewController *)self adjustForLegibilitySettingsChange:v3];
  listView = [(NCNotificationStructuredListViewController *)self listView];
  window = [listView window];

  if (window)
  {
    listView2 = [(NCNotificationStructuredListViewController *)self listView];
    window2 = [listView2 window];
    [window2 bounds];
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

    listView2 = [MEMORY[0x277D759A0] mainScreen];
    [listView2 bounds];
    v9 = v13;
    v11 = v14;
  }

  [(NCNotificationStructuredListViewController *)self _updateOrientationForSize:v9, v11];
  listView = self->_listView;
  traitCollection = [(NCNotificationStructuredListViewController *)self traitCollection];
  [(NCNotificationListView *)listView updateBottomViewTransitionStyleWithTraitCollection:traitCollection];

  listModel = self->_listModel;
  traitCollection2 = [(NCNotificationStructuredListViewController *)self traitCollection];
  -[NCNotificationRootList didUpdateToUserInterfaceSizeClass:](listModel, "didUpdateToUserInterfaceSizeClass:", [traitCollection2 verticalSizeClass]);

  _listViewContainer = [(NCNotificationStructuredListViewController *)self _listViewContainer];
  traitCollection3 = [(NCNotificationStructuredListViewController *)self traitCollection];
  [_listViewContainer setUserInterfaceSizeClass:{objc_msgSend(traitCollection3, "verticalSizeClass")}];

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
  notificationSections = [(NCNotificationRootList *)self->_listModel notificationSections];
  [notificationSections enumerateObjectsUsingBlock:&__block_literal_global_32];

  _listViewContainer = [(NCNotificationStructuredListViewController *)self _listViewContainer];
  [_listViewContainer didExitAlwaysOn];

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
  _listViewContainer = [(NCNotificationStructuredListViewController *)self _listViewContainer];
  view = [(NCNotificationListCountIndicatorViewController *)self->_countIndicatorViewController view];
  [_listViewContainer setFooterView:view];

  [(NCNotificationStructuredListViewController *)self _loadListView];
  [(NCModeManager *)self->_modeManager addObserver:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = NCNotificationStructuredListViewController;
  [(NCNotificationStructuredListViewController *)&v4 viewWillAppear:appear];
  [(NCNotificationStructuredListViewController *)self _resetListStateBeforeUIAppears];
}

- (void)viewDidAppear:(BOOL)appear
{
  v17.receiver = self;
  v17.super_class = NCNotificationStructuredListViewController;
  [(NCNotificationStructuredListViewController *)&v17 viewDidAppear:appear];
  view = [(NCNotificationStructuredListViewController *)self view];
  [view frame];
  [(NCNotificationStructuredListViewController *)self _updateListVisibleAreaForSize:v5, v6];

  if (!self->_touchEaterManager)
  {
    view2 = [(NCNotificationStructuredListViewController *)self view];
    window = [view2 window];

    if (window)
    {
      v9 = [NCNotificationListTouchEaterManager alloc];
      view3 = [(NCNotificationStructuredListViewController *)self view];
      v11 = [(NCNotificationListTouchEaterManager *)v9 initForView:view3];
      touchEaterManager = self->_touchEaterManager;
      self->_touchEaterManager = v11;
    }
  }

  v13 = +[NCPlatterView useRegularMaterial];
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  v15 = delegate;
  if (v13)
  {
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v16 = 1;
LABEL_11:
      [v15 notificationStructuredListViewController:self glassContentInterfaceStyleOverridenToUserInterfaceStyle:v16];
    }
  }

  else if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v16 = 2;
    goto LABEL_11;
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = NCNotificationStructuredListViewController;
  [(NCNotificationStructuredListViewController *)&v7 viewWillDisappear:?];
  managementViewPresenter = [(NCNotificationStructuredListViewController *)self managementViewPresenter];
  [managementViewPresenter dismissManagementViewIfPresentedAnimated:disappearCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NCModalNavigationController *)self->_modalNavigationController dismissViewControllerAnimated:disappearCopy completion:0];
  }

  optionsMenu = [(NCNotificationStructuredListViewController *)self optionsMenu];
  [optionsMenu dismissMenu];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = NCNotificationStructuredListViewController;
  [(NCNotificationStructuredListViewController *)&v5 viewDidDisappear:disappear];
  [(NCNotificationStructuredListViewController *)self _resetSwipeInteractionWithRevealedActionsAnimated:0];
  [(NCNotificationListTouchEaterManager *)self->_touchEaterManager removeTouchGestureRecognizer];
  touchEaterManager = self->_touchEaterManager;
  self->_touchEaterManager = 0;
}

- (void)viewWillMoveToWindow:(id)window
{
  if (!window)
  {
    view = [(NCNotificationStructuredListViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    _alwaysOnEnvironment = [windowScene _alwaysOnEnvironment];
    [_alwaysOnEnvironment removeObserver:self];
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v15.receiver = self;
  v15.super_class = NCNotificationStructuredListViewController;
  [(NCNotificationStructuredListViewController *)&v15 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  if (!self->_touchEaterManager)
  {
    view = [(NCNotificationStructuredListViewController *)self view];
    window = [view window];

    if (window)
    {
      v9 = [NCNotificationListTouchEaterManager alloc];
      view2 = [(NCNotificationStructuredListViewController *)self view];
      v11 = [(NCNotificationListTouchEaterManager *)v9 initForView:view2];
      touchEaterManager = self->_touchEaterManager;
      self->_touchEaterManager = v11;
    }
  }

  if (windowCopy)
  {
    windowScene = [windowCopy windowScene];
    _alwaysOnEnvironment = [windowScene _alwaysOnEnvironment];
    [_alwaysOnEnvironment addObserver:self];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v26 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  v17.receiver = self;
  v17.super_class = NCNotificationStructuredListViewController;
  [(NCNotificationStructuredListViewController *)&v17 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(NCNotificationStructuredListViewController *)self _updateOrientationForSize:width, height];
  [(NCNotificationStructuredListViewController *)self _updateListVisibleAreaForSize:width, height];
  v8 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    traitCollection = [(NCNotificationStructuredListViewController *)self traitCollection];
    verticalSizeClass = [traitCollection verticalSizeClass];
    *buf = 138544130;
    v19 = _logDescription;
    v20 = 2048;
    v21 = verticalSizeClass;
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
  [coordinatorCopy animateAlongsideTransition:v15 completion:v13];
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

- (void)insertNotificationRequest:(id)request
{
  v31 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = MEMORY[0x277D77DD0];
  v6 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v27 = 138543618;
    v28 = _logDescription;
    v29 = 2114;
    v30 = un_logDigest;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ inserting notification request %{public}@", &v27, 0x16u);
  }

  allNotificationRequests = self->_allNotificationRequests;
  if (allNotificationRequests)
  {
    sectionIdentifier = [requestCopy sectionIdentifier];
    v13 = [(NSMutableDictionary *)allNotificationRequests objectForKey:sectionIdentifier];

    if (!v13)
    {
      v14 = self->_allNotificationRequests;
      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      sectionIdentifier2 = [requestCopy sectionIdentifier];
      [(NSMutableDictionary *)v14 setObject:v15 forKey:sectionIdentifier2];
    }

    v17 = self->_allNotificationRequests;
    sectionIdentifier3 = [requestCopy sectionIdentifier];
    v19 = [(NSMutableDictionary *)v17 objectForKey:sectionIdentifier3];
    notificationIdentifier2 = [requestCopy notificationIdentifier];
    [v19 setObject:requestCopy forKey:notificationIdentifier2];

    [(NCNotificationStructuredListViewController *)self _updateDebugHUD];
  }

  if ([(NCNotificationStructuredListViewController *)self _forwarNotificationRequestToLongLookIfNecessary:requestCopy])
  {
    v21 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v22 = v21;
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      notificationIdentifier3 = [requestCopy notificationIdentifier];
      un_logDigest2 = [notificationIdentifier3 un_logDigest];
      v27 = 138543618;
      v28 = v24;
      v29 = 2114;
      v30 = un_logDigest2;
      _os_log_impl(&dword_21E77E000, v22, OS_LOG_TYPE_INFO, "%{public}@ forwarded insert notification request %{public}@ to long look", &v27, 0x16u);
    }
  }

  else
  {
    [(NCNotificationRootList *)self->_listModel insertNotificationRequest:requestCopy];
  }
}

- (void)removeNotificationRequest:(id)request
{
  v38 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = MEMORY[0x277D77DD0];
  v6 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v34 = 138543618;
    v35 = _logDescription;
    v36 = 2114;
    v37 = un_logDigest;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notification request %{public}@", &v34, 0x16u);
  }

  allNotificationRequests = self->_allNotificationRequests;
  if (allNotificationRequests)
  {
    sectionIdentifier = [requestCopy sectionIdentifier];
    v13 = [(NSMutableDictionary *)allNotificationRequests objectForKey:sectionIdentifier];
    notificationIdentifier2 = [requestCopy notificationIdentifier];
    v15 = [v13 objectForKey:notificationIdentifier2];

    if (v15)
    {
      v16 = self->_allNotificationRequests;
      sectionIdentifier2 = [requestCopy sectionIdentifier];
      v18 = [(NSMutableDictionary *)v16 objectForKey:sectionIdentifier2];
      notificationIdentifier3 = [requestCopy notificationIdentifier];
      [v18 removeObjectForKey:notificationIdentifier3];

      v20 = self->_allNotificationRequests;
      sectionIdentifier3 = [requestCopy sectionIdentifier];
      v22 = [(NSMutableDictionary *)v20 objectForKey:sectionIdentifier3];
      v23 = [v22 count];

      if (!v23)
      {
        v24 = self->_allNotificationRequests;
        sectionIdentifier4 = [requestCopy sectionIdentifier];
        [(NSMutableDictionary *)v24 removeObjectForKey:sectionIdentifier4];
      }

      [(NCNotificationStructuredListViewController *)self _updateDebugHUD];
    }
  }

  notificationViewControllerPresentingLongLook = [(NCNotificationStructuredListViewController *)self notificationViewControllerPresentingLongLook];
  notificationRequest = [notificationViewControllerPresentingLongLook notificationRequest];
  v28 = [notificationRequest matchesRequest:requestCopy];

  if (v28)
  {
    v29 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v29;
      _logDescription2 = [(NCNotificationStructuredListViewController *)self _logDescription];
      notificationIdentifier4 = [requestCopy notificationIdentifier];
      un_logDigest2 = [notificationIdentifier4 un_logDigest];
      v34 = 138543618;
      v35 = _logDescription2;
      v36 = 2114;
      v37 = un_logDigest2;
      _os_log_impl(&dword_21E77E000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ deferring removal of notification request %{public}@ since it is presented in long look", &v34, 0x16u);
    }

    [(NCNotificationStructuredListViewController *)self setNotificationRequestRemovedWhilePresentingLongLook:requestCopy];
  }

  else
  {
    [(NCNotificationRootList *)self->_listModel removeNotificationRequest:requestCopy];
  }
}

- (void)modifyNotificationRequest:(id)request
{
  v24 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = MEMORY[0x277D77DD0];
  v6 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v20 = 138543618;
    v21 = _logDescription;
    v22 = 2114;
    v23 = un_logDigest;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ modifying notification request %{public}@", &v20, 0x16u);
  }

  allNotificationRequests = self->_allNotificationRequests;
  if (allNotificationRequests)
  {
    sectionIdentifier = [requestCopy sectionIdentifier];
    v13 = [(NSMutableDictionary *)allNotificationRequests objectForKey:sectionIdentifier];
    notificationIdentifier2 = [requestCopy notificationIdentifier];
    [v13 setObject:requestCopy forKey:notificationIdentifier2];
  }

  if ([(NCNotificationStructuredListViewController *)self _forwarNotificationRequestToLongLookIfNecessary:requestCopy])
  {
    v15 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      _logDescription2 = [(NCNotificationStructuredListViewController *)self _logDescription];
      notificationIdentifier3 = [requestCopy notificationIdentifier];
      un_logDigest2 = [notificationIdentifier3 un_logDigest];
      v20 = 138543618;
      v21 = _logDescription2;
      v22 = 2114;
      v23 = un_logDigest2;
      _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_INFO, "%{public}@ forwarded modify notification request %{public}@ to long look", &v20, 0x16u);
    }
  }

  else
  {
    [(NCNotificationRootList *)self->_listModel modifyNotificationRequest:requestCopy];
  }
}

- (void)updateNotificationSectionSettings:(id)settings previousSectionSettings:(id)sectionSettings
{
  v16 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  sectionSettingsCopy = sectionSettings;
  v8 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    sectionIdentifier = [settingsCopy sectionIdentifier];
    v12 = 138543618;
    v13 = _logDescription;
    v14 = 2114;
    v15 = sectionIdentifier;
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ updating notification section settings for section %{public}@", &v12, 0x16u);
  }

  [(NCNotificationRootList *)self->_listModel updateNotificationSectionSettings:settingsCopy previousSectionSettings:sectionSettingsCopy];
}

- (void)updateNotificationSystemSettings:(id)settings previousSystemSettings:(id)systemSettings
{
  v15 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  systemSettingsCopy = systemSettings;
  v8 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    v11 = 138543618;
    v12 = _logDescription;
    v13 = 2112;
    v14 = settingsCopy;
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ updating notification system settings = %@", &v11, 0x16u);
  }

  [(NCNotificationRootList *)self->_listModel updateNotificationSystemSettings:settingsCopy previousSystemSettings:systemSettingsCopy];
  [(NCNotificationStructuredListViewController *)self _toggleDigestOnboardingSuggestionIfNecessary];
}

- (void)notificationsLoadedForSectionIdentifier:(id)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    v8 = 138543618;
    v9 = _logDescription;
    v10 = 2114;
    v11 = identifierCopy;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ notifications loaded for section %{public}@", &v8, 0x16u);
  }

  [(NCNotificationRootList *)self->_listModel notificationsLoadedForSectionIdentifier:identifierCopy];
}

- (void)setDeviceAuthenticated:(BOOL)authenticated
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_deviceAuthenticated != authenticated)
  {
    authenticatedCopy = authenticated;
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
      v8 = 138543618;
      v9 = _logDescription;
      v10 = 1024;
      v11 = authenticatedCopy;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ setting device authenticated to %{BOOL}d", &v8, 0x12u);
    }

    self->_deviceAuthenticated = authenticatedCopy;
    if (!authenticatedCopy)
    {
      [(NCNotificationStructuredListViewController *)self _handleDeviceUnauthenticated];
    }

    [(NCNotificationRootList *)self->_listModel setDeviceAuthenticated:authenticatedCopy];
    [(NCNotificationStructuredListViewController *)self _resetSwipeInteractionWithRevealedActionsAnimated:1];
  }
}

- (void)_handleDeviceUnauthenticated
{
  if ([(NCNotificationStructuredListViewController *)self isPresentingNotificationInLongLook])
  {
    notificationViewControllerPresentingLongLook = [(NCNotificationStructuredListViewController *)self notificationViewControllerPresentingLongLook];
    notificationRequest = [notificationViewControllerPresentingLongLook notificationRequest];

    options = [notificationRequest options];
    contentPreviewSetting = [options contentPreviewSetting];

    if (contentPreviewSetting)
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
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    v6 = 138543362;
    v7 = _logDescription;
    _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ migrating notification requests", &v6, 0xCu);
  }

  [(NCNotificationRootList *)self->_listModel migrateNotificationsFromIncomingSectionToHistorySection];
}

- (void)toggleFilteringForSectionIdentifier:(id)identifier shouldFilter:(BOOL)filter
{
  filterCopy = filter;
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    v10 = @"OFF";
    *v11 = 138543874;
    *&v11[4] = _logDescription;
    if (filterCopy)
    {
      v10 = @"ON";
    }

    *&v11[12] = 2112;
    *&v11[14] = v10;
    v12 = 2114;
    v13 = identifierCopy;
    _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ turning filtering %@ for section %{public}@", v11, 0x20u);
  }

  [(NCNotificationRootList *)self->_listModel toggleFilteringForSectionIdentifier:identifierCopy shouldFilter:filterCopy, *v11];
}

- (CGSize)effectiveContentSize
{
  scrollView = [(NCNotificationStructuredListViewController *)self scrollView];
  [scrollView contentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)dismissModalFullScreenAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v37 = *MEMORY[0x277D85DE8];
  notificationViewControllerPresentingLongLook = [(NCNotificationStructuredListViewController *)self notificationViewControllerPresentingLongLook];
  headerViewInForceTouchState = [(NCNotificationStructuredListViewController *)self headerViewInForceTouchState];
  coalescingControlsHandlerInForceTouchState = [(NCNotificationStructuredListViewController *)self coalescingControlsHandlerInForceTouchState];
  v8 = coalescingControlsHandlerInForceTouchState;
  if (notificationViewControllerPresentingLongLook)
  {
    v9 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
      notificationRequest = [notificationViewControllerPresentingLongLook notificationRequest];
      notificationIdentifier = [notificationRequest notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v33 = 138543618;
      v34 = _logDescription;
      v35 = 2114;
      v36 = un_logDigest;
      _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissing presented long look for notification request %{public}@", &v33, 0x16u);
    }

    dismissModalFullScreenIfNeeded = [notificationViewControllerPresentingLongLook dismissPresentedViewControllerAnimated:animatedCopy];
    goto LABEL_14;
  }

  if (headerViewInForceTouchState)
  {
    v16 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      _logDescription2 = [(NCNotificationStructuredListViewController *)self _logDescription];
      sectionIdentifier = [headerViewInForceTouchState sectionIdentifier];
      v33 = 138543618;
      v34 = _logDescription2;
      v35 = 2114;
      v36 = sectionIdentifier;
      _os_log_impl(&dword_21E77E000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissing header view in force touch state for section %{public}@", &v33, 0x16u);
    }

    v20 = headerViewInForceTouchState;
LABEL_13:
    dismissModalFullScreenIfNeeded = [v20 dismissModalFullScreenIfNeeded];
LABEL_14:
    v24 = dismissModalFullScreenIfNeeded;
    goto LABEL_15;
  }

  if (coalescingControlsHandlerInForceTouchState)
  {
    v21 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      _logDescription3 = [(NCNotificationStructuredListViewController *)self _logDescription];
      v33 = 138543362;
      v34 = _logDescription3;
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
      _logDescription4 = [(NCNotificationStructuredListViewController *)self _logDescription];
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = 138543618;
      v34 = _logDescription4;
      v35 = 2114;
      v36 = v32;
      _os_log_impl(&dword_21E77E000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissing navigation controller of type '%{public}@'.", &v33, 0x16u);
    }

    [(NCNotificationStructuredListViewController *)self dismissViewControllerAnimated:animatedCopy completion:0];
    v24 = 1;
  }

  else
  {
    v24 = 0;
  }

LABEL_15:

  return v24;
}

- (BOOL)isContentExtensionVisible:(id)visible
{
  visibleCopy = visible;
  notificationViewControllerPresentingLongLook = [(NCNotificationStructuredListViewController *)self notificationViewControllerPresentingLongLook];
  v6 = [notificationViewControllerPresentingLongLook isContentExtensionVisible:visibleCopy];

  return v6;
}

- (BOOL)isPresentingNotificationInLongLook
{
  notificationViewControllerPresentingLongLook = [(NCNotificationStructuredListViewController *)self notificationViewControllerPresentingLongLook];
  v3 = notificationViewControllerPresentingLongLook != 0;

  return v3;
}

- (void)revealNotificationHistory:(BOOL)history animated:(BOOL)animated
{
  animatedCopy = animated;
  historyCopy = history;
  v18 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    v10 = _logDescription;
    v11 = @"HIDING";
    if (historyCopy)
    {
      v11 = @"REVEALING";
    }

    v14 = 138543618;
    v15 = _logDescription;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %@ notification history", &v14, 0x16u);
  }

  [(NCNotificationRootList *)self->_listModel revealNotificationHistory:historyCopy animated:animatedCopy];
  if (!historyCopy)
  {
    managementViewPresenter = [(NCNotificationStructuredListViewController *)self managementViewPresenter];
    [managementViewPresenter dismissManagementViewIfPresentedAnimated:0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NCModalNavigationController *)self->_modalNavigationController dismissViewControllerAnimated:animatedCopy completion:0];
    }

    optionsMenu = [(NCNotificationStructuredListViewController *)self optionsMenu];
    [optionsMenu dismissMenu];

    [(NCNotificationStructuredListViewController *)self _resetSwipeInteractionWithRevealedActionsAnimated:0];
  }

  [(NCNotificationStructuredListViewController *)self notifyContentObservers];
}

- (BOOL)isHomeAffordanceVisible
{
  notificationViewControllerPresentingLongLook = [(NCNotificationStructuredListViewController *)self notificationViewControllerPresentingLongLook];
  isCustomContentHomeAffordanceVisible = [notificationViewControllerPresentingLongLook isCustomContentHomeAffordanceVisible];

  return isCustomContentHomeAffordanceVisible;
}

- (void)setHomeAffordanceVisible:(BOOL)visible
{
  visibleCopy = visible;
  notificationViewControllerPresentingLongLook = [(NCNotificationStructuredListViewController *)self notificationViewControllerPresentingLongLook];
  [notificationViewControllerPresentingLongLook setCustomContentHomeAffordanceVisible:visibleCopy];
}

- (UIPanGestureRecognizer)homeAffordancePanGesture
{
  notificationViewControllerPresentingLongLook = [(NCNotificationStructuredListViewController *)self notificationViewControllerPresentingLongLook];
  customContentHomeAffordanceGestureRecognizer = [notificationViewControllerPresentingLongLook customContentHomeAffordanceGestureRecognizer];

  return customContentHomeAffordanceGestureRecognizer;
}

- (void)setHomeAffordancePanGesture:(id)gesture
{
  gestureCopy = gesture;
  notificationViewControllerPresentingLongLook = [(NCNotificationStructuredListViewController *)self notificationViewControllerPresentingLongLook];
  [notificationViewControllerPresentingLongLook setCustomContentHomeAffordanceGestureRecognizer:gestureCopy];
}

- (BOOL)interpretsViewAsContent:(id)content
{
  v20 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  if (contentCopy && ([(NCNotificationStructuredListViewController *)self view], v5 = objc_claimAutoreleasedReturnValue(), v6 = [(NCNotificationModernListView *)contentCopy isDescendantOfView:v5], v5, v6) && self->_listView != contentCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    notificationSections = [(NCNotificationRootList *)self->_listModel notificationSections];
    v8 = [notificationSections countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(notificationSections);
          }

          listView = [*(*(&v15 + 1) + 8 * i) listView];

          if (listView == contentCopy)
          {
            v13 = 0;
            goto LABEL_16;
          }
        }

        v9 = [notificationSections countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)insertSupplementaryViewsContainerAtListPosition:(unint64_t)position identifier:(id)identifier withDescription:(id)description
{
  descriptionCopy = description;
  identifierCopy = identifier;
  [(NCNotificationStructuredListViewController *)self loadViewIfNeeded];
  v10 = [(NCNotificationRootList *)self->_listModel insertSupplementaryViewsContainerAtListPosition:position identifier:identifierCopy withDescription:descriptionCopy];

  return v10;
}

- (void)setNotificationListExpandsVisibleRegionOnSignificantScroll:(BOOL)scroll
{
  [(NCNotificationRootList *)self->_listModel setExpandsVisibleRegionOnSignificantScroll:scroll];
  listModel = self->_listModel;
  view = [(NCNotificationStructuredListViewController *)self view];
  [view frame];
  [(NCNotificationRootList *)listModel updateListViewVisibleRectForSize:v5, v6];
}

- (void)invalidateContentInsets
{
  view = [(NCNotificationStructuredListViewController *)self view];
  [view frame];
  [(NCNotificationStructuredListViewController *)self _updateListEdgeInsetsForSize:v3, v4];
}

- (void)updateGlassContentInterfaceStyleToUserInterfaceStyle:(int64_t)style glassLuminanceValue:(double)value wallpaperLuminanceValue:(double)luminanceValue
{
  v42 = *MEMORY[0x277D85DE8];
  traitCollection = [(NCNotificationStructuredListViewController *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == style)
  {
    traitCollection2 = [(NCNotificationStructuredListViewController *)self traitCollection];
    [traitCollection2 glassLuminanceValue];
    v12 = v11;

    if (v12 == value)
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
    overrideUserInterfaceStyle = [(NCNotificationModernListView *)listView overrideUserInterfaceStyle];
    traitCollection3 = [(NCNotificationModernListView *)self->_listView traitCollection];
    [traitCollection3 glassLuminanceValue];
    *buf = 134219008;
    styleCopy = style;
    v34 = 2048;
    valueCopy = value;
    v36 = 2048;
    luminanceValueCopy = luminanceValue;
    v38 = 2048;
    v39 = overrideUserInterfaceStyle;
    v40 = 2048;
    v41 = v18;
    _os_log_impl(&dword_21E77E000, v15, OS_LOG_TYPE_DEFAULT, "GlassContentInterfaceStyle update to userInterfaceStyle: %ld; glassLuminanceValue: %.2f; wallpaperLuminanceValue: %.2f; currentOverrideUserInterfaceStyle: %ld; currentLuminanceValue: %.2f", buf, 0x34u);
  }

  traitOverrides = [(NCNotificationStructuredListViewController *)self traitOverrides];
  v20 = traitOverrides;
  if (style)
  {
    [traitOverrides setUserInterfaceStyle:style];
  }

  else
  {
    v21 = objc_opt_self();
    [v20 removeTrait:v21];
  }

  traitOverrides2 = [(NCNotificationStructuredListViewController *)self traitOverrides];
  [traitOverrides2 setCGFloatValue:objc_opt_class() forTrait:value];

  [(NCNotificationStructuredListViewController *)self updateTraitsIfNeeded];
  view = [(NCNotificationStructuredListViewController *)self view];
  [view setNeedsLayout];

  view2 = [(NCNotificationStructuredListViewController *)self view];
  [view2 layoutIfNeeded];

LABEL_11:
  traitCollection4 = [(NCNotificationStructuredListViewController *)self traitCollection];
  v26 = _NCStringFromUserInterfaceStyle([traitCollection4 userInterfaceStyle]);
  [NCListDebugHUDModelBridge plotString:v26 label:@"userInterfaceStyle" inListView:0];

  v27 = objc_alloc(MEMORY[0x277CCACA8]);
  traitCollection5 = [(NCNotificationStructuredListViewController *)self traitCollection];
  [traitCollection5 glassLuminanceValue];
  v30 = [v27 initWithFormat:@"%.2f", v29];
  [NCListDebugHUDModelBridge plotString:v30 label:@"glassLuminanceValue" inListView:0];

  v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%.2f", *&luminanceValue];
  [NCListDebugHUDModelBridge plotString:v31 label:@"wallpaperLuminance" inListView:0];
}

- (void)addContentObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:0];
    v7 = self->_observers;
    self->_observers = v6;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)removeContentObserver:(id)observer
{
  observerCopy = observer;
  if ([(NSHashTable *)self->_observers containsObject:?])
  {
    [(NSHashTable *)self->_observers removeObject:observerCopy];
  }
}

- (void)notificationStructuredListView:(id)view didChangeFooterCenterY:(double)y
{
  listView = [(NCNotificationStructuredListViewController *)self listView];
  *&v5 = y;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [listView setFooterCenterY:v6];
}

- (void)adjustForLegibilitySettingsChange:(id)change
{
  listModel = self->_listModel;
  changeCopy = change;
  [(NCNotificationRootList *)listModel adjustForLegibilitySettingsChange:changeCopy];
  countIndicatorViewController = [(NCNotificationStructuredListViewController *)self countIndicatorViewController];
  [countIndicatorViewController adjustForLegibilitySettingsChange:changeCopy];

  _listViewContainer = [(NCNotificationStructuredListViewController *)self _listViewContainer];
  [_listViewContainer adjustForLegibilitySettingsChange:changeCopy];
}

- (id)containerViewForPreviewInteractionPresentedContentForNotificationListBaseComponent:(id)component
{
  nc_presentationContextDefiningViewController = [(UIViewController *)self nc_presentationContextDefiningViewController];
  view = [nc_presentationContextDefiningViewController view];
  superview = [view superview];

  return superview;
}

- (BOOL)shouldHintDefaultActionForNotificationListBaseComponent:(id)component
{
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [delegate notificationStructuredListViewControllerShouldHintForDefaultAction:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)legibilitySettingsForNotificationListBaseComponent:(id)component
{
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [delegate legibilitySettingsForNotificationStructuredListViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)notificationListBaseComponentDidSignificantUserInteraction:(id)interaction
{
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v5 notificationStructuredListViewControllerDidSignificantUserInteraction:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notificationListBaseComponent:(id)component didBeginUserInteractionWithViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self didBeginUserInteractionWithViewController:controllerCopy];
  }
}

- (void)notificationListBaseComponent:(id)component didEndUserInteractionWithViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self didEndUserInteractionWithViewController:controllerCopy];
  }
}

- (void)notificationListBaseComponent:(id)component didAddViewController:(id)controller
{
  controllerCopy = controller;
  parentViewController = [controllerCopy parentViewController];

  if (parentViewController != self)
  {
    [(NCNotificationStructuredListViewController *)self addChildViewController:controllerCopy];
    [controllerCopy didMoveToParentViewController:self];
  }
}

- (void)notificationListBaseComponent:(id)component didRemoveViewController:(id)controller
{
  controllerCopy = controller;
  parentViewController = [controllerCopy parentViewController];

  if (parentViewController == self)
  {
    [controllerCopy removeFromParentViewController];
    [controllerCopy didMoveToParentViewController:0];
  }
}

- (void)notificationListBaseComponent:(id)component requestsModalPresentationOfNavigationController:(id)controller sender:(id)sender animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  senderCopy = sender;
  controllerCopy = controller;
  [controllerCopy setPresenterDelegate:self];
  [(NCNotificationStructuredListViewController *)self _presentNavigationControllerAndBeginModalInteraction:controllerCopy sender:senderCopy animated:animatedCopy completion:completionCopy];
}

- (void)notificationListBaseComponent:(id)component requestsClearingPresentables:(id)presentables
{
  v5 = MEMORY[0x277CBEB58];
  presentablesCopy = presentables;
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
  [presentablesCopy enumerateObjectsUsingBlock:&v12];

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

- (void)notificationListBaseComponent:(id)component didTransitionActionsForSwipeInteraction:(id)interaction revealed:(BOOL)revealed
{
  interactionCopy = interaction;
  v7 = interactionCopy;
  if (!revealed)
  {
    optionsMenu = [(NCNotificationStructuredListViewController *)self optionsMenu];
    [optionsMenu dismissMenu];

    v7 = 0;
  }

  touchEaterManager = [(NCNotificationStructuredListViewController *)self touchEaterManager];
  [touchEaterManager setSwipeInteractionInRevealedState:v7];
}

- (void)notificationListBaseComponent:(id)component didTransitionCoalescingControlsHandler:(id)handler toClearState:(BOOL)state
{
  stateCopy = state;
  handlerCopy = handler;
  touchEaterManager = [(NCNotificationStructuredListViewController *)self touchEaterManager];
  v10 = touchEaterManager;
  if (stateCopy)
  {
    v9 = handlerCopy;
  }

  else
  {
    v9 = 0;
  }

  [touchEaterManager setCoalescingControlsHandlerInClearState:v9];
}

- (void)notificationListBaseComponent:(id)component didPresentCoalescingControlsHandler:(id)handler inForceTouchState:(BOOL)state
{
  if (!state)
  {
    handler = 0;
  }

  objc_storeWeak(&self->_coalescingControlsHandlerInForceTouchState, handler);
}

- (void)notificationListComponent:(id)component requestsClearingNotificationRequestsInSections:(id)sections
{
  sectionsCopy = sections;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self requestsClearingNotificationRequestsInSections:sectionsCopy];
  }
}

- (void)notificationListComponent:(id)component didTransitionSectionHeaderView:(id)view toClearState:(BOOL)state
{
  stateCopy = state;
  viewCopy = view;
  touchEaterManager = [(NCNotificationStructuredListViewController *)self touchEaterManager];
  v10 = touchEaterManager;
  if (stateCopy)
  {
    v9 = viewCopy;
  }

  else
  {
    v9 = 0;
  }

  [touchEaterManager setHeaderViewInClearState:v9];
}

- (void)notificationListComponent:(id)component requestPermissionToExecuteAction:(id)action forNotificationRequest:(id)request withParameters:(id)parameters completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  requestCopy = request;
  parametersCopy = parameters;
  completionCopy = completion;
  v15 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    identifier = [actionCopy identifier];
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v22 = 138543874;
    v23 = _logDescription;
    v24 = 2114;
    v25 = identifier;
    v26 = 2114;
    v27 = un_logDigest;
    _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ requests permission to execute action %{public}@ for notification request %{public}@", &v22, 0x20u);
  }

  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  [delegate notificationStructuredListViewController:self requestPermissionToExecuteAction:actionCopy forNotificationRequest:requestCopy withParameters:parametersCopy completion:completionCopy];
}

- (void)notificationListComponent:(id)component requestsExecuteAction:(id)action forNotificationRequest:(id)request requestAuthentication:(BOOL)authentication withParameters:(id)parameters completion:(id)completion
{
  authenticationCopy = authentication;
  v31 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  requestCopy = request;
  parametersCopy = parameters;
  completionCopy = completion;
  v17 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    [(NCNotificationStructuredListViewController *)self _logDescription];
    v19 = v24 = authenticationCopy;
    identifier = [actionCopy identifier];
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    *buf = 138543874;
    v26 = v19;
    v27 = 2114;
    v28 = identifier;
    v29 = 2114;
    v30 = un_logDigest;
    _os_log_impl(&dword_21E77E000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ requests executing action %{public}@ for notification request %{public}@", buf, 0x20u);

    authenticationCopy = v24;
  }

  [(NCNotificationManagementViewPresenter *)self->_managementViewPresenter dismissManagementViewIfPresentedAnimated:1];
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  [delegate notificationStructuredListViewController:self requestsExecuteAction:actionCopy forNotificationRequest:requestCopy requestAuthentication:authenticationCopy withParameters:parametersCopy completion:completionCopy];
}

- (void)notificationListComponent:(id)component willDismissLongLookForCancelActionForViewController:(id)controller
{
  v13 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v6 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    v9 = 138543618;
    v10 = _logDescription;
    v11 = 2114;
    v12 = controllerCopy;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ will dismiss long look for cancel action for view controller %{public}@", &v9, 0x16u);
  }

  [(NCNotificationManagementViewPresenter *)self->_managementViewPresenter dismissManagementViewIfPresentedAnimated:1];
}

- (BOOL)notificationListComponent:(id)component shouldAllowInteractionsForNotificationRequest:(id)request
{
  requestCopy = request;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [delegate notificationStructuredListViewController:self shouldAllowInteractionsForNotificationRequest:requestCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)notificationListComponent:(id)component containerViewProviderForExpandedContentForViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained notificationStructuredListViewController:self containerViewProviderForExpandedContentForViewController:controllerCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)notificationListComponent:(id)component shouldFinishLongLookTransitionForNotificationRequest:(id)request trigger:(int64_t)trigger withCompletionBlock:(id)block
{
  blockCopy = block;
  requestCopy = request;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  [delegate notificationStructuredListViewController:self shouldFinishLongLookTransitionForNotificationRequest:requestCopy trigger:trigger withCompletionBlock:blockCopy];
}

- (void)notificationListComponent:(id)component isPresentingLongLookForViewController:(id)controller
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  notificationViewControllerPresentingLongLook = [(NCNotificationStructuredListViewController *)self notificationViewControllerPresentingLongLook];
  if (notificationViewControllerPresentingLongLook == controllerCopy)
  {
    goto LABEL_17;
  }

  v7 = MEMORY[0x277D77DD0];
  v8 = *MEMORY[0x277D77DD0];
  v9 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
  if (controllerCopy)
  {
    if (!v9)
    {
      goto LABEL_8;
    }

    v10 = v8;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    notificationRequest = [controllerCopy notificationRequest];
    notificationIdentifier = [notificationRequest notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    *v24 = 138543618;
    *&v24[4] = _logDescription;
    *&v24[12] = 2114;
    *&v24[14] = un_logDigest;
    v15 = "%{public}@ presenting long look for notification request %{public}@";
  }

  else
  {
    if (!v9)
    {
      goto LABEL_8;
    }

    v10 = v8;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    notificationRequest = [notificationViewControllerPresentingLongLook notificationRequest];
    notificationIdentifier = [notificationRequest notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    *v24 = 138543618;
    *&v24[4] = _logDescription;
    *&v24[12] = 2114;
    *&v24[14] = un_logDigest;
    v15 = "%{public}@ dismissed long look for notification request %{public}@";
  }

  _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, v15, v24, 0x16u);

LABEL_8:
  [(NCNotificationStructuredListViewController *)self setNotificationViewControllerPresentingLongLook:controllerCopy, *v24, *&v24[16], v25];
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self isPresentingLongLookForViewController:controllerCopy];
  }

  notificationRequestRemovedWhilePresentingLongLook = [(NCNotificationStructuredListViewController *)self notificationRequestRemovedWhilePresentingLongLook];
  v18 = notificationRequestRemovedWhilePresentingLongLook;
  if (!controllerCopy && notificationRequestRemovedWhilePresentingLongLook)
  {
    v19 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      _logDescription2 = [(NCNotificationStructuredListViewController *)self _logDescription];
      notificationIdentifier2 = [v18 notificationIdentifier];
      un_logDigest2 = [notificationIdentifier2 un_logDigest];
      *v24 = 138543618;
      *&v24[4] = _logDescription2;
      *&v24[12] = 2114;
      *&v24[14] = un_logDigest2;
      _os_log_impl(&dword_21E77E000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ removing notification request %{public}@ on long look dismissal", v24, 0x16u);
    }

    [(NCNotificationStructuredListViewController *)self removeNotificationRequest:v18];
    [(NCNotificationStructuredListViewController *)self setNotificationRequestRemovedWhilePresentingLongLook:0];
  }

LABEL_17:
}

- (void)notificationListComponent:(id)component didPresentSectionHeaderView:(id)view inForceTouchState:(BOOL)state
{
  if (!state)
  {
    view = 0;
  }

  objc_storeWeak(&self->_headerViewInForceTouchState, view);
}

- (void)notificationListComponent:(id)component requestsPresentingManagementViewForNotificationRequest:(id)request managementViewType:(unint64_t)type withPresentingView:(id)view completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  componentCopy = component;
  requestCopy = request;
  viewCopy = view;
  completionCopy = completion;
  v15 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    sectionIdentifier = [requestCopy sectionIdentifier];
    *buf = 138544130;
    v30 = _logDescription;
    v31 = 2114;
    v32 = un_logDigest;
    v33 = 2114;
    v34 = sectionIdentifier;
    v35 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ requests presenting management view for notification request %{public}@ for section %{public}@ with type %ld", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __176__NCNotificationStructuredListViewController_notificationListComponent_requestsPresentingManagementViewForNotificationRequest_managementViewType_withPresentingView_completion___block_invoke;
  v25[3] = &unk_2783720F0;
  objc_copyWeak(v28, buf);
  v28[1] = type;
  v21 = requestCopy;
  v26 = v21;
  v22 = viewCopy;
  v27 = v22;
  [(NCNotificationStructuredListViewController *)self _requestAuthenticationAndPerformBlock:v25];
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewControllerDidSignificantUserInteraction:self];
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

- (void)notificationListComponent:(id)component requestsPresentingOptionsMenuForNotificationRequest:(id)request presentingViewProvider:(id)provider optionsForSection:(BOOL)section completion:(id)completion
{
  sectionCopy = section;
  v42 = *MEMORY[0x277D85DE8];
  componentCopy = component;
  requestCopy = request;
  providerCopy = provider;
  completionCopy = completion;
  v15 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    sectionIdentifier = [requestCopy sectionIdentifier];
    *buf = 138544130;
    v35 = _logDescription;
    v36 = 2114;
    v37 = un_logDigest;
    v38 = 2114;
    v39 = sectionIdentifier;
    v40 = 1024;
    v41 = sectionCopy;
    _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ requests presenting options menu for notification request %{public}@ for section %{public}@ [optionsForSection=%{BOOL}d]", buf, 0x26u);
  }

  objc_initWeak(buf, self);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __176__NCNotificationStructuredListViewController_notificationListComponent_requestsPresentingOptionsMenuForNotificationRequest_presentingViewProvider_optionsForSection_completion___block_invoke;
  v27[3] = &unk_278372140;
  objc_copyWeak(&v32, buf);
  v33 = sectionCopy;
  v21 = componentCopy;
  v28 = v21;
  v22 = providerCopy;
  v30 = v22;
  v23 = requestCopy;
  v29 = v23;
  v24 = completionCopy;
  v31 = v24;
  [(NCNotificationStructuredListViewController *)self _requestAuthenticationAndPerformBlock:v27];
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewControllerDidSignificantUserInteraction:self];
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

- (void)notificationListComponent:(id)component setMuted:(BOOL)muted untilDate:(id)date forSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier
{
  mutedCopy = muted;
  dateCopy = date;
  identifierCopy = identifier;
  threadIdentifierCopy = threadIdentifier;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self setMuted:mutedCopy untilDate:dateCopy forSectionIdentifier:identifierCopy threadIdentifier:threadIdentifierCopy];
  }
}

- (void)notificationListComponent:(id)component setScheduledDelivery:(BOOL)delivery forSectionIdentifier:(id)identifier
{
  deliveryCopy = delivery;
  identifierCopy = identifier;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self setScheduledDelivery:deliveryCopy forSectionIdentifier:identifierCopy];
  }
}

- (void)notificationListComponent:(id)component setAllowsTimeSensitive:(BOOL)sensitive forSectionIdentifier:(id)identifier
{
  sensitiveCopy = sensitive;
  identifierCopy = identifier;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self setAllowsTimeSensitive:sensitiveCopy forSectionIdentifier:identifierCopy];
  }
}

- (void)notificationListComponent:(id)component setAllowsDirectMessages:(BOOL)messages forSectionIdentifier:(id)identifier
{
  messagesCopy = messages;
  identifierCopy = identifier;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self setAllowsDirectMessages:messagesCopy forSectionIdentifier:identifierCopy];
  }
}

- (id)notificationListComponent:(id)component notificationRequestForUUID:(id)d
{
  dCopy = d;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [delegate notificationStructuredListViewController:self notificationRequestForUUID:dCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)notificationListComponent:(id)component isClockNotificationRequest:(id)request
{
  requestCopy = request;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [delegate notificationStructuredListViewController:self isClockNotificationRequest:requestCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)notificationListComponent:(id)component requestsAuthenticationAndPerformBlock:(id)block
{
  blockCopy = block;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  [delegate notificationStructuredListViewController:self requestsAuthenticationAndPerformBlock:blockCopy];
}

- (id)notificationUsageTrackingStateForNotificationListComponent:(id)component
{
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [delegate notificationUsageTrackingStateForNotificationStructuredListViewController:self];
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

- (id)notificationListComponent:(id)component keyboardAssertionForGestureWindow:(id)window
{
  windowCopy = window;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [delegate notificationStructuredListViewController:self keyboardAssertionForGestureWindow:windowCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)hideHomeAffordanceAnimationSettingsForNotificationListComponent:(id)component
{
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [delegate hideHomeAffordanceAnimationSettingsForNotificationStructuredListViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)unhideHomeAffordanceAnimationSettingsForNotificationListComponent:(id)component
{
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [delegate unhideHomeAffordanceAnimationSettingsForNotificationStructuredListViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)settleHomeAffordanceAnimationBehaviorDescriptionForNotificationListComponent:(id)component
{
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [delegate settleHomeAffordanceAnimationBehaviorDescriptionForNotificationStructuredListViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)notificationListComponentShouldAllowLongPressGesture:(id)gesture
{
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate notificationStructuredListViewControllerShouldAllowLongPressGesture:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)notificationListComponent:(id)component acceptedSummaryOnboarding:(BOOL)onboarding
{
  onboardingCopy = onboarding;
  v26 = *MEMORY[0x277D85DE8];
  componentCopy = component;
  v7 = *MEMORY[0x277D77DD0];
  v8 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
  if (onboardingCopy)
  {
    if (v8)
    {
      v9 = v7;
      _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
      v24 = 138543362;
      v25 = _logDescription;
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ presenting digest onboarding flow", &v24, 0xCu);
    }

    digestOnboardingSuggestionClient = [(NCNotificationStructuredListViewController *)self digestOnboardingSuggestionClient];
    digestOnboardingSuggestion = [(NCNotificationStructuredListViewController *)self digestOnboardingSuggestion];
    [digestOnboardingSuggestionClient userAcceptedDigestOnboardingSuggestion:digestOnboardingSuggestion];

    digestOnboardingSuggestionLogging = [(NCNotificationStructuredListViewController *)self digestOnboardingSuggestionLogging];
    date = [MEMORY[0x277CBEAA8] date];
    digestOnboardingSuggestionPresentationTime = [(NCNotificationStructuredListViewController *)self digestOnboardingSuggestionPresentationTime];
    [date timeIntervalSinceDate:digestOnboardingSuggestionPresentationTime];
    [digestOnboardingSuggestionLogging logDigestOnboardingSuggestionWithOutcome:1 timeToResolution:?];

    v16 = NCUserNotificationsUIKitFrameworkBundle();
    v17 = [v16 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_INTRODUCTION_DISMISS_BUTTON" value:&stru_282FE84F8 table:0];
    v18 = [NCDigestOnboardingNavigationController navigationControllerWithOnboardingDelegate:self deferButtonText:v17 previousBundleIdentifiersSelection:self->_digestOnboardingLastBundleIdentifiersSelection previousDeliveryTimesSelection:self->_digestOnboardingLastScheduledDeliveryTimesSelection];

    [(NCNotificationStructuredListViewController *)self _presentNavigationControllerAndBeginModalInteraction:v18 sender:componentCopy animated:1 completion:0];
  }

  else
  {
    if (v8)
    {
      v19 = v7;
      _logDescription2 = [(NCNotificationStructuredListViewController *)self _logDescription];
      v24 = 138543362;
      v25 = _logDescription2;
      _os_log_impl(&dword_21E77E000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissing digest onboarding suggestion", &v24, 0xCu);
    }

    digestOnboardingSuggestionLogging2 = [(NCNotificationStructuredListViewController *)self digestOnboardingSuggestionLogging];
    date2 = [MEMORY[0x277CBEAA8] date];
    digestOnboardingSuggestionPresentationTime2 = [(NCNotificationStructuredListViewController *)self digestOnboardingSuggestionPresentationTime];
    [date2 timeIntervalSinceDate:digestOnboardingSuggestionPresentationTime2];
    [digestOnboardingSuggestionLogging2 logDigestOnboardingSuggestionWithOutcome:0 timeToResolution:?];

    [(NCNotificationRootList *)self->_listModel setOnboardingSummaryVisible:0];
  }
}

- (void)notificationListComponent:(id)component requestsStackSummarySuggestionVisible:(BOOL)visible forRequest:(id)request
{
  visibleCopy = visible;
  listModel = self->_listModel;
  requestCopy = request;
  suggestionManager = [(NCNotificationRootList *)listModel suggestionManager];
  [suggestionManager requestStackSummarySuggestionVisible:visibleCopy forRequest:requestCopy];
}

- (Class)notificationRootListNotificationViewControllerClass:(id)class
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

- (void)notificationRootList:(id)list requestsClearingFromIncomingSectionNotificationRequests:(id)requests
{
  requestsCopy = requests;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  [delegate notificationStructuredListViewController:self requestsClearingFromIncomingSectionNotificationRequests:requestsCopy];
}

- (void)notificationRootListDidUpdateVisibleContentExtent:(id)extent
{
  [(NCNotificationRootList *)self->_listModel aggregatedVisibleContentExtent];
  [NCListDebugHUDModelBridge plotRect:@"aggregatedVisibleContentExtent" label:?];
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v5 notificationStructuredListViewControllerDidUpdateVisibleContentExtent:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (BOOL)notificationRootListShouldAllowNotificationHistoryReveal:(id)reveal
{
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [delegate notificationStructuredListViewControllerShouldAllowNotificationHistoryReveal:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)notificationRootList:(id)list scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate scrollViewWillBeginDragging:draggingCopy];
  }
}

- (void)notificationRootList:(id)list scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if ([scrollCopy isTracking] && delegate)
  {
    if (objc_opt_respondsToSelector())
    {
      [delegate notificationStructuredListViewControllerDidSignificantUserInteraction:self];
    }
  }

  else if (!delegate)
  {
    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate scrollViewDidScroll:scrollCopy];
  }

LABEL_8:
  isTracking = [scrollCopy isTracking];
  _listViewContainer = [(NCNotificationStructuredListViewController *)self _listViewContainer];
  v8 = _listViewContainer;
  if (isTracking)
  {
    listView = [(NCNotificationStructuredListViewController *)self listView];
    distanceScrolledBeyondBottomOfContent = [listView distanceScrolledBeyondBottomOfContent];
    [v8 setDistanceScrolledBeyondBottomOfContent:distanceScrolledBeyondBottomOfContent];
  }

  else
  {
    [_listViewContainer setDistanceScrolledBeyondBottomOfContent:0];
  }
}

- (void)notificationRootList:(id)list scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:{x, y}];
  }

  _listViewContainer = [(NCNotificationStructuredListViewController *)self _listViewContainer];
  [_listViewContainer setDistanceScrolledBeyondBottomOfContent:0];
}

- (BOOL)requiresPushOffManagementForNotificationRootList:(id)list
{
  traitCollection = [(NCNotificationStructuredListViewController *)self traitCollection];
  v4 = _NCIsNotVerticalSpaceConstrained(traitCollection);

  return v4;
}

- (double)cutoffOffsetForNotificationRootList:(id)list
{
  v3 = 0.0;
  if (self->_listModel == list)
  {
    delegate = [(NCNotificationStructuredListViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate clippingOffsetForNotificationStructuredListViewController:self];
      v3 = v6;
    }
  }

  return v3;
}

- (BOOL)notificationRootList:(id)list shouldFilterNotificationRequest:(id)request
{
  requestCopy = request;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [delegate notificationStructuredListViewController:self shouldFilterNotificationRequest:requestCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)notificationRootListAreHighlightsEnabled:(id)enabled
{
  _notificationSystemSettings = [(NCNotificationStructuredListViewController *)self _notificationSystemSettings];
  areHighlightsEnabled = [_notificationSystemSettings areHighlightsEnabled];

  return areHighlightsEnabled;
}

- (void)notificationListComponent:(id)component setNotificationSystemSettings:(id)settings
{
  settingsCopy = settings;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self setNotificationSystemSettings:settingsCopy];
  }
}

- (void)notificationRootListWillExpandNotificationListCount:(id)count
{
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v5 notificationStructuredListViewControllerWillExpandNotificationListCount:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notificationRootList:(id)list didUpdateNotificationsVisibilityInViewport:(BOOL)viewport
{
  viewportCopy = viewport;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate)
  {
    v7 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v7 notificationStructuredListViewController:self didUpdateNotificationsVisibilityInViewport:viewportCopy];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notificationRootList:(id)list isNotificationsHistoryRevealed:(BOOL)revealed
{
  revealedCopy = revealed;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate)
  {
    v7 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v7 notificationStructuredListViewController:self isNotificationsHistoryRevealed:revealedCopy];
    }
  }

  MEMORY[0x2821F9730]();
}

- (id)notificationRootListRequestsDiagnosticsDictionary:(id)dictionary
{
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [delegate notificationStructuredListViewControllerRequestsDiagnosticsDictionary:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)notificationOptionsMenuWillDismiss:(id)dismiss
{
  [(NCNotificationListTouchEaterManager *)self->_touchEaterManager setEnabled:1];

  [(NCNotificationStructuredListViewController *)self _resetSwipeInteractionWithRevealedActionsAnimated:1];
}

- (void)notificationOptionsMenu:(id)menu setAllowsNotifications:(BOOL)notifications forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  notificationsCopy = notifications;
  v28 = *MEMORY[0x277D85DE8];
  menuCopy = menu;
  requestCopy = request;
  identifierCopy = identifier;
  v13 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v20 = 138544130;
    v21 = _logDescription;
    v22 = 1024;
    v23 = notificationsCopy;
    v24 = 2114;
    v25 = un_logDigest;
    v26 = 2114;
    v27 = identifierCopy;
    _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ set allows notifications = %{BOOL}d for notification request %{public}@ and section identifier %{public}@", &v20, 0x26u);
  }

  suggestionManager = [(NCNotificationRootList *)self->_listModel suggestionManager];
  [suggestionManager logResponseForNotificationRequest:requestCopy allowsNotifications:notificationsCopy];

  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self setAllowsNotifications:notificationsCopy forSectionIdentifier:identifierCopy];
  }
}

- (void)notificationOptionsMenu:(id)menu setAllowsCriticalAlerts:(BOOL)alerts forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  alertsCopy = alerts;
  v27 = *MEMORY[0x277D85DE8];
  menuCopy = menu;
  requestCopy = request;
  identifierCopy = identifier;
  v13 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v19 = 138544130;
    v20 = _logDescription;
    v21 = 1024;
    v22 = alertsCopy;
    v23 = 2114;
    v24 = un_logDigest;
    v25 = 2114;
    v26 = identifierCopy;
    _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ set allows critical alerts = %{BOOL}d for notification request %{public}@ and section identifier %{public}@", &v19, 0x26u);
  }

  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self setAllowsCriticalAlerts:alertsCopy forSectionIdentifier:identifierCopy];
  }
}

- (void)notificationOptionsMenu:(id)menu setMuted:(BOOL)muted untilDate:(id)date forNotificationRequest:(id)request withSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier
{
  mutedCopy = muted;
  dateCopy = date;
  identifierCopy = identifier;
  threadIdentifierCopy = threadIdentifier;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self setMuted:mutedCopy untilDate:dateCopy forSectionIdentifier:identifierCopy threadIdentifier:threadIdentifierCopy];
  }
}

- (void)notificationOptionsMenu:(id)menu setAllowsTimeSensitive:(BOOL)sensitive forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  sensitiveCopy = sensitive;
  v28 = *MEMORY[0x277D85DE8];
  menuCopy = menu;
  requestCopy = request;
  identifierCopy = identifier;
  v13 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v20 = 138544130;
    v21 = _logDescription;
    v22 = 1024;
    v23 = sensitiveCopy;
    v24 = 2114;
    v25 = un_logDigest;
    v26 = 2114;
    v27 = identifierCopy;
    _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ set allows time sensitive notifications = %{BOOL}d for notification request %{public}@ and section identifier %{public}@", &v20, 0x26u);
  }

  suggestionManager = [(NCNotificationRootList *)self->_listModel suggestionManager];
  [suggestionManager logResponseForNotificationRequest:requestCopy allowsTimeSensitive:sensitiveCopy];

  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self setAllowsTimeSensitive:sensitiveCopy forSectionIdentifier:identifierCopy];
  }
}

- (void)notificationOptionsMenu:(id)menu setScheduledDelivery:(BOOL)delivery forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  deliveryCopy = delivery;
  identifierCopy = identifier;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self setScheduledDelivery:deliveryCopy forSectionIdentifier:identifierCopy];
  }
}

- (void)notificationOptionsMenu:(id)menu addSenderToContactsForNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  requestCopy = request;
  content = [requestCopy content];
  communicationContext = [content communicationContext];

  sender = [communicationContext sender];
  if (sender)
  {
    contentURL = [communicationContext contentURL];
    if (contentURL)
    {
      v10 = [MEMORY[0x277D77F48] imageDataForContentURL:contentURL];
    }

    else
    {
      v10 = 0;
    }

    topLevelSectionIdentifier = [requestCopy topLevelSectionIdentifier];
    v12 = [NCCreateContactNavigationViewController navigationControllerWithContact:sender bundleIdentifier:topLevelSectionIdentifier imageData:v10 presenterDelegate:self];

    [(NCNotificationStructuredListViewController *)self _presentNavigationControllerAndBeginModalInteraction:v12 sender:sender animated:1 completion:0];
  }
}

- (void)notificationOptionsMenu:(id)menu requestsClearingSectionWithIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  notificationListComponentPresentingOptionsMenu = [(NCNotificationStructuredListViewController *)self notificationListComponentPresentingOptionsMenu];
  if (notificationListComponentPresentingOptionsMenu)
  {
    v7 = objc_opt_class();
    v8 = notificationListComponentPresentingOptionsMenu;
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

    sectionIdentifier = [v10 sectionIdentifier];
    v12 = [identifierCopy isEqualToString:sectionIdentifier];

    if (v12)
    {
      v13 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
        logDescription = [v10 logDescription];
        v17 = 138543618;
        v18 = _logDescription;
        v19 = 2114;
        v20 = logDescription;
        _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ clearing all notifications for app section %{public}@ triggered from options menu", &v17, 0x16u);
      }

      [v10 clearAll];
      [(NCNotificationStructuredListViewController *)self setNotificationListComponentPresentingOptionsMenu:0];
    }
  }
}

- (BOOL)notificationOptionsMenu:(id)menu isDisplayingStackSummaryForNotificationRequest:(id)request
{
  listModel = self->_listModel;
  requestCopy = request;
  v6 = [(NCNotificationRootList *)listModel _sectionContainsNotificationRequest:requestCopy];
  v7 = [v6 isShowingSummarizedStackForNotificationRequest:requestCopy];

  return v7;
}

- (BOOL)notificationOptionsMenu:(id)menu isInPrioritySection:(id)section
{
  v4 = [(NCNotificationRootList *)self->_listModel _sectionContainsNotificationRequest:section];
  v5 = [v4 sectionType] == 10;

  return v5;
}

- (void)modalNavigationControllerDidDismiss:(id)dismiss
{
  v16 = *MEMORY[0x277D85DE8];
  dismissCopy = dismiss;
  if (self->_modalNavigationController == dismissCopy)
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v12 = 138543618;
      v13 = _logDescription;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ ending lock screen interaction for dismissed navigation navigation controller of type '%{public}@'.", &v12, 0x16u);
    }

    delegate = [(NCNotificationStructuredListViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate notificationStructuredListViewControllerDidEndUserInteraction:self];
    }

    modalNavigationController = self->_modalNavigationController;
    self->_modalNavigationController = 0;
  }
}

- (void)createContactNavigationControllerDidComplete:(id)complete
{
  suggestionManager = [(NCNotificationRootList *)self->_listModel suggestionManager];
  [suggestionManager reloadContactSuggestions];
}

- (void)notificationManagementViewPresenter:(id)presenter setAllowsNotifications:(BOOL)notifications forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  notificationsCopy = notifications;
  v28 = *MEMORY[0x277D85DE8];
  presenterCopy = presenter;
  requestCopy = request;
  identifierCopy = identifier;
  v13 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v20 = 138544130;
    v21 = _logDescription;
    v22 = 1024;
    v23 = notificationsCopy;
    v24 = 2114;
    v25 = un_logDigest;
    v26 = 2114;
    v27 = identifierCopy;
    _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ set allows notifications = %{BOOL}d for notification request %{public}@ and section identifier %{public}@", &v20, 0x26u);
  }

  suggestionManager = [(NCNotificationRootList *)self->_listModel suggestionManager];
  [suggestionManager logResponseForNotificationRequest:requestCopy allowsNotifications:notificationsCopy];

  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self setAllowsNotifications:notificationsCopy forSectionIdentifier:identifierCopy];
  }
}

- (void)notificationManagementViewPresenter:(id)presenter setDeliverQuietly:(BOOL)quietly forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  quietlyCopy = quietly;
  v28 = *MEMORY[0x277D85DE8];
  presenterCopy = presenter;
  requestCopy = request;
  identifierCopy = identifier;
  v13 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v20 = 138544130;
    v21 = _logDescription;
    v22 = 1024;
    v23 = quietlyCopy;
    v24 = 2114;
    v25 = un_logDigest;
    v26 = 2114;
    v27 = identifierCopy;
    _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ set deliver quietly = %{BOOL}d for notification request %{public}@ and section identifier %{public}@", &v20, 0x26u);
  }

  suggestionManager = [(NCNotificationRootList *)self->_listModel suggestionManager];
  [suggestionManager logResponseForNotificationRequest:requestCopy deliveryQuietly:quietlyCopy];

  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self setDeliverQuietly:quietlyCopy forSectionIdentifier:identifierCopy];
  }
}

- (void)notificationManagementViewPresenter:(id)presenter setAllowsCriticalAlerts:(BOOL)alerts forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  alertsCopy = alerts;
  v27 = *MEMORY[0x277D85DE8];
  presenterCopy = presenter;
  requestCopy = request;
  identifierCopy = identifier;
  v13 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v19 = 138544130;
    v20 = _logDescription;
    v21 = 1024;
    v22 = alertsCopy;
    v23 = 2114;
    v24 = un_logDigest;
    v25 = 2114;
    v26 = identifierCopy;
    _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ set allows critical alerts = %{BOOL}d for notification request %{public}@ and section identifier %{public}@", &v19, 0x26u);
  }

  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self setAllowsCriticalAlerts:alertsCopy forSectionIdentifier:identifierCopy];
  }
}

- (void)notificationManagementViewPresenter:(id)presenter setMuted:(BOOL)muted untilDate:(id)date forSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier
{
  mutedCopy = muted;
  dateCopy = date;
  identifierCopy = identifier;
  threadIdentifierCopy = threadIdentifier;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self setMuted:mutedCopy untilDate:dateCopy forSectionIdentifier:identifierCopy threadIdentifier:threadIdentifierCopy];
  }
}

- (void)notificationManagementViewPresenter:(id)presenter setScheduledDelivery:(BOOL)delivery forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  deliveryCopy = delivery;
  identifierCopy = identifier;
  listModel = self->_listModel;
  requestCopy = request;
  suggestionManager = [(NCNotificationRootList *)listModel suggestionManager];
  [suggestionManager logResponseForNotificationRequest:requestCopy scheduledDelivery:deliveryCopy];

  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self setScheduledDelivery:deliveryCopy forSectionIdentifier:identifierCopy];
  }
}

- (void)notificationManagementViewPresenterWillPresentManagementView:(id)view
{
  bs_topPresentedViewController = [(NCNotificationStructuredListViewController *)self bs_topPresentedViewController];
  if (objc_opt_respondsToSelector())
  {
    [bs_topPresentedViewController preserveInputViews];
  }

  touchEaterManager = [(NCNotificationStructuredListViewController *)self touchEaterManager];
  [touchEaterManager setEnabled:0];
}

- (void)notificationManagementViewPresenterDidDismissManagementView:(id)view
{
  bs_topPresentedViewController = [(NCNotificationStructuredListViewController *)self bs_topPresentedViewController];
  if (objc_opt_respondsToSelector())
  {
    [bs_topPresentedViewController restoreInputViews];
  }

  touchEaterManager = [(NCNotificationStructuredListViewController *)self touchEaterManager];
  [touchEaterManager setEnabled:1];
}

- (void)notificationManagementViewPresenter:(id)presenter setAllowsTimeSensitive:(BOOL)sensitive forNotificationRequest:(id)request withSectionIdentifier:(id)identifier
{
  sensitiveCopy = sensitive;
  v28 = *MEMORY[0x277D85DE8];
  presenterCopy = presenter;
  requestCopy = request;
  identifierCopy = identifier;
  v13 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v20 = 138544130;
    v21 = _logDescription;
    v22 = 1024;
    v23 = sensitiveCopy;
    v24 = 2114;
    v25 = un_logDigest;
    v26 = 2114;
    v27 = identifierCopy;
    _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ set allows time sensitive notifications = %{BOOL}d for notification request %{public}@ and section identifier %{public}@", &v20, 0x26u);
  }

  suggestionManager = [(NCNotificationRootList *)self->_listModel suggestionManager];
  [suggestionManager logResponseForNotificationRequest:requestCopy allowsTimeSensitive:sensitiveCopy];

  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self setAllowsTimeSensitive:sensitiveCopy forSectionIdentifier:identifierCopy];
  }
}

- (void)notificationManagementViewPresenter:(id)presenter setMuted:(BOOL)muted untilDate:(id)date forNotificationRequest:(id)request withSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier
{
  mutedCopy = muted;
  v37 = *MEMORY[0x277D85DE8];
  presenterCopy = presenter;
  dateCopy = date;
  requestCopy = request;
  identifierCopy = identifier;
  threadIdentifierCopy = threadIdentifier;
  v19 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    [(NCNotificationStructuredListViewController *)self _logDescription];
    v28 = mutedCopy;
    v21 = dateCopy;
    v23 = v22 = presenterCopy;
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    *buf = 138544130;
    v30 = v23;
    v31 = 2114;
    v32 = un_logDigest;
    v33 = 2114;
    v34 = identifierCopy;
    v35 = 2114;
    v36 = threadIdentifierCopy;
    _os_log_impl(&dword_21E77E000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ mute notifications for request %{public}@, section identifier %{public}@, thread identifier %{public}@", buf, 0x2Au);

    presenterCopy = v22;
    dateCopy = v21;
    mutedCopy = v28;
  }

  suggestionManager = [(NCNotificationRootList *)self->_listModel suggestionManager];
  [suggestionManager logResponseForNotificationRequest:requestCopy muted:mutedCopy];

  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self setMuted:mutedCopy untilDate:dateCopy forSectionIdentifier:identifierCopy threadIdentifier:threadIdentifierCopy];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v26 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v23.receiver = self;
  v23.super_class = NCNotificationStructuredListViewController;
  [(NCNotificationStructuredListViewController *)&v23 traitCollectionDidChange:changeCopy];
  traitCollection = [(NCNotificationStructuredListViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(NCNotificationStructuredListViewController *)self _contentSizeCategoryDidChange];
  }

  _backlightLuminance = [changeCopy _backlightLuminance];
  traitCollection2 = [(NCNotificationStructuredListViewController *)self traitCollection];
  _backlightLuminance2 = [traitCollection2 _backlightLuminance];

  if ((_backlightLuminance != 1) == (_backlightLuminance2 == 1))
  {
    v11 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"on";
      if (_backlightLuminance2 == 1)
      {
        v12 = @"off";
      }

      *buf = 138412290;
      v25 = v12;
      _os_log_impl(&dword_21E77E000, v11, OS_LOG_TYPE_DEFAULT, "AOD traitsDidChange. display: %@", buf, 0xCu);
    }

    if (_backlightLuminance2 == 1)
    {
      if (![(NCNotificationStructuredListViewController *)self showNotificationsInAlwaysOn])
      {
        listModel = self->_listModel;
        v16 = 2;
        v17 = 1;
        goto LABEL_14;
      }

      _notificationSystemSettings = [(NCNotificationStructuredListViewController *)self _notificationSystemSettings];
      listDisplayStyleSetting = [_notificationSystemSettings listDisplayStyleSetting];

      if (!listDisplayStyleSetting)
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

  _backlightLuminance3 = [changeCopy _backlightLuminance];
  traitCollection3 = [(NCNotificationStructuredListViewController *)self traitCollection];
  _backlightLuminance4 = [traitCollection3 _backlightLuminance];

  if (_backlightLuminance3 != _backlightLuminance4)
  {
    traitCollection4 = [(NCNotificationStructuredListViewController *)self traitCollection];
    _backlightLuminance5 = [traitCollection4 _backlightLuminance];

    if ((_backlightLuminance5 + 1) <= 3)
    {
      [(NCNotificationRootList *)self->_listModel _backlightChangedToBacklightLuminance:qword_21E946750[_backlightLuminance5 + 1]];
    }
  }
}

- (void)toolsOverlayViewRequestsBeginUserInteraction:(id)interaction
{
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationStructuredListViewControllerDidBeginUserInteraction:self];
  }
}

- (void)toolsOverlayViewRequestsEndUserInteraction:(id)interaction
{
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationStructuredListViewControllerDidEndUserInteraction:self];
  }
}

- (void)notificationListCountIndicatorViewControllerLongPressed:(id)pressed presentingView:(id)view
{
  viewCopy = view;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self requestsPresentingFocusActivityPickerFromView:viewCopy];
  }
}

- (void)notificationListCountIndicatorViewController:(id)controller didChangeVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    if (objc_opt_respondsToSelector())
    {
      [v7 notificationStructuredListViewController:self didUpdateOverlayFooterContentVisibility:visibilityCopy];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)notificationListCountIndicatorViewControllerDidUpdate:(id)update
{
  view = [(NCNotificationStructuredListViewController *)self view];
  [view setNeedsLayout];
}

- (void)digestOnboardingSuggestionClient:(id)client didSuggestOnboarding:(id)onboarding
{
  v13 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  onboardingCopy = onboarding;
  v8 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    v11 = 138543362;
    v12 = _logDescription;
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ digest onboarding suggestion client did suggest onboarding", &v11, 0xCu);
  }

  if ([(NCNotificationStructuredListViewController *)self _shouldPresentDigestOnboardingSuggestion])
  {
    [(NCNotificationStructuredListViewController *)self _setDigestOnboardingSuggestionVisible:1];
    [(NCNotificationStructuredListViewController *)self setDigestOnboardingSuggestion:onboardingCopy];
  }
}

- (void)modeManager:(id)manager didUpdateCurrentModeConfiguration:(id)configuration previousModeConfiguration:(id)modeConfiguration
{
  v47 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  modeConfigurationCopy = modeConfiguration;
  mode = [configurationCopy mode];
  mode2 = [modeConfigurationCopy mode];
  modeIdentifier = [mode modeIdentifier];
  v40 = mode2;
  modeIdentifier2 = [mode2 modeIdentifier];
  configuration = [configurationCopy configuration];
  suppressionType = [configuration suppressionType];

  configuration2 = [modeConfigurationCopy configuration];

  suppressionType2 = [configuration2 suppressionType];
  v17 = MEMORY[0x277D77DD0];
  v18 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    *buf = 138543874;
    v42 = _logDescription;
    v43 = 2114;
    v44 = modeIdentifier;
    v45 = 2114;
    v46 = modeIdentifier2;
    _os_log_impl(&dword_21E77E000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ received DND mode update with current mode %{public}@ and previous mode %{public}@", buf, 0x20u);

    v17 = MEMORY[0x277D77DD0];
  }

  if ([modeIdentifier isEqualToString:modeIdentifier2])
  {
    if (suppressionType == 2 && suppressionType2 != 2)
    {
      v21 = *v17;
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        _logDescription2 = [(NCNotificationStructuredListViewController *)self _logDescription];
        *buf = 138543618;
        v42 = _logDescription2;
        v43 = 2114;
        v44 = modeIdentifier;
        _os_log_impl(&dword_21E77E000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ setting missed section active for DND mode %{public}@ on suppression type changed to delay delivery", buf, 0x16u);
      }

      listModel = self->_listModel;
      v25 = 1;
      v26 = mode;
      v27 = 1;
LABEL_27:
      [(NCNotificationRootList *)listModel toggleMissedSectionActive:v25 forDNDMode:v26 hideVisibleNotifications:v27];
      goto LABEL_28;
    }

    if (suppressionType != 2 && suppressionType2 == 2)
    {
      v32 = *v17;
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
        _logDescription3 = [(NCNotificationStructuredListViewController *)self _logDescription];
        *buf = 138543618;
        v42 = _logDescription3;
        v43 = 2114;
        v44 = modeIdentifier2;
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
    if (modeConfigurationCopy && suppressionType2 == 2)
    {
      v28 = *v17;
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
        _logDescription4 = [(NCNotificationStructuredListViewController *)self _logDescription];
        *buf = 138543874;
        v42 = _logDescription4;
        v43 = 2114;
        v44 = modeIdentifier2;
        v45 = 2114;
        v46 = modeIdentifier;
        _os_log_impl(&dword_21E77E000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ setting missed section inactive for DND mode %{public}@ on mode change to %{public}@", buf, 0x20u);

        v17 = MEMORY[0x277D77DD0];
      }

      [(NCNotificationRootList *)self->_listModel toggleMissedSectionActive:0 forDNDMode:v40 hideVisibleNotifications:0];
    }

    if (configurationCopy && suppressionType == 2)
    {
      if (modeConfigurationCopy)
      {
        v31 = [configurationCopy dimsLockScreen] != 0;
      }

      else
      {
        v31 = 1;
      }

      v35 = *v17;
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        v36 = v35;
        _logDescription5 = [(NCNotificationStructuredListViewController *)self _logDescription];
        *buf = 138543874;
        v42 = _logDescription5;
        v43 = 2114;
        v44 = modeIdentifier;
        v45 = 1024;
        LODWORD(v46) = v31;
        _os_log_impl(&dword_21E77E000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ setting missed section active for DND mode %{public}@ and hiding visible notifications = %{BOOL}d", buf, 0x1Cu);
      }

      listModel = self->_listModel;
      v25 = 1;
      v26 = mode;
      v27 = v31;
      goto LABEL_27;
    }
  }

LABEL_28:
  [(NCNotificationRootList *)self->_listModel reloadRemoteSuggestions];
  [(NCNotificationRootList *)self->_listModel setActiveDNDModeConfiguration:configurationCopy];
  countIndicatorViewController = [(NCNotificationStructuredListViewController *)self countIndicatorViewController];
  [countIndicatorViewController setActiveDNDModeConfiguration:configurationCopy];

  _listViewContainer = [(NCNotificationStructuredListViewController *)self _listViewContainer];
  [_listViewContainer setNeedsLayout];
}

- (void)digestOnboardingNavigationController:(id)controller didScheduleDigestDeliveryTimes:(id)times forAppBundleIdentifiers:(id)identifiers
{
  v31 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  timesCopy = times;
  identifiersCopy = identifiers;
  v11 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    *buf = 138543618;
    v28 = _logDescription;
    v29 = 2112;
    v30 = timesCopy;
    _os_log_impl(&dword_21E77E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ received updated scheduled delivery settings from onboarding view controller with delivery times %@", buf, 0x16u);
  }

  [(NCNotificationStructuredListViewController *)self _setDigestOnboardingSuggestionVisible:0];
  v14 = [timesCopy copy];
  [(NCNotificationStructuredListViewController *)self _setSystemScheduledDeliveryEnabled:1 scheduledDeliveryTimes:v14];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = identifiersCopy;
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

- (void)digestOnboardingNavigationController:(id)controller didChangeDeliveryTimesActiveSelection:(id)selection appBundleIdentifiersActiveSelection:(id)activeSelection
{
  selectionCopy = selection;
  objc_storeStrong(&self->_digestOnboardingLastBundleIdentifiersSelection, activeSelection);
  activeSelectionCopy = activeSelection;
  digestOnboardingLastScheduledDeliveryTimesSelection = self->_digestOnboardingLastScheduledDeliveryTimesSelection;
  self->_digestOnboardingLastScheduledDeliveryTimesSelection = selectionCopy;
}

- (void)digestOnboardingNavigationControllerDidDeferSetup:(id)setup
{
  v9 = *MEMORY[0x277D85DE8];
  [(NCNotificationStructuredListViewController *)self _setDigestOnboardingSuggestionVisible:0];
  v4 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    v7 = 138543362;
    v8 = _logDescription;
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

- (void)_presentNavigationControllerAndBeginModalInteraction:(id)interaction sender:(id)sender animated:(BOOL)animated completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  senderCopy = sender;
  completionCopy = completion;
  v13 = completionCopy;
  if (self->_modalNavigationController)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }

  else
  {
    if (senderCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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
      _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138543874;
      v26 = _logDescription;
      v27 = 2114;
      v28 = v20;
      v29 = 2114;
      v30 = v15;
      _os_log_impl(&dword_21E77E000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ presenting navigation controller of type '%{public}@' from sender of type: '%{public}@'", buf, 0x20u);
    }

    delegate = [(NCNotificationStructuredListViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate notificationStructuredListViewControllerDidBeginUserInteraction:self];
    }

    objc_storeStrong(&self->_modalNavigationController, interaction);
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

- (void)_setDigestOnboardingSuggestionVisible:(BOOL)visible
{
  visibleCopy = visible;
  v19 = *MEMORY[0x277D85DE8];
  _isPresentingDigestOnboardingSuggestion = [(NCNotificationStructuredListViewController *)self _isPresentingDigestOnboardingSuggestion];
  if (visibleCopy)
  {
    if (!_isPresentingDigestOnboardingSuggestion)
    {
      v6 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
        v17 = 138543362;
        v18 = _logDescription;
        _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ presenting digest onboarding suggestion on lock screen", &v17, 0xCu);
      }

      v9 = objc_opt_new();
      digestOnboardingSuggestionLogging = self->_digestOnboardingSuggestionLogging;
      self->_digestOnboardingSuggestionLogging = v9;

      date = [MEMORY[0x277CBEAA8] date];
      digestOnboardingSuggestionPresentationTime = self->_digestOnboardingSuggestionPresentationTime;
      self->_digestOnboardingSuggestionPresentationTime = date;

      [(NCNotificationRootList *)self->_listModel setOnboardingSummaryVisible:1];
    }
  }

  else if (_isPresentingDigestOnboardingSuggestion)
  {
    v13 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      _logDescription2 = [(NCNotificationStructuredListViewController *)self _logDescription];
      v17 = 138543362;
      v18 = _logDescription2;
      _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ removing digest onboarding suggestion from lock screen", &v17, 0xCu);
    }

    [(NCNotificationRootList *)self->_listModel setOnboardingSummaryVisible:0];
    v16 = self->_digestOnboardingSuggestionLogging;
    self->_digestOnboardingSuggestionLogging = 0;
  }
}

- (BOOL)_shouldPresentDigestOnboardingSuggestion
{
  _notificationSystemSettings = [(NCNotificationStructuredListViewController *)self _notificationSystemSettings];
  isScheduledDeliveryUninitialized = [_notificationSystemSettings isScheduledDeliveryUninitialized];

  return isScheduledDeliveryUninitialized;
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
      _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
      v8 = 138543362;
      v9 = _logDescription;
      _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling digest onboarding suggestion", &v8, 0xCu);
    }

    mEMORY[0x277CEB4A8] = [MEMORY[0x277CEB4A8] sharedInstance];
    digestOnboardingSuggestionClient = self->_digestOnboardingSuggestionClient;
    self->_digestOnboardingSuggestionClient = mEMORY[0x277CEB4A8];

    [(ATXDigestOnboardingSuggestionClient *)self->_digestOnboardingSuggestionClient registerObserver:self];
    [(ATXDigestOnboardingSuggestionClient *)self->_digestOnboardingSuggestionClient registerForOnboardingSuggestions];
  }
}

- (void)_setSystemScheduledDeliveryEnabled:(BOOL)enabled scheduledDeliveryTimes:(id)times
{
  enabledCopy = enabled;
  timesCopy = times;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self setSystemScheduledDeliveryEnabled:enabledCopy scheduledDeliveryTimes:timesCopy];
  }
}

- (void)_setScheduledDeliveryEnabledForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate notificationStructuredListViewController:self setScheduledDelivery:1 forSectionIdentifier:identifierCopy];
  }
}

- (void)_presentOptionsMenuForNotificationRequest:(id)request withPresentingView:(id)view optionsForSection:(BOOL)section
{
  sectionCopy = section;
  viewCopy = view;
  requestCopy = request;
  v10 = [[NCNotificationOptionsMenu alloc] initWithNotificationRequest:requestCopy presentingView:viewCopy settingsDelegate:self optionsForSection:sectionCopy];

  optionsMenu = self->_optionsMenu;
  self->_optionsMenu = v10;

  v12 = self->_optionsMenu;

  [(NCNotificationOptionsMenu *)v12 presentMenu];
}

- (id)_sectionSettingsForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate notificationStructuredListViewController:self requestsSectionSettingsForSectionIdentifier:identifierCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_notificationSystemSettings
{
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate notificationStructuredListViewControllerRequestsSystemSettings:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_requestAuthenticationAndPerformBlock:(id)block
{
  blockCopy = block;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  [delegate notificationStructuredListViewController:self requestsAuthenticationAndPerformBlock:blockCopy];
}

- (void)_contentSizeCategoryDidChange
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    *buf = 138543362;
    v20 = _logDescription;
    _os_log_impl(&dword_21E77E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ adjusting for content size change", buf, 0xCu);
  }

  [(NCNotificationRootList *)self->_listModel adjustForContentSizeCategoryChange];
  listView = self->_listView;
  traitCollection = [(NCNotificationStructuredListViewController *)self traitCollection];
  [(NCNotificationListView *)listView updateBottomViewTransitionStyleWithTraitCollection:traitCollection];

  [(NCNotificationListCountIndicatorViewController *)self->_countIndicatorViewController adjustForContentSizeCategoryChange];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  childViewControllers = [(NCNotificationStructuredListViewController *)self childViewControllers];
  v9 = [childViewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 adjustForContentSizeCategoryChange];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [childViewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (BOOL)_forwarNotificationRequestToLongLookIfNecessary:(id)necessary
{
  v24 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  notificationViewControllerPresentingLongLook = [(NCNotificationStructuredListViewController *)self notificationViewControllerPresentingLongLook];
  v6 = notificationViewControllerPresentingLongLook;
  if (notificationViewControllerPresentingLongLook)
  {
    notificationRequest = [notificationViewControllerPresentingLongLook notificationRequest];
    if (![necessaryCopy isUniqueThreadIdentifier] || !objc_msgSend(notificationRequest, "isUniqueThreadIdentifier") || !objc_msgSend(necessaryCopy, "matchesThreadForRequest:", notificationRequest))
    {
      goto LABEL_13;
    }

    v8 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
      notificationIdentifier = [necessaryCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v20 = 138543618;
      v21 = _logDescription;
      v22 = 2114;
      v23 = un_logDigest;
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_INFO, "%{public}@ forwarding request %{public}@ to a presented long look", &v20, 0x16u);
    }

    if ([v6 didForwardNotificationRequestToCustomContent:necessaryCopy])
    {
      if ([necessaryCopy matchesRequest:notificationRequest])
      {
        v13 = *MEMORY[0x277D77DD0];
        if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          _logDescription2 = [(NCNotificationStructuredListViewController *)self _logDescription];
          notificationIdentifier2 = [necessaryCopy notificationIdentifier];
          un_logDigest2 = [notificationIdentifier2 un_logDigest];
          v20 = 138543618;
          v21 = _logDescription2;
          v22 = 2114;
          v23 = un_logDigest2;
          _os_log_impl(&dword_21E77E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ updating notification view presenting long look on receiving forwarded request %{public}@", &v20, 0x16u);
        }

        [v6 setNotificationRequest:necessaryCopy];
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

- (void)_resetSwipeInteractionWithRevealedActionsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  swipeInteractionInRevealedState = [(NCNotificationListTouchEaterManager *)self->_touchEaterManager swipeInteractionInRevealedState];
  if (swipeInteractionInRevealedState)
  {
    v6 = swipeInteractionInRevealedState;
    [swipeInteractionInRevealedState hideActionsAnimated:animatedCopy fastAnimation:1 completion:0];
    [(NCNotificationListTouchEaterManager *)self->_touchEaterManager setSwipeInteractionInRevealedState:0];
    swipeInteractionInRevealedState = v6;
  }
}

- (void)_loadListView
{
  v3 = [[NCNotificationModernListView alloc] initWithModelType:objc_opt_class() purpose:@"TopLevel"];
  listView = self->_listView;
  self->_listView = v3;

  [(NCNotificationListView *)self->_listView setPreferredBottomTransitionTransformer:0];
  traitOverrides = [(NCNotificationModernListView *)self->_listView traitOverrides];
  v6 = objc_opt_self();
  [traitOverrides setNSIntegerValue:1 forTrait:v6];

  v7 = [[NCNotificationRootModernList alloc] initWithListView:self->_listView delegate:self];
  listModel = self->_listModel;
  self->_listModel = &v7->super;

  _notificationSystemSettings = [(NCNotificationStructuredListViewController *)self _notificationSystemSettings];
  if (_notificationSystemSettings)
  {
    [(NCNotificationRootList *)self->_listModel updateNotificationSystemSettings:_notificationSystemSettings previousSystemSettings:0];
  }

  [(NCNotificationModernListView *)self->_listView setScrollEnabled:1];
  [(NCNotificationModernListView *)self->_listView setContentInsetAdjustmentBehavior:2];
  [NCListDebugHUDModelBridge trackListView:self->_listView];
  _listViewContainer = [(NCNotificationStructuredListViewController *)self _listViewContainer];
  [_listViewContainer setListView:self->_listView];
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

- (void)_updateListVisibleAreaForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(NCNotificationRootList *)self->_listModel updateListViewVisibleRectForSize:?];

  [(NCNotificationStructuredListViewController *)self _updateListEdgeInsetsForSize:width, height];
}

- (UIEdgeInsets)_overlayFooterViewEdgeInsetsForSize:(CGSize)size
{
  if (size.width <= size.height)
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationStructuredListViewControllerRequestsEdgeInsetsForFooterView:self forOrientation:v4];
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

    [delegate notificationStructuredListViewControllerRequestsEdgeInsetsForOverlayFooterView:self forOrientation:v4];
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

- (UIEdgeInsets)_notificationListViewEdgeInsetsForSize:(CGSize)size
{
  if (size.width <= size.height)
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationStructuredListViewControllerRequestsEdgeInsetsForNotificationListView:self forOrientation:v4];
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

    [delegate notificationStructuredListViewControllerRequestsEdgeInsetsForOverlayFooterView:self forOrientation:v4];
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

- (void)_updateListEdgeInsetsForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(NCNotificationStructuredListViewController *)self _overlayFooterViewEdgeInsetsForSize:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  _listViewContainer = [(NCNotificationStructuredListViewController *)self _listViewContainer];
  [_listViewContainer setFooterInsets:{v7, v9, v11, v13}];

  [(NCNotificationStructuredListViewController *)self _notificationListViewEdgeInsetsForSize:width, height];
  v16 = v15;
  delegate = [(NCNotificationStructuredListViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    view = [(NCNotificationStructuredListViewController *)self view];
    [view bounds];
    [delegate notificationStructuredListViewController:self requestsUpdateNotificationDimViewFadeRadiusY:v19 / 12.0];
  }

  v20 = +[NCUNUIKitPrototypeDomain rootSettings];
  listAnimationSettings = [v20 listAnimationSettings];
  [listAnimationSettings bottomListPadding];
  v23 = v16 + v22;

  [(NCNotificationRootList *)self->_listModel visibleRectBottomMarginForRollUnder];
  v25 = v24;
  [(NCNotificationRootList *)self->_listModel setVisibleRectBottomMarginForRollUnder:v23];
  _listViewContainer2 = [(NCNotificationStructuredListViewController *)self _listViewContainer];
  [_listViewContainer2 setContentBottomMargin:v23];

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

- (void)_updateOrientationForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v23 = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  traitOverrides = [(NCNotificationStructuredListViewController *)self traitOverrides];
  v9 = traitOverrides;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 || width <= height)
  {
    [traitOverrides setVerticalSizeClass:2];

    [(NCNotificationRootList *)self->_listModel removeOverrideNotificationListDisplayStyleSettingForReason:@"NCNotificationListDisplayStyleReasonOverrideLandscapeOrientation"];
  }

  else
  {
    [traitOverrides setVerticalSizeClass:1];

    [(NCNotificationRootList *)self->_listModel setOverrideNotificationListDisplayStyleSetting:0 forReason:@"NCNotificationListDisplayStyleReasonOverrideLandscapeOrientation" hideNotificationCount:0];
  }

  v11 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    _logDescription = [(NCNotificationStructuredListViewController *)self _logDescription];
    traitCollection = [(NCNotificationStructuredListViewController *)self traitCollection];
    verticalSizeClass = [traitCollection verticalSizeClass];
    currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
    v17 = 138543874;
    v18 = _logDescription;
    v19 = 2048;
    v20 = verticalSizeClass;
    v21 = 2048;
    verticalSizeClass2 = [currentTraitCollection verticalSizeClass];
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