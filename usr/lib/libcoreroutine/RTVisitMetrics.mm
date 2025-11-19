@interface RTVisitMetrics
- (BOOL)collectBatchedMetricsForDateInterval:(id)a3 error:(id *)a4;
- (BOOL)collectMetricsForDateInterval:(id)a3 configurations:(id)a4 error:(id *)a5;
- (BOOL)collectRealtimeMetricsForDateInterval:(id)a3 error:(id *)a4;
- (RTVisitMetrics)initWithDistanceCalculator:(id)a3 learnedLocationStore:(id)a4 locationStore:(id)a5 motionActivityManager:(id)a6 visitManager:(id)a7;
- (id)_associatedLoiFromVisit:(id)a3;
- (id)_closestLoi:(id)a3 location:(id)a4;
- (id)_nearbyLoisFromVisit:(id)a3;
- (id)batchedMetricsForConfiguration:(unint64_t)a3 dateInterval:(id)a4 error:(id *)a5;
- (id)locationStoreMetricsForInterval:(id)a3;
- (id)metricForPipelineConfiguration:(unint64_t)a3 previousVisit:(id)a4 visit:(id)a5;
- (id)metricsForConfiguration:(unint64_t)a3 dateInterval:(id)a4 error:(id *)a5;
- (id)motionMetricsForDateInterval:(id)a3;
- (id)predominantMotionMetricsForTransitionForVisit:(id)a3 previousVisit:(id)a4;
- (id)predominantMotionMetricsForVisit:(id)a3 isPreviousVisit:(BOOL)a4;
- (id)realtimeMetricsForConfiguration:(unint64_t)a3 dateInterval:(id)a4 error:(id *)a5;
@end

@implementation RTVisitMetrics

- (RTVisitMetrics)initWithDistanceCalculator:(id)a3 learnedLocationStore:(id)a4 locationStore:(id)a5 motionActivityManager:(id)a6 visitManager:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v24 = v17;
  if (!v13)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: distanceCalculator";
LABEL_19:
    _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    goto LABEL_20;
  }

  if (!v14)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: learnedLocationStore";
    goto LABEL_19;
  }

  if (!v15)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: locationStore";
    goto LABEL_19;
  }

  if (!v16)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: motionActivityManager";
    goto LABEL_19;
  }

  if (!v17)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v22 = "Invalid parameter not satisfying: visitManager";
      goto LABEL_19;
    }

LABEL_20:

    v20 = 0;
    goto LABEL_21;
  }

  v25.receiver = self;
  v25.super_class = RTVisitMetrics;
  v18 = [(RTVisitMetrics *)&v25 init];
  p_isa = &v18->super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_distanceCalculator, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    objc_storeStrong(p_isa + 5, a7);
  }

  self = p_isa;
  v20 = self;
LABEL_21:

  return v20;
}

