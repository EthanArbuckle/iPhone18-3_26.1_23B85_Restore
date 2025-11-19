@interface HDRPDailyAnalyticsReport
- (BOOL)_hasCompatiblePairedAppleWatch;
- (HDProfile)profile;
- (HDRPDailyAnalyticsReport)initWithDate:(id)a3 profile:(id)a4 pairedDeviceRegistry:(id)a5 featureAvailabilityProvider:(id)a6 oxygenSaturationSettings:(id)a7 controlCenterUserDefaults:(id)a8 healthDataCollectionAllowed:(BOOL)a9;
- (id)_activePairedWatchBuild;
- (id)_dateIntervalForPreviousDays:(unint64_t)a3;
- (id)_gatherDiagnosticAndUsageReportFromBackgroundOxygenSaturationSamplesInPreviousDay:(id)a3 wasWorn:(id)a4 error:(id *)a5;
- (id)_gatherImproveHealthAndActivityReportFromBackgroundOxygenSaturationSamplesInPreviousDay:(id)a3 backgroundSamplesInPrevious30Days:(id)a4 oxygenSaturationSamplesInPreviousDay:(id)a5 oxygenSaturationSamplesInPrevious30Days:(id)a6 error:(id *)a7;
- (id)_numberOfEveningSamplesFromSamples:(id)a3;
- (id)_numberOfForegroundSamplesFromSamples:(id)a3;
- (id)_numberOfSamplesByTruncatedOxygenSaturationValueFromSamples:(id)a3 keyPrefix:(id)a4;
- (id)_numberOfSamplesWithHighElevationTakeFromSamples:(id)a3;
- (id)_numberOfWeeksSinceOnboardedAndReturnError:(id *)a3;
- (id)_queryForBackgroundOxygenSaturationSamplesInPreviousDays:(unint64_t)a3 error:(id *)a4;
- (id)_queryForHasWornWatchInPreviousDayAndReturnError:(id *)a3;
- (id)_queryForOxygenSaturationSamplesInPreviousDays:(unint64_t)a3 error:(id *)a4;
- (id)generatePayloadAndReturnError:(id *)a3;
@end

@implementation HDRPDailyAnalyticsReport

- (HDRPDailyAnalyticsReport)initWithDate:(id)a3 profile:(id)a4 pairedDeviceRegistry:(id)a5 featureAvailabilityProvider:(id)a6 oxygenSaturationSettings:(id)a7 controlCenterUserDefaults:(id)a8 healthDataCollectionAllowed:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v29 = a8;
  v30.receiver = self;
  v30.super_class = HDRPDailyAnalyticsReport;
  v20 = [(HDRPDailyAnalyticsReport *)&v30 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_profile, v16);
    objc_storeStrong(&v21->_pairedDeviceRegistry, a5);
    objc_storeStrong(&v21->_featureAvailabilityProvider, a6);
    objc_storeStrong(&v21->_oxygenSaturationSettings, a7);
    objc_storeStrong(&v21->_controlCenterUserDefaults, a8);
    v21->_healthDataCollectionAllowed = a9;
    v22 = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithLocalTimeZone];
    calendar = v21->_calendar;
    v21->_calendar = v22;

    v24 = [(NSCalendar *)v21->_calendar startOfDayForDate:v15];
    endTime = v21->_endTime;
    v21->_endTime = v24;

    v26 = [(NSCalendar *)v21->_calendar hk_startOfDateBySubtractingDays:1 fromDate:v21->_endTime];
    startTime = v21->_startTime;
    v21->_startTime = v26;
  }

  return v21;
}

