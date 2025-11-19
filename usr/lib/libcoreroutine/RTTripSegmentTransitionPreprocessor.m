@interface RTTripSegmentTransitionPreprocessor
- (BOOL)_areTwoVisitsSame:(id)a3 firstVisitLocation:(id)a4 secondLearnedLOI:(id)a5 secondVisitLocation:(id)a6;
- (BOOL)applyElevationAdjustmentToLoiLocations;
- (BOOL)createContrivedTransitionToCurrentVisit;
- (BOOL)isVisitCompoundingEnabled;
- (RTTripSegmentTransitionPreprocessor)initWithMotionActivityManager:(id)a3 locationManager:(id)a4 learnedLocationManager:(id)a5 vehicleStore:(id)a6 distanceCalculator:(id)a7 visitManager:(id)a8 elevationAdjuster:(id)a9 defaultsManager:(id)a10;
- (id)applyRule_LoiVisitsAreValid_ForVisitAtIndex:(id)a3;
- (id)applyRule_LongVisitsAreValid_ForVisitAtIndex:(id)a3;
- (id)applyRule_ShortVisitsAreInvalid_ForVisitAtIndex:(id)a3;
- (id)applyRule_VehicleConnectionCannotSpanVisits_ForVisitAtIndex:(id)a3;
- (id)applyRule_VisitsPredominantlyDrivingAreInvalid_ForVisitAtIndex:(id)a3;
- (id)applyRule_highAverageSpeedTransitionsAreInvalid_ForTransitionAtIndex:(id)a3;
- (id)applyRule_largeDistanceTransitionsAreInvalid_ForTransitionAtIndex:(id)a3;
- (id)applyRule_longTransitionsAreInvalid_ForTransitionAtIndex:(id)a3;
- (id)applyRule_shortTransitionsAreInvalid_ForTransitionAtIndex:(id)a3;
- (id)estimateExitTimestampAtOrigin:(id)a3 startLoiLocation:(id)a4 startBreadcrumbDistance:(double)a5 error:(id *)a6;
- (id)fetchEndpointCLLocationForTransition:(id)a3 atOrigin:(BOOL)a4;
- (id)fetchLearnedLocationOfInterestForVisitIdentifier:(id)a3 outLearnedVisitLocation:(id *)a4;
- (id)fetchLearnedLocationOfInterestWithinDistance:(double)a3 location:(id)a4;
- (id)mergeTransition:(id)a3 withSecond:(id)a4;
- (id)processTransitions:(id)a3;
- (int)_visitCompoundingLoopbackCheckDurationSec;
- (int64_t)_isVisitCompoundingLeadingToLoopbackTransition:(int64_t)a3 currentVisitStatus:(id)a4;
- (unint64_t)_visitCompoundingShortVisitDurationSec;
- (unint64_t)getLocationLookbackSeconds;
- (unint64_t)maxAdjacentVisitsToCompound;
- (void)_addCompoundedVisitInterval:(id)a3;
- (void)adjustTransitionEndpoints;
- (void)appendTransitionToCurrentVisit;
- (void)tryCompoundingVisits;
- (void)tryDeleteTransitions;
- (void)tryMergeTransitions;
@end

@implementation RTTripSegmentTransitionPreprocessor

- (RTTripSegmentTransitionPreprocessor)initWithMotionActivityManager:(id)a3 locationManager:(id)a4 learnedLocationManager:(id)a5 vehicleStore:(id)a6 distanceCalculator:(id)a7 visitManager:(id)a8 elevationAdjuster:(id)a9 defaultsManager:(id)a10
{
  v16 = a3;
  v17 = a4;
  v41 = a5;
  v40 = a6;
  v39 = a7;
  v38 = a8;
  v37 = a9;
  v18 = a10;
  v36 = v18;
  v34 = v17;
  if (!v16)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v32 = "Invalid parameter not satisfying: motionActivityManager";
LABEL_28:
    _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, v32, buf, 2u);
    goto LABEL_29;
  }

  if (!v17)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v32 = "Invalid parameter not satisfying: locationManager";
    goto LABEL_28;
  }

  if (!v41)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v32 = "Invalid parameter not satisfying: learnedLocationManager";
    goto LABEL_28;
  }

  if (!v40)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v32 = "Invalid parameter not satisfying: vehicleStore";
    goto LABEL_28;
  }

  if (!v39)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v32 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_28;
  }

  if (!v38)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v32 = "Invalid parameter not satisfying: visitManager";
    goto LABEL_28;
  }

  if (!v37)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v32 = "Invalid parameter not satisfying: elevationAdjuster";
    goto LABEL_28;
  }

  if (!v18)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v32 = "Invalid parameter not satisfying: defaultsManager";
      goto LABEL_28;
    }

LABEL_29:

    v30 = 0;
    v29 = self;
    goto LABEL_30;
  }

  v42.receiver = self;
  v42.super_class = RTTripSegmentTransitionPreprocessor;
  v19 = [(RTTripSegmentTransitionPreprocessor *)&v42 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_motionActivityManager, a3);
    objc_storeStrong(&v20->_locationManager, a4);
    objc_storeStrong(&v20->_learnedLocationManager, a5);
    objc_storeStrong(&v20->_vehicleStore, a6);
    objc_storeStrong(&v20->_distanceCalculator, a7);
    objc_storeStrong(&v20->_visitManager, a8);
    objc_storeStrong(&v20->_elevationAdjuster, a9);
    objc_storeStrong(&v20->_defaultsManager, a10);
    v21 = [MEMORY[0x277CBEB18] array];
    tripSegmentTransitions = v20->_tripSegmentTransitions;
    v20->_tripSegmentTransitions = v21;

    v23 = [MEMORY[0x277CBEB18] array];
    tripSegmentVisitStatus = v20->_tripSegmentVisitStatus;
    v20->_tripSegmentVisitStatus = v23;

    v25 = [MEMORY[0x277CBEB18] array];
    tripSegmentTransitionStatus = v20->_tripSegmentTransitionStatus;
    v20->_tripSegmentTransitionStatus = v25;

    v27 = [MEMORY[0x277CBEB38] dictionary];
    transitionStartStopLocations = v20->_transitionStartStopLocations;
    v20->_transitionStartStopLocations = v27;
  }

  v29 = v20;
  v30 = v29;
LABEL_30:

  return v30;
}

- (id)processTransitions:(id)a3
{
  v100[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mutableCopy];
  tripSegmentTransitions = self->_tripSegmentTransitions;
  self->_tripSegmentTransitions = v5;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v36 = [(NSMutableArray *)self->_tripSegmentTransitions count];
      *buf = 134217984;
      v93 = v36;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: processing %tu input transitions", buf, 0xCu);
    }
  }

  v90 = v4;
  if ([v4 count])
  {
    v8 = 0;
    v9 = MEMORY[0x277D86220];
    do
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = [v90 objectAtIndexedSubscript:v8];
          *buf = 134218242;
          v93 = v8;
          v94 = 2112;
          v95 = v11;
          _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor, input transition, %ld, %@", buf, 0x16u);
        }

        v4 = v90;
      }

      ++v8;
    }

    while (v8 < [v4 count]);
  }

  if ([(NSMutableArray *)self->_tripSegmentTransitions count]< 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v85 = [(NSMutableArray *)self->_tripSegmentTransitions count];
        *buf = 134217984;
        v93 = v85;
        _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: _tripSegmentTransitions.count == %tu, returning", buf, 0xCu);
      }
    }

    v13 = self->_tripSegmentTransitions;
    goto LABEL_81;
  }

  v14 = [MEMORY[0x277CBEAA8] date];
  v15 = [(RTTripSegmentTransitionPreprocessor *)self _visitCompoundingShortVisitDurationSec];
  v16 = [(NSMutableArray *)self->_tripSegmentTransitions lastObject];
  v17 = [v16 stopDate];
  v89 = v14;
  [v14 timeIntervalSinceDate:v17];
  v19 = v18;

  if (v19 <= 259200.0)
  {
    v20 = [MEMORY[0x277CCAB58] indexSet];
    [v20 addIndex:[(NSMutableArray *)self->_tripSegmentTransitions count]- 1];
    v21 = [v4 count] - 2;
    if (v21 >= 0)
    {
      while ([v20 count]< 4)
      {
        v22 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v21];
        v23 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v21 + 1];
        v24 = v23;
        if (v22)
        {
          v25 = v23 == 0;
        }

        else
        {
          v25 = 1;
        }

        if (v25 || (-[NSObject stopDate](v22, "stopDate"), (v26 = objc_claimAutoreleasedReturnValue()) == 0) || (v27 = v26, [v24 startDate], v28 = objc_claimAutoreleasedReturnValue(), v28, v27, !v28))
        {
          v35 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349056;
            v93 = v21;
            _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor,pre tryCompounding,visit timestamps null,transition index,%{public}ld", buf, 0xCu);
          }

          goto LABEL_45;
        }

        v29 = objc_alloc(MEMORY[0x277CCA970]);
        v30 = [v22 stopDate];
        v31 = [v24 startDate];
        v32 = [v29 initWithStartDate:v30 endDate:v31];

        [v32 duration];
        if (v15 < v33)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v38 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              *buf = 134349056;
              v93 = v21;
              _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "RTTripSegmentTransitionPreprocessor,pre tryCompounding,found long duration visit,transitions index,%{public}ld", buf, 0xCu);
            }
          }

LABEL_45:
          goto LABEL_46;
        }

        if (v21-- <= 0)
        {
          goto LABEL_47;
        }
      }

      [v20 removeAllIndexes];
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_47;
      }

      v22 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v37 = [v20 count];
        *buf = 134349056;
        v93 = v37;
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "RTTripSegmentTransitionPreprocessor,pre tryCompounding,large num of terminal short duration visits,%{public}lu", buf, 0xCu);
      }

LABEL_46:
    }

LABEL_47:
    if (v20 && [v20 count])
    {
      [(NSMutableArray *)self->_tripSegmentTransitions removeObjectsAtIndexes:v20];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v39 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = [v20 count];
          v41 = [(NSMutableArray *)self->_tripSegmentTransitions count];
          *buf = 134349312;
          v93 = v40;
          v94 = 2050;
          v95 = v41;
          _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "RTTripSegmentTransitionPreprocessor,pre tryCompounding,number of terminal transitions removed,%{public}lu,transitions to process,%{public}lu", buf, 0x16u);
        }
      }

      [v20 removeAllIndexes];
    }

    goto LABEL_54;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "RTTripSegmentTransitionPreprocessor,pre tryCompounding,last transition > 3 days old, processing all transitions", buf, 2u);
    }

LABEL_54:
  }

  v42 = NSStringFromSelector(sel_applyRule_LoiVisitsAreValid_ForVisitAtIndex_);
  v100[0] = v42;
  v43 = NSStringFromSelector(sel_applyRule_LongVisitsAreValid_ForVisitAtIndex_);
  v100[1] = v43;
  v44 = NSStringFromSelector(sel_applyRule_ShortVisitsAreInvalid_ForVisitAtIndex_);
  v100[2] = v44;
  v45 = NSStringFromSelector(sel_applyRule_VehicleConnectionCannotSpanVisits_ForVisitAtIndex_);
  v100[3] = v45;
  v46 = NSStringFromSelector(sel_applyRule_VisitsPredominantlyDrivingAreInvalid_ForVisitAtIndex_);
  v100[4] = v46;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:5];

  [(NSMutableArray *)self->_tripSegmentVisitStatus removeAllObjects];
  if ([(NSMutableArray *)self->_tripSegmentTransitions count]!= 1)
  {
    v70 = 0;
    v71 = MEMORY[0x277D86220];
    do
    {
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        v72 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
        {
          v88 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v70];
          v81 = [v88 stopDate];
          v87 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v70 + 1];
          v82 = [v87 startDate];
          v83 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v70];
          v84 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v70 + 1];
          *buf = 138413058;
          v93 = v81;
          v94 = 2112;
          v95 = v82;
          v96 = 2112;
          v97 = v83;
          v98 = 2112;
          v99 = v84;
          _os_log_debug_impl(&dword_2304B3000, v72, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: examining visit between dates: %@ and %@, for transitions, %@ and %@", buf, 0x2Au);
        }
      }

      tripSegmentVisitStatus = self->_tripSegmentVisitStatus;
      v74 = [MEMORY[0x277CCABB0] numberWithInteger:0];
      [(NSMutableArray *)tripSegmentVisitStatus addObject:v74];

      if ([v47 count])
      {
        v75 = 0;
        while (1)
        {
          v76 = [v47 objectAtIndexedSubscript:v75];
          v77 = NSSelectorFromString(v76);
          v78 = [MEMORY[0x277CCABB0] numberWithInteger:v70];
          v79 = [(RTTripSegmentTransitionPreprocessor *)self performSelector:v77 withObject:v78];

          v80 = [MEMORY[0x277CCABB0] numberWithInteger:0];

          if (v79 != v80)
          {
            break;
          }

          if (++v75 >= [v47 count])
          {
            goto LABEL_95;
          }
        }

        [(NSMutableArray *)self->_tripSegmentVisitStatus setObject:v79 atIndexedSubscript:v70];
      }

LABEL_95:
      ++v70;
    }

    while (v70 < [(NSMutableArray *)self->_tripSegmentTransitions count]- 1);
  }

  [(RTTripSegmentTransitionPreprocessor *)self tryCompoundingVisits];
  [(RTTripSegmentTransitionPreprocessor *)self tryMergeTransitions];
  [(RTTripSegmentTransitionPreprocessor *)self appendTransitionToCurrentVisit];
  [(RTTripSegmentTransitionPreprocessor *)self adjustTransitionEndpoints];
  v48 = NSStringFromSelector(sel_applyRule_shortTransitionsAreInvalid_ForTransitionAtIndex_);
  v91[0] = v48;
  v49 = NSStringFromSelector(sel_applyRule_longTransitionsAreInvalid_ForTransitionAtIndex_);
  v91[1] = v49;
  v50 = NSStringFromSelector(sel_applyRule_largeDistanceTransitionsAreInvalid_ForTransitionAtIndex_);
  v91[2] = v50;
  v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:3];

  [(NSMutableArray *)self->_tripSegmentTransitionStatus removeAllObjects];
  if ([(NSMutableArray *)self->_tripSegmentTransitions count])
  {
    v52 = 0;
    v53 = MEMORY[0x277D86220];
    do
    {
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        v54 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          v63 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v52];
          *buf = 138412290;
          v93 = v63;
          _os_log_debug_impl(&dword_2304B3000, v54, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: examining transition %@", buf, 0xCu);
        }
      }

      tripSegmentTransitionStatus = self->_tripSegmentTransitionStatus;
      v56 = [MEMORY[0x277CCABB0] numberWithInteger:0];
      [(NSMutableArray *)tripSegmentTransitionStatus addObject:v56];

      if ([v51 count])
      {
        v57 = 0;
        while (1)
        {
          v58 = [v51 objectAtIndexedSubscript:v57];
          v59 = NSSelectorFromString(v58);
          v60 = [MEMORY[0x277CCABB0] numberWithInteger:v52];
          v61 = [(RTTripSegmentTransitionPreprocessor *)self performSelector:v59 withObject:v60];

          v62 = [MEMORY[0x277CCABB0] numberWithInteger:0];

          if (v61 != v62)
          {
            break;
          }

          if (++v57 >= [v51 count])
          {
            goto LABEL_68;
          }
        }

        [(NSMutableArray *)self->_tripSegmentTransitionStatus setObject:v61 atIndexedSubscript:v52];
      }

LABEL_68:
      ++v52;
    }

    while (v52 < [(NSMutableArray *)self->_tripSegmentTransitions count]);
  }

  [(RTTripSegmentTransitionPreprocessor *)self tryDeleteTransitions];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v64 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      v86 = [(NSMutableArray *)self->_tripSegmentTransitions count];
      *buf = 134217984;
      v93 = v86;
      _os_log_debug_impl(&dword_2304B3000, v64, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: produced %tu output transitions", buf, 0xCu);
    }
  }

  if ([(NSMutableArray *)self->_tripSegmentTransitions count])
  {
    v65 = 0;
    v66 = MEMORY[0x277D86220];
    do
    {
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        v67 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
        {
          v68 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v65];
          *buf = 134218242;
          v93 = v65;
          v94 = 2112;
          v95 = v68;
          _os_log_debug_impl(&dword_2304B3000, v67, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor, output transition, %ld, %@", buf, 0x16u);
        }
      }

      ++v65;
    }

    while (v65 < [(NSMutableArray *)self->_tripSegmentTransitions count]);
  }

  v13 = self->_tripSegmentTransitions;

  v4 = v90;
LABEL_81:

  return v13;
}

- (void)tryMergeTransitions
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_tripSegmentTransitions copy];
  v4 = [(NSMutableArray *)self->_tripSegmentVisitStatus count];
  if (v4 != [v3 count] - 1)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v28 = [(NSMutableArray *)self->_tripSegmentVisitStatus count];
      *buf = 134218240;
      v32 = v28;
      v33 = 2048;
      v34 = [v3 count];
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor:updateTransitions, unexpected size for _tripSegmentVisitStatus, %tu, and transitions, %tu", buf, 0x16u);
    }

    goto LABEL_25;
  }

  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v26 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2304B3000, v26, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor:updateTransitions, transitions nil, returning", buf, 2u);
      }
    }

    v25 = 0;
    goto LABEL_32;
  }

  if (![v3 count])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_26;
    }

    v24 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v32 = [v3 count];
      _os_log_debug_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor:updateTransitions, size %tu < 1", buf, 0xCu);
    }

LABEL_25:

LABEL_26:
    v25 = [v3 mutableCopy];
