@interface SBNCNotificationDispatcher
- (BOOL)_lockScreenWantsBanners;
- (BOOL)isNotificationContentExtensionVisible:(id)visible;
- (SBNCNotificationDispatcher)init;
- (id)keyWindowForScreen:(id)screen;
- (void)_aggregateLockStateDidChange;
- (void)_carPlayDestinationAvailabilityDidChange;
- (void)_setupNewDestinationsForDispatcher:(id)dispatcher;
- (void)_updateActiveDestinations;
- (void)coverSheetViewController:(id)controller didChangeActiveBehavior:(id)behavior;
@end

@implementation SBNCNotificationDispatcher

- (void)_updateActiveDestinations
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = +[SBLockScreenManager sharedInstance];
  isUILocked = [v3 isUILocked];

  lockScreenManager = [(SBNCNotificationDispatcher *)self lockScreenManager];
  isInLostMode = [lockScreenManager isInLostMode];

  isCarDestinationActive = [(SBNCNotificationDispatcher *)self isCarDestinationActive];
  v8 = isUILocked ^ 1 | [(SBNCNotificationDispatcher *)self _lockScreenWantsBanners];
  v9 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109888;
    v15[1] = isUILocked;
    v16 = 1024;
    v17 = isInLostMode;
    v18 = 1024;
    v19 = isCarDestinationActive;
    v20 = 1024;
    v21 = v8 & 1;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Updating active destinations [ lockScreenVisible: %d lostMode: %d carPlay: %d bannersActive : %d ]", v15, 0x1Au);
  }

  dispatcher = [(SBNCNotificationDispatcher *)self dispatcher];
  [dispatcher registerDestination:self->_bannerDestination];
  bannerDestination = [(SBNCNotificationDispatcher *)self bannerDestination];
  [dispatcher setDestination:bannerDestination enabled:v8 & 1];

  if ((v8 & 1) == 0)
  {
    [(SBNotificationBannerDestination *)self->_bannerDestination destinationDidBecomeDisabled];
  }

  if (self->_dashBoardDestination)
  {
    [dispatcher registerDestination:?];
    dashBoardDestination = [(SBNCNotificationDispatcher *)self dashBoardDestination];
    [dispatcher setDestination:dashBoardDestination enabled:1];
  }

  carDestination = self->_carDestination;
  if (isCarDestinationActive)
  {
    [dispatcher registerDestination:carDestination];
    carDestination = [(SBNCNotificationDispatcher *)self carDestination];
    [dispatcher setDestination:carDestination enabled:1];
  }

  else
  {
    [dispatcher unregisterDestination:carDestination];
  }
}

- (BOOL)_lockScreenWantsBanners
{
  v2 = +[SBLockScreenManager sharedInstanceIfExists];
  coverSheetViewController = [v2 coverSheetViewController];
  activeBehavior = [coverSheetViewController activeBehavior];
  v5 = [activeBehavior notificationBehavior] == 2;

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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__aggregateLockStateDidChange name:@"SBAggregateLockStateDidChangeNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__carPlayDestinationAvailabilityDidChange name:@"SBNotificationCarPlayDestinationAvailabilityDidChange" object:0];
    coverSheetViewController = [(SBLockScreenManager *)v2->_lockScreenManager coverSheetViewController];
    [coverSheetViewController addCoverSheetObserver:v2];
  }

  return v2;
}

- (id)keyWindowForScreen:(id)screen
{
  screenCopy = screen;
  if ([(SBNCNotificationDispatcher *)self isCarDestinationActive])
  {
    v5 = [(SBNotificationCarPlayDestination *)self->_carDestination keyWindowForScreen:screenCopy];
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

- (void)_setupNewDestinationsForDispatcher:(id)dispatcher
{
  v4 = objc_alloc_init(SBNotificationCarPlayDestination);
  carDestination = self->_carDestination;
  self->_carDestination = v4;

  v6 = self->_carDestination;
  alertingController = [(SBNCNotificationDispatcher *)self alertingController];
  [(SBNotificationCarPlayDestination *)v6 setAlertingController:alertingController];

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
  notificationDestination = [v16 notificationDestination];
  dashBoardDestination = self->_dashBoardDestination;
  self->_dashBoardDestination = notificationDestination;

  v19 = self->_dashBoardDestination;
  alertingController2 = [(SBNCNotificationDispatcher *)self alertingController];
  [(SBNotificationDestination *)v19 setAlertingController:alertingController2];
}

- (void)coverSheetViewController:(id)controller didChangeActiveBehavior:(id)behavior
{
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Cover Sheet active behavior changed", v6, 2u);
  }

  [(SBNCNotificationDispatcher *)self _updateActiveDestinations];
}

- (BOOL)isNotificationContentExtensionVisible:(id)visible
{
  visibleCopy = visible;
  dashBoardDestination = [(SBNCNotificationDispatcher *)self dashBoardDestination];
  if ([dashBoardDestination isNotificationContentExtensionVisible:visibleCopy])
  {
    v6 = 1;
  }

  else
  {
    bannerDestination = [(SBNCNotificationDispatcher *)self bannerDestination];
    v6 = [bannerDestination isNotificationContentExtensionVisible:visibleCopy];
  }

  return v6;
}

@end