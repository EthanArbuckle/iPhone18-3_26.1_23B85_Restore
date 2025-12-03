@interface SKUINearMeController
+ (id)sharedController;
+ (void)sharedController;
- (BOOL)isNearMeLocationStatusEnabled;
- (NSArray)items;
- (SKUINearMeController)init;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)_disableNearMe;
- (void)_finishLookupWithItems:(id)items response:(id)response error:(id)error;
- (void)_lookupItemsForLocation:(id)location;
- (void)_monitorLocationTimeout;
- (void)_refreshTimeout;
- (void)_setItems:(id)items responseDictionary:(id)dictionary error:(id)error status:(int64_t)status;
- (void)_startMonitoringLocation;
- (void)_startRefreshTimer;
- (void)_stopMonitoringLocation;
- (void)_stopRefreshTimer;
- (void)init;
- (void)itemStateCenterRestrictionsChanged:(id)changed;
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
@end

@implementation SKUINearMeController

+ (id)sharedController
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[SKUINearMeController sharedController];
  }

  if (sharedController_sOnce != -1)
  {
    +[SKUINearMeController sharedController];
  }

  v2 = sharedController_sNearMeController;

  return v2;
}

uint64_t __40__SKUINearMeController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(SKUINearMeController);
  v1 = sharedController_sNearMeController;
  sharedController_sNearMeController = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SKUINearMeController)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUINearMeController init];
  }

  v7.receiver = self;
  v7.super_class = SKUINearMeController;
  v3 = [(SKUINearMeController *)&v7 init];
  if (v3)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];
    v5 = +[SKUIItemStateCenter defaultCenter];
    [v5 addObserver:v3];
  }

  return v3;
}

