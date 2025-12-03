@interface SBNCAlertingController
- (BOOL)_activeAlertDestinationsInRequestDestinations:(id)destinations;
- (BOOL)_isBundleIdentifierBlockedForCommunicationPolicy:(id)policy;
- (BOOL)_isBundleIdentifierBlockedForScreenTimeExpiration:(id)expiration;
- (BOOL)_shouldRealert;
- (BOOL)_shouldScreenTimeSuppressNotificationRequest:(id)request;
- (BOOL)_shouldScreenTimeSuppressNotificationsForBundleIdentifier:(id)identifier;
- (SBNCAlertingController)init;
- (SBNCAlertingController)initWithSoundController:(id)controller screenController:(id)screenController lockScreenManager:(id)manager communicationPolicyManager:(id)policyManager;
- (void)_alertNowForNotificationRequest:(id)request presentingDestination:(id)destination;
- (void)_killRealertsForNotificationRequest:(id)request;
- (void)_lockStateChanged;
- (void)_realertTimerFired:(id)fired;
- (void)_scheduleRealertsForNotificationRequest:(id)request;
- (void)alertOnPostForNotificationRequest:(id)request forRequestDestinations:(id)destinations;
- (void)alertOnPresentationForNotificationRequest:(id)request presentingDestination:(id)destination;
- (void)killAlertsForNotificationRequest:(id)request;
- (void)killRealerts;
- (void)resetAutomaticLockStateForNotificationRequest:(id)request;
@end

@implementation SBNCAlertingController

- (void)killRealerts
{
  v13 = *MEMORY[0x277D85DE8];
  activeRequestWithRealerts = [(SBNCAlertingController *)self activeRequestWithRealerts];

  if (activeRequestWithRealerts)
  {
    v4 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      activeRequestWithRealerts2 = [(SBNCAlertingController *)self activeRequestWithRealerts];
      notificationIdentifier = [activeRequestWithRealerts2 notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v11 = 138543362;
      v12 = un_logDigest;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Killing realerts for request %{public}@", &v11, 0xCu);
    }

    realertTimers = [(SBNCAlertingController *)self realertTimers];
    [realertTimers makeObjectsPerformSelector:sel_invalidate];

    realertTimers2 = [(SBNCAlertingController *)self realertTimers];
    [realertTimers2 removeAllObjects];

    [(SBNCAlertingController *)self setActiveRequestWithRealerts:0];
  }
}

- (void)_lockStateChanged
{
  lockScreenManager = [(SBNCAlertingController *)self lockScreenManager];
  isUILocked = [lockScreenManager isUILocked];

  if ((isUILocked & 1) == 0)
  {

    [(SBNCAlertingController *)self killRealerts];
  }
}

