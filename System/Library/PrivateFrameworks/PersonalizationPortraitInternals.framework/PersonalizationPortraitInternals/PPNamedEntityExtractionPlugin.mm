@interface PPNamedEntityExtractionPlugin
+ (id)sharedInstance;
- (BOOL)_processUserActivity:(id)activity extractionContainer:(id)container rawTextOut:(id *)out language:(id)language;
- (PPNamedEntityExtractionPlugin)init;
- (PPNamedEntityExtractionPlugin)initWithNamedEntityDissector:(id)dissector;
- (id)_entityContainersForContent:(id)content contentDataSource:(id)source isOutgoing:(BOOL)outgoing contactHandles:(id)handles uniqueIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier bundleIdentifier:(id)bundleIdentifier;
- (id)_entityContainersForUserAction:(id)action searchableItem:(id)item;
- (id)_extractionCountForContainers:(id)containers;
- (id)_extractionsFromEntityContainers:(id)containers;
- (id)consumeSearchableUserActivityWithContext:(id)context;
- (id)consumeUserActivityMetadataWithContext:(id)context;
- (id)entityContainersForUserActivity:(id)activity;
- (void)_processCSSearchableItemLocationWithName:(id)name thoroughfare:(id)thoroughfare city:(id)city state:(id)state country:(id)country postalCode:(id)code latitude:(id)latitude longitude:(id)self0 extractionContainer:(id)self1;
- (void)_writeAndFlushContainers:(id)containers;
@end

@implementation PPNamedEntityExtractionPlugin

