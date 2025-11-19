@interface PCClusteringManager
- (PCClusteringManager)init;
- (id)_convertContextvalueToString:(id)a3 forKey:(id)a4;
- (id)_dominantSourceBundleIdentifierFromEvents:(id)a3;
- (id)_getClusterFrom:(id)a3 withEmbeddings:(id)a4 andCreationDate:(id)a5;
- (id)generateClusters:(id)a3 withEmbeddings:(id)a4 error:(id *)a5;
- (id)getEmbeddingsFromBundles:(id)a3 forEmbeddingType:(unint64_t)a4;
- (id)phenotypeDescription:(id)a3;
- (void)runHDBSCANClusteringOn:(id)a3;
@end

@implementation PCClusteringManager

- (PCClusteringManager)init
{
  v8.receiver = self;
  v8.super_class = PCClusteringManager;
  v2 = [(PCClusteringManager *)&v8 init];
  if (v2)
  {
    v3 = +[PCDistanceWeightingConfig clusteringConfiguration];
    config = v2->_config;
    v2->_config = v3;

    v5 = [[PCHDBSCANClustering alloc] initWithConfig:v2->_config];
    hdbscanClustering = v2->_hdbscanClustering;
    v2->_hdbscanClustering = v5;
  }

  return v2;
}

- (id)getEmbeddingsFromBundles:(id)a3 forEmbeddingType:(unint64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [[PCEmbedding alloc] initWithEventBundle:v11 forEmbeddingType:a4];
        v13 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [(PCEmbedding *)v12 locationContextEmbedding];
          *buf = 138412547;
          v25 = v12;
          v26 = 2117;
          v27 = v14;
          _os_log_impl(&dword_1CEE74000, v13, OS_LOG_TYPE_INFO, "Clustering: Extracted embedding=%@, locationEmbedding=%{sensitive}@", buf, 0x16u);
        }

        if (v12)
        {
          [v6 addObject:v12];
        }

        else
        {
          v15 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [v11 description];
            *buf = 138412290;
            v25 = v16;
            _os_log_impl(&dword_1CEE74000, v15, OS_LOG_TYPE_INFO, "Clustering: Embedding for bundle %@ is nil. Skip and proceed to the next bundle", buf, 0xCu);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)runHDBSCANClusteringOn:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 count];
  if (v5 <= [(PCDistanceWeightingConfig *)self->_config minClusterSize])
  {
    v6 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 count];
      v8 = [(PCDistanceWeightingConfig *)self->_config minClusterSize];
      v10 = 134218240;
      v11 = v7;
      v12 = 2048;
      v13 = v8;
      _os_log_impl(&dword_1CEE74000, v6, OS_LOG_TYPE_DEFAULT, "WorkoutPrediction: Clustering, Embedding count (%lu) is equal to or less than min cluster size (%lu). Skip clustering", &v10, 0x16u);
    }
  }

  else
  {
    [(PCHDBSCANClustering *)self->_hdbscanClustering runHDBSCANClusteringOn:v4];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)generateClusters:(id)a3 withEmbeddings:(id)a4 error:(id *)a5
{
  v99[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v71 = self;
  v10 = [(PCHDBSCANClustering *)self->_hdbscanClustering getClusterLabels];
  if ([v10 count])
  {
    v11 = [v10 count];
    if (v11 != [v9 count])
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v96 = *MEMORY[0x1E696A578];
      v97 = @"Label count and embedding count do not match. Unable to create clusters";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
      v14 = [v12 initWithDomain:@"PCErrorDomain" code:0 userInfo:v13];

      if (v14)
      {
        if (a5)
        {
          v15 = v14;
          v16 = 0;
          v17 = 0;
          *a5 = v14;
          goto LABEL_45;
        }

        v16 = 0;
LABEL_44:
        v17 = 0;
        goto LABEL_45;
      }
    }
  }

  else
  {
    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v98 = *MEMORY[0x1E696A578];
    v99[0] = @"Cluster labels were not generated. Unable to create clusters";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:&v98 count:1];
    v16 = [v18 initWithDomain:@"PCErrorDomain" code:0 userInfo:v19];

    if (v16)
    {
      if (a5)
      {
        v20 = v16;
        v14 = 0;
        v17 = 0;
        *a5 = v16;
        goto LABEL_45;
      }

      v14 = 0;
      goto LABEL_44;
    }
  }

  v57 = a5;
  v21 = [MEMORY[0x1E696AB50] setWithArray:v10];
  v64 = objc_opt_new();
  v68 = [MEMORY[0x1E695DF00] date];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v21;
  v22 = [obj countByEnumeratingWithState:&v78 objects:v95 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v79;
    v58 = v8;
    v66 = v10;
    v67 = v9;
    v65 = *v79;
    do
    {
      v25 = 0;
      v69 = v23;
      do
      {
        if (*v79 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v78 + 1) + 8 * v25);
        if (([v26 isEqualToNumber:&unk_1F4BDE080] & 1) == 0)
        {
          v77[0] = MEMORY[0x1E69E9820];
          v77[1] = 3221225472;
          v77[2] = __61__PCClusteringManager_generateClusters_withEmbeddings_error___block_invoke;
          v77[3] = &unk_1E83B81D8;
          v77[4] = v26;
          v72 = [v10 indexesOfObjectsPassingTest:v77];
          v27 = [v9 objectsAtIndexes:?];
          v28 = objc_opt_new();
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v29 = v27;
          v30 = [v29 countByEnumeratingWithState:&v73 objects:v94 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v74;
            do
            {
              for (i = 0; i != v31; ++i)
              {
                if (*v74 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = *(*(&v73 + 1) + 8 * i);
                v35 = [v34 bundleIdentifier];

                if (v35)
                {
                  v36 = [v34 bundleIdentifier];
                  [v28 addObject:v36];
                }
              }

              v31 = [v29 countByEnumeratingWithState:&v73 objects:v94 count:16];
            }

            while (v31);
          }

          v37 = MEMORY[0x1E696AE18];
          v38 = [v28 allObjects];
          v39 = [v37 predicateWithFormat:@"bundleIdentifier in %@", v38];

          v40 = [v8 filteredArrayUsingPredicate:v39];
          v41 = [(PCClusteringManager *)v71 _getClusterFrom:v40 withEmbeddings:v29 andCreationDate:v68];
          v42 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          v43 = v42;
          if (v41)
          {
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              v44 = [v41 identifier];
              v63 = [v41 subBundleIDs];
              v59 = [v63 count];
              v61 = [v41 clusterMetadata];
              v60 = [v61 phenotype];
              [(PCClusteringManager *)v71 phenotypeDescription:v60];
              v45 = v62 = v39;
              v46 = [v41 startDate];
              v47 = [v41 endDate];
              *buf = 138544386;
              v85 = v44;
              v86 = 2050;
              v87 = v59;
              v88 = 2114;
              v89 = v45;
              v90 = 2114;
              v91 = v46;
              v92 = 2114;
              v93 = v47;
              _os_log_impl(&dword_1CEE74000, v43, OS_LOG_TYPE_DEFAULT, "WorkoutPrediction: Created a cluster ID=%{public}@, bundleCount=%{public}lu, phenotype=%{public}@, dateRange=%{public}@-%{public}@", buf, 0x34u);

              v8 = v58;
              v39 = v62;
            }

            [v64 addObject:v41];
          }

          else
          {
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v85 = v26;
              _os_log_impl(&dword_1CEE74000, v43, OS_LOG_TYPE_DEBUG, "WorkoutPrediction: Clustering, Cluster for label %@ is nil. skip and proceed to the next clustering label", buf, 0xCu);
            }
          }

          v9 = v67;

          v24 = v65;
          v10 = v66;
          v23 = v69;
        }

        ++v25;
      }

      while (v25 != v23);
      v23 = [obj countByEnumeratingWithState:&v78 objects:v95 count:16];
    }

    while (v23);
  }

  v48 = [v64 copy];
  cachedClusters = v71->_cachedClusters;
  v71->_cachedClusters = v48;

  if ([v64 count])
  {
    v17 = v64;
  }

  else
  {
    v50 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v50, OS_LOG_TYPE_DEFAULT, "WorkoutPrediction: Clustering, No cluster is available", buf, 2u);
    }

    v51 = objc_alloc(MEMORY[0x1E696ABC0]);
    v82 = *MEMORY[0x1E696A578];
    v83 = @"No clusters generated";
    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    v53 = [v51 initWithDomain:@"PCErrorDomain" code:0 userInfo:v52];

    if (v57)
    {
      v54 = v53;
      *v57 = v53;
    }

    v17 = 0;
  }

  v14 = 0;
  v16 = 0;
