@interface RTVisitPipelineModuleSCI
+ (BOOL)filterHint:(id)hint sourceFilter:(id)filter inverseFilter:(BOOL)inverseFilter;
+ (id)FSMEventToString:(unint64_t)string;
+ (id)FSMStateToString:(unint64_t)string;
+ (id)LCFSMStateToString:(unint64_t)string;
- (BOOL)isDwellTimeSatisfiedForLocation:(id)location;
- (BOOL)isHint:(id)hint withinDistance:(double)distance location:(id)location;
- (BOOL)isHintConsistentWithLocation:(id)location hint:(id)hint;
- (BOOL)isHintNearLocation:(id)location;
- (BOOL)isLastRegionHintNearLocation:(id)location hintSource:(int64_t)source;
- (BOOL)isTimeOutsideClusterSatisfiedForOutlierCount:(unint64_t)count location:(id)location;
- (BOOL)isValidLatestRegionHintSource:(int64_t)source date:(id)date;
- (BOOL)isVisitInFlight;
- (RTVisitPipelineModuleSCI)initWithDefaultsManager:(id)manager delayedLocationRequester:(id)requester hintManager:(id)hintManager queue:(id)queue hyperParameter:(id)parameter useLowConfidence:(BOOL)confidence;
- (double)minStaticIntervalForSLVArrival;
- (double)minStaticIntervalForSLVArrivalWithHint;
- (double)requiredDwellTimeForLocation:(id)location;
- (double)requiredTimeOutsideClusterForOutlierCount:(unint64_t)count location:(id)location;
- (id)filterHints:(id)hints existingHints:(id)existingHints;
- (id)getHintConsistentWithLocation:(id)location sourceFilter:(id)filter inverseFilter:(BOOL)inverseFilter;
- (id)getHintWithinDistance:(double)distance ofLocation:(id)location sourceFilter:(id)filter inverseFilter:(BOOL)inverseFilter;
- (id)getHintsNearLocation:(id)location withinDistance:(double)distance sourceFilter:(id)filter fromDate:(id)date limit:(unint64_t)limit;
- (id)getLastHintUsingSourceFilter:(id)filter;
- (id)handleFSM:(unint64_t)m point:(id)point;
- (id)hintsNearLocation:(id)location;
- (id)latestCachedHintOfSource:(int64_t)source;
- (id)process:(id)process;
- (id)relevantDateForHintSource:(int64_t)source date:(id)date;
- (id)retrieveNonLOIHintsNearLocation:(id)location withinDistance:(double)distance;
- (id)stateMachineConfidenceString;
- (void)_onHintNotification:(id)notification;
- (void)addToClusters:(id)clusters;
- (void)addVisitFromWorkingHypothesis:(int64_t)hypothesis confidence:(double)confidence;
- (void)exitFromWorkingHypothesis;
- (void)exitUntilNotInWorkingHypotheisWithBlock:(id)block;
- (void)onHintNotification:(id)notification;
- (void)populateHintCacheNearLocation:(id)location withinDistance:(double)distance;
- (void)processContextChangeWithSource:(int64_t)source;
- (void)processPoints:(id)points;
- (void)refreshCachedHintOfSource:(int64_t)source;
- (void)refreshLatestCompanionSyncVisitHintCache;
- (void)refreshLatestGeofenceHintCache;
- (void)refreshLatestSignificantRegionHintCache;
- (void)resetWorkingHypothesis;
- (void)shutdown;
@end

@implementation RTVisitPipelineModuleSCI

- (BOOL)isVisitInFlight
{
  if (self->_useLowConfidence)
  {
    if (self->_lcFSMState == 1)
    {
      return 1;
    }
  }

  else if (self->_fsmState == 3)
  {
    return 1;
  }

  return 0;
}

- (id)stateMachineConfidenceString
{
  if (self->_useLowConfidence)
  {
    return @"lowConfidence";
  }

  else
  {
    return @"highConfidence";
  }
}

- (double)minStaticIntervalForSLVArrival
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"MinStaticIntervalForSLVArrival"];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v7 = v6;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = NSStringFromSelector(a2);
        stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
        v12 = 138413058;
        v13 = v9;
        v14 = 2112;
        v15 = @"MinStaticIntervalForSLVArrival";
        v16 = 2048;
        v17 = v7;
        v18 = 2112;
        v19 = stateMachineConfidenceString;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@ overridden to %.1fs, %@", &v12, 0x2Au);
      }
    }
  }

  else
  {
    v7 = 900.0;
  }

  return v7;
}

- (double)minStaticIntervalForSLVArrivalWithHint
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"MinStaticIntervalForSLVArrivalWithHint"];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v7 = v6;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = NSStringFromSelector(a2);
        stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
        v12 = 138413058;
        v13 = v9;
        v14 = 2112;
        v15 = @"MinStaticIntervalForSLVArrivalWithHint";
        v16 = 2048;
        v17 = v7;
        v18 = 2112;
        v19 = stateMachineConfidenceString;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@ overridden to %.1fs, %@", &v12, 0x2Au);
      }
    }
  }

  else
  {
    v7 = 240.0;
  }

  return v7;
}

+ (id)FSMStateToString:(unint64_t)string
{
  v11 = *MEMORY[0x277D85DE8];
  if ([&unk_2845A1688 count] != 4)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "+[RTVisitPipelineModuleSCI FSMStateToString:]";
      v9 = 1024;
      v10 = 105;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: stateNames.count == RTVisitSCIFSMStateMax + 1 (in %s:%d)", &v7, 0x12u);
    }
  }

  v5 = [&unk_2845A1688 objectAtIndexedSubscript:string];

  return v5;
}

+ (id)LCFSMStateToString:(unint64_t)string
{
  v11 = *MEMORY[0x277D85DE8];
  if ([&unk_2845A16A0 count] != 2)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "+[RTVisitPipelineModuleSCI LCFSMStateToString:]";
      v9 = 1024;
      v10 = 113;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: stateNames.count == RTVisitSCIFSMLCStateMax + 1 (in %s:%d)", &v7, 0x12u);
    }
  }

  v5 = [&unk_2845A16A0 objectAtIndexedSubscript:string];

  return v5;
}

+ (id)FSMEventToString:(unint64_t)string
{
  v11 = *MEMORY[0x277D85DE8];
  if ([&unk_2845A16B8 count] != 11)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "+[RTVisitPipelineModuleSCI FSMEventToString:]";
      v9 = 1024;
      v10 = 130;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: eventNames.count == RTVisitSCIFSMEventMax + 1 (in %s:%d)", &v7, 0x12u);
    }
  }

  v5 = [&unk_2845A16B8 objectAtIndexedSubscript:string];

  return v5;
}

- (RTVisitPipelineModuleSCI)initWithDefaultsManager:(id)manager delayedLocationRequester:(id)requester hintManager:(id)hintManager queue:(id)queue hyperParameter:(id)parameter useLowConfidence:(BOOL)confidence
{
  managerCopy = manager;
  requesterCopy = requester;
  hintManagerCopy = hintManager;
  queueCopy = queue;
  parameterCopy = parameter;
  v18 = parameterCopy;
  if (!managerCopy)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v33 = "Invalid parameter not satisfying: defaultsManager";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, v33, buf, 2u);
    goto LABEL_14;
  }

  if (!hintManagerCopy)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v33 = "Invalid parameter not satisfying: hintManager";
    goto LABEL_13;
  }

  if (!parameterCopy)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v33 = "Invalid parameter not satisfying: hyperParameter";
      goto LABEL_13;
    }

LABEL_14:

    selfCopy = 0;
    goto LABEL_15;
  }

  v37.receiver = self;
  v37.super_class = RTVisitPipelineModuleSCI;
  v19 = [(RTVisitPipelineModuleSCI *)&v37 init:queueCopy];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_defaultsManager, manager);
    objc_storeStrong(&v20->_delayedLocationRequester, requester);
    objc_storeStrong(&v20->_hintManager, hintManager);
    objc_storeStrong(&v20->_hyperParameter, parameter);
    v20->_useLowConfidence = confidence;
    v21 = objc_opt_new();
    clusters = v20->_clusters;
    v20->_clusters = v21;

    v20->_fsmState = 0;
    v20->_lcFSMState = 0;
    lastPointProcessed = v20->_lastPointProcessed;
    v20->_lastPointProcessed = 0;

    v24 = objc_opt_new();
    distanceCalculator = v20->_distanceCalculator;
    v20->_distanceCalculator = v24;

    objc_storeStrong(&v20->_queue, queue);
    *&v20->_latestGeofenceHintChecked = 0;
    v20->_latestCompanionSyncVisitHintChecked = 0;
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    requiredDwellTimeCacheDateToUpdate = v20->_requiredDwellTimeCacheDateToUpdate;
    v20->_requiredDwellTimeCacheDateToUpdate = distantPast;

    [(RTVisitPipelineModuleSCI *)v20 minStaticIntervalForSLVArrival];
    v20->_requiredDwellTimeCache = v28;
    hintManager = v20->_hintManager;
    v30 = +[(RTNotification *)RTHintManagerNotificationDidUpdate];
    [(RTNotifier *)hintManager addObserver:v20 selector:sel_onHintNotification_ name:v30];

    [(RTVisitPipelineModuleSCI *)v20 resetWorkingHypothesis];
  }

  self = v20;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (void)shutdown
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
      v10 = 138412802;
      v11 = v5;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = stateMachineConfidenceString;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, %@, %@", &v10, 0x20u);
    }
  }

  [(RTDelayedLocationRequester *)self->_delayedLocationRequester shutdown];
  delayedLocationRequester = self->_delayedLocationRequester;
  self->_delayedLocationRequester = 0;
}

- (void)resetWorkingHypothesis
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
      v13 = 138412802;
      v14 = v9;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = stateMachineConfidenceString;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "%@, %@, %@", &v13, 0x20u);
    }
  }

  v5 = objc_opt_new();
  workingHypothesis = self->_workingHypothesis;
  self->_workingHypothesis = v5;

  delayedLocationRequester = self->_delayedLocationRequester;
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  [(RTDelayedLocationRequester *)delayedLocationRequester updateFireDate:distantPast];
}

