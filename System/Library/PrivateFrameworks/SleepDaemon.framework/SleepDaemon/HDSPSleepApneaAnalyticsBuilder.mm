@interface HDSPSleepApneaAnalyticsBuilder
- ($0AC6E346AE4835514AAA8AC86D8F4844)morningIndexRange;
- (BOOL)_areHealthNotificationsAuthorized;
- (BOOL)_isEnabledBD;
- (BOOL)_isOnboardedBD;
- (HDSPSleepApneaAnalyticsBuilder)initWithBreathingDisturbanceSamples:(id)a3 sleepApneaEventSamples:(id)a4 sleepApneaFeatureOnboardingRecord:(id)a5 morningIndexRange:(id)a6 gregorianCalendar:(id)a7 dateOfLastAnalysis:(id)a8 currentDateProvider:(id)a9;
- (id)_breathingDisturbanceSamplesInPastNight;
- (id)_maxBDValueInPast30Days;
- (id)_maxTimeBetweenBDSessionsPastNight:(id)a3;
- (id)_meanTimeBetweenBDSessionsPastNight:(id)a3;
- (id)_minTimeBetweenBDSessionsPastNight:(id)a3;
- (id)_numBDNotifications:(id)a3;
- (id)_numBDValuesInPast30Days;
- (id)_numBDValuesInPastNight:(id)a3;
- (id)_numDaysSinceLastAnalysis;
- (id)_numDaysSinceLastBDNotification;
- (id)_numSleepDaysWithBDsOverThresholdLast30Days;
- (id)_numSleepDaysWithMultipleBDsInTheLast30Days;
- (id)_numSleepSessionsWithBDsOverThresholdLast30Days;
- (id)_onboardedCountryCode;
- (id)_sleepApneaEventSamplesInPastNights:(int64_t)a3;
- (id)_timesBetweenBDSessions:(id)a3;
- (id)_weeksSinceOnboardedBD;
- (void)_calculateBreathingDisturbanceValueDependentMetrics;
- (void)updateDailyReportWithSleepApneaAnalytics:(id)a3;
@end

@implementation HDSPSleepApneaAnalyticsBuilder

- (HDSPSleepApneaAnalyticsBuilder)initWithBreathingDisturbanceSamples:(id)a3 sleepApneaEventSamples:(id)a4 sleepApneaFeatureOnboardingRecord:(id)a5 morningIndexRange:(id)a6 gregorianCalendar:(id)a7 dateOfLastAnalysis:(id)a8 currentDateProvider:(id)a9
{
  var1 = a6.var1;
  var0 = a6.var0;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v36.receiver = self;
  v36.super_class = HDSPSleepApneaAnalyticsBuilder;
  v21 = [(HDSPSleepApneaAnalyticsBuilder *)&v36 init];
  if (v21)
  {
    v22 = [v15 copy];
    breathingDisturbanceSamples = v21->_breathingDisturbanceSamples;
    v21->_breathingDisturbanceSamples = v22;

    v24 = [v16 copy];
    sleepApneaEventSamples = v21->_sleepApneaEventSamples;
    v21->_sleepApneaEventSamples = v24;

    v26 = [v17 copy];
    sleepApneaFeatureOnboardingRecord = v21->_sleepApneaFeatureOnboardingRecord;
    v21->_sleepApneaFeatureOnboardingRecord = v26;

    v21->_morningIndexRange.start = var0;
    v21->_morningIndexRange.duration = var1;
    v28 = [v18 copy];
    gregorianCalendar = v21->_gregorianCalendar;
    v21->_gregorianCalendar = v28;

    v30 = [v20 copy];
    currentDateProvider = v21->_currentDateProvider;
    v21->_currentDateProvider = v30;

    if (v19)
    {
      v32 = [v19 copy];
      dateOfLastAnalysis = v21->_dateOfLastAnalysis;
      v21->_dateOfLastAnalysis = v32;
    }

    v34 = v21;
  }

  return v21;
}

