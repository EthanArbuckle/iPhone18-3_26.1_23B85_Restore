@interface RTVisitPipeline
+ (id)typeToString:(unint64_t)a3;
- (BOOL)isRedundantForVisit:(id)a3 currentVisit:(id)a4 distanceCalculator:(id)a5;
- (RTVisitPipeline)initWithModules:(id)a3 name:(id)a4 type:(unint64_t)a5 lastVisit:(id)a6 hyperParameter:(id)a7;
- (id)description;
- (id)filterLocations:(id)a3;
- (id)filterVisitClusters:(id)a3;
- (id)processLocations:(id)a3;
- (id)processVisitCluster:(id)a3;
- (void)shutdown;
@end

@implementation RTVisitPipeline

+ (id)typeToString:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788C5FE0[a3 - 1];
  }
}

- (RTVisitPipeline)initWithModules:(id)a3 name:(id)a4 type:(unint64_t)a5 lastVisit:(id)a6 hyperParameter:(id)a7
{
  v71 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (![v12 count])
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

  if (!v13)
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

  if (a5 > 4 || ((1 << a5) & 0x16) == 0)
  {
    v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v46, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: VALID_PIPELINE(type)", buf, 2u);
    }

    if (a5 != 4)
    {
      goto LABEL_38;
    }
  }

  if (!v15)
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
    v42 = 0;
    goto LABEL_39;
  }

  v48 = a5;
  v49 = a7;
  v50 = v14;
  v51 = v13;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v16 = v12;
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

          v42 = 0;
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

    v24->_type = v48;
    objc_storeStrong(&v24->_hyperParameter, v49);
  }

  self = v24;
  v42 = self;
LABEL_33:
  v14 = v50;
  v13 = v51;
LABEL_39:

  return v42;
}

- (void)shutdown
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
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
        [v3 addObject:v10];
        moduleStats = self->_moduleStats;
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = [(NSMutableDictionary *)moduleStats objectForKeyedSubscript:v13];

        v15 = MEMORY[0x277CCABB0];
        [v14 cumulativeProcessingDuration];
        v16 = [v15 numberWithDouble:?];
        [v3 addObject:v16];

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
      v21 = [v3 componentsJoinedByString:{@", "}];
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

- (id)filterLocations:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__RTVisitPipeline_filterLocations___block_invoke;
  v8[3] = &unk_2788C5FC0;
  v8[4] = self;
  v4 = a3;
  v5 = [v3 predicateWithBlock:v8];
  v6 = [v4 filteredArrayUsingPredicate:v5];

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

- (id)processLocations:(id)a3
{
  v46[1] = *MEMORY[0x277D85DE8];
  v4 = [(RTVisitPipeline *)self filterLocations:a3];
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
        v16 = [v4 firstObject];
        v17 = [v16 date];
        v18 = [v17 stringFromDate];
        v19 = [v4 lastObject];
        v20 = [v19 date];
        v21 = [v20 stringFromDate];
        *buf = 138413314;
        v35 = name;
        v36 = 2048;
        v37 = iteration;
        v38 = 2048;
        v39 = v15;
        v40 = 2112;
        v41 = v18;
        v42 = 2112;
        v43 = v21;
        _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "pipeline, %@, iteration, %lu, with %lu points from, %@, to %@", buf, 0x34u);
      }
    }

    v6 = [v4 lastObject];
    v7 = [v6 date];
    lastProcessedLocationDate = self->_lastProcessedLocationDate;
    self->_lastProcessedLocationDate = v7;

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
        v22 = [(RTVisitPipeline *)self name];
        v29 = self->_iteration;
        v28 = [v12 count];
        v27 = [v4 count];
        v33 = [v4 firstObject];
        v31 = [v33 date];
        v23 = [v31 stringFromDate];
        v24 = [v4 lastObject];
        v25 = [v24 date];
        v26 = [v25 stringFromDate];
        *buf = 138413570;
        v35 = v22;
        v36 = 2048;
        v37 = v29;
        v38 = 2048;
        v39 = v28;
        v40 = 2048;
        v41 = v27;
        v42 = 2112;
        v43 = v23;
        v44 = 2112;
        v45 = v26;
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

- (id)processVisitCluster:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v5 = self->_modules;
  v47 = [(NSArray *)v5 countByEnumeratingWithState:&v52 objects:v65 count:16];
  if (!v47)
  {

LABEL_28:
    v31 = [(RTVisitPipeline *)self filterVisitClusters:v4];

    v4 = v31;
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

      [v12 startIterationWithVisitClusters:v4];
      v13 = [v7 process:v4];

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

      v15 = [v12 lastLocationCount];
      [(RTVisitHyperParameter *)self->_hyperParameter maxGapInVisit];
      if (v16 < v15)
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          v26 = self->_name;
          v27 = [v12 lastLocationCount];
          [(RTVisitHyperParameter *)self->_hyperParameter maxGapInVisit];
          *buf = 138412802;
          v58 = v26;
          v59 = 2048;
          v60 = v27;
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
        v4 = [(RTVisitPipeline *)self filterVisitClusters:v13];

        v45 = 1;
      }

      else
      {
        v4 = v13;
      }

      if (![v4 count])
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
  v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v5 = v4;
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
        v37 = [v36 visit];

        if (v37)
        {
          v38 = [v36 visit];
          [v30 addObject:v38];
        }
      }

      v33 = [(NSArray *)v5 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v33);
  }

  v4 = v5;