- (id)metricForPipelineConfiguration:(unint64_t)a3 previousVisit:(id)a4 visit:(id)a5
{
  v212 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [v9 entry];

  if (v10)
  {
    v11 = objc_opt_new();
    v12 = [v9 exit];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v9 date];
    }

    v16 = [v9 entry];
    v17 = [v14 isBeforeDate:v16];

    if (v17)
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 138739971;
        v211 = v9;
        _os_log_fault_impl(&dword_2304B3000, v18, OS_LOG_TYPE_FAULT, "end date is before entry date for visit, %{sensitive}@", buf, 0xCu);
      }

      v15 = 0;
      goto LABEL_105;
    }

    v209 = v8;
    v19 = objc_alloc(MEMORY[0x277CCA970]);
    v20 = [v9 entry];
    v21 = [v19 initWithStartDate:v20 endDate:v14];

    v207 = v21;
    v22 = [(RTVisitMetrics *)self locationStoreMetricsForInterval:v21];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22, "signalEnvironment")}];
    [v11 setObject:v23 forKeyedSubscript:@"signal_environment_type"];

    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22, "firstFixType")}];
    [v11 setObject:v24 forKeyedSubscript:@"entry_fix_type"];

    v25 = MEMORY[0x277CCABB0];
    [v22 firstFixHorizontalUncertainty];
    v26 = [v25 numberWithDouble:?];
    [v11 setObject:v26 forKeyedSubscript:@"entry_fix_horizontal_uncertainty"];

    v27 = objc_alloc(MEMORY[0x277CCA970]);
    v28 = [v14 dateByAddingTimeInterval:60.0];
    v29 = [v27 initWithStartDate:v14 endDate:v28];

    v205 = v29;
    v30 = [(RTVisitMetrics *)self locationStoreMetricsForInterval:v29];
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v30, "firstFixType")}];
    [v11 setObject:v31 forKeyedSubscript:@"exit_fix_type"];

    v32 = MEMORY[0x277CCABB0];
    v204 = v30;
    [v30 firstFixHorizontalUncertainty];
    v33 = [v32 numberWithDouble:?];
    [v11 setObject:v33 forKeyedSubscript:@"exit_fix_horizontal_uncertainty"];

    v34 = [(RTVisitMetrics *)self predominantMotionMetricsForVisit:v9 isPreviousVisit:0];
    [v11 addEntriesFromDictionary:v34];

    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v11 setObject:v35 forKeyedSubscript:@"pipelineConfiguration"];

    v36 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "type")}];
    [v11 setObject:v36 forKeyedSubscript:@"type"];

    v37 = MEMORY[0x277CCABB0];
    v38 = [v9 location];
    [v38 horizontalUncertainty];
    v39 = [v37 numberWithDouble:?];
    [v11 setObject:v39 forKeyedSubscript:@"uncertainty"];

    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22, "count")}];
    [v11 setObject:v40 forKeyedSubscript:@"dataPointCount"];

    v41 = MEMORY[0x277CCABB0];
    [v22 maxIntervalBetweenLocations];
    v42 = [v41 numberWithDouble:?];
    [v11 setObject:v42 forKeyedSubscript:@"maxIntervalBetweenLocations"];

    v43 = MEMORY[0x277CCABB0];
    [v22 spread];
    v44 = [v43 numberWithDouble:?];
    [v11 setObject:v44 forKeyedSubscript:@"2dSpread"];

    v45 = MEMORY[0x277CCABB0];
    [v9 confidence];
    v46 = [v45 numberWithDouble:?];
    [v11 setObject:v46 forKeyedSubscript:@"confidence"];

    v47 = [v9 entry];
    v206 = v14;
    if (v47)
    {
      v48 = [v9 exit];
      if (v48)
      {
        v49 = [v9 exit];
        v50 = [v9 entry];
        [v49 timeIntervalSinceDate:v50];
        v52 = v51;
      }

      else
      {
        v52 = 1.79769313e308;
      }
    }

    else
    {
      v52 = 1.79769313e308;
    }

    v53 = [MEMORY[0x277CCABB0] numberWithDouble:v52];
    [v11 setObject:v53 forKeyedSubscript:@"dwellInterval"];

    v54 = MEMORY[0x277CCABB0];
    v55 = [v9 date];
    v56 = [v9 exit];
    v57 = v56;
    if (!v56)
    {
      v57 = [v9 entry];
    }

    [v55 timeIntervalSinceDate:v57];
    v58 = [v54 numberWithDouble:?];
    [v11 setObject:v58 forKeyedSubscript:@"detectionLatency"];

    if (!v56)
    {
    }

    v59 = [(RTVisitMetrics *)self motionMetricsForDateInterval:v207];
    [v11 addEntriesFromDictionary:v59];

    v60 = [(RTVisitMetrics *)self _nearbyLoisFromVisit:v9];
    v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v60, "count")}];
    [v11 setObject:v61 forKeyedSubscript:@"nearbyLoiCount"];

    v203 = v60;
    if ([v60 count])
    {
      v62 = [v9 location];
      v63 = [(RTVisitMetrics *)self _closestLoi:v60 location:v62];

      v64 = MEMORY[0x277CCABB0];
      distanceCalculator = self->_distanceCalculator;
      v66 = [v9 location];
      v67 = [v63 location];
      v68 = [v67 location];
      [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:v66 toLocation:v68 error:0];
      v69 = [v64 numberWithDouble:?];
      [v11 setObject:v69 forKeyedSubscript:@"distanceFromClosestLoi"];

      v70 = MEMORY[0x277CCABB0];
      v71 = [v63 visits];
      v72 = [v70 numberWithUnsignedInteger:{objc_msgSend(v71, "count")}];
      [v11 setObject:v72 forKeyedSubscript:@"visitCountOfClosestLoi"];

      v73 = MEMORY[0x277CCABB0];
      v74 = [v63 place];
      v75 = [v73 numberWithUnsignedInteger:{objc_msgSend(v74, "type")}];
      [v11 setObject:v75 forKeyedSubscript:@"closestLoiType"];
    }

    else
    {
      v63 = 0;
    }

    v76 = [(RTVisitMetrics *)self _associatedLoiFromVisit:v9];
    v77 = v209;
    v202 = v63;
    v208 = v76;
    if (v76)
    {
      v78 = self->_distanceCalculator;
      v79 = [v9 location];
      v80 = [v76 location];
      v81 = [v80 location];
      [(RTDistanceCalculator *)v78 distanceFromLocation:v79 toLocation:v81 error:0];
      v83 = v82;

      v84 = [MEMORY[0x277CCABB0] numberWithDouble:v83];
      [v11 setObject:v84 forKeyedSubscript:@"distanceFromAssociatedLoi"];

      v85 = MEMORY[0x277CCABB0];
      v86 = [v76 visits];
      v87 = [v85 numberWithUnsignedInteger:{objc_msgSend(v86, "count")}];
      [v11 setObject:v87 forKeyedSubscript:@"visitCountOfAssociatedLoi"];

      v88 = MEMORY[0x277CCABB0];
      v89 = [v76 place];
      v90 = [v88 numberWithUnsignedInteger:{objc_msgSend(v89, "type")}];
      [v11 setObject:v90 forKeyedSubscript:@"associatedLoiType"];

      v91 = MEMORY[0x277CCABB0];
      v92 = [v76 location];
      v93 = [v92 location];
      [v93 horizontalUncertainty];
      v94 = [v91 numberWithDouble:?];
      [v11 setObject:v94 forKeyedSubscript:@"horizontalUncertaintyOfAssociatedLoi"];

      v95 = [v76 location];
      v96 = [v95 location];
      [v96 horizontalUncertainty];
      v98 = v97;

      if (v98 != 0.0)
      {
        v99 = MEMORY[0x277CCABB0];
        v100 = [v76 location];
        v101 = [v100 location];
        [v101 horizontalUncertainty];
        v103 = [v99 numberWithDouble:v83 / v102];
        [v11 setObject:v103 forKeyedSubscript:@"ratioBetweenDistanceAndHorizontalUncertainty"];
      }

      v77 = v209;
      if (v63)
      {
        v104 = MEMORY[0x277CCABB0];
        v105 = self->_distanceCalculator;
        v106 = [v63 location];
        v107 = [v106 location];
        v108 = [v76 location];
        v109 = [v108 location];
        [(RTDistanceCalculator *)v105 distanceFromLocation:v107 toLocation:v109 error:0];
        v110 = [v104 numberWithDouble:?];
        [v11 setObject:v110 forKeyedSubscript:@"distanceBetweenAssociatedLoiAndClosestLoi"];

        v76 = v208;
        v77 = v209;
      }
    }

    v111 = MEMORY[0x277CBEC38];
    v112 = MEMORY[0x277CBEC28];
    if (v77)
    {
      v113 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v77, "type")}];
      [v11 setObject:v113 forKeyedSubscript:@"previousVisitType"];

      v114 = MEMORY[0x277CCABB0];
      v115 = self->_distanceCalculator;
      v116 = [v9 location];
      v117 = [v77 location];
      [(RTDistanceCalculator *)v115 distanceFromLocation:v116 toLocation:v117 error:0];
      v118 = [v114 numberWithDouble:?];
      [v11 setObject:v118 forKeyedSubscript:@"distanceFromPreviousVisit"];

      v119 = MEMORY[0x277CCABB0];
      v120 = [v9 entry];
      v121 = v120;
      if (!v120)
      {
        v121 = [v9 exit];
      }

      v122 = [v77 exit];
      v123 = v122;
      if (!v122)
      {
        v123 = [v209 entry];
      }

      [v121 timeIntervalSinceDate:v123];
      v124 = [v119 numberWithDouble:?];
      [v11 setObject:v124 forKeyedSubscript:@"timeIntervalSincePreviousVisit"];

      if (!v122)
      {
      }

      if (!v120)
      {
      }

      v125 = [(RTVisitMetrics *)self _associatedLoiFromVisit:v209];
      v126 = MEMORY[0x277CCABB0];
      v200 = v125;
      v127 = [v125 place];
      v128 = [v126 numberWithUnsignedInteger:{objc_msgSend(v127, "type")}];
      [v11 setObject:v128 forKeyedSubscript:@"previousVisit_associated_loi_type"];

      v129 = [v9 exit];
      v130 = v129;
      if (v129)
      {
        v131 = v129;
      }

      else
      {
        v131 = [v9 entry];
      }

      v132 = [v209 exit];
      v133 = v132;
      if (v132)
      {
        v134 = v132;
      }

      else
      {
        v134 = [v209 entry];
      }

      v198 = v134;
      v199 = v131;
      [v131 timeIntervalSinceDate:v134];
      v136 = v135;
      v137 = [v9 placeInference];
      v138 = [v137 loiIdentifier];
      v139 = [v209 placeInference];
      v77 = [v139 loiIdentifier];
      v140 = [v138 isEqual:v77];

      [v11 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"is_reentry"];
      v76 = v208;
      if (v208)
      {
        if (v200)
        {
          if (v140)
          {
            [v9 confidence];
            v141 = *MEMORY[0x277D01470];
            if (v142 == *MEMORY[0x277D01470] && [v9 type] == 1)
            {
              [v209 confidence];
              if (v143 == v141 && [v209 type] == 3 && v136 < 240.0)
              {
                [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"is_reentry"];
              }
            }
          }
        }
      }

      v144 = [v209 exit];

      if (v144)
      {
        v145 = objc_alloc(MEMORY[0x277CCA970]);
        v146 = [v209 entry];
        v147 = [v209 exit];
        v197 = [v145 initWithStartDate:v146 endDate:v147];

        v148 = [(RTVisitMetrics *)self locationStoreMetricsForInterval:v197];
        v149 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v148, "firstFixType")}];
        [v11 setObject:v149 forKeyedSubscript:@"previousVisit_entry_fix_type"];

        v150 = MEMORY[0x277CCABB0];
        [v148 firstFixHorizontalUncertainty];
        v151 = [v150 numberWithDouble:?];
        [v11 setObject:v151 forKeyedSubscript:@"previousVisit_entry_fix_horizontal_uncertainty"];

        v152 = objc_alloc(MEMORY[0x277CCA970]);
        v153 = [v209 exit];
        v154 = [v209 exit];
        v155 = [v154 dateByAddingTimeInterval:60.0];
        v77 = [v152 initWithStartDate:v153 endDate:v155];

        v156 = [(RTVisitMetrics *)self locationStoreMetricsForInterval:v77];
        v157 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v156, "firstFixType")}];
        [v11 setObject:v157 forKeyedSubscript:@"previousVisit_exit_fix_type"];

        v158 = MEMORY[0x277CCABB0];
        [v156 firstFixHorizontalUncertainty];
        v159 = [v158 numberWithDouble:?];
        [v11 setObject:v159 forKeyedSubscript:@"previousVisit_exit_fix_horizontal_uncertainty"];

        v160 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v148, "signalEnvironment")}];
        [v11 setObject:v160 forKeyedSubscript:@"previousVisit_signal_environment_type"];

        v161 = [(RTVisitMetrics *)self predominantMotionMetricsForVisit:v209 isPreviousVisit:1];
        [v11 addEntriesFromDictionary:v161];

        v76 = v208;
        v162 = [(RTVisitMetrics *)self predominantMotionMetricsForTransitionForVisit:v9 previousVisit:v209];
        [v11 addEntriesFromDictionary:v162];
      }

      v111 = MEMORY[0x277CBEC38];
      v112 = MEMORY[0x277CBEC28];
    }

    v163 = [v9 placeInference];
    if (v163)
    {
      v164 = v111;
    }

    else
    {
      v164 = v112;
    }

    [v11 setObject:v164 forKeyedSubscript:@"hasPlaceInference"];

    v165 = MEMORY[0x277CCAC30];
    v166 = [v9 entry];
    v167 = [v165 predicateWithFormat:@"%K < %@", @"entryDate", v166];

    v168 = [v76 visits];
    v201 = v167;
    v169 = [v168 filteredArrayUsingPredicate:v167];
    if ([v169 count])
    {
      v170 = v111;
    }

    else
    {
      v170 = v112;
    }

    [v11 setObject:v170 forKeyedSubscript:@"previouslyVisited"];

    v171 = MEMORY[0x277CCABB0];
    v172 = [v9 placeInference];
    [v172 confidence];
    v173 = [v171 numberWithDouble:?];
    [v11 setObject:v173 forKeyedSubscript:@"place_confidence"];

    v174 = [v9 placeInference];
    v175 = [v174 mapItem];

    v176 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v175, "validMUID")}];
    [v11 setObject:v176 forKeyedSubscript:@"place_hasMuid"];

    v177 = MEMORY[0x277CCABB0];
    v178 = [v175 address];
    v179 = [v178 thoroughfare];
    if (v179)
    {
      v180 = 1;
    }

    else
    {
      v77 = [v175 address];
      v172 = [v77 mergedThoroughfare];
      v180 = v172 != 0;
    }

    v181 = [v177 numberWithInt:v180];
    [v11 setObject:v181 forKeyedSubscript:@"place_hasStreetAddress"];

    if (!v179)
    {
    }

    v182 = MEMORY[0x277CCABB0];
    v183 = [v175 address];
    v184 = [v183 iso3166SubdivisionCode];
    v185 = [v182 numberWithInt:v184 != 0];
    [v11 setObject:v185 forKeyedSubscript:@"place_hasSubdivision"];

    v186 = MEMORY[0x277CCABB0];
    v187 = [v175 address];
    v188 = [v187 iso3166CountryCode];
    v189 = [v186 numberWithInt:v188 != 0];
    [v11 setObject:v189 forKeyedSubscript:@"place_hasTerritory"];

    v190 = MEMORY[0x277CBEC28];
    [v11 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"place_source_BluePOI"];
    [v11 setObject:v190 forKeyedSubscript:@"place_source_Contacts"];
    [v11 setObject:v190 forKeyedSubscript:@"place_source_EventKit"];
    [v11 setObject:v190 forKeyedSubscript:@"place_source_ForwardGeocode"];
    [v11 setObject:v190 forKeyedSubscript:@"place_source_LearnedPlace"];
    [v11 setObject:v190 forKeyedSubscript:@"place_source_LocalSearch"];
    [v11 setObject:v190 forKeyedSubscript:@"place_source_MapItemHandle"];
    [v11 setObject:v190 forKeyedSubscript:@"place_source_MapItemURL"];
    [v11 setObject:v190 forKeyedSubscript:@"place_source_MapsSupportFavorite"];
    [v11 setObject:v190 forKeyedSubscript:@"place_source_MapsSupportHistoryEntryPlaceDisplay"];
    [v11 setObject:v190 forKeyedSubscript:@"place_source_MapsSupportHistoryEntryRoute"];
    [v11 setObject:v190 forKeyedSubscript:@"place_source_Portrait"];
    [v11 setObject:v190 forKeyedSubscript:@"place_source_ProactiveExperts"];
    [v11 setObject:v190 forKeyedSubscript:@"place_source_ReverseGeocode"];
    v191 = @"place_source_Unknown";
    [v11 setObject:v190 forKeyedSubscript:@"place_source_Unknown"];
    [v11 setObject:v190 forKeyedSubscript:@"place_source_User"];
    v8 = v209;
    if ([v175 source])
    {
      v192 = v207;
      if (([v175 source] & 1) != 0 || (objc_msgSend(v175, "source") & 0x40000) != 0)
      {
        [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"place_source_ReverseGeocode"];
      }

      if (([v175 source] & 2) != 0)
      {
        [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"place_source_ForwardGeocode"];
      }

      if (([v175 source] & 4) != 0)
      {
        [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"place_source_Contacts"];
      }

      if (([v175 source] & 8) != 0)
      {
        [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"place_source_User"];
      }

      if (([v175 source] & 0x10) != 0)
      {
        [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"place_source_MapsSupportFavorite"];
      }

      if (([v175 source] & 0x40) != 0)
      {
        [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"place_source_MapsSupportHistoryEntryRoute"];
      }

      if (([v175 source] & 0x80) != 0)
      {
        [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"place_source_MapsSupportHistoryEntryPlaceDisplay"];
      }

      if (([v175 source] & 0x100) != 0)
      {
        [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"place_source_EventKit"];
      }

      if (([v175 source] & 0x200) != 0)
      {
        [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"place_source_LocalSearch"];
      }

      if (([v175 source] & 0x400) != 0)
      {
        [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"place_source_MapItemHandle"];
      }

      if (([v175 source] & 0x800) != 0)
      {
        [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"place_source_ProactiveExperts"];
      }

      if (([v175 source] & 0x1000) != 0)
      {
        [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"place_source_Portrait"];
      }

      if (([v175 source] & 0x2000) != 0)
      {
        [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"place_source_LearnedPlace"];
      }

      if (([v175 source] & 0x4000) != 0)
      {
        [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"place_source_BluePOI"];
      }

      if (([v175 source] & 0x8000) != 0)
      {
        [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"place_source_MapItemURL"];
      }

      if (([v175 source] & 0x80000) == 0)
      {
        goto LABEL_104;
      }

      v191 = @"place_source_POIHistory";
    }

    else
    {
      v192 = v207;
    }

    [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v191];
