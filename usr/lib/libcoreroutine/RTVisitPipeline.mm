@interface RTVisitPipeline
+ (id)typeToString:(unint64_t)string;
- (BOOL)isRedundantForVisit:(id)visit currentVisit:(id)currentVisit distanceCalculator:(id)calculator;
- (RTVisitPipeline)initWithModules:(id)modules name:(id)name type:(unint64_t)type lastVisit:(id)visit hyperParameter:(id)parameter;
- (id)description;
- (id)filterLocations:(id)locations;
- (id)filterVisitClusters:(id)clusters;
- (id)processLocations:(id)locations;
- (id)processVisitCluster:(id)cluster;
- (void)shutdown;
@end

@implementation RTVisitPipeline

+ (id)typeToString:(unint64_t)string
{
  if (string - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788C5FE0[string - 1];
  }
}

- (RTVisitPipeline)initWithModules:(id)modules name:(id)name type:(unint64_t)type lastVisit:(id)visit hyperParameter:(id)parameter
{
  v71 = *MEMORY[0x277D85DE8];
  modulesCopy = modules;
  nameCopy = name;
  visitCopy = visit;
  parameterCopy = parameter;
  if (![modulesCopy count])
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    *buf = 0;
    v44 = "Invalid parameter not satisfying: modules.count";
LABEL_36:
    _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, v44, buf, 2u);
    goto LABEL_37;
  }

  if (!nameCopy)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    *buf = 0;
    v44 = "Invalid parameter not satisfying: name";
    goto LABEL_36;
  }

  if (type > 4 || ((1 << type) & 0x16) == 0)
  {
    v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v46, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: VALID_PIPELINE(type)", buf, 2u);
    }

    if (type != 4)
    {
      goto LABEL_38;
    }
  }

  if (!parameterCopy)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v44 = "Invalid parameter not satisfying: hyperParameter";
      goto LABEL_36;
    }

LABEL_37:

LABEL_38:
    selfCopy = 0;
    goto LABEL_39;
  }

  typeCopy = type;
  parameterCopy2 = parameter;
  v50 = visitCopy;
  v51 = nameCopy;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v16 = modulesCopy;
  v17 = [v16 countByEnumeratingWithState:&v57 objects:v70 count:16];
  if (v17)
  {
    v19 = v17;
    v20 = *v58;
    *&v18 = 138413058;
    v47 = v18;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v58 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v57 + 1) + 8 * i);
        if (([v22 conformsToProtocol:{&unk_2845A36A8, v47}] & 1) == 0)
        {
          v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = v47;
            v63 = v22;
            v64 = 2112;
            v65 = v51;
            v66 = 2080;
            v67 = "[RTVisitPipeline initWithModules:name:type:lastVisit:hyperParameter:]";
            v68 = 1024;
            v69 = 97;
            _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "%@ doesn't conform to RTVisitPipelineModule for pipeline, %@ (in %s:%d)", buf, 0x26u);
          }
        }

        if (![v22 conformsToProtocol:&unk_2845A36A8])
        {

          selfCopy = 0;
          goto LABEL_33;
        }
      }

      v19 = [v16 countByEnumeratingWithState:&v57 objects:v70 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v56.receiver = self;
  v56.super_class = RTVisitPipeline;
  v24 = [(RTVisitPipeline *)&v56 init];
  if (v24)
  {
    v25 = [v16 copy];
    modules = v24->_modules;
    v24->_modules = v25;

    v27 = objc_opt_new();
    moduleStats = v24->_moduleStats;
    v24->_moduleStats = v27;

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v29 = v24->_modules;
    v30 = [(NSArray *)v29 countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v53;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v53 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = objc_opt_new();
          v35 = v24->_moduleStats;
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          [(NSMutableDictionary *)v35 setObject:v34 forKeyedSubscript:v37];
        }

        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v31);
    }

    v38 = [v50 copy];
    lastVisit = v24->_lastVisit;
    v24->_lastVisit = v38;

    v40 = [v51 copy];
    name = v24->_name;
    v24->_name = v40;

    v24->_type = typeCopy;
    objc_storeStrong(&v24->_hyperParameter, parameterCopy2);
  }

  self = v24;
  selfCopy = self;
