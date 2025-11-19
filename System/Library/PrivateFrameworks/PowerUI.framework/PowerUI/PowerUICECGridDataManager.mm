@interface PowerUICECGridDataManager
+ (PowerUICECGridDataManager)sharedInstance;
+ (id)cleanIntervalsStringFromDates:(id)a3 withIntervalDuration:(double)a4;
- (BOOL)enoughVariationForForecast:(id)a3 withMinDifference:(double)a4;
- (BOOL)shouldChargeNow;
- (BOOL)shouldEngageForPluggedInTime:(double)a3;
- (BOOL)time:(id)a3 isWithinIntervalWithStart:(id)a4;
- (PowerUICECGridDataManager)init;
- (double)averageEmissionsOverForecastHorizon:(double)a3;
- (double)timeToNextCleanInterval;
- (id)balancingAuthorityName;
- (id)downsampleGridData:(id)a3 fromRes:(unint64_t)a4 toRes:(unint64_t)a5;
- (id)fetchForecast;
- (id)forecastFromDefaults;
- (id)intervalStartTimesOverForecastHorizon:(double)a3;
- (id)lastIntervalStartTimeOverForecastHorizon:(double)a3;
- (id)startTimeCurrentIntervalWithinForecastHorizon:(double)a3;
- (id)storedForecastForDemoAnalyticsWithForecastHorizon:(double)a3;
- (id)valuesFromForecast:(id)a3 forInterval:(double)a4;
- (int64_t)emissionsForTime:(id)a3 overForecastHorizon:(double)a4;
- (unint64_t)thresholdFromForecast:(id)a3 forChargeTime:(double)a4;
- (void)recordForecastInDefaults:(id)a3;
- (void)resetState;
- (void)setupChargingTime:(double)a3 forPluggedInTime:(double)a4;
- (void)setupDemoChargingTimeOverForecastHorizon:(double)a3 withKChargingSegments:(int64_t)a4;
@end

@implementation PowerUICECGridDataManager

+ (PowerUICECGridDataManager)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PowerUICECGridDataManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_8 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_8, block);
  }

  v2 = sharedInstance_sharedInstance_1;

  return v2;
}

