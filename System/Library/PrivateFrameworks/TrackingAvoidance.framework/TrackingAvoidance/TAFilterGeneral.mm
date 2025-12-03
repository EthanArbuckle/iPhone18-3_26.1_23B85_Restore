@interface TAFilterGeneral
+ (BOOL)locationA:(id)a isSignificantlyDifferentFromLocationB:(id)b;
+ (BOOL)locationSegments:(id)segments underMaxSpeed:(double)speed;
+ (BOOL)locationSegmentsUnderPedestrianMaxSpeed:(id)speed withFilterSettings:(id)settings;
+ (BOOL)satisfyBeepOnMoveRequirementForAddress:(id)address store:(id)store settings:(id)settings;
+ (BOOL)satisfyNextPLOIHomeWithStore:(id)store;
+ (BOOL)shouldIssuePeopleDensityScan:(unint64_t)scan distTravel:(double)travel durationOfTravel:(double)ofTravel settings:(id)settings resultsInBuffer:(id)buffer;
+ (double)distOfTravelAlong:(id)along;
+ (id)dateIntervalAfterVisitAdjustment:(id)adjustment intervalOfInterest:(id)interest;
+ (id)filterSuspiciousDeviceWithStore:(id)store andAppendOutgoingRequestsTo:(id)to;
+ (id)filterSuspiciousDeviceWithStore:(id)store settings:(id)settings andAppendOutgoingRequestsTo:(id)to;
+ (id)filteredInterVisitMetadata:(id)metadata inInterval:(id)interval withLocRelevanceThreshold:(double)threshold;
+ (id)filteredInterVisitMetadataWithVisitAdjustment:(id)adjustment inInterval:(id)interval withLocRelevanceThreshold:(double)threshold;
+ (id)filteredPeopleDensityResults:(id)results within:(id)within;
+ (id)getDateIntervalOfInterestForFiltering:(id)filtering settings:(id)settings;
+ (void)preprocessLocationAndAdvertisementWithEnumerator:(id)enumerator addressToLocationList:(id)list addressToAdvertisementList:(id)advertisementList relevanceThreshold:(double)threshold;
@end

@implementation TAFilterGeneral

+ (id)filterSuspiciousDeviceWithStore:(id)store andAppendOutgoingRequestsTo:(id)to
{
  toCopy = to;
  storeCopy = store;
  initWithDefaults = [[TAFilterGeneralSettings alloc] initWithDefaults];
  v8 = [TAFilterGeneral filterSuspiciousDeviceWithStore:storeCopy settings:initWithDefaults andAppendOutgoingRequestsTo:toCopy];

  return v8;
}

+ (id)getDateIntervalOfInterestForFiltering:(id)filtering settings:(id)settings
{
  settingsCopy = settings;
  filteringCopy = filtering;
  clock = [filteringCopy clock];
  visitState = [filteringCopy visitState];
  getLatestValidVisitDepartureDate = [visitState getLatestValidVisitDepartureDate];

  eventBuffer = [filteringCopy eventBuffer];

  getEarliestEventDate = [eventBuffer getEarliestEventDate];

  if (getLatestValidVisitDepartureDate)
  {
    v12 = getLatestValidVisitDepartureDate;
  }

  else if (getEarliestEventDate)
  {
    v12 = getEarliestEventDate;
  }

  else
  {
    v13 = MEMORY[0x277CBEAA8];
    [settingsCopy durationOfConsideration];
    v12 = [v13 dateWithTimeInterval:clock sinceDate:-v14];
  }

  v15 = v12;
  v16 = [MEMORY[0x277CCA970] createIntervalSafelyWithStartDate:v12 endDate:clock];

  return v16;
}