LABEL_39:

  return v30;
}

- (BOOL)isRedundantForVisit:(id)a3 currentVisit:(id)a4 distanceCalculator:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    goto LABEL_38;
  }

  v11 = [v8 exit];
  if (v11)
  {
    v12 = v11;
    v13 = [v9 entry];
    v14 = [v8 exit];
    v15 = [v13 isOnOrAfter:v14];

    if (v15)
    {
      goto LABEL_38;
    }
  }

  v16 = [v8 exit];
  if (v16)
  {
    goto LABEL_9;
  }

  v16 = [v8 entry];
  v17 = [v9 entry];
  if (([v16 isEqualToDate:v17] & 1) == 0)
  {

LABEL_9:
    goto LABEL_10;
  }

  v18 = [v9 exit];

  if (v18)
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
      v45 = v9;
      v46 = 2117;
      v47 = v8;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@ Added non-redundant visit, %{sensitive}@, last visit, %{sensitive}@,", buf, 0x20u);
    }

    v27 = 0;
    goto LABEL_42;
  }

LABEL_10:
  v19 = [v8 exit];
  if (v19)
  {

    goto LABEL_13;
  }

  v20 = [v9 exit];

  if (!v20)
  {
    v28 = [v8 location];
    v29 = [v9 location];
    v41 = 0;
    [v10 distanceFromLocation:v28 toLocation:v29 error:&v41];
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

    v33 = [v9 entry];
    v34 = [v8 entry];
    if ([v33 isOnOrAfter:v34])
    {
      if (v31 > 250.0)
      {

LABEL_37:
        goto LABEL_38;
      }

      v35 = [v8 entry];
      v36 = [v9 entry];
      [v35 timeIntervalSinceDate:v36];
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
  v21 = [v8 entry];
  v22 = [v9 entry];
  if (([v21 isEqualToDate:v22] & 1) == 0)
  {

    goto LABEL_19;
  }

  v23 = [v9 exit];

  if (v23)
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
        v45 = v9;
        v46 = 2117;
        v47 = v8;
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
      v43 = v9;
      v44 = 2117;
      v45 = v8;
      _os_log_debug_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEBUG, "likely false LC visit, %{sensitive}@, with identical entry as last visit, %{sensitive}@", buf, 0x16u);
    }

    goto LABEL_25;
  }

  v27 = 1;
LABEL_44:

  return v27;
}

- (id)filterVisitClusters:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v37 = objc_opt_new();
    v5 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v36 = v4;
    v6 = v4;
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
        v12 = [v11 visit];

        if (v12)
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

          v14 = [v11 visit];
          v15 = [v14 entry];

          if (!v15)
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

          v17 = [v11 visit];
          v18 = [v17 location];

          if (!v18)
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

          v20 = [v11 visit];
          if ([v20 type]== 3)
          {
LABEL_24:
          }

          else
          {
            v21 = [v11 visit];
            v22 = [v21 type];

            if (v22 != 1)
            {
              v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v43 = "[RTVisitPipeline filterVisitClusters:]";
                v44 = 1024;
                LODWORD(v45) = 312;
                _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: RTVisitTypeExit == cluster.visit.type || RTVisitTypeEntry == cluster.visit.type (in %s:%d)", buf, 0x12u);
              }

              goto LABEL_24;
            }
          }

          v23 = [v11 visit];
          if ([v23 type]== 3)
          {
            v24 = [v11 visit];
            v25 = [v24 exit];

            if (!v25)
            {
              v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v43 = "[RTVisitPipeline filterVisitClusters:]";
                v44 = 1024;
                LODWORD(v45) = 313;
                _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: !(RTVisitTypeExit == cluster.visit.type) || cluster.visit.exit (in %s:%d)", buf, 0x12u);
              }

              goto LABEL_29;
            }
          }

          else
          {
LABEL_29:
          }

          lastVisit = self->_lastVisit;
          v27 = [v11 visit];
          v28 = [v27 copy];
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

          v30 = [v11 visit];
          v31 = [v30 copy];
          v32 = self->_lastVisit;
          self->_lastVisit = v31;

          continue;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v38 objects:v48 count:16];
      if (!v8)
      {
LABEL_39:

        v4 = v36;
        goto LABEL_41;
      }
    }
  }

  v37 = 0;
LABEL_41:

  return v37;
}

@end