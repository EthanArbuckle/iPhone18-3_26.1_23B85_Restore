@interface PPNamedEntityExtractionPlugin
+ (id)sharedInstance;
- (BOOL)_processUserActivity:(id)a3 extractionContainer:(id)a4 rawTextOut:(id *)a5 language:(id)a6;
- (PPNamedEntityExtractionPlugin)init;
- (PPNamedEntityExtractionPlugin)initWithNamedEntityDissector:(id)a3;
- (id)_entityContainersForContent:(id)a3 contentDataSource:(id)a4 isOutgoing:(BOOL)a5 contactHandles:(id)a6 uniqueIdentifier:(id)a7 domainIdentifier:(id)a8 bundleIdentifier:(id)a9;
- (id)_entityContainersForUserAction:(id)a3 searchableItem:(id)a4;
- (id)_extractionCountForContainers:(id)a3;
- (id)_extractionsFromEntityContainers:(id)a3;
- (id)consumeSearchableUserActivityWithContext:(id)a3;
- (id)consumeUserActivityMetadataWithContext:(id)a3;
- (id)entityContainersForUserActivity:(id)a3;
- (void)_processCSSearchableItemLocationWithName:(id)a3 thoroughfare:(id)a4 city:(id)a5 state:(id)a6 country:(id)a7 postalCode:(id)a8 latitude:(id)a9 longitude:(id)a10 extractionContainer:(id)a11;
- (void)_writeAndFlushContainers:(id)a3;
@end

@implementation PPNamedEntityExtractionPlugin

