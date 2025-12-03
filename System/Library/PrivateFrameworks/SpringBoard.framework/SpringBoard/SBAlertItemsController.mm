@interface SBAlertItemsController
+ (SBAlertItemsController)sharedInstance;
- (BOOL)_hasActivePresentationsThatPresentModally;
- (BOOL)_hasPresentationForPresenter:(id)presenter;
- (BOOL)_hasVisibleModalAlertOfType:(unint64_t)type;
- (BOOL)_hasVisibleModalAlertOfType:(unint64_t)type forWindowScene:(id)scene;
- (BOOL)_isAlertItemPresentable:(id)presentable outReasonsNotPresentable:(id *)notPresentable;
- (BOOL)_shouldPendAlertItem:(id)item outReasonsPended:(id *)pended;
- (BOOL)canDeactivateAlertForMenuClickOrSystemGesture;
- (BOOL)deactivateAlertForMenuClickOrSystemGestureWithAnimation:(BOOL)animation;
- (BOOL)deactivateAlertItemsOfClass:(Class)class reason:(int)reason animated:(BOOL)animated;
- (BOOL)hasAlertOfClass:(Class)class;
- (BOOL)hasAlerts;
- (BOOL)hasLockScreenModalAlert;
- (BOOL)hasVisibleAlert;
- (BOOL)hasVisibleAlertForWindowScene:(id)scene;
- (SBAlertItemsController)init;
- (SBWindowSceneManager)windowSceneManager;
- (id)_activePresenterForAlertItem:(id)item;
- (id)_initWithUserSessionController:(id)controller;
- (id)_presentationForAlertItem:(id)item;
- (id)_presentedAlertItemForPresenter:(id)presenter;
- (id)_presenterForAlertItem:(id)item;
- (id)alertItemsOfClass:(Class)class;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)visibleAlertItem;
- (void)_activeCallStateDidChange:(id)change;
- (void)_buddyDidExit;
- (void)_deactivateAlertItem:(id)item reason:(int)reason animated:(BOOL)animated alertDismissCompletion:(id)completion;
- (void)_dismissAlertItem:(id)item fromPresenter:(id)presenter forReason:(int)reason animated:(BOOL)animated completion:(id)completion;
- (void)_enumerateWithDirection:(unint64_t)direction presentationsWithType:(unint64_t)type usingBlock:(id)block;
- (void)_notifyObservers:(id)observers;
- (void)_performBatchActions:(id)actions animated:(BOOL)animated processQueue:(BOOL)queue;
- (void)_presentAlertItem:(id)item withPresenter:(id)presenter animated:(BOOL)animated;
- (void)_processAlertItemQueuesAnimated:(BOOL)animated;
- (void)_processAlertItemsFromQueue:(id)queue animated:(BOOL)animated;
- (void)_reallyDeactivateAlertItem:(id)item forReason:(int)reason deactivateBlock:(id)block;
- (void)_silencingHardwareButtonPressed:(id)pressed;
- (void)_updateActiveDestinations;
- (void)activateAlertItem:(id)item animated:(BOOL)animated;
- (void)activatePendedAlertsIfNecessary;
- (void)addObserver:(id)observer;
- (void)captureSuppressionAssertion:(id)assertion reason:(id)reason;
- (void)convertLockedAlertsToUnlockedAlerts;
- (void)convertUnlockedAlertsToLockedAlerts;
- (void)deactivateAlertItem:(id)item reason:(int)reason animated:(BOOL)animated;
- (void)dealloc;
- (void)moveActiveUnlockedAlertsToPendingWithAnimation:(BOOL)animation completion:(id)completion;
- (void)setForceAlertsToPend:(BOOL)pend forReason:(id)reason;
- (void)setInUILockedMode:(BOOL)mode;
- (void)setIsContinuityDisplaySceneConnected:(BOOL)connected;
- (void)setLockScreenModalAlertItemPresenter:(id)presenter;
- (void)setLockScreenNotificationsAlertItemPresenter:(id)presenter;
- (void)setSystemApertureAlertItemPresenter:(id)presenter;
- (void)setUnlockedAlertItemPresenter:(id)presenter;
- (void)windowSceneDidConnect:(id)connect withSharedModalAlertItemPresenter:(id)presenter;
- (void)windowSceneDidDisconnect:(id)disconnect;
@end

@implementation SBAlertItemsController

+ (SBAlertItemsController)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[SBAlertItemsController sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

- (BOOL)hasVisibleAlert
{
  if ([(NSMutableOrderedSet *)self->_alertItemPresentations count])
  {
    return 1;
  }

  return [(SBAlertItemsController *)self hasVisibleSuperModalAlert];
}

- (BOOL)canDeactivateAlertForMenuClickOrSystemGesture
{
  visibleAlertItem = [(SBAlertItemsController *)self visibleAlertItem];
  v3 = visibleAlertItem;
  v4 = !visibleAlertItem || [visibleAlertItem allowMenuButtonDismissal];

  return v4;
}

- (id)visibleAlertItem
{
  if ([(SBAlertItemsController *)self hasVisibleSuperModalAlert])
  {
    v3 = 48;
LABEL_5:
    lastObject = [*(&self->super.isa + v3) lastObject];
    alertItem = [lastObject alertItem];

    goto LABEL_7;
  }

  if ([(SBAlertItemsController *)self hasVisibleAlert])
  {
    v3 = 40;
    goto LABEL_5;
  }

  alertItem = 0;
LABEL_7:

  return alertItem;
}

- (void)_updateActiveDestinations
{
  [(NSMutableSet *)self->_activePresenters removeAllObjects];
  if (self->_inUILockedMode)
  {
    if (self->_lockScreenModalAlertItemPresenter)
    {
      [(NSMutableSet *)self->_activePresenters addObject:?];
    }

    if (self->_lockScreenNotificationsAlertItemPresenter)
    {
      [(NSMutableSet *)self->_activePresenters addObject:?];
    }

    if (!self->_isContinuityDisplaySceneConnected)
    {
      return;
    }

    if (self->_unlockedAlertItemPresenter)
    {
      [(NSMutableSet *)self->_activePresenters addObject:?];
      if (!self->_isContinuityDisplaySceneConnected)
      {
        return;
      }
    }

    if (!self->_systemApertureAlertItemPresenter)
    {
      return;
    }

LABEL_14:
    activePresenters = self->_activePresenters;

    [(NSMutableSet *)activePresenters addObject:?];
    return;
  }

  if (self->_systemApertureAlertItemPresenter)
  {
    [(NSMutableSet *)self->_activePresenters addObject:?];
  }

  if (self->_unlockedAlertItemPresenter)
  {
    goto LABEL_14;
  }
}

- (void)activatePendedAlertsIfNecessary
{
  BSDispatchQueueAssertMain();

  [(SBAlertItemsController *)self _processAlertItemQueuesAnimated:1];
}

void __40__SBAlertItemsController_sharedInstance__block_invoke()
{
  v0 = [SBAlertItemsController alloc];
  v3 = [SBApp userSessionController];
  v1 = [(SBAlertItemsController *)v0 _initWithUserSessionController:v3];
  v2 = sharedInstance___instance;
  sharedInstance___instance = v1;
}

- (SBAlertItemsController)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBAlertItemsController.m" lineNumber:110 description:@"Unavailable"];

  return 0;
}

- (id)_initWithUserSessionController:(id)controller
{
  controllerCopy = controller;
  v36.receiver = self;
  v36.super_class = SBAlertItemsController;
  v6 = [(SBAlertItemsController *)&v36 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userSessionController, controller);
    v8 = objc_alloc_init(SBAlertItemsObjectQueue);
    alertItemsQueue = v7->_alertItemsQueue;
    v7->_alertItemsQueue = v8;

    v10 = objc_alloc_init(SBAlertItemsObjectQueue);
    superModalItemsQueue = v7->_superModalItemsQueue;
    v7->_superModalItemsQueue = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB40]);
    alertItemPresentations = v7->_alertItemPresentations;
    v7->_alertItemPresentations = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB40]);
    superModalAlertItemPresentations = v7->_superModalAlertItemPresentations;
    v7->_superModalAlertItemPresentations = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    pendedAlertsToReenqueuePostDismissal = v7->_pendedAlertsToReenqueuePostDismissal;
    v7->_pendedAlertsToReenqueuePostDismissal = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
    forceAlertsToPendReasons = v7->_forceAlertsToPendReasons;
    v7->_forceAlertsToPendReasons = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activePresenters = v7->_activePresenters;
    v7->_activePresenters = v20;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__buddyDidExit name:@"SBSetupBuddyCompletedNotification" object:0];
    [defaultCenter addObserver:v7 selector:sel__activeCallStateDidChange_ name:*MEMORY[0x277D679E0] object:0];
    [defaultCenter addObserver:v7 selector:sel__silencingHardwareButtonPressed_ name:*MEMORY[0x277D67A80] object:0];
    [defaultCenter addObserver:v7 selector:sel__silencingHardwareButtonPressed_ name:*MEMORY[0x277D679D8] object:0];
    [defaultCenter addObserver:v7 selector:sel__silencingHardwareButtonPressed_ name:*MEMORY[0x277D67AF0] object:0];
    v23 = +[SBDefaults localDefaults];
    miscellaneousDefaults = [v23 miscellaneousDefaults];
    v7->_suppressAlertsForKeynote = [miscellaneousDefaults suppressAlertsForKeynote];

    objc_initWeak(&location, v7);
    v25 = MEMORY[0x277D85CD0];
    v33[1] = MEMORY[0x277D85DD0];
    v33[2] = 3221225472;
    v33[3] = __57__SBAlertItemsController__initWithUserSessionController___block_invoke;
    v33[4] = &unk_2783AB940;
    objc_copyWeak(&v34, &location);
    v26 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureBlock = v7->_stateCaptureBlock;
    v7->_stateCaptureBlock = v26;

    configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __57__SBAlertItemsController__initWithUserSessionController___block_invoke_2;
    v32[3] = &unk_2783ADD28;
    objc_copyWeak(v33, &location);
    [configurationForDefaultMainDisplayMonitor setTransitionHandler:v32];
    v29 = [MEMORY[0x277D0AD08] monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
    layoutMonitor = v7->_layoutMonitor;
    v7->_layoutMonitor = v29;

    objc_destroyWeak(v33);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v7;
}

