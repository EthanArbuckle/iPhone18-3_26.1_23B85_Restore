@interface NanoWeatherPreferencesMonitor
- (BOOL)_nanoCityListNeedsUpdatingFrom:(id)from;
- (BOOL)_nanoCityNeedsUpdateDueToLocationInfoFrom:(id)from;
- (BOOL)_nanoCityNeedsUpdateDueToLocationInfoFrom:(id)from differentFrom:(id)differentFrom;
- (NanoWeatherPreferencesMonitor)init;
- (id)_defaultCities;
- (id)_deviceLangID;
- (id)_getNanoCityFromList:(id)list forMatchingCompanionCity:(id)city;
- (void)_addOperationWithQOS:(int64_t)s usingBlock:(id)block;
- (void)_beginXPCTransaction;
- (void)_checkForInitialState;
- (void)_cleanupSharedManagers;
- (void)_clearXPCTransaction;
- (void)_completeMonitoringStartup;
- (void)_endDelayingNanoPreferencesSync;
- (void)_endXPCTransactionIfOK;
- (void)_loadCompanionCityListOnCompletion:(id)completion;
- (void)_startMonitoring;
- (void)_stopMonitoring;
- (void)_updateCityList;
- (void)dealloc;
- (void)performBlockAsXPCXaction:(id)xaction;
- (void)performBlockOnOperationQueue:(id)queue;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
- (void)syncCoordinatorDidChangeSyncRestriction:(id)restriction;
- (void)terminate;
- (void)ubiquitousDefaultsDidChange:(id)change;
- (void)weatherAppInstallationStateDidChange:(unint64_t)change;
- (void)weatherPrefsDidGetUpdated:(id)updated;
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
  _deviceLangID = [(NanoWeatherPreferencesMonitor *)self _deviceLangID];
  v3 = +[ALCityManagerLoc sharedManager];
  [v3 setLocaleForCityNames:_deviceLangID];

  v4 = +[ALCityManagerLoc sharedManager];
  v5 = [v4 defaultCitiesForLocaleCode:_deviceLangID];

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
          name = [v11 name];
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

- (void)_addOperationWithQOS:(int64_t)s usingBlock:(id)block
{
  v6 = [NSBlockOperation blockOperationWithBlock:block];
  [v6 setQualityOfService:s];
  [(NSOperationQueue *)self->_utilityQueue addOperation:v6];
}

- (void)performBlockAsXPCXaction:(id)xaction
{
  xactionCopy = xaction;
  [(NanoWeatherPreferencesMonitor *)self _beginXPCTransaction];
  v5 = xactionCopy[2](xactionCopy);

  if ((v5 & 1) == 0)
  {

    [(NanoWeatherPreferencesMonitor *)self _endXPCTransactionIfOK];
  }
}

