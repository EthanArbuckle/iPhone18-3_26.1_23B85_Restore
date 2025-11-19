@interface RTConnectionsLocation
- (RTConnectionsLocation)initWithLocation:(id)a3 name:(id)a4 originatingBundleID:(id)a5 fullFormattedAddress:(id)a6 mapItemURL:(id)a7 createdAt:(id)a8;
- (id)_addProactiveExpertSourceTo:(id)a3;
- (id)_mapItemFromForwardGeocode:(id)a3 options:(id)a4;
- (id)_mapItemFromLocalSearch:(id)a3 options:(id)a4;
- (id)description;
- (id)mapItemUsingMapServiceManager:(id)a3 options:(id)a4;
@end

@implementation RTConnectionsLocation

- (RTConnectionsLocation)initWithLocation:(id)a3 name:(id)a4 originatingBundleID:(id)a5 fullFormattedAddress:(id)a6 mapItemURL:(id)a7 createdAt:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v34.receiver = self;
  v34.super_class = RTConnectionsLocation;
  v20 = [(RTConnectionsLocation *)&v34 init];
  if (v20)
  {
    v21 = [v14 copy];
    location = v20->_location;
    v20->_location = v21;

    v23 = [v15 copy];
    name = v20->_name;
    v20->_name = v23;

    v25 = [v16 copy];
    originatingBundleID = v20->_originatingBundleID;
    v20->_originatingBundleID = v25;

    v27 = [v17 copy];
    fullFormattedAddress = v20->_fullFormattedAddress;
    v20->_fullFormattedAddress = v27;

    v29 = [v18 copy];
    mapItemURL = v20->_mapItemURL;
    v20->_mapItemURL = v29;

    v31 = [v19 copy];
    createdAt = v20->_createdAt;
    v20->_createdAt = v31;
  }

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTConnectionsLocation *)self location];
  v5 = [(RTConnectionsLocation *)self name];
  v6 = [(RTConnectionsLocation *)self originatingBundleID];
  v7 = [(RTConnectionsLocation *)self fullFormattedAddress];
  v8 = [(RTConnectionsLocation *)self mapItemURL];
  v9 = [(RTConnectionsLocation *)self createdAt];
  v10 = [v3 stringWithFormat:@"location, %@, name, %@, originatingBundleID, %@, fullFormattedAddress, %@, mapItemURL, %@, createdAt, %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (id)mapItemUsingMapServiceManager:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTConnectionsLocation *)self _mapItemFromLocalSearch:v6 options:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(RTConnectionsLocation *)self _mapItemFromForwardGeocode:v6 options:v7];
  }

  v11 = v10;

  return v11;
}

- (id)_mapItemFromLocalSearch:(id)a3 options:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__116;
  v40 = __Block_byref_object_dispose__116;
  v41 = 0;
  v8 = [(RTConnectionsLocation *)self name];
  if ([v8 length])
  {
    v9 = [(RTConnectionsLocation *)self location];
    v10 = v9 == 0;

    if (v10)
    {
      v30 = 0;
      goto LABEL_13;
    }

    v11 = dispatch_semaphore_create(0);
    v12 = [(RTConnectionsLocation *)self name];
    v13 = [(RTConnectionsLocation *)self location];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __68__RTConnectionsLocation_RTMapItem___mapItemFromLocalSearch_options___block_invoke;
    v33[3] = &unk_2788C45F0;
    v35 = &v36;
    v14 = v11;
    v34 = v14;
    [v6 fetchMapItemsFromNaturalLanguageQuery:v12 location:v13 options:v7 handler:v33];

    v15 = v14;
    v16 = [MEMORY[0x277CBEAA8] now];
    v17 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v15, v17))
    {
      v32 = [MEMORY[0x277CBEAA8] now];
      [v32 timeIntervalSinceDate:v16];
      v19 = v18;
      v20 = objc_opt_new();
      v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_97];
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
      v42 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v42 count:1];
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

    v8 = v28;
    v30 = [(RTConnectionsLocation *)self _addProactiveExpertSourceTo:v37[5]];
  }

  else
  {
    v30 = 0;
  }

LABEL_13:
  _Block_object_dispose(&v36, 8);

  return v30;
}

void __68__RTConnectionsLocation_RTMapItem___mapItemFromLocalSearch_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch map items with error %@", &v11, 0xCu);
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_mapItemFromForwardGeocode:(id)a3 options:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v6 = a4;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__116;
  v39 = __Block_byref_object_dispose__116;
  v40 = 0;
  v7 = [(RTConnectionsLocation *)self fullFormattedAddress];
  v8 = [v7 length] == 0;

  if (v8)
  {
    v28 = 0;
  }

  else
  {
    v9 = dispatch_semaphore_create(0);
    v10 = [(RTConnectionsLocation *)self fullFormattedAddress];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __71__RTConnectionsLocation_RTMapItem___mapItemFromForwardGeocode_options___block_invoke;
    v32[3] = &unk_2788C5330;
    v32[4] = self;
    v34 = &v35;
    v11 = v9;
    v33 = v11;
    [v31 fetchMapItemsFromAddressString:v10 options:v6 handler:v32];

    v12 = v11;
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v12, v14))
    {
      v15 = [MEMORY[0x277CBEAA8] now];
      [v15 timeIntervalSinceDate:v13];
      v17 = v16;
      v18 = objc_opt_new();
      v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_97];
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
      v41 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v41 count:1];
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

    v29 = v26;
    v28 = [(RTConnectionsLocation *)self _addProactiveExpertSourceTo:v36[5]];
  }

  _Block_object_dispose(&v35, 8);

  return v28;
}

void __71__RTConnectionsLocation_RTMapItem___mapItemFromForwardGeocode_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 32) fullFormattedAddress];
      v12 = 138412546;
      v13 = v11;
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Failed to forward geocode address: %@, with error : %@", &v12, 0x16u);
    }
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)_addProactiveExpertSourceTo:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v24 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
    v8 = self;
    if (!v7)
    {
      goto LABEL_19;
    }

    v9 = v7;
    v10 = *v28;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v27 + 1) + 8 * i) appendSource:2048];
        if (v12)
        {
          v13 = [(RTConnectionsLocation *)v8 name];
          if (![v13 length])
          {
            goto LABEL_15;
          }

          v14 = [v12 name];
          if ([v14 length])
          {
            v15 = [(RTConnectionsLocation *)v8 name];
            [v12 name];
            v16 = v9;
            v17 = v10;
            v18 = v6;
            v20 = v19 = v5;
            v26 = [v15 isEqualToString:v20];

            v5 = v19;
            v6 = v18;
            v10 = v17;
            v9 = v16;

            v8 = self;
            if ((v26 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                v21 = [(RTConnectionsLocation *)self name];
                v22 = [v12 name];
                *buf = 138412546;
                v32 = v21;
                v33 = 2112;
                v34 = v22;
                _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "Proactive expert location name (%@) doesn't match resolved name (%@)", buf, 0x16u);

                v8 = self;
              }

LABEL_15:
            }

            [v5 addObject:v12];
            goto LABEL_17;
          }

          goto LABEL_15;
        }

LABEL_17:
      }

      v9 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (!v9)
      {
LABEL_19:

        v4 = v24;
        goto LABEL_21;
      }
    }
  }

  v5 = 0;
LABEL_21:

  return v5;
}

@end