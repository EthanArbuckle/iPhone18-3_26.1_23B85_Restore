@interface RTStateModel
+ (double)deriveClusterThresholdFromUncClustAplha:(double)aplha andUncClustBeta:(double)beta;
+ (double)getOutOfStateConfidenceWithOneStatePred:(id)pred;
- (BOOL)anyClusterOfInterestWithinDistance:(double)distance ofLocation:(id)location andEnteredEarlierThan:(double)than;
- (CLLocationCoordinate2D)getEndingCoordinateWithStartingLocation:(id)location distance:(double)distance;
- (RTStateModel)initWithLearnedLocationsOfInterest:(id)interest metricManager:(id)manager queue:(id)queue;
- (double)getMaxDistFromInterval:(double)interval withVelocity:(double)velocity;
- (double)getNumberOfWeeksInStateModel;
- (id)_getNextPredictedLocationsOfInterestFromLocation:(id)location startDate:(id)date timeInterval:(double)interval;
- (id)_getRecursivelyAllLOIsWithinDistance:(double)distance ofLocation:(id)location previouslyFoundLocationsOfInterest:(id)interest;
- (id)findClusterWithLocation:(id)location;
- (id)getAllLOIsWithinDistance:(double)distance ofLocation:(id)location;
- (id)getLocationsOfInterestWithinDistance:(double)distance ofLocation:(id)location;
- (id)getMostRecentLocationForDate:(id)date;
- (id)getOOStClusterData:(double)data predictionWindow:(double)window numOfWeeks:(int)weeks refLoc:(id)loc;
- (id)getPredictedExitDatesFromLocation:(id)location onDate:(id)date;
- (id)getPredictedLocationsOfInterestBetweenStartDate:(id)date endDate:(id)endDate;
- (id)getPredictedLocationsOfInterestWithCriteria:(id)criteria;
- (unsigned)calculateStateModelAvailabilityPrecisionRecallOnDate:(id)date predictedLocations:(id)locations isHighConfidenceOnly:(BOOL)only;
- (void)collectMetricsWithIntervalSinceLastUpdate:(double)update;
- (void)logStateModelAvailabilityMetricWithIntervalSinceLastUpdate:(double)update untilNow:(id)now;
- (void)updateInternalState;
@end

@implementation RTStateModel

- (void)updateInternalState
{
  v29 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x426D1A94A2000000;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0xC26D1A94A2000000;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__142;
  v13[4] = __Block_byref_object_dispose__142;
  v14 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__142;
  v11[4] = __Block_byref_object_dispose__142;
  v12 = 0;
  stateModelLut = [(RTStateModel *)self stateModelLut];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__RTStateModel_updateInternalState__block_invoke;
  v10[3] = &unk_2788CFBB8;
  v10[4] = &v19;
  v10[5] = &v15;
  v10[6] = v11;
  v10[7] = v13;
  [stateModelLut enumerateKeysAndObjectsUsingBlock:v10];

  v4 = [RTStateModelEarliestLatestEl alloc];
  v5 = [(RTStateModelEarliestLatestEl *)v4 initWithEarliest:v20[3] andLatest:v16[3]];
  [(RTStateModel *)self setEarliestLatestStateModelEl:v5];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [MEMORY[0x277CBEAA8] stringFromTimestamp:v20[3]];
      v8 = [MEMORY[0x277CBEAA8] stringFromTimestamp:v16[3]];
      v9 = v16[3] - v20[3];
      *buf = 138412802;
      v24 = v7;
      v25 = 2112;
      v26 = v8;
      v27 = 2048;
      v28 = v9 / 604800.0;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "earliest entry %@, latest entry %@, total duration, %f wks", buf, 0x20u);
    }
  }

  _Block_object_dispose(v11, 8);

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
}

void __35__RTStateModel_updateInternalState__block_invoke(void *a1, uint64_t a2, void *a3)
{
  v19 = a3;
  v5 = [v19 stateDepiction];
  v6 = [v5 lastEntyExit];

  v7 = [v19 stateDepiction];
  v8 = [v7 getEarliestLatestEntry];

  v9 = *(*(a1[4] + 8) + 24);
  [v8 earliestEl_s];
  if (v9 > v10)
  {
    [v8 earliestEl_s];
    *(*(a1[4] + 8) + 24) = v11;
  }

  v12 = *(*(a1[5] + 8) + 24);
  [v8 latestEl_s];
  if (v12 < v13)
  {
    [v8 latestEl_s];
    *(*(a1[5] + 8) + 24) = v14;
  }

  v15 = *(*(a1[6] + 8) + 40);
  if (!v15 || ([v15 exit_s], v17 = v16, objc_msgSend(v6, "exit_s"), v17 < v18))
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a3);
    objc_storeStrong((*(a1[6] + 8) + 40), v6);
  }
}