- (id)generatePayloadAndReturnError:(id *)a3
{
  v42 = 0;
  v5 = [(HDRPDailyAnalyticsReport *)self _queryForBackgroundOxygenSaturationSamplesInPreviousDays:1 error:&v42];
  v6 = v42;
  v7 = v6;
  if (!v5)
  {
    v14 = v6;
    if (v14)
    {
      if (a3)
      {
        v15 = v14;
        *a3 = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    _HKInitializeLogging();
    v9 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [HDRPDailyAnalyticsReport generatePayloadAndReturnError:];
    }

    goto LABEL_56;
  }

  v8 = [(HDRPDailyAnalyticsReport *)self isHealthDataCollectionAllowed];
  if (v8)
  {
    v41 = v7;
    v9 = [(HDRPDailyAnalyticsReport *)self _queryForBackgroundOxygenSaturationSamplesInPreviousDays:30 error:&v41];
    v10 = v41;

    if (v9)
    {
      v40 = v10;
      v11 = [(HDRPDailyAnalyticsReport *)self _queryForOxygenSaturationSamplesInPreviousDays:1 error:&v40];
      v12 = v40;

      if (v11)
      {
        v39 = v12;
        v13 = [(HDRPDailyAnalyticsReport *)self _queryForOxygenSaturationSamplesInPreviousDays:30 error:&v39];
        v7 = v39;

        v35 = v13;
        if (v13)
        {
          v34 = v11;
          goto LABEL_11;
        }

        v14 = v7;
        if (v14)
        {
          if (a3)
          {
            v28 = v14;
            *a3 = v14;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        _HKInitializeLogging();
        v32 = HKLogRespiratoryCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [HDRPDailyAnalyticsReport generatePayloadAndReturnError:];
        }
      }

      else
      {
        v14 = v12;
        if (v14)
        {
          if (a3)
          {
            v27 = v14;
            *a3 = v14;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        _HKInitializeLogging();
        v31 = HKLogRespiratoryCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [HDRPDailyAnalyticsReport generatePayloadAndReturnError:];
        }
      }
    }

    else
    {
      v14 = v10;
      if (v14)
      {
        if (a3)
        {
          v24 = v14;
          *a3 = v14;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      _HKInitializeLogging();
      v9 = HKLogRespiratoryCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [HDRPDailyAnalyticsReport generatePayloadAndReturnError:];
      }
    }

LABEL_56:
    v26 = 0;
    goto LABEL_63;
  }

  v34 = 0;
  v35 = 0;
  v9 = 0;
LABEL_11:
  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  [v16 setObject:v17 forKeyedSubscript:@"isImproveHealthAndActivityAllowed"];

  v38 = v7;
  v18 = [(HDRPDailyAnalyticsReport *)self _queryForHasWornWatchInPreviousDayAndReturnError:&v38];
  v19 = v38;

  if (!v18)
  {
    v14 = v19;
    if (v14)
    {
      if (a3)
      {
        v23 = v14;
        *a3 = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    _HKInitializeLogging();
    v20 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [HDRPDailyAnalyticsReport generatePayloadAndReturnError:];
    }

    goto LABEL_61;
  }

  v37 = v19;
  v20 = [(HDRPDailyAnalyticsReport *)self _gatherDiagnosticAndUsageReportFromBackgroundOxygenSaturationSamplesInPreviousDay:v5 wasWorn:v18 error:&v37];
  v21 = v37;

  if (!v20)
  {
    v14 = v21;
    if (v14)
    {
      if (a3)
      {
        v25 = v14;
        *a3 = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    _HKInitializeLogging();
    v30 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [HDRPDailyAnalyticsReport generatePayloadAndReturnError:];
    }

    goto LABEL_60;
  }

  [v16 addEntriesFromDictionary:v20];
  if (!v8)
  {
    v14 = v21;
    goto LABEL_29;
  }

  v36 = v21;
  v22 = [(HDRPDailyAnalyticsReport *)self _gatherImproveHealthAndActivityReportFromBackgroundOxygenSaturationSamplesInPreviousDay:v5 backgroundSamplesInPrevious30Days:v9 oxygenSaturationSamplesInPreviousDay:v34 oxygenSaturationSamplesInPrevious30Days:v35 error:&v36];
  v14 = v36;

  if (!v22)
  {
    v14 = v14;
    if (v14)
    {
      if (a3)
      {
        v29 = v14;
        *a3 = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    _HKInitializeLogging();
    v30 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [HDRPDailyAnalyticsReport generatePayloadAndReturnError:];
    }

LABEL_60:

LABEL_61:
    v26 = 0;
    goto LABEL_62;
  }

  [v16 addEntriesFromDictionary:v22];

LABEL_29:
  v26 = v16;
LABEL_62:

LABEL_63:

  return v26;
}

- (id)_gatherDiagnosticAndUsageReportFromBackgroundOxygenSaturationSamplesInPreviousDay:(id)a3 wasWorn:(id)a4 error:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v31 = 0;
  v10 = [(HDRPDailyAnalyticsReport *)self _numberOfWeeksSinceOnboardedAndReturnError:&v31];
  v11 = v31;
  if (v10)
  {
    goto LABEL_2;
  }

  _HKInitializeLogging();
  v26 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = objc_opt_class();
    *buf = 138543362;
    v33 = v27;
    v28 = v27;
    _os_log_impl(&dword_262086000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Number of weeks since onboarded is null", buf, 0xCu);
  }

  if (!v11)
  {
LABEL_2:
    v12 = objc_opt_new();
    [v12 setObject:v10 forKeyedSubscript:@"weeksSinceOnboarded"];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[HDRPDailyAnalyticsReport _hasCompatiblePairedAppleWatch](self, "_hasCompatiblePairedAppleWatch")}];
    [v12 setObject:v13 forKeyedSubscript:@"hasCompatiblePairedAppleWatch"];

    v14 = [(HDRPDailyAnalyticsReport *)self _activePairedWatchBuild];
    [v12 setObject:v14 forKeyedSubscript:@"activePairedWatchBuild"];

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
    [v12 setObject:v15 forKeyedSubscript:@"totalNumberOfBackgroundSamplesInPrevious1Day"];

    [v12 setObject:v9 forKeyedSubscript:@"wasWatchWorn"];
    v16 = [(HDRPDailyAnalyticsReport *)self oxygenSaturationSettings];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v16, "oxygenSaturationDisabled") ^ 1}];
    [v12 setObject:v17 forKeyedSubscript:@"settings_bloodOxygenSaturationEnabled"];

    v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v16, "backgroundRecordingsEnabled")}];
    [v12 setObject:v18 forKeyedSubscript:@"settings_backgroundMeasurementsEnabled"];

    v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v16, "backgroundRecordingsDuringSleepMode")}];
    [v12 setObject:v19 forKeyedSubscript:@"settings_backgroundMeasurementsDuringSleepMode"];

    v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v16, "backgroundRecordingsDuringTheaterMode")}];
    [v12 setObject:v20 forKeyedSubscript:@"settings_backgroundMeasurementsDuringTheaterMode"];

    v21 = MEMORY[0x277CCABB0];
    v22 = [(HDRPDailyAnalyticsReport *)self controlCenterUserDefaults];
    v23 = [v21 numberWithBool:{objc_msgSend(v22, "BOOLForKey:", @"hideHunterSensitiveUI"}];
    [v12 setObject:v23 forKeyedSubscript:@"settings_hideSensitiveUI"];
  }

  else
  {
    _HKInitializeLogging();
    v29 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [HDRPDailyAnalyticsReport _gatherDiagnosticAndUsageReportFromBackgroundOxygenSaturationSamplesInPreviousDay:wasWorn:error:];
    }

    if (a5)
    {
      v30 = v11;
      v12 = 0;
      *a5 = v11;
    }

    else
    {
      _HKLogDroppedError();
      v12 = 0;
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_numberOfWeeksSinceOnboardedAndReturnError:(id *)a3
{
  v5 = [(HDRPDailyAnalyticsReport *)self featureAvailabilityProvider];
  v6 = [v5 earliestDateLowestOnboardingVersionCompletedWithError:a3];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v8 = [(HDRPDailyAnalyticsReport *)self endTime];
    v9 = [v7 components:0x2000 fromDate:v6 toDate:v8 options:0];

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "weekOfYear")}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_hasCompatiblePairedAppleWatch
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(HDRPDailyAnalyticsReport *)self pairedDeviceRegistry];
  v3 = [v2 getSetupCompletedDevices];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"BD3A4341-7090-4622-9694-2AC0F536C478"];
        LOBYTE(v8) = [v8 supportsCapability:v9];

        if (v8)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)_activePairedWatchBuild
{
  v2 = [(HDRPDailyAnalyticsReport *)self pairedDeviceRegistry];
  v3 = [v2 getActivePairedDevice];

  v4 = [v3 valueForProperty:*MEMORY[0x277D2BC08]];

  return v4;
}

