@interface PSFeatureCache
@end

@implementation PSFeatureCache

void __69___PSFeatureCache_initWithPredictionContext_candidates_caches_store___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1B5ED1000, v2, OS_LOG_TYPE_DEFAULT, "_PSFeatureCache: Timer has triggered, refreshing cache", v3, 2u);
    }

    [WeakRetained invalidateAndRefreshCache];
  }
}

id __54___PSFeatureCache_refreshDurableCachesWithCandidates___block_invoke_39(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 candidateForDeduping];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v8 = [v3 candidateIdentifier];
  v9 = [*(*(a1 + 40) + 32) cache];
  v10 = [v9 objectForKeyedSubscript:v8];
  if (v10)
  {

LABEL_7:
    goto LABEL_8;
  }

  v11 = [*(*(a1 + 40) + 32) bucketSums];
  v12 = [v11 objectForKeyedSubscript:v8];
  if (v12)
  {

    goto LABEL_7;
  }

  v14 = [*(*(a1 + 40) + 32) bucketHasEver];
  v15 = [v14 objectForKeyedSubscript:v8];

  if (!v15)
  {
    v7 = v8;
    goto LABEL_9;
  }

LABEL_8:
  v7 = 0;
LABEL_9:

LABEL_10:

  return v7;
}

uint64_t __54___PSFeatureCache_refreshDurableCachesWithCandidates___block_invoke_43(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  if (v4 && ([v3 timestamp], v6 = v5, objc_msgSend(*(a1 + 32), "timeIntervalSinceReferenceDate"), v6 >= v7))
  {
    v9 = *(a1 + 40);
    v10 = [v4 itemIdentifier];
    v8 = [v9 containsObject:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __54___PSFeatureCache_refreshDurableCachesWithCandidates___block_invoke_3(id *a1, void *a2)
{
  v127 = *MEMORY[0x1E69E9840];
  v3 = [a2 eventBody];
  v4 = [v3 itemIdentifier];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"self";
  }

  v6 = [a1[4] objectForKeyedSubscript:v5];
  v112 = a1;
  if (v6)
  {
    v7 = [a1[5] objectForKeyedSubscript:v6];
    if (v7)
    {
LABEL_6:

      goto LABEL_8;
    }

    v8 = [a1[6] objectForKeyedSubscript:v6];

    if (!v8)
    {
      v7 = objc_opt_new();
      [a1[5] setObject:v7 forKeyedSubscript:v6];
      goto LABEL_6;
    }
  }

LABEL_8:
  v9 = [a1[7] objectForKeyedSubscript:v5];

  if (!v9)
  {
    v10 = objc_opt_new();
    [a1[7] setObject:v10 forKeyedSubscript:v5];
  }

  v11 = [a1[8] objectForKeyedSubscript:v5];

  if (!v11)
  {
    v12 = objc_opt_new();
    [a1[8] setObject:v12 forKeyedSubscript:v5];
  }

  v13 = [a1[9] objectForKeyedSubscript:v5];

  if (!v13)
  {
    v14 = objc_opt_new();
    [a1[9] setObject:v14 forKeyedSubscript:v5];
  }

  v15 = [v3 featureValue];

  if (v15)
  {
    v16 = [v3 featureValue];
    v17 = [v16 histogramValue];

    v115 = v5;
    if (v17)
    {
      [v3 featureName];
      v18 = BMMLSEDurableFeatureStorefeatureNameAsString();
      v19 = [_PSHistogramFeatures computeFactorNameForFeature:v18];
      v20 = [v112[7] objectForKeyedSubscript:v5];
      v21 = [v20 objectForKeyedSubscript:v19];

      if (!v21)
      {
        v22 = objc_opt_new();
        v23 = [v112[7] objectForKeyedSubscript:v5];
        [v23 setObject:v22 forKeyedSubscript:v19];
      }

      v24 = [v112[8] objectForKeyedSubscript:v5];
      v25 = [v24 objectForKeyedSubscript:v19];

      if (!v25)
      {
        v26 = objc_opt_new();
        v27 = [v112[8] objectForKeyedSubscript:v5];
        [v27 setObject:v26 forKeyedSubscript:v19];
      }

      v28 = [v112[9] objectForKeyedSubscript:v5];
      v29 = [v28 objectForKeyedSubscript:v19];

      if (!v29)
      {
        v30 = objc_opt_new();
        v31 = [v112[9] objectForKeyedSubscript:v5];
        [v31 setObject:v30 forKeyedSubscript:v19];
      }

      v32 = [v112[10] objectForKeyedSubscript:v19];

      if (!v32)
      {
        v33 = objc_opt_new();
        [v112[10] setObject:v33 forKeyedSubscript:v19];
      }

      v34 = [v112[11] objectForKeyedSubscript:v19];

      if (!v34)
      {
        v35 = objc_opt_new();
        [v112[11] setObject:v35 forKeyedSubscript:v19];
      }

      v36 = [v3 featureValue];
      v37 = [v36 histogramValue];
      v38 = [v37 bucketList];

      if (v38)
      {
        v102 = v18;
        v103 = v3;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v101 = v38;
        obj = v38;
        v39 = v112;
        v107 = [obj countByEnumeratingWithState:&v121 objects:v126 count:16];
        if (v107)
        {
          v106 = *v122;
          do
          {
            v40 = 0;
            do
            {
              if (*v122 != v106)
              {
                objc_enumerationMutation(obj);
              }

              v109 = v40;
              v41 = *(*(&v121 + 1) + 8 * v40);
              v42 = [v41 counts];
              v108 = v41;
              v43 = [v41 bucketName];
              v44 = [v39[10] objectForKeyedSubscript:v19];
              [v44 addObject:v43];

              v45 = [v39[11] objectForKeyedSubscript:v19];
              v46 = [v45 objectForKeyedSubscript:v43];

              if (!v46)
              {
                v47 = objc_opt_new();
                v48 = [v39[11] objectForKeyedSubscript:v19];
                [v48 setObject:v47 forKeyedSubscript:v43];
              }

              v116 = v43;
              v119 = 0u;
              v120 = 0u;
              v117 = 0u;
              v118 = 0u;
              v110 = v42;
              v113 = [v110 countByEnumeratingWithState:&v117 objects:v125 count:16];
              if (v113)
              {
                v111 = *v118;
                do
                {
                  v49 = 0;
                  do
                  {
                    if (*v118 != v111)
                    {
                      objc_enumerationMutation(v110);
                    }

                    v50 = *(*(&v117 + 1) + 8 * v49);
                    [v50 interval];
                    v51 = BMMLSEDurableFeatureStoreFeatureValueHistogramBucketCounttimeIntervalAsString();
                    v52 = [v112[7] objectForKeyedSubscript:v115];
                    v53 = [v52 objectForKeyedSubscript:v19];
                    v54 = [v53 objectForKeyedSubscript:v51];

                    if (!v54)
                    {
                      v55 = objc_opt_new();
                      v56 = [v112[7] objectForKeyedSubscript:v115];
                      v57 = [v56 objectForKeyedSubscript:v19];
                      [v57 setObject:v55 forKeyedSubscript:v51];
                    }

                    v58 = [v112[8] objectForKeyedSubscript:v115];
                    v59 = [v58 objectForKeyedSubscript:v19];
                    v60 = [v59 objectForKey:v51];

                    if (!v60)
                    {
                      v61 = [v112[8] objectForKeyedSubscript:v115];
                      v62 = [v61 objectForKeyedSubscript:v19];
                      [v62 setObject:&unk_1F2D8BA60 forKeyedSubscript:v51];
                    }

                    v114 = v49;
                    v63 = [v112[11] objectForKeyedSubscript:v19];
                    v64 = [v63 objectForKeyedSubscript:v116];
                    v65 = [v64 objectForKeyedSubscript:v51];

                    if (!v65)
                    {
                      v66 = [v112[11] objectForKeyedSubscript:v19];
                      v67 = [v66 objectForKeyedSubscript:v116];
                      [v67 setObject:&unk_1F2D8BA60 forKeyedSubscript:v51];
                    }

                    v68 = MEMORY[0x1E696AD98];
                    v69 = [v112[8] objectForKeyedSubscript:v115];
                    v70 = [v69 objectForKeyedSubscript:v19];
                    v71 = [v70 objectForKeyedSubscript:v51];
                    v72 = [v68 numberWithUnsignedInt:{objc_msgSend(v50, "value") + objc_msgSend(v71, "intValue")}];
                    v73 = [v112[8] objectForKeyedSubscript:v115];
                    v74 = [v73 objectForKeyedSubscript:v19];
                    [v74 setObject:v72 forKeyedSubscript:v51];

                    v75 = MEMORY[0x1E696AD98];
                    v76 = [v112[11] objectForKeyedSubscript:v19];
                    v77 = [v76 objectForKeyedSubscript:v116];
                    v78 = [v77 objectForKeyedSubscript:v51];
                    v79 = [v75 numberWithUnsignedInt:{objc_msgSend(v50, "value") + objc_msgSend(v78, "intValue")}];
                    v80 = [v112[11] objectForKeyedSubscript:v19];
                    v81 = [v80 objectForKeyedSubscript:v116];
                    [v81 setObject:v79 forKeyedSubscript:v51];

                    v82 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v50, "value")}];
                    v83 = [v112[7] objectForKeyedSubscript:v115];
                    v84 = [v83 objectForKeyedSubscript:v19];
                    v85 = [v84 objectForKeyedSubscript:v51];
                    [v85 setObject:v82 forKeyedSubscript:v116];

                    v49 = v114 + 1;
                  }

                  while (v113 != v114 + 1);
                  v113 = [v110 countByEnumeratingWithState:&v117 objects:v125 count:16];
                }

                while (v113);
              }

              v86 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v108, "hasEver")}];
              v39 = v112;
              v5 = v115;
              v87 = [v112[9] objectForKeyedSubscript:v115];
              v88 = [v87 objectForKeyedSubscript:v19];
              [v88 setObject:v86 forKeyedSubscript:v116];

              v40 = v109 + 1;
            }

            while (v109 + 1 != v107);
            v107 = [obj countByEnumeratingWithState:&v121 objects:v126 count:16];
          }

          while (v107);
        }

        v3 = v103;
        v38 = v101;
        v18 = v102;
      }
    }

    else if (v6)
    {
      v89 = [v112[5] objectForKeyedSubscript:v6];
      if (v89)
      {
        [v3 featureName];
        v90 = BMMLSEDurableFeatureStorefeatureNameAsString();
        v91 = [v3 featureValue];
        v92 = [v91 hasIntValue];
        v104 = v6;
        v93 = v3;
        if (v92)
        {
          v94 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v91, "intValue")}];
        }

        else
        {
          v94 = 0;
        }

        v95 = [v91 hasDoubleValue];
        if (v95)
        {
          v96 = MEMORY[0x1E696AD98];
          [v91 doubleValue];
          v97 = [v96 numberWithDouble:?];
        }

        else
        {
          v97 = 0;
        }

        v98 = [v91 stringValue];
        if ([v91 hasBoolValue])
        {
          v99 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v91, "BOOLValue")}];
          [v89 addFeatureWithIntValue:v94 doubleValue:v97 stringValue:v98 BOOLValue:v99 timeBucket:0 forKey:v90];
        }

        else
        {
          [v89 addFeatureWithIntValue:v94 doubleValue:v97 stringValue:v98 BOOLValue:0 timeBucket:0 forKey:v90];
        }

        if (v95)
        {
        }

        if (v92)
        {
        }

        v3 = v93;
        v5 = v115;
        v6 = v104;
      }
    }
  }

  v100 = *MEMORY[0x1E69E9840];
}