LABEL_104:
    v193 = MEMORY[0x277CCABB0];
    v194 = [v9 location];
    v195 = [v193 numberWithUnsignedInteger:{objc_msgSend(v194, "sourceAccuracy")}];
    [v11 setObject:v195 forKeyedSubscript:@"sourceAccuracy"];

    v15 = v11;
    v14 = v206;
LABEL_105:

    goto LABEL_106;
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visit.entry", buf, 2u);
  }

  v15 = 0;
LABEL_106:

  return v15;
}

- (id)locationStoreMetricsForInterval:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    *v34 = 0;
    v35 = v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__35;
    v38 = __Block_byref_object_dispose__35;
    v39 = 0;
    v5 = dispatch_semaphore_create(0);
    v6 = [[RTLocationStoreMetricOptions alloc] initWithDateInterval:v4 uncertaintyThreshold:1 includeFixMetrics:1 includeSignalEnvironment:235.0];
    locationStore = self->_locationStore;
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __50__RTVisitMetrics_locationStoreMetricsForInterval___block_invoke;
    v31 = &unk_2788C7FD8;
    v33 = v34;
    v8 = v5;
    v32 = v8;
    [(RTLocationStore *)locationStore fetchMetricsWithOptions:v6 handler:&v28];
    v9 = v8;
    v10 = [MEMORY[0x277CBEAA8] now];
    v11 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v9, v11))
    {
      v12 = [MEMORY[0x277CBEAA8] now];
      [v12 timeIntervalSinceDate:v10];
      v14 = v13;
      v15 = objc_opt_new();
      v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_29];
      v17 = [MEMORY[0x277CCACC8] callStackSymbols];
      v18 = [v17 filteredArrayUsingPredicate:v16];
      v19 = [v18 firstObject];

      [v15 submitToCoreAnalytics:v19 type:1 duration:v14];
      v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v20, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v21 = MEMORY[0x277CCA9B8];
      v40 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v40 count:1];
      v23 = [v21 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v22];

      if (v23)
      {
        v24 = v23;
      }
    }

    v25 = *(v35 + 5);
    _Block_object_dispose(v34, 8);
  }

  else
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *v34 = 0;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval", v34, 2u);
    }

    v25 = objc_opt_new();
  }

  return v25;
}