- (void)exitFromWorkingHypothesis
{
  v20 = *MEMORY[0x277D85DE8];
  numOfOutliers = [(RTVisitSCIStayCluster *)self->_workingHypothesis numOfOutliers];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = NSStringFromSelector(a2);
      workingHypothesis = self->_workingHypothesis;
      stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
      v12 = 138412803;
      v13 = v8;
      v14 = 2117;
      v15 = workingHypothesis;
      v16 = 2112;
      v17 = stateMachineConfidenceString;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%@, exit from working hypothesis, %{sensitive}@, %@", &v12, 0x20u);
    }
  }

  v6 = [(RTVisitPipelineModuleSCI *)self handleFSM:5 point:0];
  if ([v6 count])
  {
    [(RTVisitPipelineModuleSCI *)self processPoints:v6];
  }

  if (numOfOutliers && numOfOutliers <= [(RTVisitSCIStayCluster *)self->_workingHypothesis numOfOutliers])
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = self->_workingHypothesis;
      v12 = 134218755;
      v13 = numOfOutliers;
      v14 = 2117;
      v15 = v11;
      v16 = 2080;
      v17 = "[RTVisitPipelineModuleSCI exitFromWorkingHypothesis]";
      v18 = 1024;
      v19 = 208;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "outliers number is increasing. before, %lu, current working hypothesis, %{sensitive}@ (in %s:%d)", &v12, 0x26u);
    }
  }
}

- (void)refreshCachedHintOfSource:(int64_t)source
{
  v16 = *MEMORY[0x277D85DE8];
  if ((source - 9) > 1)
  {
    if ((source - 7) > 1)
    {
      if (source == 11)
      {

        [(RTVisitPipelineModuleSCI *)self refreshLatestCompanionSyncVisitHintCache];
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v6 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = NSStringFromSelector(a2);
          v8 = [MEMORY[0x277D01120] hintSourceToString:source];
          stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
          v10 = 138412802;
          v11 = v7;
          v12 = 2112;
          v13 = v8;
          v14 = 2112;
          v15 = stateMachineConfidenceString;
          _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, no cache to refresh for hint source %@, %@", &v10, 0x20u);
        }
      }
    }

    else
    {

      [(RTVisitPipelineModuleSCI *)self refreshLatestGeofenceHintCache];
    }
  }

  else
  {

    [(RTVisitPipelineModuleSCI *)self refreshLatestSignificantRegionHintCache];
  }
}

- (id)latestCachedHintOfSource:(int64_t)source
{
  v19 = *MEMORY[0x277D85DE8];
  if ((source - 9) <= 1)
  {
    latestSignificantRegionHint = self->_latestSignificantRegionHint;
LABEL_7:
    v6 = latestSignificantRegionHint;
    goto LABEL_8;
  }

  if ((source - 7) <= 1)
  {
    latestSignificantRegionHint = self->_latestGeofenceHint;
    goto LABEL_7;
  }

  if (source == 11)
  {
    latestSignificantRegionHint = self->_latestCompanionSyncVisitHint;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(a2);
      v11 = [MEMORY[0x277D01120] hintSourceToString:source];
      stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
      v13 = 138412802;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = stateMachineConfidenceString;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, no cache to retrieve for hint source %@, %@", &v13, 0x20u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (void)processContextChangeWithSource:(int64_t)source
{
  v56 = *MEMORY[0x277D85DE8];
  if (source <= 0xB && ((1 << source) & 0xA80) != 0)
  {
    selfCopy = self;
    numOfOutliers = [(RTVisitSCIStayCluster *)self->_workingHypothesis numOfOutliers];
    v5 = [(RTVisitPipelineModuleSCI *)selfCopy handleFSM:6 point:0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = NSStringFromSelector(a2);
        v8 = [MEMORY[0x277D01120] hintSourceToString:source];
        v9 = v5;
        workingHypothesis = selfCopy->_workingHypothesis;
        v11 = [objc_opt_class() FSMStateToString:selfCopy->_fsmState];
        v12 = [objc_opt_class() LCFSMStateToString:selfCopy->_lcFSMState];
        stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)selfCopy stateMachineConfidenceString];
        *buf = 138413826;
        v43 = v7;
        v44 = 2112;
        v45 = v8;
        v46 = 2112;
        v47 = workingHypothesis;
        v5 = v9;
        v48 = 2112;
        v49 = v11;
        v50 = 2112;
        v51 = v12;
        v52 = 2048;
        v53 = numOfOutliers;
        v54 = 2112;
        v55 = stateMachineConfidenceString;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, entry hint of source, %@, detected. Will exit any existing hypothesis, %@, if not in visit HC FSM inState, %@, LC FSM inState, %@, number points left, %lu, %@", buf, 0x48u);
      }
    }

    if ([v5 count])
    {
      v31 = numOfOutliers;
      sourceCopy2 = source;
      [(RTVisitPipelineModuleSCI *)selfCopy refreshCachedHintOfSource:source];
      v35 = [(RTVisitPipelineModuleSCI *)selfCopy latestCachedHintOfSource:source];
      array = [MEMORY[0x277CBEB18] array];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v32 = v5;
      obj = v5;
      v16 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (!v16)
      {
        goto LABEL_23;
      }

      v17 = v16;
      v18 = *v38;
      while (1)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v37 + 1) + 8 * i);
          date = [v20 date];
          if (![(RTVisitPipelineModuleSCI *)selfCopy isValidLatestRegionHintSource:sourceCopy2 date:date])
          {

LABEL_20:
            [array addObject:v20];
            continue;
          }

          [v20 date];
          v23 = v22 = selfCopy;
          date2 = [(RTVisitSCIStayCluster *)v35 date];
          v25 = [v23 isBeforeDate:date2];

          selfCopy = v22;
          sourceCopy2 = source;

          if (!v25)
          {
            goto LABEL_20;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v26 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              v27 = NSStringFromSelector(a2);
              stateMachineConfidenceString2 = [(RTVisitPipelineModuleSCI *)selfCopy stateMachineConfidenceString];
              *buf = 138413059;
              v43 = v27;
              v44 = 2117;
              v45 = v35;
              v46 = 2117;
              v47 = v20;
              v48 = 2112;
              v49 = stateMachineConfidenceString2;
              _os_log_debug_impl(&dword_2304B3000, v26, OS_LOG_TYPE_DEBUG, "%@, skipping irrelevant location. hint, %{sensitive}@, is after location, %{sensitive}@, %@", buf, 0x2Au);
            }
          }
        }

        v17 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (!v17)
        {
LABEL_23:

          [(RTVisitPipelineModuleSCI *)selfCopy processPoints:array];
          numOfOutliers = v31;
          v5 = v32;
          break;
        }
      }
    }

    if (numOfOutliers && numOfOutliers <= [(RTVisitSCIStayCluster *)selfCopy->_workingHypothesis numOfOutliers])
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = selfCopy->_workingHypothesis;
        *buf = 134218755;
        v43 = numOfOutliers;
        v44 = 2117;
        v45 = v30;
        v46 = 2080;
        v47 = "[RTVisitPipelineModuleSCI processContextChangeWithSource:]";
        v48 = 1024;
        LODWORD(v49) = 289;
        _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "outliers number is increasing. before, %lu, current working hypothesis, %{sensitive}@ (in %s:%d)", buf, 0x26u);
      }
    }
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: hintSource == RTHintSourceGeoFenceEntry || hintSource == RTHintSourceSignificantRegionEntry || hintSource == RTHintSourceCompanionSyncVisit", buf, 2u);
    }
  }
}

- (void)exitUntilNotInWorkingHypotheisWithBlock:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  numOfOutliers = [(RTVisitSCIStayCluster *)self->_workingHypothesis numOfOutliers];
  if ([(RTVisitPipelineModuleSCI *)self isInWorkingHypothesis])
  {
    v7 = 0;
    v8 = @"with";
    if (!blockCopy)
    {
      v8 = @"without";
    }

    v18 = v8;
    v9 = MEMORY[0x277D86220];
    while (1)
    {
      if (v7 > numOfOutliers)
      {
        v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v20 = "[RTVisitPipelineModuleSCI exitUntilNotInWorkingHypotheisWithBlock:]";
          v21 = 1024;
          LODWORD(v22) = 297;
          _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "run out of loops while exiting (in %s:%d)", buf, 0x12u);
        }
      }

      if (blockCopy && (blockCopy[2](blockCopy) & 1) != 0)
      {
        break;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = NSStringFromSelector(a2);
          [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
          v13 = v17 = a2;
          *buf = 138412802;
          v20 = v12;
          v21 = 2112;
          v22 = v18;
          v23 = 2112;
          v24 = v13;
          _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "%@, exit from working hypothesis and clear outliers %@ block, %@", buf, 0x20u);

          a2 = v17;
        }
      }

      [(RTVisitPipelineModuleSCI *)self exitFromWorkingHypothesis];
      ++v7;
      if (![(RTVisitPipelineModuleSCI *)self isInWorkingHypothesis])
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    if (!blockCopy)
    {
      if ([(RTVisitSCIStayCluster *)self->_workingHypothesis numOfOutliers])
      {
        v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v20 = "[RTVisitPipelineModuleSCI exitUntilNotInWorkingHypotheisWithBlock:]";
          v21 = 1024;
          LODWORD(v22) = 309;
          _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "nonzero outliers afterwards (in %s:%d)", buf, 0x12u);
        }
      }

      if ([(RTVisitSCIStayCluster *)self->_workingHypothesis numOfDataPoints])
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v20 = "[RTVisitPipelineModuleSCI exitUntilNotInWorkingHypotheisWithBlock:]";
          v21 = 1024;
          LODWORD(v22) = 310;
          _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "nonzero data points (in %s:%d)", buf, 0x12u);
        }
      }

      if (self->_fsmState)
      {
        v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v20 = "[RTVisitPipelineModuleSCI exitUntilNotInWorkingHypotheisWithBlock:]";
          v21 = 1024;
          LODWORD(v22) = 311;
          _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "state is not correct (in %s:%d)", buf, 0x12u);
        }
      }
    }
  }
}

