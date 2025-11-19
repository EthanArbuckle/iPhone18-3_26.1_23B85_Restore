@interface PPRoutineSupport
+ (BOOL)importCoreRoutineDataWithError:(id *)a3 shouldContinueBlock:(id)a4;
+ (id)fetchLocationOfInterestByType:(int64_t)a3;
+ (id)locationsOfInterestVisitedBetweenStartDate:(id)a3 endDate:(id)a4;
@end

@implementation PPRoutineSupport

+ (id)fetchLocationOfInterestByType:(int64_t)a3
{
  v4 = defaultRTRoutineManager();
  if (v4)
  {
    *buf = 0;
    v17 = buf;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__3148;
    v20 = __Block_byref_object_dispose__3149;
    v21 = 0;
    v5 = dispatch_semaphore_create(0);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __50__PPRoutineSupport_fetchLocationOfInterestByType___block_invoke;
    v13 = &unk_2789760B8;
    v15 = buf;
    v6 = v5;
    v14 = v6;
    [v4 fetchLocationsOfInterestOfType:a3 withHandler:&v10];
    [MEMORY[0x277D425A0] waitForSemaphore:{v6, v10, v11, v12, v13}];
    v7 = *(v17 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v8, OS_LOG_TYPE_ERROR, "PPRoutineSupport failed to initialize default RTRoutineManager.", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

intptr_t __50__PPRoutineSupport_fetchLocationOfInterestByType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

+ (id)locationsOfInterestVisitedBetweenStartDate:(id)a3 endDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = defaultRTRoutineManager();
  if (v7)
  {
    *buf = 0;
    v19 = buf;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__3148;
    v22 = __Block_byref_object_dispose__3149;
    v23 = 0;
    v8 = dispatch_semaphore_create(0);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __71__PPRoutineSupport_locationsOfInterestVisitedBetweenStartDate_endDate___block_invoke;
    v15[3] = &unk_2789760B8;
    v17 = buf;
    v9 = v8;
    v16 = v9;
    [v7 fetchLocationsOfInterestVisitedBetweenStartDate:v5 endDate:v6 withHandler:v15];
    if ([MEMORY[0x277D425A0] waitForSemaphore:v9 timeoutSeconds:10.0] == 1)
    {
      v10 = pp_default_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v14[0] = 0;
        _os_log_fault_impl(&dword_23224A000, v10, OS_LOG_TYPE_FAULT, "RTRoutineManager LOI fetching taking more than 10 seconds", v14, 2u);
      }
    }

    v11 = *(v19 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v12 = pp_default_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "PPRoutineSupport failed to initialize default RTRoutineManager.", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

void __71__PPRoutineSupport_locationsOfInterestVisitedBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = v3;
    obj = v3;
    v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      do
      {
        v10 = 0;
        do
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v25 + 1) + 8 * v10);
          v12 = *(*(*(a1 + 40) + 8) + 40);
          v13 = objc_alloc(MEMORY[0x277CE41F8]);
          v14 = [v11 mapItem];
          v15 = [v14 location];
          [v15 latitude];
          v17 = v16;
          v18 = [v11 mapItem];
          v19 = [v18 location];
          [v19 longitude];
          v21 = [v13 initWithLatitude:v17 longitude:v20];
          [v12 addObject:v21];

          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v8);
    }

    v3 = v23;
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v22 = *MEMORY[0x277D85DE8];
}

+ (BOOL)importCoreRoutineDataWithError:(id *)a3 shouldContinueBlock:(id)a4
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = pp_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPRoutineSupport running CoreRoutine import", &buf, 2u);
  }

  v6 = +[PPConfiguration sharedInstance];
  v7 = *MEMORY[0x277D3A608];
  v8 = [v6 extractionAlgorithmsForBundleId:*MEMORY[0x277D3A608] sourceLanguage:0 conservative:0 domain:1];

  v9 = +[PPConfiguration sharedInstance];
  v10 = [v9 extractionAlgorithmsForBundleId:v7 sourceLanguage:0 conservative:0 domain:2];

  if ((v4[2](v4) & 1) == 0)
  {
    v37 = pp_default_log_handle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23224A000, v37, OS_LOG_TYPE_DEFAULT, "PPRoutineSupport: deferring before deletions.", &buf, 2u);
    }

    goto LABEL_20;
  }

  v11 = [v8 containsObject:&unk_284783B88];
  v12 = [v10 containsObject:&unk_284783BA0];
  v13 = v12;
  if (((v11 | v12) & 1) == 0)
  {
    v37 = pp_default_log_handle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23224A000, v37, OS_LOG_TYPE_DEFAULT, "PPRoutineSupport: Core Routine blocked for both named entities and locations, skipping.", &buf, 2u);
    }

