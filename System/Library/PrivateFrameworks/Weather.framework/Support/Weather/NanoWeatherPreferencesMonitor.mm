@interface NanoWeatherPreferencesMonitor
- (BOOL)_nanoCityListNeedsUpdatingFrom:(id)a3;
- (BOOL)_nanoCityNeedsUpdateDueToLocationInfoFrom:(id)a3;
- (BOOL)_nanoCityNeedsUpdateDueToLocationInfoFrom:(id)a3 differentFrom:(id)a4;
- (NanoWeatherPreferencesMonitor)init;
- (id)_defaultCities;
- (id)_deviceLangID;
- (id)_getNanoCityFromList:(id)a3 forMatchingCompanionCity:(id)a4;
- (void)_addOperationWithQOS:(int64_t)a3 usingBlock:(id)a4;
- (void)_beginXPCTransaction;
- (void)_checkForInitialState;
- (void)_cleanupSharedManagers;
- (void)_clearXPCTransaction;
- (void)_completeMonitoringStartup;
- (void)_endDelayingNanoPreferencesSync;
- (void)_endXPCTransactionIfOK;
- (void)_loadCompanionCityListOnCompletion:(id)a3;
- (void)_startMonitoring;
- (void)_stopMonitoring;
- (void)_updateCityList;
- (void)dealloc;
- (void)performBlockAsXPCXaction:(id)a3;
- (void)performBlockOnOperationQueue:(id)a3;
- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4;
- (void)syncCoordinatorDidChangeSyncRestriction:(id)a3;
- (void)terminate;
- (void)ubiquitousDefaultsDidChange:(id)a3;
- (void)weatherAppInstallationStateDidChange:(unint64_t)a3;
- (void)weatherPrefsDidGetUpdated:(id)a3;
@end

@implementation NanoWeatherPreferencesMonitor

- (NanoWeatherPreferencesMonitor)init
{
  self->_companionCityListLock._os_unfair_lock_opaque = 0;
  self->_authorizationStatus = 0;
  self->_delayPrefsSyncRequestCount = 0;
  self->_monitoringStarted = 0;
  v3 = objc_alloc_init(NSLock);
  xactionRefCountLock = self->_xactionRefCountLock;
  self->_xactionRefCountLock = v3;

  *&self->_syncCoordinatorWaitingForCompletion = 0;
  v5 = objc_alloc_init(NSOperationQueue);
  utilityQueue = self->_utilityQueue;
  self->_utilityQueue = v5;

  [(NSOperationQueue *)self->_utilityQueue setMaxConcurrentOperationCount:1];
  [(NSOperationQueue *)self->_utilityQueue setQualityOfService:17];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100001C44, @"com.apple.mobile.keybagd.first_unlock", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v8, self, sub_100001CD0, NRPairedDeviceRegistryPairedDeviceDidChangeVersionDarwinNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v9 = [PSYSyncCoordinator syncCoordinatorWithServiceName:@"com.apple.pairedsync.nanoweatherprefssync"];
  syncCoordinator = self->_syncCoordinator;
  self->_syncCoordinator = v9;

  [(PSYSyncCoordinator *)self->_syncCoordinator setDelegate:self];
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_10000C568);
  return self;
}

- (void)terminate
{
  v3 = sub_1000010B8(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Terminating.", v4, 2u);
  }

  [(NanoWeatherPreferencesMonitor *)self _clearXPCTransaction];
  [(NanoWeatherPreferencesMonitor *)self _stopMonitoring];
}

- (void)dealloc
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001E1C;
  v5[3] = &unk_10000C590;
  v5[4] = self;
  v3 = [NSBlockOperation blockOperationWithBlock:v5];
  [(NSOperationQueue *)self->_utilityQueue addOperation:v3];
  [(NSOperationQueue *)self->_utilityQueue waitUntilAllOperationsAreFinished];

  v4.receiver = self;
  v4.super_class = NanoWeatherPreferencesMonitor;
  [(NanoWeatherPreferencesMonitor *)&v4 dealloc];
}

