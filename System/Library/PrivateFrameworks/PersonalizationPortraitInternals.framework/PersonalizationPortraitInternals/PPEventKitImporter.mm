@interface PPEventKitImporter
+ (id)_escapedDomainIdentifierForIdentifier:(uint64_t)identifier;
+ (id)defaultInstance;
+ (uint64_t)_shouldImport;
- (BOOL)deleteAndReimportAllData;
- (PPEventKitImporter)initWithEventStore:(id)store namedEntityStore:(id)entityStore locationStore:(id)locationStore topicStore:(id)topicStore urlStore:(id)urlStore urlDissector:(id)dissector namedEntityDissector:(id)entityDissector dataDetectorMatchClass:(Class)self0 sqlDatabase:(id)self1;
- (id)_timeRangeForReimport;
- (id)importEventDataWithShouldContinueBlock:(id)block;
- (void)_donateContainerContents:(uint64_t)contents;
- (void)_flush;
- (void)_importEvent:(int)event isMostRelevantOccurrence:;
- (void)_importEvents:(uint64_t)events;
- (void)importChangedEvents:(id)events;
- (void)importEvent:(id)event;
@end

@implementation PPEventKitImporter

- (BOOL)deleteAndReimportAllData
{
  v134 = *MEMORY[0x277D85DE8];
  v93 = os_transaction_create();
  v3 = MEMORY[0x277D3A5F0];
  selfCopy = self;
  if (self)
  {
    _timeRangeForReimport = [PPEventKitImporter _timeRangeForReimport];
    startDate = [_timeRangeForReimport startDate];
    v91 = _timeRangeForReimport;
    endDate = [_timeRangeForReimport endDate];
    v7 = objc_opt_new();
    v8 = objc_opt_new();
    v9 = objc_autoreleasePoolPush();
    v10 = objc_alloc(MEMORY[0x277CBEB98]);
    v11 = *v3;
    v12 = [v10 initWithObjects:{*v3, 0}];
    objc_autoreleasePoolPop(v9);
    [v8 setMatchingSourceBundleIds:v12];

    v96 = startDate;
    [v8 setFromDate:startDate];
    obj = endDate;
    [v8 setToDate:endDate];
    [v8 setFilterByRelevanceDate:1];
    namedEntityStore = self->_namedEntityStore;
    *v120 = 0;
    *&v116 = MEMORY[0x277D85DD0];
    *(&v116 + 1) = 3221225472;
    *&v117 = __49__PPEventKitImporter__eventIdentifiersToReimport__block_invoke;
    *(&v117 + 1) = &unk_2789790F8;
    v14 = v7;
    *&v118 = v14;
    LOBYTE(v7) = [(PPLocalNamedEntityStore *)namedEntityStore iterNamedEntityRecordsWithQuery:v8 error:v120 block:&v116];
    v15 = *v120;
    if ((v7 & 1) == 0)
    {
      v16 = pp_default_log_handle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LODWORD(block) = 138412290;
        *(&block + 4) = v15;
        _os_log_error_impl(&dword_23224A000, v16, OS_LOG_TYPE_ERROR, "PPEventKitImporter: _eventIdentifiersToReimport: error from NE store: %@", &block, 0xCu);
      }
    }

    v17 = objc_opt_new();
    v18 = objc_autoreleasePoolPush();
    v19 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v11, 0}];
    objc_autoreleasePoolPop(v18);
    [v17 setMatchingSourceBundleIds:v19];

    [v17 setFromDate:v96];
    [v17 setToDate:obj];
    [v17 setFilterByRelevanceDate:1];
    locationStore = self->_locationStore;
    v103 = v15;
    v108 = MEMORY[0x277D85DD0];
    v109 = 3221225472;
    v110 = __49__PPEventKitImporter__eventIdentifiersToReimport__block_invoke_177;
    v111 = &unk_278979988;
    v21 = v14;
    v112 = v21;
    LOBYTE(locationStore) = [(PPLocalLocationStore *)locationStore iterLocationRecordsWithQuery:v17 error:&v103 block:&v108];
    v22 = v103;

    if ((locationStore & 1) == 0)
    {
      v23 = pp_default_log_handle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        LODWORD(block) = 138412290;
        *(&block + 4) = v22;
        _os_log_error_impl(&dword_23224A000, v23, OS_LOG_TYPE_ERROR, "PPEventKitImporter: _eventIdentifiersToReimport: error from Location store: %@", &block, 0xCu);
      }
    }

    v24 = objc_opt_new();
    v25 = objc_autoreleasePoolPush();
    v26 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v11, 0}];
    objc_autoreleasePoolPop(v25);
    [v24 setMatchingSourceBundleIds:v26];

    [v24 setFromDate:v96];
    [v24 setToDate:obj];
    [v24 setFilterByRelevanceDate:1];
    topicStore = self->_topicStore;
    v102 = v22;
    *&v104 = MEMORY[0x277D85DD0];
    *(&v104 + 1) = 3221225472;
    *&v105 = __49__PPEventKitImporter__eventIdentifiersToReimport__block_invoke_180;
    *(&v105 + 1) = &unk_278979120;
    v28 = v21;
    *&v106 = v28;
    LOBYTE(topicStore) = [(PPLocalTopicStore *)topicStore iterTopicRecordsWithQuery:v24 error:&v102 block:&v104];
    v29 = v102;

    if ((topicStore & 1) == 0)
    {
      v30 = pp_default_log_handle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        LODWORD(block) = 138412290;
        *(&block + 4) = v29;
        _os_log_error_impl(&dword_23224A000, v30, OS_LOG_TYPE_ERROR, "PPEventKitImporter: _eventIdentifiersToReimport: error from Topic store: %@", &block, 0xCu);
      }
    }

    v31 = [MEMORY[0x277D02528] urlsFoundBetweenStartDate:v96 endDate:obj bundleIdentifier:v11 entityStore:self->_urlStore];
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v32 = v31;
    v33 = [v32 countByEnumeratingWithState:&v121 objects:&block count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v122;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v122 != v35)
          {
            objc_enumerationMutation(v32);
          }

          groupIdentifier = [*(*(&v121 + 1) + 8 * i) groupIdentifier];
          if (groupIdentifier)
          {
            v38 = objc_autoreleasePoolPush();
            stringByRemovingPercentEncoding = [groupIdentifier stringByRemovingPercentEncoding];
            if (!stringByRemovingPercentEncoding)
            {
              v40 = pp_default_log_handle();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = groupIdentifier;
                _os_log_fault_impl(&dword_23224A000, v40, OS_LOG_TYPE_FAULT, "PPEventKitImporter: failed to remove percent encoding from %@", &buf, 0xCu);
              }

              stringByRemovingPercentEncoding = groupIdentifier;
            }

            [(PPEventKitImporter *)v28 addObject:stringByRemovingPercentEncoding];

            objc_autoreleasePoolPop(v38);
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v121 objects:&block count:16];
      }

      while (v34);
    }

    v41 = pp_default_log_handle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [(PPEventKitImporter *)v28 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v42;
      _os_log_impl(&dword_23224A000, v41, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: documentIds to reimport count: %tu", &buf, 0xCu);
    }

    v43 = [(PPEventKitImporter *)v28 _pas_mappedSetWithTransform:&__block_literal_global_186_25071];
  }

  else
  {
    v43 = 0;
  }

  v44 = v93;
  v45 = pp_default_log_handle();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(block) = 138412290;
    *(&block + 4) = v43;
    _os_log_debug_impl(&dword_23224A000, v45, OS_LOG_TYPE_DEBUG, "PPEventKitImporter: deleteAndReimportAllData will reimport %@", &block, 0xCu);
  }

  if (selfCopy)
  {
    v46 = selfCopy->_namedEntityStore;
    v47 = *MEMORY[0x277D3A5F0];
    *&v121 = 0;
    v48 = [(PPLocalNamedEntityStore *)v46 deleteAllNamedEntitiesFromSourcesWithBundleId:v47 deletedCount:0 error:&v121];
    v49 = v121;
    if (v48)
    {
      if ([MEMORY[0x277D02528] deleteAllURLsWithBundleIdentifier:v47 entityStore:0])
      {
        v50 = selfCopy->_locationStore;
        *&v116 = v49;
        v51 = [(PPLocalLocationStore *)v50 deleteAllLocationsFromSourcesWithBundleId:v47 deletedCount:0 error:&v116];
        v52 = v116;

        if (v51)
        {
          v53 = selfCopy->_topicStore;
          v108 = v52;
          v54 = [(PPLocalTopicStore *)v53 deleteAllTopicsFromSourcesWithBundleId:v47 deletedCount:0 error:&v108];
          v55 = v108;

          if (v54)
          {
            [(PPEventKitImporter *)selfCopy _flush];
            v56 = pp_default_log_handle();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(block) = 0;
              _os_log_impl(&dword_23224A000, v56, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: deleted all extractions", &block, 2u);
            }
          }

          else
          {
            v56 = pp_default_log_handle();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              LODWORD(block) = 138412290;
              *(&block + 4) = v55;
              _os_log_error_impl(&dword_23224A000, v56, OS_LOG_TYPE_ERROR, "PPEventKitImporter: failed to delete all topics: %@", &block, 0xCu);
            }
          }

          v52 = v55;
        }

        else
        {
          v56 = pp_default_log_handle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            LODWORD(block) = 138412290;
            *(&block + 4) = v52;
            _os_log_error_impl(&dword_23224A000, v56, OS_LOG_TYPE_ERROR, "PPEventKitImporter: failed to delete all locations: %@", &block, 0xCu);
          }
        }

        goto LABEL_46;
      }

      v60 = pp_default_log_handle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        LOWORD(block) = 0;
        _os_log_error_impl(&dword_23224A000, v60, OS_LOG_TYPE_ERROR, "PPEventKitImporter: failed to delete all URLs", &block, 2u);
      }

      v58 = +[PPMetricsUtils loggingQueue];
      *&block = MEMORY[0x277D85DD0];
      *(&block + 1) = 3221225472;
      v59 = __43__PPEventKitImporter__deleteAllExtractions__block_invoke_208;
    }

    else
    {
      v57 = pp_default_log_handle();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        LODWORD(block) = 138412290;
        *(&block + 4) = v49;
        _os_log_error_impl(&dword_23224A000, v57, OS_LOG_TYPE_ERROR, "PPEventKitImporter: failed to delete all named entities: %@", &block, 0xCu);
      }

      v58 = +[PPMetricsUtils loggingQueue];
      *&block = MEMORY[0x277D85DD0];
      *(&block + 1) = 3221225472;
      v59 = __43__PPEventKitImporter__deleteAllExtractions__block_invoke;
    }

    v131 = v59;
    v132 = &unk_2789790A8;
    v52 = v49;
    v133 = v52;
    dispatch_async(v58, &block);

    v56 = v133;
