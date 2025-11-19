@interface SBNCAlertingController
- (BOOL)_activeAlertDestinationsInRequestDestinations:(id)a3;
- (BOOL)_isBundleIdentifierBlockedForCommunicationPolicy:(id)a3;
- (BOOL)_isBundleIdentifierBlockedForScreenTimeExpiration:(id)a3;
- (BOOL)_shouldRealert;
- (BOOL)_shouldScreenTimeSuppressNotificationRequest:(id)a3;
- (BOOL)_shouldScreenTimeSuppressNotificationsForBundleIdentifier:(id)a3;
- (SBNCAlertingController)init;
- (SBNCAlertingController)initWithSoundController:(id)a3 screenController:(id)a4 lockScreenManager:(id)a5 communicationPolicyManager:(id)a6;
- (void)_alertNowForNotificationRequest:(id)a3 presentingDestination:(id)a4;
- (void)_killRealertsForNotificationRequest:(id)a3;
- (void)_lockStateChanged;
- (void)_realertTimerFired:(id)a3;
- (void)_scheduleRealertsForNotificationRequest:(id)a3;
- (void)alertOnPostForNotificationRequest:(id)a3 forRequestDestinations:(id)a4;
- (void)alertOnPresentationForNotificationRequest:(id)a3 presentingDestination:(id)a4;
- (void)killAlertsForNotificationRequest:(id)a3;
- (void)killRealerts;
- (void)resetAutomaticLockStateForNotificationRequest:(id)a3;
@end

@implementation SBNCAlertingController

- (void)killRealerts
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(SBNCAlertingController *)self activeRequestWithRealerts];

  if (v3)
  {
    v4 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [(SBNCAlertingController *)self activeRequestWithRealerts];
      v7 = [v6 notificationIdentifier];
      v8 = [v7 un_logDigest];
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Killing realerts for request %{public}@", &v11, 0xCu);
    }

    v9 = [(SBNCAlertingController *)self realertTimers];
    [v9 makeObjectsPerformSelector:sel_invalidate];

    v10 = [(SBNCAlertingController *)self realertTimers];
    [v10 removeAllObjects];

    [(SBNCAlertingController *)self setActiveRequestWithRealerts:0];
  }
}

- (void)_lockStateChanged
{
  v3 = [(SBNCAlertingController *)self lockScreenManager];
  v4 = [v3 isUILocked];

  if ((v4 & 1) == 0)
  {

    [(SBNCAlertingController *)self killRealerts];
  }
}

- (SBNCAlertingController)init
{
  [(SBNCAlertingController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (SBNCAlertingController)initWithSoundController:(id)a3 screenController:(id)a4 lockScreenManager:(id)a5 communicationPolicyManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = SBNCAlertingController;
  v15 = [(SBNCAlertingController *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_soundController, a3);
    objc_storeStrong(&v16->_screenController, a4);
    objc_storeStrong(&v16->_lockScreenManager, a5);
    objc_storeStrong(&v16->_communicationPolicyManager, a6);
    v17 = objc_opt_new();
    realertTimers = v16->_realertTimers;
    v16->_realertTimers = v17;

    v19 = [MEMORY[0x277D3A178] sharedInstance];
    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 addObserver:v16 selector:sel__hardwareButtonPressed_ name:*MEMORY[0x277D67AB0] object:0];
    [v20 addObserver:v16 selector:sel__hardwareButtonPressed_ name:*MEMORY[0x277D679D8] object:0];
    [v20 addObserver:v16 selector:sel__hardwareButtonPressed_ name:*MEMORY[0x277D67A80] object:0];
    [v20 addObserver:v16 selector:sel__hardwareButtonPressed_ name:*MEMORY[0x277D67A88] object:0];
    [v20 addObserver:v16 selector:sel__hardwareButtonPressed_ name:*MEMORY[0x277D67AF0] object:0];
    [v20 addObserver:v16 selector:sel__lockStateChanged name:@"SBAggregateLockStateDidChangeNotification" object:0];
  }

  return v16;
}

- (void)alertOnPostForNotificationRequest:(id)a3 forRequestDestinations:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SBNCAlertingController *)self lockScreenManager];
  v9 = [v8 isUILocked];

  v10 = [SBApp notificationDispatcher];
  v11 = [v10 isCarDestinationActive];

  v12 = [(SBNCAlertingController *)self _activeAlertDestinationsInRequestDestinations:v7];
  v13 = [v6 sb_shouldSuppressAlert];
  v14 = [(SBNCAlertingController *)self _shouldScreenTimeSuppressNotificationRequest:v6];
  v15 = (v9 | (v12 | v13) ^ 1) & ((v11 | v14) ^ 1);
  v16 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"Not alerting";
    if ((v9 | (v12 | v13) ^ 1) & ((v11 | v14) ^ 1))
    {
      v17 = @"Alerting";
    }

    v21 = v17;
    v18 = v16;
    v19 = [v6 notificationIdentifier];
    v20 = [v19 un_logDigest];
    *buf = 138544642;
    v23 = v21;
    v24 = 2114;
    v25 = v20;
    v26 = 1024;
    v27 = v9;
    v28 = 1024;
    v29 = v12;
    v30 = 1024;
    v31 = v13 & 1;
    v32 = 1024;
    v33 = v14;
    _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ on post for request %{public}@. uiLocked=%d activeAlertDestinations=%d suppressAlertForContext=%d shouldSuppressForScreenTime=%d", buf, 0x2Eu);
  }

  if (v15)
  {
    [(SBNCAlertingController *)self _alertNowForNotificationRequest:v6];
    [(SBNCAlertingController *)self _scheduleRealertsForNotificationRequest:v6];
  }
}