void __50__RTVisitMetrics_locationStoreMetricsForInterval___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)predominantMotionMetricsForVisit:(id)a3 isPreviousVisit:(BOOL)a4
{
  v78 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    *buf = 0;
    v71 = buf;
    v72 = 0x3032000000;
    v73 = __Block_byref_object_copy__35;
    v74 = __Block_byref_object_dispose__35;
    v75 = objc_opt_new();
    v7 = dispatch_semaphore_create(0);
    if ([v6 type] == 1)
    {
      v8 = [v6 entry];
      v61 = [v8 dateByAddingTimeInterval:-60.0];

      v9 = [v6 entry];
      v10 = [v9 dateByAddingTimeInterval:1800.0];

      motionActivityManager = self->_motionActivityManager;
      v12 = [v6 date];
      v13 = [v10 earlierDate:v12];
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __67__RTVisitMetrics_predominantMotionMetricsForVisit_isPreviousVisit___block_invoke;
      v66[3] = &unk_2788C8000;
      v69 = a4;
      v68 = buf;
      v14 = v7;
      v67 = v14;
      [(RTMotionActivityManager *)motionActivityManager fetchPredominantMotionActivityTypeFromStartDate:v61 toEndDate:v13 withHandler:v66];

      v7 = v14;
      v15 = [MEMORY[0x277CBEAA8] now];
      v16 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v7, v16))
      {
        v17 = [MEMORY[0x277CBEAA8] now];
        [v17 timeIntervalSinceDate:v15];
        v19 = v18;
        v20 = objc_opt_new();
        v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_29];
        v22 = [MEMORY[0x277CCACC8] callStackSymbols];
        v23 = [v22 filteredArrayUsingPredicate:v21];
        v24 = [v23 firstObject];

        [v20 submitToCoreAnalytics:v24 type:1 duration:v19];
        v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          *v77 = 0;
          _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v77, 2u);
        }

        v26 = MEMORY[0x277CCA9B8];
        v76 = *MEMORY[0x277CCA450];
        *v77 = @"semaphore wait timeout";
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:&v76 count:1];
        v28 = [v26 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v27];

        if (v28)
        {
          v29 = v28;

          v30 = 0;
LABEL_20:

          v55 = v28;
          if (v30)
          {
            v56 = v66;
LABEL_29:

            goto LABEL_30;
          }

          v57 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            *v77 = 0;
            _os_log_error_impl(&dword_2304B3000, v57, OS_LOG_TYPE_ERROR, "Could not collect entry time interval of motion metrics", v77, 2u);
          }

          goto LABEL_34;
        }
      }

      else
      {
        v28 = 0;
      }

      v30 = 1;
      goto LABEL_20;
    }

    if ([v6 type] != 3)
    {
      v55 = 0;
LABEL_30:
      v32 = *(v71 + 5);
LABEL_35:

      _Block_object_dispose(buf, 8);
      goto LABEL_36;
    }

    v33 = dispatch_semaphore_create(0);

    v34 = [v6 exit];
    v61 = [v34 dateByAddingTimeInterval:-60.0];

    v35 = [v6 exit];
    v10 = [v35 dateByAddingTimeInterval:1800.0];

    v36 = self->_motionActivityManager;
    v37 = [v6 date];
    v38 = [v10 earlierDate:v37];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __67__RTVisitMetrics_predominantMotionMetricsForVisit_isPreviousVisit___block_invoke_211;
    v62[3] = &unk_2788C8000;
    v65 = a4;
    v64 = buf;
    v39 = v33;
    v63 = v39;
    [(RTMotionActivityManager *)v36 fetchPredominantMotionActivityTypeFromStartDate:v61 toEndDate:v38 withHandler:v62];

    v7 = v39;
    v40 = [MEMORY[0x277CBEAA8] now];
    v41 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v7, v41))
    {
      v60 = [MEMORY[0x277CBEAA8] now];
      [v60 timeIntervalSinceDate:v40];
      v43 = v42;
      v44 = objc_opt_new();
      v45 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_29];
      v46 = [MEMORY[0x277CCACC8] callStackSymbols];
      v47 = [v46 filteredArrayUsingPredicate:v45];
      v48 = [v47 firstObject];

      [v44 submitToCoreAnalytics:v48 type:1 duration:v43];
      v49 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        *v77 = 0;
        _os_log_fault_impl(&dword_2304B3000, v49, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v77, 2u);
      }

      v50 = MEMORY[0x277CCA9B8];
      v76 = *MEMORY[0x277CCA450];
      *v77 = @"semaphore wait timeout";
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:&v76 count:1];
      v52 = [v50 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v51];

      if (v52)
      {
        v53 = v52;

        v54 = 0;
LABEL_27:

        v55 = v52;
        if (v54)
        {
          v56 = v62;
          goto LABEL_29;
        }

        v58 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          *v77 = 0;
          _os_log_error_impl(&dword_2304B3000, v58, OS_LOG_TYPE_ERROR, "Could not collect exit time interval of motion metrics", v77, 2u);
        }

LABEL_34:
        v32 = 0;
        goto LABEL_35;
      }
    }

    else
    {
      v52 = 0;
    }

    v54 = 1;
    goto LABEL_27;
  }

  v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visit", buf, 2u);
  }

  v32 = objc_opt_new();
LABEL_36:

  return v32;
}

intptr_t __67__RTVisitMetrics_predominantMotionMetricsForVisit_isPreviousVisit___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  if (v3)
  {
    v5 = @"previousVisit_motion_state_entry";
  }

  else
  {
    v5 = @"motion_state_entry";
  }

  [*(*(*(a1 + 40) + 8) + 40) setObject:v4 forKeyedSubscript:v5];

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

