@interface HDSPSleepApneaAnalyticsBuilder
- ($0AC6E346AE4835514AAA8AC86D8F4844)morningIndexRange;
- (BOOL)_areHealthNotificationsAuthorized;
- (BOOL)_isEnabledBD;
- (BOOL)_isOnboardedBD;
- (HDSPSleepApneaAnalyticsBuilder)initWithBreathingDisturbanceSamples:(id)samples sleepApneaEventSamples:(id)eventSamples sleepApneaFeatureOnboardingRecord:(id)record morningIndexRange:(id)range gregorianCalendar:(id)calendar dateOfLastAnalysis:(id)analysis currentDateProvider:(id)provider;
- (id)_breathingDisturbanceSamplesInPastNight;
- (id)_maxBDValueInPast30Days;
- (id)_maxTimeBetweenBDSessionsPastNight:(id)night;
- (id)_meanTimeBetweenBDSessionsPastNight:(id)night;
- (id)_minTimeBetweenBDSessionsPastNight:(id)night;
- (id)_numBDNotifications:(id)notifications;
- (id)_numBDValuesInPast30Days;
- (id)_numBDValuesInPastNight:(id)night;
- (id)_numDaysSinceLastAnalysis;
- (id)_numDaysSinceLastBDNotification;
- (id)_numSleepDaysWithBDsOverThresholdLast30Days;
- (id)_numSleepDaysWithMultipleBDsInTheLast30Days;
- (id)_numSleepSessionsWithBDsOverThresholdLast30Days;
- (id)_onboardedCountryCode;
- (id)_sleepApneaEventSamplesInPastNights:(int64_t)nights;
- (id)_timesBetweenBDSessions:(id)sessions;
- (id)_weeksSinceOnboardedBD;
- (void)_calculateBreathingDisturbanceValueDependentMetrics;
- (void)updateDailyReportWithSleepApneaAnalytics:(id)analytics;
@end

@implementation HDSPSleepApneaAnalyticsBuilder

- (HDSPSleepApneaAnalyticsBuilder)initWithBreathingDisturbanceSamples:(id)samples sleepApneaEventSamples:(id)eventSamples sleepApneaFeatureOnboardingRecord:(id)record morningIndexRange:(id)range gregorianCalendar:(id)calendar dateOfLastAnalysis:(id)analysis currentDateProvider:(id)provider
{
  var1 = range.var1;
  var0 = range.var0;
  samplesCopy = samples;
  eventSamplesCopy = eventSamples;
  recordCopy = record;
  calendarCopy = calendar;
  analysisCopy = analysis;
  providerCopy = provider;
  v36.receiver = self;
  v36.super_class = HDSPSleepApneaAnalyticsBuilder;
  v21 = [(HDSPSleepApneaAnalyticsBuilder *)&v36 init];
  if (v21)
  {
    v22 = [samplesCopy copy];
    breathingDisturbanceSamples = v21->_breathingDisturbanceSamples;
    v21->_breathingDisturbanceSamples = v22;

    v24 = [eventSamplesCopy copy];
    sleepApneaEventSamples = v21->_sleepApneaEventSamples;
    v21->_sleepApneaEventSamples = v24;

    v26 = [recordCopy copy];
    sleepApneaFeatureOnboardingRecord = v21->_sleepApneaFeatureOnboardingRecord;
    v21->_sleepApneaFeatureOnboardingRecord = v26;

    v21->_morningIndexRange.start = var0;
    v21->_morningIndexRange.duration = var1;
    v28 = [calendarCopy copy];
    gregorianCalendar = v21->_gregorianCalendar;
    v21->_gregorianCalendar = v28;

    v30 = [providerCopy copy];
    currentDateProvider = v21->_currentDateProvider;
    v21->_currentDateProvider = v30;

    if (analysisCopy)
    {
      v32 = [analysisCopy copy];
      dateOfLastAnalysis = v21->_dateOfLastAnalysis;
      v21->_dateOfLastAnalysis = v32;
    }

    v34 = v21;
  }

  return v21;
}

