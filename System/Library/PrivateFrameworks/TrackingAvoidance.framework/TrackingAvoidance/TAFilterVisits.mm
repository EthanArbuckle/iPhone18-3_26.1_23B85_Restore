@interface TAFilterVisits
+ (BOOL)sensitiveVisitsTooCloseBetweenFromLOIType:(unint64_t)a3 toLOIType:(unint64_t)a4 distance:(double)a5 settings:(id)a6;
+ (BOOL)shouldDetectWithStore:(id)a3 settings:(id)a4;
+ (id)filterSuspiciousDeviceWithStore:(id)a3 andAppendOutgoingRequestsTo:(id)a4;
+ (id)filterSuspiciousDeviceWithStore:(id)a3 settings:(id)a4 andAppendOutgoingRequestsTo:(id)a5;
+ (id)getAddressSetInTAVisitSnapshot:(id)a3;
+ (id)getEntryAddressSetInTAVisitSnapshot:(id)a3 usingSettings:(id)a4;
+ (id)getExitAddressSetInTAVisitSnapshot:(id)a3 usingSettings:(id)a4;
+ (id)getIntersectionOfFirstSet:(id)a3 andSecondSet:(id)a4;
+ (id)getSuspiciousDeviceAdvertisementsFromVisitSnapshot:(id)a3 toVisitSnapshot:(id)a4 settings:(id)a5 currentClockTime:(id)a6 skipFreshObservationCheck:(BOOL)a7;
+ (unint64_t)identifyDetectionTypeWithStore:(id)a3 settings:(id)a4;
@end

@implementation TAFilterVisits

+ (id)filterSuspiciousDeviceWithStore:(id)a3 andAppendOutgoingRequestsTo:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[TAFilterVisitsSettings alloc] initWithDefaults];
  v8 = [TAFilterVisits filterSuspiciousDeviceWithStore:v6 settings:v7 andAppendOutgoingRequestsTo:v5];

  return v8;
}