LABEL_32:
    tripSegmentTransitions = self->_tripSegmentTransitions;
    self->_tripSegmentTransitions = v25;

    goto LABEL_33;
  }

  [(NSMutableArray *)self->_tripSegmentTransitions removeAllObjects];
  v5 = self->_tripSegmentTransitions;
  v6 = [v3 objectAtIndexedSubscript:0];
  [(NSMutableArray *)v5 addObject:v6];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v29 = [(NSMutableArray *)self->_tripSegmentTransitions lastObject];
      *buf = 138412290;
      v32 = v29;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: initializing with transition %@", buf, 0xCu);
    }
  }

  if ([v3 count] >= 2)
  {
    v9 = MEMORY[0x277D86220];
    v10 = 1;
    *&v8 = 138412290;
    v30 = v8;
    do
    {
      v11 = [(NSMutableArray *)self->_tripSegmentVisitStatus objectAtIndexedSubscript:v10 - 1, v30];
      v12 = [v11 integerValue];

      v13 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
      if (v12 == 2)
      {
        if (v13)
        {
          v14 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v21 = [(NSMutableArray *)self->_tripSegmentTransitions lastObject];
            v22 = [v3 objectAtIndexedSubscript:v10];
            *buf = 138412546;
            v32 = v21;
            v33 = 2112;
            v34 = v22;
            _os_log_debug_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: merging transition %@ with %@", buf, 0x16u);
          }
        }

        v15 = [(NSMutableArray *)self->_tripSegmentTransitions lastObject];
        v16 = [v3 objectAtIndexedSubscript:v10];
        v17 = [(RTTripSegmentTransitionPreprocessor *)self mergeTransition:v15 withSecond:v16];

        [(NSMutableArray *)self->_tripSegmentTransitions removeLastObject];
        v18 = self->_tripSegmentTransitions;
      }

      else
      {
        if (v13)
        {
          v19 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v23 = [v3 objectAtIndexedSubscript:v10];
            *buf = v30;
            v32 = v23;
            _os_log_debug_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: retaining transition %@", buf, 0xCu);
          }
        }

        v20 = self->_tripSegmentTransitions;
        v17 = [v3 objectAtIndexedSubscript:v10];
        v18 = v20;
      }

      [(NSMutableArray *)v18 addObject:v17];

      ++v10;
    }

    while (v10 < [v3 count]);
  }

LABEL_33:
}

- (void)tryDeleteTransitions
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_tripSegmentTransitions copy];
  v4 = [(NSMutableArray *)self->_tripSegmentTransitionStatus count];
  if (v4 != [v3 count])
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = [(NSMutableArray *)self->_tripSegmentTransitionStatus count];
      *buf = 134218240;
      v23 = v20;
      v24 = 2048;
      v25 = [v3 count];
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor:updateTransitions, unexpected size for _tripSegmentTransitionStatus, %tu, and transitions, %tu", buf, 0x16u);
    }

    v17 = [v3 mutableCopy];
    goto LABEL_25;
  }

  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor:updateTransitions, transitions nil, returning", buf, 2u);
      }
    }

    v17 = 0;
LABEL_25:
    tripSegmentTransitions = self->_tripSegmentTransitions;
    self->_tripSegmentTransitions = v17;

    goto LABEL_26;
  }

  [(NSMutableArray *)self->_tripSegmentTransitions removeAllObjects];
  if ([v3 count])
  {
    v6 = 0;
    v7 = MEMORY[0x277D86220];
    *&v5 = 138412290;
    v21 = v5;
    while (1)
    {
      v8 = [(NSMutableArray *)self->_tripSegmentTransitionStatus objectAtIndexedSubscript:v6, v21];
      v9 = [v8 integerValue];

      v10 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
      if (v9 != 2)
      {
        break;
      }

      if (v10)
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = [v3 objectAtIndexedSubscript:v6];
          *buf = v21;
          v23 = v12;
          _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: rejecting transition %@", buf, 0xCu);
        }

LABEL_14:
      }

      if (++v6 >= [v3 count])
      {
        goto LABEL_26;
      }
    }

    if (v10)
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = [v3 objectAtIndexedSubscript:v6];
        *buf = v21;
        v23 = v15;
        _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: retaining transition %@", buf, 0xCu);
      }
    }

    v14 = self->_tripSegmentTransitions;
    v11 = [v3 objectAtIndexedSubscript:v6];
    [(NSMutableArray *)v14 addObject:v11];
    goto LABEL_14;
  }

LABEL_26:
}

- (id)mergeTransition:(id)a3 withSecond:(id)a4
{
  v57[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v41 = a4;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__138;
  v50 = __Block_byref_object_dispose__138;
  v51 = 0;
  v7 = dispatch_semaphore_create(0);
  motionActivityManager = self->_motionActivityManager;
  v9 = [v6 startDate];
  v10 = [v41 stopDate];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __66__RTTripSegmentTransitionPreprocessor_mergeTransition_withSecond___block_invoke;
  v42[3] = &unk_2788C4528;
  v44 = &v52;
  v45 = &v46;
  v11 = v7;
  v43 = v11;
  [(RTMotionActivityManager *)motionActivityManager fetchPredominantMotionActivityTypeFromStartDate:v9 toEndDate:v10 withHandler:v42];

  v12 = (v47 + 5);
  obj = v47[5];
  v13 = v11;
  v14 = [MEMORY[0x277CBEAA8] now];
  v15 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v13, v15))
  {
    v16 = [MEMORY[0x277CBEAA8] now];
    [v16 timeIntervalSinceDate:v14];
    v18 = v17;
    v19 = objc_opt_new();
    v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_113];
    v21 = [MEMORY[0x277CCACC8] callStackSymbols];
    v22 = [v21 filteredArrayUsingPredicate:v20];
    v23 = [v22 firstObject];

    [v19 submitToCoreAnalytics:v23 type:1 duration:v18];
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v25 = MEMORY[0x277CCA9B8];
    v57[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v57 count:1];
    v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v26];

    if (v27)
    {
      v28 = v27;

      obj = v27;
    }
  }

  objc_storeStrong(v12, obj);
  v29 = [RTLearnedTransition alloc];
  v30 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v31 = [v6 startDate];
  v32 = [v41 stopDate];
  v33 = [v6 visitIdentifierOrigin];
  v34 = [v41 visitIdentifierDestination];
  v35 = [v6 creationDate];
  v36 = [v6 expirationDate];
  v37 = [(RTLearnedTransition *)v29 initWithIdentifier:v30 startDate:v31 stopDate:v32 visitIdentifierOrigin:v33 visitIdentifierDestination:v34 creationDate:v35 expirationDate:v36 predominantMotionActivityType:v53[3]];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = v37;
      _os_log_debug_impl(&dword_2304B3000, v38, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: merging transitions into, %@", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v52, 8);

  return v37;
}

void __66__RTTripSegmentTransitionPreprocessor_mergeTransition_withSecond___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor: Failed to fetch motion activities, error, %@, using RTMotionActivityTypeUnknown", &v11, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v11 = 134217984;
        v12 = a2;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "RTTripSegmentTransitionPreprocessor: Predominant motion activity, %lu", &v11, 0xCu);
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)applyRule_LongVisitsAreValid_ForVisitAtIndex:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = [a3 integerValue];
  if (v5 >= [(NSMutableArray *)self->_tripSegmentTransitions count]- 1)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v32 = [(NSMutableArray *)self->_tripSegmentTransitions count];
      v33 = 134218240;
      v34 = v5;
      v35 = 2048;
      v36 = v32 - 2;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor: visitIndex, %ld, out of range [0, %tu]. Passthrough", &v33, 0x16u);
    }

    goto LABEL_10;
  }

  v6 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
  v7 = [v6 stopDate];
  v8 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5 + 1];
  v9 = [v8 startDate];
  v10 = [v7 isBeforeDate:v9];

  if ((v10 & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    v22 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = NSStringFromSelector(a2);
      v27 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
      v28 = [v27 stopDate];
      v29 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5 + 1];
      v30 = [v29 startDate];
      v33 = 138413314;
      v34 = v25;
      v35 = 2112;
      v36 = v26;
      v37 = 2048;
      v38 = v5;
      v39 = 2112;
      v40 = v28;
      v41 = 2112;
      v42 = v30;
      _os_log_debug_impl(&dword_2304B3000, v22, OS_LOG_TYPE_DEBUG, "%@:%@, malformed transition, tripSegmentVisitStatus[%ld], start/stop dates: %@, %@, Passthrough", &v33, 0x34u);
    }

LABEL_10:

LABEL_11:
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    goto LABEL_23;
  }

  v11 = objc_alloc(MEMORY[0x277CCA970]);
  v12 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
  v13 = [v12 stopDate];
  v14 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5 + 1];
  v15 = [v14 startDate];
  v16 = [v11 initWithStartDate:v13 endDate:v15];

  [v16 duration];
  v18 = v17;
  v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v18 <= 7200.0)
  {
    if (!v19)
    {
      v21 = 0;
      goto LABEL_22;
    }

    v20 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v33 = 134217984;
      v34 = v5;
      _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: applyRule_LongVisitsAreValid_ForVisitAtIndex, tripSegmentVisitStatus[%ld], Passthrough", &v33, 0xCu);
    }

    v21 = 0;
  }

  else
  {
    if (!v19)
    {
      v21 = 1;
      goto LABEL_22;
    }

    v20 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v33 = 134217984;
      v34 = v5;
      _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: applyRule_LongVisitsAreValid_ForVisitAtIndex, tripSegmentVisitStatus[%ld], Accept", &v33, 0xCu);
    }

    v21 = 1;
  }

LABEL_22:
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:v21];

LABEL_23:

  return v23;
}

- (id)applyRule_ShortVisitsAreInvalid_ForVisitAtIndex:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = [a3 integerValue];
  if (v5 >= [(NSMutableArray *)self->_tripSegmentTransitions count]- 1)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v32 = [(NSMutableArray *)self->_tripSegmentTransitions count];
      v33 = 134218240;
      v34 = v5;
      v35 = 2048;
      v36 = v32 - 2;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor: visitIndex, %ld, out of range [0, %tu]. Passthrough", &v33, 0x16u);
    }

    goto LABEL_9;
  }

  v6 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
  v7 = [v6 stopDate];
  v8 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5 + 1];
  v9 = [v8 startDate];
  v10 = [v7 isBeforeDate:v9];

  if ((v10 & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_10;
    }

    v22 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = NSStringFromSelector(a2);
      v27 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
      v28 = [v27 stopDate];
      v29 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5 + 1];
      v30 = [v29 startDate];
      v33 = 138413314;
      v34 = v25;
      v35 = 2112;
      v36 = v26;
      v37 = 2048;
      v38 = v5;
      v39 = 2112;
      v40 = v28;
      v41 = 2112;
      v42 = v30;
      _os_log_debug_impl(&dword_2304B3000, v22, OS_LOG_TYPE_DEBUG, "%@:%@, malformed transition, tripSegmentVisitStatus[%ld], start/stop dates: %@, %@, Passthrough", &v33, 0x34u);
    }

LABEL_9:

LABEL_10:
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    goto LABEL_22;
  }

  v11 = objc_alloc(MEMORY[0x277CCA970]);
  v12 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
  v13 = [v12 stopDate];
  v14 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5 + 1];
  v15 = [v14 startDate];
  v16 = [v11 initWithStartDate:v13 endDate:v15];

  [v16 duration];
  v18 = v17;
  v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v18 >= 120.0)
  {
    if (!v19)
    {
      v21 = 0;
      goto LABEL_21;
    }

    v20 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v33 = 134217984;
      v34 = v5;
      _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: applyRule_ShortVisitsAreInvalid_ForVisitAtIndex, tripSegmentVisitStatus[%ld], Passthrough", &v33, 0xCu);
    }

    v21 = 0;
  }

  else
  {
    if (!v19)
    {
      v21 = 2;
      goto LABEL_21;
    }

    v20 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    v21 = 2;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v33 = 134217984;
      v34 = v5;
      v21 = 2;
      _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: applyRule_ShortVisitsAreInvalid_ForVisitAtIndex, tripSegmentVisitStatus[%ld], Reject", &v33, 0xCu);
    }
  }

LABEL_21:
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:v21];

LABEL_22:

  return v23;
}

- (BOOL)isVisitCompoundingEnabled
{
  v2 = [(RTTripSegmentTransitionPreprocessor *)self defaultsManager];
  v3 = [v2 objectForKey:@"RTDefaultsTripSegmentEnableVisitBasedCompounding"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)_visitCompoundingLoopbackCheckDurationSec
{
  v2 = [(RTTripSegmentTransitionPreprocessor *)self defaultsManager];
  v3 = [v2 objectForKey:@"RTDefaultsTripSegmentCompoundingLoopbackCheckDuration"];

  if (v3)
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 7200;
  }

  return v4;
}

- (unint64_t)_visitCompoundingShortVisitDurationSec
{
  v2 = [(RTTripSegmentTransitionPreprocessor *)self defaultsManager];
  v3 = [v2 objectForKey:@"RTDefaultsTripSegmentVisitCompoundingShortVisitDuration"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 900;
  }

  return v4;
}

- (unint64_t)maxAdjacentVisitsToCompound
{
  v2 = [(RTTripSegmentTransitionPreprocessor *)self defaultsManager];
  v3 = [v2 objectForKey:@"RTDefaultsTripSegmentMaxAdjacentVisitsToCompound"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_addCompoundedVisitInterval:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[RTTripSegmentTransitionPreprocessor _addCompoundedVisitInterval:]";
      v11 = 1024;
      v12 = 462;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: compoundedVisitInterval (in %s:%d)", &v9, 0x12u);
    }
  }

  compoundedVisitIntervals = self->_compoundedVisitIntervals;
  if (!compoundedVisitIntervals)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = self->_compoundedVisitIntervals;
    self->_compoundedVisitIntervals = v7;

    compoundedVisitIntervals = self->_compoundedVisitIntervals;
  }

  [(NSMutableArray *)compoundedVisitIntervals addObject:v4];
}

- (void)tryCompoundingVisits
{
  v73 = *MEMORY[0x277D85DE8];
  if ([(RTTripSegmentTransitionPreprocessor *)self isVisitCompoundingEnabled])
  {
    compoundedVisitIntervals = self->_compoundedVisitIntervals;
    if (compoundedVisitIntervals)
    {
      [(NSMutableArray *)compoundedVisitIntervals removeAllObjects];
      v4 = self->_compoundedVisitIntervals;
      self->_compoundedVisitIntervals = 0;
    }

    tripSegmentTransitions = self->_tripSegmentTransitions;
    if (!tripSegmentTransitions || [(NSMutableArray *)tripSegmentTransitions count]<= 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = [(NSMutableArray *)self->_tripSegmentTransitions count];
          *buf = 134349056;
          v64 = v7;
          _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "RTTripSegmentTransitionPreprocessor,tryCompoundingVisits,not enough transitions to compound,%{public}lu", buf, 0xCu);
        }

        goto LABEL_57;
      }

      return;
    }

    v8 = [(NSMutableArray *)self->_tripSegmentVisitStatus count];
    if (v8 != [(NSMutableArray *)self->_tripSegmentTransitions count]- 1)
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v48 = [(NSMutableArray *)self->_tripSegmentVisitStatus count];
        v49 = [(NSMutableArray *)self->_tripSegmentTransitions count];
        *buf = 134349312;
        v64 = v48;
        v65 = 2050;
        v66 = v49;
        _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor,tryCompoundingVisits,unexpected size for _tripSegmentVisitStatus,%{public}lu,and _tripSegmentTransitions,%{public}lu", buf, 0x16u);
      }

      goto LABEL_57;
    }

    v6 = [(NSMutableArray *)self->_tripSegmentVisitStatus mutableCopy];
    v59 = [(RTTripSegmentTransitionPreprocessor *)self maxAdjacentVisitsToCompound];
    v57 = [(RTTripSegmentTransitionPreprocessor *)self _visitCompoundingShortVisitDurationSec];
    if ([(NSMutableArray *)self->_tripSegmentTransitions count]== 1)
    {
      goto LABEL_57;
    }

    v61 = 0;
    v9 = 0;
    v10 = MEMORY[0x277D86220];
    v58 = v6;
    while (1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v41 = [(NSMutableArray *)self->_tripSegmentTransitions count];
          *buf = 134349312;
          v64 = v9;
          v65 = 2050;
          v66 = v41;
          _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "tryCompoundingVisits,tId,%{public}ld,count,%{public}lu", buf, 0x16u);
        }
      }

      v12 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v9];
      v13 = [v12 stopDate];
      v60 = v9;
      if (!v13)
      {
LABEL_53:

LABEL_54:
        v50 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v51 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v60];
          v52 = [v51 stopDate];
          v53 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v60 + 1];
          v54 = [v53 startDate];
          *buf = 134349570;
          v64 = v60;
          v65 = 2112;
          v66 = v52;
          v67 = 2112;
          v68 = v54;
          _os_log_error_impl(&dword_2304B3000, v50, OS_LOG_TYPE_ERROR, "tryCompoundingVisits,malformed transition,_tripSegmentTransitions[%{public}ld],start/stop dates,%@,%@", buf, 0x20u);
        }

        v6 = 0;
LABEL_57:

        return;
      }

      v14 = v13;
      v15 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v9 + 1];
      v16 = [v15 startDate];
      if (!v16)
      {

        goto LABEL_53;
      }

      v17 = v16;
      v18 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v9];
      v19 = [v18 stopDate];
      v62 = v9 + 1;
      v20 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v9 + 1];
      v21 = [v20 startDate];
      v22 = [v19 isBeforeDate:v21];

      if ((v22 & 1) == 0)
      {
        goto LABEL_54;
      }

      v10 = MEMORY[0x277D86220];
      v23 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v61 < v59)
      {
        break;
      }

      if (v23)
      {
        v30 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        v6 = v58;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349568;
          v64 = v60;
          v65 = 2050;
          v66 = v59;
          v67 = 2050;
          v68 = v61;
          _os_log_debug_impl(&dword_2304B3000, v30, OS_LOG_TYPE_DEBUG, "tryCompoundingVisits,not applicable,maxAdjacentVisitsToCompound limit reached,,tId,%{public}ld,max,%{public}ld,current,%{public}lu", buf, 0x20u);
        }

LABEL_46:
        v61 = 0;
        goto LABEL_47;
      }

      v61 = 0;
      v6 = v58;