- (double)getNumberOfWeeksInStateModel
{
  earliestLatestStateModelEl = [(RTStateModel *)self earliestLatestStateModelEl];
  [earliestLatestStateModelEl latestEl_s];
  v5 = v4;

  earliestLatestStateModelEl2 = [(RTStateModel *)self earliestLatestStateModelEl];
  [earliestLatestStateModelEl2 earliestEl_s];
  v8 = v7;

  result = (v5 - v8) / 604800.0;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (RTStateModel)initWithLearnedLocationsOfInterest:(id)interest metricManager:(id)manager queue:(id)queue
{
  v136 = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  managerCopy = manager;
  queueCopy = queue;
  if (queueCopy)
  {
    v123.receiver = self;
    v123.super_class = RTStateModel;
    v12 = [(RTStateModel *)&v123 init];
    v13 = v12;
    if (v12)
    {
      v88 = queueCopy;
      v89 = managerCopy;
      objc_storeStrong(&v12->_metricManager, manager);
      objc_storeStrong(&v13->_queue, queue);
      v14 = objc_opt_new();
      stateModelLut = v13->_stateModelLut;
      v95 = v13;
      v13->_stateModelLut = v14;

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      v122 = 0u;
      v90 = interestCopy;
      obj = interestCopy;
      v96 = [obj countByEnumeratingWithState:&v119 objects:v135 count:16];
      if (v96)
      {
        v93 = *v120;
        do
        {
          v17 = 0;
          do
          {
            if (*v120 != v93)
            {
              objc_enumerationMutation(obj);
            }

            v105 = v17;
            v18 = *(*(&v119 + 1) + 8 * v17);
            v19 = [RTStateModelLocation alloc];
            location = [v18 location];
            v20Location = [location location];
            v22 = [(RTStateModelLocation *)v19 initWithRTLocation:v20Location];

            v23 = MEMORY[0x277D01170];
            place = [v18 place];
            v25 = [v23 typeFromPlaceType:{objc_msgSend(place, "type")}];

            v26 = MEMORY[0x277D01170];
            place2 = [v18 place];
            v28 = [v26 typeSourceFromPlaceTypeSource:{objc_msgSend(place2, "typeSource")}];

            place3 = [v18 place];
            customLabel = [place3 customLabel];

            v31 = [RTStateDepiction alloc];
            place4 = [v18 place];
            mapItem = [place4 mapItem];
            v102 = v22;
            v100 = customLabel;
            v34 = [(RTStateDepiction *)v31 initWithLocation:v22 type:v25 typeSource:v28 customLabel:customLabel mapItem:mapItem];

            v35 = objc_opt_new();
            identifier = [v18 identifier];
            [v35 setUniqueId:identifier];

            [v35 setStateDepiction:v34];
            stateModelLut = [(RTStateModel *)v95 stateModelLut];
            uniqueId = [v35 uniqueId];
            [stateModelLut setObject:v35 forKey:uniqueId];

            identifier2 = [v18 identifier];
            v98 = v35;
            [dictionary setObject:v35 forKey:identifier2];

            v117 = 0u;
            v118 = 0u;
            v115 = 0u;
            v116 = 0u;
            visits = [v18 visits];
            v41 = [visits countByEnumeratingWithState:&v115 objects:v134 count:16];
            if (v41)
            {
              v42 = v41;
              v43 = *v116;
              do
              {
                for (i = 0; i != v42; ++i)
                {
                  if (*v116 != v43)
                  {
                    objc_enumerationMutation(visits);
                  }

                  v45 = *(*(&v115 + 1) + 8 * i);
                  entryDate = [v45 entryDate];
                  [entryDate timeIntervalSinceReferenceDate];
                  v48 = v47;
                  exitDate = [v45 exitDate];
                  [exitDate timeIntervalSinceReferenceDate];
                  [(RTStateDepiction *)v34 submitEntry:v48 exit:v50];

                  identifier3 = [v45 identifier];
                  [dictionary2 setObject:v18 forKey:identifier3];
                }

                v42 = [visits countByEnumeratingWithState:&v115 objects:v134 count:16];
              }

              while (v42);
            }

            v17 = v105 + 1;
          }

          while (v105 + 1 != v96);
          v96 = [obj countByEnumeratingWithState:&v119 objects:v135 count:16];
        }

        while (v96);
      }

      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      obja = obj;
      v97 = [obja countByEnumeratingWithState:&v111 objects:v133 count:16];
      if (v97)
      {
        v94 = *v112;
        v101 = dictionary2;
        do
        {
          v52 = 0;
          do
          {
            if (*v112 != v94)
            {
              objc_enumerationMutation(obja);
            }

            v99 = v52;
            v53 = *(*(&v111 + 1) + 8 * v52);
            v107 = 0u;
            v108 = 0u;
            v109 = 0u;
            v110 = 0u;
            transitions = [v53 transitions];
            v106 = [transitions countByEnumeratingWithState:&v107 objects:v132 count:16];
            if (v106)
            {
              v54 = *v108;
              do
              {
                for (j = 0; j != v106; ++j)
                {
                  if (*v108 != v54)
                  {
                    objc_enumerationMutation(transitions);
                  }

                  v56 = *(*(&v107 + 1) + 8 * j);
                  visitIdentifierOrigin = [v56 visitIdentifierOrigin];
                  v58 = [dictionary2 objectForKey:visitIdentifierOrigin];

                  visitIdentifierDestination = [v56 visitIdentifierDestination];
                  v60 = [dictionary2 objectForKey:visitIdentifierDestination];

                  identifier4 = [v58 identifier];
                  v62 = [dictionary objectForKey:identifier4];

                  identifier5 = [v60 identifier];
                  v64 = [dictionary objectForKey:identifier5];

                  if (v62)
                  {
                    v65 = v64 == 0;
                  }

                  else
                  {
                    v65 = 1;
                  }

                  if (v65)
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
                    {
                      goto LABEL_39;
                    }

                    v73 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
                    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138740739;
                      v125 = v58;
                      v126 = 2117;
                      v127 = v62;
                      v128 = 2117;
                      v129 = v60;
                      v130 = 2117;
                      v131 = v64;
                      _os_log_debug_impl(&dword_2304B3000, v73, OS_LOG_TYPE_DEBUG, "transition missing endpoint. origin locationOfInterest, %{sensitive}@, state, %{sensitive}@, destination locationOfInterest, %{sensitive}@, state, %{sensitive}@", buf, 0x2Au);
                    }
                  }

                  else
                  {
                    v66 = v54;
                    v67 = [RTStateTransitionOneTimeTrans alloc];
                    startDate = [v56 startDate];
                    [startDate timeIntervalSinceReferenceDate];
                    v70 = v69;
                    stopDate = [v56 stopDate];
                    [stopDate timeIntervalSinceReferenceDate];
                    v73 = [(RTStateTransitionOneTimeTrans *)v67 initWithStart:0 stop:v70 motionActivityType:v72];

                    stateTransitions = [v62 stateTransitions];
                    uniqueId2 = [v64 uniqueId];
                    v76 = [stateTransitions objectForKey:uniqueId2];

                    if (!v76)
                    {
                      stateTransitions2 = [v62 stateTransitions];
                      v78 = objc_opt_new();
                      uniqueId3 = [v64 uniqueId];
                      [stateTransitions2 setObject:v78 forKey:uniqueId3];
                    }

                    stateTransitions3 = [v62 stateTransitions];
                    uniqueId4 = [v64 uniqueId];
                    v82 = [stateTransitions3 objectForKey:uniqueId4];
                    [v82 submitTransition:v73];

                    v54 = v66;
                    dictionary2 = v101;
                  }

LABEL_39:
                }

                v106 = [transitions countByEnumeratingWithState:&v107 objects:v132 count:16];
              }

              while (v106);
            }

            v52 = v99 + 1;
          }

          while (v99 + 1 != v97);
          v97 = [obja countByEnumeratingWithState:&v111 objects:v133 count:16];
        }

        while (v97);
      }

      v13 = v95;
      [(RTStateModel *)v95 updateInternalState];

      managerCopy = v89;
      interestCopy = v90;
      queueCopy = v88;
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    v84 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v125 = "[RTStateModel initWithLearnedLocationsOfInterest:metricManager:queue:]";
      v126 = 1024;
      LODWORD(v127) = 199;
      _os_log_error_impl(&dword_2304B3000, v84, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue (in %s:%d)", buf, 0x12u);
    }

    v85 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      v87 = NSStringFromSelector(a2);
      *buf = 138412290;
      v125 = v87;
      _os_log_error_impl(&dword_2304B3000, v85, OS_LOG_TYPE_ERROR, "%@ failed due to null parameter", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_getNextPredictedLocationsOfInterestFromLocation:(id)location startDate:(id)date timeInterval:(double)interval
{
  v138 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  dateCopy = date;
  [dateCopy timeIntervalSinceReferenceDate];
  v10 = v9;
  intervalCopy = 3600.0;
  if (interval >= 3600.0)
  {
    intervalCopy = interval;
    if (interval <= 86400.0)
    {
      goto LABEL_9;
    }

    intervalCopy = 86400.0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    v12 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    intervalCopy = 86400.0;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    *buf = 134217984;
    *&buf[4] = 0x40F5180000000000;
    v13 = "Forcing maximum prediction window %fs";
    goto LABEL_106;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_9;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
  intervalCopy = 3600.0;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = 0x40AC200000000000;
    v13 = "Forcing minimum prediction window %fs";
LABEL_106:
    _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, v13, buf, 0xCu);
  }

LABEL_8:

LABEL_9:
  [(RTStateModel *)self getMaxDistFromInterval:intervalCopy withVelocity:20.0];
  v15 = v14;
  v94 = [[RTStateModelLocation alloc] initWithRTLocation:locationCopy];
  v89 = objc_opt_new();
  earliestLatestStateModelEl = [(RTStateModel *)self earliestLatestStateModelEl];

  if (earliestLatestStateModelEl)
  {
    [(RTStateModel *)self getNumberOfWeeksInStateModel];
    v18 = v17;
    v19 = vcvtmd_s64_f64(v17);
    if (v17 <= 6.0)
    {
      LODWORD(earliestLatestStateModelEl) = v19;
    }

    else
    {
      LODWORD(earliestLatestStateModelEl) = 6;
    }
  }

  else
  {
    v18 = 0.0;
  }

  if (v94)
  {
    v93 = [(RTStateModel *)self findClusterWithLocation:?];
  }

  else
  {
    v93 = 0;
  }

  v91 = [(RTStateModel *)self anyClusterOfInterestWithinDistance:locationCopy ofLocation:v15 andEnteredEarlierThan:v10 + -1209600.0];
  v20 = 0.0;
  if (v18 >= 2.0)
  {
    v20 = 1.0;
  }

  if (v91)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = v20;
  }

  if (v91)
  {
    v22 = earliestLatestStateModelEl;
  }

  else
  {
    v22 = 1;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = NSStringFromSelector(a2);
      stringFromDate = [dateCopy stringFromDate];
      v26 = stringFromDate;
      v27 = @"YES";
      *buf = 138413827;
      *&buf[4] = v24;
      *&buf[12] = 2117;
      if (v91)
      {
        v27 = @"NO";
      }

      *&buf[14] = v94;
      *&buf[22] = 2112;
      v132 = stringFromDate;
      *v133 = 2048;
      *&v133[2] = intervalCopy;
      *&v133[10] = 2053;
      *&v133[12] = v18;
      v134 = 1029;
      v135 = v22;
      v136 = 2112;
      v137 = v27;
      _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "%@, location, %{sensitive}@, startDate, %@, predictionWindow, %.2f, number of weeks in State Model, %{sensitive}f, number of weeks for prediction, %{sensitive}d, sparse mode, %@", buf, 0x44u);
    }
  }

  v90 = [(RTStateModel *)self getOOStClusterData:v22 predictionWindow:v94 numOfWeeks:v10 refLoc:intervalCopy];
  v28 = !v91;
  if (v93)
  {
    v29 = !v91;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = 0;
    v31 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138739971;
        *&buf[4] = v93;
        _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "reference location resolves to inside the state model, %{sensitive}@", buf, 0xCu);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v132 = __Block_byref_object_copy__142;
    *v133 = __Block_byref_object_dispose__142;
    *&v133[8] = objc_alloc_init(MEMORY[0x277CBEB18]);
    stateTransitions = [v93 stateTransitions];
    v129[0] = MEMORY[0x277D85DD0];
    v129[1] = 3221225472;
    v129[2] = __88__RTStateModel__getNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval___block_invoke;
    v129[3] = &unk_2788CFBE0;
    *&v129[5] = v10;
    *&v129[6] = intervalCopy;
    v130 = v22;
    v129[4] = buf;
    [stateTransitions enumerateKeysAndObjectsUsingBlock:v129];

    v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v87 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v18 <= 2.0)
    {
      v30 = v34;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v39 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *v118 = 0;
          _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "Selecting Daily Intervals - IN-STATE-OP", v118, 2u);
        }
      }

      [v30 sortUsingComparator:&__block_literal_global_73];
      v38 = 0;
    }

    else
    {
      v35 = *(*&buf[8] + 40);
      v122[0] = MEMORY[0x277D85DD0];
      v122[1] = 3221225472;
      v122[2] = __88__RTStateModel__getNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval___block_invoke_2;
      v122[3] = &unk_2788CFC08;
      v122[4] = self;
      v123 = v94;
      v127 = v10;
      v124 = v90;
      v128 = v15;
      v36 = v87;
      v125 = v36;
      v126 = v34;
      [v35 enumerateObjectsUsingBlock:v122];

      v30 = v36;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v37 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *v118 = 0;
          _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_INFO, "Selecting Weekly Intervals - IN-STATE-OP", v118, 2u);
        }
      }

      [v30 sortUsingComparator:&__block_literal_global_119];
      v38 = [v30 count] == 0;
    }

    firstObject = [v30 firstObject];
    stateUUID = [firstObject stateUUID];
    uniqueId = [v93 uniqueId];
    v43 = stateUUID == uniqueId;

    if (v43)
    {

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v44 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          *v118 = 0;
          _os_log_debug_impl(&dword_2304B3000, v44, OS_LOG_TYPE_DEBUG, "We are staying home and not really going anywhere - reverting into out of state model to verify!!", v118, 2u);
        }
      }

      v30 = 0;
      v38 = 1;
    }

    else
    {
      *v118 = 0;
      v119 = v118;
      v120 = 0x2020000000;
      v121 = -1;
      v115[0] = MEMORY[0x277D85DD0];
      v115[1] = 3221225472;
      v115[2] = __88__RTStateModel__getNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval___block_invoke_74;
      v115[3] = &unk_2788CA728;
      v116 = v93;
      v117 = v118;
      [v30 enumerateObjectsUsingBlock:v115];
      if ((*(v119 + 3) & 0x8000000000000000) == 0)
      {
        [v30 removeObjectAtIndex:?];
      }

      _Block_object_dispose(v118, 8);
    }

    stateModelLut = [(RTStateModel *)self stateModelLut];
    firstObject2 = [v30 firstObject];
    stateUUID2 = [firstObject2 stateUUID];
    v48 = [stateModelLut objectForKey:stateUUID2];

    if (v48 && ([v48 stateDepiction], v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v49, "location"), v50 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v50, "Latitude_deg"), objc_msgSend(v48, "stateDepiction"), v51 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v51, "location"), v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v52, "Longitude_deg"), -[RTStateModelLocation Latitude_deg](v94, "Latitude_deg"), -[RTStateModelLocation Longitude_deg](v94, "Longitude_deg"), RTCommonCalculateDistanceHighPrecision(), v54 = v53, v52, v51, v50, v49, v54 < 700.0))
    {

      v31 = 1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v55 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          *v118 = 0;
          _os_log_impl(&dword_2304B3000, v55, OS_LOG_TYPE_INFO, "in-state recommendation is too close in distance - reverting to out of State estimate", v118, 2u);
        }
      }

      v30 = 0;
    }

    else if (v38)
    {
      v31 = 1;
    }

    else
    {
      v111[0] = MEMORY[0x277D85DD0];
      v111[1] = 3221225472;
      v111[2] = __88__RTStateModel__getNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval___block_invoke_75;
      v111[3] = &unk_2788CE6B8;
      v111[4] = self;
      v112 = v87;
      v114 = v21;
      v113 = v89;
      [v30 enumerateObjectsUsingBlock:v111];

      v31 = 0;
    }

    v56 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = 0;

    _Block_object_dispose(buf, 8);
    v28 = !v91;
  }

  if (v93)
  {
    v57 = v31;
  }

  else
  {
    v57 = 1;
  }

  if ((v57 | v28) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v58 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        v59 = @"YES";
        if (v93)
        {
          v60 = @"YES";
        }

        else
        {
          v60 = @"NO";
        }

        if (v31)
        {
          v61 = @"YES";
        }

        else
        {
          v61 = @"NO";
        }

        *buf = 138740483;
        *&buf[4] = v60;
        *&buf[12] = 2112;
        *&buf[14] = v61;
        if (v91)
        {
          v59 = @"NO";
        }

        *&buf[22] = 2112;
        v132 = v59;
        _os_log_impl(&dword_2304B3000, v58, OS_LOG_TYPE_INFO, "Entering OutOfState: state at reference location, %{sensitive}@, revertToOutOfStateLogic requested, %@, sparseData, %@", buf, 0x20u);
      }
    }

    v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
    selectOOStStates = [v90 selectOOStStates];
    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = __88__RTStateModel__getNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval___block_invoke_76;
    v103[3] = &unk_2788CFC30;
    v103[4] = self;
    v104 = v94;
    v108 = v10;
    v110 = v28;
    v65 = v90;
    v105 = v65;
    v109 = v15;
    v66 = v63;
    v106 = v66;
    v67 = v62;
    v107 = v67;
    [selectOOStStates enumerateObjectsUsingBlock:v103];

    if (v91)
    {
      v68 = v66;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v69 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v69, OS_LOG_TYPE_INFO, "Selecting Weekly Intervals - OUT-OF-STATE-OP", buf, 2u);
        }
      }

      [v68 sortUsingComparator:&__block_literal_global_79];
    }

    else
    {
      v68 = v67;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v70 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v70, OS_LOG_TYPE_INFO, "Selecting Daily Intervals - OUT-OF-STATE-OP", buf, 2u);
        }
      }

      [v68 sortUsingComparator:&__block_literal_global_82];
    }

    v71 = v68;
    if (v31)
    {
      firstObject3 = [v68 firstObject];
      weekly = [firstObject3 weekly];
      [weekly density];
      v75 = v74;
      firstObject4 = [v30 firstObject];
      weekly2 = [firstObject4 weekly];
      [weekly2 density];
      v79 = v75 > v78;

      if (v79)
      {
        v71 = v68;
      }

      else
      {
        v71 = v30;
      }
    }

    v80 = v71;
    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __88__RTStateModel__getNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval___block_invoke_2_83;
    v100[3] = &unk_2788CF890;
    v100[4] = self;
    v102 = v21;
    v101 = v89;
    [v80 enumerateObjectsUsingBlock:v100];
    [v65 setSelectOOStStates:0];
  }

  else
  {
    LOBYTE(v28) = 0;
    v68 = 0;
  }

  stateModelLut2 = [(RTStateModel *)self stateModelLut];
  v95[0] = MEMORY[0x277D85DD0];
  v95[1] = 3221225472;
  v95[2] = __88__RTStateModel__getNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval___block_invoke_3;
  v95[3] = &unk_2788CFC58;
  v99 = v28;
  v96 = v94;
  v98 = v15;
  v82 = v89;
  v97 = v82;
  v83 = v94;
  [stateModelLut2 enumerateKeysAndObjectsUsingBlock:v95];

  v84 = v97;
  v85 = v82;

  return v82;
}