id __57__SBAlertItemsController__initWithUserSessionController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

void __57__SBAlertItemsController__initWithUserSessionController___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_copyWeak(&v10, (a1 + 32));
  BSDispatchMain();
  objc_destroyWeak(&v10);
}

void __57__SBAlertItemsController__initWithUserSessionController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processAlertItemQueuesAnimated:1];
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureBlock invalidate];
  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBAlertItemsController;
  [(SBAlertItemsController *)&v4 dealloc];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBAlertItemsController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBAlertItemsController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBAlertItemsController *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__SBAlertItemsController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __64__SBAlertItemsController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"superModalItemsQueue" skipIfNil:1];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"alertItemsQueue" skipIfNil:1];
  v4 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"superModalPresentations" skipIfNil:1];
  v5 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"presentations" skipIfNil:1];
  v6 = *(a1 + 32);
  v7 = [v6 activeMultilinePrefix];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __64__SBAlertItemsController_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v15 = &unk_2783A92D8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v16 = v8;
  v17 = v9;
  [v6 appendBodySectionWithName:@"Presenters" multilinePrefix:v7 block:&v12];

  v10 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 56) withName:@"activePresenters" skipIfNil:{1, v12, v13, v14, v15}];
  v11 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 92) withName:@"suppress alerts for keynote"];
}

id __64__SBAlertItemsController_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 136) withName:@"lockScreenModalAlertItemPresenter" skipIfNil:1];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 144) withName:@"lockScreenNotificationsAlertItemPresenter" skipIfNil:1];
  v4 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 152) withName:@"systemApertureAlertItemPresenter" skipIfNil:1];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 160) withName:@"unlockedAlertItemPresenter" skipIfNil:1];
}

- (void)setUnlockedAlertItemPresenter:(id)presenter
{
  presenterCopy = presenter;
  BSDispatchQueueAssertMain();
  if (self->_unlockedAlertItemPresenter != presenterCopy)
  {
    objc_storeStrong(&self->_unlockedAlertItemPresenter, presenter);
    [(SBAlertItemsController *)self _updateActiveDestinations];
  }
}

- (void)setSystemApertureAlertItemPresenter:(id)presenter
{
  presenterCopy = presenter;
  BSDispatchQueueAssertMain();
  if (self->_systemApertureAlertItemPresenter != presenterCopy)
  {
    objc_storeStrong(&self->_systemApertureAlertItemPresenter, presenter);
    [(SBAlertItemsController *)self _updateActiveDestinations];
  }
}

- (void)setLockScreenModalAlertItemPresenter:(id)presenter
{
  presenterCopy = presenter;
  BSDispatchQueueAssertMain();
  if (self->_lockScreenModalAlertItemPresenter != presenterCopy)
  {
    objc_storeStrong(&self->_lockScreenModalAlertItemPresenter, presenter);
    [(SBAlertItemsController *)self _updateActiveDestinations];
  }
}

- (void)setLockScreenNotificationsAlertItemPresenter:(id)presenter
{
  presenterCopy = presenter;
  BSDispatchQueueAssertMain();
  if (self->_lockScreenNotificationsAlertItemPresenter != presenterCopy)
  {
    objc_storeStrong(&self->_lockScreenNotificationsAlertItemPresenter, presenter);
    [(SBAlertItemsController *)self _updateActiveDestinations];
  }
}

- (void)setInUILockedMode:(BOOL)mode
{
  modeCopy = mode;
  BSDispatchQueueAssertMain();
  if (self->_inUILockedMode != modeCopy)
  {
    self->_inUILockedMode = modeCopy;

    [(SBAlertItemsController *)self _updateActiveDestinations];
  }
}

- (void)setIsContinuityDisplaySceneConnected:(BOOL)connected
{
  connectedCopy = connected;
  BSDispatchQueueAssertMain();
  if (self->_isContinuityDisplaySceneConnected != connectedCopy)
  {
    self->_isContinuityDisplaySceneConnected = connectedCopy;

    [(SBAlertItemsController *)self _updateActiveDestinations];
  }
}

- (void)convertUnlockedAlertsToLockedAlerts
{
  BSDispatchQueueAssertMain();
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __61__SBAlertItemsController_convertUnlockedAlertsToLockedAlerts__block_invoke;
  v3[3] = &unk_2783A8C18;
  v3[4] = self;
  [(SBAlertItemsController *)self _performBatchActions:v3 animated:1 processQueue:1];
}

uint64_t __61__SBAlertItemsController_convertUnlockedAlertsToLockedAlerts__block_invoke(uint64_t a1)
{
  v2 = SBLogAlertItems();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Converting unlocked alerts to locked alerts.", buf, 2u);
  }

  v3 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__SBAlertItemsController_convertUnlockedAlertsToLockedAlerts__block_invoke_60;
  v7[3] = &unk_2783ADD50;
  v7[4] = v3;
  [v3 _enumerateWithDirection:1 presentationsWithType:1 usingBlock:v7];
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SBAlertItemsController_convertUnlockedAlertsToLockedAlerts__block_invoke_2;
  v6[3] = &unk_2783ADD50;
  v6[4] = v4;
  return [v4 _enumeratePresentationsWithType:2 usingBlock:v6];
}

void __61__SBAlertItemsController_convertUnlockedAlertsToLockedAlerts__block_invoke_60(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) unlockedAlertItemPresenter];
  v7 = v6;
  if (v6 == v5)
  {
  }

  else
  {
    v8 = [*(a1 + 32) systemApertureAlertItemPresenter];

    if (v8 != v5)
    {
      goto LABEL_7;
    }
  }

  [*(a1 + 32) deactivateAlertItem:v9 reason:0 animated:0];
  if ([v9 reappearsAfterLock])
  {
    [*(*(a1 + 32) + 16) prependObject:v9];
  }

LABEL_7:
}

void __61__SBAlertItemsController_convertUnlockedAlertsToLockedAlerts__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) unlockedAlertItemPresenter];
  v7 = v6;
  if (v6 == v5)
  {
  }

  else
  {
    v8 = [*(a1 + 32) systemApertureAlertItemPresenter];

    if (v8 != v5)
    {
      goto LABEL_7;
    }
  }

  [*(a1 + 32) deactivateAlertItem:v9 reason:0 animated:0];
  if ([v9 reappearsAfterLock])
  {
    [*(*(a1 + 32) + 24) appendObject:v9];
  }

LABEL_7:
}

- (void)convertLockedAlertsToUnlockedAlerts
{
  BSDispatchQueueAssertMain();
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __61__SBAlertItemsController_convertLockedAlertsToUnlockedAlerts__block_invoke;
  v3[3] = &unk_2783A8C18;
  v3[4] = self;
  [(SBAlertItemsController *)self _performBatchActions:v3 animated:1 processQueue:0];
}

uint64_t __61__SBAlertItemsController_convertLockedAlertsToUnlockedAlerts__block_invoke(uint64_t a1)
{
  v2 = SBLogAlertItems();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Converting locked alerts to unlocked alerts.", buf, 2u);
  }

  v3 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__SBAlertItemsController_convertLockedAlertsToUnlockedAlerts__block_invoke_62;
  v7[3] = &unk_2783ADD50;
  v7[4] = v3;
  [v3 _enumerateWithDirection:1 presentationsWithType:1 usingBlock:v7];
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SBAlertItemsController_convertLockedAlertsToUnlockedAlerts__block_invoke_2;
  v6[3] = &unk_2783ADD50;
  v6[4] = v4;
  return [v4 _enumeratePresentationsWithType:2 usingBlock:v6];
}

void __61__SBAlertItemsController_convertLockedAlertsToUnlockedAlerts__block_invoke_62(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) lockScreenModalAlertItemPresenter];
  v7 = v6;
  if (v6 == v5)
  {
  }

  else
  {
    v8 = [*(a1 + 32) lockScreenNotificationsAlertItemPresenter];

    if (v8 != v5)
    {
      goto LABEL_7;
    }
  }

  [*(a1 + 32) deactivateAlertItem:v9 reason:6 animated:0];
  if ([v9 reappearsAfterUnlock])
  {
    [*(*(a1 + 32) + 16) prependObject:v9];
  }