LABEL_20:

LABEL_27:
    v36 = 1;
    goto LABEL_28;
  }

  v14 = +[PPLocalNamedEntityStore defaultStore];
  v61 = 0;
  v15 = [v14 deleteAllNamedEntitiesFromSourcesWithBundleId:@"com.apple.CoreRoutine" deletedCount:0 error:&v61];
  v16 = v61;

  if ((v15 & 1) == 0)
  {
    v17 = pp_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v16;
      _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "PPRoutineSupport failed to purge CoreRoutine locations from PPNamedEntityStore: %@", &buf, 0xCu);
    }
  }

  v18 = +[PPLocalLocationStore defaultStore];
  v60 = 0;
  v19 = [v18 deleteAllLocationsFromSourcesWithBundleId:@"com.apple.CoreRoutine" deletedCount:0 error:&v60];
  v20 = v60;

  if ((v19 & 1) == 0)
  {
    v21 = pp_default_log_handle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v20;
      _os_log_impl(&dword_23224A000, v21, OS_LOG_TYPE_DEFAULT, "PPRoutineSupport failed to purge CoreRoutine locations from PPLocationStore: %@", &buf, 0xCu);
    }
  }

  if ((v4[2](v4) & 1) == 0)
  {
    v38 = pp_default_log_handle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23224A000, v38, OS_LOG_TYPE_DEFAULT, "PPRoutineSupport: deferring after deletions.", &buf, 2u);
    }

    goto LABEL_27;
  }

  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 1;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__3148;
  v65 = __Block_byref_object_dispose__3149;
  v66 = 0;
  v22 = objc_opt_new();
  v23 = [v22 dateByAddingTimeInterval:-4233600.0];
  v24 = defaultRTRoutineManager();
  if (v24)
  {
    v25 = +[PPConfiguration sharedInstance];
    [v25 routineExtractionScoreCountWeight];
    v27 = v26;

    v28 = +[PPConfiguration sharedInstance];
    [v28 routineExtractionScoreDurationWeight];
    v30 = v29;

    v31 = +[PPConfiguration sharedInstance];
    [v31 routineExtractionScoreDecayHalfLifeDays];
    v33 = v32;

    v34 = dispatch_semaphore_create(0);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __71__PPRoutineSupport_importCoreRoutineDataWithError_shouldContinueBlock___block_invoke;
    v44[3] = &unk_2789724C8;
    p_buf = &buf;
    v48 = &v56;
    v35 = v34;
    v45 = v35;
    v49 = a1;
    v46 = v4;
    v50 = v27;
    v51 = v30;
    v52 = 0.693 / (v33 * 86400.0);
    v53 = v11;
    v54 = v13;
    [v24 fetchLocationsOfInterestVisitedBetweenStartDate:v23 endDate:v22 withHandler:v44];
    [MEMORY[0x277D425A0] waitForSemaphore:v35];

    v36 = *(v57 + 24);
    if (a3 && (v57[3] & 1) == 0)
    {
      *a3 = *(*(&buf + 1) + 40);
      v36 = *(v57 + 24);
    }
  }

  else
  {
    v41 = pp_default_log_handle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *v55 = 0;
      _os_log_error_impl(&dword_23224A000, v41, OS_LOG_TYPE_ERROR, "PPRoutineSupport failed to initialize default RTRoutineManager.", v55, 2u);
    }

    if (a3)
    {
      *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D3A580] code:25 userInfo:0];
    }

    v36 = 0;
  }

  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v56, 8);
LABEL_28:

  v39 = *MEMORY[0x277D85DE8];
  return v36 & 1;
}

