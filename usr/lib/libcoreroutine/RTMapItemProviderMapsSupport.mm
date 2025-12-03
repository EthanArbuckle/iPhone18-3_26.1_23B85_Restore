@interface RTMapItemProviderMapsSupport
- (RTMapItemProviderMapsSupport)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator mapsSupportManager:(id)supportManager;
- (RTMapItemProviderMapsSupport)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator mapsSupportManager:(id)supportManager parameters:(id)parameters;
- (double)confidenceFromMapItemSource:(unint64_t)source;
- (id)mapItemsWithOptions:(id)options error:(id *)error;
@end

@implementation RTMapItemProviderMapsSupport

- (RTMapItemProviderMapsSupport)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator mapsSupportManager:(id)supportManager
{
  managerCopy = manager;
  calculatorCopy = calculator;
  supportManagerCopy = supportManager;
  if (managerCopy)
  {
    v11 = [[RTMapItemProviderMapsSupportParameters alloc] initWithDefaultsManager:managerCopy];
    self = [(RTMapItemProviderMapsSupport *)self initWithDefaultsManager:managerCopy distanceCalculator:calculatorCopy mapsSupportManager:supportManagerCopy parameters:v11];

    selfCopy = self;
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", v15, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (RTMapItemProviderMapsSupport)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator mapsSupportManager:(id)supportManager parameters:(id)parameters
{
  v26 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  calculatorCopy = calculator;
  supportManagerCopy = supportManager;
  parametersCopy = parameters;
  v14 = parametersCopy;
  if (!supportManagerCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
LABEL_12:

      selfCopy = 0;
      goto LABEL_13;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: mapsSupportManager";
LABEL_15:
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, v21, buf, 2u);
    goto LABEL_12;
  }

  if (!parametersCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v21 = "Invalid parameter not satisfying: parameters";
    goto LABEL_15;
  }

  v23.receiver = self;
  v23.super_class = RTMapItemProviderMapsSupport;
  v15 = [(RTMapItemProviderBase *)&v23 initWithDefaultsManager:managerCopy distanceCalculator:calculatorCopy];
  p_isa = &v15->super.super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_mapsSupportManager, supportManager);
    objc_storeStrong(p_isa + 4, parameters);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = p_isa[4];
        *buf = 138412290;
        v25 = v18;
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "initialized RTMapItemProviderMapsSupport with parameters: %@", buf, 0xCu);
      }
    }
  }

  self = p_isa;
  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (id)mapItemsWithOptions:(id)options error:(id *)error
{
  v175 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  [optionsCopy distance];
  v6 = v5;
  v108 = optionsCopy;
  location = [optionsCopy location];
  startDate = [optionsCopy startDate];
  endDate = [optionsCopy endDate];
  v105 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:startDate sinceDate:-16200.0];

  v8 = 0;
  if (v105 && endDate)
  {
    v9 = [v105 earlierDate:endDate];
    v10 = [v9 isEqualToDate:v105];

    if (v10)
    {
      v8 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v105 endDate:endDate];
    }

    else
    {
      v8 = 0;
    }
  }

  v102 = v8;
  v107 = [[RTMapsSupportOptions alloc] initWithDateInterval:v8 location:location distance:v6];
  array = [MEMORY[0x277CBEB18] array];
  v140 = 0;
  v141 = &v140;
  v142 = 0x3032000000;
  v143 = __Block_byref_object_copy__137;
  v144 = __Block_byref_object_dispose__137;
  v145 = 0;
  v134 = 0;
  v135 = &v134;
  v136 = 0x3032000000;
  v137 = __Block_byref_object_copy__137;
  v138 = __Block_byref_object_dispose__137;
  v139 = 0;
  v12 = dispatch_semaphore_create(0);
  mapsSupportManager = [(RTMapItemProviderMapsSupport *)self mapsSupportManager];
  v130[0] = MEMORY[0x277D85DD0];
  v130[1] = 3221225472;
  v130[2] = __58__RTMapItemProviderMapsSupport_mapItemsWithOptions_error___block_invoke;
  v130[3] = &unk_2788C4490;
  v132 = &v140;
  v133 = &v134;
  v14 = v12;
  v131 = v14;
  [mapsSupportManager fetchFavoritePlacesWithOptions:v107 handler:v130];

  v15 = v14;
  v16 = [MEMORY[0x277CBEAA8] now];
  v17 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v15, v17))
  {
    v18 = [MEMORY[0x277CBEAA8] now];
    [v18 timeIntervalSinceDate:v16];
    v20 = v19;
    v21 = objc_opt_new();
    v22 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_88];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v24 = [callStackSymbols filteredArrayUsingPredicate:v22];
    firstObject = [v24 firstObject];

    [v21 submitToCoreAnalytics:firstObject type:1 duration:v20];
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v26, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v27 = MEMORY[0x277CCA9B8];
    v160 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v160 count:1];
    v29 = [v27 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v28];

    if (v29)
    {
      v30 = v29;

      v31 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v29 = 0;
  }

  v31 = 1;
