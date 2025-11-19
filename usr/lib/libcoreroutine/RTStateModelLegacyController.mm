@interface RTStateModelLegacyController
+ (BOOL)archiveExists:(int64_t)a3;
+ (BOOL)stateModelLegacyExists;
+ (id)pathToArchiveFor:(int64_t)a3;
+ (id)pathToChecksumFor:(int64_t)a3;
+ (unint64_t)crcFromData:(id)a3;
- (BOOL)_migrateStateModelLegacy:(id)a3 error:(id *)a4;
- (BOOL)_removeStateModelForArchive:(int64_t)a3 error:(id *)a4;
- (BOOL)migrateStateModelLegacyWithError:(id *)a3;
- (BOOL)removeStateModelLegacyWithError:(id *)a3;
- (RTStateModelLegacyController)initWithLearnedLocationStore:(id)a3 mapServiceManager:(id)a4;
- (id)_getStateModelLegacyWithError:(id *)a3;
- (id)_unarchiveStateModelForArchive:(int64_t)a3 error:(id *)a4;
@end

@implementation RTStateModelLegacyController

+ (id)pathToArchiveFor:(int64_t)a3
{
  if (a3 == 1)
  {
    v5 = @"StateModel1.archive";
LABEL_5:
    v6 = [MEMORY[0x277CCAA00] pathInCacheDirectory:{v5, v3}];

    return v6;
  }

  if (a3 == 2)
  {
    v5 = @"StateModel2.archive";
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

+ (id)pathToChecksumFor:(int64_t)a3
{
  if (a3 == 1)
  {
    v5 = @"StateModel1.checksum";
LABEL_5:
    v6 = [MEMORY[0x277CCAA00] pathInCacheDirectory:{v5, v3}];

    return v6;
  }

  if (a3 == 2)
  {
    v5 = @"StateModel2.checksum";
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

+ (unint64_t)crcFromData:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = crc32(0, 0, 0);
  v5 = [v3 bytes];
  v6 = [v3 length];

  return crc32(v4, v5, v6);
}

+ (BOOL)archiveExists:(int64_t)a3
{
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [objc_opt_class() pathToArchiveFor:a3];
  v6 = [v4 fileExistsAtPath:v5];

  if (!v6)
  {
    return 0;
  }

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [objc_opt_class() pathToChecksumFor:a3];
  v9 = [v7 fileExistsAtPath:v8];

  return v9;
}

+ (BOOL)stateModelLegacyExists
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [&unk_2845A15E0 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(&unk_2845A15E0);
        }

        if ([objc_opt_class() archiveExists:{objc_msgSend(*(*(&v7 + 1) + 8 * v5), "integerValue")}])
        {
          LOBYTE(v2) = 1;
          return v2;
        }

        ++v5;
      }

      while (v3 != v5);
      v2 = [&unk_2845A15E0 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v3 = v2;
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  return v2;
}

- (RTStateModelLegacyController)initWithLearnedLocationStore:(id)a3 mapServiceManager:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTStateModelLegacyController initWithLearnedLocationStore:mapServiceManager:]";
      v19 = 1024;
      v20 = 174;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedLocationStore (in %s:%d)", buf, 0x12u);
    }

    if (v9)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!v8)
  {
LABEL_9:
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTStateModelLegacyController initWithLearnedLocationStore:mapServiceManager:]";
      v19 = 1024;
      v20 = 175;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapServiceManager (in %s:%d)", buf, 0x12u);
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v16.receiver = self;
  v16.super_class = RTStateModelLegacyController;
  v10 = [(RTStateModelLegacyController *)&v16 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_learnedLocationStore, a3);
    objc_storeStrong(p_isa + 2, a4);
    xpc_activity_unregister("com.apple.routined.sequentialClusterIdentification");
  }

  self = p_isa;
  v12 = self;
LABEL_13:

  return v12;
}