intptr_t __67__RTVisitMetrics_predominantMotionMetricsForVisit_isPreviousVisit___block_invoke_211(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  if (v3)
  {
    v5 = @"previousVisit_motion_state_exit";
  }

  else
  {
    v5 = @"motion_state_exit";
  }

  [*(*(*(a1 + 40) + 8) + 40) setObject:v4 forKeyedSubscript:v5];

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

- (id)predominantMotionMetricsForTransitionForVisit:(id)a3 previousVisit:(id)a4
{
  aSelector = a2;
  v49[1] = *MEMORY[0x277D85DE8];
  v38 = a3;
  v6 = a4;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__35;
  v46 = __Block_byref_object_dispose__35;
  v47 = objc_opt_new();
  v7 = dispatch_semaphore_create(0);
  v8 = [v6 exit];
  v9 = [v8 dateByAddingTimeInterval:1800.0];

  motionActivityManager = self->_motionActivityManager;
  v11 = [v6 exit];
  v12 = [v38 entry];
  v13 = [v9 earlierDate:v12];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __78__RTVisitMetrics_predominantMotionMetricsForTransitionForVisit_previousVisit___block_invoke;
  v39[3] = &unk_2788C8028;
  v41 = &v42;
  v14 = v7;
  v40 = v14;
  [(RTMotionActivityManager *)motionActivityManager fetchPredominantMotionActivityTypeFromStartDate:v11 toEndDate:v13 withHandler:v39];

  v15 = v14;
  v16 = [MEMORY[0x277CBEAA8] now];
  v17 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v15, v17))
  {
    v18 = [MEMORY[0x277CBEAA8] now];
    [v18 timeIntervalSinceDate:v16];
    v20 = v19;
    v21 = objc_opt_new();
    v22 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_29];
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
    v49[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v49 count:1];
    v29 = [v27 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v28];

    if (v29)
    {
      v30 = v29;

      v31 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v29 = 0;
  }

  v31 = 1;
LABEL_8:

  v32 = v29;
  if ((v31 & 1) == 0)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v36 = NSStringFromSelector(aSelector);
      *buf = 138412290;
      *&buf[4] = v36;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%@ timed out", buf, 0xCu);
    }
  }

  v34 = v43[5];

  _Block_object_dispose(&v42, 8);

  return v34;
}

intptr_t __78__RTVisitMetrics_predominantMotionMetricsForTransitionForVisit_previousVisit___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v3 forKeyedSubscript:@"motion_state_transition"];

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

- (id)motionMetricsForDateInterval:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v52 = objc_opt_new();
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__35;
  v71 = __Block_byref_object_dispose__35;
  v72 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__35;
  v65 = __Block_byref_object_dispose__35;
  v66 = 0;
  v5 = dispatch_semaphore_create(0);
  v51 = v4;
  v6 = [v4 startDate];
  v49 = [v6 dateByAddingTimeInterval:3600.0];

  motionActivityManager = self->_motionActivityManager;
  v8 = [v4 startDate];
  v9 = [v4 endDate];
  v10 = [v49 earlierDate:v9];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __47__RTVisitMetrics_motionMetricsForDateInterval___block_invoke;
  v57[3] = &unk_2788C4490;
  v59 = &v67;
  v60 = &v61;
  v11 = v5;
  v58 = v11;
  [(RTMotionActivityManager *)motionActivityManager fetchMotionActivitiesFromStartDate:v8 endDate:v10 handler:v57];

  dsema = v11;
  v12 = [MEMORY[0x277CBEAA8] now];
  v13 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsema, v13))
  {
    v14 = [MEMORY[0x277CBEAA8] now];
    [v14 timeIntervalSinceDate:v12];
    v16 = v15;
    v17 = objc_opt_new();
    v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_29];
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
    v74 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v74 count:1];
    v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v24];

    if (v25)
    {
      v26 = v25;

      v27 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v25 = 0;
  }

  v27 = 1;
LABEL_8:

  v48 = v25;
  if ((v27 & 1) == 0)
  {
    objc_storeStrong(v62 + 5, v25);
  }

  v28 = [RTMotionActivityHistogram alloc];
  v29 = v68[5];
  v30 = [v51 startDate];
  v31 = [v51 endDate];
  v32 = [(RTMotionActivityHistogram *)v28 initWithActivites:v29 betweenDate:v30 andDate:v31];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v33 = [&unk_2845A0AB8 countByEnumeratingWithState:&v53 objects:v73 count:16];
  if (v33)
  {
    v34 = *v54;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v54 != v34)
        {
          objc_enumerationMutation(&unk_2845A0AB8);
        }

        v36 = *(*(&v53 + 1) + 8 * i);
        v37 = [v36 unsignedIntegerValue];
        if (v37 < 7)
        {
          v38 = off_2788C8048[v37];
          [(RTMotionActivityHistogram *)v32 totalInterval];
          if (v39 <= 0.0)
          {
            v45 = 0;
          }

          else
          {
            v40 = -[RTMotionActivityHistogram binForType:](v32, "binForType:", [v36 unsignedIntegerValue]);
            [v40 interval];
            v42 = v41;
            [(RTMotionActivityHistogram *)v32 totalInterval];
            v44 = v43;

            v45 = (v42 / v44 * 100.0 + 0.5);
          }

          v46 = [MEMORY[0x277CCABB0] numberWithInteger:v45];
          [v52 setObject:v46 forKeyedSubscript:v38];
        }
      }

      v33 = [&unk_2845A0AB8 countByEnumeratingWithState:&v53 objects:v73 count:16];
    }

    while (v33);
  }

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v67, 8);

  return v52;
}

void __47__RTVisitMetrics_motionMetricsForDateInterval___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)metricsForConfiguration:(unint64_t)a3 dateInterval:(id)a4 error:(id *)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (a3 - 3 < 2)
  {
    v9 = [(RTVisitMetrics *)self batchedMetricsForConfiguration:a3 dateInterval:v8 error:a5];
    goto LABEL_5;
  }

  if (a3 - 1 <= 1)
  {
    v9 = [(RTVisitMetrics *)self realtimeMetricsForConfiguration:a3 dateInterval:v8 error:a5];
LABEL_5:
    a5 = v9;
    goto LABEL_6;
  }

  if (a5)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D01448];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = @"unsupported configuration";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a5 = [v11 errorWithDomain:v12 code:1 userInfo:v13];

    a5 = 0;
  }

LABEL_6:

  return a5;
}