+ (BOOL)satisfyBeepOnMoveRequirementForAddress:(id)address store:(id)store settings:(id)settings
{
  v35 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  storeCopy = store;
  settingsCopy = settings;
  deviceRecord = [storeCopy deviceRecord];
  v11 = [deviceRecord getLatestBeepOnMoveDate:addressCopy];

  if (v11)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    v13 = [v11 isEqualToDate:distantPast];

    if ((v13 & 1) == 0)
    {
      deviceRecord2 = [storeCopy deviceRecord];
      v16 = [deviceRecord2 getLatestAdvertisement:addressCopy];

      LODWORD(deviceRecord2) = [v16 isPosh];
      deviceRecord3 = [storeCopy deviceRecord];
      v18 = deviceRecord3;
      if (deviceRecord2)
      {
        v19 = [deviceRecord3 getAccessoryInfo:addressCopy];

        if (v19 && -[NSObject isCapableOfBOM](v19, "isCapableOfBOM") && ([v16 isApple] & 1) != 0)
        {

LABEL_10:
          clock = [storeCopy clock];
          v22 = [clock dateByAddingTimeInterval:{-objc_msgSend(settingsCopy, "beepOnMoveConsiderationTimeInterval")}];

          v14 = [v11 compare:v22] == 1;
LABEL_18:

          goto LABEL_19;
        }

        v23 = TAStatusLog;
        if (!os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        hexString2 = v23;
        hexString = [addressCopy hexString];
        v29 = 68289283;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2113;
        v34 = hexString;
        _os_log_impl(&dword_26F2E2000, hexString2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TAFilterGeneral found BOM on unsupported device, address:%{private}@}", &v29, 0x1Cu);
      }

      else
      {
        v20 = [deviceRecord3 getDeviceType:addressCopy];

        if (v20 == 1)
        {
          goto LABEL_10;
        }

        v26 = TAStatusLog;
        if (!os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
        {
LABEL_17:
          v14 = 0;
          goto LABEL_18;
        }

        v19 = v26;
        hexString2 = [addressCopy hexString];
        v29 = 68289283;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2113;
        v34 = hexString2;
        _os_log_impl(&dword_26F2E2000, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TAFilterGeneral found BOM on non-durian device, address:%{private}@}", &v29, 0x1Cu);
      }

LABEL_16:
      goto LABEL_17;
    }
  }

  v14 = 0;
LABEL_19:

  v27 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (BOOL)satisfyNextPLOIHomeWithStore:(id)store
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  visitState = [store visitState];
  nextPredictedLOIs = [visitState nextPredictedLOIs];

  v5 = [nextPredictedLOIs countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(nextPredictedLOIs);
        }

        if ([*(*(&v10 + 1) + 8 * i) type] == 1)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [nextPredictedLOIs countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)filterSuspiciousDeviceWithStore:(id)store settings:(id)settings andAppendOutgoingRequestsTo:(id)to
{
  v227 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  settingsCopy = settings;
  toCopy = to;
  if (!settingsCopy)
  {
    settingsCopy = [[TAFilterGeneralSettings alloc] initWithDefaults];
  }

  v9 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    clock = [storeCopy clock];
    *buf = 138477827;
    *v200 = clock;
    _os_log_impl(&dword_26F2E2000, v10, OS_LOG_TYPE_DEFAULT, "#TAFilterGeneral Current Clock Time: %{private}@", buf, 0xCu);
  }

  v12 = storeCopy;
  v13 = [TAFilterGeneral getDateIntervalOfInterestForFiltering:storeCopy settings:settingsCopy];
  v14 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    startDate = [v13 startDate];
    endDate = [v13 endDate];
    *buf = 138478083;
    *v200 = startDate;
    *&v200[8] = 2113;
    *&v200[10] = endDate;
    _os_log_impl(&dword_26F2E2000, v15, OS_LOG_TYPE_DEFAULT, "#TAFilterGeneral Time Duration of Interest: Start Date - %{private}@ End Date - %{private}@", buf, 0x16u);

    v12 = storeCopy;
  }

  [(TAFilterGeneralSettings *)settingsCopy thresholdOfLocationRelevance];
  v18 = [TAFilterGeneral filteredInterVisitMetadataWithVisitAdjustment:v12 inInterval:v13 withLocRelevanceThreshold:?];
  if ([v18 count])
  {
    v145 = v13;
    eventBuffer = [v12 eventBuffer];
    v154 = [eventBuffer getAllTAEventsOf:objc_opt_class()];

    array = objc_alloc_init(MEMORY[0x277CBEB18]);
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    obj = v18;
    v164 = [obj countByEnumeratingWithState:&v195 objects:v226 count:16];
    if (!v164)
    {
      goto LABEL_100;
    }

    v162 = *v196;
    v155 = toCopy;
    v180 = settingsCopy;
    v163 = v18;
    while (1)
    {
      for (i = 0; i != v164; i = v57 + 1)
      {
        if (*v196 != v162)
        {
          objc_enumerationMutation(obj);
        }

        v182 = i;
        v21 = *(*(&v195 + 1) + 8 * i);
        v181 = objc_autoreleasePoolPush();
        v22 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          v24 = [obj objectForKeyedSubscript:v21];
          deviceLocationHistory = [v24 deviceLocationHistory];
          v26 = [deviceLocationHistory count];
          *buf = 138478083;
          *v200 = v21;
          *&v200[8] = 2049;
          *&v200[10] = v26;
          _os_log_impl(&dword_26F2E2000, v23, OS_LOG_TYPE_DEFAULT, "#TAFilterGeneral Location Tag Count for %{private}@: %{private}ld", buf, 0x16u);
        }

        v27 = [obj objectForKeyedSubscript:v21];
        deviceLocationHistory2 = [v27 deviceLocationHistory];

        v186 = deviceLocationHistory2;
        [TAFilterGeneral distOfTravelAlong:deviceLocationHistory2];
        v30 = v29;
        [(TAFilterGeneralSettings *)settingsCopy thresholdOfSignificantDistance];
        v32 = v31;
        v33 = [obj objectForKey:v21];
        deviceObservationInterval = [v33 deviceObservationInterval];

        v184 = deviceObservationInterval;
        if (deviceObservationInterval)
        {
          [deviceObservationInterval duration];
          v36 = v35;
          [(TAFilterGeneralSettings *)settingsCopy thresholdOfSignificantDuration];
          v38 = v37;
          startDate2 = [deviceObservationInterval startDate];
          endDate2 = [deviceObservationInterval endDate];
          v41 = [TAVehicleCategoryLogic extractPrivateVehicleHintsFromTAStore:v12 since:startDate2 to:endDate2];

          v42 = [[TAPrivateVehicleClassificationReason alloc] initWithReason:2];
          v43 = [v41 containsObject:v42];

          if ([(TAFilterGeneralSettings *)settingsCopy allowNavGeoHintAsPrivateVehicleHint])
          {
            v44 = [[TAPrivateVehicleClassificationReason alloc] initWithReason:1];
            v43 |= [v41 containsObject:v44];
          }

          v172 = v43;
          v191 = 0u;
          v192 = 0u;
          v189 = 0u;
          v190 = 0u;
          v45 = v41;
          v46 = [v45 countByEnumeratingWithState:&v189 objects:v225 count:16];
          if (v46)
          {
            v47 = v46;
            v48 = *v190;
            do
            {
              for (j = 0; j != v47; ++j)
              {
                if (*v190 != v48)
                {
                  objc_enumerationMutation(v45);
                }

                v50 = TAStatusLog;
                if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
                {
                  v51 = *(*(&v189 + 1) + 8 * j);
                  v52 = v50;
                  hexString = [v21 hexString];
                  v54 = TAPrivateVehicleClassificationReasonEnumToString([v51 reason]);
                  *buf = 138478083;
                  *v200 = hexString;
                  *&v200[8] = 2113;
                  *&v200[10] = v54;
                  _os_log_impl(&dword_26F2E2000, v52, OS_LOG_TYPE_DEFAULT, "#TAFilterGeneral private vehicle reason for %{private}@ : %{private}@", buf, 0x16u);
                }
              }

              v47 = [v45 countByEnumeratingWithState:&v189 objects:v225 count:16];
            }

            while (v47);
          }

          v55 = [TAFilterGeneral filteredPeopleDensityResults:v154 within:v184];
          v177 = v55;
          if ([v55 count])
          {
            lastObject = [v55 lastObject];
            v169 = [lastObject peopleDensityState] == 0;
          }

          else
          {
            v169 = 0;
          }

          v59 = [TADominantUserActivity getDominantUserActivityInfoInDateInterval:v184 store:storeCopy];
          v60 = [TAFilterGeneral locationSegmentsUnderPedestrianMaxSpeed:v186 withFilterSettings:v180];
          v165 = [TAFilterGeneral satisfyBeepOnMoveRequirementForAddress:v21 store:storeCopy settings:v180];
          v167 = [TAFilterGeneral satisfyNextPLOIHomeWithStore:storeCopy];
          v160 = v60;
          v61 = v59 == 2 && v60;
          v62 = v30 > v32;
          if (v36 <= v38)
          {
            v62 = 0;
          }

          v175 = v59;
          v178 = (v59 == 3) & (v172 | v169);
          v63 = v59 == 4 || v59 == 2 && v60;
          v157 = v63;
          if (!v62 | (v59 == 3) & (v172 | v169))
          {
            v64 = v62;
          }

          else
          {
            v64 = v63;
          }

          v223[0] = @"DetectionAlgorithm";
          v65 = objc_opt_class();
          v66 = NSStringFromClass(v65);
          v224[0] = v66;
          v223[1] = @"LengthTraveled";
          v67 = [MEMORY[0x277CCABB0] numberWithDouble:v30];
          v224[1] = v67;
          v223[2] = @"Duration";
          v68 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
          v224[2] = v68;
          v223[3] = @"ObservationCount";
          v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v186, "count")}];
          v224[3] = v69;
          v183 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v224 forKeys:v223 count:4];

          v70 = TAStatusLog;
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
          {
            v71 = v70;
            hexString2 = [v21 hexString];
            *buf = 68292099;
            *v200 = 0;
            *&v200[4] = 2082;
            *&v200[6] = "";
            *&v200[14] = 2113;
            *&v200[16] = hexString2;
            v201 = 1026;
            v202 = v64;
            v203 = 1026;
            v204 = v30 > v32;
            v205 = 1026;
            v206 = v36 > v38;
            v207 = 1026;
            v208 = v178;
            v209 = 1026;
            v210 = v172;
            v211 = 1026;
            v212 = v61;
            v213 = 1026;
            v214 = v160;
            v215 = 1026;
            v216 = v169;
            v217 = 1026;
            v218 = v175 == 4;
            v219 = 1026;
            v220 = v165;
            v221 = 1026;
            v222 = v167;
            _os_log_impl(&dword_26F2E2000, v71, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAFilterGeneral decisions, address:%{private}@, satisfy:%{public}hhd, satisfy-length:%{public}hhd, satisfy-duration:%{public}hhd, satisfy-vehicular-requirement:%{public}hhd, satisfy-private-automotive:%{public}hhd, satisfy-pedestrian-requirement:%{public}hhd, satisfy-pedestrian-speed-check:%{public}hhd, satisfy-people-density:%{public}hhd, satisfy-cycling-requirement:%{public}hhd, satisfy-beepOnMove:%{public}hhd, satisfy-ploi:%{public}hhd}", buf, 0x5Eu);
          }

          v73 = v177;
          if (v64)
          {
            v74 = TAStatusLog;
            v173 = v61;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
            {
              v75 = v74;
              hexString3 = [v21 hexString];
              *buf = 138477827;
              *v200 = hexString3;
              _os_log_impl(&dword_26F2E2000, v75, OS_LOG_TYPE_DEFAULT, "#TAFilterGeneral adding %{private}@ because requirements satisfied", buf, 0xCu);

              v61 = v173;
            }

            v12 = storeCopy;
            if (v178)
            {
              vehicularImmediacyType = [(TAFilterGeneralSettings *)v180 vehicularImmediacyType];
              v77 = 7;
              goto LABEL_62;
            }

            v86 = 8;
            if (!v61)
            {
              v86 = 9;
            }

            if (v157)
            {
              v170 = v86;
              vehicularImmediacyType = 1;
            }

            else
            {
              v89 = TAStatusLog;
              if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
              {
                v90 = v89;
                hexString4 = [v21 hexString];
                *buf = 68289283;
                *v200 = 0;
                *&v200[4] = 2082;
                *&v200[6] = "";
                *&v200[14] = 2113;
                *&v200[16] = hexString4;
                _os_log_impl(&dword_26F2E2000, v90, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TAFilterGeneral missing proper detection type classification, address:%{private}@}", buf, 0x1Cu);
              }

              vehicularImmediacyType = 1;
              v77 = 1;
LABEL_62:
              v170 = v77;
            }

            v92 = objc_alloc_init(TAInterVisitMetricPerDevice);
            [(TAInterVisitMetricPerDevice *)v92 accumulateDistance:v30];
            [(TAInterVisitMetricPerDevice *)v92 accumulateDuration:v36];
            -[TAInterVisitMetricPerDevice accumulateNumOfAssociatedLocs:](v92, "accumulateNumOfAssociatedLocs:", [v186 count]);
            [(TAInterVisitMetricPerDevice *)v92 accumulateSampledObservedLocations:v186];
            v93 = [obj objectForKeyedSubscript:v21];
            latestObservation = [v93 latestObservation];
            v161 = v92;
            [(TAInterVisitMetricPerDevice *)v92 accumulateLatestAdvertisement:latestObservation];

            v158 = [TAGeneralDetectionMetrics alloc];
            v95 = [v177 count];
            if (v95)
            {
              lastObject2 = [v177 lastObject];
              peopleDensityState = [lastObject2 peopleDensityState];
            }

            else
            {
              peopleDensityState = -1;
            }

            v97 = [[TAPrivateVehicleClassificationReason alloc] initWithReason:1];
            v98 = [v45 containsObject:v97];
            v99 = [[TAPrivateVehicleClassificationReason alloc] initWithReason:2];
            v159 = -[TAGeneralDetectionMetrics initWithInterVisitMetrics:dominantUserActivity:pdState:geoNavHint:vehicularStateHint:](v158, "initWithInterVisitMetrics:dominantUserActivity:pdState:geoNavHint:vehicularStateHint:", v161, v175, peopleDensityState, v98, [v45 containsObject:v99]);

            if (v95)
            {
            }

            v100 = [TAMetricsDetection alloc];
            v101 = [obj objectForKey:v21];
            latestObservation2 = [v101 latestObservation];
            v176 = [(TAMetricsDetection *)v100 initWithDetectionType:v170 visitDetectionMetrics:0 generalDetectionMetrics:v159 singleVisitDetectionMetrics:0 latestAdvertisement:latestObservation2];

            v148 = [TASuspiciousDevice alloc];
            v149 = [obj objectForKey:v21];
            latestObservation3 = [v149 latestObservation];
            clock2 = [storeCopy clock];
            deviceRecord = [storeCopy deviceRecord];
            v105 = [deviceRecord getAccessoryInfo:v21];
            v106 = [(TASuspiciousDevice *)v148 initWithLatestAdv:latestObservation3 detectionSummary:v183 date:clock2 locHistory:v186 detectionMetrics:v176 detectionType:v170 immediacyType:vehicularImmediacyType accessoryInfo:v105 forceSurfaceReason:0];
            [array addObject:v106];

            v107 = v173;
            v108 = v173;
            if (v178)
            {
              v109 = [TASuspiciousDevice alloc];
              v152 = [obj objectForKey:v21];
              latestObservation4 = [v152 latestObservation];
              clock3 = [storeCopy clock];
              deviceRecord2 = [storeCopy deviceRecord];
              v113 = [deviceRecord2 getAccessoryInfo:v21];
              v114 = [(TASuspiciousDevice *)v109 initWithLatestAdv:latestObservation4 detectionSummary:v183 date:clock3 locHistory:v186 detectionMetrics:v176 detectionType:v170 immediacyType:3 accessoryInfo:v113 forceSurfaceReason:0];
              [array addObject:v114];

              v107 = v173;
              v108 = 1;
            }

            if ((v165 & v108) == 1)
            {
              v115 = TAStatusLog;
              if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
              {
                v116 = v115;
                hexString5 = [v21 hexString];
                *buf = 68289283;
                *v200 = 0;
                *&v200[4] = 2082;
                *&v200[6] = "";
                *&v200[14] = 2113;
                *&v200[16] = hexString5;
                _os_log_impl(&dword_26F2E2000, v116, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAFilterGeneral detected beepOnMove, address:%{private}@}", buf, 0x1Cu);
              }

              v171 = v108;
              if (v178)
              {
                beepOnMoveVehicularImmediacyType = [(TAFilterGeneralSettings *)v180 beepOnMoveVehicularImmediacyType];
                v118 = 12;
              }

              else if (v107)
              {
                beepOnMoveVehicularImmediacyType = [(TAFilterGeneralSettings *)v180 beepOnMovePedestrianImmediacyType];
                v118 = 13;
              }

              else
              {
                v119 = TAStatusLog;
                if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
                {
                  v120 = v119;
                  hexString6 = [v21 hexString];
                  *buf = 68289283;
                  *v200 = 0;
                  *&v200[4] = 2082;
                  *&v200[6] = "";
                  *&v200[14] = 2113;
                  *&v200[16] = hexString6;
                  _os_log_impl(&dword_26F2E2000, v120, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TAFilterGeneral unhandled beepOnMove case, address:%{private}@}", buf, 0x1Cu);
                }

                beepOnMoveVehicularImmediacyType = 3;
                v118 = 1;
              }

              v150 = v118;
              v122 = [TASuspiciousDevice alloc];
              v166 = [obj objectForKey:v21];
              latestObservation5 = [v166 latestObservation];
              clock4 = [storeCopy clock];
              deviceRecord3 = [storeCopy deviceRecord];
              v126 = [deviceRecord3 getAccessoryInfo:v21];
              v127 = [(TASuspiciousDevice *)v122 initWithLatestAdv:latestObservation5 detectionSummary:v183 date:clock4 locHistory:v186 detectionMetrics:v176 detectionType:v150 immediacyType:beepOnMoveVehicularImmediacyType accessoryInfo:v126 forceSurfaceReason:0];
              [array addObject:v127];

              v107 = v173;
              v108 = v171;
            }

            v128 = v167 & v108;
            v73 = v177;
            if (v128 == 1)
            {
              v129 = TAStatusLog;
              if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
              {
                v130 = v129;
                hexString7 = [v21 hexString];
                *buf = 68289283;
                *v200 = 0;
                *&v200[4] = 2082;
                *&v200[6] = "";
                *&v200[14] = 2113;
                *&v200[16] = hexString7;
                _os_log_impl(&dword_26F2E2000, v130, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAFilterGeneral detected PLOI home, address:%{private}@}", buf, 0x1Cu);
              }

              if (v178)
              {
                nextPLOIVehicularImmediacyType = [(TAFilterGeneralSettings *)v180 nextPLOIVehicularImmediacyType];
                v132 = 14;
                goto LABEL_90;
              }

              if (v107)
              {
                nextPLOIVehicularImmediacyType = [(TAFilterGeneralSettings *)v180 nextPLOIPedestrianImmediacyType];
                v132 = 15;
LABEL_90:
                v179 = v132;
              }

              else
              {
                v133 = TAStatusLog;
                if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
                {
                  v134 = v133;
                  hexString8 = [v21 hexString];
                  *buf = 68289283;
                  *v200 = 0;
                  *&v200[4] = 2082;
                  *&v200[6] = "";
                  *&v200[14] = 2113;
                  *&v200[16] = hexString8;
                  _os_log_impl(&dword_26F2E2000, v134, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TAFilterGeneral unhandled PLOI case, address:%{private}@}", buf, 0x1Cu);
                }

                v179 = 1;
                nextPLOIVehicularImmediacyType = 3;
              }

              v136 = [TASuspiciousDevice alloc];
              v137 = [obj objectForKey:v21];
              latestObservation6 = [v137 latestObservation];
              clock5 = [storeCopy clock];
              deviceRecord4 = [storeCopy deviceRecord];
              v141 = [deviceRecord4 getAccessoryInfo:v21];
              v142 = [(TASuspiciousDevice *)v136 initWithLatestAdv:latestObservation6 detectionSummary:v183 date:clock5 locHistory:v186 detectionMetrics:v176 detectionType:v179 immediacyType:nextPLOIVehicularImmediacyType accessoryInfo:v141 forceSurfaceReason:0];
              [array addObject:v142];

              v73 = v177;
            }

LABEL_96:
            v18 = v163;
            v58 = v181;
            v57 = v182;
          }

          else
          {
            v78 = [TAFilterGeneral shouldIssuePeopleDensityScan:v175 distTravel:v180 durationOfTravel:v177 settings:v30 resultsInBuffer:v36];
            v79 = TAStatusLog;
            v80 = os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT);
            if (!v78)
            {
              v12 = storeCopy;
              if (v80)
              {
                v87 = v79;
                hexString9 = [v21 hexString];
                *buf = 138477827;
                *v200 = hexString9;
                _os_log_impl(&dword_26F2E2000, v87, OS_LOG_TYPE_DEFAULT, "#TAFilterGeneral not adding %{private}@ because requirements not satisfied", buf, 0xCu);
              }

              goto LABEL_96;
            }

            v12 = storeCopy;
            if (v80)
            {
              v81 = v79;
              hexString10 = [v21 hexString];
              *buf = 138477827;
              *v200 = hexString10;
              _os_log_impl(&dword_26F2E2000, v81, OS_LOG_TYPE_DEFAULT, "#TAFilterGeneral identified suspicious device %{private}@; issue people density scans to gather more information", buf, 0xCu);
            }

            if (v155)
            {
              v83 = [TAOutgoingRequests alloc];
              endDate3 = [v145 endDate];
              v85 = [(TAOutgoingRequests *)v83 initWithRequestKey:@"RequestingPeopleDensity" additionalInformation:v183 date:endDate3];
              [v155 addObject:v85];

              goto LABEL_96;
            }

            v18 = v163;
            v58 = v181;
            v57 = v182;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
            {
              [TAFilterGeneral filterSuspiciousDeviceWithStore:v188 settings:? andAppendOutgoingRequestsTo:?];
            }
          }

          toCopy = v155;
          settingsCopy = v180;
          goto LABEL_98;
        }

        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
        {
          [TAFilterGeneral filterSuspiciousDeviceWithStore:v194 settings:? andAppendOutgoingRequestsTo:?];
        }

        v18 = v163;
        v58 = v181;
        v57 = v182;