- (void)_startMonitoring
{
  [(NanoWeatherPreferencesMonitor *)self _beginXPCTransaction];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001EE8;
  v4[3] = &unk_10000C590;
  v4[4] = self;
  v3 = objc_retainBlock(v4);
  [(NanoWeatherPreferencesMonitor *)self _loadCompanionCityListOnCompletion:v3];
}

- (void)_completeMonitoringStartup
{
  [(NanoWeatherPreferencesMonitor *)self _checkForInitialState];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1000028E4, @"com.apple.nanoweatherprefsd.PreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"weatherPrefsDidGetUpdated:" name:kWeatherPrefGroupPrefsDidUpdate object:0 suspensionBehavior:2];

  utilityQueue = self->_utilityQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002A0C;
  v6[3] = &unk_10000C590;
  v6[4] = self;
  [(NSOperationQueue *)utilityQueue addOperationWithBlock:v6];
  self->_monitoringStarted = 1;
}

- (id)_deviceLangID
{
  v2 = CFPreferencesCopyValue(@"AppleLocale", kCFPreferencesAnyApplication, @"mobile", kCFPreferencesAnyHost);

  return v2;
}

- (void)_stopMonitoring
{
  if (self->_monitoringStarted)
  {
    v4 = +[NSDistributedNotificationCenter defaultCenter];
    [v4 removeObserver:self];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
    self->_monitoringStarted = 0;
    v6 = +[NanoWeatherAppWorkSpaceObserver sharedWorkspaceObserver];
    [v6 stopObservingAppInstallation];
  }
}