LABEL_7:
}

void __61__SBAlertItemsController_convertLockedAlertsToUnlockedAlerts__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) lockScreenModalAlertItemPresenter];
  v7 = v6;
  if (v6 == v5)
  {
  }

  else
  {
    v8 = [*(a1 + 32) lockScreenNotificationsAlertItemPresenter];

    if (v8 != v5)
    {
      goto LABEL_7;
    }
  }

  [*(a1 + 32) deactivateAlertItem:v9 reason:6 animated:0];
  if ([v9 reappearsAfterUnlock])
  {
    [*(*(a1 + 32) + 24) appendObject:v9];
  }

LABEL_7:
}

- (void)activateAlertItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  v14 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  BSDispatchQueueAssertMain();
  if (!itemCopy)
  {
    goto LABEL_13;
  }

  v7 = SBLogAlertItems();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _publicDescription = [itemCopy _publicDescription];
    v12 = 138543362;
    v13 = _publicDescription;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Received request to activate alertItem: %{public}@", &v12, 0xCu);
  }

  if (!self->_suppressAlertsForKeynote || ![itemCopy suppressForKeynote])
  {
    if ([itemCopy behavesSuperModally])
    {
      [(SBAlertItemsObjectQueue *)self->_superModalItemsQueue appendObject:itemCopy];
      p_alertItemsQueue = &self->_alertItemsQueue;
      if (![(SBAlertItemsObjectQueue *)self->_alertItemsQueue containsObject:itemCopy])
      {
LABEL_12:
        [(SBAlertItemsController *)self _processAlertItemQueuesAnimated:animatedCopy];
        goto LABEL_13;
      }
    }

    else
    {
      [(SBAlertItemsObjectQueue *)self->_alertItemsQueue appendObject:itemCopy];
      p_alertItemsQueue = &self->_superModalItemsQueue;
      if (![(SBAlertItemsObjectQueue *)self->_superModalItemsQueue containsObject:itemCopy])
      {
        goto LABEL_12;
      }
    }

    [(SBAlertItemsObjectQueue *)*p_alertItemsQueue removeObject:itemCopy];
    goto LABEL_12;
  }

  v9 = SBLogAlertItems();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    _publicDescription2 = [itemCopy _publicDescription];
    v12 = 138543362;
    v13 = _publicDescription2;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Supressing alertItem: %{public}@, for keynote", &v12, 0xCu);
  }

LABEL_13:
}

- (void)deactivateAlertItem:(id)item reason:(int)reason animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = *&reason;
  itemCopy = item;
  BSDispatchQueueAssertMain();
  if (v6 == 1)
  {
    [SBAlertItemsController deactivateAlertItem:reason:animated:];
  }

  [(SBAlertItemsController *)self _deactivateAlertItem:itemCopy reason:v6 animated:animatedCopy];
}

- (void)windowSceneDidConnect:(id)connect withSharedModalAlertItemPresenter:(id)presenter
{
  connectCopy = connect;
  presenterCopy = presenter;
  lockScreenModalAlertItemPresenter = [(SBAlertItemsController *)self lockScreenModalAlertItemPresenter];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    lockScreenModalAlertItemPresenter2 = [(SBAlertItemsController *)self lockScreenModalAlertItemPresenter];
    [lockScreenModalAlertItemPresenter2 windowSceneDidConnect:connectCopy withSharedModalAlertItemPresenter:presenterCopy];
  }

  unlockedAlertItemPresenter = [(SBAlertItemsController *)self unlockedAlertItemPresenter];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    unlockedAlertItemPresenter2 = [(SBAlertItemsController *)self unlockedAlertItemPresenter];
    [unlockedAlertItemPresenter2 windowSceneDidConnect:connectCopy withSharedModalAlertItemPresenter:presenterCopy];
  }

  if ([connectCopy isContinuityDisplayWindowScene])
  {
    [(SBAlertItemsController *)self setIsContinuityDisplaySceneConnected:1];
  }
}

- (void)windowSceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  lockScreenModalAlertItemPresenter = [(SBAlertItemsController *)self lockScreenModalAlertItemPresenter];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    lockScreenModalAlertItemPresenter2 = [(SBAlertItemsController *)self lockScreenModalAlertItemPresenter];
    [lockScreenModalAlertItemPresenter2 windowSceneDidDisconnect:disconnectCopy];
  }

  unlockedAlertItemPresenter = [(SBAlertItemsController *)self unlockedAlertItemPresenter];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    unlockedAlertItemPresenter2 = [(SBAlertItemsController *)self unlockedAlertItemPresenter];
    [unlockedAlertItemPresenter2 windowSceneDidDisconnect:disconnectCopy];
  }

  if ([disconnectCopy isContinuityDisplayWindowScene])
  {
    [(SBAlertItemsController *)self setIsContinuityDisplaySceneConnected:0];
  }
}

- (void)_performBatchActions:(id)actions animated:(BOOL)animated processQueue:(BOOL)queue
{
  queueCopy = queue;
  animatedCopy = animated;
  actionsCopy = actions;
  if (actionsCopy)
  {
    self->_delayProcessingQueue = 1;
    v9 = actionsCopy;
    actionsCopy[2]();
    actionsCopy = v9;
    self->_delayProcessingQueue = 0;
    if (queueCopy)
    {
      [(SBAlertItemsController *)self _processAlertItemQueuesAnimated:animatedCopy];
      actionsCopy = v9;
    }
  }
}

- (BOOL)_isAlertItemPresentable:(id)presentable outReasonsNotPresentable:(id *)notPresentable
{
  presentableCopy = presentable;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__14;
  v19 = __Block_byref_object_dispose__14;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__SBAlertItemsController__isAlertItemPresentable_outReasonsNotPresentable___block_invoke;
  v14[3] = &unk_2783ADD78;
  v14[4] = &v15;
  v14[5] = notPresentable;
  v7 = MEMORY[0x223D6F7F0](v14);
  restartManager = [SBApp restartManager];
  isPendingExit = [restartManager isPendingExit];

  if (isPendingExit)
  {
    (v7)[2](v7, @"The system is shutting down or pending a restart.");
  }

  if ([presentableCopy ignoreIfAlreadyDisplaying] && -[SBAlertItemsController hasAlertOfClass:](self, "hasAlertOfClass:", objc_opt_class()))
  {
    (v7)[2](v7, @"Already presenting an item of this class type.");
  }

  v10 = +[SBSetupManager sharedInstance];
  if ([v10 isInSetupMode] && (objc_msgSend(presentableCopy, "allowInSetup") & 1) == 0)
  {
    pendInSetupIfNotAllowed = [presentableCopy pendInSetupIfNotAllowed];

    if ((pendInSetupIfNotAllowed & 1) == 0)
    {
      (v7)[2](v7, @"Alert cannot show while we're in Setup.");
    }
  }

  else
  {
  }

  if (-[SBUserSessionController isLoginSession](self->_userSessionController, "isLoginSession") && ([presentableCopy allowInLoginWindow] & 1) == 0)
  {
    (v7)[2](v7, @"Alert cannot show in the login window session.");
  }

  v11 = [v16[5] count] == 0;

  _Block_object_dispose(&v15, 8);
  return v11;
}

void __75__SBAlertItemsController__isAlertItemPresentable_outReasonsNotPresentable___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v8 = v3;
    if (!v4)
    {
      v5 = [MEMORY[0x277CBEB18] array];
      v6 = *(*(a1 + 32) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      **(a1 + 40) = *(*(*(a1 + 32) + 8) + 40);
      v4 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v4 addObject:v8];
    v3 = v8;
  }
}

- (void)_processAlertItemQueuesAnimated:(BOOL)animated
{
  if (!self->_isProcessingQueue && !self->_delayProcessingQueue)
  {
    animatedCopy = animated;
    self->_isProcessingQueue = 1;
    hasObject = [(SBAlertItemsObjectQueue *)self->_superModalItemsQueue hasObject];
    v6 = 16;
    if (hasObject)
    {
      v6 = 24;
    }

    v7 = *(&self->super.isa + v6);
    [(SBAlertItemsController *)self _processAlertItemsFromQueue:v7 animated:animatedCopy];
    self->_isProcessingQueue = 0;
  }
}

