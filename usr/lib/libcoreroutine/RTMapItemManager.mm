@interface RTMapItemManager
+ (id)createMapItemFromMapItem:(id)a3;
- (RTMapItemManager)initWithLearnedLocationStore:(id)a3 MapServiceManager:(id)a4;
- (id)getGeoMapItemIdentiferFromMuid:(unint64_t)a3 location:(id)a4;
- (id)mapItemsFromLocalBluePOIResult:(id)a3 withConfidenceThreshold:(double)a4 error:(id *)a5;
- (id)updateMapItemsFromMapItems:(id)a3 outError:(id *)a4;
- (id)updateMapItemsFromMapItems:(id)a3 source:(unint64_t)a4 outError:(id *)a5;
- (void)_fetchMapItemsWithGeoMapItemIdentifiers:(id)a3 source:(unint64_t)a4 handler:(id)a5;
- (void)fetchMapItemsWithGeoMapItemIdentifiers:(id)a3 source:(unint64_t)a4 handler:(id)a5;
@end

@implementation RTMapItemManager

- (RTMapItemManager)initWithLearnedLocationStore:(id)a3 MapServiceManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v12 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: learnedLocationStore";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_9;
  }

  if (!v8)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: mapServiceManager";
    goto LABEL_12;
  }

  v16.receiver = self;
  v16.super_class = RTMapItemManager;
  v10 = [(RTNotifier *)&v16 init];
  p_isa = &v10->super.super.super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_learnedLocationStore, a3);
    objc_storeStrong(p_isa + 5, a4);
  }

  self = p_isa;
  v12 = self;
LABEL_10:

  return v12;
}

- (id)getGeoMapItemIdentiferFromMuid:(unint64_t)a3 location:(id)a4
{
  v5 = a4;
  [v5 latitude];
  v7 = v6;
  [v5 longitude];
  v9 = v8;

  v10 = [objc_alloc(MEMORY[0x277D0EBA8]) initWithMUID:a3 coordinate:{v7, v9}];

  return v10;
}

- (void)fetchMapItemsWithGeoMapItemIdentifiers:(id)a3 source:(unint64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__RTMapItemManager_fetchMapItemsWithGeoMapItemIdentifiers_source_handler___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)_fetchMapItemsWithGeoMapItemIdentifiers:(id)a3 source:(unint64_t)a4 handler:(id)a5
{
  v9 = a5;
  v10 = MEMORY[0x277D011B0];
  v11 = a3;
  v12 = [v10 alloc];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [v12 initWithUseBackgroundTraits:1 analyticsIdentifier:v14];

  v16 = [(RTMapItemManager *)self mapServiceManager];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__RTMapItemManager__fetchMapItemsWithGeoMapItemIdentifiers_source_handler___block_invoke;
  v18[3] = &unk_2788C73D8;
  v20 = a2;
  v21 = a4;
  v19 = v9;
  v17 = v9;
  [v16 fetchMapItemsFromIdentifiers:v11 options:v15 source:a4 handler:v18];
}

