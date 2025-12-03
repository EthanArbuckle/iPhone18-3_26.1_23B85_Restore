@interface RTRelabelerPersisterMetrics
+ (id)supportedMetricKeys;
- (BOOL)submitMetricsWithError:(id *)error;
- (RTRelabelerPersisterMetrics)initWithLoggingEnabled:(BOOL)enabled;
- (double)safeFraction:(double)fraction denominator:(double)denominator;
- (void)setBucketedPercentageMetricsWithMappings:(id)mappings sharedDenominator:(double)denominator sharedBins:(id)bins;
- (void)setDerivedMetrics;
- (void)setErrorKey:(id)key;
- (void)tallyError:(id)error;
- (void)tallyKey:(id)key;
@end

@implementation RTRelabelerPersisterMetrics

- (RTRelabelerPersisterMetrics)initWithLoggingEnabled:(BOOL)enabled
{
  v55 = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = RTRelabelerPersisterMetrics;
  v3 = [(RTMetric *)&v50 initWithLoggingEnabled:enabled];
  if (v3)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    bOOLeanKeys = [objc_opt_class() BOOLeanKeys];
    v5 = [bOOLeanKeys countByEnumeratingWithState:&v46 objects:v54 count:16];
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
            objc_enumerationMutation(bOOLeanKeys);
          }

          v10 = *(*(&v46 + 1) + 8 * v9);
          metrics = [(RTMetric *)v3 metrics];
          [metrics setObject:v8 forKeyedSubscript:v10];

          ++v9;
        }

        while (v6 != v9);
        v6 = [bOOLeanKeys countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v6);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    unsignedIntegerKeys = [objc_opt_class() unsignedIntegerKeys];
    v13 = [unsignedIntegerKeys countByEnumeratingWithState:&v42 objects:v53 count:16];
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
            objc_enumerationMutation(unsignedIntegerKeys);
          }

          v17 = *(*(&v42 + 1) + 8 * v16);
          metrics2 = [(RTMetric *)v3 metrics];
          [metrics2 setObject:&unk_28459F540 forKeyedSubscript:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [unsignedIntegerKeys countByEnumeratingWithState:&v42 objects:v53 count:16];
      }

      while (v14);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    doubleKeys = [objc_opt_class() doubleKeys];
    v20 = [doubleKeys countByEnumeratingWithState:&v38 objects:v52 count:16];
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
            objc_enumerationMutation(doubleKeys);
          }

          v24 = *(*(&v38 + 1) + 8 * v23);
          metrics3 = [(RTMetric *)v3 metrics];
          [metrics3 setObject:&unk_2845A2098 forKeyedSubscript:v24];

          ++v23;
        }

        while (v21 != v23);
        v21 = [doubleKeys countByEnumeratingWithState:&v38 objects:v52 count:16];
      }

      while (v21);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    bucketedKeys = [objc_opt_class() bucketedKeys];
    v27 = [bucketedKeys countByEnumeratingWithState:&v34 objects:v51 count:16];
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
            objc_enumerationMutation(bucketedKeys);
          }

          v31 = *(*(&v34 + 1) + 8 * v30);
          metrics4 = [(RTMetric *)v3 metrics];
          [metrics4 setObject:&unk_28459F558 forKeyedSubscript:v31];

          ++v30;
        }

        while (v28 != v30);
        v28 = [bucketedKeys countByEnumeratingWithState:&v34 objects:v51 count:16];
      }

      while (v28);
    }
  }

  return v3;
}

+ (id)supportedMetricKeys
{
  v2 = MEMORY[0x277CBEB58];
  bOOLeanKeys = [objc_opt_class() BOOLeanKeys];
  v4 = [v2 setWithSet:bOOLeanKeys];

  unsignedIntegerKeys = [objc_opt_class() unsignedIntegerKeys];
  allObjects = [unsignedIntegerKeys allObjects];
  [v4 addObjectsFromArray:allObjects];

  doubleKeys = [objc_opt_class() doubleKeys];
  allObjects2 = [doubleKeys allObjects];
  [v4 addObjectsFromArray:allObjects2];

  bucketedKeys = [objc_opt_class() bucketedKeys];
  allObjects3 = [bucketedKeys allObjects];
  [v4 addObjectsFromArray:allObjects3];

  return v4;
}

- (void)tallyKey:(id)key
{
  v14 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  metrics = [(RTMetric *)self metrics];
  v6 = [metrics objectForKeyedSubscript:keyCopy];

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
  metrics2 = [(RTMetric *)self metrics];
  [metrics2 setObject:v8 forKeyedSubscript:keyCopy];
}

