@interface NLSessionActivityHeartRateAccumulator
- ($B42DDA7905377C1B85A751F444708923)heartRateData;
- ($B42DDA7905377C1B85A751F444708923)lastAveragingSegmentHeartRateData;
- (NLSessionActivityHeartRateAccumulator)initWithBuilder:(id)a3 staleTimeout:(double)a4;
- (NLSessionActivityHeartRateProviderDelegate)delegate;
- (void)_fakeReading;
- (void)_invalidDataTimerFired;
- (void)_startFakingData;
- (void)_stopFakingDataIfNeeded;
- (void)accumulatorDidStartWithStartDate:(id)a3 handler:(id)a4;
- (void)markAveragingSegment;
- (void)updateWithStatistics:(id)a3;
@end

@implementation NLSessionActivityHeartRateAccumulator

- (NLSessionActivityHeartRateAccumulator)initWithBuilder:(id)a3 staleTimeout:(double)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = a4;
  v4 = v14;
  v14 = 0;
  v11.receiver = v4;
  v11.super_class = NLSessionActivityHeartRateAccumulator;
  v10 = [(NLSessionActivityBuilderAccumulator *)&v11 initWithBuilder:location[0]];
  v14 = v10;
  objc_storeStrong(&v14, v10);
  if (v10)
  {
    v5 = [MEMORY[0x277CCDAB0] _countPerMinuteUnit];
    countPerMinuteUnit = v14->_countPerMinuteUnit;
    v14->_countPerMinuteUnit = v5;
    MEMORY[0x277D82BD8](countPerMinuteUnit);
    v14->_staleTimeout = v12;
    v14->_averagingSegmentSum = 0.0;
    v14->_averagingSegmentCount = 0.0;
    v14->_averagingSegmentMinimum = 0.0;
    v14->_averagingSegmentMaximum = 0.0;
  }

  v8 = MEMORY[0x277D82BE0](v14);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v8;
}

- (void)accumulatorDidStartWithStartDate:(id)a3 handler:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  aBlock = 0;
  objc_storeStrong(&aBlock, a4);
  v4 = _Block_copy(aBlock);
  updateHandler = v9->_updateHandler;
  v9->_updateHandler = v4;
  MEMORY[0x277D82BD8](updateHandler);
  if (+[WOStoreDemoModeProvider isRunningInStoreDemoMode])
  {
    [(NLSessionActivityHeartRateAccumulator *)v9 _startFakingData];
  }

  objc_storeStrong(&aBlock, 0);
  objc_storeStrong(location, 0);
}

- (void)updateWithStatistics:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!v16->_disabledForSession)
  {
    [(NLSessionActivityHeartRateAccumulator *)v16 setMostRecentStatistics:location[0]];
    v14.receiver = v16;
    v14.super_class = NLSessionActivityHeartRateAccumulator;
    [(NLSessionActivityBuilderAccumulator *)&v14 update];
    [(NSTimer *)v16->_invalidDataTimer invalidate];
    v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:v16 target:sel__invalidDataTimerFired selector:0 userInfo:0 repeats:v16->_staleTimeout];
    invalidDataTimer = v16->_invalidDataTimer;
    v16->_invalidDataTimer = v3;
    MEMORY[0x277D82BD8](invalidDataTimer);
    if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
    {
      _HKInitializeLogging();
      v13 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(NLSessionActivityHeartRateAccumulator *)v16 mostRecentStatistics];
        v11 = [(HKStatistics *)v12 mostRecentQuantity];
        [(HKQuantity *)v11 doubleValueForUnit:v16->_countPerMinuteUnit];
        __os_log_helper_16_0_1_8_0(v17, v5);
        _os_log_impl(&dword_20AEA4000, v13, OS_LOG_TYPE_DEFAULT, "[HeartRateAccumulator] Update triggered with heartRate=%f", v17, 0xCu);
        MEMORY[0x277D82BD8](v11);
        MEMORY[0x277D82BD8](v12);
      }

      objc_storeStrong(&v13, 0);
    }

    v9 = [location[0] mostRecentQuantity];
    [v9 doubleValueForUnit:v16->_countPerMinuteUnit];
    v10 = v6;
    MEMORY[0x277D82BD8](v9);
    v16->_averagingSegmentSum = v16->_averagingSegmentSum + v10;
    v16->_averagingSegmentCount = v16->_averagingSegmentCount + 1.0;
    if (v10 >= v16->_averagingSegmentMinimum)
    {
      averagingSegmentMinimum = v16->_averagingSegmentMinimum;
    }

    else
    {
      averagingSegmentMinimum = v10;
    }

    v16->_averagingSegmentMinimum = averagingSegmentMinimum;
    if (v10 >= v16->_averagingSegmentMaximum)
    {
      averagingSegmentMaximum = v10;
    }

    else
    {
      averagingSegmentMaximum = v16->_averagingSegmentMaximum;
    }

    v16->_averagingSegmentMaximum = averagingSegmentMaximum;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_invalidDataTimerFired
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained heartRateProviderDidBecomeStale:self];
  MEMORY[0x277D82BD8](WeakRetained);
}