void __75__RTMapItemManager__fetchMapItemsWithGeoMapItemIdentifiers_source_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 40));
      v9 = [v5 count];
      v10 = [MEMORY[0x277D011A0] sourceToString:*(a1 + 48)];
      v11 = 138413058;
      v12 = v8;
      v13 = 2048;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, mapItem count, %lu, source, %@, error, %@", &v11, 0x2Au);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (id)updateMapItemsFromMapItems:(id)a3 source:(unint64_t)a4 outError:(id *)a5
{
  v77[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v48 = objc_opt_new();
  v52 = objc_opt_new();
  v51 = objc_opt_new();
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v65 objects:v76 count:16];
  if (v6)
  {
    v7 = *v66;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v66 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v65 + 1) + 8 * i);
        if ([v9 muid])
        {
          v10 = MEMORY[0x277CCAAC8];
          v11 = objc_opt_class();
          v12 = [v9 geoMapItemIdentifier];
          v13 = [v10 unarchivedObjectOfClass:v11 fromData:v12 error:0];

          if (v13 || (v14 = [v9 muid], objc_msgSend(v9, "location"), v15 = objc_claimAutoreleasedReturnValue(), -[RTMapItemManager getGeoMapItemIdentiferFromMuid:location:](self, "getGeoMapItemIdentiferFromMuid:location:", v14, v15), v13 = objc_claimAutoreleasedReturnValue(), v15, v13))
          {
            [v51 addObject:v13];
          }

          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "muid")}];
          [v52 setObject:v9 forKey:v16];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v65 objects:v76 count:16];
    }

    while (v6);
  }

  if ([v51 count])
  {
    v17 = dispatch_semaphore_create(0);
    v59 = 0;
    v60 = &v59;
    v61 = 0x3032000000;
    v62 = __Block_byref_object_copy__27;
    v63 = __Block_byref_object_dispose__27;
    v64 = 0;
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __63__RTMapItemManager_updateMapItemsFromMapItems_source_outError___block_invoke;
    v53[3] = &unk_2788C6EA0;
    v57 = &v59;
    v54 = v52;
    v58 = a2;
    v18 = v48;
    v55 = v18;
    v19 = v17;
    v56 = v19;
    [(RTMapItemManager *)self fetchMapItemsWithGeoMapItemIdentifiers:v51 source:a4 handler:v53];
    v20 = v19;
    v21 = [MEMORY[0x277CBEAA8] now];
    v22 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v20, v22))
    {
      v23 = [MEMORY[0x277CBEAA8] now];
      [v23 timeIntervalSinceDate:v21];
      v25 = v24;
      v26 = objc_opt_new();
      v27 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_22];
      v28 = [MEMORY[0x277CCACC8] callStackSymbols];
      v29 = [v28 filteredArrayUsingPredicate:v27];
      v30 = [v29 firstObject];

      [v26 submitToCoreAnalytics:v30 type:1 duration:v25];
      v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v31, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v32 = MEMORY[0x277CCA9B8];
      v77[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v77 count:1];
      v34 = [v32 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v33];

      if (v34)
      {
        v35 = v34;

        v36 = 0;
LABEL_23:

        v38 = v34;
        if ((v36 & 1) == 0)
        {
          objc_storeStrong(v60 + 5, v34);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v39 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            v40 = NSStringFromSelector(a2);
            v41 = [obj count];
            v42 = [v18 count];
            v43 = v60[5];
            *buf = 138413058;
            *&buf[4] = v40;
            v70 = 2048;
            v71 = v41;
            v72 = 2048;
            v73 = v42;
            v74 = 2112;
            v75 = v43;
            _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "%@, mapItem count, before, %lu, after, %lu, error, %@", buf, 0x2Au);
          }
        }

        if (a5)
        {
          *a5 = v60[5];
        }

        v37 = v18;

        _Block_object_dispose(&v59, 8);
        goto LABEL_32;
      }
    }

    else
    {
      v34 = 0;
    }

    v36 = 1;
    goto LABEL_23;
  }

  v37 = 0;
  if (a5)
  {
    *a5 = 0;
  }

LABEL_32:

  return v37;
}

