@interface TAAnalyticsManager
+ (double)_getMotionDuration:(unint64_t)duration motionDistribution:(id)distribution;
+ (id)_convertAISFetch:(id)fetch;
+ (id)_convertBOMObservation:(id)observation;
+ (id)_convertDetection:(id)detection service:(id)service;
+ (id)_convertHomeDetection:(id)detection service:(id)service;
+ (id)_convertPlaySoundWithDetection:(id)detection;
+ (id)_convertRecord:(id)record service:(id)service;
+ (id)_convertRecordForAISFetch:(id)fetch service:(id)service;
+ (id)_convertScanRequest:(id)request service:(id)service;
+ (int64_t)getHour:(id)hour;
- (TAAnalyticsManager)init;
- (TAAnalyticsManager)initWithSettings:(id)settings;
- (void)_submitDefaultAISFetchCountEvent;
- (void)_submitEvent:(id)event content:(id)content;
- (void)didReadFromURL:(id)l bytes:(unint64_t)bytes;
- (void)didWriteToURL:(id)l bytes:(unint64_t)bytes;
- (void)trackingAvoidanceService:(id)service didFindSuspiciousDevices:(id)devices;
- (void)trackingAvoidanceService:(id)service requestingAdditionalInformation:(id)information;
@end

@implementation TAAnalyticsManager

- (TAAnalyticsManager)init
{
  v3 = objc_alloc_init(TAAnalyticsManagerSettings);
  v4 = [(TAAnalyticsManager *)self initWithSettings:v3];

  return v4;
}

- (TAAnalyticsManager)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = TAAnalyticsManager;
  v6 = [(TAAnalyticsManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
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

+ (id)_convertScanRequest:(id)request service:(id)service
{
  v24[4] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  serviceCopy = service;
  v7 = serviceCopy;
  v8 = 0;
  if (requestCopy && serviceCopy)
  {
    v9 = [requestCopy key];
    v10 = [v9 isEqualToString:@"RequestingAdditionalScans"];

    if (v10)
    {
      additionalInformation = [requestCopy additionalInformation];
      v12 = [additionalInformation objectForKey:@"ScanRequestReason"];
      if (v12)
      {
        additionalInformation2 = [requestCopy additionalInformation];
        v14 = [additionalInformation2 objectForKey:@"ScanRequestReason"];
      }

      else
      {
        v14 = @"Unknown";
      }

      v24[0] = &unk_287F6FF20;
      v23[0] = @"scanRequests";
      v23[1] = @"maximumScanRequests";
      v15 = MEMORY[0x277CCABB0];
      settings = [v7 settings];
      v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(settings, "maximumDailyScans")}];
      v24[1] = v17;
      v24[2] = v14;
      v23[2] = @"reason";
      v23[3] = @"settingsVersion";
      v18 = MEMORY[0x277CCABB0];
      settings2 = [v7 settings];
      v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(settings2, "settingsVersion")}];
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

+ (int64_t)getHour:(id)hour
{
  v3 = MEMORY[0x277CBEA80];
  hourCopy = hour;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:32 fromDate:hourCopy];

  hour = [v6 hour];
  return hour;
}