- (void)updateDailyReportWithSleepApneaAnalytics:(id)analytics
{
  v37 = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    breathingDisturbanceSamples = [(HDSPSleepApneaAnalyticsBuilder *)self breathingDisturbanceSamples];
    v33 = 138543618;
    v34 = v6;
    v35 = 2050;
    v36 = [breathingDisturbanceSamples count];
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Building daily analytics report from %{public}lu bd samples", &v33, 0x16u);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HDSPSleepApneaAnalyticsBuilder _isEnabledBD](self, "_isEnabledBD")}];
  [analyticsCopy setIsOnboardedBD:v9];

  _onboardedCountryCode = [(HDSPSleepApneaAnalyticsBuilder *)self _onboardedCountryCode];
  [analyticsCopy setBDOnboardingCountryCode:_onboardedCountryCode];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[HDSPSleepApneaAnalyticsBuilder _areHealthNotificationsAuthorized](self, "_areHealthNotificationsAuthorized")}];
  [analyticsCopy setAreHealthNotificationsAuthorized:v11];

  _breathingDisturbanceSamplesInPastNight = [(HDSPSleepApneaAnalyticsBuilder *)self _breathingDisturbanceSamplesInPastNight];
  v13 = [(HDSPSleepApneaAnalyticsBuilder *)self _sleepApneaEventSamplesInPastNights:0];
  v14 = [(HDSPSleepApneaAnalyticsBuilder *)self _sleepApneaEventSamplesInPastNights:30];
  v15 = [(HDSPSleepApneaAnalyticsBuilder *)self _sleepApneaEventSamplesInPastNights:180];
  v16 = [(HDSPSleepApneaAnalyticsBuilder *)self _timesBetweenBDSessions:_breathingDisturbanceSamplesInPastNight];
  v17 = [(HDSPSleepApneaAnalyticsBuilder *)self _numBDValuesInPastNight:_breathingDisturbanceSamplesInPastNight];
  [analyticsCopy setNumBDValuesInPastNight:v17];

  v18 = [(HDSPSleepApneaAnalyticsBuilder *)self _numBDNotifications:v13];
  [analyticsCopy setNumBDNotificationsInPastNight:v18];

  v19 = [(HDSPSleepApneaAnalyticsBuilder *)self _numBDNotifications:v14];
  [analyticsCopy setNumBDNotificationsInPast30Nights:v19];

  v20 = [(HDSPSleepApneaAnalyticsBuilder *)self _numBDNotifications:v15];
  [analyticsCopy setNumBDNotificationsInPast180Nights:v20];

  v21 = [(HDSPSleepApneaAnalyticsBuilder *)self _meanTimeBetweenBDSessionsPastNight:v16];
  [analyticsCopy setMeanTimeBetweenBDSessionsPastNight:v21];

  v22 = [(HDSPSleepApneaAnalyticsBuilder *)self _minTimeBetweenBDSessionsPastNight:v16];
  [analyticsCopy setMinTimeBetweenBDSessionsPastNight:v22];

  v23 = [(HDSPSleepApneaAnalyticsBuilder *)self _maxTimeBetweenBDSessionsPastNight:v16];
  [analyticsCopy setMaxTimeBetweenBDSessionsPastNight:v23];

  _numBDValuesInPast30Days = [(HDSPSleepApneaAnalyticsBuilder *)self _numBDValuesInPast30Days];
  [analyticsCopy setNumBDValuesInPast30Days:_numBDValuesInPast30Days];

  [(HDSPSleepApneaAnalyticsBuilder *)self _calculateBreathingDisturbanceValueDependentMetrics];
  _numSleepDaysWithBDsOverThresholdLast30Days = [(HDSPSleepApneaAnalyticsBuilder *)self _numSleepDaysWithBDsOverThresholdLast30Days];
  [analyticsCopy setNumSleepDaysWithBDsOverThresholdLast30Days:_numSleepDaysWithBDsOverThresholdLast30Days];

  _numSleepDaysWithMultipleBDsInTheLast30Days = [(HDSPSleepApneaAnalyticsBuilder *)self _numSleepDaysWithMultipleBDsInTheLast30Days];
  [analyticsCopy setNumSleepDaysWithMultipleBDinPast30Days:_numSleepDaysWithMultipleBDsInTheLast30Days];

  _numSleepSessionsWithBDsOverThresholdLast30Days = [(HDSPSleepApneaAnalyticsBuilder *)self _numSleepSessionsWithBDsOverThresholdLast30Days];
  [analyticsCopy setNumSleepSessionsWithBDsOverThresholdLast30Days:_numSleepSessionsWithBDsOverThresholdLast30Days];

  _maxBDValueInPast30Days = [(HDSPSleepApneaAnalyticsBuilder *)self _maxBDValueInPast30Days];
  [analyticsCopy setMaxBDValueInPast30Days:_maxBDValueInPast30Days];

  _numDaysSinceLastBDNotification = [(HDSPSleepApneaAnalyticsBuilder *)self _numDaysSinceLastBDNotification];
  [analyticsCopy setNumDaysSinceLastBDNotification:_numDaysSinceLastBDNotification];

  _numDaysSinceLastAnalysis = [(HDSPSleepApneaAnalyticsBuilder *)self _numDaysSinceLastAnalysis];
  [analyticsCopy setNumDaysSinceLastAnalysis:_numDaysSinceLastAnalysis];

  _weeksSinceOnboardedBD = [(HDSPSleepApneaAnalyticsBuilder *)self _weeksSinceOnboardedBD];
  [analyticsCopy setWeeksSinceOnboardedBD:_weeksSinceOnboardedBD];

  v32 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isOnboardedBD
{
  sleepApneaFeatureOnboardingRecord = [(HDSPSleepApneaAnalyticsBuilder *)self sleepApneaFeatureOnboardingRecord];

  if (!sleepApneaFeatureOnboardingRecord)
  {
    return 0;
  }

  sleepApneaFeatureOnboardingRecord2 = [(HDSPSleepApneaAnalyticsBuilder *)self sleepApneaFeatureOnboardingRecord];
  isOnboardingPresent = [sleepApneaFeatureOnboardingRecord2 isOnboardingPresent];

  return isOnboardingPresent;
}

