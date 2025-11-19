@interface TAFilterSingleVisit
+ (BOOL)shouldDetectWithStore:(id)a3 filterSingleVisitSettings:(id)a4;
+ (id)filterSuspiciousDeviceWithStore:(id)a3 singleVisitSettings:(id)a4 andAppendOutgoingRequestsTo:(id)a5;
+ (unint64_t)getSingleVisitDetectionTypeForLOIType:(unint64_t)a3;
+ (unint64_t)getSingleVisitNotificationImmediacyTypeForLOIType:(unint64_t)a3 singleVisitSettings:(id)a4;
@end

@implementation TAFilterSingleVisit

+ (id)filterSuspiciousDeviceWithStore:(id)a3 singleVisitSettings:(id)a4 andAppendOutgoingRequestsTo:(id)a5
{
  v145 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v110 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v125 = v6;
  if ([TAFilterSingleVisit shouldDetectWithStore:v6 filterSingleVisitSettings:v7])
  {
    if (!v7)
    {
      v7 = [[TAFilterSingleVisitSettings alloc] initWithDefaults];
    }

    v8 = [v6 visitState];
    v9 = [v8 visitSnapshotBuffer];
    v10 = [v9 lastObject];

    v108 = [v10 loiType];
    v11 = [v10 representativeVisit];
    v12 = [TALocationLite alloc];
    v13 = [v11 arrivalDate];
    [v11 coordinate];
    v15 = v14;
    [v11 coordinate];
    v17 = v16;
    v107 = v11;
    [v11 horizontalAccuracy];
    v109 = [(TALocationLite *)v12 initWithTimestamp:v13 latitude:v15 longitude:v17 horizontalAccuracy:v18];

    v19 = [v125 visitState];
    v20 = [v19 interVisitMetricSnapshotBuffer];
    v21 = [v20 lastObject];

    v22 = [(TAFilterSingleVisitSettings *)v7 visitsSettings];
    v23 = [TAFilterVisits getEntryAddressSetInTAVisitSnapshot:v10 usingSettings:v22];

    v24 = MEMORY[0x277CBEB98];
    v116 = v21;
    v25 = [v21 accumulatedDeviceMetrics];
    v26 = [v25 allKeys];
    v27 = [v24 setWithArray:v26];

    v28 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      [TAFilterSingleVisit filterSuspiciousDeviceWithStore:v28 singleVisitSettings:v23 andAppendOutgoingRequestsTo:?];
    }

    v29 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      [TAFilterSingleVisit filterSuspiciousDeviceWithStore:v29 singleVisitSettings:v27 andAppendOutgoingRequestsTo:?];
    }

    v105 = v27;
    v106 = v23;
    v30 = [TAFilterVisits getIntersectionOfFirstSet:v23 andSecondSet:v27];
    v31 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      *buf = 134349056;
      v131 = [v30 count];
      _os_log_impl(&dword_26F2E2000, v32, OS_LOG_TYPE_DEFAULT, "#TAFilterSingleVisit identified %{public}lu suspicious candidates ...", buf, 0xCu);
    }

    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v33 = v30;
    v124 = [v33 countByEnumeratingWithState:&v126 objects:v144 count:16];
    if (v124)
    {
      v123 = *v127;
      v117 = v7;
      v120 = v10;
      v115 = v33;
      do
      {
        for (i = 0; i != v124; ++i)
        {
          if (*v127 != v123)
          {
            objc_enumerationMutation(v33);
          }

          v35 = *(*(&v126 + 1) + 8 * i);
          v36 = [v10 latestUtAdvertisements];
          v37 = [v36 objectForKey:v35];
          v38 = [v37 getDate];

          v39 = [v125 clock];
          [v39 timeIntervalSinceDate:v38];
          v41 = v40;
          v42 = [(TAFilterSingleVisitSettings *)v7 visitsSettings];
          [v42 maxSuspiciousDuration];
          v44 = v43;

          if (v41 < v44)
          {
            v45 = [v10 earliestUtAdvertisements];
            v46 = [v45 objectForKey:v35];

            v47 = [v10 latestUtAdvertisements];
            v48 = [v47 objectForKey:v35];

            v122 = v48;
            if (v46 && v48)
            {
              v49 = [v48 getDate];
              v121 = v46;
              v50 = [v46 getDate];
              [v49 timeIntervalSinceDate:v50];
              v52 = v51;
              v53 = [(TAFilterSingleVisitSettings *)v7 visitsSettings];
              [v53 minObservationInterval];
              v55 = v54;

              v56 = [v116 accumulatedDeviceMetrics];
              v57 = [v56 objectForKey:v35];

              [v57 distance];
              v59 = v58;
              [(TAFilterSingleVisitSettings *)v7 thresholdOfSignificantDistance];
              v61 = v60;
              [v57 duration];
              v63 = v62;
              [(TAFilterSingleVisitSettings *)v7 thresholdOfSignificantDuration];
              v65 = v64;
              v66 = [v57 segmentSpeedExceedsLimit];
              v67 = v66;
              if (v59 <= v61 || v63 <= v65 || (v66 & 1) != 0 || v52 <= v55)
              {
                v81 = TAStatusLog;
                if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
                {
                  v82 = v67 ^ 1;
                  v83 = v81;
                  v84 = [v35 hexString];
                  *buf = 138478851;
                  v131 = v84;
                  v132 = 1026;
                  v133 = v59 > v61;
                  v7 = v117;
                  v134 = 1026;
                  v135 = v63 > v65;
                  v136 = 1026;
                  v137 = v82;
                  v138 = 1026;
                  v139 = v52 > v55;
                  v10 = v120;
                  _os_log_impl(&dword_26F2E2000, v83, OS_LOG_TYPE_DEFAULT, "#TAFilterSingleVisit not adding %{private}@ because satisfy-length=%{public}d satisfy-duration=%{public}d satisfy-speed=%{public}d  satisfy-min-observation-duration=%{public}d", buf, 0x24u);
                }
              }

              else
              {
                v68 = [v10 latestUtAdvertisements];
                v69 = [v68 objectForKey:v35];

                v70 = [v57 sampledObservedLocations];
                v114 = [v70 arrayByAddingObject:v109];

                v71 = [v125 visitState];
                v72 = [v71 visitSnapshotBuffer];
                v73 = [v72 count] - 2;

                v74 = [v125 visitState];
                v75 = [v74 visitSnapshotBuffer];
                v76 = [v75 getObjectAtIndex:v73];

                if (v76)
                {
                  v77 = [v125 visitState];
                  v78 = [v77 visitSnapshotBuffer];
                  v79 = [v78 getObjectAtIndex:v73];
                  v112 = [v79 loiType];
                }

                else
                {
                  v112 = 0;
                }

                v140[0] = @"DetectionAlgorithm";
                v85 = objc_opt_class();
                v86 = NSStringFromClass(v85);
                v141[0] = v86;
                v140[1] = @"CurrentVisit";
                v87 = [v120 representativeVisit];
                v88 = [v87 descriptionDictionary];
                v141[1] = v88;
                v140[2] = @"LastObservation";
                v89 = [v69 descriptionDictionary];
                v141[2] = v89;
                v140[3] = @"LengthTraveled";
                v118 = v69;
                v90 = MEMORY[0x277CCABB0];
                [v57 distance];
                v91 = [v90 numberWithDouble:?];
                v141[3] = v91;
                v140[4] = @"Duration";
                v92 = MEMORY[0x277CCABB0];
                [v57 duration];
                v93 = [v92 numberWithDouble:?];
                v141[4] = v93;
                v111 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v141 forKeys:v140 count:5];

                v119 = v57;
                v94 = [TAFilterSingleVisit getSingleVisitDetectionTypeForLOIType:v108];
                v95 = [TAFilterSingleVisit getSingleVisitNotificationImmediacyTypeForLOIType:v108 singleVisitSettings:v117];
                v113 = -[TASingleVisitDetectionMetrics initWithInterVisitMetrics:loiType:previousVisitType:]([TASingleVisitDetectionMetrics alloc], "initWithInterVisitMetrics:loiType:previousVisitType:", v119, [v120 loiType], v112);
                v96 = [[TAMetricsDetection alloc] initWithDetectionType:v94 visitDetectionMetrics:0 generalDetectionMetrics:0 singleVisitDetectionMetrics:v113 latestAdvertisement:v118];
                v97 = [TASuspiciousDevice alloc];
                v98 = [v125 clock];
                v99 = [v125 deviceRecord];
                v100 = [v99 getAccessoryInfo:v35];
                v101 = v94;
                v57 = v119;
                v102 = [(TASuspiciousDevice *)v97 initWithLatestAdv:v118 detectionSummary:v111 date:v98 locHistory:v114 detectionMetrics:v96 detectionType:v101 immediacyType:v95 accessoryInfo:v100 forceSurfaceReason:1];
                [v110 addObject:v102];

                v7 = v117;
                v10 = v120;
              }

              v33 = v115;
              v46 = v121;
            }

            else
            {
              v80 = TAStatusLog;
              if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
              {
                [(TAFilterSingleVisit *)v142 filterSuspiciousDeviceWithStore:v80 singleVisitSettings:v35 andAppendOutgoingRequestsTo:&v143];
              }
            }
          }
        }

        v124 = [v33 countByEnumeratingWithState:&v126 objects:v144 count:16];
      }

      while (v124);
    }
  }

  v103 = *MEMORY[0x277D85DE8];

  return v110;
}