- (id)_unarchiveStateModelForArchive:(int64_t)a3 error:(id *)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  if (![objc_opt_class() archiveExists:a3])
  {
    v11 = 0;
    goto LABEL_22;
  }

  v31 = [objc_opt_class() pathToArchiveFor:a3];
  v35[0] = 0;
  v30 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v31 options:0 error:v35];
  v6 = v35[0];
  if (!v6)
  {
    v28 = [objc_opt_class() pathToChecksumFor:a3];
    v34 = 0;
    v29 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v28 options:0 error:&v34];
    v7 = v34;
    if (v29)
    {
      v33 = 0;
      v12 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v29 error:&v33];
      v13 = v33;
      v14 = [v12 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
      [v12 finishDecoding];
      if (v13)
      {
        v15 = MEMORY[0x277CCA9B8];
        v16 = [v13 userInfo];
        *a4 = [v15 errorWithDomain:@"RTStateModelLegacyControllerErrorDomain" code:2 userInfo:v16];
      }
    }

    else
    {
      v14 = 0;
    }

    v17 = [objc_opt_class() crcFromData:v30];
    if (v17 == [v14 unsignedIntegerValue])
    {
      v32 = 0;
      v18 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v30 error:&v32];
      v19 = v32;
      [v18 setClass:objc_opt_class() forClassName:@"RTStateModel"];
      v11 = [v18 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
      [v18 finishDecoding];
      if (v19)
      {
        v20 = MEMORY[0x277CCA9B8];
        v21 = [v19 userInfo];
        *a4 = [v20 errorWithDomain:@"RTStateModelLegacyControllerErrorDomain" code:2 userInfo:v21];
      }
    }

    else
    {
      if (a4)
      {
        v22 = MEMORY[0x277CCACA8];
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v17];
        v24 = [v22 stringWithFormat:@"actual stateModel crc, %@, %@, doesn't match expected crc, %@, %@", v31, v23, v28, v14];

        v25 = MEMORY[0x277CCA9B8];
        v36 = *MEMORY[0x277CCA450];
        v37 = v24;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        *a4 = [v25 errorWithDomain:@"RTStateModelLegacyControllerErrorDomain" code:2 userInfo:v26];
      }

      v11 = 0;
    }

    goto LABEL_20;
  }

  v7 = v6;
  if (a4)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v6 description];
    v28 = [v8 stringWithFormat:@"failed to init data with contents of file, %@, error, %@", v31, v9];

    v10 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA450];
    v39[0] = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    [v10 errorWithDomain:@"RTStateModelLegacyControllerErrorDomain" code:1 userInfo:v29];
    *a4 = v11 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v11 = 0;
LABEL_21:

LABEL_22:

  return v11;
}

- (id)_getStateModelLegacyWithError:(id *)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [&unk_2845A15F8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v27;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(&unk_2845A15F8);
        }

        v11 = [*(*(&v26 + 1) + 8 * v9) integerValue];
        v25 = 0;
        v12 = [(RTStateModelLegacyController *)self _unarchiveStateModelForArchive:v11 error:&v25];
        v13 = v25;
        if (v13)
        {
          [v4 addObject:v13];
        }

        if (v12)
        {
          v14 = [MEMORY[0x277CBEB18] array];
          v15 = [v12 stateModelLut];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __62__RTStateModelLegacyController__getStateModelLegacyWithError___block_invoke;
          v23[3] = &unk_2788D05B8;
          v24 = v14;
          v16 = v14;
          [v15 enumerateKeysAndObjectsUsingBlock:v23];

          v17 = [v12 stateModelLut];
          [v17 removeObjectsForKeys:v16];
        }

        v18 = [v10 version];
        if (v18 >= [v12 version])
        {
          v19 = v10;
        }

        else
        {
          v19 = v12;
        }

        v7 = v19;

        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [&unk_2845A15F8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (a3)
  {
    v20 = _RTSafeArray();
    *a3 = _RTMultiErrorCreate();
  }

  return v7;
}

void __62__RTStateModelLegacyController__getStateModelLegacyWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 uniqueId];

  if (!v5)
  {
    [*(a1 + 32) addObject:v6];
  }
}

- (BOOL)_removeStateModelForArchive:(int64_t)a3 error:(id *)a4
{
  v34[2] = *MEMORY[0x277D85DE8];
  v6 = [objc_opt_class() pathToArchiveFor:a3];
  v34[0] = v6;
  v7 = [objc_opt_class() pathToChecksumFor:a3];
  v34[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v26;
    v13 = MEMORY[0x277D86220];
    *&v10 = 138412546;
    v22 = v10;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v25 + 1) + 8 * v14);
        v16 = [MEMORY[0x277CCAA00] defaultManager];
        v24 = 0;
        v17 = [v16 removeItemAtPath:v15 error:&v24];
        v18 = v24;

        if (a4 && (v17 & 1) == 0)
        {
          v19 = v18;
          *a4 = v18;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v20 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = v22;
            v30 = v15;
            v31 = 2112;
            v32 = v18;
            _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "removed item at path, %@, error, %@", buf, 0x16u);
          }
        }

        ++v14;
      }

      while (v11 != v14);
      v11 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v11);
  }

  return 1;
}