LABEL_46:
  }

  v61 = objc_alloc(MEMORY[0x277CBEB98]);
  importEventData = [(PPEventKitImporter *)selfCopy importEventData];
  v63 = [v61 initWithArray:importEventData];

  v64 = pp_default_log_handle();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(block) = 138412290;
    *(&block + 4) = v63;
    _os_log_debug_impl(&dword_23224A000, v64, OS_LOG_TYPE_DEBUG, "PPEventKitImporter: deleteAndReimportAllData found in standard time window: %@", &block, 0xCu);
  }

  v100[0] = MEMORY[0x277D85DD0];
  v100[1] = 3221225472;
  v100[2] = __46__PPEventKitImporter_deleteAndReimportAllData__block_invoke;
  v100[3] = &unk_2789790D0;
  v101 = v63;
  v65 = v63;
  v66 = [v43 _pas_filteredSetWithTest:v100];
  if (selfCopy)
  {
    if ((+[PPEventKitImporter _shouldImport]& 1) != 0)
    {
      v90 = v65;
      v92 = v43;
      _timeRangeForReimport2 = [PPEventKitImporter _timeRangeForReimport];
      v98 = objc_opt_new();
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v89 = v66;
      obja = v66;
      v67 = [obja countByEnumeratingWithState:&v116 objects:&block count:16];
      if (v67)
      {
        v68 = v67;
        v69 = *v117;
        do
        {
          for (j = 0; j != v68; ++j)
          {
            if (*v117 != v69)
            {
              objc_enumerationMutation(obja);
            }

            v71 = *(*(&v116 + 1) + 8 * j);
            v72 = objc_autoreleasePoolPush();
            eventStore = selfCopy->_eventStore;
            v108 = MEMORY[0x277D85DD0];
            v109 = 3221225472;
            v110 = __51__PPEventKitImporter__reimportEventsWithObjectIDs___block_invoke;
            v111 = &unk_2789799D0;
            v112 = selfCopy;
            v113 = v71;
            v114 = _timeRangeForReimport2;
            v115 = v98;
            [(PPLocalEventStore *)eventStore runBlockWithPurgerDisabled:&v108];
            [(PPLocalEventStore *)selfCopy->_eventStore attemptToPurgeImmediately];

            objc_autoreleasePoolPop(v72);
          }

          v68 = [obja countByEnumeratingWithState:&v116 objects:&block count:16];
        }

        while (v68);
      }

      v74 = objc_opt_new();
      v75 = objc_opt_new();
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v126 = __51__PPEventKitImporter__reimportEventsWithObjectIDs___block_invoke_3;
      v127 = &unk_278979190;
      v128 = v74;
      v129 = v75;
      v76 = v75;
      v77 = v74;
      v78 = [v98 _pas_mappedArrayWithTransform:&buf];

      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v79 = v78;
      v80 = [v79 countByEnumeratingWithState:&v104 objects:&v121 count:16];
      if (v80)
      {
        v81 = v80;
        v82 = *v105;
        do
        {
          for (k = 0; k != v81; ++k)
          {
            if (*v105 != v82)
            {
              objc_enumerationMutation(v79);
            }

            v84 = *(*(&v104 + 1) + 8 * k);
            v85 = pp_default_log_handle();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
            {
              *v120 = 138739971;
              *&v120[4] = v84;
              _os_log_debug_impl(&dword_23224A000, v85, OS_LOG_TYPE_DEBUG, "PPEventKitImporter: Reimported PPEvent: %{sensitive}@", v120, 0xCu);
            }
          }

          v81 = [v79 countByEnumeratingWithState:&v104 objects:&v121 count:16];
        }

        while (v81);
      }

      [(PPEventKitImporter *)selfCopy _importEvents:v79];
      v43 = v92;
      v44 = v93;
      v66 = v89;
      v65 = v90;
      v86 = _timeRangeForReimport2;
    }

    else
    {
      v86 = pp_default_log_handle();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(block) = 0;
        _os_log_impl(&dword_23224A000, v86, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: _reimportEventsWithEventIdentifiers disabled due to settings", &block, 2u);
      }
    }
  }

  v87 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (uint64_t)_shouldImport
{
  objc_opt_self();
  v0 = +[PPSettings sharedInstance];
  v1 = [v0 bundleIdentifierIsEnabledForDonation:*MEMORY[0x277D3A5F0]];

  return v1;
}

- (id)_timeRangeForReimport
{
  v0 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-604800.0];
  v1 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:1209600.0];
  v2 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v0 endDate:v1];

  return v2;
}

void __51__PPEventKitImporter__reimportEventsWithObjectIDs___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  v8[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__PPEventKitImporter__reimportEventsWithObjectIDs___block_invoke_2;
  v6[3] = &unk_278979168;
  v4 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v2 enumerateEventsFromEKObjectIDs:v3 expandingRecurrencesInRange:v4 usingBlock:v6];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_importEvents:(uint64_t)events
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!events || ![v3 count])
  {
    goto LABEL_33;
  }

  eventsCopy = events;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v39 = v4;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v8;
  v10 = *v53;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v53 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v52 + 1) + 8 * i);
      v13 = objc_autoreleasePoolPush();
      objectID = [v12 objectID];
      v15 = [v6 objectForKeyedSubscript:objectID];

      if (!v15)
      {
        goto LABEL_13;
      }

      startDate = [v12 startDate];
      [startDate timeIntervalSinceDate:date];
      v18 = v17;

      startDate2 = [v15 startDate];
      [startDate2 timeIntervalSinceDate:date];
      v21 = v20;

      if (v18 > 0.0 == v21 <= 0.0)
      {
        if (v18 <= 0.0)
        {
          goto LABEL_14;
        }

LABEL_13:
        objectID2 = [v12 objectID];
        [v6 setObject:v12 forKeyedSubscript:objectID2];

        goto LABEL_14;
      }

      if (fabs(v18) < fabs(v21))
      {
        goto LABEL_13;
      }

LABEL_14:

      objc_autoreleasePoolPop(v13);
    }

    v9 = [v7 countByEnumeratingWithState:&v52 objects:v57 count:16];
  }

  while (v9);