+ (unint64_t)getSingleVisitDetectionTypeForLOIType:(unint64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return qword_26F331690[a3];
  }
}

+ (unint64_t)getSingleVisitNotificationImmediacyTypeForLOIType:(unint64_t)a3 singleVisitSettings:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    if (a3 == 1)
    {
      a3 = 2;
    }

    else if (a3 == 2)
    {
      a3 = [v5 arrivingWorkImmediacyType];
    }

    else
    {
      a3 = 0;
    }
  }

  return a3;
}

+ (BOOL)shouldDetectWithStore:(id)a3 filterSingleVisitSettings:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    goto LABEL_16;
  }

  v7 = [v5 visitState];
  v8 = [v7 visitSnapshotBuffer];
  v9 = [v8 count];

  if (!v9)
  {
    v28 = TAStatusLog;
    if (!os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    v33 = 68289026;
    v34 = 0;
    v35 = 2082;
    v36 = "";
    v29 = "{msg%{public}.0s:#TAFilterSingleVisit no snapshots}";
LABEL_15:
    _os_log_impl(&dword_26F2E2000, v28, OS_LOG_TYPE_DEBUG, v29, &v33, 0x12u);
    goto LABEL_16;
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
    v30 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      [(TAFilterSingleVisit *)v30 shouldDetectWithStore:v13 filterSingleVisitSettings:v6];
    }

    goto LABEL_16;
  }

  v16 = [v5 visitState];
  v17 = [v16 interVisitMetricSnapshotBuffer];
  v18 = [v17 count];

  if (!v18)
  {
    v28 = TAStatusLog;
    if (!os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    v33 = 68289026;
    v34 = 0;
    v35 = 2082;
    v36 = "";
    v29 = "{msg%{public}.0s:#TAFilterSingleVisit no intervisit snapshots}";
    goto LABEL_15;
  }

  v19 = [v5 visitState];
  v20 = [v19 interVisitMetricSnapshotBuffer];
  v21 = [v20 lastObject];
  v22 = [v21 isClosed];

  if ((v22 & 1) == 0)
  {
    v28 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      v33 = 68289026;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v29 = "{msg%{public}.0s:#TAFilterSingleVisit last snapshot not closed}";
      goto LABEL_15;
    }

LABEL_16:
    v27 = 0;
    goto LABEL_17;
  }

  v23 = [v5 visitState];
  v24 = [v23 visitSnapshotBuffer];
  v25 = [v24 lastObject];
  v26 = [v25 isClosed];

  v27 = v26 ^ 1;
