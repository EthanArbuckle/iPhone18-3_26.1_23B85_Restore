@interface TAAnalyticsManager
+ (double)_getMotionDuration:(unint64_t)a3 motionDistribution:(id)a4;
+ (id)_convertAISFetch:(id)a3;
+ (id)_convertBOMObservation:(id)a3;
+ (id)_convertDetection:(id)a3 service:(id)a4;
+ (id)_convertHomeDetection:(id)a3 service:(id)a4;
+ (id)_convertPlaySoundWithDetection:(id)a3;
+ (id)_convertRecord:(id)a3 service:(id)a4;
+ (id)_convertRecordForAISFetch:(id)a3 service:(id)a4;
+ (id)_convertScanRequest:(id)a3 service:(id)a4;
+ (int64_t)getHour:(id)a3;
- (TAAnalyticsManager)init;
- (TAAnalyticsManager)initWithSettings:(id)a3;
- (void)_submitDefaultAISFetchCountEvent;
- (void)_submitEvent:(id)a3 content:(id)a4;
- (void)didReadFromURL:(id)a3 bytes:(unint64_t)a4;
- (void)didWriteToURL:(id)a3 bytes:(unint64_t)a4;
- (void)trackingAvoidanceService:(id)a3 didFindSuspiciousDevices:(id)a4;
- (void)trackingAvoidanceService:(id)a3 requestingAdditionalInformation:(id)a4;
@end

@implementation TAAnalyticsManager

- (TAAnalyticsManager)init
{
  v3 = objc_alloc_init(TAAnalyticsManagerSettings);
  v4 = [(TAAnalyticsManager *)self initWithSettings:v3];

  return v4;
}

- (TAAnalyticsManager)initWithSettings:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TAAnalyticsManager;
  v6 = [(TAAnalyticsManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
    [(TAAnalyticsManager *)v7 _submitDefaultAISFetchCountEvent];
  }

  return v7;
}

- (void)_submitDefaultAISFetchCountEvent
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"numOfFetchesPerDay";
  v5[1] = @"accessoryType";
  v6[0] = &unk_287F6FF08;
  v6[1] = @"Unknown";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  [(TAAnalyticsManager *)self _submitEvent:@"com.apple.clx.ta.aisFetchCount" content:v3];

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)_convertScanRequest:(id)a3 service:(id)a4
{
  v24[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = [v5 key];
    v10 = [v9 isEqualToString:@"RequestingAdditionalScans"];

    if (v10)
    {
      v11 = [v5 additionalInformation];
      v12 = [v11 objectForKey:@"ScanRequestReason"];
      if (v12)
      {
        v13 = [v5 additionalInformation];
        v14 = [v13 objectForKey:@"ScanRequestReason"];
      }

      else
      {
        v14 = @"Unknown";
      }

      v24[0] = &unk_287F6FF20;
      v23[0] = @"scanRequests";
      v23[1] = @"maximumScanRequests";
      v15 = MEMORY[0x277CCABB0];
      v16 = [v7 settings];
      v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "maximumDailyScans")}];
      v24[1] = v17;
      v24[2] = v14;
      v23[2] = @"reason";
      v23[3] = @"settingsVersion";
      v18 = MEMORY[0x277CCABB0];
      v19 = [v7 settings];
      v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(v19, "settingsVersion")}];
      v24[3] = v20;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];
    }

    else
    {
      v8 = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (int64_t)getHour:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 components:32 fromDate:v4];

  v7 = [v6 hour];
  return v7;
}