+ (id)_convertDetection:(id)detection service:(id)service
{
  v87 = *MEMORY[0x277D85DE8];
  detectionCopy = detection;
  serviceCopy = service;
  v7 = serviceCopy;
  if (detectionCopy && serviceCopy)
  {
    store = [serviceCopy store];
    deviceRecord = [store deviceRecord];
    address = [detectionCopy address];
    v11 = [deviceRecord hasSurfacedNotificationFor:address];

    locationHistory = [detectionCopy locationHistory];
    v13 = [locationHistory count];

    if (v13 < 2)
    {
      v34 = 0.0;
      v35 = -1.0;
    }

    else
    {
      locationHistory2 = [detectionCopy locationHistory];
      firstObject = [locationHistory2 firstObject];
      getDate = [firstObject getDate];

      locationHistory3 = [detectionCopy locationHistory];
      firstObject2 = [locationHistory3 firstObject];
      getDate2 = [firstObject2 getDate];

      locationHistory4 = [detectionCopy locationHistory];
      v21 = [locationHistory4 count];

      if (v21 < 2)
      {
        v29 = getDate2;
        v27 = getDate;
      }

      else
      {
        v22 = 1;
        do
        {
          locationHistory5 = [detectionCopy locationHistory];
          v24 = [locationHistory5 objectAtIndexedSubscript:v22];
          getDate3 = [v24 getDate];

          if ([getDate compare:getDate3] == 1)
          {
            v26 = getDate3;
          }

          else
          {
            v26 = getDate;
          }

          v27 = v26;

          if ([getDate2 compare:getDate3] == -1)
          {
            v28 = getDate3;
          }

          else
          {
            v28 = getDate2;
          }

          v29 = v28;

          ++v22;
          locationHistory6 = [detectionCopy locationHistory];
          v31 = [locationHistory6 count];

          getDate = v27;
          getDate2 = v29;
        }

        while (v31 > v22);
      }

      [v29 timeIntervalSinceDate:v27];
      v34 = v36;
      store2 = [v7 store];
      deviceRecord2 = [store2 deviceRecord];
      address2 = [detectionCopy address];
      v40 = [deviceRecord2 getFirstStagedDetectionDate:address2];

      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      LOBYTE(deviceRecord2) = [v40 isEqual:distantFuture];

      v35 = -1.0;
      if ((deviceRecord2 & 1) == 0)
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

    store3 = [v7 store];
    deviceRecord3 = [store3 deviceRecord];
    address3 = [detectionCopy address];
    v46 = [deviceRecord3 getNumStagedDetections:address3];

    store4 = [v7 store];
    deviceRecord4 = [store4 deviceRecord];
    address4 = [detectionCopy address];
    v80 = [deviceRecord4 getNumOfAISFetch:address4];

    latestAdvertisement = [detectionCopy latestAdvertisement];
    v51 = +[TASPAdvertisement TASPAdvertisementDeviceTypeToString:](TASPAdvertisement, "TASPAdvertisementDeviceTypeToString:", [latestAdvertisement getDeviceType]);

    accessoryInfo = [detectionCopy accessoryInfo];

    if (accessoryInfo)
    {
      accessoryInfo2 = [detectionCopy accessoryInfo];
      latestAdvertisement2 = [detectionCopy latestAdvertisement];
      v55 = [latestAdvertisement2 getLatestAdvTypeToString:0];
      v56 = [accessoryInfo2 accessoryTypeNameWithAdvTypeString:v55];

      v51 = latestAdvertisement2;
    }

    else
    {
      accessoryInfo2 = [detectionCopy latestAdvertisement];
      v56 = [accessoryInfo2 getLatestAdvTypeToString:v51];
    }

    v75 = v56;

    store5 = [v7 store];
    deviceRecord5 = [store5 deviceRecord];
    address5 = [detectionCopy address];
    v78 = [deviceRecord5 isAISFetchSuccessful:address5];

    v60 = MEMORY[0x277CCACA8];
    v61 = +[TAMetricsDetection convertTADetectionTypeToString:](TAMetricsDetection, "convertTADetectionTypeToString:", [detectionCopy detectionType]);
    v62 = +[TASuspiciousDevice convertTAForceSurfaceReasonToString:](TASuspiciousDevice, "convertTAForceSurfaceReasonToString:", [detectionCopy forceSurfaceReason]);
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
    [detectionCopy date];
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
    settings = [v81 settings];
    v70 = [v68 numberWithUnsignedInteger:{objc_msgSend(settings, "settingsVersion")}];
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

+ (id)_convertRecord:(id)record service:(id)service
{
  recordCopy = record;
  v6 = 0;
  if (recordCopy && service)
  {
    serviceCopy = service;
    v8 = +[TASPAdvertisement TASPAdvertisementDeviceTypeToString:](TASPAdvertisement, "TASPAdvertisementDeviceTypeToString:", [recordCopy getDeviceType]);
    accessoryInfo = [recordCopy accessoryInfo];

    if (accessoryInfo)
    {
      accessoryInfo2 = [recordCopy accessoryInfo];
      latestAdvertisement = [recordCopy latestAdvertisement];
      v12 = [latestAdvertisement getLatestAdvTypeToString:0];
      v13 = [accessoryInfo2 accessoryTypeNameWithAdvTypeString:v12];

      v8 = latestAdvertisement;
    }

    else
    {
      accessoryInfo2 = [recordCopy latestAdvertisement];
      v13 = [accessoryInfo2 getLatestAdvTypeToString:v8];
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
    settings = [serviceCopy settings];

    v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(settings, "settingsVersion")}];
    [v14 setObject:v17 forKey:@"settingsVersion"];

    [v14 setObject:&unk_287F6FF20 forKey:@"submissionCount"];
    v18 = +[TADeviceInformation deviceTypeToString:](TADeviceInformation, "deviceTypeToString:", [recordCopy type]);
    [v14 setObject:v18 forKey:@"deviceRelation"];

    [v14 setObject:@"Unknown" forKey:@"firstAlertType"];
    v19 = MEMORY[0x277CCABB0];
    earliestObservationDate = [recordCopy earliestObservationDate];
    v21 = [v19 numberWithInteger:{objc_msgSend(earliestObservationDate, "getMinutesSinceStartOfDay")}];
    [v14 setObject:v21 forKey:@"minuteOfFirstObservation"];

    firstSurfacedAlertDate = [recordCopy firstSurfacedAlertDate];
    if (firstSurfacedAlertDate)
    {
      v23 = firstSurfacedAlertDate;
      firstSurfacedAlertDate2 = [recordCopy firstSurfacedAlertDate];
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      v26 = [firstSurfacedAlertDate2 isEqual:distantFuture];

      if ((v26 & 1) == 0)
      {
        v27 = MEMORY[0x277CCABB0];
        firstSurfacedAlertDate3 = [recordCopy firstSurfacedAlertDate];
        earliestObservationDate2 = [recordCopy earliestObservationDate];
        [firstSurfacedAlertDate3 timeIntervalSinceDate:earliestObservationDate2];
        v31 = [v27 numberWithInt:(v30 / 60)];
        [v14 setObject:v31 forKey:@"minuteOfFirstDetection"];
      }
    }

    v32 = +[TAMetricsDetection convertTADetectionTypeToString:](TAMetricsDetection, "convertTADetectionTypeToString:", [recordCopy firstSurfacedAlertType]);
    [v14 setObject:v32 forKey:@"firstAlertType"];

    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(recordCopy, "numSurfacedAlerts")}];
    [v14 setObject:v33 forKey:@"numSurfacedAlerts"];

    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(recordCopy, "numPotentialSurfacedAlerts")}];
    [v14 setObject:v34 forKey:@"numPotentialSurfacedAlerts"];

    v35 = [recordCopy backgroundDetectionCountForDetectionType:11];
    v36 = [recordCopy firstDetectionDateForDetectionType:11];
    if (v36)
    {
      v37 = MEMORY[0x277CCABB0];
      earliestObservationDate3 = [recordCopy earliestObservationDate];
      [v36 timeIntervalSinceDate:earliestObservationDate3];
      v40 = [v37 numberWithInt:(v39 / 60)];
      [v14 setObject:v40 forKey:@"minuteOfFirstArrivingWork"];
    }

    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v35];
    [v14 setObject:v41 forKey:@"numArrivingWork"];

    v42 = [recordCopy backgroundDetectionCountForDetectionType:13];
    v43 = [recordCopy firstDetectionDateForDetectionType:13];
    if (v43)
    {
      v44 = MEMORY[0x277CCABB0];
      earliestObservationDate4 = [recordCopy earliestObservationDate];
      [v43 timeIntervalSinceDate:earliestObservationDate4];
      v47 = [v44 numberWithInt:(v46 / 60)];
      [v14 setObject:v47 forKey:@"minuteOfFirstBeepOnMovePedestrian"];
    }

    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v42];
    [v14 setObject:v48 forKey:@"numBeepOnMovePedestrian"];

    v49 = [recordCopy backgroundDetectionCountForDetectionType:12];
    v50 = [recordCopy firstDetectionDateForDetectionType:12];
    if (v50)
    {
      v51 = MEMORY[0x277CCABB0];
      earliestObservationDate5 = [recordCopy earliestObservationDate];
      [v50 timeIntervalSinceDate:earliestObservationDate5];
      v54 = [v51 numberWithInt:(v53 / 60)];
      [v14 setObject:v54 forKey:@"minuteOfFirstBeepOnMoveVehicular"];
    }

    v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v49];
    [v14 setObject:v55 forKey:@"numBeepOnMoveVehicular"];

    v56 = [recordCopy backgroundDetectionCountForDetectionType:6];
    v57 = [recordCopy firstDetectionDateForDetectionType:6];
    if (v57)
    {
      v58 = MEMORY[0x277CCABB0];
      earliestObservationDate6 = [recordCopy earliestObservationDate];
      [v57 timeIntervalSinceDate:earliestObservationDate6];
      v61 = [v58 numberWithInt:(v60 / 60)];
      [v14 setObject:v61 forKey:@"minuteOfFirstLeavingHome"];
    }

    v120 = v57;
    v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v56];
    [v14 setObject:v62 forKey:@"numLeavingHome"];

    v63 = [recordCopy backgroundDetectionCountForDetectionType:10];
    v64 = [recordCopy firstDetectionDateForDetectionType:10];
    if (v64)
    {
      v65 = MEMORY[0x277CCABB0];
      earliestObservationDate7 = [recordCopy earliestObservationDate];
      [v64 timeIntervalSinceDate:earliestObservationDate7];
      v68 = [v65 numberWithInt:(v67 / 60)];
      [v14 setObject:v68 forKey:@"minuteOfFirstLeavingWork"];
    }

    v116 = v50;
    v117 = v43;
    v118 = v36;
    v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v63];
    [v14 setObject:v69 forKey:@"numLeavingWork"];

    v70 = [recordCopy backgroundDetectionCountForDetectionType:15];
    v71 = [recordCopy firstDetectionDateForDetectionType:15];
    if (v71)
    {
      v72 = MEMORY[0x277CCABB0];
      earliestObservationDate8 = [recordCopy earliestObservationDate];
      [v71 timeIntervalSinceDate:earliestObservationDate8];
      v75 = [v72 numberWithInt:(v74 / 60)];
      [v14 setObject:v75 forKey:@"minuteOfFirstPLOIPedestrian"];
    }

    v114 = v71;
    v76 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v70];
    [v14 setObject:v76 forKey:@"numPLOIPedestrian"];

    v77 = [recordCopy backgroundDetectionCountForDetectionType:14];
    v78 = [recordCopy firstDetectionDateForDetectionType:14];
    v79 = v120;
    if (v78)
    {
      v80 = MEMORY[0x277CCABB0];
      earliestObservationDate9 = [recordCopy earliestObservationDate];
      [v78 timeIntervalSinceDate:earliestObservationDate9];
      v83 = [v80 numberWithInt:(v82 / 60)];
      [v14 setObject:v83 forKey:@"minuteOfFirstPLOIVehicular"];
    }

    v115 = v64;
    v84 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v77];
    [v14 setObject:v84 forKey:@"numPLOIVehicular"];

    v85 = [recordCopy backgroundDetectionCountForDetectionType:16];
    v86 = [recordCopy firstDetectionDateForDetectionType:16];
    if (v86)
    {
      v87 = MEMORY[0x277CCABB0];
      earliestObservationDate10 = [recordCopy earliestObservationDate];
      [v86 timeIntervalSinceDate:earliestObservationDate10];
      v90 = [v87 numberWithInt:(v89 / 60)];
      [v14 setObject:v90 forKey:@"minuteOfFirstThreeConsecutiveVisit"];
    }

    v91 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v85];
    [v14 setObject:v91 forKey:@"numThreeConsecutive"];

    v92 = [recordCopy backgroundDetectionCountForDetectionType:7];
    v93 = [recordCopy firstDetectionDateForDetectionType:7];
    if (v93)
    {
      v94 = MEMORY[0x277CCABB0];
      earliestObservationDate11 = [recordCopy earliestObservationDate];
      [v93 timeIntervalSinceDate:earliestObservationDate11];
      v97 = [v94 numberWithInt:(v96 / 60)];
      [v14 setObject:v97 forKey:@"minuteOfFirstVehicular"];

      v79 = v120;
    }

    v98 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v92];
    [v14 setObject:v98 forKey:@"numVehicular"];

    v99 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(recordCopy, "playSoundAttemptCount")}];
    [v14 setObject:v99 forKey:@"numAttemptPlaySound"];

    v100 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(recordCopy, "playSoundFailureCount")}];
    [v14 setObject:v100 forKey:@"numFailurePlaySound"];

    v101 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(recordCopy, "playSoundSuccessCount")}];
    [v14 setObject:v101 forKey:@"numSuccessfulPlaySound"];

    v102 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(recordCopy, "numBeepOnMove")}];
    [v14 setObject:v102 forKey:@"numBOMCount"];

    firstBeepOnMoveDate = [recordCopy firstBeepOnMoveDate];
    if (firstBeepOnMoveDate)
    {
      v104 = firstBeepOnMoveDate;
      firstBeepOnMoveDate2 = [recordCopy firstBeepOnMoveDate];
      distantFuture2 = [MEMORY[0x277CBEAA8] distantFuture];
      v107 = [firstBeepOnMoveDate2 isEqual:distantFuture2];

      v79 = v120;
      if ((v107 & 1) == 0)
      {
        v108 = MEMORY[0x277CCABB0];
        firstBeepOnMoveDate3 = [recordCopy firstBeepOnMoveDate];
        earliestObservationDate12 = [recordCopy earliestObservationDate];
        [firstBeepOnMoveDate3 timeIntervalSinceDate:earliestObservationDate12];
        v112 = [v108 numberWithInt:(v111 / 60)];
        [v14 setObject:v112 forKey:@"minuteOfFirstBOM"];

        v79 = v120;
      }
    }

    v6 = [v14 copy];
  }

  return v6;
}