LABEL_17:

  v31 = *MEMORY[0x277D85DE8];
  return v27;
}

+ (void)filterSuspiciousDeviceWithStore:(void *)a1 singleVisitSettings:(void *)a2 andAppendOutgoingRequestsTo:.cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 count];
  OUTLINED_FUNCTION_2(&dword_26F2E2000, v4, v5, "#TAFilterSingleVisit observed %{public}lu devices in current visit", v6, v7, v8, v9, 0);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)filterSuspiciousDeviceWithStore:(void *)a1 singleVisitSettings:(void *)a2 andAppendOutgoingRequestsTo:.cold.2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 count];
  OUTLINED_FUNCTION_2(&dword_26F2E2000, v4, v5, "#TAFilterSingleVisit observed %{public}lu devices before the current visit", v6, v7, v8, v9, 0);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)filterSuspiciousDeviceWithStore:(void *)a3 singleVisitSettings:(void *)a4 andAppendOutgoingRequestsTo:.cold.3(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 hexString];
  *a1 = 138477827;
  *a4 = v8;
  _os_log_fault_impl(&dword_26F2E2000, v7, OS_LOG_TYPE_FAULT, "#TAFilterSingleVisit some advertisements not present for %{private}@", a1, 0xCu);
}

+ (void)shouldDetectWithStore:(void *)a3 filterSingleVisitSettings:.cold.1(void *a1, unint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = TALocationOfInterestTypeToString(a2);
  v7 = [a3 enabledLoiTypesToString];
  v9 = 138478083;
  v10 = v6;
  v11 = 2113;
  v12 = v7;
  _os_log_debug_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEBUG, "#TAFilterSingleVisit LOI type %{private}@ is not in the enabled list %{private}@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end