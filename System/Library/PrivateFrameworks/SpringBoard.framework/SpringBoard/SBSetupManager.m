@interface SBSetupManager
+ (SBSetupManager)sharedInstance;
- (BOOL)_setSetupRequiredReason:(unint64_t)a3;
- (BOOL)setupHasFinishedRestoringFromBackup;
- (BOOL)updateInSetupMode;
- (SBSetupManager)init;
- (void)_invalidateFloatingDockBehaviorAssertions;
- (void)_setupProcessChangedNotificationReceived:(id)a3;
- (void)_takeFloatingDockBehaviorAssertionForFloatingDockController:(id)a3;
- (void)_takeFloatingDockBehaviorAssertions;
- (void)_toggleSetupForMigrationNeeded:(BOOL)a3 forReason:(id)a4;
- (void)dealloc;
- (void)eventSource:(id)a3 didBeginTransitionToMode:(int64_t)a4 withLayoutState:(id)a5 activatingElement:(id)a6 triggeredBy:(int64_t)a7;
- (void)floatingDockControllerDidRegister:(id)a3;
- (void)postLaunchCompleteNotificationForSetup;
- (void)setDeferringDeviceOrientationUpdates:(BOOL)a3;
@end

@implementation SBSetupManager

+ (SBSetupManager)sharedInstance
{
  if (sharedInstance___once_1 != -1)
  {
    +[SBSetupManager sharedInstance];
  }

  v3 = sharedInstance___instance_3;

  return v3;
}

uint64_t __32__SBSetupManager_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBSetupManager);
  v1 = sharedInstance___instance_3;
  sharedInstance___instance_3 = v0;

  return kdebug_trace();
}

- (SBSetupManager)init
{
  v9.receiver = self;
  v9.super_class = SBSetupManager;
  v2 = [(SBSetupManager *)&v9 init];
  if (v2)
  {
    if (SBPrepareLaunchSentinelIfNecessary___once != -1)
    {
      [SBSetupManager init];
    }

    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    floatingDockControllers = v2->_floatingDockControllers;
    v2->_floatingDockControllers = v3;

    v5 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    floatingDockBehaviorAssertionsByFloatingDockController = v2->_floatingDockBehaviorAssertionsByFloatingDockController;
    v2->_floatingDockBehaviorAssertionsByFloatingDockController = v5;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, SBSetupDeviceMigrationNotificationReceived, *MEMORY[0x277D4D9F0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  [(SBSetupManager *)self _invalidateFloatingDockBehaviorAssertions];
  v3.receiver = self;
  v3.super_class = SBSetupManager;
  [(SBSetupManager *)&v3 dealloc];
}

- (BOOL)updateInSetupMode
{
  v3 = +[SBLockScreenManager sharedInstanceIfExists];
  if (([v3 isInLostMode] & 1) == 0)
  {

    goto LABEL_7;
  }

  v4 = [SBApp authenticationController];
  v5 = [v4 hasPasscodeSet];

  if (!v5)
  {
LABEL_7:
    v7 = [SBApp userSessionController];
    if ([v7 isMultiUserSupported] && objc_msgSend(v7, "isLoginSession"))
    {
      v8 = self;
      v9 = 0;
LABEL_24:
      v16 = [(SBSetupManager *)v8 _setSetupRequiredReason:v9];

      return v16;
    }

    if (BYSetupAssistantNeedsToRun())
    {
      v10 = SBLogCommon();
      v11 = 1;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v19 = 0;
        v12 = "inSetupMode = YES because BYSetupAssistantNeedsToRun() returned YES";
        v11 = 1;
        v13 = &v19;
LABEL_16:
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, v12, v13, 2u);
      }
    }

    else
    {
      v14 = +[SBLockdownManager sharedInstance];
      v15 = [v14 brickedDevice];

      if (v15)
      {
        v10 = SBLogCommon();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = 2;
          goto LABEL_22;
        }

        *buf = 0;
        v12 = "inSetupMode = YES because SBLockdownManager reports we have a bricked device";
        v11 = 2;
        v13 = buf;
        goto LABEL_16;
      }

      if (!self->_setupWantedForDeviceMigration)
      {
        v11 = 0;
        goto LABEL_23;
      }

      v10 = SBLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "inSetupMode = YES because we have been asked to migrate a device.", v17, 2u);
      }

      v11 = 3;
    }