LABEL_48:
      v9 = v62;
      if (v62 >= [(NSMutableArray *)self->_tripSegmentTransitions count]- 1)
      {
        goto LABEL_57;
      }
    }

    v6 = v58;
    if (v23)
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v56 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v60];
        v55 = [v56 predominantMotionActivityType];
        v42 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v62];
        v43 = [v42 predominantMotionActivityType];
        v44 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v60];
        v45 = [v44 stopDate];
        v46 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v62];
        v47 = [v46 startDate];
        *buf = 134350082;
        v64 = v60;
        v65 = 2050;
        v66 = v55;
        v67 = 2050;
        v68 = v43;
        v69 = 2112;
        v70 = v45;
        v71 = 2112;
        v72 = v47;
        _os_log_debug_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEBUG, "tryCompoundingVisits,motion,tId,%{public}ld,motion modes,%{public}lu,%{public}lu,stop,%@,next start,%@", buf, 0x34u);

        v10 = MEMORY[0x277D86220];
      }
    }

    v25 = objc_alloc(MEMORY[0x277CCA970]);
    v26 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v60];
    v27 = [v26 stopDate];
    v28 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v62];
    v29 = [v28 startDate];
    v30 = [v25 initWithStartDate:v27 endDate:v29];

    [v30 duration];
    v32 = v31;
    if (v57 < v31)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v33 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349312;
          v64 = v32;
          v65 = 2050;
          v66 = v57;
          _os_log_debug_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEBUG, "tryCompoundingVisits,not applicable,visit duration,%{public}lu > compounding threshold,%{public}lu", buf, 0x16u);
        }
      }

      goto LABEL_46;
    }

    v34 = [(RTTripSegmentTransitionPreprocessor *)self _isVisitCompoundingLeadingToLoopbackTransition:v60 currentVisitStatus:v58];
    if (v34 != 2)
    {
      v39 = v34;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v40 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349312;
          v64 = v60;
          v65 = 1026;
          LODWORD(v66) = v39;
          _os_log_debug_impl(&dword_2304B3000, v40, OS_LOG_TYPE_DEBUG, "tryCompoundingVisits,not applicable,loopback check not cleared,tId,%{public}ld,loopback,%{public}d", buf, 0x12u);
        }
      }

      goto LABEL_46;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v35 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v60];
        v37 = [v36 visitIdentifierDestination];
        *buf = 138412802;
        v64 = v37;
        v65 = 2050;
        v66 = v32;
        v67 = 2050;
        v68 = v60;
        _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "tryCompoundingVisits,applied,visit compounded,%@,visit duration,%{public}lu,tId,%{public}ld", buf, 0x20u);
      }
    }

    v38 = [MEMORY[0x277CCABB0] numberWithInteger:2];
    [v58 setObject:v38 atIndexedSubscript:v60];

    [(RTTripSegmentTransitionPreprocessor *)self _addCompoundedVisitInterval:v30];
    ++v61;
LABEL_47:

    goto LABEL_48;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor,tryCompoundingVisits,not enabled", buf, 2u);
    }

    goto LABEL_57;
  }
}

- (int64_t)_isVisitCompoundingLeadingToLoopbackTransition:(int64_t)a3 currentVisitStatus:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (!v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v57 = "[RTTripSegmentTransitionPreprocessor _isVisitCompoundingLeadingToLoopbackTransition:currentVisitStatus:]";
      *&v57[8] = 1024;
      *&v57[10] = 575;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: currentVisitStatus (in %s:%d)", buf, 0x12u);
    }
  }

  if ([(NSMutableArray *)self->_tripSegmentTransitions count]- 1 <= a3)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v40 = [(NSMutableArray *)self->_tripSegmentTransitions count];
      *buf = 134349312;
      *v57 = a3;
      *&v57[8] = 2050;
      *&v57[10] = v40 - 2;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "_isVisitCompoundingLeadingToLoopbackTransition,%{public}ld,out of range [0, %{public}lu]", buf, 0x16u);
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:a3];
      v10 = [v9 visitIdentifierOrigin];
      v11 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:a3];
      v12 = [v11 visitIdentifierDestination];
      v13 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:a3 + 1];
      v14 = [v13 visitIdentifierDestination];
      *buf = 138412802;
      *v57 = v10;
      *&v57[8] = 2112;
      *&v57[10] = v12;
      v58 = 2112;
      *v59 = v14;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "_isVisitCompoundingLeadingToLoopbackTransition,prevVisitId,%@,currVisit,%@,nextVisit,%@", buf, 0x20u);
    }
  }

  v15 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:a3];
  v16 = [v15 visitIdentifierOrigin];
  v55 = 0;
  v17 = [(RTTripSegmentTransitionPreprocessor *)self fetchLearnedLocationOfInterestForVisitIdentifier:v16 outLearnedVisitLocation:&v55];
  v18 = v55;

  if (v17 | v18)
  {
    v19 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:a3 + 1];
    v20 = [v19 visitIdentifierDestination];
    v54 = 0;
    v21 = [(RTTripSegmentTransitionPreprocessor *)self fetchLearnedLocationOfInterestForVisitIdentifier:v20 outLearnedVisitLocation:&v54];
    v22 = v54;

    v52 = v21;
    if (v21 | v22)
    {
      if ([(RTTripSegmentTransitionPreprocessor *)self _areTwoVisitsSame:v21 firstVisitLocation:v22 secondLearnedLOI:v17 secondVisitLocation:v18])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v23 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_2304B3000, v23, OS_LOG_TYPE_DEBUG, "_isVisitCompoundingLeadingToLoopbackTransition,loopback visit", buf, 2u);
          }

          v24 = 1;
LABEL_72:

          goto LABEL_73;
        }

        v24 = 1;
      }

      else
      {
        v25 = [(RTTripSegmentTransitionPreprocessor *)self _visitCompoundingLoopbackCheckDurationSec];
        v26 = v25;
        if (a3 >= 2 && v25 != -1)
        {
          v27 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:a3];
          v23 = [v27 stopDate];

          if (v23)
          {
            v47 = v26;
            v28 = v26;
            v29 = a3 + 1;
            v24 = 2;
            v48 = v23;
            v49 = v22;
            while (1)
            {
              v51 = v17;
              v30 = v29 - 2;
              v31 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v29 - 2];
              v32 = [v31 stopDate];

              if (!v32)
              {
                v41 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  v46 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v30];
                  *buf = 138412290;
                  *v57 = v46;
                  _os_log_error_impl(&dword_2304B3000, v41, OS_LOG_TYPE_ERROR, "_isVisitCompoundingLeadingToLoopbackTransition,transitionStopTime,nil,transition,%@", buf, 0xCu);
                }

                v24 = 0;
LABEL_52:
                v17 = v51;
                goto LABEL_70;
              }

              v50 = v32;
              [v23 timeIntervalSinceDate:v32];
              v34 = v33;
              v35 = [v6 objectAtIndexedSubscript:v29 - 2];
              v36 = [v35 integerValue];

              if (v36 != 2 || v34 >= v28)
              {
                break;
              }

              v37 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v29 - 2];
              v38 = [v37 visitIdentifierOrigin];
              v53 = 0;
              v39 = [(RTTripSegmentTransitionPreprocessor *)self fetchLearnedLocationOfInterestForVisitIdentifier:v38 outLearnedVisitLocation:&v53];
              v18 = v53;

              if (!(v39 | v18))
              {
                v22 = v49;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v41 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                  v32 = v50;
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                  {
                    v42 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v30];
                    v43 = [v42 visitIdentifierOrigin];
                    *buf = 138412290;
                    *v57 = v43;
                    _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_INFO, "_isVisitCompoundingLeadingToLoopbackTransition,nil learnedLOI,nil visitlocation,visit,%@", buf, 0xCu);

                    v22 = v49;
                  }

                  v24 = 0;
                  v17 = 0;
                  v18 = 0;
                  v23 = v48;
                  goto LABEL_70;
                }

                v17 = 0;
                v18 = 0;
                v24 = 0;
LABEL_67:
                v23 = v48;
                v32 = v50;
                goto LABEL_71;
              }

              v22 = v49;
              if ([(RTTripSegmentTransitionPreprocessor *)self _areTwoVisitsSame:v52 firstVisitLocation:v49 secondLearnedLOI:v39 secondVisitLocation:v18])
              {
                v24 = 1;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v41 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                  v24 = 1;
                  v23 = v48;
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    v24 = 1;
                    _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_INFO, "_isVisitCompoundingLeadingToLoopbackTransition,past history loopback", buf, 2u);
                  }

                  v17 = v39;
                  goto LABEL_69;
                }

                v17 = v39;
                goto LABEL_67;
              }

              --v29;
              v17 = v39;
              v23 = v48;
              if (v29 <= 1)
              {
                v17 = v39;
                goto LABEL_72;
              }
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v24 = 2;
              v22 = v49;
              v17 = v51;
              goto LABEL_71;
            }

            v41 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            v22 = v49;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              *buf = 134350082;
              *v57 = v34;
              *&v57[8] = 2112;
              *&v57[10] = v32;
              v58 = 1026;
              *v59 = v47;
              *&v59[4] = 2050;
              *&v59[6] = v36;
              v60 = 2050;
              v61 = v30;
              _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_INFO, "_isVisitCompoundingLeadingToLoopbackTransition,no loopback visit,deltaTime from past visit,%{public}0.2f,prevVisitStopDate,%@,maxVisitLoopDurationSec,%{public}d,visitStatus,%{public}lu,tId,%{public}ld", buf, 0x30u);
              v24 = 2;
              goto LABEL_52;
            }

            v24 = 2;
            v17 = v51;
LABEL_69:
            v32 = v50;
LABEL_70:
          }

          else
          {
            v32 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v45 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:a3];
              *buf = 138412290;
              *v57 = v45;
              _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "_isVisitCompoundingLeadingToLoopbackTransition,loopbackReferenceTime,nil,transition,%@", buf, 0xCu);
            }

            v24 = 0;
          }

LABEL_71:

          goto LABEL_72;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v23 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 67240448;
            *v57 = v26;
            *&v57[4] = 2050;
            *&v57[6] = a3;
            _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "_isVisitCompoundingLeadingToLoopbackTransition,no loopback,maxVisitLoopDurationSec,%{public}d,tId,%{public}ld", buf, 0x12u);
          }

          v24 = 2;
          goto LABEL_72;
        }

        v24 = 2;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v23 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "_isVisitCompoundingLeadingToLoopbackTransition,nil nextLearnedLOI,nil learnedLocationNextVisit", buf, 2u);
        }

        v24 = 0;
        goto LABEL_72;
      }

      v24 = 0;
    }

LABEL_73:

    goto LABEL_74;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "_isVisitCompoundingLeadingToLoopbackTransition,nil previousLearnedLOI,nil learnedLocationPrevVisit", buf, 2u);
    }

LABEL_19:
    v24 = 0;
LABEL_74:

    goto LABEL_75;
  }

  v24 = 0;
LABEL_75:

  return v24;
}

- (BOOL)_areTwoVisitsSame:(id)a3 firstVisitLocation:(id)a4 secondLearnedLOI:(id)a5 secondVisitLocation:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  v15 = 0;
  if (!v11 || !v13)
  {
    goto LABEL_11;
  }

  v16 = [v11 location];
  if (v16)
  {
    v17 = v16;
    v18 = [v14 location];

    if (v18)
    {
      distanceCalculator = self->_distanceCalculator;
      v20 = [v11 location];
      v21 = [v14 location];
      v31 = 0;
      [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:v20 toLocation:v21 error:&v31];
      v23 = v22;
      v24 = v31;

      v15 = v23 < 100.0 && v24 == 0;
LABEL_11:
      if (!v10)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }
  }

  v15 = 0;
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (v12)
  {
    v26 = [v10 isEqual:v12];
    goto LABEL_17;
  }

LABEL_16:
  v26 = 0;
  if (!v10)
  {
    v27 = 0;
    if (v12)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

LABEL_17:
  v27 = [v10 identifier];
  if (v12)
  {
LABEL_18:
    v28 = [v12 identifier];
    goto LABEL_21;
  }

LABEL_20:
  v28 = 0;
LABEL_21:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413571;
      v33 = v27;
      v34 = 2112;
      v35 = v28;
      v36 = 2117;
      v37 = v11;
      v38 = 2117;
      v39 = v14;
      v40 = 1026;
      v41 = v26;
      v42 = 1026;
      v43 = v15;
      _os_log_debug_impl(&dword_2304B3000, v29, OS_LOG_TYPE_DEBUG, "tryCompoundingVisits,_areTwoVisitsSame,firstLOI,%@,secondLOI,%@,firstVisitLoc,%{sensitive}@,secondVisitLoc,%{sensitive}@,isSameLOI,%{public}d,isSameLocation,%{public}d", buf, 0x36u);
    }
  }

  return (v15 | v26) & 1;
}

- (id)applyRule_VehicleConnectionCannotSpanVisits_ForVisitAtIndex:(id)a3
{
  v79[1] = *MEMORY[0x277D85DE8];
  v70 = a3;
  v5 = [v70 integerValue];
  if (v5 >= [(NSMutableArray *)self->_tripSegmentTransitions count]- 1)
  {
    v36 = v5;
    v37 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v58 = [(NSMutableArray *)self->_tripSegmentTransitions count];
      *buf = 134218240;
      *&buf[4] = v36;
      *&buf[12] = 2048;
      *&buf[14] = v58 - 2;
      _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor: visitIndex, %ld, out of range [0, %tu]. Passthrough", buf, 0x16u);
    }

    v38 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    goto LABEL_16;
  }

  v69 = v5;
  v6 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
  v7 = [v6 stopDate];
  v8 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v69 + 1];
  v9 = [v8 startDate];
  v10 = [v7 isBeforeDate:v9];

  if ((v10 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v39 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v59 = objc_opt_class();
        v60 = NSStringFromClass(v59);
        v61 = NSStringFromSelector(a2);
        v62 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v69];
        v63 = [v62 stopDate];
        v64 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v69 + 1];
        v65 = [v64 startDate];
        *buf = 138413314;
        *&buf[4] = v60;
        *&buf[12] = 2112;
        *&buf[14] = v61;
        *&buf[22] = 2048;
        v77 = v69;
        *v78 = 2112;
        *&v78[2] = v63;
        *&v78[10] = 2112;
        *&v78[12] = v65;
        _os_log_debug_impl(&dword_2304B3000, v39, OS_LOG_TYPE_DEBUG, "%@:%@, malformed transition, tripSegmentVisitStatus[%ld], start/stop dates: %@, %@, Passthrough", buf, 0x34u);
      }
    }

    v38 = [MEMORY[0x277CCABB0] numberWithInteger:0];
LABEL_16:
    v40 = v38;
    goto LABEL_39;
  }

  v11 = objc_alloc(MEMORY[0x277CCA970]);
  v12 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v69];
  v13 = [v12 stopDate];
  v14 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v69 + 1];
  v15 = [v14 startDate];
  v16 = [v11 initWithStartDate:v13 endDate:v15];

  v71 = v16;
  v17 = [objc_alloc(MEMORY[0x277D01338]) initWithDateInterval:v16 limit:0];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v77 = __Block_byref_object_copy__138;
  *v78 = __Block_byref_object_dispose__138;
  *&v78[8] = 0;
  v18 = dispatch_semaphore_create(0);
  vehicleStore = self->_vehicleStore;
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __99__RTTripSegmentTransitionPreprocessor_applyRule_VehicleConnectionCannotSpanVisits_ForVisitAtIndex___block_invoke;
  v72[3] = &unk_2788C45F0;
  v74 = buf;
  v20 = v18;
  v73 = v20;
  v67 = v17;
  [(RTVehicleStore *)vehicleStore fetchVehiclesWithOptions:v17 handler:v72];
  dsema = v20;
  v21 = [MEMORY[0x277CBEAA8] now];
  v22 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsema, v22))
  {
    v23 = [MEMORY[0x277CBEAA8] now];
    [v23 timeIntervalSinceDate:v21];
    v25 = v24;
    v26 = objc_opt_new();
    v27 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_113];
    v28 = [MEMORY[0x277CCACC8] callStackSymbols];
    v29 = [v28 filteredArrayUsingPredicate:v27];
    v30 = [v29 firstObject];

    [v26 submitToCoreAnalytics:v30 type:1 duration:v25];
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      *v75 = 0;
      _os_log_fault_impl(&dword_2304B3000, v31, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v75, 2u);
    }

    v32 = MEMORY[0x277CCA9B8];
    v79[0] = *MEMORY[0x277CCA450];
    *v75 = @"semaphore wait timeout";
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v79 count:1];
    v34 = [v32 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v33];

    if (v34)
    {
      v35 = v34;
    }
  }

  else
  {
    v34 = 0;
  }

  v66 = v34;
  v41 = *(*&buf[8] + 40);
  if (v41)
  {
    for (i = 0; i < [v41 count]; ++i)
    {
      v43 = [*(*&buf[8] + 40) objectAtIndexedSubscript:i];
      v44 = [v43 dateInterval];
      v45 = [v44 startDate];
      v46 = [v71 startDate];
      if ([v45 isBeforeDate:v46])
      {
        v47 = [*(*&buf[8] + 40) objectAtIndexedSubscript:i];
        v48 = [v47 dateInterval];
        v49 = [v48 endDate];
        v50 = [v71 endDate];
        v51 = [v49 isAfterDate:v50];

        if (v51)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v56 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              *v75 = 134217984;
              *&v75[4] = v69;
              _os_log_debug_impl(&dword_2304B3000, v56, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: applyRule_VehicleConnectionCannotSpanVisits_ForVisitAtIndex, tripSegmentVisitStatus[%ld], Reject", v75, 0xCu);
            }
          }

          v54 = [MEMORY[0x277CCABB0] numberWithInteger:2];
          goto LABEL_38;
        }
      }

      else
      {
      }

      v41 = *(*&buf[8] + 40);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_32;
    }

    v52 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      *v75 = 134217984;
      *&v75[4] = v69;
      v53 = "RTTripSegmentTransitionPreprocessor: applyRule_VehicleConnectionCannotSpanVisits_ForVisitAtIndex, tripSegmentVisitStatus[%ld], Passthrough";
      goto LABEL_43;
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_32;
    }

    v52 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      *v75 = 134217984;
      *&v75[4] = v69;
      v53 = "RTTripSegmentTransitionPreprocessor: applyRule_VehicleConnectionCannotSpanVisits_ForVisitAtIndex, no vehicles found for tripSegmentVisitStatus[%ld], Passthrough";
LABEL_43:
      _os_log_debug_impl(&dword_2304B3000, v52, OS_LOG_TYPE_DEBUG, v53, v75, 0xCu);
    }
  }

LABEL_32:
  v54 = [MEMORY[0x277CCABB0] numberWithInteger:{0, v66}];
LABEL_38:
  v40 = v54;

  _Block_object_dispose(buf, 8);
LABEL_39:

  return v40;
}

