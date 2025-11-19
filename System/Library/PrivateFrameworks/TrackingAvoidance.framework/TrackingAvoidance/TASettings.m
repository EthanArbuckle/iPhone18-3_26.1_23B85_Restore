@interface TASettings
+ (id)convertEnabledLoiTypesValueContentToNSNumberType:(id)a3;
+ (id)getArraySettingsKeys;
+ (id)getBooleanSettingsKeys;
+ (id)getDoubleSettingsKeys;
+ (id)getStringSettingsKeys;
+ (id)getUnsignedIntegerSettingsKeys;
- (TASettings)initWithSettings:(id)a3;
- (id)description;
- (void)description;
- (void)setSettings:(id)a3;
@end

@implementation TASettings

- (TASettings)initWithSettings:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TASettings;
  v5 = [(TASettings *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(TASettings *)v5 setSettings:v4];
    v7 = v6;
  }

  return v6;
}

- (void)setSettings:(id)a3
{
  v146 = a3;
  v3 = [v146 objectForKeyedSubscript:@"TAEnable"];
  v125 = v3;
  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  self->_trackingAvoidanceEnabled = v4;
  v5 = [v146 objectForKeyedSubscript:@"TAEnablePD"];
  v124 = v5;
  if (v5)
  {
    LOBYTE(v5) = [v5 BOOLValue];
  }

  self->_peopleDensityEnabled = v5;
  v6 = [v146 objectForKeyedSubscript:@"TAScanMaxDailyRequests"];
  v123 = v6;
  if (v6)
  {
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 50;
  }

  self->_maximumDailyScans = v7;
  v8 = [v146 objectForKeyedSubscript:@"TANotificationThrottleHours"];
  v122 = v8;
  if (v8)
  {
    v9 = [v8 unsignedIntegerValue];
  }

  else
  {
    v9 = 24;
  }

  self->_notificationThrottleHours = v9;
  v10 = [v146 objectForKeyedSubscript:@"TANotificationThrottleMax"];
  v121 = v10;
  if (v10)
  {
    v11 = [v10 unsignedIntegerValue];
  }

  else
  {
    v11 = -1;
  }

  self->_notificationThrottleMaxPerPeriod = v11;
  v12 = [v146 objectForKeyedSubscript:@"TAPersistenceInterval"];
  v120 = v12;
  if (v12)
  {
    [v12 doubleValue];
  }

  else
  {
    v13 = 3600.0;
  }

  self->_persistenceInterval = v13;
  v14 = [v146 objectForKeyedSubscript:@"TAFutureEventToleranceInterval"];
  v119 = v14;
  if (v14)
  {
    [v14 doubleValue];
  }

  else
  {
    v15 = 86400.0;
  }

  self->_futureEventToleranceInterval = v15;
  v16 = [v146 objectForKeyedSubscript:@"TASettingsVersion"];
  v118 = v16;
  if (v16)
  {
    v17 = [v16 unsignedIntValue];
  }

  else
  {
    v17 = 1;
  }

  self->_settingsVersion = v17;
  v18 = [v146 objectForKeyedSubscript:@"TAAISFetchEnable"];
  v117 = v18;
  if (v18)
  {
    v19 = [v18 BOOLValue];
  }

  else
  {
    v19 = 1;
  }

  self->_aisFetchEnabled = v19;
  v20 = [TAFilterGeneralSettings alloc];
  v21 = [v146 objectForKeyedSubscript:@"TAFilterGeneralDurationOfConsideration"];
  v143 = [v146 objectForKeyedSubscript:@"TAFilterGeneralThresholdOfLocationRelevance"];
  v141 = [v146 objectForKeyedSubscript:@"TAFilterGeneralThresholdOfSignificantDuration"];
  v139 = [v146 objectForKeyedSubscript:@"TAFilterGeneralThresholdOfSignificantDistance"];
  v136 = [v146 objectForKeyedSubscript:@"TAFilterGeneralCapOfReasonableWalkingSpeed"];
  v133 = [v146 objectForKeyedSubscript:@"TAFilterGeneralAllowNavGeoAsPrivateVehicleHint"];
  v22 = [v146 objectForKeyedSubscript:@"TAFilterGeneralVehicularImmediacyType"];
  v23 = [v146 objectForKeyedSubscript:@"TAFilterGeneralBeepOnMoveVehicularImmediacyType"];
  v130 = [v146 objectForKeyedSubscript:@"TAFilterGeneralBeepOnMovePedestrianImmediacyType"];
  v24 = [v146 objectForKeyedSubscript:@"TAFilterGeneralNextPLOIVehicularImmediacyType"];
  v25 = [v146 objectForKeyedSubscript:@"TAFilterGeneralNextPLOIPedestrianImmediacyType"];
  v26 = [v146 objectForKeyedSubscript:@"TAFilterGeneralNextBeepOnMoveConsiderationTimeInterval"];
  v27 = [(TAFilterGeneralSettings *)v20 initWithDurationOfConsiderationOrDefault:v21 thresholdOfLocationRelevanceOrDefault:v143 thresholdOfSignificantDurationOrDefault:v141 thresholdOfSignificantDistanceOrDefault:v139 capOfReasonableWalkingSpeedOrDefault:v136 allowNavGeoHintAsPrivateVehicleHintOrDefault:v133 vehicularImmediacyTypeOrDefault:v22 beepOnMoveVehicularImmediacyTypeOrDefault:v23 beepOnMovePedestrianImmediacyTypeOrDefault:v130 nextPLOIVehicularImmediacyTypeOrDefault:v24 nextPLOIPedestrianImmediacyTypeOrDefault:v25 beepOnMoveConsiderationTimeIntervalOrDefault:v26];
  filterGeneralSettings = self->_filterGeneralSettings;
  self->_filterGeneralSettings = v27;

  v116 = [v146 objectForKeyedSubscript:@"TAFilterVisitsEnabledLoiTypes"];
  v144 = [TASettings convertEnabledLoiTypesValueContentToNSNumberType:v116];
  v29 = [TAFilterVisitsSettings alloc];
  v30 = [v146 objectForKeyedSubscript:@"TAFilterVisitsMaxDuration"];
  v31 = [v146 objectForKeyedSubscript:@"TAFilterVisitsMinInterVisitDistance"];
  v32 = [v146 objectForKeyedSubscript:@"TAFilterVisitsMinNSigma"];
  v33 = [v146 objectForKeyedSubscript:@"TAFilterVisitsEntryDisplayOnBudget"];
  v34 = [v146 objectForKeyedSubscript:@"TAFilterVisitsExitDisplayOnBudget"];
  v35 = [v146 objectForKeyedSubscript:@"TAFilterVisitsMinObservationInterval"];
  v36 = [v146 objectForKeyedSubscript:@"TAFilterVisitsThreeVisitImmediacyTypeKey"];
  v37 = [(TAFilterVisitsSettings *)v29 initWithMaxSuspiciousDurationOrDefault:v30 minInterVisitDistanceOrDefault:v31 minNSigmaBetweenVisitsOrDefault:v32 entryDisplayOnBudgetOrDefault:v33 exitDisplayOnBudgetOrDefault:v34 sensitiveLOITypesOrDefault:v144 minObservationIntervalOrDefault:v35 threeVisitImmediacyTypeOrDefault:v36];
  filterVisitsSettings = self->_filterVisitsSettings;
  self->_filterVisitsSettings = v37;

  v115 = [v146 objectForKeyedSubscript:@"TAFilterSingleVisitEnabledLoiTypes"];
  v142 = [TASettings convertEnabledLoiTypesValueContentToNSNumberType:v115];
  v39 = [TAFilterSingleVisitSettings alloc];
  v40 = [v146 objectForKeyedSubscript:@"TAFilterSingleVisitThresholdOfSignificantDuration"];
  v41 = [v146 objectForKeyedSubscript:@"TAFilterSingleVisitThresholdOfSignificantDistance"];
  v42 = self->_filterVisitsSettings;
  v43 = [v146 objectForKeyedSubscript:@"TAFilterArrivingWorkImmediacyType"];
  v44 = [(TAFilterSingleVisitSettings *)v39 initWithThresholdOfSignificantDurationOrDefault:v40 thresholdOfSignificantDistanceOrDefault:v41 filterVisitsSettingsOrDefault:v42 enabledLoiTypesOrDefault:v142 arrivingWorkImmediacyTypeOrDefault:v43];
  filterSingleVisitSettings = self->_filterSingleVisitSettings;
  self->_filterSingleVisitSettings = v44;

  v114 = [v146 objectForKeyedSubscript:@"TAFilterLeavingLOIEnabledLoiTypes"];
  v140 = [TASettings convertEnabledLoiTypesValueContentToNSNumberType:v114];
  v46 = [TAFilterLeavingLOISettings alloc];
  v47 = [v146 objectForKeyedSubscript:@"TAFilterLeavingLOIThresholdOfSignificantDuration"];
  v48 = [v146 objectForKeyedSubscript:@"TAFilterLeavingLOIThresholdOfSignificantDistance"];
  v49 = self->_filterVisitsSettings;
  v50 = [v146 objectForKeyedSubscript:@"TAFilterLeavingHomeImmediacyType"];
  v51 = [v146 objectForKeyedSubscript:@"TAFilterLeavingWorkImmediacyType"];
  v52 = [(TAFilterLeavingLOISettings *)v46 initWithThresholdOfSignificantDurationOrDefault:v47 thresholdOfSignificantDistanceOrDefault:v48 filterVisitsSettingsOrDefault:v49 enabledLoiTypesOrDefault:v140 leavingHomeImmediacyTypeOrDefault:v50 leavingWorkImmediacyTypeOrDefault:v51];
  filterLeavingLOISettings = self->_filterLeavingLOISettings;
  self->_filterLeavingLOISettings = v52;

  v54 = [TAEventBufferSettings alloc];
  v55 = [v146 objectForKeyedSubscript:@"TAEventBufferCapacity"];
  v56 = [v146 objectForKeyedSubscript:@"TAEventBufferTimeIntervalOfRetention"];
  v57 = [(TAEventBufferSettings *)v54 initWithBufferCapacityOrDefault:v55 bufferTimeIntervalOfRetentionOrDefault:v56];
  eventBufferSettings = self->_eventBufferSettings;
  self->_eventBufferSettings = v57;

  v59 = [TAVisitStateSettings alloc];
  v137 = [v146 objectForKeyedSubscript:@"TAVisitStateVisitSnapshotCapacity"];
  v134 = [v146 objectForKeyedSubscript:@"TAVisitStateVisitDisplayBufferCapacity"];
  v131 = [v146 objectForKeyedSubscript:@"TAVisitStateInterVisitMetricSnapshotCapacity"];
  v128 = [v146 objectForKeyedSubscript:@"TAVisitStateInterVisitSnapshotUpdateInterval"];
  v60 = objc_alloc(MEMORY[0x277CCABB0]);
  [(TAFilterGeneralSettings *)self->_filterGeneralSettings thresholdOfLocationRelevance];
  v126 = [v60 initWithDouble:?];
  v112 = [v146 objectForKeyedSubscript:@"TAVisitStateSnapshotBufferTimeIntervalOfRetention"];
  v61 = [v146 objectForKeyedSubscript:@"TAVisitStateLoiBufferPerTypeCapacity"];
  v62 = [v146 objectForKeyedSubscript:@"TAVisitStateLoiBufferTimeIntervalOfRetention"];
  v63 = [v146 objectForKeyedSubscript:@"TAVisitStateMaxNSigma"];
  v64 = [v146 objectForKeyedSubscript:@"TAVisitStateQualitySnapshotDwellDuration"];
  v110 = [v146 objectForKeyedSubscript:@"TAVisitStateQualitySnapshotDisplayOnDuration"];
  v65 = [v146 objectForKeyedSubscript:@"TAVisitStateUniqueUTObservationCapPerVisit"];
  v66 = [(TAVisitStateSettings *)v59 initWithVisitSnapshotCapacityOrDefault:v137 visitDisplayBufferCapacityOrDefault:v134 interVisitMetricSnapshotCapacityOrDefault:v131 interVisitSnapshotUpdateIntervalOrDefault:v128 thresholdOfLocationRelevanceOrDefault:v126 snapshotBufferTimeIntervalOfRetentionOrDefault:v112 loiBufferPerTypeCapacityOrDefault:v61 loiBufferTimeIntervalOfRetentionOrDefault:v62 maxNSigmaBetweenLastLocationAndVisitOrDefault:v63 qualitySnapshotDwellDurationOrDefault:v64 qualitySnapshotDisplayOnDurationOrDefault:v110 uniqueUTObservationCapPerVisitOrDefault:v65 sensitiveLOITypesOrDefault:v144];
  visitStateSettings = self->_visitStateSettings;
  self->_visitStateSettings = v66;

  v108 = [TADeviceRecordSettings alloc];
  v138 = [v146 objectForKeyedSubscript:@"TADeviceRecordExpiryTimeInterval"];
  v135 = [v146 objectForKeyedSubscript:@"TADeviceRecordFutureExpiryTimeInterval"];
  v132 = [v146 objectForKeyedSubscript:@"TADeviceRecordPurgeTimeInterval"];
  v113 = [v146 objectForKeyedSubscript:@"TADeviceRecordKeepAliveInterval"];
  v111 = [v146 objectForKeyedSubscript:@"TADeviceRecordMinimumStagingInterval"];
  v109 = [v146 objectForKeyedSubscript:@"TADeviceRecordStagingBackstopHour"];
  v129 = [v146 objectForKeyedSubscript:@"TADeviceRecordAssumedKeyRollHour"];
  v68 = [v146 objectForKeyedSubscript:@"TADeviceRecordScanInterval"];
  v127 = [v146 objectForKeyedSubscript:@"TADeviceRecordSurfaceImmediatelyBeepOnMove"];
  v107 = [v146 objectForKeyedSubscript:@"TADeviceRecordsurfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll"];
  v106 = [v146 objectForKeyedSubscript:@"TADeviceRecordMaxExpectedHELEWildInterval"];
  v69 = [v146 objectForKeyedSubscript:@"TADeviceRecordMaxExpectedDurianWildInterval"];
  v105 = [v146 objectForKeyedSubscript:@"TADeviceRecordShouldAlertHELEImmediatelyForImmediateTypes"];
  v104 = [v146 objectForKeyedSubscript:@"TADeviceRecordMinimumHELEStagingInterval"];
  v103 = [v146 objectForKeyedSubscript:@"TADeviceRecordStagingHELEBackstopHour"];
  v102 = [v146 objectForKeyedSubscript:@"TADeviceRecordsurfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll"];
  v101 = [v146 objectForKeyedSubscript:@"TADeviceRecordHyperHELEStagingInterval"];
  v70 = [v146 objectForKeyedSubscript:@"TADeviceRecordHyperStagingInterval"];
  v71 = [(TADeviceRecordSettings *)v108 initWithExpiryTimeIntervalOrDefault:v138 futureExpiryTimeIntervalOrDefault:v135 purgeTimeIntervalOrDefault:v132 keepAliveIntervalOrDefault:v113 minimumStagingIntervalOrDefault:v111 stagingBackstopHourOrDefault:v109 assumedKeyRollHourOrDefault:v129 scanIntervalOrDefault:v68 surfaceImmediatelyBeepOnMoveOrDefault:v127 surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyrollOrDefault:v107 maxExpectedHELEWildIntervalOrDefault:v106 maxExpectedDurianWildIntervalOrDefault:v69 shouldAlertHELEImmediatelyForImmediateTypesOrDefault:v105 minimumHELEStagingIntervalOrDefault:v104 stagingHELEBackstopHourOrDefault:v103 surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyrollOrDefault:v102 hyperHELEStagingIntervalOrDefault:v101 hyperStagingIntervalOrDefault:v70];
  deviceRecordSettings = self->_deviceRecordSettings;
  self->_deviceRecordSettings = v71;

  v73 = [TAScanRequestSettings alloc];
  v74 = [v146 objectForKeyedSubscript:@"TAScanMinVisitEntryDisplayOnDuration"];
  v75 = [v146 objectForKeyedSubscript:@"TAScanMinInterVisitDisplayOnDuration"];
  v76 = [v146 objectForKeyedSubscript:@"TAScanInterVisitDelay"];
  v77 = [v146 objectForKeyedSubscript:@"TAScanMaxInterVisitRequests"];
  v78 = [(TAScanRequestSettings *)v73 initWithMinVisitEntryDisplayOnDurationOrDefault:v74 minInterVisitDisplayOnDurationOrDefault:v75 interVisitScanDelayOrDefault:v76 maxInterVisitScanRequestsOrDefault:v77];
  scanRequestSettings = self->_scanRequestSettings;
  self->_scanRequestSettings = v78;

  v80 = [TATrackingAvoidanceServiceSettings alloc];
  v81 = [v146 objectForKeyedSubscript:@"TAServiceEnableTAFilterGeneral"];
  v82 = [v146 objectForKeyedSubscript:@"TAServiceEnableTAFilterVisits"];
  v83 = [v146 objectForKeyedSubscript:@"TAServiceEnableTAFilterSingleVisit"];
  v84 = [v146 objectForKeyedSubscript:@"TAServiceEnableTAFilterLeavingLOI"];
  v85 = [v146 objectForKeyedSubscript:@"TAServiceClassificationTimeInterval"];
  v86 = [v146 objectForKeyedSubscript:@"TAServiceDailyAlertLimit"];
  v87 = [(TATrackingAvoidanceServiceSettings *)v80 initWithEnableTAFilterGeneralOrDefault:v81 enableTAFilterVisitsOrDefault:v82 enableTAFilterSingleVisitOrDefault:v83 enableTAFilterLeavingLOIOrDefault:v84 classificationTimeIntervalOrDefault:v85 dailyAccessoryAlertLimitOrDefault:v86];
  serviceSettings = self->_serviceSettings;
  self->_serviceSettings = v87;

  v89 = [TAAnalyticsManagerSettings alloc];
  v90 = [v146 objectForKeyedSubscript:@"TAAnalyticsManagerEnableSubmission"];
  v91 = [(TAAnalyticsManagerSettings *)v89 initWithEnableSubmissionOrDefault:v90 andSettingsVersion:self->_settingsVersion];
  analyticsManagerSettings = self->_analyticsManagerSettings;
  self->_analyticsManagerSettings = v91;

  v93 = [v146 objectForKeyedSubscript:@"TAPersistenceDirectory"];
  if (v93)
  {
    v94 = MEMORY[0x277CBEBC0];
    v95 = [v146 objectForKeyedSubscript:@"TAPersistenceDirectory"];
    v96 = [v94 fileURLWithPath:v95];
  }

  else
  {
    v96 = 0;
  }

  v97 = [TAPersistenceManagerSettings alloc];
  v98 = [v146 objectForKeyedSubscript:@"TAPersistenceStoreFileName"];
  v99 = [(TAPersistenceManagerSettings *)v97 initWithDirectoryURLOrDefault:v96 storeFileNameOrDefault:v98];
  persistenceManagerSettings = self->_persistenceManagerSettings;
  self->_persistenceManagerSettings = v99;
}