LABEL_22:

LABEL_23:
    v8 = self;
    v9 = v11;
    goto LABEL_24;
  }

  return [(SBSetupManager *)self _setSetupRequiredReason:0];
}

- (BOOL)setupHasFinishedRestoringFromBackup
{
  v2 = +[SBDefaults externalDefaults];
  v3 = [v2 setupDefaults];
  v4 = [v3 setupState];

  if (v4)
  {
    v5 = [v4 isEqualToString:@"RestoredFromiTunesBackup"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)postLaunchCompleteNotificationForSetup
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.springboard.setupsnapshotremoved", 0, 0, 0);
}

- (void)setDeferringDeviceOrientationUpdates:(BOOL)a3
{
  deferOrientationUpdatesAssertion = self->_deferOrientationUpdatesAssertion;
  if ((((deferOrientationUpdatesAssertion == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v5 = [SBApp deviceOrientationUpdateDeferralAssertionWithReason:@"SBOrientationLockedForBuddy"];
    }

    else
    {
      [(BSInvalidatable *)deferOrientationUpdatesAssertion invalidate];
      v5 = 0;
    }

    v6 = self->_deferOrientationUpdatesAssertion;
    self->_deferOrientationUpdatesAssertion = v5;
  }
}

- (BOOL)_setSetupRequiredReason:(unint64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [(SBSetupManager *)self _isInSetupMode];
  self->_setupRequiredReason = a3;
  v6 = [(SBSetupManager *)self _isInSetupMode];
  if (v5 != v6)
  {
    if (v6)
    {
      v7 = [MEMORY[0x277D75418] currentDevice];
      v8 = [v7 userInterfaceIdiom];

      if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v9 = +[SBWorkspace mainWorkspace];
        v10 = [v9 mainWindowScene];
        v11 = [v10 appInteractionEventSource];
        [v11 addObserver:self];
      }

      [(SBSetupManager *)self _takeFloatingDockBehaviorAssertions];
    }

    else
    {
      self->_inSetupModeReadyToExit = 0;
      [(SBSetupManager *)self _invalidateFloatingDockBehaviorAssertions];
      v12 = [MEMORY[0x277D75418] currentDevice];
      v13 = [v12 userInterfaceIdiom];

      if ((v13 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v14 = +[SBWorkspace mainWorkspace];
        v15 = [v14 mainWindowScene];
        v16 = [v15 appInteractionEventSource];
        [v16 removeObserver:self];
      }
    }

    v17 = SBLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = self->_setupRequiredReason - 1;
      if (v18 > 2)
      {
        v19 = @"none";
      }

      else
      {
        v19 = off_2783B4AA8[v18];
      }

      v22 = 138412290;
      v23 = v19;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Setup mode state did change - required reason: %@", &v22, 0xCu);
    }

    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 postNotificationName:@"SBInBuddyModeDidChangeNotification" object:0 userInfo:0];
  }

  return [(SBSetupManager *)self isInSetupMode];
}

- (void)_toggleSetupForMigrationNeeded:(BOOL)a3 forReason:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a4;
  self->_setupWantedForDeviceMigration = a3;
  [(SBSetupManager *)self updateInSetupMode];
  v7 = +[SBApplicationController sharedInstance];
  v8 = [v7 setupApplication];

  setupRequiredReason = self->_setupRequiredReason;
  v10 = SBLogCommon();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (setupRequiredReason == 3)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Activating Setup for device migration.", buf, 2u);
    }

    v12 = +[SBWorkspace mainWorkspace];
    v13 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:v8];
    v14 = objc_alloc(MEMORY[0x277D757D0]);
    v15 = [MEMORY[0x277CBEBC0] URLWithString:*MEMORY[0x277D4D9F8]];
    v16 = [v14 initWithURL:v15];

    v17 = [MEMORY[0x277CBEB98] setWithObject:v16];
    [(SBApplicationSceneEntity *)v13 addActions:v17];

    v18 = [v12 createRequestForApplicationActivation:v13 options:0];
    [v18 setEventLabel:@"ActivateBuddyForDeviceMigration"];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __59__SBSetupManager__toggleSetupForMigrationNeeded_forReason___block_invoke;
    v25 = &unk_2783A8BF0;
    v19 = v8;
    v26 = v19;
    v27 = self;
    v20 = [v18 addCompletionHandler:&v22];
    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    [v21 addObserver:self selector:sel__setupProcessChangedNotificationReceived_ name:@"SBApplicationProcessStateDidChange" object:v19];

    [v12 executeTransitionRequest:v18];
  }

  else
  {
    if (v11)
    {
      *buf = 138543362;
      v29 = v6;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Setup no longer required for device migration for reason: %{public}@", buf, 0xCu);
    }

    self->_setupWantedForDeviceMigration = 0;
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 removeObserver:self name:@"SBApplicationProcessStateDidChange" object:v8];
  }
}