void __88__RTStateModel__getNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 getPredTrans:*(a1 + 56) duration:a2 numOfWeeks:*(a1 + 40) uniqueID:*(a1 + 48)];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
}

void __88__RTStateModel__getNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval___block_invoke_2(uint64_t a1, void *a2)
{
  v122 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) stateModelLut];
  v5 = [v3 stateUUID];
  v6 = [v4 objectForKey:v5];

  v7 = [v6 stateDepiction];
  v8 = [v7 location];
  [v8 Latitude_deg];
  v9 = [v6 stateDepiction];
  v10 = [v9 location];
  [v10 Longitude_deg];
  [*(a1 + 40) Latitude_deg];
  [*(a1 + 40) Longitude_deg];
  RTCommonCalculateDistanceHighPrecision();
  v12 = v11;

  v13 = [v3 weekly];
  [v13 latestTransTimeStart_s];
  v15 = v14;

  if (v15 <= -1.0)
  {
    v19 = 1.0e12;
  }

  else
  {
    v16 = *(a1 + 72);
    v17 = [v3 weekly];
    [v17 latestTransTimeStart_s];
    v19 = v16 - v18;
  }

  v20 = [v3 weekly];
  [v20 density];
  v22 = v21;
  [*(a1 + 48) weeklyDensityCorrection];
  if (v22 * v23 <= 0.3)
  {
    goto LABEL_7;
  }

  v24 = [v3 weekly];
  if ([v24 numOfTrans] < 2 || v12 <= 700.0 || v12 >= *(a1 + 80))
  {

LABEL_7:
LABEL_8:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v25 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v26 = [v3 weekly];
    v27 = [v26 numOfTrans];
    v28 = [v3 weekly];
    [v28 density];
    v30 = v29;
    [*(a1 + 48) weeklyDensityCorrection];
    v32 = v30 * v31;
    v33 = [v3 daily];
    [v33 density];
    v35 = v34;
    [*(a1 + 48) dailyDensityCorrection];
    *buf = 138741251;
    v113 = v6;
    v114 = 1029;
    *v115 = v27;
    *&v115[4] = 2053;
    *&v115[6] = v19;
    *&v115[14] = 2053;
    *&v115[16] = v32;
    *&v115[24] = 2053;
    *&v115[26] = v35 * v36;
    *&v115[34] = 2053;
    *&v115[36] = v12;
    _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "Dropping WEEKLY INTERVAL, state, %{sensitive}@, numOfTrans %{sensitive}d, ageOfTrans %{sensitive}f, weeklyDens %{sensitive}f, dailyDens %{sensitive}f, dist %{sensitive}f", buf, 0x3Au);

    goto LABEL_11;
  }

  if (v19 >= 1900800.0)
  {
    goto LABEL_8;
  }

  [*(a1 + 56) addObject:v3];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v110 = [v3 weekly];
    [v110 predResidualStart_s];
    v62 = v61 / 3600.0;
    v108 = [v3 weekly];
    [v108 resUncStart_s];
    v64 = v63 / 3600.0;
    v106 = [v3 weekly];
    [v106 predResidualStop_s];
    v66 = v65 / 3600.0;
    v104 = [v3 weekly];
    [v104 resUncStop_s];
    v68 = v67 / 3600.0;
    v102 = [v3 weekly];
    v101 = [v102 primaryStopDate];
    v26 = [v101 stringFromDate];
    v69 = [v3 weekly];
    v70 = [v69 numOfTrans];
    v71 = [v3 weekly];
    [v71 density];
    v73 = v72;
    [*(a1 + 48) weeklyDensityCorrection];
    v75 = v73 * v74;
    v76 = [v3 daily];
    [v76 density];
    v78 = v77;
    [*(a1 + 48) dailyDensityCorrection];
    *buf = 138742019;
    v113 = v6;
    v114 = 2053;
    *v115 = v62;
    *&v115[8] = 2048;
    *&v115[10] = v64;
    *&v115[18] = 2053;
    *&v115[20] = v66;
    *&v115[28] = 2048;
    *&v115[30] = v68;
    *&v115[38] = 2112;
    *&v115[40] = v26;
    v116 = 1029;
    v117 = v70;
    v118 = 2053;
    v119 = v75;
    v120 = 2053;
    v121 = v78 * v79;
    _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "Recommending WEEKLY INTERVAL, state, %{sensitive}@, start Trans %{sensitive}f [h], unc Res %f [h], stop Trans %{sensitive}f [h], unc Res %f [h], primaryStopDate, %@, num Of Trans %{sensitive}d, weeklyDens %{sensitive}f, dailyDens %{sensitive}f", buf, 0x58u);

LABEL_11:
LABEL_12:
  }

LABEL_13:
  v37 = [v3 daily];
  [v37 latestTransTimeStart_s];
  v39 = v38;

  if (v39 <= -1.0)
  {
    v43 = 1.0e12;
  }

  else
  {
    v40 = *(a1 + 72);
    v41 = [v3 daily];
    [v41 latestTransTimeStart_s];
    v43 = v40 - v42;
  }

  v44 = [v3 daily];
  [v44 density];
  v46 = v45;
  [*(a1 + 48) dailyDensityCorrection];
  if (v46 * v47 <= 0.2)
  {
    goto LABEL_19;
  }

  v48 = [v3 daily];
  if ([v48 numOfTrans] < 3 || v12 <= 700.0 || v12 >= *(a1 + 80))
  {

LABEL_19:
    goto LABEL_20;
  }

  if (v43 < 432000.0)
  {
    [*(a1 + 64) addObject:v3];
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    v49 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v111 = [v3 daily];
      [v111 predResidualStart_s];
      v81 = v80 / 3600.0;
      v109 = [v3 daily];
      [v109 resUncStart_s];
      v83 = v82 / 3600.0;
      v107 = [v3 daily];
      [v107 predResidualStop_s];
      v85 = v84 / 3600.0;
      v105 = [v3 daily];
      [v105 resUncStop_s];
      v87 = v86 / 3600.0;
      v103 = [v3 daily];
      v88 = [v103 primaryStopDate];
      v89 = [v88 stringFromDate];
      v90 = [v3 daily];
      v91 = [v90 numOfTrans];
      v92 = [v3 daily];
      [v92 density];
      v94 = v93;
      [*(a1 + 48) dailyDensityCorrection];
      v96 = v94 * v95;
      v97 = [v3 weekly];
      [v97 density];
      v99 = v98;
      [*(a1 + 48) weeklyDensityCorrection];
      *buf = 138742019;
      v113 = v6;
      v114 = 2053;
      *v115 = v81;
      *&v115[8] = 2053;
      *&v115[10] = v83;
      *&v115[18] = 2053;
      *&v115[20] = v85;
      *&v115[28] = 2048;
      *&v115[30] = v87;
      *&v115[38] = 2112;
      *&v115[40] = v89;
      v116 = 1029;
      v117 = v91;
      v118 = 2053;
      v119 = v96;
      v120 = 2053;
      v121 = v99 * v100;
      _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "Recommending DAILY INTERVAL, state, %{sensitive}@, start Trans %{sensitive}f [h], unc Res %{sensitive}f [h], stop Trans %{sensitive}f [h], unc Res %f [h], primaryStopDate, %@, num Of Trans %{sensitive}d, dailyDens %{sensitive}f, weeklyDens %{sensitive}f", buf, 0x58u);
    }

    goto LABEL_23;
  }

LABEL_20:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v49 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = [v3 daily];
      v51 = [v50 numOfTrans];
      v52 = [v3 daily];
      [v52 density];
      v54 = v53;
      [*(a1 + 48) dailyDensityCorrection];
      v56 = v54 * v55;
      v57 = [v3 weekly];
      [v57 density];
      v59 = v58;
      [*(a1 + 48) weeklyDensityCorrection];
      *buf = 138741251;
      v113 = v6;
      v114 = 1024;
      *v115 = v51;
      *&v115[4] = 2053;
      *&v115[6] = v43;
      *&v115[14] = 2053;
      *&v115[16] = v56;
      *&v115[24] = 2053;
      *&v115[26] = v59 * v60;
      *&v115[34] = 2053;
      *&v115[36] = v12;
      _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "Dropping DAILY INTERVAL, state, %{sensitive}@, numOfTrans %d, ageOfTrans %{sensitive}f, dailyDens %{sensitive}f, weeklyDens %{sensitive}f, dist %{sensitive}f", buf, 0x3Au);
    }

LABEL_23:
  }

LABEL_24:
}