- (void)performBlockOnOperationQueue:(id)queue
{
  queueCopy = queue;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002F3C;
  v6[3] = &unk_10000C5B8;
  objc_copyWeak(&v8, &location);
  v5 = queueCopy;
  v7 = v5;
  [(NanoWeatherPreferencesMonitor *)self _addOperationWithQOS:25 usingBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)weatherAppInstallationStateDidChange:(unint64_t)change
{
  if (change == 1)
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

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  coordinatorCopy = coordinator;
  sessionCopy = session;
  [(NanoWeatherPreferencesMonitor *)self _beginXPCTransaction];
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003134;
  v9[3] = &unk_10000C5E0;
  objc_copyWeak(&v11, &location);
  v8 = sessionCopy;
  v10 = v8;
  [(NanoWeatherPreferencesMonitor *)self _addOperationWithQOS:25 usingBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)syncCoordinatorDidChangeSyncRestriction:(id)restriction
{
  restrictionCopy = restriction;
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

- (void)weatherPrefsDidGetUpdated:(id)updated
{
  updatedCopy = updated;
  v5 = +[NSProcessInfo processInfo];
  processName = [v5 processName];
  object = [updatedCopy object];

  LOBYTE(updatedCopy) = [processName isEqualToString:object];
  if ((updatedCopy & 1) == 0)
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

- (void)ubiquitousDefaultsDidChange:(id)change
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
  xactionRefCountLock = [(NanoWeatherPreferencesMonitor *)self xactionRefCountLock];
  [xactionRefCountLock lock];

  xpcXactionCount = self->_xpcXactionCount;
  self->_xpcXactionCount = xpcXactionCount + 1;
  if (!xpcXactionCount)
  {
    v5 = os_transaction_create();
    [(NanoWeatherPreferencesMonitor *)self setTransaction:v5];
  }

  xactionRefCountLock2 = [(NanoWeatherPreferencesMonitor *)self xactionRefCountLock];
  [xactionRefCountLock2 unlock];
}

- (void)_clearXPCTransaction
{
  xactionRefCountLock = [(NanoWeatherPreferencesMonitor *)self xactionRefCountLock];
  [xactionRefCountLock lock];

  self->_xpcXactionCount = 0;
  [(NanoWeatherPreferencesMonitor *)self setTransaction:0];
  xactionRefCountLock2 = [(NanoWeatherPreferencesMonitor *)self xactionRefCountLock];
  [xactionRefCountLock2 unlock];
}

- (void)_endXPCTransactionIfOK
{
  xactionRefCountLock = [(NanoWeatherPreferencesMonitor *)self xactionRefCountLock];
  [xactionRefCountLock lock];

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
  xactionRefCountLock2 = [(NanoWeatherPreferencesMonitor *)self xactionRefCountLock];
  [xactionRefCountLock2 unlock];
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
    watchPreferences = [(NanoWeatherPreferencesMonitor *)self watchPreferences];
    [watchPreferences syncPreferencesToNano];
  }
}

- (void)_updateCityList
{
  os_unfair_lock_lock(&self->_companionCityListLock);
  companionCityList = [(NanoWeatherPreferencesMonitor *)self companionCityList];
  v4 = [companionCityList copy];

  os_unfair_lock_unlock(&self->_companionCityListLock);
  watchPreferences = [(NanoWeatherPreferencesMonitor *)self watchPreferences];
  if ([(NanoWeatherPreferencesMonitor *)self _nanoCityListNeedsUpdatingFrom:v4])
  {
    v6 = sub_1000010B8(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector("name");
      v8 = [v4 valueForKeyPath:v7];
      v9 = [v8 componentsJoinedByString:{@", "}];
      cityList = [watchPreferences cityList];
      v11 = [cityList valueForKeyPath:@"Name"];
      v12 = [v11 componentsJoinedByString:{@", "}];
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Determined watch needs updated city list. Phone list? %@; Watch list? %@.", &v15, 0x16u);
    }

    companionWeatherPrefs = [(NanoWeatherPreferencesMonitor *)self companionWeatherPrefs];
    lastUpdated = [companionWeatherPrefs lastUpdated];

    [watchPreferences setCityListFromCityObjs:v4 lastUpdated:lastUpdated];
  }
}

- (BOOL)_nanoCityListNeedsUpdatingFrom:(id)from
{
  fromCopy = from;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  watchPreferences = [(NanoWeatherPreferencesMonitor *)self watchPreferences];
  cityObjectsListFromNanoPreferences = [watchPreferences cityObjectsListFromNanoPreferences];

  v7 = [fromCopy count];
  if (v7 == [cityObjectsListFromNanoPreferences count])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100003D38;
    v10[3] = &unk_10000C630;
    v11 = cityObjectsListFromNanoPreferences;
    v12 = &v13;
    [fromCopy enumerateObjectsUsingBlock:v10];

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

- (id)_getNanoCityFromList:(id)list forMatchingCompanionCity:(id)city
{
  listCopy = list;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003EF4;
  v11[3] = &unk_10000C658;
  cityCopy = city;
  v6 = cityCopy;
  v7 = objc_retainBlock(v11);
  v8 = [listCopy indexOfObjectPassingTest:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [listCopy objectAtIndexedSubscript:v8];
  }

  return v9;
}

- (BOOL)_nanoCityNeedsUpdateDueToLocationInfoFrom:(id)from
{
  fromCopy = from;
  watchPreferences = [(NanoWeatherPreferencesMonitor *)self watchPreferences];
  cityList = [watchPreferences cityList];
  v7 = [(NanoWeatherPreferencesMonitor *)self _getNanoCityFromList:cityList forMatchingCompanionCity:fromCopy];

  LOBYTE(self) = [(NanoWeatherPreferencesMonitor *)self _nanoCityNeedsUpdateDueToLocationInfoFrom:fromCopy differentFrom:v7];
  return self;
}

- (BOOL)_nanoCityNeedsUpdateDueToLocationInfoFrom:(id)from differentFrom:(id)differentFrom
{
  fromCopy = from;
  v7 = [differentFrom objectForKeyedSubscript:@"CountryAbbreviation"];
  uppercaseString = [v7 uppercaseString];

  iSO3166CountryAbbreviation = [fromCopy ISO3166CountryAbbreviation];

  uppercaseString2 = [iSO3166CountryAbbreviation uppercaseString];

  if (uppercaseString)
  {
    v11 = 1;
  }

  else
  {
    v11 = uppercaseString2 == 0;
  }

  v12 = !v11;
  if (uppercaseString2)
  {
    v13 = [uppercaseString isEqualToString:uppercaseString2] ^ 1;
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  v14 = from == 0;
  v15 = differentFrom != 0;
  if (!differentFrom)
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
      v21 = from != 0;
      v22 = 2112;
      v23 = uppercaseString;
      v24 = 2112;
      v25 = uppercaseString2;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Nano city needs update. Nano City Exists? %d, Companion City Exists? %d. Nano City Country Abbreviation: %@, Companion City Country Abbreviation: %@.", v19, 0x22u);
    }
  }

  return v16 & 1;
}

- (void)_checkForInitialState
{
  watchPreferences = [(NanoWeatherPreferencesMonitor *)self watchPreferences];
  cityList = [watchPreferences cityList];

  if (!cityList)
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

- (void)_loadCompanionCityListOnCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000431C;
  v5[3] = &unk_10000C6C0;
  v5[4] = self;
  completionCopy = completion;
  v3 = completionCopy;
  v4 = objc_retainBlock(v5);
  dispatch_async(&_dispatch_main_q, v4);
}

@end