- (SBNCAlertingController)init
{
  [(SBNCAlertingController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (SBNCAlertingController)initWithSoundController:(id)controller screenController:(id)screenController lockScreenManager:(id)manager communicationPolicyManager:(id)policyManager
{
  controllerCopy = controller;
  screenControllerCopy = screenController;
  managerCopy = manager;
  policyManagerCopy = policyManager;
  v22.receiver = self;
  v22.super_class = SBNCAlertingController;
  v15 = [(SBNCAlertingController *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_soundController, controller);
    objc_storeStrong(&v16->_screenController, screenController);
    objc_storeStrong(&v16->_lockScreenManager, manager);
    objc_storeStrong(&v16->_communicationPolicyManager, policyManager);
    v17 = objc_opt_new();
    realertTimers = v16->_realertTimers;
    v16->_realertTimers = v17;

    mEMORY[0x277D3A178] = [MEMORY[0x277D3A178] sharedInstance];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v16 selector:sel__hardwareButtonPressed_ name:*MEMORY[0x277D67AB0] object:0];
    [defaultCenter addObserver:v16 selector:sel__hardwareButtonPressed_ name:*MEMORY[0x277D679D8] object:0];
    [defaultCenter addObserver:v16 selector:sel__hardwareButtonPressed_ name:*MEMORY[0x277D67A80] object:0];
    [defaultCenter addObserver:v16 selector:sel__hardwareButtonPressed_ name:*MEMORY[0x277D67A88] object:0];
    [defaultCenter addObserver:v16 selector:sel__hardwareButtonPressed_ name:*MEMORY[0x277D67AF0] object:0];
    [defaultCenter addObserver:v16 selector:sel__lockStateChanged name:@"SBAggregateLockStateDidChangeNotification" object:0];
  }

  return v16;
}

- (void)alertOnPostForNotificationRequest:(id)request forRequestDestinations:(id)destinations
{
  v34 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  destinationsCopy = destinations;
  lockScreenManager = [(SBNCAlertingController *)self lockScreenManager];
  isUILocked = [lockScreenManager isUILocked];

  notificationDispatcher = [SBApp notificationDispatcher];
  isCarDestinationActive = [notificationDispatcher isCarDestinationActive];

  v12 = [(SBNCAlertingController *)self _activeAlertDestinationsInRequestDestinations:destinationsCopy];
  sb_shouldSuppressAlert = [requestCopy sb_shouldSuppressAlert];
  v14 = [(SBNCAlertingController *)self _shouldScreenTimeSuppressNotificationRequest:requestCopy];
  v15 = (isUILocked | (v12 | sb_shouldSuppressAlert) ^ 1) & ((isCarDestinationActive | v14) ^ 1);
  v16 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"Not alerting";
    if ((isUILocked | (v12 | sb_shouldSuppressAlert) ^ 1) & ((isCarDestinationActive | v14) ^ 1))
    {
      v17 = @"Alerting";
    }

    v21 = v17;
    v18 = v16;
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    *buf = 138544642;
    v23 = v21;
    v24 = 2114;
    v25 = un_logDigest;
    v26 = 1024;
    v27 = isUILocked;
    v28 = 1024;
    v29 = v12;
    v30 = 1024;
    v31 = sb_shouldSuppressAlert & 1;
    v32 = 1024;
    v33 = v14;
    _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ on post for request %{public}@. uiLocked=%d activeAlertDestinations=%d suppressAlertForContext=%d shouldSuppressForScreenTime=%d", buf, 0x2Eu);
  }

  if (v15)
  {
    [(SBNCAlertingController *)self _alertNowForNotificationRequest:requestCopy];
    [(SBNCAlertingController *)self _scheduleRealertsForNotificationRequest:requestCopy];
  }
}

- (void)alertOnPresentationForNotificationRequest:(id)request presentingDestination:(id)destination
{
  v14 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  destinationCopy = destination;
  v8 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v12 = 138543362;
    v13 = un_logDigest;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Alerting on presentation for request %{public}@", &v12, 0xCu);
  }

  [(SBNCAlertingController *)self _alertNowForNotificationRequest:requestCopy presentingDestination:destinationCopy];
}

- (void)killAlertsForNotificationRequest:(id)request
{
  requestCopy = request;
  soundController = [(SBNCAlertingController *)self soundController];
  [soundController stopSoundForNotificationRequest:requestCopy];

  [(SBNCAlertingController *)self _killRealertsForNotificationRequest:requestCopy];
}

- (void)resetAutomaticLockStateForNotificationRequest:(id)request
{
  requestCopy = request;
  screenController = [(SBNCAlertingController *)self screenController];
  [screenController resetAutomaticLockStateForNotificationRequest:requestCopy];
}

- (void)_alertNowForNotificationRequest:(id)request presentingDestination:(id)destination
{
  destinationCopy = destination;
  requestCopy = request;
  soundController = [(SBNCAlertingController *)self soundController];
  [soundController playSoundAndReadOutForNotificationRequest:requestCopy presentingDestination:destinationCopy];

  screenController = [(SBNCAlertingController *)self screenController];
  [screenController turnOnScreenIfPossibleForNotificationRequest:requestCopy];
}

- (BOOL)_activeAlertDestinationsInRequestDestinations:(id)destinations
{
  destinationsCopy = destinations;
  if ([destinationsCopy containsObject:*MEMORY[0x277D77FC8]])
  {
    v4 = 1;
  }

  else
  {
    v4 = [destinationsCopy containsObject:*MEMORY[0x277D77FD0]];
  }

  return v4;
}