+ (id)_convertDetection:(id)a3 service:(id)a4
{
  v87 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v6 store];
    v9 = [v8 deviceRecord];
    v10 = [v5 address];
    v11 = [v9 hasSurfacedNotificationFor:v10];

    v12 = [v5 locationHistory];
    v13 = [v12 count];

    if (v13 < 2)
    {
      v34 = 0.0;
      v35 = -1.0;
    }

    else
    {
      v14 = [v5 locationHistory];
      v15 = [v14 firstObject];
      v16 = [v15 getDate];

      v17 = [v5 locationHistory];
      v18 = [v17 firstObject];
      v19 = [v18 getDate];

      v20 = [v5 locationHistory];
      v21 = [v20 count];

      if (v21 < 2)
      {
        v29 = v19;
        v27 = v16;
      }

      else
      {
        v22 = 1;
        do
        {
          v23 = [v5 locationHistory];
          v24 = [v23 objectAtIndexedSubscript:v22];
          v25 = [v24 getDate];

          if ([v16 compare:v25] == 1)
          {
            v26 = v25;
          }

          else
          {
            v26 = v16;
          }

          v27 = v26;

          if ([v19 compare:v25] == -1)
          {
            v28 = v25;
          }

          else
          {
            v28 = v19;
          }

          v29 = v28;

          ++v22;
          v30 = [v5 locationHistory];
          v31 = [v30 count];

          v16 = v27;
          v19 = v29;
        }

        while (v31 > v22);
      }

      [v29 timeIntervalSinceDate:v27];
      v34 = v36;
      v37 = [v7 store];
      v38 = [v37 deviceRecord];
      v39 = [v5 address];
      v40 = [v38 getFirstStagedDetectionDate:v39];

      v41 = [MEMORY[0x277CBEAA8] distantFuture];
      LOBYTE(v38) = [v40 isEqual:v41];

      v35 = -1.0;
      if ((v38 & 1) == 0)
      {
        [v40 timeIntervalSinceDate:v27];
        if (v42 >= -1.0)
        {
          v35 = v42;
        }

        else
        {
          v35 = -1.0;
        }
      }
    }

    v43 = [v7 store];
    v44 = [v43 deviceRecord];
    v45 = [v5 address];
    v46 = [v44 getNumStagedDetections:v45];

    v47 = [v7 store];
    v48 = [v47 deviceRecord];
    v49 = [v5 address];
    v80 = [v48 getNumOfAISFetch:v49];

    v50 = [v5 latestAdvertisement];
    v51 = +[TASPAdvertisement TASPAdvertisementDeviceTypeToString:](TASPAdvertisement, "TASPAdvertisementDeviceTypeToString:", [v50 getDeviceType]);

    v52 = [v5 accessoryInfo];

    if (v52)
    {
      v53 = [v5 accessoryInfo];
      v54 = [v5 latestAdvertisement];
      v55 = [v54 getLatestAdvTypeToString:0];
      v56 = [v53 accessoryTypeNameWithAdvTypeString:v55];

      v51 = v54;
    }

    else
    {
      v53 = [v5 latestAdvertisement];
      v56 = [v53 getLatestAdvTypeToString:v51];
    }

    v75 = v56;

    v57 = [v7 store];
    v58 = [v57 deviceRecord];
    v59 = [v5 address];
    v78 = [v58 isAISFetchSuccessful:v59];

    v60 = MEMORY[0x277CCACA8];
    v61 = +[TAMetricsDetection convertTADetectionTypeToString:](TAMetricsDetection, "convertTADetectionTypeToString:", [v5 detectionType]);
    v62 = +[TASuspiciousDevice convertTAForceSurfaceReasonToString:](TASuspiciousDevice, "convertTAForceSurfaceReasonToString:", [v5 forceSurfaceReason]);
    v79 = [v60 stringWithFormat:@"%@.%@", v61, v62];

    v83[0] = v79;
    v82[0] = @"type";
    v82[1] = @"hasSurfacedBefore";
    v77 = [MEMORY[0x277CCABB0] numberWithBool:v11];
    v83[1] = v77;
    v82[2] = @"secondsFromFirstSeen";
    v76 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
    v83[2] = v76;
    v83[3] = v56;
    v82[3] = @"productName";
    v82[4] = @"hourOfDay";
    v63 = MEMORY[0x277CCABB0];
    [v5 date];
    v64 = v81 = v7;
    v65 = [v63 numberWithInteger:{+[TAAnalyticsManager getHour:](TAAnalyticsManager, "getHour:", v64)}];
    v83[4] = v65;
    v82[5] = @"numStagedDetections";
    v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v46];
    v83[5] = v66;
    v82[6] = @"secondsUntilFirstStagedDetection";
    v67 = [MEMORY[0x277CCABB0] numberWithDouble:v35];
    v83[6] = v67;
    v82[7] = @"settingsVersion";
    v68 = MEMORY[0x277CCABB0];
    v69 = [v81 settings];
    v70 = [v68 numberWithUnsignedInteger:{objc_msgSend(v69, "settingsVersion")}];
    v83[7] = v70;
    v82[8] = @"numAISFetch";
    v71 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v80];
    v83[8] = v71;
    v82[9] = @"fetchSucceed";
    v72 = [MEMORY[0x277CCABB0] numberWithBool:v78];
    v83[9] = v72;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:10];

    v7 = v81;
  }

  else
  {
    v32 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
    {
      buf = 68289026;
      v85 = 2082;
      v86 = "";
      _os_log_impl(&dword_26F2E2000, v32, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TAAnalyticsManager nil device or service in conversion}", &buf, 0x12u);
    }

    v33 = 0;
  }

  v73 = *MEMORY[0x277D85DE8];

  return v33;
}

