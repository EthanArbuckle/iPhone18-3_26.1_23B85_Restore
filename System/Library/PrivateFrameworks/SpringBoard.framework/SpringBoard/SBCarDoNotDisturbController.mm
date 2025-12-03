@interface SBCarDoNotDisturbController
- (BOOL)_dismissAlertItemsAnimated:(BOOL)animated;
- (BOOL)_hasShownSiriHeaderViewControllerDuringCurrentCarDNDSession;
- (BOOL)_isExitConfirmationRequired;
- (BOOL)_shouldExitConfirmationBeEnforced;
- (BOOL)handleEvent:(id)event;
- (BOOL)unlockFromSource:(int)source;
- (NSString)coverSheetIdentifier;
- (SBCarDoNotDisturbController)init;
- (SBCarDoNotDisturbController)initWithCARAutomaticDNDStatus:(id)status lockScreenManager:(id)manager;
- (unint64_t)restrictedCapabilities;
- (void)_queue_setExitConfirmationRequired:(BOOL)required;
- (void)_queue_setScreenOn:(BOOL)on;
- (void)_setHasShownSiriHeaderViewControllerDuringCurrentCarDNDSession:(BOOL)session;
- (void)_setScreenOn:(BOOL)on;
- (void)dealloc;
@end

@implementation SBCarDoNotDisturbController

- (BOOL)_isExitConfirmationRequired
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SBCarDoNotDisturbController__isExitConfirmationRequired__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_shouldExitConfirmationBeEnforced
{
  _isExitConfirmationRequired = [(SBCarDoNotDisturbController *)self _isExitConfirmationRequired];
  if (_isExitConfirmationRequired)
  {
    lockScreenManager = self->_lockScreenManager;

    LOBYTE(_isExitConfirmationRequired) = [(SBLockScreenManager *)lockScreenManager isLockScreenVisible];
  }

  return _isExitConfirmationRequired;
}

- (unint64_t)restrictedCapabilities
{
  if ([(SBCarDoNotDisturbController *)self _isExitConfirmationRequired])
  {
    return 10485956;
  }

  else
  {
    return 0;
  }
}

- (SBCarDoNotDisturbController)init
{
  v3 = objc_alloc_init(MEMORY[0x277CF8988]);
  v4 = +[SBLockScreenManager sharedInstance];
  v5 = [(SBCarDoNotDisturbController *)self initWithCARAutomaticDNDStatus:v3 lockScreenManager:v4];

  return v5;
}

- (SBCarDoNotDisturbController)initWithCARAutomaticDNDStatus:(id)status lockScreenManager:(id)manager
{
  statusCopy = status;
  managerCopy = manager;
  if (!statusCopy)
  {
    [SBCarDoNotDisturbController initWithCARAutomaticDNDStatus:a2 lockScreenManager:self];
  }

  v25.receiver = self;
  v25.super_class = SBCarDoNotDisturbController;
  v10 = [(SBCarDoNotDisturbController *)&v25 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_carAutomaticDNDStatus, status);
    objc_storeStrong(&v11->_lockScreenManager, manager);
    serial = [MEMORY[0x277CF0C18] serial];
    v13 = BSDispatchQueueCreate();
    queue = v11->_queue;
    v11->_queue = v13;

    carAutomaticDNDStatus = v11->_carAutomaticDNDStatus;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __79__SBCarDoNotDisturbController_initWithCARAutomaticDNDStatus_lockScreenManager___block_invoke;
    v23[3] = &unk_2783ACC28;
    v16 = v11;
    v24 = v16;
    [(CARAutomaticDNDStatus *)carAutomaticDNDStatus fetchAutomaticDNDExitConfirmationWithReply:v23];
    objc_initWeak(&location, v16);
    v17 = v11->_carAutomaticDNDStatus;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __79__SBCarDoNotDisturbController_initWithCARAutomaticDNDStatus_lockScreenManager___block_invoke_43;
    v20[3] = &unk_2783AC358;
    objc_copyWeak(&v21, &location);
    [(CARAutomaticDNDStatus *)v17 setExitConfirmationChangeObserver:v20];
    coverSheetViewController = [(SBLockScreenManager *)v11->_lockScreenManager coverSheetViewController];
    [coverSheetViewController registerExternalLockProvider:v16];
    [coverSheetViewController registerExternalEventHandler:v16];
    [coverSheetViewController registerExternalBehaviorProvider:v16];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __79__SBCarDoNotDisturbController_initWithCARAutomaticDNDStatus_lockScreenManager___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SBLogDoNotDisturbWhileDriving();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __79__SBCarDoNotDisturbController_initWithCARAutomaticDNDStatus_lockScreenManager___block_invoke_cold_1(v5, v7);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = @"Not Required";
      if (a2)
      {
        v8 = @"Required";
      }

      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "fetched car automatic DnD exit-confirmation status: %@", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v10 = v9[1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __79__SBCarDoNotDisturbController_initWithCARAutomaticDNDStatus_lockScreenManager___block_invoke_40;
    v11[3] = &unk_2783A9F58;
    v12 = v9;
    v13 = a2;
    dispatch_async(v10, v11);
    v7 = v12;
  }
}