- (NSArray)items
{
  v18 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = +[SKUIItemStateCenter defaultCenter];
  parentalControlsRank = [v4 parentalControlsRank];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_items;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 parentalControlsRank] <= parentalControlsRank)
        {
          [array addObject:v11];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

- (BOOL)isNearMeLocationStatusEnabled
{
  v2 = SKUICoreLocationFramework();
  v3 = [SKUIWeakLinkedClassForString(&cfstr_Cllocationmana.isa v2)];

  return SKUINearMeIsEnabledForAuthorizationStatus(v3);
}

- (void)_applicationWillEnterForeground:(id)foreground
{
  if (self->_refreshTimer)
  {
    [(SKUINearMeController *)self _startMonitoringLocation];
  }
}

- (void)itemStateCenterRestrictionsChanged:(id)changed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SKUINearMeController_itemStateCenterRestrictionsChanged___block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (SKUINearMeIsEnabledForAuthorizationStatus(status))
  {
    [(SKUINearMeController *)self _startMonitoringLocation];
  }

  else if (status)
  {
    [(SKUINearMeController *)self _disableNearMe];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v14 = @"nearMeEnabled";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:SKUINearMeIsEnabledForAuthorizationStatus(status)];
  v15[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [defaultCenter postNotificationName:@"SKUINearMeLocationStatusDidChangeNotification" object:v8];

  if (status == 2 && !self->_authorizationStatus)
  {
    v9 = objc_alloc_init(MEMORY[0x277D75118]);
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"NEAR_ME_LOCATION_ALERT"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"NEAR_ME_LOCATION_ALERT" inBundles:0];
    }
    v11 = ;
    [v9 setTitle:v11];

    v12 = self->_clientContext;
    if (v12)
    {
      [(SKUIClientContext *)v12 localizedStringForKey:@"OK"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"OK" inBundles:0];
    }
    v13 = ;
    [v9 setCancelButtonIndex:{objc_msgSend(v9, "addButtonWithTitle:", v13)}];

    [v9 show];
  }

  self->_authorizationStatus = status;
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  if ([error code] == 1)
  {

    [(SKUINearMeController *)self _disableNearMe];
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  v5 = [locationsCopy count];
  v6 = locationsCopy;
  if (v5)
  {
    lastObject = [locationsCopy lastObject];
    [lastObject horizontalAccuracy];
    if (v8 > 0.00000011920929 && v8 <= 65.0 && SKUILocationIsAccurate(lastObject))
    {
      [(SKUINearMeController *)self _lookupItemsForLocation:lastObject];
    }

    v6 = locationsCopy;
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)_startMonitoringLocation
{
  [(SKUINearMeController *)self _stopRefreshTimer];
  if (!self->_isMonitoring && !self->_lookupRequest)
  {
    if (!self->_locationManager)
    {
      v3 = SKUICoreLocationFramework();
      v4 = objc_alloc_init(SKUIWeakLinkedClassForString(&cfstr_Cllocationmana.isa, v3));
      locationManager = self->_locationManager;
      self->_locationManager = v4;

      [(CLLocationManager *)self->_locationManager setDelegate:self];
      v6 = SKUICoreLocationFramework();
      v7 = SKUIWeakLinkedSymbolForString("kCLLocationAccuracyBest", v6);
      if (v7)
      {
        [(CLLocationManager *)self->_locationManager setDesiredAccuracy:*v7];
      }
    }

    authorizationStatus = [objc_opt_class() authorizationStatus];
    self->_authorizationStatus = authorizationStatus;
    if (!authorizationStatus)
    {
      [(CLLocationManager *)self->_locationManager requestWhenInUseAuthorization];
    }

    [(CLLocationManager *)self->_locationManager startUpdatingLocation];
    self->_isMonitoring = 1;
    if (!self->_locationTimeoutTimer)
    {
      objc_initWeak(&location, self);
      v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
      locationTimeoutTimer = self->_locationTimeoutTimer;
      self->_locationTimeoutTimer = v9;

      v11 = self->_locationTimeoutTimer;
      v12 = dispatch_time(0, 2500000000);
      dispatch_source_set_timer(v11, v12, 0, 0);
      v13 = self->_locationTimeoutTimer;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __48__SKUINearMeController__startMonitoringLocation__block_invoke;
      v14[3] = &unk_2781F8320;
      objc_copyWeak(&v15, &location);
      dispatch_source_set_event_handler(v13, v14);
      dispatch_resume(self->_locationTimeoutTimer);
      self->_locationTimeoutCount = 0;
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __48__SKUINearMeController__startMonitoringLocation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _monitorLocationTimeout];
}

- (void)_stopMonitoringLocation
{
  if (self->_isMonitoring)
  {
    [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
    self->_isMonitoring = 0;
  }

  locationTimeoutTimer = self->_locationTimeoutTimer;
  if (locationTimeoutTimer)
  {
    dispatch_source_cancel(locationTimeoutTimer);
    v4 = self->_locationTimeoutTimer;
    self->_locationTimeoutTimer = 0;
  }
}

- (void)_monitorLocationTimeout
{
  location = [(CLLocationManager *)self->_locationManager location];
  v9 = location;
  if (location && (IsAccurate = SKUILocationIsAccurate(location), v4 = v9, IsAccurate))
  {
    [(SKUINearMeController *)self _lookupItemsForLocation:v9];
  }

  else
  {
    locationTimeoutCount = self->_locationTimeoutCount;
    self->_locationTimeoutCount = locationTimeoutCount + 1;
    if (locationTimeoutCount > 2)
    {
      [(SKUINearMeController *)self _stopMonitoringLocation];
      [(SKUINearMeController *)self _setItems:MEMORY[0x277CBEBF8] responseDictionary:0 error:0 status:2];
      [(SKUINearMeController *)self _startRefreshTimer];
    }

    else
    {
      locationTimeoutTimer = self->_locationTimeoutTimer;
      v8 = dispatch_time(0, 2500000000);
      dispatch_source_set_timer(locationTimeoutTimer, v8, 0, 0);
    }
  }
}

- (void)_lookupItemsForLocation:(id)location
{
  locationCopy = location;
  [(SKUINearMeController *)self _stopMonitoringLocation];
  [(SKUINearMeController *)self _stopRefreshTimer];
  if (!self->_lookupRequest)
  {
    objc_initWeak(&location, self);
    v5 = [objc_alloc(MEMORY[0x277D69B50]) initWithLocation:locationCopy];
    lookupRequest = self->_lookupRequest;
    self->_lookupRequest = v5;

    [(SSLookupRequest *)self->_lookupRequest setKeyProfile:*MEMORY[0x277D6A2C8]];
    v7 = self->_lookupRequest;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__SKUINearMeController__lookupItemsForLocation___block_invoke;
    v8[3] = &unk_2781FA1A8;
    objc_copyWeak(&v9, &location);
    [(SSLookupRequest *)v7 startWithLookupBlock:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __48__SKUINearMeController__lookupItemsForLocation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v18 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [v4 allItems];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        v12 = [SKUISearchItem alloc];
        v13 = [v11 lookupDictionary];
        v14 = [(SKUISearchItem *)v12 initWithLookupDictionary:v13];

        if (v14)
        {
          [v5 addObject:v14];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SKUINearMeController__lookupItemsForLocation___block_invoke_2;
  block[3] = &unk_2781F81E0;
  objc_copyWeak(&v24, (a1 + 32));
  v21 = v5;
  v22 = v4;
  v23 = v18;
  v15 = v18;
  v16 = v4;
  v17 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v24);
}

void __48__SKUINearMeController__lookupItemsForLocation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _finishLookupWithItems:*(a1 + 32) response:*(a1 + 40) error:*(a1 + 48)];
}

- (void)_finishLookupWithItems:(id)items response:(id)response error:(id)error
{
  errorCopy = error;
  itemsCopy = items;
  responseDictionary = [response responseDictionary];
  [(SKUINearMeController *)self _setItems:itemsCopy responseDictionary:responseDictionary error:errorCopy status:1];

  [(SKUINearMeController *)self _startRefreshTimer];
  lookupRequest = self->_lookupRequest;
  self->_lookupRequest = 0;
}

- (void)_startRefreshTimer
{
  if (!self->_refreshTimer)
  {
    location[5] = v2;
    location[6] = v3;
    objc_initWeak(location, self);
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    refreshTimer = self->_refreshTimer;
    self->_refreshTimer = v5;

    v7 = self->_refreshTimer;
    v8 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(v7, v8, 0, 0);
    v9 = self->_refreshTimer;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__SKUINearMeController__startRefreshTimer__block_invoke;
    v10[3] = &unk_2781F8320;
    objc_copyWeak(&v11, location);
    dispatch_source_set_event_handler(v9, v10);
    dispatch_resume(self->_refreshTimer);
    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }
}

void __42__SKUINearMeController__startRefreshTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refreshTimeout];
}

- (void)_stopRefreshTimer
{
  refreshTimer = self->_refreshTimer;
  if (refreshTimer)
  {
    dispatch_source_cancel(refreshTimer);
    v4 = self->_refreshTimer;
    self->_refreshTimer = 0;
  }
}

- (void)_refreshTimeout
{
  [(SKUINearMeController *)self _stopRefreshTimer];

  [(SKUINearMeController *)self _startMonitoringLocation];
}

- (void)_setItems:(id)items responseDictionary:(id)dictionary error:(id)error status:(int64_t)status
{
  itemsCopy = items;
  dictionaryCopy = dictionary;
  items = self->_items;
  self->_items = itemsCopy;
  v12 = itemsCopy;

  self->_status = status;
  responseDictionary = self->_responseDictionary;
  self->_responseDictionary = dictionaryCopy;
  v14 = dictionaryCopy;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"SKUINearMeItemsDidChangeNotification" object:self];
}

- (void)_disableNearMe
{
  [(SKUINearMeController *)self _stopMonitoringLocation];
  [(SKUINearMeController *)self _stopRefreshTimer];

  [(SKUINearMeController *)self _setItems:0 responseDictionary:0 error:0 status:0];
}

+ (void)sharedController
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUINearMeController sharedController]";
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUINearMeController init]";
}

@end