LABEL_33:
  visitCopy = v50;
  nameCopy = v51;
LABEL_39:

  return selfCopy;
}

- (void)shutdown
{
  v37 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_modules;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        [array addObject:v10];
        moduleStats = self->_moduleStats;
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = [(NSMutableDictionary *)moduleStats objectForKeyedSubscript:v13];

        v15 = MEMORY[0x277CCABB0];
        [v14 cumulativeProcessingDuration];
        v16 = [v15 numberWithDouble:?];
        [array addObject:v16];

        if (objc_opt_respondsToSelector())
        {
          [v8 shutdown];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v5);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = NSStringFromSelector(a2);
      name = self->_name;
      iteration = self->_iteration;
      v21 = [array componentsJoinedByString:{@", "}];
      *buf = 138413058;
      v29 = v18;
      v30 = 2112;
      v31 = name;
      v32 = 2048;
      v33 = iteration;
      v34 = 2112;
      v35 = v21;
      _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, pipeline, %@, iterations, %lu, moduleProcessingDurations, %@", buf, 0x2Au);
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = self->_name;
  v5 = [objc_opt_class() typeToString:self->_type];
  v6 = [(NSArray *)self->_modules count];
  v7 = @"NO";
  if (self->_bootStrappingDone)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"name, %@, type, %@, %lu modules, bootstrappingDone, %@, lastVisit, %@", name, v5, v6, v7, self->_lastVisit];

  return v8;
}

- (id)filterLocations:(id)locations
{
  v3 = MEMORY[0x277CCAC30];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__RTVisitPipeline_filterLocations___block_invoke;
  v8[3] = &unk_2788C5FC0;
  v8[4] = self;
  locationsCopy = locations;
  v5 = [v3 predicateWithBlock:v8];
  v6 = [locationsCopy filteredArrayUsingPredicate:v5];

  return v6;
}

BOOL __35__RTVisitPipeline_filterLocations___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(*(a1 + 32) + 72) && ([v5 date], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isOnOrBefore:", *(*(a1 + 32) + 72)), v7, (v8 & 1) != 0) || (objc_msgSend(v5, "horizontalUncertainty"), v10 = v9, objc_msgSend(*(*(a1 + 32) + 64), "maxHorizontalAccuracy"), v10 > v11))
  {
    v12 = 0;
  }

  else
  {
    [v5 horizontalUncertainty];
    v12 = v13 >= 0.0;
  }

  return v12;
}

