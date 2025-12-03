@interface PPLocalLocationStore
+ (id)defaultStore;
+ (id)locationFromMapItem:(id)item;
+ (id)locationFromMapItemDictionary:(id)dictionary;
+ (id)locationNamedEntityToPPScoredLocation:(id)location;
+ (unsigned)namedEntityCategoryToLocationCategory:(unint64_t)category;
- (BOOL)clearWithError:(id *)error deletedCount:(unint64_t *)count;
- (BOOL)deleteAllLocationsFromSourcesWithBundleId:(id)id deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllLocationsFromSourcesWithBundleId:(id)id documentIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllLocationsFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThan:(id)than deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllLocationsFromSourcesWithBundleId:(id)id groupIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)deleteAllLocationsOlderThanDate:(id)date deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)donateLocations:(id)locations source:(id)source contextualNamedEntities:(id)entities algorithm:(unsigned __int16)algorithm cloudSync:(BOOL)sync error:(id *)error;
- (BOOL)iterLocationRecordsWithQuery:(id)query error:(id *)error block:(id)block;
- (BOOL)iterRankedLocationsWithQuery:(id)query error:(id *)error block:(id)block;
- (PPLocalLocationStore)initWithStorage:(id)storage trialWrapper:(id)wrapper;
- (double)finalScoreFromRecordsUsingHybrid:(id)hybrid streamingScorer:(id)scorer mlModel:(id)model;
- (id)_init;
- (id)_loadScoringMLModel;
- (id)homeOrWorkAddresses;
- (id)locationForHome;
- (id)locationForWork;
- (id)locationRecordsWithQuery:(id)query error:(id *)error;
- (id)rankedLocationsWithQuery:(id)query clientProcessName:(id)name error:(id *)error;
- (void)processFeedback:(id)feedback;
- (void)registerFeedback:(id)feedback completion:(id)completion;
@end

@implementation PPLocalLocationStore

+ (id)defaultStore
{
  pthread_mutex_lock(&defaultStore_lock_27335);
  if (!defaultStore_instance_27336)
  {
    _init = [[self alloc] _init];
    v4 = defaultStore_instance_27336;
    defaultStore_instance_27336 = _init;

    if (!defaultStore_instance_27336)
    {
      v5 = pp_locations_log_handle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_INFO, "PPLocalLocationStore defaultStore did not initialize, will try again later. Device may be Class C locked.", v8, 2u);
      }
    }
  }

  v6 = defaultStore_instance_27336;
  pthread_mutex_unlock(&defaultStore_lock_27335);

  return v6;
}

