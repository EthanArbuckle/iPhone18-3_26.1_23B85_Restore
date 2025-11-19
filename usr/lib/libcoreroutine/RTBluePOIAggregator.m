@interface RTBluePOIAggregator
- (BOOL)_isSinglePOI:(id)a3;
- (RTBluePOIAggregator)initWithBluePOIMetricManager:(id)a3 defaultsManager:(id)a4 distanceCalculator:(id)a5 platform:(id)a6;
- (id)updateAndFetchAggregatedPOIEstimateWithLocalBluePOIResult:(id)a3 collectMetrics:(BOOL)a4 error:(id *)a5;
- (void)collectMetricsWithPreaggregatedResult:(id)a3 cachedResult:(id)a4 aggregatedResult:(id)a5 distance:(double)a6 timeDifference:(double)a7;
@end

@implementation RTBluePOIAggregator

- (RTBluePOIAggregator)initWithBluePOIMetricManager:(id)a3 defaultsManager:(id)a4 distanceCalculator:(id)a5 platform:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (!v11)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: bluePOIMetricManager";
LABEL_19:
    _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, v23, buf, 2u);
    goto LABEL_20;
  }

  if (!v12)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: defaultsManager";
    goto LABEL_19;
  }

  if (!v13)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_19;
  }

  if (!v14)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "Invalid parameter not satisfying: platform";
      goto LABEL_19;
    }

LABEL_20:

    v21 = 0;
    goto LABEL_21;
  }

  v25.receiver = self;
  v25.super_class = RTBluePOIAggregator;
  v16 = [(RTBluePOIAggregator *)&v25 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_bluePOIMetricManager, a3);
    objc_storeStrong(&v17->_defaultsManager, a4);
    objc_storeStrong(&v17->_distanceCalculator, a5);
    objc_storeStrong(&v17->_platform, a6);
    v18 = objc_opt_new();
    maximumSingleShotConfidenceSeen = v17->_maximumSingleShotConfidenceSeen;
    v17->_maximumSingleShotConfidenceSeen = v18;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "initialized RTBluePOIAggregator", buf, 2u);
      }
    }
  }

  self = v17;
  v21 = self;
LABEL_21:

  return v21;
}

- (BOOL)_isSinglePOI:(id)a3
{
  v3 = MEMORY[0x277CBEB58];
  v4 = [a3 poiConfidences];
  v5 = [v4 allKeys];
  v6 = [v3 setWithArray:v5];

  [v6 removeObject:&unk_2845A0908];
  LOBYTE(v4) = [v6 count] == 1;

  return v4;
}

- (id)updateAndFetchAggregatedPOIEstimateWithLocalBluePOIResult:(id)a3 collectMetrics:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v145 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(RTBluePOIAggregator *)self currentPOIEstimate];

  if (!v9)
  {
    [(RTBluePOIAggregator *)self setCurrentPOIEstimate:v8];
    v40 = [v8 poiConfidences];
    v41 = [v40 mutableCopy];
    [(RTBluePOIAggregator *)self setMaximumSingleShotConfidenceSeen:v41];

    if (v6)
    {
      [(RTBluePOIAggregator *)self collectMetricsWithPreaggregatedResult:v8 cachedResult:0 aggregatedResult:v8 distance:-1.0 timeDifference:-1.0];
    }

    v42 = [(RTBluePOIAggregator *)self currentPOIEstimate];
    goto LABEL_19;
  }

  v10 = [v8 referenceLocation];
  v11 = [v10 date];
  if (!v11)
  {

    goto LABEL_14;
  }

  v12 = v11;
  v127 = v6;
  v13 = [(RTBluePOIAggregator *)self currentPOIEstimate];
  v14 = [v13 referenceLocation];
  v15 = [v14 date];
  v16 = [v8 referenceLocation];
  v17 = [v16 date];
  [v15 timeIntervalSinceDate:v17];
  v19 = v18;

  if (v19 > 0.0)
  {
LABEL_14:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v43 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v144 = v8;
        _os_log_impl(&dword_2304B3000, v43, OS_LOG_TYPE_INFO, "RTBluePOIAggregator out of order query %@", buf, 0xCu);
      }
    }

    v42 = v8;