LABEL_16:

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__PPEventKitImporter__importEvents___block_invoke;
  aBlock[3] = &unk_278979010;
  v23 = v6;
  v50 = eventsCopy;
  v51 = sel__importEvents_;
  v49 = v23;
  v24 = _Block_copy(aBlock);
  v25 = *(eventsCopy + 48);
  v26 = pp_default_log_handle();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (v25)
  {
    if (v27)
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v26, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: _importEvents beginning SQL transaction", buf, 2u);
    }

    v28 = *(eventsCopy + 16);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __36__PPEventKitImporter__importEvents___block_invoke_126;
    v44[3] = &unk_278979060;
    v44[4] = eventsCopy;
    v45 = v7;
    v46 = v24;
    [v28 runWithLockAcquired:v44];
    v29 = pp_default_log_handle();
    v4 = v39;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v29, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: _importEvents ended SQL transaction", buf, 2u);
    }
  }

  else
  {
    if (v27)
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v26, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: _importEvents no SQL transaction due to no _sqlDatabase (this can cause some extra per-event overhead)", buf, 2u);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v30 = v7;
    v31 = [v30 countByEnumeratingWithState:&v40 objects:v56 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v41;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v41 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v40 + 1) + 8 * j);
          v36 = objc_autoreleasePoolPush();
          (*(v24 + 2))(v24, v35);
          objc_autoreleasePoolPop(v36);
        }

        v32 = [v30 countByEnumeratingWithState:&v40 objects:v56 count:16];
      }

      while (v32);
    }

    v4 = v39;
  }

  [(PPEventKitImporter *)eventsCopy _flush];

LABEL_33:
  v37 = *MEMORY[0x277D85DE8];
}

void __36__PPEventKitImporter__importEvents___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v8 = v3;
  v5 = [v3 objectID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a1[6] object:a1[5] file:@"PPEventKitImporter.m" lineNumber:309 description:{@"Invalid parameter not satisfying: %@", @"mostRelevantOccurrence"}];
  }

  [(PPEventKitImporter *)a1[5] _importEvent:v8 isMostRelevantOccurrence:v6 == v8];
}

void __36__PPEventKitImporter__importEvents___block_invoke_126(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__PPEventKitImporter__importEvents___block_invoke_2;
  v3[3] = &unk_278979038;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 writeTransactionWithClient:9 block:v3];
}