+ (id)filterSuspiciousDeviceWithStore:(id)a3 settings:(id)a4 andAppendOutgoingRequestsTo:(id)a5
{
  v191 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!v8)
  {
    v8 = [[TAFilterVisitsSettings alloc] initWithDefaults];
  }

  if ([TAFilterVisits shouldDetectWithStore:v7 settings:v8])
  {
    v149 = v9;
    v168 = v10;
    v11 = [v7 visitState];
    v12 = [v11 visitSnapshotBuffer];
    v13 = [v12 lastObject];

    v14 = [v7 visitState];
    v15 = [v14 visitSnapshotBuffer];
    v16 = v7;
    v17 = [v15 count] - 2;

    v18 = [v7 visitState];
    v19 = [v18 visitSnapshotBuffer];
    v20 = [v19 bufferCopy];
    v21 = [v20 objectAtIndex:v17];

    v22 = v13;
    v23 = [v21 representativeVisit];
    v24 = [v13 representativeVisit];
    v25 = [TALocationLite alloc];
    v26 = [v23 departureDate];
    [v23 coordinate];
    v28 = v27;
    [v23 coordinate];
    v30 = v29;
    v148 = v23;
    [v23 horizontalAccuracy];
    v32 = [(TALocationLite *)v25 initWithTimestamp:v26 latitude:v28 longitude:v30 horizontalAccuracy:v31];

    v33 = [TALocationLite alloc];
    v34 = [v24 arrivalDate];
    [v24 coordinate];
    v36 = v35;
    [v24 coordinate];
    v38 = v37;
    v147 = v24;
    [v24 horizontalAccuracy];
    v40 = [(TALocationLite *)v33 initWithTimestamp:v34 latitude:v36 longitude:v38 horizontalAccuracy:v39];

    v41 = [v21 loiType];
    v42 = [v22 loiType];
    v163 = v40;
    v164 = v32;
    [(TALocationLite *)v32 distanceFromLocation:v40];
    v169 = v16;
    if ([TAFilterVisits sensitiveVisitsTooCloseBetweenFromLOIType:v41 toLOIType:v42 distance:v8 settings:?])
    {
      v43 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289026;
        v189 = 2082;
        v190 = "";
        _os_log_impl(&dword_26F2E2000, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAFilterVisit two sensitive visits too close, abort detection}", &buf, 0x12u);
      }

      v10 = v168;
      v44 = v168;
      v7 = v16;
      v9 = v149;
    }

    else
    {
      v46 = [v16 clock];
      v152 = v22;
      v47 = [TAFilterVisits getSuspiciousDeviceAdvertisementsFromVisitSnapshot:v21 toVisitSnapshot:v22 settings:v8 currentClockTime:v46];

      v166 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v48 = [v16 visitState];
      v49 = [v48 visitSnapshotBuffer];
      v50 = [v49 count];

      v151 = v8;
      v153 = v21;
      if (v50 < 3)
      {
        v150 = 0;
      }

      else
      {
        v51 = [v16 visitState];
        v52 = [v51 visitSnapshotBuffer];
        v53 = [v52 count] - 3;

        v54 = [v16 visitState];
        v55 = [v54 visitSnapshotBuffer];
        v56 = [v55 bufferCopy];
        v57 = [v56 objectAtIndex:v53];

        v58 = [v57 representativeVisit];
        v59 = [TALocationLite alloc];
        v60 = [v58 departureDate];
        [v58 coordinate];
        v62 = v61;
        [v58 coordinate];
        v64 = v63;
        [v58 horizontalAccuracy];
        v66 = [(TALocationLite *)v59 initWithTimestamp:v60 latitude:v62 longitude:v64 horizontalAccuracy:v65];

        v150 = v57;
        v67 = [v57 loiType];
        v68 = [v21 loiType];
        [(TALocationLite *)v66 distanceFromLocation:v32];
        v69 = v68;
        v8 = v151;
        if (![TAFilterVisits sensitiveVisitsTooCloseBetweenFromLOIType:v67 toLOIType:v69 distance:v151 settings:?])
        {
          v70 = [v169 clock];
          v71 = [TAFilterVisits getSuspiciousDeviceAdvertisementsFromVisitSnapshot:v150 toVisitSnapshot:v21 settings:v151 currentClockTime:v70 skipFreshObservationCheck:1];

          v180 = 0u;
          v181 = 0u;
          v178 = 0u;
          v179 = 0u;
          v72 = v71;
          v73 = [v72 countByEnumeratingWithState:&v178 objects:v187 count:16];
          if (v73)
          {
            v74 = v73;
            v75 = *v179;
            do
            {
              for (i = 0; i != v74; ++i)
              {
                if (*v179 != v75)
                {
                  objc_enumerationMutation(v72);
                }

                v77 = [*(*(&v178 + 1) + 8 * i) address];
                [v166 addObject:v77];
              }

              v74 = [v72 countByEnumeratingWithState:&v178 objects:v187 count:16];
            }

            while (v74);
          }

          v8 = v151;
        }
      }

      v78 = [TAVisitDetectionMetrics alloc];
      [v163 distanceFromLocation:v32];
      v80 = v79;
      [TALocationLite residualDistanceFromLocation:v32 toLocation:v163 nSigma:[(TAFilterVisitsSettings *)v8 minNSigmaBetweenVisits]];
      v167 = [(TAVisitDetectionMetrics *)v78 initWithDistance:[(TAFilterVisitsSettings *)v8 minNSigmaBetweenVisits] residualDistance:v80 nSigma:v81];
      v7 = v169;
      v82 = [TAFilterVisits identifyDetectionTypeWithStore:v169 settings:v8];
      v160 = v82 == 5;
      v161 = v82;
      v83 = 1;
      if (v82 == 5)
      {
        v83 = 2;
      }

      v159 = v83;
      v185[0] = @"DetectionAlgorithm";
      v84 = 0x279DD1000uLL;
      v85 = [TAMetricsDetection convertTADetectionTypeToString:v82];
      v186[0] = v85;
      v185[1] = @"LastVisit";
      v86 = [v153 representativeVisit];
      v87 = [v86 descriptionDictionary];
      v186[1] = v87;
      v185[2] = @"CurrentVisit";
      v88 = [v152 representativeVisit];
      v89 = [v88 descriptionDictionary];
      v186[2] = v89;
      v162 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v186 forKeys:v185 count:3];

      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      obj = v47;
      v165 = [obj countByEnumeratingWithState:&v174 objects:v184 count:16];
      if (v165)
      {
        v158 = *v175;
        do
        {
          v90 = 0;
          do
          {
            if (*v175 != v158)
            {
              objc_enumerationMutation(obj);
            }

            v172 = v90;
            v91 = *(*(&v174 + 1) + 8 * v90);
            v92 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v92 addObject:v164];
            v93 = [v7 visitState];
            v94 = [v93 interVisitMetricSnapshotBuffer];
            v95 = [v94 lastObject];

            if (v95)
            {
              v96 = [v95 accumulatedDeviceMetrics];
              v97 = [v91 address];
              v98 = [v96 objectForKey:v97];

              if (v98)
              {
                v99 = [v98 sampledObservedLocations];
                [v92 addObjectsFromArray:v99];
              }
            }

            v171 = v95;
            [v92 addObject:v163];
            v100 = [objc_alloc(*(v84 + 1400)) initWithDetectionType:v161 visitDetectionMetrics:v167 generalDetectionMetrics:0 singleVisitDetectionMetrics:0 latestAdvertisement:v91];
            v101 = [TASuspiciousDevice alloc];
            v102 = [v7 clock];
            v173 = v92;
            v103 = [v92 copy];
            v104 = [v7 deviceRecord];
            [v91 address];
            v106 = v105 = v84;
            v107 = [v104 getAccessoryInfo:v106];
            v170 = v100;
            v108 = [(TASuspiciousDevice *)v101 initWithLatestAdv:v91 detectionSummary:v162 date:v102 locHistory:v103 detectionMetrics:v100 detectionType:v161 immediacyType:v159 accessoryInfo:v107 forceSurfaceReason:v160];
            [v168 addObject:v108];

            v109 = [v91 address];
            LODWORD(v102) = [v166 containsObject:v109];

            if (v102)
            {
              v182[0] = @"DetectionAlgorithm";
              v110 = [*(v105 + 1400) convertTADetectionTypeToString:16];
              v183[0] = v110;
              v182[1] = @"LastVisit";
              v111 = [v153 representativeVisit];
              v112 = [v111 descriptionDictionary];
              v183[1] = v112;
              v182[2] = @"CurrentVisit";
              v113 = [v152 representativeVisit];
              v114 = [v113 descriptionDictionary];
              v183[2] = v114;
              v182[3] = @"PastTwoVisit";
              v115 = v105;
              if (v150)
              {
                v156 = [v150 representativeVisit];
                v155 = [v156 descriptionDictionary];
                v116 = v155;
              }

              else
              {
                v116 = &stru_287F632C0;
              }

              v183[3] = v116;
              v157 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v183 forKeys:v182 count:4];
              if (v150)
              {
              }

              v118 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v119 = [v169 visitState];
              v120 = [v119 interVisitMetricSnapshotBuffer];
              v121 = [v120 count];

              if (v121 < 2)
              {
                v133 = TAStatusLog;
                if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
                {
                  buf = 68289026;
                  v189 = 2082;
                  v190 = "";
                  _os_log_impl(&dword_26F2E2000, v133, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TAFilterVisits missing intervisit metrics}", &buf, 0x12u);
                }
              }

              else
              {
                v122 = [v169 visitState];
                v123 = [v122 interVisitMetricSnapshotBuffer];
                v124 = [v123 count] - 2;

                v125 = [v169 visitState];
                v126 = [v125 interVisitMetricSnapshotBuffer];
                v127 = [v126 bufferCopy];
                v128 = [v127 objectAtIndex:v124];

                v115 = 0x279DD1000;
                if (v128)
                {
                  v129 = [v128 accumulatedDeviceMetrics];
                  v130 = [v91 address];
                  v131 = [v129 objectForKey:v130];

                  if (v131)
                  {
                    v132 = [v131 sampledObservedLocations];
                    [v118 addObjectsFromArray:v132];
                  }
                }
              }

              [v118 addObjectsFromArray:v173];
              v134 = [objc_alloc(*(v115 + 1400)) initWithDetectionType:16 visitDetectionMetrics:v167 generalDetectionMetrics:0 singleVisitDetectionMetrics:0 latestAdvertisement:v91];
              v135 = [TASuspiciousDevice alloc];
              v136 = [v169 clock];
              v137 = [v118 copy];
              v138 = [(TAFilterVisitsSettings *)v151 threeVisitImmediacyType];
              [v169 deviceRecord];
              v140 = v139 = v118;
              v141 = [v91 address];
              v142 = [v140 getAccessoryInfo:v141];
              v143 = [(TASuspiciousDevice *)v135 initWithLatestAdv:v91 detectionSummary:v157 date:v136 locHistory:v137 detectionMetrics:v134 detectionType:16 immediacyType:v138 accessoryInfo:v142 forceSurfaceReason:0];
              [v168 addObject:v143];

              v7 = v169;
              v117 = v173;
            }

            else
            {
              v7 = v169;
              v117 = v173;
            }

            v90 = v172 + 1;
            v84 = 0x279DD1000;
          }

          while (v165 != v172 + 1);
          v165 = [obj countByEnumeratingWithState:&v174 objects:v184 count:16];
        }

        while (v165);
      }

      v10 = v168;
      v144 = v168;

      v9 = v149;
      v8 = v151;
      v22 = v152;
      v21 = v153;
    }
  }

  else
  {
    v45 = v10;
  }

  v145 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)getSuspiciousDeviceAdvertisementsFromVisitSnapshot:(id)a3 toVisitSnapshot:(id)a4 settings:(id)a5 currentClockTime:(id)a6 skipFreshObservationCheck:(BOOL)a7
{
  v127 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v106 = a5;
  v101 = a6;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v105 = v11;
  v14 = [v11 representativeVisit];
  v15 = [v12 representativeVisit];
  v16 = [TALocationLite alloc];
  v17 = [v14 departureDate];
  [v14 coordinate];
  v19 = v18;
  [v14 coordinate];
  v21 = v20;
  [v14 horizontalAccuracy];
  v94 = [(TALocationLite *)v16 initWithTimestamp:v17 latitude:v19 longitude:v21 horizontalAccuracy:v22];

  v23 = [TALocationLite alloc];
  v24 = [v15 arrivalDate];
  [v15 coordinate];
  v26 = v25;
  [v15 coordinate];
  v28 = v27;
  v93 = v15;
  [v15 horizontalAccuracy];
  v95 = [(TALocationLite *)v23 initWithTimestamp:v24 latitude:v26 longitude:v28 horizontalAccuracy:v29];

  v104 = a7;
  if (!a7 && ([v12 latestLocationInsideVisit] & 1) == 0)
  {
    v85 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F2E2000, v85, OS_LOG_TYPE_DEFAULT, "The latest location infers that we may be leaving the current visit; suppress visit-based detection logic", buf, 2u);
    }

    v82 = [v13 copy];
    goto LABEL_38;
  }

  v30 = [v106 minNSigmaBetweenVisits];
  [v106 minInterVisitDistance];
  v31 = v94;
  if ([TALocationLite distanceFromLocation:v94 toLocation:v95 satisfyNSigma:v30 satisfyMinDistance:?])
  {
    if (![TAFilterVisits isReasonableSpeedOfTravelFrom:v94 to:v95])
    {
      v86 = TAStatusLog;
      v84 = v15;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F2E2000, v86, OS_LOG_TYPE_DEFAULT, "#TAFilterVisits visit-to-visit speed exceeds threshold, not attempting to perform visit detection", buf, 2u);
      }

      v82 = [v13 copy];
      goto LABEL_42;
    }

    v90 = v14;
    v97 = v13;
    v32 = [TAFilterVisits getEntryAddressSetInTAVisitSnapshot:v12 usingSettings:v106];
    v33 = [TAFilterVisits getExitAddressSetInTAVisitSnapshot:v105 usingSettings:v106];
    [v106 exitDisplayOnBudget];
    [v105 getDurationOfVisitExitConsideredWithDisplayOnBudget:?];
    v35 = v34;
    v91 = [v12 getEntryIntervalEvaluatedUntil];
    v36 = TAStatusLog;
    v37 = &off_26F331000;
    v100 = v12;
    v92 = v32;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v38 = MEMORY[0x277CBEAA8];
      loga = v36;
      v39 = [v38 alloc];
      v111 = [v105 representativeVisit];
      v109 = [v111 departureDate];
      obja = [v39 initWithTimeInterval:v109 sinceDate:-v35];
      v98 = [obja getDateString];
      v40 = [v105 representativeVisit];
      v41 = [v40 departureDate];
      v42 = [v41 getDateString];
      v43 = [v100 representativeVisit];
      v44 = [v43 arrivalDate];
      v45 = [v44 getDateString];
      v46 = [v91 getDateString];
      *buf = 138478595;
      v121 = v98;
      v122 = 2113;
      *v123 = v42;
      *&v123[8] = 2113;
      v124 = v45;
      v125 = 2113;
      v126 = v46;
      _os_log_impl(&dword_26F2E2000, loga, OS_LOG_TYPE_DEFAULT, "#TAFilterVisits past visit window of consideration %{private}@/%{private}@ and current window of consideration %{private}@/%{private}@", buf, 0x2Au);

      v37 = &off_26F331000;
      v12 = v100;

      v32 = v92;
    }

    v89 = v33;
    [TAFilterVisits getIntersectionOfFirstSet:v32 andSecondSet:v33];
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    obj = v116 = 0u;
    log = [obj countByEnumeratingWithState:&v113 objects:v119 count:16];
    if (log)
    {
      v47 = *v114;
      v96 = *(v37 + 213);
      v99 = *v114;
      do
      {
        v48 = 0;
        do
        {
          if (*v114 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v49 = *(*(&v113 + 1) + 8 * v48);
          v50 = [v12 latestUtAdvertisements];
          v51 = [v50 objectForKey:v49];

          v52 = [v51 getDate];
          v112 = v52;
          if (v104)
          {
            v53 = 1;
          }

          else
          {
            [v101 timeIntervalSinceDate:v52];
            v55 = v54;
            [v106 maxSuspiciousDuration];
            v53 = v55 < v56;
          }

          v110 = v53;
          v57 = [v105 earliestUtAdvertisements];
          v58 = [v57 objectForKey:v49];

          v59 = [v105 latestUtAdvertisements];
          v60 = [v59 objectForKey:v49];

          v61 = [v12 earliestUtAdvertisements];
          v62 = [v61 objectForKey:v49];

          v63 = [v12 latestUtAdvertisements];
          v64 = [v63 objectForKey:v49];

          if (v58 && v60 && v62 && v64)
          {
            v65 = [v60 getDate];
            v66 = [v58 getDate];
            [v65 timeIntervalSinceDate:v66];
            v68 = v67;
            [v106 minObservationInterval];
            v70 = v69;

            v71 = [v64 getDate];
            v72 = [v62 getDate];
            [v71 timeIntervalSinceDate:v72];
            v74 = v73;
            [v106 minObservationInterval];
            v76 = v75;

            v77 = TAStatusLog;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
            {
              v78 = v77;
              v79 = [v49 hexString];
              *buf = v96;
              v121 = v79;
              v122 = 1025;
              *v123 = v110;
              *&v123[4] = 1025;
              *&v123[6] = v68 > v70;
              LOWORD(v124) = 1025;
              *(&v124 + 2) = v74 > v76;
              _os_log_impl(&dword_26F2E2000, v78, OS_LOG_TYPE_DEFAULT, "#TAFilterVisits considering %{private}@ based on satisfyFreshObservation:%{private}d satisfyPastVisitObservationDuration:%{private}d satisfyCurrentVisitObservationDuration:%{private}d", buf, 0x1Eu);
            }

            v80 = v68 > v70 && v110;
            v47 = v99;
            v12 = v100;
            if (v80 && v74 > v76)
            {
              [v97 addObject:v51];
            }
          }

          else
          {
            v81 = TAStatusLog;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
            {
              [TAFilterVisits getSuspiciousDeviceAdvertisementsFromVisitSnapshot:v117 toVisitSnapshot:v81 settings:v49 currentClockTime:&v118 skipFreshObservationCheck:?];
            }
          }

          v48 = (v48 + 1);
        }

        while (log != v48);
        log = [obj countByEnumeratingWithState:&v113 objects:v119 count:16];
      }

      while (log);
    }

    v13 = v97;
    v82 = [v97 copy];

    v14 = v90;
LABEL_38:
    v84 = v93;
LABEL_42:
    v31 = v94;
    goto LABEL_43;
  }

  v83 = TAStatusLog;
  v84 = v15;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F2E2000, v83, OS_LOG_TYPE_DEFAULT, "Current and past visits are not far enough to be considered for UT", buf, 2u);
  }

  v82 = [v13 copy];