- (id)entityContainersForUserActivity:(id)activity
{
  v132 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v4 = +[PPHarvestingUtils appBlocklist];
  bundleId = [activityCopy bundleId];
  v6 = [v4 containsObject:bundleId];

  if (v6)
  {
    searchableItem = pp_default_log_handle();
    if (os_log_type_enabled(searchableItem, OS_LOG_TYPE_INFO))
    {
      bundleId2 = [activityCopy bundleId];
      *buf = 138412290;
      v129 = bundleId2;
      _os_log_impl(&dword_23224A000, searchableItem, OS_LOG_TYPE_INFO, "PPNamedEntityExtractionPlugin: entityContainersForUserActivity: blocking NSUA from %@", buf, 0xCu);
    }

    v9 = 0;
    goto LABEL_49;
  }

  searchableItem = [activityCopy searchableItem];
  v115 = [MEMORY[0x277D41E30] searchableItemIsOutgoing:searchableItem];
  v116 = objc_opt_new();
  v123 = objc_opt_new();
  v122 = [PPHarvestingUtils contactHandlesForSearchableItem:searchableItem];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  v124 = objc_opt_new();
  attributeSet = [searchableItem attributeSet];
  thoroughfare = [attributeSet thoroughfare];
  v14 = isNontrivialString(thoroughfare);

  v15 = 0x27896F000uLL;
  v126 = localeIdentifier;
  if (v14)
  {
    attributeSet2 = [searchableItem attributeSet];
    thoroughfare2 = [attributeSet2 thoroughfare];
    v118 = _PASCollapseWhitespaceAndStrip();

    attributeSet3 = [searchableItem attributeSet];
    subThoroughfare = [attributeSet3 subThoroughfare];
    if (isNontrivialString(subThoroughfare))
    {
      attributeSet4 = [searchableItem attributeSet];
      subThoroughfare2 = [attributeSet4 subThoroughfare];
      v22 = _PASCollapseWhitespaceAndStrip();

      localeIdentifier = v126;
    }

    else
    {
      v22 = 0;
    }

    v113 = v22;
    v23 = [PPNamedEntitySupport streetAddressFromThoroughfare:v118 subThoroughfare:v22];
    if (v23)
    {
      v24 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v23 category:8 language:localeIdentifier];
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

  attributeSet5 = [searchableItem attributeSet];
  city = [attributeSet5 city];
  v29 = isNontrivialString(city);

  if (v29)
  {
    attributeSet6 = [searchableItem attributeSet];
    city2 = [attributeSet6 city];
    v32 = _PASCollapseWhitespaceAndStrip();

    v121 = v32;
    v33 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v32 category:9 language:localeIdentifier];
    v34 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v33 score:1.0];
    [v124 addObject:v34];
  }

  else
  {
    v121 = 0;
  }

  attributeSet7 = [searchableItem attributeSet];
  stateOrProvince = [attributeSet7 stateOrProvince];
  v37 = isNontrivialString(stateOrProvince);

  if (v37)
  {
    attributeSet8 = [searchableItem attributeSet];
    stateOrProvince2 = [attributeSet8 stateOrProvince];
    v120 = _PASCollapseWhitespaceAndStrip();
  }

  else
  {
    v120 = 0;
  }

  attributeSet9 = [searchableItem attributeSet];
  postalCode = [attributeSet9 postalCode];
  v42 = isNontrivialString(postalCode);

  if (v42)
  {
    attributeSet10 = [searchableItem attributeSet];
    postalCode2 = [attributeSet10 postalCode];
    v119 = _PASCollapseWhitespaceAndStrip();
  }

  else
  {
    v119 = 0;
  }

  attributeSet11 = [searchableItem attributeSet];
  country = [attributeSet11 country];
  v47 = isNontrivialString(country);

  if (v47)
  {
    attributeSet12 = [searchableItem attributeSet];
    country2 = [attributeSet12 country];
    v50 = _PASCollapseWhitespaceAndStrip();

    v51 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v50 category:11 language:localeIdentifier];
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
    v56 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:v55 category:12 language:localeIdentifier];
    v57 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v56 score:1.0];
    [v53 addObject:v57];
  }

  v58 = objc_opt_new();
  [v58 setEntities:v53];
  v111 = v55;
  v59 = [objc_alloc(MEMORY[0x277D3A4E0]) initWithDwellTimeSeconds:0 lengthSeconds:0 lengthCharacters:objc_msgSend(v55 donationCount:"length") contactHandleCount:0 flags:{objc_msgSend(v122, "count"), v115}];
  v60 = objc_alloc(MEMORY[0x277D3A4D8]);
  bundleId3 = [activityCopy bundleId];
  domainId = [activityCopy domainId];
  uniqueId = [activityCopy uniqueId];
  v110 = v59;
  v64 = [v60 initWithBundleId:bundleId3 groupId:domainId documentId:uniqueId date:v123 relevanceDate:0 contactHandles:v122 language:v126 metadata:v59];
  [v58 setSource:v64];

  currentLocale2 = v126;
  [v58 setEntityAlgorithm:5];
  [v58 setCloudSync:0];
  [v58 setDecayRate:*MEMORY[0x277D3A758]];
  userActivity = [activityCopy userActivity];
  v127 = 0;
  [(PPNamedEntityExtractionPlugin *)self _processUserActivity:userActivity extractionContainer:v58 rawTextOut:&v127 language:v126];
  v67 = v127;

  attributeSet13 = [searchableItem attributeSet];
  title = [attributeSet13 title];

  attributeSet14 = [searchableItem attributeSet];
  namedLocation = [attributeSet14 namedLocation];

  v72 = objc_opt_new();
  if ([v67 length])
  {
    [v72 addObject:v67];
  }

  if ([title length])
  {
    [v72 addObject:title];
  }

  v112 = v23;
  if ([namedLocation length])
  {
    [v72 addObject:namedLocation];
  }

  v108 = v72;
  v109 = namedLocation;
  v73 = [v72 _pas_componentsJoinedByString:@"\n\n"];
  v74 = pp_default_log_handle();
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [searchableItem uniqueIdentifier];
    v76 = [v73 length];
    *buf = 138412546;
    v129 = uniqueIdentifier;
    v130 = 2048;
    v131 = v76;
    _os_log_impl(&dword_23224A000, v74, OS_LOG_TYPE_DEFAULT, "PPNamedEntityExtractionPlugin: entityContainersForUserActivity: %@: text content length: %tu", buf, 0x16u);
  }

  v117 = activityCopy;
  if ([v73 length])
  {
    v107 = v67;
    v77 = +[PPConfiguration sharedInstance];
    isMultilingual = [v77 isMultilingual];

    if (isMultilingual)
    {
      v79 = MEMORY[0x277D3A248];
      preferredLanguages = [MEMORY[0x277D3A578] preferredLanguages];
      v81 = [v79 detectLanguageFromTextHeuristicallyWithLanguages:v73 languages:preferredLanguages defaultLanguage:0];

      v82 = MEMORY[0x277CBEAF8];
      if (v81)
      {
        v83 = 0;
        languageCode = v81;
LABEL_41:
        v106 = title;
        v85 = [v82 componentsFromLocaleIdentifier:languageCode];
        v86 = [v85 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

        if (v83)
        {
        }

        v87 = [objc_alloc(MEMORY[0x277D3A4E0]) initWithDwellTimeSeconds:0 lengthSeconds:0 lengthCharacters:objc_msgSend(v73 donationCount:"length") contactHandleCount:0 flags:{objc_msgSend(v122, "count"), v115}];
        v88 = objc_alloc(MEMORY[0x277D3A4D8]);
        bundleId4 = [v117 bundleId];
        domainId2 = [v117 domainId];
        uniqueId2 = [v117 uniqueId];
        v92 = [v88 initWithBundleId:bundleId4 groupId:domainId2 documentId:uniqueId2 date:v123 relevanceDate:0 contactHandles:v122 language:v86 metadata:v87];

        v93 = +[PPConfiguration sharedInstance];
        bundleID = [searchableItem bundleID];
        v95 = [v93 extractionAlgorithmsForBundleId:bundleID sourceLanguage:v86 conservative:1 domain:1];

        v96 = [(PPNamedEntityDissector *)self->_dissector entitiesInPlainText:v73 eligibleRegions:0 source:v92 cloudSync:1 algorithms:v95];
        v97 = pp_default_log_handle();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v129 = v96;
          _os_log_impl(&dword_23224A000, v97, OS_LOG_TYPE_DEFAULT, "PPNamedEntityExtractionPlugin: entityContainersForUserActivity: text extractions: %@ ", buf, 0xCu);
        }

        [v116 addObjectsFromArray:v96];
        activityCopy = v117;
        currentLocale2 = v126;
        title = v106;
        v67 = v107;
        goto LABEL_46;
      }
    }

    else
    {
      v82 = MEMORY[0x277CBEAF8];
    }

    currentLocale2 = [v82 currentLocale];
    languageCode = [currentLocale2 languageCode];
    v81 = 0;
    v83 = 1;
    goto LABEL_41;
  }