- (void)_flush
{
  v9 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v1 = *(self + 16);
    v6 = 0;
    v2 = [v1 flushDonationsWithError:&v6];
    v3 = v6;
    if ((v2 & 1) == 0)
    {
      v4 = pp_default_log_handle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v8 = v3;
        _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter failed to flush donations: %@", buf, 0xCu);
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __36__PPEventKitImporter__importEvents___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        (*(*(a1 + 40) + 16))(*(a1 + 40));
        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_importEvent:(int)event isMostRelevantOccurrence:
{
  v296 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    objectID = [v5 objectID];
    uRIRepresentation = [objectID URIRepresentation];
    absoluteString = [uRIRepresentation absoluteString];

    v10 = pp_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"no";
      *buf = 138412803;
      *&buf[4] = absoluteString;
      if (event)
      {
        v11 = @"yes";
      }

      *&buf[12] = 2112;
      *&buf[14] = v11;
      *&buf[22] = 2117;
      v294 = v6;
      _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: importing event %@ (isMostRelevantOccurrence=%@, %{sensitive}@)", buf, 0x20u);
    }

    if (!absoluteString)
    {
      startDate = pp_default_log_handle();
      if (os_log_type_enabled(startDate, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, startDate, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: suppressing import of event with nil objectID", buf, 2u);
      }

      goto LABEL_148;
    }

    startDate = [v6 startDate];
    if (!startDate)
    {
      v80 = pp_default_log_handle();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v80, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: suppressing import of event with nil startDate", buf, 2u);
      }

LABEL_147:

LABEL_148:
      goto LABEL_149;
    }

    organizerIsCurrentUser = [v6 organizerIsCurrentUser];
    attendees = [v6 attendees];
    v15 = [attendees _pas_mappedArrayWithTransform:&__block_literal_global_136_24982];

    selfCopy = self;
    v16 = [objc_alloc(MEMORY[0x277D3A4E0]) initWithDwellTimeSeconds:0 lengthSeconds:0 lengthCharacters:0 donationCount:0 contactHandleCount:-[NSObject count](v15 flags:{"count"), organizerIsCurrentUser}];
    v17 = objc_alloc(MEMORY[0x277D3A4D8]);
    eventCopy = event;
    v18 = v6;
    v19 = *MEMORY[0x277D3A5F0];
    calendar = [v18 calendar];
    calendarIdentifier = [calendar calendarIdentifier];
    v22 = objc_opt_new();
    v259 = v19;
    v262 = v16;
    v249 = v16;
    v23 = selfCopy;
    v24 = v19;
    v6 = v18;
    v264 = startDate;
    v265 = absoluteString;
    v263 = v15;
    v25 = [v17 initWithBundleId:v24 groupId:calendarIdentifier documentId:absoluteString date:v22 relevanceDate:startDate contactHandles:v15 language:0 metadata:v249];

    v266 = v18;
    if (!eventCopy)
    {
LABEL_101:
      v177 = v6;
      v178 = v25;
      memset(v286, 0, sizeof(v286));
      v287 = 0u;
      v288 = 0u;
      attendees2 = [v177 attendees];
      v180 = [attendees2 countByEnumeratingWithState:v286 objects:buf count:16];
      if (v180)
      {
        v181 = v180;
        v182 = **&v286[16];
LABEL_103:
        v183 = 0;
        while (1)
        {
          if (**&v286[16] != v182)
          {
            objc_enumerationMutation(attendees2);
          }

          v184 = *(*&v286[8] + 8 * v183);
          if ([v184 isCurrentUser])
          {
            break;
          }

          if (v181 == ++v183)
          {
            v181 = [attendees2 countByEnumeratingWithState:v286 objects:buf count:16];
            if (v181)
            {
              goto LABEL_103;
            }

            goto LABEL_114;
          }
        }

        if ([v184 status] != 3)
        {
          goto LABEL_114;
        }

        v185 = pp_default_log_handle();
        if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
        {
          eventIdentifier = [v177 eventIdentifier];
          *v281 = 138412290;
          *&v281[4] = eventIdentifier;
          _os_log_impl(&dword_23224A000, v185, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: _dissectAndDonateURLsFromEvent: ignoring declined event: %@", v281, 0xCu);
        }

        v187 = v262;
        v80 = v263;
      }

      else
      {
LABEL_114:

        startDate2 = [v177 startDate];
        if (startDate2)
        {
          endDate = [v177 endDate];
          if (endDate)
          {
            endDate2 = [v177 endDate];
            startDate3 = [v177 startDate];
            [endDate2 timeIntervalSinceDate:startDate3];
            v193 = v192;
          }

          else
          {
            v193 = 0.0;
          }
        }

        else
        {
          v193 = 0.0;
        }

        v194 = objc_alloc(MEMORY[0x277CCACA8]);
        documentId = [v178 documentId];
        startDate4 = [v177 startDate];
        [startDate4 timeIntervalSinceReferenceDate];
        attendees2 = [v194 initWithFormat:@"%@:%f", documentId, v197];

        objectID2 = [v177 objectID];
        uRIRepresentation2 = [objectID2 URIRepresentation];
        absoluteString2 = [uRIRepresentation2 absoluteString];

        if (absoluteString2)
        {
          v272 = [PPEventKitImporter _escapedDomainIdentifierForIdentifier:absoluteString2];

          v201 = [v177 url];
          absoluteString3 = [v201 absoluteString];
          v203 = [absoluteString3 length];

          if (v203)
          {
            v204 = pp_default_log_handle();
            if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
            {
              eventIdentifier2 = [v177 eventIdentifier];
              v206 = [v177 url];
              absoluteString4 = [v206 absoluteString];
              v208 = [absoluteString4 length];
              *v281 = 138412546;
              *&v281[4] = eventIdentifier2;
              v282 = 2048;
              v283 = v208;
              _os_log_impl(&dword_23224A000, v204, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: _dissectAndDonateURLsFromEvent: event %@ has URL length: %tu", v281, 0x16u);
            }

            v209 = v23[7];
            v210 = [v177 url];
            *&v289 = v210;
            v211 = [MEMORY[0x277CBEA60] arrayWithObjects:&v289 count:1];
            bundleId = [v178 bundleId];
            title = [v177 title];
            [v177 startDate];
            v215 = v214 = v178;
            v216 = objc_opt_new();
            LOBYTE(v250) = 0;
            v217 = [v209 urlsFromURLs:v211 handle:0 bundleIdentifier:bundleId domainIdentifier:v272 uniqueIdentifier:attendees2 documentTitle:title documentDate:v193 documentTimeInterval:v215 receivedAt:v216 isOutgoingDocument:v250];

            v178 = v214;
            [v217 writeWithEntityStore:*(selfCopy + 40)];

            v6 = v266;
          }

          notes = [v177 notes];
          v219 = [notes length];

          if (v219)
          {
            v220 = objc_opt_new();
            v221 = objc_alloc(MEMORY[0x277CCACA8]);
            notes2 = [v177 notes];
            v222 = [v221 initWithFormat:@"%@\n", notes2];
            [v220 appendString:v222];
          }

          else
          {
            v220 = 0;
          }

          v185 = v272;
          location = [v177 location];
          v225 = [location length];

          if (v225)
          {
            if (!v220)
            {
              v220 = objc_opt_new();
            }

            v226 = objc_alloc(MEMORY[0x277CCACA8]);
            location2 = [v177 location];
            v227 = [v226 initWithFormat:@"%@\n", location2];
            [v220 appendString:v227];
          }

          if ([v220 length])
          {
            v229 = pp_default_log_handle();
            if (os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
            {
              eventIdentifier3 = [v177 eventIdentifier];
              v231 = [v220 length];
              *v281 = 138412546;
              *&v281[4] = eventIdentifier3;
              v282 = 2048;
              v283 = v231;
              _os_log_impl(&dword_23224A000, v229, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: _dissectAndDonateURLsFromEvent: event %@ has text length: %tu", v281, 0x16u);
            }

            v232 = [*(selfCopy + 72) detectionsInPlainText:v220 baseDate:0];
            if ([v232 count])
            {
              v233 = pp_default_log_handle();
              if (os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT))
              {
                eventIdentifier4 = [v177 eventIdentifier];
                v235 = [v232 count];
                *v281 = 138412546;
                *&v281[4] = eventIdentifier4;
                v282 = 2048;
                v283 = v235;
                _os_log_impl(&dword_23224A000, v233, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: _dissectAndDonateURLsFromEvent: event %@ has data detection count: %tu", v281, 0x16u);
              }

              v236 = *(selfCopy + 56);
              [v178 bundleId];
              v237 = v261 = v232;
              title2 = [v177 title];
              startDate5 = [v177 startDate];
              v240 = v178;
              v241 = objc_opt_new();
              LOBYTE(v251) = 0;
              v185 = v272;
              v242 = [v236 urlsFromText:v220 handle:0 dataDetectorMatches:v261 bundleIdentifier:v237 domainIdentifier:v272 uniqueIdentifier:attendees2 documentTitle:v193 documentDate:title2 documentTimeInterval:startDate5 receivedAt:v241 isOutgoingDocument:v251];

              v178 = v240;
              v232 = v261;
              [v242 writeWithEntityStore:*(selfCopy + 40)];

              v6 = v266;
            }
          }

          v187 = v262;
          v80 = v263;
        }

        else
        {
          v185 = pp_default_log_handle();
          v187 = v262;
          v80 = v263;
          if (os_log_type_enabled(v185, OS_LOG_TYPE_FAULT))
          {
            objectID3 = [v177 objectID];
            *v281 = 138412290;
            *&v281[4] = objectID3;
            _os_log_fault_impl(&dword_23224A000, v185, OS_LOG_TYPE_FAULT, "PPEventKitImporter: can't generate URL string from object id %@ (will ignore event)", v281, 0xCu);
          }
        }
      }

      v243 = pp_default_log_handle();
      absoluteString = v265;
      if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v265;
        _os_log_impl(&dword_23224A000, v243, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: completed import of event %@", buf, 0xCu);
      }

      startDate = v264;
      goto LABEL_147;
    }

    v26 = v18;
    v258 = v25;
    v27 = v25;
    v28 = +[PPConfiguration sharedInstance];
    bundleId2 = [v27 bundleId];
    language = [v27 language];
    v31 = [v28 extractionAlgorithmsForBundleId:bundleId2 sourceLanguage:language conservative:0 domain:1];

    if (![v31 containsObject:&unk_284785160])
    {
LABEL_41:

      v82 = v26;
      v83 = v27;
      structuredLocationTitle = [v82 structuredLocationTitle];
      if ((PPStringAllWhiteSpace() & 1) == 0)
      {
        structuredLocationTitle2 = [v82 structuredLocationTitle];
        v86 = PPStringLooksLikeNumber();

        if (v86)
        {
          goto LABEL_60;
        }

        v87 = +[PPConfiguration sharedInstance];
        structuredLocationTitle = [v87 extractionAlgorithmsForBundleId:v259 sourceLanguage:0 conservative:0 domain:2];

        if ([structuredLocationTitle containsObject:&unk_284785178])
        {
          v88 = MEMORY[0x277D3A3F8];
          structuredLocationTitle3 = [v82 structuredLocationTitle];
          structuredLocationCoordinates = [v82 structuredLocationCoordinates];
          v91 = [v88 placemarkWithName:structuredLocationTitle3 clLocation:structuredLocationCoordinates];

          if (v91)
          {
            v270 = [objc_alloc(MEMORY[0x277D3A3D8]) initWithPlacemark:v91 category:3 mostRelevantRecord:0];
            v92 = [objc_alloc(MEMORY[0x277D3A4A8]) initWithLocation:v270 score:1.0 sentimentScore:0.0];
            v93 = v23[3];
            v260 = v92;
            *v286 = v92;
            v94 = [MEMORY[0x277CBEA60] arrayWithObjects:v286 count:1];
            title3 = [v82 title];
            v95 = [title3 length];
            if (v95)
            {
              v255 = v93;
              v96 = objc_autoreleasePoolPush();
              v97 = v94;
              v98 = objc_alloc(MEMORY[0x277CBEB98]);
              title4 = [v82 title];
              v100 = v98;
              v94 = v97;
              v101 = [v100 initWithObjects:{title4, 0}];

              v102 = v96;
              v93 = v255;
              objc_autoreleasePoolPop(v102);
            }

            else
            {
              v101 = 0;
            }

            *v281 = 0;
            v103 = [v93 donateLocations:v94 source:v83 contextualNamedEntities:v101 algorithm:9 cloudSync:0 error:v281];
            v104 = *v281;
            if (v95)
            {
            }

            v105 = pp_default_log_handle();
            v106 = v105;
            if (v103)
            {
              v23 = selfCopy;
              if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
              {
                [v82 structuredLocationTitle];
                v108 = v107 = v104;
                *buf = 138739971;
                *&buf[4] = v108;
                _os_log_debug_impl(&dword_23224A000, v106, OS_LOG_TYPE_DEBUG, "PPEventKitImporter: successfully harvested location: %{sensitive}@", buf, 0xCu);

                v104 = v107;
              }
            }

            else
            {
              v23 = selfCopy;
              if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
              {
                [v82 structuredLocationTitle];
                v248 = v247 = v104;
                *buf = 138740227;
                *&buf[4] = v248;
                *&buf[12] = 2112;
                *&buf[14] = v247;
                _os_log_error_impl(&dword_23224A000, v106, OS_LOG_TYPE_ERROR, "PPEventKitImporter: failed to harvest location: %{sensitive}@; error: %@", buf, 0x16u);

                v104 = v247;
              }
            }
          }
        }

        else
        {
          v91 = pp_default_log_handle();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_23224A000, v91, OS_LOG_TYPE_DEBUG, "PPEventKitImporter: not importing locations from eventkit as it is disabled in configuration.", buf, 2u);
          }
        }
      }

LABEL_60:
      v109 = v82;
      v110 = v83;
      v111 = +[PPConfiguration sharedInstance];
      bundleId3 = [v110 bundleId];
      language2 = [v110 language];
      v114 = [v111 extractionAlgorithmsForBundleId:bundleId3 sourceLanguage:language2 conservative:1 domain:1];

      title5 = [v109 title];
      if (title5 && (v116 = title5, [v109 title], v117 = objc_claimAutoreleasedReturnValue(), v118 = objc_msgSend(v117, "length"), v117, v116, v118))
      {
        v119 = v23[8];
        title6 = [v109 title];
        v121 = [v119 entitiesInPlainText:title6 eligibleRegions:0 source:v110 cloudSync:1 algorithms:v114];

        v122 = pp_default_log_handle();
        if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
        {
          eventIdentifier5 = [v109 eventIdentifier];
          location3 = [v109 location];
          v125 = [location3 length];
          v126 = [v121 count];
          *buf = 138412802;
          *&buf[4] = eventIdentifier5;
          *&buf[12] = 2048;
          *&buf[14] = v125;
          *&buf[22] = 2048;
          v294 = v126;
          _os_log_impl(&dword_23224A000, v122, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: location on event %@ with length %tu generated %tu containers", buf, 0x20u);
        }

        v291 = 0u;
        v292 = 0u;
        v289 = 0u;
        v290 = 0u;
        v127 = v121;
        v128 = [v127 countByEnumeratingWithState:&v289 objects:buf count:16];
        if (v128)
        {
          v129 = v128;
          v130 = *v290;
          do
          {
            for (i = 0; i != v129; ++i)
            {
              if (*v290 != v130)
              {
                objc_enumerationMutation(v127);
              }

              v132 = *(*(&v289 + 1) + 8 * i);
              v133 = objc_autoreleasePoolPush();
              [(PPEventKitImporter *)v23 _donateContainerContents:v132];
              objc_autoreleasePoolPop(v133);
            }

            v129 = [v127 countByEnumeratingWithState:&v289 objects:buf count:16];
          }

          while (v129);
        }

        v6 = v266;
      }

      else
      {
        v127 = 0;
      }

      location4 = [v109 location];
      if (location4)
      {
        v135 = location4;
        location5 = [v109 location];
        v137 = [location5 length];

        if (v137)
        {
          v138 = v23[8];
          location6 = [v109 location];
          v140 = [v138 entitiesInPlainText:location6 eligibleRegions:0 source:v110 cloudSync:1 algorithms:v114];

          v141 = pp_default_log_handle();
          if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
          {
            eventIdentifier6 = [v109 eventIdentifier];
            location7 = [v109 location];
            v144 = [location7 length];
            v145 = [v140 count];
            *v286 = 138412802;
            *&v286[4] = eventIdentifier6;
            *&v286[12] = 2048;
            *&v286[14] = v144;
            *&v286[22] = 2048;
            *&v286[24] = v145;
            _os_log_impl(&dword_23224A000, v141, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: location on event %@ with length %tu generated %tu containers", v286, 0x20u);
          }

          v279 = 0u;
          v280 = 0u;
          v277 = 0u;
          v278 = 0u;
          v127 = v140;
          v146 = [v127 countByEnumeratingWithState:&v277 objects:v286 count:16];
          if (v146)
          {
            v147 = v146;
            v148 = *v278;
            do
            {
              for (j = 0; j != v147; ++j)
              {
                if (*v278 != v148)
                {
                  objc_enumerationMutation(v127);
                }

                v150 = *(*(&v277 + 1) + 8 * j);
                v151 = objc_autoreleasePoolPush();
                [(PPEventKitImporter *)v23 _donateContainerContents:v150];
                objc_autoreleasePoolPop(v151);
              }

              v147 = [v127 countByEnumeratingWithState:&v277 objects:v286 count:16];
            }

            while (v147);
          }

          v6 = v266;
        }
      }

      notes3 = [v109 notes];

      if (notes3)
      {
        v271 = v114;
        notes4 = [v109 notes];
        v154 = [notes4 length];

        v155 = +[PPConfiguration sharedInstance];
        bundleId4 = [v110 bundleId];
        language3 = [v110 language];
        v158 = [v155 extractionAlgorithmsForBundleId:bundleId4 sourceLanguage:language3 conservative:v154 < 0x40 domain:1];

        v23 = selfCopy;
        if (v154 >= 0x40)
        {
          v159 = pp_default_log_handle();
          if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
          {
            eventIdentifier7 = [v109 eventIdentifier];
            notes5 = [v109 notes];
            v162 = [notes5 length];
            *v281 = 138412546;
            *&v281[4] = eventIdentifier7;
            v282 = 2048;
            v283 = v162;
            _os_log_impl(&dword_23224A000, v159, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: using all taggers since notes on %@ has length %tu", v281, 0x16u);
          }
        }

        v163 = *(selfCopy + 64);
        notes6 = [v109 notes];
        v165 = [v163 entitiesInPlainText:notes6 eligibleRegions:0 source:v110 cloudSync:1 algorithms:v158];

        v166 = pp_default_log_handle();
        if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
        {
          eventIdentifier8 = [v109 eventIdentifier];
          notes7 = [v109 notes];
          v169 = [notes7 length];
          v170 = [v165 count];
          *v281 = 138412802;
          *&v281[4] = eventIdentifier8;
          v282 = 2048;
          v283 = v169;
          v284 = 2048;
          v285 = v170;
          _os_log_impl(&dword_23224A000, v166, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: notes on event %@ with length %tu generated %tu containers", v281, 0x20u);
        }

        v275 = 0u;
        v276 = 0u;
        v273 = 0u;
        v274 = 0u;
        v127 = v165;
        v171 = [v127 countByEnumeratingWithState:&v273 objects:v281 count:16];
        if (v171)
        {
          v172 = v171;
          v173 = *v274;
          do
          {
            for (k = 0; k != v172; ++k)
            {
              if (*v274 != v173)
              {
                objc_enumerationMutation(v127);
              }

              v175 = *(*(&v273 + 1) + 8 * k);
              v176 = objc_autoreleasePoolPush();
              [(PPEventKitImporter *)selfCopy _donateContainerContents:v175];
              objc_autoreleasePoolPop(v176);
            }

            v172 = [v127 countByEnumeratingWithState:&v273 objects:v281 count:16];
          }

          while (v172);
        }

        v6 = v266;
        v114 = v271;
      }

      v25 = v258;
      goto LABEL_101;
    }

    v253 = v31;
    v254 = v27;
    v256 = v26;
    v32 = v26;
    v269 = objc_opt_new();
    title7 = [v32 title];
    if (title7)
    {
      v34 = title7;
      title8 = [v32 title];
      v36 = [title8 length];

      if (v36)
      {
        v37 = objc_alloc(MEMORY[0x277D3A498]);
        v38 = objc_alloc(MEMORY[0x277D3A420]);
        title9 = [v32 title];
        currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
        languageCode = [currentLocale languageCode];
        v42 = [v38 initWithName:title9 category:14 language:languageCode];
        v43 = [v37 initWithItem:v42 score:0.5];
        [v269 addObject:v43];
      }
    }

    v287 = 0u;
    v288 = 0u;
    memset(v286, 0, sizeof(v286));
    v252 = v32;
    attendees3 = [v32 attendees];
    v45 = [attendees3 countByEnumeratingWithState:v286 objects:buf count:16];
    if (v45)
    {
      v46 = v45;
      v47 = **&v286[16];
      do
      {
        for (m = 0; m != v46; ++m)
        {
          if (**&v286[16] != v47)
          {
            objc_enumerationMutation(attendees3);
          }

          v49 = *(*&v286[8] + 8 * m);
          v50 = objc_autoreleasePoolPush();
          name = [v49 name];
          if (name)
          {
            v52 = name;
            name2 = [v49 name];
            v54 = [name2 length];

            if (v54)
            {
              v55 = objc_alloc(MEMORY[0x277D3A498]);
              v56 = objc_alloc(MEMORY[0x277D3A420]);
              name3 = [v49 name];
              currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
              languageCode2 = [currentLocale2 languageCode];
              v60 = [v56 initWithName:name3 category:1 language:languageCode2];
              v61 = [v55 initWithItem:v60 score:0.5];
              [v269 addObject:v61];
            }
          }

          objc_autoreleasePoolPop(v50);
        }

        v46 = [attendees3 countByEnumeratingWithState:v286 objects:buf count:16];
      }

      while (v46);
    }

    structuredLocationTitle4 = [v252 structuredLocationTitle];
    v23 = selfCopy;
    v27 = v254;
    if (structuredLocationTitle4)
    {
      structuredLocationTitle8 = structuredLocationTitle4;
      structuredLocationTitle5 = [v252 structuredLocationTitle];
      if (![structuredLocationTitle5 length])
      {
LABEL_29:

        goto LABEL_30;
      }

      structuredLocationTitle6 = [v252 structuredLocationTitle];
      if (PPStringAllWhiteSpace())
      {
LABEL_28:

        goto LABEL_29;
      }

      structuredLocationTitle7 = [v252 structuredLocationTitle];
      v67 = PPStringLooksLikeNumber();

      if ((v67 & 1) == 0)
      {
        v68 = objc_alloc(MEMORY[0x277D3A498]);
        v69 = objc_alloc(MEMORY[0x277D3A420]);
        structuredLocationTitle8 = [v252 structuredLocationTitle];
        structuredLocationTitle5 = [MEMORY[0x277CBEAF8] currentLocale];
        structuredLocationTitle6 = [structuredLocationTitle5 languageCode];
        v70 = [v69 initWithName:structuredLocationTitle8 category:3 language:structuredLocationTitle6];
        v71 = [v68 initWithItem:v70 score:0.5];
        [v269 addObject:v71];

        goto LABEL_28;
      }
    }

LABEL_30:

    v72 = *(selfCopy + 16);
    *v286 = 0;
    v73 = [v72 donateNamedEntities:v269 source:v254 algorithm:10 cloudSync:0 sentimentScore:v286 error:0.0];
    v74 = *v286;
    v75 = pp_default_log_handle();
    v76 = v75;
    if (v73)
    {
      v6 = v266;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        v77 = [v269 count];
        groupId = [v254 groupId];
        documentId2 = [v254 documentId];
        *buf = 134218498;
        *&buf[4] = v77;
        *&buf[12] = 2112;
        *&buf[14] = groupId;
        *&buf[22] = 2112;
        v294 = documentId2;
        _os_log_impl(&dword_23224A000, v76, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: donated %tu entities from %@ / %@", buf, 0x20u);
      }
    }

    else
    {
      v6 = v266;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        eventIdentifier9 = [v252 eventIdentifier];
        *buf = 138412546;
        *&buf[4] = eventIdentifier9;
        *&buf[12] = 2112;
        *&buf[14] = v74;
        _os_log_error_impl(&dword_23224A000, v76, OS_LOG_TYPE_ERROR, "PPEventKitImporter: failed to donate EventKit data for %@: %@", buf, 0x16u);
      }

      v81 = +[PPMetricsUtils loggingQueue];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __65__PPEventKitImporter__donateEntitiesForPropertiesOfEvent_source___block_invoke;
      v294 = &unk_2789790A8;
      v295 = v74;
      dispatch_async(v81, buf);

      v76 = v295;
    }

    v26 = v256;
    v31 = v253;
    goto LABEL_41;
  }

LABEL_149:

  v244 = *MEMORY[0x277D85DE8];
}

+ (id)_escapedDomainIdentifierForIdentifier:(uint64_t)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"%."];
  invertedSet = [v4 invertedSet];

  v6 = [v2 stringByAddingPercentEncodingWithAllowedCharacters:invertedSet];
  if (!v6)
  {
    v7 = pp_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v10 = [v2 dataUsingEncoding:10];
      [v10 bytes];
      [v10 length];
      v11 = _PASBytesToHex();

      v12 = 138412290;
      v13 = v11;
      _os_log_fault_impl(&dword_23224A000, v7, OS_LOG_TYPE_FAULT, "PPEventKitImporter: could not properly escape identifier with UTF-16 code units: %@", &v12, 0xCu);
    }

    v6 = [v2 copy];
  }

  objc_autoreleasePoolPop(v3);
  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_donateContainerContents:(uint64_t)contents
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = a2;
  contentsCopy = contents;
  v4 = *(contents + 16);
  entities = [v3 entities];
  source = [v3 source];
  entityAlgorithm = [v3 entityAlgorithm];
  cloudSync = [v3 cloudSync];
  [v3 sentimentScore];
  v55 = 0;
  LOBYTE(v4) = [v4 donateNamedEntities:entities source:source algorithm:entityAlgorithm cloudSync:cloudSync sentimentScore:&v55 error:?];
  v9 = v55;

  if ((v4 & 1) == 0)
  {
    v10 = pp_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      entities2 = [v3 entities];
      v39 = [entities2 count];
      source2 = [v3 source];
      *buf = 134218498;
      v58 = v39;
      v59 = 2112;
      v60 = source2;
      v61 = 2112;
      v62 = v9;
      _os_log_debug_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEBUG, "PPEventKitImporter: failed to donate %tu named entities from container (%@): %@", buf, 0x20u);
    }
  }

  v11 = *(contentsCopy + 32);
  topics = [v3 topics];
  source3 = [v3 source];
  topicAlgorithm = [v3 topicAlgorithm];
  cloudSync2 = [v3 cloudSync];
  [v3 sentimentScore];
  v54 = 0;
  LOBYTE(topicAlgorithm) = [v11 donateTopics:topics source:source3 algorithm:topicAlgorithm cloudSync:cloudSync2 sentimentScore:0 exactMatchesInSourceText:&v54 error:?];
  v16 = v54;

  if ((topicAlgorithm & 1) == 0)
  {
    v17 = pp_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      topics2 = [v3 topics];
      v42 = [topics2 count];
      source4 = [v3 source];
      *buf = 134218498;
      v58 = v42;
      v59 = 2112;
      v60 = source4;
      v61 = 2112;
      v62 = v16;
      _os_log_debug_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEBUG, "PPEventKitImporter: failed to donate %tu topics from container (%@): %@", buf, 0x20u);
    }
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  locations = [v3 locations];
  allKeys = [locations allKeys];

  obj = allKeys;
  v20 = [allKeys countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v20)
  {
    v21 = v20;
    v44 = v16;
    v45 = v9;
    v22 = 0;
    v47 = *v51;
    do
    {
      v23 = 0;
      v24 = v22;
      do
      {
        if (*v51 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v50 + 1) + 8 * v23);
        v26 = *(contentsCopy + 24);
        locations2 = [v3 locations];
        v28 = [locations2 objectForKeyedSubscript:v25];
        source5 = [v3 source];
        unsignedIntegerValue = [v25 unsignedIntegerValue];
        cloudSync3 = [v3 cloudSync];
        v49 = v24;
        LOBYTE(unsignedIntegerValue) = [v26 donateLocations:v28 source:source5 contextualNamedEntities:0 algorithm:unsignedIntegerValue cloudSync:cloudSync3 error:&v49];
        v22 = v49;

        if ((unsignedIntegerValue & 1) == 0)
        {
          v32 = pp_default_log_handle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            locations3 = [v3 locations];
            v34 = [locations3 objectForKeyedSubscript:v25];
            v35 = [v34 count];
            source6 = [v3 source];
            *buf = 134218498;
            v58 = v35;
            v59 = 2112;
            v60 = source6;
            v61 = 2112;
            v62 = v22;
            _os_log_debug_impl(&dword_23224A000, v32, OS_LOG_TYPE_DEBUG, "PPEventKitImporter: failed to donate %tu locations from container (%@): %@", buf, 0x20u);
          }
        }

        ++v23;
        v24 = v22;
      }

      while (v21 != v23);
      v21 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v21);

    v16 = v44;
    v9 = v45;
  }

  v37 = *MEMORY[0x277D85DE8];
}