LABEL_98:

        objc_autoreleasePoolPop(v58);
      }

      v164 = [obj countByEnumeratingWithState:&v195 objects:v226 count:16];
      if (!v164)
      {
LABEL_100:

        v13 = v145;
        goto LABEL_102;
      }
    }
  }

  array = [MEMORY[0x277CBEA60] array];
LABEL_102:

  v143 = *MEMORY[0x277D85DE8];

  return array;
}

+ (id)filteredInterVisitMetadataWithVisitAdjustment:(id)adjustment inInterval:(id)interval withLocRelevanceThreshold:(double)threshold
{
  adjustmentCopy = adjustment;
  v8 = [TAFilterGeneral dateIntervalAfterVisitAdjustment:adjustmentCopy intervalOfInterest:interval];
  v9 = [TAFilterGeneral filteredInterVisitMetadata:adjustmentCopy inInterval:v8 withLocRelevanceThreshold:threshold];

  return v9;
}

+ (id)dateIntervalAfterVisitAdjustment:(id)adjustment intervalOfInterest:(id)interest
{
  interestCopy = interest;
  visitState = [adjustment visitState];
  getLatestValidVisitDepartureDate = [visitState getLatestValidVisitDepartureDate];

  v8 = interestCopy;
  if (getLatestValidVisitDepartureDate)
  {
    startDate = [interestCopy startDate];
    v10 = [startDate compare:getLatestValidVisitDepartureDate];

    v8 = interestCopy;
    if (v10 == -1)
    {
      endDate = [interestCopy endDate];
      v12 = [endDate compare:getLatestValidVisitDepartureDate];

      if (v12 == -1)
      {
        v15 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
        {
          [TAFilterGeneral dateIntervalAfterVisitAdjustment:v15 intervalOfInterest:?];
        }

        v8 = [MEMORY[0x277CCA970] createIntervalSafelyWithStartDate:getLatestValidVisitDepartureDate endDate:getLatestValidVisitDepartureDate];
      }

      else
      {
        v13 = MEMORY[0x277CCA970];
        endDate2 = [interestCopy endDate];
        v8 = [v13 createIntervalSafelyWithStartDate:getLatestValidVisitDepartureDate endDate:endDate2];
      }
    }
  }

  v16 = v8;

  return v8;
}