uint64_t __88__RTStateModel__getNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval___block_invoke_69(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 weekly];
  [v5 density];
  v7 = v6;
  v8 = [v4 weekly];

  [v8 density];
  v10 = v9;

  if (v7 <= v10)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __88__RTStateModel__getNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval___block_invoke_71(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 daily];
  [v5 density];
  v7 = v6;
  v8 = [v4 daily];

  [v8 density];
  v10 = v9;

  if (v7 <= v10)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void __88__RTStateModel__getNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval___block_invoke_74(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 stateUUID];
  v6 = [*(a1 + 32) uniqueId];

  if (v5 == v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *v8 = 0;
        _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "Remove transition into itself!!", v8, 2u);
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

void __88__RTStateModel__getNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval___block_invoke_75(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) stateModelLut];
  v4 = [v13 stateUUID];
  v5 = [v3 objectForKey:v4];

  if ([*(a1 + 40) count])
  {
    v6 = [v13 weekly];
    v7 = [v6 primaryStopDate];

    [v13 weekly];
  }

  else
  {
    v8 = [v13 daily];
    v7 = [v8 primaryStopDate];

    [v13 daily];
  }
  v9 = ;
  v10 = [v9 motionActivityType];

  v11 = [objc_alloc(MEMORY[0x277D01170]) initWithOneState:v5];
  v12 = [objc_alloc(MEMORY[0x277D01270]) initWithLocationOfInterest:v11 confidence:v7 nextEntryTime:v10 motionActivityType:*(a1 + 56)];
  [*(a1 + 48) addObject:v12];
}

void __88__RTStateModel__getNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval___block_invoke_76(uint64_t a1, void *a2)
{
  v116 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) stateModelLut];
  v5 = [v3 stateUUID];
  v6 = [v4 objectForKey:v5];

  v7 = [v6 stateDepiction];
  v8 = [v7 location];
  [v8 Latitude_deg];
  v9 = [v6 stateDepiction];
  v10 = [v9 location];
  [v10 Longitude_deg];
  [*(a1 + 40) Latitude_deg];
  [*(a1 + 40) Longitude_deg];
  RTCommonCalculateDistanceHighPrecision();
  v12 = v11;

  v13 = [v3 weekly];
  [v13 latestVisitTime_s];
  v15 = v14;

  if (v15 <= -1.0)
  {
    v19 = 1.0e12;
  }

  else
  {
    v16 = *(a1 + 72);
    v17 = [v3 weekly];
    [v17 latestVisitTime_s];
    v19 = v16 - v18;
  }

  if (*(a1 + 88))
  {
    goto LABEL_17;
  }

  v20 = [v3 weekly];
  [v20 density];
  v22 = v21;
  [*(a1 + 48) weeklyDensityCorrection];
  if (v22 * v23 <= 0.4)
  {
    goto LABEL_16;
  }

  v24 = [v3 weekly];
  if ([v24 numOfClustEntries] < 2 || v12 <= 700.0 || (objc_msgSend(*(a1 + 40), "uncertainty_m"), v25 <= 0.0) || v12 >= *(a1 + 80) || (objc_msgSend(*(a1 + 40), "uncertainty_m"), v26 <= 0.0))
  {

LABEL_16:
    goto LABEL_17;
  }

  if (v19 < 1900800.0)
  {
    [*(a1 + 56) addObject:v3];
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    v27 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v99 = [v3 weekly];
      [v99 aggregateTime_s];
      v29 = v28 / 3600.0;
      v30 = [v3 weekly];
      v31 = [v30 numOfClustEntries];
      v32 = *(a1 + 80);
      v33 = [v3 weekly];
      [v33 density];
      v35 = v34;
      [*(a1 + 48) weeklyDensityCorrection];
      v37 = v35 * v36;
      v38 = [v3 daily];
      [v38 density];
      v40 = v39;
      [*(a1 + 48) dailyDensityCorrection];
      *buf = 138741763;
      v101 = v6;
      v102 = 2053;
      v103 = v29;
      v104 = 1029;
      v105 = v31;
      v106 = 2053;
      v107 = v12;
      v108 = 2053;
      v109 = v19 / 3600.0;
      v110 = 2053;
      v111 = v32;
      v112 = 2053;
      v113 = v37;
      v114 = 2053;
      v115 = v40 * v41;
      _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "Recommending WEEKLY INTERVAL, state, %{sensitive}@, lifespan %{sensitive}f, numOfClustEntries %{sensitive}d, LastLoc Dist to Clust %{sensitive}f, ageLatestClust visit %{sensitive}f, Max Cluster Dist %{sensitive}f, weeklyDens %{sensitive}f, dailyDens %{sensitive}f ", buf, 0x4Eu);
    }

    goto LABEL_20;
  }

LABEL_17:
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_21;
  }

  v27 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v42 = [v3 weekly];
    [v42 aggregateTime_s];
    v44 = v43 / 3600.0;
    v45 = [v3 weekly];
    v46 = [v45 numOfClustEntries];
    v47 = *(a1 + 80);
    v48 = [v3 weekly];
    [v48 density];
    v50 = v49;
    [*(a1 + 48) weeklyDensityCorrection];
    v52 = v50 * v51;
    v53 = [v3 daily];
    [v53 density];
    v55 = v54;
    [*(a1 + 48) dailyDensityCorrection];
    *buf = 138741763;
    v101 = v6;
    v102 = 2053;
    v103 = v44;
    v104 = 1029;
    v105 = v46;
    v106 = 2053;
    v107 = v12;
    v108 = 2053;
    v109 = v19 / 3600.0;
    v110 = 2053;
    v111 = v47;
    v112 = 2053;
    v113 = v52;
    v114 = 2053;
    v115 = v55 * v56;
    _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "Dropping WEEKLY INTERVAL, state, %{sensitive}@, lifespan %{sensitive}f, numOfClustEntries %{sensitive}d, LastLoc Dist to Clust %{sensitive}f, ageLatestClust visit %{sensitive}f, Max Cluster Dist %{sensitive}f, weeklyDens %{sensitive}f, dailyDens %{sensitive}f", buf, 0x4Eu);
  }

LABEL_20:

LABEL_21:
  v57 = [v3 daily];
  [v57 latestVisitTime_s];
  v59 = v58;

  if (v59 <= -1.0)
  {
    v63 = 1.0e12;
  }

  else
  {
    v60 = *(a1 + 72);
    v61 = [v3 daily];
    [v61 latestVisitTime_s];
    v63 = v60 - v62;
  }

  v64 = [v3 daily];
  [v64 density];
  v66 = v65;
  [*(a1 + 48) dailyDensityCorrection];
  if (v66 * v67 <= 0.2)
  {
    goto LABEL_35;
  }

  v68 = [v3 daily];
  if ([v68 numOfClustEntries] < 3 || v12 <= 700.0 || (objc_msgSend(*(a1 + 40), "uncertainty_m"), v69 <= 0.0) || v12 >= *(a1 + 80) || (objc_msgSend(*(a1 + 40), "uncertainty_m"), v70 <= 0.0))
  {

LABEL_35:
    goto LABEL_36;
  }

  if (v63 < 432000.0)
  {
    [*(a1 + 64) addObject:v3];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v71 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        v72 = [v3 daily];
        [v72 aggregateTime_s];
        v74 = v73 / 3600.0;
        v75 = [v3 daily];
        v76 = [v75 numOfClustEntries];
        v77 = *(a1 + 80);
        v78 = [v3 daily];
        [v78 density];
        v80 = v79;
        [*(a1 + 48) dailyDensityCorrection];
        v82 = v80 * v81;
        v83 = [v3 weekly];
        [v83 density];
        v85 = v84;
        [*(a1 + 48) weeklyDensityCorrection];
        *buf = 138741763;
        v101 = v6;
        v102 = 2053;
        v103 = v74;
        v104 = 1029;
        v105 = v76;
        v106 = 2053;
        v107 = v12;
        v108 = 2053;
        v109 = v63 / 3600.0;
        v110 = 2053;
        v111 = v77;
        v112 = 2053;
        v113 = v82;
        v114 = 2053;
        v115 = v85 * v86;
        v87 = "Recommending DAILY INTERVAL, state, %{sensitive}@, lifespan %{sensitive}f, numOfClustEntries %{sensitive}d, LastLoc Dist to Clust %{sensitive}f, ageLatestClust visit %{sensitive}f, Max Cluster Dist %{sensitive}f, dailyDens %{sensitive}f, weeklyDens %{sensitive}f";
LABEL_39:
        _os_log_impl(&dword_2304B3000, v71, OS_LOG_TYPE_INFO, v87, buf, 0x4Eu);

        goto LABEL_40;
      }

      goto LABEL_40;
    }

    goto LABEL_41;
  }

LABEL_36:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v71 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      v72 = [v3 daily];
      [v72 aggregateTime_s];
      v89 = v88 / 3600.0;
      v75 = [v3 daily];
      v90 = [v75 numOfClustEntries];
      v91 = *(a1 + 80);
      v78 = [v3 daily];
      [v78 density];
      v93 = v92;
      [*(a1 + 48) dailyDensityCorrection];
      v95 = v93 * v94;
      v83 = [v3 weekly];
      [v83 density];
      v97 = v96;
      [*(a1 + 48) weeklyDensityCorrection];
      *buf = 138741763;
      v101 = v6;
      v102 = 2053;
      v103 = v89;
      v104 = 1029;
      v105 = v90;
      v106 = 2053;
      v107 = v12;
      v108 = 2053;
      v109 = v63 / 3600.0;
      v110 = 2053;
      v111 = v91;
      v112 = 2053;
      v113 = v95;
      v114 = 2053;
      v115 = v97 * v98;
      v87 = "Dropping DAILY INTERVAL, state, %{sensitive}@, lifespan %{sensitive}f, numOfClustEntries %{sensitive}d, LastLoc Dist to Clust %{sensitive}f, ageLatestClust visit %{sensitive}f, Max Cluster Dist %{sensitive}f, dailyDens %{sensitive}f, weeklyDens %{sensitive}f";
      goto LABEL_39;
    }

LABEL_40:
  }

LABEL_41:
}

uint64_t __88__RTStateModel__getNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval___block_invoke_77(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 weekly];
  [v5 density];
  v7 = v6;
  v8 = [v4 weekly];

  [v8 density];
  v10 = v9;

  if (v7 <= v10)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __88__RTStateModel__getNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval___block_invoke_80(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 daily];
  [v5 density];
  v7 = v6;
  v8 = [v4 daily];

  [v8 density];
  v10 = v9;

  if (v7 <= v10)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void __88__RTStateModel__getNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval___block_invoke_2_83(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 stateModelLut];
  v6 = [v4 stateUUID];

  v9 = [v5 objectForKey:v6];

  v7 = [objc_alloc(MEMORY[0x277D01170]) initWithOneState:v9];
  v8 = [objc_alloc(MEMORY[0x277D01270]) initWithLocationOfInterest:v7 confidence:0 nextEntryTime:0 motionActivityType:*(a1 + 48)];
  [*(a1 + 40) addObject:v8];
}