- (id)entityContainersForUserActivity:(id)a3
{
  v132 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[PPHarvestingUtils appBlocklist];
  v5 = [v3 bundleId];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    v7 = pp_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v3 bundleId];
      *buf = 138412290;
      v129 = v8;
      _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_INFO, "PPNamedEntityExtractionPlugin: entityContainersForUserActivity: blocking NSUA from %@", buf, 0xCu);
    }

    v9 = 0;
    goto LABEL_49;
  }

  v7 = [v3 searchableItem];
  v115 = [MEMORY[0x277D41E30] searchableItemIsOutgoing:v7];
  v116 = objc_opt_new();
  v123 = objc_opt_new();
  v122 = [PPHarvestingUtils contactHandlesForSearchableItem:v7];
  v10 = [MEMORY[0x277CBEAF8] currentLocale];
  v11 = [v10 localeIdentifier];

  v124 = objc_opt_new();
  v12 = [v7 attributeSet];
  v13 = [v12 thoroughfare];
  v14 = isNontrivialString(v13);

  v15 = 0x27896F000uLL;
  v126 = v11;
  if (v14)
  {
    v16 = [v7 attributeSet];
    v17 = [v16 thoroughfare];
    v118 = _PASCollapseWhitespaceAndStrip();

    v18 = [v7 attributeSet];
    v19 = [v18 subThoroughfare];
    if (isNontrivialString(v19))
    {
      v20 = [v7 attributeSet];
      v21 = [v20 subThoroughfare];
      v22 = _PASCollapseWhitespaceAndStrip();

      v11 = v126;
    }

    else
    {
      v22 = 0;
    }

    v113 = v22;
    v23 = [PPNamedEntitySupport streetAddressFromThoroughfare:v118 subThoroughfare:v22];
    if (v23)
    {
      v24 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v23 category:8 language:v11];
      v25 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v24 score:1.0];
      [v124 addObject:v25];

      v26 = v23;
    }
  }

  else
  {
    v113 = 0;
    v118 = 0;
    v23 = 0;
  }

  v27 = [v7 attributeSet];
  v28 = [v27 city];
  v29 = isNontrivialString(v28);

  if (v29)
  {
    v30 = [v7 attributeSet];
    v31 = [v30 city];
    v32 = _PASCollapseWhitespaceAndStrip();

    v121 = v32;
    v33 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v32 category:9 language:v11];
    v34 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v33 score:1.0];
    [v124 addObject:v34];
  }

  else
  {
    v121 = 0;
  }

  v35 = [v7 attributeSet];
  v36 = [v35 stateOrProvince];
  v37 = isNontrivialString(v36);

  if (v37)
  {
    v38 = [v7 attributeSet];
    v39 = [v38 stateOrProvince];
    v120 = _PASCollapseWhitespaceAndStrip();
  }

  else
  {
    v120 = 0;
  }

  v40 = [v7 attributeSet];
  v41 = [v40 postalCode];
  v42 = isNontrivialString(v41);

  if (v42)
  {
    v43 = [v7 attributeSet];
    v44 = [v43 postalCode];
    v119 = _PASCollapseWhitespaceAndStrip();
  }

  else
  {
    v119 = 0;
  }

  v45 = [v7 attributeSet];
  v46 = [v45 country];
  v47 = isNontrivialString(v46);

  if (v47)
  {
    v48 = [v7 attributeSet];
    v49 = [v48 country];
    v50 = _PASCollapseWhitespaceAndStrip();

    v51 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v50 category:11 language:v11];
    v52 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v51 score:1.0];
    v53 = v124;
    [v124 addObject:v52];

    v54 = v50;
    v15 = 0x27896F000;
  }

  else
  {
    v54 = 0;
    v53 = v124;
  }

  v114 = v54;
  v55 = [*(v15 + 2960) fullAddressForStreetAddress:v23 city:v121 state:v120 postalCode:v119 country:?];
  if (v55)
  {
    v56 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v55 category:12 language:v11];
    v57 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v56 score:1.0];
    [v53 addObject:v57];
  }

  v58 = objc_opt_new();
  [v58 setEntities:v53];
  v111 = v55;
  v59 = [objc_alloc(MEMORY[0x277D3A4E0]) initWithDwellTimeSeconds:0 lengthSeconds:0 lengthCharacters:objc_msgSend(v55 donationCount:"length") contactHandleCount:0 flags:{objc_msgSend(v122, "count"), v115}];
  v60 = objc_alloc(MEMORY[0x277D3A4D8]);
  v61 = [v3 bundleId];
  v62 = [v3 domainId];
  v63 = [v3 uniqueId];
  v110 = v59;
  v64 = [v60 initWithBundleId:v61 groupId:v62 documentId:v63 date:v123 relevanceDate:0 contactHandles:v122 language:v126 metadata:v59];
  [v58 setSource:v64];

  v65 = v126;
  [v58 setEntityAlgorithm:5];
  [v58 setCloudSync:0];
  [v58 setDecayRate:*MEMORY[0x277D3A758]];
  v66 = [v3 userActivity];
  v127 = 0;
  [(PPNamedEntityExtractionPlugin *)self _processUserActivity:v66 extractionContainer:v58 rawTextOut:&v127 language:v126];
  v67 = v127;

  v68 = [v7 attributeSet];
  v69 = [v68 title];

  v70 = [v7 attributeSet];
  v71 = [v70 namedLocation];

  v72 = objc_opt_new();
  if ([v67 length])
  {
    [v72 addObject:v67];
  }

  if ([v69 length])
  {
    [v72 addObject:v69];
  }

  v112 = v23;
  if ([v71 length])
  {
    [v72 addObject:v71];
  }

  v108 = v72;
  v109 = v71;
  v73 = [v72 _pas_componentsJoinedByString:@"\n\n"];
  v74 = pp_default_log_handle();
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    v75 = [v7 uniqueIdentifier];
    v76 = [v73 length];
    *buf = 138412546;
    v129 = v75;
    v130 = 2048;
    v131 = v76;
    _os_log_impl(&dword_23224A000, v74, OS_LOG_TYPE_DEFAULT, "PPNamedEntityExtractionPlugin: entityContainersForUserActivity: %@: text content length: %tu", buf, 0x16u);
  }

  v117 = v3;
  if ([v73 length])
  {
    v107 = v67;
    v77 = +[PPConfiguration sharedInstance];
    v78 = [v77 isMultilingual];

    if (v78)
    {
      v79 = MEMORY[0x277D3A248];
      v80 = [MEMORY[0x277D3A578] preferredLanguages];
      v81 = [v79 detectLanguageFromTextHeuristicallyWithLanguages:v73 languages:v80 defaultLanguage:0];

      v82 = MEMORY[0x277CBEAF8];
      if (v81)
      {
        v83 = 0;
        v84 = v81;
LABEL_41:
        v106 = v69;
        v85 = [v82 componentsFromLocaleIdentifier:v84];
        v86 = [v85 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

        if (v83)
        {
        }

        v87 = [objc_alloc(MEMORY[0x277D3A4E0]) initWithDwellTimeSeconds:0 lengthSeconds:0 lengthCharacters:objc_msgSend(v73 donationCount:"length") contactHandleCount:0 flags:{objc_msgSend(v122, "count"), v115}];
        v88 = objc_alloc(MEMORY[0x277D3A4D8]);
        v89 = [v117 bundleId];
        v90 = [v117 domainId];
        v91 = [v117 uniqueId];
        v92 = [v88 initWithBundleId:v89 groupId:v90 documentId:v91 date:v123 relevanceDate:0 contactHandles:v122 language:v86 metadata:v87];

        v93 = +[PPConfiguration sharedInstance];
        v94 = [v7 bundleID];
        v95 = [v93 extractionAlgorithmsForBundleId:v94 sourceLanguage:v86 conservative:1 domain:1];

        v96 = [(PPNamedEntityDissector *)self->_dissector entitiesInPlainText:v73 eligibleRegions:0 source:v92 cloudSync:1 algorithms:v95];
        v97 = pp_default_log_handle();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v129 = v96;
          _os_log_impl(&dword_23224A000, v97, OS_LOG_TYPE_DEFAULT, "PPNamedEntityExtractionPlugin: entityContainersForUserActivity: text extractions: %@ ", buf, 0xCu);
        }

        [v116 addObjectsFromArray:v96];
        v3 = v117;
        v65 = v126;
        v69 = v106;
        v67 = v107;
        goto LABEL_46;
      }
    }

    else
    {
      v82 = MEMORY[0x277CBEAF8];
    }

    v65 = [v82 currentLocale];
    v84 = [v65 languageCode];
    v81 = 0;
    v83 = 1;
    goto LABEL_41;
  }