+ (void)preprocessLocationAndAdvertisementWithEnumerator:(id)enumerator addressToLocationList:(id)list addressToAdvertisementList:(id)advertisementList relevanceThreshold:(double)threshold
{
  v51 = *MEMORY[0x277D85DE8];
  enumeratorCopy = enumerator;
  listCopy = list;
  advertisementListCopy = advertisementList;
  if (enumeratorCopy)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = [enumeratorCopy countByEnumeratingWithState:&v46 objects:v50 count:16];
    v12 = 0;
    if (v45)
    {
      v13 = *v47;
      v14 = 0x279DD1000uLL;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v47 != v13)
          {
            objc_enumerationMutation(enumeratorCopy);
          }

          v16 = *(*(&v46 + 1) + 8 * i);
          v17 = *(v14 + 1384);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v16;

            v12 = v18;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v16;
            v20 = v19;
            if (listCopy)
            {
              address = [v19 address];
              v22 = [listCopy objectForKeyedSubscript:address];

              if (!v22)
              {
                v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
                address2 = [v20 address];
                [listCopy setObject:v23 forKey:address2];
              }

              address3 = [v20 address];
              v26 = [listCopy objectForKeyedSubscript:address3];

              if (!v12)
              {
                goto LABEL_16;
              }

              getDate = [v20 getDate];
              [v12 getDate];
              v44 = v12;
              v28 = v14;
              v29 = advertisementListCopy;
              v30 = listCopy;
              v31 = v13;
              v33 = v32 = enumeratorCopy;
              [getDate timeIntervalSinceDate:v33];
              v35 = fabs(v34);

              enumeratorCopy = v32;
              v13 = v31;
              listCopy = v30;
              advertisementListCopy = v29;
              v14 = v28;
              v12 = v44;

              if (v35 < threshold)
              {
                [v26 addObject:v44];
              }

              else
              {
LABEL_16:
                null = [MEMORY[0x277CBEB68] null];
                [v26 addObject:null];
              }
            }

            if (advertisementListCopy)
            {
              address4 = [v20 address];
              v38 = [advertisementListCopy objectForKeyedSubscript:address4];

              if (!v38)
              {
                v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
                address5 = [v20 address];
                [advertisementListCopy setObject:v39 forKey:address5];
              }

              address6 = [v20 address];
              v42 = [advertisementListCopy objectForKeyedSubscript:address6];

              [v42 addObject:v20];
            }
          }
        }

        v45 = [enumeratorCopy countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v45);
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