void __59__SBSetupManager__toggleSetupForMigrationNeeded_forReason___block_invoke(uint64_t a1, int a2)
{
  if (!a2 || ([*(a1 + 32) processState], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isForeground"), v3, (v4 & 1) == 0))
  {
    v5 = *(a1 + 40);

    [v5 _toggleSetupForMigrationNeeded:0 forReason:@"Setup not foreground at transition completion"];
  }
}

- (void)_setupProcessChangedNotificationReceived:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v8 = [v5 objectForKeyedSubscript:@"previousProcessState"];

  v6 = [v4 object];

  v7 = [v6 processState];

  if ([v8 isForeground] && (objc_msgSend(v7, "isForeground") & 1) == 0)
  {
    [(SBSetupManager *)self _toggleSetupForMigrationNeeded:0 forReason:@"backgrounded or exited"];
  }
}

- (void)_takeFloatingDockBehaviorAssertions
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_floatingDockControllers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        [(SBSetupManager *)self _takeFloatingDockBehaviorAssertionForFloatingDockController:*(*(&v8 + 1) + 8 * v7++), v8];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_takeFloatingDockBehaviorAssertionForFloatingDockController:(id)a3
{
  v4 = a3;
  v5 = [[SBFloatingDockBehaviorAssertion alloc] initWithFloatingDockController:v4 visibleProgress:1 animated:0 gesturePossible:13 atLevel:@"in setup" reason:0 withCompletion:0.0];
  [(NSMapTable *)self->_floatingDockBehaviorAssertionsByFloatingDockController setObject:v5 forKey:v4];
}

- (void)_invalidateFloatingDockBehaviorAssertions
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_floatingDockControllers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_floatingDockBehaviorAssertionsByFloatingDockController objectForKey:v8, v10];
        [v9 invalidate];
        [(NSMapTable *)self->_floatingDockBehaviorAssertionsByFloatingDockController removeObjectForKey:v8];
      }

      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)floatingDockControllerDidRegister:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(NSHashTable *)self->_floatingDockControllers addObject:v6];
    if ([(SBSetupManager *)self _isInSetupMode])
    {
      [(SBSetupManager *)self _takeFloatingDockBehaviorAssertionForFloatingDockController:v6];
    }
  }
}

- (void)eventSource:(id)a3 didBeginTransitionToMode:(int64_t)a4 withLayoutState:(id)a5 activatingElement:(id)a6 triggeredBy:(int64_t)a7
{
  v9 = [(SBSetupManager *)self isInSetupModeReadyToExit:a3];
  if (a4 == 1 && v9)
  {

    [(SBSetupManager *)self _invalidateFloatingDockBehaviorAssertions];
  }
}

@end