- (BOOL)removeStateModelLegacyWithError:(id *)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [&unk_2845A1610 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(&unk_2845A1610);
        }

        v9 = [*(*(&v14 + 1) + 8 * v8) integerValue];
        v13 = 0;
        v10 = [(RTStateModelLegacyController *)self _removeStateModelForArchive:v9 error:&v13];
        v11 = v13;
        if (a3 && !v10)
        {
          v11 = v11;
          *a3 = v11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [&unk_2845A1610 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return 1;
}

- (BOOL)_migrateStateModelLegacy:(id)a3 error:(id *)a4
{
  v317[1] = *MEMORY[0x277D85DE8];
  v225 = a3;
  v230 = [MEMORY[0x277CBEB38] dictionary];
  v243 = [MEMORY[0x277CBEB38] dictionary];
  v227 = [MEMORY[0x277CBEB18] array];
  v261 = [MEMORY[0x277CBEAA8] date];
  v231 = [MEMORY[0x277CBEB38] dictionary];
  v303 = 0u;
  v304 = 0u;
  v301 = 0u;
  v302 = 0u;
  v4 = [v225 stateModelLut];
  obj = [v4 allValues];

  v257 = [obj countByEnumeratingWithState:&v301 objects:v316 count:16];
  if (v257)
  {
    v253 = *v302;
    v228 = *MEMORY[0x277D01448];
    v232 = *MEMORY[0x277CCA450];
    do
    {
      v262 = 0;
      do
      {
        if (*v302 != v253)
        {
          objc_enumerationMutation(obj);
        }

        v266 = *(*(&v301 + 1) + 8 * v262);
        v5 = [v266 uniqueId];
        v6 = v5 == 0;

        if (!v6)
        {
          *&buf = 0;
          *(&buf + 1) = &buf;
          v312 = 0x3032000000;
          v313 = __Block_byref_object_copy__154;
          v314 = __Block_byref_object_dispose__154;
          v315 = 0;
          v7 = [v266 stateDepiction];
          v8 = [v7 geoMapItem];

          if (v8)
          {
            mapServiceManager = self->_mapServiceManager;
            v10 = [MEMORY[0x277CCAD78] UUID];
            v11 = [v266 stateDepiction];
            v12 = [v11 geoMapItem];
            v13 = [v266 stateDepiction];
            v14 = +[RTLearnedLocationOfInterest mapItemSourceFromGeoMapItemSource:](RTLearnedLocationOfInterest, "mapItemSourceFromGeoMapItemSource:", [v13 mapItemSource]);
            v15 = [v266 stateDepiction];
            v16 = [v15 geocodeDate];
            v17 = v16;
            if (!v16)
            {
              v236 = [MEMORY[0x277CBEAA8] date];
              v17 = v236;
            }

            v300 = 0;
            v18 = [(RTMapServiceManager *)mapServiceManager mapItemWithIdentifier:v10 geoMapItem:v12 source:v14 creationDate:v17 error:&v300];
            v19 = v300;
            v20 = *(*(&buf + 1) + 40);
            *(*(&buf + 1) + 40) = v18;

            if (!v16)
            {
            }
          }

          if (*(*(&buf + 1) + 40))
          {
            goto LABEL_27;
          }

          v21 = objc_alloc(MEMORY[0x277D01160]);
          v22 = [v266 stateDepiction];
          v23 = [v22 location];
          [v23 Latitude_deg];
          v25 = v24;
          v26 = [v266 stateDepiction];
          v27 = [v26 location];
          [v27 Longitude_deg];
          v29 = v28;
          v30 = [v266 stateDepiction];
          v31 = [v30 location];
          [v31 uncertainty_m];
          v249 = [v21 initWithLatitude:v261 longitude:v25 horizontalUncertainty:v29 date:v32];

          v33 = dispatch_semaphore_create(0);
          v34 = objc_alloc(MEMORY[0x277D011B0]);
          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          v37 = [v34 initWithUseBackgroundTraits:1 analyticsIdentifier:v36];

          v38 = [(RTStateModelLegacyController *)self mapServiceManager];
          v297[0] = MEMORY[0x277D85DD0];
          v297[1] = 3221225472;
          v297[2] = __63__RTStateModelLegacyController__migrateStateModelLegacy_error___block_invoke;
          v297[3] = &unk_2788C45F0;
          p_buf = &buf;
          v39 = v33;
          v298 = v39;
          [v38 fetchMapItemsFromLocation:v249 options:v37 handler:v297];

          v40 = v39;
          v41 = [MEMORY[0x277CBEAA8] now];
          v42 = dispatch_time(0, 3600000000000);
          if (dispatch_semaphore_wait(v40, v42))
          {
            v43 = [MEMORY[0x277CBEAA8] now];
            [v43 timeIntervalSinceDate:v41];
            v45 = v44;
            v46 = objc_opt_new();
            v47 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_144_1];
            v48 = [MEMORY[0x277CCACC8] callStackSymbols];
            v49 = [v48 filteredArrayUsingPredicate:v47];
            v50 = [v49 firstObject];

            [v46 submitToCoreAnalytics:v50 type:1 duration:v45];
            v51 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
            {
              *v310 = 0;
              _os_log_fault_impl(&dword_2304B3000, v51, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v310, 2u);
            }

            v52 = MEMORY[0x277CCA9B8];
            v317[0] = v232;
            *v310 = @"semaphore wait timeout";
            v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v310 forKeys:v317 count:1];
            v54 = [v52 errorWithDomain:v228 code:15 userInfo:v53];

            if (v54)
            {
              v55 = v54;
            }
          }

          else
          {
            v54 = 0;
          }

          v57 = v54;
          if (!*(*(&buf + 1) + 40))
          {
            v58 = objc_alloc(MEMORY[0x277D0EC58]);
            [v249 latitude];
            v60 = v59;
            [v249 longitude];
            v62 = [v58 initWithLatitude:0 longitude:v60 addressDictionary:v61];
            v63 = [MEMORY[0x277D0EBC0] mapItemStorageForPlace:v62];
            v64 = self->_mapServiceManager;
            v65 = [MEMORY[0x277CCAD78] UUID];
            v66 = [v266 stateDepiction];
            v67 = +[RTLearnedLocationOfInterest mapItemSourceFromGeoMapItemSource:](RTLearnedLocationOfInterest, "mapItemSourceFromGeoMapItemSource:", [v66 mapItemSource]);
            v296 = 0;
            v68 = [(RTMapServiceManager *)v64 mapItemWithIdentifier:v65 geoMapItem:v63 source:v67 creationDate:v261 error:&v296];
            v69 = v296;
            v70 = *(*(&buf + 1) + 40);
            *(*(&buf + 1) + 40) = v68;
          }

          if (*(*(&buf + 1) + 40))
          {
LABEL_27:
            v71 = [v261 dateByAddingTimeInterval:4838400.0];
            v72 = [RTLearnedPlace alloc];
            v73 = [v266 uniqueId];
            v74 = [v266 stateDepiction];
            v75 = +[RTLearnedPlace placeTypeFromType:](RTLearnedPlace, "placeTypeFromType:", [v74 type]);
            v76 = [v266 stateDepiction];
            v77 = +[RTLearnedPlace placeTypeSourceFromTypeSource:](RTLearnedPlace, "placeTypeSourceFromTypeSource:", [v76 typeSource]);
            v78 = *(*(&buf + 1) + 40);
            v79 = [v266 stateDepiction];
            v80 = [v79 customLabel];
            v81 = [(RTLearnedPlace *)v72 initWithIdentifier:v73 type:v75 typeSource:v77 mapItem:v78 customLabel:v80 creationDate:v261 expirationDate:v71];

            if (v81)
            {
              v82 = [(RTLearnedPlace *)v81 identifier];
              [v230 setObject:v81 forKey:v82];

              v83 = [v266 uniqueId];
              [v231 setObject:v81 forKey:v83];
            }

            goto LABEL_30;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v71 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
            if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
            {
              *v310 = 138739971;
              *&v310[4] = v266;
              _os_log_impl(&dword_2304B3000, v71, OS_LOG_TYPE_INFO, "unable to migrate legacy geoMapItem, %{sensitive}@", v310, 0xCu);
            }

LABEL_30:
          }

          _Block_object_dispose(&buf, 8);

          goto LABEL_32;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v56 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v266;
            _os_log_impl(&dword_2304B3000, v56, OS_LOG_TYPE_INFO, "oneState missing identifier, %@", &buf, 0xCu);
          }
        }

LABEL_32:
        v262 = v262 + 1;
      }

      while (v257 != v262);
      v84 = [obj countByEnumeratingWithState:&v301 objects:v316 count:16];
      v257 = v84;
    }

    while (v84);
  }

  v85 = [MEMORY[0x277CBEB58] set];
  v294 = 0u;
  v295 = 0u;
  v292 = 0u;
  v293 = 0u;
  v86 = [v225 stateModelLut];
  v263 = [v86 allValues];

  v87 = [v263 countByEnumeratingWithState:&v292 objects:v309 count:16];
  if (!v87)
  {
    goto LABEL_59;
  }

  v267 = *v293;
  do
  {
    v88 = 0;
    do
    {
      if (*v293 != v267)
      {
        objc_enumerationMutation(v263);
      }

      v89 = *(*(&v292 + 1) + 8 * v88);
      v90 = [v89 uniqueId];
      v91 = v90 == 0;

      if (!v91)
      {
        v92 = [v89 stateDepiction];
        v93 = [v92 getAllOneVisits];

        v290 = 0u;
        v291 = 0u;
        v288 = 0u;
        v289 = 0u;
        v94 = v93;
        v95 = [v94 countByEnumeratingWithState:&v288 objects:v308 count:16];
        if (v95)
        {
          v96 = *v289;
          do
          {
            for (i = 0; i != v95; ++i)
            {
              if (*v289 != v96)
              {
                objc_enumerationMutation(v94);
              }

              v98 = [[RTMigrationHelperOneStateAndEntryExitPair alloc] initWithOneState:v89 entryExit:*(*(&v288 + 1) + 8 * i)];
              [v85 addObject:v98];
            }

            v95 = [v94 countByEnumeratingWithState:&v288 objects:v308 count:16];
          }

          while (v95);
        }

LABEL_52:
        goto LABEL_53;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v94 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
        if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v89;
          _os_log_impl(&dword_2304B3000, v94, OS_LOG_TYPE_INFO, "oneState missing identifier, %@", &buf, 0xCu);
        }

        goto LABEL_52;
      }

LABEL_53:
      ++v88;
    }

    while (v88 != v87);
    v99 = [v263 countByEnumeratingWithState:&v292 objects:v309 count:16];
    v87 = v99;
  }

  while (v99);