+ (id)_convertRecord:(id)a3 service:(id)a4
{
  v5 = a3;
  v6 = 0;
  if (v5 && a4)
  {
    v7 = a4;
    v8 = +[TASPAdvertisement TASPAdvertisementDeviceTypeToString:](TASPAdvertisement, "TASPAdvertisementDeviceTypeToString:", [v5 getDeviceType]);
    v9 = [v5 accessoryInfo];

    if (v9)
    {
      v10 = [v5 accessoryInfo];
      v11 = [v5 latestAdvertisement];
      v12 = [v11 getLatestAdvTypeToString:0];
      v13 = [v10 accessoryTypeNameWithAdvTypeString:v12];

      v8 = v11;
    }

    else
    {
      v10 = [v5 latestAdvertisement];
      v13 = [v10 getLatestAdvTypeToString:v8];
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v14 setObject:&unk_287F6FF38 forKey:@"minuteOfFirstArrivingWork"];
    [v14 setObject:&unk_287F6FF38 forKey:@"minuteOfFirstBeepOnMovePedestrian"];
    [v14 setObject:&unk_287F6FF38 forKey:@"minuteOfFirstBeepOnMoveVehicular"];
    [v14 setObject:&unk_287F6FF38 forKey:@"minuteOfFirstDetection"];
    [v14 setObject:&unk_287F6FF38 forKey:@"minuteOfFirstLeavingHome"];
    [v14 setObject:&unk_287F6FF38 forKey:@"minuteOfFirstLeavingWork"];
    [v14 setObject:&unk_287F6FF38 forKey:@"minuteOfFirstObservation"];
    [v14 setObject:&unk_287F6FF38 forKey:@"minuteOfFirstPLOIPedestrian"];
    [v14 setObject:&unk_287F6FF38 forKey:@"minuteOfFirstPLOIVehicular"];
    [v14 setObject:&unk_287F6FF38 forKey:@"minuteOfFirstStagedPLOIAnyVisit"];
    [v14 setObject:&unk_287F6FF38 forKey:@"minuteOfFirstStagedPLOIPedestrian"];
    [v14 setObject:&unk_287F6FF38 forKey:@"minuteOfFirstStagedPLOIVehicular"];
    [v14 setObject:&unk_287F6FF38 forKey:@"minuteOfFirstThreeConsecutiveVisit"];
    [v14 setObject:&unk_287F6FF38 forKey:@"minuteOfFirstVehicular"];
    [v14 setObject:&unk_287F6FF38 forKey:@"minuteOfFirstBOM"];
    [v14 setObject:&unk_287F6FF08 forKey:@"numArrivingWork"];
    [v14 setObject:&unk_287F6FF08 forKey:@"numAttemptPlaySound"];
    [v14 setObject:&unk_287F6FF08 forKey:@"numBeepOnMovePedestrian"];
    [v14 setObject:&unk_287F6FF08 forKey:@"numBeepOnMoveVehicular"];
    [v14 setObject:&unk_287F6FF08 forKey:@"numFailurePlaySound"];
    [v14 setObject:&unk_287F6FF08 forKey:@"numLeavingHome"];
    [v14 setObject:&unk_287F6FF08 forKey:@"numLeavingWork"];
    [v14 setObject:&unk_287F6FF08 forKey:@"numPLOIPedestrian"];
    [v14 setObject:&unk_287F6FF08 forKey:@"numPLOIVehicular"];
    [v14 setObject:&unk_287F6FF08 forKey:@"numStagedPLOIAnyVisit"];
    [v14 setObject:&unk_287F6FF08 forKey:@"numStagedPLOIPedestrian"];
    [v14 setObject:&unk_287F6FF08 forKey:@"numStagedPLOIVehicular"];
    [v14 setObject:&unk_287F6FF08 forKey:@"numSuccessfulPlaySound"];
    [v14 setObject:&unk_287F6FF08 forKey:@"numSurfacedAlerts"];
    [v14 setObject:&unk_287F6FF08 forKey:@"numPotentialSurfacedAlerts"];
    [v14 setObject:&unk_287F6FF08 forKey:@"numThreeConsecutive"];
    [v14 setObject:&unk_287F6FF08 forKey:@"numVehicular"];
    [v14 setObject:&unk_287F6FF08 forKey:@"numBOMCount"];
    v119 = v13;
    [v14 setObject:v13 forKey:@"productName"];
    v15 = MEMORY[0x277CCABB0];
    v16 = [v7 settings];

    v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "settingsVersion")}];
    [v14 setObject:v17 forKey:@"settingsVersion"];

    [v14 setObject:&unk_287F6FF20 forKey:@"submissionCount"];
    v18 = +[TADeviceInformation deviceTypeToString:](TADeviceInformation, "deviceTypeToString:", [v5 type]);
    [v14 setObject:v18 forKey:@"deviceRelation"];

    [v14 setObject:@"Unknown" forKey:@"firstAlertType"];
    v19 = MEMORY[0x277CCABB0];
    v20 = [v5 earliestObservationDate];
    v21 = [v19 numberWithInteger:{objc_msgSend(v20, "getMinutesSinceStartOfDay")}];
    [v14 setObject:v21 forKey:@"minuteOfFirstObservation"];

    v22 = [v5 firstSurfacedAlertDate];
    if (v22)
    {
      v23 = v22;
      v24 = [v5 firstSurfacedAlertDate];
      v25 = [MEMORY[0x277CBEAA8] distantFuture];
      v26 = [v24 isEqual:v25];

      if ((v26 & 1) == 0)
      {
        v27 = MEMORY[0x277CCABB0];
        v28 = [v5 firstSurfacedAlertDate];
        v29 = [v5 earliestObservationDate];
        [v28 timeIntervalSinceDate:v29];
        v31 = [v27 numberWithInt:(v30 / 60)];
        [v14 setObject:v31 forKey:@"minuteOfFirstDetection"];
      }
    }

    v32 = +[TAMetricsDetection convertTADetectionTypeToString:](TAMetricsDetection, "convertTADetectionTypeToString:", [v5 firstSurfacedAlertType]);
    [v14 setObject:v32 forKey:@"firstAlertType"];

    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "numSurfacedAlerts")}];
    [v14 setObject:v33 forKey:@"numSurfacedAlerts"];

    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "numPotentialSurfacedAlerts")}];
    [v14 setObject:v34 forKey:@"numPotentialSurfacedAlerts"];

    v35 = [v5 backgroundDetectionCountForDetectionType:11];
    v36 = [v5 firstDetectionDateForDetectionType:11];
    if (v36)
    {
      v37 = MEMORY[0x277CCABB0];
      v38 = [v5 earliestObservationDate];
      [v36 timeIntervalSinceDate:v38];
      v40 = [v37 numberWithInt:(v39 / 60)];
      [v14 setObject:v40 forKey:@"minuteOfFirstArrivingWork"];
    }

    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v35];
    [v14 setObject:v41 forKey:@"numArrivingWork"];

    v42 = [v5 backgroundDetectionCountForDetectionType:13];
    v43 = [v5 firstDetectionDateForDetectionType:13];
    if (v43)
    {
      v44 = MEMORY[0x277CCABB0];
      v45 = [v5 earliestObservationDate];
      [v43 timeIntervalSinceDate:v45];
      v47 = [v44 numberWithInt:(v46 / 60)];
      [v14 setObject:v47 forKey:@"minuteOfFirstBeepOnMovePedestrian"];
    }

    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v42];
    [v14 setObject:v48 forKey:@"numBeepOnMovePedestrian"];

    v49 = [v5 backgroundDetectionCountForDetectionType:12];
    v50 = [v5 firstDetectionDateForDetectionType:12];
    if (v50)
    {
      v51 = MEMORY[0x277CCABB0];
      v52 = [v5 earliestObservationDate];
      [v50 timeIntervalSinceDate:v52];
      v54 = [v51 numberWithInt:(v53 / 60)];
      [v14 setObject:v54 forKey:@"minuteOfFirstBeepOnMoveVehicular"];
    }

    v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v49];
    [v14 setObject:v55 forKey:@"numBeepOnMoveVehicular"];

    v56 = [v5 backgroundDetectionCountForDetectionType:6];
    v57 = [v5 firstDetectionDateForDetectionType:6];
    if (v57)
    {
      v58 = MEMORY[0x277CCABB0];
      v59 = [v5 earliestObservationDate];
      [v57 timeIntervalSinceDate:v59];
      v61 = [v58 numberWithInt:(v60 / 60)];
      [v14 setObject:v61 forKey:@"minuteOfFirstLeavingHome"];
    }

    v120 = v57;
    v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v56];
    [v14 setObject:v62 forKey:@"numLeavingHome"];

    v63 = [v5 backgroundDetectionCountForDetectionType:10];
    v64 = [v5 firstDetectionDateForDetectionType:10];
    if (v64)
    {
      v65 = MEMORY[0x277CCABB0];
      v66 = [v5 earliestObservationDate];
      [v64 timeIntervalSinceDate:v66];
      v68 = [v65 numberWithInt:(v67 / 60)];
      [v14 setObject:v68 forKey:@"minuteOfFirstLeavingWork"];
    }

    v116 = v50;
    v117 = v43;
    v118 = v36;
    v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v63];
    [v14 setObject:v69 forKey:@"numLeavingWork"];

    v70 = [v5 backgroundDetectionCountForDetectionType:15];
    v71 = [v5 firstDetectionDateForDetectionType:15];
    if (v71)
    {
      v72 = MEMORY[0x277CCABB0];
      v73 = [v5 earliestObservationDate];
      [v71 timeIntervalSinceDate:v73];
      v75 = [v72 numberWithInt:(v74 / 60)];
      [v14 setObject:v75 forKey:@"minuteOfFirstPLOIPedestrian"];
    }

    v114 = v71;
    v76 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v70];
    [v14 setObject:v76 forKey:@"numPLOIPedestrian"];

    v77 = [v5 backgroundDetectionCountForDetectionType:14];
    v78 = [v5 firstDetectionDateForDetectionType:14];
    v79 = v120;
    if (v78)
    {
      v80 = MEMORY[0x277CCABB0];
      v81 = [v5 earliestObservationDate];
      [v78 timeIntervalSinceDate:v81];
      v83 = [v80 numberWithInt:(v82 / 60)];
      [v14 setObject:v83 forKey:@"minuteOfFirstPLOIVehicular"];
    }

    v115 = v64;
    v84 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v77];
    [v14 setObject:v84 forKey:@"numPLOIVehicular"];

    v85 = [v5 backgroundDetectionCountForDetectionType:16];
    v86 = [v5 firstDetectionDateForDetectionType:16];
    if (v86)
    {
      v87 = MEMORY[0x277CCABB0];
      v88 = [v5 earliestObservationDate];
      [v86 timeIntervalSinceDate:v88];
      v90 = [v87 numberWithInt:(v89 / 60)];
      [v14 setObject:v90 forKey:@"minuteOfFirstThreeConsecutiveVisit"];
    }

    v91 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v85];
    [v14 setObject:v91 forKey:@"numThreeConsecutive"];

    v92 = [v5 backgroundDetectionCountForDetectionType:7];
    v93 = [v5 firstDetectionDateForDetectionType:7];
    if (v93)
    {
      v94 = MEMORY[0x277CCABB0];
      v95 = [v5 earliestObservationDate];
      [v93 timeIntervalSinceDate:v95];
      v97 = [v94 numberWithInt:(v96 / 60)];
      [v14 setObject:v97 forKey:@"minuteOfFirstVehicular"];

      v79 = v120;
    }

    v98 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v92];
    [v14 setObject:v98 forKey:@"numVehicular"];

    v99 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "playSoundAttemptCount")}];
    [v14 setObject:v99 forKey:@"numAttemptPlaySound"];

    v100 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "playSoundFailureCount")}];
    [v14 setObject:v100 forKey:@"numFailurePlaySound"];

    v101 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "playSoundSuccessCount")}];
    [v14 setObject:v101 forKey:@"numSuccessfulPlaySound"];

    v102 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "numBeepOnMove")}];
    [v14 setObject:v102 forKey:@"numBOMCount"];

    v103 = [v5 firstBeepOnMoveDate];
    if (v103)
    {
      v104 = v103;
      v105 = [v5 firstBeepOnMoveDate];
      v106 = [MEMORY[0x277CBEAA8] distantFuture];
      v107 = [v105 isEqual:v106];

      v79 = v120;
      if ((v107 & 1) == 0)
      {
        v108 = MEMORY[0x277CCABB0];
        v109 = [v5 firstBeepOnMoveDate];
        v110 = [v5 earliestObservationDate];
        [v109 timeIntervalSinceDate:v110];
        v112 = [v108 numberWithInt:(v111 / 60)];
        [v14 setObject:v112 forKey:@"minuteOfFirstBOM"];

        v79 = v120;
      }
    }

    v6 = [v14 copy];
  }

  return v6;
}

