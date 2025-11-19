@interface PPNamedEntityDissector
+ (id)sharedInstance;
- (PPNamedEntityDissector)init;
- (PPNamedEntityDissector)initWithPurgeableGazetteer:(id)a3;
- (id)_collectDataDetectorsWithText:(id)a3 algorithms:(id)a4 isMessagesSource:(BOOL)a5 addNamedEntity:(id)a6;
- (id)entitiesInPlainText:(id)a3 eligibleRegions:(id)a4 source:(id)a5 cloudSync:(BOOL)a6 algorithms:(id)a7;
- (void)_collectAugmentedGazetteerWithText:(id)a3 addNamedEntity:(id)a4 addTopic:(id)a5 addLocation:(id)a6;
- (void)_registerForNotifications;
- (void)_resetGazetteer;
- (void)dealloc;
@end

@implementation PPNamedEntityDissector

- (id)entitiesInPlainText:(id)a3 eligibleRegions:(id)a4 source:(id)a5 cloudSync:(BOOL)a6 algorithms:(id)a7
{
  v143[3] = *MEMORY[0x277D85DE8];
  v82 = a3;
  v79 = a4;
  v12 = a5;
  v13 = a7;
  v14 = [v12 bundleId];
  v15 = *MEMORY[0x277D3A658];
  v16 = [*MEMORY[0x277D3A658] isEqualToString:v14];

  v17 = [v12 bundleId];
  if ([v15 isEqualToString:v17])
  {
  }

  else
  {
    v18 = [*MEMORY[0x277D3A648] isEqualToString:v17];

    v19 = 0.0;
    if (!v18)
    {
      goto LABEL_5;
    }
  }

  v20 = +[PPSentiment sharedInstance];
  [v20 sentimentScoreForText:v82];
  v19 = v21;

LABEL_5:
  v22 = objc_autoreleasePoolPush();
  v142[0] = &unk_2847839C0;
  v142[1] = &unk_2847839A8;
  v143[0] = &unk_2847839D8;
  v143[1] = &unk_2847839F0;
  v142[2] = &unk_284783A08;
  v143[2] = &unk_284783A20;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:v142 count:3];
  objc_autoreleasePoolPop(v22);
  v24 = +[PPConfiguration sharedInstance];
  v25 = [v12 bundleId];
  v26 = [v12 language];
  v27 = [v24 extractionAlgorithmsForBundleId:v25 sourceLanguage:v26 conservative:0 domain:2];

  v129 = 0;
  v130 = &v129;
  v131 = 0x3032000000;
  v132 = __Block_byref_object_copy_;
  v133 = __Block_byref_object_dispose_;
  v134 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__PPNamedEntityDissector_entitiesInPlainText_eligibleRegions_source_cloudSync_algorithms___block_invoke;
  aBlock[3] = &unk_278971448;
  v125 = &v129;
  v28 = v12;
  v120 = v28;
  v127 = a6;
  v128 = v16;
  v126 = v19;
  v81 = v13;
  v121 = v81;
  v75 = v23;
  v122 = v75;
  v29 = v27;
  v123 = v29;
  v124 = self;
  v80 = _Block_copy(aBlock);
  v30 = +[PPConfiguration sharedInstance];
  v31 = [v28 bundleId];
  v32 = [v28 language];
  v33 = [v30 extractionAlgorithmsForBundleId:v31 sourceLanguage:v32 conservative:0 domain:0];

  v112[0] = MEMORY[0x277D85DD0];
  v112[1] = 3221225472;
  v112[2] = __90__PPNamedEntityDissector_entitiesInPlainText_eligibleRegions_source_cloudSync_algorithms___block_invoke_2;
  v112[3] = &unk_278971470;
  v115 = &v129;
  v74 = v33;
  v113 = v74;
  v34 = v28;
  v114 = v34;
  v117 = a6;
  v118 = v16;
  v116 = v19;
  v77 = _Block_copy(v112);
  v105[0] = MEMORY[0x277D85DD0];
  v105[1] = 3221225472;
  v105[2] = __90__PPNamedEntityDissector_entitiesInPlainText_eligibleRegions_source_cloudSync_algorithms___block_invoke_3;
  v105[3] = &unk_278971498;
  v108 = &v129;
  v73 = v29;
  v106 = v73;
  v76 = v34;
  v107 = v76;
  v110 = a6;
  v111 = v16;
  v109 = v19;
  v78 = _Block_copy(v105);
  v35 = [v81 containsObject:&unk_2847839A8];
  v36 = [v76 bundleId];
  LODWORD(v34) = [v36 isEqualToString:*MEMORY[0x277D3A698]];

  if (!v34)
  {
    if (!v35)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v37 = [PPConfiguration sharedInstance:v73];
  v38 = [v37 safariDataDetectorsEnabledForHighMemoryDevices];

  if (v35 & v38)
  {
LABEL_9:
    v39 = [(PPNamedEntityDissector *)self _collectDataDetectorsWithText:v82 algorithms:v81 isMessagesSource:v16 addNamedEntity:v80, v73];
  }

LABEL_10:
  if (v79)
  {
    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __90__PPNamedEntityDissector_entitiesInPlainText_eligibleRegions_source_cloudSync_algorithms___block_invoke_4;
    v100[3] = &unk_2789714C0;
    v100[4] = self;
    v101 = v82;
    v102 = v80;
    v103 = v77;
    v104 = v78;
    [v79 enumerateRangesUsingBlock:v100];
  }

  else
  {
    [(PPNamedEntityDissector *)self _collectAugmentedGazetteerWithText:v82 addNamedEntity:v80 addTopic:v77 addLocation:v78];
  }

  v83 = objc_opt_new();
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v85 = [&unk_2847852B0 countByEnumeratingWithState:&v96 objects:v141 count:16];
  if (v85)
  {
    v84 = *v97;
    do
    {
      for (i = 0; i != v85; ++i)
      {
        if (*v97 != v84)
        {
          objc_enumerationMutation(&unk_2847852B0);
        }

        v87 = [v130[5] objectForKeyedSubscript:{*(*(&v96 + 1) + 8 * i), v73}];
        v40 = v87;
        if (v87)
        {
          [v83 addObject:?];
          v41 = pp_default_log_handle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = [v87 entities];
            v43 = [v42 count];
            v44 = [MEMORY[0x277D3A438] describeAlgorithm:{objc_msgSend(v87, "entityAlgorithm")}];
            *buf = 134218242;
            v138 = v43;
            v139 = 2112;
            v140 = v44;
            _os_log_impl(&dword_23224A000, v41, OS_LOG_TYPE_DEFAULT, "PPNamedEntityDissector: entitiesInPlainText detected %lu entities with algorithm %@.", buf, 0x16u);
          }

          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v45 = [v87 entities];
          v46 = [v45 countByEnumeratingWithState:&v92 objects:v136 count:16];
          if (v46)
          {
            v47 = *v93;
            do
            {
              for (j = 0; j != v46; ++j)
              {
                if (*v93 != v47)
                {
                  objc_enumerationMutation(v45);
                }

                v49 = *(*(&v92 + 1) + 8 * j);
                v50 = pp_default_log_handle();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                {
                  v52 = MEMORY[0x277D3A420];
                  v53 = [v49 item];
                  v54 = [v52 describeCategory:{objc_msgSend(v53, "category")}];
                  *buf = 138739971;
                  v138 = v54;
                  _os_log_debug_impl(&dword_23224A000, v50, OS_LOG_TYPE_DEBUG, "   category: %{sensitive}@", buf, 0xCu);
                }

                v51 = pp_default_log_handle();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
                {
                  v55 = [v49 item];
                  v56 = [v55 name];
                  *buf = 138739971;
                  v138 = v56;
                  _os_log_debug_impl(&dword_23224A000, v51, OS_LOG_TYPE_DEBUG, "       name: %{sensitive}@", buf, 0xCu);
                }
              }

              v46 = [v45 countByEnumeratingWithState:&v92 objects:v136 count:16];
            }

            while (v46);
          }

          v57 = [v87 topics];
          v58 = [v57 count] == 0;

          if (!v58)
          {
            v59 = pp_default_log_handle();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              v60 = [v87 topics];
              v61 = [v60 count];
              v62 = [MEMORY[0x277D3A548] describeAlgorithm:{objc_msgSend(v87, "topicAlgorithm")}];
              *buf = 134218242;
              v138 = v61;
              v139 = 2112;
              v140 = v62;
              _os_log_impl(&dword_23224A000, v59, OS_LOG_TYPE_DEFAULT, "PPNamedEntityDissector: entitiesInPlainText detected %lu topics with algorithm %@.", buf, 0x16u);
            }
          }

          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v63 = [v87 topics];
          v64 = [v63 countByEnumeratingWithState:&v88 objects:v135 count:16];
          if (v64)
          {
            v65 = *v89;
            do
            {
              for (k = 0; k != v64; ++k)
              {
                if (*v89 != v65)
                {
                  objc_enumerationMutation(v63);
                }

                v67 = *(*(&v88 + 1) + 8 * k);
                v68 = pp_default_log_handle();
                if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
                {
                  v69 = [v67 item];
                  v70 = [v69 topicIdentifier];
                  *buf = 138739971;
                  v138 = v70;
                  _os_log_debug_impl(&dword_23224A000, v68, OS_LOG_TYPE_DEBUG, "  %{sensitive}@", buf, 0xCu);
                }
              }

              v64 = [v63 countByEnumeratingWithState:&v88 objects:v135 count:16];
            }

            while (v64);
          }

          v40 = v87;
        }
      }

      v85 = [&unk_2847852B0 countByEnumeratingWithState:&v96 objects:v141 count:16];
    }

    while (v85);
  }

  _Block_object_dispose(&v129, 8);
  v71 = *MEMORY[0x277D85DE8];

  return v83;
}

