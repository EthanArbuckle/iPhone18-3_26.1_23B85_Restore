@interface TAFilterLeavingLOI
+ (BOOL)shouldDetectWithStore:(id)store filterLeavingLOISettings:(id)settings;
+ (id)filterSuspiciousDeviceWithStore:(id)store leavingLOISettings:(id)settings andAppendOutgoingRequestsTo:(id)to;
+ (unint64_t)getLeavingLOIDetectionTypeForLOIType:(unint64_t)type;
+ (unint64_t)getLeavingLOINotificationImmediacyTypeForLOIType:(unint64_t)type leavingLOISettings:(id)settings;
@end

@implementation TAFilterLeavingLOI

+ (id)filterSuspiciousDeviceWithStore:(id)store leavingLOISettings:(id)settings andAppendOutgoingRequestsTo:(id)to
{
  v139 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  settingsCopy = settings;
  v102 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([TAFilterLeavingLOI shouldDetectWithStore:storeCopy filterLeavingLOISettings:settingsCopy])
  {
    if (!settingsCopy)
    {
      settingsCopy = [[TAFilterLeavingLOISettings alloc] initWithDefaults];
    }

    visitState = [storeCopy visitState];
    visitSnapshotBuffer = [visitState visitSnapshotBuffer];
    lastObject = [visitSnapshotBuffer lastObject];

    v110 = storeCopy;
    visitState2 = [storeCopy visitState];
    interVisitMetricSnapshotBuffer = [visitState2 interVisitMetricSnapshotBuffer];
    lastObject2 = [interVisitMetricSnapshotBuffer lastObject];

    visitsSettings = [(TAFilterLeavingLOISettings *)settingsCopy visitsSettings];
    v113 = lastObject;
    v15 = [TAFilterVisits getExitAddressSetInTAVisitSnapshot:lastObject usingSettings:visitsSettings];

    v16 = MEMORY[0x277CBEB98];
    accumulatedDeviceMetrics = [lastObject2 accumulatedDeviceMetrics];
    allKeys = [accumulatedDeviceMetrics allKeys];
    v19 = [v16 setWithArray:allKeys];

    v20 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      [TAFilterLeavingLOI filterSuspiciousDeviceWithStore:v20 leavingLOISettings:v15 andAppendOutgoingRequestsTo:?];
    }

    v21 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      [TAFilterLeavingLOI filterSuspiciousDeviceWithStore:v21 leavingLOISettings:v19 andAppendOutgoingRequestsTo:?];
    }

    v100 = v19;
    v101 = v15;
    v22 = [TAFilterVisits getIntersectionOfFirstSet:v15 andSecondSet:v19];
    v23 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      *buf = 134349056;
      v124 = [v22 count];
      _os_log_impl(&dword_26F2E2000, v24, OS_LOG_TYPE_DEFAULT, "#TAFilterLeavingLOI identified %{public}lu suspicious candidates ...", buf, 0xCu);
    }

    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    obj = v22;
    v117 = [obj countByEnumeratingWithState:&v119 objects:v138 count:16];
    if (v117)
    {
      v116 = *v120;
      v109 = settingsCopy;
      v103 = lastObject2;
      do
      {
        for (i = 0; i != v117; ++i)
        {
          if (*v120 != v116)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v119 + 1) + 8 * i);
          lastAdvPerDevice = [lastObject2 lastAdvPerDevice];
          v28 = [lastAdvPerDevice objectForKey:v26];

          if (v28)
          {
            getDate = [v28 getDate];
            clock = [storeCopy clock];
            v118 = getDate;
            [clock timeIntervalSinceDate:getDate];
            v32 = v31;
            visitsSettings2 = [(TAFilterLeavingLOISettings *)settingsCopy visitsSettings];
            [visitsSettings2 maxSuspiciousDuration];
            v35 = v34;

            if (v32 >= v35)
            {
              v84 = TAStatusLog;
              if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
              {
                [TAFilterLeavingLOI filterSuspiciousDeviceWithStore:v136 leavingLOISettings:v84 andAppendOutgoingRequestsTo:?];
              }
            }

            else
            {
              earliestUtAdvertisements = [v113 earliestUtAdvertisements];
              v37 = [earliestUtAdvertisements objectForKey:v26];

              latestUtAdvertisements = [v113 latestUtAdvertisements];
              v39 = [latestUtAdvertisements objectForKey:v26];

              v115 = v39;
              if (v37 && v39)
              {
                getDate2 = [v39 getDate];
                v112 = v37;
                getDate3 = [v37 getDate];
                [getDate2 timeIntervalSinceDate:getDate3];
                v43 = v42;
                visitsSettings3 = [(TAFilterLeavingLOISettings *)settingsCopy visitsSettings];
                [visitsSettings3 minObservationInterval];
                v46 = v45;

                accumulatedDeviceMetrics2 = [lastObject2 accumulatedDeviceMetrics];
                v48 = [accumulatedDeviceMetrics2 objectForKey:v26];

                [v48 distance];
                v50 = v49;
                [(TAFilterLeavingLOISettings *)settingsCopy thresholdOfSignificantDistance];
                v52 = v51;
                [v48 duration];
                v54 = v53;
                [(TAFilterLeavingLOISettings *)settingsCopy thresholdOfSignificantDuration];
                v56 = v55;
                segmentSpeedExceedsLimit = [v48 segmentSpeedExceedsLimit];
                v58 = segmentSpeedExceedsLimit;
                if (v50 <= v52 || v54 <= v56 || (segmentSpeedExceedsLimit & 1) != 0 || v43 <= v46)
                {
                  v86 = TAStatusLog;
                  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
                  {
                    v87 = v58 ^ 1;
                    v88 = v86;
                    hexString = [v26 hexString];
                    *buf = 138478851;
                    v124 = hexString;
                    v125 = 1026;
                    v126 = v50 > v52;
                    v127 = 1026;
                    v128 = v54 > v56;
                    v129 = 1026;
                    v130 = v87;
                    settingsCopy = v109;
                    storeCopy = v110;
                    v131 = 1026;
                    v132 = v43 > v46;
                    lastObject2 = v103;
                    _os_log_impl(&dword_26F2E2000, v88, OS_LOG_TYPE_DEFAULT, "#TAFilterLeavingLOI not adding %{private}@ because satisfy-length=%{public}d satisfy-duration=%{public}d satisfy-speed=%{public}d  satisfy-min-observation-duration=%{public}d", buf, 0x24u);
                  }
                }

                else
                {
                  lastAdvPerDevice2 = [lastObject2 lastAdvPerDevice];
                  v60 = [lastAdvPerDevice2 objectForKey:v26];

                  v61 = storeCopy;
                  loiType = [v113 loiType];
                  v133[0] = @"DetectionAlgorithm";
                  v63 = objc_opt_class();
                  v105 = NSStringFromClass(v63);
                  v134[0] = v105;
                  v133[1] = @"LastObservation";
                  v108 = v60;
                  descriptionDictionary = [v60 descriptionDictionary];
                  v134[1] = descriptionDictionary;
                  v133[2] = @"LengthTraveled";
                  v65 = MEMORY[0x277CCABB0];
                  [v48 distance];
                  v66 = [v65 numberWithDouble:?];
                  v134[2] = v66;
                  v133[3] = @"Duration";
                  v67 = MEMORY[0x277CCABB0];
                  v111 = v48;
                  v68 = v48;
                  v69 = loiType;
                  v70 = v61;
                  [v68 duration];
                  v71 = [v67 numberWithDouble:?];
                  v134[3] = v71;
                  v133[4] = @"LOIType";
                  v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v69];
                  v134[4] = v72;
                  v107 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v134 forKeys:v133 count:5];

                  visitState3 = [v61 visitState];
                  visitSnapshotBuffer2 = [visitState3 visitSnapshotBuffer];
                  v75 = [visitSnapshotBuffer2 count] - 2;

                  visitState4 = [v70 visitState];
                  visitSnapshotBuffer3 = [visitState4 visitSnapshotBuffer];
                  v78 = [visitSnapshotBuffer3 getObjectAtIndex:v75];

                  if (v78)
                  {
                    visitState5 = [v70 visitState];
                    visitSnapshotBuffer4 = [visitState5 visitSnapshotBuffer];
                    v81 = [visitSnapshotBuffer4 getObjectAtIndex:v75];
                    loiType2 = [v81 loiType];
                  }

                  else
                  {
                    loiType2 = 0;
                  }

                  v90 = [TAFilterLeavingLOI getLeavingLOIDetectionTypeForLOIType:v69];
                  v104 = [TAFilterLeavingLOI getLeavingLOINotificationImmediacyTypeForLOIType:v69 leavingLOISettings:v109];
                  v106 = [[TASingleVisitDetectionMetrics alloc] initWithInterVisitMetrics:v111 loiType:v69 previousVisitType:loiType2];
                  v91 = [[TAMetricsDetection alloc] initWithDetectionType:v90 visitDetectionMetrics:0 generalDetectionMetrics:0 singleVisitDetectionMetrics:v106 latestAdvertisement:v108];
                  v92 = [TASuspiciousDevice alloc];
                  clock2 = [v70 clock];
                  sampledObservedLocations = [v111 sampledObservedLocations];
                  deviceRecord = [v110 deviceRecord];
                  v96 = [deviceRecord getAccessoryInfo:v26];
                  v97 = [(TASuspiciousDevice *)v92 initWithLatestAdv:v108 detectionSummary:v107 date:clock2 locHistory:sampledObservedLocations detectionMetrics:v91 detectionType:v90 immediacyType:v104 accessoryInfo:v96 forceSurfaceReason:0];
                  [v102 addObject:v97];

                  storeCopy = v110;
                  settingsCopy = v109;

                  v48 = v111;
                  lastObject2 = v103;
                }

                v37 = v112;
              }

              else
              {
                v85 = TAStatusLog;
                if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
                {
                  [TAFilterLeavingLOI filterSuspiciousDeviceWithStore:v135 leavingLOISettings:v85 andAppendOutgoingRequestsTo:?];
                }
              }
            }
          }

          else
          {
            v83 = TAStatusLog;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
            {
              [TAFilterLeavingLOI filterSuspiciousDeviceWithStore:v137 leavingLOISettings:v83 andAppendOutgoingRequestsTo:?];
            }
          }
        }

        v117 = [obj countByEnumeratingWithState:&v119 objects:v138 count:16];
      }

      while (v117);
    }
  }

  v98 = *MEMORY[0x277D85DE8];

  return v102;
}