void __71__PPRoutineSupport_importCoreRoutineDataWithError_shouldContinueBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v169 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pp_default_log_handle();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v6;
      _os_log_error_impl(&dword_23224A000, v8, OS_LOG_TYPE_ERROR, "PPRoutineSupport fetchLOI query failure: %@", buf, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    *(*(*(a1 + 56) + 8) + 24) = 0;
    dispatch_semaphore_signal(*(a1 + 32));
    goto LABEL_86;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = [v5 count];
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "PPRoutineSupport found %tu LOIs", buf, 0xCu);
  }

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 64);
  objc_opt_self();
  v11 = objc_opt_new();
  [v11 setLimit:-1];
  v12 = +[PPLocalLocationStore defaultStore];
  v163 = 0;
  v13 = [v12 locationRecordsWithQuery:v11 error:&v163];
  v14 = v163;

  if (v13)
  {
    v15 = [PPLocationClusterID lookupTableWithRecords:v13];
  }

  else
  {
    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v14;
      _os_log_error_impl(&dword_23224A000, v16, OS_LOG_TYPE_ERROR, "PPRoutineSupport error during unlimited record query: %@", buf, 0xCu);
    }

    v15 = 0;
  }

  objc_autoreleasePoolPop(v9);
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  obj = v5;
  v127 = [obj countByEnumeratingWithState:&v159 objects:v165 count:16];
  if (!v127)
  {
    goto LABEL_85;
  }

  v124 = v5;
  v17 = 0;
  v18 = 0;
  v125 = *v160;
  v126 = v15;
  while (2)
  {
    for (i = 0; i != v127; i = v121 + 1)
    {
      if (*v160 != v125)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v159 + 1) + 8 * i);
      v21 = objc_autoreleasePoolPush();
      if (((*(*(a1 + 40) + 16))() & 1) == 0)
      {
        v122 = pp_default_log_handle();
        if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v122, OS_LOG_TYPE_DEFAULT, "PPRoutineSupport: deferring during result iteration.", buf, 2u);
        }

        objc_autoreleasePoolPop(v21);
        goto LABEL_84;
      }

      v143 = v18;
      v144 = v17;
      v129 = i;
      v130 = v21;
      v151 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{9 * objc_msgSend(obj, "count")}];
      v150 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(obj, "count")}];
      v22 = [v20 mapItem];
      v23 = [v22 address];

      v137 = MEMORY[0x277D3A3F8];
      v149 = v20;
      v145 = [v20 mapItem];
      v141 = [v145 name];
      v139 = [v23 thoroughfare];
      v136 = [v23 subThoroughfare];
      v135 = [v23 locality];
      v147 = [v23 subLocality];
      v134 = [v23 administrativeArea];
      v133 = [v23 subAdministrativeArea];
      v132 = [v23 postalCode];
      v131 = [v23 countryCode];
      v24 = [v23 country];
      v25 = [v23 inlandWater];
      v26 = [v23 ocean];
      v27 = [v23 areasOfInterest];
      v138 = [v137 placemarkWithLatitudeDegrees:0 longitudeDegrees:0 name:v141 thoroughfare:v139 subthoroughFare:v136 locality:v135 subLocality:v147 administrativeArea:v134 subAdministrativeArea:v133 postalCode:v132 countryCode:v131 country:v24 inlandWater:v25 ocean:v26 areasOfInterest:v27];

      v28 = *(a1 + 64);
      v29 = v23;
      v30 = v138;
      v31 = v126;
      objc_opt_self();
      v32 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:9];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __81__PPRoutineSupport__scoredNamedEntitiesForAddress_placemark_locationLookupTable___block_invoke;
      v167 = &unk_2789724A0;
      v33 = v32;
      v168 = v33;
      v34 = _Block_copy(buf);
      v35 = [v30 postalAddress];
      v148 = [v35 street];
      v36 = [v30 name];

      v146 = v30;
      if (v36)
      {
        v37 = [v30 name];
        v34[2](v34, v37, 3);
      }

      else
      {
        v38 = v149;
        if (!v126)
        {
          goto LABEL_25;
        }

        v140 = v35;
        v142 = v33;
        v39 = [PPLocationClusterID alloc];
        v40 = [v29 subThoroughfare];
        v41 = [v29 thoroughfare];
        v42 = [v29 subLocality];
        v43 = [v29 locality];
        [v29 administrativeArea];
        v45 = v44 = v31;
        v37 = [(PPLocationClusterID *)v39 initWithName:0 subThoroughfare:v40 thoroughfare:v41 subLocality:v42 locality:v43 administrativeArea:v45];

        v31 = v44;
        v46 = [v44 objectForKeyedSubscript:v37];
        v47 = [v46 location];
        v48 = [v47 placemark];
        v49 = [v48 name];

        if (v49)
        {
          v50 = [v46 location];
          v51 = [v50 placemark];
          v52 = [v51 name];
          v34[2](v34, v52, 3);
        }

        v30 = v146;
        v35 = v140;
        v33 = v142;
      }

      v38 = v149;