id __90__PPNamedEntityDissector_entitiesInPlainText_eligibleRegions_source_cloudSync_algorithms___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a2;
  v9 = a4;
  v10 = *(*(*(a1 + 72) + 8) + 40);
  if (!v10)
  {
    v11 = objc_opt_new();
    v12 = *(*(a1 + 72) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v10 = *(*(*(a1 + 72) + 8) + 40);
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v15 = [v10 objectForKeyedSubscript:v14];

  if (!v15)
  {
    v15 = objc_opt_new();
    v16 = objc_opt_new();
    [v15 setEntities:v16];

    v17 = objc_opt_new();
    [v15 setTopics:v17];

    [v15 setSource:*(a1 + 32)];
    [v15 setEntityAlgorithm:a5];
    [v15 setTopicAlgorithm:0];
    [v15 setCloudSync:*(a1 + 88)];
    v18 = MEMORY[0x277D3A738];
    if (!*(a1 + 89))
    {
      v18 = MEMORY[0x277D3A730];
    }

    [v15 setDecayRate:*v18];
    [v15 setSentimentScore:*(a1 + 80)];
    v19 = *(*(*(a1 + 72) + 8) + 40);
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
    [v19 setObject:v15 forKeyedSubscript:v20];
  }

  v21 = *(a1 + 40);
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  LODWORD(v21) = [v21 containsObject:v22];

  if (v21)
  {
    context = objc_autoreleasePoolPush();
    v23 = objc_alloc(MEMORY[0x277D3A420]);
    v24 = [MEMORY[0x277CBEAF8] currentLocale];
    v25 = [v24 languageCode];
    v26 = v8;
    v27 = [v23 initWithName:v8 category:a3 dynamicCategory:v9 language:v25];

    v28 = [v15 entities];
    v29 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v27 score:0.0];
    v30 = [v28 arrayByAddingObject:v29];
    [v15 setEntities:v30];

    v31 = [*(a1 + 48) allKeys];
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
    LODWORD(v29) = [v31 containsObject:v32];

    if (v29)
    {
      v33 = *(a1 + 48);
      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{a5, context}];
      v35 = [v33 objectForKeyedSubscript:v34];
      v36 = [v35 unsignedLongValue];

      v37 = *(a1 + 56);
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v36];
      LODWORD(v37) = [v37 containsObject:v38];

      if (v37)
      {
        [*(a1 + 64) _harvestLocationFromEntity:v26 category:a3 dynamicCategory:v9 enrichment:v15 algorithm:v36];
      }
    }

    objc_autoreleasePoolPop(context);
    v8 = v26;
  }

  return v15;
}