uint64_t __43__PowerUICECGridDataManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance_1 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (PowerUICECGridDataManager)init
{
  v49 = *MEMORY[0x277D85DE8];
  v45.receiver = self;
  v45.super_class = PowerUICECGridDataManager;
  v2 = [(PowerUICECGridDataManager *)&v45 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.powerui.cec", "GridDataManager");
    v4 = *(v2 + 4);
    *(v2 + 4) = v3;

    v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.powerui.cec"];
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.powerui.cecgriddatamanager.queue", v7);
    v9 = *(v2 + 3);
    *(v2 + 3) = v8;

    v10 = [MEMORY[0x277D0EEB0] managerWithID:@"com.apple.PowerUIAgent.gridManager" locationBundlePath:@"/System/Library/LocationBundles/SystemCustomization.bundle"];
    v11 = *(v2 + 10);
    *(v2 + 10) = v10;

    *(v2 + 5) = 0x40CC200000000000;
    v12 = +[PowerUICECUtilities isDemoDevice];
    v14 = (v2 + 56);
    v13 = *(v2 + 7);
    v2[10] = v12;
    v15 = 900.0;
    if (v12)
    {
      v15 = 3600.0;
    }

    *(v2 + 6) = v15;
    *v14 = 0;

    *(v2 + 8) = 0;
    v16 = [*(v2 + 2) objectForKey:@"cleanIntervals"];
    v17 = v16;
    if (v16)
    {
      v40 = v16;
      v18 = [v16 mutableCopy];
      v19 = *(v2 + 11);
      *(v2 + 11) = v18;

      v20 = *(v2 + 4);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_DEFAULT, "Loaded cleaner intervals:", buf, 2u);
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v21 = *(v2 + 11);
      v22 = [v21 countByEnumeratingWithState:&v41 objects:v48 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v42;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v42 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(v2 + 4);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = *(*(&v41 + 1) + 8 * i);
              v28 = MEMORY[0x277CCA968];
              v29 = v26;
              v30 = [v28 localizedStringFromDate:v27 dateStyle:0 timeStyle:1];
              *buf = 138412290;
              v47 = v30;
              _os_log_impl(&dword_21B766000, v29, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v41 objects:v48 count:16];
        }

        while (v23);
      }

      v14 = (v2 + 56);
      v17 = v40;
    }

    v31 = [*(v2 + 2) objectForKey:@"testSavingOpportunity"];
    v32 = v31;
    if (v31)
    {
      v2[8] = [v31 BOOLValue];
    }

    v33 = [*(v2 + 2) objectForKey:@"testChargeNow"];

    if (v33)
    {
      v2[9] = [v33 BOOLValue];
    }

    v34 = [*(v2 + 2) objectForKey:@"intervalDuration"];

    if (v34)
    {
      [v34 doubleValue];
      *(v2 + 6) = v35;
    }

    v36 = [*(v2 + 2) objectForKey:@"forecastFetchDate"];
    if (v36)
    {
      objc_storeStrong(v14, v36);
    }

    v37 = [*(v2 + 2) objectForKey:@"engagementDecisionReason"];

    if (v37)
    {
      *(v2 + 8) = [v37 unsignedIntValue];
    }
  }

  v38 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)shouldEngageForPluggedInTime:(double)a3
{
  if (+[PowerUISmartChargeUtilities isInternalBuild])
  {
    v5 = [(NSUserDefaults *)self->_defaults objectForKey:@"testSavingOpportunity"];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 BOOLValue];
      self->_tSavingOpportunity = v7;
      if (v7)
      {
LABEL_4:
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "TestMode: Saving Mode set", buf, 2u);
        }

        self->_engagementDecisionReason = 6;
        [(NSUserDefaults *)self->_defaults setInteger:6 forKey:@"engagementDecisionReason"];

        v9 = 1;
        return v9 & 1;
      }
    }

    else if (self->_tSavingOpportunity)
    {
      goto LABEL_4;
    }
  }

  if (a3 >= 3600.0)
  {
    *buf = 0;
    v15 = buf;
    v16 = 0x2020000000;
    v17 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__PowerUICECGridDataManager_shouldEngageForPluggedInTime___block_invoke;
    block[3] = &unk_2782D4A68;
    block[4] = self;
    block[5] = buf;
    *&block[6] = a3;
    dispatch_sync(queue, block);
    [(NSUserDefaults *)self->_defaults setInteger:self->_engagementDecisionReason forKey:@"engagementDecisionReason"];
    v9 = v15[24];
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = self->_log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "Predicted pluggedIn time is short. Not engaging", buf, 2u);
    }

    self->_engagementDecisionReason = 4;
    [(NSUserDefaults *)self->_defaults setInteger:4 forKey:@"engagementDecisionReason"];
    v9 = 0;
  }

  return v9 & 1;
}

void __58__PowerUICECGridDataManager_shouldEngageForPluggedInTime___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 72);
    v4 = v2;
    v5 = [v3 fetchDate];
    v27 = 138412290;
    v28 = v5;
    _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "Current forecast fetch date %@", &v27, 0xCu);
  }

  v6 = [*(*(a1 + 32) + 72) fetchDate];
  [v6 timeIntervalSinceNow];
  v7 = *(a1 + 32);
  if (v8 >= -*(v7 + 40))
  {
    v9 = *(v7 + 72);

    if (v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v10 = [*(a1 + 32) fetchForecast];
LABEL_7:
  v11 = *(a1 + 32);
  if (v11[9])
  {
    v12 = [v11 valuesFromForecast:*(a1 + 48) forInterval:?];
    v13 = [v12 count];
    v14 = *(*(a1 + 32) + 32);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13 > 1)
    {
      if (v15)
      {
        v27 = 138412290;
        v28 = v12;
        _os_log_impl(&dword_21B766000, v14, OS_LOG_TYPE_DEFAULT, "Relevant forecast is  %@", &v27, 0xCu);
      }

      v22 = *(a1 + 32);
      v23 = 75.0;
      if (v22[10])
      {
        v23 = 50.0;
      }

      v24 = [v22 enoughVariationForForecast:v12 withMinDifference:v23];
      v20 = *(a1 + 32);
      if (v24)
      {
        v19 = 1;
        v18 = 5;
        goto LABEL_22;
      }

      v26 = *(v20 + 32);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        v18 = 2;
        _os_log_impl(&dword_21B766000, v26, OS_LOG_TYPE_DEFAULT, "Not enough variation in forecast. Not engaging", &v27, 2u);
      }

      else
      {
        v18 = 2;
      }
    }

    else
    {
      if (v15)
      {
        v16 = v14;
        v17 = [v12 count];
        v27 = 134217984;
        v28 = v17;
        _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "Forecast had insufficient number of entries. Requires at least two distinct entries, but got %lu.", &v27, 0xCu);
      }

      v18 = 3;
    }

    v19 = 0;
    v20 = *(a1 + 32);