- (id)_gatherImproveHealthAndActivityReportFromBackgroundOxygenSaturationSamplesInPreviousDay:(id)a3 backgroundSamplesInPrevious30Days:(id)a4 oxygenSaturationSamplesInPreviousDay:(id)a5 oxygenSaturationSamplesInPrevious30Days:(id)a6 error:(id *)a7
{
  v11 = MEMORY[0x277CBEB38];
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(v11);
  v17 = [(HDRPDailyAnalyticsReport *)self _numberOfSamplesWithHeartRateGreaterThan100BPMFromSamples:v15];
  [v16 setObject:v17 forKeyedSubscript:@"numberOfBackgroundSamplesWithHeartRateGreaterThan100BPMInPrevious1Day"];

  v18 = [(HDRPDailyAnalyticsReport *)self _numberOfSamplesWithExerciseMinute5MinutesPriorInPreviousDayAndReturnError:0];
  [v16 setObject:v18 forKeyedSubscript:@"numberOfBackgroundSamplesWithExerciseMinute5MinutesPriorInPrevious1Day"];

  v19 = [(HDRPDailyAnalyticsReport *)self _numberOfForegroundSamplesFromSamples:v13];

  [v16 setObject:v19 forKeyedSubscript:@"totalNumberOfForegroundSamplesInPrevious1Day"];
  v20 = [(HDRPDailyAnalyticsReport *)self _numberOfForegroundSamplesFromSamples:v12];

  [v16 setObject:v20 forKeyedSubscript:@"totalNumberOfForegroundSamplesInPrevious30Days"];
  v21 = MEMORY[0x277CCABB0];
  v22 = [v14 count];

  v23 = [v21 numberWithUnsignedInteger:v22];
  [v16 setObject:v23 forKeyedSubscript:@"totalNumberOfBackgroundSamplesInPrevious30Days"];

  v24 = [(HDRPDailyAnalyticsReport *)self _numberOfEveningSamplesFromSamples:v15];
  [v16 setObject:v24 forKeyedSubscript:@"totalNightBackgroundSamplesInPrevious1Day"];

  v25 = [(HDRPDailyAnalyticsReport *)self _numberOfSamplesWithHighElevationTakeFromSamples:v15];
  if ([v25 integerValue] <= 0)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25;
  }

  [v16 setObject:v26 forKeyedSubscript:@"numberOfBackgroundSamplesWithHighElevationTakenInPrevious1Day"];
  v27 = [(HDRPDailyAnalyticsReport *)self _numberOfSamplesByTruncatedOxygenSaturationValueFromSamples:v15 keyPrefix:@"numberOfBackgroundSamplesInPrevious1Day"];

  if (v27)
  {
    [v16 addEntriesFromDictionary:v27];
  }

  return v16;
}