LABEL_46:
  v98 = [v7 attributeSet];
  v99 = [v98 namedLocation];

  if (isNontrivialString(v99))
  {
    v100 = [v7 attributeSet];
    v101 = [v100 latitude];
    v102 = [v7 attributeSet];
    v103 = [v102 longitude];
    [(PPNamedEntityExtractionPlugin *)self _processCSSearchableItemLocationWithName:v99 thoroughfare:v118 city:v121 state:v120 country:v114 postalCode:v119 latitude:v101 longitude:v103 extractionContainer:v58];

    v3 = v117;
    v65 = v126;
  }

  v9 = v116;
  [v116 addObject:v58];

LABEL_49:
  v104 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_entityContainersForUserAction:(id)a3 searchableItem:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pp_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 bundleID];
    *buf = 138412290;
    *&buf[4] = v9;
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "PPNamedEntityExtractionPlugin received user action from %@", buf, 0xCu);
  }

  v10 = [v7 uniqueIdentifier];
  v11 = [v7 attributeSet];
  v12 = [v11 relatedUniqueIdentifier];

  if (v12)
  {
    v13 = pp_default_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "Replacing NSUA uniqueIdentifier: %@ with relatedUniqueIdentifier: %@", buf, 0x16u);
    }

    v14 = v12;
    v10 = v14;
  }

  v15 = [v7 bundleID];
  if (v15)
  {
    v16 = v10 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = v16;

  if (v17)
  {
    v18 = pp_default_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEBUG, "PPNamedEntityExtractionPlugin suppressing NSUA with missing fields", buf, 2u);
    }

    v19 = 0;
  }

  else
  {
    v20 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v35 = __Block_byref_object_copy__8071;
    v36 = __Block_byref_object_dispose__8072;
    v37 = 0;
    v21 = MEMORY[0x277CC1EF0];
    v22 = [v6 uaIdentifier];
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __79__PPNamedEntityExtractionPlugin__entityContainersForUserAction_searchableItem___block_invoke;
    v31 = &unk_278973D38;
    v33 = buf;
    v18 = v20;
    v32 = v18;
    v23 = [v21 _fetchUserActivityWithUUID:v22 intervalToWaitForDocumentSynchronizationToComplete:&v28 completionHandler:5.0];

    [MEMORY[0x277D425A0] waitForSemaphore:{v18, v28, v29, v30, v31}];
    v24 = objc_alloc(MEMORY[0x277D41E38]);
    v25 = [v24 initWithUserActivity:*(*&buf[8] + 40) searchableItem:v7];
    v19 = [(PPNamedEntityExtractionPlugin *)self entityContainersForUserActivity:v25];

    _Block_object_dispose(buf, 8);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v19;
}

