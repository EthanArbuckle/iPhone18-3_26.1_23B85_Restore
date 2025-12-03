@interface NLSessionActivityDistanceAccumulator
- (NLSessionActivityDistanceAccumulator)initWithBuilder:(id)builder activityType:(id)type;
- (double)distance;
- (void)accumulatorDidStop;
- (void)authorizationStatusDidUpdateWithAuthorizationStatus:(int)status locationManager:(id)manager;
- (void)locationDidFailWithError:(id)error locationManager:(id)manager;
- (void)locationDidUpdateWithLocations:(id)locations locationManager:(id)manager;
- (void)locationManagerStateDidChangeWithState:(int64_t)state locationManager:(id)manager;
- (void)updateDistance:(double)distance distanceEndDate:(id)date;
- (void)updateDistanceWithStatistics:(id)statistics;
@end

@implementation NLSessionActivityDistanceAccumulator

- (NLSessionActivityDistanceAccumulator)initWithBuilder:(id)builder activityType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, builder);
  v18 = 0;
  objc_storeStrong(&v18, type);
  v4 = selfCopy;
  selfCopy = 0;
  v17.receiver = v4;
  v17.super_class = NLSessionActivityDistanceAccumulator;
  v14 = [(NLSessionActivityBuilderAccumulator *)&v17 initWithBuilder:location[0]];
  selfCopy = v14;
  objc_storeStrong(&selfCopy, v14);
  if (v14)
  {
    [v18 effectiveTypeIdentifier];
    v5 = _HKWorkoutDistanceTypeForActivityType();
    expectedDistanceType = selfCopy->_expectedDistanceType;
    selfCopy->_expectedDistanceType = v5;
    MEMORY[0x277D82BD8](expectedDistanceType);
    meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
    meterUnit = selfCopy->_meterUnit;
    selfCopy->_meterUnit = meterUnit;
    MEMORY[0x277D82BD8](meterUnit);
    selfCopy->_trackProximity = 0;
  }

  v15 = 0;
  LOBYTE(v12) = 0;
  if ([v18 supportsTrackRunning])
  {
    workoutConfiguration = [location[0] workoutConfiguration];
    v15 = 1;
    v12 = [workoutConfiguration shouldUseExtendedMode] ^ 1;
  }

  if (v15)
  {
    MEMORY[0x277D82BD8](workoutConfiguration);
  }

  if (v12)
  {
    v11 = +[WOCoreLocationManager sharedManager];
    [(WOCoreLocationManager *)v11 addObserver:selfCopy];
    MEMORY[0x277D82BD8](v11);
  }

  v10 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (void)accumulatorDidStop
{
  v2 = +[WOCoreLocationManager sharedManager];
  [(WOCoreLocationManager *)v2 removeObserver:self];
  MEMORY[0x277D82BD8](v2);
}