- (id)processLocations:(id)locations
{
  v46[1] = *MEMORY[0x277D85DE8];
  v4 = [(RTVisitPipeline *)self filterLocations:locations];
  if ([v4 count])
  {
    ++self->_iteration;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        name = self->_name;
        iteration = self->_iteration;
        v15 = [v4 count];
        firstObject = [v4 firstObject];
        date = [firstObject date];
        stringFromDate = [date stringFromDate];
        lastObject = [v4 lastObject];
        date2 = [lastObject date];
        stringFromDate2 = [date2 stringFromDate];
        *buf = 138413314;
        v35 = name;
        v36 = 2048;
        v37 = iteration;
        v38 = 2048;
        v39 = v15;
        v40 = 2112;
        v41 = stringFromDate;
        v42 = 2112;
        v43 = stringFromDate2;
        _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "pipeline, %@, iteration, %lu, with %lu points from, %@, to %@", buf, 0x34u);
      }
    }

    lastObject2 = [v4 lastObject];
    date3 = [lastObject2 date];
    lastProcessedLocationDate = self->_lastProcessedLocationDate;
    self->_lastProcessedLocationDate = date3;

    v9 = [[RTVisitLocationPoints alloc] initWithLocations:v4];
    v10 = [[RTVisitCluster alloc] initWithPoints:v9];
    v46[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];

    v12 = [(RTVisitPipeline *)self processVisitCluster:v11];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        name = [(RTVisitPipeline *)self name];
        v29 = self->_iteration;
        v28 = [v12 count];
        v27 = [v4 count];
        firstObject2 = [v4 firstObject];
        date4 = [firstObject2 date];
        stringFromDate3 = [date4 stringFromDate];
        lastObject3 = [v4 lastObject];
        date5 = [lastObject3 date];
        stringFromDate4 = [date5 stringFromDate];
        *buf = 138413570;
        v35 = name;
        v36 = 2048;
        v37 = v29;
        v38 = 2048;
        v39 = v28;
        v40 = 2048;
        v41 = v27;
        v42 = 2112;
        v43 = stringFromDate3;
        v44 = 2112;
        v45 = stringFromDate4;
        _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "pipeline, %@, iteration, %lu, detected %lu visits from %lu locations ranging from %@ to %@", buf, 0x3Eu);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)processVisitCluster:(id)cluster
{
  v66 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v5 = self->_modules;
  v47 = [(NSArray *)v5 countByEnumeratingWithState:&v52 objects:v65 count:16];
  if (!v47)
  {

LABEL_28:
    v31 = [(RTVisitPipeline *)self filterVisitClusters:clusterCopy];

    clusterCopy = v31;
    goto LABEL_29;
  }

  v45 = 0;
  v46 = *v53;
  while (2)
  {
    for (i = 0; i != v47; ++i)
    {
      if (*v53 != v46)
      {
        objc_enumerationMutation(v5);
      }

      v7 = *(*(&v52 + 1) + 8 * i);
      v8 = objc_autoreleasePoolPush();
      moduleStats = self->_moduleStats;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [(NSMutableDictionary *)moduleStats objectForKeyedSubscript:v11];

      [v12 startIterationWithVisitClusters:clusterCopy];
      v13 = [v7 process:clusterCopy];

      [v12 stopIterationWithVisitClusters:v13];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v14 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          name = self->_name;
          iteration = self->_iteration;
          v24 = objc_opt_class();
          v25 = NSStringFromClass(v24);
          *buf = 138413058;
          v58 = name;
          v59 = 2048;
          v60 = iteration;
          v61 = 2112;
          v62 = v25;
          v63 = 2112;
          v64 = v12;
          _os_log_debug_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEBUG, "pipeline, %@, iteration, %lu, module, %@, stats, %@", buf, 0x2Au);
        }
      }

      lastLocationCount = [v12 lastLocationCount];
      [(RTVisitHyperParameter *)self->_hyperParameter maxGapInVisit];
      if (v16 < lastLocationCount)
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          v26 = self->_name;
          lastLocationCount2 = [v12 lastLocationCount];
          [(RTVisitHyperParameter *)self->_hyperParameter maxGapInVisit];
          *buf = 138412802;
          v58 = v26;
          v59 = 2048;
          v60 = lastLocationCount2;
          v61 = 2048;
          v62 = v28;
          _os_log_fault_impl(&dword_2304B3000, v17, OS_LOG_TYPE_FAULT, "pipeline, %@, lastLocationCount, %lu, exceeded maxLocationCount, %.0f", buf, 0x20u);
        }
      }

      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = [v19 isEqualToString:v21];

      if (v22)
      {
        clusterCopy = [(RTVisitPipeline *)self filterVisitClusters:v13];

        v45 = 1;
      }

      else
      {
        clusterCopy = v13;
      }

      if (![clusterCopy count])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v29 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            v40 = self->_name;
            v41 = self->_iteration;
            v42 = objc_opt_class();
            v43 = NSStringFromClass(v42);
            *buf = 138412802;
            v58 = v40;
            v59 = 2048;
            v60 = v41;
            v61 = 2112;
            v62 = v43;
            _os_log_debug_impl(&dword_2304B3000, v29, OS_LOG_TYPE_DEBUG, "pipeline, %@, iteration, %lu, is terminated by %@", buf, 0x20u);
          }
        }

        objc_autoreleasePoolPop(v8);
        v30 = 0;
        goto LABEL_39;
      }

      objc_autoreleasePoolPop(v8);
    }

    v47 = [(NSArray *)v5 countByEnumeratingWithState:&v52 objects:v65 count:16];
    if (v47)
    {
      continue;
    }

    break;
  }

  if ((v45 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_29:
  v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(clusterCopy, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v5 = clusterCopy;
  v32 = [(NSArray *)v5 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v49;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v49 != v34)
        {
          objc_enumerationMutation(v5);
        }

        v36 = *(*(&v48 + 1) + 8 * j);
        visit = [v36 visit];

        if (visit)
        {
          visit2 = [v36 visit];
          [v30 addObject:visit2];
        }
      }

      v33 = [(NSArray *)v5 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v33);
  }

  clusterCopy = v5;
LABEL_39:

  return v30;
}