+ (id)_convertRecordForAISFetch:(id)fetch service:(id)service
{
  fetchCopy = fetch;
  v6 = 0;
  if (fetchCopy && service)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = +[TASPAdvertisement TASPAdvertisementDeviceTypeToString:](TASPAdvertisement, "TASPAdvertisementDeviceTypeToString:", [fetchCopy getDeviceType]);
    accessoryInfo = [fetchCopy accessoryInfo];

    if (accessoryInfo)
    {
      accessoryInfo2 = [fetchCopy accessoryInfo];
      latestAdvertisement = [fetchCopy latestAdvertisement];
      v12 = [latestAdvertisement getLatestAdvTypeToString:0];
      v13 = [accessoryInfo2 accessoryTypeNameWithAdvTypeString:v12];

      v8 = latestAdvertisement;
    }

    else
    {
      accessoryInfo2 = [fetchCopy latestAdvertisement];
      v13 = [accessoryInfo2 getLatestAdvTypeToString:v8];
    }

    [v7 setObject:v13 forKey:@"accessoryType"];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(fetchCopy, "AISFetchCount")}];
    [v7 setObject:v14 forKey:@"numOfFetches"];

    accessoryInfo3 = [fetchCopy accessoryInfo];
    v16 = accessoryInfo3 != 0;

    v17 = [MEMORY[0x277CCABB0] numberWithBool:v16];
    [v7 setObject:v17 forKey:@"isFetchSuccessful"];

    v6 = [v7 copy];
  }

  return v6;
}