void __88__RTStateModel__getNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = a3;
  v4 = [v21 stateDepiction];
  if ([v4 type])
  {
    if (*(a1 + 56) != 1)
    {
LABEL_10:

      v7 = v21;
      goto LABEL_11;
    }

    v5 = [v21 stateDepiction];
    v6 = [v5 type];

    v7 = v21;
    if (v6 != 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v8 = [v21 stateDepiction];
  v9 = [v8 location];
  [v9 Latitude_deg];
  v10 = [v21 stateDepiction];
  v11 = [v10 location];
  [v11 Longitude_deg];
  [*(a1 + 32) Latitude_deg];
  [*(a1 + 32) Longitude_deg];
  RTCommonCalculateDistanceHighPrecision();
  v13 = v12;

  v7 = v21;
  if (v13 > 700.0 && v13 < *(a1 + 48))
  {
    v14 = *(a1 + 40);
    v15 = MEMORY[0x277CCAC30];
    v16 = [v21 uniqueId];
    v17 = [v15 predicateWithFormat:@"%K == %@", @"locationOfInterest.identifier", v16];
    v18 = [v14 filteredArrayUsingPredicate:v17];
    v19 = [v18 count];

    v7 = v21;
    if (!v19)
    {
      v4 = [objc_alloc(MEMORY[0x277D01170]) initWithOneState:v21];
      v20 = [objc_alloc(MEMORY[0x277D01270]) initWithLocationOfInterest:v4 confidence:0 nextEntryTime:0 motionActivityType:0.0];
      [*(a1 + 40) addObject:v20];

      goto LABEL_10;
    }
  }

LABEL_11:
}

- (id)getPredictedLocationsOfInterestWithCriteria:(id)criteria
{
  v35 = *MEMORY[0x277D85DE8];
  criteriaCopy = criteria;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  referenceDate = [criteriaCopy referenceDate];
  [referenceDate timeIntervalSinceReferenceDate];
  v9 = v8;

  [(RTStateModel *)self getNumberOfWeeksInStateModel];
  LODWORD(referenceDate) = v10;
  stateModelLut = [(RTStateModel *)self stateModelLut];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __60__RTStateModel_getPredictedLocationsOfInterestWithCriteria___block_invoke;
  v24[3] = &unk_2788CFC80;
  v27 = v9;
  v12 = criteriaCopy;
  v25 = v12;
  v28 = referenceDate;
  v13 = v6;
  v26 = v13;
  [stateModelLut enumerateKeysAndObjectsUsingBlock:v24];

  [v13 sortUsingComparator:&__block_literal_global_94_0];
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __60__RTStateModel_getPredictedLocationsOfInterestWithCriteria___block_invoke_3;
  v22[3] = &unk_2788C4BA8;
  v15 = v14;
  v23 = v15;
  [v13 enumerateObjectsUsingBlock:v22];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v18 = NSStringFromSelector(a2);
      referenceDate2 = [v12 referenceDate];
      stringFromDate = [referenceDate2 stringFromDate];
      v21 = [v15 count];
      *buf = 138412802;
      v30 = v18;
      v31 = 2112;
      v32 = stringFromDate;
      v33 = 2048;
      v34 = v21;
      _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "%@%@ found %lu PLOIs", buf, 0x20u);
    }
  }

  return v15;
}

void __60__RTStateModel_getPredictedLocationsOfInterestWithCriteria___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = a2;
  v6 = [v11 stateDepiction];
  v7 = *(a1 + 48);
  [*(a1 + 32) windowDuration];
  v9 = [v6 getPredState:*(a1 + 56) predictionWindow:v5 numOfWeeks:v7 uniqueID:v8];

  [RTStateModel getOutOfStateConfidenceWithOneStatePred:v9];
  if (v10 >= 1.0)
  {
    [*(a1 + 40) addObject:v11];
  }
}

uint64_t __60__RTStateModel_getPredictedLocationsOfInterestWithCriteria___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 stateDepiction];
  [v5 getLastVisit];
  v7 = v6;
  v8 = [v4 stateDepiction];

  [v8 getLastVisit];
  v10 = v9;

  if (v7 <= v10)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void __60__RTStateModel_getPredictedLocationsOfInterestWithCriteria___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D01170];
  v4 = a2;
  v6 = [[v3 alloc] initWithOneState:v4];

  v5 = [objc_alloc(MEMORY[0x277D01270]) initWithLocationOfInterest:v6 confidence:0 nextEntryTime:0 motionActivityType:1.0];
  [*(a1 + 32) addObject:v5];
}

- (id)findClusterWithLocation:(id)location
{
  locationCopy = location;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__142;
  v18 = __Block_byref_object_dispose__142;
  v19 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0x7FF0000000000000;
  stateModelLut = [(RTStateModel *)self stateModelLut];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__RTStateModel_findClusterWithLocation___block_invoke;
  v9[3] = &unk_2788CFCA8;
  v6 = locationCopy;
  v10 = v6;
  v11 = v13;
  v12 = &v14;
  [stateModelLut enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v15[5];
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __40__RTStateModel_findClusterWithLocation___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [v5 stateDepiction];
  v7 = [v6 location];

  [v7 Longitude_deg];
  v9 = v8;
  [*(a1 + 32) Longitude_deg];
  if (vabdd_f64(v9, v10) >= 180.0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *v25 = 0;
        _os_log_debug_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEBUG, "Cluster aggregation falls into DateLine ", v25, 2u);
      }
    }
  }

  else
  {
    [*(a1 + 32) Latitude_deg];
    v12 = v11;
    [*(a1 + 32) Longitude_deg];
    v14 = v13;
    [v7 Latitude_deg];
    v16 = v15;
    [v7 Longitude_deg];
    [RTStateModel getDistfromLat:v12 fromLon:v14 toLat:v16 toLon:v17];
    v19 = v18;
    [*(a1 + 32) uncertainty_m];
    v21 = v20;
    [v7 uncertainty_m];
    [RTStateModel deriveClusterThresholdFromUncClustAplha:v21 andUncClustBeta:v22];
    if (v19 <= v23 && v19 < *(*(*(a1 + 40) + 8) + 24))
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
      *(*(*(a1 + 40) + 8) + 24) = v19;
    }
  }
}

- (id)getLocationsOfInterestWithinDistance:(double)distance ofLocation:(id)location
{
  locationCopy = location;
  v7 = [[RTStateModelLocation alloc] initWithCLLocation:locationCopy];

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (distance > 0.0)
  {
    stateModelLut = [(RTStateModel *)self stateModelLut];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__RTStateModel_getLocationsOfInterestWithinDistance_ofLocation___block_invoke;
    v11[3] = &unk_2788CFCD0;
    distanceCopy = distance;
    v12 = v7;
    v13 = v8;
    [stateModelLut enumerateKeysAndObjectsUsingBlock:v11];
  }

  [v8 sortUsingComparator:&__block_literal_global_97_1];

  return v8;
}

void __64__RTStateModel_getLocationsOfInterestWithinDistance_ofLocation___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stateDepiction];
  v6 = [v5 location];

  if (v6)
  {
    v7 = *(a1 + 48);
    [*(a1 + 32) Latitude_deg];
    v9 = v8;
    [*(a1 + 32) Longitude_deg];
    v11 = v10;
    [v6 Latitude_deg];
    v13 = v12;
    [v6 Longitude_deg];
    [RTStateModel getDistfromLat:v9 fromLon:v11 toLat:v13 toLon:v14];
    if (v7 > v15)
    {
      v16 = [objc_alloc(MEMORY[0x277D01170]) initWithOneState:v4];
      [*(a1 + 40) addObject:v16];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = *(a1 + 48);
          v19 = *(a1 + 32);
          v20 = 134218499;
          v21 = v18;
          v22 = 2117;
          v23 = v19;
          v24 = 2117;
          v25 = v4;
          _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "Found an LOI within %.2fm of %{sensitive}@, loi, %{sensitive}@", &v20, 0x20u);
        }
      }
    }
  }
}

uint64_t __64__RTStateModel_getLocationsOfInterestWithinDistance_ofLocation___block_invoke_95(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 visits];
  v6 = [v5 count];
  v7 = [v4 visits];

  v8 = [v7 count];
  if (v6 > v8)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

- (BOOL)anyClusterOfInterestWithinDistance:(double)distance ofLocation:(id)location andEnteredEarlierThan:(double)than
{
  locationCopy = location;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v9 = [[RTStateModelLocation alloc] initWithRTLocation:locationCopy];
  if (distance > 0.0 && than > 0.0)
  {
    stateModelLut = [(RTStateModel *)self stateModelLut];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __84__RTStateModel_anyClusterOfInterestWithinDistance_ofLocation_andEnteredEarlierThan___block_invoke;
    v13[3] = &unk_2788CFCF8;
    distanceCopy = distance;
    thanCopy = than;
    v14 = v9;
    v15 = &v18;
    [stateModelLut enumerateKeysAndObjectsUsingBlock:v13];
  }

  v11 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v11;
}

void __84__RTStateModel_anyClusterOfInterestWithinDistance_ofLocation_andEnteredEarlierThan___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v20 = a3;
  v6 = [v20 stateDepiction];
  v7 = [v6 location];

  if (v7)
  {
    v8 = *(a1 + 48);
    [*(a1 + 32) Latitude_deg];
    v10 = v9;
    [*(a1 + 32) Longitude_deg];
    v12 = v11;
    [v7 Latitude_deg];
    v14 = v13;
    [v7 Longitude_deg];
    [RTStateModel getDistfromLat:v10 fromLon:v12 toLat:v14 toLon:v15];
    if (v8 > v16)
    {
      v17 = [v20 stateDepiction];
      v18 = [v17 getEarliestLatestEntry];

      [v18 earliestEl_s];
      if (v19 < *(a1 + 56))
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }
}

- (double)getMaxDistFromInterval:(double)interval withVelocity:(double)velocity
{
  v4 = velocity <= 0.0 || interval <= 0.0;
  result = interval * velocity;
  if (v4)
  {
    return 72000.0;
  }

  return result;
}

- (id)getOOStClusterData:(double)data predictionWindow:(double)window numOfWeeks:(int)weeks refLoc:(id)loc
{
  v49 = *MEMORY[0x277D85DE8];
  locCopy = loc;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  stateModelLut = [(RTStateModel *)self stateModelLut];
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __70__RTStateModel_getOOStClusterData_predictionWindow_numOfWeeks_refLoc___block_invoke;
  v32 = &unk_2788CFD20;
  dataCopy = data;
  windowCopy = window;
  weeksCopy = weeks;
  v33 = v13;
  v34 = locCopy;
  selfCopy = self;
  v15 = v11;
  v36 = v15;
  v16 = v12;
  v37 = v16;
  v17 = locCopy;
  v18 = v13;
  [stateModelLut enumerateKeysAndObjectsUsingBlock:&v29];

  weeksCopy2 = weeks;
  v20 = 1.0;
  weeksCopy3 = weeks;
  v22 = 1.0;
  if ([v15 count] < weeks)
  {
    v22 = weeksCopy3 / (weeks - [v15 count]);
  }

  v23 = 7 * weeks;
  if ([v16 count] < (7 * weeksCopy2))
  {
    v20 = weeksCopy3 * 7.0 / (v23 - [v15 count]);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v27 = [v15 count];
      v28 = [v16 count];
      *buf = 67437569;
      v42 = v27;
      v43 = 1029;
      v44 = v28;
      v45 = 2053;
      v46 = v22;
      v47 = 2053;
      v48 = v20;
      _os_log_debug_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEBUG, "Number of weeks out of region %{sensitive}d, number of days of region %{sensitive}d, weekly correction factor %{sensitive}f, daily correction factor %{sensitive}f", buf, 0x22u);
    }
  }

  v25 = [[RTStateModelAggOutOfStateSelection alloc] initWithSelectOOStStates:v18 dailyDensityCorrection:v20 weeklyDensityCorrection:v22];

  return v25;
}