+ (id)convertEnabledLoiTypesValueContentToNSNumberType:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB58] set];
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v5 setNumberStyle:1];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 copy];
          [v4 addObject:v11];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v11 = [v5 numberFromString:{v10, v14}];
          if (v11)
          {
            [v4 addObject:v11];
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)getBooleanSettingsKeys
{
  v5[13] = *MEMORY[0x277D85DE8];
  v5[0] = @"TAEnable";
  v5[1] = @"TAEnablePD";
  v5[2] = @"TAFilterGeneralAllowNavGeoAsPrivateVehicleHint";
  v5[3] = @"TAServiceEnableTAFilterGeneral";
  v5[4] = @"TAServiceEnableTAFilterVisits";
  v5[5] = @"TAServiceEnableTAFilterSingleVisit";
  v5[6] = @"TAServiceEnableTAFilterLeavingLOI";
  v5[7] = @"TAAnalyticsManagerEnableSubmission";
  v5[8] = @"TADeviceRecordSurfaceImmediatelyBeepOnMove";
  v5[9] = @"TADeviceRecordShouldAlertHELEImmediatelyForImmediateTypes";
  v5[10] = @"TAAISFetchEnable";
  v5[11] = @"TADeviceRecordsurfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll";
  v5[12] = @"TADeviceRecordsurfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:13];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)getUnsignedIntegerSettingsKeys
{
  v5[26] = *MEMORY[0x277D85DE8];
  v5[0] = @"TAEventBufferCapacity";
  v5[1] = @"TAVisitStateVisitSnapshotCapacity";
  v5[2] = @"TAVisitStateInterVisitMetricSnapshotCapacity";
  v5[3] = @"TAFilterVisitsMinNSigma";
  v5[4] = @"TAVisitStateMaxNSigma";
  v5[5] = @"TAVisitStateLoiBufferPerTypeCapacity";
  v5[6] = @"TAVisitStateVisitDisplayBufferCapacity";
  v5[7] = @"TAVisitStateUniqueUTObservationCapPerVisit";
  v5[8] = @"TAScanMaxInterVisitRequests";
  v5[9] = @"TAScanMaxDailyRequests";
  v5[10] = @"TANotificationThrottleHours";
  v5[11] = @"TANotificationThrottleMax";
  v5[12] = @"TADeviceRecordStagingBackstopHour";
  v5[13] = @"TADeviceRecordAssumedKeyRollHour";
  v5[14] = @"TADeviceRecordStagingHELEBackstopHour";
  v5[15] = @"TAFilterGeneralVehicularImmediacyType";
  v5[16] = @"TASettingsVersion";
  v5[17] = @"TAFilterLeavingHomeImmediacyType";
  v5[18] = @"TAFilterLeavingWorkImmediacyType";
  v5[19] = @"TAFilterArrivingWorkImmediacyType";
  v5[20] = @"TAFilterGeneralBeepOnMoveVehicularImmediacyType";
  v5[21] = @"TAFilterGeneralBeepOnMovePedestrianImmediacyType";
  v5[22] = @"TAFilterGeneralNextPLOIVehicularImmediacyType";
  v5[23] = @"TAFilterGeneralNextPLOIPedestrianImmediacyType";
  v5[24] = @"TAFilterVisitsThreeVisitImmediacyTypeKey";
  v5[25] = @"TAFilterGeneralNextBeepOnMoveConsiderationTimeInterval";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:26];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)getDoubleSettingsKeys
{
  v5[36] = *MEMORY[0x277D85DE8];
  v5[0] = @"TAFilterGeneralDurationOfConsideration";
  v5[1] = @"TAFilterGeneralThresholdOfLocationRelevance";
  v5[2] = @"TAFilterGeneralThresholdOfSignificantDuration";
  v5[3] = @"TAFilterGeneralThresholdOfSignificantDistance";
  v5[4] = @"TAFilterGeneralCapOfReasonableWalkingSpeed";
  v5[5] = @"TAFilterSingleVisitThresholdOfSignificantDistance";
  v5[6] = @"TAFilterSingleVisitThresholdOfSignificantDuration";
  v5[7] = @"TAFilterLeavingLOIThresholdOfSignificantDistance";
  v5[8] = @"TAFilterLeavingLOIThresholdOfSignificantDuration";
  v5[9] = @"TAFilterVisitsMaxDuration";
  v5[10] = @"TAFilterVisitsMinInterVisitDistance";
  v5[11] = @"TAFilterVisitsEntryDisplayOnBudget";
  v5[12] = @"TAFilterVisitsExitDisplayOnBudget";
  v5[13] = @"TAFilterVisitsMinObservationInterval";
  v5[14] = @"TAEventBufferTimeIntervalOfRetention";
  v5[15] = @"TAVisitStateInterVisitSnapshotUpdateInterval";
  v5[16] = @"TAVisitStateLoiBufferTimeIntervalOfRetention";
  v5[17] = @"TAVisitStateSnapshotBufferTimeIntervalOfRetention";
  v5[18] = @"TAVisitStateQualitySnapshotDwellDuration";
  v5[19] = @"TAVisitStateQualitySnapshotDisplayOnDuration";
  v5[20] = @"TADeviceRecordExpiryTimeInterval";
  v5[21] = @"TADeviceRecordPurgeTimeInterval";
  v5[22] = @"TADeviceRecordKeepAliveInterval";
  v5[23] = @"TADeviceRecordMinimumStagingInterval";
  v5[24] = @"TADeviceRecordScanInterval";
  v5[25] = @"TADeviceRecordMaxExpectedHELEWildInterval";
  v5[26] = @"TADeviceRecordMaxExpectedDurianWildInterval";
  v5[27] = @"TADeviceRecordMinimumHELEStagingInterval";
  v5[28] = @"TAScanMinVisitEntryDisplayOnDuration";
  v5[29] = @"TAScanMinInterVisitDisplayOnDuration";
  v5[30] = @"TAScanInterVisitDelay";
  v5[31] = @"TAServiceClassificationTimeInterval";
  v5[32] = @"TAPersistenceInterval";
  v5[33] = @"TAFutureEventToleranceInterval";
  v5[34] = @"TADeviceRecordHyperHELEStagingInterval";
  v5[35] = @"TADeviceRecordHyperStagingInterval";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:36];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)getStringSettingsKeys
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"TAPersistenceDirectory";
  v5[1] = @"TAPersistenceStoreFileName";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)getArraySettingsKeys
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"TAFilterSingleVisitEnabledLoiTypes";
  v5[1] = @"TAFilterVisitsEnabledLoiTypes";
  v5[2] = @"TAFilterLeavingLOIEnabledLoiTypes";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)description
{
  v131[78] = *MEMORY[0x277D85DE8];
  v130[0] = @"TAEnable";
  v127 = [MEMORY[0x277CCABB0] numberWithBool:self->_trackingAvoidanceEnabled];
  v131[0] = v127;
  v130[1] = @"TAEnablePD";
  v125 = [MEMORY[0x277CCABB0] numberWithBool:self->_peopleDensityEnabled];
  v131[1] = v125;
  v130[2] = @"TAEventBufferCapacity";
  v124 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAEventBufferSettings bufferCapacity](self->_eventBufferSettings, "bufferCapacity")}];
  v131[2] = v124;
  v130[3] = @"TAEventBufferTimeIntervalOfRetention";
  v3 = MEMORY[0x277CCABB0];
  [(TAEventBufferSettings *)self->_eventBufferSettings bufferTimeIntervalOfRetention];
  v123 = [v3 numberWithDouble:?];
  v131[3] = v123;
  v130[4] = @"TAVisitStateLoiBufferPerTypeCapacity";
  v122 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAVisitStateSettings loiBufferPerTypeCapacity](self->_visitStateSettings, "loiBufferPerTypeCapacity")}];
  v131[4] = v122;
  v130[5] = @"TAVisitStateLoiBufferTimeIntervalOfRetention";
  v4 = MEMORY[0x277CCABB0];
  [(TAVisitStateSettings *)self->_visitStateSettings loiBufferTimeIntervalOfRetention];
  v121 = [v4 numberWithDouble:?];
  v131[5] = v121;
  v130[6] = @"TAVisitStateVisitSnapshotCapacity";
  v120 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAVisitStateSettings visitSnapshotCapacity](self->_visitStateSettings, "visitSnapshotCapacity")}];
  v131[6] = v120;
  v130[7] = @"TAVisitStateVisitDisplayBufferCapacity";
  v119 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAVisitStateSettings visitDisplayBufferCapacity](self->_visitStateSettings, "visitDisplayBufferCapacity")}];
  v131[7] = v119;
  v130[8] = @"TAVisitStateInterVisitMetricSnapshotCapacity";
  v118 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAVisitStateSettings interVisitMetricSnapshotCapacity](self->_visitStateSettings, "interVisitMetricSnapshotCapacity")}];
  v131[8] = v118;
  v130[9] = @"TAVisitStateInterVisitSnapshotUpdateInterval";
  v5 = MEMORY[0x277CCABB0];
  [(TAVisitStateSettings *)self->_visitStateSettings interVisitSnapshotUpdateInterval];
  v117 = [v5 numberWithDouble:?];
  v131[9] = v117;
  v130[10] = @"TAVisitStateSnapshotBufferTimeIntervalOfRetention";
  v6 = MEMORY[0x277CCABB0];
  [(TAVisitStateSettings *)self->_visitStateSettings snapshotBufferTimeIntervalOfRetention];
  v116 = [v6 numberWithDouble:?];
  v131[10] = v116;
  v130[11] = @"TAVisitStateMaxNSigma";
  v115 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAVisitStateSettings maxNSigmaBetweenLastLocationAndVisit](self->_visitStateSettings, "maxNSigmaBetweenLastLocationAndVisit")}];
  v131[11] = v115;
  v130[12] = @"TAVisitStateQualitySnapshotDwellDuration";
  v7 = MEMORY[0x277CCABB0];
  [(TAVisitStateSettings *)self->_visitStateSettings qualitySnapshotDwellDuration];
  v114 = [v7 numberWithDouble:?];
  v131[12] = v114;
  v130[13] = @"TAVisitStateQualitySnapshotDisplayOnDuration";
  v8 = MEMORY[0x277CCABB0];
  [(TAVisitStateSettings *)self->_visitStateSettings qualitySnapshotDisplayOnDuration];
  v113 = [v8 numberWithDouble:?];
  v131[13] = v113;
  v130[14] = @"TAVisitStateUniqueUTObservationCapPerVisit";
  v112 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAVisitStateSettings uniqueUTObservationCapPerVisit](self->_visitStateSettings, "uniqueUTObservationCapPerVisit")}];
  v131[14] = v112;
  v130[15] = @"TADeviceRecordExpiryTimeInterval";
  v9 = MEMORY[0x277CCABB0];
  [(TADeviceRecordSettings *)self->_deviceRecordSettings expiryTimeInterval];
  v111 = [v9 numberWithDouble:?];
  v131[15] = v111;
  v130[16] = @"TADeviceRecordFutureExpiryTimeInterval";
  v10 = MEMORY[0x277CCABB0];
  [(TADeviceRecordSettings *)self->_deviceRecordSettings futureExpiryTimeInterval];
  v110 = [v10 numberWithDouble:?];
  v131[16] = v110;
  v130[17] = @"TADeviceRecordPurgeTimeInterval";
  v11 = MEMORY[0x277CCABB0];
  [(TADeviceRecordSettings *)self->_deviceRecordSettings purgeTimeInterval];
  v109 = [v11 numberWithDouble:?];
  v131[17] = v109;
  v130[18] = @"TADeviceRecordKeepAliveInterval";
  v12 = MEMORY[0x277CCABB0];
  [(TADeviceRecordSettings *)self->_deviceRecordSettings keepAliveInterval];
  v108 = [v12 numberWithDouble:?];
  v131[18] = v108;
  v130[19] = @"TADeviceRecordMinimumStagingInterval";
  v13 = MEMORY[0x277CCABB0];
  [(TADeviceRecordSettings *)self->_deviceRecordSettings minimumStagingInterval];
  v107 = [v13 numberWithDouble:?];
  v131[19] = v107;
  v130[20] = @"TADeviceRecordStagingBackstopHour";
  v106 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TADeviceRecordSettings stagingBackstopHour](self->_deviceRecordSettings, "stagingBackstopHour")}];
  v131[20] = v106;
  v130[21] = @"TADeviceRecordAssumedKeyRollHour";
  v105 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TADeviceRecordSettings assumedKeyRollHour](self->_deviceRecordSettings, "assumedKeyRollHour")}];
  v131[21] = v105;
  v130[22] = @"TADeviceRecordScanInterval";
  v14 = MEMORY[0x277CCABB0];
  [(TADeviceRecordSettings *)self->_deviceRecordSettings scanInterval];
  v104 = [v14 numberWithDouble:?];
  v131[22] = v104;
  v130[23] = @"TADeviceRecordSurfaceImmediatelyBeepOnMove";
  v103 = [MEMORY[0x277CCABB0] numberWithBool:{-[TADeviceRecordSettings surfaceImmediatelyBeepOnMove](self->_deviceRecordSettings, "surfaceImmediatelyBeepOnMove")}];
  v131[23] = v103;
  v130[24] = @"TADeviceRecordsurfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll";
  v102 = [MEMORY[0x277CCABB0] numberWithBool:{-[TADeviceRecordSettings surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll](self->_deviceRecordSettings, "surfaceAfterHyperStagingIntervalBetweenBackstopAndKeyroll")}];
  v131[24] = v102;
  v130[25] = @"TADeviceRecordMaxExpectedHELEWildInterval";
  v15 = MEMORY[0x277CCABB0];
  [(TADeviceRecordSettings *)self->_deviceRecordSettings maxExpectedHELEWildInterval];
  v101 = [v15 numberWithDouble:?];
  v131[25] = v101;
  v130[26] = @"TADeviceRecordMaxExpectedDurianWildInterval";
  v16 = MEMORY[0x277CCABB0];
  [(TADeviceRecordSettings *)self->_deviceRecordSettings maxExpectedDurianWildInterval];
  v100 = [v16 numberWithDouble:?];
  v131[26] = v100;
  v130[27] = @"TADeviceRecordShouldAlertHELEImmediatelyForImmediateTypes";
  v99 = [MEMORY[0x277CCABB0] numberWithBool:{-[TADeviceRecordSettings shouldAlertHELEImmediatelyForImmediateTypes](self->_deviceRecordSettings, "shouldAlertHELEImmediatelyForImmediateTypes")}];
  v131[27] = v99;
  v130[28] = @"TADeviceRecordMinimumHELEStagingInterval";
  v17 = MEMORY[0x277CCABB0];
  [(TADeviceRecordSettings *)self->_deviceRecordSettings minimumHELEStagingInterval];
  v98 = [v17 numberWithDouble:?];
  v131[28] = v98;
  v130[29] = @"TADeviceRecordStagingHELEBackstopHour";
  v97 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TADeviceRecordSettings stagingHELEBackstopHour](self->_deviceRecordSettings, "stagingHELEBackstopHour")}];
  v131[29] = v97;
  v130[30] = @"TADeviceRecordsurfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll";
  v96 = [MEMORY[0x277CCABB0] numberWithBool:{-[TADeviceRecordSettings surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll](self->_deviceRecordSettings, "surfaceHELEAfterHyperStagingIntervalBetweenBackstopAndKeyroll")}];
  v131[30] = v96;
  v130[31] = @"TADeviceRecordHyperHELEStagingInterval";
  v18 = MEMORY[0x277CCABB0];
  [(TADeviceRecordSettings *)self->_deviceRecordSettings hyperHELEStagingInterval];
  v95 = [v18 numberWithDouble:?];
  v131[31] = v95;
  v130[32] = @"TADeviceRecordHyperStagingInterval";
  v19 = MEMORY[0x277CCABB0];
  [(TADeviceRecordSettings *)self->_deviceRecordSettings hyperStagingInterval];
  v94 = [v19 numberWithDouble:?];
  v131[32] = v94;
  v130[33] = @"TAFilterGeneralThresholdOfSignificantDuration";
  v20 = MEMORY[0x277CCABB0];
  [(TAFilterGeneralSettings *)self->_filterGeneralSettings thresholdOfSignificantDuration];
  v93 = [v20 numberWithDouble:?];
  v131[33] = v93;
  v130[34] = @"TAFilterGeneralThresholdOfSignificantDistance";
  v21 = MEMORY[0x277CCABB0];
  [(TAFilterGeneralSettings *)self->_filterGeneralSettings thresholdOfSignificantDistance];
  v92 = [v21 numberWithDouble:?];
  v131[34] = v92;
  v130[35] = @"TAFilterGeneralThresholdOfLocationRelevance";
  v22 = MEMORY[0x277CCABB0];
  [(TAFilterGeneralSettings *)self->_filterGeneralSettings thresholdOfLocationRelevance];
  v91 = [v22 numberWithDouble:?];
  v131[35] = v91;
  v130[36] = @"TAFilterGeneralDurationOfConsideration";
  v23 = MEMORY[0x277CCABB0];
  [(TAFilterGeneralSettings *)self->_filterGeneralSettings durationOfConsideration];
  v90 = [v23 numberWithDouble:?];
  v131[36] = v90;
  v130[37] = @"TAFilterGeneralCapOfReasonableWalkingSpeed";
  v24 = MEMORY[0x277CCABB0];
  [(TAFilterGeneralSettings *)self->_filterGeneralSettings capOfReasonableWalkingSpeed];
  v89 = [v24 numberWithDouble:?];
  v131[37] = v89;
  v130[38] = @"TAFilterGeneralNextBeepOnMoveConsiderationTimeInterval";
  v88 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAFilterGeneralSettings beepOnMoveConsiderationTimeInterval](self->_filterGeneralSettings, "beepOnMoveConsiderationTimeInterval")}];
  v131[38] = v88;
  v130[39] = @"TAFilterVisitsMinInterVisitDistance";
  v25 = MEMORY[0x277CCABB0];
  [(TAFilterVisitsSettings *)self->_filterVisitsSettings minInterVisitDistance];
  v87 = [v25 numberWithDouble:?];
  v131[39] = v87;
  v130[40] = @"TAFilterVisitsMaxDuration";
  v26 = MEMORY[0x277CCABB0];
  [(TAFilterVisitsSettings *)self->_filterVisitsSettings maxSuspiciousDuration];
  v86 = [v26 numberWithDouble:?];
  v131[40] = v86;
  v130[41] = @"TAFilterVisitsMinNSigma";
  v85 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAFilterVisitsSettings minNSigmaBetweenVisits](self->_filterVisitsSettings, "minNSigmaBetweenVisits")}];
  v131[41] = v85;
  v130[42] = @"TAFilterVisitsEntryDisplayOnBudget";
  v27 = MEMORY[0x277CCABB0];
  [(TAFilterVisitsSettings *)self->_filterVisitsSettings entryDisplayOnBudget];
  v84 = [v27 numberWithDouble:?];
  v131[42] = v84;
  v130[43] = @"TAFilterVisitsExitDisplayOnBudget";
  v28 = MEMORY[0x277CCABB0];
  [(TAFilterVisitsSettings *)self->_filterVisitsSettings exitDisplayOnBudget];
  v83 = [v28 numberWithDouble:?];
  v131[43] = v83;
  v130[44] = @"TAFilterVisitsMinObservationInterval";
  v29 = MEMORY[0x277CCABB0];
  [(TAFilterVisitsSettings *)self->_filterVisitsSettings minObservationInterval];
  v82 = [v29 numberWithDouble:?];
  v131[44] = v82;
  v130[45] = @"TAFilterVisitsThreeVisitImmediacyTypeKey";
  v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAFilterVisitsSettings threeVisitImmediacyType](self->_filterVisitsSettings, "threeVisitImmediacyType")}];
  v131[45] = v81;
  v130[46] = @"TAScanMinVisitEntryDisplayOnDuration";
  v30 = MEMORY[0x277CCABB0];
  [(TAScanRequestSettings *)self->_scanRequestSettings minVisitEntryDisplayOnDuration];
  v80 = [v30 numberWithDouble:?];
  v131[46] = v80;
  v130[47] = @"TAScanMinInterVisitDisplayOnDuration";
  v31 = MEMORY[0x277CCABB0];
  [(TAScanRequestSettings *)self->_scanRequestSettings minInterVisitDisplayOnDuration];
  v79 = [v31 numberWithDouble:?];
  v131[47] = v79;
  v130[48] = @"TAScanInterVisitDelay";
  v32 = MEMORY[0x277CCABB0];
  [(TAScanRequestSettings *)self->_scanRequestSettings interVisitScanDelay];
  v78 = [v32 numberWithDouble:?];
  v131[48] = v78;
  v130[49] = @"TAScanMaxInterVisitRequests";
  v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAScanRequestSettings maxInterVisitScanRequests](self->_scanRequestSettings, "maxInterVisitScanRequests")}];
  v131[49] = v77;
  v130[50] = @"TAFilterSingleVisitThresholdOfSignificantDuration";
  v33 = MEMORY[0x277CCABB0];
  [(TAFilterSingleVisitSettings *)self->_filterSingleVisitSettings thresholdOfSignificantDuration];
  v76 = [v33 numberWithDouble:?];
  v131[50] = v76;
  v130[51] = @"TAFilterSingleVisitThresholdOfSignificantDistance";
  v34 = MEMORY[0x277CCABB0];
  [(TAFilterSingleVisitSettings *)self->_filterSingleVisitSettings thresholdOfSignificantDistance];
  v74 = [v34 numberWithDouble:?];
  v131[51] = v74;
  v130[52] = @"TAFilterSingleVisitEnabledLoiTypes";
  v75 = [(TAFilterSingleVisitSettings *)self->_filterSingleVisitSettings enabledLoiTypesToString];
  v131[52] = v75;
  v130[53] = @"TAFilterArrivingWorkImmediacyType";
  v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAFilterSingleVisitSettings arrivingWorkImmediacyType](self->_filterSingleVisitSettings, "arrivingWorkImmediacyType")}];
  v131[53] = v73;
  v130[54] = @"TAFilterLeavingLOIThresholdOfSignificantDuration";
  v35 = MEMORY[0x277CCABB0];
  [(TAFilterLeavingLOISettings *)self->_filterLeavingLOISettings thresholdOfSignificantDuration];
  v72 = [v35 numberWithDouble:?];
  v131[54] = v72;
  v130[55] = @"TAFilterLeavingLOIThresholdOfSignificantDistance";
  v36 = MEMORY[0x277CCABB0];
  [(TAFilterLeavingLOISettings *)self->_filterLeavingLOISettings thresholdOfSignificantDistance];
  v70 = [v36 numberWithDouble:?];
  v131[55] = v70;
  v130[56] = @"TAFilterLeavingLOIEnabledLoiTypes";
  v71 = [(TAFilterLeavingLOISettings *)self->_filterLeavingLOISettings enabledLoiTypesToString];
  v131[56] = v71;
  v130[57] = @"TAFilterLeavingHomeImmediacyType";
  v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAFilterLeavingLOISettings leavingHomeImmediacyType](self->_filterLeavingLOISettings, "leavingHomeImmediacyType")}];
  v131[57] = v69;
  v130[58] = @"TAFilterLeavingWorkImmediacyType";
  v68 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAFilterLeavingLOISettings leavingWorkImmediacyType](self->_filterLeavingLOISettings, "leavingWorkImmediacyType")}];
  v131[58] = v68;
  v130[59] = @"TAFilterGeneralAllowNavGeoAsPrivateVehicleHint";
  v67 = [MEMORY[0x277CCABB0] numberWithBool:{-[TAFilterGeneralSettings allowNavGeoHintAsPrivateVehicleHint](self->_filterGeneralSettings, "allowNavGeoHintAsPrivateVehicleHint")}];
  v131[59] = v67;
  v130[60] = @"TAFilterGeneralVehicularImmediacyType";
  v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAFilterGeneralSettings vehicularImmediacyType](self->_filterGeneralSettings, "vehicularImmediacyType")}];
  v131[60] = v66;
  v130[61] = @"TAFilterGeneralBeepOnMoveVehicularImmediacyType";
  v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAFilterGeneralSettings beepOnMoveVehicularImmediacyType](self->_filterGeneralSettings, "beepOnMoveVehicularImmediacyType")}];
  v131[61] = v65;
  v130[62] = @"TAFilterGeneralBeepOnMovePedestrianImmediacyType";
  v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAFilterGeneralSettings beepOnMovePedestrianImmediacyType](self->_filterGeneralSettings, "beepOnMovePedestrianImmediacyType")}];
  v131[62] = v64;
  v130[63] = @"TAFilterGeneralNextPLOIVehicularImmediacyType";
  v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAFilterGeneralSettings nextPLOIVehicularImmediacyType](self->_filterGeneralSettings, "nextPLOIVehicularImmediacyType")}];
  v131[63] = v63;
  v130[64] = @"TAFilterGeneralNextPLOIPedestrianImmediacyType";
  v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAFilterGeneralSettings nextPLOIPedestrianImmediacyType](self->_filterGeneralSettings, "nextPLOIPedestrianImmediacyType")}];
  v131[64] = v62;
  v130[65] = @"TAServiceEnableTAFilterGeneral";
  v61 = [MEMORY[0x277CCABB0] numberWithBool:{-[TATrackingAvoidanceServiceSettings enableTAFilterGeneral](self->_serviceSettings, "enableTAFilterGeneral")}];
  v131[65] = v61;
  v130[66] = @"TAServiceEnableTAFilterVisits";
  v60 = [MEMORY[0x277CCABB0] numberWithBool:{-[TATrackingAvoidanceServiceSettings enableTAFilterVisits](self->_serviceSettings, "enableTAFilterVisits")}];
  v131[66] = v60;
  v130[67] = @"TAServiceEnableTAFilterSingleVisit";
  v59 = [MEMORY[0x277CCABB0] numberWithBool:{-[TATrackingAvoidanceServiceSettings enableTAFilterSingleVisit](self->_serviceSettings, "enableTAFilterSingleVisit")}];
  v131[67] = v59;
  v130[68] = @"TAServiceEnableTAFilterLeavingLOI";
  v58 = [MEMORY[0x277CCABB0] numberWithBool:{-[TATrackingAvoidanceServiceSettings enableTAFilterLeavingLOI](self->_serviceSettings, "enableTAFilterLeavingLOI")}];
  v131[68] = v58;
  v130[69] = @"TAServiceClassificationTimeInterval";
  v37 = MEMORY[0x277CCABB0];
  [(TATrackingAvoidanceServiceSettings *)self->_serviceSettings classificationTimeInterval];
  v57 = [v37 numberWithDouble:?];
  v131[69] = v57;
  v130[70] = @"TAFilterVisitsEnabledLoiTypes";
  v56 = [(TAFilterVisitsSettings *)self->_filterVisitsSettings sensitiveLOITypesToString];
  v131[70] = v56;
  v130[71] = @"TAPersistenceInterval";
  v38 = [MEMORY[0x277CCABB0] numberWithDouble:self->_persistenceInterval];
  v131[71] = v38;
  v130[72] = @"TAFutureEventToleranceInterval";
  v39 = [MEMORY[0x277CCABB0] numberWithDouble:self->_futureEventToleranceInterval];
  v131[72] = v39;
  v130[73] = @"TAPersistenceDirectory";
  v40 = [(TAPersistenceManagerSettings *)self->_persistenceManagerSettings persistenceDirectoryURL];
  v41 = [v40 description];
  v131[73] = v41;
  v130[74] = @"TAPersistenceStoreFileName";
  v42 = [(TAPersistenceManagerSettings *)self->_persistenceManagerSettings persistenceStoreFileName];
  v43 = [v42 description];
  v131[74] = v43;
  v130[75] = @"TAAnalyticsManagerEnableSubmission";
  v44 = [MEMORY[0x277CCABB0] numberWithBool:{-[TAAnalyticsManagerSettings enableSubmission](self->_analyticsManagerSettings, "enableSubmission")}];
  v131[75] = v44;
  v130[76] = @"TASettingsVersion";
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_settingsVersion];
  v131[76] = v45;
  v130[77] = @"TAAISFetchEnable";
  v46 = [MEMORY[0x277CCABB0] numberWithBool:self->_aisFetchEnabled];
  v131[77] = v46;
  v126 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v131 forKeys:v130 count:78];

  v128 = 0;
  v47 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v126 error:&v128];
  v48 = v128;
  if (v48)
  {
    v49 = TAStatusLog;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      [(TASettings *)v51 description:v48];
    }

    v52 = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    v52 = v47;
  }

  v53 = v52;

  v54 = *MEMORY[0x277D85DE8];

  return v53;
}

- (void)description
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_26F2E2000, log, OS_LOG_TYPE_ERROR, "%@ instance failed to create description:%@", buf, 0x16u);
}

@end