- (void)_startFakingData
{
  if (!self->_fakeDataTimer)
  {
    v2 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__fakeReading selector:0 userInfo:1 repeats:3.0];
    fakeDataTimer = self->_fakeDataTimer;
    self->_fakeDataTimer = v2;
    MEMORY[0x277D82BD8](fakeDataTimer);
  }
}

- (void)_stopFakingDataIfNeeded
{
  if (self->_fakeDataTimer)
  {
    [(NSTimer *)self->_fakeDataTimer invalidate];
    objc_storeStrong(&self->_fakeDataTimer, 0);
  }
}

- (void)_fakeReading
{
  v23[1] = *MEMORY[0x277D85DE8];
  v22 = self;
  v21 = a2;
  v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v12 doubleForKey:@"NLWorkoutFakeHeartRateCenterValue"];
  v13 = v2;
  MEMORY[0x277D82BD8](v12);
  v20 = v13;
  if (v13 < 30.0)
  {
    v20 = 135.0;
  }

  v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v19 = [v11 objectForKey:@"NLWorkoutFakeHeartRateValueRangeLength"];
  MEMORY[0x277D82BD8](v11);
  if (v19)
  {
    v10 = [v19 intValue];
  }

  else
  {
    v10 = 15;
  }

  v18 = v10;
  v17 = v20 + round((arc4random() % (v18 + 1))) - v18 / 2.0;
  v3 = MEMORY[0x277CCD7E8];
  v4 = [MEMORY[0x277CCDAB0] _countPerMinuteUnit];
  v16 = [v3 quantityWithUnit:v17 doubleValue:?];
  MEMORY[0x277D82BD8](v4);
  v15 = [MEMORY[0x277CBEAA8] date];
  v5 = MEMORY[0x277CCD800];
  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v14 = [v5 quantitySampleWithType:? quantity:? startDate:? endDate:?];
  MEMORY[0x277D82BD8](v6);
  v8 = [(NLSessionActivityBuilderAccumulator *)v22 builder];
  v23[0] = v14;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  [HKLiveWorkoutBuilder addSamples:v8 completion:"addSamples:completion:"];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:(arc4random() % 5) + 5.0];
  [(NSTimer *)v22->_fakeDataTimer setFireDate:?];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v19, 0);
  *MEMORY[0x277D85DE8];
}