- (BOOL)isRedundantForVisit:(id)visit currentVisit:(id)currentVisit distanceCalculator:(id)calculator
{
  v48 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  currentVisitCopy = currentVisit;
  calculatorCopy = calculator;
  if (!visitCopy)
  {
    goto LABEL_38;
  }

  exit = [visitCopy exit];
  if (exit)
  {
    v12 = exit;
    entry = [currentVisitCopy entry];
    exit2 = [visitCopy exit];
    v15 = [entry isOnOrAfter:exit2];

    if (v15)
    {
      goto LABEL_38;
    }
  }

  exit3 = [visitCopy exit];
  if (exit3)
  {
    goto LABEL_9;
  }

  exit3 = [visitCopy entry];
  entry2 = [currentVisitCopy entry];
  if (([exit3 isEqualToDate:entry2] & 1) == 0)
  {

LABEL_9:
    goto LABEL_10;
  }

  exit4 = [currentVisitCopy exit];

  if (exit4)
  {
LABEL_38:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v27 = 0;
      goto LABEL_44;
    }

    v24 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      name = self->_name;
      *buf = 138412803;
      v43 = name;
      v44 = 2117;
      v45 = currentVisitCopy;
      v46 = 2117;
      v47 = visitCopy;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@ Added non-redundant visit, %{sensitive}@, last visit, %{sensitive}@,", buf, 0x20u);
    }

    v27 = 0;
    goto LABEL_42;
  }

LABEL_10:
  exit5 = [visitCopy exit];
  if (exit5)
  {

    goto LABEL_13;
  }

  exit6 = [currentVisitCopy exit];

  if (!exit6)
  {
    location = [visitCopy location];
    location2 = [currentVisitCopy location];
    v41 = 0;
    [calculatorCopy distanceFromLocation:location toLocation:location2 error:&v41];
    v31 = v30;
    v24 = v41;

    if (v24 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v43 = v24;
        _os_log_debug_impl(&dword_2304B3000, v32, OS_LOG_TYPE_DEBUG, "Distance Calculator error, %@", buf, 0xCu);
      }
    }

    entry3 = [currentVisitCopy entry];
    entry4 = [visitCopy entry];
    if ([entry3 isOnOrAfter:entry4])
    {
      if (v31 > 250.0)
      {

LABEL_37:
        goto LABEL_38;
      }

      entry5 = [visitCopy entry];
      entry6 = [currentVisitCopy entry];
      [entry5 timeIntervalSinceDate:entry6];
      v38 = v37;

      if (v38 > 86400.0)
      {
        goto LABEL_37;
      }
    }

    else
    {
    }

LABEL_25:
    v27 = 1;
LABEL_42:

    goto LABEL_44;
  }

LABEL_13:
  entry7 = [visitCopy entry];
  entry8 = [currentVisitCopy entry];
  if (([entry7 isEqualToDate:entry8] & 1) == 0)
  {

    goto LABEL_19;
  }

  exit7 = [currentVisitCopy exit];

  if (exit7)
  {
LABEL_19:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = self->_name;
        *buf = 138412803;
        v43 = v26;
        v44 = 2117;
        v45 = currentVisitCopy;
        v46 = 2117;
        v47 = visitCopy;
        _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@ hits illegitimate case with current visit, %{sensitive}@, last visit, %{sensitive}@", buf, 0x20u);
      }
    }

    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v43 = "[RTVisitPipeline isRedundantForVisit:currentVisit:distanceCalculator:]";
      v44 = 1024;
      LODWORD(v45) = 286;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "illegitimate case (in %s:%d)", buf, 0x12u);
    }

    goto LABEL_25;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138740227;
      v43 = currentVisitCopy;
      v44 = 2117;
      v45 = visitCopy;
      _os_log_debug_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEBUG, "likely false LC visit, %{sensitive}@, with identical entry as last visit, %{sensitive}@", buf, 0x16u);
    }

    goto LABEL_25;
  }

  v27 = 1;