void __63__RTMapItemManager_updateMapItemsFromMapItems_source_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v30 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v5;
  v34 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v34)
  {
    v33 = *v51;
    v6 = 0x277CCA000uLL;
    v7 = MEMORY[0x277D86220];
    v32 = a1;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v51 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v50 + 1) + 8 * i);
        v10 = *(a1 + 32);
        v11 = [*(v6 + 2992) numberWithUnsignedInteger:{objc_msgSend(v9, "muid")}];
        v12 = [v10 objectForKey:v11];

        if (v12)
        {
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            v13 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v14 = NSStringFromSelector(*(a1 + 64));
              v15 = *(a1 + 32);
              v16 = [*(v6 + 2992) numberWithUnsignedInteger:{objc_msgSend(v9, "muid")}];
              v17 = [v15 objectForKeyedSubscript:v16];
              *buf = 138412546;
              v55 = v14;
              v56 = 2112;
              v57 = v17;
              _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, mapItem, before update, %@", buf, 0x16u);
            }
          }

          v38 = objc_alloc(MEMORY[0x277D011A0]);
          v18 = *(a1 + 32);
          v48 = [*(v6 + 2992) numberWithUnsignedInteger:{objc_msgSend(v9, "muid")}];
          v47 = [v18 objectForKeyedSubscript:v48];
          v49 = [v47 identifier];
          v45 = [v9 name];
          v44 = [v9 category];
          v42 = [v9 categoryMUID];
          v41 = [v9 address];
          v40 = [v9 location];
          v19 = *(a1 + 32);
          v46 = [*(v6 + 2992) numberWithUnsignedInteger:{objc_msgSend(v9, "muid")}];
          v43 = [v19 objectForKeyedSubscript:v46];
          v37 = [v43 source];
          v36 = [v9 mapItemPlaceType];
          v20 = [v9 muid];
          v21 = [v9 resultProviderID];
          v35 = [v9 geoMapItemHandle];
          v22 = [v9 geoMapItemIdentifier];
          v23 = [v9 creationDate];
          v24 = [v9 expirationDate];
          v25 = [v9 extendedAttributes];
          v26 = [v9 displayLanguage];
          LOBYTE(v29) = [v9 disputed];
          v39 = [v38 initWithIdentifier:v49 name:v45 category:v44 categoryMUID:v42 address:v41 location:v40 source:v37 mapItemPlaceType:v36 muid:v20 resultProviderID:v21 geoMapItemHandle:v35 geoMapItemIdentifier:v22 creationDate:v23 expirationDate:v24 extendedAttributes:v25 displayLanguage:v26 disputed:{v29, v30}];

          v7 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v27 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = NSStringFromSelector(*(v32 + 64));
              *buf = 138412546;
              v55 = v28;
              v56 = 2112;
              v57 = v39;
              _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@, mapItem, after update, %@", buf, 0x16u);
            }
          }

          a1 = v32;
          if (v39)
          {
            [*(v32 + 40) addObject:v39];
          }

          v6 = 0x277CCA000;
        }
      }

      v34 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v34);
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (id)updateMapItemsFromMapItems:(id)a3 outError:(id *)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 count])
  {
    v33 = a4;
    v34 = objc_opt_new();
    v7 = objc_opt_new();
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v35 = v6;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v42;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v41 + 1) + 8 * i);
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "source")}];
          v15 = [v7 objectForKey:v14];

          if (!v15)
          {
            v16 = objc_opt_new();
            v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "source")}];
            [v7 setObject:v16 forKey:v17];
          }

          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "source")}];
          v19 = [v7 objectForKeyedSubscript:v18];
          [v19 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v10);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v20 = v7;
    v21 = [v20 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v38;
      while (2)
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v37 + 1) + 8 * j);
          v26 = [v20 objectForKeyedSubscript:v25];
          v27 = [v25 unsignedIntegerValue];
          v36 = 0;
          v28 = [(RTMapItemManager *)self updateMapItemsFromMapItems:v26 source:v27 outError:&v36];
          v29 = v36;

          if (v29)
          {
            if (v33)
            {
              v31 = v29;
              *v33 = v29;
            }

            v30 = MEMORY[0x277CBEBF8];
            goto LABEL_25;
          }

          [v34 addObjectsFromArray:v28];
        }

        v22 = [v20 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    if (v33)
    {
      *v33 = 0;
    }

    v30 = v34;
LABEL_25:
    v6 = v35;
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    v30 = MEMORY[0x277CBEBF8];
  }

  return v30;
}