- (void)updateDailyReportWithSleepApneaAnalytics:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [(HDSPSleepApneaAnalyticsBuilder *)self breathingDisturbanceSamples];
    v33 = 138543618;
    v34 = v6;
    v35 = 2050;
    v36 = [v8 count];
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Building daily analytics report from %{public}lu bd samples", &v33, 0x16u);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HDSPSleepApneaAnalyticsBuilder _isEnabledBD](self, "_isEnabledBD")}];
  [v4 setIsOnboardedBD:v9];

  v10 = [(HDSPSleepApneaAnalyticsBuilder *)self _onboardedCountryCode];
  [v4 setBDOnboardingCountryCode:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[HDSPSleepApneaAnalyticsBuilder _areHealthNotificationsAuthorized](self, "_areHealthNotificationsAuthorized")}];
  [v4 setAreHealthNotificationsAuthorized:v11];

  v12 = [(HDSPSleepApneaAnalyticsBuilder *)self _breathingDisturbanceSamplesInPastNight];
  v13 = [(HDSPSleepApneaAnalyticsBuilder *)self _sleepApneaEventSamplesInPastNights:0];
  v14 = [(HDSPSleepApneaAnalyticsBuilder *)self _sleepApneaEventSamplesInPastNights:30];
  v15 = [(HDSPSleepApneaAnalyticsBuilder *)self _sleepApneaEventSamplesInPastNights:180];
  v16 = [(HDSPSleepApneaAnalyticsBuilder *)self _timesBetweenBDSessions:v12];
  v17 = [(HDSPSleepApneaAnalyticsBuilder *)self _numBDValuesInPastNight:v12];
  [v4 setNumBDValuesInPastNight:v17];

  v18 = [(HDSPSleepApneaAnalyticsBuilder *)self _numBDNotifications:v13];
  [v4 setNumBDNotificationsInPastNight:v18];

  v19 = [(HDSPSleepApneaAnalyticsBuilder *)self _numBDNotifications:v14];
  [v4 setNumBDNotificationsInPast30Nights:v19];

  v20 = [(HDSPSleepApneaAnalyticsBuilder *)self _numBDNotifications:v15];
  [v4 setNumBDNotificationsInPast180Nights:v20];

  v21 = [(HDSPSleepApneaAnalyticsBuilder *)self _meanTimeBetweenBDSessionsPastNight:v16];
  [v4 setMeanTimeBetweenBDSessionsPastNight:v21];

  v22 = [(HDSPSleepApneaAnalyticsBuilder *)self _minTimeBetweenBDSessionsPastNight:v16];
  [v4 setMinTimeBetweenBDSessionsPastNight:v22];

  v23 = [(HDSPSleepApneaAnalyticsBuilder *)self _maxTimeBetweenBDSessionsPastNight:v16];
  [v4 setMaxTimeBetweenBDSessionsPastNight:v23];

  v24 = [(HDSPSleepApneaAnalyticsBuilder *)self _numBDValuesInPast30Days];
  [v4 setNumBDValuesInPast30Days:v24];

  [(HDSPSleepApneaAnalyticsBuilder *)self _calculateBreathingDisturbanceValueDependentMetrics];
  v25 = [(HDSPSleepApneaAnalyticsBuilder *)self _numSleepDaysWithBDsOverThresholdLast30Days];
  [v4 setNumSleepDaysWithBDsOverThresholdLast30Days:v25];

  v26 = [(HDSPSleepApneaAnalyticsBuilder *)self _numSleepDaysWithMultipleBDsInTheLast30Days];
  [v4 setNumSleepDaysWithMultipleBDinPast30Days:v26];

  v27 = [(HDSPSleepApneaAnalyticsBuilder *)self _numSleepSessionsWithBDsOverThresholdLast30Days];
  [v4 setNumSleepSessionsWithBDsOverThresholdLast30Days:v27];

  v28 = [(HDSPSleepApneaAnalyticsBuilder *)self _maxBDValueInPast30Days];
  [v4 setMaxBDValueInPast30Days:v28];

  v29 = [(HDSPSleepApneaAnalyticsBuilder *)self _numDaysSinceLastBDNotification];
  [v4 setNumDaysSinceLastBDNotification:v29];

  v30 = [(HDSPSleepApneaAnalyticsBuilder *)self _numDaysSinceLastAnalysis];
  [v4 setNumDaysSinceLastAnalysis:v30];

  v31 = [(HDSPSleepApneaAnalyticsBuilder *)self _weeksSinceOnboardedBD];
  [v4 setWeeksSinceOnboardedBD:v31];

  v32 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isOnboardedBD
{
  v3 = [(HDSPSleepApneaAnalyticsBuilder *)self sleepApneaFeatureOnboardingRecord];

  if (!v3)
  {
    return 0;
  }

  v4 = [(HDSPSleepApneaAnalyticsBuilder *)self sleepApneaFeatureOnboardingRecord];
  v5 = [v4 isOnboardingPresent];

  return v5;
}

- (BOOL)_areHealthNotificationsAuthorized
{
  v2 = objc_alloc(MEMORY[0x277CE2028]);
  v3 = [v2 initWithBundleIdentifier:*MEMORY[0x277CCE3A8]];
  v4 = [v3 notificationSettings];

  LOBYTE(v3) = [v4 authorizationStatus] == 2;
  return v3;
}

