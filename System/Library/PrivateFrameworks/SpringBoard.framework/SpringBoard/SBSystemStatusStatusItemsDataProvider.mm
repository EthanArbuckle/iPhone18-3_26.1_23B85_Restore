@interface SBSystemStatusStatusItemsDataProvider
- (BOOL)_isDisplayWarningItemEnabled;
- (BOOL)_isVPNItemEnabled;
- (BOOL)_wantsAttributionForStatusItemWithIdentifier:(id)a3;
- (SBSystemStatusStatusItemsDataProvider)initWithMainDisplayWindowScene:(id)a3;
- (SBWindowScene)mainDisplayWindowScene;
- (id)_identifiersForSupportedStatusItems;
- (void)_registerForNotifications;
- (void)_updateAllData;
- (void)_updateDataForAirPlay;
- (void)_updateDataForAirplaneMode;
- (void)_updateDataForAlarm;
- (void)_updateDataForCarPlay;
- (void)_updateDataForDisplayWarning;
- (void)_updateDataForRotationLock;
- (void)_updateDataForStatusItemsWithIdentifiers:(id)a3;
- (void)_updateDataForTTY;
- (void)_updateDataForVPN;
- (void)dealloc;
- (void)invalidate;
- (void)setAlarmEnabled:(BOOL)a3;
@end

@implementation SBSystemStatusStatusItemsDataProvider

- (SBSystemStatusStatusItemsDataProvider)initWithMainDisplayWindowScene:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = SBSystemStatusStatusItemsDataProvider;
  v6 = [(SBSystemStatusStatusItemsDataProvider *)&v16 init];
  if (v6)
  {
    v7 = [SBApp systemStatusServer];
    if (!v7)
    {
      [(SBSystemStatusStatusItemsDataProvider *)v6 initWithMainDisplayWindowScene:a2];
    }

    v8 = [objc_alloc(MEMORY[0x277D6BB90]) initWithServerHandle:v7];
    telephonyStatusDomain = v6->_telephonyStatusDomain;
    v6->_telephonyStatusDomain = v8;

    v10 = [objc_alloc(MEMORY[0x277D6BBB0]) initWithServerHandle:v7];
    wifiStatusDomain = v6->_wifiStatusDomain;
    v6->_wifiStatusDomain = v10;

    objc_storeWeak(&v6->_mainDisplayWindowScene, v5);
    v12 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    dataProvidersByIdentifier = v6->_dataProvidersByIdentifier;
    v6->_dataProvidersByIdentifier = v12;

    [(SBSystemStatusStatusItemsDataProvider *)v6 _registerForNotifications];
    v15 = v6;
    BSDispatchMain();
  }

  return v6;
}

- (void)dealloc
{
  [(SBSystemStatusStatusItemsDataProvider *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBSystemStatusStatusItemsDataProvider;
  [(SBSystemStatusStatusItemsDataProvider *)&v3 dealloc];
}

- (void)setAlarmEnabled:(BOOL)a3
{
  if (self->_alarmEnabled != a3)
  {
    self->_alarmEnabled = a3;
    [(SBSystemStatusStatusItemsDataProvider *)self _updateDataForAlarm];
  }
}

- (void)invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSMapTable *)self->_dataProvidersByIdentifier dictionaryRepresentation];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) invalidate];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(STTelephonyStatusDomain *)self->_telephonyStatusDomain invalidate];
  [(STWifiStatusDomain *)self->_wifiStatusDomain invalidate];
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 removeObserver:self];
}