+ (id)createMapItemFromMapItem:(id)a3
{
  v3 = MEMORY[0x277D01060];
  v4 = a3;
  v37 = [v3 alloc];
  v65 = [MEMORY[0x277CCAD78] UUID];
  v44 = [v4 address];
  v63 = [v44 geoAddressData];
  v43 = [v4 address];
  v60 = [v43 subPremises];
  v42 = [v4 address];
  v58 = [v42 subThoroughfare];
  v41 = [v4 address];
  v56 = [v41 thoroughfare];
  v40 = [v4 address];
  v52 = [v40 subLocality];
  v39 = [v4 address];
  v54 = [v39 locality];
  v36 = [v4 address];
  v50 = [v36 subAdministrativeArea];
  v35 = [v4 address];
  v48 = [v35 administrativeArea];
  v34 = [v4 address];
  v47 = [v34 administrativeAreaCode];
  v33 = [v4 address];
  v46 = [v33 postalCode];
  v32 = [v4 address];
  v26 = [v32 country];
  v31 = [v4 address];
  v25 = [v31 countryCode];
  v30 = [v4 address];
  v45 = [v30 inlandWater];
  v29 = [v4 address];
  v5 = [v29 ocean];
  v28 = [v4 address];
  v23 = [v28 areasOfInterest];
  v27 = [v4 address];
  v21 = [v27 isIsland];
  v24 = [v4 address];
  v22 = [v24 creationDate];
  v6 = [v4 address];
  v7 = [v6 expirationDate];
  v8 = [v4 address];
  v9 = [v8 iso3166CountryCode];
  v10 = [v4 address];
  v11 = [v10 iso3166SubdivisionCode];
  LOBYTE(v19) = v21;
  v38 = [v37 initWithIdentifier:v65 geoAddressData:v63 subPremises:v60 subThoroughfare:v58 thoroughfare:v56 subLocality:v52 locality:v54 subAdministrativeArea:v50 administrativeArea:v48 administrativeAreaCode:v47 postalCode:v46 country:v26 countryCode:v25 inlandWater:v45 ocean:v5 areasOfInterest:v23 isIsland:v19 creationDate:v22 expirationDate:v7 iso3166CountryCode:v9 iso3166SubdivisionCode:v11];

  v61 = objc_alloc(MEMORY[0x277D011A0]);
  v55 = [MEMORY[0x277CCAD78] UUID];
  v66 = [v4 name];
  v64 = [v4 category];
  v59 = [v4 categoryMUID];
  v57 = [v4 location];
  v53 = [v4 mapItemPlaceType];
  v12 = [v4 muid];
  v13 = [v4 resultProviderID];
  v51 = [v4 geoMapItemHandle];
  v49 = [v4 geoMapItemIdentifier];
  v14 = [v4 creationDate];
  v15 = [v4 expirationDate];
  v16 = [v4 extendedAttributes];
  v17 = [v4 displayLanguage];
  LOBYTE(v11) = [v4 disputed];

  LOBYTE(v20) = v11;
  v62 = [v61 initWithIdentifier:v55 name:v66 category:v64 categoryMUID:v59 address:v38 location:v57 source:0 mapItemPlaceType:v53 muid:v12 resultProviderID:v13 geoMapItemHandle:v51 geoMapItemIdentifier:v49 creationDate:v14 expirationDate:v15 extendedAttributes:v16 displayLanguage:v17 disputed:v20];

  return v62;
}

