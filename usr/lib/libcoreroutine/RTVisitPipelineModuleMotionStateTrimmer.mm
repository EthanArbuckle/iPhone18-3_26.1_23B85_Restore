@interface RTVisitPipelineModuleMotionStateTrimmer
- (RTVisitPipelineModuleMotionStateTrimmer)initWithMotionActivityManager:(id)a3 defaultsManager:(id)a4;
- (id)_fetchActivitiesWithinDateInterval:(id)a3 error:(id *)a4;
- (id)_trimVisitClusterForMotionActivity:(id)a3;
- (id)process:(id)a3;
@end

@implementation RTVisitPipelineModuleMotionStateTrimmer

- (RTVisitPipelineModuleMotionStateTrimmer)initWithMotionActivityManager:(id)a3 defaultsManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v14 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: motionActivityManager";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_9;
  }

  if (!v8)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: defaultsManager";
    goto LABEL_12;
  }

  v18.receiver = self;
  v18.super_class = RTVisitPipelineModuleMotionStateTrimmer;
  v10 = [(RTVisitPipelineModuleMotionStateTrimmer *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_motionActivityManager, a3);
    v12 = [[RTVisitPipelineMotionAccumulatorParams alloc] initWithDefaultsManager:v9];
    motionAccumulatorParams = v11->_motionAccumulatorParams;
    v11->_motionAccumulatorParams = v12;
  }

  self = v11;
  v14 = self;
LABEL_10:

  return v14;
}

- (id)_fetchActivitiesWithinDateInterval:(id)a3 error:(id *)a4
{
  v78[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (v7)
  {
    aSelector = a2;
    *v66 = 0;
    v67 = v66;
    v68 = 0x3032000000;
    v69 = __Block_byref_object_copy__98;
    v70 = __Block_byref_object_dispose__98;
    v71 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x3032000000;
    v63 = __Block_byref_object_copy__98;
    v64 = __Block_byref_object_dispose__98;
    v65 = 0;
    v8 = dispatch_semaphore_create(0);
    motionActivityManager = self->_motionActivityManager;
    v10 = [v7 startDate];
    v11 = [v7 endDate];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __84__RTVisitPipelineModuleMotionStateTrimmer__fetchActivitiesWithinDateInterval_error___block_invoke;
    v56[3] = &unk_2788C4490;
    v58 = v66;
    v59 = &v60;
    v12 = v8;
    v57 = v12;
    [(RTMotionActivityManager *)motionActivityManager fetchMotionActivitiesFromStartDate:v10 endDate:v11 handler:v56];

    dsema = v12;
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(dsema, v14))
    {
      v15 = [MEMORY[0x277CBEAA8] now];
      [v15 timeIntervalSinceDate:v13];
      v17 = v16;
      v18 = objc_opt_new();
      v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_84];
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
      v78[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v78 count:1];
      v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

      if (v26)
      {
        v27 = v26;
      }
    }

    else
    {
      v26 = 0;
    }

    v30 = v26;
    v31 = v30;
    if (a4 && v30)
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        v45 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        *&buf[4] = v44;
        v74 = 2112;
        v75 = v45;
        v76 = 2112;
        v77 = v31;
        _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v33 = v31;
      *a4 = v31;
    }

    else
    {
      if (!a4 || !v61[5])
      {
        v29 = objc_opt_new();
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v35 = *(v67 + 5);
        v36 = [v35 countByEnumeratingWithState:&v52 objects:v72 count:16];
        if (v36)
        {
          v37 = *v53;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v53 != v37)
              {
                objc_enumerationMutation(v35);
              }

              v39 = *(*(&v52 + 1) + 8 * i);
              v40 = [v39 startDate];
              v41 = [v7 containsDate:v40];

              if (v41)
              {
                [v29 addObject:v39];
              }
            }

            v36 = [v35 countByEnumeratingWithState:&v52 objects:v72 count:16];
          }

          while (v36);
        }

        goto LABEL_33;
      }

      v34 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v46 = objc_opt_class();
        v47 = NSStringFromClass(v46);
        v48 = NSStringFromSelector(aSelector);
        v49 = v61[5];
        *buf = 138412802;
        *&buf[4] = v47;
        v74 = 2112;
        v75 = v48;
        v76 = 2112;
        v77 = v49;
        _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      *a4 = v61[5];
    }

    v29 = *(v67 + 5);