void __65__PPEventKitImporter__donateEntitiesForPropertiesOfEvent_source___block_invoke(uint64_t a1)
{
  v3 = objc_opt_new();
  [v3 setSource:9];
  [v3 setErrorMessage:@"PPEventKitImporter: failed to donate EventKit data."];
  [v3 setErrorCode:{objc_msgSend(*(a1 + 32), "code")}];
  v2 = [MEMORY[0x277D41DA8] sharedInstance];
  [v2 trackScalarForMessage:v3];
}

id __60__PPEventKitImporter__importEvent_isMostRelevantOccurrence___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddress];
  if ([v3 length])
  {
    v4 = [v2 emailAddress];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __51__PPEventKitImporter__reimportEventsWithObjectIDs___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D3A390] deferredAllocationEventFromEKEvent:a2];
  [v2 addObject:v3];
}

void __43__PPEventKitImporter__deleteAllExtractions__block_invoke(uint64_t a1)
{
  v3 = objc_opt_new();
  [v3 setSource:9];
  [v3 setErrorMessage:@"PPEventKitImporter: failed to delete all named entities."];
  [v3 setErrorCode:{objc_msgSend(*(a1 + 32), "code")}];
  v2 = [MEMORY[0x277D41DA8] sharedInstance];
  [v2 trackScalarForMessage:v3];
}

