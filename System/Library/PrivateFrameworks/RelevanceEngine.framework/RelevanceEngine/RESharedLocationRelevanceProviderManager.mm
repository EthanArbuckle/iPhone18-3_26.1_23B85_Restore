@interface RESharedLocationRelevanceProviderManager
- (void)_queue_loadLocation:(id)a3;
- (void)locationManagerDidUpdateLocation:(id)a3;
- (void)pause;
- (void)resume;
@end

@implementation RESharedLocationRelevanceProviderManager

- (void)_queue_loadLocation:(id)a3
{
  objc_storeStrong(&self->_lastLocationUpdate, a3);
  v5 = a3;
  v6 = +[RERelevanceProviderManagerUpdate immediateUpdateForAllProviders];

  [(RERelevanceProviderManager *)self _scheduleUpdate:v6];
}

- (void)resume
{
  v3 = [(RERelevanceProviderManager *)self environment];
  v4 = [v3 relevanceEngine];
  v6 = [v4 locationManager];

  [v6 addObserver:self];
  v5 = [v6 currentLocation];
  [(RESharedLocationRelevanceProviderManager *)self _queue_loadLocation:v5];
}

- (void)pause
{
  v5 = [(RERelevanceProviderManager *)self environment];
  v3 = [v5 relevanceEngine];
  v4 = [v3 locationManager];
  [v4 removeObserver:self];
}

- (void)locationManagerDidUpdateLocation:(id)a3
{
  v4 = a3;
  v5 = [(RERelevanceProviderManager *)self _manager_queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__RESharedLocationRelevanceProviderManager_locationManagerDidUpdateLocation___block_invoke;
  v7[3] = &unk_2785F9AE0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __77__RESharedLocationRelevanceProviderManager_locationManagerDidUpdateLocation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) currentLocation];
  [v1 _queue_loadLocation:v2];
}

@end