+ (id)filteredInterVisitMetadata:(id)metadata inInterval:(id)interval withLocRelevanceThreshold:(double)threshold
{
  v117 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  intervalCopy = interval;
  eventBuffer = [metadataCopy eventBuffer];
  v77 = [eventBuffer getAllTAEventsBetween:intervalCopy];

  if (![v77 count])
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    goto LABEL_68;
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v83 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v80 = objc_alloc_init(MEMORY[0x277CBEB38]);
  objectEnumerator = [v77 objectEnumerator];
  [TAFilterGeneral preprocessLocationAndAdvertisementWithEnumerator:objectEnumerator addressToLocationList:v8 addressToAdvertisementList:v80 relevanceThreshold:threshold];

  reverseObjectEnumerator = [v77 reverseObjectEnumerator];
  [TAFilterGeneral preprocessLocationAndAdvertisementWithEnumerator:reverseObjectEnumerator addressToLocationList:v83 addressToAdvertisementList:0 relevanceThreshold:threshold];

  v84 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = v8;
  v81 = [obj countByEnumeratingWithState:&v107 objects:v116 count:16];
  if (!v81)
  {
    goto LABEL_37;
  }

  v79 = *v108;
  do
  {
    for (i = 0; i != v81; i = i + 1)
    {
      if (*v108 != v79)
      {
        objc_enumerationMutation(obj);
      }

      v88 = *(*(&v107 + 1) + 8 * i);
      context = objc_autoreleasePoolPush();
      v12 = [v83 objectForKeyedSubscript:v88];
      if (!v12 || ([v80 objectForKeyedSubscript:v88], v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 == 0, v13, v12, v14))
      {
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
        {
          [TAFilterGeneral filteredInterVisitMetadata:v106 inInterval:? withLocRelevanceThreshold:?];
        }
      }

      else
      {
        v15 = [obj objectForKeyedSubscript:v88];
        v16 = [v83 objectForKeyedSubscript:v88];
        v85 = [v80 objectForKeyedSubscript:v88];
        v17 = [v15 count];
        if (v17 == [v16 count] && (v18 = objc_msgSend(v15, "count"), v18 == objc_msgSend(v85, "count")))
        {
          v86 = objc_alloc_init(MEMORY[0x277CBEB18]);
          if ([v15 count])
          {
            v19 = 0;
            v20 = 1;
            v21 = -1;
            do
            {
              v22 = [v16 count];
              v23 = [v15 objectAtIndexedSubscript:v19];
              v24 = [v16 objectAtIndexedSubscript:(v21 + v22)];
              null = [MEMORY[0x277CBEB68] null];
              v26 = null;
              if (v23 == null)
              {
                null2 = [MEMORY[0x277CBEB68] null];
                v44 = v24 == null2;

                if (!v44)
                {
                  [v86 addObject:v24];
                  goto LABEL_28;
                }
              }

              else
              {
              }

              null3 = [MEMORY[0x277CBEB68] null];
              v28 = null3;
              if (v24 != null3)
              {

LABEL_17:
                null4 = [MEMORY[0x277CBEB68] null];
                v30 = null4;
                if (v24 == null4)
                {
                }

                else
                {
                  null5 = [MEMORY[0x277CBEB68] null];
                  v32 = v23 == null5;

                  if (!v32)
                  {
                    v33 = [v85 objectAtIndexedSubscript:v19];
                    getDate = [v33 getDate];
                    getDate2 = [v23 getDate];
                    [getDate timeIntervalSinceDate:getDate2];
                    v37 = v36;

                    getDate3 = [v33 getDate];
                    getDate4 = [v24 getDate];
                    [getDate3 timeIntervalSinceDate:getDate4];
                    v41 = v40;

                    if (fabs(v37) <= fabs(v41))
                    {
                      v42 = v23;
                    }

                    else
                    {
                      v42 = v24;
                    }

                    [v86 addObject:v42];
                  }
                }

                goto LABEL_28;
              }

              null6 = [MEMORY[0x277CBEB68] null];
              v46 = v23 == null6;

              if (v46)
              {
                goto LABEL_17;
              }

              [v86 addObject:v23];
LABEL_28:

              v19 = v20++;
              --v21;
            }

            while ([v15 count] > v19);
          }

          [v84 setObject:v86 forKey:v88];
        }

        else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
        {
          [TAFilterGeneral filteredInterVisitMetadata:v104 inInterval:? withLocRelevanceThreshold:?];
        }
      }

      objc_autoreleasePoolPop(context);
    }

    v81 = [obj countByEnumeratingWithState:&v107 objects:v116 count:16];
  }

  while (v81);
LABEL_37:

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v47 = v80;
  v48 = [v47 countByEnumeratingWithState:&v99 objects:v115 count:16];
  if (v48)
  {
    v89 = *v100;
    do
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v100 != v89)
        {
          objc_enumerationMutation(v47);
        }

        v50 = *(*(&v99 + 1) + 8 * j);
        v51 = [v84 objectForKeyedSubscript:v50];
        v52 = v51 == 0;

        if (v52)
        {
          v61 = TAStatusLog;
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
          {
            [(TAFilterGeneral *)v113 filteredInterVisitMetadata:v61 inInterval:v50 withLocRelevanceThreshold:&v114];
          }
        }

        else
        {
          v53 = [v47 objectForKeyedSubscript:v50];
          firstObject = [v53 firstObject];

          v55 = [v47 objectForKeyedSubscript:v50];
          lastObject = [v55 lastObject];

          v57 = [v47 objectForKeyedSubscript:v50];
          if (v57)
          {
            v58 = firstObject == 0;
          }

          else
          {
            v58 = 1;
          }

          v60 = v58 || lastObject == 0;

          if (v60)
          {
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
            {
              [TAFilterGeneral filteredInterVisitMetadata:v98 inInterval:? withLocRelevanceThreshold:?];
            }
          }

          else
          {
            v91 = 0;
            v92 = &v91;
            v93 = 0x3032000000;
            v94 = __Block_byref_object_copy_;
            v95 = __Block_byref_object_dispose_;
            v62 = lastObject;
            v96 = v62;
            v63 = [v47 objectForKeyedSubscript:v50];
            v90[0] = MEMORY[0x277D85DD0];
            v90[1] = 3221225472;
            v90[2] = __83__TAFilterGeneral_filteredInterVisitMetadata_inInterval_withLocRelevanceThreshold___block_invoke;
            v90[3] = &unk_279DD18E0;
            v90[4] = &v91;
            [v63 enumerateObjectsUsingBlock:v90];

            v64 = MEMORY[0x277CCA970];
            getDate5 = [firstObject getDate];
            getDate6 = [v62 getDate];
            v67 = [v64 createIntervalSafelyWithStartDate:getDate5 endDate:getDate6];

            v68 = [v84 objectForKey:v50];
            v69 = [TAInterVisitSummary alloc];
            v70 = [(TAInterVisitSummary *)v69 initWithObservationInterval:v67 andLocationHistory:v68 andLastObservation:v92[5]];
            if (v70)
            {
              [dictionary setObject:v70 forKey:v50];
            }

            else
            {
              v71 = TAStatusLog;
              if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
              {
                hexString = [v50 hexString];
                [(TAFilterGeneral *)hexString filteredInterVisitMetadata:buf inInterval:&v112 withLocRelevanceThreshold:v71];
              }
            }

            _Block_object_dispose(&v91, 8);
          }
        }
      }

      v48 = [v47 countByEnumeratingWithState:&v99 objects:v115 count:16];
    }

    while (v48);
  }