_BYTE *__79__SBCarDoNotDisturbController_initWithCARAutomaticDNDStatus_lockScreenManager___block_invoke_40(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[16] & 1) == 0)
  {
    return [result _queue_setExitConfirmationRequired:*(a1 + 40)];
  }

  return result;
}

void __79__SBCarDoNotDisturbController_initWithCARAutomaticDNDStatus_lockScreenManager___block_invoke_43(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = SBLogDoNotDisturbWhileDriving();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v12 = a2;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "car automatic DnD exit-confirmation state update received, new state: %{BOOL}u", buf, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained[1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__SBCarDoNotDisturbController_initWithCARAutomaticDNDStatus_lockScreenManager___block_invoke_44;
  v8[3] = &unk_2783A9F58;
  v9 = WeakRetained;
  v10 = a2;
  v7 = WeakRetained;
  dispatch_async(v6, v8);
}

- (void)dealloc
{
  [(CARAutomaticDNDStatus *)self->_carAutomaticDNDStatus setExitConfirmationChangeObserver:0];
  coverSheetViewController = [(SBLockScreenManager *)self->_lockScreenManager coverSheetViewController];
  [coverSheetViewController unregisterExternalLockProvider:self];

  v4.receiver = self;
  v4.super_class = SBCarDoNotDisturbController;
  [(SBCarDoNotDisturbController *)&v4 dealloc];
}

- (BOOL)unlockFromSource:(int)source
{
  _shouldExitConfirmationBeEnforced = [(SBCarDoNotDisturbController *)self _shouldExitConfirmationBeEnforced];
  if (_shouldExitConfirmationBeEnforced)
  {
    v6 = objc_alloc_init(SBCarDoNotDisturbExitConfirmationAlertItem);
    objc_initWeak(&location, v6);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48__SBCarDoNotDisturbController_unlockFromSource___block_invoke;
    v13[3] = &unk_2783BE250;
    objc_copyWeak(&v14, &location);
    v13[4] = self;
    sourceCopy = source;
    [(SBCarDoNotDisturbExitConfirmationAlertItem *)v6 setNotDrivingActionHandler:v13];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__SBCarDoNotDisturbController_unlockFromSource___block_invoke_2_53;
    v12[3] = &unk_2783A8C18;
    v12[4] = self;
    [(SBCarDoNotDisturbExitConfirmationAlertItem *)v6 setCancelActionHandler:v12];
    v7 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
    policyAggregator = [v7 policyAggregator];
    if ([policyAggregator allowsCapability:4] && objc_msgSend(MEMORY[0x277D61990], "shouldShowCarDNDUseSiriHeaderViewController"))
    {
      _hasShownSiriHeaderViewControllerDuringCurrentCarDNDSession = [(SBCarDoNotDisturbController *)self _hasShownSiriHeaderViewControllerDuringCurrentCarDNDSession];

      if (!_hasShownSiriHeaderViewControllerDuringCurrentCarDNDSession)
      {
        [(SBCarDoNotDisturbExitConfirmationAlertItem *)v6 setShowSiriHeaderViewController:1];
        [(SBCarDoNotDisturbController *)self _setHasShownSiriHeaderViewControllerDuringCurrentCarDNDSession:1];
      }
    }

    else
    {
    }

    v10 = +[SBAlertItemsController sharedInstance];
    [v10 activateAlertItem:v6];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return !_shouldExitConfirmationBeEnforced;
}

void __48__SBCarDoNotDisturbController_unlockFromSource___block_invoke(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v2 = _os_activity_create(&dword_21ED4E000, "deactivate car automatic DnD", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &state);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained showSiriHeaderViewController])
  {
    v4 = *MEMORY[0x277D619E8];
  }

  else
  {
    v4 = 0;
  }

  v5 = SBLogDoNotDisturbWhileDriving();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "requesting end of car automatic DnD", buf, 2u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__SBCarDoNotDisturbController_unlockFromSource___block_invoke_49;
  v9[3] = &unk_2783BE228;
  v9[4] = v6;
  v8 = WeakRetained;
  v10 = v8;
  v11 = *(a1 + 48);
  [v7 disableDNDUntilEndOfDriveWithContext:v4 reply:v9];

  os_activity_scope_leave(&state);
}

