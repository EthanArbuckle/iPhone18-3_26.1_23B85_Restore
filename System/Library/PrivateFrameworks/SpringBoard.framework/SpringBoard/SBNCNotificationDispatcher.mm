@interface SBNCNotificationDispatcher
- (BOOL)_lockScreenWantsBanners;
- (BOOL)isNotificationContentExtensionVisible:(id)a3;
- (SBNCNotificationDispatcher)init;
- (id)keyWindowForScreen:(id)a3;
- (void)_aggregateLockStateDidChange;
- (void)_carPlayDestinationAvailabilityDidChange;
- (void)_setupNewDestinationsForDispatcher:(id)a3;
- (void)_updateActiveDestinations;
- (void)coverSheetViewController:(id)a3 didChangeActiveBehavior:(id)a4;
@end

@implementation SBNCNotificationDispatcher

- (void)_updateActiveDestinations
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = +[SBLockScreenManager sharedInstance];
  v4 = [v3 isUILocked];

  v5 = [(SBNCNotificationDispatcher *)self lockScreenManager];
  v6 = [v5 isInLostMode];

  v7 = [(SBNCNotificationDispatcher *)self isCarDestinationActive];
  v8 = v4 ^ 1 | [(SBNCNotificationDispatcher *)self _lockScreenWantsBanners];
  v9 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109888;
    v15[1] = v4;
    v16 = 1024;
    v17 = v6;
    v18 = 1024;
    v19 = v7;
    v20 = 1024;
    v21 = v8 & 1;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Updating active destinations [ lockScreenVisible: %d lostMode: %d carPlay: %d bannersActive : %d ]", v15, 0x1Au);
  }

  v10 = [(SBNCNotificationDispatcher *)self dispatcher];
  [v10 registerDestination:self->_bannerDestination];
  v11 = [(SBNCNotificationDispatcher *)self bannerDestination];
  [v10 setDestination:v11 enabled:v8 & 1];

  if ((v8 & 1) == 0)
  {
    [(SBNotificationBannerDestination *)self->_bannerDestination destinationDidBecomeDisabled];
  }

  if (self->_dashBoardDestination)
  {
    [v10 registerDestination:?];
    v12 = [(SBNCNotificationDispatcher *)self dashBoardDestination];
    [v10 setDestination:v12 enabled:1];
  }

  carDestination = self->_carDestination;
  if (v7)
  {
    [v10 registerDestination:carDestination];
    v14 = [(SBNCNotificationDispatcher *)self carDestination];
    [v10 setDestination:v14 enabled:1];
  }

  else
  {
    [v10 unregisterDestination:carDestination];
  }
}

- (BOOL)_lockScreenWantsBanners
{
  v2 = +[SBLockScreenManager sharedInstanceIfExists];
  v3 = [v2 coverSheetViewController];
  v4 = [v3 activeBehavior];
  v5 = [v4 notificationBehavior] == 2;

  return v5;
}

- (void)_aggregateLockStateDidChange
{
  v3 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Lock state changed", v4, 2u);
  }

  [(SBNCNotificationDispatcher *)self _updateActiveDestinations];
}