void __79__PPNamedEntityExtractionPlugin__entityContainersForUserAction_searchableItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_error_impl(&dword_23224A000, v8, OS_LOG_TYPE_ERROR, "PPNamedEntityExtractionPlugin failed to fetch user activity: %@", &v10, 0xCu);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_processCSSearchableItemLocationWithName:(id)a3 thoroughfare:(id)a4 city:(id)a5 state:(id)a6 country:(id)a7 postalCode:(id)a8 latitude:(id)a9 longitude:(id)a10 extractionContainer:(id)a11
{
  v17 = MEMORY[0x277D3A3F8];
  v18 = a11;
  v21 = [v17 placemarkWithLatitudeDegrees:a9 longitudeDegrees:a10 name:a3 thoroughfare:a4 subthoroughFare:0 locality:a5 subLocality:0 administrativeArea:a6 subAdministrativeArea:0 postalCode:a8 countryCode:0 country:a7 inlandWater:0 ocean:0 areasOfInterest:0];
  v19 = [objc_alloc(MEMORY[0x277D3A3D8]) initWithPlacemark:v21 category:0 mostRelevantRecord:0];
  v20 = [objc_alloc(MEMORY[0x277D3A4A8]) initWithLocation:v19 score:1.0 sentimentScore:0.0];
  [v18 addLocation:v20 algorithm:5];
}