void __70__RTStateModel_getOOStClusterData_predictionWindow_numOfWeeks_refLoc___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = [v5 stateDepiction];
  v8 = [v7 getPredState:*(a1 + 88) predictionWindow:v6 numOfWeeks:*(a1 + 72) + 3600.0 uniqueID:*(a1 + 80)];

  v9 = [v8 daily];
  if ([v9 numOfClustEntries] < 1)
  {
    v10 = [v8 weekly];
    v11 = [v10 numOfClustEntries];

    if (v11 < 1)
    {
      v13 = 0;
      goto LABEL_15;
    }
  }

  else
  {
  }

  v12 = [v5 stateDepiction];
  v13 = [v12 location];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v35 = [v8 daily];
      v23 = [v35 numOfClustEntries];
      v24 = [v8 daily];
      [v24 aggregateTime_s];
      v26 = v25 / 3600.0;
      v27 = [v8 daily];
      [v27 latestVisitTime_s];
      v29 = v28 / 3600.0;
      v30 = [v8 daily];
      [v30 density];
      v32 = v31;
      v33 = [v8 weekly];
      [v33 density];
      *buf = 138741251;
      v41 = v13;
      v42 = 1029;
      v43 = v23;
      v44 = 2053;
      v45 = v26;
      v46 = 2053;
      v47 = v29;
      v48 = 2053;
      v49 = v32;
      v50 = 2053;
      v51 = v34;
      _os_log_debug_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEBUG, "Out of state data aggregation, location, %{sensitive}@, in %{sensitive}d, aggregateTime %{sensitive}f [h], latestVisit %{sensitive}f, density Daily %{sensitive}f, density Weekly %{sensitive}f ", buf, 0x3Au);
    }
  }

  [*(a1 + 32) addObject:v8];
  [v13 Latitude_deg];
  [v13 Longitude_deg];
  [*(a1 + 40) Latitude_deg];
  [*(a1 + 40) Longitude_deg];
  RTCommonCalculateDistanceHighPrecision();
  v16 = v15;
  [*(a1 + 48) getMaxDistFromInterval:*(a1 + 80) withVelocity:20.0];
  if (v16 > v17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138739971;
        v41 = v13;
        _os_log_debug_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEBUG, "Out of region state at location, %{sensitive}@", buf, 0xCu);
      }
    }

    v19 = [v8 weekly];
    v20 = [v19 visitHist];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __70__RTStateModel_getOOStClusterData_predictionWindow_numOfWeeks_refLoc___block_invoke_98;
    v38[3] = &unk_2788CFA20;
    v39 = *(a1 + 56);
    [v20 enumerateObjectsUsingBlock:v38];

    v21 = [v8 daily];
    v22 = [v21 visitHist];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __70__RTStateModel_getOOStClusterData_predictionWindow_numOfWeeks_refLoc___block_invoke_2;
    v36[3] = &unk_2788CFA20;
    v37 = *(a1 + 64);
    [v22 enumerateObjectsUsingBlock:v36];
  }

LABEL_15:
}

void __70__RTStateModel_getOOStClusterData_predictionWindow_numOfWeeks_refLoc___block_invoke_98(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) objectForKey:?];

  if (!v3)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v4 setObject:v5 forKey:v6];
  }
}

void __70__RTStateModel_getOOStClusterData_predictionWindow_numOfWeeks_refLoc___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) objectForKey:?];

  if (!v3)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v4 setObject:v5 forKey:v6];
  }
}

+ (double)getOutOfStateConfidenceWithOneStatePred:(id)pred
{
  v39 = *MEMORY[0x277D85DE8];
  predCopy = pred;
  daily = [predCopy daily];
  if ([daily numOfClustEntries] <= 0)
  {

    v8 = 0.0;
  }

  else
  {
    daily2 = [predCopy daily];
    [daily2 aggregateTime_s];
    v7 = v6;

    v8 = 0.0;
    if (v7 <= 0.0)
    {
      goto LABEL_6;
    }

    daily3 = [predCopy daily];
    [daily3 aggregateTime_s];
    v11 = v10;

    if (v11 > 1800.0)
    {
      goto LABEL_4;
    }

    weekly = [predCopy weekly];
    if ([weekly numOfClustEntries] <= 0)
    {
    }

    else
    {
      weekly2 = [predCopy weekly];
      [weekly2 aggregateTime_s];
      v17 = v16;

      if (v17 > 0.0)
      {
        weekly3 = [predCopy weekly];
        [weekly3 aggregateTime_s];
        v20 = v19;

        if (v20 > 1800.0)
        {
LABEL_4:
          v8 = 1.0;
        }
      }
    }
  }

LABEL_6:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      daily4 = [predCopy daily];
      numOfClustEntries = [daily4 numOfClustEntries];
      daily5 = [predCopy daily];
      [daily5 aggregateTime_s];
      v25 = v24;
      weekly4 = [predCopy weekly];
      numOfClustEntries2 = [weekly4 numOfClustEntries];
      weekly5 = [predCopy weekly];
      [weekly5 aggregateTime_s];
      v30[0] = 67437825;
      v30[1] = numOfClustEntries;
      v31 = 2053;
      v32 = v25;
      v33 = 1029;
      v34 = numOfClustEntries2;
      v35 = 2053;
      v36 = v29;
      v37 = 2048;
      v38 = v8;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "Evaluating Confidence for OOST: numOfDailyEntries %{sensitive}d, aggTimeDaily %{sensitive}f, numOfWeeklyEntries %{sensitive}d, aggTimeWeekly %{sensitive}f, Confidence %f", v30, 0x2Cu);
    }
  }

  return v8;
}

+ (double)deriveClusterThresholdFromUncClustAplha:(double)aplha andUncClustBeta:(double)beta
{
  v4 = aplha + beta;
  result = 250.0;
  if (v4 <= 250.0)
  {
    result = v4;
    if (v4 < 200.0)
    {
      return 200.0;
    }
  }

  return result;
}

- (id)getPredictedExitDatesFromLocation:(id)location onDate:(id)date
{
  v83 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  dateCopy = date;
  v8 = dateCopy;
  v65 = 0;
  if (locationCopy && dateCopy)
  {
    v9 = [RTStateModelLocation alloc];
    [locationCopy latitude];
    v11 = v10;
    [locationCopy longitude];
    v13 = v12;
    [locationCopy horizontalUncertainty];
    v15 = v14;
    date = [locationCopy date];
    [date timeIntervalSinceReferenceDate];
    v18 = [(RTStateModelLocation *)v9 initWithLat:v11 Lon:v13 Uncertainty:v15 confidence:0.0 andTimestamp_s:v17];

    v19 = [(RTStateModel *)self findClusterWithLocation:v18];
    stateDepiction = [v19 stateDepiction];
    v21 = [stateDepiction getRecentVisits:0.0];

    if ([v21 count])
    {
      v60 = v19;
      v61 = v18;
      v63 = locationCopy;
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v23 = [currentCalendar components:764 fromDate:v8];

      v24 = objc_opt_new();
      v25 = objc_opt_new();
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __57__RTStateModel_getPredictedExitDatesFromLocation_onDate___block_invoke;
      v70[3] = &unk_2788CE668;
      v58 = v23;
      v71 = v58;
      v72 = v8;
      v26 = v24;
      v73 = v26;
      v27 = v25;
      v74 = v27;
      [v21 enumerateObjectsUsingBlock:v70];
      v28 = [v26 valueForKeyPath:@"@max.self"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v29 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          stringFromDate = [v28 stringFromDate];
          *buf = 138412290;
          v77 = stringFromDate;
          _os_log_debug_impl(&dword_2304B3000, v29, OS_LOG_TYPE_DEBUG, "latest exit date, %@", buf, 0xCu);
        }
      }

      v59 = v21;
      v62 = v8;
      v57 = v26;
      v30 = [RTStateModelAlgorithms bucketizeDates:v26 bucketInterval:v28 latestDate:7200.0];
      v56 = v27;
      v31 = [RTStateModelAlgorithms bucketizeDates:v27 bucketInterval:v28 latestDate:7200.0];
      v65 = objc_opt_new();
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v32 = v30;
      v33 = [v32 countByEnumeratingWithState:&v66 objects:v82 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = MEMORY[0x277D86220];
        v36 = *v67;
        do
        {
          v37 = 0;
          do
          {
            if (*v67 != v36)
            {
              objc_enumerationMutation(v32);
            }

            v38 = *(*(&v66 + 1) + 8 * v37);
            v39 = [v32 objectForKeyedSubscript:v38];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              v40 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
              {
                numOfDates = [v39 numOfDates];
                *buf = 134218242;
                v77 = numOfDates;
                v78 = 2112;
                v79 = v38;
                _os_log_debug_impl(&dword_2304B3000, v40, OS_LOG_TYPE_DEBUG, "%lu exit dates in bucket %@", buf, 0x16u);
              }
            }

            if ([v39 numOfDates] <= 2)
            {
              if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_29;
              }

              v41 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
              if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_28;
              }

              *buf = 138412290;
              v77 = v38;
              v42 = v41;
              v43 = "device does not have enough exits in this bucket, %@";
              goto LABEL_32;
            }

            v44 = [v31 objectForKey:v38];

            if (v44)
            {
              fmin([v39 numOfDates] / 7.0, 1.0);
              v45 = objc_alloc(MEMORY[0x277D01268]);
              averageDate = [v39 averageDate];
              [v39 stdDeviation];
              v41 = [v45 initWithDate:averageDate uncertainty:? confidence:?];

              [v65 addObject:v41];
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
              {
                v47 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                {
                  averageDate2 = [v39 averageDate];
                  [v39 stdDeviation];
                  *buf = 138412802;
                  v77 = averageDate2;
                  v78 = 2048;
                  v79 = v49;
                  v80 = 2112;
                  v81 = v41;
                  _os_log_debug_impl(&dword_2304B3000, v47, OS_LOG_TYPE_DEBUG, "bucketExitAverage, %@, bucketExitStdDeviation, %.4f, predictedExitDate, %@", buf, 0x20u);
                }
              }

              goto LABEL_28;
            }

            if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_29;
            }

            v41 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v77 = v38;
              v42 = v41;
              v43 = "device does not have any weekly exits during this bucket, %@";
LABEL_32:
              _os_log_debug_impl(&dword_2304B3000, v42, OS_LOG_TYPE_DEBUG, v43, buf, 0xCu);
            }

LABEL_28:

