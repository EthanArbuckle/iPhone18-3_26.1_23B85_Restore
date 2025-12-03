@interface RTAuthorizedLocationMetrics
- (RTAuthorizedLocationMetrics)initWithDaemonStartDate:(id)date;
- (double)timeSinceDaemonStart;
- (double)timeSinceLastQueryMetricsSubmission;
- (id)convertToDictionary;
- (void)printMetricDictionary:(id)dictionary;
- (void)submitToCoreAnalytics;
@end

@implementation RTAuthorizedLocationMetrics

- (RTAuthorizedLocationMetrics)initWithDaemonStartDate:(id)date
{
  v20 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (!dateCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[RTAuthorizedLocationMetrics initWithDaemonStartDate:]";
      v18 = 1024;
      v19 = 173;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: daemonStartDate (in %s:%d)", buf, 0x12u);
    }
  }

  v15.receiver = self;
  v15.super_class = RTAuthorizedLocationMetrics;
  v7 = [(RTAuthorizedLocationMetrics *)&v15 init];
  v8 = v7;
  if (v7)
  {
    curationMetrics = v7->_curationMetrics;
    v7->_curationMetrics = 0;

    queryMetrics = v8->_queryMetrics;
    v8->_queryMetrics = 0;

    initializationMetrics = v8->_initializationMetrics;
    v8->_initializationMetrics = 0;

    *&v8->_locationServicesEnabled = 0;
    objc_storeStrong(&v8->_daemonStartDate, date);
    v12 = [MEMORY[0x277CBEAA8] now];
    lastQueryMetricSubmissionDate = v8->_lastQueryMetricSubmissionDate;
    v8->_lastQueryMetricSubmissionDate = v12;
  }

  return v8;
}

- (double)timeSinceLastQueryMetricsSubmission
{
  v3 = [MEMORY[0x277CBEAA8] now];
  [v3 timeIntervalSinceDate:self->_lastQueryMetricSubmissionDate];
  v5 = v4;

  return v5;
}

- (double)timeSinceDaemonStart
{
  v3 = [MEMORY[0x277CBEAA8] now];
  [v3 timeIntervalSinceDate:self->_daemonStartDate];
  v5 = v4;

  return v5;
}