void __53___PSFeatureCache_replaceEphemeralFeaturesWithCache___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v9 = [a2 candidateForDeduping];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v9];
  v7 = v6;
  if (!v6)
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  v8 = [v6 mutableCopy];

  [v8 addEntriesFromDictionary:v5];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
}

void __37___PSFeatureCache_saveToVirtualStore__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v2, OS_LOG_TYPE_DEFAULT, "Saving features to virtual feature store", buf, 2u);
  }

  pthread_mutex_lock((*(a1 + 32) + 56));
  v3 = [*(*(a1 + 32) + 48) copy];
  v4 = [*(*(a1 + 32) + 8) sessionID];
  pthread_mutex_unlock((*(a1 + 32) + 56));
  v5 = [*(a1 + 32) deviceIdentifier];
  v6 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v19 = v5;
    _os_log_impl(&dword_1B5ED1000, v6, OS_LOG_TYPE_DEFAULT, "Fetched device identifier %{private}@", buf, 0xCu);
  }

  v7 = +[_PSCandidate selfCandidate];
  v8 = [v3 objectForKeyedSubscript:v7];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __37___PSFeatureCache_saveToVirtualStore__block_invoke_72;
  v14[3] = &unk_1E7C26648;
  v9 = v8;
  v10 = *(a1 + 32);
  v15 = v9;
  v16 = v10;
  v11 = v4;
  v17 = v11;
  [v3 enumerateKeysAndObjectsUsingBlock:v14];
  v12 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v12, OS_LOG_TYPE_DEFAULT, "Finished saving to virtual feature store", buf, 2u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __37___PSFeatureCache_saveToVirtualStore__block_invoke_72(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[_PSCandidate selfCandidate];
  v8 = [v5 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [[_PSFeatureDictionary alloc] initWithDictionary:v6];
    [(_PSFeatureDictionary *)v10 addEntriesFromDictionary:a1[4] overwrite:0];
    v11 = objc_opt_new();
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __37___PSFeatureCache_saveToVirtualStore__block_invoke_2;
    v21 = &unk_1E7C26620;
    v22 = a1[5];
    v12 = v11;
    v23 = v12;
    [(_PSFeatureDictionary *)v10 enumerateKeysAndObjectsUsingBlock:&v18];
    v13 = objc_alloc(MEMORY[0x1E698ECB0]);
    v14 = [v5 candidateIdentifier];
    v15 = [a1[5] deviceIdentifier];
    v16 = [v13 initWithItemIdentifier:v14 featureVersion:0 featureVector:v12 deviceIdentifier:v15 shareSessionIdentifier:a1[6]];

    [*(a1[5] + 168) sendEvent:v16];
    v17 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __37___PSFeatureCache_saveToVirtualStore__block_invoke_72_cold_1(v5, v17);
    }

    objc_autoreleasePoolPop(v9);
  }
}

void __37___PSFeatureCache_saveToVirtualStore__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = BMMLSEVirtualFeatureStoreFeaturefeatureNameFromString();
  if (!v8)
  {
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __37___PSFeatureCache_saveToVirtualStore__block_invoke_2_cold_1();
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [*(a1 + 32) privacyMitigateFeatures:v6];
    v11 = [objc_alloc(MEMORY[0x1E698ECB8]) initWithFeatureName:v8 featureValue:v10 featureItselfVersion:0 featureFreshnessInHours:0 eventVolumeToComputeFeature:0 timeSpentToComputeFeature:0];
    [*(a1 + 40) addObject:v11];
  }

  else
  {
    v10 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __37___PSFeatureCache_saveToVirtualStore__block_invoke_2_cold_2();
    }
  }

  objc_autoreleasePoolPop(v7);
}

void __37___PSFeatureCache_saveToVirtualStore__block_invoke_72_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_DEBUG, "Sent data to virtual feature store about candidate %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __37___PSFeatureCache_saveToVirtualStore__block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __37___PSFeatureCache_saveToVirtualStore__block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end