- (void)addToClusters:(id)clusters
{
  v52 = *MEMORY[0x277D85DE8];
  clustersCopy = clusters;
  visit = [clustersCopy visit];
  entry = [visit entry];

  if (!entry)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v44 = 136315394;
      v45 = "[RTVisitPipelineModuleSCI addToClusters:]";
      v46 = 1024;
      LODWORD(v47) = 317;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "no entry ts (in %s:%d)", &v44, 0x12u);
    }
  }

  visit2 = [clustersCopy visit];
  location = [visit2 location];

  if (!location)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v44 = 136315394;
      v45 = "[RTVisitPipelineModuleSCI addToClusters:]";
      v46 = 1024;
      LODWORD(v47) = 318;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "no location (in %s:%d)", &v44, 0x12u);
    }
  }

  visit3 = [clustersCopy visit];
  exit = [visit3 exit];

  if (!exit)
  {
    points = [clustersCopy points];

    if (!points)
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v44 = 136315394;
        v45 = "[RTVisitPipelineModuleSCI addToClusters:]";
        v46 = 1024;
        LODWORD(v47) = 320;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "no points for entry visit (in %s:%d)", &v44, 0x12u);
      }
    }
  }

  visit4 = [clustersCopy visit];
  entry2 = [visit4 entry];
  if (entry2)
  {
    v17 = entry2;
    visit5 = [clustersCopy visit];
    location2 = [visit5 location];

    if (location2)
    {
      visit6 = [clustersCopy visit];
      exit2 = [visit6 exit];
      if (exit2)
      {

LABEL_20:
        if (-[NSMutableArray count](self->_clusters, "count") && (-[NSMutableArray lastObject](self->_clusters, "lastObject"), v23 = objc_claimAutoreleasedReturnValue(), [v23 visit], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "exit"), v25 = objc_claimAutoreleasedReturnValue(), v25, v24, v23, !v25))
        {
          lastObject = [(NSMutableArray *)self->_clusters lastObject];
          visit7 = [lastObject visit];
          entry3 = [visit7 entry];
          visit8 = [clustersCopy visit];
          entry4 = [visit8 entry];
          v43 = [entry3 isEqualToDate:entry4];

          if (v43)
          {
LABEL_31:
            [(NSMutableArray *)self->_clusters addObject:clustersCopy];
            goto LABEL_32;
          }

          v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v44 = 136315394;
            v45 = "[RTVisitPipelineModuleSCI addToClusters:]";
            v46 = 1024;
            LODWORD(v47) = 330;
            _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "entry time of partial visit does not match (in %s:%d)", &v44, 0x12u);
          }
        }

        else
        {
          if (![(NSMutableArray *)self->_clusters count])
          {
            goto LABEL_31;
          }

          if (self->_useLowConfidence)
          {
            goto LABEL_31;
          }

          lastObject2 = [(NSMutableArray *)self->_clusters lastObject];
          visit9 = [lastObject2 visit];
          exit3 = [visit9 exit];
          visit10 = [clustersCopy visit];
          entry5 = [visit10 entry];
          v31 = [exit3 isBeforeDate:entry5];

          if (v31)
          {
            goto LABEL_31;
          }

          v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            lastObject3 = [(NSMutableArray *)self->_clusters lastObject];
            visit11 = [lastObject3 visit];
            exit4 = [visit11 exit];
            visit12 = [clustersCopy visit];
            entry6 = [visit12 entry];
            v44 = 138740739;
            v45 = exit4;
            v46 = 2117;
            v48 = 2080;
            v47 = entry6;
            v49 = "[RTVisitPipelineModuleSCI addToClusters:]";
            v50 = 1024;
            v51 = 336;
            _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "overlap! last visit, %{sensitive}@, on or after new visit, %{sensitive}@ (in %s:%d)", &v44, 0x26u);
          }
        }

        goto LABEL_31;
      }

      points2 = [clustersCopy points];

      if (points2)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
  }

LABEL_32:
}

- (void)addVisitFromWorkingHypothesis:(int64_t)hypothesis confidence:(double)confidence
{
  v20 = *MEMORY[0x277D85DE8];
  if (![(RTVisitPipelineModuleSCI *)self isVisitInFlight])
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[RTVisitPipelineModuleSCI addVisitFromWorkingHypothesis:confidence:]";
      v16 = 1024;
      LODWORD(v17) = 345;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "adding visit while FSM is not in correct state (in %s:%d)", &v14, 0x12u);
    }
  }

  v9 = [(RTVisitSCIStayCluster *)self->_workingHypothesis createVisit:hypothesis confidence:confidence];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = NSStringFromSelector(a2);
      visit = [v9 visit];
      stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
      v14 = 138412803;
      v15 = v11;
      v16 = 2117;
      v17 = visit;
      v18 = 2112;
      v19 = stateMachineConfidenceString;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@, detected visit, %{sensitive}@, %@", &v14, 0x20u);
    }
  }

  [(RTVisitPipelineModuleSCI *)self addToClusters:v9];
}

- (id)getHintsNearLocation:(id)location withinDistance:(double)distance sourceFilter:(id)filter fromDate:(id)date limit:(unint64_t)limit
{
  locationCopy = location;
  filterCopy = filter;
  dateCopy = date;
  if (!dateCopy)
  {
    dateCopy = [MEMORY[0x277CBEAA8] distantPast];
  }

  v16 = objc_alloc(MEMORY[0x277D01310]);
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:distance];
  v18 = objc_alloc(MEMORY[0x277CCA970]);
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v20 = [v18 initWithStartDate:dateCopy endDate:distantFuture];
  v21 = [v16 initWithReferenceLocation:locationCopy sourceFilter:filterCopy ascending:0 distance:v17 dateInterval:v20 limit:limit batchSize:limit];

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__171;
  v35 = __Block_byref_object_dispose__171;
  array = [MEMORY[0x277CBEB18] array];
  hintStore = [(RTHintManager *)self->_hintManager hintStore];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __92__RTVisitPipelineModuleSCI_getHintsNearLocation_withinDistance_sourceFilter_fromDate_limit___block_invoke;
  v26[3] = &unk_2788D1AE0;
  v29 = &v31;
  v30 = a2;
  v23 = locationCopy;
  v27 = v23;
  selfCopy = self;
  [hintStore enumerateStoredHintsWithOptions:v21 usingBlock:v26];

  v24 = v32[5];
  _Block_object_dispose(&v31, 8);

  return v24;
}

void __92__RTVisitPipelineModuleSCI_getHintsNearLocation_withinDistance_sourceFilter_fromDate_limit___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:v5];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = NSStringFromSelector(*(a1 + 56));
      v9 = [v5 count];
      v10 = *(a1 + 32);
      v11 = [*(*(*(a1 + 48) + 8) + 40) count];
      v12 = [*(a1 + 40) stateMachineConfidenceString];
      v13 = 138413571;
      v14 = v8;
      v15 = 2048;
      v16 = v9;
      v17 = 2117;
      v18 = v10;
      v19 = 2048;
      v20 = v11;
      v21 = 2112;
      v22 = v6;
      v23 = 2112;
      v24 = v12;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, retrieved %ld hints near location, %{sensitive}@, total number of hints retrieved %ld, error %@, %@", &v13, 0x3Eu);
    }
  }
}

- (BOOL)isHint:(id)hint withinDistance:(double)distance location:(id)location
{
  v32 = *MEMORY[0x277D85DE8];
  hintCopy = hint;
  locationCopy = location;
  distanceCalculator = self->_distanceCalculator;
  location = [hintCopy location];
  v21 = 0;
  [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:locationCopy toLocation:location error:&v21];
  v14 = v13;
  v15 = v21;

  if (v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = NSStringFromSelector(a2);
        stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
        *buf = 138413315;
        v23 = v17;
        v24 = 2117;
        v25 = locationCopy;
        v26 = 2117;
        v27 = hintCopy;
        v28 = 2112;
        v29 = v15;
        v30 = 2112;
        v31 = stateMachineConfidenceString;
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, While Computing distance between location, %{sensitive}@, and hint, %{sensitive}@, an error, %@ was observed, %@", buf, 0x34u);
      }
    }

    v19 = 0;
  }

  else
  {
    v19 = v14 <= distance;
  }

  return v19;
}

- (id)filterHints:(id)hints existingHints:(id)existingHints
{
  v26 = *MEMORY[0x277D85DE8];
  hintsCopy = hints;
  existingHintsCopy = existingHints;
  v13 = hintsCopy;
  if ([existingHintsCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = hintsCopy;
    v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v17 = 0;
          v18 = &v17;
          v19 = 0x2020000000;
          v20 = 1;
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __54__RTVisitPipelineModuleSCI_filterHints_existingHints___block_invoke;
          v16[3] = &unk_2788D1B08;
          v16[4] = self;
          v16[5] = v11;
          v16[6] = &v17;
          [existingHintsCopy enumerateObjectsUsingBlock:{v16, v13}];
          if (*(v18 + 24) == 1)
          {
            [array addObject:v11];
          }

          _Block_object_dispose(&v17, 8);
        }

        v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }
  }

  else
  {
    array = hintsCopy;
  }

  return array;
}

void __54__RTVisitPipelineModuleSCI_filterHints_existingHints___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v7 location];
  [v8 horizontalUncertainty];
  v10 = v9;
  v11 = [*(a1 + 40) location];
  [v11 horizontalUncertainty];
  v13 = v10 + v12;
  v14 = [*(a1 + 40) location];
  LODWORD(v6) = [v6 isHint:v7 withinDistance:v14 location:v13];

  if (v6)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (id)retrieveNonLOIHintsNearLocation:(id)location withinDistance:(double)distance
{
  v26 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:247];
  date = [locationCopy date];
  v9 = [(RTVisitPipelineModuleSCI *)self relevantDateForHintSource:1 date:date];

  v20 = v7;
  v10 = [(RTVisitPipelineModuleSCI *)self getHintsNearLocation:locationCopy withinDistance:v7 sourceFilter:v9 fromDate:1000 limit:distance];
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        if (((v15 >> ([v18 source] + 1)) & 1) == 0)
        {
          v15 |= 1 << ([v18 source] + 1);
          [array addObject:v18];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  return array;
}