void __48__SBCarDoNotDisturbController_unlockFromSource___block_invoke_49(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = SBLogDoNotDisturbWhileDriving();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "succeeded in ending car automatic DnD", buf, 2u);
    }

    v8 = *(*(a1 + 32) + 8);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __48__SBCarDoNotDisturbController_unlockFromSource___block_invoke_50;
    v18[3] = &unk_2783ACEE8;
    v9 = v19;
    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    v19[0] = v10;
    v19[1] = v11;
    v20 = *(a1 + 48);
    v12 = v18;
    v13 = v8;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __48__SBCarDoNotDisturbController_unlockFromSource___block_invoke_49_cold_1(v5, v7);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__SBCarDoNotDisturbController_unlockFromSource___block_invoke_52;
    block[3] = &unk_2783A92D8;
    v9 = v17;
    v14 = *(a1 + 40);
    v15 = *(a1 + 32);
    v17[0] = v14;
    v17[1] = v15;
    v13 = MEMORY[0x277D85CD0];
    v12 = block;
  }

  dispatch_async(v13, v12);
}

void __48__SBCarDoNotDisturbController_unlockFromSource___block_invoke_50(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SBCarDoNotDisturbController_unlockFromSource___block_invoke_2;
  block[3] = &unk_2783ACEE8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  v7 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], block);
  [*(a1 + 40) _queue_setExitConfirmationRequired:0];
}

void __48__SBCarDoNotDisturbController_unlockFromSource___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) deactivateForButton];
  v4 = [*(a1 + 40) alertDismissalHandler];
  if (v4)
  {
    (*(v4 + 2))(v4, *(a1 + 40), 0);
  }

  v2 = [*(*(a1 + 40) + 32) coverSheetViewController];
  v3 = [MEMORY[0x277D02B80] actionWithType:9];
  [v2 handleAction:v3 fromSender:*(a1 + 40)];

  [*(*(a1 + 40) + 32) unlockUIFromSource:*(a1 + 48) withOptions:0];
}

void __48__SBCarDoNotDisturbController_unlockFromSource___block_invoke_52(uint64_t a1)
{
  [*(a1 + 32) deactivateForButton];
  v2 = [*(a1 + 40) alertDismissalHandler];
  if (v2)
  {
    v3 = v2;
    v2[2](v2, *(a1 + 40), 1);
    v2 = v3;
  }
}

void __48__SBCarDoNotDisturbController_unlockFromSource___block_invoke_2_53(uint64_t a1)
{
  v2 = SBLogDoNotDisturbWhileDriving();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "user dismissed/cancelled end of automatic DnD", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SBCarDoNotDisturbController_unlockFromSource___block_invoke_54;
  block[3] = &unk_2783A8C18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __48__SBCarDoNotDisturbController_unlockFromSource___block_invoke_54(uint64_t a1)
{
  v2 = [*(a1 + 32) alertDismissalHandler];
  if (v2)
  {
    v3 = v2;
    v2[2](v2, *(a1 + 32), 1);
    v2 = v3;
  }
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  type = [eventCopy type];
  if (type == 24)
  {
    [(SBCarDoNotDisturbController *)self _setScreenOn:1];
  }

  else if (type == 25)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v6 = _os_activity_create(&dword_21ED4E000, "deactivate car automatic DnD alert item (screen off)", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if ([(SBCarDoNotDisturbController *)self _dismissAlertItemsAnimated:0])
    {
      v7 = SBLogDoNotDisturbWhileDriving();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "deactivated car automatic DnD alert item because screen turned off", v9, 2u);
      }
    }

    [(SBCarDoNotDisturbController *)self _setScreenOn:0];
    os_activity_scope_leave(&state);
  }

  return 0;
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_setScreenOn:(BOOL)on
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__SBCarDoNotDisturbController__setScreenOn___block_invoke;
  v4[3] = &unk_2783A9F58;
  v4[4] = self;
  onCopy = on;
  dispatch_async(queue, v4);
}

- (void)_queue_setScreenOn:(BOOL)on
{
  if (self->_queue_screenOn != on)
  {
    v8 = v3;
    v9 = v4;
    self->_queue_screenOn = on;
    if (!on && self->_queue_pendingExitConfirmationRequirement)
    {
      v6 = SBLogDoNotDisturbWhileDriving();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "enabling exit-confirmation requirement due to screen-off", v7, 2u);
      }

      [(SBCarDoNotDisturbController *)self _queue_setExitConfirmationRequired:1];
    }
  }
}