+ (id)_convertRecordForAISFetch:(id)a3 service:(id)a4
{
  v5 = a3;
  v6 = 0;
  if (v5 && a4)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = +[TASPAdvertisement TASPAdvertisementDeviceTypeToString:](TASPAdvertisement, "TASPAdvertisementDeviceTypeToString:", [v5 getDeviceType]);
    v9 = [v5 accessoryInfo];

    if (v9)
    {
      v10 = [v5 accessoryInfo];
      v11 = [v5 latestAdvertisement];
      v12 = [v11 getLatestAdvTypeToString:0];
      v13 = [v10 accessoryTypeNameWithAdvTypeString:v12];

      v8 = v11;
    }

    else
    {
      v10 = [v5 latestAdvertisement];
      v13 = [v10 getLatestAdvTypeToString:v8];
    }

    [v7 setObject:v13 forKey:@"accessoryType"];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "AISFetchCount")}];
    [v7 setObject:v14 forKey:@"numOfFetches"];

    v15 = [v5 accessoryInfo];
    v16 = v15 != 0;

    v17 = [MEMORY[0x277CCABB0] numberWithBool:v16];
    [v7 setObject:v17 forKey:@"isFetchSuccessful"];

    v6 = [v7 copy];
  }

  return v6;
}

+ (id)_convertBOMObservation:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [v3 objectForKeyedSubscript:@"timeSinceBOM"];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:@"timeSinceBOM"];
    [v6 doubleValue];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:(v7 / 60)];
    [v4 setObject:v8 forKey:@"minutesSinceLastBOMBounded"];
  }

  v9 = [v3 objectForKeyedSubscript:@"productInfo"];

  if (v9)
  {
    v10 = [v3 objectForKeyedSubscript:@"productInfo"];
    [v4 setObject:v10 forKey:@"productInfo"];
  }

  v11 = [v4 copy];

  return v11;
}