LABEL_59:

  v226 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"self.entryExit.exit_s" ascending:1];
  v307 = v226;
  v224 = [MEMORY[0x277CBEA60] arrayWithObjects:&v307 count:1];
  v286 = 0u;
  v287 = 0u;
  v284 = 0u;
  v285 = 0u;
  v100 = [v85 allObjects];
  v229 = [v100 sortedArrayUsingDescriptors:v224];

  v237 = [v229 countByEnumeratingWithState:&v284 objects:v306 count:16];
  if (!v237)
  {
    v235 = 0;
    goto LABEL_90;
  }

  v233 = *v285;
  v235 = 0;
  while (2)
  {
    v101 = 0;
    while (2)
    {
      if (*v285 != v233)
      {
        v102 = v101;
        objc_enumerationMutation(v229);
        v101 = v102;
      }

      v258 = v101;
      v103 = *(*(&v284 + 1) + 8 * v101);
      v268 = [MEMORY[0x277CCAD78] UUID];
      v104 = [v103 oneState];
      v105 = [v104 uniqueId];
      v106 = v105 == 0;

      if (!v106)
      {
        v107 = [v103 oneState];
        v108 = [v107 stateDepiction];
        v109 = [v108 numOfDataPts];
        v110 = [v103 oneState];
        v111 = [v110 stateDepiction];
        v112 = [v111 getNumOfVisitsOverall];

        v113 = v109 / v112;
        if (v109 / v112 <= 1)
        {
          v113 = 1;
        }

        v244 = v113;
        v114 = MEMORY[0x277CBEAA8];
        v115 = [v103 entryExit];
        [v115 entry_s];
        v247 = [v114 dateWithTimeIntervalSinceReferenceDate:?];

        v116 = MEMORY[0x277CBEAA8];
        v117 = [v103 entryExit];
        [v117 exit_s];
        v264 = [v116 dateWithTimeIntervalSinceReferenceDate:?];

        objc = [RTLearnedLocation alloc];
        v118 = objc_alloc(MEMORY[0x277D01160]);
        v254 = [v103 oneState];
        v250 = [v254 stateDepiction];
        v119 = [v250 location];
        [v119 Latitude_deg];
        v121 = v120;
        v122 = [v103 oneState];
        v123 = [v122 stateDepiction];
        v124 = [v123 location];
        [v124 Longitude_deg];
        v126 = v125;
        v127 = [v103 oneState];
        v128 = [v127 stateDepiction];
        v129 = [v128 location];
        [v129 uncertainty_m];
        v131 = [v118 initWithLatitude:0 longitude:v121 horizontalUncertainty:v126 date:v130];
        v245 = [(RTLearnedLocation *)objc initWithLocation:v131 dataPointCount:v244 confidence:1.0];

        v132 = [v103 oneState];
        v133 = [v132 stateDepiction];
        v134 = [v133 getNumOfVisitsOverall];

        v135 = [v264 dateByAddingTimeInterval:dbl_230AFE560[v134 > 1]];
        v136 = [[RTLearnedVisit alloc] initWithIdentifier:v268 location:v245 entryDate:v247 exitDate:v264 creationDate:v261 expirationDate:v135];
        if (v136)
        {
          v137 = [v103 oneState];
          v138 = [v137 uniqueId];
          v139 = [v231 objectForKey:v138];

          if (v139)
          {
            v140 = [v139 mapItem];
            -[RTLearnedVisit setPlaceSource:](v136, "setPlaceSource:", [v140 source]);

            v141 = [v139 identifier];
            v142 = [v243 objectForKey:v141];
            v143 = v142 == 0;

            if (v143)
            {
              v144 = [MEMORY[0x277CBEB18] array];
              v145 = [v139 identifier];
              [v243 setObject:v144 forKey:v145];
            }

            v146 = [v139 identifier];
            v147 = [v243 objectForKey:v146];
            [v147 addObject:v136];

            if (v235)
            {
              v148 = [MEMORY[0x277CCAD78] UUID];
              v149 = [(RTLearnedVisit *)v235 exitDate];
              v150 = [(RTLearnedVisit *)v136 entryDate];
              v255 = v235;
              v151 = v136;
              if (v149 && v150)
              {
                v251 = v151;
                obja = v135;
                v152 = [RTLearnedTransition alloc];
                v153 = [(RTLearnedVisit *)v255 identifier];
                v154 = [(RTLearnedVisit *)v251 identifier];
                v155 = [(RTLearnedTransition *)v152 initWithIdentifier:v148 startDate:v149 stopDate:v150 visitIdentifierOrigin:v153 visitIdentifierDestination:v154 creationDate:v261 expirationDate:obja predominantMotionActivityType:0];

                if (v155)
                {
                  [v227 addObject:v155];
                }

                v151 = v251;
              }
            }

            v156 = v136;

            v235 = v156;
          }
        }

        v157 = v247;
        goto LABEL_81;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v157 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
        if (os_log_type_enabled(v157, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v103;
          _os_log_impl(&dword_2304B3000, v157, OS_LOG_TYPE_INFO, "oneState missing identifier, %@", &buf, 0xCu);
        }

LABEL_81:
      }

      v101 = v258 + 1;
      if (v237 != v258 + 1)
      {
        continue;
      }

      break;
    }

    v158 = [v229 countByEnumeratingWithState:&v284 objects:v306 count:16];
    v237 = v158;
    if (v158)
    {
      continue;
    }

    break;
  }

LABEL_90:

  v234 = [MEMORY[0x277CBEB18] array];
  v246 = dispatch_semaphore_create(0);
  v280 = 0u;
  v281 = 0u;
  v282 = 0u;
  v283 = 0u;
  v265 = v230;
  v252 = [v265 countByEnumeratingWithState:&v280 objects:v305 count:16];
  if (v252)
  {
    v269 = 0;
    v248 = *v281;
    v238 = *MEMORY[0x277D01448];
    objb = *MEMORY[0x277CCA450];
    do
    {
      for (j = 0; j != v252; j = j + 1)
      {
        if (*v281 != v248)
        {
          objc_enumerationMutation(v265);
        }

        v160 = *(*(&v280 + 1) + 8 * j);
        v161 = [v265 objectForKeyedSubscript:v160];
        v162 = [v243 objectForKey:v160];
        if ([v162 count])
        {
          v163 = [(RTStateModelLegacyController *)self learnedLocationStore];
          v276[0] = MEMORY[0x277D85DD0];
          v276[1] = 3221225472;
          v276[2] = __63__RTStateModelLegacyController__migrateStateModelLegacy_error___block_invoke_93;
          v276[3] = &unk_2788CB988;
          v164 = v162;
          v277 = v164;
          v165 = v161;
          v278 = v165;
          v166 = v246;
          v279 = v166;
          [v163 storeVisits:v164 place:v165 handler:v276];

          v167 = v166;
          v168 = [MEMORY[0x277CBEAA8] now];
          v169 = dispatch_time(0, 3600000000000);
          v170 = v269;
          if (dispatch_semaphore_wait(v167, v169))
          {
            v259 = [MEMORY[0x277CBEAA8] now];
            [v259 timeIntervalSinceDate:v168];
            v172 = v171;
            v256 = objc_opt_new();
            v173 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_144_1];
            v174 = [MEMORY[0x277CCACC8] callStackSymbols];
            v175 = [v174 filteredArrayUsingPredicate:v173];
            v176 = [v175 firstObject];

            [v256 submitToCoreAnalytics:v176 type:1 duration:v172];
            v177 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v177, OS_LOG_TYPE_FAULT))
            {
              LOWORD(buf) = 0;
              _os_log_fault_impl(&dword_2304B3000, v177, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", &buf, 2u);
            }

            v178 = MEMORY[0x277CCA9B8];
            *v310 = objb;
            *&buf = @"semaphore wait timeout";
            v179 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:v310 count:1];
            v180 = [v178 errorWithDomain:v238 code:15 userInfo:v179];

            v170 = v269;
            if (v180)
            {
              v181 = v180;

              v170 = v180;
            }
          }

          v182 = v170;
          v269 = v182;
        }

        else
        {
          [v234 addObject:v161];
        }
      }

      v252 = [v265 countByEnumeratingWithState:&v280 objects:v305 count:16];
    }

    while (v252);
  }

  else
  {
    v269 = 0;
  }

  if ([v234 count])
  {
    v183 = [(RTStateModelLegacyController *)self learnedLocationStore];
    v273[0] = MEMORY[0x277D85DD0];
    v273[1] = 3221225472;
    v273[2] = __63__RTStateModelLegacyController__migrateStateModelLegacy_error___block_invoke_95;
    v273[3] = &unk_2788C7E48;
    v274 = v234;
    v184 = v246;
    v275 = v184;
    [v183 storePlaces:v274 handler:v273];

    v185 = v184;
    v186 = [MEMORY[0x277CBEAA8] now];
    v187 = dispatch_time(0, 3600000000000);
    v188 = v269;
    if (dispatch_semaphore_wait(v185, v187))
    {
      v189 = [MEMORY[0x277CBEAA8] now];
      [v189 timeIntervalSinceDate:v186];
      v191 = v190;
      v192 = objc_opt_new();
      v193 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_144_1];
      v194 = [MEMORY[0x277CCACC8] callStackSymbols];
      v195 = [v194 filteredArrayUsingPredicate:v193];
      v196 = [v195 firstObject];

      [v192 submitToCoreAnalytics:v196 type:1 duration:v191];
      v197 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v197, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf) = 0;
        _os_log_fault_impl(&dword_2304B3000, v197, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", &buf, 2u);
      }

      v198 = MEMORY[0x277CCA9B8];
      *v310 = *MEMORY[0x277CCA450];
      *&buf = @"semaphore wait timeout";
      v199 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:v310 count:1];
      v200 = [v198 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v199];

      v188 = v269;
      if (v200)
      {
        v201 = v200;

        v188 = v200;
      }
    }

    v202 = v188;
    v269 = v202;
  }

  if ([v227 count])
  {
    v203 = [(RTStateModelLegacyController *)self learnedLocationStore];
    v270[0] = MEMORY[0x277D85DD0];
    v270[1] = 3221225472;
    v270[2] = __63__RTStateModelLegacyController__migrateStateModelLegacy_error___block_invoke_96;
    v270[3] = &unk_2788C7E48;
    v271 = v227;
    v204 = v246;
    v272 = v204;
    [v203 storeTransitions:v271 handler:v270];

    v205 = v204;
    v206 = [MEMORY[0x277CBEAA8] now];
    v207 = dispatch_time(0, 3600000000000);
    v208 = v269;
    if (dispatch_semaphore_wait(v205, v207))
    {
      v209 = [MEMORY[0x277CBEAA8] now];
      [v209 timeIntervalSinceDate:v206];
      v211 = v210;
      v212 = objc_opt_new();
      v213 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_144_1];
      v214 = [MEMORY[0x277CCACC8] callStackSymbols];
      v215 = [v214 filteredArrayUsingPredicate:v213];
      v216 = [v215 firstObject];

      [v212 submitToCoreAnalytics:v216 type:1 duration:v211];
      v217 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v217, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf) = 0;
        _os_log_fault_impl(&dword_2304B3000, v217, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", &buf, 2u);
      }

      v218 = MEMORY[0x277CCA9B8];
      *v310 = *MEMORY[0x277CCA450];
      *&buf = @"semaphore wait timeout";
      v219 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:v310 count:1];
      v220 = [v218 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v219];

      v208 = v269;
      if (v220)
      {
        v221 = v220;

        v208 = v220;
      }
    }

    v222 = v208;
    v269 = v222;
  }

  return 1;
}