void __43__PPEventKitImporter__deleteAllExtractions__block_invoke_208(uint64_t a1)
{
  v3 = objc_opt_new();
  [v3 setSource:9];
  [v3 setErrorMessage:@"PPEventKitImporter: failed to delete all URLs."];
  [v3 setErrorCode:{objc_msgSend(*(a1 + 32), "code")}];
  v2 = [MEMORY[0x277D41DA8] sharedInstance];
  [v2 trackScalarForMessage:v3];
}

void __49__PPEventKitImporter__eventIdentifiersToReimport__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 source];
  v3 = [v4 documentId];
  [v2 addObject:v3];
}

void __49__PPEventKitImporter__eventIdentifiersToReimport__block_invoke_177(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 source];
  v3 = [v4 documentId];
  [v2 addObject:v3];
}

void __49__PPEventKitImporter__eventIdentifiersToReimport__block_invoke_180(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 source];
  v3 = [v4 documentId];
  [v2 addObject:v3];
}

id __49__PPEventKitImporter__eventIdentifiersToReimport__block_invoke_183(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBEBC0] URLWithString:a2];
  if (v2)
  {
    v3 = [MEMORY[0x277CC5A60] objectIDWithURL:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)importEvent:(id)event
{
  v8[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ((+[PPEventKitImporter _shouldImport]& 1) != 0)
  {
    v8[0] = eventCopy;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [(PPEventKitImporter *)self _importEvents:v5];
  }

  else
  {
    v5 = pp_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: importEvent disabled due to settings", v7, 2u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)importChangedEvents:(id)events
{
  v67 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v5 = pp_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    first = [eventsCopy first];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [first count];
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: importing %tu changed events", &buf, 0xCu);
  }

  second = [eventsCopy second];
  allObjects = [second allObjects];
  v9 = allObjects;
  if (self && [allObjects count])
  {
    v10 = [v9 _pas_mappedArrayWithTransform:&__block_literal_global_195_25080];
    v62 = 0;
    namedEntityStore = self->_namedEntityStore;
    v12 = *MEMORY[0x277D3A5F0];
    v61 = 0;
    v49 = v12;
    v13 = [PPLocalNamedEntityStore deleteAllNamedEntitiesFromSourcesWithBundleId:"deleteAllNamedEntitiesFromSourcesWithBundleId:documentIds:deletedCount:error:" documentIds:? deletedCount:? error:?];
    v14 = v61;
    v15 = pp_default_log_handle();
    v16 = v15;
    if (!v13)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v14;
        _os_log_error_impl(&dword_23224A000, v16, OS_LOG_TYPE_ERROR, "PPEventKitImporter: failed to delete named entities: %@", &buf, 0xCu);
      }

      v37 = +[PPMetricsUtils loggingQueue];
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v64 = __53__PPEventKitImporter__deleteExtractionsForObjectIDs___block_invoke_196;
      v65 = &unk_2789790A8;
      v24 = v14;
      v66 = v24;
      dispatch_async(v37, &buf);

      v21 = v66;
      goto LABEL_39;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v62;
      _os_log_debug_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEBUG, "PPEventKitImporter: deleted %tu named entities", &buf, 0xCu);
    }

    locationStore = self->_locationStore;
    v60 = v14;
    v48 = v10;
    v18 = [(PPLocalLocationStore *)locationStore deleteAllLocationsFromSourcesWithBundleId:v49 documentIds:v10 deletedCount:&v62 error:&v60];
    v19 = v60;

    v20 = pp_default_log_handle();
    v21 = v20;
    if (v18)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v62;
        _os_log_debug_impl(&dword_23224A000, v21, OS_LOG_TYPE_DEBUG, "PPEventKitImporter: deleted %tu locations", &buf, 0xCu);
      }

      topicStore = self->_topicStore;
      v59 = v19;
      v23 = [(PPLocalTopicStore *)topicStore deleteAllTopicsFromSourcesWithBundleId:v49 documentIds:v48 deletedCount:&v62 error:&v59];
      v24 = v59;

      v25 = pp_default_log_handle();
      v21 = v25;
      if (v23)
      {
        v44 = v24;
        v45 = second;
        selfCopy = self;
        v47 = eventsCopy;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v62;
          _os_log_debug_impl(&dword_23224A000, v21, OS_LOG_TYPE_DEBUG, "PPEventKitImporter: deleted %tu topics", &buf, 0xCu);
        }

        v21 = objc_opt_new();
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v26 = v9;
        v27 = [v26 countByEnumeratingWithState:&v55 objects:&buf count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v56;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v56 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v55 + 1) + 8 * i);
              v32 = objc_autoreleasePoolPush();
              uRIRepresentation = [v31 URIRepresentation];
              absoluteString = [uRIRepresentation absoluteString];

              if (absoluteString)
              {
                v35 = [PPEventKitImporter _escapedDomainIdentifierForIdentifier:absoluteString];
                [v21 addDomain:v35];
              }

              objc_autoreleasePoolPop(v32);
            }

            v28 = [v26 countByEnumeratingWithState:&v55 objects:&buf count:16];
          }

          while (v28);
        }

        if ([MEMORY[0x277D02528] deleteAllURLsWithBundleIdentifier:v49 domainSelection:v21 entityStore:0])
        {
          self = selfCopy;
          [(PPEventKitImporter *)selfCopy _flush];
          v36 = pp_default_log_handle();
          eventsCopy = v47;
          v10 = v48;
          v24 = v44;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *block = 0;
            _os_log_impl(&dword_23224A000, v36, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: deleted some extractions", block, 2u);
          }
        }

        else
        {
          v38 = pp_default_log_handle();
          self = selfCopy;
          eventsCopy = v47;
          v10 = v48;
          v24 = v44;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *block = 0;
            _os_log_error_impl(&dword_23224A000, v38, OS_LOG_TYPE_ERROR, "PPEventKitImporter: failed to delete URLs", block, 2u);
          }

          v39 = +[PPMetricsUtils loggingQueue];
          *block = MEMORY[0x277D85DD0];
          v51 = 3221225472;
          v52 = __53__PPEventKitImporter__deleteExtractionsForObjectIDs___block_invoke_201;
          v53 = &unk_2789790A8;
          v54 = v44;
          dispatch_async(v39, block);

          v36 = v54;
        }

        second = v45;

        goto LABEL_39;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v24;
        _os_log_error_impl(&dword_23224A000, v21, OS_LOG_TYPE_ERROR, "PPEventKitImporter: failed to delete topics: %@", &buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v19;
        _os_log_error_impl(&dword_23224A000, v21, OS_LOG_TYPE_ERROR, "PPEventKitImporter: failed to delete locations: %@", &buf, 0xCu);
      }

      v24 = v19;
    }

    v10 = v48;