void __99__RTTripSegmentTransitionPreprocessor_applyRule_VehicleConnectionCannotSpanVisits_ForVisitAtIndex___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)applyRule_VisitsPredominantlyDrivingAreInvalid_ForVisitAtIndex:(id)a3
{
  v103[1] = *MEMORY[0x277D85DE8];
  v81 = a3;
  v5 = [v81 integerValue];
  if (v5 >= [(NSMutableArray *)self->_tripSegmentTransitions count]- 1)
  {
    v55 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v62 = [(NSMutableArray *)self->_tripSegmentTransitions count];
      *buf = 134218240;
      *&buf[4] = v5;
      *&buf[12] = 2048;
      *&buf[14] = v62 - 2;
      _os_log_error_impl(&dword_2304B3000, v55, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor: visitIndex, %ld, out of range [0, %tu]. Passthrough", buf, 0x16u);
    }

    v56 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    goto LABEL_19;
  }

  v6 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
  v7 = [v6 stopDate];
  v8 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5 + 1];
  v9 = [v8 startDate];
  v10 = [v7 isBeforeDate:v9];

  if ((v10 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v57 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        v71 = objc_opt_class();
        v72 = NSStringFromClass(v71);
        v73 = NSStringFromSelector(a2);
        v74 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
        v75 = [v74 stopDate];
        v76 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5 + 1];
        v77 = [v76 startDate];
        *buf = 138413314;
        *&buf[4] = v72;
        *&buf[12] = 2112;
        *&buf[14] = v73;
        *&buf[22] = 2048;
        v101 = v5;
        *v102 = 2112;
        *&v102[2] = v75;
        *&v102[10] = 2112;
        *&v102[12] = v77;
        _os_log_debug_impl(&dword_2304B3000, v57, OS_LOG_TYPE_DEBUG, "%@:%@, malformed transition, tripSegmentVisitStatus[%ld], start/stop dates: %@, %@, Passthrough", buf, 0x34u);
      }
    }

    v56 = [MEMORY[0x277CCABB0] numberWithInteger:0];
LABEL_19:
    v58 = v56;
    goto LABEL_58;
  }

  v11 = objc_alloc(MEMORY[0x277CCA970]);
  v12 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
  v13 = [v12 stopDate];
  v14 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5 + 1];
  v15 = [v14 startDate];
  v16 = [v11 initWithStartDate:v13 endDate:v15];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v101 = __Block_byref_object_copy__138;
  *v102 = __Block_byref_object_dispose__138;
  *&v102[8] = 0;
  v87 = 0;
  v88 = &v87;
  v89 = 0x3032000000;
  v90 = __Block_byref_object_copy__138;
  v91 = __Block_byref_object_dispose__138;
  v92 = 0;
  v17 = dispatch_semaphore_create(0);
  motionActivityManager = self->_motionActivityManager;
  v19 = [v16 startDate];
  v20 = [v16 endDate];
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __102__RTTripSegmentTransitionPreprocessor_applyRule_VisitsPredominantlyDrivingAreInvalid_ForVisitAtIndex___block_invoke;
  v82[3] = &unk_2788C69F0;
  v79 = v16;
  v83 = v79;
  v85 = buf;
  v86 = &v87;
  v21 = v17;
  v84 = v21;
  [(RTMotionActivityManager *)motionActivityManager fetchMotionActivitiesFromStartDate:v19 endDate:v20 handler:v82];

  v22 = (v88 + 5);
  obj = v88[5];
  dsema = v21;
  v23 = [MEMORY[0x277CBEAA8] now];
  v24 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsema, v24))
  {
    v25 = [MEMORY[0x277CBEAA8] now];
    [v25 timeIntervalSinceDate:v23];
    v27 = v26;
    v28 = objc_opt_new();
    v29 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_113];
    v30 = [MEMORY[0x277CCACC8] callStackSymbols];
    v31 = [v30 filteredArrayUsingPredicate:v29];
    v32 = [v31 firstObject];

    [v28 submitToCoreAnalytics:v32 type:1 duration:v27];
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      *v93 = 0;
      _os_log_fault_impl(&dword_2304B3000, v33, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v93, 2u);
    }

    v34 = MEMORY[0x277CCA9B8];
    v103[0] = *MEMORY[0x277CCA450];
    *v93 = @"semaphore wait timeout";
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v103 count:1];
    v36 = [v34 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v35];

    if (v36)
    {
      v37 = v36;

      obj = v36;
    }
  }

  objc_storeStrong(v22, obj);
  if (!*(*&buf[8] + 40))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v59 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        *v93 = 134217984;
        *&v93[4] = v5;
        _os_log_debug_impl(&dword_2304B3000, v59, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: applyRule_VisitsPredominantlyDrivingAreInvalid_ForVisitAtIndex, tripSegmentVisitStatus[%ld], Passthrough", v93, 0xCu);
      }
    }

    v58 = [MEMORY[0x277CCABB0] numberWithInteger:{0, obj}];
    goto LABEL_57;
  }

  v38 = [RTMotionActivityHistogram alloc];
  v39 = *(*&buf[8] + 40);
  v40 = [v79 startDate];
  v41 = [v79 endDate];
  v42 = [(RTMotionActivityHistogram *)v38 initWithActivites:v39 betweenDate:v40 andDate:v41];

  v43 = [(RTMotionActivityHistogram *)v42 binsSortedByInterval];
  v44 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
  v45 = [v44 predominantMotionActivityType];

  v46 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5 + 1];
  v47 = [v46 predominantMotionActivityType];

  v48 = [(RTMotionActivityHistogram *)v42 binForType:2];
  [v48 interval];
  v50 = v49;

  [v79 duration];
  v52 = v51;
  v53 = [v43 firstObject];
  LOBYTE(v40) = [v53 type] == 4;

  if (v40)
  {
    v54 = 1;
  }

  else if ([v43 count] < 3)
  {
    v54 = 0;
  }

  else
  {
    v60 = [v43 objectAtIndexedSubscript:0];
    if ([v60 type] == 1)
    {
      v61 = [v43 objectAtIndexedSubscript:1];
      v54 = [v61 type] == 4;
    }

    else
    {
      v54 = 0;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v63 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      *v93 = 67110144;
      *&v93[4] = v45 == 4;
      *&v93[8] = 1024;
      *&v93[10] = v47 == 4;
      v94 = 1024;
      v95 = v50 == 0.0;
      v96 = 1024;
      v97 = v52 < 2400.0;
      v98 = 1024;
      v99 = v54;
      _os_log_debug_impl(&dword_2304B3000, v63, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: previousTransitionIsDriving, %d, subsequentTransitionIsDriving, %d, visitHasNoWalkingActivity, %d, visitDurationIsCandidateForDrivingCheck, %d, visitHasDrivingPredominantActivity, %d", v93, 0x20u);
    }
  }

  v65 = v45 == 4 && v47 == 4;
  if (v52 >= 2400.0)
  {
    v65 = 0;
  }

  if (v50 != 0.0)
  {
    v65 = 0;
  }

  v66 = v65 && v54;
  v67 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v66 == 1)
  {
    if (!v67)
    {
      v69 = 2;
      goto LABEL_56;
    }

    v68 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    v69 = 2;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
    {
      *v93 = 134217984;
      *&v93[4] = v5;
      v69 = 2;
      _os_log_debug_impl(&dword_2304B3000, v68, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: applyRule_VisitsPredominantlyDrivingAreInvalid_ForVisitAtIndex, tripSegmentVisitStatus[%ld], Reject", v93, 0xCu);
    }
  }

  else
  {
    if (!v67)
    {
      v69 = 0;
      goto LABEL_56;
    }

    v68 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
    {
      *v93 = 134217984;
      *&v93[4] = v5;
      _os_log_debug_impl(&dword_2304B3000, v68, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: applyRule_VisitsPredominantlyDrivingAreInvalid_ForVisitAtIndex, tripSegmentVisitStatus[%ld], Passthrough", v93, 0xCu);
    }

    v69 = 0;
  }

LABEL_56:
  v58 = [MEMORY[0x277CCABB0] numberWithInteger:{v69, obj}];

LABEL_57:
  _Block_object_dispose(&v87, 8);

  _Block_object_dispose(buf, 8);
LABEL_58:

  return v58;
}

void __102__RTTripSegmentTransitionPreprocessor_applyRule_VisitsPredominantlyDrivingAreInvalid_ForVisitAtIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v17 = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v8;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor: Failed to fetch motion activities, error, %@, for visitInterval %@", &v17, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v15 = [v5 count];
        v16 = *(a1 + 32);
        v17 = 134218242;
        v18 = v15;
        v19 = 2112;
        v20 = v16;
        _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: Fetched %tu motion activities, for visitInterval %@", &v17, 0x16u);
      }
    }

    v10 = *(*(a1 + 48) + 8);
    v11 = v5;
    v7 = *(v10 + 40);
    *(v10 + 40) = v11;
  }

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v6;
  v14 = v6;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)applyRule_LoiVisitsAreValid_ForVisitAtIndex:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [a3 integerValue];
  if (v4 < [(NSMutableArray *)self->_tripSegmentTransitions count])
  {
    v5 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v4];
    v6 = [v5 visitIdentifierDestination];

    v7 = [(RTTripSegmentTransitionPreprocessor *)self fetchLearnedLocationOfInterestForVisitIdentifier:v6 outLearnedVisitLocation:0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v21 = 138739971;
        v22 = v7;
        _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: applyRule_LoiVisitsAreValid_ForVisitAtIndex fetched learnedLocationOfInterest: %{sensitive}@", &v21, 0xCu);
      }
    }

    if (v7 && ([v7 place], v9 = objc_claimAutoreleasedReturnValue(), v9, v9) && (objc_msgSend(v7, "place"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "type"), v10, v11))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v12 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v19 = [v7 place];
          v20 = +[RTLearnedPlace placeTypeToString:](RTLearnedPlace, "placeTypeToString:", [v19 type]);
          v21 = 138412290;
          v22 = v20;
          _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: applyRule_LoiVisitsAreValid_ForVisitAtIndex fetched learnedLocationOfInterest.place.type: %@", &v21, 0xCu);
        }
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v14 = 1;
        goto LABEL_27;
      }

      v13 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v21 = 134217984;
        v22 = v4;
        _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: applyRule_LoiVisitsAreValid_ForVisitAtIndex, tripSegmentVisitStatus[%ld], Accept", &v21, 0xCu);
      }

      v14 = 1;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v14 = 0;
        goto LABEL_27;
      }

      v13 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v21 = 134217984;
        v22 = v4;
        _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: applyRule_LoiVisitsAreValid_ForVisitAtIndex, tripSegmentVisitStatus[%ld], Passthrough", &v21, 0xCu);
      }

      v14 = 0;
    }

LABEL_27:
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:v14];

    goto LABEL_28;
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v18 = [(NSMutableArray *)self->_tripSegmentTransitions count];
    v21 = 134218240;
    v22 = v4;
    v23 = 2048;
    v24 = v18 - 1;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor: visitIndex, %ld, out of range [0, %tu]. Passthrough", &v21, 0x16u);
  }

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:0];
LABEL_28:

  return v16;
}

- (id)applyRule_shortTransitionsAreInvalid_ForTransitionAtIndex:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = [a3 integerValue];
  if (v5 >= [(NSMutableArray *)self->_tripSegmentTransitions count])
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v32 = [(NSMutableArray *)self->_tripSegmentTransitions count];
      v33 = 134218240;
      v34 = v5;
      v35 = 2048;
      v36 = v32 - 1;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor: transitionIndex, %ld, out of range [0, %tu]. Passthrough", &v33, 0x16u);
    }

    goto LABEL_9;
  }

  v6 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
  v7 = [v6 startDate];
  v8 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
  v9 = [v8 stopDate];
  v10 = [v7 isBeforeDate:v9];

  if ((v10 & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_10;
    }

    v22 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = NSStringFromSelector(a2);
      v27 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
      v28 = [v27 startDate];
      v29 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
      v30 = [v29 stopDate];
      v33 = 138413314;
      v34 = v25;
      v35 = 2112;
      v36 = v26;
      v37 = 2048;
      v38 = v5;
      v39 = 2112;
      v40 = v28;
      v41 = 2112;
      v42 = v30;
      _os_log_debug_impl(&dword_2304B3000, v22, OS_LOG_TYPE_DEBUG, "%@:%@, malformed transition, tripSegmentVisitStatus[%ld], start/stop dates: %@, %@, Passthrough", &v33, 0x34u);
    }

LABEL_9:

LABEL_10:
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    goto LABEL_22;
  }

  v11 = objc_alloc(MEMORY[0x277CCA970]);
  v12 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
  v13 = [v12 startDate];
  v14 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
  v15 = [v14 stopDate];
  v16 = [v11 initWithStartDate:v13 endDate:v15];

  [v16 duration];
  v18 = v17;
  v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v18 >= 120.0)
  {
    if (!v19)
    {
      v21 = 0;
      goto LABEL_21;
    }

    v20 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v33 = 134217984;
      v34 = v5;
      _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: applyRule_shortTransitionsAreInvalid_ForTransitionAtIndex, tripSegmentTransitionStatus[%ld], Passthrough", &v33, 0xCu);
    }

    v21 = 0;
  }

  else
  {
    if (!v19)
    {
      v21 = 2;
      goto LABEL_21;
    }

    v20 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    v21 = 2;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v33 = 134217984;
      v34 = v5;
      v21 = 2;
      _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: applyRule_shortTransitionsAreInvalid_ForTransitionAtIndex, tripSegmentTransitionStatus[%ld], Reject", &v33, 0xCu);
    }
  }

LABEL_21:
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:v21];

LABEL_22:

  return v23;
}

- (id)applyRule_longTransitionsAreInvalid_ForTransitionAtIndex:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = [a3 integerValue];
  if (v5 >= [(NSMutableArray *)self->_tripSegmentTransitions count])
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v34 = [(NSMutableArray *)self->_tripSegmentTransitions count];
      *v35 = 134218240;
      *&v35[4] = v5;
      *&v35[12] = 2048;
      *&v35[14] = v34 - 1;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor: transitionIndex, %ld, out of range [0, %tu]. Passthrough", v35, 0x16u);
    }

    goto LABEL_10;
  }

  v6 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
  v7 = [v6 startDate];
  v8 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
  v9 = [v8 stopDate];
  v10 = [v7 isBeforeDate:v9];

  if ((v10 & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    v21 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromSelector(a2);
      v26 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
      v27 = [v26 startDate];
      v28 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
      v29 = [v28 stopDate];
      *v35 = 138413314;
      *&v35[4] = v24;
      *&v35[12] = 2112;
      *&v35[14] = v25;
      v36 = 2048;
      v37 = v5;
      v38 = 2112;
      v39 = v27;
      v40 = 2112;
      v41 = v29;
      _os_log_debug_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEBUG, "%@:%@, malformed transition, tripSegmentVisitStatus[%ld], start/stop dates: %@, %@, Passthrough", v35, 0x34u);
    }

LABEL_10:

LABEL_11:
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    goto LABEL_28;
  }

  v11 = objc_alloc(MEMORY[0x277CCA970]);
  v12 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
  v13 = [v12 startDate];
  v14 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
  v15 = [v14 stopDate];
  v16 = [v11 initWithStartDate:v13 endDate:v15];

  [v16 duration];
  if (v17 > 43200.0)
  {
    v18 = 2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      v18 = 2;
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
LABEL_25:

        goto LABEL_27;
      }

      *v35 = 134217984;
      *&v35[4] = v5;
      v20 = "RTTripSegmentTransitionPreprocessor: applyRule_longTransitionsAreInvalid_ForTransitionAtIndex, tripSegmentTransitionStatus[%ld], Reject";
LABEL_7:
      v18 = 2;
      _os_log_debug_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEBUG, v20, v35, 0xCu);
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  v30 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
  if ([v30 predominantMotionActivityType] != 4)
  {

    goto LABEL_21;
  }

  [v16 duration];
  v32 = v31;

  if (v32 <= 14400.0)
  {
LABEL_21:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v18 = 0;
      goto LABEL_27;
    }

    v19 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *v35 = 134217984;
      *&v35[4] = v5;
      _os_log_debug_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: applyRule_longTransitionsAreInvalid_ForTransitionAtIndex, tripSegmentTransitionStatus[%ld], Passthrough", v35, 0xCu);
    }

    v18 = 0;
    goto LABEL_25;
  }

  v18 = 2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    v18 = 2;
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_25;
    }

    *v35 = 134217984;
    *&v35[4] = v5;
    v20 = "RTTripSegmentTransitionPreprocessor: applyRule_longTransitionsAreInvalid_ForTransitionAtIndex, automotive transition, tripSegmentTransitionStatus[%ld], Reject";
    goto LABEL_7;
  }

LABEL_27:
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:{v18, *v35}];

LABEL_28:

  return v22;
}