- (BOOL)_processUserActivity:(id)a3 extractionContainer:(id)a4 rawTextOut:(id *)a5 language:(id)a6
{
  v68 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (v9)
  {
    v12 = [v9 _payloadForIdentifier:@"UAMKMapItemPayload"];
    if (v12)
    {
      v65 = 0;
      v13 = [MEMORY[0x277CCAC58] propertyListWithData:v12 options:0 format:0 error:&v65];
      v14 = v65;
      v15 = v13 != 0;
      if (v13)
      {
        v60 = v13;
        v16 = [PPLocalLocationStore locationFromMapItemDictionary:v13];
        if (v16)
        {
          v17 = [objc_alloc(MEMORY[0x277D3A4A8]) initWithLocation:v16 score:1.0 sentimentScore:0.0];
          [v10 addLocation:v17 algorithm:5];
        }

        v62 = v14;
        v63 = v12;
        v64 = v9;
        v18 = [v16 placemark];
        v19 = [v18 name];

        if ([v19 length])
        {
          v20 = pp_default_log_handle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138739971;
            v67 = v19;
            _os_log_debug_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEBUG, "PPNamedEntityExtractionPlugin found location name from MapItem data in NSUA: %{sensitive}@", buf, 0xCu);
          }

          v21 = v16;

          if (a5)
          {
            v22 = v19;
            *a5 = v19;
          }

          v23 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v19 category:3 language:v11];
          v24 = objc_autoreleasePoolPush();
          v25 = [v10 entities];
          v26 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v23 score:1.0];
          v27 = [v25 arrayByAddingObject:v26];

          objc_autoreleasePoolPop(v24);
          [v10 setEntities:v27];

          v16 = v21;
        }

        v57 = v19;
        v61 = v15;
        v28 = [v16 placemark];
        v29 = [v28 thoroughfare];
        v30 = [v16 placemark];
        v31 = [v30 subThoroughfare];
        v32 = [PPNamedEntitySupport streetAddressFromThoroughfare:v29 subThoroughfare:v31];

        v56 = [v16 placemark];
        v33 = [v56 locality];
        v34 = [v16 placemark];
        v35 = [v34 administrativeArea];
        [v16 placemark];
        v59 = v11;
        v37 = v36 = v10;
        v38 = [v37 postalCode];
        v58 = v16;
        v39 = v16;
        v40 = v32;
        v41 = [v39 placemark];
        v42 = [v41 country];
        v43 = [PPNamedEntitySupport fullAddressForStreetAddress:v40 city:v33 state:v35 postalCode:v38 country:v42];

        v10 = v36;
        v11 = v59;

        if ([v43 length])
        {
          v44 = objc_autoreleasePoolPush();
          v45 = pp_default_log_handle();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138739971;
            v67 = v43;
            _os_log_debug_impl(&dword_23224A000, v45, OS_LOG_TYPE_DEBUG, "PPNamedEntityExtractionPlugin found street address in NSUA: %{sensitive}@", buf, 0xCu);
          }

          v46 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v43 category:12 language:v59];
          v47 = [v10 entities];
          v48 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v46 score:1.0];
          v49 = [v47 arrayByAddingObject:v48];
          [v10 setEntities:v49];

          objc_autoreleasePoolPop(v44);
        }

        v12 = v63;
        v9 = v64;
        v14 = v62;
        v15 = v61;
        v13 = v60;
        v50 = v58;
      }

      else
      {
        v50 = pp_default_log_handle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v67 = v14;
          _os_log_impl(&dword_23224A000, v50, OS_LOG_TYPE_DEFAULT, "PPNamedEntityExtractionPlugin failed to deserialize MKMapItem dict: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v14 = pp_default_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v51 = [v9 _uniqueIdentifier];
        [v51 UUIDString];
        v53 = v52 = v10;
        *buf = 138412290;
        v67 = v53;
        _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "PPNamedEntityExtractionPlugin found no MKMapItem in NSUA %@.", buf, 0xCu);

        v10 = v52;
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v54 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)_extractionsFromEntityContainers:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v11 entities];

        if (v12)
        {
          v13 = [v11 entities];
          v14 = [v11 source];
          v15 = +[PPLocalNamedEntityStore recordsForNamedEntities:source:algorithm:](PPLocalNamedEntityStore, "recordsForNamedEntities:source:algorithm:", v13, v14, [v11 entityAlgorithm]);
          [v4 addObjectsFromArray:v15];
        }

        v16 = [v11 topics];

        if (v16)
        {
          v17 = [v11 topics];
          v18 = [v11 source];
          v19 = +[PPLocalTopicStore recordsForTopics:source:algorithm:](PPLocalTopicStore, "recordsForTopics:source:algorithm:", v17, v18, [v11 topicAlgorithm]);
          [v5 addObjectsFromArray:v19];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  v20 = objc_alloc(MEMORY[0x277D3A3B0]);
  if ([v4 count])
  {
    v21 = v4;
  }

  else
  {
    v21 = 0;
  }

  if ([v5 count])
  {
    v22 = v5;
  }

  else
  {
    v22 = 0;
  }

  v23 = [v20 initWithNamedEntityRecords:v21 topicRecords:v22];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_entityContainersForContent:(id)a3 contentDataSource:(id)a4 isOutgoing:(BOOL)a5 contactHandles:(id)a6 uniqueIdentifier:(id)a7 domainIdentifier:(id)a8 bundleIdentifier:(id)a9
{
  v43 = a5;
  v50 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v46 = a4;
  v14 = a9;
  v44 = a8;
  v15 = a7;
  v16 = a6;
  v17 = [v13 length];
  if (v17 >= 0xC8000)
  {
    v18 = 819200;
  }

  else
  {
    v18 = v17;
  }

  v19 = pp_default_log_handle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v49 = v18;
    _os_log_impl(&dword_23224A000, v19, OS_LOG_TYPE_DEFAULT, "PPNamedEntityExtractionPlugin processing text content of length: %tu", buf, 0xCu);
  }

  v20 = +[PPConfiguration sharedInstance];
  v21 = [v20 isMultilingual];

  v47 = v13;
  if (v21)
  {
    v22 = MEMORY[0x277D3A248];
    v23 = [MEMORY[0x277D3A578] preferredLanguages];
    v24 = [v22 detectLanguageFromTextHeuristicallyWithLanguages:v13 languages:v23 defaultLanguage:0];

    v25 = MEMORY[0x277CBEAF8];
    if (v24)
    {
      v26 = 0;
      v27 = v24;
      goto LABEL_11;
    }
  }

  else
  {
    v25 = MEMORY[0x277CBEAF8];
  }

  v23 = [v25 currentLocale];
  v27 = [v23 languageCode];
  v24 = 0;
  v26 = 1;
LABEL_11:
  v28 = [v25 componentsFromLocaleIdentifier:v27];
  v29 = [v28 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  if (v26)
  {
  }

  v30 = v18;
  v31 = [objc_alloc(MEMORY[0x277D3A4E0]) initWithDwellTimeSeconds:0 lengthSeconds:0 lengthCharacters:v18 donationCount:0 contactHandleCount:objc_msgSend(v16 flags:{"count"), v43}];
  v32 = objc_alloc(MEMORY[0x277D3A4D8]);
  v33 = objc_opt_new();
  v34 = [v32 initWithBundleId:v14 groupId:v44 documentId:v15 date:v33 relevanceDate:0 contactHandles:v16 language:v29 metadata:v31];

  v35 = +[PPConfiguration sharedInstance];
  v36 = [v35 extractionAlgorithmsForBundleId:v14 sourceLanguage:v29 conservative:0 domain:1];
  v37 = [v36 mutableCopy];

  LODWORD(v35) = [*MEMORY[0x277D41E88] isEqualToString:v14];
  if (v35 && (!v46 || ([v46 isEqualToString:*MEMORY[0x277D41E98]] & 1) == 0))
  {
    [v37 removeObject:&unk_284783C90];
  }

  dissector = self->_dissector;
  v39 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, v30}];
  v40 = [(PPNamedEntityDissector *)dissector entitiesInPlainText:v47 eligibleRegions:v39 source:v34 cloudSync:1 algorithms:v37];

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)_extractionCountForContainers:(id)a3
{
  v3 = &unk_284783C78;
  v4 = [a3 _pas_leftFoldWithInitialObject:&unk_284783C78 accumulate:&__block_literal_global_116_8097];
  v5 = v4;
  if (v4)
  {
    v3 = v4;
  }

  return v3;
}