intptr_t __63__RTStateModelLegacyController__migrateStateModelLegacy_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

void __63__RTStateModelLegacyController__migrateStateModelLegacy_error___block_invoke_93(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) count];
      v6 = *(a1 + 40);
      *buf = 134218499;
      v24 = v5;
      v25 = 2117;
      v26 = v6;
      v27 = 2112;
      v28 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "stored %lu visits to place, %{sensitive}@, error, %@", buf, 0x20u);
    }
  }

  v16 = v3;
  v17 = a1;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v19;
    v12 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v15 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            ++v10;
            *buf = 134218242;
            v24 = v10;
            v25 = 2112;
            v26 = v14;
            _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "visit %lu, %@", buf, 0x16u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:{16, v16}];
    }

    while (v9);
  }

  dispatch_semaphore_signal(*(v17 + 48));
}

void __63__RTStateModelLegacyController__migrateStateModelLegacy_error___block_invoke_95(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) count];
      *buf = 134218242;
      v23 = v5;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "stored %lu places with no visits, error %@", buf, 0x16u);
    }
  }

  v15 = v3;
  v16 = a1;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    v11 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v14 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            ++v9;
            *buf = 134218242;
            v23 = v9;
            v24 = 2112;
            v25 = v13;
            _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "place %lu, %@", buf, 0x16u);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:{16, v15}];
    }

    while (v8);
  }

  dispatch_semaphore_signal(*(v16 + 40));
}