- (id)applyRule_largeDistanceTransitionsAreInvalid_ForTransitionAtIndex:(id)a3
{
  v128[1] = *MEMORY[0x277D85DE8];
  v83 = a3;
  v5 = [v83 integerValue];
  if (v5 < [(NSMutableArray *)self->_tripSegmentTransitions count])
  {
    aSelector = a2;
    v80 = v5;
    v6 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
    v82 = [v6 visitIdentifierOrigin];

    v7 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v80];
    v81 = [v7 visitIdentifierDestination];

    v107 = 0;
    v108 = &v107;
    v109 = 0x3032000000;
    v110 = __Block_byref_object_copy__138;
    v111 = __Block_byref_object_dispose__138;
    v112 = 0;
    v8 = dispatch_semaphore_create(0);
    v101 = 0;
    v102 = &v101;
    v103 = 0x3032000000;
    v104 = __Block_byref_object_copy__138;
    v105 = __Block_byref_object_dispose__138;
    v106 = 0;
    v9 = [(RTTripSegmentTransitionPreprocessor *)self learnedLocationManager];
    v10 = [v9 learnedLocationStore];
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = __105__RTTripSegmentTransitionPreprocessor_applyRule_largeDistanceTransitionsAreInvalid_ForTransitionAtIndex___block_invoke;
    v97[3] = &unk_2788C61C0;
    v99 = &v107;
    v100 = &v101;
    v11 = v8;
    v98 = v11;
    [v10 fetchVisitWithIdentifier:v82 handler:v97];

    v12 = (v102 + 5);
    v13 = v102[5];
    dsema = v11;
    v14 = [MEMORY[0x277CBEAA8] now];
    v15 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v15))
    {
      v16 = [MEMORY[0x277CBEAA8] now];
      [v16 timeIntervalSinceDate:v14];
      v18 = v17;
      v19 = objc_opt_new();
      v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_113];
      v21 = [MEMORY[0x277CCACC8] callStackSymbols];
      v22 = [v21 filteredArrayUsingPredicate:v20];
      v23 = [v22 firstObject];

      [v19 submitToCoreAnalytics:v23 type:1 duration:v18];
      v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v25 = MEMORY[0x277CCA9B8];
      v122 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v122 count:1];
      v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v26];

      if (v27)
      {
        v28 = v27;

        v13 = v27;
      }
    }

    objc_storeStrong(v12, v13);
    v122 = 0;
    v123 = &v122;
    v124 = 0x3032000000;
    v125 = __Block_byref_object_copy__138;
    v126 = __Block_byref_object_dispose__138;
    v127 = 0;
    v29 = dispatch_semaphore_create(0);
    v91 = 0;
    v92 = &v91;
    v93 = 0x3032000000;
    v94 = __Block_byref_object_copy__138;
    v95 = __Block_byref_object_dispose__138;
    v96 = 0;
    v30 = [(RTTripSegmentTransitionPreprocessor *)self learnedLocationManager];
    v31 = [v30 learnedLocationStore];
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __105__RTTripSegmentTransitionPreprocessor_applyRule_largeDistanceTransitionsAreInvalid_ForTransitionAtIndex___block_invoke_2;
    v87[3] = &unk_2788C61C0;
    v89 = &v122;
    v90 = &v91;
    v32 = v29;
    v88 = v32;
    [v31 fetchVisitWithIdentifier:v81 handler:v87];

    v34 = (v92 + 5);
    v33 = v92[5];
    v84 = v32;
    v35 = [MEMORY[0x277CBEAA8] now];
    v36 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v84, v36))
    {
      v37 = [MEMORY[0x277CBEAA8] now];
      [v37 timeIntervalSinceDate:v35];
      v39 = v38;
      v40 = objc_opt_new();
      v41 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_113];
      v42 = [MEMORY[0x277CCACC8] callStackSymbols];
      v43 = [v42 filteredArrayUsingPredicate:v41];
      v44 = [v43 firstObject];

      [v40 submitToCoreAnalytics:v44 type:1 duration:v39];
      v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v45, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v46 = MEMORY[0x277CCA9B8];
      v128[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v128 count:1];
      v48 = [v46 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v47];

      if (v48)
      {
        v49 = v48;

        v33 = v48;
      }
    }

    objc_storeStrong(v34, v33);
    if (v108[5] && v123[5])
    {
      v50 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v80];
      v51 = [v50 stopDate];
      v52 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v80];
      v53 = [v52 startDate];
      v54 = [v51 isBeforeDate:v53];

      if (v54)
      {
        distanceCalculator = self->_distanceCalculator;
        v56 = [v108[5] location];
        v57 = [v123[5] location];
        v86 = 0;
        [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:v56 toLocation:v57 error:&v86];
        v59 = v58;
        v60 = v86;

        if (v60)
        {
          v61 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v77 = [v108[5] location];
            v78 = [v123[5] location];
            *buf = 138740227;
            *&buf[4] = v77;
            v114 = 2117;
            v115 = *&v78;
            _os_log_error_impl(&dword_2304B3000, v61, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor:applyRule_largeDistanceTransitionsAreInvalid_ForTransitionAtIndex: failed to compute distance from %{sensitive}@ to %{sensitive}@. Passthrough.", buf, 0x16u);
          }
        }

        else
        {
          v75 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
          if (v59 > 450000.0)
          {
            if (!v75)
            {
              v62 = 2;
              goto LABEL_20;
            }

            v61 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            v62 = 2;
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218496;
              *&buf[4] = v80;
              v114 = 2048;
              v115 = v59;
              v116 = 2048;
              v117 = 0x411B774000000000;
              v62 = 2;
              _os_log_debug_impl(&dword_2304B3000, v61, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: applyRule_largeDistanceTransitionsAreInvalid_ForTransitionAtIndex, tripSegmentTransitionStatus[%ld], distance %f m above threshold %f m. Reject.", buf, 0x20u);
            }

LABEL_19:

LABEL_20:
            v63 = [MEMORY[0x277CCABB0] numberWithInteger:v62];

LABEL_28:
            _Block_object_dispose(&v91, 8);

            _Block_object_dispose(&v122, 8);
            _Block_object_dispose(&v101, 8);

            _Block_object_dispose(&v107, 8);
            goto LABEL_29;
          }

          if (!v75)
          {
            v62 = 0;
            goto LABEL_20;
          }

          v61 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *&buf[4] = v80;
            _os_log_debug_impl(&dword_2304B3000, v61, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: applyRule_largeDistanceTransitionsAreInvalid_ForTransitionAtIndex, tripSegmentTransitionStatus[%ld]. Passthrough.", buf, 0xCu);
          }
        }

        v62 = 0;
        goto LABEL_19;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
LABEL_27:
        v63 = [MEMORY[0x277CCABB0] numberWithInteger:0];
        goto LABEL_28;
      }

      v66 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        v68 = objc_opt_class();
        v69 = NSStringFromClass(v68);
        v70 = NSStringFromSelector(aSelector);
        v71 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v80];
        v72 = [v71 stopDate];
        v73 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v80];
        v74 = [v73 startDate];
        *buf = 138413314;
        *&buf[4] = v69;
        v114 = 2112;
        v115 = *&v70;
        v116 = 2048;
        v117 = v80;
        v118 = 2112;
        v119 = v72;
        v120 = 2112;
        v121 = v74;
        _os_log_debug_impl(&dword_2304B3000, v66, OS_LOG_TYPE_DEBUG, "%@:%@, malformed transition, tripSegmentVisitStatus[%ld], start/stop dates: %@, %@, Passthrough", buf, 0x34u);
      }
    }

    else
    {
      v66 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = v82;
        v114 = 2112;
        v115 = *&v81;
        _os_log_error_impl(&dword_2304B3000, v66, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor:applyRule_largeDistanceTransitionsAreInvalid_ForTransitionAtIndex: failed to fetch visit location for identifiers %@ and %@. Passthrough.", buf, 0x16u);
      }
    }

    goto LABEL_27;
  }

  v64 = v5;
  v65 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
  {
    v76 = [(NSMutableArray *)self->_tripSegmentTransitions count];
    *buf = 134218240;
    *&buf[4] = v64;
    v114 = 2048;
    *&v115 = v76 - 1;
    _os_log_error_impl(&dword_2304B3000, v65, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor: transitionIndex, %ld, out of range [0, %tu]. Passthrough", buf, 0x16u);
  }

  v63 = [MEMORY[0x277CCABB0] numberWithInteger:0];
LABEL_29:

  return v63;
}

void __105__RTTripSegmentTransitionPreprocessor_applyRule_largeDistanceTransitionsAreInvalid_ForTransitionAtIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 && !v5)
  {
    v7 = [a2 location];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __105__RTTripSegmentTransitionPreprocessor_applyRule_largeDistanceTransitionsAreInvalid_ForTransitionAtIndex___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 && !v5)
  {
    v7 = [a2 location];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)applyRule_highAverageSpeedTransitionsAreInvalid_ForTransitionAtIndex:(id)a3
{
  v141[1] = *MEMORY[0x277D85DE8];
  v96 = a3;
  v5 = [v96 integerValue];
  if (v5 < [(NSMutableArray *)self->_tripSegmentTransitions count])
  {
    aSelector = a2;
    v95 = v5;
    v6 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v5];
    v94 = [v6 visitIdentifierOrigin];

    v7 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v95];
    v93 = [v7 visitIdentifierDestination];

    v120 = 0;
    v121 = &v120;
    v122 = 0x3032000000;
    v123 = __Block_byref_object_copy__138;
    v124 = __Block_byref_object_dispose__138;
    v125 = 0;
    v8 = dispatch_semaphore_create(0);
    v114 = 0;
    v115 = &v114;
    v116 = 0x3032000000;
    v117 = __Block_byref_object_copy__138;
    v118 = __Block_byref_object_dispose__138;
    v119 = 0;
    v9 = [(RTTripSegmentTransitionPreprocessor *)self learnedLocationManager];
    v10 = [v9 learnedLocationStore];
    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = __108__RTTripSegmentTransitionPreprocessor_applyRule_highAverageSpeedTransitionsAreInvalid_ForTransitionAtIndex___block_invoke;
    v110[3] = &unk_2788C61C0;
    v112 = &v120;
    v113 = &v114;
    v11 = v8;
    v111 = v11;
    [v10 fetchVisitWithIdentifier:v94 handler:v110];

    v12 = (v115 + 5);
    v13 = v115[5];
    dsema = v11;
    v14 = [MEMORY[0x277CBEAA8] now];
    v15 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v15))
    {
      v16 = [MEMORY[0x277CBEAA8] now];
      [v16 timeIntervalSinceDate:v14];
      v18 = v17;
      v19 = objc_opt_new();
      v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_113];
      v21 = [MEMORY[0x277CCACC8] callStackSymbols];
      v22 = [v21 filteredArrayUsingPredicate:v20];
      v23 = [v22 firstObject];

      [v19 submitToCoreAnalytics:v23 type:1 duration:v18];
      v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v25 = MEMORY[0x277CCA9B8];
      v135 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v135 count:1];
      v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v26];

      if (v27)
      {
        v28 = v27;

        v13 = v27;
      }
    }

    objc_storeStrong(v12, v13);
    v135 = 0;
    v136 = &v135;
    v137 = 0x3032000000;
    v138 = __Block_byref_object_copy__138;
    v139 = __Block_byref_object_dispose__138;
    v140 = 0;
    v29 = dispatch_semaphore_create(0);
    v104 = 0;
    v105 = &v104;
    v106 = 0x3032000000;
    v107 = __Block_byref_object_copy__138;
    v108 = __Block_byref_object_dispose__138;
    v109 = 0;
    v30 = [(RTTripSegmentTransitionPreprocessor *)self learnedLocationManager];
    v31 = [v30 learnedLocationStore];
    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __108__RTTripSegmentTransitionPreprocessor_applyRule_highAverageSpeedTransitionsAreInvalid_ForTransitionAtIndex___block_invoke_2;
    v100[3] = &unk_2788C61C0;
    v102 = &v135;
    v103 = &v104;
    v32 = v29;
    v101 = v32;
    [v31 fetchVisitWithIdentifier:v93 handler:v100];

    v34 = (v105 + 5);
    v33 = v105[5];
    v97 = v32;
    v35 = [MEMORY[0x277CBEAA8] now];
    v36 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v97, v36))
    {
      v37 = [MEMORY[0x277CBEAA8] now];
      [v37 timeIntervalSinceDate:v35];
      v39 = v38;
      v40 = objc_opt_new();
      v41 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_113];
      v42 = [MEMORY[0x277CCACC8] callStackSymbols];
      v43 = [v42 filteredArrayUsingPredicate:v41];
      v44 = [v43 firstObject];

      [v40 submitToCoreAnalytics:v44 type:1 duration:v39];
      v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v45, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v46 = MEMORY[0x277CCA9B8];
      v141[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v141 count:1];
      v48 = [v46 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v47];

      if (v48)
      {
        v49 = v48;

        v33 = v48;
      }
    }

    objc_storeStrong(v34, v33);
    if (v121[5] && v136[5])
    {
      v50 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v95];
      v51 = [v50 stopDate];
      v52 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v95 + 1];
      v53 = [v52 startDate];
      v54 = [v51 isBeforeDate:v53];

      if (v54)
      {
        v55 = objc_alloc(MEMORY[0x277CCA970]);
        v56 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v95];
        v57 = [v56 startDate];
        v58 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v95];
        v59 = [v58 stopDate];
        v60 = [v55 initWithStartDate:v57 endDate:v59];

        [v60 duration];
        if (v61 < 3600.0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v62 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
              [v60 duration];
              *buf = 134217984;
              *&buf[4] = v91;
              _os_log_debug_impl(&dword_2304B3000, v62, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor:applyRule_highAverageSpeedTransitionsAreInvalid_ForTransitionAtIndex: transition duration %f s too short for average speed check. Passthrough.", buf, 0xCu);
            }
          }

          v63 = [MEMORY[0x277CCABB0] numberWithInteger:0];
          goto LABEL_52;
        }

        distanceCalculator = self->_distanceCalculator;
        v76 = [v121[5] location];
        v77 = [v136[5] location];
        v99 = 0;
        [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:v76 toLocation:v77 error:&v99];
        v79 = v78;
        v80 = v99;

        if (v80)
        {
          v81 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            v89 = [v121[5] location];
            v90 = [v136[5] location];
            *buf = 138740227;
            *&buf[4] = v89;
            v127 = 2117;
            v128 = *&v90;
            _os_log_error_impl(&dword_2304B3000, v81, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor:applyRule_highAverageSpeedTransitionsAreInvalid_ForTransitionAtIndex: failed to compute distance from %{sensitive}@ to %{sensitive}@. Passthrough.", buf, 0x16u);
          }

          v82 = [MEMORY[0x277CCABB0] numberWithInteger:0];
          goto LABEL_51;
        }

        [v60 duration];
        v85 = v79 / v84;
        v86 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
        if (v85 <= 60.0)
        {
          if (!v86)
          {
            v88 = 0;
            goto LABEL_50;
          }

          v87 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *&buf[4] = v95;
            _os_log_debug_impl(&dword_2304B3000, v87, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: applyRule_highAverageSpeedTransitionsAreInvalid_ForTransitionAtIndex, tripSegmentTransitionStatus[%ld]. Passthrough.", buf, 0xCu);
          }

          v88 = 0;
        }

        else
        {
          if (!v86)
          {
            v88 = 2;
            goto LABEL_50;
          }

          v87 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          v88 = 2;
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218496;
            *&buf[4] = v95;
            v127 = 2048;
            v128 = v85;
            v129 = 2048;
            v130 = 0x404E000000000000;
            v88 = 2;
            _os_log_debug_impl(&dword_2304B3000, v87, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: applyRule_longTransitionsAreInvalid_ForTransitionAtIndex, tripSegmentTransitionStatus[%ld], average speed %f msps above threshold %f mps. Reject.", buf, 0x20u);
          }
        }

LABEL_50:
        v82 = [MEMORY[0x277CCABB0] numberWithInteger:v88];
LABEL_51:
        v63 = v82;

LABEL_52:
        goto LABEL_28;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
LABEL_27:
        v63 = [MEMORY[0x277CCABB0] numberWithInteger:0];
LABEL_28:

        _Block_object_dispose(&v104, 8);
        _Block_object_dispose(&v135, 8);

        _Block_object_dispose(&v114, 8);
        _Block_object_dispose(&v120, 8);

        goto LABEL_29;
      }

      v66 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        v68 = objc_opt_class();
        v69 = NSStringFromClass(v68);
        v70 = NSStringFromSelector(aSelector);
        v71 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v95];
        v72 = [v71 stopDate];
        v73 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v95 + 1];
        v74 = [v73 startDate];
        *buf = 138413314;
        *&buf[4] = v69;
        v127 = 2112;
        v128 = *&v70;
        v129 = 2048;
        v130 = v95;
        v131 = 2112;
        v132 = v72;
        v133 = 2112;
        v134 = v74;
        _os_log_debug_impl(&dword_2304B3000, v66, OS_LOG_TYPE_DEBUG, "%@:%@, malformed transition, tripSegmentVisitStatus[%ld], start/stop dates: %@, %@, Passthrough", buf, 0x34u);
      }
    }

    else
    {
      v66 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = v94;
        v127 = 2112;
        v128 = *&v93;
        _os_log_error_impl(&dword_2304B3000, v66, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor:applyRule_highAverageSpeedTransitionsAreInvalid_ForTransitionAtIndex: failed to fetch visit location for identifiers %@ and %@. Passthrough.", buf, 0x16u);
      }
    }

    goto LABEL_27;
  }

  v64 = v5;
  v65 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
  {
    v83 = [(NSMutableArray *)self->_tripSegmentTransitions count];
    *buf = 134218240;
    *&buf[4] = v64;
    v127 = 2048;
    *&v128 = v83 - 1;
    _os_log_error_impl(&dword_2304B3000, v65, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor: transitionIndex, %ld, out of range [0, %tu]. Passthrough", buf, 0x16u);
  }

  v63 = [MEMORY[0x277CCABB0] numberWithInteger:0];
LABEL_29:

  return v63;
}