LABEL_19:
    v44 = v42;
    goto LABEL_20;
  }

  v20 = objc_opt_new();
  v21 = MEMORY[0x277CBEAC0];
  v22 = [v8 aoiConfidences];
  v126 = [v21 dictionaryWithDictionary:v22];

  v23 = [(RTBluePOIAggregator *)self distanceCalculator];
  v24 = [v8 referenceLocation];
  v25 = [(RTBluePOIAggregator *)self currentPOIEstimate];
  v26 = [v25 referenceLocation];
  [v23 distanceFromLocation:v24 toLocation:v26 error:a5];
  v28 = v27;

  v29 = [v8 referenceLocation];
  v30 = [v29 date];
  v31 = [(RTBluePOIAggregator *)self currentPOIEstimate];
  v32 = [v31 referenceLocation];
  v33 = [v32 date];
  [v30 timeIntervalSinceDate:v33];
  v35 = v34;

  v131 = v8;
  v132 = self;
  if ([(RTBluePOIAggregator *)self _isSinglePOI:v8])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v36 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v144 = v8;
        _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, "RTBluePOIAggregator Single POI %@", buf, 0xCu);
      }
    }

    v37 = MEMORY[0x277CBEB38];
    v38 = [v8 poiConfidences];
    [v37 dictionaryWithDictionary:v38];
    v20 = v39 = v20;
    goto LABEL_58;
  }

  v46 = MEMORY[0x277CBEB58];
  v47 = [v8 poiConfidences];
  v48 = [v47 allKeys];
  v49 = [v46 setWithArray:v48];

  v50 = MEMORY[0x277CBEB58];
  v51 = [(RTBluePOIAggregator *)self currentPOIEstimate];
  v52 = [v51 poiConfidences];
  v53 = [v52 allKeys];
  v54 = [v50 setWithArray:v53];

  v123 = v49;
  [v54 unionSet:v49];
  v55 = &unk_2845A0908;
  [v54 addObject:&unk_2845A0908];
  v130 = objc_opt_new();
  v56 = [v54 count];
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v39 = v54;
  v57 = [v39 countByEnumeratingWithState:&v137 objects:v142 count:16];
  v124 = v35;
  v125 = v28;
  obj = v39;
  if (v57)
  {
    v58 = v57;
    v129 = *v138;
    v59 = 1.0 / v56;
    v60 = exp(v28 * -0.02 + v35 * -0.000277777778);
    v61 = 0.0;
    v62 = 0.0;
    do
    {
      for (i = 0; i != v58; ++i)
      {
        if (*v138 != v129)
        {
          objc_enumerationMutation(obj);
        }

        v64 = *(*(&v137 + 1) + 8 * i);
        v65 = [(RTBluePOIAggregator *)self currentPOIEstimate];
        v66 = [v65 poiConfidences];
        v67 = [v66 objectForKeyedSubscript:v64];
        [v67 doubleValue];
        v69 = v68;

        v70 = v59 + (v69 - v59) * v60;
        v71 = [v8 poiConfidences];
        v72 = [v71 objectForKeyedSubscript:v64];
        [v72 doubleValue];
        v74 = v73;

        v75 = MEMORY[0x277CCABB0];
        v76 = [(RTBluePOIAggregator *)self maximumSingleShotConfidenceSeen];
        v77 = [v76 objectForKeyedSubscript:v64];
        [v77 doubleValue];
        v79 = v78;

        if (v74 >= v79)
        {
          v80 = v74;
        }

        else
        {
          v80 = v79;
        }

        v81 = [v75 numberWithDouble:v80];
        [v130 setObject:v81 forKeyedSubscript:v64];

        v82 = [v8 poiConfidences];
        v83 = [v82 allKeys];
        v84 = [v83 count];

        if (v84)
        {
          v85 = v74;
        }

        else
        {
          v85 = 1.0;
        }

        v86 = v70 * v85;
        if (v70 * v85 > v62)
        {
          v87 = v64;

          v55 = v87;
          v62 = v86;
        }

        if (v86 > 0.0)
        {
          v61 = v61 + v86;
          v88 = [MEMORY[0x277CCABB0] numberWithDouble:v86];
          [v20 setObject:v88 forKeyedSubscript:v64];
        }
      }

      v39 = obj;
      v58 = [obj countByEnumeratingWithState:&v137 objects:v142 count:16];
    }

    while (v58);
  }

  else
  {
    v61 = 0.0;
  }

  [(RTBluePOIAggregator *)self setMaximumSingleShotConfidenceSeen:v130];
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v89 = [v20 allKeys];
  v90 = [v89 countByEnumeratingWithState:&v133 objects:v141 count:16];
  if (v90)
  {
    v91 = v90;
    v92 = *v134;
    v93 = 0.0;
    do
    {
      for (j = 0; j != v91; ++j)
      {
        if (*v134 != v92)
        {
          objc_enumerationMutation(v89);
        }

        v95 = *(*(&v133 + 1) + 8 * j);
        v96 = [v20 objectForKeyedSubscript:v95];
        [v96 doubleValue];
        v98 = v97 / v61;

        if ([v55 unsignedLongLongValue])
        {
          v99 = [v95 unsignedLongLongValue];
          if (v99 == [v55 unsignedLongLongValue])
          {
            v100 = [(RTBluePOIAggregator *)self maximumSingleShotConfidenceSeen];
            v101 = [v100 objectForKeyedSubscript:v95];
            [v101 doubleValue];
            v103 = v102;

            if (v98 > v103)
            {
              v104 = [(RTBluePOIAggregator *)self maximumSingleShotConfidenceSeen];
              v105 = [v104 objectForKeyedSubscript:v95];
              [v105 doubleValue];
              v93 = v98 - v106;

              v107 = [(RTBluePOIAggregator *)self maximumSingleShotConfidenceSeen];
              v108 = [v107 objectForKeyedSubscript:v95];
              [v108 doubleValue];
              v98 = v109;
            }
          }
        }

        v110 = [MEMORY[0x277CCABB0] numberWithDouble:v98];
        [v20 setObject:v110 forKeyedSubscript:v95];
      }

      v91 = [v89 countByEnumeratingWithState:&v133 objects:v141 count:16];
    }

    while (v91);

    v8 = v131;
    v35 = v124;
    v39 = obj;
    if (v93 <= 0.0)
    {
      goto LABEL_57;
    }

    v111 = MEMORY[0x277CCABB0];
    v89 = [v20 objectForKeyedSubscript:&unk_2845A0908];
    [v89 doubleValue];
    v113 = [v111 numberWithDouble:v93 + v112];
    [v20 setObject:v113 forKeyedSubscript:&unk_2845A0908];
  }

  else
  {
    v35 = v124;
  }