LABEL_13:

  v32 = v29;
  if ((v31 & 1) == 0)
  {
    objc_storeStrong(v135 + 5, v29);
  }

  v33 = v135[5];
  if (v33)
  {
    if ([v33 isOnlyTimeoutError])
    {
      v34 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v34 = 0;
      if (error)
      {
        *error = v135[5];
      }
    }
  }

  else
  {
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v35 = v141[5];
    v36 = [v35 countByEnumeratingWithState:&v126 objects:v172 count:16];
    if (v36)
    {
      v37 = *v127;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v127 != v37)
          {
            objc_enumerationMutation(v35);
          }

          mapItem = [*(*(&v126 + 1) + 8 * i) mapItem];
          [array addObject:mapItem];
        }

        v36 = [v35 countByEnumeratingWithState:&v126 objects:v172 count:16];
      }

      while (v36);
    }

    *buf = 0;
    v167 = buf;
    v168 = 0x3032000000;
    v169 = __Block_byref_object_copy__137;
    v170 = __Block_byref_object_dispose__137;
    v171 = 0;
    v160 = 0;
    v161 = &v160;
    v162 = 0x3032000000;
    v163 = __Block_byref_object_copy__137;
    v164 = __Block_byref_object_dispose__137;
    v165 = 0;
    v40 = dispatch_semaphore_create(0);

    mapsSupportManager2 = [(RTMapItemProviderMapsSupport *)self mapsSupportManager];
    v122[0] = MEMORY[0x277D85DD0];
    v122[1] = 3221225472;
    v122[2] = __58__RTMapItemProviderMapsSupport_mapItemsWithOptions_error___block_invoke_2;
    v122[3] = &unk_2788C4490;
    v124 = buf;
    v125 = &v160;
    v42 = v40;
    v123 = v42;
    [mapsSupportManager2 fetchHistoryEntryPlaceDisplaysWithOptions:v107 handler:v122];

    v15 = v42;
    v43 = [MEMORY[0x277CBEAA8] now];
    v44 = dispatch_time(0, 3600000000000);
    if (!dispatch_semaphore_wait(v15, v44))
    {
      goto LABEL_32;
    }

    v45 = [MEMORY[0x277CBEAA8] now];
    [v45 timeIntervalSinceDate:v43];
    v47 = v46;
    v48 = objc_opt_new();
    v49 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_88];
    callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
    v51 = [callStackSymbols2 filteredArrayUsingPredicate:v49];
    firstObject2 = [v51 firstObject];

    [v48 submitToCoreAnalytics:firstObject2 type:1 duration:v47];
    v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
    {
      *v153 = 0;
      _os_log_fault_impl(&dword_2304B3000, v53, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v153, 2u);
    }

    v54 = MEMORY[0x277CCA9B8];
    v147 = *MEMORY[0x277CCA450];
    *v153 = @"semaphore wait timeout";
    v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v153 forKeys:&v147 count:1];
    v56 = [v54 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v55];

    if (v56)
    {
      v57 = v56;

      v58 = 0;
    }

    else
    {
LABEL_32:
      v58 = 1;
      v56 = v32;
    }

    v59 = v56;
    if ((v58 & 1) == 0)
    {
      objc_storeStrong(v161 + 5, v56);
    }

    v60 = v161[5];
    if (v60)
    {
      if ([v60 isOnlyTimeoutError])
      {
        v34 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v34 = 0;
        if (error)
        {
          *error = v161[5];
        }
      }
    }

    else
    {
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v61 = *(v167 + 5);
      v62 = [v61 countByEnumeratingWithState:&v118 objects:v159 count:16];
      if (v62)
      {
        v63 = *v119;
        do
        {
          for (j = 0; j != v62; ++j)
          {
            if (*v119 != v63)
            {
              objc_enumerationMutation(v61);
            }

            mapItem2 = [*(*(&v118 + 1) + 8 * j) mapItem];
            [array addObject:mapItem2];
          }

          v62 = [v61 countByEnumeratingWithState:&v118 objects:v159 count:16];
        }

        while (v62);
      }

      *v153 = 0;
      v154 = v153;
      v155 = 0x3032000000;
      v156 = __Block_byref_object_copy__137;
      v157 = __Block_byref_object_dispose__137;
      v158 = 0;
      v147 = 0;
      v148 = &v147;
      v149 = 0x3032000000;
      v150 = __Block_byref_object_copy__137;
      v151 = __Block_byref_object_dispose__137;
      v152 = 0;
      v66 = dispatch_semaphore_create(0);

      mapsSupportManager3 = [(RTMapItemProviderMapsSupport *)self mapsSupportManager];
      v114[0] = MEMORY[0x277D85DD0];
      v114[1] = 3221225472;
      v114[2] = __58__RTMapItemProviderMapsSupport_mapItemsWithOptions_error___block_invoke_3;
      v114[3] = &unk_2788C4490;
      v116 = v153;
      v117 = &v147;
      v68 = v66;
      v115 = v68;
      [mapsSupportManager3 fetchHistoryEntryRoutesWithOptions:v107 handler:v114];

      v15 = v68;
      v69 = [MEMORY[0x277CBEAA8] now];
      v70 = dispatch_time(0, 3600000000000);
      if (!dispatch_semaphore_wait(v15, v70))
      {
        goto LABEL_53;
      }

      v71 = [MEMORY[0x277CBEAA8] now];
      [v71 timeIntervalSinceDate:v69];
      v73 = v72;
      v74 = objc_opt_new();
      v75 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_88];
      callStackSymbols3 = [MEMORY[0x277CCACC8] callStackSymbols];
      v77 = [callStackSymbols3 filteredArrayUsingPredicate:v75];
      firstObject3 = [v77 firstObject];

      [v74 submitToCoreAnalytics:firstObject3 type:1 duration:v73];
      v79 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
      {
        *v174 = 0;
        _os_log_fault_impl(&dword_2304B3000, v79, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v174, 2u);
      }

      v80 = MEMORY[0x277CCA9B8];
      v173 = *MEMORY[0x277CCA450];
      *v174 = @"semaphore wait timeout";
      v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v174 forKeys:&v173 count:1];
      v82 = [v80 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v81];

      if (v82)
      {
        v83 = v82;

        v84 = 0;
      }

      else
      {
LABEL_53:
        v84 = 1;
        v82 = v59;
      }

      v85 = v82;
      if ((v84 & 1) == 0)
      {
        objc_storeStrong(v148 + 5, v82);
      }

      v86 = v148[5];
      if (v86)
      {
        if ([v86 isOnlyTimeoutError])
        {
          v34 = MEMORY[0x277CBEBF8];
        }

        else
        {
          v34 = 0;
          if (error)
          {
            *error = v148[5];
          }
        }
      }

      else
      {
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v87 = *(v154 + 5);
        v88 = [v87 countByEnumeratingWithState:&v110 objects:v146 count:16];
        if (v88)
        {
          v89 = *v111;
          do
          {
            for (k = 0; k != v88; ++k)
            {
              if (*v111 != v89)
              {
                objc_enumerationMutation(v87);
              }

              v91 = *(*(&v110 + 1) + 8 * k);
              originMapItem = [v91 originMapItem];

              if (originMapItem)
              {
                originMapItem2 = [v91 originMapItem];
                [array addObject:originMapItem2];
              }

              destinationMapItem = [v91 destinationMapItem];

              if (destinationMapItem)
              {
                destinationMapItem2 = [v91 destinationMapItem];
                [array addObject:destinationMapItem2];
              }
            }

            v88 = [v87 countByEnumeratingWithState:&v110 objects:v146 count:16];
          }

          while (v88);
        }

        v96 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_112];
        v97 = [array filteredArrayUsingPredicate:v96];

        v98 = [[_RTMap alloc] initWithInput:v97];
        v109[0] = MEMORY[0x277D85DD0];
        v109[1] = 3221225472;
        v109[2] = __58__RTMapItemProviderMapsSupport_mapItemsWithOptions_error___block_invoke_5;
        v109[3] = &unk_2788C5D78;
        v109[4] = self;
        v99 = [(_RTMap *)v98 withBlock:v109];

        v34 = [(RTMapItemProviderBase *)self filterInferredMapItems:v99 byDistance:location fromLocation:error error:v6];
      }

      _Block_object_dispose(&v147, 8);
      _Block_object_dispose(v153, 8);

      v59 = v85;
    }

    _Block_object_dispose(&v160, 8);
    _Block_object_dispose(buf, 8);

    v32 = v59;
  }

  _Block_object_dispose(&v134, 8);
  _Block_object_dispose(&v140, 8);

  return v34;
}