id __90__PPNamedEntityDissector_entitiesInPlainText_eligibleRegions_source_cloudSync_algorithms___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(*(*(a1 + 48) + 8) + 40);
  if (!v8)
  {
    v9 = objc_opt_new();
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v8 = *(*(*(a1 + 48) + 8) + 40);
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v13 = [v8 objectForKeyedSubscript:v12];

  v14 = *(a1 + 32);
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  LOBYTE(v14) = [v14 containsObject:v15];

  if (v14)
  {
    if (!v13)
    {
      v13 = objc_opt_new();
      v16 = objc_opt_new();
      [v13 setEntities:v16];

      v17 = objc_opt_new();
      [v13 setTopics:v17];

      [v13 setSource:*(a1 + 40)];
      [v13 setEntityAlgorithm:a4];
      [v13 setCloudSync:*(a1 + 64)];
      v18 = MEMORY[0x277D3A738];
      if (!*(a1 + 65))
      {
        v18 = MEMORY[0x277D3A730];
      }

      [v13 setDecayRate:*v18];
      [v13 setSentimentScore:*(a1 + 56)];
      v19 = *(*(*(a1 + 48) + 8) + 40);
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      [v19 setObject:v13 forKeyedSubscript:v20];
    }

    [v13 setTopicAlgorithm:a3];
    v21 = [objc_alloc(MEMORY[0x277D3A530]) initWithTopicIdentifier:v7];
    v22 = objc_autoreleasePoolPush();
    v23 = [v13 topics];
    v24 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v21 score:0.0];
    v25 = [v23 arrayByAddingObject:v24];

    objc_autoreleasePoolPop(v22);
    [v13 setTopics:v25];

    v26 = v13;
  }

  else
  {
    v26 = v13;
  }

  return v26;
}

