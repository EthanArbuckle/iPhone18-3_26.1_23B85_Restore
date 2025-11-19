@interface RTRelabelerPersisterMetrics
+ (id)supportedMetricKeys;
- (BOOL)submitMetricsWithError:(id *)a3;
- (RTRelabelerPersisterMetrics)initWithLoggingEnabled:(BOOL)a3;
- (double)safeFraction:(double)a3 denominator:(double)a4;
- (void)setBucketedPercentageMetricsWithMappings:(id)a3 sharedDenominator:(double)a4 sharedBins:(id)a5;
- (void)setDerivedMetrics;
- (void)setErrorKey:(id)a3;
- (void)tallyError:(id)a3;
- (void)tallyKey:(id)a3;
@end

@implementation RTRelabelerPersisterMetrics

- (RTRelabelerPersisterMetrics)initWithLoggingEnabled:(BOOL)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = RTRelabelerPersisterMetrics;
  v3 = [(RTMetric *)&v50 initWithLoggingEnabled:a3];
  if (v3)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v4 = [objc_opt_class() BOOLeanKeys];
    v5 = [v4 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v47;
      v8 = MEMORY[0x277CBEC28];
      do
      {
        v9 = 0;
        do
        {
          if (*v47 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v46 + 1) + 8 * v9);
          v11 = [(RTMetric *)v3 metrics];
          [v11 setObject:v8 forKeyedSubscript:v10];

          ++v9;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v6);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v12 = [objc_opt_class() unsignedIntegerKeys];
    v13 = [v12 countByEnumeratingWithState:&v42 objects:v53 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v43;
      do
      {
        v16 = 0;
        do
        {
          if (*v43 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v42 + 1) + 8 * v16);
          v18 = [(RTMetric *)v3 metrics];
          [v18 setObject:&unk_28459F540 forKeyedSubscript:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v42 objects:v53 count:16];
      }

      while (v14);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v19 = [objc_opt_class() doubleKeys];
    v20 = [v19 countByEnumeratingWithState:&v38 objects:v52 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v39;
      do
      {
        v23 = 0;
        do
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v38 + 1) + 8 * v23);
          v25 = [(RTMetric *)v3 metrics];
          [v25 setObject:&unk_2845A2098 forKeyedSubscript:v24];

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v38 objects:v52 count:16];
      }

      while (v21);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v26 = [objc_opt_class() bucketedKeys];
    v27 = [v26 countByEnumeratingWithState:&v34 objects:v51 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v35;
      do
      {
        v30 = 0;
        do
        {
          if (*v35 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v34 + 1) + 8 * v30);
          v32 = [(RTMetric *)v3 metrics];
          [v32 setObject:&unk_28459F558 forKeyedSubscript:v31];

          ++v30;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v34 objects:v51 count:16];
      }

      while (v28);
    }
  }

  return v3;
}

+ (id)supportedMetricKeys
{
  v2 = MEMORY[0x277CBEB58];
  v3 = [objc_opt_class() BOOLeanKeys];
  v4 = [v2 setWithSet:v3];

  v5 = [objc_opt_class() unsignedIntegerKeys];
  v6 = [v5 allObjects];
  [v4 addObjectsFromArray:v6];

  v7 = [objc_opt_class() doubleKeys];
  v8 = [v7 allObjects];
  [v4 addObjectsFromArray:v8];

  v9 = [objc_opt_class() bucketedKeys];
  v10 = [v9 allObjects];
  [v4 addObjectsFromArray:v10];

  return v4;
}

- (void)tallyKey:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RTMetric *)self metrics];
  v6 = [v5 objectForKeyedSubscript:v4];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[RTRelabelerPersisterMetrics tallyKey:]";
      v12 = 1024;
      v13 = 77;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Called tallyKey on a non-NSNumber value (in %s:%d)", &v10, 0x12u);
    }
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "unsignedIntegerValue") + 1}];
  v9 = [(RTMetric *)self metrics];
  [v9 setObject:v8 forKeyedSubscript:v4];
}

- (void)tallyError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = v4;
    v5 = [v4 domain];
    v6 = [v5 isEqualToString:*MEMORY[0x277D01448]];

    if (v6)
    {
      if ([v11 code] != 7)
      {
        goto LABEL_10;
      }

      v7 = @"numberOfInvalidParameterErrors";
    }

    else
    {
      v8 = [v11 domain];
      v9 = [v8 isEqualToString:@"RTRelabelerPersisterErrorDomain"];

      if (v9)
      {
        v10 = [v11 code];
        if (v10 > 8)
        {
          goto LABEL_10;
        }

        v7 = off_2788D0248[v10];
      }

      else
      {
        v7 = @"numberOfUnknownErrors";
      }
    }

    [(RTRelabelerPersisterMetrics *)self tallyKey:v7];
  }