- (void)populateHintCacheNearLocation:(id)location withinDistance:(double)distance
{
  v39 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      [(RTDistanceCalculator *)self->_distanceCalculator distanceFromLocation:locationCopy toLocation:self->_hintCacheUpdateLocation error:0];
      v11 = v10;
      stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
      v29 = 138413315;
      v30 = v9;
      v31 = 2117;
      v32 = locationCopy;
      v33 = 2048;
      distanceCopy = distance;
      v35 = 2048;
      v36 = v11;
      v37 = 2112;
      v38 = stateMachineConfidenceString;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, location, %{sensitive}@, distance, %.2f, distance to last cache update, %.2f, %@", &v29, 0x34u);
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  v14 = [MEMORY[0x277CCABB0] numberWithInt:8];
  v15 = [(RTVisitPipelineModuleSCI *)self getHintsNearLocation:locationCopy withinDistance:v14 sourceFilter:0 fromDate:0 limit:distance];

  [array addObjectsFromArray:v15];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = NSStringFromSelector(a2);
      v18 = [v15 count];
      stateMachineConfidenceString2 = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
      v29 = 138412802;
      v30 = v17;
      v31 = 2048;
      v32 = v18;
      v33 = 2112;
      distanceCopy = *&stateMachineConfidenceString2;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, retrieved LOI hints, %lu, %@", &v29, 0x20u);
    }
  }

  if (!self->_useLowConfidence)
  {
    v20 = [(RTVisitPipelineModuleSCI *)self retrieveNonLOIHintsNearLocation:locationCopy withinDistance:distance];
    v21 = [(RTVisitPipelineModuleSCI *)self filterHints:v20 existingHints:v15];
    [array addObjectsFromArray:v21];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = NSStringFromSelector(a2);
        v24 = [v20 count];
        stateMachineConfidenceString3 = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
        v29 = 138412802;
        v30 = v23;
        v31 = 2048;
        v32 = v24;
        v33 = 2112;
        distanceCopy = *&stateMachineConfidenceString3;
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@, retrieved NON-LOI hints, %lu, %@", &v29, 0x20u);
      }
    }
  }

  v26 = [MEMORY[0x277CBEA60] arrayWithArray:array];
  hintCache = self->_hintCache;
  self->_hintCache = v26;

  hintCacheUpdateLocation = self->_hintCacheUpdateLocation;
  self->_hintCacheUpdateLocation = locationCopy;
}

- (id)hintsNearLocation:(id)location
{
  v30 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  distanceCalculator = self->_distanceCalculator;
  hintCacheUpdateLocation = self->_hintCacheUpdateLocation;
  v19 = 0;
  [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:locationCopy toLocation:hintCacheUpdateLocation error:&v19];
  v9 = v8;
  v10 = v19;
  if (v10)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    v11 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = NSStringFromSelector(a2);
      v13 = self->_hintCacheUpdateLocation;
      stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
      *buf = 138413315;
      v21 = v12;
      v22 = 2117;
      v23 = locationCopy;
      v24 = 2117;
      v25 = v13;
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = stateMachineConfidenceString;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, While Computing distance between location, %{sensitive}@, and location, %{sensitive}@, an error, %@ was observed setting distance to 0, %@", buf, 0x34u);
    }
  }

  else
  {
    if (v9 <= 1320.0)
    {
      goto LABEL_8;
    }

    hintCache = self->_hintCache;
    self->_hintCache = 0;

    v11 = self->_hintCacheUpdateLocation;
    self->_hintCacheUpdateLocation = 0;
  }

LABEL_8:
  v16 = self->_hintCache;
  if (!v16)
  {
    [(RTVisitPipelineModuleSCI *)self populateHintCacheNearLocation:locationCopy withinDistance:1500.0];
    v16 = self->_hintCache;
  }

  v17 = v16;

  return v16;
}

+ (BOOL)filterHint:(id)hint sourceFilter:(id)filter inverseFilter:(BOOL)inverseFilter
{
  hintCopy = hint;
  filterCopy = filter;
  v9 = filterCopy;
  if (hintCopy)
  {
    if (filterCopy)
    {
      integerValue = [filterCopy integerValue];
      v11 = ((integerValue & (1 << ([hintCopy source] + 1))) != 0) ^ inverseFilter;
    }

    else
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sourceFilter", v15, 2u);
      }

      v11 = 1;
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: hint", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)isHintConsistentWithLocation:(id)location hint:(id)hint
{
  v33 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  hintCopy = hint;
  v9 = hintCopy;
  if (hintCopy)
  {
    distanceCalculator = self->_distanceCalculator;
    location = [hintCopy location];
    v22 = 0;
    v12 = [(RTDistanceCalculator *)distanceCalculator checkConsistencyBetweenLocation:location otherLocation:locationCopy error:&v22];
    v13 = v22;

    if (v13 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = NSStringFromSelector(a2);
        stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
        *buf = 138413315;
        v24 = v15;
        v25 = 2117;
        v26 = v9;
        v27 = 2117;
        v28 = locationCopy;
        v29 = 2112;
        v30 = v13;
        v31 = 2112;
        v32 = stateMachineConfidenceString;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, While processing hint, %{sensitive}@, near location, %{sensitive}@, an error, %@ was observed, %@", buf, 0x34u);
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v19 = NSStringFromSelector(a2);
        if (v12)
        {
          v20 = @"YES";
        }

        else
        {
          v20 = @"NO";
        }

        stateMachineConfidenceString2 = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
        *buf = 138413315;
        v24 = v19;
        v25 = 2117;
        v26 = v9;
        v27 = 2117;
        v28 = locationCopy;
        v29 = 2112;
        v30 = v20;
        v31 = 2112;
        v32 = stateMachineConfidenceString2;
        _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "%@, Processing hint, %{sensitive}@, near location, %{sensitive}@, consistent, %@, %@", buf, 0x34u);
      }
    }
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: hint", buf, 2u);
    }

    LOBYTE(v12) = 0;
  }

  return v12;
}

- (id)getHintConsistentWithLocation:(id)location sourceFilter:(id)filter inverseFilter:(BOOL)inverseFilter
{
  inverseFilterCopy = inverseFilter;
  v52 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  filterCopy = filter;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = [(RTVisitPipelineModuleSCI *)self hintsNearLocation:locationCopy];
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v51 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v38;
    v15 = 1.79769313e308;
    v35 = inverseFilterCopy;
    v33 = *v38;
    v34 = filterCopy;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v37 + 1) + 8 * i);
        if ([objc_opt_class() filterHint:v17 sourceFilter:filterCopy inverseFilter:inverseFilterCopy] && -[RTVisitPipelineModuleSCI isHintConsistentWithLocation:hint:](self, "isHintConsistentWithLocation:hint:", locationCopy, v17))
        {
          v18 = v13;
          v19 = v10;
          distanceCalculator = self->_distanceCalculator;
          location = [v17 location];
          v36 = 0;
          v22 = locationCopy;
          [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:locationCopy toLocation:location error:&v36];
          v24 = v23;
          v25 = v36;

          if (v25 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v26 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              v32 = NSStringFromSelector(a2);
              stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
              *buf = 138413315;
              v42 = v32;
              v43 = 2117;
              v44 = v17;
              v45 = 2117;
              v46 = v22;
              v47 = 2112;
              v48 = v25;
              v49 = 2112;
              v50 = stateMachineConfidenceString;
              v28 = stateMachineConfidenceString;
              _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, While processing hint, %{sensitive}@, near location, %{sensitive}@, an error, %@ was observed, %@", buf, 0x34u);
            }
          }

          v13 = v18;
          if (!v18 || v15 > v24)
          {
            v29 = v17;

            v13 = v29;
            v15 = v24;
          }

          v10 = v19;
          v14 = v33;

          locationCopy = v22;
          inverseFilterCopy = v35;
          filterCopy = v34;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v37 objects:v51 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)getHintWithinDistance:(double)distance ofLocation:(id)location sourceFilter:(id)filter inverseFilter:(BOOL)inverseFilter
{
  inverseFilterCopy = inverseFilter;
  v64 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  filterCopy = filter;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [(RTVisitPipelineModuleSCI *)self hintsNearLocation:locationCopy];
  v12 = [obj countByEnumeratingWithState:&v47 objects:v63 count:16];
  if (v12)
  {
    v14 = v12;
    v43 = 0;
    v15 = *v48;
    v16 = 1.79769313e308;
    *&v13 = 138413571;
    v38 = v13;
    v42 = locationCopy;
    do
    {
      v17 = 0;
      v44 = v14;
      do
      {
        if (*v48 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v47 + 1) + 8 * v17);
        if ([objc_opt_class() filterHint:v18 sourceFilter:filterCopy inverseFilter:inverseFilterCopy])
        {
          v19 = filterCopy;
          v20 = inverseFilterCopy;
          selfCopy = self;
          distanceCalculator = self->_distanceCalculator;
          location = [v18 location];
          v46 = 0;
          [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:locationCopy toLocation:location error:&v46];
          v25 = v24;
          v26 = v46;

          if (v26 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v27 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = NSStringFromSelector(a2);
              stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)selfCopy stateMachineConfidenceString];
              *buf = 138413315;
              v52 = v28;
              v53 = 2117;
              v54 = v18;
              v55 = 2117;
              v56 = v42;
              v57 = 2112;
              distanceCopy = *&v26;
              v59 = 2112;
              v60 = stateMachineConfidenceString;
              _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@, While processing hint, %{sensitive}@, near location, %{sensitive}@, an error, %@ was observed, %@", buf, 0x34u);

              locationCopy = v42;
            }
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v30 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              v32 = NSStringFromSelector(a2);
              v33 = v32;
              v34 = @"NO";
              if (v25 < distance)
              {
                v34 = @"YES";
              }

              v39 = v34;
              v40 = v32;
              stateMachineConfidenceString2 = [(RTVisitPipelineModuleSCI *)selfCopy stateMachineConfidenceString];
              *buf = v38;
              v52 = v33;
              v53 = 2117;
              v54 = v18;
              v55 = 2117;
              v56 = v42;
              v57 = 2048;
              distanceCopy = distance;
              v59 = 2112;
              v60 = v39;
              locationCopy = v42;
              v61 = 2112;
              v62 = stateMachineConfidenceString2;
              _os_log_debug_impl(&dword_2304B3000, v30, OS_LOG_TYPE_DEBUG, "%@, hint, %{sensitive}@, location, %{sensitive}@, distance %f, nearby, %@, %@", buf, 0x3Eu);
            }
          }

          inverseFilterCopy = v20;
          self = selfCopy;
          filterCopy = v19;
          if (v25 < distance && (!v43 || v16 > v25))
          {
            v31 = v18;

            v43 = v31;
            v16 = v25;
          }

          v14 = v44;
        }

        ++v17;
      }

      while (v14 != v17);
      v36 = [obj countByEnumeratingWithState:&v47 objects:v63 count:16];
      v14 = v36;
    }

    while (v36);
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