- (id)_defaultCities
{
  v2 = [(NanoWeatherPreferencesMonitor *)self _deviceLangID];
  v3 = +[ALCityManagerLoc sharedManager];
  [v3 setLocaleForCityNames:v2];

  v4 = +[ALCityManagerLoc sharedManager];
  v5 = [v4 defaultCitiesForLocaleCode:v2];

  if ([v5 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 name];
          v13 = +[ALCityManagerLoc sharedManager];
          v14 = [NSArray arrayWithObject:v11];
          [v13 localizeCities:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (void)_addOperationWithQOS:(int64_t)a3 usingBlock:(id)a4
{
  v6 = [NSBlockOperation blockOperationWithBlock:a4];
  [v6 setQualityOfService:a3];
  [(NSOperationQueue *)self->_utilityQueue addOperation:v6];
}

- (void)performBlockAsXPCXaction:(id)a3
{
  v4 = a3;
  [(NanoWeatherPreferencesMonitor *)self _beginXPCTransaction];
  v5 = v4[2](v4);

  if ((v5 & 1) == 0)
  {

    [(NanoWeatherPreferencesMonitor *)self _endXPCTransactionIfOK];
  }
}

- (void)performBlockOnOperationQueue:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002F3C;
  v6[3] = &unk_10000C5B8;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(NanoWeatherPreferencesMonitor *)self _addOperationWithQOS:25 usingBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)weatherAppInstallationStateDidChange:(unint64_t)a3
{
  if (a3 == 1)
  {
    v8 = v3;
    v9 = v4;
    v5 = sub_1000010B8(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Weather reinstalled. Synchronize prefs.", v7, 2u);
    }

    v6 = +[WeatherPreferences sharedPreferences];
    [v6 forceSyncCloudPreferences];
  }
}

- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NanoWeatherPreferencesMonitor *)self _beginXPCTransaction];
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003134;
  v9[3] = &unk_10000C5E0;
  objc_copyWeak(&v11, &location);
  v8 = v7;
  v10 = v8;
  [(NanoWeatherPreferencesMonitor *)self _addOperationWithQOS:25 usingBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)syncCoordinatorDidChangeSyncRestriction:(id)a3
{
  v4 = a3;
  [(NanoWeatherPreferencesMonitor *)self _beginXPCTransaction];
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000032A8;
  v5[3] = &unk_10000C5E0;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [(NanoWeatherPreferencesMonitor *)self _addOperationWithQOS:25 usingBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)weatherPrefsDidGetUpdated:(id)a3
{
  v4 = a3;
  v5 = +[NSProcessInfo processInfo];
  v6 = [v5 processName];
  v7 = [v4 object];

  LOBYTE(v4) = [v6 isEqualToString:v7];
  if ((v4 & 1) == 0)
  {
    [(NanoWeatherPreferencesMonitor *)self _beginXPCTransaction];
    v8 = sub_1000010B8(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Phone prefs updated.", buf, 2u);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100003474;
    v10[3] = &unk_10000C590;
    v10[4] = self;
    v9 = objc_retainBlock(v10);
    [(NanoWeatherPreferencesMonitor *)self _loadCompanionCityListOnCompletion:v9];
  }
}

- (void)ubiquitousDefaultsDidChange:(id)a3
{
  [(NanoWeatherPreferencesMonitor *)self _beginXPCTransaction];
  v4 = sub_1000010B8(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ubiquitous defaults changed; update watch city list if necessary.", buf, 2u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100003684;
  v6[3] = &unk_10000C590;
  v6[4] = self;
  v5 = objc_retainBlock(v6);
  [(NanoWeatherPreferencesMonitor *)self _loadCompanionCityListOnCompletion:v5];
}

- (void)_beginXPCTransaction
{
  v3 = [(NanoWeatherPreferencesMonitor *)self xactionRefCountLock];
  [v3 lock];

  xpcXactionCount = self->_xpcXactionCount;
  self->_xpcXactionCount = xpcXactionCount + 1;
  if (!xpcXactionCount)
  {
    v5 = os_transaction_create();
    [(NanoWeatherPreferencesMonitor *)self setTransaction:v5];
  }

  v6 = [(NanoWeatherPreferencesMonitor *)self xactionRefCountLock];
  [v6 unlock];
}

- (void)_clearXPCTransaction
{
  v3 = [(NanoWeatherPreferencesMonitor *)self xactionRefCountLock];
  [v3 lock];

  self->_xpcXactionCount = 0;
  [(NanoWeatherPreferencesMonitor *)self setTransaction:0];
  v4 = [(NanoWeatherPreferencesMonitor *)self xactionRefCountLock];
  [v4 unlock];
}

- (void)_endXPCTransactionIfOK
{
  v3 = [(NanoWeatherPreferencesMonitor *)self xactionRefCountLock];
  [v3 lock];

  xpcXactionCount = self->_xpcXactionCount;
  v5 = xpcXactionCount - 1;
  if (xpcXactionCount == 1)
  {
    [(NanoWeatherPreferencesMonitor *)self setTransaction:0];
    v5 = 0;
  }

  else if (xpcXactionCount < 2)
  {
    goto LABEL_5;
  }

  self->_xpcXactionCount = v5;
LABEL_5:
  v6 = [(NanoWeatherPreferencesMonitor *)self xactionRefCountLock];
  [v6 unlock];
}

- (void)_cleanupSharedManagers
{
  v2 = +[WeatherPreferences sharedPreferences];
  [v2 setSyncDelegate:0];
}

- (void)_endDelayingNanoPreferencesSync
{
  v3 = self->_delayPrefsSyncRequestCount - 1;
  self->_delayPrefsSyncRequestCount = v3;
  if (!v3)
  {
    v4 = [(NanoWeatherPreferencesMonitor *)self watchPreferences];
    [v4 syncPreferencesToNano];
  }
}

- (void)_updateCityList
{
  os_unfair_lock_lock(&self->_companionCityListLock);
  v3 = [(NanoWeatherPreferencesMonitor *)self companionCityList];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_companionCityListLock);
  v5 = [(NanoWeatherPreferencesMonitor *)self watchPreferences];
  if ([(NanoWeatherPreferencesMonitor *)self _nanoCityListNeedsUpdatingFrom:v4])
  {
    v6 = sub_1000010B8(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector("name");
      v8 = [v4 valueForKeyPath:v7];
      v9 = [v8 componentsJoinedByString:{@", "}];
      v10 = [v5 cityList];
      v11 = [v10 valueForKeyPath:@"Name"];
      v12 = [v11 componentsJoinedByString:{@", "}];
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Determined watch needs updated city list. Phone list? %@; Watch list? %@.", &v15, 0x16u);
    }

    v13 = [(NanoWeatherPreferencesMonitor *)self companionWeatherPrefs];
    v14 = [v13 lastUpdated];

    [v5 setCityListFromCityObjs:v4 lastUpdated:v14];
  }
}

- (BOOL)_nanoCityListNeedsUpdatingFrom:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = [(NanoWeatherPreferencesMonitor *)self watchPreferences];
  v6 = [v5 cityObjectsListFromNanoPreferences];

  v7 = [v4 count];
  if (v7 == [v6 count])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100003D38;
    v10[3] = &unk_10000C630;
    v11 = v6;
    v12 = &v13;
    [v4 enumerateObjectsUsingBlock:v10];

    v8 = *(v14 + 24);
  }

  else
  {
    v8 = 1;
    *(v14 + 24) = 1;
  }

  _Block_object_dispose(&v13, 8);
  return v8 & 1;
}