- (void)_processAlertItemsFromQueue:(id)queue animated:(BOOL)animated
{
  animatedCopy = animated;
  v43 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  if ([queueCopy hasObject])
  {
    v30 = queueCopy;
    dequeueAllObjects = [queueCopy dequeueAllObjects];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = [dequeueAllObjects countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v7;
    v10 = *v35;
    *&v8 = 138543362;
    v26 = v8;
    v31 = dequeueAllObjects;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(dequeueAllObjects);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        v13 = [(SBAlertItemsController *)self _presentationForAlertItem:v12, v26];
        if (v13)
        {
          v14 = SBLogAlertItems();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_27;
          }

          _publicDescription = [v12 _publicDescription];
          presenter = [v13 presenter];
          *buf = 138543618;
          v39 = _publicDescription;
          v40 = 2114;
          v41 = presenter;
          _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Activation - ignoring activation attempt for %{public}@ because it's already presented by %{public}@.", buf, 0x16u);

          goto LABEL_15;
        }

        v33 = 0;
        v17 = [(SBAlertItemsController *)self _isAlertItemPresentable:v12 outReasonsNotPresentable:&v33];
        v14 = v33;
        if (v17)
        {
          v32 = 0;
          v18 = [(SBAlertItemsController *)self _shouldPendAlertItem:v12 outReasonsPended:&v32];
          _publicDescription = v32;
          if (v18)
          {
            v19 = SBLogAlertItems();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              _publicDescription2 = [v12 _publicDescription];
              *buf = 138543618;
              v39 = _publicDescription2;
              v40 = 2114;
              v41 = _publicDescription;
              _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Activation - Pending activation of %{public}@ due to reason: %{public}@", buf, 0x16u);

              dequeueAllObjects = v31;
            }

            [v30 appendObject:v12];
LABEL_15:

            goto LABEL_27;
          }

          v23 = [(SBAlertItemsController *)self _presenterForAlertItem:v12];
          v24 = SBLogAlertItems();
          v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
          if (v23)
          {
            if (v25)
            {
              _publicDescription3 = [v12 _publicDescription];
              *buf = 138543618;
              v39 = _publicDescription3;
              v40 = 2114;
              v41 = v23;
              _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "Activation - Presenting %{public}@ with presenter: %{public}@", buf, 0x16u);
            }

            [(SBAlertItemsController *)self _presentAlertItem:v12 withPresenter:v23 animated:animatedCopy];
          }

          else
          {
            if (v25)
            {
              _publicDescription4 = [v12 _publicDescription];
              *buf = v26;
              v39 = _publicDescription4;
              _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "Activation - Pending activation of %{public}@ because no presenter is capable of presenting it currently.", buf, 0xCu);
            }

            [v30 appendObject:v12];
          }

          dequeueAllObjects = v31;
        }

        else
        {
          v21 = SBLogAlertItems();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            _publicDescription5 = [v12 _publicDescription];
            *buf = 138543618;
            v39 = _publicDescription5;
            v40 = 2114;
            v41 = v14;
            _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "Activation - Failed to activate %{public}@ because it's not allowed at this time for reason: %{public}@", buf, 0x16u);
          }

          [v12 didFailToActivate];
        }

LABEL_27:
      }

      v9 = [dequeueAllObjects countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (!v9)
      {
LABEL_29:

        queueCopy = v30;
        break;
      }
    }
  }
}

- (BOOL)_hasPresentationForPresenter:(id)presenter
{
  presenterCopy = presenter;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SBAlertItemsController__hasPresentationForPresenter___block_invoke;
  v7[3] = &unk_2783ADDA0;
  v5 = presenterCopy;
  v8 = v5;
  v9 = &v10;
  [(SBAlertItemsController *)self _enumeratePresentationsWithType:3 usingBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __55__SBAlertItemsController__hasPresentationForPresenter___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32) == a3)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (id)_presentedAlertItemForPresenter:(id)presenter
{
  presenterCopy = presenter;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__14;
  v15 = __Block_byref_object_dispose__14;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__SBAlertItemsController__presentedAlertItemForPresenter___block_invoke;
  v8[3] = &unk_2783ADDA0;
  v5 = presenterCopy;
  v9 = v5;
  v10 = &v11;
  [(SBAlertItemsController *)self _enumeratePresentationsWithType:3 usingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __58__SBAlertItemsController__presentedAlertItemForPresenter___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (*(a1 + 32) == a3)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v6 = v7;
  }
}

- (BOOL)_shouldPendAlertItem:(id)item outReasonsPended:(id *)pended
{
  v99 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v89 = 0;
  v90 = &v89;
  v91 = 0x3032000000;
  v92 = __Block_byref_object_copy__14;
  v93 = __Block_byref_object_dispose__14;
  v94 = 0;
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = __64__SBAlertItemsController__shouldPendAlertItem_outReasonsPended___block_invoke;
  v88[3] = &unk_2783ADD78;
  v88[4] = &v89;
  v88[5] = pended;
  v62 = MEMORY[0x223D6F7F0](v88);
  if (-[NSMutableSet count](self->_forceAlertsToPendReasons, "count") && (![itemCopy allowDuringTransitionAnimations] || (-[NSMutableSet bs_containsObjectPassingTest:](self->_forceAlertsToPendReasons, "bs_containsObjectPassingTest:", &__block_literal_global_87) & 1) != 0))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Forced to pend for reasons: %@", self->_forceAlertsToPendReasons];
    (v62)[2](v62, v5);
  }

  v6 = [(NSMutableOrderedSet *)self->_superModalAlertItemPresentations count];
  behavesSuperModally = [itemCopy behavesSuperModally];
  if (!((v6 == 0) | behavesSuperModally & 1))
  {
    (v62)[2](v62, @"Restricted because we have a currently visible super modal presentation.");
  }

  v8 = +[SBSetupManager sharedInstance];
  if ([v8 isInSetupMode])
  {
    allowInSetup = [itemCopy allowInSetup];

    if ((allowInSetup & 1) == 0)
    {
      (v62)[2](v62, @"Restricted because we're in Setup.");
    }
  }

  else
  {
  }

  allowedBundleIDs = [itemCopy allowedBundleIDs];
  v10 = &v84;
  v84 = 0;
  v85 = &v84;
  v86 = 0x2020000000;
  v87 = 0;
  if ((behavesSuperModally & 1) == 0)
  {
    v11 = [allowedBundleIDs count];
    v10 = v85;
    if (v11)
    {
      *(v85 + 24) = 1;
      v12 = SBWorkspaceApplicationSceneHandlesInLockedOrUnlockedEnvironmentLayoutState();
      v61 = v12;
      if ([v12 count])
      {
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v80 objects:v98 count:16];
        if (v14)
        {
          v15 = *v81;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v81 != v15)
              {
                objc_enumerationMutation(v13);
              }

              application = [*(*(&v80 + 1) + 8 * i) application];
              bundleIdentifier = [application bundleIdentifier];

              if (bundleIdentifier && [allowedBundleIDs containsObject:bundleIdentifier])
              {
                *(v85 + 24) = 0;

                goto LABEL_27;
              }
            }

            v14 = [v13 countByEnumeratingWithState:&v80 objects:v98 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

LABEL_27:

        v20 = v85;
      }

      else
      {
        v19 = [allowedBundleIDs containsObject:@"com.apple.springboard"];
        v20 = v85;
        if (v19)
        {
          *(v85 + 24) = 0;
        }
      }

      if (*(v20 + 24) == 1)
      {
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v21 = allowedBundleIDs;
        v22 = [v21 countByEnumeratingWithState:&v76 objects:v97 count:16];
        if (v22)
        {
          v23 = *v77;
          while (2)
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v77 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = *(*(&v76 + 1) + 8 * j);
              currentLayout = [(FBSDisplayLayoutMonitor *)self->_layoutMonitor currentLayout];
              elements = [currentLayout elements];
              v75[0] = MEMORY[0x277D85DD0];
              v75[1] = 3221225472;
              v75[2] = __64__SBAlertItemsController__shouldPendAlertItem_outReasonsPended___block_invoke_3;
              v75[3] = &unk_2783ADDE8;
              v75[4] = v25;
              LODWORD(v25) = [elements bs_containsObjectPassingTest:v75];

              if (v25)
              {
                *(v85 + 24) = 0;
                goto LABEL_39;
              }
            }

            v22 = [v21 countByEnumeratingWithState:&v76 objects:v97 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

LABEL_39:

        if (v85[3])
        {
          v28 = +[SBWorkspace mainWorkspace];
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v29 = v21;
          v30 = [v29 countByEnumeratingWithState:&v71 objects:v96 count:16];
          if (v30)
          {
            v31 = *v72;
            while (2)
            {
              for (k = 0; k != v30; ++k)
              {
                if (*v72 != v31)
                {
                  objc_enumerationMutation(v29);
                }

                v33 = *(*(&v71 + 1) + 8 * k);
                v34 = +[SBApplicationController sharedInstanceIfExists];
                v35 = [v34 applicationWithBundleIdentifier:v33];

                if ([v28 isApplicationRunningAsViewService:v35])
                {
                  v36 = MEMORY[0x277CF0CD0];
                  processState = [v35 processState];
                  v38 = [v36 processHandleForPID:objc_msgSend(processState bundleID:{"pid"), v33}];

                  transientOverlayPresentationManager = [v28 transientOverlayPresentationManager];
                  LOBYTE(processState) = [transientOverlayPresentationManager hasActivePresentationFromProcess:v38];

                  if (processState)
                  {
                    *(v85 + 24) = 0;

                    goto LABEL_52;
                  }
                }
              }

              v30 = [v29 countByEnumeratingWithState:&v71 objects:v96 count:16];
              if (v30)
              {
                continue;
              }

              break;
            }
          }

LABEL_52:

          if (v85[3])
          {
            v60 = objc_alloc_init(SBKeyboardFocusVisibilityGraphNavigator);
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v40 = v29;
            v41 = [v40 countByEnumeratingWithState:&v67 objects:v95 count:16];
            if (v41)
            {
              v42 = *v68;
LABEL_55:
              v43 = 0;
              while (1)
              {
                if (*v68 != v42)
                {
                  objc_enumerationMutation(v40);
                }

                v44 = *(*(&v67 + 1) + 8 * v43);
                v45 = +[SBApplicationController sharedInstanceIfExists];
                v46 = [v45 applicationWithBundleIdentifier:v44];

                processState2 = [v46 processState];
                v48 = [processState2 pid];

                if (v48)
                {
                  v66[0] = MEMORY[0x277D85DD0];
                  v66[1] = 3221225472;
                  v66[2] = __64__SBAlertItemsController__shouldPendAlertItem_outReasonsPended___block_invoke_4;
                  v66[3] = &unk_2783ADE38;
                  v66[4] = &v84;
                  [(SBKeyboardFocusVisibilityGraphNavigator *)v60 reverseEnumerateChainContainingSceneFromProcessID:v48 block:v66];
                }

                v49 = *(v85 + 24);

                if ((v49 & 1) == 0)
                {
                  break;
                }

                if (v41 == ++v43)
                {
                  v41 = [v40 countByEnumeratingWithState:&v67 objects:v95 count:16];
                  if (v41)
                  {
                    goto LABEL_55;
                  }

                  break;
                }
              }
            }
          }
        }
      }

      v10 = v85;
    }
  }

  if (*(v10 + 24) == 1)
  {
    v50 = MEMORY[0x277CCACA8];
    allowedBundleIDs2 = [itemCopy allowedBundleIDs];
    v52 = [v50 stringWithFormat:@"Restricted to only appear over the following bundle ids: %@", allowedBundleIDs2];
    (v62)[2](v62, v52);
  }

  if ([itemCopy pendWhileKeyBagLocked])
  {
    authenticationController = [SBApp authenticationController];
    isAuthenticated = [authenticationController isAuthenticated];

    if ((isAuthenticated & 1) == 0)
    {
      (v62)[2](v62, @"Restricted while the keybag is locked.");
    }
  }

  v55 = [(SBAlertItemsController *)self _presenterForAlertItem:itemCopy];
  if (!v55)
  {
    (v62)[2](v62, @"Restricted because there's no presenter that can handle this alert item at this time.");
  }

  if ([itemCopy _didEverActivate] && (objc_msgSend(v55, "canPresentMultipleAlertItemsSimultaneously") & 1) == 0 && -[SBAlertItemsController _hasPresentationForPresenter:](self, "_hasPresentationForPresenter:", v55))
  {
    (v62)[2](v62, @"Restricted because the presenter for this alert item is busy.");
  }

  v56 = +[SBTelephonyManager sharedTelephonyManager];
  if ([v56 isEmergencyCallActive])
  {
    shouldShowInEmergencyCall = [itemCopy shouldShowInEmergencyCall];

    if ((shouldShowInEmergencyCall & 1) == 0)
    {
      (v62)[2](v62, @"Restricted while in an emergency call.");
    }
  }

  else
  {
  }

  if ([SBApp caseIsEnabledAndLatched])
  {
    [itemCopy playPresentationSound];
    (v62)[2](v62, @"Restricted while the smart cover is on.");
  }

  v58 = [v90[5] count] != 0;

  _Block_object_dispose(&v84, 8);
  _Block_object_dispose(&v89, 8);

  return v58;
}