+ (id)_convertPlaySoundWithDetection:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [v3 objectForKeyedSubscript:@"firstAlertMinutes"];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:@"firstAlertMinutes"];
    [v4 setObject:v6 forKey:@"firstAlertMinutes"];
  }

  v7 = [v3 objectForKeyedSubscript:@"firstSeenMinutes"];

  if (v7)
  {
    v8 = [v3 objectForKeyedSubscript:@"firstSeenMinutes"];
    [v4 setObject:v8 forKey:@"firstSeenMinutes"];
  }

  v9 = [v3 objectForKeyedSubscript:@"lastAlertMinutes"];

  if (v9)
  {
    v10 = [v3 objectForKeyedSubscript:@"lastAlertMinutes"];
    [v4 setObject:v10 forKey:@"lastAlertMinutes"];
  }

  v11 = [v3 objectForKeyedSubscript:@"lastAttemptMinutes"];

  if (v11)
  {
    v12 = [v3 objectForKeyedSubscript:@"lastAttemptMinutes"];
    [v4 setObject:v12 forKey:@"lastAttemptMinutes"];
  }

  v13 = [v3 objectForKeyedSubscript:@"productInfo"];

  if (v13)
  {
    v14 = [v3 objectForKeyedSubscript:@"productInfo"];
    [v4 setObject:v14 forKey:@"productInfo"];
  }

  v15 = [v3 objectForKeyedSubscript:@"soundCount"];

  if (v15)
  {
    v16 = [v3 objectForKeyedSubscript:@"soundCount"];
    [v4 setObject:v16 forKey:@"soundCount"];
  }

  v17 = [v3 objectForKeyedSubscript:@"soundMinutes"];

  if (v17)
  {
    v18 = [v3 objectForKeyedSubscript:@"soundMinutes"];
    [v4 setObject:v18 forKey:@"soundMinutes"];
  }

  v19 = [v3 objectForKeyedSubscript:@"success"];

  if (v19)
  {
    v20 = [v3 objectForKeyedSubscript:@"success"];
    [v4 setObject:v20 forKey:@"success"];
  }

  v21 = [v4 copy];

  return v21;
}