+ (unint64_t)getLeavingLOIDetectionTypeForLOIType:(unint64_t)type
{
  if (type > 2)
  {
    return 0;
  }

  else
  {
    return qword_26F331630[type];
  }
}

+ (unint64_t)getLeavingLOINotificationImmediacyTypeForLOIType:(unint64_t)type leavingLOISettings:(id)settings
{
  settingsCopy = settings;
  v6 = settingsCopy;
  if (type == 1)
  {
    leavingHomeImmediacyType = [settingsCopy leavingHomeImmediacyType];
  }

  else
  {
    if (type != 2)
    {
      v8 = 0;
      goto LABEL_7;
    }

    leavingHomeImmediacyType = [settingsCopy leavingWorkImmediacyType];
  }

  v8 = leavingHomeImmediacyType;
LABEL_7:

  return v8;
}

+ (BOOL)shouldDetectWithStore:(id)store filterLeavingLOISettings:(id)settings
{
  storeCopy = store;
  settingsCopy = settings;
  if (!storeCopy)
  {
    goto LABEL_9;
  }

  visitState = [storeCopy visitState];
  visitSnapshotBuffer = [visitState visitSnapshotBuffer];
  v9 = [visitSnapshotBuffer count];

  if (!v9)
  {
    goto LABEL_9;
  }

  visitState2 = [storeCopy visitState];
  visitSnapshotBuffer2 = [visitState2 visitSnapshotBuffer];
  lastObject = [visitSnapshotBuffer2 lastObject];
  loiType = [lastObject loiType];

  enabledLoiTypes = [settingsCopy enabledLoiTypes];
  v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:loiType];
  LOBYTE(lastObject) = [enabledLoiTypes containsObject:v15];

  if ((lastObject & 1) == 0)
  {
    v28 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      [(TAFilterLeavingLOI *)v28 shouldDetectWithStore:loiType filterLeavingLOISettings:settingsCopy];
    }

    goto LABEL_9;
  }

  visitState3 = [storeCopy visitState];
  interVisitMetricSnapshotBuffer = [visitState3 interVisitMetricSnapshotBuffer];
  v18 = [interVisitMetricSnapshotBuffer count];

  if (!v18)
  {
    goto LABEL_9;
  }

  visitState4 = [storeCopy visitState];
  visitSnapshotBuffer3 = [visitState4 visitSnapshotBuffer];
  lastObject2 = [visitSnapshotBuffer3 lastObject];
  isClosed = [lastObject2 isClosed];

  if (!isClosed)
  {
LABEL_9:
    v27 = 0;
    goto LABEL_10;
  }

  visitState5 = [storeCopy visitState];
  interVisitMetricSnapshotBuffer2 = [visitState5 interVisitMetricSnapshotBuffer];
  lastObject3 = [interVisitMetricSnapshotBuffer2 lastObject];
  isClosed2 = [lastObject3 isClosed];

  v27 = isClosed2 ^ 1;