+ (id)_convertBOMObservation:(id)observation
{
  observationCopy = observation;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [observationCopy objectForKeyedSubscript:@"timeSinceBOM"];

  if (v5)
  {
    v6 = [observationCopy objectForKeyedSubscript:@"timeSinceBOM"];
    [v6 doubleValue];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:(v7 / 60)];
    [v4 setObject:v8 forKey:@"minutesSinceLastBOMBounded"];
  }

  v9 = [observationCopy objectForKeyedSubscript:@"productInfo"];

  if (v9)
  {
    v10 = [observationCopy objectForKeyedSubscript:@"productInfo"];
    [v4 setObject:v10 forKey:@"productInfo"];
  }

  v11 = [v4 copy];

  return v11;
}

+ (id)_convertPlaySoundWithDetection:(id)detection
{
  detectionCopy = detection;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [detectionCopy objectForKeyedSubscript:@"firstAlertMinutes"];

  if (v5)
  {
    v6 = [detectionCopy objectForKeyedSubscript:@"firstAlertMinutes"];
    [v4 setObject:v6 forKey:@"firstAlertMinutes"];
  }

  v7 = [detectionCopy objectForKeyedSubscript:@"firstSeenMinutes"];

  if (v7)
  {
    v8 = [detectionCopy objectForKeyedSubscript:@"firstSeenMinutes"];
    [v4 setObject:v8 forKey:@"firstSeenMinutes"];
  }

  v9 = [detectionCopy objectForKeyedSubscript:@"lastAlertMinutes"];

  if (v9)
  {
    v10 = [detectionCopy objectForKeyedSubscript:@"lastAlertMinutes"];
    [v4 setObject:v10 forKey:@"lastAlertMinutes"];
  }

  v11 = [detectionCopy objectForKeyedSubscript:@"lastAttemptMinutes"];

  if (v11)
  {
    v12 = [detectionCopy objectForKeyedSubscript:@"lastAttemptMinutes"];
    [v4 setObject:v12 forKey:@"lastAttemptMinutes"];
  }

  v13 = [detectionCopy objectForKeyedSubscript:@"productInfo"];

  if (v13)
  {
    v14 = [detectionCopy objectForKeyedSubscript:@"productInfo"];
    [v4 setObject:v14 forKey:@"productInfo"];
  }

  v15 = [detectionCopy objectForKeyedSubscript:@"soundCount"];

  if (v15)
  {
    v16 = [detectionCopy objectForKeyedSubscript:@"soundCount"];
    [v4 setObject:v16 forKey:@"soundCount"];
  }

  v17 = [detectionCopy objectForKeyedSubscript:@"soundMinutes"];

  if (v17)
  {
    v18 = [detectionCopy objectForKeyedSubscript:@"soundMinutes"];
    [v4 setObject:v18 forKey:@"soundMinutes"];
  }

  v19 = [detectionCopy objectForKeyedSubscript:@"success"];

  if (v19)
  {
    v20 = [detectionCopy objectForKeyedSubscript:@"success"];
    [v4 setObject:v20 forKey:@"success"];
  }

  v21 = [v4 copy];

  return v21;
}