LABEL_29:
            ++v37;
          }

          while (v34 != v37);
          v50 = [v32 countByEnumeratingWithState:&v66 objects:v82 count:16];
          v34 = v50;
        }

        while (v50);
      }

      v51 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"confidence" ascending:0];
      v52 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"date" ascending:1];
      v75[0] = v51;
      v75[1] = v52;
      v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
      [v65 sortUsingDescriptors:v53];

      v8 = v62;
      locationCopy = v63;
      v19 = v60;
      v18 = v61;
      v21 = v59;
    }

    else
    {
      v65 = 0;
    }
  }

  return v65;
}

void __57__RTStateModel_getPredictedExitDatesFromLocation_onDate___block_invoke(id *a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [a2 EntryExit_s];
  v4 = MEMORY[0x277CBEAA8];
  [v3 entry_s];
  v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  v6 = MEMORY[0x277CBEAA8];
  [v3 exit_s];
  v7 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v28 = v5;
  v9 = [v8 components:764 fromDate:v5];

  v10 = [v9 copy];
  [v10 setYear:{objc_msgSend(a1[4], "year")}];
  [v10 setMonth:{objc_msgSend(a1[4], "month")}];
  [v10 setDay:{objc_msgSend(a1[4], "day")}];
  v11 = [MEMORY[0x277CBEA80] currentCalendar];
  v12 = [v11 dateFromComponents:v10];

  if ([a1[5] compare:v12] == -1)
  {
    [v10 setDay:{objc_msgSend(v10, "day") - 1}];
    v13 = [MEMORY[0x277CBEA80] currentCalendar];
    v14 = [v13 dateFromComponents:v10];

    v12 = v14;
  }

  v15 = [MEMORY[0x277CBEA80] currentCalendar];
  v16 = [v15 components:764 fromDateComponents:v9 toDateComponents:v10 options:0];

  v17 = [MEMORY[0x277CBEA80] currentCalendar];
  v27 = v7;
  v18 = [v17 dateByAddingComponents:v16 toDate:v7 options:0];

  v19 = [a1[5] laterDate:v12];
  if ([v19 isEqualToDate:a1[5]])
  {
    v20 = [a1[5] earlierDate:v18];
    v21 = [v20 isEqualToDate:a1[5]];

    if (v21)
    {
      [a1[6] addObject:v18];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v22 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v26 = [v18 stringFromDate];
          v24 = [v28 stringFromDate];
          [v27 stringFromDate];
          *buf = 138412802;
          v30 = v26;
          v31 = 2112;
          v32 = v24;
          v34 = v33 = 2112;
          v25 = v34;
          _os_log_debug_impl(&dword_2304B3000, v22, OS_LOG_TYPE_DEBUG, "potential exit date, %@ (%@ - %@)", buf, 0x20u);
        }
      }

      v23 = [v9 weekday];
      if (v23 == [v10 weekday])
      {
        [a1[7] addObject:v18];
      }
    }
  }

  else
  {
  }
}

- (id)getPredictedLocationsOfInterestBetweenStartDate:(id)date endDate:(id)endDate
{
  v46[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  v9 = endDateCopy;
  v10 = 0;
  if (dateCopy && endDateCopy)
  {
    v11 = [endDateCopy earlierDate:dateCopy];

    if (v11 == v9)
    {
      v10 = 0;
    }

    else
    {
      v12 = objc_opt_new();
      [dateCopy timeIntervalSinceReferenceDate];
      v14 = v13;
      [(RTStateModel *)self getNumberOfWeeksInStateModel];
      v16 = v15;
      [v9 timeIntervalSinceDate:dateCopy];
      v18 = v17;
      stateModelLut = [(RTStateModel *)self stateModelLut];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __72__RTStateModel_getPredictedLocationsOfInterestBetweenStartDate_endDate___block_invoke;
      v33[3] = &unk_2788CFD48;
      v35 = v14;
      v36 = v18;
      v37 = v16;
      v20 = v12;
      v34 = v20;
      [stateModelLut enumerateKeysAndObjectsUsingBlock:v33];

      v21 = objc_opt_new();
      v22 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"stateDepiction.getNumOfVisitsOverall" ascending:1];
      v46[0] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
      v24 = [v20 sortedArrayUsingDescriptors:v23];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __72__RTStateModel_getPredictedLocationsOfInterestBetweenStartDate_endDate___block_invoke_2;
      v31[3] = &unk_2788C4BA8;
      v10 = v21;
      v32 = v10;
      [v24 enumerateObjectsUsingBlock:v31];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v25 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = NSStringFromSelector(a2);
          v27 = [v10 count];
          stringFromDate = [dateCopy stringFromDate];
          stringFromDate2 = [v9 stringFromDate];
          *buf = 138413058;
          v39 = v26;
          v40 = 2048;
          v41 = v27;
          v42 = 2112;
          v43 = stringFromDate;
          v44 = 2112;
          v45 = stringFromDate2;
          _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@ found %lu PLOIs the device may travel to between startDate, %@, endDate, %@", buf, 0x2Au);
        }
      }
    }
  }

  return v10;
}

void __72__RTStateModel_getPredictedLocationsOfInterestBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  v6 = [v9 stateDepiction];
  v7 = [v6 getPredState:*(a1 + 56) predictionWindow:v5 numOfWeeks:*(a1 + 40) uniqueID:*(a1 + 48)];

  [RTStateModel getOutOfStateConfidenceWithOneStatePred:v7];
  if (v8 >= 1.0)
  {
    [*(a1 + 32) addObject:v9];
  }
}

void __72__RTStateModel_getPredictedLocationsOfInterestBetweenStartDate_endDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D01170];
  v4 = a2;
  v6 = [[v3 alloc] initWithOneState:v4];

  v5 = [objc_alloc(MEMORY[0x277D01270]) initWithLocationOfInterest:v6 confidence:0 nextEntryTime:0 motionActivityType:1.0];
  [*(a1 + 32) addObject:v5];
}

- (void)collectMetricsWithIntervalSinceLastUpdate:(double)update
{
  metricManager = [(RTStateModel *)self metricManager];

  if (metricManager)
  {
    metricManager2 = [(RTStateModel *)self metricManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__RTStateModel_collectMetricsWithIntervalSinceLastUpdate___block_invoke;
    v7[3] = &unk_2788CFD70;
    v7[4] = self;
    *&v7[5] = update;
    [metricManager2 fetchDiagnosticsEnabled:v7];
  }
}

void __58__RTStateModel_collectMetricsWithIntervalSinceLastUpdate___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) queue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __58__RTStateModel_collectMetricsWithIntervalSinceLastUpdate___block_invoke_2;
    v4[3] = &unk_2788C52E8;
    v4[4] = *(a1 + 32);
    v4[5] = *(a1 + 40);
    dispatch_async(v3, v4);
  }
}

void __58__RTStateModel_collectMetricsWithIntervalSinceLastUpdate___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] date];
  [*(a1 + 32) logStateModelAvailabilityMetricWithIntervalSinceLastUpdate:v2 untilNow:*(a1 + 40)];
}

- (void)logStateModelAvailabilityMetricWithIntervalSinceLastUpdate:(double)update untilNow:(id)now
{
  nowCopy = now;
  v7 = -update;
  if (update >= 4233600.0)
  {
    v7 = -4233600.0;
  }

  v21 = nowCopy;
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v7 sinceDate:?];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v10 = [currentCalendar components:124 fromDate:v8];

  [v10 setMinute:0];
  [v10 setSecond:0];
  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  v12 = [currentCalendar2 dateFromComponents:v10];

  if (v12)
  {
    v13 = [v12 earlierDate:v21];

    if (v13 == v12)
    {
      do
      {
        v15 = [(RTStateModel *)self getMostRecentLocationForDate:v12];
        if (v15)
        {
          v16 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:v15];
          v17 = [(RTStateModel *)self _getNextPredictedLocationsOfInterestFromLocation:v16 startDate:v12 timeInterval:3600.0];
          [(RTStateModel *)self calculateStateModelAvailabilityPrecisionRecallOnDate:v12 predictedLocations:v17 isHighConfidenceOnly:0];
          v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.confidence > 0"];
          v19 = [v17 filteredArrayUsingPredicate:v18];

          [(RTStateModel *)self calculateStateModelAvailabilityPrecisionRecallOnDate:v12 predictedLocations:v19 isHighConfidenceOnly:1];
        }

        v14 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v12 sinceDate:3600.0];

        v20 = [v14 earlierDate:v21];

        v12 = v14;
      }

      while (v20 == v14);
    }

    else
    {
      v14 = v12;
    }
  }

  else
  {
    v14 = 0;
  }
}

- (unsigned)calculateStateModelAvailabilityPrecisionRecallOnDate:(id)date predictedLocations:(id)locations isHighConfidenceOnly:(BOOL)only
{
  onlyCopy = only;
  dateCopy = date;
  locationsCopy = locations;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if ([locationsCopy count])
  {
    if (onlyCopy)
    {
      v10 = 6;
    }

    else
    {
      v10 = 2;
    }

    *(v23 + 6) = v10;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __126__RTStateModel_RTMetricManager__calculateStateModelAvailabilityPrecisionRecallOnDate_predictedLocations_isHighConfidenceOnly___block_invoke;
    v19[3] = &unk_2788CFDC0;
    v20[0] = dateCopy;
    v20[1] = &v22;
    v21 = onlyCopy;
    [locationsCopy enumerateObjectsUsingBlock:v19];
    v11 = v20;
  }

  else
  {
    if (onlyCopy)
    {
      v12 = 7;
    }

    else
    {
      v12 = 3;
    }

    *(v23 + 6) = v12;
    stateModelLut = [(RTStateModel *)self stateModelLut];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __126__RTStateModel_RTMetricManager__calculateStateModelAvailabilityPrecisionRecallOnDate_predictedLocations_isHighConfidenceOnly___block_invoke_3;
    v16[3] = &unk_2788CFDE8;
    v17[0] = dateCopy;
    v17[1] = &v22;
    v18 = onlyCopy;
    [stateModelLut enumerateKeysAndObjectsUsingBlock:v16];
    v11 = v17;
  }

  v14 = *(v23 + 6);

  _Block_object_dispose(&v22, 8);
  return v14;
}

void __126__RTStateModel_RTMetricManager__calculateStateModelAvailabilityPrecisionRecallOnDate_predictedLocations_isHighConfidenceOnly___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = [a2 locationOfInterest];
  v7 = [v6 visits];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __126__RTStateModel_RTMetricManager__calculateStateModelAvailabilityPrecisionRecallOnDate_predictedLocations_isHighConfidenceOnly___block_invoke_2;
  v10[3] = &unk_2788CFD98;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = v8;
  v12 = v9;
  v14 = *(a1 + 48);
  v13 = a4;
  [v7 enumerateObjectsUsingBlock:v10];
}

void __126__RTStateModel_RTMetricManager__calculateStateModelAvailabilityPrecisionRecallOnDate_predictedLocations_isHighConfidenceOnly___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = *(a1 + 32);
  v8 = a2;
  v12 = [v6 dateWithTimeInterval:v7 sinceDate:3600.0];
  v9 = [v8 entryDate];

  LODWORD(v7) = [v9 betweenDate:*(a1 + 32) andDate:v12];
  if (v7)
  {
    if (*(a1 + 56))
    {
      v10 = 5;
    }

    else
    {
      v10 = 1;
    }

    v11 = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = v10;
    *a4 = 1;
    *v11 = 1;
  }
}