LABEL_46:
  attributeSet15 = [searchableItem attributeSet];
  namedLocation2 = [attributeSet15 namedLocation];

  if (isNontrivialString(namedLocation2))
  {
    attributeSet16 = [searchableItem attributeSet];
    latitude = [attributeSet16 latitude];
    attributeSet17 = [searchableItem attributeSet];
    longitude = [attributeSet17 longitude];
    [(PPNamedEntityExtractionPlugin *)self _processCSSearchableItemLocationWithName:namedLocation2 thoroughfare:v118 city:v121 state:v120 country:v114 postalCode:v119 latitude:latitude longitude:longitude extractionContainer:v58];

    activityCopy = v117;
    currentLocale2 = v126;
  }

  v9 = v116;
  [v116 addObject:v58];

LABEL_49:
  v104 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_entityContainersForUserAction:(id)action searchableItem:(id)item
{
  v38 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  itemCopy = item;
  v8 = pp_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [itemCopy bundleID];
    *buf = 138412290;
    *&buf[4] = bundleID;
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "PPNamedEntityExtractionPlugin received user action from %@", buf, 0xCu);
  }

  uniqueIdentifier = [itemCopy uniqueIdentifier];
  attributeSet = [itemCopy attributeSet];
  relatedUniqueIdentifier = [attributeSet relatedUniqueIdentifier];

  if (relatedUniqueIdentifier)
  {
    v13 = pp_default_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = uniqueIdentifier;
      *&buf[12] = 2112;
      *&buf[14] = relatedUniqueIdentifier;
      _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "Replacing NSUA uniqueIdentifier: %@ with relatedUniqueIdentifier: %@", buf, 0x16u);
    }

    v14 = relatedUniqueIdentifier;
    uniqueIdentifier = v14;
  }

  bundleID2 = [itemCopy bundleID];
  if (bundleID2)
  {
    v16 = uniqueIdentifier == 0;
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
    uaIdentifier = [actionCopy uaIdentifier];
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __79__PPNamedEntityExtractionPlugin__entityContainersForUserAction_searchableItem___block_invoke;
    v31 = &unk_278973D38;
    v33 = buf;
    v18 = v20;
    v32 = v18;
    v23 = [v21 _fetchUserActivityWithUUID:uaIdentifier intervalToWaitForDocumentSynchronizationToComplete:&v28 completionHandler:5.0];

    [MEMORY[0x277D425A0] waitForSemaphore:{v18, v28, v29, v30, v31}];
    v24 = objc_alloc(MEMORY[0x277D41E38]);
    v25 = [v24 initWithUserActivity:*(*&buf[8] + 40) searchableItem:itemCopy];
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

- (void)_processCSSearchableItemLocationWithName:(id)name thoroughfare:(id)thoroughfare city:(id)city state:(id)state country:(id)country postalCode:(id)code latitude:(id)latitude longitude:(id)self0 extractionContainer:(id)self1
{
  v17 = MEMORY[0x277D3A3F8];
  containerCopy = container;
  v21 = [v17 placemarkWithLatitudeDegrees:latitude longitudeDegrees:longitude name:name thoroughfare:thoroughfare subthoroughFare:0 locality:city subLocality:0 administrativeArea:state subAdministrativeArea:0 postalCode:code countryCode:0 country:country inlandWater:0 ocean:0 areasOfInterest:0];
  v19 = [objc_alloc(MEMORY[0x277D3A3D8]) initWithPlacemark:v21 category:0 mostRelevantRecord:0];
  v20 = [objc_alloc(MEMORY[0x277D3A4A8]) initWithLocation:v19 score:1.0 sentimentScore:0.0];
  [containerCopy addLocation:v20 algorithm:5];
}

- (BOOL)_processUserActivity:(id)activity extractionContainer:(id)container rawTextOut:(id *)out language:(id)language
{
  v68 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  containerCopy = container;
  languageCopy = language;
  if (activityCopy)
  {
    v12 = [activityCopy _payloadForIdentifier:@"UAMKMapItemPayload"];
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
          [containerCopy addLocation:v17 algorithm:5];
        }

        v62 = v14;
        v63 = v12;
        v64 = activityCopy;
        placemark = [v16 placemark];
        name = [placemark name];

        if ([name length])
        {
          v20 = pp_default_log_handle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138739971;
            v67 = name;
            _os_log_debug_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEBUG, "PPNamedEntityExtractionPlugin found location name from MapItem data in NSUA: %{sensitive}@", buf, 0xCu);
          }

          v21 = v16;

          if (out)
          {
            v22 = name;
            *out = name;
          }

          v23 = [objc_alloc(MEMORY[0x277D3A420]) initWithName:name category:3 language:languageCopy];
          v24 = objc_autoreleasePoolPush();
          entities = [containerCopy entities];
          v26 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v23 score:1.0];
          v27 = [entities arrayByAddingObject:v26];

          objc_autoreleasePoolPop(v24);
          [containerCopy setEntities:v27];

          v16 = v21;
        }

        v57 = name;
        v61 = v15;
        placemark2 = [v16 placemark];
        thoroughfare = [placemark2 thoroughfare];
        placemark3 = [v16 placemark];
        subThoroughfare = [placemark3 subThoroughfare];
        v32 = [PPNamedEntitySupport streetAddressFromThoroughfare:thoroughfare subThoroughfare:subThoroughfare];

        placemark4 = [v16 placemark];
        locality = [placemark4 locality];
        placemark5 = [v16 placemark];
        administrativeArea = [placemark5 administrativeArea];
        [v16 placemark];
        v59 = languageCopy;
        v37 = v36 = containerCopy;
        postalCode = [v37 postalCode];
        v58 = v16;
        v39 = v16;
        v40 = v32;
        placemark6 = [v39 placemark];
        country = [placemark6 country];
        v43 = [PPNamedEntitySupport fullAddressForStreetAddress:v40 city:locality state:administrativeArea postalCode:postalCode country:country];

        containerCopy = v36;
        languageCopy = v59;

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
          entities2 = [containerCopy entities];
          v48 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v46 score:1.0];
          v49 = [entities2 arrayByAddingObject:v48];
          [containerCopy setEntities:v49];

          objc_autoreleasePoolPop(v44);
        }

        v12 = v63;
        activityCopy = v64;
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
        _uniqueIdentifier = [activityCopy _uniqueIdentifier];
        [_uniqueIdentifier UUIDString];
        v53 = v52 = containerCopy;
        *buf = 138412290;
        v67 = v53;
        _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "PPNamedEntityExtractionPlugin found no MKMapItem in NSUA %@.", buf, 0xCu);

        containerCopy = v52;
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