- (BOOL)_dismissAlertItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = +[SBAlertItemsController sharedInstance];
  v6 = [v5 deactivateAlertItemsOfClass:objc_opt_class() reason:5 animated:animatedCopy];

  alertDismissalHandler = [(SBCarDoNotDisturbController *)self alertDismissalHandler];
  v8 = alertDismissalHandler;
  if (alertDismissalHandler)
  {
    (*(alertDismissalHandler + 16))(alertDismissalHandler, self, 1);
  }

  return v6;
}

- (void)_queue_setExitConfirmationRequired:(BOOL)required
{
  requiredCopy = required;
  v13 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssert();
  self->_queue_pendingExitConfirmationRequirement = 0;
  if (requiredCopy)
  {
    self->_queue_hasShownSiriHeaderViewControllerDuringCurrentCarDNDSession = 0;
  }

  v5 = SBLogDoNotDisturbWhileDriving();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    queue_exitConfirmationRequired = self->_queue_exitConfirmationRequired;
    *buf = 67109376;
    v10 = requiredCopy;
    v11 = 1024;
    v12 = queue_exitConfirmationRequired;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "setting internal car automatic DnD exit-confirmation flag to %{BOOL}u (was %{BOOL}u)", buf, 0xEu);
  }

  self->_queue_stateValid = 1;
  if (self->_queue_exitConfirmationRequired != requiredCopy)
  {
    if (self->_queue_screenOn && requiredCopy)
    {
      v7 = SBLogDoNotDisturbWhileDriving();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "deferring exit-confirmation requirement until screen off", buf, 2u);
      }

      self->_queue_pendingExitConfirmationRequirement = 1;
    }

    else
    {
      self->_queue_exitConfirmationRequired = requiredCopy;
      if (!requiredCopy)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __66__SBCarDoNotDisturbController__queue_setExitConfirmationRequired___block_invoke;
        block[3] = &unk_2783A8C18;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }

      BSDispatchMain();
    }
  }
}

void __66__SBCarDoNotDisturbController__queue_setExitConfirmationRequired___block_invoke(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v2 = _os_activity_create(&dword_21ED4E000, "deactivate car automatic DnD alert item (exit-confirmation off)", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &state);

  if ([*(a1 + 32) _dismissAlertItemsAnimated:1])
  {
    v3 = SBLogDoNotDisturbWhileDriving();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "deactivated car automatic DnD alert item because exit-confirmation no longer required", v4, 2u);
    }
  }

  os_activity_scope_leave(&state);
}

void __66__SBCarDoNotDisturbController__queue_setExitConfirmationRequired___block_invoke_58(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) coverSheetViewController];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __66__SBCarDoNotDisturbController__queue_setExitConfirmationRequired___block_invoke_2;
  v9 = &unk_2783A92D8;
  v3 = v2;
  v4 = *(a1 + 32);
  v10 = v3;
  v11 = v4;
  v5 = MEMORY[0x223D6F7F0](&v6);
  if ([*(a1 + 32) _shouldExitConfirmationBeEnforced])
  {
    [v3 activateMainPageWithCompletion:v5];
  }

  else
  {
    v5[2](v5);
  }
}

uint64_t __66__SBCarDoNotDisturbController__queue_setExitConfirmationRequired___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) externalBehaviorProviderBehaviorChanged:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 externalLockProviderStateChanged:v3];
}

- (void)_setHasShownSiriHeaderViewControllerDuringCurrentCarDNDSession:(BOOL)session
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __94__SBCarDoNotDisturbController__setHasShownSiriHeaderViewControllerDuringCurrentCarDNDSession___block_invoke;
  v4[3] = &unk_2783A9F58;
  v4[4] = self;
  sessionCopy = session;
  dispatch_async(queue, v4);
}

- (BOOL)_hasShownSiriHeaderViewControllerDuringCurrentCarDNDSession
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __90__SBCarDoNotDisturbController__hasShownSiriHeaderViewControllerDuringCurrentCarDNDSession__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)initWithCARAutomaticDNDStatus:(uint64_t)a1 lockScreenManager:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCarDoNotDisturbController.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"carAutomaticDNDStatus"}];
}

void __79__SBCarDoNotDisturbController_initWithCARAutomaticDNDStatus_lockScreenManager___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "failed to fetch car automatic DnD exit-confirmation status with error %@", &v2, 0xCu);
}

void __48__SBCarDoNotDisturbController_unlockFromSource___block_invoke_49_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "failed to disable car automatic DnD with error %@", &v2, 0xCu);
}

@end