- (id)_getNanoCityFromList:(id)a3 forMatchingCompanionCity:(id)a4
{
  v5 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003EF4;
  v11[3] = &unk_10000C658;
  v12 = a4;
  v6 = v12;
  v7 = objc_retainBlock(v11);
  v8 = [v5 indexOfObjectPassingTest:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v5 objectAtIndexedSubscript:v8];
  }

  return v9;
}

- (BOOL)_nanoCityNeedsUpdateDueToLocationInfoFrom:(id)a3
{
  v4 = a3;
  v5 = [(NanoWeatherPreferencesMonitor *)self watchPreferences];
  v6 = [v5 cityList];
  v7 = [(NanoWeatherPreferencesMonitor *)self _getNanoCityFromList:v6 forMatchingCompanionCity:v4];

  LOBYTE(self) = [(NanoWeatherPreferencesMonitor *)self _nanoCityNeedsUpdateDueToLocationInfoFrom:v4 differentFrom:v7];
  return self;
}

- (BOOL)_nanoCityNeedsUpdateDueToLocationInfoFrom:(id)a3 differentFrom:(id)a4
{
  v6 = a3;
  v7 = [a4 objectForKeyedSubscript:@"CountryAbbreviation"];
  v8 = [v7 uppercaseString];

  v9 = [v6 ISO3166CountryAbbreviation];

  v10 = [v9 uppercaseString];

  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  v12 = !v11;
  if (v10)
  {
    v13 = [v8 isEqualToString:v10] ^ 1;
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  v14 = a3 == 0;
  v15 = a4 != 0;
  if (!a4)
  {
    v14 = 1;
  }

  v16 = v14 | v13 | v12;
  if (v16)
  {
    v17 = sub_1000010B8(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19[0] = 67109890;
      v19[1] = v15;
      v20 = 1024;
      v21 = a3 != 0;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Nano city needs update. Nano City Exists? %d, Companion City Exists? %d. Nano City Country Abbreviation: %@, Companion City Country Abbreviation: %@.", v19, 0x22u);
    }
  }

  return v16 & 1;
}

- (void)_checkForInitialState
{
  v3 = [(NanoWeatherPreferencesMonitor *)self watchPreferences];
  v4 = [v3 cityList];

  if (!v4)
  {
    v5 = sub_1000010B8(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NanoWeatherPreferencesMonitor _checkForInitialState nano prefs incomplete so full update.", v6, 2u);
    }

    [(NanoWeatherPreferencesMonitor *)self _doFullUpdateOfNanoPrefs:0];
  }
}

- (void)_loadCompanionCityListOnCompletion:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000431C;
  v5[3] = &unk_10000C6C0;
  v5[4] = self;
  v6 = a3;
  v3 = v6;
  v4 = objc_retainBlock(v5);
  dispatch_async(&_dispatch_main_q, v4);
}

@end