+ (id)_convertAISFetch:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [v3 objectForKeyedSubscript:@"firstSeenSeconds"];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:@"firstSeenSeconds"];
    [v4 setObject:v6 forKey:@"secondsFromFirstSeen"];
  }

  v7 = [v3 objectForKeyedSubscript:@"success"];

  if (v7)
  {
    v8 = [v3 objectForKeyedSubscript:@"success"];
    [v4 setObject:v8 forKey:@"fetchSucceed"];
  }

  v9 = [v3 objectForKeyedSubscript:@"deviceType"];

  if (v9)
  {
    v10 = [v3 objectForKeyedSubscript:@"deviceType"];
    [v4 setObject:v10 forKey:@"accessoryType"];
  }

  v11 = [v3 objectForKeyedSubscript:@"fetchCount"];

  if (v11)
  {
    v12 = [v3 objectForKeyedSubscript:@"fetchCount"];
    [v4 setObject:v12 forKey:@"fetchCount"];
  }

  v13 = [v3 objectForKeyedSubscript:@"lastAttemptMinutes"];

  if (v13)
  {
    v14 = [v3 objectForKeyedSubscript:@"lastAttemptMinutes"];
    [v4 setObject:v14 forKey:@"lastAttemptMinutes"];
  }

  v15 = [v4 copy];

  return v15;
}

+ (double)_getMotionDuration:(unint64_t)a3 motionDistribution:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v9 = [v5 objectForKeyedSubscript:v8];
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