- (id)convertToDictionary
{
  v95[55] = *MEMORY[0x277D85DE8];
  v3 = self->_curationMetrics;
  v4 = self->_queryMetrics;
  v5 = self->_initializationMetrics;
  v6 = self->_zdrLocationsLiveMetrics;
  v7 = self->_zdrLocationsCurationMetrics;
  if (v3)
  {
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = objc_alloc_init(RTAuthorizedLocationCurationMetrics);
    if (v5)
    {
LABEL_3:
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  v5 = objc_alloc_init(RTAuthorizedLocationDatabaseInitializationMetrics);
  if (v4)
  {
LABEL_4:
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_14:
    v6 = objc_alloc_init(RTAuthorizedLocationZDRLocationLiveMetrics);
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_13:
  v4 = objc_alloc_init(RTAuthorizedLocationQueryMetrics);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v7)
  {
    goto LABEL_6;
  }

LABEL_15:
  v7 = objc_alloc_init(RTAuthorizedLocationZDRLocationCurationMetrics);
LABEL_6:
  [(RTAuthorizedLocationQueryMetrics *)v4 userTimeOffsetHours];
  v9 = v8;
  [(RTAuthorizedLocationQueryMetrics *)v4 userTimeOffsetHours];
  v11 = v10 <= 0.0;
  v12 = -0.5;
  if (!v11)
  {
    v12 = 0.5;
  }

  v13 = (v12 + (v9 * 10.0)) * 0.1;
  [(RTAuthorizedLocationMetrics *)self timeSinceDaemonStart];
  v15 = fmin(floor(v14 / 3600.0), 100.0);
  v94[0] = @"MaxCumulativeDwellTimeForNotFamiliarLois";
  v16 = MEMORY[0x277CCABB0];
  [(RTAuthorizedLocationCurationMetrics *)v3 maxCumulativeDwellTimeForNotFamiliarLoiHours];
  v93 = [v16 numberWithFloat:?];
  v95[0] = v93;
  v94[1] = @"MaxUniqueVisitDaysForNotFamiliarLois";
  v92 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationCurationMetrics maxUniqueVisitDaysForNotFamiliarLois](v3, "maxUniqueVisitDaysForNotFamiliarLois")}];
  v95[1] = v92;
  v94[2] = @"AgeDaysRegistry";
  v91 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationCurationMetrics ageDaysRegistry](v3, "ageDaysRegistry")}];
  v95[2] = v91;
  v94[3] = @"AgeDaysFirstAnyLoiVisit";
  v90 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationCurationMetrics ageDaysFirstAnyLoiVisit](v3, "ageDaysFirstAnyLoiVisit")}];
  v95[3] = v90;
  v94[4] = @"AgeDaysFirstTopLoiVisit";
  v89 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationCurationMetrics ageDaysFirstTopLoiVisit](v3, "ageDaysFirstTopLoiVisit")}];
  v95[4] = v89;
  v94[5] = @"AgeDaysFirstTopLoiRegisteredVisit";
  v88 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationCurationMetrics ageDaysFirstTopLoiRegisteredVisit](v3, "ageDaysFirstTopLoiRegisteredVisit")}];
  v95[5] = v88;
  v94[6] = @"AgeDaysFirstTopLoiGeoVisit";
  v87 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationCurationMetrics ageDaysFirstTopLoiGeoVisit](v3, "ageDaysFirstTopLoiGeoVisit")}];
  v95[6] = v87;
  v94[7] = @"VisitRegistrationFraction";
  v17 = MEMORY[0x277CCABB0];
  [(RTAuthorizedLocationCurationMetrics *)v3 visitRegistrationFraction];
  v86 = [v17 numberWithFloat:?];
  v95[7] = v86;
  v94[8] = @"RegistrationUsesBestTimeFraction";
  v18 = MEMORY[0x277CCABB0];
  [(RTAuthorizedLocationCurationMetrics *)v3 registrationUsesBestTimeFraction];
  v85 = [v18 numberWithFloat:?];
  v95[8] = v85;
  v94[9] = @"TotalNumberOfVisitsToTopLOIWithKnownTechnology";
  v84 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationCurationMetrics visitsToTopLOIWithTechAvailabilityKnown](v3, "visitsToTopLOIWithTechAvailabilityKnown")}];
  v95[9] = v84;
  v94[10] = @"FractionOfVisitsToTopLOIWithGPS";
  v19 = MEMORY[0x277CCABB0];
  [(RTAuthorizedLocationCurationMetrics *)v3 fractionOfVisitsToTopLOIWithGPS];
  v83 = [v19 numberWithFloat:?];
  v95[10] = v83;
  v94[11] = @"FractionOfVisitsToTopLOIWithWiFiHI";
  v20 = MEMORY[0x277CCABB0];
  [(RTAuthorizedLocationCurationMetrics *)v3 fractionOfVisitsToTopLOIWithWiFiHI];
  v82 = [v20 numberWithFloat:?];
  v95[11] = v82;
  v94[12] = @"EraseInstallInitializationAttemptCount";
  v81 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationDatabaseInitializationMetrics eraseInstallInitializationAttemptCount](v5, "eraseInstallInitializationAttemptCount")}];
  v95[12] = v81;
  v94[13] = @"EraseInstallInitializationCompletionTimeHours";
  v80 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationDatabaseInitializationMetrics eraseInstallInitializationCompletionTimeHours](v5, "eraseInstallInitializationCompletionTimeHours")}];
  v95[13] = v80;
  v94[14] = @"VisitsRegisteredDuringEraseInstallInitialization";
  v79 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationDatabaseInitializationMetrics numberOfVisitsRegisteredDuringEraseInstallInitialization](v5, "numberOfVisitsRegisteredDuringEraseInstallInitialization")}];
  v95[14] = v79;
  v94[15] = @"FamiliarLoisGeneratedDuringEraseInstallInitialization";
  v78 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationDatabaseInitializationMetrics numberOfALOIsGeneratedDuringEraseInstallInitialization](v5, "numberOfALOIsGeneratedDuringEraseInstallInitialization")}];
  v95[15] = v78;
  v94[16] = @"DaemonResponseLatencyMs";
  v21 = MEMORY[0x277CCABB0];
  [(RTAuthorizedLocationQueryMetrics *)v4 daemonResponseLatencyMs];
  v77 = [v21 numberWithFloat:?];
  v95[16] = v77;
  v94[17] = @"LoiFamiliarityRank";
  v76 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationQueryMetrics loiFamiliarityRank](v4, "loiFamiliarityRank")}];
  v95[17] = v76;
  v94[18] = @"NormalizedDistanceToCentroid";
  v22 = MEMORY[0x277CCABB0];
  [(RTAuthorizedLocationQueryMetrics *)v4 normalizedDistanceToCentroid];
  v75 = [v22 numberWithFloat:?];
  v95[18] = v75;
  v94[19] = @"NumFamiliarLoi";
  v74 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationQueryMetrics numFamiliarLois](v4, "numFamiliarLois")}];
  v95[19] = v74;
  v94[20] = @"RejectionReasonCode";
  v73 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationQueryMetrics rejectionReasonCode](v4, "rejectionReasonCode")}];
  v95[20] = v73;
  v94[21] = @"IsLoiHistoricallyLocationStarved";
  v72 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTAuthorizedLocationQueryMetrics isHistoricallyALowDiversityLocation](v4, "isHistoricallyALowDiversityLocation")}];
  v95[21] = v72;
  v94[22] = @"ResponseValue";
  v71 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTAuthorizedLocationQueryMetrics responseValue](v4, "responseValue")}];
  v95[22] = v71;
  v94[23] = @"TechnologyAvailability";
  v70 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationQueryMetrics technologyAvailability](v4, "technologyAvailability")}];
  v95[23] = v70;
  v94[24] = @"UserTimeOffset";
  *&v23 = v13;
  v69 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  v95[24] = v69;
  v94[25] = @"VisitDwell";
  v24 = MEMORY[0x277CCABB0];
  [(RTAuthorizedLocationQueryMetrics *)v4 visitDwellMinutes];
  v68 = [v24 numberWithFloat:?];
  v95[25] = v68;
  v94[26] = @"LocationAgeMinutes";
  v67 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationQueryMetrics locationAgeMinutes](v4, "locationAgeMinutes")}];
  v95[26] = v67;
  v94[27] = @"HistoricalRejectionReasonCode";
  v66 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationQueryMetrics historicalRejectionReasonCode](v4, "historicalRejectionReasonCode")}];
  v95[27] = v66;
  v94[28] = @"HistoricalRejectionSpeedMps";
  v25 = MEMORY[0x277CCABB0];
  [(RTAuthorizedLocationQueryMetrics *)v4 historicalRejectionSpeedMps];
  v65 = [v25 numberWithFloat:?];
  v95[28] = v65;
  v94[29] = @"ConfirmationTriggerReason";
  v64 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationQueryMetrics authorizedLocationConfirmationTriggerReason](v4, "authorizedLocationConfirmationTriggerReason")}];
  v95[29] = v64;
  v94[30] = @"CausedLocationRequest";
  v63 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTAuthorizedLocationQueryMetrics isLocationRequestedPeriodically](v4, "isLocationRequestedPeriodically")}];
  v95[30] = v63;
  v94[31] = @"TimeSinceLastPeriodicLocRequest";
  v26 = MEMORY[0x277CCABB0];
  [(RTAuthorizedLocationQueryMetrics *)v4 timeSinceLastPeriodicLocRequest];
  v62 = [v26 numberWithDouble:?];
  v95[31] = v62;
  v94[32] = @"LastConfirmationRejectionReasonCode";
  v61 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationQueryMetrics lastConfirmationRejectionReasonCode](v4, "lastConfirmationRejectionReasonCode")}];
  v95[32] = v61;
  v94[33] = @"DurationBetweenTwoConfirmationAlgoScheduling";
  v27 = MEMORY[0x277CCABB0];
  [(RTAuthorizedLocationQueryMetrics *)v4 durationBetweenTwoConfirmationAlgoScheduling_s];
  v60 = [v27 numberWithDouble:?];
  v95[33] = v60;
  v94[34] = @"TimeSincePreviousXPCSchedule";
  v28 = MEMORY[0x277CCABB0];
  [(RTAuthorizedLocationQueryMetrics *)v4 timeSincePreviousXPCSchedule];
  v59 = [v28 numberWithDouble:?];
  v95[34] = v59;
  v94[35] = @"TimeSinceLastUserQuery";
  v29 = MEMORY[0x277CCABB0];
  [(RTAuthorizedLocationQueryMetrics *)v4 timeSinceLastUserQuery];
  v57 = [v29 numberWithDouble:?];
  v95[35] = v57;
  v94[36] = @"LocationServicesEnabled";
  v56 = [MEMORY[0x277CCABB0] numberWithBool:self->_locationServicesEnabled];
  v95[36] = v56;
  v94[37] = @"RoutineEnabled";
  v54 = [MEMORY[0x277CCABB0] numberWithBool:self->_routineEnabled];
  v95[37] = v54;
  v94[38] = @"TimeSinceDaemonStartHours";
  v52 = [MEMORY[0x277CCABB0] numberWithInt:v15];
  v95[38] = v52;
  v94[39] = @"ZdrConfirmationStatus";
  v51 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationZDRLocationLiveMetrics zdrConfirmationStatus](v6, "zdrConfirmationStatus")}];
  v95[39] = v51;
  v94[40] = @"ZdrConfirmationStatusCode";
  v50 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationZDRLocationLiveMetrics zdrConfirmationStatusCode](v6, "zdrConfirmationStatusCode")}];
  v95[40] = v50;
  v94[41] = @"DistanceBetweenZDRToUserLocationMeters";
  v30 = MEMORY[0x277CCABB0];
  [(RTAuthorizedLocationZDRLocationLiveMetrics *)v6 distanceBetweenZDRToUserLocation_m];
  v49 = [v30 numberWithDouble:?];
  v95[41] = v49;
  v94[42] = @"ZdrComputationTimeSeconds";
  v31 = MEMORY[0x277CCABB0];
  [(RTAuthorizedLocationZDRLocationLiveMetrics *)v6 zdrComputationTime_s];
  v48 = [v31 numberWithDouble:?];
  v95[42] = v48;
  v94[43] = @"IsVisitUsedForZdrConfirmation";
  v47 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTAuthorizedLocationZDRLocationLiveMetrics isVisitUsedForZdrConfirmation](v6, "isVisitUsedForZdrConfirmation")}];
  v95[43] = v47;
  v94[44] = @"ZdrConfirmedPlaceType";
  v46 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationZDRLocationLiveMetrics zdrConfirmationPlaceType](v6, "zdrConfirmationPlaceType")}];
  v95[44] = v46;
  v94[45] = @"ZdrLocationTypeWhenALOIConfirmed";
  v45 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationZDRLocationLiveMetrics confirmedALOIMatchedWithZDRType](v6, "confirmedALOIMatchedWithZDRType")}];
  v95[45] = v45;
  v94[46] = @"TimeSinceEraseInstallSeconds";
  v32 = MEMORY[0x277CCABB0];
  [(RTAuthorizedLocationZDRLocationLiveMetrics *)v6 timeSinceEraseInstall_s];
  [v32 numberWithDouble:?];
  v44 = v58 = v5;
  v95[46] = v44;
  v94[47] = @"NumberOfZDRLocationsHome";
  [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationZDRLocationCurationMetrics numberOfZDRLocationsHome](v7, "numberOfZDRLocationsHome")}];
  v33 = v55 = v6;
  v95[47] = v33;
  v94[48] = @"NumberOfZDRLocationsWork";
  v34 = [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationZDRLocationCurationMetrics numberOfZDRLocationsWork](v7, "numberOfZDRLocationsWork")}];
  v95[48] = v34;
  v94[49] = @"NumberOfZDRLocationsSchool";
  [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationZDRLocationCurationMetrics numberOfZDRLocationsSchool](v7, "numberOfZDRLocationsSchool")}];
  v35 = v53 = v3;
  v95[49] = v35;
  v94[50] = @"TotalZdrLocations";
  [MEMORY[0x277CCABB0] numberWithInt:{-[RTAuthorizedLocationZDRLocationCurationMetrics totalZDRLocations](v7, "totalZDRLocations")}];
  v37 = v36 = v7;
  v95[50] = v37;
  v94[51] = @"IsZDRHomeLearnedALoi";
  v38 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTAuthorizedLocationZDRLocationCurationMetrics isZDRHomeLearnedALoi](v36, "isZDRHomeLearnedALoi")}];
  v95[51] = v38;
  v94[52] = @"IsZDRWorkLearnedALoi";
  v39 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTAuthorizedLocationZDRLocationCurationMetrics isZDRWorkLearnedALoi](v36, "isZDRWorkLearnedALoi")}];
  v95[52] = v39;
  v94[53] = @"IsZDRSchoolLearnedALoi";
  v40 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTAuthorizedLocationZDRLocationCurationMetrics isZDRSchoolLearnedALoi](v36, "isZDRSchoolLearnedALoi")}];
  v95[53] = v40;
  v94[54] = @"IsZDRSetupLearnedALoi";
  v41 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTAuthorizedLocationZDRLocationCurationMetrics isZDRSetupLearnedALoi](v36, "isZDRSetupLearnedALoi")}];
  v95[54] = v41;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:55];

  return v43;
}