void __64__SBAlertItemsController__shouldPendAlertItem_outReasonsPended___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v8 = v3;
    if (!v4)
    {
      v5 = [MEMORY[0x277CBEB18] array];
      v6 = *(*(a1 + 32) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      **(a1 + 40) = *(*(*(a1 + 32) + 8) + 40);
      v4 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v4 addObject:v8];
    v3 = v8;
  }
}

uint64_t __64__SBAlertItemsController__shouldPendAlertItem_outReasonsPended___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 containsString:*(a1 + 32)];

  return v4;
}

void __64__SBAlertItemsController__shouldPendAlertItem_outReasonsPended___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [SBApp windowSceneManager];
  v8 = [v7 connectedWindowScenes];

  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * i) sceneManager];
        v14 = [v13 allScenes];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __64__SBAlertItemsController__shouldPendAlertItem_outReasonsPended___block_invoke_5;
        v16[3] = &unk_2783ADE10;
        v17 = v6;
        v15 = [v14 bs_containsObjectPassingTest:v16];

        if (v15)
        {

          *(*(*(a1 + 32) + 8) + 24) = 0;
          *a4 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

uint64_t __64__SBAlertItemsController__shouldPendAlertItem_outReasonsPended___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 identityToken];
  v3 = [v2 stringRepresentation];
  v4 = BSEqualObjects();

  return v4;
}

- (id)_presenterForAlertItem:(id)item
{
  itemCopy = item;
  lockScreenModalAlertItemPresenter = [(SBAlertItemsController *)self lockScreenModalAlertItemPresenter];
  lockScreenNotificationsAlertItemPresenter = [(SBAlertItemsController *)self lockScreenNotificationsAlertItemPresenter];
  systemApertureAlertItemPresenter = [(SBAlertItemsController *)self systemApertureAlertItemPresenter];
  unlockedAlertItemPresenter = [(SBAlertItemsController *)self unlockedAlertItemPresenter];
  v9 = self->_inUILockedMode && [itemCopy shouldShowInLockScreen] && !self->_isContinuityDisplaySceneConnected;
  if ([(SBUserSessionController *)self->_userSessionController isLoginSession])
  {
    allowInLoginWindow = [itemCopy allowInLoginWindow];
    if (((allowInLoginWindow | v9) & 1) == 0)
    {
      goto LABEL_14;
    }

    if (allowInLoginWindow)
    {
      goto LABEL_11;
    }
  }

  else if (!v9)
  {
    goto LABEL_14;
  }

  if (![itemCopy forcesModalAlertAppearance])
  {
    goto LABEL_12;
  }

LABEL_11:
  v11 = [(NSMutableSet *)self->_activePresenters containsObject:lockScreenModalAlertItemPresenter];
  v12 = lockScreenModalAlertItemPresenter;
  if ((v11 & 1) == 0)
  {
LABEL_12:
    v13 = [(NSMutableSet *)self->_activePresenters containsObject:lockScreenNotificationsAlertItemPresenter];
    v12 = lockScreenNotificationsAlertItemPresenter;
    if (!v13)
    {
      goto LABEL_14;
    }
  }

  v14 = v12;
  if (v14)
  {
LABEL_19:
    v17 = v14;
    goto LABEL_21;
  }

LABEL_14:
  if (!-[NSMutableSet containsObject:](self->_activePresenters, "containsObject:", systemApertureAlertItemPresenter) || ([itemCopy _systemApertureElement], (v15 = objc_claimAutoreleasedReturnValue()) == 0) || (v16 = v15, v17 = systemApertureAlertItemPresenter, v16, !v17))
  {
    if ([(NSMutableSet *)self->_activePresenters containsObject:unlockedAlertItemPresenter])
    {
      v14 = unlockedAlertItemPresenter;
      goto LABEL_19;
    }

    v17 = 0;
  }

LABEL_21:

  return v17;
}

- (id)_activePresenterForAlertItem:(id)item
{
  itemCopy = item;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__14;
  v16 = __Block_byref_object_dispose__14;
  v17 = 0;
  if ([itemCopy behavesSuperModally])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__SBAlertItemsController__activePresenterForAlertItem___block_invoke;
  v9[3] = &unk_2783ADDA0;
  v6 = itemCopy;
  v10 = v6;
  v11 = &v12;
  [(SBAlertItemsController *)self _enumeratePresentationsWithType:v5 usingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__SBAlertItemsController__activePresenterForAlertItem___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if (*(a1 + 32) == a2)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v8 = v9;
    *a4 = 1;
  }
}