+ (id)_convertHomeDetection:(id)a3 service:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = [v5 detectionMetrics];
    v10 = [v9 singleVisitDetectionMetrics];
    v11 = [v10 interVisitMetrics];
    [v11 duration];
    v13 = v12;

    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v13 / 60.0];
    [v8 setObject:v14 forKey:@"duration"];

    v15 = MEMORY[0x277CCABB0];
    v16 = [v5 detectionMetrics];
    v17 = [v16 singleVisitDetectionMetrics];
    v18 = [v17 interVisitMetrics];
    [v18 distance];
    v19 = [v15 numberWithDouble:?];
    [v8 setObject:v19 forKey:@"distanceTraveled"];

    v20 = [v5 latestAdvertisement];
    v21 = +[TASPAdvertisement TASPAdvertisementDeviceTypeToString:](TASPAdvertisement, "TASPAdvertisementDeviceTypeToString:", [v20 getDeviceType]);

    v22 = [v5 accessoryInfo];

    if (v22)
    {
      v23 = [v5 accessoryInfo];
      v24 = [v5 latestAdvertisement];
      v25 = [v24 getLatestAdvTypeToString:0];
      v26 = [v23 accessoryTypeNameWithAdvTypeString:v25];

      v21 = v24;
    }

    else
    {
      v23 = [v5 latestAdvertisement];
      v26 = [v23 getLatestAdvTypeToString:v21];
    }

    [v8 setObject:v26 forKey:@"deviceType"];
    v29 = [v5 detectionMetrics];
    v30 = [v29 singleVisitDetectionMetrics];
    v31 = [v30 previousVisitType];

    if (v31 == 1)
    {
      v32 = @"Home";
    }

    else
    {
      v33 = [v5 detectionMetrics];
      v34 = [v33 singleVisitDetectionMetrics];
      v35 = [v34 previousVisitType];

      if (v35)
      {
        v32 = @"Non-Home";
      }

      else
      {
        v32 = @"Unknown";
      }
    }

    [v8 setObject:v32 forKey:@"lastVisitType"];
    v36 = [v5 detectionMetrics];
    v37 = [v36 singleVisitDetectionMetrics];
    v38 = [v37 interVisitMetrics];
    v39 = [v38 durationPerMotionState];

    [TAAnalyticsManager _getMotionDuration:1 motionDistribution:v39];
    v41 = v40;
    [TAAnalyticsManager _getMotionDuration:2 motionDistribution:v39];
    v43 = v42;
    [TAAnalyticsManager _getMotionDuration:3 motionDistribution:v39];
    v45 = v44;
    [TAAnalyticsManager _getMotionDuration:4 motionDistribution:v39];
    v47 = v46;
    [TAAnalyticsManager _getMotionDuration:0 motionDistribution:v39];
    v49 = v48;
    v50 = v41 + v43 + v45 + v47 + v48;
    if (fabs(v50) >= 0.0000001)
    {
      v51 = [MEMORY[0x277CCABB0] numberWithDouble:v41 / v50];
      [v8 setObject:v51 forKey:@"staticRatio"];

      v52 = [MEMORY[0x277CCABB0] numberWithDouble:v43 / v50];
      [v8 setObject:v52 forKey:@"pedestrianRatio"];

      v53 = [MEMORY[0x277CCABB0] numberWithDouble:v47 / v50];
      [v8 setObject:v53 forKey:@"cyclingRatio"];

      v54 = [MEMORY[0x277CCABB0] numberWithDouble:v45 / v50];
      [v8 setObject:v54 forKey:@"vehicularRatio"];

      v55 = [MEMORY[0x277CCABB0] numberWithDouble:v49 / v50];
      [v8 setObject:v55 forKey:@"unknownRatio"];
    }

    else
    {
      [v8 setObject:&unk_287F70048 forKey:@"staticRatio"];
      [v8 setObject:&unk_287F70048 forKey:@"pedestrianRatio"];
      [v8 setObject:&unk_287F70048 forKey:@"cyclingRatio"];
      [v8 setObject:&unk_287F70048 forKey:@"vehicularRatio"];
      [v8 setObject:&unk_287F70048 forKey:@"unknownRatio"];
    }

    v28 = [v8 copy];
  }

  else
  {
    v27 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
    {
      v58[0] = 68289026;
      v58[1] = 0;
      v59 = 2082;
      v60 = "";
      _os_log_impl(&dword_26F2E2000, v27, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TAAnalyticsManager nil device or service in conversion for home detection}", v58, 0x12u);
    }

    v28 = 0;
  }

  v56 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)_submitEvent:(id)a3 content:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(TAAnalyticsManagerSettings *)self->_settings enableSubmission];
  v9 = TAStatusLog;
  v10 = os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2113;
      v18 = v6;
      v19 = 2113;
      v20 = v7;
      _os_log_impl(&dword_26F2E2000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAAnalyticsManager Submitting analytics event, eventName:%{private}@, content:%{private}@}", buf, 0x26u);
    }

    v12 = v7;
    AnalyticsSendEventLazy();
  }

  else if (v10)
  {
    *buf = 68289539;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2113;
    v18 = v6;
    v19 = 2113;
    v20 = v7;
    _os_log_impl(&dword_26F2E2000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAAnalyticsManager Analytics submission not enabled, eventName:%{private}@, content:%{private}@}", buf, 0x26u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)trackingAvoidanceService:(id)a3 didFindSuspiciousDevices:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [TAAnalyticsManager _convertDetection:v12 service:v6];
        [(TAAnalyticsManager *)self _submitEvent:@"com.apple.clx.ta.notifyDetection" content:v13];
        if ([v12 detectionType] == 3)
        {
          v14 = [TAAnalyticsManager _convertHomeDetection:v12 service:v6];
          [(TAAnalyticsManager *)self _submitEvent:@"com.apple.clx.ta.arrivalHomeVisit" content:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)trackingAvoidanceService:(id)a3 requestingAdditionalInformation:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v53;
    v43 = @"deviceType";
    v44 = *v53;
    v45 = v7;
    do
    {
      v11 = 0;
      v46 = v9;
      do
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v52 + 1) + 8 * v11);
        v13 = [v12 key];
        v14 = [v13 isEqualToString:@"RequestingAdditionalScans"];

        v47 = v11;
        if (v14)
        {
          v15 = [TAAnalyticsManager _convertScanRequest:v12 service:v6];
          v16 = self;
          v17 = @"com.apple.clx.ta.ScanRequests";
          goto LABEL_8;
        }

        v18 = [v12 key];
        v19 = [v18 isEqualToString:@"ExpiringRecordMetrics"];

        if (v19)
        {
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v15 = [v12 additionalInformation];
          v20 = [v15 countByEnumeratingWithState:&v48 objects:v58 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v49;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v49 != v22)
                {
                  objc_enumerationMutation(v15);
                }

                v24 = *(*(&v48 + 1) + 8 * i);
                v25 = [v12 additionalInformation];
                v26 = [v25 objectForKeyedSubscript:v24];

                v27 = [TAAnalyticsManager _convertRecord:v26 service:v6];
                [(TAAnalyticsManager *)self _submitEvent:@"com.apple.clx.ta.recordExpiry" content:v27];
                v28 = [TAAnalyticsManager _convertRecordForAISFetch:v26 service:v6];
                [(TAAnalyticsManager *)self _submitEvent:@"com.apple.clx.ta.aisFetch.recordExpiry" content:v28];
              }

              v21 = [v15 countByEnumeratingWithState:&v48 objects:v58 count:16];
            }

            while (v21);
            v10 = v44;
            v7 = v45;
            v9 = v46;
          }

          goto LABEL_9;
        }

        v29 = [v12 key];
        v30 = [v29 isEqualToString:@"BOMObservationMetrics"];

        if (v30)
        {
          v31 = [v12 additionalInformation];
          v15 = [TAAnalyticsManager _convertBOMObservation:v31];

          v16 = self;
          v17 = @"com.apple.clx.ta.BOMObservations";
LABEL_8:
          [(TAAnalyticsManager *)v16 _submitEvent:v17 content:v15];
LABEL_9:

          goto LABEL_10;
        }

        v32 = [v12 key];
        v33 = [v32 isEqualToString:@"PlaySoundWithDetectionMetrics"];

        if (v33)
        {
          v34 = [v12 additionalInformation];
          v15 = [TAAnalyticsManager _convertPlaySoundWithDetection:v34];

          v16 = self;
          v17 = @"com.apple.clx.ta.playsound";
          goto LABEL_8;
        }

        v35 = [v12 key];
        v36 = [v35 isEqualToString:@"AISFetchMetrics"];

        if (v36)
        {
          v37 = [v12 additionalInformation];
          v15 = [TAAnalyticsManager _convertAISFetch:v37];

          [(TAAnalyticsManager *)self _submitEvent:@"com.apple.clx.ta.aisFetch" content:v15];
          v56[0] = @"numOfFetchesPerDay";
          v56[1] = @"accessoryType";
          v57[0] = &unk_287F6FF20;
          v38 = [v12 additionalInformation];
          v39 = [v38 objectForKeyedSubscript:v43];
          v57[1] = v39;
          v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
          [(TAAnalyticsManager *)self _submitEvent:@"com.apple.clx.ta.aisFetchCount" content:v40];

          goto LABEL_9;
        }