void __58__RTMapItemProviderMapsSupport_mapItemsWithOptions_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __58__RTMapItemProviderMapsSupport_mapItemsWithOptions_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

void __58__RTMapItemProviderMapsSupport_mapItemsWithOptions_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
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

BOOL __58__RTMapItemProviderMapsSupport_mapItemsWithOptions_error___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 validMUID])
  {
    v3 = [v2 address];
    v4 = [v3 mergedThoroughfare];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __58__RTMapItemProviderMapsSupport_mapItemsWithOptions_error___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D01128];
  v4 = a2;
  v5 = [v3 alloc];
  [*(a1 + 32) confidenceFromMapItemSource:{objc_msgSend(v4, "source")}];
  v7 = [v5 initWithMapItem:v4 confidence:objc_msgSend(v4 source:{"source"), v6}];

  return v7;
}

- (double)confidenceFromMapItemSource:(unint64_t)source
{
  v12 = *MEMORY[0x277D85DE8];
  if (source > 2047)
  {
    if (source < 0x10000)
    {
      if (source < 0x2000)
      {
        if (source != 2048 && source != 4096)
        {
          return 0.0;
        }
      }

      else if (source != 0x2000 && source != 0x4000 && source != 0x8000)
      {
        return 0.0;
      }
    }

    else if (source >= 0x80000)
    {
      if (source != 0x80000 && source != 0x100000 && source != 0x200000)
      {
        return 0.0;
      }
    }

    else if (source != 0x10000 && source != 0x20000 && source != 0x40000)
    {
      return 0.0;
    }

    goto LABEL_35;
  }

  if (source <= 15)
  {
    if (source >= 3 && source != 4 && source != 8)
    {
      return 0.0;
    }

    goto LABEL_35;
  }

  if (source > 255)
  {
    if (source != 256 && source != 512 && source != 1024)
    {
      return 0.0;
    }

LABEL_35:
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[RTMapItemProviderMapsSupport confidenceFromMapItemSource:]";
      v10 = 1024;
      v11 = 246;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid source in RTMapItemProviderMapsSupport. (in %s:%d)", &v8, 0x12u);
    }

    return 0.0;
  }

  switch(source)
  {
    case 0x10uLL:
      parameters = self->_parameters;

      [(RTMapItemProviderMapsSupportParameters *)parameters favoriteConfidence];
      break;
    case 0x40uLL:
      v6 = self->_parameters;

      [(RTMapItemProviderMapsSupportParameters *)v6 historyEntryRouteConfidence];
      break;
    case 0x80uLL:
      v3 = self->_parameters;

      [(RTMapItemProviderMapsSupportParameters *)v3 historyEntryPlaceDisplayConfidence];
      return result;
    default:
      return 0.0;
  }

  return result;
}

@end