LABEL_22:
    *(v20 + 64) = v18;
    *(*(*(a1 + 40) + 8) + 24) = v19;

    goto LABEL_23;
  }

  v21 = v11[4];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&dword_21B766000, v21, OS_LOG_TYPE_DEFAULT, "Empty forecast. Not engaging.", &v27, 2u);
  }

  *(*(a1 + 32) + 64) = 1;
  *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_23:
  v25 = *MEMORY[0x277D85DE8];
}

+ (id)cleanIntervalsStringFromDates:(id)a3 withIntervalDuration:(double)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v6 objectAtIndexedSubscript:0];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = v6;
    obj = v6;
    v32 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v32)
    {
      v9 = 0;
      v10 = 0;
      v30 = *v34;
      v11 = 0x277CCA000uLL;
      do
      {
        v12 = 0;
        v29 = v9;
        v13 = v9 + 1;
        v14 = v8;
        do
        {
          if (*v34 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v33 + 1) + 8 * v12);
          [v15 timeIntervalSinceDate:v14];
          if (v16 > a4 || v13 == [obj count])
          {
            v17 = [MEMORY[0x277CCA968] localizedStringFromDate:v7 dateStyle:0 timeStyle:1];
            v18 = MEMORY[0x277CCA968];
            v19 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v14 sinceDate:a4];
            v20 = [v18 localizedStringFromDate:v19 dateStyle:0 timeStyle:1];

            v21 = [*(v11 + 3240) stringWithFormat:@"%@-%@", v17, v20];
            v22 = v21;
            if (v10)
            {
              v23 = [*(v11 + 3240) stringWithFormat:@"%@, %@", v10, v21];

              v10 = v23;
            }

            else
            {
              v10 = v21;
            }

            v24 = v15;

            v7 = v24;
            v11 = 0x277CCA000;
          }

          v8 = v15;

          ++v12;
          ++v13;
          v14 = v8;
        }

        while (v32 != v12);
        v9 = v32 + v29;
        v32 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v32);
    }

    else
    {
      v10 = 0;
    }

    v25 = v10;
    v6 = v28;
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (BOOL)enoughVariationForForecast:(id)a3 withMinDifference:(double)a4
{
  v34[1] = *MEMORY[0x277D85DE8];
  v6 = [a3 mutableCopy];
  v7 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"forecastValue" ascending:1];
  v34[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  [v6 sortUsingDescriptors:v8];

  v9 = [v6 firstObject];
  v10 = [v9 forecastValue];
  [v10 doubleValue];
  v12 = v11;
  v13 = [v6 lastObject];
  v14 = [v13 forecastValue];
  [v14 doubleValue];
  v16 = vabdd_f64(v12, v15);

  if (v16 < a4)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v18 = log;
      v19 = [v6 firstObject];
      v20 = [v19 forecastValue];
      [v20 doubleValue];
      v22 = v21;
      v23 = [v6 lastObject];
      v24 = [v23 forecastValue];
      [v24 doubleValue];
      v28 = 134218496;
      v29 = v22;
      v30 = 2048;
      v31 = v25;
      v32 = 2048;
      v33 = a4;
      _os_log_impl(&dword_21B766000, v18, OS_LOG_TYPE_DEFAULT, "Not enough variation in forecast values (%.0f - %.0f). Required variation = %.0f", &v28, 0x20u);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v16 >= a4;
}

