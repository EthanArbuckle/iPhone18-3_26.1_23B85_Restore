@interface RTMapItemProviderReverseGeocode
- (RTMapItemProviderReverseGeocode)initWithDefaultsManager:(id)a3 mapServiceManager:(id)a4;
- (RTMapItemProviderReverseGeocode)initWithMapServiceManager:(id)a3 parameters:(id)a4;
- (double)_confidenceForSource:(unint64_t)a3;
- (id)_filterRelatedPlacesMapItems:(id)a3;
- (id)_selectMapItemsFromFetchedMapItems:(id)a3 relatedPlacesMapItems:(id)a4 options:(id)a5 error:(id *)a6;
- (id)mapItemsWithOptions:(id)a3 error:(id *)a4;
@end

@implementation RTMapItemProviderReverseGeocode

- (RTMapItemProviderReverseGeocode)initWithDefaultsManager:(id)a3 mapServiceManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [[RTMapItemProviderReverseGeocodeParameters alloc] initWithDefaultsManager:v6];
    self = [(RTMapItemProviderReverseGeocode *)self initWithMapServiceManager:v7 parameters:v8];

    v9 = self;
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", v12, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (RTMapItemProviderReverseGeocode)initWithMapServiceManager:(id)a3 parameters:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_12:

      v14 = 0;
      goto LABEL_13;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: mapServiceManager";
LABEL_15:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_12;
  }

  if (!v8)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: parameters";
    goto LABEL_15;
  }

  v18.receiver = self;
  v18.super_class = RTMapItemProviderReverseGeocode;
  v10 = [(RTMapItemProviderReverseGeocode *)&v18 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_mapServiceManager, a3);
    objc_storeStrong(p_isa + 2, a4);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = p_isa[2];
        *buf = 138412290;
        v20 = v13;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "initialized RTMapItemProviderReverseGeocode with parameters: %@", buf, 0xCu);
      }
    }
  }

  self = p_isa;
  v14 = self;
LABEL_13:

  return v14;
}

- (id)mapItemsWithOptions:(id)a3 error:(id *)a4
{
  aSelector = a2;
  v90[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__21;
  v83 = __Block_byref_object_dispose__21;
  v84 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__21;
  v77 = __Block_byref_object_dispose__21;
  v78 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__21;
  v71 = __Block_byref_object_dispose__21;
  v72 = 0;
  v57 = [v5 location];
  v6 = objc_alloc(MEMORY[0x277D011B0]);
  v7 = [v5 useBackground];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v5 clientIdentifier];
  v59 = [v6 initWithUseBackgroundTraits:v7 analyticsIdentifier:v9 clientIdentifier:v10];

  v11 = dispatch_semaphore_create(0);
  v12 = [(RTMapItemProviderReverseGeocode *)self mapServiceManager];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __61__RTMapItemProviderReverseGeocode_mapItemsWithOptions_error___block_invoke;
  v62[3] = &unk_2788C69C8;
  v64 = &v79;
  v65 = &v73;
  v66 = &v67;
  v13 = v11;
  v63 = v13;
  [v12 fetchMapItemsRelatedPlacesFromLocation:v57 options:v59 handler:v62];

  v14 = v13;
  v15 = [MEMORY[0x277CBEAA8] now];
  v16 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v14, v16))
  {
    v17 = [MEMORY[0x277CBEAA8] now];
    [v17 timeIntervalSinceDate:v15];
    v19 = v18;
    v20 = objc_opt_new();
    v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_17];
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
    v90[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v90 count:1];
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

  v30 = v28;
  v31 = v30;
  if (a4 && v30)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v47 = NSStringFromSelector(aSelector);
      *buf = 138412802;
      *&buf[4] = v46;
      v86 = 2112;
      v87 = v47;
      v88 = 2112;
      v89 = v31;
      _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorLogAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v33 = v31;
    v34 = 0;
    *a4 = v31;
  }

  else if (a4 && v68[5])
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      v50 = NSStringFromSelector(aSelector);
      v51 = v68[5];
      *buf = 138412802;
      *&buf[4] = v49;
      v86 = 2112;
      v87 = v50;
      v88 = 2112;
      v89 = v51;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorLogAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v34 = 0;
    *a4 = v68[5];
  }

  else
  {
    v36 = v80[5];
    v37 = v74[5];
    v61 = 0;
    v38 = [(RTMapItemProviderReverseGeocode *)self _selectMapItemsFromFetchedMapItems:v36 relatedPlacesMapItems:v37 options:v59 error:&v61, aSelector];
    v39 = v61;
    v40 = v80[5];
    v80[5] = v38;

    if (v39)
    {
      v41 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        v54 = NSStringFromSelector(aSelectora);
        *buf = 138412802;
        *&buf[4] = v53;
        v86 = 2112;
        v87 = v54;
        v88 = 2112;
        v89 = v39;
        _os_log_error_impl(&dword_2304B3000, v41, OS_LOG_TYPE_ERROR, "%@, %@, an error occurred when retrieving related places, %@.", buf, 0x20u);
      }
    }

    v42 = [_RTMap alloc];
    v43 = [(_RTMap *)v42 initWithInput:v80[5]];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __61__RTMapItemProviderReverseGeocode_mapItemsWithOptions_error___block_invoke_9;
    v60[3] = &unk_2788C5D78;
    v60[4] = self;
    v34 = [(_RTMap *)v43 withBlock:v60];
  }

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v73, 8);

  _Block_object_dispose(&v79, 8);

  return v34;
}