LABEL_45:

  v55 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)phenotypeDescription:(id)a3
{
  v3 = MEMORY[0x1E696AD60];
  v4 = a3;
  v5 = [v3 string];
  [v5 appendFormat:@"\n"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__PCClusteringManager_phenotypeDescription___block_invoke;
  v8[3] = &unk_1E83B8200;
  v6 = v5;
  v9 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __44__PCClusteringManager_phenotypeDescription___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v9 isEqualToString:@"placeName"])
  {
    [*(a1 + 32) appendFormat:@"%@=<redacted>\n", v9];
    goto LABEL_9;
  }

  v6 = [v5 description];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = @"{%lu key/value pairs}";
LABEL_7:
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:v7, objc_msgSend(v5, "count")];

    v6 = v8;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = @"[%lu array entries]";
    goto LABEL_7;
  }

LABEL_8:
  [*(a1 + 32) appendFormat:@"%@=%@\n", v9, v6];

LABEL_9:
}

- (id)_getClusterFrom:(id)a3 withEmbeddings:(id)a4 andCreationDate:(id)a5
{
  v360 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [PCCluster alloc];
  v11 = [MEMORY[0x1E696AFB0] UUID];
  v261 = v9;
  v12 = [(PCCluster *)v10 initWithIdentifier:v11 creationDate:v9];

  v279 = objc_opt_new();
  v331 = 0u;
  v332 = 0u;
  v333 = 0u;
  v334 = 0u;
  obj = v8;
  v13 = [obj countByEnumeratingWithState:&v331 objects:v359 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v332;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v332 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = [*(*(&v331 + 1) + 8 * i) summaryDictionary];
        [v279 addObject:v17];
      }

      v14 = [obj countByEnumeratingWithState:&v331 objects:v359 count:16];
    }

    while (v14);
  }

  v358[0] = @"activityType";
  v358[1] = @"placeName";
  v358[2] = @"dayOfWeek";
  v358[3] = @"timeTag";
  v358[4] = @"isWeekend";
  v358[5] = @"combinedPlaceType";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v358 count:6];
  v268 = v7;
  v19 = [v7 count];
  v278 = objc_opt_new();
  v266 = objc_opt_new();
  v265 = objc_opt_new();
  v327 = 0u;
  v328 = 0u;
  v329 = 0u;
  v330 = 0u;
  v271 = v18;
  v285 = v12;
  v281 = [v271 countByEnumeratingWithState:&v327 objects:v357 count:16];
  v20 = 0;
  if (v281)
  {
    v280 = *v328;
    v273 = v19;
    v21 = v19;
    v22 = self;
    do
    {
      v23 = 0;
      v24 = v20;
      do
      {
        if (*v328 != v280)
        {
          objc_enumerationMutation(v271);
        }

        v283 = v23;
        v25 = *(*(&v327 + 1) + 8 * v23);
        v20 = objc_opt_new();

        v325 = 0u;
        v326 = 0u;
        v323 = 0u;
        v324 = 0u;
        v26 = v279;
        v27 = [v26 countByEnumeratingWithState:&v323 objects:v356 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v324;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v324 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v323 + 1) + 8 * j);
              v32 = [v31 objectForKeyedSubscript:v25];
              v33 = [(PCClusteringManager *)v22 _convertContextvalueToString:v32 forKey:v25];

              v34 = [v31 objectForKeyedSubscript:@"bundleID"];
              v35 = v34;
              if (v33)
              {
                v36 = v34 == 0;
              }

              else
              {
                v36 = 1;
              }

              if (!v36)
              {
                v37 = [v20 objectForKeyedSubscript:v33];
                v38 = v20;
                v39 = [v37 count];

                if (v39)
                {
                  v40 = [v38 objectForKeyedSubscript:v33];
                  v41 = [v40 mutableCopy];

                  [v41 addObject:v35];
                }

                else
                {
                  v355 = v35;
                  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v355 count:1];
                }

                [v38 setObject:v41 forKeyedSubscript:v33];

                v20 = v38;
                v22 = self;
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v323 objects:v356 count:16];
          }

          while (v28);
        }

        v42 = [v20 keysSortedByValueUsingComparator:&__block_literal_global_1];
        v43 = [v42 firstObject];
        v44 = [v20 objectForKeyedSubscript:v43];
        v45 = COERCE_DOUBLE([v44 count]);

        v46 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        v12 = v285;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = [(PCCluster *)v285 identifier];
          [v47 UUIDString];
          v49 = v48 = v20;
          *buf = 138413571;
          v344 = v49;
          v345 = 2112;
          v346 = v25;
          v347 = 2117;
          v348 = v48;
          v349 = 2117;
          v350 = *&v42;
          v351 = 2117;
          v352 = v43;
          v353 = 2048;
          v354 = v45;
          _os_log_impl(&dword_1CEE74000, v46, OS_LOG_TYPE_INFO, "Clustering: id=%@, featureKey=%@, subBundleIDsGroupedByFeatureValues=%{sensitive}@, sortedFeatureValuesByFrequency=%{sensitive}@, mostFrequentFeatureValue=%{sensitive}@, mostFrequentFeatureValueCount=%lu", buf, 0x3Eu);

          v20 = v48;
          v22 = self;
        }

        v50 = [MEMORY[0x1E695DFB0] null];
        if ([v43 isEqual:v50] & 1) != 0 || (objc_msgSend(v43, "isEqualToString:", @"unavailable"))
        {
          goto LABEL_32;
        }

        v54 = [(PCDistanceWeightingConfig *)v22->_config clusterPhenotypeMinimumCountThreshold];

        if (*&v45 >= v54)
        {
          if ([v25 isEqualToString:@"combinedPlaceType"] && objc_msgSend(v43, "isEqualToString:", @"Unknown"))
          {
            v50 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1CEE74000, v50, OS_LOG_TYPE_INFO, "Clustering: Skipping unknown place type", buf, 2u);
            }
          }

          else
          {
            [v266 setObject:v43 forKeyedSubscript:v25];
            v55 = [v20 objectForKeyedSubscript:v43];
            [v265 setObject:v55 forKeyedSubscript:v25];

            v50 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              v56 = [(PCCluster *)v285 identifier];
              [v56 UUIDString];
              v58 = v57 = v20;
              *buf = 138413570;
              v344 = v58;
              v345 = 2112;
              v346 = v25;
              v347 = 2112;
              v348 = v43;
              v349 = 2048;
              v350 = v45;
              v351 = 2048;
              v352 = v273;
              v353 = 2048;
              v354 = *&v45 / v21 * 100.0;
              _os_log_impl(&dword_1CEE74000, v50, OS_LOG_TYPE_INFO, "Clustering: id=%@, featureKey=%@ Phenotype was found: %@. Count=%lu/%lu (%.1f%%)", buf, 0x3Eu);

              v20 = v57;
              v22 = self;
            }
          }