- (void)_presentAlertItem:(id)item withPresenter:(id)presenter animated:(BOOL)animated
{
  animatedCopy = animated;
  v35 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  presenterCopy = presenter;
  v10 = presenterCopy;
  if (!itemCopy)
  {
    [SBAlertItemsController _presentAlertItem:withPresenter:animated:];
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_17:
    [SBAlertItemsController _presentAlertItem:withPresenter:animated:];
    goto LABEL_3;
  }

  if (!presenterCopy)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (([v10 canPresentMultipleAlertItemsSimultaneously] & 1) == 0 && -[SBAlertItemsController _hasPresentationForPresenter:](self, "_hasPresentationForPresenter:", v10))
  {
    do
    {
      v11 = [(SBAlertItemsController *)self _presentedAlertItemForPresenter:v10];
      [(SBAlertItemsController *)self _deactivateAlertItem:v11 reason:1 animated:0];
    }

    while ([(SBAlertItemsController *)self _hasPresentationForPresenter:v10]);
  }

  v12 = [[SBAlertItemPresentation alloc] initWithAlertItem:itemCopy presenter:v10];
  v13 = SBLogAlertItems();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v32 = v10;
    v33 = 2114;
    v34 = v12;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Activation - Presenter:%{public}@ will present presentation: %{public}@", buf, 0x16u);
  }

  [itemCopy willActivate];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __67__SBAlertItemsController__presentAlertItem_withPresenter_animated___block_invoke;
  v29[3] = &unk_2783ADE60;
  v29[4] = self;
  v14 = itemCopy;
  v30 = v14;
  [(SBAlertItemsController *)self _notifyObservers:v29];
  [(NSMutableOrderedSet *)self->_superModalAlertItemPresentations removeObject:v12];
  [(NSMutableOrderedSet *)self->_alertItemPresentations removeObject:v12];
  behavesSuperModally = [v14 behavesSuperModally];
  v16 = 40;
  if (behavesSuperModally)
  {
    v16 = 48;
  }

  [*(&self->super.isa + v16) addObject:v12];
  if (!self->_systemModalAlertVisibleAssertion && [(SBAlertItemsController *)self _hasActivePresentationsThatPresentModally])
  {
    systemModalAlertPresenter = self->_systemModalAlertPresenter;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [(SBModalAlertPresenter *)systemModalAlertPresenter acquireVisibleModalAlertAssertionWithDescription:v19];
    systemModalAlertVisibleAssertion = self->_systemModalAlertVisibleAssertion;
    self->_systemModalAlertVisibleAssertion = v20;
  }

  [v14 _setPresentationState:1];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __67__SBAlertItemsController__presentAlertItem_withPresenter_animated___block_invoke_2;
  v27[3] = &unk_2783A8C18;
  v22 = v14;
  v28 = v22;
  [v10 presentAlertItem:v22 animated:animatedCopy completion:v27];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __67__SBAlertItemsController__presentAlertItem_withPresenter_animated___block_invoke_3;
  v25[3] = &unk_2783ADE60;
  v25[4] = self;
  v23 = v22;
  v26 = v23;
  [(SBAlertItemsController *)self _notifyObservers:v25];
  [v23 didActivate];
  v24 = SBLogAlertItems();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v32 = v10;
    v33 = 2114;
    v34 = v12;
    _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "Activation - Presenter:%{public}@ did present presentation: %{public}@", buf, 0x16u);
  }
}

- (void)_deactivateAlertItem:(id)item reason:(int)reason animated:(BOOL)animated alertDismissCompletion:(id)completion
{
  v8 = *&reason;
  v38 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  completionCopy = completion;
  v13 = completionCopy;
  if (itemCopy)
  {
    v14 = SBLogAlertItems();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = SBStringFromAlertItemDeactivateReason();
      *buf = 138543618;
      *&buf[4] = itemCopy;
      *&buf[12] = 2114;
      *&buf[14] = v15;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Will deactivate alertItem: %{public}@ for reason: %{public}@", buf, 0x16u);
    }

    v16 = [(SBAlertItemsObjectQueue *)self->_alertItemsQueue containsObject:itemCopy];
    v17 = v16;
    if (v16)
    {
      [(SBAlertItemsObjectQueue *)self->_alertItemsQueue removeObject:itemCopy];
      [(SBAlertItemsController *)self _reallyDeactivateAlertItem:itemCopy forReason:v8 deactivateBlock:0];
    }

    if ([(SBAlertItemsObjectQueue *)self->_superModalItemsQueue containsObject:itemCopy])
    {
      [(SBAlertItemsObjectQueue *)self->_superModalItemsQueue removeObject:itemCopy];
      [(SBAlertItemsController *)self _reallyDeactivateAlertItem:itemCopy forReason:v8 deactivateBlock:0];
      v17 = 1;
    }

    pendedAlertsToReenqueuePostDismissal = self->_pendedAlertsToReenqueuePostDismissal;
    if (v8 == 1)
    {
      [(NSMutableSet *)pendedAlertsToReenqueuePostDismissal addObject:itemCopy];
    }

    else
    {
      [(NSMutableSet *)pendedAlertsToReenqueuePostDismissal removeObject:itemCopy];
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v37 = 0;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __86__SBAlertItemsController__deactivateAlertItem_reason_animated_alertDismissCompletion___block_invoke;
    v30[3] = &unk_2783ADEB0;
    v35 = v17;
    v33 = buf;
    v30[4] = self;
    v19 = itemCopy;
    v31 = v19;
    v34 = v8;
    v32 = v13;
    v20 = MEMORY[0x223D6F7F0](v30);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __86__SBAlertItemsController__deactivateAlertItem_reason_animated_alertDismissCompletion___block_invoke_139;
    v22[3] = &unk_2783ADED8;
    v26 = buf;
    v27 = a2;
    v23 = v19;
    selfCopy = self;
    v28 = v8;
    animatedCopy = animated;
    v21 = v20;
    v25 = v21;
    [(SBAlertItemsController *)self _enumeratePresentationsWithType:3 usingBlock:v22];
    if ((*(*&buf[8] + 24) & 1) == 0)
    {
      v21[2](v21);
    }

    _Block_object_dispose(buf, 8);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
  }
}

uint64_t __86__SBAlertItemsController__deactivateAlertItem_reason_animated_alertDismissCompletion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 68) & 1) != 0 || *(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v2 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __86__SBAlertItemsController__deactivateAlertItem_reason_animated_alertDismissCompletion___block_invoke_2;
    v11[3] = &unk_2783ADE88;
    v11[4] = v2;
    v12 = *(a1 + 40);
    v13 = *(a1 + 64);
    [v2 _notifyObservers:v11];
    v3 = [*(*(a1 + 32) + 32) containsObject:*(a1 + 40)];
    v4 = *(a1 + 32);
    if (v3)
    {
      [v4[4] removeObject:*(a1 + 40)];
      v5 = [*(a1 + 40) behavesSuperModally];
      v6 = *(a1 + 32);
      if (v5)
      {
        v7 = *(v6 + 24);
      }

      else
      {
        v7 = *(v6 + 16);
      }

      [v7 appendObject:*(a1 + 40)];
    }

    else
    {
      [v4 _processAlertItemQueuesAnimated:1];
    }
  }

  v8 = SBLogAlertItems();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 40) _publicDescription];
    *buf = 138543362;
    v15 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Deactivated alertItem: %{public}@", buf, 0xCu);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __86__SBAlertItemsController__deactivateAlertItem_reason_animated_alertDismissCompletion___block_invoke_139(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32) == v5)
  {
    v7 = *(*(a1 + 56) + 8);
    if (*(v7 + 24))
    {
      __86__SBAlertItemsController__deactivateAlertItem_reason_animated_alertDismissCompletion___block_invoke_139_cold_1(a1, (a1 + 32), a1 + 56, &v14);
      v7 = v14;
    }

    *(v7 + 24) = 1;
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(a1 + 72);
    v11 = *(a1 + 76);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __86__SBAlertItemsController__deactivateAlertItem_reason_animated_alertDismissCompletion___block_invoke_2_143;
    v12[3] = &unk_2783A9348;
    v13 = *(a1 + 48);
    [v8 _dismissAlertItem:v9 fromPresenter:v6 forReason:v10 animated:v11 completion:v12];
  }
}

- (BOOL)_hasActivePresentationsThatPresentModally
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = self->_alertItemPresentations;
  v4 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v21 != v6)
      {
        objc_enumerationMutation(v3);
      }

      presenter = [*(*(&v20 + 1) + 8 * v7) presenter];
      presentsAlertItemsModally = [presenter presentsAlertItemsModally];

      if (presentsAlertItemsModally)
      {
        goto LABEL_18;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_superModalAlertItemPresentations;
  v10 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v10)
  {
    v11 = *v17;
LABEL_11:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v3);
      }

      presenter2 = [*(*(&v16 + 1) + 8 * v12) presenter];
      presentsAlertItemsModally2 = [presenter2 presentsAlertItemsModally];

      if (presentsAlertItemsModally2)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v10)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

LABEL_18:
    LOBYTE(v10) = 1;
  }

LABEL_19:

  return v10;
}

- (void)_dismissAlertItem:(id)item fromPresenter:(id)presenter forReason:(int)reason animated:(BOOL)animated completion:(id)completion
{
  v9 = *&reason;
  v33 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  presenterCopy = presenter;
  completionCopy = completion;
  if (itemCopy)
  {
    if (presenterCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBAlertItemsController _dismissAlertItem:fromPresenter:forReason:animated:completion:];
    if (presenterCopy)
    {
      goto LABEL_3;
    }
  }

  [SBAlertItemsController _dismissAlertItem:fromPresenter:forReason:animated:completion:];
LABEL_3:
  v16 = [(SBAlertItemsController *)self _presentationForAlertItem:itemCopy];
  if (!v16)
  {
    [SBAlertItemsController _dismissAlertItem:a2 fromPresenter:self forReason:itemCopy animated:? completion:?];
  }

  v17 = SBLogAlertItems();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v30 = presenterCopy;
    v31 = 2114;
    v32 = v16;
    _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Deactivation - Presenter:%{public}@ will dismiss presentation: %{public}@.", buf, 0x16u);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __88__SBAlertItemsController__dismissAlertItem_fromPresenter_forReason_animated_completion___block_invoke;
  v23[3] = &unk_2783ADF00;
  v23[4] = self;
  v18 = v16;
  v24 = v18;
  v25 = itemCopy;
  v19 = presenterCopy;
  animatedCopy = animated;
  v26 = v19;
  v27 = completionCopy;
  v20 = completionCopy;
  v21 = itemCopy;
  [(SBAlertItemsController *)self _reallyDeactivateAlertItem:v21 forReason:v9 deactivateBlock:v23];
  v22 = SBLogAlertItems();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v30 = v19;
    v31 = 2114;
    v32 = v18;
    _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "Deactivation - Presenter:%{public}@ did dismiss presentation: %{public}@.", buf, 0x16u);
  }
}

