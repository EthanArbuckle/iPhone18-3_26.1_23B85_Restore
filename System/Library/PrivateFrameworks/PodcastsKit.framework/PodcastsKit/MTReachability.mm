@interface MTReachability
+ (id)sharedInstance;
- (BOOL)isPodcastsCellularDownloadsEnabled;
- (BOOL)showInternetUnreachableDialogWithAcknowledmentBlock:(id)a3;
- (MTReachability)init;
- (id)reasonTextForNoInternet;
- (unint64_t)reasonForNoInternet;
- (void)_applicationDidBecomeActive;
- (void)_showAlertForInternetUnavailableReason:(unint64_t)a3 completion:(id)a4;
- (void)_updateAirplaneMode;
- (void)_updateGlobalCellularWithCompletion:(id)a3;
- (void)_updateReachability;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
- (void)setHasDeterminedActualGlobalCellularState:(BOOL)a3;
@end

@implementation MTReachability

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__MTReachability_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

void __32__MTReachability_sharedInstance__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___MTReachability;
  v1 = [objc_msgSendSuper2(&v3 allocWithZone_];
  v2 = sharedInstance_instance;
  sharedInstance_instance = v1;
}

- (MTReachability)init
{
  v19.receiver = self;
  v19.super_class = MTReachability;
  v2 = [(MTReachability *)&v19 init];
  if (v2)
  {
    v3 = _MTLogCategoryNetwork();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E9F0000, v3, OS_LOG_TYPE_DEFAULT, "Initializing Reachability", buf, 2u);
    }

    v4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    callbacks = v2->_callbacks;
    v2->_callbacks = v4;

    v6 = dispatch_queue_create("com.apple.MTReachability.cellularQueue", 0);
    cellularQueue = v2->_cellularQueue;
    v2->_cellularQueue = v6;

    v2->_hasDeterminedActualGlobalCellularState = 0;
    v8 = [MEMORY[0x277CBEBD0] _applePodcastsFoundationSharedUserDefaults];
    v2->_globalCellularEnabled = [v8 BOOLForKey:*MEMORY[0x277D3DD08]];

    v9 = [MEMORY[0x277D3DAD0] reachabilityForInternetConnection];
    reachability = v2->_reachability;
    v2->_reachability = v9;

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v2 selector:sel__updateReachability name:*MEMORY[0x277D3DF20] object:v2->_reachability];

    [(ITMReachability *)v2->_reachability startNotifier];
    [(MTReachability *)v2 _updateReachability];
    v12 = objc_alloc_init(MEMORY[0x277CEC5D0]);
    radiosPreferences = v2->_radiosPreferences;
    v2->_radiosPreferences = v12;

    [(RadiosPreferences *)v2->_radiosPreferences setDelegate:v2];
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v2 selector:sel__applicationDidBecomeActive name:*MEMORY[0x277D3DA50] object:0];

    [(MTReachability *)v2 _updateAirplaneMode];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __22__MTReachability_init__block_invoke;
    v16[3] = &unk_279A449D0;
    v17 = v2;
    [(MTReachability *)v17 _updateGlobalCellularWithCompletion:v16];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(MTReachability *)self reachability];
  [v3 stopNotifier];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = *MEMORY[0x277D3DF20];
  v6 = [(MTReachability *)self reachability];
  [v4 removeObserver:self name:v5 object:v6];

  v7.receiver = self;
  v7.super_class = MTReachability;
  [(MTReachability *)&v7 dealloc];
}

- (void)_applicationDidBecomeActive
{
  [(MTReachability *)self _updateAirplaneMode];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__MTReachability__applicationDidBecomeActive__block_invoke;
  v3[3] = &unk_279A449D0;
  v3[4] = self;
  [(MTReachability *)self _updateGlobalCellularWithCompletion:v3];
}

- (void)_updateReachability
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E9F0000, v3, OS_LOG_TYPE_DEFAULT, "Updating reachability", buf, 2u);
  }

  v4 = [(MTReachability *)self isReachable];
  v5 = [(MTReachability *)self reachability];
  -[MTReachability setNetworkStatus:](self, "setNetworkStatus:", [v5 currentReachabilityStatus]);

  [(MTReachability *)self setReachable:1];
  v6 = [(MTReachability *)self networkStatus];
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = 1;
    }

    else
    {
      if (v6 != 2)
      {
        goto LABEL_10;
      }

      v7 = [(MTReachability *)self isGlobalCellularEnabled];
    }
  }

  else
  {
    v7 = 0;
  }

  [(MTReachability *)self setReachable:v7];