- (void)processFeedback:(id)feedback
{
  v194 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  feedbackItems = [feedbackCopy feedbackItems];
  v152 = feedbackItems;
  if (self)
  {
    v4 = feedbackItems;
    v5 = objc_opt_new();
    v184 = 0u;
    v185 = 0u;
    v186 = 0u;
    v187 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v184 objects:buf count:16];
    if (v7)
    {
      v8 = *v185;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v185 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v184 + 1) + 8 * i);
          v11 = objc_autoreleasePoolPush();
          itemString = [v10 itemString];
          lowercaseString = [itemString lowercaseString];

          v14 = [v5 objectForKeyedSubscript:lowercaseString];
          LODWORD(itemString) = v14 == 0;

          if (itemString)
          {
            v15 = objc_opt_new();
            [v5 setObject:v15 forKeyedSubscript:lowercaseString];
          }

          v16 = [v5 objectForKeyedSubscript:lowercaseString];
          [v16 addObject:v10];

          objc_autoreleasePoolPop(v11);
        }

        v7 = [v6 countByEnumeratingWithState:&v184 objects:buf count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v17 = objc_alloc(MEMORY[0x277CBEB58]);
  allKeys = [v5 allKeys];
  v19 = [v17 initWithArray:allKeys];

  v20 = objc_opt_new();
  v145 = objc_opt_new();
  timestamp = [feedbackCopy timestamp];
  [v145 setScoringDate:timestamp];

  timestamp2 = [feedbackCopy timestamp];
  [v145 setToDate:timestamp2];

  clientBundleId = [feedbackCopy clientBundleId];
  v24 = [PPFeedbackExclusionProvider excludedBundleIdsForClientBundleId:clientBundleId domain:2];
  [v145 setExcludingSourceBundleIds:v24];

  v164 = 0;
  v160[0] = MEMORY[0x277D85DD0];
  v160[1] = 3221225472;
  v160[2] = __40__PPLocalLocationStore_processFeedback___block_invoke;
  v160[3] = &unk_2789799F8;
  v137 = v20;
  v161 = v137;
  v25 = v5;
  v162 = v25;
  v136 = v19;
  v163 = v136;
  v26 = [(PPLocalLocationStore *)self iterLocationRecordsWithQuery:v145 error:&v164 block:v160];
  v132 = v164;
  if (v26)
  {
    if (![v137 count])
    {
LABEL_95:
      v60 = objc_opt_new();
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v112 = v136;
      v113 = [v112 countByEnumeratingWithState:&v156 objects:v182 count:16];
      if (v113)
      {
        v114 = *v157;
        do
        {
          for (j = 0; j != v113; ++j)
          {
            if (*v157 != v114)
            {
              objc_enumerationMutation(v112);
            }

            v116 = *(*(&v156 + 1) + 8 * j);
            v117 = objc_autoreleasePoolPush();
            v118 = [v25 objectForKeyedSubscript:v116];
            [v60 addObjectsFromArray:v118];

            objc_autoreleasePoolPop(v117);
          }

          v113 = [v112 countByEnumeratingWithState:&v156 objects:v182 count:16];
        }

        while (v113);
      }

      if ([v60 count])
      {
        v119 = objc_alloc(MEMORY[0x277D3A328]);
        timestamp3 = [feedbackCopy timestamp];
        clientIdentifier = [feedbackCopy clientIdentifier];
        clientBundleId2 = [feedbackCopy clientBundleId];
        mappingId = [feedbackCopy mappingId];
        v124 = [v119 initWithFeedbackItems:v60 timestamp:timestamp3 clientIdentifier:clientIdentifier clientBundleId:clientBundleId2 mappingId:mappingId];

        [PPFeedbackStorage logFeedback:v124 domain:2 domainStatus:1 inBackground:1];
      }

      goto LABEL_104;
    }

    v27 = objc_alloc(MEMORY[0x277D3A328]);
    timestamp4 = [feedbackCopy timestamp];
    clientIdentifier2 = [feedbackCopy clientIdentifier];
    clientBundleId3 = [feedbackCopy clientBundleId];
    mappingId2 = [feedbackCopy mappingId];
    v32 = [v27 initWithFeedbackItems:v137 timestamp:timestamp4 clientIdentifier:clientIdentifier2 clientBundleId:clientBundleId3 mappingId:mappingId2];

    [PPFeedbackStorage logFeedback:v32 domain:2 domainStatus:2 inBackground:1];
    feedbackItems2 = [v32 feedbackItems];
    clientBundleId4 = [feedbackCopy clientBundleId];
    clientIdentifier3 = [feedbackCopy clientIdentifier];
    [PPFeedbackUtils recordUserEventsFromFeedback:feedbackCopy matchingFeedbackItems:feedbackItems2 clientBundleId:clientBundleId4 clientIdentifier:clientIdentifier3 domain:2];

    v36 = v32;
    v130 = v36;
    if (self)
    {
      clientBundleId5 = [v36 clientBundleId];
      v38 = [PPFeedbackUtils shouldSample:clientBundleId5];

      if (v38)
      {
        oslog = objc_opt_new();
        [oslog setPredictionType:3];
        v39 = [PPFeedbackUtils feedbackMetadataForBaseFeedback:v130];
        [oslog setFeedbackMetadata:v39];

        v135 = v130;
        v40 = objc_opt_new();
        v41 = objc_opt_new();
        v176 = 0u;
        v177 = 0u;
        v174 = 0u;
        v175 = 0u;
        feedbackItems3 = [v135 feedbackItems];
        v43 = [feedbackItems3 countByEnumeratingWithState:&v174 objects:buf count:16];
        if (v43)
        {
          v44 = *v175;
          do
          {
            for (k = 0; k != v43; ++k)
            {
              if (*v175 != v44)
              {
                objc_enumerationMutation(feedbackItems3);
              }

              v46 = *(*(&v174 + 1) + 8 * k);
              itemString2 = [v46 itemString];
              [v40 addObject:itemString2];

              itemString3 = [v46 itemString];
              [v41 setObject:v46 forKeyedSubscript:itemString3];
            }

            v43 = [feedbackItems3 countByEnumeratingWithState:&v174 objects:buf count:16];
          }

          while (v43);
        }

        timestamp5 = [v135 timestamp];
        [timestamp5 timeIntervalSince1970];
        v51 = v50;
        v153 = v40;
        v52 = objc_opt_new();
        v53 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v51];
        [v52 setScoringDate:v53];
        [v52 setToDate:v53];
        *&v184 = 0;
        *(&v184 + 1) = &v184;
        *&v185 = 0x3032000000;
        *(&v185 + 1) = __Block_byref_object_copy__27221;
        *&v186 = __Block_byref_object_dispose__27222;
        *(&v186 + 1) = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v153];
        location[0] = 0;
        location[1] = location;
        *&v171 = 0x3032000000;
        *(&v171 + 1) = __Block_byref_object_copy__27221;
        *&v172 = __Block_byref_object_dispose__27222;
        *(&v172 + 1) = objc_opt_new();
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __84__PPLocalLocationStore__locationToMappedStringMatchingForLocations_timestamp_error___block_invoke;
        aBlock[3] = &unk_278979A20;
        aBlock[4] = &v184;
        aBlock[5] = location;
        v54 = _Block_copy(aBlock);
        v180 = 0;
        v178[0] = MEMORY[0x277D85DD0];
        v178[1] = 3221225472;
        v178[2] = __84__PPLocalLocationStore__locationToMappedStringMatchingForLocations_timestamp_error___block_invoke_2;
        v178[3] = &unk_278979A48;
        v55 = v54;
        v179 = v55;
        v56 = [(PPLocalLocationStore *)self iterLocationRecordsWithQuery:v52 error:&v180 block:v178];
        v57 = v180;
        v58 = v57;
        if (v56)
        {
          v59 = *(location[1] + 5);
          v150 = 0;
        }

        else
        {
          if (v57)
          {
            v62 = v57;
            v150 = v58;
          }

          else
          {
            v150 = 0;
          }

          v63 = pp_locations_log_handle();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            *v188 = 138412290;
            v189 = v58;
            _os_log_error_impl(&dword_23224A000, v63, OS_LOG_TYPE_ERROR, "PPLocalLocationStore mapped string matching: error from iterLocationRecordsWithQuery: %@", v188, 0xCu);
          }

          v59 = 0;
        }

        _Block_object_dispose(location, 8);
        _Block_object_dispose(&v184, 8);

        v64 = objc_opt_new();
        v172 = 0u;
        v173 = 0u;
        *location = 0u;
        v171 = 0u;
        v65 = v59;
        v66 = [v65 countByEnumeratingWithState:location objects:&v184 count:16];
        if (v66)
        {
          v67 = *v171;
          do
          {
            for (m = 0; m != v66; ++m)
            {
              if (*v171 != v67)
              {
                objc_enumerationMutation(v65);
              }

              v69 = *(location[1] + m);
              v70 = [v65 objectForKeyedSubscript:v69];
              v71 = [v41 objectForKeyedSubscript:v69];
              [v64 setObject:v70 forKeyedSubscript:v71];
            }

            v66 = [v65 countByEnumeratingWithState:location objects:&v184 count:16];
          }

          while (v66);
        }

        v72 = v150;
        v128 = v72;
        if (v64)
        {
          v167 = 0u;
          v168 = 0u;
          v165 = 0u;
          v166 = 0u;
          obj = v64;
          v133 = [obj countByEnumeratingWithState:&v165 objects:v183 count:16];
          if (v133)
          {
            v129 = 0;
            v141 = 0;
            v74 = &off_27897A000;
            v131 = *v166;
            *&v73 = 138412546;
            v126 = v73;
            do
            {
              v75 = 0;
              aSelector = v74[342];
              do
              {
                if (*v166 != v131)
                {
                  v76 = v75;
                  objc_enumerationMutation(obj);
                  v75 = v76;
                }

                v139 = v75;
                v77 = *(*(&v165 + 1) + 8 * v75);
                v126 = [PPFeedbackUtils feedbackItemForPPFeedbackItem:v77, v126];
                v78 = [obj objectForKeyedSubscript:v77];
                v79 = [(PPLocationStorage *)self->_storage decayedFeedbackCountsForClusterIdentifier:v78];
                clientBundleId6 = [v135 clientBundleId];
                v148 = v78;
                v147 = v79;
                objc_opt_self();
                v154 = [PPScoreInterpreterBytecode bytecodeFromFactorName:@"PP2StageModel_LC_Agg.plplist" namespaceName:@"PERSONALIZATION_PORTRAIT_LOCATIONS"];
                if (v154)
                {
                  objc_opt_self();
                  v151 = [PPScoreInterpreterBytecode bytecodeFromFactorName:@"PP2StageModel_LC_Final.plplist" namespaceName:@"PERSONALIZATION_PORTRAIT_LOCATIONS"];
                  if (v151)
                  {
                    v80 = [PPStreamingLocationScorer sourceStatsNeededForBytecode:v154];
                    v143 = [(PPLocationStorage *)self->_storage sourceStats:[PPStreamingLocationScorer sourceStatsNeededForBytecode:?]| v80, 0];
                    v146 = objc_opt_new();
                    v81 = objc_opt_new();
                    [v81 setFuzzyMatchingString:v148];
                    [v81 setScoringDate:v146];
                    *&v174 = 0;
                    v82 = [(PPLocalLocationStore *)self locationRecordsWithQuery:v81 error:&v174];
                    v83 = v174;
                    v142 = v83;
                    if (v82)
                    {
                      v84 = [PPStreamingLocationScorer alloc];
                      scoringDate = [v81 scoringDate];
                      v86 = [(PPStreamingLocationScorer *)v84 initWithScoringDate:scoringDate sourceStats:v143 trialWrapper:self->_trialWrapper];

                      v87 = objc_opt_self();
                      v88 = objc_opt_self();
                      firstObject = [v82 firstObject];
                      [(PPStreamingLocationScorer *)v86 startNewClusterWithDecayedFeedbackCounts:v147 mostRelevantRecord:firstObject];

                      v186 = 0u;
                      v187 = 0u;
                      v184 = 0u;
                      v185 = 0u;
                      v90 = v82;
                      v91 = [v90 countByEnumeratingWithState:&v184 objects:buf count:16];
                      if (v91)
                      {
                        v92 = *v185;
                        do
                        {
                          for (n = 0; n != v91; ++n)
                          {
                            if (*v185 != v92)
                            {
                              objc_enumerationMutation(v90);
                            }

                            [(PPStreamingLocationScorer *)v86 addRecord:?];
                          }

                          v91 = [v90 countByEnumeratingWithState:&v184 objects:buf count:16];
                        }

                        while (v91);
                      }

                      location[0] = 0;
                      aBlock[0] = 0;
                      v94 = [(PPStreamingLocationScorer *)v86 getFinalScoreWithAggregationResultOut:aBlock finalResultOut:?];
                      v95 = objc_alloc(MEMORY[0x277D42648]);
                      v96 = [MEMORY[0x277CCABB0] numberWithDouble:v94];
                      v97 = [v95 initWithFirst:v96 second:location[0]];
                    }

                    else
                    {
                      v98 = v83;
                      v86 = pp_locations_log_handle();
                      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
                      {
                        v105 = NSStringFromSelector(aSelector);
                        *buf = v126;
                        v191 = v105;
                        v192 = 2112;
                        v193 = v142;
                        _os_log_error_impl(&dword_23224A000, v86, OS_LOG_TYPE_ERROR, "error in %@: %@", buf, 0x16u);
                      }

                      v97 = 0;
                      v129 = v142;
                    }
                  }

                  else
                  {
                    v97 = 0;
                  }
                }

                else
                {
                  v97 = 0;
                }

                second = [v97 second];
                v100 = [PPFeedbackUtils featuresForScoreDict:second];
                v101 = [v100 mutableCopy];

                if (!v141)
                {
                  v141 = [[PPFeatureRedactor alloc] initWithTrialWrapper:self->_trialWrapper namespaceName:@"PERSONALIZATION_PORTRAIT_LOCATIONS"];
                }

                if (v101)
                {
                  [(PPFeatureRedactor *)v141 transformFeaturesInPlace:v101];
                  first = [v97 first];
                  [first floatValue];
                  v103 = [PPFeedbackUtils scoredItemWithFeaturesForFeatureDictionary:v101 score:?];

                  [v103 addFeedbackItems:v126];
                  [oslog addScoredItems:v103];
                }

                else
                {
                  v104 = pp_locations_log_handle();
                  if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_23224A000, v104, OS_LOG_TYPE_ERROR, "PPLocalLocationStore: unable to fetch feature dictionary.", buf, 2u);
                  }

                  v169 = 0;
                }

                if (!v101)
                {

                  goto LABEL_84;
                }

                v75 = v139 + 1;
              }

              while (v139 + 1 != v133);
              v106 = [obj countByEnumeratingWithState:&v165 objects:v183 count:16];
              v133 = v106;
              v74 = &off_27897A000;
            }

            while (v106);
          }

          else
          {
            v129 = 0;
            v141 = 0;
          }

          [PPFeedbackUtils addBoilerplateToFeedbackLog:oslog];
          mEMORY[0x277D41DA8] = [MEMORY[0x277D41DA8] sharedInstance];
          [mEMORY[0x277D41DA8] logMessage:oslog];

          v169 = 1;