- (id)batchedMetricsForConfiguration:(unint64_t)a3 dateInterval:(id)a4 error:(id *)a5
{
  v112 = *MEMORY[0x277D85DE8];
  v70 = a4;
  if (a3 == 4)
  {
    v72 = [MEMORY[0x277CBEB18] array];
    *buf = 0;
    v92 = buf;
    v93 = 0x3032000000;
    v94 = __Block_byref_object_copy__35;
    v95 = __Block_byref_object_dispose__35;
    v96 = 0;
    v85 = 0;
    v86 = &v85;
    v87 = 0x3032000000;
    v88 = __Block_byref_object_copy__35;
    v89 = __Block_byref_object_dispose__35;
    v90 = 0;
    v8 = dispatch_semaphore_create(0);
    learnedLocationStore = self->_learnedLocationStore;
    v10 = [(RTLearnedLocationStore *)learnedLocationStore predicateForObjectsFromCurrentDevice];
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __68__RTVisitMetrics_batchedMetricsForConfiguration_dateInterval_error___block_invoke;
    v81[3] = &unk_2788C4490;
    v83 = buf;
    v84 = &v85;
    v11 = v8;
    v82 = v11;
    [(RTLearnedLocationStore *)learnedLocationStore fetchVisitsWithPredicate:v10 ascending:1 dateInterval:v70 limit:0 handler:v81];

    dsema = v11;
    v12 = [MEMORY[0x277CBEAA8] now];
    v13 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v13))
    {
      v14 = [MEMORY[0x277CBEAA8] now];
      [v14 timeIntervalSinceDate:v12];
      v16 = v15;
      v17 = objc_opt_new();
      v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_29];
      v19 = [MEMORY[0x277CCACC8] callStackSymbols];
      v20 = [v19 filteredArrayUsingPredicate:v18];
      v21 = [v20 firstObject];

      [v17 submitToCoreAnalytics:v21 type:1 duration:v16];
      v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *v104 = 0;
        _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v104, 2u);
      }

      v23 = MEMORY[0x277CCA9B8];
      v98 = *MEMORY[0x277CCA450];
      *v104 = @"semaphore wait timeout";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:&v98 count:1];
      v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v24];

      if (v25)
      {
        v26 = v25;

        v27 = 0;
LABEL_14:

        v30 = v25;
        if ((v27 & 1) == 0)
        {
          objc_storeStrong(v86 + 5, v25);
        }

        if ([*(v92 + 5) count])
        {
          *v104 = 0;
          v105 = v104;
          v106 = 0x3032000000;
          v107 = __Block_byref_object_copy__35;
          v108 = __Block_byref_object_dispose__35;
          v109 = 0;
          v98 = 0;
          v99 = &v98;
          v100 = 0x3032000000;
          v101 = __Block_byref_object_copy__35;
          v102 = __Block_byref_object_dispose__35;
          v103 = 0;
          v31 = dispatch_semaphore_create(0);

          v32 = self->_learnedLocationStore;
          v33 = [(RTLearnedLocationStore *)v32 predicateForObjectsFromCurrentDevice];
          v34 = objc_alloc(MEMORY[0x277CCA970]);
          v35 = [MEMORY[0x277CBEAA8] distantPast];
          v36 = [*(v92 + 5) firstObject];
          v37 = [v36 entryDate];
          v38 = [v34 initWithStartDate:v35 endDate:v37];
          v77[0] = MEMORY[0x277D85DD0];
          v77[1] = 3221225472;
          v77[2] = __68__RTVisitMetrics_batchedMetricsForConfiguration_dateInterval_error___block_invoke_270;
          v77[3] = &unk_2788C4490;
          v79 = v104;
          v80 = &v98;
          v39 = v31;
          v78 = v39;
          [(RTLearnedLocationStore *)v32 fetchVisitsWithPredicate:v33 ascending:0 dateInterval:v38 limit:&unk_28459CF78 handler:v77];

          dsema = v39;
          v40 = [MEMORY[0x277CBEAA8] now];
          v41 = dispatch_time(0, 3600000000000);
          if (!dispatch_semaphore_wait(dsema, v41))
          {
            goto LABEL_22;
          }

          v42 = [MEMORY[0x277CBEAA8] now];
          [v42 timeIntervalSinceDate:v40];
          v44 = v43;
          v45 = objc_opt_new();
          v46 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_29];
          v47 = [MEMORY[0x277CCACC8] callStackSymbols];
          v48 = [v47 filteredArrayUsingPredicate:v46];
          v49 = [v48 firstObject];

          [v45 submitToCoreAnalytics:v49 type:1 duration:v44];
          v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
          {
            *v111 = 0;
            _os_log_fault_impl(&dword_2304B3000, v50, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v111, 2u);
          }

          v51 = MEMORY[0x277CCA9B8];
          v110 = *MEMORY[0x277CCA450];
          *v111 = @"semaphore wait timeout";
          v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:&v110 count:1];
          v53 = [v51 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v52];

          if (v53)
          {
            v54 = v53;

            v55 = 0;
          }

          else
          {
LABEL_22:
            v55 = 1;
            v53 = v30;
          }

          v68 = v53;
          if ((v55 & 1) == 0)
          {
            objc_storeStrong(v99 + 5, v53);
          }

          if ([*(v105 + 5) count])
          {
            v56 = objc_alloc(MEMORY[0x277D01428]);
            v57 = [*(v105 + 5) firstObject];
            v58 = [v56 initWithLearnedVisit:v57];
          }

          else
          {
            v58 = 0;
          }

          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v59 = *(v92 + 5);
          v60 = [v59 countByEnumeratingWithState:&v73 objects:v97 count:16];
          if (v60)
          {
            v61 = *v74;
            do
            {
              v62 = 0;
              v63 = v58;
              do
              {
                if (*v74 != v61)
                {
                  objc_enumerationMutation(v59);
                }

                v64 = *(*(&v73 + 1) + 8 * v62);
                v65 = objc_autoreleasePoolPush();
                v58 = [objc_alloc(MEMORY[0x277D01428]) initWithLearnedVisit:v64];
                v66 = [(RTVisitMetrics *)self metricForPipelineConfiguration:4 previousVisit:v63 visit:v58];
                if (v66)
                {
                  [v72 addObject:v66];
                }

                objc_autoreleasePoolPop(v65);
                ++v62;
                v63 = v58;
              }

              while (v60 != v62);
              v60 = [v59 countByEnumeratingWithState:&v73 objects:v97 count:16];
            }

            while (v60);
          }

          v29 = v72;
          _Block_object_dispose(&v98, 8);

          _Block_object_dispose(v104, 8);
          v30 = v69;
        }

        else
        {
          v29 = 0;
        }

        _Block_object_dispose(&v85, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_40;
      }
    }

    else
    {
      v25 = 0;
    }

    v27 = 1;
    goto LABEL_14;
  }

  v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: configuration == RTVisitMetricsPipelineConfigurationBatchedHighConfidence", buf, 2u);
  }

  if (a5)
  {
    _RTErrorInvalidParameterCreate(@"configuration == RTVisitMetricsPipelineConfigurationBatchedHighConfidence");
    *a5 = v29 = 0;
  }

  else
  {
    v29 = 0;
  }

LABEL_40:

  return v29;
}

void __68__RTVisitMetrics_batchedMetricsForConfiguration_dateInterval_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __68__RTVisitMetrics_batchedMetricsForConfiguration_dateInterval_error___block_invoke_270(uint64_t a1, void *a2, void *a3)
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