LABEL_10:
  v8 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(MTReachability *)self reachability];
    v10 = [v9 currentReachabilityStatus];
    *buf = 134217984;
    *v31 = v10;
    _os_log_impl(&dword_25E9F0000, v8, OS_LOG_TYPE_DEFAULT, "\treachability status <%ld>", buf, 0xCu);
  }

  v11 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(MTReachability *)self isGlobalCellularEnabled];
    *buf = 67109120;
    *v31 = v12;
    _os_log_impl(&dword_25E9F0000, v11, OS_LOG_TYPE_DEFAULT, "\tcellular enabled <%x>", buf, 8u);
  }

  v13 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(MTReachability *)self hasDeterminedActualGlobalCellularState];
    *buf = 67109120;
    *v31 = !v14;
    _os_log_impl(&dword_25E9F0000, v13, OS_LOG_TYPE_DEFAULT, "\tis using cached global cellular setting <%x>", buf, 8u);
  }

  v15 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(MTReachability *)self isReachable];
    *buf = 67109376;
    *v31 = v4;
    *&v31[4] = 1024;
    *&v31[6] = v16;
    _os_log_impl(&dword_25E9F0000, v15, OS_LOG_TYPE_DEFAULT, "\treachability changing from %i to %i", buf, 0xEu);
  }

  v17 = [(MTReachability *)self callbacks];
  objc_sync_enter(v17);
  v18 = [(MTReachability *)self callbacks];
  v19 = [v18 copy];

  objc_sync_exit(v17);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v21)
  {
    v22 = *v26;
    do
    {
      v23 = 0;
      do
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v25 + 1) + 8 * v23++) reachabilityChangedFrom:v4 to:{-[MTReachability isReachable](self, "isReachable", v25)}];
      }

      while (v21 != v23);
      v21 = [v20 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v21);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)setHasDeterminedActualGlobalCellularState:(BOOL)a3
{
  self->_hasDeterminedActualGlobalCellularState = a3;
  if (a3)
  {
    v5 = [MEMORY[0x277CBEBD0] _applePodcastsFoundationSharedUserDefaults];
    v4 = [(MTReachability *)self isGlobalCellularEnabled];
    [v5 setBool:v4 forKey:*MEMORY[0x277D3DD08]];
  }
}

- (void)addObserver:(id)a3
{
  v6 = a3;
  v4 = [(MTReachability *)self callbacks];
  objc_sync_enter(v4);
  v5 = [(MTReachability *)self callbacks];
  [v5 addObject:v6];

  objc_sync_exit(v4);
}

- (void)removeObserver:(id)a3
{
  v6 = a3;
  v4 = [(MTReachability *)self callbacks];
  objc_sync_enter(v4);
  v5 = [(MTReachability *)self callbacks];
  [v5 removeObject:v6];

  objc_sync_exit(v4);
}