LABEL_84:

          v61 = v169;
        }

        else
        {
          if (v72)
          {
            v107 = v72;
            v129 = v128;
          }

          else
          {
            v129 = 0;
          }

          v109 = pp_locations_log_handle();
          if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v191 = v128;
            _os_log_error_impl(&dword_23224A000, v109, OS_LOG_TYPE_ERROR, "logFeedbackSessionsWithFeedback: nil result from _feedbackItemToLocationMapForFeedback: %@", buf, 0xCu);
          }

          v61 = 0;
        }
      }

      else
      {
        oslog = pp_default_log_handle();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_23224A000, oslog, OS_LOG_TYPE_DEBUG, "PPLocalLocationStore: no feedback session log collection being performed due to sampling", buf, 2u);
        }

        v129 = 0;
        v61 = 1;
      }

      v110 = v129;
      if (v61)
      {
        goto LABEL_94;
      }
    }

    else
    {

      v110 = 0;
    }

    v111 = pp_locations_log_handle();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v191 = v110;
      _os_log_error_impl(&dword_23224A000, v111, OS_LOG_TYPE_ERROR, "PPLocalLocationStore: encountered error in session logging: %@", buf, 0xCu);
    }

LABEL_94:
    [(PPLocationStorage *)self->_storage donateLocationFeedback:v130];

    goto LABEL_95;
  }

  v60 = pp_locations_log_handle();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v191 = v132;
    _os_log_error_impl(&dword_23224A000, v60, OS_LOG_TYPE_ERROR, "processFeedbackItems: error from iterLocationRecordsWithQuery: %@", buf, 0xCu);
  }

LABEL_104:

  v125 = *MEMORY[0x277D85DE8];
}

void __40__PPLocalLocationStore_processFeedback___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v18 = a2;
  v5 = [v18 location];
  v6 = [v5 placemark];
  v7 = [v6 name];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = [v18 location];
    v11 = [v10 placemark];
    v12 = [v11 name];
    v13 = [v9 objectForKeyedSubscript:v12];
    [v8 addObjectsFromArray:v13];

    v14 = *(a1 + 48);
    v15 = [v18 location];
    v16 = [v15 placemark];
    v17 = [v16 name];
    [v14 removeObject:v17];

    if (![*(a1 + 48) count])
    {
      *a3 = 1;
    }
  }
}

void __84__PPLocalLocationStore__locationToMappedStringMatchingForLocations_timestamp_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(*(*(a1 + 32) + 8) + 40) count])
  {
    v6 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = *(*(*(a1 + 32) + 8) + 40);
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          [v5 rangeOfString:v12 options:{1, v16}];
          if (v14)
          {
            [*(*(*(a1 + 40) + 8) + 40) setObject:v5 forKeyedSubscript:v12];
            [v6 addObject:v12];
          }

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [*(*(*(a1 + 32) + 8) + 40) minusSet:v6];
  }

  else
  {
    *a3 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __84__PPLocalLocationStore__locationToMappedStringMatchingForLocations_timestamp_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v6 = [a2 location];
  v5 = [v6 clusterIdentifier];
  (*(v4 + 16))(v4, v5, a3);
}

- (void)registerFeedback:(id)feedback completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  completionCopy = completion;
  v7 = pp_locations_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138739971;
    v12 = feedbackCopy;
    _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "Location feedback received: %{sensitive}@", &v11, 0xCu);
  }

  v8 = objc_opt_new();
  v9 = [PPInternalFeedback fromBaseFeedback:feedbackCopy storeType:3];
  [v8 storePendingFeedback:v9 storeType:3 error:0];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)deleteAllLocationsOlderThanDate:(id)date deletedCount:(unint64_t *)count error:(id *)error
{
  v10 = 0;
  v9 = 0;
  v7 = [(PPLocationStorage *)self->_storage deleteAllLocationsOlderThanDate:date atLeastOneLocationRemoved:&v10 deletedCount:&v9 error:error];
  if (v10 == 1)
  {
    [(_PASLock *)self->_cache runWithLockAcquired:&__block_literal_global_245];
    PPPostNotification("com.apple.proactive.PersonalizationPortrait.locationsInvalidated");
  }

  if (count)
  {
    *count = v9;
  }

  return v7;
}

- (BOOL)deleteAllLocationsFromSourcesWithBundleId:(id)id groupId:(id)groupId olderThan:(id)than deletedCount:(unint64_t *)count error:(id *)error
{
  v12 = 0;
  v11 = 0;
  v9 = [(PPLocationStorage *)self->_storage deleteAllLocationsFromSourcesWithBundleId:id groupId:groupId olderThanDate:than atLeastOneLocationRemoved:&v12 deletedCount:&v11 error:error];
  if (v12 == 1)
  {
    [(_PASLock *)self->_cache runWithLockAcquired:&__block_literal_global_243_27228];
    PPPostNotification("com.apple.proactive.PersonalizationPortrait.locationsInvalidated");
  }

  if (count)
  {
    *count = v11;
  }

  return v9;
}

- (BOOL)deleteAllLocationsFromSourcesWithBundleId:(id)id groupIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error
{
  v11 = 0;
  v10 = 0;
  v8 = [(PPLocationStorage *)self->_storage deleteAllLocationsFromSourcesWithBundleId:id groupIds:ids atLeastOneLocationRemoved:&v11 deletedCount:&v10 error:error];
  if (v11 == 1)
  {
    [(_PASLock *)self->_cache runWithLockAcquired:&__block_literal_global_241];
    PPPostNotification("com.apple.proactive.PersonalizationPortrait.locationsInvalidated");
  }

  if (count)
  {
    *count = v10;
  }

  return v8;
}

- (BOOL)deleteAllLocationsFromSourcesWithBundleId:(id)id documentIds:(id)ids deletedCount:(unint64_t *)count error:(id *)error
{
  v11 = 0;
  v10 = 0;
  v8 = [(PPLocationStorage *)self->_storage deleteAllLocationsFromSourcesWithBundleId:id documentIds:ids atLeastOneLocationRemoved:&v11 deletedCount:&v10 error:error];
  if (v11 == 1)
  {
    [(_PASLock *)self->_cache runWithLockAcquired:&__block_literal_global_239];
    PPPostNotification("com.apple.proactive.PersonalizationPortrait.locationsInvalidated");
  }

  if (count)
  {
    *count = v10;
  }

  return v8;
}

- (BOOL)deleteAllLocationsFromSourcesWithBundleId:(id)id deletedCount:(unint64_t *)count error:(id *)error
{
  v10 = 0;
  v9 = 0;
  v7 = [(PPLocationStorage *)self->_storage deleteAllLocationsFromSourcesWithBundleId:id atLeastOneLocationRemoved:&v10 deletedCount:&v9 error:error];
  if (v10 == 1)
  {
    [(_PASLock *)self->_cache runWithLockAcquired:&__block_literal_global_237];
    PPPostNotification("com.apple.proactive.PersonalizationPortrait.locationsInvalidated");
  }

  if (count)
  {
    *count = v9;
  }

  return v7;
}

- (BOOL)clearWithError:(id *)error deletedCount:(unint64_t *)count
{
  v5 = [(PPLocationStorage *)self->_storage clearWithError:error deletedCount:count];
  [(_PASLock *)self->_cache runWithLockAcquired:&__block_literal_global_234];
  PPPostNotification("com.apple.proactive.PersonalizationPortrait.locationsInvalidated");
  return v5;
}