- (void)updateDistanceWithStatistics:(id)statistics
{
  v30 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  v14 = +[WOCoreTrackRunningCoordinator shared];
  v15 = 0;
  if ([(WOCoreTrackRunningCoordinator *)v14 trackModeEnabledLocal])
  {
    v15 = selfCopy->_trackProximity == 4;
  }

  MEMORY[0x277D82BD8](v14);
  if (v15)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
    {
      v26 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v25 = 1;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        log = v26;
        type = v25;
        __os_log_helper_16_0_0(v24);
        _os_log_impl(&dword_20AEA4000, log, type, "[trackRunning] updateDistanceWithStatistics discarding statistics update while on a track.", v24, 2u);
      }

      objc_storeStrong(&v26, 0);
    }

    v23 = 1;
  }

  else
  {
    quantityType = [location[0] quantityType];
    if ([quantityType isEqual:selfCopy->_expectedDistanceType])
    {
      sumQuantity = [location[0] sumQuantity];
      meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
      [sumQuantity doubleValueForUnit:?];
      v10 = v3;
      MEMORY[0x277D82BD8](meterUnit);
      MEMORY[0x277D82BD8](sumQuantity);
      v21 = v10;
      mostRecentQuantityDateInterval = [location[0] mostRecentQuantityDateInterval];
      endDate = [mostRecentQuantityDateInterval endDate];
      MEMORY[0x277D82BD8](mostRecentQuantityDateInterval);
      if (!endDate)
      {
        _HKInitializeLogging();
        v19 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
        v18 = 16;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v6 = v19;
          v7 = v18;
          __os_log_helper_16_0_0(v17);
          _os_log_error_impl(&dword_20AEA4000, v6, v7, "Distance statistics most recent quantity end date is nil, defaulting to now", v17, 2u);
        }

        objc_storeStrong(&v19, 0);
        date = [MEMORY[0x277CBEAA8] date];
        v5 = endDate;
        endDate = date;
        MEMORY[0x277D82BD8](v5);
      }

      [(NLSessionActivityDistanceAccumulator *)selfCopy updateDistance:endDate distanceEndDate:v21];
      objc_storeStrong(&endDate, 0);
    }

    else
    {
      _HKInitializeLogging();
      oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_64_8_64(v29, quantityType, selfCopy->_expectedDistanceType);
        _os_log_error_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_ERROR, "Received distance quantity type %@, expected %@", v29, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
    }

    [(NLSessionActivityBuilderAccumulator *)selfCopy update];
    objc_storeStrong(&quantityType, 0);
    v23 = 0;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (double)distance
{
  if (!+[NLSessionActivityFakeDataManager shouldShowFakeData])
  {
    return self->_distance;
  }

  +[NLSessionActivityFakeDataManager fakeValueForDistance];
  return v2;
}