void __61__RTMapItemProviderReverseGeocode_mapItemsWithOptions_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v18 = v7;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
  v17 = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

id __61__RTMapItemProviderReverseGeocode_mapItemsWithOptions_error___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D01128];
  v4 = a2;
  v5 = [v3 alloc];
  [*(a1 + 32) _confidenceForSource:{objc_msgSend(v4, "source")}];
  v7 = [v5 initWithMapItem:v4 confidence:objc_msgSend(v4 source:{"source"), v6}];

  return v7;
}

- (id)_filterRelatedPlacesMapItems:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 address];
        v11 = [v10 geoAddressObject];
        v12 = [v11 address];
        v13 = [v12 structuredAddress];
        v14 = [v13 subPremisesCount];

        if (!v14)
        {
          [v16 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return v16;
}

- (id)_selectMapItemsFromFetchedMapItems:(id)a3 relatedPlacesMapItems:(id)a4 options:(id)a5 error:(id *)a6
{
  v55 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__21;
  v51 = __Block_byref_object_dispose__21;
  v13 = v10;
  v52 = v13;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__21;
  v45 = __Block_byref_object_dispose__21;
  v46 = 0;
  if ([v13 count] != 1 || objc_msgSend(v11, "count") != 1)
  {
    goto LABEL_13;
  }

  v14 = dispatch_semaphore_create(0);
  v15 = [(RTMapItemProviderReverseGeocode *)self mapServiceManager];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __106__RTMapItemProviderReverseGeocode__selectMapItemsFromFetchedMapItems_relatedPlacesMapItems_options_error___block_invoke;
  v37[3] = &unk_2788C69F0;
  v37[4] = self;
  v39 = &v47;
  v40 = &v41;
  v16 = v14;
  v38 = v16;
  [v15 fetchMapItemsFromIdentifiers:v11 options:v12 source:0x40000 handler:v37];

  v17 = v16;
  v36 = [MEMORY[0x277CBEAA8] now];
  v18 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(v17, v18))
  {
    v29 = 0;
LABEL_9:
    v31 = 1;
    goto LABEL_10;
  }

  v35 = [MEMORY[0x277CBEAA8] now];
  [v35 timeIntervalSinceDate:v36];
  v20 = v19;
  v21 = objc_opt_new();
  v22 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_17];
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
  v53 = *MEMORY[0x277CCA450];
  *buf = @"semaphore wait timeout";
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v53 count:1];
  v29 = [v27 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v28];

  if (!v29)
  {
    goto LABEL_9;
  }

  v30 = v29;

  v31 = 0;
LABEL_10:

  v32 = v29;
  if ((v31 & 1) == 0)
  {
    objc_storeStrong(v42 + 5, v29);
  }

LABEL_13:
  if (a6)
  {
    *a6 = v42[5];
  }

  v33 = v48[5];
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(&v47, 8);

  return v33;
}

void __106__RTMapItemProviderReverseGeocode__selectMapItemsFromFetchedMapItems_relatedPlacesMapItems_options_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  obj = [*(a1 + 32) _filterRelatedPlacesMapItems:a2];
  if (!v5 && [obj count])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  }

  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (double)_confidenceForSource:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    parameters = self->_parameters;

    [(RTMapItemProviderReverseGeocodeParameters *)parameters confidence];
  }

  else if ((a3 & 0x40000) != 0)
  {
    v8 = self->_parameters;

    [(RTMapItemProviderReverseGeocodeParameters *)v8 relatedPlacesConfidence];
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x277D011A0] sourceToString:a3];
      v10 = 138412290;
      v11 = v9;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid source %@, falling back to revgeo confidence.", &v10, 0xCu);
    }

    [(RTMapItemProviderReverseGeocodeParameters *)self->_parameters confidence];
  }

  return result;
}

@end