- (BOOL)isHintNearLocation:(id)location
{
  v28 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:8];
  v7 = [(RTVisitPipelineModuleSCI *)self getHintConsistentWithLocation:locationCopy sourceFilter:v6 inverseFilter:0];

  if (!v7)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:8];
    v9 = [(RTVisitPipelineModuleSCI *)self getHintWithinDistance:locationCopy ofLocation:v12 sourceFilter:0 inverseFilter:180.0];

    if (v9)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v8 = 0;
        goto LABEL_17;
      }

      v10 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = NSStringFromSelector(a2);
        stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
        v20 = 138413059;
        v21 = v13;
        v22 = 2117;
        v23 = v9;
        v24 = 2117;
        v25 = locationCopy;
        v26 = 2112;
        v27 = stateMachineConfidenceString;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, LOI Hint, %{sensitive}@, detected near location, %{sensitive}@, but not consistent, %@", &v20, 0x2Au);
      }
    }

    else
    {
      v15 = [MEMORY[0x277CCABB0] numberWithInt:8];
      v10 = [(RTVisitPipelineModuleSCI *)self getHintWithinDistance:locationCopy ofLocation:v15 sourceFilter:1 inverseFilter:180.0];

      if (v10)
      {
        v8 = 1;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v16 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = NSStringFromSelector(a2);
            stateMachineConfidenceString2 = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
            v20 = 138413059;
            v21 = v17;
            v22 = 2117;
            v23 = v10;
            v24 = 2117;
            v25 = locationCopy;
            v26 = 2112;
            v27 = stateMachineConfidenceString2;
            _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, Hint, %{sensitive}@, detected near location, %{sensitive}@, %@", &v20, 0x2Au);
          }

          v8 = 1;
        }

        goto LABEL_15;
      }
    }

    v8 = 0;
LABEL_15:

    goto LABEL_17;
  }

  v8 = 1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
LABEL_17:

      goto LABEL_18;
    }

    v10 = NSStringFromSelector(a2);
    stateMachineConfidenceString3 = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
    v20 = 138413059;
    v21 = v10;
    v22 = 2117;
    v23 = v7;
    v24 = 2117;
    v25 = locationCopy;
    v26 = 2112;
    v27 = stateMachineConfidenceString3;
    _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, LOI Hint, %{sensitive}@, detected near location, %{sensitive}@, %@", &v20, 0x2Au);

    goto LABEL_15;
  }

LABEL_18:

  return v8;
}

- (id)handleFSM:(unint64_t)m point:(id)point
{
  v47 = *MEMORY[0x277D85DE8];
  pointCopy = point;
  v8 = [objc_opt_class() FSMStateToString:self->_fsmState];
  v9 = [objc_opt_class() LCFSMStateToString:self->_lcFSMState];
  if (!self->_useLowConfidence)
  {
    goto LABEL_7;
  }

  lcFSMState = self->_lcFSMState;
  if (lcFSMState != 1)
  {
    if (!lcFSMState)
    {
      v11 = 0;
      if (m <= 0xA && ((1 << m) & 0x510) != 0)
      {
        v11 = 1;
        self->_lcFSMState = 1;
        [(RTVisitPipelineModuleSCI *)self addVisitFromWorkingHypothesis:1 confidence:*MEMORY[0x277D01478]];
      }

      goto LABEL_8;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v11 = 0;
  if (m <= 7 && ((1 << m) & 0xA8) != 0)
  {
    [(RTVisitPipelineModuleSCI *)self addVisitFromWorkingHypothesis:3 confidence:*MEMORY[0x277D01478]];
    self->_lcFSMState = 0;
    v11 = 1;
  }

LABEL_8:
  fsmState = self->_fsmState;
  if (fsmState - 2 < 2)
  {
    if (m != 1)
    {
      if (m == 2)
      {
        if (!pointCopy)
        {
          v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            mCopy = "[RTVisitPipelineModuleSCI handleFSM:point:]";
            v33 = 1024;
            LODWORD(v34) = 781;
            _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "point is nil (in %s:%d)", buf, 0x12u);
          }
        }

        [(RTVisitSCIStayCluster *)self->_workingHypothesis addOutlier:pointCopy];
        goto LABEL_34;
      }

      if (fsmState == 2)
      {
        if (m - 5 >= 2 && m != 3)
        {
          if (m != 4)
          {
            goto LABEL_61;
          }

          self->_fsmState = 3;
          if (self->_useLowConfidence)
          {
            goto LABEL_34;
          }

          v16 = 1;
          [(RTVisitPipelineModuleSCI *)self addVisitFromWorkingHypothesis:1 confidence:*MEMORY[0x277D01470]];
LABEL_46:
          outliers = 0;
          goto LABEL_63;
        }
      }

      else
      {
        if (m != 3)
        {
          if (m == 6)
          {
LABEL_34:
            outliers = 0;
LABEL_60:
            v16 = 1;
            goto LABEL_63;
          }

          if (m != 5)
          {
            goto LABEL_61;
          }
        }

        if (!self->_useLowConfidence)
        {
          [(RTVisitPipelineModuleSCI *)self addVisitFromWorkingHypothesis:3 confidence:*MEMORY[0x277D01470]];
        }
      }

      outliers = [(RTVisitSCIStayCluster *)self->_workingHypothesis outliers];
      [(RTVisitPipelineModuleSCI *)self resetWorkingHypothesis];
LABEL_59:
      self->_fsmState = 0;
      goto LABEL_60;
    }

    if (!pointCopy)
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        mCopy = "[RTVisitPipelineModuleSCI handleFSM:point:]";
        v33 = 1024;
        LODWORD(v34) = 785;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "point is nil (in %s:%d)", buf, 0x12u);
      }

      fsmState = self->_fsmState;
    }

    v16 = 1;
    [(RTVisitSCIStayCluster *)self->_workingHypothesis addNewPoint:pointCopy event:1 lcFSMState:self->_lcFSMState fsmState:fsmState];
    goto LABEL_46;
  }

  if (fsmState == 1)
  {
    outliers = 0;
    if (m > 6)
    {
LABEL_62:
      v16 = v11;
      goto LABEL_63;
    }

    if (((1 << m) & 0x6C) == 0)
    {
      v16 = v11;
      if (m == 1)
      {
        if (pointCopy)
        {
          v23 = 1;
        }

        else
        {
          v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            mCopy = "[RTVisitPipelineModuleSCI handleFSM:point:]";
            v33 = 1024;
            LODWORD(v34) = 768;
            _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "point is nil (in %s:%d)", buf, 0x12u);
          }

          v23 = self->_fsmState;
        }

        v16 = 1;
        [(RTVisitSCIStayCluster *)self->_workingHypothesis addNewPoint:pointCopy event:1 lcFSMState:self->_lcFSMState fsmState:v23];
        outliers = 0;
        self->_fsmState = 2;
      }

      goto LABEL_63;
    }

    [(RTVisitPipelineModuleSCI *)self resetWorkingHypothesis];
    outliers = 0;
    goto LABEL_59;
  }

  if (fsmState)
  {
LABEL_61:
    outliers = 0;
    goto LABEL_62;
  }

  if ([(RTVisitSCIStayCluster *)self->_workingHypothesis numOfDataPoints])
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      mCopy = "[RTVisitPipelineModuleSCI handleFSM:point:]";
      v33 = 1024;
      LODWORD(v34) = 743;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "nonzero data points outside working hypothesis (in %s:%d)", buf, 0x12u);
    }
  }

  if ([(RTVisitSCIStayCluster *)self->_workingHypothesis numOfOutliers])
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      mCopy = "[RTVisitPipelineModuleSCI handleFSM:point:]";
      v33 = 1024;
      LODWORD(v34) = 744;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "unexpected outliers outside working hypothesis (in %s:%d)", buf, 0x12u);
    }
  }

  outliers = 0;
  v16 = 1;
  if (m - 5 >= 2 && m != 3)
  {
    if (m == 9)
    {
      if (!pointCopy)
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          mCopy = "[RTVisitPipelineModuleSCI handleFSM:point:]";
          v33 = 1024;
          LODWORD(v34) = 750;
          _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "point is nil (in %s:%d)", buf, 0x12u);
        }
      }

      [(RTVisitSCIStayCluster *)self->_workingHypothesis addNewPoint:pointCopy event:9 lcFSMState:self->_lcFSMState fsmState:self->_fsmState];
      outliers = 0;
      v16 = 1;
      self->_fsmState = 1;
      goto LABEL_63;
    }

    goto LABEL_61;
  }

LABEL_63:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v30 = NSStringFromSelector(a2);
      v29 = [objc_opt_class() FSMEventToString:m];
      v24 = [objc_opt_class() FSMStateToString:self->_fsmState];
      v25 = [objc_opt_class() LCFSMStateToString:self->_lcFSMState];
      v28 = [outliers count];
      stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
      *buf = 138414082;
      mCopy = v30;
      v33 = 2112;
      v34 = v29;
      v35 = 2112;
      v36 = v8;
      v37 = 2112;
      v38 = v24;
      v39 = 2112;
      v40 = v9;
      v41 = 2112;
      v42 = v25;
      v43 = 2048;
      v44 = v28;
      v45 = 2112;
      v46 = stateMachineConfidenceString;
      _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "%@, event, %@, HC FSM inState, %@, HC FSM outState, %@, LC FSM inState, %@, LC FSM outState, %@, points left, %lu, %@", buf, 0x52u);
    }
  }

  if ((v16 & 1) == 0)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      mCopy = m;
      v33 = 2080;
      v34 = "[RTVisitPipelineModuleSCI handleFSM:point:]";
      v35 = 1024;
      LODWORD(v36) = 840;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "unhandled event, %lu (in %s:%d)", buf, 0x1Cu);
    }
  }

  return outliers;
}