- (void)setupDemoChargingTimeOverForecastHorizon:(double)a3 withKChargingSegments:(int64_t)a4
{
  v6 = self;
  v57 = *MEMORY[0x277D85DE8];
  v7 = [(_GDSEmissionForecast *)self->_currentForecast fetchDate];
  [v7 timeIntervalSinceNow];
  if (v8 >= -v6->_refetchPeriod)
  {
    currentForecast = v6->_currentForecast;

    if (currentForecast)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  v10 = [(PowerUICECGridDataManager *)v6 fetchForecast];
LABEL_5:
  v11 = v6->_currentForecast;
  log = v6->_log;
  v13 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      *buf = 134218240;
      v54 = a4;
      v55 = 2048;
      v56 = a3 / 3600.0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Figuring out cleanest %.2ld hours from %.02lf hours", buf, 0x16u);
    }

    v14 = [(PowerUICECGridDataManager *)v6 valuesFromForecast:v6->_currentForecast forInterval:a3];
    if ([v14 count] > 1)
    {
      v18 = [(PowerUICECGridDataManager *)v6 downsampleGridData:v14 fromRes:15 toRes:60];

      v19 = v6->_log;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v54 = v18;
        _os_log_impl(&dword_21B766000, v19, OS_LOG_TYPE_DEFAULT, "Demo CEC will use the following resampled forecast: %@", buf, 0xCu);
      }

      v44 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"forecastValue" ascending:1];
      v52 = v44;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
      v45 = v18;
      v21 = [v18 sortedArrayUsingDescriptors:v20];

      v22 = [v21 count];
      if (v22 >= a4)
      {
        v23 = a4;
      }

      else
      {
        v23 = v22;
      }

      v43 = v21;
      v24 = [v21 subarrayWithRange:{0, v23}];
      v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v26 = v6->_log;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v54 = a4;
        _os_log_impl(&dword_21B766000, v26, OS_LOG_TYPE_DEFAULT, "Cleanest %ld intervals:", buf, 0xCu);
      }

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = v24;
      v27 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v48;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v48 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v47 + 1) + 8 * i);
            v32 = v6->_log;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = v6;
              v34 = MEMORY[0x277CCA968];
              v35 = v32;
              v36 = [v31 forecastDate];
              v37 = [v34 localizedStringFromDate:v36 dateStyle:0 timeStyle:1];
              v38 = [v31 forecastValue];
              *buf = 138412546;
              v54 = v37;
              v55 = 2112;
              v56 = *&v38;
              _os_log_impl(&dword_21B766000, v35, OS_LOG_TYPE_DEFAULT, "%@: (%@ g/kWh CO2e)", buf, 0x16u);

              v6 = v33;
            }

            v39 = [v31 forecastDate];
            [v25 addObject:v39];
          }

          v28 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
        }

        while (v28);
      }

      v40 = [v25 copy];
      cleanIntervals = v6->_cleanIntervals;
      v6->_cleanIntervals = v40;

      v6->_intervalDuration = 3600.0;
      [(NSUserDefaults *)v6->_defaults setObject:v6->_cleanIntervals forKey:@"cleanIntervals"];
      [(NSUserDefaults *)v6->_defaults setDouble:@"intervalDuration" forKey:v6->_intervalDuration];
      v14 = v45;
      [(PowerUICECGridDataManager *)v6 recordForecastInDefaults:v45];
    }

    else
    {
      v15 = v6->_log;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = [v14 count];
        *buf = 134217984;
        v54 = v17;
        _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "Forecast had insufficient number of entries. Requires at least two distinct entries, but got %lu.", buf, 0xCu);
      }
    }
  }

  else if (v13)
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "No forecast available. Skipping", buf, 2u);
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)setupChargingTime:(double)a3 forPluggedInTime:(double)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v7 = [(_GDSEmissionForecast *)self->_currentForecast fetchDate];
  [v7 timeIntervalSinceNow];
  if (v8 < -self->_refetchPeriod)
  {

LABEL_4:
    v10 = [(PowerUICECGridDataManager *)self fetchForecast];
    goto LABEL_5;
  }

  currentForecast = self->_currentForecast;

  if (!currentForecast)
  {
    goto LABEL_4;
  }