- (BOOL)_shouldScreenTimeSuppressNotificationRequest:(id)request
{
  requestCopy = request;
  options = [requestCopy options];
  if ([options overridesDowntime])
  {
    v6 = 0;
  }

  else
  {
    sectionIdentifier = [requestCopy sectionIdentifier];
    v6 = [(SBNCAlertingController *)self _shouldScreenTimeSuppressNotificationsForBundleIdentifier:sectionIdentifier];
  }

  return v6;
}

- (BOOL)_shouldScreenTimeSuppressNotificationsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(SBNCAlertingController *)self _isBundleIdentifierBlockedForScreenTimeExpiration:identifierCopy]|| [(SBNCAlertingController *)self _isBundleIdentifierBlockedForCommunicationPolicy:identifierCopy];

  return v5;
}

- (BOOL)_isBundleIdentifierBlockedForScreenTimeExpiration:(id)expiration
{
  expirationCopy = expiration;
  v4 = +[SBApplicationController sharedInstance];
  v5 = [v4 applicationWithBundleIdentifier:expirationCopy];

  info = [v5 info];
  LOBYTE(expirationCopy) = [info isBlockedForScreenTimeExpiration];

  return expirationCopy;
}

- (BOOL)_isBundleIdentifierBlockedForCommunicationPolicy:(id)policy
{
  policyCopy = policy;
  v4 = +[SBCommunicationPolicyManager sharedInstance];
  v5 = [v4 shouldScreenTimeSuppressNotificationsForBundleIdentifier:policyCopy];

  return v5;
}

- (BOOL)_shouldRealert
{
  lockScreenManager = [(SBNCAlertingController *)self lockScreenManager];
  if ([lockScreenManager isUILocked])
  {
    lockScreenManager2 = [(SBNCAlertingController *)self lockScreenManager];
    v5 = [lockScreenManager2 isInLostMode] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_killRealertsForNotificationRequest:(id)request
{
  requestCopy = request;
  activeRequestWithRealerts = [(SBNCAlertingController *)self activeRequestWithRealerts];
  notificationIdentifier = [activeRequestWithRealerts notificationIdentifier];
  notificationIdentifier2 = [requestCopy notificationIdentifier];

  LODWORD(requestCopy) = [notificationIdentifier isEqualToString:notificationIdentifier2];
  if (requestCopy)
  {

    [(SBNCAlertingController *)self killRealerts];
  }
}

- (void)_realertTimerFired:(id)fired
{
  firedCopy = fired;
  if ([(SBNCAlertingController *)self _shouldRealert])
  {
    realertTimers = [(SBNCAlertingController *)self realertTimers];
    if ([realertTimers containsObject:firedCopy])
    {
      activeRequestWithRealerts = [(SBNCAlertingController *)self activeRequestWithRealerts];

      if (!activeRequestWithRealerts)
      {
        goto LABEL_6;
      }

      realertTimers = [(SBNCAlertingController *)self activeRequestWithRealerts];
      [(SBNCAlertingController *)self _alertNowForNotificationRequest:realertTimers];
    }
  }

LABEL_6:
  realertTimers2 = [(SBNCAlertingController *)self realertTimers];
  [realertTimers2 removeObject:firedCopy];
}

- (void)_scheduleRealertsForNotificationRequest:(id)request
{
  requestCopy = request;
  options = [requestCopy options];
  realertCount = [options realertCount];

  _shouldRealert = [(SBNCAlertingController *)self _shouldRealert];
  if (requestCopy && _shouldRealert && realertCount)
  {
    [(SBNCAlertingController *)self killRealerts];
    [(SBNCAlertingController *)self setActiveRequestWithRealerts:requestCopy];
    v7 = 120;
    v8 = 1;
    do
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.springboard.alertingcontroller.realert-%ld", v8];
      v10 = objc_alloc(MEMORY[0x277D3A180]);
      notificationIdentifier = [requestCopy notificationIdentifier];
      v12 = [v10 initWithTimeInterval:v9 serviceIdentifier:self target:sel__realertTimerFired_ selector:notificationIdentifier userInfo:v7];

      [v12 setUserVisible:1];
      [v12 setMinimumEarlyFireProportion:1.0];
      currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
      [v12 scheduleInRunLoop:currentRunLoop];

      realertTimers = [(SBNCAlertingController *)self realertTimers];
      [realertTimers addObject:v12];

      v7 += 120;
      ++v8;
      --realertCount;
    }

    while (realertCount);
  }
}

@end