LABEL_44:

  return v27;
}

- (id)filterVisitClusters:(id)clusters
{
  v49 = *MEMORY[0x277D85DE8];
  clustersCopy = clusters;
  if ([clustersCopy count])
  {
    v37 = objc_opt_new();
    v5 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v36 = clustersCopy;
    v6 = clustersCopy;
    v7 = [v6 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (!v7)
    {
      goto LABEL_39;
    }

    v8 = v7;
    v9 = *v39;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        visit = [v11 visit];

        if (visit)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v13 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138739971;
              v43 = v11;
              _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "inspecting cluster=%{sensitive}@", buf, 0xCu);
            }
          }

          visit2 = [v11 visit];
          entry = [visit2 entry];

          if (!entry)
          {
            v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v43 = "[RTVisitPipeline filterVisitClusters:]";
              v44 = 1024;
              LODWORD(v45) = 310;
              _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: cluster.visit.entry (in %s:%d)", buf, 0x12u);
            }
          }

          visit3 = [v11 visit];
          location = [visit3 location];

          if (!location)
          {
            v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v43 = "[RTVisitPipeline filterVisitClusters:]";
              v44 = 1024;
              LODWORD(v45) = 311;
              _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: cluster.visit.location (in %s:%d)", buf, 0x12u);
            }
          }

          visit4 = [v11 visit];
          if ([visit4 type]== 3)
          {
LABEL_24:
          }

          else
          {
            visit5 = [v11 visit];
            type = [visit5 type];

            if (type != 1)
            {
              visit4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(visit4, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v43 = "[RTVisitPipeline filterVisitClusters:]";
                v44 = 1024;
                LODWORD(v45) = 312;
                _os_log_error_impl(&dword_2304B3000, visit4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: RTVisitTypeExit == cluster.visit.type || RTVisitTypeEntry == cluster.visit.type (in %s:%d)", buf, 0x12u);
              }

              goto LABEL_24;
            }
          }

          visit6 = [v11 visit];
          if ([visit6 type]== 3)
          {
            visit7 = [v11 visit];
            exit = [visit7 exit];

            if (!exit)
            {
              visit6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(visit6, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v43 = "[RTVisitPipeline filterVisitClusters:]";
                v44 = 1024;
                LODWORD(v45) = 313;
                _os_log_error_impl(&dword_2304B3000, visit6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: !(RTVisitTypeExit == cluster.visit.type) || cluster.visit.exit (in %s:%d)", buf, 0x12u);
              }

              goto LABEL_29;
            }
          }

          else
          {
LABEL_29:
          }

          lastVisit = self->_lastVisit;
          visit8 = [v11 visit];
          v28 = [visit8 copy];
          LOBYTE(lastVisit) = [(RTVisitPipeline *)self isRedundantForVisit:lastVisit currentVisit:v28 distanceCalculator:v5];

          if (lastVisit)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v29 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                name = self->_name;
                v34 = self->_lastVisit;
                *buf = 138412803;
                v43 = name;
                v44 = 2117;
                v45 = v11;
                v46 = 2117;
                v47 = v34;
                _os_log_debug_impl(&dword_2304B3000, v29, OS_LOG_TYPE_DEBUG, "%@ drop visit cluster, %{sensitive}@, last visit, %{sensitive}@", buf, 0x20u);
              }
            }
          }

          else
          {
            [v37 addObject:v11];
          }

          visit9 = [v11 visit];
          v31 = [visit9 copy];
          v32 = self->_lastVisit;
          self->_lastVisit = v31;

          continue;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v38 objects:v48 count:16];
      if (!v8)
      {
LABEL_39:

        clustersCopy = v36;
        goto LABEL_41;
      }
    }
  }

  v37 = 0;
LABEL_41:

  return v37;
}

@end