LABEL_5:
  if (!self->_currentForecast)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "No forecast available. Skipping", buf, 2u);
    }
  }

  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v68 = a3 / 60.0;
    v69 = 2048;
    v70 = a4 / 60.0;
    _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_DEFAULT, "Figuring out cleanest %.02lf mins from %.02lf mins", buf, 0x16u);
  }

  v13 = [(PowerUICECGridDataManager *)self valuesFromForecast:self->_currentForecast forInterval:a4];
  v50 = self;
  v14 = [(PowerUICECGridDataManager *)self thresholdFromForecast:v13 forChargeTime:a3];
  v15 = [MEMORY[0x277CBEB18] array];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v16 = v13;
  v17 = [v16 countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v60;
    v20 = v14;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v60 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v59 + 1) + 8 * i);
        v23 = [v22 forecastValue];
        [v23 doubleValue];
        v25 = v24;

        if (v25 <= v20)
        {
          [v15 addObject:v22];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v18);
  }

  v49 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"forecastValue" ascending:1];
  v65 = v49;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
  [v15 sortUsingDescriptors:v26];

  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v28 = v15;
  v29 = [v28 countByEnumeratingWithState:&v55 objects:v64 count:16];
  v30 = v50;
  if (v29)
  {
    v31 = v29;
    v32 = *v56;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v56 != v32)
        {
          objc_enumerationMutation(v28);
        }

        v34 = [*(*(&v55 + 1) + 8 * j) forecastDate];
        [v27 addObject:v34];
      }

      v31 = [v28 countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v31);
  }

  v48 = v28;

  objc_storeStrong(&v50->_cleanIntervals, v27);
  v35 = v50->_log;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, v35, OS_LOG_TYPE_DEFAULT, "Cleaner intervals:", buf, 2u);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v36 = v50->_cleanIntervals;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v52;
    do
    {
      for (k = 0; k != v38; ++k)
      {
        if (*v52 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = v30->_log;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = *(*(&v51 + 1) + 8 * k);
          v43 = MEMORY[0x277CCA968];
          v44 = v41;
          v45 = v42;
          v30 = v50;
          [v43 localizedStringFromDate:v45 dateStyle:0 timeStyle:1];
          v46 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412290;
          v68 = v46;
          _os_log_impl(&dword_21B766000, v44, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }
      }

      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v38);
  }

  [(NSUserDefaults *)v30->_defaults setObject:v30->_cleanIntervals forKey:@"cleanIntervals"];
  v47 = *MEMORY[0x277D85DE8];
}

- (unint64_t)thresholdFromForecast:(id)a3 forChargeTime:(double)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 count])
    {
      v8 = [v7 mutableCopy];
      v9 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"forecastValue" ascending:1];
      v17[0] = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
      [v8 sortUsingDescriptors:v10];

      v11 = (a4 / 900.0) + 1;
      if (v11 >= [v8 count])
      {
        v11 = [v8 count] - 1;
      }

      v12 = [v8 objectAtIndex:v11];
      v13 = [v12 forecastValue];
      v14 = [v13 unsignedIntegerValue];

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        [PowerUICECGridDataManager thresholdFromForecast:forChargeTime:];
      }
    }

    else
    {
      v14 = 99999;
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [PowerUICECGridDataManager thresholdFromForecast:forChargeTime:];
      }
    }
  }

  else
  {
    v14 = 99999;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUICECGridDataManager thresholdFromForecast:forChargeTime:];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)shouldChargeNow
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Evaluating shouldChargeNow", buf, 2u);
  }

  if (+[PowerUISmartChargeUtilities isInternalBuild]&& self->_tChargeNow)
  {
    v4 = self->_log;
    v5 = 0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "TestMode: Charge Now set", buf, 2u);
      v5 = 0;
    }
  }

  else
  {
    *buf = 0;
    v10 = buf;
    v11 = 0x2020000000;
    v12 = 1;
    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__PowerUICECGridDataManager_shouldChargeNow__block_invoke;
    v8[3] = &unk_2782D4A90;
    v8[4] = self;
    v8[5] = buf;
    dispatch_sync(queue, v8);
    v5 = v10[24];
    _Block_object_dispose(buf, 8);
  }

  return v5 & 1;
}