id __63__PPNamedEntityExtractionPlugin__extractionCountForContainers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  LODWORD(a2) = [a2 intValue];
  v6 = [v5 numberOfExtractions];

  v7 = [v4 numberWithInt:{objc_msgSend(v6, "intValue") + a2}];

  return v7;
}

- (void)_writeAndFlushContainers:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v18 + 1) + 8 * v7++) writeSynchronous];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) flushWrites];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)consumeSearchableUserActivityWithContext:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pp_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 content];
    v17 = 138412546;
    v18 = v4;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPNamedEntityExtractionPlugin: consumeSearchableUserActivityWithContext: %@: %@", &v17, 0x16u);
  }

  v7 = [v4 content];
  v8 = [(PPNamedEntityExtractionPlugin *)self entityContainersForUserActivity:v7];
  v9 = pp_default_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 count];
    v11 = [v7 uniqueId];
    v17 = 134218242;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPNamedEntityExtractionPlugin: consumeSearchableUserActivityWithContext: got %tu containers from %@", &v17, 0x16u);
  }

  if (v8)
  {
    [(PPNamedEntityExtractionPlugin *)self _writeAndFlushContainers:v8];
  }

  v12 = MEMORY[0x277D41DF0];
  v13 = [(PPNamedEntityExtractionPlugin *)self _extractionCountForContainers:v8];
  v14 = [v12 successWithNumberOfExtractions:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)consumeUserActivityMetadataWithContext:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = pp_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 content];
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPNamedEntityExtractionPlugin: consumeUserActivityMetadataWithContext: %@: %@ - ignoring until 74452163.", &v9, 0x16u);
  }

  v6 = [MEMORY[0x277D41DF0] successWithNumberOfExtractions:&unk_284783C78];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (PPNamedEntityExtractionPlugin)init
{
  v3 = +[PPNamedEntityDissector sharedInstance];
  v4 = [(PPNamedEntityExtractionPlugin *)self initWithNamedEntityDissector:v3];

  return v4;
}

- (PPNamedEntityExtractionPlugin)initWithNamedEntityDissector:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PPNamedEntityExtractionPlugin;
  v6 = [(PPNamedEntityExtractionPlugin *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dissector, a3);
    if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
    {
      v8 = pp_default_log_handle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "PPNamedEntityExtractionPlugin: TextUnderstanding flags enabled, not registering for user activities.", v10, 2u);
      }
    }

    else
    {
      v8 = [MEMORY[0x277D41DE8] defaultCoordinator];
      [v8 registerUserActivityConsumer:v7 levelOfService:4];
    }
  }

  return v7;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken5 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken5, &__block_literal_global_8121);
  }

  v3 = sharedInstance__pasExprOnceResult_8122;

  return v3;
}

void __47__PPNamedEntityExtractionPlugin_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_8122;
  sharedInstance__pasExprOnceResult_8122 = v1;

  objc_autoreleasePoolPop(v0);
}

@end