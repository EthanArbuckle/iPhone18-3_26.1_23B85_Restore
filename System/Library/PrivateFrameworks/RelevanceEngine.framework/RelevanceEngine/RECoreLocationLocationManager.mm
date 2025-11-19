@interface RECoreLocationLocationManager
@end

@implementation RECoreLocationLocationManager

void __62___RECoreLocationLocationManager_initWithEffectiveBundlePath___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_alloc(MEMORY[0x277CBFC10]);
    v3 = [v2 initWithEffectiveBundlePath:*(a1 + 32) delegate:*(a1 + 40) onQueue:MEMORY[0x277D85CD0]];
    v4 = *(a1 + 40);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;
  }

  else
  {
    v6 = [MEMORY[0x277CBFC10] sharedManager];
    v7 = *(a1 + 40);
    v8 = *(v7 + 56);
    *(v7 + 56) = v6;

    [*(*(a1 + 40) + 56) setDelegate:?];
  }

  v9 = *(*(a1 + 40) + 64);

  dispatch_resume(v9);
}

void __41___RECoreLocationLocationManager_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void __66___RECoreLocationLocationManager_startLocationUpdatesWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = RELogForDomain(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_22859F000, v5, OS_LOG_TYPE_DEFAULT, "startLocationUpdates", v7, 2u);
  }

  [*(*(a1 + 32) + 56) _startMonitoringSignificantLocationChangesOfDistance:1 withPowerBudget:1000.0];
  v6 = [*(a1 + 32) currentLocation];

  if (!v6)
  {
    [*(*(a1 + 32) + 56) requestLocation];
  }
}

void __66___RECoreLocationLocationManager_startLocationUpdatesWithHandler___block_invoke_33(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) currentLocation];
  (*(v1 + 16))(v1, v2, 0);
}

uint64_t __53___RECoreLocationLocationManager_stopLocationUpdates__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = RELogForDomain(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22859F000, v4, OS_LOG_TYPE_DEFAULT, "stopLocationUpdates", v6, 2u);
  }

  [*(*(a1 + 32) + 56) stopMonitoringSignificantLocationChanges];
  return [*(*(a1 + 32) + 56) stopUpdatingLocation];
}

uint64_t __63___RECoreLocationLocationManager_startVisitUpdatesWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  v5 = RELogForDomain(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_22859F000, v5, OS_LOG_TYPE_DEFAULT, "startVisitUpdates", v7, 2u);
  }

  return [*(*(a1 + 32) + 56) startMonitoringVisits];
}

uint64_t __50___RECoreLocationLocationManager_stopVisitUpdates__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = RELogForDomain(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22859F000, v4, OS_LOG_TYPE_DEFAULT, "stopVisitUpdates", v6, 2u);
  }

  return [*(*(a1 + 32) + 56) stopMonitoringVisits];
}

void __66___RECoreLocationLocationManager_fetchPlaceInferencesWithHandler___block_invoke(uint64_t a1)
{
  v2 = RELogForDomain(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22859F000, v2, OS_LOG_TYPE_DEFAULT, "fetchPlaceInferencesWithHandler", buf, 2u);
  }

  v3 = *(*(a1 + 32) + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66___RECoreLocationLocationManager_fetchPlaceInferencesWithHandler___block_invoke_34;
  v4[3] = &unk_2785FA128;
  v5 = *(a1 + 40);
  [v3 _fetchPlaceInferencesWithFidelityPolicy:6 handler:v4];
}

void __69___RECoreLocationLocationManager_locationManager_didUpdateLocations___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) lastObject];
  v2 = [*(a1 + 40) currentLocation];
  v3 = v2;
  if (v2 && ([v2 distanceFromLocation:v5], v4 < 0.01))
  {
    [*(a1 + 40) _updateLocation:v5];
  }

  else
  {
    [*(a1 + 40) _updateLocation:v5];
    [*(a1 + 40) _notifyUpdateHandlersWithError:0];
  }
}

uint64_t __59___RECoreLocationLocationManager_locationManager_didVisit___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateVisit:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _notifyVisitUpdateHandlersWithVisit:v3];
}

uint64_t __67___RECoreLocationLocationManager_locationManager_didFailWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) code];
  v3 = *(a1 + 40);
  if (v2 == 1)
  {
    [v3 _updateLocation:0];
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v4 _notifyUpdateHandlersWithError:v5];
  }

  else
  {

    return [v3 _assessLocationAfterUnavailableFailure];
  }
}

uint64_t __65___RECoreLocationLocationManager__notifyUpdateHandlersWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentLocation];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 40);
    v6 = v2;
    v3 = (*(v3 + 16))();
    v2 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v2);
}

void __70___RECoreLocationLocationManager__notifyVisitUpdateHandlersWithVisit___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentVisit];
  if (*(a1 + 40))
  {
    v5 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v4 = WeakRetained[7];
    (*(*(a1 + 40) + 16))();

    v2 = v5;
  }
}

@end