void __44__PowerUICECGridDataManager_shouldChargeNow__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 88) count])
  {
    v2 = [MEMORY[0x277CBEAA8] now];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = *(*(a1 + 32) + 88);
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          [v8 timeIntervalSinceNow];
          if (v9 < 0.0)
          {
            v10 = *(a1 + 32);
            if (v9 > -*(v10 + 48))
            {
              v13 = *(v10 + 32);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v20 = v2;
                v21 = 2112;
                v22 = v8;
                _os_log_impl(&dword_21B766000, v13, OS_LOG_TYPE_DEFAULT, "Current time (%@) within clean window starting at %@", buf, 0x16u);
              }

              *(*(*(a1 + 40) + 8) + 24) = 1;

              goto LABEL_20;
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v11 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(a1 + 32) + 88);
      *buf = 138412546;
      v20 = v2;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_21B766000, v11, OS_LOG_TYPE_DEFAULT, "Current time NOT in clean window intervals (current time: %@, clean intervals: %@)", buf, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_20:
  }

  else
  {
    if (os_log_type_enabled(*(*(a1 + 32) + 32), OS_LOG_TYPE_ERROR))
    {
      __44__PowerUICECGridDataManager_shouldChargeNow__block_invoke_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)fetchForecast
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(_GDSManager *)self->_gridManager latestMarginalEmissionForecast];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = log;
    v6 = [v3 forecastMap];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Emission Forecast: %@", &v9, 0xCu);
  }

  objc_storeStrong(&self->_currentForecast, v3);
  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)valuesFromForecast:(id)a3 forInterval:(double)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = [a3 forecastMap];
  if ([v5 count])
  {
    v6 = 86400.0;
    if (a4 <= 86400.0)
    {
      v6 = a4;
    }

    v7 = (v6 / 900.0);
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [v5 allKeys];
    v10 = [v9 mutableCopy];

    v11 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"self" ascending:1];
    v23[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    [v10 sortUsingDescriptors:v12];

    v13 = [v10 count];
    if (v13 >= v7)
    {
      v14 = v7;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      for (i = 0; i != v14; ++i)
      {
        v16 = [v10 objectAtIndexedSubscript:i];
        v17 = [v5 objectForKeyedSubscript:v16];

        v18 = [PowerUICECGridDataForecastEntry alloc];
        v19 = [v10 objectAtIndexedSubscript:i];
        v20 = [(PowerUICECGridDataForecastEntry *)v18 initWithDate:v19 forecastValue:v17];

        [v8 addObject:v20];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)downsampleGridData:(id)a3 fromRes:(unint64_t)a4 toRes:(unint64_t)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v33 = a4;
    v34 = 2048;
    v35 = a5;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Downsampling grid data from startResolution = %lu mins to endResolution = %lu mins.", buf, 0x16u);
  }

  if (![v8 count])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      [PowerUICECGridDataManager downsampleGridData:fromRes:toRes:];
    }

    goto LABEL_9;
  }

  if (a5 == a4)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      [PowerUICECGridDataManager downsampleGridData:fromRes:toRes:];
    }

LABEL_9:
    v10 = v8;
    goto LABEL_17;
  }

  if (a5 < a4)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUICECGridDataManager downsampleGridData:fromRes:toRes:];
    }

LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  v11 = a5 / a4;
  if (a5 % a4)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUICECGridDataManager downsampleGridData:fromRes:toRes:];
    }

    goto LABEL_16;
  }

  v31 = a5;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v8 count])
  {
    v14 = 0;
    v15 = 0;
    v16 = v11;
    do
    {
      v17 = [v8 objectAtIndex:v14];
      v18 = [v17 forecastDate];

      v19 = v11;
      v20 = v14 + v11;
      v21 = 0.0;
      if (v20 > v15)
      {
        v22 = v15;
        do
        {
          v23 = [v8 objectAtIndex:v22];
          v24 = [v23 forecastValue];
          [v24 doubleValue];
          v21 = v21 + v25;

          ++v22;
        }

        while (v20 > v22);
      }

      v26 = [PowerUICECGridDataForecastEntry alloc];
      v27 = [MEMORY[0x277CCABB0] numberWithDouble:v21 / v16];
      v28 = [(PowerUICECGridDataForecastEntry *)v26 initWithDate:v18 forecastValue:v27];

      [v10 addObject:v28];
      v14 = v20;
      v29 = [v8 count] > v20;
      v15 = v20;
      v11 = v19;
    }

    while (v29);
  }

  v30 = self->_log;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v33 = a4;
    v34 = 2048;
    v35 = v31;
    v36 = 2112;
    v37 = v8;
    v38 = 2112;
    v39 = v10;
    _os_log_debug_impl(&dword_21B766000, v30, OS_LOG_TYPE_DEBUG, "Resampled from startResolution = %lu mins to endResolution = %lu mins. Starting array: %@, ending array: %@ ", buf, 0x2Au);
  }

LABEL_17:

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)balancingAuthorityName
{
  v2 = [(PowerUICECGridDataManager *)self latestBalancingAuthority];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 identifier];
  }

  else
  {
    v4 = @"Unknown";
  }

  return v4;
}