- (id)locationRecordsWithQuery:(id)query error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v7 = pp_locations_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    limit = [queryCopy limit];
    fromDate = [queryCopy fromDate];
    v10 = [fromDate description];
    toDate = [queryCopy toDate];
    v12 = [toDate description];
    *buf = 134218498;
    v22 = limit;
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "locationRecordsWithQuery called with limit %tu and date range: %@ - %@", buf, 0x20u);
  }

  v13 = objc_opt_new();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __55__PPLocalLocationStore_locationRecordsWithQuery_error___block_invoke;
  v19[3] = &unk_278979988;
  v20 = v13;
  v14 = v13;
  if ([(PPLocalLocationStore *)self iterLocationRecordsWithQuery:queryCopy error:error block:v19])
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)homeOrWorkAddresses
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__27221;
  v10 = __Block_byref_object_dispose__27222;
  v11 = 0;
  cache = self->_cache;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__PPLocalLocationStore_homeOrWorkAddresses__block_invoke;
  v5[3] = &unk_278979960;
  v5[4] = &v6;
  [(_PASLock *)cache runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __43__PPLocalLocationStore_homeOrWorkAddresses__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 homeOrWorkAddresses];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (id)locationForWork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__27221;
  v10 = __Block_byref_object_dispose__27222;
  v11 = 0;
  cache = self->_cache;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__PPLocalLocationStore_locationForWork__block_invoke;
  v5[3] = &unk_278979960;
  v5[4] = &v6;
  [(_PASLock *)cache runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __39__PPLocalLocationStore_locationForWork__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 locationForWork];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (id)locationForHome
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__27221;
  v10 = __Block_byref_object_dispose__27222;
  v11 = 0;
  cache = self->_cache;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__PPLocalLocationStore_locationForHome__block_invoke;
  v5[3] = &unk_278979960;
  v5[4] = &v6;
  [(_PASLock *)cache runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __39__PPLocalLocationStore_locationForHome__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 locationForHome];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)iterLocationRecordsWithQuery:(id)query error:(id *)error block:(id)block
{
  v71 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  blockCopy = block;
  v8 = pp_locations_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    limit = [queryCopy limit];
    fromDate = [queryCopy fromDate];
    v11 = [fromDate description];
    toDate = [queryCopy toDate];
    v13 = [toDate description];
    *buf = 134218498;
    *&buf[4] = limit;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    *&buf[22] = 2112;
    v70 = v13;
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "iterLocationRecordsWithQuery called with limit %tu and date range: %@ - %@", buf, 0x20u);
  }

  if ([queryCopy limit])
  {
    v14 = objc_opt_new();
    if ([queryCopy consumer] == 1 || objc_msgSend(queryCopy, "consumer") == 2)
    {
      locationForHome = [(PPLocalLocationStore *)self locationForHome];
      locationForWork = [(PPLocalLocationStore *)self locationForWork];
      if (locationForHome)
      {
        [v14 addObject:locationForHome];
      }

      if (locationForWork)
      {
        [v14 addObject:locationForWork];
      }
    }

    v17 = [queryCopy copy];
    [v17 setLimit:-1];
    v18 = objc_alloc(MEMORY[0x277CBEB18]);
    limit2 = [queryCopy limit];
    if (limit2 >= 0x40)
    {
      v20 = 64;
    }

    else
    {
      v20 = limit2;
    }

    v21 = [v18 initWithCapacity:v20];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v70 = 0;
    v63[0] = 0;
    v63[1] = v63;
    v63[2] = 0x2020000000;
    v64 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__PPLocalLocationStore_iterLocationRecordsWithQuery_error_block___block_invoke;
    aBlock[3] = &unk_2789798C0;
    v61 = v63;
    v22 = v21;
    v58 = v22;
    v60 = blockCopy;
    v62 = buf;
    v59 = queryCopy;
    v23 = _Block_copy(aBlock);
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __65__PPLocalLocationStore_iterLocationRecordsWithQuery_error_block___block_invoke_2;
    v47[3] = &unk_2789798E8;
    v24 = v14;
    v48 = v24;
    v25 = _Block_copy(v47);
    storage = self->_storage;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __65__PPLocalLocationStore_iterLocationRecordsWithQuery_error_block___block_invoke_3;
    v39[3] = &unk_278979910;
    v44 = &v53;
    v27 = v24;
    v40 = v27;
    v28 = v25;
    v42 = v28;
    v45 = &v49;
    v29 = v22;
    v41 = v29;
    v30 = v23;
    v43 = v30;
    v46 = v63;
    v31 = [(PPLocationStorage *)storage iterLocationRecordsWithQuery:v17 error:error block:v39];
    if (v31)
    {
      v30[2](v30);
    }

    if (v50[3])
    {
      v32 = pp_locations_log_handle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v35 = v50[3];
        v36 = v54[3];
        *v65 = 134218240;
        v66 = v35;
        v67 = 2048;
        v68 = v36;
        _os_log_debug_impl(&dword_23224A000, v32, OS_LOG_TYPE_DEBUG, "iterLocationRecordsWithQuery filtered %tu of %tu items due to map UI restriction", v65, 0x16u);
      }
    }

    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(&v53, 8);

    _Block_object_dispose(v63, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    LOBYTE(v31) = 1;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v31;
}

void __65__PPLocalLocationStore_iterLocationRecordsWithQuery_error_block___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = *(*(a1 + 56) + 8);
        (*(*(a1 + 48) + 16))(*(a1 + 48));
        ++*(*(*(a1 + 64) + 8) + 24);
        v10 = *(*(a1 + 56) + 8);
        if (*(v10 + 24))
        {
          v11 = 1;
        }

        else
        {
          v12 = *(*(*(a1 + 64) + 8) + 24);
          v11 = v12 >= [*(a1 + 40) limit];
          v10 = *(*(a1 + 56) + 8);
        }

        *(v10 + 24) = v11;
        if (*(*(*(a1 + 56) + 8) + 24))
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  [*(a1 + 32) removeAllObjects];
  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __65__PPLocalLocationStore_iterLocationRecordsWithQuery_error_block___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([PPLocationSupport fuzzyMatchingLocations:*(*(&v10 + 1) + 8 * i) and:v3, v10])
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

void __65__PPLocalLocationStore_iterLocationRecordsWithQuery_error_block___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = v5;
  ++*(*(*(a1 + 64) + 8) + 24);
  v9 = v5;
  if (*(a1 + 32) && (v7 = *(a1 + 48), [v5 location], v8 = objc_claimAutoreleasedReturnValue(), LODWORD(v7) = (*(v7 + 16))(v7, v8), v8, v6 = v9, v7))
  {
    ++*(*(*(a1 + 72) + 8) + 24);
  }

  else
  {
    [*(a1 + 40) addObject:v6];
    if ([*(a1 + 40) count] == 64)
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  *a3 = *(*(*(a1 + 80) + 8) + 24);
}