- (void)_registerForNotifications
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [(SBSystemStatusStatusItemsDataProvider *)self _identifiersForSupportedStatusItems];
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        v9 = [[SBSystemStatusStatusItemDataPublisher alloc] initWithStatusItemIdentifier:v8];
        dataProvidersByIdentifier = self->_dataProvidersByIdentifier;
        v11 = [v8 copy];
        [(NSMapTable *)dataProvidersByIdentifier setObject:v9 forKey:v11];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 addObserver:self selector:sel__updateDataForRotationLock name:*MEMORY[0x277D67A98] object:0];
  [v12 addObserver:self selector:sel__updateDataForAirplaneMode name:*MEMORY[0x277D679E8] object:0];
  [v12 addObserver:self selector:sel__updateDataForTTY name:@"SBTTYChangedNotification" object:0];
  [v12 addObserver:self selector:sel__updateDataForVPN name:@"SBVPNConnectionChangedNotification" object:0];
  [v12 addObserver:self selector:sel__updateDataForAirPlay name:@"SBAirPlayScreenSharingStatusChangedNotificationName" object:0];
  [v12 addObserver:self selector:sel__updateDataForCarPlay name:@"SBNotificationCarPlayDestinationAvailabilityDidChange" object:0];
  [v12 addObserver:self selector:sel__updateDataForAlarm name:@"SBTTYChangedNotification" object:0];
  v13 = [SBTelephonyManager sharedTelephonyManagerCreatingIfNecessary:0];
  telephonyManager = self->_telephonyManager;
  self->_telephonyManager = v13;

  v15 = objc_alloc_init(SBDisplayReferenceModeMonitor);
  v16 = [(SBSystemStatusStatusItemsDataProvider *)self mainDisplayWindowScene];
  v17 = [v16 screen];
  v18 = [v17 displayConfiguration];
  [(SBDisplayReferenceModeMonitor *)v15 addReferenceModeStatusObserver:self forDisplayWithConfiguration:v18];
  displayReferenceModeMonitor = self->_displayReferenceModeMonitor;
  self->_displayReferenceModeMonitor = v15;
  v20 = v15;

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __66__SBSystemStatusStatusItemsDataProvider__registerForNotifications__block_invoke;
  v22[3] = &unk_2783AFB08;
  v22[4] = self;
  v21 = MEMORY[0x223D6F7F0](v22);
  [(STTelephonyStatusDomain *)self->_telephonyStatusDomain observeDataWithBlock:v21];
  [(STWifiStatusDomain *)self->_wifiStatusDomain observeDataWithBlock:v21];
}

- (BOOL)_isDisplayWarningItemEnabled
{
  v2 = self;
  v3 = [(SBSystemStatusStatusItemsDataProvider *)self mainDisplayWindowScene];
  v4 = [v3 screen];
  v5 = [v4 displayConfiguration];
  LOBYTE(v2) = [(SBDisplayReferenceModeMonitor *)v2->_displayReferenceModeMonitor referenceModeStatusForDisplayWithConfiguration:v5]== 2;

  return v2;
}

- (BOOL)_isVPNItemEnabled
{
  BSDispatchQueueAssertMain();
  if (!self->_telephonyManager)
  {
    return 0;
  }

  v3 = [(SBSystemStatusStatusItemsDataProvider *)self telephonyStatusDomain];
  v4 = [v3 data];
  v5 = [v4 primarySIMInfo];
  v6 = [v5 isProvidingDataConnection];

  v7 = [(SBTelephonyManager *)self->_telephonyManager hasNonCellularNetworkConnection];
  if ((v6 & 1) == 0 && !v7)
  {
    return 0;
  }

  telephonyManager = self->_telephonyManager;

  return [(SBTelephonyManager *)telephonyManager isUsingVPNConnection];
}

- (BOOL)_wantsAttributionForStatusItemWithIdentifier:(id)a3
{
  v4 = a3;
  if ([*MEMORY[0x277D6BF70] isEqualToString:v4])
  {
    v5 = +[SBOrientationLockManager sharedInstance];
    v6 = [v5 isUserLocked];
LABEL_7:
    alarmEnabled = v6;

    goto LABEL_8;
  }

  if ([*MEMORY[0x277D6BF48] isEqualToString:v4])
  {
    v5 = +[SBAirplaneModeController sharedInstance];
    v6 = [v5 isInAirplaneMode];
    goto LABEL_7;
  }

  if ([*MEMORY[0x277D6BF80] isEqualToString:v4])
  {
    v5 = [SBTelephonyManager sharedTelephonyManagerCreatingIfNecessary:0];
    v6 = [v5 isTTYEnabled];
    goto LABEL_7;
  }

  if ([*MEMORY[0x277D6BF88] isEqualToString:v4])
  {
    v9 = [(SBSystemStatusStatusItemsDataProvider *)self _isVPNItemEnabled];
LABEL_13:
    alarmEnabled = v9;
    goto LABEL_8;
  }

  if ([*MEMORY[0x277D6BF60] isEqualToString:v4])
  {
    v9 = [(SBSystemStatusStatusItemsDataProvider *)self _isDisplayWarningItemEnabled];
    goto LABEL_13;
  }

  if ([*MEMORY[0x277D6BF40] isEqualToString:v4])
  {
    v5 = +[SBVideoOutController sharedInstanceIfExists];
    v6 = [v5 isScreenSharing];
    goto LABEL_7;
  }

  if ([*MEMORY[0x277D6BF58] isEqualToString:v4])
  {
    v5 = [SBApp notificationDispatcher];
    v6 = [v5 isCarDestinationActive];
    goto LABEL_7;
  }

  if ([*MEMORY[0x277D6BF50] isEqualToString:v4])
  {
    alarmEnabled = self->_alarmEnabled;
  }

  else
  {
    alarmEnabled = 0;
  }

LABEL_8:

  return alarmEnabled;
}