- (id)_queryForBackgroundOxygenSaturationSamplesInPreviousDays:(unint64_t)a3 error:(id *)a4
{
  v23[3] = *MEMORY[0x277D85DE8];
  v6 = [(HDRPDailyAnalyticsReport *)self _dateIntervalForPreviousDays:a3];
  v7 = [MEMORY[0x277CCD8D8] hkrp_oxygenSaturationType];
  v8 = HDDataEntityPredicateForObjectsFromAppleWatchSources();
  v9 = [(HDRPDailyAnalyticsReport *)self profile];
  v10 = [v9 metadataManager];
  v11 = *MEMORY[0x277CCDFC0];
  v12 = [MEMORY[0x277CBEB98] setWithObject:&unk_28749E240];
  v13 = [v10 predicateWithMetadataKey:v11 allowedValues:v12];

  v14 = HDSampleEntityPredicateForDateInterval();
  v15 = MEMORY[0x277D10B20];
  v23[0] = v8;
  v23[1] = v13;
  v23[2] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v17 = [v15 predicateMatchingAllPredicates:v16];

  v18 = MEMORY[0x277D10848];
  v19 = [(HDRPDailyAnalyticsReport *)self profile];
  v20 = [v18 samplesWithType:v7 profile:v19 encodingOptions:0 predicate:v17 limit:0 anchor:0 error:a4];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_queryForOxygenSaturationSamplesInPreviousDays:(unint64_t)a3 error:(id *)a4
{
  v6 = [(HDRPDailyAnalyticsReport *)self _dateIntervalForPreviousDays:a3];
  v7 = [MEMORY[0x277CCD8D8] hkrp_oxygenSaturationType];
  v8 = HDSampleEntityPredicateForDateInterval();
  v9 = MEMORY[0x277D10848];
  v10 = [(HDRPDailyAnalyticsReport *)self profile];
  v11 = [v9 samplesWithType:v7 profile:v10 encodingOptions:0 predicate:v8 limit:0 anchor:0 error:a4];

  return v11;
}

- (id)_queryForHasWornWatchInPreviousDayAndReturnError:(id *)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v5 = [(HDRPDailyAnalyticsReport *)self _dateIntervalForPreviousDays:1];
  v6 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v7 = HDDataEntityPredicateForObjectsFromAppleWatchSources();
  v8 = HDSampleEntityPredicateForDateInterval();
  v9 = MEMORY[0x277D10B20];
  v18[0] = v7;
  v18[1] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v11 = [v9 predicateMatchingAllPredicates:v10];

  v12 = MEMORY[0x277D10848];
  v13 = [(HDRPDailyAnalyticsReport *)self profile];
  v14 = [v12 samplesWithType:v6 profile:v13 encodingOptions:0 predicate:v11 limit:3 anchor:0 error:a3];

  if (v14)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v14, "count") > 2}];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_dateIntervalForPreviousDays:(unint64_t)a3
{
  v5 = [(HDRPDailyAnalyticsReport *)self endTime];
  v6 = [(NSCalendar *)self->_calendar hk_startOfDateBySubtractingDays:a3 fromDate:v5];
  v7 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v6 endDate:v5];

  return v7;
}