id __90__PPNamedEntityDissector_entitiesInPlainText_eligibleRegions_source_cloudSync_algorithms___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = *(*(*(a1 + 48) + 8) + 40);
  if (!v10)
  {
    v11 = objc_opt_new();
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v10 = *(*(*(a1 + 48) + 8) + 40);
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v15 = [v10 objectForKeyedSubscript:v14];

  v16 = *(a1 + 32);
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a3];
  LOBYTE(v16) = [v16 containsObject:v17];

  if (v16)
  {
    if (!v15)
    {
      v15 = objc_opt_new();
      v18 = objc_opt_new();
      [v15 setEntities:v18];

      v19 = objc_opt_new();
      [v15 setTopics:v19];

      [v15 setSource:*(a1 + 40)];
      [v15 setEntityAlgorithm:a5];
      [v15 setCloudSync:*(a1 + 64)];
      v20 = MEMORY[0x277D3A738];
      if (!*(a1 + 65))
      {
        v20 = MEMORY[0x277D3A730];
      }

      [v15 setDecayRate:*v20];
      [v15 setSentimentScore:*(a1 + 56)];
      v21 = *(*(*(a1 + 48) + 8) + 40);
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a3];
      [v21 setObject:v15 forKeyedSubscript:v22];
    }

    v23 = [PPLocalLocationStore scoredLocationFromName:v9 category:a4 score:1.0 sentimentScore:0.0];
    [v15 addLocation:v23 algorithm:a3];
    v24 = v15;
  }

  else
  {
    v24 = v15;
  }

  return v24;
}

void __90__PPNamedEntityDissector_entitiesInPlainText_eligibleRegions_source_cloudSync_algorithms___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 40) substringWithRange:{a2, a3}];
  objc_autoreleasePoolPop(v7);
  [v6 _collectAugmentedGazetteerWithText:v8 addNamedEntity:*(a1 + 48) addTopic:*(a1 + 56) addLocation:*(a1 + 64)];
}