- (id)_identifiersForSupportedStatusItems
{
  v10[8] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = *MEMORY[0x277D6BF48];
  v10[0] = *MEMORY[0x277D6BF70];
  v10[1] = v3;
  v4 = *MEMORY[0x277D6BF88];
  v10[2] = *MEMORY[0x277D6BF80];
  v10[3] = v4;
  v5 = *MEMORY[0x277D6BF40];
  v10[4] = *MEMORY[0x277D6BF60];
  v10[5] = v5;
  v6 = *MEMORY[0x277D6BF50];
  v10[6] = *MEMORY[0x277D6BF58];
  v10[7] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:8];
  v8 = [v2 setWithArray:v7];

  return v8;
}

- (void)_updateDataForStatusItemsWithIdentifiers:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(SBSystemStatusStatusItemsDataProvider *)self _wantsAttributionForStatusItemWithIdentifier:v9];
        v11 = [(NSMapTable *)self->_dataProvidersByIdentifier objectForKey:v9];
        [v11 setStatusItemEnabled:v10 withCompletion:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)_updateAllData
{
  v3 = [(SBSystemStatusStatusItemsDataProvider *)self _identifiersForSupportedStatusItems];
  [(SBSystemStatusStatusItemsDataProvider *)self _updateDataForStatusItemsWithIdentifiers:v3];
}

- (void)_updateDataForRotationLock
{
  v3 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D6BF70]];
  [(SBSystemStatusStatusItemsDataProvider *)self _updateDataForStatusItemsWithIdentifiers:v3];
}

- (void)_updateDataForAirplaneMode
{
  v3 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D6BF48]];
  [(SBSystemStatusStatusItemsDataProvider *)self _updateDataForStatusItemsWithIdentifiers:v3];
}

- (void)_updateDataForTTY
{
  v3 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D6BF80]];
  [(SBSystemStatusStatusItemsDataProvider *)self _updateDataForStatusItemsWithIdentifiers:v3];
}

- (void)_updateDataForVPN
{
  v3 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D6BF88]];
  [(SBSystemStatusStatusItemsDataProvider *)self _updateDataForStatusItemsWithIdentifiers:v3];
}

- (void)_updateDataForAirPlay
{
  v3 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D6BF40]];
  [(SBSystemStatusStatusItemsDataProvider *)self _updateDataForStatusItemsWithIdentifiers:v3];
}

- (void)_updateDataForDisplayWarning
{
  v3 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D6BF60]];
  [(SBSystemStatusStatusItemsDataProvider *)self _updateDataForStatusItemsWithIdentifiers:v3];
}

- (void)_updateDataForCarPlay
{
  v3 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D6BF58]];
  [(SBSystemStatusStatusItemsDataProvider *)self _updateDataForStatusItemsWithIdentifiers:v3];
}

- (void)_updateDataForAlarm
{
  v3 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D6BF50]];
  [(SBSystemStatusStatusItemsDataProvider *)self _updateDataForStatusItemsWithIdentifiers:v3];
}

- (SBWindowScene)mainDisplayWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_mainDisplayWindowScene);

  return WeakRetained;
}

- (void)initWithMainDisplayWindowScene:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"SBSystemStatusStatusItemsDataProvider.m" lineNumber:48 description:{@"don't initialize %@ before the server handle exists!", objc_opt_class()}];
}

@end