- (id)realtimeMetricsForConfiguration:(unint64_t)a3 dateInterval:(id)a4 error:(id *)a5
{
  v112 = *MEMORY[0x277D85DE8];
  v71 = a4;
  if (a3 - 1 < 2)
  {
    v7 = MEMORY[0x277D01470];
    if (a3 == 1)
    {
      v7 = MEMORY[0x277D01478];
    }

    v70 = [MEMORY[0x277CCABB0] numberWithDouble:*v7];
    v69 = [objc_alloc(MEMORY[0x277D01340]) initWithAscending:1 confidence:v70 dateInterval:v71 labelVisit:1 limit:0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v69;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "visit metrics submission, realtime options, %@", &buf, 0xCu);
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v71;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "visit metrics submission, dateinterval, %@", &buf, 0xCu);
      }
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v106 = 0x3032000000;
    v107 = __Block_byref_object_copy__35;
    v108 = __Block_byref_object_dispose__35;
    v109 = 0;
    v86 = 0;
    v87 = &v86;
    v88 = 0x3032000000;
    v89 = __Block_byref_object_copy__35;
    v90 = __Block_byref_object_dispose__35;
    v91 = 0;
    v10 = dispatch_semaphore_create(0);
    visitManager = self->_visitManager;
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __69__RTVisitMetrics_realtimeMetricsForConfiguration_dateInterval_error___block_invoke;
    v82[3] = &unk_2788C4490;
    p_buf = &buf;
    v85 = &v86;
    v12 = v10;
    v83 = v12;
    [(RTVisitManager *)visitManager fetchStoredVisitsWithOptions:v69 handler:v82];
    dsema = v12;
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v14))
    {
      v67 = [MEMORY[0x277CBEAA8] now];
      [v67 timeIntervalSinceDate:v13];
      v16 = v15;
      v17 = objc_opt_new();
      v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_29];
      v19 = [MEMORY[0x277CCACC8] callStackSymbols];
      v20 = [v19 filteredArrayUsingPredicate:v18];
      v21 = [v20 firstObject];

      [v17 submitToCoreAnalytics:v21 type:1 duration:v16];
      v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *v99 = 0;
        _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v99, 2u);
      }

      v23 = MEMORY[0x277CCA9B8];
      v93 = *MEMORY[0x277CCA450];
      *v99 = @"semaphore wait timeout";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:&v93 count:1];
      v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v24];

      if (v25)
      {
        v26 = v25;

        v27 = 0;
LABEL_24:

        v30 = v25;
        if ((v27 & 1) == 0)
        {
          objc_storeStrong(v87 + 5, v25);
        }

        if ([*(*(&buf + 1) + 40) count])
        {
          v31 = objc_alloc(MEMORY[0x277D01340]);
          v32 = objc_alloc(MEMORY[0x277CCA970]);
          v33 = [MEMORY[0x277CBEAA8] distantPast];
          v34 = [*(*(&buf + 1) + 40) firstObject];
          v35 = [v34 entry];
          v36 = [v32 initWithStartDate:v33 endDate:v35];
          v68 = [v31 initWithAscending:0 confidence:v70 dateInterval:v36 labelVisit:1 limit:&unk_28459CF78];

          *v99 = 0;
          v100 = v99;
          v101 = 0x3032000000;
          v102 = __Block_byref_object_copy__35;
          v103 = __Block_byref_object_dispose__35;
          v104 = 0;
          v93 = 0;
          v94 = &v93;
          v95 = 0x3032000000;
          v96 = __Block_byref_object_copy__35;
          v97 = __Block_byref_object_dispose__35;
          v98 = 0;
          v37 = dispatch_semaphore_create(0);

          v38 = self->_visitManager;
          v78[0] = MEMORY[0x277D85DD0];
          v78[1] = 3221225472;
          v78[2] = __69__RTVisitMetrics_realtimeMetricsForConfiguration_dateInterval_error___block_invoke_2;
          v78[3] = &unk_2788C4490;
          v80 = v99;
          v81 = &v93;
          v39 = v37;
          v79 = v39;
          [(RTVisitManager *)v38 fetchStoredVisitsWithOptions:v68 handler:v78];
          dsema = v39;
          v40 = [MEMORY[0x277CBEAA8] now];
          v41 = dispatch_time(0, 3600000000000);
          if (!dispatch_semaphore_wait(dsema, v41))
          {
            goto LABEL_32;
          }

          v42 = [MEMORY[0x277CBEAA8] now];
          [v42 timeIntervalSinceDate:v40];
          v44 = v43;
          v45 = objc_opt_new();
          v46 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_29];
          v47 = [MEMORY[0x277CCACC8] callStackSymbols];
          v48 = [v47 filteredArrayUsingPredicate:v46];
          v49 = [v48 firstObject];

          [v45 submitToCoreAnalytics:v49 type:1 duration:v44];
          v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
          {
            *v111 = 0;
            _os_log_fault_impl(&dword_2304B3000, v50, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v111, 2u);
          }

          v51 = MEMORY[0x277CCA9B8];
          v110 = *MEMORY[0x277CCA450];
          *v111 = @"semaphore wait timeout";
          v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:&v110 count:1];
          v53 = [v51 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v52];

          if (v53)
          {
            v54 = v53;

            v55 = 0;
          }

          else
          {
LABEL_32:
            v55 = 1;
            v53 = v30;
          }

          v66 = v53;
          if ((v55 & 1) == 0)
          {
            objc_storeStrong(v94 + 5, v53);
          }

          v29 = [MEMORY[0x277CBEB18] array];
          v56 = [*(v100 + 5) firstObject];
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v57 = *(*(&buf + 1) + 40);
          v58 = [v57 countByEnumeratingWithState:&v74 objects:v92 count:16];
          if (v58)
          {
            v59 = *v75;
            do
            {
              v60 = 0;
              v61 = v56;
              do
              {
                if (*v75 != v59)
                {
                  objc_enumerationMutation(v57);
                }

                v62 = *(*(&v74 + 1) + 8 * v60);
                v63 = objc_autoreleasePoolPush();
                v64 = [(RTVisitMetrics *)self metricForPipelineConfiguration:a3 previousVisit:v61 visit:v62];
                if (v64)
                {
                  [v29 addObject:v64];
                }

                v56 = v62;

                objc_autoreleasePoolPop(v63);
                ++v60;
                v61 = v56;
              }

              while (v58 != v60);
              v58 = [v57 countByEnumeratingWithState:&v74 objects:v92 count:16];
            }

            while (v58);
          }

          _Block_object_dispose(&v93, 8);
          _Block_object_dispose(v99, 8);

          v30 = v66;
        }

        else
        {
          v29 = 0;
        }

        _Block_object_dispose(&v86, 8);
        _Block_object_dispose(&buf, 8);

        goto LABEL_47;
      }
    }

    else
    {
      v25 = 0;
    }

    v27 = 1;
    goto LABEL_24;
  }

  v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: configuration == RTVisitMetricsPipelineConfigurationRealtimeLowConfidence || configuration == RTVisitMetricsPipelineConfigurationRealtimeHighConfidence", &buf, 2u);
  }

  if (a5)
  {
    _RTErrorInvalidParameterCreate(@"configuration == RTVisitMetricsPipelineConfigurationRealtimeLowConfidence || configuration == RTVisitMetricsPipelineConfigurationRealtimeHighConfidence");
    *a5 = v29 = 0;
  }

  else
  {
    v29 = 0;
  }

LABEL_47:

  return v29;
}

void __69__RTVisitMetrics_realtimeMetricsForConfiguration_dateInterval_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __69__RTVisitMetrics_realtimeMetricsForConfiguration_dateInterval_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (BOOL)collectRealtimeMetricsForDateInterval:(id)a3 error:(id *)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@", &v12, 0xCu);
    }
  }

  v10 = [(RTVisitMetrics *)self collectMetricsForDateInterval:v7 configurations:&unk_2845A0AD0 error:a4];

  return v10;
}

- (BOOL)collectBatchedMetricsForDateInterval:(id)a3 error:(id *)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@", &v12, 0xCu);
    }
  }

  v10 = [(RTVisitMetrics *)self collectMetricsForDateInterval:v7 configurations:&unk_2845A0AE8 error:a4];

  return v10;
}