- (id)mapItemsFromLocalBluePOIResult:(id)a3 withConfidenceThreshold:(double)a4 error:(id *)a5
{
  v221 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v145 = objc_opt_new();
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  v168 = v6;
  v7 = [v6 poiConfidences];
  v8 = [v7 countByEnumeratingWithState:&v202 objects:v218 count:16];
  if (v8)
  {
    v9 = *v203;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v203 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v202 + 1) + 8 * i);
        v12 = [v168 poiConfidences];
        v13 = [v12 objectForKeyedSubscript:v11];
        [v13 doubleValue];
        if (v14 >= a4)
        {
          v15 = [v11 unsignedLongLongValue] == 0;

          if (!v15)
          {
            [v145 addObject:v11];
          }
        }

        else
        {
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v202 objects:v218 count:16];
    }

    while (v8);
  }

  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v16 = [v168 aoiConfidences];
  v17 = [v16 countByEnumeratingWithState:&v198 objects:v217 count:16];
  if (v17)
  {
    v18 = *v199;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v199 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v198 + 1) + 8 * j);
        v21 = [v168 aoiConfidences];
        v22 = [v21 objectForKeyedSubscript:v20];
        [v22 doubleValue];
        if (v23 >= a4)
        {
          v24 = [v20 unsignedLongLongValue] == 0;

          if (!v24)
          {
            [v145 addObject:v20];
          }
        }

        else
        {
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v198 objects:v217 count:16];
    }

    while (v17);
  }

  v139 = objc_opt_new();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = NSStringFromSelector(a2);
      v27 = [v145 count];
      *buf = 138412802;
      *&buf[4] = v26;
      *&buf[12] = 2048;
      *&buf[14] = v27;
      *&buf[22] = 2048;
      v214 = a4;
      _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@, muid count, %lu, confidence threshold, %.1f", buf, 0x20u);
    }
  }

  if (![v145 count])
  {
    goto LABEL_97;
  }

  v146 = objc_opt_new();
  v28 = [(RTMapItemManager *)self learnedLocationStore];
  v158 = [v28 predicateForObjectsFromCurrentDevice];

  v29 = [(RTMapItemManager *)self learnedLocationStore];
  v143 = [v29 predicateForObjectsNotFromCurrentDevice];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v214 = COERCE_DOUBLE(__Block_byref_object_copy__27);
  v215 = __Block_byref_object_dispose__27;
  v216 = 0;
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  obj = v145;
  v30 = [obj countByEnumeratingWithState:&v194 objects:v212 count:16];
  if (!v30)
  {
    v162 = 0;
    dsema = 0;
    goto LABEL_67;
  }

  v162 = 0;
  dsema = 0;
  v156 = *v195;
  v150 = *MEMORY[0x277D01448];
  v151 = *MEMORY[0x277CCA450];
  do
  {
    v31 = 0;
    v153 = v30;
    do
    {
      if (*v195 != v156)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(*(&v194 + 1) + 8 * v31);
      v33 = dispatch_semaphore_create(0);

      *v208 = 0;
      *&v208[8] = v208;
      *&v208[16] = 0x2020000000;
      LOBYTE(v209) = 0;
      v34 = [(RTMapItemManager *)self learnedLocationStore];
      v35 = [v32 unsignedLongLongValue];
      v188[0] = MEMORY[0x277D85DD0];
      v188[1] = 3221225472;
      v188[2] = __81__RTMapItemManager_mapItemsFromLocalBluePOIResult_withConfidenceThreshold_error___block_invoke;
      v188[3] = &unk_2788C7400;
      v193 = a2;
      v191 = buf;
      v192 = v208;
      v36 = v139;
      v189 = v36;
      v37 = v33;
      v190 = v37;
      [v34 fetchMapItemWithMuid:v35 predicate:v158 handler:v188];

      dsema = v37;
      v38 = [MEMORY[0x277CBEAA8] now];
      v39 = dispatch_time(0, 3600000000000);
      if (!dispatch_semaphore_wait(dsema, v39))
      {
        goto LABEL_38;
      }

      v40 = [MEMORY[0x277CBEAA8] now];
      [v40 timeIntervalSinceDate:v38];
      v42 = v41;
      v43 = objc_opt_new();
      v44 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_22];
      v45 = [MEMORY[0x277CCACC8] callStackSymbols];
      v46 = [v45 filteredArrayUsingPredicate:v44];
      v47 = [v46 firstObject];

      [v43 submitToCoreAnalytics:v47 type:1 duration:v42];
      v48 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        *v220 = 0;
        _os_log_fault_impl(&dword_2304B3000, v48, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v220, 2u);
      }

      v49 = MEMORY[0x277CCA9B8];
      v219 = v151;
      *v220 = @"semaphore wait timeout";
      v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v220 forKeys:&v219 count:1];
      v51 = [v49 errorWithDomain:v150 code:15 userInfo:v50];

      if (v51)
      {
        v52 = v51;

        v53 = 0;
      }

      else
      {
LABEL_38:
        v53 = 1;
        v51 = v162;
      }

      v54 = v51;
      if ((v53 & 1) == 0)
      {
        objc_storeStrong((*&buf[8] + 40), v51);
      }

      v55 = *(*&buf[8] + 40);
      if (v55)
      {
        v56 = 0;
        if (a5)
        {
          *a5 = v55;
        }

        goto LABEL_46;
      }

      if (*(*&v208[8] + 24))
      {
        v56 = 1;
LABEL_46:
        v162 = v54;
        goto LABEL_47;
      }

      v57 = dispatch_semaphore_create(0);

      v58 = [(RTMapItemManager *)self learnedLocationStore];
      v59 = [v32 unsignedLongLongValue];
      v181[0] = MEMORY[0x277D85DD0];
      v181[1] = 3221225472;
      v181[2] = __81__RTMapItemManager_mapItemsFromLocalBluePOIResult_withConfidenceThreshold_error___block_invoke_18;
      v181[3] = &unk_2788C7428;
      v186 = buf;
      v187 = a2;
      v182 = v36;
      v183 = v146;
      v184 = v32;
      v60 = v57;
      v185 = v60;
      [v58 fetchMapItemWithMuid:v59 predicate:v143 handler:v181];

      dsema = v60;
      v61 = [MEMORY[0x277CBEAA8] now];
      v62 = dispatch_time(0, 3600000000000);
      if (!dispatch_semaphore_wait(dsema, v62))
      {
        goto LABEL_55;
      }

      v63 = [MEMORY[0x277CBEAA8] now];
      [v63 timeIntervalSinceDate:v61];
      v65 = v64;
      v66 = objc_opt_new();
      v67 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_22];
      v68 = [MEMORY[0x277CCACC8] callStackSymbols];
      v69 = [v68 filteredArrayUsingPredicate:v67];
      v70 = [v69 firstObject];

      [v66 submitToCoreAnalytics:v70 type:1 duration:v65];
      v71 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
      {
        *v220 = 0;
        _os_log_fault_impl(&dword_2304B3000, v71, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v220, 2u);
      }

      v72 = MEMORY[0x277CCA9B8];
      v219 = v151;
      *v220 = @"semaphore wait timeout";
      v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v220 forKeys:&v219 count:1];
      v74 = [v72 errorWithDomain:v150 code:15 userInfo:v73];

      if (v74)
      {
        v75 = v74;

        v76 = 0;
      }

      else
      {
LABEL_55:
        v76 = 1;
        v74 = v54;
      }

      v162 = v74;
      if ((v76 & 1) == 0)
      {
        objc_storeStrong((*&buf[8] + 40), v74);
      }

      v77 = *(*&buf[8] + 40);
      if (v77)
      {
        if (a5)
        {
          *a5 = v77;
        }

        v56 = 0;
      }

      else
      {

        v56 = 1;
      }