LABEL_10:
        v11 = v47 + 1;
      }

      while (v47 + 1 != v9);
      v41 = [v7 countByEnumeratingWithState:&v52 objects:v59 count:16];
      v9 = v41;
    }

    while (v41);
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)didWriteToURL:(id)a3 bytes:(unint64_t)a4
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"type";
  v9[1] = @"numOperations";
  v10[0] = @"write";
  v10[1] = &unk_287F6FF20;
  v9[2] = @"size";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v10[2] = v5;
  v9[3] = @"settingsVersion";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAAnalyticsManagerSettings settingsVersion](self->_settings, "settingsVersion")}];
  v10[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  [(TAAnalyticsManager *)self _submitEvent:@"com.apple.clx.ta.persistence" content:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)didReadFromURL:(id)a3 bytes:(unint64_t)a4
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"type";
  v9[1] = @"numOperations";
  v10[0] = @"read";
  v10[1] = &unk_287F6FF20;
  v9[2] = @"size";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v10[2] = v5;
  v9[3] = @"settingsVersion";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAAnalyticsManagerSettings settingsVersion](self->_settings, "settingsVersion")}];
  v10[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  [(TAAnalyticsManager *)self _submitEvent:@"com.apple.clx.ta.persistence" content:v7];
  v8 = *MEMORY[0x277D85DE8];
}

@end