- (void)processPoints:(id)points
{
  v92 = *MEMORY[0x277D85DE8];
  pointsCopy = points;
  if (![pointsCopy count])
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v83 = "[RTVisitPipelineModuleSCI processPoints:]";
      v84 = 1024;
      LODWORD(v85) = 846;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "empty points (in %s:%d)", buf, 0x12u);
    }
  }

  if ([pointsCopy count])
  {
    v7 = [pointsCopy count];
    numOfOutliers = [(RTVisitSCIStayCluster *)self->_workingHypothesis numOfOutliers];
    if ([pointsCopy count])
    {
      aSelector = a2;
      v9 = 0;
      v10 = (240 * (numOfOutliers + v7)) >> 1;
      while (1)
      {
        v11 = objc_autoreleasePoolPush();
        if (v9 > v10)
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v83 = "[RTVisitPipelineModuleSCI processPoints:]";
            v84 = 1024;
            LODWORD(v85) = 854;
            _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "run out of loop while processing (in %s:%d)", buf, 0x12u);
          }
        }

        firstObject = [pointsCopy firstObject];
        [pointsCopy removeObjectAtIndex:0];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v14 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v54 = NSStringFromSelector(aSelector);
            stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
            *buf = 138412803;
            v83 = v54;
            v84 = 2117;
            v85 = *&firstObject;
            v86 = 2112;
            v87 = *&stateMachineConfidenceString;
            _os_log_debug_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEBUG, "%@, processing point, %{sensitive}@, %@", buf, 0x20u);
          }
        }

        date = [firstObject date];
        lastProcessedSample = [(RTVisitSCIStayCluster *)self->_workingHypothesis lastProcessedSample];
        v17 = [date isOnOrAfter:lastProcessedSample];

        if ((v17 & 1) == 0)
        {
          v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v83 = "[RTVisitPipelineModuleSCI processPoints:]";
            v84 = 1024;
            LODWORD(v85) = 865;
            _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "new sample is out of order (in %s:%d)", buf, 0x12u);
          }
        }

        [firstObject horizontalUncertainty];
        v20 = v19;
        [(RTVisitHyperParameter *)self->_hyperParameter maxHorizontalAccuracy];
        v21 = 0x277CBE000uLL;
        if (v20 > v22 || ([firstObject horizontalUncertainty], v23 < 0.0))
        {
          v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v83 = "[RTVisitPipelineModuleSCI processPoints:]";
            v84 = 1024;
            LODWORD(v85) = 867;
            _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "uncertainty is out of range (in %s:%d)", buf, 0x12u);
          }
        }

        if ([(RTVisitSCIStayCluster *)self->_workingHypothesis numOfDataPoints])
        {
          break;
        }

        selfCopy2 = self;
        v35 = 9;
LABEL_32:
        v36 = [(RTVisitPipelineModuleSCI *)selfCopy2 handleFSM:v35 point:firstObject];
LABEL_33:

        objc_autoreleasePoolPop(v11);
        ++v9;
        if (![pointsCopy count])
        {
          goto LABEL_64;
        }
      }

      date2 = [firstObject date];
      lastProcessedSample2 = [(RTVisitSCIStayCluster *)self->_workingHypothesis lastProcessedSample];
      [date2 timeIntervalSinceDate:lastProcessedSample2];
      v28 = v27;
      [(RTVisitHyperParameter *)self->_hyperParameter maxGapInVisit];
      v30 = v29;

      if (v28 > v30)
      {
        v31 = [(RTVisitPipelineModuleSCI *)self handleFSM:3 point:0];
        [pointsCopy insertObject:firstObject atIndex:0];
        v32 = v31;
LABEL_28:
        if ([v32 count])
        {
          [v31 addObjectsFromArray:pointsCopy];
          v33 = v31;

          pointsCopy = v33;
        }

        goto LABEL_33;
      }

      [firstObject latitude];
      [firstObject longitude];
      centroid = [(RTVisitSCIStayCluster *)self->_workingHypothesis centroid];
      [centroid latitude];
      centroid2 = [(RTVisitSCIStayCluster *)self->_workingHypothesis centroid];
      [centroid2 longitude];
      RTCommonCalculateDistance();
      v40 = v39;

      workingHypothesis = self->_workingHypothesis;
      date3 = [firstObject date];
      [(RTVisitSCIStayCluster *)workingHypothesis getRadiusForDate:date3];
      v44 = v43;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v45 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          v56 = NSStringFromSelector(aSelector);
          stateMachineConfidenceString2 = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
          *buf = 138413058;
          v83 = v56;
          v84 = 2048;
          v85 = v40;
          v86 = 2048;
          v87 = v44;
          v88 = 2112;
          v89 = stateMachineConfidenceString2;
          _os_log_debug_impl(&dword_2304B3000, v45, OS_LOG_TYPE_DEBUG, "%@, distance from working hypothesis, %.1fm, radius, %.1fm, %@", buf, 0x2Au);

          v21 = 0x277CBE000;
        }
      }

      if (v40 >= v44)
      {
        v50 = [(RTVisitPipelineModuleSCI *)self handleFSM:2 point:firstObject];
        numOfOutliers2 = [(RTVisitSCIStayCluster *)self->_workingHypothesis numOfOutliers];
        v52 = numOfOutliers2;
        if (self->_useLowConfidence && self->_lcFSMState == 1 && (numOfOutliers2 > 3 || v40 >= 300.0))
        {
          v53 = [(RTVisitPipelineModuleSCI *)self handleFSM:7 point:firstObject];
        }

        if (![(RTVisitPipelineModuleSCI *)self isTimeOutsideClusterSatisfiedForOutlierCount:v52 location:firstObject])
        {
          goto LABEL_33;
        }

        v32 = [(RTVisitPipelineModuleSCI *)self handleFSM:5 point:firstObject];
        v31 = v32;
        goto LABEL_28;
      }

      v46 = [(RTVisitPipelineModuleSCI *)self handleFSM:1 point:firstObject];
      if (self->_useLowConfidence && !self->_lcFSMState && [(RTVisitSCIStayCluster *)self->_workingHypothesis numOfDataPoints]>= 2)
      {
        centroid3 = [(RTVisitSCIStayCluster *)self->_workingHypothesis centroid];
        v48 = [(RTVisitPipelineModuleSCI *)self isHintNearLocation:centroid3];

        if (v48)
        {
          v49 = 8;
        }

        else
        {
          if (self->_fsmState != 3)
          {
LABEL_56:
            if (![(RTVisitPipelineModuleSCI *)self isDwellTimeSatisfiedForLocation:firstObject])
            {
              date4 = [*(v21 + 2728) date];
              date5 = [firstObject date];
              [date4 timeIntervalSinceDate:date5];
              v62 = v61;
              [(RTVisitPipelineModuleSCI *)self minStaticIntervalForSLVArrival];
              v64 = v63;

              if (v62 < v64)
              {
                v65 = self->_workingHypothesis;
                date6 = [firstObject date];
                [(RTVisitSCIStayCluster *)v65 dwellTimeIntervalWithDate:date6];
                v68 = v67;

                [(RTVisitPipelineModuleSCI *)self requiredDwellTimeForLocation:firstObject];
                v70 = v69;
                v71 = v69 - v68;
                v72 = *(v21 + 2728);
                date7 = [firstObject date];
                v74 = [v72 dateWithTimeInterval:date7 sinceDate:v71];

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v75 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
                  {
                    v80 = NSStringFromSelector(aSelector);
                    stringFromDate = [v74 stringFromDate];
                    stateMachineConfidenceString3 = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
                    *buf = 138413314;
                    v83 = v80;
                    v84 = 2048;
                    v85 = v70;
                    v86 = 2048;
                    v87 = v71;
                    v88 = 2112;
                    v89 = stringFromDate;
                    v90 = 2112;
                    v91 = stateMachineConfidenceString3;
                    _os_log_impl(&dword_2304B3000, v75, OS_LOG_TYPE_INFO, "%@, requiredDwellTime, %.2f, remainingDwellTime, %.2f, nextPotentialEntryDate, %@, %@", buf, 0x34u);
                  }
                }

                [(RTDelayedLocationRequester *)self->_delayedLocationRequester updateFireDate:v74];
              }

              goto LABEL_33;
            }

            selfCopy2 = self;
            v35 = 4;
            goto LABEL_32;
          }

          v49 = 10;
        }

        v58 = [(RTVisitPipelineModuleSCI *)self handleFSM:v49 point:firstObject];
      }

      if (self->_fsmState == 3)
      {
        goto LABEL_33;
      }

      goto LABEL_56;
    }

LABEL_64:
    lastObject = [pointsCopy lastObject];
    lastPointProcessed = self->_lastPointProcessed;
    self->_lastPointProcessed = lastObject;
  }
}

- (double)requiredTimeOutsideClusterForOutlierCount:(unint64_t)count location:(id)location
{
  locationCopy = location;
  v7 = locationCopy;
  v8 = 0.0;
  if (count <= 0xF0)
  {
    if (count < 4)
    {
      v12 = 0x7FEFFFFFFFFFFFFFLL;
    }

    else
    {
      date = [locationCopy date];
      if ([(RTVisitPipelineModuleSCI *)self isValidLatestRegionHintSource:8 date:date]&& ![(RTVisitPipelineModuleSCI *)self isLastRegionHintNearLocation:v7 hintSource:8])
      {

        goto LABEL_12;
      }

      date2 = [v7 date];
      if ([(RTVisitPipelineModuleSCI *)self isValidLatestRegionHintSource:10 date:date2])
      {
        v11 = [(RTVisitPipelineModuleSCI *)self isLastRegionHintNearLocation:v7 hintSource:10];

        if (!v11)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      v12 = 0x406E000000000000;
    }

    v8 = *&v12;
  }

LABEL_12:

  return v8;
}

- (BOOL)isTimeOutsideClusterSatisfiedForOutlierCount:(unint64_t)count location:(id)location
{
  v29 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  date = [locationCopy date];
  potentialExit = [(RTVisitSCIStayCluster *)self->_workingHypothesis potentialExit];
  [date timeIntervalSinceDate:potentialExit];
  v11 = v10;

  [(RTVisitPipelineModuleSCI *)self requiredTimeOutsideClusterForOutlierCount:count location:locationCopy];
  v13 = v12;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = NSStringFromSelector(a2);
      if (v11 < v13)
      {
        v16 = @"NO";
      }

      else
      {
        v16 = @"YES";
      }

      stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
      v19 = 138413314;
      v20 = v15;
      v21 = 2048;
      v22 = v13;
      v23 = 2048;
      v24 = v11;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = stateMachineConfidenceString;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, requiredTimeOutsideCluster, %f, timeOutsideCluster, %f, satisified, %@, %@", &v19, 0x34u);
    }
  }

  return v11 >= v13;
}