- (double)finalScoreFromRecordsUsingHybrid:(id)hybrid streamingScorer:(id)scorer mlModel:(id)model
{
  v35 = *MEMORY[0x277D85DE8];
  hybridCopy = hybrid;
  scorerCopy = scorer;
  modelCopy = model;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = [hybridCopy countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(hybridCopy);
        }

        [(PPStreamingLocationScorer *)scorerCopy addRecord:?];
      }

      v11 = [hybridCopy countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v11);
  }

  v27 = 0;
  *&v14 = [(PPStreamingLocationScorer *)scorerCopy getFinalScoreWithAggregationResultOut:&v27 finalResultOut:?];
  if (v27)
  {
    v26 = 0;
    v15 = [modelCopy predictionFromFeatures:v27 error:{&v26, v14}];
    v16 = v26;
    if (v15)
    {
      v17 = [v15 featureValueForName:@"computed_score"];
      multiArrayValue = [v17 multiArrayValue];

      if (multiArrayValue)
      {
        multiArrayValue2 = [v17 multiArrayValue];
        v20 = [multiArrayValue2 objectAtIndexedSubscript:0];
        [v20 doubleValue];
        v22 = v21;
      }

      else
      {
        [v17 doubleValue];
        v22 = v23;
      }
    }

    else
    {
      v17 = pp_default_log_handle();
      v22 = -1.0;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v33 = v16;
        _os_log_fault_impl(&dword_23224A000, v17, OS_LOG_TYPE_FAULT, "PPLocalLocationStore: unable to retrieve prediction %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v16 = pp_default_log_handle();
    v22 = 0.0;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_23224A000, v16, OS_LOG_TYPE_FAULT, "PPLocalLocationStore: the score interpreter provided a nil final output.", buf, 2u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)rankedLocationsWithQuery:(id)query clientProcessName:(id)name error:(id *)error
{
  v105 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  nameCopy = name;
  v8 = pp_locations_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    limit = [queryCopy limit];
    fromDate = [queryCopy fromDate];
    v11 = [fromDate description];
    toDate = [queryCopy toDate];
    v13 = [toDate description];
    *buf = 134218498;
    *&buf[4] = limit;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    *&buf[22] = 2112;
    v88 = v13;
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "rankedLocationsWithQuery called with limit %tu and date range: %@ - %@", buf, 0x20u);
  }

  if (self)
  {
    v14 = [queryCopy copy];
    [v14 setLimit:-1];
    v15 = objc_opt_new();
    v77 = 0;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __65__PPLocalLocationStore__unlimitedLocationRecordsWithQuery_error___block_invoke;
    v88 = &unk_278979988;
    v16 = v15;
    selfCopy = v16;
    v17 = [(PPLocalLocationStore *)self iterLocationRecordsWithQuery:v14 error:&v77 block:buf];
    v18 = v77;
    if (v17)
    {
      v71 = v16;
      v19 = 0;
    }

    else
    {
      v20 = pp_locations_log_handle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v100) = 138412290;
        *(&v100 + 4) = v18;
        _os_log_error_impl(&dword_23224A000, v20, OS_LOG_TYPE_ERROR, "_unlimitedLocationRecordsWithQuery: nil result from iterLocationRecordsWithQuery: %@", &v100, 0xCu);
      }

      v21 = v18;
      v71 = 0;
      v19 = v18;
    }
  }

  else
  {
    v19 = 0;
    v71 = 0;
  }

  v70 = v19;
  if (v71)
  {
    objc_opt_self();
    v69 = [PPScoreInterpreterBytecode bytecodeFromFactorName:@"PP2StageModel_LC_Agg.plplist" namespaceName:@"PERSONALIZATION_PORTRAIT_LOCATIONS"];
    objc_opt_self();
    v68 = [PPScoreInterpreterBytecode bytecodeFromFactorName:@"PP2StageModel_LC_Final.plplist" namespaceName:@"PERSONALIZATION_PORTRAIT_LOCATIONS"];
    v22 = 0;
    if (v69 && v68)
    {
      v23 = [PPStreamingLocationScorer sourceStatsNeededForBytecode:v69];
      v22 = [PPStreamingLocationScorer sourceStatsNeededForBytecode:v68]| v23;
    }

    scoringDate = [queryCopy scoringDate];
    v25 = scoringDate;
    if (scoringDate)
    {
      v26 = scoringDate;
    }

    else
    {
      v26 = objc_opt_new();
    }

    v29 = v26;

    v30 = [(PPLocationStorage *)self->_storage sourceStats:v22 withExcludedAlgorithms:0];
    v31 = v71;
    v32 = v29;
    v33 = v30;
    v66 = v31;
    v34 = [PPLocationClusterID clustersWithRecords:v31];
    v35 = [PPLocationClusterID latLongTableWithClusters:v34];
    v77 = 0;
    v78 = &v77;
    v79 = 0x2020000000;
    v80 = 0;
    v36 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v34, "count")}];
    v37 = +[PPConfiguration sharedInstance];
    locationScoringUsesHybrid = [v37 locationScoringUsesHybrid];

    if (locationScoringUsesHybrid)
    {
      _loadScoringMLModel = [(PPLocalLocationStore *)self _loadScoringMLModel];
    }

    else
    {
      _loadScoringMLModel = 0;
    }

    v73 = 0;
    v74 = &v73;
    v75 = 0x2020000000;
    v76 = 0;
    v40 = +[PPConfiguration sharedInstance];
    [v40 scoreThresholdForLocation];
    v42 = v41;

    *&v100 = 0;
    *(&v100 + 1) = &v100;
    v101 = 0x3032000000;
    v102 = __Block_byref_object_copy__27221;
    v103 = __Block_byref_object_dispose__27222;
    v104 = 0;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __71__PPLocalLocationStore_scoreLocations_scoringDate_sourceStats_mlModel___block_invoke;
    v88 = &unk_278979898;
    v98 = sel_scoreLocations_scoringDate_sourceStats_mlModel_;
    selfCopy = self;
    v43 = v35;
    v90 = v43;
    v95 = &v100;
    v44 = v32;
    selfCopy2 = v44;
    v45 = v33;
    v92 = v45;
    v46 = _loadScoringMLModel;
    v93 = v46;
    v96 = &v73;
    v99 = v42;
    v47 = v36;
    v94 = v47;
    v97 = &v77;
    [v34 enumerateKeysAndObjectsUsingBlock:buf];
    v48 = v78[3];
    v49 = [v47 count];
    v50 = pp_locations_log_handle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = v78[3];
      if (*(v74 + 24))
      {
        v52 = 0.0;
      }

      else
      {
        v52 = v42;
      }

      *v81 = 134218496;
      v82 = v51;
      v83 = 2048;
      v84 = v52;
      v85 = 2048;
      v86 = &v48[v49];
      _os_log_impl(&dword_23224A000, v50, OS_LOG_TYPE_DEFAULT, "PPLocalLocationStore: filtered %tu items below threshold of %f out of %tu total.", v81, 0x20u);
    }

    v53 = v94;
    v54 = v47;

    _Block_object_dispose(&v100, 8);
    _Block_object_dispose(&v73, 8);
    _Block_object_dispose(&v77, 8);

    v55 = objc_opt_self();
    v56 = objc_opt_self();
    v57 = [v54 count];
    v58 = queryCopy;
    v59 = nameCopy;
    v60 = +[PPMetricsUtils loggingQueue];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __83__PPLocalLocationStore__petLoggingForQuery_resultCount_clientProcessName_hasError___block_invoke;
    v88 = &unk_278979850;
    v61 = v59;
    selfCopy = v61;
    v92 = v57;
    v62 = v58;
    LOBYTE(v93) = v70 != 0;
    v90 = v62;
    selfCopy2 = self;
    dispatch_async(v60, buf);

    limit2 = [v62 limit];
    v28 = v54;
    objc_opt_self();
    [v28 sortUsingComparator:&__block_literal_global_231];
    if ([v28 count] > limit2)
    {
      [v28 removeObjectsInRange:{limit2, objc_msgSend(v28, "count") - limit2}];
    }
  }

  else if (error)
  {
    v27 = v70;
    v28 = 0;
    *error = v70;
  }

  else
  {
    v28 = 0;
  }

  v64 = *MEMORY[0x277D85DE8];

  return v28;
}

uint64_t __51__PPLocalLocationStore_sortAndTruncate_queryLimit___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D3A578];
  v5 = a3;
  [a2 score];
  v7 = v6;
  [v5 score];
  v9 = v8;

  return [v4 reverseCompareDouble:v7 withDouble:v9];
}

void __83__PPLocalLocationStore__petLoggingForQuery_resultCount_clientProcessName_hasError___block_invoke(uint64_t a1)
{
  v9 = objc_opt_new();
  [v9 setBundleId:*(a1 + 32)];
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = log10(v2);
  }

  else
  {
    v3 = 0;
  }

  [v9 setResultSizeLog10:v3];
  v4 = [*(a1 + 40) scoringDate];
  [v9 setTimeSpec:v4 != 0];

  [v9 setLimitHit:{*(a1 + 56) > objc_msgSend(*(a1 + 40), "limit")}];
  v5 = [*(a1 + 40) fromDate];
  [v9 setTimeLimited:v5 != 0];

  v6 = [*(a1 + 40) excludingSourceBundleIds];
  [v9 setExclusionSpec:{objc_msgSend(v6, "count") != 0}];

  [v9 setError:*(a1 + 64)];
  v7 = [*(*(a1 + 48) + 24) concatenatedTreatmentNames];
  [v9 setActiveTreatments:v7];

  v8 = [MEMORY[0x277D41DA8] sharedInstance];
  [v8 trackScalarForMessage:v9];
}