void __88__SBAlertItemsController__dismissAlertItem_fromPresenter_forReason_animated_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
  [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  [*(a1 + 48) _setPresentationState:3];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 72);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__SBAlertItemsController__dismissAlertItem_fromPresenter_forReason_animated_completion___block_invoke_2;
  v7[3] = &unk_2783AA1E8;
  v5 = v2;
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  v10 = *(a1 + 64);
  [v3 dismissAlertItem:v5 animated:v4 completion:v7];
}

uint64_t __88__SBAlertItemsController__dismissAlertItem_fromPresenter_forReason_animated_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setPresentationState:4];
  if (([*(a1 + 40) _hasActivePresentationsThatPresentModally] & 1) == 0)
  {
    [*(*(a1 + 40) + 104) invalidate];
    v2 = *(a1 + 40);
    v3 = *(v2 + 104);
    *(v2 + 104) = 0;
  }

  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)_reallyDeactivateAlertItem:(id)item forReason:(int)reason deactivateBlock:(id)block
{
  v5 = *&reason;
  blockCopy = block;
  itemCopy = item;
  [itemCopy willDeactivateForReason:v5];
  if (blockCopy)
  {
    blockCopy[2]();
  }

  [itemCopy didDeactivateForReason:v5];
  [itemCopy _deactivationCompleted];
}

- (id)_presentationForAlertItem:(id)item
{
  v31 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  [MEMORY[0x277CBEA60] arrayWithObjects:{self->_superModalAlertItemPresentations, self->_alertItemPresentations, 0}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v28 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    v20 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v22;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v21 + 1) + 8 * j);
              alertItem = [v16 alertItem];

              if (alertItem == itemCopy)
              {
                v18 = v16;

                goto LABEL_19;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v8 = v20;
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
      v18 = 0;
    }

    while (v7);
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  return v18;
}

- (BOOL)_hasVisibleModalAlertOfType:(unint64_t)type
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__SBAlertItemsController__hasVisibleModalAlertOfType___block_invoke;
  v5[3] = &unk_2783ADF28;
  v5[4] = &v6;
  [(SBAlertItemsController *)self _enumeratePresentationsWithType:type usingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __54__SBAlertItemsController__hasVisibleModalAlertOfType___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 presentsAlertItemsModally];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)_hasVisibleModalAlertOfType:(unint64_t)type forWindowScene:(id)scene
{
  sceneCopy = scene;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__SBAlertItemsController__hasVisibleModalAlertOfType_forWindowScene___block_invoke;
  v9[3] = &unk_2783ADDA0;
  v7 = sceneCopy;
  v10 = v7;
  v11 = &v12;
  [(SBAlertItemsController *)self _enumeratePresentationsWithType:type usingBlock:v9];
  LOBYTE(type) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return type;
}

void __69__SBAlertItemsController__hasVisibleModalAlertOfType_forWindowScene___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  if ([a3 presentsAlertItemsModally])
  {
    v7 = [v10 alertController];
    v8 = [v7 _sbWindowScene];
    v9 = [v8 isEqual:*(a1 + 32)];

    if (v9)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

- (void)_enumerateWithDirection:(unint64_t)direction presentationsWithType:(unint64_t)type usingBlock:(id)block
{
  typeCopy = type;
  v26 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v9 = objc_alloc_init(MEMORY[0x277CBEB40]);
  if ((typeCopy & 2) != 0)
  {
    array = [(NSMutableOrderedSet *)self->_superModalAlertItemPresentations array];
    [v9 addObjectsFromArray:array];
  }

  if (typeCopy)
  {
    array2 = [(NSMutableOrderedSet *)self->_alertItemPresentations array];
    [v9 addObjectsFromArray:array2];
  }

  v24 = 0;
  if (direction)
  {
    [v9 reverseObjectEnumerator];
  }

  else
  {
    [v9 objectEnumerator];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v12 = v21 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
LABEL_10:
    v16 = 0;
    while (1)
    {
      if (*v21 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v20 + 1) + 8 * v16);
      alertItem = [v17 alertItem];
      presenter = [v17 presenter];
      blockCopy[2](blockCopy, alertItem, presenter, &v24);

      if (v24)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v14)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }
}

- (BOOL)deactivateAlertItemsOfClass:(Class)class reason:(int)reason animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = *&reason;
  v20 = *MEMORY[0x277D85DE8];
  v8 = [(SBAlertItemsController *)self alertItemsOfClass:class];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(SBAlertItemsController *)self deactivateAlertItem:*(*(&v15 + 1) + 8 * i) reason:v6 animated:animatedCopy];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = [v8 count] != 0;

  return v13;
}

- (id)alertItemsOfClass:(Class)class
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([(SBAlertItemsObjectQueue *)self->_superModalItemsQueue hasObjectOfClass:class])
  {
    v6 = [(SBAlertItemsObjectQueue *)self->_superModalItemsQueue objectsOfClass:class];
    [v5 unionSet:v6];
  }

  if ([(SBAlertItemsObjectQueue *)self->_alertItemsQueue hasObjectOfClass:class])
  {
    v7 = [(SBAlertItemsObjectQueue *)self->_alertItemsQueue objectsOfClass:class];
    [v5 unionSet:v7];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__SBAlertItemsController_alertItemsOfClass___block_invoke;
  v10[3] = &unk_2783ADF50;
  classCopy = class;
  v8 = v5;
  v11 = v8;
  [(SBAlertItemsController *)self _enumeratePresentationsWithType:3 usingBlock:v10];

  return v8;
}

void __44__SBAlertItemsController_alertItemsOfClass___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (BOOL)hasAlertOfClass:(Class)class
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = [(SBAlertItemsObjectQueue *)self->_superModalItemsQueue hasObjectOfClass:?];
  if ((v10[3] & 1) != 0 || (v5 = [(SBAlertItemsObjectQueue *)self->_alertItemsQueue hasObjectOfClass:class], (*(v10 + 24) = v5) != 0))
  {
    v6 = 1;
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__SBAlertItemsController_hasAlertOfClass___block_invoke;
    v8[3] = &unk_2783ADF78;
    v8[4] = &v9;
    v8[5] = class;
    [(SBAlertItemsController *)self _enumeratePresentationsWithType:3 usingBlock:v8];
    v6 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);
  return v6 & 1;
}

uint64_t __42__SBAlertItemsController_hasAlertOfClass___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = objc_opt_isKindOfClass();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)hasAlerts
{
  hasObject = [(SBAlertItemsObjectQueue *)self->_alertItemsQueue hasObject];
  hasObject2 = [(SBAlertItemsObjectQueue *)self->_superModalItemsQueue hasObject];
  v5 = [(NSMutableOrderedSet *)self->_alertItemPresentations count];
  v6 = [(NSMutableOrderedSet *)self->_superModalAlertItemPresentations count];
  result = 1;
  if (!hasObject)
  {
    v8 = (v5 | v6) != 0;
    return hasObject2 || v8;
  }

  return result;
}

- (BOOL)hasLockScreenModalAlert
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__SBAlertItemsController_hasLockScreenModalAlert__block_invoke;
  v4[3] = &unk_2783ADDA0;
  v4[4] = self;
  v4[5] = &v5;
  [(SBAlertItemsController *)self _enumeratePresentationsWithType:3 usingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __49__SBAlertItemsController_hasLockScreenModalAlert__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 lockScreenModalAlertItemPresenter];

  if (v8 == v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)hasVisibleAlertForWindowScene:(id)scene
{
  sceneCopy = scene;
  if ([(NSMutableOrderedSet *)self->_alertItemPresentations count])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(SBAlertItemsController *)self _hasVisibleModalAlertOfType:2 forWindowScene:sceneCopy];
  }

  return v5;
}

- (BOOL)deactivateAlertForMenuClickOrSystemGestureWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  visibleAlertItem = [(SBAlertItemsController *)self visibleAlertItem];
  v6 = visibleAlertItem;
  if (visibleAlertItem && [visibleAlertItem allowMenuButtonDismissal])
  {
    [(SBAlertItemsController *)self deactivateAlertItem:v6 reason:2 animated:animationCopy];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setForceAlertsToPend:(BOOL)pend forReason:(id)reason
{
  pendCopy = pend;
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [SBAlertItemsController setForceAlertsToPend:forReason:];
  }

  v7 = SBLogAlertItems();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (pendCopy)
  {
    if (v8)
    {
      [SBAlertItemsController setForceAlertsToPend:reasonCopy forReason:v7];
    }

    [(NSMutableSet *)self->_forceAlertsToPendReasons addObject:reasonCopy];
  }

  else
  {
    if (v8)
    {
      [SBAlertItemsController setForceAlertsToPend:reasonCopy forReason:v7];
    }

    v9 = [(NSMutableSet *)self->_forceAlertsToPendReasons count];
    [(NSMutableSet *)self->_forceAlertsToPendReasons removeObject:reasonCopy];
    if (v9 && ![(NSMutableSet *)self->_forceAlertsToPendReasons count])
    {
      [(SBAlertItemsController *)self activatePendedAlertsIfNecessary];
    }
  }
}