LABEL_32:
        }

        [v278 setObject:v20 forKeyedSubscript:v25];
        v51 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v52 = [(PCCluster *)v285 identifier];
          v53 = [v52 UUIDString];
          *buf = 138412803;
          v344 = v53;
          v345 = 2112;
          v346 = v25;
          v347 = 2117;
          v348 = v20;
          _os_log_impl(&dword_1CEE74000, v51, OS_LOG_TYPE_INFO, "Clustering: id=%@, featureKey=%@, subBundleIDsGroupedByFeatureValues=%{sensitive}@", buf, 0x20u);
        }

        v23 = v283 + 1;
        v24 = v20;
      }

      while (v283 + 1 != v281);
      v59 = [v271 countByEnumeratingWithState:&v327 objects:v357 count:16];
      v281 = v59;
    }

    while (v59);
  }

  v60 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
  {
    v61 = [(PCCluster *)v12 identifier];
    v62 = [v61 UUIDString];
    v63 = [(PCClusteringManager *)self phenotypeDescription:v266];
    v64 = [v278 allKeys];
    *buf = 138412802;
    v344 = v62;
    v345 = 2112;
    v346 = v63;
    v347 = 2112;
    v348 = v64;
    _os_log_impl(&dword_1CEE74000, v60, OS_LOG_TYPE_INFO, "Clustering: id=%@, Pruning bundles with different values from phenotype=%@, allKeys=%@", buf, 0x20u);
  }

  v65 = objc_opt_new();
  v277 = [v265 copy];
  v319 = 0u;
  v320 = 0u;
  v321 = 0u;
  v322 = 0u;
  v282 = [v265 allKeys];
  v66 = [v282 countByEnumeratingWithState:&v319 objects:v342 count:16];
  v276 = v20;
  if (v66)
  {
    v67 = v66;
    v68 = 0;
    v289 = *v320;
    do
    {
      for (k = 0; k != v67; ++k)
      {
        if (*v320 != v289)
        {
          objc_enumerationMutation(v282);
        }

        v70 = *(*(&v319 + 1) + 8 * k);
        v71 = [v277 objectForKeyedSubscript:v70];
        v72 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v344 = v70;
          v345 = 2112;
          v346 = v71;
          _os_log_impl(&dword_1CEE74000, v72, OS_LOG_TYPE_INFO, "WorkoutPrediction: Clustering, Current phenotype value: %@, subBundles: %@", buf, 0x16u);
        }

        if (v68)
        {
          v73 = [v65 mutableCopy];
          v74 = [MEMORY[0x1E695DFD8] setWithArray:v71];
          [v73 intersectSet:v74];

          v75 = [(PCDistanceWeightingConfig *)self->_config clusterPhenotypeMinimumCountThreshold];
          v76 = [v73 count];
          if (v68 <= v75)
          {
            if (v76 < [(PCDistanceWeightingConfig *)self->_config clusterPhenotypeMinimumCountThreshold])
            {
              v77 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
              {
                v78 = [(PCDistanceWeightingConfig *)self->_config clusterPhenotypeMinimumCountThreshold];
                *buf = 138412546;
                v344 = v70;
                v345 = 2048;
                v346 = v78;
                _os_log_impl(&dword_1CEE74000, v77, OS_LOG_TYPE_INFO, "WorkoutPrediction: Clustering, The intersection between selected subbundles and subbundles with the current phenotype value %@ is less than threshold %lu. Dropping the current phenotype", buf, 0x16u);
              }

LABEL_62:
              [v265 removeObjectForKey:v70];
              [v266 removeObjectForKey:v70];
              goto LABEL_65;
            }
          }

          else if (v76 < [v65 count])
          {
            goto LABEL_62;
          }

          v73 = v73;

          ++v68;
          v65 = v73;
        }

        else
        {
          [MEMORY[0x1E695DFA8] setWithArray:v71];
          v73 = v65;
          v65 = v68 = 1;
        }

LABEL_65:

        v20 = v276;
      }

      v67 = [v282 countByEnumeratingWithState:&v319 objects:v342 count:16];
    }

    while (v67);
  }

  v79 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  v80 = v285;
  if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
  {
    v81 = [(PCCluster *)v285 identifier];
    v82 = [v81 UUIDString];
    v83 = [(PCClusteringManager *)self phenotypeDescription:v266];
    *buf = 138412546;
    v344 = v82;
    v345 = 2112;
    v346 = v83;
    _os_log_impl(&dword_1CEE74000, v79, OS_LOG_TYPE_INFO, "Clustering: id=%@, Remaining phenotype after pruning=%@", buf, 0x16u);
  }

  v84 = v268;
  v85 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
  {
    v86 = [v84 count];
    *buf = 134217984;
    v344 = v86;
    _os_log_impl(&dword_1CEE74000, v85, OS_LOG_TYPE_INFO, "WorkoutPrediction: Clustering, Using all original subBundles without pruning: %lu", buf, 0xCu);
  }

  v87 = [v84 count];
  if (v87 < [(PCDistanceWeightingConfig *)self->_config clusterPhenotypeMinimumCountThreshold])
  {
    v88 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    v89 = v261;
    v90 = v266;
    if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v88, OS_LOG_TYPE_INFO, "WorkoutPrediction: Clustering, Not enough subBundles after pruning. Skip cluster bundle generation.", buf, 2u);
    }

    v91 = 0;
    goto LABEL_204;
  }

  v92 = [v84 valueForKeyPath:@"@min.startDate"];
  [(PCCluster *)v285 setStartDate:v92];

  v93 = [v84 valueForKeyPath:@"@max.endDate"];
  [(PCCluster *)v285 setEndDate:v93];

  v264 = objc_opt_new();
  v263 = objc_opt_new();
  v315 = 0u;
  v316 = 0u;
  v317 = 0u;
  v318 = 0u;
  v260 = v84;
  v94 = v84;
  v95 = [v94 countByEnumeratingWithState:&v315 objects:v341 count:16];
  v290 = v65;
  if (v95)
  {
    v96 = v95;
    v97 = *v316;
    do
    {
      for (m = 0; m != v96; ++m)
      {
        if (*v316 != v97)
        {
          objc_enumerationMutation(v94);
        }

        v99 = *(*(&v315 + 1) + 8 * m);
        v100 = [v99 bundleIdentifier];

        if (v100)
        {
          v101 = [v99 bundleIdentifier];
          v102 = [v101 UUIDString];
          [v264 addObject:v102];
        }

        v103 = [v99 suggestionID];

        if (v103)
        {
          v104 = [v99 suggestionID];
          v105 = [v104 UUIDString];
          [v263 addObject:v105];
        }
      }

      v96 = [v94 countByEnumeratingWithState:&v315 objects:v341 count:16];
    }

    while (v96);
  }

  v106 = [v264 copy];
  [(PCCluster *)v285 setSubBundleIDs:v106];

  v107 = [v263 copy];
  [(PCCluster *)v285 setSubSuggestionIDs:v107];

  v108 = objc_opt_new();
  v311 = 0u;
  v312 = 0u;
  v313 = 0u;
  v314 = 0u;
  v109 = v94;
  v110 = [v109 countByEnumeratingWithState:&v311 objects:v340 count:16];
  if (v110)
  {
    v111 = v110;
    v112 = *v312;
    do
    {
      for (n = 0; n != v111; ++n)
      {
        if (*v312 != v112)
        {
          objc_enumerationMutation(v109);
        }

        v114 = [*(*(&v311 + 1) + 8 * n) events];
        [v108 addObjectsFromArray:v114];
      }

      v111 = [v109 countByEnumeratingWithState:&v311 objects:v340 count:16];
    }

    while (v111);
  }

  v258 = v109;

  v259 = v108;
  v115 = [v108 allObjects];
  v116 = [v115 copy];
  [(PCCluster *)v285 setEvents:v116];

  v269 = objc_opt_new();
  v307 = 0u;
  v308 = 0u;
  v309 = 0u;
  v310 = 0u;
  v117 = [(PCCluster *)v285 events];
  v118 = [v117 countByEnumeratingWithState:&v307 objects:v339 count:16];
  if (v118)
  {
    v119 = v118;
    v120 = *v308;
    do
    {
      for (ii = 0; ii != v119; ++ii)
      {
        if (*v308 != v120)
        {
          objc_enumerationMutation(v117);
        }

        v122 = [*(*(&v307 + 1) + 8 * ii) workoutEvent];
        v123 = [v122 hkObjectIdentifier];
        [v269 addObject:v123];
      }

      v119 = [v117 countByEnumeratingWithState:&v307 objects:v339 count:16];
    }

    while (v119);
  }

  [(PCCluster *)v285 setSubHKObjectIDs:v269];
  v124 = [(PCCluster *)v285 events];
  v125 = [(PCClusteringManager *)self _dominantSourceBundleIdentifierFromEvents:v124];
  [(PCCluster *)v285 setSourceBundleIdentifier:v125];

  v262 = objc_opt_new();
  v303 = 0u;
  v304 = 0u;
  v305 = 0u;
  v306 = 0u;
  v274 = v278;
  v270 = [v274 countByEnumeratingWithState:&v303 objects:v338 count:16];
  if (v270)
  {
    v267 = *v304;
    do
    {
      v126 = 0;
      do
      {
        if (*v304 != v267)
        {
          objc_enumerationMutation(v274);
        }

        v275 = v126;
        v127 = *(*(&v303 + 1) + 8 * v126);
        v128 = [v274 objectForKeyedSubscript:v127];
        v287 = objc_opt_new();
        v299 = 0u;
        v300 = 0u;
        v301 = 0u;
        v302 = 0u;
        v129 = v128;
        v130 = [v129 countByEnumeratingWithState:&v299 objects:v337 count:16];
        if (v130)
        {
          v131 = v130;
          v132 = *v300;
          do
          {
            for (jj = 0; jj != v131; ++jj)
            {
              if (*v300 != v132)
              {
                objc_enumerationMutation(v129);
              }

              v134 = *(*(&v299 + 1) + 8 * jj);
              v135 = [v129 objectForKeyedSubscript:v134];
              v136 = [v135 count];

              if (v136)
              {
                v137 = MEMORY[0x1E695DFA8];
                v138 = [v129 objectForKeyedSubscript:v134];
                v139 = [v137 setWithArray:v138];

                v140 = [v134 isEqualToString:@"placeName"];
                v141 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
                v142 = os_log_type_enabled(v141, OS_LOG_TYPE_INFO);
                if (v140)
                {
                  if (v142)
                  {
                    v143 = [(PCCluster *)v80 identifier];
                    v144 = [v143 UUIDString];
                    *buf = 138413059;
                    v344 = v144;
                    v345 = 2112;
                    v346 = v127;
                    v347 = 2117;
                    v348 = v134;
                    v349 = 2112;
                    v350 = *&v139;
                    v145 = v141;
                    v146 = "Clustering: id=%@, featureKey=%@, value=%{sensitive}@, subBundles=%@";
                    goto LABEL_116;
                  }
                }

                else if (v142)
                {
                  v143 = [(PCCluster *)v80 identifier];
                  v144 = [v143 UUIDString];
                  *buf = 138413058;
                  v344 = v144;
                  v345 = 2112;
                  v346 = v127;
                  v347 = 2112;
                  v348 = v134;
                  v349 = 2112;
                  v350 = *&v139;
                  v145 = v141;
                  v146 = "Clustering: id=%@, featureKey=%@, value=%@, subBundles=%@";
LABEL_116:
                  _os_log_impl(&dword_1CEE74000, v145, OS_LOG_TYPE_INFO, v146, buf, 0x2Au);

                  v80 = v285;
                }

                [v139 intersectSet:v290];
                v147 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
                if (os_log_type_enabled(v147, OS_LOG_TYPE_INFO))
                {
                  v148 = [(PCCluster *)v80 identifier];
                  v149 = [v148 UUIDString];
                  *buf = 138412802;
                  v344 = v149;
                  v345 = 2112;
                  v346 = v127;
                  v347 = 2112;
                  v348 = v139;
                  _os_log_impl(&dword_1CEE74000, v147, OS_LOG_TYPE_INFO, "Clustering: id=%@, featureKey=%@. Intersection between feature value subbundles and phenotype subbundles %@", buf, 0x20u);

                  v80 = v285;
                }

                if ([v139 count])
                {
                  v150 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v139, "count")}];
                  [v287 setObject:v150 forKeyedSubscript:v134];
                }

                continue;
              }
            }

            v131 = [v129 countByEnumeratingWithState:&v299 objects:v337 count:16];
          }

          while (v131);
        }

        v151 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
        {
          v152 = [(PCCluster *)v80 identifier];
          v153 = [v152 UUIDString];
          *buf = 138412803;
          v344 = v153;
          v345 = 2112;
          v346 = v127;
          v347 = 2117;
          v348 = v287;
          _os_log_impl(&dword_1CEE74000, v151, OS_LOG_TYPE_INFO, "Clustering: id=%@, featureKey=%@, histogram=%{sensitive}@", buf, 0x20u);
        }

        if ([v287 count])
        {
          [v262 setObject:v287 forKeyedSubscript:v127];
        }

        v126 = v275 + 1;
      }

      while (v275 + 1 != v270);
      v270 = [v274 countByEnumeratingWithState:&v303 objects:v338 count:16];
    }

    while (v270);
  }

  v284 = objc_opt_new();
  v295 = 0u;
  v296 = 0u;
  v297 = 0u;
  v298 = 0u;
  v288 = v279;
  v154 = [v288 countByEnumeratingWithState:&v295 objects:v336 count:16];
  if (!v154)
  {
    goto LABEL_142;
  }

  v155 = v154;
  v156 = *v296;
  do
  {
    for (kk = 0; kk != v155; ++kk)
    {
      if (*v296 != v156)
      {
        objc_enumerationMutation(v288);
      }

      v158 = *(*(&v295 + 1) + 8 * kk);
      v159 = [v158 objectForKeyedSubscript:@"weekOfYear"];
      if (v159)
      {
        v160 = v159;
        v161 = [v158 objectForKeyedSubscript:@"suggestionID"];
        if (v161)
        {
          v162 = v161;
          v163 = [v158 objectForKeyedSubscript:@"suggestionID"];
          v164 = [v290 containsObject:v163];

          if (!v164)
          {
            continue;
          }

          v165 = [v158 objectForKeyedSubscript:@"weekOfYear"];
          v160 = [v165 stringValue];

          v166 = MEMORY[0x1E696AD98];
          v167 = [v284 objectForKeyedSubscript:v160];
          v168 = [v166 numberWithInt:{objc_msgSend(v167, "intValue") + 1}];
          [v284 setObject:v168 forKeyedSubscript:v160];
        }
      }
    }

    v155 = [v288 countByEnumeratingWithState:&v295 objects:v336 count:16];
  }

  while (v155);