- (id)_numberOfForegroundSamplesFromSamples:(id)a3
{
  v3 = [a3 hk_filter:&__block_literal_global];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];

  return v4;
}

uint64_t __66__HDRPDailyAnalyticsReport__numberOfForegroundSamplesFromSamples___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 sourceRevision];
  v3 = [v2 source];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:*MEMORY[0x277D46B88]];

  return v5;
}

- (id)_numberOfEveningSamplesFromSamples:(id)a3
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__HDRPDailyAnalyticsReport__numberOfEveningSamplesFromSamples___block_invoke;
  v6[3] = &unk_279B0E258;
  v6[4] = self;
  v3 = [a3 hk_filter:v6];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];

  return v4;
}

BOOL __63__HDRPDailyAnalyticsReport__numberOfEveningSamplesFromSamples___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [a2 startDate];
  v4 = [v2 component:32 fromDate:v3];

  return (v4 - 20) < 0xFFFFFFFFFFFFFFF4;
}

- (id)_numberOfSamplesWithHighElevationTakeFromSamples:(id)a3
{
  v3 = a3;
  v4 = HKOxygenSaturationLowBarometricPressureThresholdQuantity();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__HDRPDailyAnalyticsReport__numberOfSamplesWithHighElevationTakeFromSamples___block_invoke;
  v9[3] = &unk_279B0E258;
  v10 = v4;
  v5 = v4;
  v6 = [v3 hk_filter:v9];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];

  return v7;
}

uint64_t __77__HDRPDailyAnalyticsReport__numberOfSamplesWithHighElevationTakeFromSamples___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 metadata];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCC478]];

  if (v4)
  {
    v5 = [v4 hk_isLessThanQuantity:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_numberOfSamplesByTruncatedOxygenSaturationValueFromSamples:(id)a3 keyPrefix:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v22 + 1) + 8 * i) quantity];
        [v12 _value];
        v14 = (v13 * 100.0);

        if (v14 >= 100)
        {
          LODWORD(v15) = 100;
        }

        else
        {
          LODWORD(v15) = v14;
        }

        if (v14 >= 70)
        {
          v15 = v15;
        }

        else
        {
          v15 = 0;
        }

        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%d", v6, v15];
        v17 = [v7 objectForKeyedSubscript:v16];
        v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "integerValue") + 1}];
        [v7 setObject:v18 forKeyedSubscript:v16];
      }

      v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)generatePayloadAndReturnError:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0(v0);
  OUTLINED_FUNCTION_1(&dword_262086000, v2, v3, "[%{public}@] Could not gather improveHealthAndActivityReport: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)generatePayloadAndReturnError:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0(v0);
  OUTLINED_FUNCTION_1(&dword_262086000, v2, v3, "[%{public}@] Could not gather diagnosticAndUsageReport: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)generatePayloadAndReturnError:.cold.3()
{
  OUTLINED_FUNCTION_2();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0(v0);
  OUTLINED_FUNCTION_1(&dword_262086000, v2, v3, "[%{public}@] Could not fetch hasWornWatchInPreviousDay: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)generatePayloadAndReturnError:.cold.4()
{
  OUTLINED_FUNCTION_2();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0(v0);
  OUTLINED_FUNCTION_1(&dword_262086000, v2, v3, "[%{public}@] Could not fetch oxygenSaturationSamplesInPrevious30Days: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)generatePayloadAndReturnError:.cold.5()
{
  OUTLINED_FUNCTION_2();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0(v0);
  OUTLINED_FUNCTION_1(&dword_262086000, v2, v3, "[%{public}@] Could not fetch oxygenSaturationSamplesInPreviousDay: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)generatePayloadAndReturnError:.cold.6()
{
  OUTLINED_FUNCTION_2();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0(v0);
  OUTLINED_FUNCTION_1(&dword_262086000, v2, v3, "[%{public}@] Could not fetch backgroundOxygenSaturationSamplesInPrevious30Days: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)generatePayloadAndReturnError:.cold.7()
{
  OUTLINED_FUNCTION_2();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0(v0);
  OUTLINED_FUNCTION_1(&dword_262086000, v2, v3, "[%{public}@] Could not fetch backgroundOxygenSaturationSamplesInPreviousDay: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_gatherDiagnosticAndUsageReportFromBackgroundOxygenSaturationSamplesInPreviousDay:wasWorn:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0(v0);
  OUTLINED_FUNCTION_1(&dword_262086000, v2, v3, "[%{public}@] Could not read number of weeks since onboarded: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end