- (id)reasonTextForNoInternet
{
  v2 = [(MTReachability *)self reasonForNoInternet];
  switch(v2)
  {
    case 1uLL:
      v3 = [MEMORY[0x277CCA8D8] mainBundle];
      v4 = v3;
      v5 = @"Airplane Mode";
      goto LABEL_9;
    case 2uLL:
      v6 = MGGetBoolAnswer();
      v7 = @"NO_WIFI";
      if (v6)
      {
        v7 = @"NO_WLAN";
      }

      v8 = MEMORY[0x277CCA8D8];
      v9 = v7;
      v4 = [v8 mainBundle];
      v10 = [v4 localizedStringForKey:v9 value:&stru_2870B1390 table:0];

      goto LABEL_10;
    case 3uLL:
      v3 = [MEMORY[0x277CCA8D8] mainBundle];
      v4 = v3;
      v5 = @"No Internet";
LABEL_9:
      v10 = [v3 localizedStringForKey:v5 value:&stru_2870B1390 table:0];
LABEL_10:

      goto LABEL_12;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (BOOL)showInternetUnreachableDialogWithAcknowledmentBlock:(id)a3
{
  v4 = a3;
  if ([(MTReachability *)self isReachable]|| (v5 = [(MTReachability *)self reasonForNoInternet]) == 0)
  {
    v6 = 0;
  }

  else
  {
    [(MTReachability *)self _showAlertForInternetUnavailableReason:v5 completion:v4];
    v6 = 1;
  }

  return v6;
}

- (unint64_t)reasonForNoInternet
{
  if ([(MTReachability *)self networkStatus])
  {
    if ([(MTReachability *)self networkStatus]== 2)
    {
      if ([(MTReachability *)self isGlobalCellularEnabled])
      {
        return 0;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 0;
    }
  }

  else if ([(MTReachability *)self isAirplaneModeEnabled])
  {
    return 1;
  }

  else if ([(MTReachability *)self isGlobalCellularEnabled]|| (MGGetBoolAnswer() & 1) == 0)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (BOOL)isPodcastsCellularDownloadsEnabled
{
  v3 = [MEMORY[0x277CBEBD0] _applePodcastsFoundationSettingsUserDefaults];
  v4 = ([v3 BOOLForKey:*MEMORY[0x277D3DDB0]] & 1) == 0 && -[MTReachability isGlobalCellularEnabled](self, "isGlobalCellularEnabled");

  return v4;
}

- (void)_showAlertForInternetUnavailableReason:(unint64_t)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v15 = [MEMORY[0x277CCA8D8] mainBundle];
      v8 = [v15 localizedStringForKey:@"ALERT_TITLE_GLOBAL_CELLULAR_DISABLED" value:&stru_2870B1390 table:0];

      v16 = MGGetBoolAnswer();
      v17 = @"ALERT_MESSAGE_GLOBAL_CELLULAR_DISABLED_WIFI";
      if (v16)
      {
        v17 = @"ALERT_MESSAGE_GLOBAL_CELLULAR_DISABLED_WLAN";
      }

      v18 = MEMORY[0x277CCA8D8];
      v19 = v17;
      v20 = [v18 mainBundle];
      v7 = [v20 localizedStringForKey:v19 value:&stru_2870B1390 table:0];

      v6 = [MEMORY[0x277D3F9B0] preferencesURL];
      goto LABEL_14;
    }

    v7 = 0;
    v8 = 0;
    if (a3 == 3)
    {
      v14 = [MEMORY[0x277CCA8D8] mainBundle];
      v8 = [v14 localizedStringForKey:@"ALERT_TITLE_NO_INTERNET" value:&stru_2870B1390 table:0];

      v6 = 0;
LABEL_10:
      v7 = 0;
    }
  }

  else
  {
    if (!a3)
    {
      goto LABEL_17;
    }

    v7 = 0;
    v8 = 0;
    if (a3 == 1)
    {
      v9 = MGGetBoolAnswer();
      v10 = @"ALERT_TITLE_AIRPLANE_MODE_WIFI";
      if (v9)
      {
        v10 = @"ALERT_TITLE_AIRPLANE_MODE_WLAN";
      }

      v11 = MEMORY[0x277CCA8D8];
      v12 = v10;
      v13 = [v11 mainBundle];
      v8 = [v13 localizedStringForKey:v12 value:&stru_2870B1390 table:0];

      v6 = [MEMORY[0x277D3F948] preferencesURL];
      goto LABEL_10;
    }
  }

LABEL_14:
  v21 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v23 = 138412546;
    v24 = v8;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_25E9F0000, v21, OS_LOG_TYPE_ERROR, "Unable to show Internet Unavailable dialog. Title = [%@], Message = [%@]", &v23, 0x16u);
  }

LABEL_17:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_updateGlobalCellularWithCompletion:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277CBECE8];
  cellularQueue = self->_cellularQueue;
  v7 = _CTServerConnectionCreateOnTargetQueue();
  if (v7)
  {
    v8 = self->_cellularQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__MTReachability__updateGlobalCellularWithCompletion___block_invoke;
    block[3] = &unk_279A44A20;
    v11 = v7;
    block[4] = self;
    v10 = v4;
    dispatch_async(v8, block);
  }
}

void __54__MTReachability__updateGlobalCellularWithCompletion___block_invoke(uint64_t a1)
{
  location[1] = 0;
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];

  v4 = *(a1 + 48);
  _CTServerConnectionCopyCellularUsagePolicy();
  CFRelease(*(a1 + 48));
  if ([MEMORY[0x277D3F9B0] isEnabled])
  {
    v5 = MGGetBoolAnswer();
  }

  else
  {
    v5 = 0;
  }

  objc_initWeak(location, *(a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__MTReachability__updateGlobalCellularWithCompletion___block_invoke_2;
  block[3] = &unk_279A449F8;
  objc_copyWeak(&v8, location);
  v9 = 0;
  v10 = v5;
  v7 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(location);
}

uint64_t __54__MTReachability__updateGlobalCellularWithCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 49);
  }

  else
  {
    v2 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setGlobalCellularEnabled:v2 & 1];

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)_updateAirplaneMode
{
  [(RadiosPreferences *)self->_radiosPreferences refresh];
  v3 = [(RadiosPreferences *)self->_radiosPreferences airplaneMode];
  if (self->_airplaneModeEnabled != v3)
  {
    self->_airplaneModeEnabled = v3;
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_airplaneModeEnabled];
    [v5 postNotificationName:@"MTAirplaneModeChangedNotification" object:v4];
  }
}

@end