LABEL_10:

  MEMORY[0x2821F96F8]();
}

- (void)setErrorKey:(id)a3
{
  v4 = a3;
  v5 = [(RTMetric *)self metrics];
  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v4];
}

- (double)safeFraction:(double)a3 denominator:(double)a4
{
  result = a3 / a4;
  if (a4 <= 0.0)
  {
    return -1.0;
  }

  return result;
}

- (void)setBucketedPercentageMetricsWithMappings:(id)a3 sharedDenominator:(double)a4 sharedBins:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = v8;
  obj = v7;
  if (!v7)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
LABEL_18:

      goto LABEL_19;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: mappings";
LABEL_21:
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, v25, buf, 2u);
    goto LABEL_18;
  }

  if (!v8)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: sharedBins";
    goto LABEL_21;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v29;
    *&v11 = 136315394;
    v26 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        v16 = [(RTMetric *)self metrics];
        v17 = [v15 firstObject];
        v18 = [v16 objectForKeyedSubscript:v17];

        if (v18)
        {
          [v18 doubleValue];
          [RTRelabelerPersisterMetrics safeFraction:"safeFraction:denominator:" denominator:?];
          v20 = [MEMORY[0x277CCABB0] numberWithDouble:v19 * 100.0];
          v21 = [RTMetric binForNumber:v20 bins:v9];
          v22 = [(RTMetric *)self metrics];
          v23 = [v15 secondObject];
          [v22 setObject:v21 forKeyedSubscript:v23];
        }

        else
        {
          v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = v26;
            v33 = "[RTRelabelerPersisterMetrics setBucketedPercentageMetricsWithMappings:sharedDenominator:sharedBins:]";
            v34 = 1024;
            v35 = 152;
            _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fromValue (in %s:%d)", buf, 0x12u);
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v12);
  }

LABEL_19:
}