- (void)moveActiveUnlockedAlertsToPendingWithAnimation:(BOOL)animation completion:(id)completion
{
  animationCopy = animation;
  completionCopy = completion;
  v7 = [(NSMutableOrderedSet *)self->_alertItemPresentations count];
  v8 = [(NSMutableOrderedSet *)self->_superModalAlertItemPresentations count]+ v7;
  if ([(NSMutableSet *)self->_forceAlertsToPendReasons count])
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    if (completionCopy)
    {
      v10 = [MEMORY[0x277CF0BA0] sentinelWithQueue:MEMORY[0x277D85CD0] signalCount:v8 completion:completionCopy];
    }

    else
    {
      v10 = 0;
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84__SBAlertItemsController_moveActiveUnlockedAlertsToPendingWithAnimation_completion___block_invoke;
    v12[3] = &unk_2783A97D8;
    v14 = animationCopy;
    v12[4] = self;
    v13 = v10;
    v11 = v10;
    [(SBAlertItemsController *)self _performBatchActions:v12 animated:animationCopy processQueue:0];
  }
}

void __84__SBAlertItemsController_moveActiveUnlockedAlertsToPendingWithAnimation_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __84__SBAlertItemsController_moveActiveUnlockedAlertsToPendingWithAnimation_completion___block_invoke_2;
  v2[3] = &unk_2783ADFA0;
  v2[4] = v1;
  v4 = *(a1 + 48);
  v3 = *(a1 + 40);
  [v1 _enumeratePresentationsWithType:3 usingBlock:v2];
}

void __84__SBAlertItemsController_moveActiveUnlockedAlertsToPendingWithAnimation_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) unlockedAlertItemPresenter];
  v8 = v7;
  if (v7 == v6)
  {

    goto LABEL_5;
  }

  v9 = [*(a1 + 32) systemApertureAlertItemPresenter];

  if (v9 == v6)
  {
LABEL_5:
    v10 = *(a1 + 48);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84__SBAlertItemsController_moveActiveUnlockedAlertsToPendingWithAnimation_completion___block_invoke_3;
    v12[3] = &unk_2783A8C18;
    v11 = *(a1 + 32);
    v13 = *(a1 + 40);
    [v11 _deactivateAlertItem:v5 reason:1 animated:v10 alertDismissCompletion:v12];

    goto LABEL_6;
  }

  [*(a1 + 40) signal];
LABEL_6:
}

- (void)_buddyDidExit
{
  if (![(NSMutableSet *)self->_forceAlertsToPendReasons count])
  {

    [(SBAlertItemsController *)self activatePendedAlertsIfNecessary];
  }
}

- (void)_activeCallStateDidChange:(id)change
{
  v4 = +[SBTelephonyManager sharedTelephonyManager];
  inCall = [v4 inCall];

  if ((inCall & 1) == 0)
  {

    [(SBAlertItemsController *)self _processAlertItemQueuesAnimated:1];
  }
}

- (void)_silencingHardwareButtonPressed:(id)pressed
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__SBAlertItemsController__silencingHardwareButtonPressed___block_invoke;
  v3[3] = &unk_2783ADD50;
  v3[4] = self;
  [(SBAlertItemsController *)self _enumeratePresentationsWithType:3 usingBlock:v3];
}

void __58__SBAlertItemsController__silencingHardwareButtonPressed___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) lockScreenModalAlertItemPresenter];
  v7 = v6;
  if (v6 == v5)
  {
  }

  else
  {
    v8 = [*(a1 + 32) lockScreenNotificationsAlertItemPresenter];

    if (v8 != v5)
    {
      goto LABEL_6;
    }
  }

  [v9 _noteSilencingHardwareButtonPressed];
LABEL_6:
}

- (void)_notifyObservers:(id)observers
{
  v15 = *MEMORY[0x277D85DE8];
  observersCopy = observers;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        observersCopy[2](observersCopy, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)captureSuppressionAssertion:(id)assertion reason:(id)reason
{
  v23 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v7 = MEMORY[0x277CCACC8];
  assertionCopy = assertion;
  if ([v7 isMainThread])
  {
    if (assertionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBAlertItemsController captureSuppressionAssertion:reason:];
    if (assertionCopy)
    {
      goto LABEL_3;
    }
  }

  [SBAlertItemsController captureSuppressionAssertion:reason:];
LABEL_3:
  v9 = [objc_alloc(MEMORY[0x277CF0CB8]) initWithSendRight:assertionCopy];

  suppressionAssertionReasons = self->_suppressionAssertionReasons;
  if (suppressionAssertionReasons)
  {
    if (reasonCopy)
    {
LABEL_5:
      [(NSMapTable *)suppressionAssertionReasons setObject:reasonCopy forKey:v9];
      goto LABEL_8;
    }
  }

  else
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v12 = self->_suppressionAssertionReasons;
    self->_suppressionAssertionReasons = strongToStrongObjectsMapTable;

    suppressionAssertionReasons = self->_suppressionAssertionReasons;
    if (reasonCopy)
    {
      goto LABEL_5;
    }
  }

  v13 = [v9 description];
  [(NSMapTable *)suppressionAssertionReasons setObject:v13 forKey:v9];

LABEL_8:
  v14 = SBLogAlertItems();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Adding alertItemsSuppression assertion : %{public}@", buf, 0xCu);
  }

  [(SBAlertItemsController *)self setForceAlertsToPend:1 forReason:@"suppressionAssertions"];
  [(SBAlertItemsController *)self moveActiveUnlockedAlertsToPendingWithAnimation:1 completion:0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__SBAlertItemsController_captureSuppressionAssertion_reason___block_invoke;
  v17[3] = &unk_2783A8ED8;
  v18 = reasonCopy;
  selfCopy = self;
  v20 = v9;
  v15 = v9;
  v16 = reasonCopy;
  [v15 activateWithHandler:v17];
}

void __61__SBAlertItemsController_captureSuppressionAssertion_reason___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  BSDispatchMain();
}

uint64_t __61__SBAlertItemsController_captureSuppressionAssertion_reason___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = SBLogAlertItems();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Removing alertItemsSuppression assertion : %{public}@", &v7, 0xCu);
  }

  [*(*(a1 + 40) + 72) removeObjectForKey:*(a1 + 48)];
  result = [*(*(a1 + 40) + 72) count];
  if (!result)
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 72);
    *(v5 + 72) = 0;

    return [*(a1 + 40) setForceAlertsToPend:0 forReason:@"suppressionAssertions"];
  }

  return result;
}

- (SBWindowSceneManager)windowSceneManager
{
  WeakRetained = objc_loadWeakRetained(&self->_windowSceneManager);

  return WeakRetained;
}

- (void)deactivateAlertItem:reason:animated:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_presentAlertItem:withPresenter:animated:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"alertItem" object:? file:? lineNumber:? description:?];
}

- (void)_presentAlertItem:withPresenter:animated:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"presenter" object:? file:? lineNumber:? description:?];
}

void __86__SBAlertItemsController__deactivateAlertItem_reason_animated_alertDismissCompletion___block_invoke_139_cold_1(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"SBAlertItemsController.m" lineNumber:910 description:{@"We must have only one presentation for an alert item (alertItem: %@).", *a2}];

  *a4 = *(*a3 + 8);
}

- (void)_dismissAlertItem:fromPresenter:forReason:animated:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"alertItem" object:? file:? lineNumber:? description:?];
}

- (void)_dismissAlertItem:fromPresenter:forReason:animated:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"presenter" object:? file:? lineNumber:? description:?];
}

- (void)_dismissAlertItem:(uint64_t)a3 fromPresenter:forReason:animated:completion:.cold.3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBAlertItemsController.m" lineNumber:941 description:{@"We must have a presentation for an alert item to dismiss it (alertItem: %@).", a3}];
}

- (void)setForceAlertsToPend:forReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setForceAlertsToPend:(uint64_t)a1 forReason:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Removing pend alert items reason: %@", &v2, 0xCu);
}

- (void)setForceAlertsToPend:(uint64_t)a1 forReason:(NSObject *)a2 .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Adding pend alert items reason: %@", &v2, 0xCu);
}

- (void)captureSuppressionAssertion:reason:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBAlertItemsController captureSuppressionAssertion:reason:]"];
  [v1 handleFailureInFunction:v0 file:@"SBAlertItemsController.m" lineNumber:1248 description:@"this call must be made on the main thread"];
}

- (void)captureSuppressionAssertion:reason:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"sendRight" object:? file:? lineNumber:? description:?];
}

@end