LABEL_10:

  return v27;
}

+ (void)filterSuspiciousDeviceWithStore:(void *)a1 leavingLOISettings:(void *)a2 andAppendOutgoingRequestsTo:.cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 count];
  OUTLINED_FUNCTION_2(&dword_26F2E2000, v4, v5, "#TAFilterLeavingLOI observed %{public}lu devices in last visit", v6, v7, v8, v9, 0);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)filterSuspiciousDeviceWithStore:(void *)a1 leavingLOISettings:(void *)a2 andAppendOutgoingRequestsTo:.cold.2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 count];
  OUTLINED_FUNCTION_2(&dword_26F2E2000, v4, v5, "#TAFilterLeavingLOI observed %{public}lu devices after last visit", v6, v7, v8, v9, 0);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)filterSuspiciousDeviceWithStore:(uint64_t)a1 leavingLOISettings:(void *)a2 andAppendOutgoingRequestsTo:.cold.3(uint64_t a1, void *a2)
{
  v5 = OUTLINED_FUNCTION_0_0(a1, a2);
  v6 = [v3 hexString];
  *v4 = 138477827;
  *v2 = v6;
  _os_log_debug_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEBUG, "#TAFilterLeavingLOI does not satisfy recent observation requirement for %{private}@", v4, 0xCu);
}

+ (void)filterSuspiciousDeviceWithStore:(uint64_t)a1 leavingLOISettings:(void *)a2 andAppendOutgoingRequestsTo:.cold.4(uint64_t a1, void *a2)
{
  v5 = OUTLINED_FUNCTION_0_0(a1, a2);
  v6 = [v3 hexString];
  *v4 = 138477827;
  *v2 = v6;
  OUTLINED_FUNCTION_1(&dword_26F2E2000, v7, v8, "#TAFilterLeavingLOI some advertisements not present for %{private}@");
}

+ (void)shouldDetectWithStore:(void *)a3 filterLeavingLOISettings:.cold.1(void *a1, unint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = TALocationOfInterestTypeToString(a2);
  v7 = [a3 enabledLoiTypesToString];
  v9 = 138478083;
  v10 = v6;
  v11 = 2113;
  v12 = v7;
  _os_log_debug_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEBUG, "#TAFilterLeavingLOI LOI type %{private}@ is not in the enabled list %{private}@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end