+ (id)_convertAISFetch:(id)fetch
{
  fetchCopy = fetch;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [fetchCopy objectForKeyedSubscript:@"firstSeenSeconds"];

  if (v5)
  {
    v6 = [fetchCopy objectForKeyedSubscript:@"firstSeenSeconds"];
    [v4 setObject:v6 forKey:@"secondsFromFirstSeen"];
  }

  v7 = [fetchCopy objectForKeyedSubscript:@"success"];

  if (v7)
  {
    v8 = [fetchCopy objectForKeyedSubscript:@"success"];
    [v4 setObject:v8 forKey:@"fetchSucceed"];
  }

  v9 = [fetchCopy objectForKeyedSubscript:@"deviceType"];

  if (v9)
  {
    v10 = [fetchCopy objectForKeyedSubscript:@"deviceType"];
    [v4 setObject:v10 forKey:@"accessoryType"];
  }

  v11 = [fetchCopy objectForKeyedSubscript:@"fetchCount"];

  if (v11)
  {
    v12 = [fetchCopy objectForKeyedSubscript:@"fetchCount"];
    [v4 setObject:v12 forKey:@"fetchCount"];
  }

  v13 = [fetchCopy objectForKeyedSubscript:@"lastAttemptMinutes"];

  if (v13)
  {
    v14 = [fetchCopy objectForKeyedSubscript:@"lastAttemptMinutes"];
    [v4 setObject:v14 forKey:@"lastAttemptMinutes"];
  }

  v15 = [v4 copy];

  return v15;
}