LABEL_25:
      if ([v148 length])
      {
        v34[2](v34, v148, 8);
      }

      v53 = [v29 subLocality];
      v54 = [v53 length];

      if (v54)
      {
        v55 = [v29 subLocality];
        v34[2](v34, v55, 9);
      }

      v56 = [v29 locality];
      v57 = [v56 length];

      if (v57)
      {
        v58 = [v29 locality];
        v34[2](v34, v58, 9);
      }

      v59 = [v29 administrativeArea];
      v60 = [v59 length];

      if (v60)
      {
        v61 = [v29 administrativeArea];
        v34[2](v34, v61, 10);
      }

      v62 = [v29 administrativeAreaCode];
      v63 = [v62 length];

      if (v63)
      {
        v64 = [v29 administrativeAreaCode];
        v34[2](v34, v64, 10);
      }

      v65 = [v29 country];
      v66 = [v65 length];

      if (v66)
      {
        v67 = [v29 country];
        v34[2](v34, v67, 11);
      }

      v68 = [v29 countryCode];
      v69 = [v68 length];

      if (v69)
      {
        v70 = [v29 countryCode];
        v34[2](v34, v70, 11);
      }

      v71 = [v29 locality];
      v72 = [v71 length];

      if (v72)
      {
        v73 = [MEMORY[0x277CBDB80] singleLineStringFromPostalAddress:v35 addCountryName:0];
        if (v73)
        {
          v34[2](v34, v73, 12);
        }
      }

      v74 = v33;

      [v151 addObjectsFromArray:v74];
      v75 = objc_alloc(MEMORY[0x277D3A3D8]);
      v76 = [v38 type];
      objc_opt_self();
      if ((v76 + 1) > 4)
      {
        v77 = 5;
      }

      else
      {
        v77 = word_232418944[v76 + 1];
      }

      v78 = [v75 initWithPlacemark:v30 category:v77 mostRelevantRecord:0];
      v155 = 0u;
      v156 = 0u;
      v157 = 0u;
      v158 = 0u;
      v79 = [v38 visits];
      v80 = [v79 countByEnumeratingWithState:&v155 objects:v164 count:16];
      if (v80)
      {
        v81 = v80;
        v82 = *v156;
        v83 = 0.0;
        do
        {
          for (j = 0; j != v81; ++j)
          {
            if (*v156 != v82)
            {
              objc_enumerationMutation(v79);
            }

            v85 = *(*(&v155 + 1) + 8 * j);
            v86 = *(a1 + 72);
            v87 = [v85 exitDate];
            v88 = [v85 entryDate];
            [v87 timeIntervalSinceDate:v88];
            v90 = v86 + log2(v89 + 1.0) * *(a1 + 80);

            v91 = *(a1 + 88);
            v92 = [v85 exitDate];
            [v92 timeIntervalSinceNow];
            v83 = v83 + v90 * exp(-fabs(v91 * v93));
          }

          v81 = [v79 countByEnumeratingWithState:&v155 objects:v164 count:16];
        }

        while (v81);
      }

      else
      {
        v83 = 0.0;
      }

      v94 = [objc_alloc(MEMORY[0x277D3A4A8]) initWithLocation:v78 score:v83 / (v83 + 1.0) sentimentScore:0.0];
      [v150 addObject:v94];
      v95 = pp_default_log_handle();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        v96 = [v151 count];
        v97 = [v150 count];
        *buf = 134218240;
        *&buf[4] = v96;
        *&buf[12] = 2048;
        *&buf[14] = v97;
        _os_log_impl(&dword_23224A000, v95, OS_LOG_TYPE_DEFAULT, "PPRoutineSupport extracted %tu entities and %tu locations from LOI", buf, 0x16u);
      }

      v98 = [v149 visits];
      v99 = [v98 lastObject];
      v18 = [v99 exitDate];

      v100 = objc_alloc(MEMORY[0x277D3A4D8]);
      v101 = objc_opt_new();
      v102 = [v101 UUIDString];
      v103 = objc_opt_new();
      v17 = [v100 initWithBundleId:@"com.apple.CoreRoutine" groupId:0 documentId:v102 date:v103 relevanceDate:v18 contactHandles:0 language:0 metadata:0];

      if ([v151 count] && *(a1 + 96) == 1)
      {
        v104 = +[PPLocalNamedEntityStore defaultStore];
        v154 = 0;
        v105 = [v104 donateNamedEntities:v151 source:v17 algorithm:3 cloudSync:0 sentimentScore:&v154 error:0.0];
        v106 = v154;

        if (v105)
        {
          v107 = +[PPLocalNamedEntityStore defaultStore];
          v153 = 0;
          v108 = [v107 flushDonationsWithError:&v153];
          v109 = v153;

          if ((v108 & 1) == 0)
          {
            v110 = pp_default_log_handle();
            if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v109;
              _os_log_impl(&dword_23224A000, v110, OS_LOG_TYPE_DEFAULT, "PPRoutineSupport: importCoreRoutineDataWithCompletion: Warning: failed to flush: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v111 = pp_default_log_handle();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v106;
            _os_log_error_impl(&dword_23224A000, v111, OS_LOG_TYPE_ERROR, "PPRoutineSupport failed to store CoreRoutine-derived named entities: %@", buf, 0xCu);
          }

          *(*(*(a1 + 56) + 8) + 24) = 0;
          v112 = *(*(a1 + 48) + 8);
          v113 = v106;
          v109 = *(v112 + 40);
          *(v112 + 40) = v113;
        }
      }

      v114 = v150;
      if ([v150 count] && *(a1 + 97) == 1)
      {
        v115 = +[PPLocalLocationStore defaultStore];
        v152 = 0;
        v116 = [v115 donateLocations:v150 source:v17 contextualNamedEntities:0 algorithm:3 cloudSync:0 error:&v152];
        v117 = v152;
        v118 = v152;

        if ((v116 & 1) == 0)
        {
          v119 = pp_default_log_handle();
          if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v118;
            _os_log_error_impl(&dword_23224A000, v119, OS_LOG_TYPE_ERROR, "PPRoutineSupport failed to store CoreRoutine-derived locations: %@", buf, 0xCu);
          }

          *(*(*(a1 + 56) + 8) + 24) = 0;
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v117);
        }

        v121 = v129;
        v120 = v130;
        v114 = v150;
      }

      else
      {
        v118 = pp_default_log_handle();
        if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = 0;
          _os_log_impl(&dword_23224A000, v118, OS_LOG_TYPE_DEFAULT, "PPRoutineSupport failed to submit CoreRoutine locations to location store: %@", buf, 0xCu);
        }

        v121 = v129;
        v120 = v130;
      }

      objc_autoreleasePoolPop(v120);
    }

    v127 = [obj countByEnumeratingWithState:&v159 objects:v165 count:16];
    if (v127)
    {
      continue;
    }

    break;
  }

LABEL_84:

  v6 = 0;
  v5 = v124;
  v15 = v126;
LABEL_85:

  dispatch_semaphore_signal(*(a1 + 32));
LABEL_86:

  v123 = *MEMORY[0x277D85DE8];
}

void __81__PPRoutineSupport__scoredNamedEntitiesForAddress_placemark_locationLookupTable___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = pp_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v14 = [MEMORY[0x277D3A420] describeCategory:a3];
    v15 = 138412290;
    v16 = v14;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "PPRoutineSupport adding entity of category %@", &v15, 0xCu);
  }

  v7 = pp_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138739971;
    v16 = v5;
    _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "PPRoutineSupport adding entity: %{sensitive}@", &v15, 0xCu);
  }

  v8 = objc_alloc(MEMORY[0x277D3A420]);
  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v9 languageCode];
  v11 = [v8 initWithName:v5 category:a3 language:v10];

  v12 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v11 score:1.0];
  [*(a1 + 32) addObject:v12];

  v13 = *MEMORY[0x277D85DE8];
}

@end