- (BOOL)_areHealthNotificationsAuthorized
{
  v2 = objc_alloc(MEMORY[0x277CE2028]);
  v3 = [v2 initWithBundleIdentifier:*MEMORY[0x277CCE3A8]];
  notificationSettings = [v3 notificationSettings];

  LOBYTE(v3) = [notificationSettings authorizationStatus] == 2;
  return v3;
}

- (BOOL)_isEnabledBD
{
  sleepApneaFeatureOnboardingRecord = [(HDSPSleepApneaAnalyticsBuilder *)self sleepApneaFeatureOnboardingRecord];

  if (!sleepApneaFeatureOnboardingRecord)
  {
    return 0;
  }

  sleepApneaFeatureOnboardingRecord2 = [(HDSPSleepApneaAnalyticsBuilder *)self sleepApneaFeatureOnboardingRecord];
  featureSettings = [sleepApneaFeatureOnboardingRecord2 featureSettings];
  v6 = [featureSettings numberForKey:*MEMORY[0x277CCC120]];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (id)_onboardedCountryCode
{
  sleepApneaFeatureOnboardingRecord = [(HDSPSleepApneaAnalyticsBuilder *)self sleepApneaFeatureOnboardingRecord];

  if (sleepApneaFeatureOnboardingRecord && [(HDSPSleepApneaAnalyticsBuilder *)self _isOnboardedBD])
  {
    sleepApneaFeatureOnboardingRecord2 = [(HDSPSleepApneaAnalyticsBuilder *)self sleepApneaFeatureOnboardingRecord];
    onboardedCountryCodesForOnboardingState = [sleepApneaFeatureOnboardingRecord2 onboardedCountryCodesForOnboardingState];
    allObjects = [onboardedCountryCodesForOnboardingState allObjects];
    firstObject = [allObjects firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)_numBDValuesInPastNight:(id)night
{
  nightCopy = night;
  if ([(HDSPSleepApneaAnalyticsBuilder *)self _isOnboardedBD])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(nightCopy, "count")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_numBDNotifications:(id)notifications
{
  notificationsCopy = notifications;
  _isOnboardedBD = [(HDSPSleepApneaAnalyticsBuilder *)self _isOnboardedBD];
  v6 = 0;
  if (notificationsCopy && _isOnboardedBD)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(notificationsCopy, "count")}];
  }

  return v6;
}

- (id)_numBDValuesInPast30Days
{
  if ([(HDSPSleepApneaAnalyticsBuilder *)self _isOnboardedBD]&& ([(HDSPSleepApneaAnalyticsBuilder *)self breathingDisturbanceSamples], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = MEMORY[0x277CCABB0];
    breathingDisturbanceSamples = [(HDSPSleepApneaAnalyticsBuilder *)self breathingDisturbanceSamples];
    v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(breathingDisturbanceSamples, "count")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_meanTimeBetweenBDSessionsPastNight:(id)night
{
  nightCopy = night;
  if (-[HDSPSleepApneaAnalyticsBuilder _isOnboardedBD](self, "_isOnboardedBD") && [nightCopy count])
  {
    v5 = [nightCopy valueForKeyPath:@"@avg.doubleValue"];
    [v5 doubleValue];
    v7 = v6;

    v8 = [MEMORY[0x277CCABB0] numberWithDouble:v7 / 3600.0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_maxTimeBetweenBDSessionsPastNight:(id)night
{
  nightCopy = night;
  if (-[HDSPSleepApneaAnalyticsBuilder _isOnboardedBD](self, "_isOnboardedBD") && [nightCopy count])
  {
    v5 = [nightCopy valueForKeyPath:@"@max.doubleValue"];
    [v5 doubleValue];
    v7 = v6;

    v8 = [MEMORY[0x277CCABB0] numberWithDouble:v7 / 3600.0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_minTimeBetweenBDSessionsPastNight:(id)night
{
  nightCopy = night;
  if (-[HDSPSleepApneaAnalyticsBuilder _isOnboardedBD](self, "_isOnboardedBD") && [nightCopy count])
  {
    v5 = [nightCopy valueForKeyPath:@"@min.doubleValue"];
    [v5 doubleValue];
    v7 = v6;

    v8 = [MEMORY[0x277CCABB0] numberWithDouble:v7 / 3600.0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_numSleepSessionsWithBDsOverThresholdLast30Days
{
  if (-[HDSPSleepApneaAnalyticsBuilder _isOnboardedBD](self, "_isOnboardedBD") && (-[HDSPSleepApneaAnalyticsBuilder breathingDisturbanceSamples](self, "breathingDisturbanceSamples"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3) && (-[HDSPSleepApneaAnalyticsBuilder breathingDisturbanceSamples](self, "breathingDisturbanceSamples"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, v5))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numSleepSessionsWithBDsOverThresholdLast30Days];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_maxBDValueInPast30Days
{
  if (-[HDSPSleepApneaAnalyticsBuilder _isOnboardedBD](self, "_isOnboardedBD") && (-[HDSPSleepApneaAnalyticsBuilder breathingDisturbanceSamples](self, "breathingDisturbanceSamples"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3) && (-[HDSPSleepApneaAnalyticsBuilder breathingDisturbanceSamples](self, "breathingDisturbanceSamples"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, v5))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_maximumBDValueInPast30Days];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_numSleepDaysWithBDsOverThresholdLast30Days
{
  if (-[HDSPSleepApneaAnalyticsBuilder _isOnboardedBD](self, "_isOnboardedBD") && (-[HDSPSleepApneaAnalyticsBuilder breathingDisturbanceSamples](self, "breathingDisturbanceSamples"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numSleepDaysWithBDsOverThresholdLast30Days];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_numSleepDaysWithMultipleBDsInTheLast30Days
{
  if (-[HDSPSleepApneaAnalyticsBuilder _isOnboardedBD](self, "_isOnboardedBD") && (-[HDSPSleepApneaAnalyticsBuilder breathingDisturbanceSamples](self, "breathingDisturbanceSamples"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numSleepDaysWithMultipleBDsInLast30Days];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_timesBetweenBDSessions:(id)sessions
{
  sessionsCopy = sessions;
  if ([sessionsCopy count] <= 1)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([sessionsCopy count] >= 2)
    {
      v5 = 1;
      do
      {
        v6 = [sessionsCopy objectAtIndexedSubscript:v5 - 1];
        endDate = [v6 endDate];

        v8 = [sessionsCopy objectAtIndexedSubscript:v5];
        startDate = [v8 startDate];

        [startDate timeIntervalSinceDate:endDate];
        if (v10 < 0.0)
        {
          v10 = 0.0;
        }

        v11 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
        [v4 addObject:v11];

        ++v5;
      }

      while ([sessionsCopy count] > v5);
    }

    v12 = [v4 copy];
  }

  return v12;
}

- (id)_weeksSinceOnboardedBD
{
  if ([(HDSPSleepApneaAnalyticsBuilder *)self _isOnboardedBD])
  {
    sleepApneaFeatureOnboardingRecord = [(HDSPSleepApneaAnalyticsBuilder *)self sleepApneaFeatureOnboardingRecord];
    earliestDateOfAnyOnboardingCompletion = [sleepApneaFeatureOnboardingRecord earliestDateOfAnyOnboardingCompletion];

    if (earliestDateOfAnyOnboardingCompletion)
    {
      currentDateProvider = [(HDSPSleepApneaAnalyticsBuilder *)self currentDateProvider];
      v6 = currentDateProvider[2]();

      gregorianCalendar = [(HDSPSleepApneaAnalyticsBuilder *)self gregorianCalendar];
      v8 = [gregorianCalendar components:0x2000 fromDate:earliestDateOfAnyOnboardingCompletion toDate:v6 options:0];

      weekOfYear = [v8 weekOfYear];
      v10 = weekOfYear;
      if (weekOfYear >= 100)
      {
        v10 = 10 * ((weekOfYear + 5) / 0xAuLL);
      }

      v11 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_calculateBreathingDisturbanceValueDependentMetrics
{
  selfCopy = self;
  v67 = *MEMORY[0x277D85DE8];
  if ([(HDSPSleepApneaAnalyticsBuilder *)self _isOnboardedBD])
  {
    breathingDisturbanceSamples = [(HDSPSleepApneaAnalyticsBuilder *)selfCopy breathingDisturbanceSamples];

    if (breathingDisturbanceSamples)
    {
      breathingDisturbanceSamples2 = [(HDSPSleepApneaAnalyticsBuilder *)selfCopy breathingDisturbanceSamples];
      v5 = [breathingDisturbanceSamples2 count];

      if (v5)
      {
        v6 = HKAppleSleepingBreathingDisturbancesMinimumQuantityForClassification();
        countUnit = [MEMORY[0x277CCDAB0] countUnit];
        [v6 doubleValueForUnit:countUnit];
        v9 = v8;

        v10 = objc_alloc(MEMORY[0x277CBEB38]);
        breathingDisturbanceSamples3 = [(HDSPSleepApneaAnalyticsBuilder *)selfCopy breathingDisturbanceSamples];
        v12 = [v10 initWithCapacity:{objc_msgSend(breathingDisturbanceSamples3, "count")}];

        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        obj = [(HDSPSleepApneaAnalyticsBuilder *)selfCopy breathingDisturbanceSamples];
        v13 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
        v51 = selfCopy;
        if (v13)
        {
          v14 = v13;
          v15 = 0;
          v49 = *v61;
          v16 = 2.22507386e-308;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v61 != v49)
              {
                objc_enumerationMutation(obj);
              }

              v18 = *(*(&v60 + 1) + 8 * i);
              quantity = [v18 quantity];
              [quantity _value];
              v21 = v20;

              if (v21 >= v9)
              {
                ++v15;
              }

              if (v21 > v16)
              {
                v16 = v21;
              }

              v22 = MEMORY[0x277CCABB0];
              endDate = [v18 endDate];
              gregorianCalendar = [(HDSPSleepApneaAnalyticsBuilder *)selfCopy gregorianCalendar];
              v25 = [v22 numberWithInteger:{objc_msgSend(endDate, "hk_morningIndexWithCalendar:", gregorianCalendar)}];

              v26 = [v12 objectForKeyedSubscript:v25];
              if (!v26)
              {
                v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
                [v12 setObject:v27 forKeyedSubscript:v25];
              }

              v28 = [v12 objectForKeyedSubscript:v25];
              v29 = MEMORY[0x277CCABB0];
              quantity2 = [v18 quantity];
              [quantity2 _value];
              v31 = [v29 numberWithDouble:?];
              [v28 addObject:v31];

              selfCopy = v51;
            }

            v14 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
          }

          while (v14);
        }

        else
        {
          v15 = 0;
          v16 = 2.22507386e-308;
        }

        selfCopy->_numSleepSessionsWithBDsOverThresholdLast30Days = v15;
        selfCopy->_maximumBDValueInPast30Days = v16;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        allKeys = [v12 allKeys];
        v32 = [allKeys countByEnumeratingWithState:&v56 objects:v65 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = 0;
          v35 = 0;
          v36 = *v57;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v57 != v36)
              {
                objc_enumerationMutation(allKeys);
              }

              v38 = MEMORY[0x277CBEA60];
              v39 = [v12 objectForKeyedSubscript:*(*(&v56 + 1) + 8 * j)];
              v40 = [v38 arrayWithArray:v39];

              if ([v40 count] > 1)
              {
                ++v35;
              }

              v52 = 0u;
              v53 = 0u;
              v54 = 0u;
              v55 = 0u;
              v41 = v40;
              v42 = [v41 countByEnumeratingWithState:&v52 objects:v64 count:16];
              if (v42)
              {
                v43 = v42;
                v44 = *v53;
                while (2)
                {
                  for (k = 0; k != v43; ++k)
                  {
                    if (*v53 != v44)
                    {
                      objc_enumerationMutation(v41);
                    }

                    [*(*(&v52 + 1) + 8 * k) doubleValue];
                    if (v46 > v9)
                    {
                      ++v34;
                      goto LABEL_36;
                    }
                  }

                  v43 = [v41 countByEnumeratingWithState:&v52 objects:v64 count:16];
                  if (v43)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_36:
            }

            v33 = [allKeys countByEnumeratingWithState:&v56 objects:v65 count:16];
          }

          while (v33);
        }

        else
        {
          v34 = 0;
          v35 = 0;
        }

        v51->_numSleepDaysWithMultipleBDsInLast30Days = v35;
        v51->_numSleepDaysWithBDsOverThresholdLast30Days = v34;
      }
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (id)_breathingDisturbanceSamplesInPastNight
{
  breathingDisturbanceSamples = [(HDSPSleepApneaAnalyticsBuilder *)self breathingDisturbanceSamples];

  if (breathingDisturbanceSamples)
  {
    morningIndexRange = [(HDSPSleepApneaAnalyticsBuilder *)self morningIndexRange];
    if (v5 <= 0)
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = v5 + morningIndexRange - 1;
    }

    breathingDisturbanceSamples2 = [(HDSPSleepApneaAnalyticsBuilder *)self breathingDisturbanceSamples];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73__HDSPSleepApneaAnalyticsBuilder__breathingDisturbanceSamplesInPastNight__block_invoke;
    v10[3] = &unk_279C7B2A8;
    v10[4] = self;
    v10[5] = v6;
    v8 = [breathingDisturbanceSamples2 hk_filter:v10];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  return v8;
}

BOOL __73__HDSPSleepApneaAnalyticsBuilder__breathingDisturbanceSamplesInPastNight__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 endDate];
  v4 = [*(a1 + 32) gregorianCalendar];
  v5 = [v3 hk_morningIndexWithCalendar:v4] == *(a1 + 40);

  return v5;
}

- (id)_sleepApneaEventSamplesInPastNights:(int64_t)nights
{
  if (![(HDSPSleepApneaAnalyticsBuilder *)self _isOnboardedBD])
  {
    goto LABEL_7;
  }

  sleepApneaEventSamples = [(HDSPSleepApneaAnalyticsBuilder *)self sleepApneaEventSamples];

  if (!sleepApneaEventSamples)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEA60]);
    goto LABEL_9;
  }

  if (nights < 0)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_9;
  }

  morningIndexRange = [(HDSPSleepApneaAnalyticsBuilder *)self morningIndexRange];
  v8 = v7 + morningIndexRange - 1;
  if (v7 <= 0)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v8 - nights;
  sleepApneaEventSamples2 = [(HDSPSleepApneaAnalyticsBuilder *)self sleepApneaEventSamples];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__HDSPSleepApneaAnalyticsBuilder__sleepApneaEventSamplesInPastNights___block_invoke;
  v13[3] = &unk_279C7B2A8;
  v13[4] = self;
  v13[5] = v9;
  v11 = [sleepApneaEventSamples2 hk_filter:v13];

LABEL_9:

  return v11;
}

BOOL __70__HDSPSleepApneaAnalyticsBuilder__sleepApneaEventSamplesInPastNights___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 endDate];
  v4 = [*(a1 + 32) gregorianCalendar];
  v5 = [v3 hk_morningIndexWithCalendar:v4] >= *(a1 + 40);

  return v5;
}

- (id)_numDaysSinceLastBDNotification
{
  if (-[HDSPSleepApneaAnalyticsBuilder _isOnboardedBD](self, "_isOnboardedBD") && (-[HDSPSleepApneaAnalyticsBuilder sleepApneaEventSamples](self, "sleepApneaEventSamples"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4))
  {
    gregorianCalendar = [(HDSPSleepApneaAnalyticsBuilder *)self gregorianCalendar];
    sleepApneaEventSamples = [(HDSPSleepApneaAnalyticsBuilder *)self sleepApneaEventSamples];
    lastObject = [sleepApneaEventSamples lastObject];
    _creationDate = [lastObject _creationDate];
    currentDateProvider = [(HDSPSleepApneaAnalyticsBuilder *)self currentDateProvider];
    v10 = currentDateProvider[2]();
    v11 = [gregorianCalendar components:16 fromDate:_creationDate toDate:v10 options:0];

    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "day")}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_numDaysSinceLastAnalysis
{
  if ([(HDSPSleepApneaAnalyticsBuilder *)self _isOnboardedBD]&& ([(HDSPSleepApneaAnalyticsBuilder *)self dateOfLastAnalysis], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    gregorianCalendar = [(HDSPSleepApneaAnalyticsBuilder *)self gregorianCalendar];
    dateOfLastAnalysis = [(HDSPSleepApneaAnalyticsBuilder *)self dateOfLastAnalysis];
    currentDateProvider = [(HDSPSleepApneaAnalyticsBuilder *)self currentDateProvider];
    v7 = currentDateProvider[2]();
    v8 = [gregorianCalendar components:16 fromDate:dateOfLastAnalysis toDate:v7 options:0];

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "day")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)morningIndexRange
{
  duration = self->_morningIndexRange.duration;
  start = self->_morningIndexRange.start;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

@end