- (double)requiredDwellTimeForLocation:(id)location
{
  v34 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  requiredDwellTimeCacheDateToUpdate = self->_requiredDwellTimeCacheDateToUpdate;
  date = [(NSDate *)locationCopy date];
  LODWORD(requiredDwellTimeCacheDateToUpdate) = [(NSDate *)requiredDwellTimeCacheDateToUpdate isBeforeDate:date];

  if (requiredDwellTimeCacheDateToUpdate)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = NSStringFromSelector(a2);
        date2 = [(NSDate *)locationCopy date];
        v11 = self->_requiredDwellTimeCacheDateToUpdate;
        stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
        v26 = 138413058;
        v27 = v9;
        v28 = 2112;
        v29 = *&date2;
        v30 = 2112;
        v31 = v11;
        v32 = 2112;
        v33 = stateMachineConfidenceString;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, recomputing dwell time, location date, %@, cache time to update, %@, %@", &v26, 0x2Au);
      }
    }

    v13 = MEMORY[0x277CBEAA8];
    date3 = [(NSDate *)locationCopy date];
    v15 = [v13 dateWithTimeInterval:date3 sinceDate:1.0];
    v16 = self->_requiredDwellTimeCacheDateToUpdate;
    self->_requiredDwellTimeCacheDateToUpdate = v15;

    [(RTVisitPipelineModuleSCI *)self minStaticIntervalForSLVArrival];
    v18 = v17;
    if ([(RTVisitPipelineModuleSCI *)self isHintNearLocation:locationCopy])
    {
      [(RTVisitPipelineModuleSCI *)self minStaticIntervalForSLVArrivalWithHint];
      v18 = v19;
    }

    if ([(RTVisitPipelineModuleSCI *)self isLastRegionHintNearLocation:locationCopy hintSource:9]|| [(RTVisitPipelineModuleSCI *)self isLastRegionHintNearLocation:locationCopy hintSource:7]|| [(RTVisitPipelineModuleSCI *)self isLastRegionHintNearLocation:locationCopy hintSource:11])
    {
      v18 = 0.0;
    }

    self->_requiredDwellTimeCache = v18;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = NSStringFromSelector(a2);
      requiredDwellTimeCache = self->_requiredDwellTimeCache;
      stateMachineConfidenceString2 = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
      v26 = 138413059;
      v27 = v21;
      v28 = 2048;
      v29 = requiredDwellTimeCache;
      v30 = 2117;
      v31 = locationCopy;
      v32 = 2112;
      v33 = stateMachineConfidenceString2;
      _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@, requiredDwellTime, %f, location, %{sensitive}@, %@", &v26, 0x2Au);
    }
  }

  v24 = self->_requiredDwellTimeCache;

  return v24;
}

- (void)onHintNotification:(id)notification
{
  notificationCopy = notification;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__RTVisitPipelineModuleSCI_onHintNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onHintNotification:(id)notification
{
  v22 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
      v16 = 138412802;
      v17 = v7;
      v18 = 2112;
      v19 = notificationCopy;
      v20 = 2112;
      v21 = stateMachineConfidenceString;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, received hint notification, %@, %@", &v16, 0x20u);
    }
  }

  name = [notificationCopy name];
  v10 = +[(RTNotification *)RTHintManagerNotificationDidUpdate];
  v11 = [name isEqualToString:v10];

  if (v11)
  {
    hintCache = self->_hintCache;
    self->_hintCache = 0;

    hintSourcesUpdated = [notificationCopy hintSourcesUpdated];
    integerValue = [hintSourcesUpdated integerValue];

    if ((integerValue & 0x300) != 0)
    {
      self->_latestGeofenceHintChecked = 0;
    }

    if ((integerValue & 0xC00) != 0)
    {
      self->_latestSignificantRegionHintChecked = 0;
    }

    if ((integerValue & 0x100) != 0)
    {
      [(RTVisitPipelineModuleSCI *)self processContextChangeWithSource:7];
      if ((integerValue & 0x400) == 0)
      {
LABEL_12:
        if ((integerValue & 0x1000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    else if ((integerValue & 0x400) == 0)
    {
      goto LABEL_12;
    }

    [(RTVisitPipelineModuleSCI *)self processContextChangeWithSource:9];
    if ((integerValue & 0x1000) != 0)
    {
LABEL_19:
      [(RTVisitPipelineModuleSCI *)self processContextChangeWithSource:11];
      self->_latestCompanionSyncVisitHintChecked = 0;
    }
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412802;
      v17 = notificationCopy;
      v18 = 2080;
      v19 = "[RTVisitPipelineModuleSCI _onHintNotification:]";
      v20 = 1024;
      LODWORD(v21) = 1084;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", &v16, 0x1Cu);
    }
  }

LABEL_20:
}

- (BOOL)isDwellTimeSatisfiedForLocation:(id)location
{
  workingHypothesis = self->_workingHypothesis;
  locationCopy = location;
  date = [locationCopy date];
  [(RTVisitSCIStayCluster *)workingHypothesis dwellTimeIntervalWithDate:date];
  v8 = v7;

  [(RTVisitPipelineModuleSCI *)self requiredDwellTimeForLocation:locationCopy];
  v10 = v9;

  return v8 >= v10;
}

- (id)getLastHintUsingSourceFilter:(id)filter
{
  filterCopy = filter;
  v6 = objc_alloc(MEMORY[0x277D01310]);
  v7 = objc_alloc(MEMORY[0x277CCA970]);
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v10 = [v7 initWithStartDate:distantPast endDate:distantFuture];
  v11 = [v6 initWithReferenceLocation:0 sourceFilter:filterCopy ascending:0 distance:0 dateInterval:v10 limit:1 batchSize:1];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__171;
  v25 = __Block_byref_object_dispose__171;
  v26 = 0;
  hintStore = [(RTHintManager *)self->_hintManager hintStore];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__RTVisitPipelineModuleSCI_getLastHintUsingSourceFilter___block_invoke;
  v16[3] = &unk_2788D1AE0;
  v19 = &v21;
  v20 = a2;
  v13 = filterCopy;
  v17 = v13;
  selfCopy = self;
  [hintStore enumerateStoredHintsWithOptions:v11 usingBlock:v16];

  v14 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v14;
}

void __57__RTVisitPipelineModuleSCI_getLastHintUsingSourceFilter___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 56));
      v9 = *(*(*(a1 + 48) + 8) + 40);
      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) stateMachineConfidenceString];
      v12 = 138413059;
      v13 = v8;
      v14 = 2112;
      v15 = v10;
      v16 = 2117;
      v17 = v9;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, sourceFilter, %@, hint, %{sensitive}@, %@", &v12, 0x2Au);
    }
  }
}

- (void)refreshLatestGeofenceHintCache
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_latestGeofenceHintChecked)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:768];
    v5 = [(RTVisitPipelineModuleSCI *)self getLastHintUsingSourceFilter:v4];
    latestGeofenceHint = self->_latestGeofenceHint;
    self->_latestGeofenceHint = v5;

    self->_latestGeofenceHintChecked = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(a2);
        v9 = self->_latestGeofenceHint;
        stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
        v11 = 138412803;
        v12 = v8;
        v13 = 2117;
        v14 = v9;
        v15 = 2112;
        v16 = stateMachineConfidenceString;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, lastGeofenceHint, %{sensitive}@, %@", &v11, 0x20u);
      }
    }
  }
}

- (void)refreshLatestCompanionSyncVisitHintCache
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_latestCompanionSyncVisitHintChecked)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:4096];
    v5 = [(RTVisitPipelineModuleSCI *)self getLastHintUsingSourceFilter:v4];
    latestCompanionSyncVisitHint = self->_latestCompanionSyncVisitHint;
    self->_latestCompanionSyncVisitHint = v5;

    self->_latestCompanionSyncVisitHintChecked = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(a2);
        v9 = self->_latestCompanionSyncVisitHint;
        stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
        v11 = 138412803;
        v12 = v8;
        v13 = 2117;
        v14 = v9;
        v15 = 2112;
        v16 = stateMachineConfidenceString;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, latestCompanionSyncVisitHint, %{sensitive}@, %@", &v11, 0x20u);
      }
    }
  }
}

- (void)refreshLatestSignificantRegionHintCache
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_latestSignificantRegionHintChecked)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:3072];
    v5 = [(RTVisitPipelineModuleSCI *)self getLastHintUsingSourceFilter:v4];
    latestSignificantRegionHint = self->_latestSignificantRegionHint;
    self->_latestSignificantRegionHint = v5;

    self->_latestSignificantRegionHintChecked = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(a2);
        v9 = self->_latestSignificantRegionHint;
        stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
        v11 = 138412803;
        v12 = v8;
        v13 = 2117;
        v14 = v9;
        v15 = 2112;
        v16 = stateMachineConfidenceString;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, latestSignificantRegionHint, %{sensitive}@, %@", &v11, 0x20u);
      }
    }
  }
}

- (id)relevantDateForHintSource:(int64_t)source date:(id)date
{
  dateCopy = date;
  if (source <= 0xB && ((1 << source) & 0xA80) != 0)
  {
    v7 = MEMORY[0x277CBEAA8];
    [(RTVisitPipelineModuleSCI *)self minStaticIntervalForSLVArrival];
    v9 = -v8;
    v10 = v7;
  }

  else if ((source & 0xFFFFFFFFFFFFFFFDLL) == 8)
  {
    v10 = MEMORY[0x277CBEAA8];
    v9 = -240.0;
  }

  else
  {
    v13 = MEMORY[0x277CBEAA8];
    if (source == 1)
    {
      v9 = -43200.0;
    }

    else
    {
      [(RTVisitPipelineModuleSCI *)self minStaticIntervalForSLVArrival];
      v9 = -v14;
    }

    v10 = v13;
  }

  v11 = [v10 dateWithTimeInterval:dateCopy sinceDate:v9];

  return v11;
}