- (BOOL)collectMetricsForDateInterval:(id)a3 configurations:(id)a4 error:(id *)a5
{
  v58 = *MEMORY[0x277D85DE8];
  v36 = a3;
  v6 = a4;
  v33 = [MEMORY[0x277CBEB18] array];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v27 = [v36 startDate];
      v28 = [v27 stringFromDate];
      v29 = [v36 endDate];
      v30 = [v29 stringFromDate];
      *buf = 138412546;
      v52 = v28;
      v53 = 2112;
      v54 = v30;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "collecting metrics, startDate, %@, endDate, %@", buf, 0x16u);
    }
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v6;
  v37 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v37)
  {
    v34 = *v47;
    do
    {
      v8 = 0;
      do
      {
        if (*v47 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v46 + 1) + 8 * v8);
        context = objc_autoreleasePoolPush();
        v10 = [v9 unsignedIntegerValue];
        v45 = 0;
        v11 = [(RTVisitMetrics *)self metricsForConfiguration:v10 dateInterval:v36 error:&v45];
        v12 = v45;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v13 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v23 = [v11 count];
            *buf = 134218498;
            v52 = v23;
            v53 = 2112;
            v54 = v9;
            v55 = 2112;
            v56 = v12;
            _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "collected %lu metrics for configuration, %@, error, %@", buf, 0x20u);
          }
        }

        v38 = v12;
        v40 = v8;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v14 = v11;
        v15 = [v14 countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v42;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v42 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v41 + 1) + 8 * i);
              v20 = objc_alloc(MEMORY[0x277CCACA8]);
              v21 = [v20 initWithCString:RTAnalyticsEventVisitDetails encoding:1];
              log_analytics_submission(v21, v19);
              v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v21];
              AnalyticsSendEvent();
            }

            v16 = [v14 countByEnumeratingWithState:&v41 objects:v50 count:16];
          }

          while (v16);
        }

        if (v38)
        {
          [v33 addObject:v38];
        }

        objc_autoreleasePoolPop(context);
        v8 = v40 + 1;
      }

      while (v40 + 1 != v37);
      v37 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
    }

    while (v37);
  }

  v24 = [v33 count];
  if (a5 && v24)
  {
    v25 = _RTSafeArray();
    *a5 = _RTMultiErrorCreate();
  }

  return 1;
}

- (id)_nearbyLoisFromVisit:(id)a3
{
  v53[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    *v44 = 0;
    v45 = v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__35;
    v48 = __Block_byref_object_dispose__35;
    v49 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__35;
    v42 = __Block_byref_object_dispose__35;
    v43 = 0;
    v6 = dispatch_semaphore_create(0);
    learnedLocationStore = self->_learnedLocationStore;
    v8 = [v5 location];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __39__RTVisitMetrics__nearbyLoisFromVisit___block_invoke;
    v34[3] = &unk_2788C4490;
    v36 = v44;
    v37 = &v38;
    v9 = v6;
    v35 = v9;
    [(RTLearnedLocationStore *)learnedLocationStore fetchLocationsOfInterestWithVisitsWithinDistance:v8 location:v34 handler:1000.0];

    v10 = v9;
    v11 = [MEMORY[0x277CBEAA8] now];
    v12 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v10, v12))
    {
      v13 = [MEMORY[0x277CBEAA8] now];
      [v13 timeIntervalSinceDate:v11];
      v15 = v14;
      v16 = objc_opt_new();
      v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_29];
      v18 = [MEMORY[0x277CCACC8] callStackSymbols];
      v19 = [v18 filteredArrayUsingPredicate:v17];
      v20 = [v19 firstObject];

      [v16 submitToCoreAnalytics:v20 type:1 duration:v15];
      v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v22 = MEMORY[0x277CCA9B8];
      v53[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v53 count:1];
      v24 = [v22 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v23];

      if (v24)
      {
        v25 = v24;

        v26 = 0;
LABEL_12:

        v29 = v24;
        if ((v26 & 1) == 0)
        {
          objc_storeStrong(v39 + 5, v24);
        }

        if (v39[5])
        {
          v30 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v32 = NSStringFromSelector(a2);
            v33 = v39[5];
            *buf = 138412546;
            *&buf[4] = v32;
            v51 = 2112;
            v52 = v33;
            _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
          }
        }

        v28 = *(v45 + 5);

        _Block_object_dispose(&v38, 8);
        _Block_object_dispose(v44, 8);

        goto LABEL_19;
      }
    }

    else
    {
      v24 = 0;
    }

    v26 = 1;
    goto LABEL_12;
  }

  v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *v44 = 0;
    _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visit", v44, 2u);
  }

  v28 = 0;
LABEL_19:

  return v28;
}

void __39__RTVisitMetrics__nearbyLoisFromVisit___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_closestLoi:(id)a3 location:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (![v5 count])
  {
    obj = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: lois.count > 0";
LABEL_21:
    _os_log_error_impl(&dword_2304B3000, obj, OS_LOG_TYPE_ERROR, v21, buf, 2u);
    goto LABEL_16;
  }

  if (!v6)
  {
    obj = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: location";
    goto LABEL_21;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (!v7)
  {
LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  v8 = v7;
  v23 = v5;
  v9 = 0;
  v10 = *v26;
  v11 = INFINITY;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v26 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v25 + 1) + 8 * i);
      [v6 latitude];
      [v6 longitude];
      v14 = [v13 location];
      v15 = [v14 location];
      [v15 latitude];
      v16 = [v13 location];
      v17 = [v16 location];
      [v17 longitude];
      RTCommonCalculateDistanceHighPrecision();
      v19 = v18;

      if (v19 < v11)
      {
        v20 = v13;

        v9 = v20;
        v11 = v19;
      }
    }

    v8 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  }

  while (v8);
  v5 = v23;
LABEL_17:

  return v9;
}

- (id)_associatedLoiFromVisit:(id)a3
{
  v57[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visit", buf, 2u);
    }

    goto LABEL_11;
  }

  v7 = [v5 placeInference];
  v8 = [v7 mapItem];

  if (!v8)
  {
LABEL_11:
    v32 = 0;
    goto LABEL_21;
  }

  *buf = 0;
  v49 = buf;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__35;
  v52 = __Block_byref_object_dispose__35;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__35;
  v46 = __Block_byref_object_dispose__35;
  v47 = 0;
  v9 = dispatch_semaphore_create(0);
  learnedLocationStore = self->_learnedLocationStore;
  v11 = [v6 placeInference];
  v12 = [v11 mapItem];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __42__RTVisitMetrics__associatedLoiFromVisit___block_invoke;
  v38[3] = &unk_2788C4B58;
  v40 = buf;
  v41 = &v42;
  v13 = v9;
  v39 = v13;
  [(RTLearnedLocationStore *)learnedLocationStore fetchLocationOfInterestWithMapItem:v12 handler:v38];

  v14 = v13;
  v15 = [MEMORY[0x277CBEAA8] now];
  v16 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(v14, v16))
  {
    v28 = 0;
LABEL_13:
    v30 = 1;
    goto LABEL_14;
  }

  v17 = [MEMORY[0x277CBEAA8] now];
  [v17 timeIntervalSinceDate:v15];
  v19 = v18;
  v20 = objc_opt_new();
  v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_29];
  v22 = [MEMORY[0x277CCACC8] callStackSymbols];
  v23 = [v22 filteredArrayUsingPredicate:v21];
  v24 = [v23 firstObject];

  [v20 submitToCoreAnalytics:v24 type:1 duration:v19];
  v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    *v54 = 0;
    _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v54, 2u);
  }

  v26 = MEMORY[0x277CCA9B8];
  v57[0] = *MEMORY[0x277CCA450];
  *v54 = @"semaphore wait timeout";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v57 count:1];
  v28 = [v26 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v27];

  if (!v28)
  {
    goto LABEL_13;
  }

  v29 = v28;

  v30 = 0;
LABEL_14:

  v33 = v28;
  if ((v30 & 1) == 0)
  {
    objc_storeStrong(v43 + 5, v28);
  }

  if (v43[5])
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v36 = NSStringFromSelector(a2);
      v37 = v43[5];
      *v54 = 138412546;
      *&v54[4] = v36;
      v55 = 2112;
      v56 = v37;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "%@, error, %@", v54, 0x16u);
    }
  }

  v32 = *(v49 + 5);

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(buf, 8);

LABEL_21:

  return v32;
}

void __42__RTVisitMetrics__associatedLoiFromVisit___block_invoke(uint64_t a1, void *a2, void *a3)
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

@end