- (void)setDerivedMetrics
{
  v188[3] = *MEMORY[0x277D85DE8];
  v180 = [RTMetric binsFromStart:&unk_28459F540 toEnd:&unk_28459F570 gap:&unk_28459F588];
  v179 = [RTMetric binsFromStart:&unk_28459F540 toEnd:&unk_28459F570 gap:&unk_28459F5B8];
  v3 = [(RTMetric *)self metrics];
  v4 = [v3 objectForKeyedSubscript:@"numberOfStartingVisits"];
  v5 = [RTMetric binForNumber:v4 bins:&unk_2845A15B0];
  v6 = [(RTMetric *)self metrics];
  [v6 setObject:v5 forKeyedSubscript:@"bucketedNumberOfStartingVisits"];

  v7 = MEMORY[0x277CCABB0];
  v8 = [(RTMetric *)self metrics];
  v9 = [v8 objectForKeyedSubscript:@"numberOfStartingVisits"];
  [v9 doubleValue];
  v11 = v10;
  v12 = [(RTMetric *)self metrics];
  v13 = [v12 objectForKeyedSubscript:@"numberOfStartingLOIs"];
  [v13 doubleValue];
  [(RTRelabelerPersisterMetrics *)self safeFraction:v11 denominator:v14];
  v15 = [v7 numberWithDouble:?];
  v16 = [(RTMetric *)self metrics];
  [v16 setObject:v15 forKeyedSubscript:@"startingVisitDensity"];

  v17 = MEMORY[0x277CCABB0];
  v18 = [(RTMetric *)self metrics];
  v19 = [v18 objectForKeyedSubscript:@"numberUnassociatedError"];
  [v19 doubleValue];
  v21 = v20;
  v22 = [(RTMetric *)self metrics];
  v23 = [v22 objectForKeyedSubscript:@"numberUnassociated"];
  [v23 doubleValue];
  v25 = v24;
  v26 = [(RTMetric *)self metrics];
  v27 = [v26 objectForKeyedSubscript:@"numberUnassociatedError"];
  [v27 doubleValue];
  [(RTRelabelerPersisterMetrics *)self safeFraction:v21 denominator:v25 + v28];
  v30 = [v17 numberWithDouble:v29 * 100.0];
  v31 = [(RTMetric *)self metrics];
  [v31 setObject:v30 forKeyedSubscript:@"percentageOfUnassociatedError"];

  v32 = [(RTMetric *)self metrics];
  v33 = [v32 objectForKeyedSubscript:@"numberOfNonPlaceholderSame"];
  [v33 doubleValue];
  v35 = v34;
  v36 = [(RTMetric *)self metrics];
  v37 = [v36 objectForKeyedSubscript:@"numberOfNonPlaceholderDifferent"];
  [v37 doubleValue];
  v39 = v35 + v38;
  v40 = [(RTMetric *)self metrics];
  v41 = [v40 objectForKeyedSubscript:@"numberOfNonPlaceholderError"];
  [v41 doubleValue];
  v43 = v39 + v42;

  v188[0] = @"numberOfNonPlaceholderSame";
  v188[1] = @"numberOfNonPlaceholderDifferent";
  v188[2] = @"numberOfNonPlaceholderError";
  v178 = [MEMORY[0x277CBEA60] arrayWithObjects:v188 count:3];
  v187[0] = @"bucketedPercentageOfNonPlaceholderSame";
  v187[1] = @"bucketedPercentageOfNonPlaceholderDifferent";
  v187[2] = @"bucketedPercentageOfNonPlaceholderError";
  v177 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:3];
  v44 = [[_RTZip alloc] initWithFirstInput:v178 secondInput:v177];
  v45 = [(_RTZip *)v44 zippedArray];
  [(RTRelabelerPersisterMetrics *)self setBucketedPercentageMetricsWithMappings:v45 sharedDenominator:v180 sharedBins:v43];

  v175 = [(RTMetric *)self metrics];
  v46 = [v175 objectForKeyedSubscript:@"numberOfPlaceholderCollapsed"];
  [v46 doubleValue];
  v48 = v47;
  v49 = [(RTMetric *)self metrics];
  v50 = [v49 objectForKeyedSubscript:@"numberOfPlaceholderIntendedRestored"];
  [v50 doubleValue];
  v52 = v48 + v51;
  v53 = [(RTMetric *)self metrics];
  v54 = [v53 objectForKeyedSubscript:@"numberOfPlaceholderUnintendedRestored"];
  [v54 doubleValue];
  v56 = v52 + v55;
  v57 = [(RTMetric *)self metrics];
  v58 = [v57 objectForKeyedSubscript:@"numberOfPlaceholderNotCollapsedRevGeoQuery"];
  [v58 doubleValue];
  v60 = v56 + v59;
  v61 = [(RTMetric *)self metrics];
  v62 = [v61 objectForKeyedSubscript:@"numberOfPlaceholderError"];
  [v62 doubleValue];
  v64 = v60 + v63;

  v186[0] = @"numberOfPlaceholderCollapsed";
  v186[1] = @"numberOfPlaceholderIntendedRestored";
  v186[2] = @"numberOfPlaceholderUnintendedRestored";
  v186[3] = @"numberOfPlaceholderNotCollapsedRevGeoQuery";
  v186[4] = @"numberOfPlaceholderError";
  v176 = [MEMORY[0x277CBEA60] arrayWithObjects:v186 count:5];
  v185[0] = @"bucketedPercentageOfPlaceholderCollapsed";
  v185[1] = @"bucketedPercentageOfPlaceholderIntendedRestored";
  v185[2] = @"bucketedPercentageOfPlaceholderUnintendedRestored";
  v185[3] = @"bucketedPercentageOfPlaceholderRevGeoQuery";
  v185[4] = @"bucketedPercentageOfPlaceholderError";
  v174 = [MEMORY[0x277CBEA60] arrayWithObjects:v185 count:5];
  v65 = [[_RTZip alloc] initWithFirstInput:v176 secondInput:v174];
  v66 = [(_RTZip *)v65 zippedArray];
  [(RTRelabelerPersisterMetrics *)self setBucketedPercentageMetricsWithMappings:v66 sharedDenominator:v180 sharedBins:v64];

  v67 = [(RTMetric *)self metrics];
  v68 = [v67 objectForKeyedSubscript:@"numberOfStartingVisits"];
  [v68 doubleValue];
  [(RTRelabelerPersisterMetrics *)self safeFraction:v43 denominator:v69];
  v71 = v70 * 100.0;

  v72 = [(RTMetric *)self metrics];
  v73 = [v72 objectForKeyedSubscript:@"numberOfStartingVisits"];
  [v73 doubleValue];
  [(RTRelabelerPersisterMetrics *)self safeFraction:v64 denominator:v74];
  v76 = v75 * 100.0;

  v77 = [MEMORY[0x277CCABB0] numberWithDouble:v71];
  v78 = [RTMetric binForNumber:v77 bins:v180];
  v79 = [(RTMetric *)self metrics];
  [v79 setObject:v78 forKeyedSubscript:@"bucketedPercentageOfNonPlaceholder"];

  v80 = [MEMORY[0x277CCABB0] numberWithDouble:v76];
  v81 = [RTMetric binForNumber:v80 bins:v180];
  v82 = [(RTMetric *)self metrics];
  [v82 setObject:v81 forKeyedSubscript:@"bucketedPercentageOfPlaceholder"];

  v83 = MEMORY[0x277CCABB0];
  v84 = [(RTMetric *)self metrics];
  v85 = [v84 objectForKeyedSubscript:@"numberOfLOIsCollapsed"];
  [v85 doubleValue];
  v87 = v86;
  v88 = [(RTMetric *)self metrics];
  v89 = [v88 objectForKeyedSubscript:@"numberOfStartingLOIs"];
  [v89 doubleValue];
  [(RTRelabelerPersisterMetrics *)self safeFraction:v87 denominator:v90];
  v92 = [v83 numberWithDouble:v91 * 100.0];
  v93 = [(RTMetric *)self metrics];
  [v93 setObject:v92 forKeyedSubscript:@"percentageOfLOIsCollapsed"];

  v184[0] = @"numberOfLOIsCleanedUp";
  v184[1] = @"numberOfBrokenLOIErrors";
  v173 = [MEMORY[0x277CBEA60] arrayWithObjects:v184 count:2];
  v183[0] = @"bucketedPercentageOfLOIsCleanedUp";
  v183[1] = @"bucketedPercentageOfLOIsBroken";
  v172 = [MEMORY[0x277CBEA60] arrayWithObjects:v183 count:2];
  v94 = [[_RTZip alloc] initWithFirstInput:v173 secondInput:v172];
  v95 = [(_RTZip *)v94 zippedArray];
  v96 = [(RTMetric *)self metrics];
  v97 = [v96 objectForKeyedSubscript:@"numberOfStartingLOIs"];
  [v97 doubleValue];
  [(RTRelabelerPersisterMetrics *)self setBucketedPercentageMetricsWithMappings:v95 sharedDenominator:&unk_2845A1598 sharedBins:?];

  v98 = [(RTMetric *)self metrics];
  v99 = [v98 objectForKeyedSubscript:@"numberOfLOIsCleanedUp"];
  [v99 doubleValue];
  v101 = v100;
  v102 = [(RTMetric *)self metrics];
  v103 = [v102 objectForKeyedSubscript:@"numberOfBrokenLOIErrors"];
  [v103 doubleValue];
  v105 = v101 + v104;

  v106 = [(RTMetric *)self metrics];
  v107 = [v106 objectForKeyedSubscript:@"numberOfStartingLOIs"];
  [v107 doubleValue];
  [(RTRelabelerPersisterMetrics *)self safeFraction:v105 denominator:v108];
  v110 = v109 * 100.0;

  v111 = [MEMORY[0x277CCABB0] numberWithDouble:v110];
  v112 = [RTMetric binForNumber:v111 bins:&unk_2845A1598];
  v113 = [(RTMetric *)self metrics];
  [v113 setObject:v112 forKeyedSubscript:@"bucketedPercentageOfLOIsDeleted"];

  v171 = [(RTMetric *)self metrics];
  v170 = [v171 objectForKeyedSubscript:@"numberOfUnknownErrors"];
  [v170 doubleValue];
  v115 = v114;
  v169 = [(RTMetric *)self metrics];
  v168 = [v169 objectForKeyedSubscript:@"numberOfInvalidParameterErrors"];
  [v168 doubleValue];
  v117 = v115 + v116;
  v167 = [(RTMetric *)self metrics];
  v166 = [v167 objectForKeyedSubscript:@"numberOfDistanceCalculatorErrors"];
  [v166 doubleValue];
  v119 = v117 + v118;
  v165 = [(RTMetric *)self metrics];
  v164 = [v165 objectForKeyedSubscript:@"numberOfFetchRequestErrors"];
  [v164 doubleValue];
  v121 = v119 + v120;
  v163 = [(RTMetric *)self metrics];
  v122 = [v163 objectForKeyedSubscript:@"numberOfNilVisitMOErrors"];
  [v122 doubleValue];
  v124 = v121 + v123;
  v125 = [(RTMetric *)self metrics];
  v126 = [v125 objectForKeyedSubscript:@"numberOfNilLOIMOErrors"];
  [v126 doubleValue];
  v128 = v124 + v127;
  v129 = [(RTMetric *)self metrics];
  v130 = [v129 objectForKeyedSubscript:@"numberOfNilPlaceMOErrors"];
  [v130 doubleValue];
  v132 = v128 + v131;
  v133 = [(RTMetric *)self metrics];
  v134 = [v133 objectForKeyedSubscript:@"numberOfRevGeoQueryErrors"];
  [v134 doubleValue];
  v136 = v132 + v135;
  v137 = [(RTMetric *)self metrics];
  v138 = [v137 objectForKeyedSubscript:@"numberOfNoSingularTranstiionErrors"];
  [v138 doubleValue];
  v140 = v136 + v139;

  v141 = [MEMORY[0x277CCABB0] numberWithDouble:v140];
  v142 = [(RTMetric *)self metrics];
  [v142 setObject:v141 forKeyedSubscript:@"totalNumberOfErrors"];

  v143 = MEMORY[0x277CCABB0];
  v144 = [(RTMetric *)self metrics];
  v145 = [v144 objectForKeyedSubscript:@"numberOfStartingVisits"];
  [v145 doubleValue];
  [(RTRelabelerPersisterMetrics *)self safeFraction:v140 denominator:v146];
  v147 = [v143 numberWithDouble:?];
  v148 = [(RTMetric *)self metrics];
  [v148 setObject:v147 forKeyedSubscript:@"errorRate"];

  v182[0] = @"numberOfUnknownErrors";
  v182[1] = @"numberOfInvalidParameterErrors";
  v182[2] = @"numberOfDistanceCalculatorErrors";
  v182[3] = @"numberOfFetchRequestErrors";
  v182[4] = @"numberOfNilVisitMOErrors";
  v182[5] = @"numberOfNilLOIMOErrors";
  v182[6] = @"numberOfNilPlaceMOErrors";
  v182[7] = @"numberOfRevGeoQueryErrors";
  v182[8] = @"numberOfNoSingularTranstiionErrors";
  v149 = [MEMORY[0x277CBEA60] arrayWithObjects:v182 count:9];
  v181[0] = @"bucketedPercentageOfUnknownErrors";
  v181[1] = @"bucketedPercentageOfInvalidParameterErrors";
  v181[2] = @"bucketedPercentageOfDistanceCalculatorErrors";
  v181[3] = @"bucketedPercentageOfFetchRequestErrors";
  v181[4] = @"bucketedPercentageOfNilVisitMOErrors";
  v181[5] = @"bucketedPercentageOfNilLOIMOErrors";
  v181[6] = @"bucketedPercentageOfNilPlaceMOErrors";
  v181[7] = @"bucketedPercentageOfRevGeoQueryErrors";
  v181[8] = @"bucketedPercentageOfNoSingularTransitionErrors";
  v150 = [MEMORY[0x277CBEA60] arrayWithObjects:v181 count:9];
  v151 = [[_RTZip alloc] initWithFirstInput:v149 secondInput:v150];
  v152 = [(_RTZip *)v151 zippedArray];
  [(RTRelabelerPersisterMetrics *)self setBucketedPercentageMetricsWithMappings:v152 sharedDenominator:v179 sharedBins:v140];

  v153 = MEMORY[0x277CCABB0];
  v154 = [(RTMetric *)self metrics];
  v155 = [v154 objectForKeyedSubscript:@"numberOfStartingLOIs"];
  [v155 doubleValue];
  v157 = v156;
  v158 = [(RTMetric *)self metrics];
  v159 = [v158 objectForKeyedSubscript:@"numberOfStartingLOIs"];
  [v159 doubleValue];
  [(RTRelabelerPersisterMetrics *)self safeFraction:v157 denominator:v160 - v105];
  v161 = [v153 numberWithDouble:?];
  v162 = [(RTMetric *)self metrics];
  [v162 setObject:v161 forKeyedSubscript:@"visitDensityRatioIncrease"];
}

- (BOOL)submitMetricsWithError:(id *)a3
{
  [(RTRelabelerPersisterMetrics *)self setDerivedMetrics];
  v6.receiver = self;
  v6.super_class = RTRelabelerPersisterMetrics;
  return [(RTMetric *)&v6 submitMetricsWithError:a3];
}

@end