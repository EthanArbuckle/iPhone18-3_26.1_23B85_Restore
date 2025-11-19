@interface TAFilterLeavingLOI
+ (BOOL)shouldDetectWithStore:(id)a3 filterLeavingLOISettings:(id)a4;
+ (id)filterSuspiciousDeviceWithStore:(id)a3 leavingLOISettings:(id)a4 andAppendOutgoingRequestsTo:(id)a5;
+ (unint64_t)getLeavingLOIDetectionTypeForLOIType:(unint64_t)a3;
+ (unint64_t)getLeavingLOINotificationImmediacyTypeForLOIType:(unint64_t)a3 leavingLOISettings:(id)a4;
@end

@implementation TAFilterLeavingLOI

+ (id)filterSuspiciousDeviceWithStore:(id)a3 leavingLOISettings:(id)a4 andAppendOutgoingRequestsTo:(id)a5
{
  v139 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v102 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([TAFilterLeavingLOI shouldDetectWithStore:v6 filterLeavingLOISettings:v7])
  {
    if (!v7)
    {
      v7 = [[TAFilterLeavingLOISettings alloc] initWithDefaults];
    }

    v8 = [v6 visitState];
    v9 = [v8 visitSnapshotBuffer];
    v10 = [v9 lastObject];

    v110 = v6;
    v11 = [v6 visitState];
    v12 = [v11 interVisitMetricSnapshotBuffer];
    v13 = [v12 lastObject];

    v14 = [(TAFilterLeavingLOISettings *)v7 visitsSettings];
    v113 = v10;
    v15 = [TAFilterVisits getExitAddressSetInTAVisitSnapshot:v10 usingSettings:v14];

    v16 = MEMORY[0x277CBEB98];
    v17 = [v13 accumulatedDeviceMetrics];
    v18 = [v17 allKeys];
    v19 = [v16 setWithArray:v18];

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
      v109 = v7;
      v103 = v13;
      do
      {
        for (i = 0; i != v117; ++i)
        {
          if (*v120 != v116)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v119 + 1) + 8 * i);
          v27 = [v13 lastAdvPerDevice];
          v28 = [v27 objectForKey:v26];

          if (v28)
          {
            v29 = [v28 getDate];
            v30 = [v6 clock];
            v118 = v29;
            [v30 timeIntervalSinceDate:v29];
            v32 = v31;
            v33 = [(TAFilterLeavingLOISettings *)v7 visitsSettings];
            [v33 maxSuspiciousDuration];
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
              v36 = [v113 earliestUtAdvertisements];
              v37 = [v36 objectForKey:v26];

              v38 = [v113 latestUtAdvertisements];
              v39 = [v38 objectForKey:v26];

              v115 = v39;
              if (v37 && v39)
              {
                v40 = [v39 getDate];
                v112 = v37;
                v41 = [v37 getDate];
                [v40 timeIntervalSinceDate:v41];
                v43 = v42;
                v44 = [(TAFilterLeavingLOISettings *)v7 visitsSettings];
                [v44 minObservationInterval];
                v46 = v45;

                v47 = [v13 accumulatedDeviceMetrics];
                v48 = [v47 objectForKey:v26];

                [v48 distance];
                v50 = v49;
                [(TAFilterLeavingLOISettings *)v7 thresholdOfSignificantDistance];
                v52 = v51;
                [v48 duration];
                v54 = v53;
                [(TAFilterLeavingLOISettings *)v7 thresholdOfSignificantDuration];
                v56 = v55;
                v57 = [v48 segmentSpeedExceedsLimit];
                v58 = v57;
                if (v50 <= v52 || v54 <= v56 || (v57 & 1) != 0 || v43 <= v46)
                {
                  v86 = TAStatusLog;
                  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
                  {
                    v87 = v58 ^ 1;
                    v88 = v86;
                    v89 = [v26 hexString];
                    *buf = 138478851;
                    v124 = v89;
                    v125 = 1026;
                    v126 = v50 > v52;
                    v127 = 1026;
                    v128 = v54 > v56;
                    v129 = 1026;
                    v130 = v87;
                    v7 = v109;
                    v6 = v110;
                    v131 = 1026;
                    v132 = v43 > v46;
                    v13 = v103;
                    _os_log_impl(&dword_26F2E2000, v88, OS_LOG_TYPE_DEFAULT, "#TAFilterLeavingLOI not adding %{private}@ because satisfy-length=%{public}d satisfy-duration=%{public}d satisfy-speed=%{public}d  satisfy-min-observation-duration=%{public}d", buf, 0x24u);
                  }
                }

                else
                {
                  v59 = [v13 lastAdvPerDevice];
                  v60 = [v59 objectForKey:v26];

                  v61 = v6;
                  v62 = [v113 loiType];
                  v133[0] = @"DetectionAlgorithm";
                  v63 = objc_opt_class();
                  v105 = NSStringFromClass(v63);
                  v134[0] = v105;
                  v133[1] = @"LastObservation";
                  v108 = v60;
                  v64 = [v60 descriptionDictionary];
                  v134[1] = v64;
                  v133[2] = @"LengthTraveled";
                  v65 = MEMORY[0x277CCABB0];
                  [v48 distance];
                  v66 = [v65 numberWithDouble:?];
                  v134[2] = v66;
                  v133[3] = @"Duration";
                  v67 = MEMORY[0x277CCABB0];
                  v111 = v48;
                  v68 = v48;
                  v69 = v62;
                  v70 = v61;
                  [v68 duration];
                  v71 = [v67 numberWithDouble:?];
                  v134[3] = v71;
                  v133[4] = @"LOIType";
                  v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v69];
                  v134[4] = v72;
                  v107 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v134 forKeys:v133 count:5];

                  v73 = [v61 visitState];
                  v74 = [v73 visitSnapshotBuffer];
                  v75 = [v74 count] - 2;

                  v76 = [v70 visitState];
                  v77 = [v76 visitSnapshotBuffer];
                  v78 = [v77 getObjectAtIndex:v75];

                  if (v78)
                  {
                    v79 = [v70 visitState];
                    v80 = [v79 visitSnapshotBuffer];
                    v81 = [v80 getObjectAtIndex:v75];
                    v82 = [v81 loiType];
                  }

                  else
                  {
                    v82 = 0;
                  }

                  v90 = [TAFilterLeavingLOI getLeavingLOIDetectionTypeForLOIType:v69];
                  v104 = [TAFilterLeavingLOI getLeavingLOINotificationImmediacyTypeForLOIType:v69 leavingLOISettings:v109];
                  v106 = [[TASingleVisitDetectionMetrics alloc] initWithInterVisitMetrics:v111 loiType:v69 previousVisitType:v82];
                  v91 = [[TAMetricsDetection alloc] initWithDetectionType:v90 visitDetectionMetrics:0 generalDetectionMetrics:0 singleVisitDetectionMetrics:v106 latestAdvertisement:v108];
                  v92 = [TASuspiciousDevice alloc];
                  v93 = [v70 clock];
                  v94 = [v111 sampledObservedLocations];
                  v95 = [v110 deviceRecord];
                  v96 = [v95 getAccessoryInfo:v26];
                  v97 = [(TASuspiciousDevice *)v92 initWithLatestAdv:v108 detectionSummary:v107 date:v93 locHistory:v94 detectionMetrics:v91 detectionType:v90 immediacyType:v104 accessoryInfo:v96 forceSurfaceReason:0];
                  [v102 addObject:v97];

                  v6 = v110;
                  v7 = v109;

                  v48 = v111;
                  v13 = v103;
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

+ (unint64_t)getLeavingLOIDetectionTypeForLOIType:(unint64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return qword_26F331630[a3];
  }
}

+ (unint64_t)getLeavingLOINotificationImmediacyTypeForLOIType:(unint64_t)a3 leavingLOISettings:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 == 1)
  {
    v7 = [v5 leavingHomeImmediacyType];
  }

  else
  {
    if (a3 != 2)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = [v5 leavingWorkImmediacyType];
  }

  v8 = v7;
LABEL_7:

  return v8;
}