LABEL_142:

  v169 = v266;
  v170 = [v266 objectForKeyedSubscript:@"activityType"];

  if (v170)
  {
    v171 = [v266 objectForKeyedSubscript:@"activityType"];
    [(PCCluster *)v285 setActivityType:v171];
  }

  v172 = [v266 objectForKeyedSubscript:@"dayOfWeek"];
  if (v172 || ([v266 objectForKeyedSubscript:@"timeTag"], (v172 = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_147;
  }

  v200 = [v266 objectForKeyedSubscript:@"isWeekend"];

  if (v200)
  {
LABEL_147:
    v173 = [v266 objectForKeyedSubscript:@"timeTag"];
    v174 = [v173 intValue];

    if (v174)
    {
      v175 = [v266 objectForKeyedSubscript:@"timeTag"];
      v176 = [v175 unsignedLongValue];
    }

    else
    {
      v193 = [v266 objectForKeyedSubscript:@"dayOfWeek"];

      if (v193)
      {
        v194 = [v266 objectForKeyedSubscript:@"dayOfWeek"];
        v195 = [v194 isEqualToString:@"sunday"];

        if (v195)
        {
          v176 = 102;
        }

        else
        {
          v204 = [v266 objectForKeyedSubscript:@"dayOfWeek"];
          v205 = [v204 isEqualToString:@"monday"];

          if (v205)
          {
            v176 = 103;
          }

          else
          {
            v247 = [v266 objectForKeyedSubscript:@"dayOfWeek"];
            v248 = [v247 isEqualToString:@"tuesday"];

            if (v248)
            {
              v176 = 104;
            }

            else
            {
              v250 = [v266 objectForKeyedSubscript:@"dayOfWeek"];
              v251 = [v250 isEqualToString:@"wednesday"];

              if (v251)
              {
                v176 = 105;
              }

              else
              {
                v252 = [v266 objectForKeyedSubscript:@"dayOfWeek"];
                v253 = [v252 isEqualToString:@"thursday"];

                if (v253)
                {
                  v176 = 106;
                }

                else
                {
                  v254 = [v266 objectForKeyedSubscript:@"dayOfWeek"];
                  v255 = [v254 isEqualToString:@"friday"];

                  if (v255)
                  {
                    v176 = 107;
                  }

                  else
                  {
                    v256 = [v266 objectForKeyedSubscript:@"dayOfWeek"];
                    v257 = [v256 isEqualToString:@"saturday"];

                    if (v257)
                    {
                      v176 = 108;
                    }

                    else
                    {
                      v176 = 0;
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v176 = [v266 objectForKeyedSubscript:@"isWeekend"];

        if (v176)
        {
          v202 = [v266 objectForKeyedSubscript:@"isWeekend"];
          v203 = [v202 BOOLValue];

          if (v203)
          {
            v176 = 10001;
          }

          else
          {
            v176 = 10000;
          }
        }
      }
    }

    v177 = [PCTime timeStringFromTimeTag:v176];
    if (v177)
    {
      [v266 setObject:v177 forKeyedSubscript:@"timeString"];
      v178 = [MEMORY[0x1E695DEE8] currentCalendar];
      v179 = [PCTime alloc];
      v180 = [MEMORY[0x1E695DF00] date];
      [v180 timeIntervalSinceReferenceDate];
      v182 = v181;
      v183 = [v178 timeZone];
      v184 = [v183 name];
      v185 = [(PCTime *)v179 initWithTimestamp:v177 timeString:v184 timeZone:v176 timeTag:v182];

      [(PCCluster *)v285 setTime:v185];
      v169 = v266;
    }
  }

  v186 = [v169 objectForKeyedSubscript:@"placeName"];
  if (v186 || ([v169 objectForKeyedSubscript:@"combinedPlaceType"], (v186 = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_155;
  }

  v201 = [v169 objectForKeyedSubscript:@"enclosingAreaName"];

  if (v201)
  {
LABEL_155:
    v187 = [v169 objectForKeyedSubscript:@"placeName"];
    [(PCCluster *)v285 setPlaceName:v187];

    v188 = [v169 objectForKeyedSubscript:@"combinedPlaceType"];

    if (!v188)
    {
      goto LABEL_178;
    }

    v189 = [v169 objectForKeyedSubscript:@"combinedPlaceType"];
    v190 = [v189 isEqualToString:@"Home"];

    if (v190)
    {
      v191 = v285;
      v192 = 1;
    }

    else
    {
      v196 = [v169 objectForKeyedSubscript:@"combinedPlaceType"];
      v197 = [v196 isEqualToString:@"Work"];

      if (v197)
      {
        v191 = v285;
        v192 = 2;
      }

      else
      {
        v198 = [v169 objectForKeyedSubscript:@"combinedPlaceType"];
        v199 = [v198 isEqualToString:@"School"];

        if (v199)
        {
          v191 = v285;
          v192 = 3;
        }

        else
        {
          v206 = [v169 objectForKeyedSubscript:@"combinedPlaceType"];
          v207 = [v206 isEqualToString:@"Gym"];

          v191 = v285;
          if (!v207)
          {
            [(PCCluster *)v285 setPlaceUserType:0];
            v249 = [v169 objectForKeyedSubscript:@"combinedPlaceType"];
            [(PCCluster *)v285 setPoiCategory:v249];

            goto LABEL_178;
          }

          v192 = 4;
        }
      }
    }

    [(PCCluster *)v191 setPlaceUserType:v192];
  }

LABEL_178:
  v208 = objc_alloc_init(PCPLocation);
  v209 = [v169 objectForKeyedSubscript:@"placeLatitude"];
  [v209 doubleValue];
  [(PCPLocation *)v208 setLocationLatitudeDeg:?];

  v210 = [v169 objectForKeyedSubscript:@"placeLongitude"];
  [v210 doubleValue];
  [(PCPLocation *)v208 setLocationLongitudeDeg:?];

  [(PCCluster *)v285 setLocation:v208];
  v211 = [PCClusterMetadata alloc];
  v212 = [MEMORY[0x1E696AFB0] UUID];
  v213 = [(PCClusterMetadata *)v211 initWithIdentifier:v212 phenoType:v169];

  v214 = objc_opt_new();
  v291 = 0u;
  v292 = 0u;
  v293 = 0u;
  v294 = 0u;
  v215 = v258;
  v216 = [v215 countByEnumeratingWithState:&v291 objects:v335 count:16];
  if (v216)
  {
    v217 = v216;
    v218 = *v292;
    do
    {
      for (mm = 0; mm != v217; ++mm)
      {
        if (*v292 != v218)
        {
          objc_enumerationMutation(v215);
        }

        v220 = *(*(&v291 + 1) + 8 * mm);
        v221 = [v220 suggestionID];

        if (v221)
        {
          v222 = [v220 suggestionID];
          v223 = [v222 UUIDString];
          [v214 addObject:v223];
        }
      }

      v217 = [v215 countByEnumeratingWithState:&v291 objects:v335 count:16];
    }

    while (v217);
  }

  [(PCClusterMetadata *)v213 setSubSuggestionIDsBeforePruning:v214];
  v224 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v224, OS_LOG_TYPE_INFO))
  {
    v225 = [v214 description];
    *buf = 138412290;
    v344 = v225;
    _os_log_impl(&dword_1CEE74000, v224, OS_LOG_TYPE_INFO, "WorkoutPrediction: Clustering, SubSuggestionIDs before pruning %@", buf, 0xCu);
  }

  v226 = [v262 objectForKeyedSubscript:@"activityType"];

  v90 = v266;
  v20 = v276;
  if (v226)
  {
    v227 = [v262 objectForKeyedSubscript:@"activityType"];
    [(PCClusterMetadata *)v213 setActivityTypeHistogram:v227];
  }

  v228 = [v262 objectForKeyedSubscript:@"timeTag"];

  if (v228)
  {
    v229 = [v262 objectForKeyedSubscript:@"timeTag"];
    [(PCClusterMetadata *)v213 setTimeTagHistogram:v229];
  }

  v230 = [v262 objectForKeyedSubscript:@"dayOfWeek"];

  v80 = v285;
  if (v230)
  {
    v231 = [v262 objectForKeyedSubscript:@"dayOfWeek"];
    [(PCClusterMetadata *)v213 setDayOfWeekHistogram:v231];
  }

  v232 = [v262 objectForKeyedSubscript:@"placeName"];

  if (v232)
  {
    v233 = [v262 objectForKeyedSubscript:@"placeName"];
    [(PCClusterMetadata *)v213 setPlaceNameHistogram:v233];
  }

  v234 = [v262 objectForKeyedSubscript:@"combinedPlaceType"];

  if (v234)
  {
    v235 = [v262 objectForKeyedSubscript:@"combinedPlaceType"];
    [(PCClusterMetadata *)v213 setCombinedPlaceTypeHistogram:v235];
  }

  [(PCCluster *)v285 setClusterMetadata:v213];
  if ([obj count] >= 2)
  {
    [PCEmbeddingDistanceCalculator calculateCircularStandardDeviationsForCluster:v285 fromEmbeddings:obj];
    v236 = MEMORY[0x1E696AD98];
    [(PCCluster *)v285 timeOfDayCircularStd];
    v237 = [v236 numberWithDouble:?];
    [v266 setObject:v237 forKeyedSubscript:@"embeddingDistWeight_timeOfDayCircularStd"];

    v238 = MEMORY[0x1E696AD98];
    [(PCCluster *)v285 latLongCircularStd];
    v239 = [v238 numberWithDouble:?];
    [v266 setObject:v239 forKeyedSubscript:@"embeddingDistWeight_latLongCircularStd"];

    v240 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v240, OS_LOG_TYPE_INFO))
    {
      v241 = [(PCCluster *)v285 identifier];
      [(PCCluster *)v285 timeOfDayCircularStd];
      v243 = v242;
      [(PCCluster *)v285 latLongCircularStd];
      *buf = 138412802;
      v344 = v241;
      v345 = 2048;
      v346 = v243;
      v347 = 2048;
      v348 = v244;
      _os_log_impl(&dword_1CEE74000, v240, OS_LOG_TYPE_INFO, "Calculated circular std for cluster %@: timeStd=%.6f, locationStd=%.6f", buf, 0x20u);
    }
  }

  v91 = v285;

  v89 = v261;
  v65 = v290;
  v84 = v260;
  v88 = v264;
LABEL_204:

  v245 = *MEMORY[0x1E69E9840];

  return v91;
}

uint64_t __70__PCClusteringManager__getClusterFrom_withEmbeddings_andCreationDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    if (v8 <= [v5 count])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)_convertContextvalueToString:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    goto LABEL_3;
  }

  v7 = [MEMORY[0x1E695DFB0] null];
  v8 = [v5 isEqual:v7];

  if (v8)
  {
    goto LABEL_3;
  }

  if (@"timeTag" != v6)
  {
    if (([(__CFString *)v6 isEqualToString:@"activityType"]& 1) == 0)
    {
      [(__CFString *)v6 isEqualToString:@"combinedPlaceType"];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v5;
    }

    else
    {
      v9 = [v5 stringValue];
    }

    goto LABEL_4;
  }

  v10 = +[PCTime timeStringFromTimeTag:](PCTime, "timeStringFromTimeTag:", [v5 unsignedLongValue]);
  if (!v10)
  {
LABEL_3:
    v9 = @"unavailable";
LABEL_4:
    v10 = v9;
  }

  return v10;
}

- (id)_dominantSourceBundleIdentifierFromEvents:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v31 + 1) + 8 * i) workoutEvent];
        v11 = [v10 sourceBundleIdentifier];

        if (v11)
        {
          v12 = [v4 objectForKeyedSubscript:v11];
          v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v12, "intValue") + 1}];
          [v4 setObject:v13 forKeyedSubscript:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v7);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = v4;
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = 0;
    v19 = *v28;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v27 + 1) + 8 * j);
        v22 = [v14 objectForKeyedSubscript:{v21, v27}];
        v23 = [v22 intValue];

        if (v23 > v17)
        {
          v24 = v21;

          v17 = v23;
          v18 = v24;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v16);
  }

  else
  {
    v18 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v18;
}

@end