LABEL_43:

  v87 = *MEMORY[0x277D85DE8];

  return v82;
}

+ (BOOL)shouldDetectWithStore:(id)a3 settings:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && ([v5 visitState], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "visitSnapshotBuffer"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7, v9 >= 2))
  {
    v11 = [v5 visitState];
    v12 = [v11 visitSnapshotBuffer];
    v13 = [v12 lastObject];
    v14 = [v13 isClosed];

    v10 = v14 ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)getEntryAddressSetInTAVisitSnapshot:(id)a3 usingSettings:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CBEB98];
  if (v5)
  {
    [a4 entryDisplayOnBudget];
    v7 = [v5 getEntryAdvertisementsWithDisplayOnBudget:?];
    v8 = [v7 allKeys];
    v9 = [v6 setWithArray:v8];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB98] set];
  }

  return v9;
}

+ (id)getExitAddressSetInTAVisitSnapshot:(id)a3 usingSettings:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CBEB98];
  if (v5)
  {
    [a4 exitDisplayOnBudget];
    v7 = [v5 getExitAdvertisementsWithDisplayOnBudget:?];
    v8 = [v7 allKeys];
    v9 = [v6 setWithArray:v8];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB98] set];
  }

  return v9;
}

+ (id)getAddressSetInTAVisitSnapshot:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  if (a3)
  {
    v4 = [a3 latestUtAdvertisements];
    v5 = [v4 allKeys];
    v6 = [v3 setWithArray:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  return v6;
}

+ (id)getIntersectionOfFirstSet:(id)a3 andSecondSet:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 && v5)
  {
    v7 = [MEMORY[0x277CBEB58] setWithSet:a3];
    [v7 intersectSet:v6];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB98] set];
  }

  return v7;
}