- (double)timeToNextCleanInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0xBFF0000000000000;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__PowerUICECGridDataManager_timeToNextCleanInterval__block_invoke;
  v5[3] = &unk_2782D4A90;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __52__PowerUICECGridDataManager_timeToNextCleanInterval__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 88) count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v2 = *(*(a1 + 32) + 88);
    v3 = [v2 countByEnumeratingWithState:&v17 objects:v27 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v18;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v18 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v17 + 1) + 8 * i);
          [v7 timeIntervalSinceNow];
          if (v8 >= 0.0)
          {
            v9 = v8;
            v10 = *(*(a1 + 32) + 32);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v11 = MEMORY[0x277CBEAA8];
              v12 = v10;
              v13 = [v11 now];
              *buf = 138412802;
              v22 = v13;
              v23 = 2048;
              v24 = v9 / 3600.0;
              v25 = 2112;
              v26 = v7;
              _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_DEFAULT, "Current time: %@. Found next clean interval to be in %.0lf hours, starting at %@.", buf, 0x20u);
            }

            *(*(*(a1 + 40) + 8) + 24) = v9;
            goto LABEL_14;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v17 objects:v27 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v14 = *(*(a1 + 40) + 8);
    if (*(v14 + 24) == -1.0)
    {
      *(v14 + 24) = 0;
      v15 = *(*(a1 + 32) + 32);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_DEFAULT, "No upcoming clean intervals. All clean intervals already occurred!", buf, 2u);
      }
    }
  }

  else if (os_log_type_enabled(*(*(a1 + 32) + 32), OS_LOG_TYPE_ERROR))
  {
    __52__PowerUICECGridDataManager_timeToNextCleanInterval__block_invoke_cold_1();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)resetState
{
  currentForecast = self->_currentForecast;
  self->_currentForecast = 0;

  cleanIntervals = self->_cleanIntervals;
  self->_cleanIntervals = 0;

  lastForecastFetchDate = self->_lastForecastFetchDate;
  self->_lastForecastFetchDate = 0;

  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"cleanIntervals"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"intervalDuration"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"forecastFetchDate"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"demoForecast"];
  defaults = self->_defaults;

  [(NSUserDefaults *)defaults removeObjectForKey:@"engagementDecisionReason"];
}

- (void)recordForecastInDefaults:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = +[PowerUISmartChargeUtilities dateFormatter];
        v12 = [v10 forecastDate];
        v13 = [v11 stringFromDate:v12];

        v14 = [v10 forecastValue];
        [v4 setObject:v14 forKey:v13];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [(NSUserDefaults *)self->_defaults setObject:v4 forKey:@"demoForecast"];
  v15 = *MEMORY[0x277D85DE8];
}

- (id)forecastFromDefaults
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"demoForecast"];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v22 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = +[PowerUISmartChargeUtilities dateFormatter];
          v13 = [v12 dateFromString:v11];

          v14 = [PowerUICECGridDataForecastEntry alloc];
          v15 = [v6 objectForKeyedSubscript:v11];
          v16 = [(PowerUICECGridDataForecastEntry *)v14 initWithDate:v13 forecastValue:v15];
          [v5 addObject:v16];
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    v17 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"forecastDate" ascending:1];
    v28 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    [v5 sortUsingDescriptors:v18];

    v4 = v22;
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "No forecasts stored in defaults. Returning nil.", buf, 2u);
    }

    v5 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)storedForecastForDemoAnalyticsWithForecastHorizon:(double)a3
{
  if (self->_currentForecast)
  {
    v4 = [(PowerUICECGridDataManager *)self valuesFromForecast:a3 forInterval:?];
    v5 = [(PowerUICECGridDataManager *)self downsampleGridData:v4 fromRes:15 toRes:60];
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      [PowerUICECGridDataManager storedForecastForDemoAnalyticsWithForecastHorizon:];
    }

    v5 = [(PowerUICECGridDataManager *)self forecastFromDefaults];
    if (!v5)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        [PowerUICECGridDataManager storedForecastForDemoAnalyticsWithForecastHorizon:];
      }

      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)time:(id)a3 isWithinIntervalWithStart:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 timeIntervalSinceDate:v6];
  if (v8 >= 0.0 || v8 <= -self->_intervalDuration)
  {
    v9 = 0;
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      [PowerUICECGridDataManager time:isWithinIntervalWithStart:];
    }

    v9 = 1;
  }

  return v9;
}