void __53__NLSessionActivityHeartRateAccumulator__fakeReading__block_invoke(NSObject *a1, char a2, id obj)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  _HKInitializeLogging();
  oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_4_0(v8, v6 & 1);
    _os_log_impl(&dword_20AEA4000, oslog[0], OS_LOG_TYPE_DEFAULT, "Added fake sample with success=%{BOOL}d", v8, 8u);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- ($B42DDA7905377C1B85A751F444708923)heartRateData
{
  v23 = self;
  v22[1] = a3;
  memset(retstr, 0, sizeof($B42DDA7905377C1B85A751F444708923));
  if (+[NLSessionActivityFakeDataManager shouldShowFakeData])
  {
    +[NLSessionActivityFakeDataManager fakeValueForCurrentHeartRate];
    retstr->var0 = v3;
    retstr->var1 = 0;
    +[NLSessionActivityFakeDataManager fakeValueForAverageHeartRate];
    retstr->var2 = v4;
    +[NLSessionActivityFakeDataManager fakeValueForMinimumHeartRate];
    retstr->var3 = v5;
    +[NLSessionActivityFakeDataManager fakeValueForMaximumHeartRate];
    retstr->var4 = v6;
    v20 = [MEMORY[0x277CBEAA8] date];
    [v20 timeIntervalSinceReferenceDate];
    retstr->var5 = v7;
    return MEMORY[0x277D82BD8](v20);
  }

  else
  {
    v22[0] = [(NLSessionActivityHeartRateAccumulator *)v23 mostRecentStatistics];
    v14 = [v22[0] mostRecentQuantity];
    [v14 doubleValueForUnit:v23->_countPerMinuteUnit];
    retstr->var0 = v9;
    MEMORY[0x277D82BD8](v14);
    retstr->var1 = 0;
    v15 = [v22[0] averageQuantity];
    [v15 doubleValueForUnit:v23->_countPerMinuteUnit];
    retstr->var2 = v10;
    MEMORY[0x277D82BD8](v15);
    v16 = [v22[0] minimumQuantity];
    [v16 doubleValueForUnit:v23->_countPerMinuteUnit];
    retstr->var3 = v11;
    MEMORY[0x277D82BD8](v16);
    v17 = [v22[0] maximumQuantity];
    [v17 doubleValueForUnit:v23->_countPerMinuteUnit];
    retstr->var4 = v12;
    MEMORY[0x277D82BD8](v17);
    v19 = [v22[0] mostRecentQuantityDateInterval];
    v18 = [v19 endDate];
    [v18 timeIntervalSinceReferenceDate];
    retstr->var5 = v13;
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    objc_storeStrong(v22, 0);
  }

  return result;
}

- ($B42DDA7905377C1B85A751F444708923)lastAveragingSegmentHeartRateData
{
  v18 = self;
  v17[1] = a3;
  memset(retstr, 0, sizeof($B42DDA7905377C1B85A751F444708923));
  if (+[NLSessionActivityFakeDataManager shouldShowFakeData])
  {
    +[NLSessionActivityFakeDataManager fakeValueForCurrentHeartRate];
    retstr->var0 = v3;
    retstr->var1 = 0;
    +[NLSessionActivityFakeDataManager fakeValueForAverageHeartRate];
    retstr->var2 = v4;
    +[NLSessionActivityFakeDataManager fakeValueForMinimumHeartRate];
    retstr->var3 = v5;
    +[NLSessionActivityFakeDataManager fakeValueForMaximumHeartRate];
    retstr->var4 = v6;
    v14 = [MEMORY[0x277CBEAA8] date];
    [v14 timeIntervalSinceReferenceDate];
    retstr->var5 = v7;
    return (MEMORY[0x277D82BD8])(v14);
  }

  else
  {
    v17[0] = [(NLSessionActivityHeartRateAccumulator *)v18 mostRecentStatistics];
    v16 = 0;
    if (v18->_averagingSegmentCount > 0.0)
    {
      v16 = (v18->_averagingSegmentSum / v18->_averagingSegmentCount);
    }

    v11 = [v17[0] mostRecentQuantity];
    [v11 doubleValueForUnit:v18->_countPerMinuteUnit];
    retstr->var0 = v9;
    MEMORY[0x277D82BD8](v11);
    retstr->var1 = 0;
    retstr->var2 = v16;
    retstr->var3 = v18->_averagingSegmentMinimum;
    retstr->var4 = v18->_averagingSegmentMaximum;
    v13 = [v17[0] mostRecentQuantityDateInterval];
    v12 = [v13 endDate];
    [v12 timeIntervalSinceReferenceDate];
    retstr->var5 = v10;
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    objc_storeStrong(v17, 0);
  }

  return result;
}

- (void)markAveragingSegment
{
  v7 = self;
  location[1] = a2;
  _HKInitializeLogging();
  location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_impl(&dword_20AEA4000, log, type, "Marking an Averaging Segment", v4, 2u);
  }

  objc_storeStrong(location, 0);
  v7->_averagingSegmentSum = 0.0;
  v7->_averagingSegmentCount = 0.0;
  v7->_averagingSegmentMinimum = 0.0;
  v7->_averagingSegmentMaximum = 0.0;
}

- (NLSessionActivityHeartRateProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end