- (void)tallyError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v11 = errorCopy;
    domain = [errorCopy domain];
    v6 = [domain isEqualToString:*MEMORY[0x277D01448]];

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
      domain2 = [v11 domain];
      v9 = [domain2 isEqualToString:@"RTRelabelerPersisterErrorDomain"];

      if (v9)
      {
        code = [v11 code];
        if (code > 8)
        {
          goto LABEL_10;
        }

        v7 = off_2788D0248[code];
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

- (void)setErrorKey:(id)key
{
  keyCopy = key;
  metrics = [(RTMetric *)self metrics];
  [metrics setObject:MEMORY[0x277CBEC38] forKeyedSubscript:keyCopy];
}

- (double)safeFraction:(double)fraction denominator:(double)denominator
{
  result = fraction / denominator;
  if (denominator <= 0.0)
  {
    return -1.0;
  }

  return result;
}

- (void)setBucketedPercentageMetricsWithMappings:(id)mappings sharedDenominator:(double)denominator sharedBins:(id)bins
{
  v37 = *MEMORY[0x277D85DE8];
  mappingsCopy = mappings;
  binsCopy = bins;
  v9 = binsCopy;
  obj = mappingsCopy;
  if (!mappingsCopy)
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

  if (!binsCopy)
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
  v10 = [mappingsCopy countByEnumeratingWithState:&v28 objects:v36 count:16];
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
        metrics = [(RTMetric *)self metrics];
        firstObject = [v15 firstObject];
        v18 = [metrics objectForKeyedSubscript:firstObject];

        if (v18)
        {
          [v18 doubleValue];
          [RTRelabelerPersisterMetrics safeFraction:"safeFraction:denominator:" denominator:?];
          v20 = [MEMORY[0x277CCABB0] numberWithDouble:v19 * 100.0];
          v21 = [RTMetric binForNumber:v20 bins:v9];
          metrics2 = [(RTMetric *)self metrics];
          secondObject = [v15 secondObject];
          [metrics2 setObject:v21 forKeyedSubscript:secondObject];
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
  metrics = [(RTMetric *)self metrics];
  v4 = [metrics objectForKeyedSubscript:@"numberOfStartingVisits"];
  v5 = [RTMetric binForNumber:v4 bins:&unk_2845A15B0];
  metrics2 = [(RTMetric *)self metrics];
  [metrics2 setObject:v5 forKeyedSubscript:@"bucketedNumberOfStartingVisits"];

  v7 = MEMORY[0x277CCABB0];
  metrics3 = [(RTMetric *)self metrics];
  v9 = [metrics3 objectForKeyedSubscript:@"numberOfStartingVisits"];
  [v9 doubleValue];
  v11 = v10;
  metrics4 = [(RTMetric *)self metrics];
  v13 = [metrics4 objectForKeyedSubscript:@"numberOfStartingLOIs"];
  [v13 doubleValue];
  [(RTRelabelerPersisterMetrics *)self safeFraction:v11 denominator:v14];
  v15 = [v7 numberWithDouble:?];
  metrics5 = [(RTMetric *)self metrics];
  [metrics5 setObject:v15 forKeyedSubscript:@"startingVisitDensity"];

  v17 = MEMORY[0x277CCABB0];
  metrics6 = [(RTMetric *)self metrics];
  v19 = [metrics6 objectForKeyedSubscript:@"numberUnassociatedError"];
  [v19 doubleValue];
  v21 = v20;
  metrics7 = [(RTMetric *)self metrics];
  v23 = [metrics7 objectForKeyedSubscript:@"numberUnassociated"];
  [v23 doubleValue];
  v25 = v24;
  metrics8 = [(RTMetric *)self metrics];
  v27 = [metrics8 objectForKeyedSubscript:@"numberUnassociatedError"];
  [v27 doubleValue];
  [(RTRelabelerPersisterMetrics *)self safeFraction:v21 denominator:v25 + v28];
  v30 = [v17 numberWithDouble:v29 * 100.0];
  metrics9 = [(RTMetric *)self metrics];
  [metrics9 setObject:v30 forKeyedSubscript:@"percentageOfUnassociatedError"];

  metrics10 = [(RTMetric *)self metrics];
  v33 = [metrics10 objectForKeyedSubscript:@"numberOfNonPlaceholderSame"];
  [v33 doubleValue];
  v35 = v34;
  metrics11 = [(RTMetric *)self metrics];
  v37 = [metrics11 objectForKeyedSubscript:@"numberOfNonPlaceholderDifferent"];
  [v37 doubleValue];
  v39 = v35 + v38;
  metrics12 = [(RTMetric *)self metrics];
  v41 = [metrics12 objectForKeyedSubscript:@"numberOfNonPlaceholderError"];
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
  zippedArray = [(_RTZip *)v44 zippedArray];
  [(RTRelabelerPersisterMetrics *)self setBucketedPercentageMetricsWithMappings:zippedArray sharedDenominator:v180 sharedBins:v43];

  metrics13 = [(RTMetric *)self metrics];
  v46 = [metrics13 objectForKeyedSubscript:@"numberOfPlaceholderCollapsed"];
  [v46 doubleValue];
  v48 = v47;
  metrics14 = [(RTMetric *)self metrics];
  v50 = [metrics14 objectForKeyedSubscript:@"numberOfPlaceholderIntendedRestored"];
  [v50 doubleValue];
  v52 = v48 + v51;
  metrics15 = [(RTMetric *)self metrics];
  v54 = [metrics15 objectForKeyedSubscript:@"numberOfPlaceholderUnintendedRestored"];
  [v54 doubleValue];
  v56 = v52 + v55;
  metrics16 = [(RTMetric *)self metrics];
  v58 = [metrics16 objectForKeyedSubscript:@"numberOfPlaceholderNotCollapsedRevGeoQuery"];
  [v58 doubleValue];
  v60 = v56 + v59;
  metrics17 = [(RTMetric *)self metrics];
  v62 = [metrics17 objectForKeyedSubscript:@"numberOfPlaceholderError"];
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
  zippedArray2 = [(_RTZip *)v65 zippedArray];
  [(RTRelabelerPersisterMetrics *)self setBucketedPercentageMetricsWithMappings:zippedArray2 sharedDenominator:v180 sharedBins:v64];

  metrics18 = [(RTMetric *)self metrics];
  v68 = [metrics18 objectForKeyedSubscript:@"numberOfStartingVisits"];
  [v68 doubleValue];
  [(RTRelabelerPersisterMetrics *)self safeFraction:v43 denominator:v69];
  v71 = v70 * 100.0;

  metrics19 = [(RTMetric *)self metrics];
  v73 = [metrics19 objectForKeyedSubscript:@"numberOfStartingVisits"];
  [v73 doubleValue];
  [(RTRelabelerPersisterMetrics *)self safeFraction:v64 denominator:v74];
  v76 = v75 * 100.0;

  v77 = [MEMORY[0x277CCABB0] numberWithDouble:v71];
  v78 = [RTMetric binForNumber:v77 bins:v180];
  metrics20 = [(RTMetric *)self metrics];
  [metrics20 setObject:v78 forKeyedSubscript:@"bucketedPercentageOfNonPlaceholder"];

  v80 = [MEMORY[0x277CCABB0] numberWithDouble:v76];
  v81 = [RTMetric binForNumber:v80 bins:v180];
  metrics21 = [(RTMetric *)self metrics];
  [metrics21 setObject:v81 forKeyedSubscript:@"bucketedPercentageOfPlaceholder"];

  v83 = MEMORY[0x277CCABB0];
  metrics22 = [(RTMetric *)self metrics];
  v85 = [metrics22 objectForKeyedSubscript:@"numberOfLOIsCollapsed"];
  [v85 doubleValue];
  v87 = v86;
  metrics23 = [(RTMetric *)self metrics];
  v89 = [metrics23 objectForKeyedSubscript:@"numberOfStartingLOIs"];
  [v89 doubleValue];
  [(RTRelabelerPersisterMetrics *)self safeFraction:v87 denominator:v90];
  v92 = [v83 numberWithDouble:v91 * 100.0];
  metrics24 = [(RTMetric *)self metrics];
  [metrics24 setObject:v92 forKeyedSubscript:@"percentageOfLOIsCollapsed"];

  v184[0] = @"numberOfLOIsCleanedUp";
  v184[1] = @"numberOfBrokenLOIErrors";
  v173 = [MEMORY[0x277CBEA60] arrayWithObjects:v184 count:2];
  v183[0] = @"bucketedPercentageOfLOIsCleanedUp";
  v183[1] = @"bucketedPercentageOfLOIsBroken";
  v172 = [MEMORY[0x277CBEA60] arrayWithObjects:v183 count:2];
  v94 = [[_RTZip alloc] initWithFirstInput:v173 secondInput:v172];
  zippedArray3 = [(_RTZip *)v94 zippedArray];
  metrics25 = [(RTMetric *)self metrics];
  v97 = [metrics25 objectForKeyedSubscript:@"numberOfStartingLOIs"];
  [v97 doubleValue];
  [(RTRelabelerPersisterMetrics *)self setBucketedPercentageMetricsWithMappings:zippedArray3 sharedDenominator:&unk_2845A1598 sharedBins:?];

  metrics26 = [(RTMetric *)self metrics];
  v99 = [metrics26 objectForKeyedSubscript:@"numberOfLOIsCleanedUp"];
  [v99 doubleValue];
  v101 = v100;
  metrics27 = [(RTMetric *)self metrics];
  v103 = [metrics27 objectForKeyedSubscript:@"numberOfBrokenLOIErrors"];
  [v103 doubleValue];
  v105 = v101 + v104;

  metrics28 = [(RTMetric *)self metrics];
  v107 = [metrics28 objectForKeyedSubscript:@"numberOfStartingLOIs"];
  [v107 doubleValue];
  [(RTRelabelerPersisterMetrics *)self safeFraction:v105 denominator:v108];
  v110 = v109 * 100.0;

  v111 = [MEMORY[0x277CCABB0] numberWithDouble:v110];
  v112 = [RTMetric binForNumber:v111 bins:&unk_2845A1598];
  metrics29 = [(RTMetric *)self metrics];
  [metrics29 setObject:v112 forKeyedSubscript:@"bucketedPercentageOfLOIsDeleted"];

  metrics30 = [(RTMetric *)self metrics];
  v170 = [metrics30 objectForKeyedSubscript:@"numberOfUnknownErrors"];
  [v170 doubleValue];
  v115 = v114;
  metrics31 = [(RTMetric *)self metrics];
  v168 = [metrics31 objectForKeyedSubscript:@"numberOfInvalidParameterErrors"];
  [v168 doubleValue];
  v117 = v115 + v116;
  metrics32 = [(RTMetric *)self metrics];
  v166 = [metrics32 objectForKeyedSubscript:@"numberOfDistanceCalculatorErrors"];
  [v166 doubleValue];
  v119 = v117 + v118;
  metrics33 = [(RTMetric *)self metrics];
  v164 = [metrics33 objectForKeyedSubscript:@"numberOfFetchRequestErrors"];
  [v164 doubleValue];
  v121 = v119 + v120;
  metrics34 = [(RTMetric *)self metrics];
  v122 = [metrics34 objectForKeyedSubscript:@"numberOfNilVisitMOErrors"];
  [v122 doubleValue];
  v124 = v121 + v123;
  metrics35 = [(RTMetric *)self metrics];
  v126 = [metrics35 objectForKeyedSubscript:@"numberOfNilLOIMOErrors"];
  [v126 doubleValue];
  v128 = v124 + v127;
  metrics36 = [(RTMetric *)self metrics];
  v130 = [metrics36 objectForKeyedSubscript:@"numberOfNilPlaceMOErrors"];
  [v130 doubleValue];
  v132 = v128 + v131;
  metrics37 = [(RTMetric *)self metrics];
  v134 = [metrics37 objectForKeyedSubscript:@"numberOfRevGeoQueryErrors"];
  [v134 doubleValue];
  v136 = v132 + v135;
  metrics38 = [(RTMetric *)self metrics];
  v138 = [metrics38 objectForKeyedSubscript:@"numberOfNoSingularTranstiionErrors"];
  [v138 doubleValue];
  v140 = v136 + v139;

  v141 = [MEMORY[0x277CCABB0] numberWithDouble:v140];
  metrics39 = [(RTMetric *)self metrics];
  [metrics39 setObject:v141 forKeyedSubscript:@"totalNumberOfErrors"];

  v143 = MEMORY[0x277CCABB0];
  metrics40 = [(RTMetric *)self metrics];
  v145 = [metrics40 objectForKeyedSubscript:@"numberOfStartingVisits"];
  [v145 doubleValue];
  [(RTRelabelerPersisterMetrics *)self safeFraction:v140 denominator:v146];
  v147 = [v143 numberWithDouble:?];
  metrics41 = [(RTMetric *)self metrics];
  [metrics41 setObject:v147 forKeyedSubscript:@"errorRate"];

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
  zippedArray4 = [(_RTZip *)v151 zippedArray];
  [(RTRelabelerPersisterMetrics *)self setBucketedPercentageMetricsWithMappings:zippedArray4 sharedDenominator:v179 sharedBins:v140];

  v153 = MEMORY[0x277CCABB0];
  metrics42 = [(RTMetric *)self metrics];
  v155 = [metrics42 objectForKeyedSubscript:@"numberOfStartingLOIs"];
  [v155 doubleValue];
  v157 = v156;
  metrics43 = [(RTMetric *)self metrics];
  v159 = [metrics43 objectForKeyedSubscript:@"numberOfStartingLOIs"];
  [v159 doubleValue];
  [(RTRelabelerPersisterMetrics *)self safeFraction:v157 denominator:v160 - v105];
  v161 = [v153 numberWithDouble:?];
  metrics44 = [(RTMetric *)self metrics];
  [metrics44 setObject:v161 forKeyedSubscript:@"visitDensityRatioIncrease"];
}

- (BOOL)submitMetricsWithError:(id *)error
{
  [(RTRelabelerPersisterMetrics *)self setDerivedMetrics];
  v6.receiver = self;
  v6.super_class = RTRelabelerPersisterMetrics;
  return [(RTMetric *)&v6 submitMetricsWithError:error];
}

@end