LABEL_33:

    _Block_object_dispose(&v60, 8);
    _Block_object_dispose(v66, 8);

    goto LABEL_34;
  }

  v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *v66 = 0;
    _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval", v66, 2u);
  }

  if (a4)
  {
    _RTErrorInvalidParameterCreate(@"dateInterval");
    *a4 = v29 = 0;
  }

  else
  {
    v29 = 0;
  }

LABEL_34:

  return v29;
}

void __84__RTVisitPipelineModuleMotionStateTrimmer__fetchActivitiesWithinDateInterval_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_trimVisitClusterForMotionActivity:(id)a3
{
  v185 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v92 = objc_opt_class();
      v93 = NSStringFromClass(v92);
      v94 = NSStringFromSelector(a2);
      v95 = [v3 visit];
      v96 = [v95 entry];
      v97 = [v3 visit];
      v98 = [v97 exit];
      *buf = 138413058;
      v167 = v93;
      v168 = 2112;
      v169 = v94;
      v170 = 2112;
      v171 = v96;
      v172 = 2112;
      v173 = v98;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "%@ %@: Trimming input cluster for motion, between %@ and %@", buf, 0x2Au);
    }
  }

  v5 = [v3 visit];
  v151 = [v5 entry];

  v6 = [v3 visit];
  v150 = [v6 exit];

  v7 = objc_alloc(MEMORY[0x277CBEAA8]);
  [(RTVisitPipelineMotionAccumulatorParams *)self->_motionAccumulatorParams maxTimeToTrim];
  v9 = v8;
  v10 = [v3 points];
  v11 = [v10 firstDate];
  v12 = [v7 initWithTimeInterval:v11 sinceDate:v9];

  [(RTVisitPipelineMotionAccumulatorParams *)self->_motionAccumulatorParams maxTimeToTrim];
  v14 = v13;
  [(RTVisitPipelineMotionAccumulatorParams *)self->_motionAccumulatorParams motionLookWindowOutsideVisit];
  v139 = [v12 dateByAddingTimeInterval:-(v14 + v15)];
  v140 = v12;
  v165 = 0;
  v144 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v139 endDate:v12];
  v16 = [RTVisitPipelineModuleMotionStateTrimmer _fetchActivitiesWithinDateInterval:"_fetchActivitiesWithinDateInterval:error:" error:?];
  v17 = 0;
  if (v17 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v108 = objc_opt_class();
      v109 = NSStringFromClass(v108);
      v110 = NSStringFromSelector(a2);
      *buf = 138413058;
      v167 = v109;
      v168 = 2112;
      v169 = v110;
      v170 = 2112;
      v171 = v17;
      v172 = 2112;
      v173 = v3;
      _os_log_debug_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEBUG, "%@ %@: Failed to fetch motion activities at start, error, %@, for cluster %@", buf, 0x2Au);
    }
  }

  v19 = [[RTVisitPipelineMotionAccumulator alloc] initWithParams:self->_motionAccumulatorParams processInReverse:1];
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v141 = v16;
  v20 = [v16 reverseObjectEnumerator];
  v21 = [v20 countByEnumeratingWithState:&v161 objects:v184 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v162;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v162 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(RTVisitPipelineMotionAccumulator *)v19 processMotionActivity:*(*(&v161 + 1) + 8 * i)];
      }

      v22 = [v20 countByEnumeratingWithState:&v161 objects:v184 count:16];
    }

    while (v22);
  }

  v25 = [v144 startDate];
  [(RTVisitPipelineMotionAccumulator *)v19 finishMotionObservations:v25];

  v26 = [(RTVisitPipelineMotionAccumulator *)v19 getTrimDate];
  v138 = v26;
  if (v26)
  {
    v27 = [v26 laterDate:v151];

    v151 = v27;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v99 = objc_opt_class();
      v100 = NSStringFromClass(v99);
      v101 = NSStringFromSelector(a2);
      v102 = [v141 count];
      *buf = 138412802;
      v167 = v100;
      v168 = 2112;
      v169 = v101;
      v170 = 2048;
      v171 = v102;
      _os_log_debug_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEBUG, "%@ %@: Visit start, number of detected moving activities: %lu.", buf, 0x20u);
    }
  }

  v29 = objc_alloc(MEMORY[0x277CBEAA8]);
  [(RTVisitPipelineMotionAccumulatorParams *)self->_motionAccumulatorParams maxTimeToTrim];
  v31 = -v30;
  v32 = [v3 visit];
  v33 = [v32 exit];
  v34 = [v29 initWithTimeInterval:v33 sinceDate:v31];

  v35 = v34;
  v36 = objc_alloc(MEMORY[0x277CCA970]);
  v37 = [v3 visit];
  v38 = [v37 entry];
  v39 = [v35 laterDate:v38];
  [(RTVisitPipelineMotionAccumulatorParams *)self->_motionAccumulatorParams maxTimeToTrim];
  v41 = v40;
  [(RTVisitPipelineMotionAccumulatorParams *)self->_motionAccumulatorParams motionLookWindowOutsideVisit];
  v43 = [v36 initWithStartDate:v39 duration:v41 + v42];

  v160 = v17;
  v143 = v43;
  v44 = [(RTVisitPipelineModuleMotionStateTrimmer *)self _fetchActivitiesWithinDateInterval:v43 error:&v160];
  v45 = v160;

  if (v45 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v46 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      v111 = objc_opt_class();
      v112 = NSStringFromClass(v111);
      v113 = NSStringFromSelector(a2);
      *buf = 138413058;
      v167 = v112;
      v168 = 2112;
      v169 = v113;
      v170 = 2112;
      v171 = v45;
      v172 = 2112;
      v173 = v3;
      _os_log_debug_impl(&dword_2304B3000, v46, OS_LOG_TYPE_DEBUG, "%@ %@: Failed to fetch motion activities at end, error, %@, for cluster %@", buf, 0x2Au);
    }
  }

  v47 = [[RTVisitPipelineMotionAccumulator alloc] initWithParams:self->_motionAccumulatorParams processInReverse:0];
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v48 = v44;
  v49 = [v48 countByEnumeratingWithState:&v156 objects:v183 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v157;
    do
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v157 != v51)
        {
          objc_enumerationMutation(v48);
        }

        [(RTVisitPipelineMotionAccumulator *)v47 processMotionActivity:*(*(&v156 + 1) + 8 * j)];
      }

      v50 = [v48 countByEnumeratingWithState:&v156 objects:v183 count:16];
    }

    while (v50);
  }

  v53 = v143;
  v54 = [v143 endDate];
  [(RTVisitPipelineMotionAccumulator *)v47 finishMotionObservations:v54];

  v55 = [(RTVisitPipelineMotionAccumulator *)v47 getTrimDate];
  v137 = v55;
  if (v55)
  {
    v56 = [v55 earlierDate:v150];

    v150 = v56;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v57 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      v103 = objc_opt_class();
      v104 = NSStringFromClass(v103);
      NSStringFromSelector(a2);
      v106 = v105 = v45;
      v107 = [v48 count];
      *buf = 138412802;
      v167 = v104;
      v168 = 2112;
      v169 = v106;
      v170 = 2048;
      v171 = v107;
      _os_log_debug_impl(&dword_2304B3000, v57, OS_LOG_TYPE_DEBUG, "%@ %@: Visit end, number of detected moving activities: %lu.", buf, 0x20u);

      v45 = v105;
    }
  }

  v142 = v3;
  if ([v151 isOnOrBefore:v150])
  {
    v130 = v35;
    v131 = v45;
    log = objc_opt_new();
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v58 = [v3 points];
    v59 = [v58 locations];

    v60 = [v59 countByEnumeratingWithState:&v152 objects:v182 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v153;
      do
      {
        for (k = 0; k != v61; ++k)
        {
          if (*v153 != v62)
          {
            objc_enumerationMutation(v59);
          }

          v64 = *(*(&v152 + 1) + 8 * k);
          v65 = [v64 date];
          v66 = [v65 compare:v151];

          if (v66 != -1)
          {
            v67 = [v64 date];
            v68 = [v150 compare:v67];

            if (v68 != -1)
            {
              [log addObject:v64];
            }
          }
        }

        v61 = [v59 countByEnumeratingWithState:&v152 objects:v182 count:16];
      }

      while (v61);
    }

    if ([log count])
    {
      v69 = v142;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v70 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          v71 = objc_opt_class();
          v146 = NSStringFromClass(v71);
          aSelectora = NSStringFromSelector(a2);
          v128 = [v142 visit];
          v126 = [v128 entry];
          v72 = [v126 stringFromDate];
          v73 = [v151 stringFromDate];
          v125 = [v142 visit];
          v124 = [v125 exit];
          v74 = [v124 stringFromDate];
          v75 = [v150 stringFromDate];
          v123 = [v142 points];
          v76 = [v123 locations];
          v77 = v70;
          v78 = [v76 count];
          v79 = [log count];
          *buf = 138414082;
          v167 = v146;
          v168 = 2112;
          v169 = aSelectora;
          v170 = 2112;
          v171 = v72;
          v172 = 2112;
          v173 = v73;
          v174 = 2112;
          v175 = v74;
          v176 = 2112;
          v177 = v75;
          v178 = 2048;
          v179 = v78;
          v70 = v77;
          v180 = 2048;
          v181 = v79;
          _os_log_impl(&dword_2304B3000, v77, OS_LOG_TYPE_INFO, "%@ %@: Visit trimming, entry date %@ -> %@, exit date %@ -> %@ Locations count %lu -> %lu", buf, 0x52u);

          v69 = v142;
        }
      }

      v129 = objc_alloc(MEMORY[0x277D01428]);
      v147 = [v69 visit];
      v127 = [v147 type];
      aSelectorb = [v69 visit];
      v80 = [aSelectorb location];
      v81 = [log count];
      v82 = [v69 visit];
      [v82 confidence];
      v84 = v83;
      v85 = [v69 visit];
      v86 = [v85 placeInference];
      v87 = [v129 initWithDate:v151 type:v127 location:v80 entry:v151 exit:v150 dataPointCount:v81 confidence:v84 placeInference:v86];

      v88 = [RTVisitCluster alloc];
      v35 = v130;
      v89 = [[RTVisitLocationPoints alloc] initWithLocations:log];
      v90 = [(RTVisitCluster *)v88 initWithPoints:v89 visit:v87];

      v45 = v131;
    }

    else
    {
      v35 = v130;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v90 = 0;
        v45 = v131;
        goto LABEL_68;
      }

      v87 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      v45 = v131;
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
      {
        v120 = objc_opt_class();
        v121 = NSStringFromClass(v120);
        v122 = NSStringFromSelector(a2);
        *buf = 138413058;
        v167 = v121;
        v168 = 2112;
        v169 = v122;
        v170 = 2112;
        v171 = v151;
        v172 = 2112;
        v173 = v150;
        _os_log_debug_impl(&dword_2304B3000, v87, OS_LOG_TYPE_DEBUG, "%@ %@: Visit culled, no locations between %@ and %@", buf, 0x2Au);
      }

      v90 = 0;
    }