+ (double)_getMotionDuration:(unint64_t)duration motionDistribution:(id)distribution
{
  distributionCopy = distribution;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:duration];
  v7 = [distributionCopy objectForKey:v6];

  if (v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:duration];
    v9 = [distributionCopy objectForKeyedSubscript:v8];
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

+ (id)_convertHomeDetection:(id)detection service:(id)service
{
  v61 = *MEMORY[0x277D85DE8];
  detectionCopy = detection;
  serviceCopy = service;
  v7 = serviceCopy;
  if (detectionCopy && serviceCopy)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    detectionMetrics = [detectionCopy detectionMetrics];
    singleVisitDetectionMetrics = [detectionMetrics singleVisitDetectionMetrics];
    interVisitMetrics = [singleVisitDetectionMetrics interVisitMetrics];
    [interVisitMetrics duration];
    v13 = v12;

    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v13 / 60.0];
    [v8 setObject:v14 forKey:@"duration"];

    v15 = MEMORY[0x277CCABB0];
    detectionMetrics2 = [detectionCopy detectionMetrics];
    singleVisitDetectionMetrics2 = [detectionMetrics2 singleVisitDetectionMetrics];
    interVisitMetrics2 = [singleVisitDetectionMetrics2 interVisitMetrics];
    [interVisitMetrics2 distance];
    v19 = [v15 numberWithDouble:?];
    [v8 setObject:v19 forKey:@"distanceTraveled"];

    latestAdvertisement = [detectionCopy latestAdvertisement];
    v21 = +[TASPAdvertisement TASPAdvertisementDeviceTypeToString:](TASPAdvertisement, "TASPAdvertisementDeviceTypeToString:", [latestAdvertisement getDeviceType]);

    accessoryInfo = [detectionCopy accessoryInfo];

    if (accessoryInfo)
    {
      accessoryInfo2 = [detectionCopy accessoryInfo];
      latestAdvertisement2 = [detectionCopy latestAdvertisement];
      v25 = [latestAdvertisement2 getLatestAdvTypeToString:0];
      v26 = [accessoryInfo2 accessoryTypeNameWithAdvTypeString:v25];

      v21 = latestAdvertisement2;
    }

    else
    {
      accessoryInfo2 = [detectionCopy latestAdvertisement];
      v26 = [accessoryInfo2 getLatestAdvTypeToString:v21];
    }

    [v8 setObject:v26 forKey:@"deviceType"];
    detectionMetrics3 = [detectionCopy detectionMetrics];
    singleVisitDetectionMetrics3 = [detectionMetrics3 singleVisitDetectionMetrics];
    previousVisitType = [singleVisitDetectionMetrics3 previousVisitType];

    if (previousVisitType == 1)
    {
      v32 = @"Home";
    }

    else
    {
      detectionMetrics4 = [detectionCopy detectionMetrics];
      singleVisitDetectionMetrics4 = [detectionMetrics4 singleVisitDetectionMetrics];
      previousVisitType2 = [singleVisitDetectionMetrics4 previousVisitType];

      if (previousVisitType2)
      {
        v32 = @"Non-Home";
      }

      else
      {
        v32 = @"Unknown";
      }
    }

    [v8 setObject:v32 forKey:@"lastVisitType"];
    detectionMetrics5 = [detectionCopy detectionMetrics];
    singleVisitDetectionMetrics5 = [detectionMetrics5 singleVisitDetectionMetrics];
    interVisitMetrics3 = [singleVisitDetectionMetrics5 interVisitMetrics];
    durationPerMotionState = [interVisitMetrics3 durationPerMotionState];

    [TAAnalyticsManager _getMotionDuration:1 motionDistribution:durationPerMotionState];
    v41 = v40;
    [TAAnalyticsManager _getMotionDuration:2 motionDistribution:durationPerMotionState];
    v43 = v42;
    [TAAnalyticsManager _getMotionDuration:3 motionDistribution:durationPerMotionState];
    v45 = v44;
    [TAAnalyticsManager _getMotionDuration:4 motionDistribution:durationPerMotionState];
    v47 = v46;
    [TAAnalyticsManager _getMotionDuration:0 motionDistribution:durationPerMotionState];
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