LABEL_57:
  v28 = v125;
  v38 = v123;
LABEL_58:

  v114 = objc_alloc(MEMORY[0x277D01158]);
  v115 = [v8 distanceToNearestAOILowerBound];
  v116 = [v115 copy];
  v117 = [v8 referenceLocation];
  v118 = [v117 copy];
  v119 = [v8 queryTime];
  v120 = [v119 copy];
  v121 = [v114 initWithPOIConfidences:v20 aoiConfidences:v126 distanceToNearestAOILowerBound:v116 referenceLocation:v118 queryTime:v120];

  if (v127)
  {
    v122 = [(RTBluePOIAggregator *)v132 currentPOIEstimate];
    [(RTBluePOIAggregator *)v132 collectMetricsWithPreaggregatedResult:v8 cachedResult:v122 aggregatedResult:v121 distance:v28 timeDifference:v35];
  }

  [(RTBluePOIAggregator *)v132 setCurrentPOIEstimate:v121];
  v44 = [(RTBluePOIAggregator *)v132 currentPOIEstimate];

LABEL_20:

  return v44;
}

- (void)collectMetricsWithPreaggregatedResult:(id)a3 cachedResult:(id)a4 aggregatedResult:(id)a5 distance:(double)a6 timeDifference:(double)a7
{
  v100 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v98 = vcvtpd_u64_f64(a6);
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v98];
  [v14 setEventMetricsValue:v15 forKey:@"aggregationDistancePOI"];

  v16 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v99 = fmin(ceil(a7), 3600.0);
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v99];
  [v16 setEventMetricsValue:v17 forKey:@"aggregationDurationPOI"];

  v18 = [v100 mostConfidentPOI];
  v19 = v12;
  if (v18)
  {
    v20 = [v100 mostConfidentPOI];
    v21 = [v100 poiConfidences];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
    v23 = [v21 objectForKeyedSubscript:v22];
    [v23 doubleValue];
    v25 = v24;

    v26 = v25 * 10000.0;
  }

  else
  {
    v20 = 0;
    v26 = -10000.0;
  }

  v27 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v28 = [MEMORY[0x277CCABB0] numberWithBool:v18 != 0];
  [v27 setEventMetricsValue:v28 forKey:@"preAggregatedInferenceAvailablePOI"];

  v29 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v30 = [MEMORY[0x277CCABB0] numberWithDouble:round(v26)];
  [v29 setEventMetricsValue:v30 forKey:@"preAggregationConfidencePOI"];

  v31 = [v12 mostConfidentPOI];
  if (v31)
  {
    v32 = [v12 mostConfidentPOI];
    v33 = [v12 poiConfidences];
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v32];
    v35 = [v33 objectForKeyedSubscript:v34];
    [v35 doubleValue];
  }

  else
  {
    v32 = 0;
  }

  v36 = v31 != 0;
  v37 = v20 == v32;
  v38 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v39 = [MEMORY[0x277CCABB0] numberWithBool:v36];
  [v38 setEventMetricsValue:v39 forKey:@"cachedInferenceAvailablePOI"];

  v40 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v41 = [MEMORY[0x277CCABB0] numberWithBool:v37];
  [v40 setEventMetricsValue:v41 forKey:@"preAggregationMatchesCachePOI"];

  v42 = [v13 mostConfidentPOI];
  v43 = -10000.0;
  if (v42)
  {
    v44 = [v13 mostConfidentPOI];
    v45 = [v13 poiConfidences];
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v44];
    v47 = [v45 objectForKeyedSubscript:v46];
    [v47 doubleValue];
    v49 = v48;

    v50 = v49 * 10000.0;
  }

  else
  {
    v44 = 0;
    v50 = -10000.0;
  }

  v51 = v19;
  v52 = v42 != 0;
  v53 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v54 = [MEMORY[0x277CCABB0] numberWithBool:v52];
  [v53 setEventMetricsValue:v54 forKey:@"postAggregatedInferenceAvailablePOI"];

  v55 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v56 = [MEMORY[0x277CCABB0] numberWithBool:v20 == v44];
  [v55 setEventMetricsValue:v56 forKey:@"preAggregationMatchesPostAggregationPOI"];

  v57 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v58 = [MEMORY[0x277CCABB0] numberWithDouble:round(v50)];
  [v57 setEventMetricsValue:v58 forKey:@"postAggregationConfidencePOI"];

  v59 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v98];
  [v59 setEventMetricsValue:v60 forKey:@"aggregationDistanceAOI"];

  v61 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v99];
  [v61 setEventMetricsValue:v62 forKey:@"aggregationDurationAOI"];

  v63 = [v100 mostConfidentAOI];
  if (v63)
  {
    v64 = [v100 mostConfidentAOI];
    v65 = [v100 aoiConfidences];
    v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v64];
    v67 = [v65 objectForKeyedSubscript:v66];
    [v67 doubleValue];
    v69 = v68;

    v43 = v69 * 10000.0;
  }

  else
  {
    v64 = 0;
  }

  v70 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v71 = [MEMORY[0x277CCABB0] numberWithBool:v63 != 0];
  [v70 setEventMetricsValue:v71 forKey:@"preAggregatedInferenceAvailableAOI"];

  v72 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v73 = [MEMORY[0x277CCABB0] numberWithDouble:round(v43)];
  [v72 setEventMetricsValue:v73 forKey:@"preAggregationConfidenceAOI"];

  v74 = [v51 mostConfidentAOI];
  if (v74)
  {
    v75 = [v51 mostConfidentAOI];
    v76 = [v51 aoiConfidences];
    v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v75];
    v78 = [v76 objectForKeyedSubscript:v77];
    [v78 doubleValue];
  }

  else
  {
    v75 = 0;
  }

  v79 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v80 = [MEMORY[0x277CCABB0] numberWithBool:v74 != 0];
  [v79 setEventMetricsValue:v80 forKey:@"cachedInferenceAvailableAOI"];

  v81 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v82 = [MEMORY[0x277CCABB0] numberWithBool:v64 == v75];
  [v81 setEventMetricsValue:v82 forKey:@"preAggregationMatchesCacheAOI"];

  v83 = [v13 mostConfidentAOI];
  if (v83)
  {
    v84 = [v13 mostConfidentAOI];
    v85 = [v13 aoiConfidences];
    v86 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v84];
    v87 = [v85 objectForKeyedSubscript:v86];
    [v87 doubleValue];
    v89 = v88;

    v90 = v89 * 10000.0;
  }

  else
  {
    v84 = 0;
    v90 = -10000.0;
  }

  v91 = v64 == v84;
  v92 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v93 = [MEMORY[0x277CCABB0] numberWithBool:v83 != 0];
  [v92 setEventMetricsValue:v93 forKey:@"postAggregatedInferenceAvailableAOI"];

  v94 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v95 = [MEMORY[0x277CCABB0] numberWithBool:v91];
  [v94 setEventMetricsValue:v95 forKey:@"preAggregationMatchesPostAggregationAOI"];

  v96 = [(RTBluePOIAggregator *)self bluePOIMetricManager];
  v97 = [MEMORY[0x277CCABB0] numberWithDouble:round(v90)];
  [v96 setEventMetricsValue:v97 forKey:@"postAggregationConfidenceAOI"];
}

@end