- (id)_collectDataDetectorsWithText:(id)a3 algorithms:(id)a4 isMessagesSource:(BOOL)a5 addNamedEntity:(id)a6
{
  v59 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v47 = a4;
  v43 = a6;
  v9 = MEMORY[0x277D024E0];
  v10 = objc_opt_new();
  v44 = v8;
  v11 = [v9 detectionsInPlainText:v8 baseDate:v10];

  v41 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v55;
    v42 = *v55;
    do
    {
      v15 = 0;
      v45 = v13;
      do
      {
        if (*v55 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v54 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        if ([v16 matchType] == 1 && objc_msgSend(v47, "containsObject:", &unk_2847839A8))
        {
          v46 = v17;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __99__PPNamedEntityDissector__collectDataDetectorsWithText_algorithms_isMessagesSource_addNamedEntity___block_invoke;
          aBlock[3] = &unk_278971420;
          v53 = v43;
          v18 = _Block_copy(aBlock);
          v19 = objc_autoreleasePoolPush();
          v20 = [v16 range];
          v22 = [v44 substringWithRange:{v20, v21}];
          objc_autoreleasePoolPop(v19);
          v23 = SGPostalAddressParse();

          v24 = [v23 objectForKeyedSubscript:@"Street"];
          v25 = [v23 objectForKeyedSubscript:@"City"];
          v26 = [v23 objectForKeyedSubscript:@"State"];
          v27 = [v23 objectForKeyedSubscript:@"ZIP"];
          v28 = [v23 objectForKeyedSubscript:@"Country"];
          v29 = v18[2](v18, v24, 8);
          v30 = (v18[2])(v18, v25, 9);
          v31 = (v18[2])(v18, v26, 10);
          v32 = (v18[2])(v18, v28, 11);
          v50 = v25;
          v51 = v24;
          v33 = [PPNamedEntitySupport fullAddressForStreetAddress:v24 city:v25 state:v26 postalCode:v27 country:v28];
          v34 = (v18[2])(v18, v33, 12);
          v49 = v29;
          if (v29)
          {
            v35 = [MEMORY[0x277D3A3F8] placemarkWithLocation:0 name:0 thoroughfare:v51 subthoroughFare:0 locality:v25 subLocality:0 administrativeArea:v26 subAdministrativeArea:0 postalCode:v27 countryCode:0 country:v28 inlandWater:0 ocean:0 areasOfInterest:0];
            v36 = v26;
            v37 = [objc_alloc(MEMORY[0x277D3A3D8]) initWithPlacemark:v35 category:0 mostRelevantRecord:0];
            v38 = [objc_alloc(MEMORY[0x277D3A4A8]) initWithLocation:v37 score:1.0 sentimentScore:0.0];
            [v49 addLocation:v38 algorithm:4];

            v26 = v36;
          }

          v14 = v42;
          v13 = v45;
          v17 = v46;
        }

        objc_autoreleasePoolPop(v17);
        ++v15;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v13);
  }

  v39 = *MEMORY[0x277D85DE8];

  return v41;
}

uint64_t __99__PPNamedEntityDissector__collectDataDetectorsWithText_algorithms_isMessagesSource_addNamedEntity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  return 0;
}

- (void)_collectAugmentedGazetteerWithText:(id)a3 addNamedEntity:(id)a4 addTopic:(id)a5 addLocation:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  lock = self->_lock;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __97__PPNamedEntityDissector__collectAugmentedGazetteerWithText_addNamedEntity_addTopic_addLocation___block_invoke;
  v19[3] = &unk_2789713F8;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [(_PASLock *)lock runWithLockAcquired:v19];
}