- (void)_submitEvent:(id)event content:(id)content
{
  v21 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  contentCopy = content;
  enableSubmission = [(TAAnalyticsManagerSettings *)self->_settings enableSubmission];
  v9 = TAStatusLog;
  v10 = os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT);
  if (enableSubmission)
  {
    if (v10)
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2113;
      v18 = eventCopy;
      v19 = 2113;
      v20 = contentCopy;
      _os_log_impl(&dword_26F2E2000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAAnalyticsManager Submitting analytics event, eventName:%{private}@, content:%{private}@}", buf, 0x26u);
    }

    v12 = contentCopy;
    AnalyticsSendEventLazy();
  }

  else if (v10)
  {
    *buf = 68289539;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2113;
    v18 = eventCopy;
    v19 = 2113;
    v20 = contentCopy;
    _os_log_impl(&dword_26F2E2000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAAnalyticsManager Analytics submission not enabled, eventName:%{private}@, content:%{private}@}", buf, 0x26u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)trackingAvoidanceService:(id)service didFindSuspiciousDevices:(id)devices
{
  v21 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  devicesCopy = devices;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [devicesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(devicesCopy);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [TAAnalyticsManager _convertDetection:v12 service:serviceCopy];
        [(TAAnalyticsManager *)self _submitEvent:@"com.apple.clx.ta.notifyDetection" content:v13];
        if ([v12 detectionType] == 3)
        {
          v14 = [TAAnalyticsManager _convertHomeDetection:v12 service:serviceCopy];
          [(TAAnalyticsManager *)self _submitEvent:@"com.apple.clx.ta.arrivalHomeVisit" content:v14];
        }
      }

      v9 = [devicesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)trackingAvoidanceService:(id)service requestingAdditionalInformation:(id)information
{
  v60 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  informationCopy = information;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v8 = [informationCopy countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v53;
    v43 = @"deviceType";
    v44 = *v53;
    v45 = informationCopy;
    do
    {
      v11 = 0;
      v46 = v9;
      do
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(informationCopy);
        }

        v12 = *(*(&v52 + 1) + 8 * v11);
        v13 = [v12 key];
        v14 = [v13 isEqualToString:@"RequestingAdditionalScans"];

        v47 = v11;
        if (v14)
        {
          additionalInformation = [TAAnalyticsManager _convertScanRequest:v12 service:serviceCopy];
          selfCopy3 = self;
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
          additionalInformation = [v12 additionalInformation];
          v20 = [additionalInformation countByEnumeratingWithState:&v48 objects:v58 count:16];
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
                  objc_enumerationMutation(additionalInformation);
                }

                v24 = *(*(&v48 + 1) + 8 * i);
                additionalInformation2 = [v12 additionalInformation];
                v26 = [additionalInformation2 objectForKeyedSubscript:v24];

                v27 = [TAAnalyticsManager _convertRecord:v26 service:serviceCopy];
                [(TAAnalyticsManager *)self _submitEvent:@"com.apple.clx.ta.recordExpiry" content:v27];
                v28 = [TAAnalyticsManager _convertRecordForAISFetch:v26 service:serviceCopy];
                [(TAAnalyticsManager *)self _submitEvent:@"com.apple.clx.ta.aisFetch.recordExpiry" content:v28];
              }

              v21 = [additionalInformation countByEnumeratingWithState:&v48 objects:v58 count:16];
            }

            while (v21);
            v10 = v44;
            informationCopy = v45;
            v9 = v46;
          }

          goto LABEL_9;
        }

        v29 = [v12 key];
        v30 = [v29 isEqualToString:@"BOMObservationMetrics"];

        if (v30)
        {
          additionalInformation3 = [v12 additionalInformation];
          additionalInformation = [TAAnalyticsManager _convertBOMObservation:additionalInformation3];

          selfCopy3 = self;
          v17 = @"com.apple.clx.ta.BOMObservations";
LABEL_8:
          [(TAAnalyticsManager *)selfCopy3 _submitEvent:v17 content:additionalInformation];
LABEL_9:

          goto LABEL_10;
        }

        v32 = [v12 key];
        v33 = [v32 isEqualToString:@"PlaySoundWithDetectionMetrics"];

        if (v33)
        {
          additionalInformation4 = [v12 additionalInformation];
          additionalInformation = [TAAnalyticsManager _convertPlaySoundWithDetection:additionalInformation4];

          selfCopy3 = self;
          v17 = @"com.apple.clx.ta.playsound";
          goto LABEL_8;
        }

        v35 = [v12 key];
        v36 = [v35 isEqualToString:@"AISFetchMetrics"];

        if (v36)
        {
          additionalInformation5 = [v12 additionalInformation];
          additionalInformation = [TAAnalyticsManager _convertAISFetch:additionalInformation5];

          [(TAAnalyticsManager *)self _submitEvent:@"com.apple.clx.ta.aisFetch" content:additionalInformation];
          v56[0] = @"numOfFetchesPerDay";
          v56[1] = @"accessoryType";
          v57[0] = &unk_287F6FF20;
          additionalInformation6 = [v12 additionalInformation];
          v39 = [additionalInformation6 objectForKeyedSubscript:v43];
          v57[1] = v39;
          v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
          [(TAAnalyticsManager *)self _submitEvent:@"com.apple.clx.ta.aisFetchCount" content:v40];

          goto LABEL_9;
        }