- (void)printMetricDictionary:(id)dictionary
{
  v21 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [dictionaryCopy countByEnumeratingWithState:&v12 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          v10 = _rt_log_facility_get_os_log(RTLogFacilityAuthorizedLocation);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [v4 objectForKeyedSubscript:v9];
            *buf = 138478083;
            v17 = v9;
            v18 = 2113;
            v19 = v11;
            _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "Metric,%{private}@,%{private}@", buf, 0x16u);
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v20 count:16];
      }

      while (v6);
    }
  }
}

- (void)submitToCoreAnalytics
{
  if (self->_queryMetrics)
  {
    v3 = [MEMORY[0x277CBEAA8] now];
    lastQueryMetricSubmissionDate = self->_lastQueryMetricSubmissionDate;
    self->_lastQueryMetricSubmissionDate = v3;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__RTAuthorizedLocationMetrics_submitToCoreAnalytics__block_invoke;
  aBlock[3] = &unk_2788C9998;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = [v6 initWithCString:RTAnalyticsEventDiscreteLoiFamiliarity encoding:1];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __52__RTAuthorizedLocationMetrics_submitToCoreAnalytics__block_invoke_2;
  v15 = &unk_2788C8D18;
  v16 = v7;
  v17 = v5;
  v8 = v7;
  v9 = v5;
  v10 = _Block_copy(&v12);
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v8, v12, v13, v14, v15];
  AnalyticsSendEventLazy();
}

id __52__RTAuthorizedLocationMetrics_submitToCoreAnalytics__block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  log_analytics_submission(*(a1 + 32), v2);

  return v2;
}

@end