void __108__RTTripSegmentTransitionPreprocessor_applyRule_highAverageSpeedTransitionsAreInvalid_ForTransitionAtIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 && !v5)
  {
    v7 = [a2 location];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __108__RTTripSegmentTransitionPreprocessor_applyRule_highAverageSpeedTransitionsAreInvalid_ForTransitionAtIndex___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 && !v5)
  {
    v7 = [a2 location];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)fetchLearnedLocationOfInterestForVisitIdentifier:(id)a3 outLearnedVisitLocation:(id *)a4
{
  v94[1] = *MEMORY[0x277D85DE8];
  v60 = a3;
  if (v60)
  {
    *v75 = 0;
    v76 = v75;
    v77 = 0x3032000000;
    v78 = __Block_byref_object_copy__138;
    v79 = __Block_byref_object_dispose__138;
    v80 = 0;
    v5 = dispatch_semaphore_create(0);
    v69 = 0;
    v70 = &v69;
    v71 = 0x3032000000;
    v72 = __Block_byref_object_copy__138;
    v73 = __Block_byref_object_dispose__138;
    v74 = 0;
    v57 = self;
    v6 = [(RTTripSegmentTransitionPreprocessor *)self learnedLocationManager];
    v7 = [v6 learnedLocationStore];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __112__RTTripSegmentTransitionPreprocessor_fetchLearnedLocationOfInterestForVisitIdentifier_outLearnedVisitLocation___block_invoke;
    v65[3] = &unk_2788C61C0;
    v67 = v75;
    v68 = &v69;
    v8 = v5;
    v66 = v8;
    [v7 fetchVisitWithIdentifier:v60 handler:v65];

    v10 = (v70 + 5);
    v9 = v70[5];
    v11 = v8;
    v12 = [MEMORY[0x277CBEAA8] now];
    v13 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v11, v13))
    {
      v14 = [MEMORY[0x277CBEAA8] now];
      [v14 timeIntervalSinceDate:v12];
      v16 = v15;
      v17 = objc_opt_new();
      v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_113];
      v19 = [MEMORY[0x277CCACC8] callStackSymbols];
      v20 = [v19 filteredArrayUsingPredicate:v18];
      v21 = [v20 firstObject];

      [v17 submitToCoreAnalytics:v21 type:1 duration:v16];
      v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v23 = MEMORY[0x277CCA9B8];
      v84 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v84 count:1];
      v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v24];

      if (v25)
      {
        v26 = v25;

        v9 = v25;
      }
    }

    objc_storeStrong(v10, v9);
    v27 = *(v76 + 5);
    if (v27)
    {
      if (a4)
      {
        *a4 = v27;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v28 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v55 = *(v76 + 5);
          *buf = 138412547;
          *&buf[4] = v60;
          *&buf[12] = 2117;
          *&buf[14] = v55;
          _os_log_debug_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: fetchLearnedLocationOfInterestForVisitIdentifier: %@ fetched learnedLocation: %{sensitive}@", buf, 0x16u);
        }
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v91 = __Block_byref_object_copy__138;
      v92 = __Block_byref_object_dispose__138;
      v93 = 0;
      v29 = dispatch_semaphore_create(0);
      v84 = 0;
      v85 = &v84;
      v86 = 0x3032000000;
      v87 = __Block_byref_object_copy__138;
      v88 = __Block_byref_object_dispose__138;
      v89 = 0;
      v30 = [(RTTripSegmentTransitionPreprocessor *)v57 learnedLocationManager];
      v31 = [*(v76 + 5) location];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __112__RTTripSegmentTransitionPreprocessor_fetchLearnedLocationOfInterestForVisitIdentifier_outLearnedVisitLocation___block_invoke_190;
      v61[3] = &unk_2788C4B58;
      v63 = buf;
      v64 = &v84;
      v32 = v29;
      v62 = v32;
      [v30 fetchLocationOfInterestAtLocation:v31 handler:v61];

      v33 = (v85 + 5);
      obja = v85[5];
      v34 = v32;
      v35 = [MEMORY[0x277CBEAA8] now];
      v36 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v34, v36))
      {
        v37 = [MEMORY[0x277CBEAA8] now];
        [v37 timeIntervalSinceDate:v35];
        v39 = v38;
        v40 = objc_opt_new();
        v41 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_113];
        v42 = [MEMORY[0x277CCACC8] callStackSymbols];
        v43 = [v42 filteredArrayUsingPredicate:v41];
        v44 = [v43 firstObject];

        [v40 submitToCoreAnalytics:v44 type:1 duration:v39];
        v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
        {
          *v81 = 0;
          _os_log_fault_impl(&dword_2304B3000, v45, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v81, 2u);
        }

        v46 = MEMORY[0x277CCA9B8];
        v94[0] = *MEMORY[0x277CCA450];
        *v81 = @"semaphore wait timeout";
        v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v94 count:1];
        v48 = [v46 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v47];

        if (v48)
        {
          v49 = v48;

          obja = v48;
        }
      }

      objc_storeStrong(v33, obja);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v50 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          v56 = *(*&buf[8] + 40);
          *v81 = 138412547;
          *&v81[4] = v60;
          v82 = 2117;
          v83 = v56;
          _os_log_debug_impl(&dword_2304B3000, v50, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: fetchLearnedLocationOfInterestForVisitIdentifier: %@ fetched learnedLocationOfInterest: %{sensitive}@", v81, 0x16u);
        }
      }

      v51 = *(*&buf[8] + 40);

      _Block_object_dispose(&v84, 8);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v53 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v60;
        _os_log_error_impl(&dword_2304B3000, v53, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor:fetchLearnedLocationOfInterestForVisitIdentifier: failed to fetch visit for identifier %@", buf, 0xCu);
      }

      v51 = 0;
    }

    _Block_object_dispose(&v69, 8);
    _Block_object_dispose(v75, 8);
  }

  else
  {
    v52 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *v75 = 0;
      _os_log_error_impl(&dword_2304B3000, v52, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor:fetchLearnedLocationOfInterestForVisitIdentifier no visit identifier provided, returning.", v75, 2u);
    }

    v51 = 0;
  }

  return v51;
}

void __112__RTTripSegmentTransitionPreprocessor_fetchLearnedLocationOfInterestForVisitIdentifier_outLearnedVisitLocation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 && !v5)
  {
    v7 = [a2 location];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __112__RTTripSegmentTransitionPreprocessor_fetchLearnedLocationOfInterestForVisitIdentifier_outLearnedVisitLocation___block_invoke_190(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  if (v10 && !v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
  v9 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)fetchLearnedLocationOfInterestWithinDistance:(double)a3 location:(id)a4
{
  v54[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    *v47 = 0;
    v48 = v47;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__138;
    v51 = __Block_byref_object_dispose__138;
    v52 = 0;
    v7 = dispatch_semaphore_create(0);
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__138;
    v45 = __Block_byref_object_dispose__138;
    v46 = 0;
    v8 = [(RTTripSegmentTransitionPreprocessor *)self learnedLocationManager];
    v9 = [v8 learnedLocationStore];
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __93__RTTripSegmentTransitionPreprocessor_fetchLearnedLocationOfInterestWithinDistance_location___block_invoke;
    v37 = &unk_2788C4490;
    v39 = v47;
    v40 = &v41;
    v10 = v7;
    v38 = v10;
    [v9 fetchLocationsOfInterestWithinDistance:v6 location:&v34 handler:a3];

    v11 = (v42 + 5);
    obj = v42[5];
    v12 = v10;
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v12, v14))
    {
      v15 = [MEMORY[0x277CBEAA8] now];
      [v15 timeIntervalSinceDate:v13];
      v17 = v16;
      v18 = objc_opt_new();
      v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_113];
      v20 = [MEMORY[0x277CCACC8] callStackSymbols];
      v21 = [v20 filteredArrayUsingPredicate:v19];
      v22 = [v21 firstObject];

      [v18 submitToCoreAnalytics:v22 type:1 duration:v17];
      v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v24 = MEMORY[0x277CCA9B8];
      v54[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v54 count:1];
      v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

      if (v26)
      {
        v27 = v26;

        obj = v26;
      }
    }

    objc_storeStrong(v11, obj);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v28 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v32 = *(v48 + 5);
        *buf = 138739971;
        *&buf[4] = v32;
        _os_log_debug_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: fetchLearnedLocationOfInterestForVisitIdentifier fetched learnedLocationOfInterest: %{sensitive}@", buf, 0xCu);
      }
    }

    v29 = *(v48 + 5);

    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(v47, 8);
  }

  else
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *v47 = 0;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor:fetchLearnedLocationOfInterestWithinDistance no location provided, returning.", v47, 2u);
    }

    v29 = 0;
  }

  return v29;
}

void __93__RTTripSegmentTransitionPreprocessor_fetchLearnedLocationOfInterestWithinDistance_location___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (!v5 && *(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [v12 firstObject];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)appendTransitionToCurrentVisit
{
  v168[1] = *MEMORY[0x277D85DE8];
  if ([(RTTripSegmentTransitionPreprocessor *)self createContrivedTransitionToCurrentVisit])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor:appendTransitionToCurrentVisit - start.", buf, 2u);
      }
    }

    if (![(NSMutableArray *)self->_tripSegmentTransitions count])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      oslog = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor:appendTransitionToCurrentVisit no previous transitions, not adding transition to current visit.", buf, 2u);
      }

      goto LABEL_83;
    }

    v4 = objc_alloc(MEMORY[0x277D01340]);
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D01470]];
    v6 = [MEMORY[0x277CBEB98] setWithObject:&unk_28459F228];
    oslog = [v4 initWithAscending:0 confidence:v5 dateInterval:0 labelVisit:0 limit:&unk_28459F210 sources:v6];

    *buf = 0;
    v143 = buf;
    v144 = 0x3032000000;
    v145 = __Block_byref_object_copy__138;
    v146 = __Block_byref_object_dispose__138;
    v147 = 0;
    v136 = 0;
    v137 = &v136;
    v138 = 0x3032000000;
    v139 = __Block_byref_object_copy__138;
    v140 = __Block_byref_object_dispose__138;
    v141 = 0;
    v7 = dispatch_semaphore_create(0);
    v8 = [(RTTripSegmentTransitionPreprocessor *)self visitManager];
    v132[0] = MEMORY[0x277D85DD0];
    v132[1] = 3221225472;
    v132[2] = __69__RTTripSegmentTransitionPreprocessor_appendTransitionToCurrentVisit__block_invoke;
    v132[3] = &unk_2788C4490;
    v134 = buf;
    v135 = &v136;
    v9 = v7;
    v133 = v9;
    [v8 fetchStoredVisitsWithOptions:oslog handler:v132];

    v11 = (v143 + 40);
    v10 = *(v143 + 5);
    dsema = v9;
    v12 = [MEMORY[0x277CBEAA8] now];
    v13 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v13))
    {
      v14 = [MEMORY[0x277CBEAA8] now];
      [v14 timeIntervalSinceDate:v12];
      v16 = v15;
      v17 = objc_opt_new();
      v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_113];
      v19 = [MEMORY[0x277CCACC8] callStackSymbols];
      v20 = [v19 filteredArrayUsingPredicate:v18];
      v21 = [v20 firstObject];

      [v17 submitToCoreAnalytics:v21 type:1 duration:v16];
      v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v163) = 0;
        _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", &v163, 2u);
      }

      v23 = MEMORY[0x277CCA9B8];
      v157 = *MEMORY[0x277CCA450];
      *&v163 = @"semaphore wait timeout";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v163 forKeys:&v157 count:1];
      v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v24];

      if (v25)
      {
        v26 = v25;

        v10 = v25;
      }
    }

    objc_storeStrong(v11, v10);
    if (*(v143 + 5))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v27 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v28 = *(v143 + 5);
          LODWORD(v163) = 138412290;
          *(&v163 + 4) = v28;
          v29 = "RTTripSegmentTransitionPreprocessor:appendTransitionToCurrentVisit, failed to fetch visit: %@, not adding transition to current location.";
          v30 = v27;
          v31 = 12;
LABEL_25:
          _os_log_debug_impl(&dword_2304B3000, v30, OS_LOG_TYPE_DEBUG, v29, &v163, v31);
          goto LABEL_81;
        }

        goto LABEL_81;
      }

      goto LABEL_82;
    }

    v32 = v137[5];
    if (!v32 || ![v32 type] || objc_msgSend(v137[5], "type") == 3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v27 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v163) = 0;
          v29 = "RTTripSegmentTransitionPreprocessor:appendTransitionToCurrentVisit not currently in a visit, not adding transition to current location.";
          v30 = v27;
          v31 = 2;
          goto LABEL_25;
        }

LABEL_81:
      }

LABEL_82:

      _Block_object_dispose(&v136, 8);
      _Block_object_dispose(buf, 8);

LABEL_83:
      return;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v33 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v82 = v137[5];
        LODWORD(v163) = 138739971;
        *(&v163 + 4) = v82;
        _os_log_debug_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor:appendTransitionToCurrentVisit, found current (destination) visit: %{sensitive}@", &v163, 0xCu);
      }
    }

    v34 = [(NSMutableArray *)self->_tripSegmentTransitions lastObject];
    v27 = [v34 visitIdentifierDestination];

    *&v163 = 0;
    *(&v163 + 1) = &v163;
    v164 = 0x3032000000;
    v165 = __Block_byref_object_copy__138;
    v166 = __Block_byref_object_dispose__138;
    v167 = 0;
    v35 = dispatch_semaphore_create(0);
    v157 = 0;
    v158 = &v157;
    v159 = 0x3032000000;
    v160 = __Block_byref_object_copy__138;
    v161 = __Block_byref_object_dispose__138;
    v162 = 0;
    v36 = [(RTTripSegmentTransitionPreprocessor *)self learnedLocationManager];
    v37 = [v36 learnedLocationStore];
    v128[0] = MEMORY[0x277D85DD0];
    v128[1] = 3221225472;
    v128[2] = __69__RTTripSegmentTransitionPreprocessor_appendTransitionToCurrentVisit__block_invoke_198;
    v128[3] = &unk_2788C61C0;
    v130 = &v163;
    v131 = &v157;
    v38 = v35;
    v129 = v38;
    [v37 fetchVisitWithIdentifier:v27 handler:v128];

    v39 = (v158 + 5);
    obj = v158[5];
    v120 = v38;
    v40 = [MEMORY[0x277CBEAA8] now];
    v41 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v120, v41))
    {
      v42 = [MEMORY[0x277CBEAA8] now];
      [v42 timeIntervalSinceDate:v40];
      v44 = v43;
      v45 = objc_opt_new();
      v46 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_113];
      v47 = [MEMORY[0x277CCACC8] callStackSymbols];
      v48 = [v47 filteredArrayUsingPredicate:v46];
      v49 = [v48 firstObject];

      [v45 submitToCoreAnalytics:v49 type:1 duration:v44];
      v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
      {
        *v149 = 0;
        _os_log_fault_impl(&dword_2304B3000, v50, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v149, 2u);
      }

      v51 = MEMORY[0x277CCA9B8];
      v153 = *MEMORY[0x277CCA450];
      *v149 = @"semaphore wait timeout";
      v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v149 forKeys:&v153 count:1];
      v53 = [v51 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v52];

      if (v53)
      {
        v54 = v53;

        obj = v53;
      }
    }

    objc_storeStrong(v39, obj);
    v55 = *(*(&v163 + 1) + 40);
    v56 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (!v55)
    {
      if (!v56)
      {
LABEL_80:

        _Block_object_dispose(&v157, 8);
        _Block_object_dispose(&v163, 8);

        goto LABEL_81;
      }

      v64 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        *v149 = 138412290;
        *&v149[4] = v27;
        _os_log_debug_impl(&dword_2304B3000, v64, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor:appendTransitionToCurrentVisit cannot find origin visit with identifier %@, not adding transition to current location", v149, 0xCu);
      }

      goto LABEL_79;
    }

    if (v56)
    {
      v57 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        v110 = *(*(&v163 + 1) + 40);
        *v149 = 138412290;
        *&v149[4] = v110;
        _os_log_debug_impl(&dword_2304B3000, v57, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor:appendTransitionToCurrentVisit, found origin visit: %@", v149, 0xCu);
      }

      v55 = *(*(&v163 + 1) + 40);
    }

    distanceCalculator = self->_distanceCalculator;
    v59 = [v55 location];
    v60 = [v59 location];
    v61 = [v137[5] location];
    v127 = 0;
    [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:v60 toLocation:v61 error:&v127];
    v63 = v62;
    v64 = v127;

    v65 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v64)
    {
      if (v65)
      {
        v66 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          v67 = [*(*(&v163 + 1) + 40) location];
          v68 = [v67 location];
          v69 = [v137[5] location];
          *v149 = 138740227;
          *&v149[4] = v68;
          *&v149[12] = 2117;
          *&v149[14] = v69;
          _os_log_debug_impl(&dword_2304B3000, v66, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor:appendTransitionToCurrentVisit: failed to compute distance from %{sensitive}@ to %{sensitive}@, not adding transition to current location.", v149, 0x16u);
        }

        goto LABEL_78;
      }

LABEL_79:

      goto LABEL_80;
    }

    if (v65)
    {
      v70 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        *v149 = 134217984;
        *&v149[4] = v63;
        _os_log_debug_impl(&dword_2304B3000, v70, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor:appendTransitionToCurrentVisit: computed distanceFromLastVisit %.3f m.", v149, 0xCu);
      }
    }

    v71 = [*(*(&v163 + 1) + 40) exitDate];
    v72 = [v137[5] entry];
    v73 = [v71 isOnOrAfter:v72];

    if (v73)
    {
      v66 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v74 = *(*(&v163 + 1) + 40);
        v75 = v137[5];
        *v149 = 138740227;
        *&v149[4] = v74;
        *&v149[12] = 2117;
        *&v149[14] = v75;
        _os_log_error_impl(&dword_2304B3000, v66, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor:appendTransitionToCurrentVisit: originVisit.exitDate, %{sensitive}@, is on or after, destinationVisit.entry, %{sensitive}@, not adding transition to current location.", v149, 0x16u);
      }

      goto LABEL_78;
    }

    v76 = objc_alloc(MEMORY[0x277CCA970]);
    v77 = [*(*(&v163 + 1) + 40) exitDate];
    v78 = [v137[5] entry];
    v66 = [v76 initWithStartDate:v77 endDate:v78];

    [v66 duration];
    if (v79 >= 120.0)
    {
      v81 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v63 >= 500.0)
      {
        if (v81)
        {
          v83 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
          {
            *v149 = 138412546;
            *&v149[4] = v66;
            *&v149[12] = 2048;
            *&v149[14] = v63;
            _os_log_debug_impl(&dword_2304B3000, v83, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor:appendTransitionToCurrentVisit: transition interval %@, distance %f m.", v149, 0x16u);
          }
        }

        v153 = 0;
        v154 = &v153;
        v155 = 0x2020000000;
        v156 = 0;
        *v149 = 0;
        *&v149[8] = v149;
        *&v149[16] = 0x3032000000;
        v150 = __Block_byref_object_copy__138;
        v151 = __Block_byref_object_dispose__138;
        v152 = 0;
        v84 = dispatch_semaphore_create(0);
        motionActivityManager = self->_motionActivityManager;
        v86 = [v66 startDate];
        v87 = [v66 endDate];
        v123[0] = MEMORY[0x277D85DD0];
        v123[1] = 3221225472;
        v123[2] = __69__RTTripSegmentTransitionPreprocessor_appendTransitionToCurrentVisit__block_invoke_199;
        v123[3] = &unk_2788C4528;
        v125 = &v153;
        v126 = v149;
        v88 = v84;
        v124 = v88;
        [(RTMotionActivityManager *)motionActivityManager fetchPredominantMotionActivityTypeFromStartDate:v86 toEndDate:v87 withHandler:v123];

        v89 = (*&v149[8] + 40);
        v113 = *(*&v149[8] + 40);
        obja = v88;
        v115 = [MEMORY[0x277CBEAA8] now];
        v90 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(obja, v90))
        {
          v111 = [MEMORY[0x277CBEAA8] now];
          [v111 timeIntervalSinceDate:v115];
          v92 = v91;
          v93 = objc_opt_new();
          v94 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_113];
          v95 = [MEMORY[0x277CCACC8] callStackSymbols];
          v96 = [v95 filteredArrayUsingPredicate:v94];
          v97 = [v96 firstObject];

          [v93 submitToCoreAnalytics:v97 type:1 duration:v92];
          v98 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v98, OS_LOG_TYPE_FAULT))
          {
            *v148 = 0;
            _os_log_fault_impl(&dword_2304B3000, v98, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v148, 2u);
          }

          v99 = MEMORY[0x277CCA9B8];
          v168[0] = *MEMORY[0x277CCA450];
          *v148 = @"semaphore wait timeout";
          v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v148 forKeys:v168 count:1];
          v101 = [v99 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v100];

          if (v101)
          {
            v102 = v101;

            v113 = v101;
          }
        }

        objc_storeStrong(v89, v113);
        v116 = [RTLearnedTransition alloc];
        v103 = [RTTripSegmentManager uuidForTripSegmentOfType:1];
        v114 = [v66 startDate];
        v112 = [v66 endDate];
        v104 = [(NSMutableArray *)self->_tripSegmentTransitions lastObject];
        v105 = [v104 visitIdentifierDestination];
        v106 = [RTTripSegmentManager uuidForTripSegmentOfType:1];
        v107 = [MEMORY[0x277CBEAA8] now];
        v108 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:86400.0];
        v117 = [(RTLearnedTransition *)v116 initWithIdentifier:v103 startDate:v114 stopDate:v112 visitIdentifierOrigin:v105 visitIdentifierDestination:v106 creationDate:v107 expirationDate:v108 predominantMotionActivityType:v154[3]];

        [(NSMutableArray *)self->_tripSegmentTransitions addObject:v117];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v109 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
          {
            *v148 = 138739971;
            *&v148[4] = v117;
            _os_log_debug_impl(&dword_2304B3000, v109, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: adding transition to current visit %{sensitive}@", v148, 0xCu);
          }
        }

        _Block_object_dispose(v149, 8);
        _Block_object_dispose(&v153, 8);
        goto LABEL_78;
      }

      if (v81)
      {
        v80 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          *v149 = 134218240;
          *&v149[4] = v63;
          *&v149[12] = 2048;
          *&v149[14] = 0x407F400000000000;
          _os_log_debug_impl(&dword_2304B3000, v80, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor:appendTransitionToCurrentVisit: transition distance from last visit %f less than threshold %f, not adding transition to current location.", v149, 0x16u);
        }

        goto LABEL_58;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v80 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
      {
        *v149 = 138412546;
        *&v149[4] = v66;
        *&v149[12] = 2048;
        *&v149[14] = 0x405E000000000000;
        _os_log_debug_impl(&dword_2304B3000, v80, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor:appendTransitionToCurrentVisit: transition interval %@ less than threshold %f, not adding transition to current location.", v149, 0x16u);
      }

LABEL_58:
    }

LABEL_78:

    goto LABEL_79;
  }
}