void __63__RTStateModelLegacyController__migrateStateModelLegacy_error___block_invoke_96(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) count];
      v6 = 134218242;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "stored %lu transitions, error %@", &v6, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)migrateStateModelLegacyWithError:(id *)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v5 = [(RTStateModelLegacyController *)self _getStateModelLegacyWithError:&v13];
  v6 = v13;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "getstateModel legacy, %@, error, %@", buf, 0x16u);
    }
  }

  v8 = [v5 stateModelLut];
  v9 = [v8 allValues];
  [v9 enumerateObjectsUsingBlock:&__block_literal_global_127];

  if (v6)
  {
    if (a3)
    {
      v10 = v6;
      v11 = 0;
      *a3 = v6;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = [(RTStateModelLegacyController *)self _migrateStateModelLegacy:v5 error:a3];
  }

  return v11;
}

void __65__RTStateModelLegacyController_migrateStateModelLegacyWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 134218242;
      v9 = a3 + 1;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "state %lu, %@", &v8, 0x16u);
    }
  }

  v6 = [v4 stateDepiction];
  v7 = [v6 getAllOneVisits];
  [v7 enumerateObjectsUsingBlock:&__block_literal_global_101];
}

void __65__RTStateModelLegacyController_migrateStateModelLegacyWithError___block_invoke_98(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218242;
      v7 = a3 + 1;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "visit %lu, %@", &v6, 0x16u);
    }
  }
}

@end