LABEL_47:

      _Block_object_dispose(v208, 8);
      if (!v56)
      {

        _Block_object_dispose(buf, 8);
        goto LABEL_93;
      }

      ++v31;
    }

    while (v153 != v31);
    v30 = [obj countByEnumeratingWithState:&v194 objects:v212 count:16];
  }

  while (v30);
LABEL_67:

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v78 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
    {
      v79 = NSStringFromSelector(a2);
      v80 = [obj count];
      v81 = [v139 count];
      v82 = [v146 count];
      *v208 = 138413058;
      *&v208[4] = v79;
      *&v208[12] = 2048;
      *&v208[14] = v80;
      *&v208[22] = 2048;
      v209 = v81;
      v210 = 2048;
      v211 = v82;
      _os_log_impl(&dword_2304B3000, v78, OS_LOG_TYPE_INFO, "%@, muid count, %lu, cached muid count, %lu, remaining muid count, %lu", v208, 0x2Au);
    }
  }

  v83 = objc_opt_new();
  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v84 = v146;
  v85 = [v84 countByEnumeratingWithState:&v177 objects:v207 count:16];
  if (v85)
  {
    v86 = *v178;
    do
    {
      for (k = 0; k != v85; ++k)
      {
        if (*v178 != v86)
        {
          objc_enumerationMutation(v84);
        }

        v88 = [*(*(&v177 + 1) + 8 * k) unsignedLongLongValue];
        v89 = [v168 referenceLocation];
        v90 = [(RTMapItemManager *)self getGeoMapItemIdentiferFromMuid:v88 location:v89];

        if (v90)
        {
          [v83 addObject:v90];
        }
      }

      v85 = [v84 countByEnumeratingWithState:&v177 objects:v207 count:16];
    }

    while (v85);
  }

  if (![v83 count])
  {
    v109 = v162;
LABEL_96:

    _Block_object_dispose(buf, 8);
LABEL_97:
    v147 = objc_opt_new();
    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    v141 = v139;
    v144 = [v141 countByEnumeratingWithState:&v169 objects:v206 count:16];
    if (v144)
    {
      v142 = *v170;
      do
      {
        v111 = 0;
        do
        {
          if (*v170 != v142)
          {
            v112 = v111;
            objc_enumerationMutation(v141);
            v111 = v112;
          }

          v152 = v111;
          v113 = *(*(&v169 + 1) + 8 * v111);
          v114 = [v168 aoiConfidences];
          v115 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v113, "muid")}];
          v116 = [v114 objectForKey:v115];
          v117 = v116 == 0;

          if (v117)
          {
            v118 = 1;
          }

          else
          {
            v118 = 2;
          }

          if (v117)
          {
            v119 = [v168 poiConfidences];
            v120 = 2;
          }

          else
          {
            v119 = [v168 aoiConfidences];
            v120 = 1;
          }

          v154 = v120;
          v121 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v113, "muid")}];
          v167 = [v119 objectForKeyedSubscript:v121];

          v122 = objc_alloc(MEMORY[0x277D011A8]);
          v123 = [v113 extendedAttributes];
          v124 = [v123 addressIdentifier];
          v125 = [v113 extendedAttributes];
          v126 = [v125 isMe];
          [v167 doubleValue];
          dsemaa = [v122 initWithAddressIdentifier:v124 isMe:v126 wifiConfidence:v118 wifiFingerprintLabelType:?];

          obja = objc_alloc(MEMORY[0x277D011A0]);
          v163 = [v113 identifier];
          aSelectora = [v113 name];
          v159 = [v113 category];
          v157 = [v113 categoryMUID];
          v155 = [v113 address];
          v127 = [v113 location];
          v128 = [v113 source];
          v129 = [v113 muid];
          v130 = [v113 resultProviderID];
          v131 = [v113 geoMapItemHandle];
          v132 = [v113 geoMapItemIdentifier];
          v133 = [v113 creationDate];
          v134 = [v113 expirationDate];
          v135 = [v113 displayLanguage];
          LOBYTE(v138) = [v113 disputed];
          v136 = [obja initWithIdentifier:v163 name:aSelectora category:v159 categoryMUID:v157 address:v155 location:v127 source:v128 | 0x100000 mapItemPlaceType:v154 muid:v129 resultProviderID:v130 geoMapItemHandle:v131 geoMapItemIdentifier:v132 creationDate:v133 expirationDate:v134 extendedAttributes:dsemaa displayLanguage:v135 disputed:v138];

          if (v147)
          {
            [v147 addObject:v136];
          }

          v111 = v152 + 1;
        }

        while (v144 != v152 + 1);
        v144 = [v141 countByEnumeratingWithState:&v169 objects:v206 count:16];
      }

      while (v144);
    }

    if (a5)
    {
      *a5 = 0;
    }

    goto LABEL_114;
  }

  v91 = dispatch_semaphore_create(0);

  v173[0] = MEMORY[0x277D85DD0];
  v173[1] = 3221225472;
  v173[2] = __81__RTMapItemManager_mapItemsFromLocalBluePOIResult_withConfidenceThreshold_error___block_invoke_19;
  v173[3] = &unk_2788C52C0;
  v176 = a2;
  v174 = v139;
  v92 = v91;
  v175 = v92;
  [(RTMapItemManager *)self fetchMapItemsWithGeoMapItemIdentifiers:v83 source:0x100000 handler:v173];
  dsema = v92;
  v93 = [MEMORY[0x277CBEAA8] now];
  v94 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(dsema, v94))
  {
    goto LABEL_86;
  }

  v95 = [MEMORY[0x277CBEAA8] now];
  [v95 timeIntervalSinceDate:v93];
  v97 = v96;
  v98 = objc_opt_new();
  v99 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_22];
  v100 = [MEMORY[0x277CCACC8] callStackSymbols];
  v101 = [v100 filteredArrayUsingPredicate:v99];
  v102 = [v101 firstObject];

  [v98 submitToCoreAnalytics:v102 type:1 duration:v97];
  v103 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
  {
    *v208 = 0;
    _os_log_fault_impl(&dword_2304B3000, v103, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v208, 2u);
  }

  v104 = MEMORY[0x277CCA9B8];
  *v220 = *MEMORY[0x277CCA450];
  *v208 = @"semaphore wait timeout";
  v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v208 forKeys:v220 count:1];
  v106 = [v104 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v105];

  if (v106)
  {
    v107 = v106;

    v108 = 0;
  }

  else
  {
LABEL_86:
    v108 = 1;
    v106 = v162;
  }

  v109 = v106;
  if ((v108 & 1) == 0)
  {
    objc_storeStrong((*&buf[8] + 40), v106);
  }

  v110 = *(*&buf[8] + 40);
  if (!v110)
  {

    goto LABEL_96;
  }

  if (a5)
  {
    *a5 = v110;
  }

  _Block_object_dispose(buf, 8);