- (id)_loadScoringMLModel
{
  v14 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v1 = *(self + 24);
    v7 = 0;
    v2 = [v1 mlModelForModelName:@"PPModel_LOC.mlmodelc" namespaceName:@"PERSONALIZATION_PORTRAIT_LOCATIONS" error:&v7];
    v3 = v7;
    if (!v2)
    {
      v4 = pp_locations_log_handle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v9 = v3;
        v10 = 2112;
        v11 = @"PPModel_LOC.mlmodelc";
        v12 = 2112;
        v13 = @"PERSONALIZATION_PORTRAIT_LOCATIONS";
        _os_log_error_impl(&dword_23224A000, v4, OS_LOG_TYPE_ERROR, "PPLocalLocationStore: error %@ in retrieving %@ model with namespace %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v2 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v2;
}

void __71__PPLocalLocationStore_scoreLocations_scoringDate_sourceStats_mlModel___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (![v6 count])
  {
    v44 = [MEMORY[0x277CCA890] currentHandler];
    [v44 handleFailureInMethod:*(a1 + 104) object:*(a1 + 32) file:@"PPLocalLocationStore.m" lineNumber:368 description:{@"Location cluster for %@ had 0 records", v5}];
  }

  v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_209];
  v8 = [v7 lastObject];

  v9 = [*(a1 + 40) objectForKeyedSubscript:v5];
  [v8 supplementFieldsWithClusterID:v5 locationWithLatLong:v9];

  v10 = [v8 location];
  v11 = [v10 clusterIdentifier];

  if (v11)
  {
    v12 = *(*(a1 + 32) + 40);
    v13 = [v8 location];
    v14 = [v13 clusterIdentifier];
    v15 = [v12 decayedFeedbackCountsForClusterIdentifier:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = *(*(*(a1 + 80) + 8) + 40);
  if (!v16)
  {
    v17 = [[PPStreamingLocationScorer alloc] initWithScoringDate:*(a1 + 56) sourceStats:*(*(a1 + 32) + 24) trialWrapper:?];
    v18 = *(*(a1 + 80) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v16 = *(*(*(a1 + 80) + 8) + 40);
  }

  [(PPStreamingLocationScorer *)v16 startNewClusterWithDecayedFeedbackCounts:v15 mostRelevantRecord:v8];
  v20 = +[PPConfiguration sharedInstance];
  v21 = [v20 locationScoringUsesHybrid];

  if (!v21)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v24 = v6;
    v25 = [v24 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v46;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v46 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [(PPStreamingLocationScorer *)*(*(*(a1 + 80) + 8) + 40) addRecord:?];
        }

        v26 = [v24 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v26);
    }

    v29 = *(*(*(a1 + 80) + 8) + 40);
    if (v29)
    {
      v30 = [(PPStreamingLocationScorer *)v29 getFinalScoreWithAggregationResultOut:0 finalResultOut:?];
    }

    else
    {
      v30 = 0.0;
    }

    *(*(*(a1 + 88) + 8) + 24) = 1;
    goto LABEL_23;
  }

  v22 = *(a1 + 64);
  if (v22)
  {
    v23 = v22;
LABEL_22:
    [*(a1 + 32) finalScoreFromRecordsUsingHybrid:v6 streamingScorer:*(*(*(a1 + 80) + 8) + 40) mlModel:v23];
    v30 = v31;

LABEL_23:
    if (*(*(*(a1 + 88) + 8) + 24) == 1 && v30 > 0.0 || v30 >= *(a1 + 112))
    {
      v33 = objc_alloc(MEMORY[0x277D3A3D8]);
      v34 = [v8 location];
      v35 = [v34 placemark];
      v36 = [v8 location];
      v37 = [v33 initWithPlacemark:v35 category:objc_msgSend(v36 mostRelevantRecord:{"category"), v8}];

      v38 = objc_alloc(MEMORY[0x277D3A4A8]);
      [v8 sentimentScore];
      v40 = [v38 initWithLocation:v37 score:v30 sentimentScore:v39];
      [*(a1 + 72) addObject:v40];
    }

    else
    {
      v32 = pp_locations_log_handle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v43 = *(a1 + 112);
        *buf = 134218240;
        v50 = v30;
        v51 = 2048;
        v52 = v43;
        _os_log_debug_impl(&dword_23224A000, v32, OS_LOG_TYPE_DEBUG, "Scoring: filtering out location with score %f below threshold of %f", buf, 0x16u);
      }

      ++*(*(*(a1 + 96) + 8) + 24);
    }

    goto LABEL_30;
  }

  v23 = [(PPLocalLocationStore *)*(a1 + 32) _loadScoringMLModel];
  if (v23)
  {
    goto LABEL_22;
  }

  v42 = pp_locations_log_handle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_23224A000, v42, OS_LOG_TYPE_ERROR, "PPLocalLocationStore: unable to locate ML model.", buf, 2u);
  }

LABEL_30:
  v41 = *MEMORY[0x277D85DE8];
}

uint64_t __71__PPLocalLocationStore_scoreLocations_scoringDate_sourceStats_mlModel___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 location];
  v7 = [v6 placemark];
  v8 = [v7 name];
  v9 = [v8 localizedCapitalizedString];
  v10 = [v4 location];
  v11 = [v10 placemark];
  v12 = [v11 name];
  v27 = [v9 isEqual:v12];

  v13 = [v5 location];
  v14 = [v13 placemark];
  v15 = [v14 name];
  v16 = [v15 localizedCapitalizedString];
  v17 = [v5 location];
  v18 = [v17 placemark];
  v19 = [v18 name];
  v20 = [v16 isEqual:v19];

  if (!v27)
  {
    if (v20)
    {
      v21 = -1;
      goto LABEL_7;
    }

LABEL_6:
    v22 = [v4 source];
    v23 = [v22 date];
    v24 = [v5 source];
    v25 = [v24 date];
    v21 = [v23 compare:v25];

    goto LABEL_7;
  }

  if (v20)
  {
    goto LABEL_6;
  }

  v21 = 1;
LABEL_7:

  return v21;
}

- (BOOL)iterRankedLocationsWithQuery:(id)query error:(id *)error block:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v9 = [(PPLocalLocationStore *)self rankedLocationsWithQuery:query clientProcessName:0 error:error];
  v10 = v9;
  if (v9)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        v19 = 0;
        blockCopy[2](blockCopy, v16, &v19);
        if (v19)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v10 != 0;
}

- (BOOL)donateLocations:(id)locations source:(id)source contextualNamedEntities:(id)entities algorithm:(unsigned __int16)algorithm cloudSync:(BOOL)sync error:(id *)error
{
  syncCopy = sync;
  algorithmCopy = algorithm;
  v87 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  sourceCopy = source;
  entitiesCopy = entities;
  if (locationsCopy)
  {
    if (sourceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPLocalLocationStore.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"locations"}];

    if (sourceCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPLocalLocationStore.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"source"}];

LABEL_3:
  v16 = pp_locations_log_handle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [locationsCopy count];
    v18 = [MEMORY[0x277D3A3F0] describeAlgorithm:algorithmCopy];
    *buf = 134218498;
    *&buf[4] = v17;
    *&buf[12] = 2112;
    *&buf[14] = sourceCopy;
    *&buf[22] = 2112;
    v82 = v18;
    _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPLocalLocationStore received a donation of %tu locations from source: %@, algorithm: %@", buf, 0x20u);
  }

  v19 = +[PPSettings sharedInstance];
  bundleId = [sourceCopy bundleId];
  v21 = [v19 bundleIdentifierIsEnabledForDonation:bundleId];

  if ((v21 & 1) == 0)
  {
    v26 = pp_locations_log_handle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      bundleId2 = [sourceCopy bundleId];
      *buf = 138412290;
      *&buf[4] = bundleId2;
      _os_log_debug_impl(&dword_23224A000, v26, OS_LOG_TYPE_DEBUG, "PPLocalLocationStore suppressed location donation from disabled bundleId: %@", buf, 0xCu);
    }

    v27 = +[PPMetricsUtils loggingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__PPLocalLocationStore_donateLocations_source_contextualNamedEntities_algorithm_cloudSync_error___block_invoke;
    block[3] = &unk_2789797E0;
    v78 = sourceCopy;
    selfCopy = self;
    dispatch_async(v27, block);

    v28 = v78;
    goto LABEL_28;
  }

  if (syncCopy)
  {
    v22 = +[PPSettings sharedInstance];
    bundleId3 = [sourceCopy bundleId];
    v24 = [v22 bundleIdentifierIsEnabledForCloudKit:bundleId3];

    if (v24)
    {
      v25 = 1;
      goto LABEL_16;
    }

    v29 = pp_locations_log_handle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      bundleId4 = [sourceCopy bundleId];
      *buf = 138412290;
      *&buf[4] = bundleId4;
      _os_log_debug_impl(&dword_23224A000, v29, OS_LOG_TYPE_DEBUG, "PPLocalLocationStore suppressed location cloudSync on donation from disabled bundleId: %@", buf, 0xCu);
    }
  }

  v25 = 0;