LABEL_68:
  v73 = *MEMORY[0x277D85DE8];

  return dictionary;
}

void __83__TAFilterGeneral_filteredInterVisitMetadata_inInterval_withLocRelevanceThreshold___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isPosh])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

+ (BOOL)locationA:(id)a isSignificantlyDifferentFromLocationB:(id)b
{
  v19 = *MEMORY[0x277D85DE8];
  aCopy = a;
  bCopy = b;
  [aCopy horizontalAccuracy];
  v8 = v7;
  [bCopy horizontalAccuracy];
  if (v8 < 0.0 || (v10 = v9, v8 > 70.0) || v9 < 0.0 || v9 > 70.0)
  {
    v13 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
    {
      v16[0] = 68289026;
      v16[1] = 0;
      v17 = 2082;
      v18 = "";
      _os_log_impl(&dword_26F2E2000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TAFilterGeneral checking if locations are different with invalid uncertainty}", v16, 0x12u);
    }

    v12 = 1;
  }

  else
  {
    [aCopy distanceFromLocation:bCopy];
    v12 = v11 * v11 > v10 * v10 + v8 * v8;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (double)distOfTravelAlong:(id)along
{
  alongCopy = along;
  v4 = 0.0;
  if ([alongCopy count] >= 2 && objc_msgSend(alongCopy, "count") >= 2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = [alongCopy objectAtIndexedSubscript:v6];
      v8 = [alongCopy objectAtIndexedSubscript:v5];
      v9 = [TAFilterGeneral locationA:v7 isSignificantlyDifferentFromLocationB:v8];

      if (v9)
      {
        v10 = [alongCopy objectAtIndexedSubscript:v6];
        v11 = [alongCopy objectAtIndexedSubscript:v5];
        [v10 distanceFromLocation:v11];
        v4 = v4 + v12;

        v5 = v6;
      }

      ++v6;
    }

    while ([alongCopy count] > v6);
  }

  return v4;
}

+ (BOOL)locationSegments:(id)segments underMaxSpeed:(double)speed
{
  v30 = *MEMORY[0x277D85DE8];
  segmentsCopy = segments;
  v6 = segmentsCopy;
  if (speed >= 0.0)
  {
    if (segmentsCopy && [segmentsCopy count] >= 2 && objc_msgSend(v6, "count") >= 2)
    {
      v11 = 1;
      *&v8 = 134218496;
      v21 = v8;
      do
      {
        v12 = [v6 objectAtIndexedSubscript:{v11 - 1, v21}];
        v13 = [v6 objectAtIndexedSubscript:v11];
        [TALocationLite estimateSpeedFrom:v12 to:v13];
        v16 = v14;
        v18 = v17;
        v19 = v15;
        if (v14 < 0.0 || v15 < 0.0)
        {
          v20 = TAStatusLog;
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
          {
            *buf = v21;
            v25 = v16;
            v26 = 2048;
            v27 = v19;
            v28 = 2048;
            v29 = v18;
            _os_log_error_impl(&dword_26F2E2000, v20, OS_LOG_TYPE_ERROR, "#TAFilterGeneral error calculating segment speed min=%f avg=%f max=%f", buf, 0x20u);
          }
        }

        else if (v14 <= 0.0)
        {
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
          {
            [TAFilterGeneral locationSegments:v23 underMaxSpeed:?];
          }
        }

        else if (v15 > speed)
        {

          goto LABEL_2;
        }

        ++v11;
      }

      while ([v6 count] > v11);
    }

    v7 = 1;
  }

  else
  {
LABEL_2:
    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (BOOL)locationSegmentsUnderPedestrianMaxSpeed:(id)speed withFilterSettings:(id)settings
{
  speedCopy = speed;
  [settings capOfReasonableWalkingSpeed];
  LOBYTE(settings) = [TAFilterGeneral locationSegments:speedCopy underMaxSpeed:?];

  return settings;
}

+ (id)filteredPeopleDensityResults:(id)results within:(id)within
{
  resultsCopy = results;
  withinCopy = within;
  v7 = withinCopy;
  if (resultsCopy && withinCopy)
  {
    v8 = MEMORY[0x277CCAC30];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__TAFilterGeneral_filteredPeopleDensityResults_within___block_invoke;
    v12[3] = &unk_279DD1908;
    v13 = withinCopy;
    v9 = [v8 predicateWithBlock:v12];
    array = [resultsCopy filteredArrayUsingPredicate:v9];
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  return array;
}

uint64_t __55__TAFilterGeneral_filteredPeopleDensityResults_within___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 observationInterval];
    v5 = [v4 intersectsDateInterval:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)shouldIssuePeopleDensityScan:(unint64_t)scan distTravel:(double)travel durationOfTravel:(double)ofTravel settings:(id)settings resultsInBuffer:(id)buffer
{
  bufferCopy = buffer;
  settingsCopy = settings;
  [settingsCopy thresholdOfSignificantDistance];
  v14 = v13;
  [settingsCopy thresholdOfSignificantDuration];
  v16 = v15;

  v17 = 0;
  if (scan == 3 && v14 < travel && v16 < ofTravel)
  {
    v17 = [bufferCopy count] == 0;
  }

  return v17;
}

+ (void)filteredInterVisitMetadata:(void *)a3 inInterval:(os_log_t)log withLocRelevanceThreshold:.cold.3(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_error_impl(&dword_26F2E2000, log, OS_LOG_TYPE_ERROR, "#TAFilterGeneral attempted to create empty summary for address %@", buf, 0xCu);
}

+ (void)filteredInterVisitMetadata:(void *)a3 inInterval:(void *)a4 withLocRelevanceThreshold:.cold.5(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 hexString];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_fault_impl(&dword_26F2E2000, v7, OS_LOG_TYPE_FAULT, "#TAFilterGeneral no location list for address %@", a1, 0xCu);
}

@end