LABEL_93:
  v147 = MEMORY[0x277CBEBF8];
LABEL_114:

  return v147;
}

void __81__RTMapItemManager_mapItemsFromLocalBluePOIResult_withConfidenceThreshold_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 64));
      v11 = 138412802;
      v12 = v8;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, cached mapItem from current device, %@, error, %@", &v11, 0x20u);
    }
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  if (v5 && !v6)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v9 = v5;
    if (([v9 source] & 0x4000) != 0 && (objc_msgSend(v9, "source") & 0x100000) == 0)
    {
      v10 = [RTMapItemManager createMapItemFromMapItem:v9];

      v9 = v10;
    }

    [*(a1 + 32) addObject:v9];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __81__RTMapItemManager_mapItemsFromLocalBluePOIResult_withConfidenceThreshold_error___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 72));
      v13 = 138412802;
      v14 = v8;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, cached mapItem from other devices, %@, error, %@", &v13, 0x20u);
    }
  }

  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  if (!v5 || v11)
  {
    [*(a1 + 40) addObject:*(a1 + 48)];
  }

  else
  {
    v12 = [RTMapItemManager createMapItemFromMapItem:v5];
    [*(a1 + 32) addObject:v12];
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

void __81__RTMapItemManager_mapItemsFromLocalBluePOIResult_withConfidenceThreshold_error___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 48));
      v9 = 138412802;
      v10 = v8;
      v11 = 2048;
      v12 = [v5 count];
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, fetched mapItem count, %lu, error, %@", &v9, 0x20u);
    }
  }

  if (!v6 && [v5 count])
  {
    [*(a1 + 32) addObjectsFromArray:v5];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

@end