- (void)alertOnPresentationForNotificationRequest:(id)a3 presentingDestination:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v6 notificationIdentifier];
    v11 = [v10 un_logDigest];
    v12 = 138543362;
    v13 = v11;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Alerting on presentation for request %{public}@", &v12, 0xCu);
  }

  [(SBNCAlertingController *)self _alertNowForNotificationRequest:v6 presentingDestination:v7];
}

- (void)killAlertsForNotificationRequest:(id)a3
{
  v5 = a3;
  v4 = [(SBNCAlertingController *)self soundController];
  [v4 stopSoundForNotificationRequest:v5];

  [(SBNCAlertingController *)self _killRealertsForNotificationRequest:v5];
}

- (void)resetAutomaticLockStateForNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(SBNCAlertingController *)self screenController];
  [v5 resetAutomaticLockStateForNotificationRequest:v4];
}

- (void)_alertNowForNotificationRequest:(id)a3 presentingDestination:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBNCAlertingController *)self soundController];
  [v8 playSoundAndReadOutForNotificationRequest:v7 presentingDestination:v6];

  v9 = [(SBNCAlertingController *)self screenController];
  [v9 turnOnScreenIfPossibleForNotificationRequest:v7];
}

- (BOOL)_activeAlertDestinationsInRequestDestinations:(id)a3
{
  v3 = a3;
  if ([v3 containsObject:*MEMORY[0x277D77FC8]])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 containsObject:*MEMORY[0x277D77FD0]];
  }

  return v4;
}

- (BOOL)_shouldScreenTimeSuppressNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 options];
  if ([v5 overridesDowntime])
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 sectionIdentifier];
    v6 = [(SBNCAlertingController *)self _shouldScreenTimeSuppressNotificationsForBundleIdentifier:v7];
  }

  return v6;
}

- (BOOL)_shouldScreenTimeSuppressNotificationsForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBNCAlertingController *)self _isBundleIdentifierBlockedForScreenTimeExpiration:v4]|| [(SBNCAlertingController *)self _isBundleIdentifierBlockedForCommunicationPolicy:v4];

  return v5;
}

- (BOOL)_isBundleIdentifierBlockedForScreenTimeExpiration:(id)a3
{
  v3 = a3;
  v4 = +[SBApplicationController sharedInstance];
  v5 = [v4 applicationWithBundleIdentifier:v3];

  v6 = [v5 info];
  LOBYTE(v3) = [v6 isBlockedForScreenTimeExpiration];

  return v3;
}

- (BOOL)_isBundleIdentifierBlockedForCommunicationPolicy:(id)a3
{
  v3 = a3;
  v4 = +[SBCommunicationPolicyManager sharedInstance];
  v5 = [v4 shouldScreenTimeSuppressNotificationsForBundleIdentifier:v3];

  return v5;
}

- (BOOL)_shouldRealert
{
  v3 = [(SBNCAlertingController *)self lockScreenManager];
  if ([v3 isUILocked])
  {
    v4 = [(SBNCAlertingController *)self lockScreenManager];
    v5 = [v4 isInLostMode] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_killRealertsForNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(SBNCAlertingController *)self activeRequestWithRealerts];
  v6 = [v5 notificationIdentifier];
  v7 = [v4 notificationIdentifier];

  LODWORD(v4) = [v6 isEqualToString:v7];
  if (v4)
  {

    [(SBNCAlertingController *)self killRealerts];
  }
}

- (void)_realertTimerFired:(id)a3
{
  v7 = a3;
  if ([(SBNCAlertingController *)self _shouldRealert])
  {
    v4 = [(SBNCAlertingController *)self realertTimers];
    if ([v4 containsObject:v7])
    {
      v5 = [(SBNCAlertingController *)self activeRequestWithRealerts];

      if (!v5)
      {
        goto LABEL_6;
      }

      v4 = [(SBNCAlertingController *)self activeRequestWithRealerts];
      [(SBNCAlertingController *)self _alertNowForNotificationRequest:v4];
    }
  }

LABEL_6:
  v6 = [(SBNCAlertingController *)self realertTimers];
  [v6 removeObject:v7];
}

- (void)_scheduleRealertsForNotificationRequest:(id)a3
{
  v15 = a3;
  v4 = [v15 options];
  v5 = [v4 realertCount];

  v6 = [(SBNCAlertingController *)self _shouldRealert];
  if (v15 && v6 && v5)
  {
    [(SBNCAlertingController *)self killRealerts];
    [(SBNCAlertingController *)self setActiveRequestWithRealerts:v15];
    v7 = 120;
    v8 = 1;
    do
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.springboard.alertingcontroller.realert-%ld", v8];
      v10 = objc_alloc(MEMORY[0x277D3A180]);
      v11 = [v15 notificationIdentifier];
      v12 = [v10 initWithTimeInterval:v9 serviceIdentifier:self target:sel__realertTimerFired_ selector:v11 userInfo:v7];

      [v12 setUserVisible:1];
      [v12 setMinimumEarlyFireProportion:1.0];
      v13 = [MEMORY[0x277CBEB88] currentRunLoop];
      [v12 scheduleInRunLoop:v13];

      v14 = [(SBNCAlertingController *)self realertTimers];
      [v14 addObject:v12];

      v7 += 120;
      ++v8;
      --v5;
    }

    while (v5);
  }
}

@end