LABEL_16:
  selfCopy2 = self;
  if (![locationsCopy count])
  {
    v40 = +[PPMetricsUtils loggingQueue];
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __97__PPLocalLocationStore_donateLocations_source_contextualNamedEntities_algorithm_cloudSync_error___block_invoke_191;
    v74[3] = &unk_2789797E0;
    v75 = sourceCopy;
    selfCopy3 = self;
    dispatch_async(v40, v74);

    v28 = v75;
LABEL_28:

    LOBYTE(v41) = 1;
    goto LABEL_36;
  }

  v65 = v25;
  v66 = entitiesCopy;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v31 = locationsCopy;
  v32 = [v31 countByEnumeratingWithState:&v70 objects:v80 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v71;
    while (2)
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v71 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v70 + 1) + 8 * i);
        location = [v36 location];
        if ([location category] == 6)
        {

LABEL_30:
          [(_PASLock *)selfCopy2->_cache runWithLockAcquired:&__block_literal_global_27277];
          goto LABEL_31;
        }

        location2 = [v36 location];
        category = [location2 category];

        if (category == 5)
        {
          goto LABEL_30;
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v70 objects:v80 count:16];
      if (v33)
      {
        continue;
      }

      break;
    }
  }

LABEL_31:
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __97__PPLocalLocationStore_donateLocations_source_contextualNamedEntities_algorithm_cloudSync_error___block_invoke_3;
  v69[3] = &unk_278979828;
  v69[4] = selfCopy2;
  v42 = [v31 _pas_filteredArrayWithTest:v69];
  v43 = [v31 count];
  v44 = [v42 count];
  v45 = pp_locations_log_handle();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = v43 - v44;
    v47 = [v31 count];
    bundleId5 = [sourceCopy bundleId];
    *buf = 134218498;
    *&buf[4] = v46;
    *&buf[12] = 2048;
    *&buf[14] = v47;
    *&buf[22] = 2112;
    v82 = bundleId5;
    _os_log_impl(&dword_23224A000, v45, OS_LOG_TYPE_DEFAULT, "PPLocalLocationStore: filtered %tu URLs of (of %tu) from %@", buf, 0x20u);
  }

  entitiesCopy = v66;
  v41 = [(PPLocationStorage *)selfCopy2->_storage donateLocations:v42 source:sourceCopy contextualNamedEntities:v66 algorithm:algorithmCopy cloudSync:v65 error:error];
  if (v41)
  {
    bundleId6 = [sourceCopy bundleId];
    groupId = [sourceCopy groupId];
    v51 = v42;
    v52 = bundleId6;
    v53 = groupId;
    v54 = +[PPMetricsUtils loggingQueue];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __76__PPLocalLocationStore__logDonationForLocations_bundleId_algorithm_groupId___block_invoke;
    v82 = &unk_2789799D0;
    v55 = v52;
    v83 = v55;
    v56 = v53;
    entitiesCopy = v66;
    v57 = v56;
    v84 = v56;
    v85 = selfCopy2;
    v58 = v51;
    v86 = v58;
    dispatch_async(v54, buf);

    PPPostNotification("com.apple.proactive.PersonalizationPortrait.locationsDidChangeMeaningfully");
  }

LABEL_36:
  v59 = *MEMORY[0x277D85DE8];
  return v41;
}

void __97__PPLocalLocationStore_donateLocations_source_contextualNamedEntities_algorithm_cloudSync_error___block_invoke(uint64_t a1)
{
  v5 = objc_opt_new();
  [v5 setReason:1];
  v2 = [*(a1 + 32) bundleId];
  [v5 setBundleId:v2];

  v3 = [*(*(a1 + 40) + 24) concatenatedTreatmentNames];
  [v5 setActiveTreatments:v3];

  v4 = [MEMORY[0x277D41DA8] sharedInstance];
  [v4 trackScalarForMessage:v5];
}

void __97__PPLocalLocationStore_donateLocations_source_contextualNamedEntities_algorithm_cloudSync_error___block_invoke_191(uint64_t a1)
{
  v5 = objc_opt_new();
  [v5 setReason:0];
  v2 = [*(a1 + 32) bundleId];
  [v5 setBundleId:v2];

  v3 = [*(*(a1 + 40) + 24) concatenatedTreatmentNames];
  [v5 setActiveTreatments:v3];

  v4 = [MEMORY[0x277D41DA8] sharedInstance];
  [v4 trackScalarForMessage:v5];
}