- (BOOL)_isEnabledBD
{
  v3 = [(HDSPSleepApneaAnalyticsBuilder *)self sleepApneaFeatureOnboardingRecord];

  if (!v3)
  {
    return 0;
  }

  v4 = [(HDSPSleepApneaAnalyticsBuilder *)self sleepApneaFeatureOnboardingRecord];
  v5 = [v4 featureSettings];
  v6 = [v5 numberForKey:*MEMORY[0x277CCC120]];
  v7 = [v6 BOOLValue];

  return v7;
}

- (id)_onboardedCountryCode
{
  v3 = [(HDSPSleepApneaAnalyticsBuilder *)self sleepApneaFeatureOnboardingRecord];

  if (v3 && [(HDSPSleepApneaAnalyticsBuilder *)self _isOnboardedBD])
  {
    v4 = [(HDSPSleepApneaAnalyticsBuilder *)self sleepApneaFeatureOnboardingRecord];
    v5 = [v4 onboardedCountryCodesForOnboardingState];
    v6 = [v5 allObjects];
    v7 = [v6 firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_numBDValuesInPastNight:(id)a3
{
  v4 = a3;
  if ([(HDSPSleepApneaAnalyticsBuilder *)self _isOnboardedBD])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_numBDNotifications:(id)a3
{
  v4 = a3;
  v5 = [(HDSPSleepApneaAnalyticsBuilder *)self _isOnboardedBD];
  v6 = 0;
  if (v4 && v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
  }

  return v6;
}

- (id)_numBDValuesInPast30Days
{
  if ([(HDSPSleepApneaAnalyticsBuilder *)self _isOnboardedBD]&& ([(HDSPSleepApneaAnalyticsBuilder *)self breathingDisturbanceSamples], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = [(HDSPSleepApneaAnalyticsBuilder *)self breathingDisturbanceSamples];
    v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_meanTimeBetweenBDSessionsPastNight:(id)a3
{
  v4 = a3;
  if (-[HDSPSleepApneaAnalyticsBuilder _isOnboardedBD](self, "_isOnboardedBD") && [v4 count])
  {
    v5 = [v4 valueForKeyPath:@"@avg.doubleValue"];
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

- (id)_maxTimeBetweenBDSessionsPastNight:(id)a3
{
  v4 = a3;
  if (-[HDSPSleepApneaAnalyticsBuilder _isOnboardedBD](self, "_isOnboardedBD") && [v4 count])
  {
    v5 = [v4 valueForKeyPath:@"@max.doubleValue"];
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

- (id)_minTimeBetweenBDSessionsPastNight:(id)a3
{
  v4 = a3;
  if (-[HDSPSleepApneaAnalyticsBuilder _isOnboardedBD](self, "_isOnboardedBD") && [v4 count])
  {
    v5 = [v4 valueForKeyPath:@"@min.doubleValue"];
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

- (id)_timesBetweenBDSessions:(id)a3
{
  v3 = a3;
  if ([v3 count] <= 1)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([v3 count] >= 2)
    {
      v5 = 1;
      do
      {
        v6 = [v3 objectAtIndexedSubscript:v5 - 1];
        v7 = [v6 endDate];

        v8 = [v3 objectAtIndexedSubscript:v5];
        v9 = [v8 startDate];

        [v9 timeIntervalSinceDate:v7];
        if (v10 < 0.0)
        {
          v10 = 0.0;
        }

        v11 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
        [v4 addObject:v11];

        ++v5;
      }

      while ([v3 count] > v5);
    }

    v12 = [v4 copy];
  }

  return v12;
}

- (id)_weeksSinceOnboardedBD
{
  if ([(HDSPSleepApneaAnalyticsBuilder *)self _isOnboardedBD])
  {
    v3 = [(HDSPSleepApneaAnalyticsBuilder *)self sleepApneaFeatureOnboardingRecord];
    v4 = [v3 earliestDateOfAnyOnboardingCompletion];

    if (v4)
    {
      v5 = [(HDSPSleepApneaAnalyticsBuilder *)self currentDateProvider];
      v6 = v5[2]();

      v7 = [(HDSPSleepApneaAnalyticsBuilder *)self gregorianCalendar];
      v8 = [v7 components:0x2000 fromDate:v4 toDate:v6 options:0];

      v9 = [v8 weekOfYear];
      v10 = v9;
      if (v9 >= 100)
      {
        v10 = 10 * ((v9 + 5) / 0xAuLL);
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
  v2 = self;
  v67 = *MEMORY[0x277D85DE8];
  if ([(HDSPSleepApneaAnalyticsBuilder *)self _isOnboardedBD])
  {
    v3 = [(HDSPSleepApneaAnalyticsBuilder *)v2 breathingDisturbanceSamples];

    if (v3)
    {
      v4 = [(HDSPSleepApneaAnalyticsBuilder *)v2 breathingDisturbanceSamples];
      v5 = [v4 count];

      if (v5)
      {
        v6 = HKAppleSleepingBreathingDisturbancesMinimumQuantityForClassification();
        v7 = [MEMORY[0x277CCDAB0] countUnit];
        [v6 doubleValueForUnit:v7];
        v9 = v8;

        v10 = objc_alloc(MEMORY[0x277CBEB38]);
        v11 = [(HDSPSleepApneaAnalyticsBuilder *)v2 breathingDisturbanceSamples];
        v12 = [v10 initWithCapacity:{objc_msgSend(v11, "count")}];

        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        obj = [(HDSPSleepApneaAnalyticsBuilder *)v2 breathingDisturbanceSamples];
        v13 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
        v51 = v2;
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
              v19 = [v18 quantity];
              [v19 _value];
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
              v23 = [v18 endDate];
              v24 = [(HDSPSleepApneaAnalyticsBuilder *)v2 gregorianCalendar];
              v25 = [v22 numberWithInteger:{objc_msgSend(v23, "hk_morningIndexWithCalendar:", v24)}];

              v26 = [v12 objectForKeyedSubscript:v25];
              if (!v26)
              {
                v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
                [v12 setObject:v27 forKeyedSubscript:v25];
              }

              v28 = [v12 objectForKeyedSubscript:v25];
              v29 = MEMORY[0x277CCABB0];
              v30 = [v18 quantity];
              [v30 _value];
              v31 = [v29 numberWithDouble:?];
              [v28 addObject:v31];

              v2 = v51;
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

        v2->_numSleepSessionsWithBDsOverThresholdLast30Days = v15;
        v2->_maximumBDValueInPast30Days = v16;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v50 = [v12 allKeys];
        v32 = [v50 countByEnumeratingWithState:&v56 objects:v65 count:16];
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
                objc_enumerationMutation(v50);
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

            v33 = [v50 countByEnumeratingWithState:&v56 objects:v65 count:16];
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
  v3 = [(HDSPSleepApneaAnalyticsBuilder *)self breathingDisturbanceSamples];

  if (v3)
  {
    v4 = [(HDSPSleepApneaAnalyticsBuilder *)self morningIndexRange];
    if (v5 <= 0)
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = v5 + v4 - 1;
    }

    v7 = [(HDSPSleepApneaAnalyticsBuilder *)self breathingDisturbanceSamples];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73__HDSPSleepApneaAnalyticsBuilder__breathingDisturbanceSamplesInPastNight__block_invoke;
    v10[3] = &unk_279C7B2A8;
    v10[4] = self;
    v10[5] = v6;
    v8 = [v7 hk_filter:v10];
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

- (id)_sleepApneaEventSamplesInPastNights:(int64_t)a3
{
  if (![(HDSPSleepApneaAnalyticsBuilder *)self _isOnboardedBD])
  {
    goto LABEL_7;
  }

  v5 = [(HDSPSleepApneaAnalyticsBuilder *)self sleepApneaEventSamples];

  if (!v5)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEA60]);
    goto LABEL_9;
  }

  if (a3 < 0)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_9;
  }

  v6 = [(HDSPSleepApneaAnalyticsBuilder *)self morningIndexRange];
  v8 = v7 + v6 - 1;
  if (v7 <= 0)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v8 - a3;
  v10 = [(HDSPSleepApneaAnalyticsBuilder *)self sleepApneaEventSamples];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__HDSPSleepApneaAnalyticsBuilder__sleepApneaEventSamplesInPastNights___block_invoke;
  v13[3] = &unk_279C7B2A8;
  v13[4] = self;
  v13[5] = v9;
  v11 = [v10 hk_filter:v13];

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
    v5 = [(HDSPSleepApneaAnalyticsBuilder *)self gregorianCalendar];
    v6 = [(HDSPSleepApneaAnalyticsBuilder *)self sleepApneaEventSamples];
    v7 = [v6 lastObject];
    v8 = [v7 _creationDate];
    v9 = [(HDSPSleepApneaAnalyticsBuilder *)self currentDateProvider];
    v10 = v9[2]();
    v11 = [v5 components:16 fromDate:v8 toDate:v10 options:0];

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
    v4 = [(HDSPSleepApneaAnalyticsBuilder *)self gregorianCalendar];
    v5 = [(HDSPSleepApneaAnalyticsBuilder *)self dateOfLastAnalysis];
    v6 = [(HDSPSleepApneaAnalyticsBuilder *)self currentDateProvider];
    v7 = v6[2]();
    v8 = [v4 components:16 fromDate:v5 toDate:v7 options:0];

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