void __126__RTStateModel_RTMetricManager__calculateStateModelAvailabilityPrecisionRecallOnDate_predictedLocations_isHighConfidenceOnly___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 stateDepiction];
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  v15 = [v7 getRecentVisits:?];

  v8 = [v6 stateDepiction];

  v9 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:*(a1 + 32) sinceDate:3600.0];
  [v9 timeIntervalSinceReferenceDate];
  v10 = [v8 getRecentVisits:?];

  v11 = [MEMORY[0x277CBEB58] setWithArray:v15];
  v12 = [MEMORY[0x277CBEB98] setWithArray:v10];
  [v11 minusSet:v12];
  v13 = [v11 allObjects];
  if ([v13 count])
  {
    if (*(a1 + 48))
    {
      v14 = 8;
    }

    else
    {
      v14 = 4;
    }

    *(*(*(a1 + 40) + 8) + 24) = v14;
    *a4 = 1;
  }
}

- (id)getMostRecentLocationForDate:(id)date
{
  v64 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__142;
  v58 = __Block_byref_object_dispose__142;
  v59 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v49[3] = 0x7FF0000000000000;
  stateModelLut = [(RTStateModel *)self stateModelLut];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __62__RTStateModel_RTMetricManager__getMostRecentLocationForDate___block_invoke;
  v45[3] = &unk_2788CFCA8;
  v40 = dateCopy;
  v46 = v40;
  v47 = &v54;
  v48 = &v50;
  [stateModelLut enumerateKeysAndObjectsUsingBlock:v45];

  if (v55[5] || (-[RTStateModel stateModelLut](self, "stateModelLut"), v6 = objc_claimAutoreleasedReturnValue(), v41[0] = MEMORY[0x277D85DD0], v41[1] = 3221225472, v41[2] = __62__RTStateModel_RTMetricManager__getMostRecentLocationForDate___block_invoke_3, v41[3] = &unk_2788CFCA8, v42 = v40, v43 = v49, v44 = &v54, [v6 enumerateKeysAndObjectsUsingBlock:v41], v6, v42, v55[5]))
  {
    v7 = objc_alloc(MEMORY[0x277CE41F8]);
    stateDepiction = [v55[5] stateDepiction];
    location = [stateDepiction location];
    [location Latitude_deg];
    v11 = v10;
    stateDepiction2 = [v55[5] stateDepiction];
    location2 = [stateDepiction2 location];
    [location2 Longitude_deg];
    v15 = CLLocationCoordinate2DMake(v11, v14);
    stateDepiction3 = [v55[5] stateDepiction];
    location3 = [stateDepiction3 location];
    [location3 uncertainty_m];
    v19 = v18;
    date = [MEMORY[0x277CBEAA8] date];
    v21 = [v7 initWithCoordinate:date altitude:v15.latitude horizontalAccuracy:v15.longitude verticalAccuracy:0.0 course:v19 speed:0.0 timestamp:{0.0, 0.0}];

    if (v51[3])
    {
      v22 = v21;
    }

    else
    {
      [(RTStateModel *)self getEndingCoordinateWithStartingLocation:v21 distance:1000.0];
      v24 = v23;
      v26 = v25;
      v27 = objc_alloc(MEMORY[0x277CE41F8]);
      stateDepiction4 = [v55[5] stateDepiction];
      location4 = [stateDepiction4 location];
      [location4 uncertainty_m];
      v31 = v30;
      date2 = [MEMORY[0x277CBEAA8] date];
      v22 = [v27 initWithCoordinate:date2 altitude:v24 horizontalAccuracy:v26 verticalAccuracy:0.0 timestamp:{v31, 0.0}];

      v33 = [[RTStateModelLocation alloc] initWithCLLocation:v22];
      v34 = [(RTStateModel *)self findClusterWithLocation:v33];

      if (v34)
      {
        v35 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [v22 coordinate];
          v38 = v37;
          [v22 coordinate];
          *buf = 134545921;
          v61 = v38;
          v62 = 2053;
          v63 = v39;
          _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Attempted to move user out of state by estimation but ended up inside a location of interest at %{sensitive}f, %{sensitive}f.", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v22 = 0;
  }

  _Block_object_dispose(v49, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);

  return v22;
}

void __62__RTStateModel_RTMetricManager__getMostRecentLocationForDate___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = [v6 stateDepiction];
  v8 = [v7 getRecentVisits:0.0];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__RTStateModel_RTMetricManager__getMostRecentLocationForDate___block_invoke_2;
  v10[3] = &unk_2788CFE10;
  v11 = *(a1 + 32);
  v12 = v6;
  v14 = a4;
  v13 = *(a1 + 40);
  v9 = v6;
  [v8 enumerateObjectsUsingBlock:v10];
}

void __62__RTStateModel_RTMetricManager__getMostRecentLocationForDate___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a2;
  v8 = [v7 EntryExit_s];
  [v8 entry_s];
  v12 = [v6 dateWithTimeIntervalSinceReferenceDate:?];

  v9 = MEMORY[0x277CBEAA8];
  v10 = [v7 EntryExit_s];

  [v10 exit_s];
  v11 = [v9 dateWithTimeIntervalSinceReferenceDate:?];

  if ([*(a1 + 32) betweenDate:v12 andDate:v11])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
    *a4 = 1;
    **(a1 + 64) = 1;
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void __62__RTStateModel_RTMetricManager__getMostRecentLocationForDate___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 stateDepiction];
  v6 = [v5 getRecentVisits:0.0];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__RTStateModel_RTMetricManager__getMostRecentLocationForDate___block_invoke_4;
  v9[3] = &unk_2788CFE38;
  v7 = *(a1 + 32);
  v12 = *(a1 + 40);
  v10 = v7;
  v11 = v4;
  v8 = v4;
  [v6 enumerateObjectsUsingBlock:v9];
}

void __62__RTStateModel_RTMetricManager__getMostRecentLocationForDate___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 EntryExit_s];
  [v3 entry_s];
  v5 = v4;
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  v7 = vabdd_f64(v5, v6);

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 24);
  if (v7 < v9)
  {
    v9 = v7;
  }

  if (v9 == v7)
  {
    *(v8 + 24) = v7;
    v10 = *(a1 + 40);
    v11 = (*(*(a1 + 56) + 8) + 40);

    objc_storeStrong(v11, v10);
  }
}

- (CLLocationCoordinate2D)getEndingCoordinateWithStartingLocation:(id)location distance:(double)distance
{
  locationCopy = location;
  v7 = [[RTStateModelLocation alloc] initWithCLLocation:locationCopy];
  v8 = [(RTStateModel *)self getAllLOIsWithinDistance:v7 ofLocation:distance];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __82__RTStateModel_RTMetricManager__getEndingCoordinateWithStartingLocation_distance___block_invoke;
  v23[3] = &unk_2788CA700;
  v23[4] = &v24;
  [v8 enumerateObjectsUsingBlock:v23];
  [locationCopy coordinate];
  v10 = v9;
  [locationCopy coordinate];
  v11 = v10 * 0.0174532925;
  v13 = v12 * 0.0174532925;
  v14 = (v25[3] + 1000.0) / 1000.0 / 6371.0;
  v15 = __sincos_stret(v11);
  v16 = __sincos_stret(v14);
  v17 = asin(v15.__cosval * v16.__sinval * 6.123234e-17 + v15.__sinval * v16.__cosval);
  v18 = sin(v17);
  v19 = atan2(v15.__cosval * v16.__sinval, v16.__cosval - v15.__sinval * v18);
  v20 = CLLocationCoordinate2DMake(v17 * 57.2957795, (v13 + v19) * 57.2957795);
  _Block_object_dispose(&v24, 8);

  latitude = v20.latitude;
  longitude = v20.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

void __82__RTStateModel_RTMetricManager__getEndingCoordinateWithStartingLocation_distance___block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 stateDepiction];
  v3 = [v5 location];
  [v3 uncertainty_m];
  *(*(*(a1 + 32) + 8) + 24) = v4 + *(*(*(a1 + 32) + 8) + 24);
}

- (id)getAllLOIsWithinDistance:(double)distance ofLocation:(id)location
{
  locationCopy = location;
  v7 = objc_opt_new();
  v8 = [(RTStateModel *)self _getRecursivelyAllLOIsWithinDistance:locationCopy ofLocation:v7 previouslyFoundLocationsOfInterest:distance];

  allObjects = [v8 allObjects];

  return allObjects;
}

- (id)_getRecursivelyAllLOIsWithinDistance:(double)distance ofLocation:(id)location previouslyFoundLocationsOfInterest:(id)interest
{
  locationCopy = location;
  interestCopy = interest;
  v10 = objc_opt_new();
  stateModelLut = [(RTStateModel *)self stateModelLut];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __116__RTStateModel_RTMetricManager___getRecursivelyAllLOIsWithinDistance_ofLocation_previouslyFoundLocationsOfInterest___block_invoke;
  v23[3] = &unk_2788CFCD0;
  v12 = locationCopy;
  v24 = v12;
  distanceCopy = distance;
  v13 = v10;
  v25 = v13;
  [stateModelLut enumerateKeysAndObjectsUsingBlock:v23];

  [v13 minusSet:interestCopy];
  if ([v13 count])
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:interestCopy];
    [v14 unionSet:v13];
    allObjects = [v13 allObjects];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __116__RTStateModel_RTMetricManager___getRecursivelyAllLOIsWithinDistance_ofLocation_previouslyFoundLocationsOfInterest___block_invoke_2;
    v19[3] = &unk_2788CF890;
    v16 = v14;
    v20 = v16;
    selfCopy = self;
    distanceCopy2 = distance;
    [allObjects enumerateObjectsUsingBlock:v19];

    v17 = v16;
  }

  else
  {
    v17 = v13;
  }

  return v17;
}

void __116__RTStateModel_RTMetricManager___getRecursivelyAllLOIsWithinDistance_ofLocation_previouslyFoundLocationsOfInterest___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = a3;
  [*(a1 + 32) Latitude_deg];
  v5 = v4;
  [*(a1 + 32) Longitude_deg];
  v7 = v6;
  v8 = [v17 stateDepiction];
  v9 = [v8 location];
  [v9 Latitude_deg];
  v11 = v10;
  v12 = [v17 stateDepiction];
  v13 = [v12 location];
  [v13 Longitude_deg];
  [RTStateModel getDistfromLat:v5 fromLon:v7 toLat:v11 toLon:v14];
  v16 = v15;

  if (v16 <= *(a1 + 48))
  {
    [*(a1 + 40) addObject:v17];
  }
}

void __116__RTStateModel_RTMetricManager___getRecursivelyAllLOIsWithinDistance_ofLocation_previouslyFoundLocationsOfInterest___block_invoke_2(double *a1, void *a2)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = a1[6];
  v8 = [a2 stateDepiction];
  v6 = [v8 location];
  v7 = [v4 _getRecursivelyAllLOIsWithinDistance:v6 ofLocation:*(a1 + 4) previouslyFoundLocationsOfInterest:v5];
  [v3 unionSet:v7];
}

@end