void __69__RTTripSegmentTransitionPreprocessor_appendTransitionToCurrentVisit__block_invoke(uint64_t a1, void *a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v10 = obj;
  v6 = a2;
  v7 = [v6 firstObject];

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __69__RTTripSegmentTransitionPreprocessor_appendTransitionToCurrentVisit__block_invoke_198(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  if (v10 && !v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
  v9 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __69__RTTripSegmentTransitionPreprocessor_appendTransitionToCurrentVisit__block_invoke_199(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor: Failed to fetch motion activities, error, %@, using RTMotionActivityTypeUnknown", &v11, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v11 = 134217984;
        v12 = a2;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "RTTripSegmentTransitionPreprocessor: Predominant motion activity, %lu", &v11, 0xCu);
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)applyElevationAdjustmentToLoiLocations
{
  v2 = [(RTTripSegmentTransitionPreprocessor *)self defaultsManager];
  v3 = [v2 objectForKey:@"RTDefaultsTripSegmentAdjustElevationForBreadcrumbs"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)createContrivedTransitionToCurrentVisit
{
  v2 = [(RTTripSegmentTransitionPreprocessor *)self defaultsManager];
  v3 = [v2 objectForKey:@"RTDefaultsTripSegmentCreateContrivedTransitionToCurrentVisit"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)getLocationLookbackSeconds
{
  v2 = [(RTTripSegmentTransitionPreprocessor *)self defaultsManager];
  v3 = [v2 objectForKey:@"RTDefaultsTripSegmentLocationLookbackSecondsAtTripEndpoint"];

  if (v3)
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 300;
  }

  return v4;
}

- (id)fetchEndpointCLLocationForTransition:(id)a3 atOrigin:(BOOL)a4
{
  v4 = a4;
  v116 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v69 = v5;
  v68 = v4;
  if (v4)
  {
    [v5 visitIdentifierOrigin];
  }

  else
  {
    [v5 visitIdentifierDestination];
  }
  v72 = ;
  v93 = 0;
  v94 = &v93;
  v95 = 0x3032000000;
  v96 = __Block_byref_object_copy__138;
  v97 = __Block_byref_object_dispose__138;
  v98 = 0;
  v6 = dispatch_semaphore_create(0);
  v87 = 0;
  v88 = &v87;
  v89 = 0x3032000000;
  v90 = __Block_byref_object_copy__138;
  v91 = __Block_byref_object_dispose__138;
  v92 = 0;
  v7 = [(RTTripSegmentTransitionPreprocessor *)self learnedLocationManager];
  v8 = [v7 learnedLocationStore];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __85__RTTripSegmentTransitionPreprocessor_fetchEndpointCLLocationForTransition_atOrigin___block_invoke;
  v83[3] = &unk_2788C61C0;
  v85 = &v93;
  v86 = &v87;
  v9 = v6;
  v84 = v9;
  [v8 fetchVisitWithIdentifier:v72 handler:v83];

  v11 = (v88 + 5);
  v10 = v88[5];
  v12 = v9;
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v12, v14))
  {
    v15 = [MEMORY[0x277CBEAA8] now];
    [v15 timeIntervalSinceDate:v13];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_113];
    v20 = [MEMORY[0x277CCACC8] callStackSymbols];
    v21 = [v20 filteredArrayUsingPredicate:v19];
    v22 = [v21 firstObject];

    [v18 submitToCoreAnalytics:v22 type:1 duration:v17];
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v24 = MEMORY[0x277CCA9B8];
    *v100 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v100 count:1];
    v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

    if (v26)
    {
      v27 = v26;

      v10 = v26;
    }
  }

  objc_storeStrong(v11, v10);
  if (v94[5])
  {
    v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    v29 = v69;
    if (v28)
    {
      v30 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v61 = v94[5];
        v62 = "destination";
        if (v68)
        {
          v62 = "origin";
        }

        *buf = 138740483;
        *&buf[4] = v61;
        *&buf[12] = 2112;
        *&buf[14] = v72;
        *&buf[22] = 2080;
        *&buf[24] = v62;
        _os_log_debug_impl(&dword_2304B3000, v30, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: fetchEndpointCLLocationForTransition: fetched visit, %{sensitive}@, for identifier, %@, at %s", buf, 0x20u);
      }

      v29 = v69;
    }

    if (v68)
    {
      [v29 startDate];
    }

    else
    {
      [v29 stopDate];
    }
    v31 = ;
    v112 = 0u;
    memset(v113, 0, 28);
    v111 = 0u;
    memset(v110, 0, sizeof(v110));
    memset(v109, 0, sizeof(v109));
    memset(buf, 0, sizeof(buf));
    v33 = objc_alloc(MEMORY[0x277CE41F8]);
    v34 = [v94[5] location];
    v35 = [v33 initWithRTLocation:v34];
    v36 = v35;
    if (v35)
    {
      [v35 clientLocation];
    }

    else
    {
      v112 = 0u;
      memset(v113, 0, 28);
      v111 = 0u;
      memset(v110, 0, sizeof(v110));
      memset(v109, 0, sizeof(v109));
      memset(buf, 0, sizeof(buf));
    }

    *(v109 + 12) = xmmword_230B01530;
    LODWORD(v111) = 13;
    [v31 timeIntervalSinceReferenceDate];
    *(v110 + 12) = v37;
    v77 = 0;
    v78 = &v77;
    v79 = 0x3032000000;
    v80 = __Block_byref_object_copy__138;
    v81 = __Block_byref_object_dispose__138;
    v38 = objc_alloc(MEMORY[0x277CE41F8]);
    v105 = v111;
    v106 = v112;
    v107[0] = v113[0];
    *(v107 + 12) = *(v113 + 12);
    v101 = v109[0];
    v102 = v109[1];
    v103 = v110[0];
    v104 = v110[1];
    *v100 = *buf;
    *&v100[16] = *&buf[16];
    v82 = [v38 initWithClientLocation:v100];
    if ([(RTTripSegmentTransitionPreprocessor *)self applyElevationAdjustmentToLoiLocations])
    {
      v39 = dispatch_semaphore_create(0);
      *v100 = 0;
      *&v100[8] = v100;
      *&v100[16] = 0x3032000000;
      *&v100[24] = __Block_byref_object_copy__138;
      *&v101 = __Block_byref_object_dispose__138;
      *(&v101 + 1) = 0;
      v40 = [(RTTripSegmentTransitionPreprocessor *)self elevationAdjuster];
      v99 = v78[5];
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __85__RTTripSegmentTransitionPreprocessor_fetchEndpointCLLocationForTransition_atOrigin___block_invoke_213;
      v73[3] = &unk_2788C4490;
      v75 = &v77;
      v76 = v100;
      v42 = v39;
      v74 = v42;
      [v40 adjustElevationForLocations:v41 handler:v73];

      v43 = (*&v100[8] + 40);
      obj = *(*&v100[8] + 40);
      v44 = v42;
      v71 = [MEMORY[0x277CBEAA8] now];
      v45 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v44, v45))
      {
        v66 = [MEMORY[0x277CBEAA8] now];
        [v66 timeIntervalSinceDate:v71];
        v47 = v46;
        v48 = objc_opt_new();
        v49 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_113];
        v50 = [MEMORY[0x277CCACC8] callStackSymbols];
        v51 = [v50 filteredArrayUsingPredicate:v49];
        v52 = [v51 firstObject];

        [v48 submitToCoreAnalytics:v52 type:1 duration:v47];
        v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
        {
          *v115 = 0;
          _os_log_fault_impl(&dword_2304B3000, v53, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v115, 2u);
        }

        v54 = MEMORY[0x277CCA9B8];
        v114 = *MEMORY[0x277CCA450];
        *v115 = @"semaphore wait timeout";
        v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:&v114 count:1];
        v56 = [v54 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v55];

        if (v56)
        {
          v57 = v56;

          obj = v56;
        }
      }

      objc_storeStrong(v43, obj);
      _Block_object_dispose(v100, 8);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v58 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        v63 = v78[5];
        [v31 timeIntervalSinceReferenceDate];
        v65 = "destination";
        *v100 = 138413059;
        *&v100[4] = v72;
        *&v100[12] = 2080;
        if (v68)
        {
          v65 = "origin";
        }

        *&v100[14] = v65;
        *&v100[22] = 2117;
        *&v100[24] = v63;
        LOWORD(v101) = 2048;
        *(&v101 + 2) = v64;
        _os_log_debug_impl(&dword_2304B3000, v58, OS_LOG_TYPE_DEBUG, "RTTripSegmentTransitionPreprocessor: fetchEndpointCLLocationForTransition: identifier, %@, %s, LOI CLLocation, %{sensitive}@, timestamp, %.6f", v100, 0x2Au);
      }
    }

    v32 = v78[5];
    _Block_object_dispose(&v77, 8);
  }

  else
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v60 = "destination";
      if (v68)
      {
        v60 = "origin";
      }

      *buf = 138412546;
      *&buf[4] = v72;
      *&buf[12] = 2080;
      *&buf[14] = v60;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor: fetchEndpointCLLocationForTransition: failed to fetch visit for identifier %@ at %s", buf, 0x16u);
    }

    v32 = 0;
  }

  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(&v93, 8);

  return v32;
}

void __85__RTTripSegmentTransitionPreprocessor_fetchEndpointCLLocationForTransition_atOrigin___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 location];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __85__RTTripSegmentTransitionPreprocessor_fetchEndpointCLLocationForTransition_atOrigin___block_invoke_213(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (!v5 && [v12 count] == 1)
  {
    v6 = [v12 firstObject];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)estimateExitTimestampAtOrigin:(id)a3 startLoiLocation:(id)a4 startBreadcrumbDistance:(double)a5 error:(id *)a6
{
  v88[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v64 = v10;
  v65 = a4;
  if (!a6)
  {
    v30 = 0;
    goto LABEL_45;
  }

  if (!v10)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *v77 = 0;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tripStartTimestamp", v77, 2u);
    }

    v32 = _RTErrorInvalidParameterCreate(@"tripStartTimestamp");
    goto LABEL_16;
  }

  if (!v65)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *v77 = 0;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startLoiLocation", v77, 2u);
    }

    v32 = _RTErrorInvalidParameterCreate(@"startLoiLocation");
LABEL_16:
    v30 = 0;
    *a6 = v32;
    goto LABEL_45;
  }

  context = objc_autoreleasePoolPush();
  v11 = [(RTTripSegmentTransitionPreprocessor *)self getLocationLookbackSeconds];
  v59 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v10 sinceDate:-v11];
  v60 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v59 endDate:v10];
  v61 = [objc_alloc(MEMORY[0x277D01320]) initWithDateInterval:v60 horizontalAccuracy:v11 batchSize:0 ascending:1.79769313e308];
  *v77 = 0;
  v78 = v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__138;
  v81 = __Block_byref_object_dispose__138;
  v82 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__138;
  v75 = __Block_byref_object_dispose__138;
  v76 = 0;
  v12 = dispatch_semaphore_create(0);
  v13 = [(RTTripSegmentTransitionPreprocessor *)self locationManager];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __116__RTTripSegmentTransitionPreprocessor_estimateExitTimestampAtOrigin_startLoiLocation_startBreadcrumbDistance_error___block_invoke;
  v67[3] = &unk_2788C4490;
  v69 = &v71;
  v70 = v77;
  v14 = v12;
  v68 = v14;
  [v13 fetchStoredLocationsWithOptions:v61 handler:v67];

  dsema = v14;
  v15 = [MEMORY[0x277CBEAA8] now];
  v16 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsema, v16))
  {
    v17 = [MEMORY[0x277CBEAA8] now];
    [v17 timeIntervalSinceDate:v15];
    v19 = v18;
    v20 = objc_opt_new();
    v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_113];
    v22 = [MEMORY[0x277CCACC8] callStackSymbols];
    v23 = [v22 filteredArrayUsingPredicate:v21];
    v24 = [v23 firstObject];

    [v20 submitToCoreAnalytics:v24 type:1 duration:v19];
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v26 = MEMORY[0x277CCA9B8];
    v88[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v88 count:1];
    v28 = [v26 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v27];

    if (v28)
    {
      v29 = v28;
    }
  }

  else
  {
    v28 = 0;
  }

  v62 = v28;
  v34 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v54 = [*(v78 + 5) count];
    v55 = v72[5];
    *buf = 134218498;
    *&buf[4] = v54;
    v84 = 2112;
    v85 = v55;
    v86 = 2112;
    v87 = v62;
    _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor: fetchStoredLocationsWithOptions, startTimeTuningLoc count, %lu, locFetchError, %@, semaStartTimeTuningError, %@", buf, 0x20u);
  }

  v35 = v72[5] | v62;
  v57 = v35 == 0;
  if (v35)
  {
    v37 = 0;
    goto LABEL_41;
  }

  v36 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:v65];
  v37 = 0;
  v38 = 0;
  v39 = a5 + a5;
  *&v40 = 138412290;
  v56 = v40;
  while (v38 < [*(v78 + 5) count])
  {
    v41 = objc_autoreleasePoolPush();
    v42 = objc_alloc(MEMORY[0x277D01160]);
    v43 = [*(v78 + 5) objectAtIndexedSubscript:v38];
    v44 = [v42 initWithCLLocation:v43];

    v45 = [(RTTripSegmentTransitionPreprocessor *)self distanceCalculator];
    v66 = 0;
    [v45 distanceFromLocation:v36 toLocation:v44 error:&v66];
    v47 = v46;
    v48 = v66;

    if (v48)
    {
      v49 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = v56;
        *&buf[4] = v48;
        _os_log_error_impl(&dword_2304B3000, v49, OS_LOG_TYPE_ERROR, "RTTripSegmentTransitionPreprocessor: distanceFromLocation, errorInDistanceFromLoc, %@", buf, 0xCu);
      }

      v50 = 0;
    }

    else
    {
      if (v47 >= 10.0 && v47 <= v39)
      {
        v49 = [*(v78 + 5) objectAtIndexedSubscript:v38];
        v52 = [v49 timestamp];

        v50 = 1;
      }

      else
      {
        if (v47 >= 10.0)
        {
          v50 = 0;
          goto LABEL_36;
        }

        v49 = [*(v78 + 5) objectAtIndexedSubscript:v38];
        v52 = [v49 timestamp];

        v50 = 0;
      }

      v37 = v52;
    }

LABEL_36:
    objc_autoreleasePoolPop(v41);
    ++v38;
    if ((v50 & 1) == 0)
    {
      break;
    }
  }

LABEL_41:
  _Block_object_dispose(&v71, 8);

  _Block_object_dispose(v77, 8);
  objc_autoreleasePoolPop(context);
  if (v57)
  {
    v30 = v37;
  }

  else
  {
    v30 = 0;
  }

LABEL_45:

  return v30;
}