LABEL_39:
  }

  if ((+[PPEventKitImporter _shouldImport]& 1) == 0)
  {
    first3 = pp_default_log_handle();
    if (os_log_type_enabled(first3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23224A000, first3, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: importEvent disabled due to settings", &buf, 2u);
    }

    goto LABEL_45;
  }

  first2 = [eventsCopy first];
  v41 = [first2 count];

  if (v41)
  {
    first3 = [eventsCopy first];
    [(PPEventKitImporter *)self _importEvents:first3];
LABEL_45:
  }

  v43 = *MEMORY[0x277D85DE8];
}

void __53__PPEventKitImporter__deleteExtractionsForObjectIDs___block_invoke_196(uint64_t a1)
{
  v3 = objc_opt_new();
  [v3 setSource:9];
  [v3 setErrorMessage:@"PPEventKitImporter: failed to delete named entities."];
  [v3 setErrorCode:{objc_msgSend(*(a1 + 32), "code")}];
  v2 = [MEMORY[0x277D41DA8] sharedInstance];
  [v2 trackScalarForMessage:v3];
}

void __53__PPEventKitImporter__deleteExtractionsForObjectIDs___block_invoke_201(uint64_t a1)
{
  v3 = objc_opt_new();
  [v3 setSource:9];
  [v3 setErrorMessage:@"PPEventKitImporter: failed to delete URLs."];
  [v3 setErrorCode:{objc_msgSend(*(a1 + 32), "code")}];
  v2 = [MEMORY[0x277D41DA8] sharedInstance];
  [v2 trackScalarForMessage:v3];
}

id __53__PPEventKitImporter__deleteExtractionsForObjectIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 URIRepresentation];
  v3 = [v2 absoluteString];

  return v3;
}

