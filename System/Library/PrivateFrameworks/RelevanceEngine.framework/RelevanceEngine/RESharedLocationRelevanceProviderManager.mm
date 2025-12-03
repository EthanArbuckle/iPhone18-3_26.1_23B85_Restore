@interface RESharedLocationRelevanceProviderManager
- (void)_queue_loadLocation:(id)location;
- (void)locationManagerDidUpdateLocation:(id)location;
- (void)pause;
- (void)resume;
@end

@implementation RESharedLocationRelevanceProviderManager

- (void)_queue_loadLocation:(id)location
{
  objc_storeStrong(&self->_lastLocationUpdate, location);
  locationCopy = location;
  v6 = +[RERelevanceProviderManagerUpdate immediateUpdateForAllProviders];

  [(RERelevanceProviderManager *)self _scheduleUpdate:v6];
}

- (void)resume
{
  environment = [(RERelevanceProviderManager *)self environment];
  relevanceEngine = [environment relevanceEngine];
  locationManager = [relevanceEngine locationManager];

  [locationManager addObserver:self];
  currentLocation = [locationManager currentLocation];
  [(RESharedLocationRelevanceProviderManager *)self _queue_loadLocation:currentLocation];
}

- (void)pause
{
  environment = [(RERelevanceProviderManager *)self environment];
  relevanceEngine = [environment relevanceEngine];
  locationManager = [relevanceEngine locationManager];
  [locationManager removeObserver:self];
}

- (void)locationManagerDidUpdateLocation:(id)location
{
  locationCopy = location;
  _manager_queue = [(RERelevanceProviderManager *)self _manager_queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__RESharedLocationRelevanceProviderManager_locationManagerDidUpdateLocation___block_invoke;
  v7[3] = &unk_2785F9AE0;
  v7[4] = self;
  v8 = locationCopy;
  v6 = locationCopy;
  dispatch_async(_manager_queue, v7);
}

void __77__RESharedLocationRelevanceProviderManager_locationManagerDidUpdateLocation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) currentLocation];
  [v1 _queue_loadLocation:v2];
}

@end