+ (BOOL)shouldDetectWithStore:(id)a3 filterLeavingLOISettings:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = [v5 visitState];
  v8 = [v7 visitSnapshotBuffer];
  v9 = [v8 count];

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [v5 visitState];
  v11 = [v10 visitSnapshotBuffer];
  v12 = [v11 lastObject];
  v13 = [v12 loiType];

  v14 = [v6 enabledLoiTypes];
  v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v13];
  LOBYTE(v12) = [v14 containsObject:v15];

  if ((v12 & 1) == 0)
  {
    v28 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      [(TAFilterLeavingLOI *)v28 shouldDetectWithStore:v13 filterLeavingLOISettings:v6];
    }

    goto LABEL_9;
  }

  v16 = [v5 visitState];
  v17 = [v16 interVisitMetricSnapshotBuffer];
  v18 = [v17 count];

  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = [v5 visitState];
  v20 = [v19 visitSnapshotBuffer];
  v21 = [v20 lastObject];
  v22 = [v21 isClosed];

  if (!v22)
  {
LABEL_9:
    v27 = 0;
    goto LABEL_10;
  }

  v23 = [v5 visitState];
  v24 = [v23 interVisitMetricSnapshotBuffer];
  v25 = [v24 lastObject];
  v26 = [v25 isClosed];

  v27 = v26 ^ 1;
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