- (id)importEventDataWithShouldContinueBlock:(id)block
{
  v46 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = pp_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: importEventData", buf, 2u);
  }

  if ((atomic_exchange(&self->_fullImportInProgress._Value, 1u) & 1) == 0)
  {
    if ((+[PPEventKitImporter _shouldImport]& 1) != 0)
    {
      v8 = pp_default_log_handle();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      v10 = MEMORY[0x277D3A5F0];
      if (v9)
      {
        v11 = *MEMORY[0x277D3A5F0];
        *buf = 138412546;
        *&buf[4] = v11;
        *&buf[12] = 1024;
        *&buf[14] = 129600;
        _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: beginning import of named entities and URLs from %@, looking ahead %d seconds", buf, 0x12u);
      }

      if (self)
      {
        v12 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-2592000.0];
        namedEntityStore = self->_namedEntityStore;
        v14 = *v10;
        v42 = 0;
        v15 = [(PPLocalNamedEntityStore *)namedEntityStore deleteAllNamedEntitiesFromSourcesWithBundleId:v14 groupId:0 olderThan:v12 deletedCount:0 error:&v42];
        v16 = v42;
        v17 = pp_default_log_handle();
        v18 = v17;
        if (v15)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v12;
            _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: deleted old named entities (before %@)", buf, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v16;
            _os_log_error_impl(&dword_23224A000, v18, OS_LOG_TYPE_ERROR, "PPEventKitImporter: failed to delete old named entities: %@", buf, 0xCu);
          }

          v20 = +[PPMetricsUtils loggingQueue];
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __40__PPEventKitImporter__deleteOldEntities__block_invoke;
          v44 = &unk_2789790A8;
          v45 = v16;
          dispatch_async(v20, buf);

          v18 = v45;
        }
      }

      if (!blockCopy[2](blockCopy))
      {
        goto LABEL_42;
      }

      if (self)
      {
        v21 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-2592000.0];
        locationStore = self->_locationStore;
        v23 = *v10;
        v42 = 0;
        v24 = [(PPLocalLocationStore *)locationStore deleteAllLocationsFromSourcesWithBundleId:v23 groupId:0 olderThan:v21 deletedCount:0 error:&v42];
        v25 = v42;
        v26 = pp_default_log_handle();
        v27 = v26;
        if (v24)
        {
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v21;
            _os_log_impl(&dword_23224A000, v27, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: deleted old locations (before %@)", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v25;
          _os_log_error_impl(&dword_23224A000, v27, OS_LOG_TYPE_ERROR, "PPEventKitImporter: failed to delete old locations: %@", buf, 0xCu);
        }
      }

      if (!blockCopy[2](blockCopy))
      {
        goto LABEL_42;
      }

      if (self)
      {
        v28 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-2592000.0];
        topicStore = self->_topicStore;
        v30 = *v10;
        v42 = 0;
        v31 = [(PPLocalTopicStore *)topicStore deleteAllTopicsFromSourcesWithBundleId:v30 groupId:0 olderThan:v28 deletedCount:0 error:&v42];
        v32 = v42;
        v33 = pp_default_log_handle();
        v34 = v33;
        if (v31)
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v28;
            _os_log_impl(&dword_23224A000, v34, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: deleted old topics (before %@)", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v32;
          _os_log_error_impl(&dword_23224A000, v34, OS_LOG_TYPE_ERROR, "PPEventKitImporter: failed to delete old topics: %@", buf, 0xCu);
        }
      }

      if (!blockCopy[2](blockCopy))
      {
LABEL_42:
        v7 = MEMORY[0x277CBEBF8];
        goto LABEL_43;
      }

      v19 = objc_opt_new();
      eventStore = self->_eventStore;
      v36 = [v19 dateByAddingTimeInterval:129600.0];
      v37 = [(PPLocalEventStore *)eventStore eventsFromDate:v19 toDate:v36];

      [(PPEventKitImporter *)self _importEvents:v37];
      v7 = [v37 _pas_mappedArrayWithTransform:&__block_literal_global_110_25102];
      [(PPEventKitImporter *)self _flush];
      v38 = pp_default_log_handle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [v37 count];
        *buf = 134217984;
        *&buf[4] = v39;
        _os_log_impl(&dword_23224A000, v38, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: completed import of %tu events", buf, 0xCu);
      }
    }

    else
    {
      v19 = pp_default_log_handle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v19, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: importEventData disabled due to settings", buf, 2u);
      }

      v7 = MEMORY[0x277CBEBF8];
    }

LABEL_43:
    atomic_store(0, &self->_fullImportInProgress);
    goto LABEL_44;
  }

  v6 = pp_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: full import already in progress when importEventData called.", buf, 2u);
  }

  v7 = MEMORY[0x277CBEBF8];
LABEL_44:

  v40 = *MEMORY[0x277D85DE8];

  return v7;
}

void __40__PPEventKitImporter__deleteOldEntities__block_invoke(uint64_t a1)
{
  v3 = objc_opt_new();
  [v3 setSource:9];
  [v3 setErrorMessage:@"PPEventKitImporter: failed to delete old named entities."];
  [v3 setErrorCode:{objc_msgSend(*(a1 + 32), "code")}];
  v2 = [MEMORY[0x277D41DA8] sharedInstance];
  [v2 trackScalarForMessage:v3];
}

- (PPEventKitImporter)initWithEventStore:(id)store namedEntityStore:(id)entityStore locationStore:(id)locationStore topicStore:(id)topicStore urlStore:(id)urlStore urlDissector:(id)dissector namedEntityDissector:(id)entityDissector dataDetectorMatchClass:(Class)self0 sqlDatabase:(id)self1
{
  v55 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  entityStoreCopy = entityStore;
  locationStoreCopy = locationStore;
  topicStoreCopy = topicStore;
  urlStoreCopy = urlStore;
  databaseCopy = database;
  v43.receiver = self;
  v43.super_class = PPEventKitImporter;
  v20 = [(PPEventKitImporter *)&v43 init];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_14;
  }

  v38 = entityStoreCopy;
  v39 = storeCopy;
  objc_storeStrong(&v20->_eventStore, store);
  objc_storeStrong(&v21->_namedEntityStore, entityStore);
  objc_storeStrong(&v21->_locationStore, locationStore);
  objc_storeStrong(&v21->_topicStore, topicStore);
  objc_storeStrong(&v21->_urlStore, urlStore);
  objc_storeStrong(&v21->_sqlDatabase, database);
  v21->_dataDetectorMatchClass = objc_opt_class();
  fullPipeline = [MEMORY[0x277D02508] fullPipeline];
  v23 = +[PPNamedEntityDissector sharedInstance];
  neDissector = v21->_neDissector;
  v21->_neDissector = v23;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  dissectors = [fullPipeline dissectors];
  v26 = [dissectors countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v45;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v45 != v28)
        {
          objc_enumerationMutation(dissectors);
        }

        v30 = *(*(&v44 + 1) + 8 * i);
        v31 = objc_autoreleasePoolPush();
        if (objc_opt_respondsToSelector())
        {
          objc_storeStrong(&v21->_urlDissector, v30);
        }

        objc_autoreleasePoolPop(v31);
      }

      v27 = [dissectors countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v27);
  }

  if (v21->_neDissector && v21->_urlDissector)
  {

    atomic_store(0, &v21->_fullImportInProgress);
    entityStoreCopy = v38;
    storeCopy = v39;
LABEL_14:
    v32 = v21;
    goto LABEL_18;
  }

  v33 = pp_default_log_handle();
  entityStoreCopy = v38;
  storeCopy = v39;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
  {
    urlDissector = v21->_urlDissector;
    v36 = v21->_neDissector;
    *buf = 138412802;
    v49 = v36;
    v50 = 2112;
    v51 = urlDissector;
    v52 = 2112;
    v53 = fullPipeline;
    _os_log_fault_impl(&dword_23224A000, v33, OS_LOG_TYPE_FAULT, "PPEventKitImporter failed to get all dissectors (%@ && %@) out of the pipeline: %@", buf, 0x20u);
  }

  v32 = 0;
LABEL_18:

  v34 = *MEMORY[0x277D85DE8];
  return v32;
}

+ (id)defaultInstance
{
  if ((+[PPEventKitImporter _shouldImport]& 1) != 0)
  {
    v2 = +[PPLocalNamedEntityStore defaultStore];
    v3 = +[PPLocalLocationStore defaultStore];
    v4 = +[PPLocalTopicStore defaultStore];
    v5 = v4;
    if (v2)
    {
      if (v3)
      {
        if (v4)
        {
          v6 = +[PPSQLDatabase sharedInstance];
          if (!v6)
          {
            v7 = pp_default_log_handle();
            if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_23224A000, v7, OS_LOG_TYPE_FAULT, "PPEventKitImporter: [PPSQLDatabase sharedInstance] is somehow nil even though ne, location, and topic stores are non-nil???", buf, 2u);
            }
          }

          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __37__PPEventKitImporter_defaultInstance__block_invoke;
          v13[3] = &unk_2789799D0;
          v14 = v2;
          v15 = v3;
          v16 = v5;
          v17 = v6;
          v8 = defaultInstance__pasOnceToken9;
          v9 = v6;
          if (v8 != -1)
          {
            dispatch_once(&defaultInstance__pasOnceToken9, v13);
          }

          v10 = defaultInstance__pasExprOnceResult_25136;

          goto LABEL_23;
        }

        v9 = pp_default_log_handle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v11 = "PPEventKitImporter: giving up on initialization due to Topic store not getting initialized. Device may be Class C locked.";
          goto LABEL_21;
        }

LABEL_22:
        v10 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v9 = pp_default_log_handle();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 0;
      v11 = "PPEventKitImporter: giving up on initialization due to Location store not getting initialized. Device may be Class C locked.";
    }

    else
    {
      v9 = pp_default_log_handle();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 0;
      v11 = "PPEventKitImporter: giving up on initialization due to Named Entity store not getting initialized. Device may be Class C locked.";
    }

LABEL_21:
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
    goto LABEL_22;
  }

  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "PPEventKitImporter: defaultInstance bypassed due to settings", buf, 2u);
  }

  v10 = 0;
LABEL_24:

  return v10;
}

void __37__PPEventKitImporter_defaultInstance__block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [PPEventKitImporter alloc];
  v4 = +[PPLocalEventStore defaultStore];
  v5 = [(PPEventKitImporter *)v3 initWithEventStore:v4 namedEntityStore:a1[4] locationStore:a1[5] topicStore:a1[6] urlStore:0 urlDissector:0 namedEntityDissector:0 dataDetectorMatchClass:0 sqlDatabase:a1[7]];
  v6 = defaultInstance__pasExprOnceResult_25136;
  defaultInstance__pasExprOnceResult_25136 = v5;

  objc_autoreleasePoolPop(v2);
}

@end