LABEL_68:
    v53 = v143;
    goto LABEL_69;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v90 = 0;
    goto LABEL_70;
  }

  log = _rt_log_facility_get_os_log(RTLogFacilityVisit);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    v114 = objc_opt_class();
    v115 = NSStringFromClass(v114);
    aSelectorc = NSStringFromSelector(a2);
    [v3 visit];
    v148 = v116 = v3;
    v117 = [v148 entry];
    v118 = [v116 visit];
    [v118 exit];
    v119 = v132 = v45;
    *buf = 138413058;
    v167 = v115;
    v168 = 2112;
    v169 = aSelectorc;
    v170 = 2112;
    v171 = v117;
    v172 = 2112;
    v173 = v119;
    _os_log_debug_impl(&dword_2304B3000, log, OS_LOG_TYPE_DEBUG, "%@ %@: Visit culled, only motion between %@ and %@", buf, 0x2Au);

    v45 = v132;
  }

  v90 = 0;
LABEL_69:

LABEL_70:

  return v90;
}

- (id)process:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v7)
    {
      v8 = v7;
      v27 = v4;
      v9 = *v32;
      v10 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          v13 = [v12 visit];
          v14 = [v13 entry];

          v15 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
          if (v14)
          {
            if (v15)
            {
              v16 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                v20 = objc_opt_class();
                v29 = NSStringFromClass(v20);
                v21 = NSStringFromSelector(a2);
                *buf = 138412803;
                v36 = v29;
                v37 = 2112;
                v38 = v21;
                v22 = v21;
                v39 = 2117;
                v40 = v12;
                _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "%@ %@: working on cluster, %{sensitive}@", buf, 0x20u);
              }
            }

            v17 = [(RTVisitPipelineModuleMotionStateTrimmer *)self _trimVisitClusterForMotionActivity:v12];
          }

          else
          {
            if (v15)
            {
              v18 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                v23 = objc_opt_class();
                v30 = NSStringFromClass(v23);
                v24 = NSStringFromSelector(a2);
                *buf = 138412802;
                v36 = v30;
                v37 = 2112;
                v38 = v24;
                v25 = v24;
                v39 = 2112;
                v40 = v12;
                _os_log_debug_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEBUG, "%@ %@: skipping cluster with null visit entry, %@ ", buf, 0x20u);
              }
            }

            v17 = v12;
          }

          v19 = v17;
          if (v17)
          {
            [v5 addObject:v17];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v8);
      v4 = v27;
    }
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inClusters.count", buf, 2u);
    }

    v5 = 0;
  }

  return v5;
}

@end