- (SBNCNotificationDispatcher)init
{
  v32 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = SBNCNotificationDispatcher;
  v2 = [(SBNCNotificationDispatcher *)&v29 init];
  if (v2)
  {
    NCRegisterUserNotificationsUILogging();
    v3 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v31 = v2;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Setting up SpringBoard notifications dispatcher %{public}@", buf, 0xCu);
    }

    v4 = +[SBBacklightController sharedInstance];
    v5 = +[SBLockScreenManager sharedInstance];
    lockScreenManager = v2->_lockScreenManager;
    v2->_lockScreenManager = v5;

    v7 = +[SBLockStateAggregator sharedInstance];
    lockStateAggregator = v2->_lockStateAggregator;
    v2->_lockStateAggregator = v7;

    v9 = +[SBCommunicationPolicyManager sharedInstance];
    communicationPolicyManager = v2->_communicationPolicyManager;
    v2->_communicationPolicyManager = v9;

    v11 = [[SBNCSoundController alloc] initWithLockScreenManager:v2->_lockScreenManager lockStateAggregator:v2->_lockStateAggregator];
    v12 = [[SBNCScreenController alloc] initWithBackLightController:v4 lockScreenManager:v2->_lockScreenManager lockStateAggregator:v2->_lockStateAggregator];
    v13 = [[SBNCAlertingController alloc] initWithSoundController:v11 screenController:v12 lockScreenManager:v2->_lockScreenManager communicationPolicyManager:v2->_communicationPolicyManager];
    alertingController = v2->_alertingController;
    v2->_alertingController = v13;

    v15 = [objc_alloc(MEMORY[0x277D77E38]) initWithAlertingController:v2->_alertingController];
    dispatcher = v2->_dispatcher;
    v2->_dispatcher = v15;

    v17 = objc_alloc_init(SBNCNotificationDispatcherDelegate);
    dispatcherDelegate = v2->_dispatcherDelegate;
    v2->_dispatcherDelegate = v17;

    [(NCNotificationDispatcher *)v2->_dispatcher setDelegate:v2->_dispatcherDelegate];
    [(SBNCNotificationDispatcher *)v2 _setupNewDestinationsForDispatcher:v2->_dispatcher];
    [(SBNCNotificationDispatcher *)v2 _updateActiveDestinations];
    v19 = [objc_alloc(MEMORY[0x277D78038]) initWithDispatcher:v2->_dispatcher];
    notificationSource = v2->_notificationSource;
    v2->_notificationSource = v19;

    v21 = [[SBWalletNotificationSource alloc] initWithDispatcher:v2->_dispatcher];
    walletNotificationSource = v2->_walletNotificationSource;
    v2->_walletNotificationSource = v21;

    v23 = [[SBUserAlertNotificationSource alloc] initWithDispatcher:v2->_dispatcher];
    userNotificationAlertSource = v2->_userNotificationAlertSource;
    v2->_userNotificationAlertSource = v23;

    v25 = +[SBAlertItemsController sharedInstance];
    [v25 setLockScreenNotificationsAlertItemPresenter:v2->_userNotificationAlertSource];

    v26 = [MEMORY[0x277CCAB98] defaultCenter];
    [v26 addObserver:v2 selector:sel__aggregateLockStateDidChange name:@"SBAggregateLockStateDidChangeNotification" object:0];
    [v26 addObserver:v2 selector:sel__carPlayDestinationAvailabilityDidChange name:@"SBNotificationCarPlayDestinationAvailabilityDidChange" object:0];
    v27 = [(SBLockScreenManager *)v2->_lockScreenManager coverSheetViewController];
    [v27 addCoverSheetObserver:v2];
  }

  return v2;
}

- (id)keyWindowForScreen:(id)a3
{
  v4 = a3;
  if ([(SBNCNotificationDispatcher *)self isCarDestinationActive])
  {
    v5 = [(SBNotificationCarPlayDestination *)self->_carDestination keyWindowForScreen:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_carPlayDestinationAvailabilityDidChange
{
  v3 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "CarPlay destination availability changed", v4, 2u);
  }

  [(SBNCNotificationDispatcher *)self _updateActiveDestinations];
}

- (void)_setupNewDestinationsForDispatcher:(id)a3
{
  v4 = objc_alloc_init(SBNotificationCarPlayDestination);
  carDestination = self->_carDestination;
  self->_carDestination = v4;

  v6 = self->_carDestination;
  v7 = [(SBNCNotificationDispatcher *)self alertingController];
  [(SBNotificationCarPlayDestination *)v6 setAlertingController:v7];

  v8 = objc_alloc_init(SBNotificationBannerDestination);
  bannerDestination = self->_bannerDestination;
  self->_bannerDestination = v8;

  v10 = self->_bannerDestination;
  v11 = +[SBSetupManager sharedInstance];
  [(SBNotificationBannerDestination *)v10 setSetupManager:v11];

  v12 = self->_bannerDestination;
  v13 = +[SBLockScreenManager sharedInstance];
  [(SBNotificationBannerDestination *)v12 setLockScreenManager:v13];

  v14 = self->_bannerDestination;
  v15 = +[SBAssistantController sharedInstance];
  [(SBNotificationBannerDestination *)v14 setAssistantController:v15];

  [(SBNCNotificationDispatcherDelegate *)self->_dispatcherDelegate setBannerDestination:self->_bannerDestination];
  v16 = +[SBLockScreenManager sharedInstance];
  v17 = [v16 notificationDestination];
  dashBoardDestination = self->_dashBoardDestination;
  self->_dashBoardDestination = v17;

  v19 = self->_dashBoardDestination;
  v20 = [(SBNCNotificationDispatcher *)self alertingController];
  [(SBNotificationDestination *)v19 setAlertingController:v20];
}

- (void)coverSheetViewController:(id)a3 didChangeActiveBehavior:(id)a4
{
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Cover Sheet active behavior changed", v6, 2u);
  }

  [(SBNCNotificationDispatcher *)self _updateActiveDestinations];
}

- (BOOL)isNotificationContentExtensionVisible:(id)a3
{
  v4 = a3;
  v5 = [(SBNCNotificationDispatcher *)self dashBoardDestination];
  if ([v5 isNotificationContentExtensionVisible:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(SBNCNotificationDispatcher *)self bannerDestination];
    v6 = [v7 isNotificationContentExtensionVisible:v4];
  }

  return v6;
}

@end