- (id)_extractionsFromEntityContainers:(id)containers
{
  v31 = *MEMORY[0x277D85DE8];
  containersCopy = containers;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = containersCopy;
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
        entities = [v11 entities];

        if (entities)
        {
          entities2 = [v11 entities];
          source = [v11 source];
          v15 = +[PPLocalNamedEntityStore recordsForNamedEntities:source:algorithm:](PPLocalNamedEntityStore, "recordsForNamedEntities:source:algorithm:", entities2, source, [v11 entityAlgorithm]);
          [v4 addObjectsFromArray:v15];
        }

        topics = [v11 topics];

        if (topics)
        {
          topics2 = [v11 topics];
          source2 = [v11 source];
          v19 = +[PPLocalTopicStore recordsForTopics:source:algorithm:](PPLocalTopicStore, "recordsForTopics:source:algorithm:", topics2, source2, [v11 topicAlgorithm]);
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

- (id)_entityContainersForContent:(id)content contentDataSource:(id)source isOutgoing:(BOOL)outgoing contactHandles:(id)handles uniqueIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier bundleIdentifier:(id)bundleIdentifier
{
  outgoingCopy = outgoing;
  v50 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  sourceCopy = source;
  bundleIdentifierCopy = bundleIdentifier;
  domainIdentifierCopy = domainIdentifier;
  identifierCopy = identifier;
  handlesCopy = handles;
  v17 = [contentCopy length];
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
  isMultilingual = [v20 isMultilingual];

  v47 = contentCopy;
  if (isMultilingual)
  {
    v22 = MEMORY[0x277D3A248];
    preferredLanguages = [MEMORY[0x277D3A578] preferredLanguages];
    v24 = [v22 detectLanguageFromTextHeuristicallyWithLanguages:contentCopy languages:preferredLanguages defaultLanguage:0];

    v25 = MEMORY[0x277CBEAF8];
    if (v24)
    {
      v26 = 0;
      languageCode = v24;
      goto LABEL_11;
    }
  }

  else
  {
    v25 = MEMORY[0x277CBEAF8];
  }

  preferredLanguages = [v25 currentLocale];
  languageCode = [preferredLanguages languageCode];
  v24 = 0;
  v26 = 1;
LABEL_11:
  v28 = [v25 componentsFromLocaleIdentifier:languageCode];
  v29 = [v28 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  if (v26)
  {
  }

  v30 = v18;
  v31 = [objc_alloc(MEMORY[0x277D3A4E0]) initWithDwellTimeSeconds:0 lengthSeconds:0 lengthCharacters:v18 donationCount:0 contactHandleCount:objc_msgSend(handlesCopy flags:{"count"), outgoingCopy}];
  v32 = objc_alloc(MEMORY[0x277D3A4D8]);
  v33 = objc_opt_new();
  v34 = [v32 initWithBundleId:bundleIdentifierCopy groupId:domainIdentifierCopy documentId:identifierCopy date:v33 relevanceDate:0 contactHandles:handlesCopy language:v29 metadata:v31];

  v35 = +[PPConfiguration sharedInstance];
  v36 = [v35 extractionAlgorithmsForBundleId:bundleIdentifierCopy sourceLanguage:v29 conservative:0 domain:1];
  v37 = [v36 mutableCopy];

  LODWORD(v35) = [*MEMORY[0x277D41E88] isEqualToString:bundleIdentifierCopy];
  if (v35 && (!sourceCopy || ([sourceCopy isEqualToString:*MEMORY[0x277D41E98]] & 1) == 0))
  {
    [v37 removeObject:&unk_284783C90];
  }

  dissector = self->_dissector;
  v39 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, v30}];
  v40 = [(PPNamedEntityDissector *)dissector entitiesInPlainText:v47 eligibleRegions:v39 source:v34 cloudSync:1 algorithms:v37];

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)_extractionCountForContainers:(id)containers
{
  v3 = &unk_284783C78;
  v4 = [containers _pas_leftFoldWithInitialObject:&unk_284783C78 accumulate:&__block_literal_global_116_8097];
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

- (void)_writeAndFlushContainers:(id)containers
{
  v24 = *MEMORY[0x277D85DE8];
  containersCopy = containers;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [containersCopy countByEnumeratingWithState:&v18 objects:v23 count:16];
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
          objc_enumerationMutation(containersCopy);
        }

        [*(*(&v18 + 1) + 8 * v7++) writeSynchronous];
      }

      while (v5 != v7);
      v5 = [containersCopy countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = containersCopy;
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

- (id)consumeSearchableUserActivityWithContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = pp_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    content = [contextCopy content];
    v17 = 138412546;
    v18 = contextCopy;
    v19 = 2112;
    v20 = content;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPNamedEntityExtractionPlugin: consumeSearchableUserActivityWithContext: %@: %@", &v17, 0x16u);
  }

  content2 = [contextCopy content];
  v8 = [(PPNamedEntityExtractionPlugin *)self entityContainersForUserActivity:content2];
  v9 = pp_default_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 count];
    uniqueId = [content2 uniqueId];
    v17 = 134218242;
    v18 = v10;
    v19 = 2112;
    v20 = uniqueId;
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

- (id)consumeUserActivityMetadataWithContext:(id)context
{
  v13 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = pp_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    content = [contextCopy content];
    v9 = 138412546;
    v10 = contextCopy;
    v11 = 2112;
    v12 = content;
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

- (PPNamedEntityExtractionPlugin)initWithNamedEntityDissector:(id)dissector
{
  dissectorCopy = dissector;
  v11.receiver = self;
  v11.super_class = PPNamedEntityExtractionPlugin;
  v6 = [(PPNamedEntityExtractionPlugin *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dissector, dissector);
    if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
    {
      defaultCoordinator = pp_default_log_handle();
      if (os_log_type_enabled(defaultCoordinator, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_23224A000, defaultCoordinator, OS_LOG_TYPE_DEFAULT, "PPNamedEntityExtractionPlugin: TextUnderstanding flags enabled, not registering for user activities.", v10, 2u);
      }
    }

    else
    {
      defaultCoordinator = [MEMORY[0x277D41DE8] defaultCoordinator];
      [defaultCoordinator registerUserActivityConsumer:v7 levelOfService:4];
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