void __97__PPNamedEntityDissector__collectAugmentedGazetteerWithText_addNamedEntity_addTopic_addLocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 purgeableGazetteer];
  v4 = [v3 result];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__PPNamedEntityDissector__collectAugmentedGazetteerWithText_addNamedEntity_addTopic_addLocation___block_invoke_2;
  v10[3] = &unk_278971380;
  v5 = *(a1 + 32);
  v11 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __97__PPNamedEntityDissector__collectAugmentedGazetteerWithText_addNamedEntity_addTopic_addLocation___block_invoke_3;
  v8[3] = &unk_2789713A8;
  v9 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __97__PPNamedEntityDissector__collectAugmentedGazetteerWithText_addNamedEntity_addTopic_addLocation___block_invoke_4;
  v6[3] = &unk_2789713D0;
  v7 = *(a1 + 56);
  [v4 iterExtractionsForText:v5 addEntity:v10 addTopic:v8 addLocation:v6];
}

- (void)_registerForNotifications
{
  objc_initWeak(&location, self);
  if (_getNotificationDispatchQueue__pasOnceToken5 != -1)
  {
    dispatch_once(&_getNotificationDispatchQueue__pasOnceToken5, &__block_literal_global_221);
  }

  v3 = _getNotificationDispatchQueue__pasExprOnceResult;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __51__PPNamedEntityDissector__registerForNotifications__block_invoke;
  handler[3] = &unk_278971358;
  objc_copyWeak(&v9, &location);
  notify_register_dispatch("com.apple.MobileAsset.LinguisticData.ma.new-asset-installed", &self->_linguisticDataNotificationToken, v3, handler);

  v4 = +[PPTrialWrapper sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__PPNamedEntityDissector__registerForNotifications__block_invoke_2;
  v6[3] = &unk_2789797B8;
  objc_copyWeak(&v7, &location);
  v5 = [v4 addUpdateHandlerForNamespaceName:@"PERSONALIZATION_PORTRAIT_GLOBAL" block:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __51__PPNamedEntityDissector__registerForNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _resetGazetteer];
    WeakRetained = v2;
  }
}

void __51__PPNamedEntityDissector__registerForNotifications__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _resetGazetteer];
    WeakRetained = v2;
  }
}

- (void)_resetGazetteer
{
  [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_123];
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "PPNamedEntityDissector resetting gazetteer based on an asset update.", v3, 2u);
  }
}

void __41__PPNamedEntityDissector__resetGazetteer__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D425E8];
  v3 = a2;
  v4 = [[v2 alloc] initWithBlock:&__block_literal_global_218 idleTimeout:240.0];
  [v3 setPurgeableGazetteer:v4];
}

- (void)dealloc
{
  linguisticDataNotificationToken = self->_linguisticDataNotificationToken;
  if (linguisticDataNotificationToken)
  {
    notify_cancel(linguisticDataNotificationToken);
  }

  v4.receiver = self;
  v4.super_class = PPNamedEntityDissector;
  [(PPNamedEntityDissector *)&v4 dealloc];
}

- (PPNamedEntityDissector)init
{
  v3 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_218 idleTimeout:240.0];
  v4 = [(PPNamedEntityDissector *)self initWithPurgeableGazetteer:v3];

  return v4;
}

- (PPNamedEntityDissector)initWithPurgeableGazetteer:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PPNamedEntityDissector;
  v5 = [(PPNamedEntityDissector *)&v19 init];
  v6 = v5;
  if (v5)
  {
    [(PPNamedEntityDissector *)v5 _registerForNotifications];
    v7 = objc_opt_new();
    [v7 setPurgeableGazetteer:v4];
    v8 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v7];
    lock = v6->_lock;
    v6->_lock = v8;

    v10 = [MEMORY[0x277CBEAF8] currentLocale];
    v11 = [v10 languageCode];
    userLanguage = v6->_userLanguage;
    v6->_userLanguage = v11;

    v13 = +[PPConfiguration sharedInstance];
    v6->_userIsMultilingual = [v13 isMultilingual];

    v14 = +[PPLocalContactStore defaultStore];
    v15 = [v14 meCard];
    v16 = [v15 identifier];
    meCardContactsIdentifier = v6->_meCardContactsIdentifier;
    v6->_meCardContactsIdentifier = v16;
  }

  return v6;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken4 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken4, &__block_literal_global);
  }

  v3 = sharedInstance__pasExprOnceResult;

  return v3;
}

void __40__PPNamedEntityDissector_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end