- (BOOL)isValidLatestRegionHintSource:(int64_t)source date:(id)date
{
  dateCopy = date;
  [(RTVisitPipelineModuleSCI *)self refreshCachedHintOfSource:source];
  v7 = [(RTVisitPipelineModuleSCI *)self latestCachedHintOfSource:source];
  v8 = v7;
  if (!v7 || (v9 = (source - 7) < 5, [v7 source] != source))
  {
    v9 = 0;
  }

  v10 = [(RTVisitPipelineModuleSCI *)self relevantDateForHintSource:source date:dateCopy];
  date = [v8 date];
  v12 = [date isBeforeDate:v10];

  return v9 & (v12 ^ 1);
}

- (BOOL)isLastRegionHintNearLocation:(id)location hintSource:(int64_t)source
{
  v31 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v8 = locationCopy;
  if ((source - 7) >= 5)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: hintSource == RTHintSourceGeoFenceEntry || hintSource == RTHintSourceGeoFenceExit || hintSource == RTHintSourceSignificantRegionEntry || hintSource == RTHintSourceSignificantRegionExit || hintSource == RTHintSourceCompanionSyncVisit", &v19, 2u);
    }

    LOBYTE(v11) = 0;
    goto LABEL_10;
  }

  date = [locationCopy date];

  if (!date)
  {
    LOBYTE(v11) = 0;
    goto LABEL_12;
  }

  date2 = [v8 date];
  v11 = [(RTVisitPipelineModuleSCI *)self isValidLatestRegionHintSource:source date:date2];

  if (v11)
  {
    v12 = [(RTVisitPipelineModuleSCI *)self latestCachedHintOfSource:source];
    v11 = [(RTVisitPipelineModuleSCI *)self isHintConsistentWithLocation:v8 hint:v12];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = NSStringFromSelector(a2);
        v16 = [MEMORY[0x277D01120] hintSourceToString:source];
        if (v11)
        {
          v17 = @"YES";
        }

        else
        {
          v17 = @"NO";
        }

        stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
        v19 = 138413571;
        v20 = v15;
        v21 = 2117;
        v22 = v8;
        v23 = 2112;
        v24 = v16;
        v25 = 2117;
        v26 = v12;
        v27 = 2112;
        v28 = v17;
        v29 = 2112;
        v30 = stateMachineConfidenceString;
        _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "%@, location, %{sensitive}@, hintSource, %@, lastRegionHint, %{sensitive}@, consistent, %@, %@", &v19, 0x3Eu);
      }
    }

LABEL_10:
  }

LABEL_12:

  return v11;
}

- (id)process:(id)process
{
  v86 = *MEMORY[0x277D85DE8];
  processCopy = process;
  if (![processCopy count])
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v78 = "[RTVisitPipelineModuleSCI process:]";
      v79 = 1024;
      LODWORD(v80) = 1255;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "empty in clustesr or nil (in %s:%d)", buf, 0x12u);
    }
  }

  if (![processCopy count])
  {
    v44 = 0;
    goto LABEL_63;
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v63 = processCopy;
  obj = processCopy;
  v6 = [obj countByEnumeratingWithState:&v72 objects:v85 count:16];
  if (!v6)
  {
    goto LABEL_36;
  }

  v7 = v6;
  v8 = MEMORY[0x277D86220];
  v66 = *v73;
  do
  {
    v9 = 0;
    do
    {
      if (*v73 != v66)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v72 + 1) + 8 * v9);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v34 = NSStringFromSelector(a2);
          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          stateMachineConfidenceString = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
          *buf = 138413059;
          v78 = v34;
          v79 = 2112;
          v80 = v36;
          v81 = 2117;
          v82 = v10;
          v83 = 2112;
          v84 = stateMachineConfidenceString;
          _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "%@, %@ working on cluster, %{sensitive}@, %@", buf, 0x2Au);
        }
      }

      points = [v10 points];
      locations = [points locations];

      points2 = [v10 points];

      if (!points2)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v29 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_28;
          }

          v30 = NSStringFromSelector(a2);
          stateMachineConfidenceString2 = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
          *buf = 138412546;
          v78 = v30;
          v79 = 2112;
          v80 = stateMachineConfidenceString2;
          v32 = v29;
          v33 = "%@, received forced exit signal, %@";
LABEL_34:
          _os_log_debug_impl(&dword_2304B3000, v32, OS_LOG_TYPE_DEBUG, v33, buf, 0x16u);

LABEL_28:
        }

LABEL_29:
        [(RTVisitPipelineModuleSCI *)self exitUntilNotInWorkingHypotheisWithBlock:0];
        goto LABEL_30;
      }

      firstObject = [locations firstObject];
      date = [firstObject date];
      lastProcessedSample = [(RTVisitSCIStayCluster *)self->_workingHypothesis lastProcessedSample];
      v18 = [date isOnOrAfter:lastProcessedSample];

      if ((v18 & 1) == 0)
      {
        v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v78 = "[RTVisitPipelineModuleSCI process:]";
          v79 = 1024;
          LODWORD(v80) = 1273;
          _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "new point is out of order (in %s:%d)", buf, 0x12u);
        }
      }

      firstObject2 = [locations firstObject];
      date2 = [firstObject2 date];
      lastProcessedSample2 = [(RTVisitSCIStayCluster *)self->_workingHypothesis lastProcessedSample];
      v23 = [date2 isOnOrAfter:lastProcessedSample2];

      if (v23)
      {
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __36__RTVisitPipelineModuleSCI_process___block_invoke;
        v71[3] = &unk_2788D1B30;
        v71[4] = v10;
        v71[5] = self;
        [(RTVisitPipelineModuleSCI *)self exitUntilNotInWorkingHypotheisWithBlock:v71];
        v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:locations copyItems:0];
        [(RTVisitPipelineModuleSCI *)self processPoints:v24];

        visit = [v10 visit];
        exit = [visit exit];
        if (exit)
        {
          v27 = exit;
          isInWorkingHypothesis = [(RTVisitPipelineModuleSCI *)self isInWorkingHypothesis];

          if (!isInWorkingHypothesis)
          {
            goto LABEL_30;
          }

          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v29 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_28;
            }

            v30 = NSStringFromSelector(a2);
            stateMachineConfidenceString2 = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
            *buf = 138412546;
            v78 = v30;
            v79 = 2112;
            v80 = stateMachineConfidenceString2;
            v32 = v29;
            v33 = "%@, in cluster is terminated and we are still in working hypothesis, %@";
            goto LABEL_34;
          }

          goto LABEL_29;
        }
      }

LABEL_30:

      ++v9;
    }

    while (v7 != v9);
    v38 = [obj countByEnumeratingWithState:&v72 objects:v85 count:16];
    v7 = v38;
  }

  while (v38);
LABEL_36:

  if ([(RTVisitSCIStayCluster *)self->_workingHypothesis numOfResiduePoints]&& [(RTVisitPipelineModuleSCI *)self isVisitInFlight])
  {
    if ([(NSMutableArray *)self->_clusters count])
    {
      lastObject = [(NSMutableArray *)self->_clusters lastObject];
      visit2 = [lastObject visit];
      exit2 = [visit2 exit];

      if (exit2)
      {
        v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v78 = "[RTVisitPipelineModuleSCI process:]";
          v79 = 1024;
          LODWORD(v80) = 1295;
          _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "unexpected in flight points (in %s:%d)", buf, 0x12u);
        }
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v43 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        v60 = NSStringFromSelector(a2);
        numOfResiduePoints = [(RTVisitSCIStayCluster *)self->_workingHypothesis numOfResiduePoints];
        stateMachineConfidenceString3 = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
        *buf = 138412802;
        v78 = v60;
        v79 = 2048;
        v80 = numOfResiduePoints;
        v81 = 2112;
        v82 = stateMachineConfidenceString3;
        _os_log_debug_impl(&dword_2304B3000, v43, OS_LOG_TYPE_DEBUG, "%@, add partial visit to capture %lu in flight points, %@", buf, 0x20u);
      }
    }

    [(RTVisitPipelineModuleSCI *)self addVisitFromWorkingHypothesis:1 confidence:*MEMORY[0x277D01470]];
  }

  v44 = self->_clusters;
  v45 = objc_opt_new();
  clusters = self->_clusters;
  self->_clusters = v45;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v44 = v44;
    v47 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v67 objects:v76 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v68;
      v50 = MEMORY[0x277D86220];
      do
      {
        v51 = 0;
        do
        {
          if (*v68 != v49)
          {
            objc_enumerationMutation(v44);
          }

          v52 = *(*(&v67 + 1) + 8 * v51);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            v53 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
            {
              v54 = NSStringFromSelector(a2);
              v55 = objc_opt_class();
              v56 = NSStringFromClass(v55);
              stateMachineConfidenceString4 = [(RTVisitPipelineModuleSCI *)self stateMachineConfidenceString];
              *buf = 138413059;
              v78 = v54;
              v79 = 2112;
              v80 = v56;
              v81 = 2117;
              v82 = v52;
              v83 = 2112;
              v84 = stateMachineConfidenceString4;
              v58 = stateMachineConfidenceString4;
              _os_log_debug_impl(&dword_2304B3000, v53, OS_LOG_TYPE_DEBUG, "%@, %@ adding to output clusters, %{sensitive}@, %@", buf, 0x2Au);
            }
          }

          ++v51;
        }

        while (v48 != v51);
        v48 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v48);
    }
  }

  processCopy = v63;
LABEL_63:

  return v44;
}

uint64_t __36__RTVisitPipelineModuleSCI_process___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 80) potentialEntry];
  LODWORD(v2) = [v2 isExitDateBeforeDate:v3];

  if (v2)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[RTVisitPipelineModuleSCI process:]_block_invoke";
      v11 = 1024;
      v12 = 1279;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "working hypothesis is in the future (in %s:%d)", &v9, 0x12u);
    }
  }

  v5 = *(a1 + 32);
  v6 = [*(*(a1 + 40) + 80) potentialEntry];
  v7 = [v5 isDateInside:v6];

  return v7;
}

@end