- (id)startTimeCurrentIntervalWithinForecastHorizon:(double)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__PowerUICECGridDataManager_startTimeCurrentIntervalWithinForecastHorizon___block_invoke;
  block[3] = &unk_2782D4A68;
  *&block[6] = a3;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __75__PowerUICECGridDataManager_startTimeCurrentIntervalWithinForecastHorizon___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) intervalStartTimesOverForecastHorizon:*(a1 + 48)];
  v3 = v2;
  if (v2 && [v2 count])
  {
    v4 = [MEMORY[0x277CBEAA8] now];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([*(a1 + 32) time:v4 isWithinIntervalWithStart:{v10, v12}])
          {
            objc_storeStrong((*(*(a1 + 40) + 8) + 40), v10);

            goto LABEL_16;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    if (os_log_type_enabled(*(*(a1 + 32) + 32), OS_LOG_TYPE_ERROR))
    {
      __75__PowerUICECGridDataManager_startTimeCurrentIntervalWithinForecastHorizon___block_invoke_cold_1();
    }

LABEL_16:
  }

  else if (os_log_type_enabled(*(*(a1 + 32) + 32), OS_LOG_TYPE_ERROR))
  {
    __75__PowerUICECGridDataManager_startTimeCurrentIntervalWithinForecastHorizon___block_invoke_cold_2();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)lastIntervalStartTimeOverForecastHorizon:(double)a3
{
  v4 = [(PowerUICECGridDataManager *)self intervalStartTimesOverForecastHorizon:a3];
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 lastObject];
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUICECGridDataManager lastIntervalStartTimeOverForecastHorizon:];
    }

    v6 = 0;
  }

  return v6;
}

- (id)intervalStartTimesOverForecastHorizon:(double)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(PowerUICECGridDataManager *)self storedForecastForDemoAnalyticsWithForecastHorizon:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) forecastDate];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (double)averageEmissionsOverForecastHorizon:(double)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [(PowerUICECGridDataManager *)self storedForecastForDemoAnalyticsWithForecastHorizon:a3];
  v5 = v4;
  if (v4 && [v4 count])
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
      v10 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [*(*(&v16 + 1) + 8 * i) forecastValue];
          v10 = v10 + [v12 integerValue];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 0.0;
    }

    v13 = v10 / [v6 count];
  }

  else
  {
    v13 = -1.0;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      [PowerUICECGridDataManager averageEmissionsOverForecastHorizon:];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (int64_t)emissionsForTime:(id)a3 overForecastHorizon:(double)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(PowerUICECGridDataManager *)self storedForecastForDemoAnalyticsWithForecastHorizon:a4];
  v8 = v7;
  if (v7)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [v14 forecastDate];
          [v15 timeIntervalSinceDate:v6];
          if (v16 <= 0.0 && v16 > -self->_intervalDuration)
          {
            v18 = [v14 forecastValue];
            v17 = [v18 integerValue];

            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v27 = v6;
              v28 = 2112;
              v29 = v15;
              v30 = 2048;
              v31 = v17;
              _os_log_debug_impl(&dword_21B766000, log, OS_LOG_TYPE_DEBUG, "Time %@ within forecast window starting at %@. Emissions during interval: %ld g/kWh.", buf, 0x20u);
            }

            goto LABEL_19;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      [PowerUICECGridDataManager emissionsForTime:overForecastHorizon:];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [PowerUICECGridDataManager emissionsForTime:overForecastHorizon:];
  }

  v17 = -1;
LABEL_19:

  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)thresholdFromForecast:forChargeTime:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)downsampleGridData:fromRes:toRes:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2(&dword_21B766000, v0, v1, "endResolution must be multiple of startResolution, but got startResolution = %lu and endResolution = %lu", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)downsampleGridData:fromRes:toRes:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2(&dword_21B766000, v0, v1, "endResolution must be coarser than startResolution, but got startResolution = %lu and endResolution = %lu", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)downsampleGridData:fromRes:toRes:.cold.3()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)downsampleGridData:fromRes:toRes:.cold.4()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)storedForecastForDemoAnalyticsWithForecastHorizon:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)storedForecastForDemoAnalyticsWithForecastHorizon:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)time:isWithinIntervalWithStart:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(&dword_21B766000, v0, OS_LOG_TYPE_DEBUG, "Found start time of interval: %@ (for check time: %@)", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __75__PowerUICECGridDataManager_startTimeCurrentIntervalWithinForecastHorizon___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2(&dword_21B766000, v0, v1, "Unable to match current time to any intervals (current time: %@, all intervals: %@)");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)averageEmissionsOverForecastHorizon:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)emissionsForTime:overForecastHorizon:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)emissionsForTime:overForecastHorizon:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end