void __116__RTTripSegmentTransitionPreprocessor_estimateExitTimestampAtOrigin_startLoiLocation_startBreadcrumbDistance_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (!*(*(*(a1 + 40) + 8) + 40) && [v7 count])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)adjustTransitionEndpoints
{
  v217 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  transitionStartStopLocations = self->_transitionStartStopLocations;
  self->_transitionStartStopLocations = v2;

  if ([(NSMutableArray *)self->_tripSegmentTransitions count])
  {
    v4 = 0;
    v167 = *MEMORY[0x277D01448];
    v168 = *MEMORY[0x277CCA450];
    v5 = 0x277CBE000uLL;
    do
    {
      v174 = v4;
      v180 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:?];
      v6 = [(RTTripSegmentTransitionPreprocessor *)self fetchEndpointCLLocationForTransition:v180 atOrigin:1];
      v7 = [(RTTripSegmentTransitionPreprocessor *)self fetchEndpointCLLocationForTransition:v180 atOrigin:0];
      v8 = objc_alloc(MEMORY[0x277D01320]);
      v9 = objc_alloc(MEMORY[0x277CCA970]);
      v10 = [v180 startDate];
      v11 = [v180 stopDate];
      v12 = [v9 initWithStartDate:v10 endDate:v11];
      v173 = [v8 initWithDateInterval:v12 horizontalAccuracy:1 batchSize:0 boundingBoxLocation:1.79769313e308];

      v196 = 0;
      v197 = &v196;
      v198 = 0x3032000000;
      v199 = __Block_byref_object_copy__138;
      v200 = __Block_byref_object_dispose__138;
      v201 = 0;
      v13 = dispatch_semaphore_create(0);
      v14 = [(RTTripSegmentTransitionPreprocessor *)self locationManager];
      v193[0] = MEMORY[0x277D85DD0];
      v193[1] = 3221225472;
      v193[2] = __64__RTTripSegmentTransitionPreprocessor_adjustTransitionEndpoints__block_invoke;
      v193[3] = &unk_2788C45F0;
      v195 = &v196;
      v15 = v13;
      v194 = v15;
      [v14 fetchStoredLocationsWithOptions:v173 handler:v193];

      dsema = v15;
      v16 = [*(v5 + 2728) now];
      v17 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(dsema, v17))
      {
        v18 = [*(v5 + 2728) now];
        [v18 timeIntervalSinceDate:v16];
        v20 = v19;
        v21 = objc_opt_new();
        v22 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_113];
        v23 = [MEMORY[0x277CCACC8] callStackSymbols];
        v24 = [v23 filteredArrayUsingPredicate:v22];
        v25 = [v24 firstObject];

        [v21 submitToCoreAnalytics:v25 type:1 duration:v20];
        v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v26, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v27 = MEMORY[0x277CCA9B8];
        *&v202 = v168;
        *buf = @"semaphore wait timeout";
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v202 count:1];
        v29 = [v27 errorWithDomain:v167 code:15 userInfo:v28];

        if (v29)
        {
          v30 = v29;
        }
      }

      else
      {
        v29 = 0;
      }

      v31 = v29;
      v32 = objc_alloc(MEMORY[0x277D01320]);
      v33 = objc_alloc(MEMORY[0x277CCA970]);
      v34 = objc_alloc(*(v5 + 2728));
      v35 = [v180 stopDate];
      v36 = [v34 initWithTimeInterval:v35 sinceDate:-3600.0];
      v37 = [v180 stopDate];
      v38 = [v33 initWithStartDate:v36 endDate:v37];
      v172 = [v32 initWithDateInterval:v38 horizontalAccuracy:-1 batchSize:0 boundingBoxLocation:1.79769313e308];

      v187 = 0;
      v188 = &v187;
      v189 = 0x3032000000;
      v190 = __Block_byref_object_copy__138;
      v191 = __Block_byref_object_dispose__138;
      v192 = 0;

      v39 = dispatch_semaphore_create(0);
      v40 = [(RTTripSegmentTransitionPreprocessor *)self locationManager];
      v184[0] = MEMORY[0x277D85DD0];
      v184[1] = 3221225472;
      v184[2] = __64__RTTripSegmentTransitionPreprocessor_adjustTransitionEndpoints__block_invoke_2;
      v184[3] = &unk_2788C45F0;
      v186 = &v187;
      v41 = v39;
      v185 = v41;
      [v40 fetchStoredLocationsWithOptions:v172 handler:v184];

      v177 = v41;
      v42 = [*(v5 + 2728) now];
      v43 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v177, v43))
      {
        v44 = [*(v5 + 2728) now];
        [v44 timeIntervalSinceDate:v42];
        v46 = v45;
        v47 = objc_opt_new();
        v48 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_113];
        v49 = [MEMORY[0x277CCACC8] callStackSymbols];
        v50 = [v49 filteredArrayUsingPredicate:v48];
        v51 = [v50 firstObject];

        [v47 submitToCoreAnalytics:v51 type:1 duration:v46];
        v52 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v52, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v53 = MEMORY[0x277CCA9B8];
        *&v202 = v168;
        *buf = @"semaphore wait timeout";
        v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v202 count:1];
        v55 = [v53 errorWithDomain:v167 code:15 userInfo:v54];

        if (v55)
        {
          v56 = v55;
        }
      }

      else
      {
        v55 = 0;
      }

      v171 = v55;
      v57 = -1.0;
      v58 = -1.0;
      if (v197[5] && v6)
      {
        distanceCalculator = self->_distanceCalculator;
        v60 = objc_alloc(MEMORY[0x277D01160]);
        [v6 coordinate];
        v62 = v61;
        [v6 coordinate];
        v64 = v63;
        [v6 horizontalAccuracy];
        v66 = v65;
        v67 = [v6 timestamp];
        v68 = [v60 initWithLatitude:v67 longitude:v62 horizontalUncertainty:v64 date:v66];
        v69 = objc_alloc(MEMORY[0x277D01160]);
        [v197[5] coordinate];
        v71 = v70;
        [v197[5] coordinate];
        v73 = v72;
        [v197[5] horizontalAccuracy];
        v75 = v74;
        v76 = [v197[5] timestamp];
        v77 = [v69 initWithLatitude:v76 longitude:v71 horizontalUncertainty:v73 date:v75];
        v183 = 0;
        [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:v68 toLocation:v77 error:&v183];
        v58 = v78;
        v79 = v183;
      }

      if (v188[5] && v7)
      {
        v80 = self->_distanceCalculator;
        v81 = objc_alloc(MEMORY[0x277D01160]);
        [v7 coordinate];
        v83 = v82;
        [v7 coordinate];
        v85 = v84;
        [v7 horizontalAccuracy];
        v87 = v86;
        v88 = [v7 timestamp];
        v89 = [v81 initWithLatitude:v88 longitude:v83 horizontalUncertainty:v85 date:v87];
        v90 = objc_alloc(MEMORY[0x277D01160]);
        [v188[5] coordinate];
        v92 = v91;
        [v188[5] coordinate];
        v94 = v93;
        [v188[5] horizontalAccuracy];
        v96 = v95;
        v97 = [v188[5] timestamp];
        v98 = [v90 initWithLatitude:v97 longitude:v92 horizontalUncertainty:v94 date:v96];
        v182 = 0;
        [(RTDistanceCalculator *)v80 distanceFromLocation:v89 toLocation:v98 error:&v182];
        v57 = v99;
        v100 = v182;
      }

      v101 = v197[5];
      if (v101 && v6 && v58 > 0.0)
      {
        v102 = [v101 timestamp];
        v103 = [v6 timestamp];
        [v102 timeIntervalSinceDate:v103];
        v105 = v104;

        if (v105 < 0.0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v106 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
            {
              v107 = v197[5];
              *buf = 138740227;
              *&buf[4] = v6;
              *&buf[12] = 2112;
              *&buf[14] = v107;
              _os_log_impl(&dword_2304B3000, v106, OS_LOG_TYPE_INFO, "RTTripSegmentTransitionPreprocessor: startLoiLocation %{sensitive}@ is at or after time of startBreadcrumb %@, not adding start LOI", buf, 0x16u);
            }

            v176 = 0;
            goto LABEL_50;
          }

          v176 = 0;
LABEL_51:

          goto LABEL_52;
        }

        if (v105 <= 0.0)
        {
          v108 = v58 * 0.5;
        }

        else
        {
          v108 = v58 / v105;
        }

        if (v108 > 25.0)
        {
          v109 = objc_alloc(*(v5 + 2728));
          v110 = [v197[5] timestamp];
          v111 = [v109 initWithTimeInterval:v110 sinceDate:v58 / -25.0];

          if (v174)
          {
            v112 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v174 - 1];
            v106 = [v112 stopDate];
          }

          else
          {
            v106 = [*(v5 + 2728) distantPast];
          }

          v113 = [v111 isOnOrBefore:v106];
          v114 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
          if (v113)
          {
            if (v114)
            {
              v115 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
              {
                *buf = 138412547;
                *&buf[4] = v111;
                *&buf[12] = 2117;
                *&buf[14] = v6;
                _os_log_impl(&dword_2304B3000, v115, OS_LOG_TYPE_INFO, "RTTripSegmentTransitionPreprocessor: cannot find plausible start date (candidate %@) for startLoiLocation %{sensitive}@ that satisfies reasonable speed, not adding LOI", buf, 0x16u);
              }
            }

            v176 = 0;
          }

          else
          {
            if (v114)
            {
              v116 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
              {
                v117 = [v6 timestamp];
                *buf = 138412546;
                *&buf[4] = v117;
                *&buf[12] = 2112;
                *&buf[14] = v111;
                _os_log_impl(&dword_2304B3000, v116, OS_LOG_TYPE_INFO, "RTTripSegmentTransitionPreprocessor: adjusting startLoiLocation time from %@  to %@", buf, 0x16u);
              }
            }

            v215 = 0u;
            memset(v216, 0, 28);
            v214 = 0u;
            memset(v213, 0, sizeof(v213));
            memset(v212, 0, sizeof(v212));
            memset(buf, 0, sizeof(buf));
            [v6 clientLocation];
            [v111 timeIntervalSinceReferenceDate];
            *(v213 + 12) = v118;
            v119 = objc_alloc(MEMORY[0x277CE41F8]);
            v208 = v214;
            v209 = v215;
            v210[0] = v216[0];
            *(v210 + 12) = *(v216 + 12);
            v204 = v212[0];
            v205 = v212[1];
            v206 = v213[0];
            v207 = v213[1];
            v202 = *buf;
            v203 = *&buf[16];
            v176 = [v119 initWithClientLocation:&v202];
          }

          v6 = v111;
LABEL_50:

          goto LABEL_51;
        }
      }

      v176 = v6;
LABEL_52:
      if (!v188[5] || !v7 || v57 <= 0.0)
      {
        goto LABEL_67;
      }

      v120 = [v7 timestamp];
      v121 = [v188[5] timestamp];
      [v120 timeIntervalSinceDate:v121];
      v123 = v122;

      if (v123 >= 0.0)
      {
        if (v123 <= 0.0)
        {
          v127 = v57 * 0.5;
        }

        else
        {
          v127 = v57 / v123;
        }

        if (v127 <= 25.0)
        {
LABEL_67:
          v126 = v7;
          goto LABEL_83;
        }

        v128 = objc_alloc(*(v5 + 2728));
        v129 = [v188[5] timestamp];
        v130 = [v128 initWithTimeInterval:v129 sinceDate:v57 / 25.0];

        if (v174 == [(NSMutableArray *)self->_tripSegmentTransitions count]- 1)
        {
          v124 = [*(v5 + 2728) now];
        }

        else
        {
          v131 = [(NSMutableArray *)self->_tripSegmentTransitions objectAtIndexedSubscript:v174 + 1];
          v124 = [v131 startDate];
        }

        v132 = [v130 isOnOrAfter:v124];
        v133 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
        if (v132)
        {
          if (v133)
          {
            v134 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
            {
              *buf = 138412547;
              *&buf[4] = v130;
              *&buf[12] = 2117;
              *&buf[14] = v7;
              _os_log_impl(&dword_2304B3000, v134, OS_LOG_TYPE_INFO, "RTTripSegmentTransitionPreprocessor: cannot find plausible stop date (candidate %@) for startLoiLocation %{sensitive}@ that satisfies reasonable speed, not adding LOI", buf, 0x16u);
            }
          }

          v126 = 0;
        }

        else
        {
          if (v133)
          {
            v135 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
            {
              v136 = [v7 timestamp];
              *buf = 138412546;
              *&buf[4] = v136;
              *&buf[12] = 2112;
              *&buf[14] = v130;
              _os_log_impl(&dword_2304B3000, v135, OS_LOG_TYPE_INFO, "RTTripSegmentTransitionPreprocessor: adjusting stopLoiLocation time from %@  to %@", buf, 0x16u);
            }
          }

          v215 = 0u;
          memset(v216, 0, 28);
          v214 = 0u;
          memset(v213, 0, sizeof(v213));
          memset(v212, 0, sizeof(v212));
          memset(buf, 0, sizeof(buf));
          [v7 clientLocation];
          [v130 timeIntervalSinceReferenceDate];
          *(v213 + 12) = v137;
          v138 = objc_alloc(MEMORY[0x277CE41F8]);
          v208 = v214;
          v209 = v215;
          v210[0] = v216[0];
          *(v210 + 12) = *(v216 + 12);
          v204 = v212[0];
          v205 = v212[1];
          v206 = v213[0];
          v207 = v213[1];
          v202 = *buf;
          v203 = *&buf[16];
          v126 = [v138 initWithClientLocation:&v202];
        }

        v7 = v130;
        goto LABEL_81;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v124 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
        {
          v125 = v188[5];
          *buf = 138740227;
          *&buf[4] = v125;
          *&buf[12] = 2117;
          *&buf[14] = v7;
          _os_log_impl(&dword_2304B3000, v124, OS_LOG_TYPE_INFO, "RTTripSegmentTransitionPreprocessor: stopBreadcrumb %{sensitive}@ is at or after time of stopLoiLocation %{sensitive}@, not adding start LOI", buf, 0x16u);
        }

        v126 = 0;
LABEL_81:

        goto LABEL_82;
      }

      v126 = 0;
LABEL_82:

LABEL_83:
      if (v176)
      {
        [v176 timestamp];
      }

      else
      {
        [v180 startDate];
      }
      v139 = ;
      v175 = v126;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v140 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
        {
          v141 = [v180 identifier];
          v142 = v197[5];
          v143 = v188[5];
          *buf = 138413315;
          *&buf[4] = v141;
          *&buf[12] = 2117;
          *&buf[14] = v142;
          *&buf[22] = 2117;
          *&buf[24] = v143;
          LOWORD(v212[0]) = 2048;
          *(v212 + 2) = v58;
          WORD5(v212[0]) = 2048;
          *(v212 + 12) = v57;
          _os_log_impl(&dword_2304B3000, v140, OS_LOG_TYPE_INFO, "RTTripSegmentTransitionPreprocessor: adjustTransitionEndpoints:tid:%@,startBreadcrumb,%{sensitive}@,stopBreadcrumb,%{sensitive}@,startBreadcrumbDist,%f,stopBreadcrumbDist,%f", buf, 0x34u);
        }
      }

      v144 = [v139 dateByAddingTimeInterval:-60.0];
      if (v58 >= 0.0 && v176)
      {
        v181 = 0;
        v145 = [(RTTripSegmentTransitionPreprocessor *)self estimateExitTimestampAtOrigin:v139 startLoiLocation:v176 startBreadcrumbDistance:&v181 error:v58];
        v146 = v181;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v147 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v147, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v145;
            *&buf[12] = 2112;
            *&buf[14] = v146;
            _os_log_impl(&dword_2304B3000, v147, OS_LOG_TYPE_INFO, "RTTripSegmentTransitionPreprocessor: pushBackStartDate, %@, error, %@", buf, 0x16u);
          }
        }

        if (v145)
        {
          v148 = v145;

          v144 = v148;
        }

LABEL_102:
        goto LABEL_103;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v146 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v146, OS_LOG_TYPE_INFO, "RTTripSegmentTransitionPreprocessor: StartTimeTuning Not Run", buf, 2u);
        }

        goto LABEL_102;
      }

LABEL_103:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v149 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v149, OS_LOG_TYPE_INFO))
        {
          v150 = [v180 identifier];
          *buf = 138412802;
          *&buf[4] = v150;
          *&buf[12] = 2112;
          *&buf[14] = v139;
          *&buf[22] = 2112;
          *&buf[24] = v144;
          _os_log_impl(&dword_2304B3000, v149, OS_LOG_TYPE_INFO, "RTTripSegmentTransitionPreprocessor: StartTimeTuning:tid:%@,frm,%@,to,%@", buf, 0x20u);
        }
      }

      v151 = v5;
      v152 = [RTLearnedTransition alloc];
      v153 = [v180 identifier];
      if (v175)
      {
        v154 = [v175 timestamp];
        v170 = v154;
      }

      else
      {
        v154 = [v180 stopDate];
        v169 = v154;
      }

      v155 = [v180 visitIdentifierOrigin];
      v156 = [v180 visitIdentifierDestination];
      v157 = [v180 creationDate];
      v158 = [v180 expirationDate];
      v159 = -[RTLearnedTransition initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:creationDate:expirationDate:predominantMotionActivityType:](v152, "initWithIdentifier:startDate:stopDate:visitIdentifierOrigin:visitIdentifierDestination:creationDate:expirationDate:predominantMotionActivityType:", v153, v144, v154, v155, v156, v157, v158, [v180 predominantMotionActivityType]);

      v160 = v170;
      if (!v175)
      {
        v160 = v169;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v161 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v161, OS_LOG_TYPE_INFO))
        {
          *buf = 134218242;
          *&buf[4] = v174;
          *&buf[12] = 2112;
          *&buf[14] = v159;
          _os_log_impl(&dword_2304B3000, v161, OS_LOG_TYPE_INFO, "RTTripSegmentTransitionPreprocessor: updated _tripSegmentTransitions[%tu] to, %@", buf, 0x16u);
        }
      }

      [(NSMutableArray *)self->_tripSegmentTransitions setObject:v159 atIndexedSubscript:v174];
      v162 = [[TransitionStartStopLocations alloc] initWithStartLocation:v176 stopLocation:v175];
      v163 = self->_transitionStartStopLocations;
      v164 = [v180 identifier];
      v165 = [v164 UUIDString];
      [(NSMutableDictionary *)v163 setValue:v162 forKey:v165];

      v5 = v151;
      _Block_object_dispose(&v187, 8);

      _Block_object_dispose(&v196, 8);
      v166 = [(NSMutableArray *)self->_tripSegmentTransitions count];
      v4 = v174 + 1;
    }

    while (v174 + 1 < v166);
  }
}

void __64__RTTripSegmentTransitionPreprocessor_adjustTransitionEndpoints__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (!a3 && [v8 count])
  {
    v5 = [v8 firstObject];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __64__RTTripSegmentTransitionPreprocessor_adjustTransitionEndpoints__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (!a3 && [v8 count])
  {
    v5 = [v8 lastObject];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

@end