- (void)authorizationStatusDidUpdateWithAuthorizationStatus:(int)status locationManager:(id)manager
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7 = a2;
  statusCopy = status;
  location = 0;
  objc_storeStrong(&location, manager);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_4_0(v9, statusCopy);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[trackRunning] LocationManager authorization status changed to: %d", v9, 8u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)locationDidFailWithError:(id)error locationManager:(id)manager
{
  v14 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v11 = 0;
  objc_storeStrong(&v11, manager);
  _HKInitializeLogging();
  v10 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v9 = 16;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    log = v10;
    type = v9;
    v6 = [location[0] description];
    v8 = MEMORY[0x277D82BE0](v6);
    __os_log_helper_16_2_1_8_64(v13, v8);
    _os_log_error_impl(&dword_20AEA4000, log, type, "[trackRunning] LocationManager locationDidFail error: %@", v13, 0xCu);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)locationDidUpdateWithLocations:(id)locations locationManager:(id)manager
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, locations);
  v19 = 0;
  objc_storeStrong(&v19, manager);
  v8 = +[WOCoreTrackRunningCoordinator shared];
  trackModeEnabledLocal = [(WOCoreTrackRunningCoordinator *)v8 trackModeEnabledLocal];
  MEMORY[0x277D82BD8](v8);
  if (trackModeEnabledLocal)
  {
    lastObject = [location[0] lastObject];
    if (lastObject)
    {
      v5 = MEMORY[0x277D85CD0];
      v4 = MEMORY[0x277D85CD0];
      queue = v5;
      v10 = MEMORY[0x277D85DD0];
      v11 = -1073741824;
      v12 = 0;
      v13 = __87__NLSessionActivityDistanceAccumulator_locationDidUpdateWithLocations_locationManager___block_invoke;
      v14 = &unk_277D88998;
      v15 = MEMORY[0x277D82BE0](lastObject);
      v16 = MEMORY[0x277D82BE0](selfCopy);
      dispatch_async(queue, &v10);
      MEMORY[0x277D82BD8](queue);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v15, 0);
      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    objc_storeStrong(&lastObject, 0);
  }

  else
  {
    v18 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

uint64_t __87__NLSessionActivityDistanceAccumulator_locationDidUpdateWithLocations_locationManager___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = a1;
  v16 = a1;
  v6 = [*(a1 + 32) trackRunInfo];
  v7 = [v6 trackProximity];
  MEMORY[0x277D82BD8](v6);
  v15 = v7;
  v9 = [*(a1 + 32) trackRunInfo];
  if (v9)
  {
    [v9 lapInfo];
  }

  else
  {
    memset(&oslog[1], 0, 0x50uLL);
  }

  v5 = oslog[10];
  result = MEMORY[0x277D82BD8](v9);
  v14 = v5;
  if (*(*(a1 + 40) + 56) != v15)
  {
    *(*(a1 + 40) + 56) = v15;
    if (v15 == 4)
    {
      *(*(a1 + 40) + 48) = *(*(a1 + 40) + 64) - *&v14;
    }
  }

  if (v15 == 4)
  {
    if (*&v14 == 0.0 && *(*(a1 + 40) + 64) > 0.0)
    {
      _HKInitializeLogging();
      oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_2_8_0_8_0(v19, v14, *(*(a1 + 40) + 64));
        _os_log_impl(&dword_20AEA4000, oslog[0], type, "[trackRunning] Received a CL based distance update to %f when we were at %f, potentially recovering from a healthd crash.", v19, 0x16u);
      }

      objc_storeStrong(oslog, 0);
      *(*(a1 + 40) + 48) = *(*(a1 + 40) + 64);
    }

    *&v11 = *&v14 + *(*(a1 + 40) + 48);
    if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
    {
      _HKInitializeLogging();
      v10 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v18, v11);
        _os_log_impl(&dword_20AEA4000, v10, OS_LOG_TYPE_DEFAULT, "[trackRunning] Received a CL based distance update to %f", v18, 0xCu);
      }

      objc_storeStrong(&v10, 0);
    }

    v4 = [*(a1 + 32) timestamp];
    [v3 updateDistance:v2 distanceEndDate:?];
    MEMORY[0x277D82BD8](v4);
    result = [*(a1 + 40) update];
  }

  *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateDistance:(double)distance distanceEndDate:(id)date
{
  v24 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v19 = a2;
  *&v18 = distance;
  location = 0;
  objc_storeStrong(&location, date);
  _HKInitializeLogging();
  v16 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_0_8_64(v23, v18, location);
    _os_log_impl(&dword_20AEA4000, v16, v15, "Received distance update distance: (%f) distanceEndDate: (%@).", v23, 0x16u);
  }

  objc_storeStrong(&v16, 0);
  if (*(selfCopy + 8) <= *&v18)
  {
    distanceEndDate = [selfCopy distanceEndDate];
    v10 = 0;
    v8 = 0;
    if (distanceEndDate)
    {
      v6 = location;
      distanceEndDate2 = [selfCopy distanceEndDate];
      v10 = 1;
      v8 = [v6 hk_isBeforeDate:?];
    }

    if (v10)
    {
      MEMORY[0x277D82BD8](distanceEndDate2);
    }

    MEMORY[0x277D82BD8](distanceEndDate);
    if (v8)
    {
      _HKInitializeLogging();
      v9 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v4 = location;
        distanceEndDate3 = [selfCopy distanceEndDate];
        __os_log_helper_16_2_2_8_64_8_64(v21, v4, distanceEndDate3);
        _os_log_error_impl(&dword_20AEA4000, v9, OS_LOG_TYPE_ERROR, "Received distance update with distanceEndDate=%@ before existing distanceEndDate=%@, not updating", v21, 0x16u);
        MEMORY[0x277D82BD8](distanceEndDate3);
      }

      objc_storeStrong(&v9, 0);
      v12 = 1;
    }

    else
    {
      [selfCopy setDistance:*&v18];
      [selfCopy setDistanceEndDate:location];
      v12 = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_2_8_0_8_0(v22, v18, selfCopy[8]);
      _os_log_impl(&dword_20AEA4000, oslog, v13, "Received distance update (%f) less than known total distance (%f), catching up.", v22, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    v12 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)locationManagerStateDidChangeWithState:(int64_t)state locationManager:(id)manager
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7 = a2;
  stateCopy = state;
  location = 0;
  objc_storeStrong(&location, manager);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v9, stateCopy);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[trackRunning] LocationManager state changed to: %ld", v9, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

@end