BOOL __97__PPLocalLocationStore_donateLocations_source_contextualNamedEntities_algorithm_cloudSync_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 location];
  v5 = [v4 placemark];
  v6 = [v5 name];

  if ([v6 length] && *(a1 + 32))
  {
    v7 = MEMORY[0x277CBEBC0];
    v8 = v6;
    v9 = [[v7 alloc] initWithString:v8];

    if (v9)
    {
      v10 = [v9 host];
      if (v10)
      {
        v11 = [v9 scheme];
        v12 = v11 == 0;
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
  }

  v13 = [v3 location];
  v14 = [v13 clusterIdentifier];
  v15 = [v14 length];

  if (v15)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __76__PPLocalLocationStore__logDonationForLocations_bundleId_algorithm_groupId___block_invoke(uint64_t a1)
{
  v5 = objc_opt_new();
  [v5 setDonationSource:{+[PPMetricsUtils sourceForBundleId:](PPMetricsUtils, "sourceForBundleId:", *(a1 + 32))}];
  v2 = [PPMetricsUtils filterGroupIdAllowance:*(a1 + 40)];
  [v5 setGroupId:v2];

  v3 = [*(*(a1 + 48) + 24) concatenatedTreatmentNames];
  [v5 setActiveTreatments:v3];

  v4 = [MEMORY[0x277D41DA8] sharedInstance];
  [v4 trackDistributionForMessage:v5 value:{objc_msgSend(*(a1 + 56), "count")}];
}

- (id)_init
{
  v3 = +[PPSQLDatabase sharedInstance];
  if (v3)
  {
    v4 = [[PPLocationStorage alloc] initWithDatabase:v3];
    if (v4)
    {
      v5 = +[PPTrialWrapper sharedInstance];
      self = [(PPLocalLocationStore *)self initWithStorage:v4 trialWrapper:v5];

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PPLocalLocationStore)initWithStorage:(id)storage trialWrapper:(id)wrapper
{
  storageCopy = storage;
  wrapperCopy = wrapper;
  if (!storageCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPLocalLocationStore.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"storage"}];
  }

  v27.receiver = self;
  v27.super_class = PPLocalLocationStore;
  v10 = [(PPLocalLocationStore *)&v27 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_storage, storage);
    objc_initWeak(&location, v11);
    v12 = objc_alloc(MEMORY[0x277D425F8]);
    v13 = [PPLocationCache alloc];
    v14 = objc_loadWeakRetained(&location);
    v15 = [(PPLocationCache *)v13 initWithLocationStore:v14];
    v16 = [v12 initWithGuardedData:v15];
    cache = v11->_cache;
    v11->_cache = v16;

    v18 = objc_opt_new();
    modelCache = v11->_modelCache;
    v11->_modelCache = v18;

    objc_storeStrong(&v11->_trialWrapper, wrapper);
    trialWrapper = v11->_trialWrapper;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __53__PPLocalLocationStore_initWithStorage_trialWrapper___block_invoke;
    v24[3] = &unk_2789797B8;
    objc_copyWeak(&v25, &location);
    v21 = [(PPTrialWrapper *)trialWrapper addUpdateHandlerForNamespaceName:@"PERSONALIZATION_PORTRAIT_LOCATIONS" block:v24];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __53__PPLocalLocationStore_initWithStorage_trialWrapper___block_invoke(uint64_t a1)
{
  v2 = pp_locations_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5[0] = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_INFO, "PPLocalLocationStore: refreshing model cache due to prompt from Trial.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[2] removeAllObjects];
  }
}

+ (unsigned)namedEntityCategoryToLocationCategory:(unint64_t)category
{
  if (category > 0x15)
  {
    return 2;
  }

  else
  {
    return word_232418918[category];
  }
}

+ (id)locationFromMapItem:(id)item
{
  itemCopy = item;
  geoAddress = [itemCopy geoAddress];
  structuredAddress = [geoAddress structuredAddress];
  [itemCopy coordinate];
  v6 = fabs(v5) <= 180.0;
  v8 = fabs(v7) <= 90.0 && v6;
  v26 = MEMORY[0x277D3A3F8];
  v28 = v8;
  if (v8)
  {
    v9 = MEMORY[0x277CCABB0];
    [itemCopy coordinate];
    v31 = [v9 numberWithDouble:?];
    v10 = MEMORY[0x277CCABB0];
    [itemCopy coordinate];
    v30 = [v10 numberWithDouble:v11];
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  name = [itemCopy name];
  thoroughfare = [structuredAddress thoroughfare];
  subThoroughfare = [structuredAddress subThoroughfare];
  locality = [structuredAddress locality];
  subLocality = [structuredAddress subLocality];
  administrativeArea = [structuredAddress administrativeArea];
  subAdministrativeArea = [structuredAddress subAdministrativeArea];
  postCode = [structuredAddress postCode];
  countryCode = [structuredAddress countryCode];
  country = [structuredAddress country];
  inlandWater = [structuredAddress inlandWater];
  ocean = [structuredAddress ocean];
  areaOfInterests = [structuredAddress areaOfInterests];
  v27 = [v26 placemarkWithLatitudeDegrees:v31 longitudeDegrees:v30 name:name thoroughfare:thoroughfare subthoroughFare:subThoroughfare locality:locality subLocality:subLocality administrativeArea:administrativeArea subAdministrativeArea:subAdministrativeArea postalCode:postCode countryCode:countryCode country:country inlandWater:inlandWater ocean:ocean areasOfInterest:areaOfInterests];

  if (v28)
  {
  }

  v18 = [objc_alloc(MEMORY[0x277D3A3D8]) initWithPlacemark:v27 category:0 mostRelevantRecord:0];

  return v18;
}

+ (id)locationNamedEntityToPPScoredLocation:(id)location
{
  v3 = MEMORY[0x277D3A3F8];
  v4 = MEMORY[0x277CCABB0];
  locationCopy = location;
  location = [locationCopy location];
  [location coordinate];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  location2 = [locationCopy location];
  [location2 coordinate];
  v9 = [v7 numberWithDouble:v8];
  locationName = [locationCopy locationName];
  streetAddress = [locationCopy streetAddress];
  city = [locationCopy city];
  stateOrProvince = [locationCopy stateOrProvince];
  postalCode = [locationCopy postalCode];
  country = [locationCopy country];
  v16 = [v3 placemarkWithLatitudeDegrees:v6 longitudeDegrees:v9 name:locationName thoroughfare:streetAddress subthoroughFare:0 locality:city subLocality:0 administrativeArea:stateOrProvince subAdministrativeArea:0 postalCode:postalCode countryCode:0 country:country inlandWater:0 ocean:0 areasOfInterest:0];

  v17 = [objc_alloc(MEMORY[0x277D3A3D8]) initWithPlacemark:v16 category:0 mostRelevantRecord:0];
  v18 = objc_alloc(MEMORY[0x277D3A4A8]);
  [locationCopy score];
  v20 = v19;

  v21 = [v18 initWithLocation:v17 score:v20 sentimentScore:0.0];

  return v21;
}

+ (id)locationFromMapItemDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"MKMapItemGEOMapItem"];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D0EBC0]) initWithData:v3];
    v5 = v4;
    if (v4)
    {
      name = [v4 name];
      if (![name length])
      {
        v7 = pp_locations_log_handle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPLocalLocationStore: locationFromMapItemDictionary: GEOMapItem is missing a name.", buf, 2u);
        }
      }

      v41 = name;
      geoAddress = [v5 geoAddress];
      structuredAddress = [geoAddress structuredAddress];

      if (!structuredAddress)
      {
        v10 = pp_locations_log_handle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v43 = 0;
          _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "PPLocalLocationStore: locationFromMapItemDictionary: GEOMapItem is missing a structured address.", v43, 2u);
        }
      }

      [v5 coordinate];
      if (v11 == 0.0)
      {
        [v5 coordinate];
        if (v12 == 0.0)
        {
          v13 = pp_locations_log_handle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *v42 = 0;
            _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "PPLocalLocationStore: locationFromMapItemDictionary: GEOMapItem is missing coordinates.", v42, 2u);
          }
        }
      }

      v40 = v3;
      v37 = MEMORY[0x277D3A3F8];
      v14 = MEMORY[0x277CCABB0];
      [v5 coordinate];
      v34 = [v14 numberWithDouble:?];
      v15 = MEMORY[0x277CCABB0];
      [v5 coordinate];
      v36 = [v15 numberWithDouble:v16];
      thoroughfare = [structuredAddress thoroughfare];
      subThoroughfare = [structuredAddress subThoroughfare];
      locality = [structuredAddress locality];
      subLocality = [structuredAddress subLocality];
      administrativeArea = [structuredAddress administrativeArea];
      [structuredAddress subAdministrativeArea];
      v29 = v39 = v5;
      postCode = [structuredAddress postCode];
      countryCode = [structuredAddress countryCode];
      country = [structuredAddress country];
      inlandWater = [structuredAddress inlandWater];
      ocean = [structuredAddress ocean];
      areaOfInterests = [structuredAddress areaOfInterests];
      v38 = [v37 placemarkWithLatitudeDegrees:v34 longitudeDegrees:v36 name:v41 thoroughfare:thoroughfare subthoroughFare:subThoroughfare locality:locality subLocality:subLocality administrativeArea:administrativeArea subAdministrativeArea:v29 postalCode:postCode countryCode:countryCode country:country inlandWater:inlandWater ocean:ocean areasOfInterest:areaOfInterests];

      v5 = v39;
      v22 = objc_alloc(MEMORY[0x277D3A3D8]);
      _poiCategory = [v39 _poiCategory];
      objc_opt_self();
      if ([_poiCategory length])
      {
        v3 = v40;
        if ([_poiCategory isEqualToString:*MEMORY[0x277D0E7F8]] & 1) != 0 || (objc_msgSend(_poiCategory, "isEqualToString:", *MEMORY[0x277D0E800]) & 1) != 0 || (objc_msgSend(_poiCategory, "isEqualToString:", *MEMORY[0x277D0E830]) & 1) != 0 || (objc_msgSend(_poiCategory, "isEqualToString:", *MEMORY[0x277D0E910]) & 1) != 0 || (objc_msgSend(_poiCategory, "isEqualToString:", *MEMORY[0x277D0E928]) & 1) != 0 || (objc_msgSend(_poiCategory, "isEqualToString:", *MEMORY[0x277D0E9F0]))
        {
          v24 = 4;
        }

        else if ([_poiCategory isEqualToString:*MEMORY[0x277D0E880]] & 1) != 0 || (objc_msgSend(_poiCategory, "isEqualToString:", *MEMORY[0x277D0E8C8]) & 1) != 0 || (objc_msgSend(_poiCategory, "isEqualToString:", *MEMORY[0x277D0E950]) & 1) != 0 || (objc_msgSend(_poiCategory, "isEqualToString:", *MEMORY[0x277D0E958]) & 1) != 0 || (objc_msgSend(_poiCategory, "isEqualToString:", *MEMORY[0x277D0E9D8]))
        {
          v24 = 1;
        }

        else if ([_poiCategory isEqualToString:*MEMORY[0x277D0E810]])
        {
          v24 = 2;
        }

        else
        {
          v24 = 2;
          if (([_poiCategory isEqualToString:*MEMORY[0x277D0E850]] & 1) == 0)
          {
            if ([_poiCategory isEqualToString:*MEMORY[0x277D0E968]])
            {
              v24 = 2;
            }

            else
            {
              v24 = 3;
            }
          }
        }
      }

      else
      {
        v24 = 0;
        v3 = v40;
      }

      v25 = [v22 initWithPlacemark:v38 category:v24 mostRelevantRecord:0];
      v26 = v41;
    }

    else
    {
      v26 = pp_locations_log_handle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v45 = 0;
        _os_log_impl(&dword_23224A000, v26, OS_LOG_TYPE_DEFAULT, "PPLocalLocationStore: locationFromMapItemDictionary: GEOMapItemStorage initWithData failed.", v45, 2u);
      }

      v25 = 0;
    }
  }

  else
  {
    v5 = pp_locations_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v46 = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPLocalLocationStore: locationFromMapItemDictionary: no geo data.", v46, 2u);
    }

    v25 = 0;
  }

  return v25;
}

@end