+ (unint64_t)identifyDetectionTypeWithStore:(id)a3 settings:(id)a4
{
  v5 = a4;
  v6 = [a3 visitState];
  v7 = [v6 visitSnapshotBuffer];
  v8 = [v7 lastObject];
  v9 = [v8 loiType];

  v10 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    [(TAFilterVisits *)v10 identifyDetectionTypeWithStore:v9 settings:v5];
  }

  v11 = [v5 sensitiveLOITypes];
  v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v9];
  v13 = [v11 containsObject:v12];

  if (v13)
  {
    v14 = 5;
  }

  else
  {
    v14 = 4;
  }

  return v14;
}

+ (BOOL)sensitiveVisitsTooCloseBetweenFromLOIType:(unint64_t)a3 toLOIType:(unint64_t)a4 distance:(double)a5 settings:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v9 = a6;
    v10 = [v9 sensitiveLOITypes];
    v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a3];
    v12 = [v10 containsObject:v11];

    v13 = [v9 sensitiveLOITypes];

    v14 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a4];
    v15 = [v13 containsObject:v14];

    if (250.0 + 250.0 > a5)
    {
      v16 = v12 & v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v20[0] = 68290051;
      v20[1] = 0;
      v21 = 2082;
      v22 = "";
      v23 = 1025;
      v24 = v12;
      v25 = 1025;
      v26 = v15 & 1;
      v27 = 1025;
      v28 = 250.0 + 250.0 > a5;
      v29 = 1025;
      v30 = v16;
      _os_log_impl(&dword_26F2E2000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAFilterVisits shouldDetectWithPastLOIType:currentLOIType:distance:settings:, pastIsSensitiveVisit:%{private}hhd, currentIsSensitiveVisit:%{private}hhd, pastAndCurrentTooClose:%{private}hhd, sensitiveVisitTooClose:%{private}hhd}", v20, 0x2Au);
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (void)getSuspiciousDeviceAdvertisementsFromVisitSnapshot:(void *)a3 toVisitSnapshot:(void *)a4 settings:currentClockTime:skipFreshObservationCheck:.cold.1(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 hexString];
  *a1 = 138477827;
  *a4 = v8;
  _os_log_fault_impl(&dword_26F2E2000, v7, OS_LOG_TYPE_FAULT, "#TAFilterVisits some advertisements not present for %{private}@", a1, 0xCu);
}

+ (void)identifyDetectionTypeWithStore:(void *)a3 settings:.cold.1(void *a1, unint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = TALocationOfInterestTypeToString(a2);
  v7 = [a3 sensitiveLOITypesToString];
  v9 = 138478083;
  v10 = v6;
  v11 = 2113;
  v12 = v7;
  _os_log_debug_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEBUG, "#TAFilterVisits LOI type is %{private}@ and sensitive LOI list contains %{private}@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end