LABEL_10:
        v11 = v47 + 1;
      }

      while (v47 + 1 != v9);
      v41 = [informationCopy countByEnumeratingWithState:&v52 objects:v59 count:16];
      v9 = v41;
    }

    while (v41);
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)didWriteToURL:(id)l bytes:(unint64_t)bytes
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"type";
  v9[1] = @"numOperations";
  v10[0] = @"write";
  v10[1] = &unk_287F6FF20;
  v9[2] = @"size";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:bytes];
  v10[2] = v5;
  v9[3] = @"settingsVersion";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAAnalyticsManagerSettings settingsVersion](self->_settings, "settingsVersion")}];
  v10[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  [(TAAnalyticsManager *)self _submitEvent:@"com.apple.clx.ta.persistence" content:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)didReadFromURL:(id)l bytes:(unint64_t)bytes
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"type";
  v9[1] = @"numOperations";
  v10[0] = @"read";
  v10[1] = &unk_287F6FF20;
  v9[2] = @"size";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:bytes];
  v10[2] = v5;
  v9[3] = @"settingsVersion";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TAAnalyticsManagerSettings settingsVersion](self->_settings, "settingsVersion")}];
  v10[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  [(TAAnalyticsManager *)self _submitEvent:@"com.apple.clx.ta.persistence" content:v7];
  v8 = *MEMORY[0x277D85DE8];
}

@end