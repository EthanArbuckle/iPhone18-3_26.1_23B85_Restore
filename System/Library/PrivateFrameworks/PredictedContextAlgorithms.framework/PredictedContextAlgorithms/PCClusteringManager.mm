@interface PCClusteringManager
- (PCClusteringManager)init;
- (id)_convertContextvalueToString:(id)string forKey:(id)key;
- (id)_dominantSourceBundleIdentifierFromEvents:(id)events;
- (id)_getClusterFrom:(id)from withEmbeddings:(id)embeddings andCreationDate:(id)date;
- (id)generateClusters:(id)clusters withEmbeddings:(id)embeddings error:(id *)error;
- (id)getEmbeddingsFromBundles:(id)bundles forEmbeddingType:(unint64_t)type;
- (id)phenotypeDescription:(id)description;
- (void)runHDBSCANClusteringOn:(id)on;
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

- (id)getEmbeddingsFromBundles:(id)bundles forEmbeddingType:(unint64_t)type
{
  v29 = *MEMORY[0x1E69E9840];
  bundlesCopy = bundles;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(bundlesCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = bundlesCopy;
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
        v12 = [[PCEmbedding alloc] initWithEventBundle:v11 forEmbeddingType:type];
        v13 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          locationContextEmbedding = [(PCEmbedding *)v12 locationContextEmbedding];
          *buf = 138412547;
          v25 = v12;
          v26 = 2117;
          v27 = locationContextEmbedding;
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

- (void)runHDBSCANClusteringOn:(id)on
{
  v14 = *MEMORY[0x1E69E9840];
  onCopy = on;
  v5 = [onCopy count];
  if (v5 <= [(PCDistanceWeightingConfig *)self->_config minClusterSize])
  {
    v6 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [onCopy count];
      minClusterSize = [(PCDistanceWeightingConfig *)self->_config minClusterSize];
      v10 = 134218240;
      v11 = v7;
      v12 = 2048;
      v13 = minClusterSize;
      _os_log_impl(&dword_1CEE74000, v6, OS_LOG_TYPE_DEFAULT, "WorkoutPrediction: Clustering, Embedding count (%lu) is equal to or less than min cluster size (%lu). Skip clustering", &v10, 0x16u);
    }
  }

  else
  {
    [(PCHDBSCANClustering *)self->_hdbscanClustering runHDBSCANClusteringOn:onCopy];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)generateClusters:(id)clusters withEmbeddings:(id)embeddings error:(id *)error
{
  v99[1] = *MEMORY[0x1E69E9840];
  clustersCopy = clusters;
  embeddingsCopy = embeddings;
  selfCopy = self;
  getClusterLabels = [(PCHDBSCANClustering *)self->_hdbscanClustering getClusterLabels];
  if ([getClusterLabels count])
  {
    v11 = [getClusterLabels count];
    if (v11 != [embeddingsCopy count])
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v96 = *MEMORY[0x1E696A578];
      v97 = @"Label count and embedding count do not match. Unable to create clusters";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
      v14 = [v12 initWithDomain:@"PCErrorDomain" code:0 userInfo:v13];

      if (v14)
      {
        if (error)
        {
          v15 = v14;
          v16 = 0;
          v17 = 0;
          *error = v14;
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
      if (error)
      {
        v20 = v16;
        v14 = 0;
        v17 = 0;
        *error = v16;
        goto LABEL_45;
      }

      v14 = 0;
      goto LABEL_44;
    }
  }

  errorCopy = error;
  v21 = [MEMORY[0x1E696AB50] setWithArray:getClusterLabels];
  v64 = objc_opt_new();
  date = [MEMORY[0x1E695DF00] date];
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
    v58 = clustersCopy;
    v66 = getClusterLabels;
    v67 = embeddingsCopy;
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
          v72 = [getClusterLabels indexesOfObjectsPassingTest:v77];
          v27 = [embeddingsCopy objectsAtIndexes:?];
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
                bundleIdentifier = [v34 bundleIdentifier];

                if (bundleIdentifier)
                {
                  bundleIdentifier2 = [v34 bundleIdentifier];
                  [v28 addObject:bundleIdentifier2];
                }
              }

              v31 = [v29 countByEnumeratingWithState:&v73 objects:v94 count:16];
            }

            while (v31);
          }

          v37 = MEMORY[0x1E696AE18];
          allObjects = [v28 allObjects];
          v39 = [v37 predicateWithFormat:@"bundleIdentifier in %@", allObjects];

          v40 = [clustersCopy filteredArrayUsingPredicate:v39];
          v41 = [(PCClusteringManager *)selfCopy _getClusterFrom:v40 withEmbeddings:v29 andCreationDate:date];
          v42 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          v43 = v42;
          if (v41)
          {
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              identifier = [v41 identifier];
              subBundleIDs = [v41 subBundleIDs];
              v59 = [subBundleIDs count];
              clusterMetadata = [v41 clusterMetadata];
              phenotype = [clusterMetadata phenotype];
              [(PCClusteringManager *)selfCopy phenotypeDescription:phenotype];
              v45 = v62 = v39;
              startDate = [v41 startDate];
              endDate = [v41 endDate];
              *buf = 138544386;
              v85 = identifier;
              v86 = 2050;
              v87 = v59;
              v88 = 2114;
              v89 = v45;
              v90 = 2114;
              v91 = startDate;
              v92 = 2114;
              v93 = endDate;
              _os_log_impl(&dword_1CEE74000, v43, OS_LOG_TYPE_DEFAULT, "WorkoutPrediction: Created a cluster ID=%{public}@, bundleCount=%{public}lu, phenotype=%{public}@, dateRange=%{public}@-%{public}@", buf, 0x34u);

              clustersCopy = v58;
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

          embeddingsCopy = v67;

          v24 = v65;
          getClusterLabels = v66;
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
  cachedClusters = selfCopy->_cachedClusters;
  selfCopy->_cachedClusters = v48;

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

    if (errorCopy)
    {
      v54 = v53;
      *errorCopy = v53;
    }

    v17 = 0;
  }

  v14 = 0;
  v16 = 0;
LABEL_45:

  v55 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)phenotypeDescription:(id)description
{
  v3 = MEMORY[0x1E696AD60];
  descriptionCopy = description;
  string = [v3 string];
  [string appendFormat:@"\n"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__PCClusteringManager_phenotypeDescription___block_invoke;
  v8[3] = &unk_1E83B8200;
  v6 = string;
  v9 = v6;
  [descriptionCopy enumerateKeysAndObjectsUsingBlock:v8];

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

- (id)_getClusterFrom:(id)from withEmbeddings:(id)embeddings andCreationDate:(id)date
{
  v360 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  embeddingsCopy = embeddings;
  dateCopy = date;
  v10 = [PCCluster alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v261 = dateCopy;
  v12 = [(PCCluster *)v10 initWithIdentifier:uUID creationDate:dateCopy];

  v279 = objc_opt_new();
  v331 = 0u;
  v332 = 0u;
  v333 = 0u;
  v334 = 0u;
  obj = embeddingsCopy;
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

        summaryDictionary = [*(*(&v331 + 1) + 8 * i) summaryDictionary];
        [v279 addObject:summaryDictionary];
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
  v268 = fromCopy;
  v19 = [fromCopy count];
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
    selfCopy4 = self;
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
              v33 = [(PCClusteringManager *)selfCopy4 _convertContextvalueToString:v32 forKey:v25];

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
                selfCopy4 = self;
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v323 objects:v356 count:16];
          }

          while (v28);
        }

        v42 = [v20 keysSortedByValueUsingComparator:&__block_literal_global_1];
        firstObject = [v42 firstObject];
        v44 = [v20 objectForKeyedSubscript:firstObject];
        v45 = COERCE_DOUBLE([v44 count]);

        v46 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        v12 = v285;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          identifier = [(PCCluster *)v285 identifier];
          [identifier UUIDString];
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
          v352 = firstObject;
          v353 = 2048;
          v354 = v45;
          _os_log_impl(&dword_1CEE74000, v46, OS_LOG_TYPE_INFO, "Clustering: id=%@, featureKey=%@, subBundleIDsGroupedByFeatureValues=%{sensitive}@, sortedFeatureValuesByFrequency=%{sensitive}@, mostFrequentFeatureValue=%{sensitive}@, mostFrequentFeatureValueCount=%lu", buf, 0x3Eu);

          v20 = v48;
          selfCopy4 = self;
        }

        null = [MEMORY[0x1E695DFB0] null];
        if ([firstObject isEqual:null] & 1) != 0 || (objc_msgSend(firstObject, "isEqualToString:", @"unavailable"))
        {
          goto LABEL_32;
        }

        clusterPhenotypeMinimumCountThreshold = [(PCDistanceWeightingConfig *)selfCopy4->_config clusterPhenotypeMinimumCountThreshold];

        if (*&v45 >= clusterPhenotypeMinimumCountThreshold)
        {
          if ([v25 isEqualToString:@"combinedPlaceType"] && objc_msgSend(firstObject, "isEqualToString:", @"Unknown"))
          {
            null = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
            if (os_log_type_enabled(null, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1CEE74000, null, OS_LOG_TYPE_INFO, "Clustering: Skipping unknown place type", buf, 2u);
            }
          }

          else
          {
            [v266 setObject:firstObject forKeyedSubscript:v25];
            v55 = [v20 objectForKeyedSubscript:firstObject];
            [v265 setObject:v55 forKeyedSubscript:v25];

            null = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
            if (os_log_type_enabled(null, OS_LOG_TYPE_INFO))
            {
              identifier2 = [(PCCluster *)v285 identifier];
              [identifier2 UUIDString];
              v58 = v57 = v20;
              *buf = 138413570;
              v344 = v58;
              v345 = 2112;
              v346 = v25;
              v347 = 2112;
              v348 = firstObject;
              v349 = 2048;
              v350 = v45;
              v351 = 2048;
              v352 = v273;
              v353 = 2048;
              v354 = *&v45 / v21 * 100.0;
              _os_log_impl(&dword_1CEE74000, null, OS_LOG_TYPE_INFO, "Clustering: id=%@, featureKey=%@ Phenotype was found: %@. Count=%lu/%lu (%.1f%%)", buf, 0x3Eu);

              v20 = v57;
              selfCopy4 = self;
            }
          }

LABEL_32:
        }

        [v278 setObject:v20 forKeyedSubscript:v25];
        v51 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          identifier3 = [(PCCluster *)v285 identifier];
          uUIDString = [identifier3 UUIDString];
          *buf = 138412803;
          v344 = uUIDString;
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
    identifier4 = [(PCCluster *)v12 identifier];
    uUIDString2 = [identifier4 UUIDString];
    v63 = [(PCClusteringManager *)self phenotypeDescription:v266];
    allKeys = [v278 allKeys];
    *buf = 138412802;
    v344 = uUIDString2;
    v345 = 2112;
    v346 = v63;
    v347 = 2112;
    v348 = allKeys;
    _os_log_impl(&dword_1CEE74000, v60, OS_LOG_TYPE_INFO, "Clustering: id=%@, Pruning bundles with different values from phenotype=%@, allKeys=%@", buf, 0x20u);
  }

  v65 = objc_opt_new();
  v277 = [v265 copy];
  v319 = 0u;
  v320 = 0u;
  v321 = 0u;
  v322 = 0u;
  allKeys2 = [v265 allKeys];
  v66 = [allKeys2 countByEnumeratingWithState:&v319 objects:v342 count:16];
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
          objc_enumerationMutation(allKeys2);
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

          clusterPhenotypeMinimumCountThreshold2 = [(PCDistanceWeightingConfig *)self->_config clusterPhenotypeMinimumCountThreshold];
          v76 = [v73 count];
          if (v68 <= clusterPhenotypeMinimumCountThreshold2)
          {
            if (v76 < [(PCDistanceWeightingConfig *)self->_config clusterPhenotypeMinimumCountThreshold])
            {
              v77 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
              {
                clusterPhenotypeMinimumCountThreshold3 = [(PCDistanceWeightingConfig *)self->_config clusterPhenotypeMinimumCountThreshold];
                *buf = 138412546;
                v344 = v70;
                v345 = 2048;
                v346 = clusterPhenotypeMinimumCountThreshold3;
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

      v67 = [allKeys2 countByEnumeratingWithState:&v319 objects:v342 count:16];
    }

    while (v67);
  }

  v79 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  v80 = v285;
  if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
  {
    identifier5 = [(PCCluster *)v285 identifier];
    uUIDString3 = [identifier5 UUIDString];
    v83 = [(PCClusteringManager *)self phenotypeDescription:v266];
    *buf = 138412546;
    v344 = uUIDString3;
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
        bundleIdentifier = [v99 bundleIdentifier];

        if (bundleIdentifier)
        {
          bundleIdentifier2 = [v99 bundleIdentifier];
          uUIDString4 = [bundleIdentifier2 UUIDString];
          [v264 addObject:uUIDString4];
        }

        suggestionID = [v99 suggestionID];

        if (suggestionID)
        {
          suggestionID2 = [v99 suggestionID];
          uUIDString5 = [suggestionID2 UUIDString];
          [v263 addObject:uUIDString5];
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

        events = [*(*(&v311 + 1) + 8 * n) events];
        [v108 addObjectsFromArray:events];
      }

      v111 = [v109 countByEnumeratingWithState:&v311 objects:v340 count:16];
    }

    while (v111);
  }

  v258 = v109;

  v259 = v108;
  allObjects = [v108 allObjects];
  v116 = [allObjects copy];
  [(PCCluster *)v285 setEvents:v116];

  v269 = objc_opt_new();
  v307 = 0u;
  v308 = 0u;
  v309 = 0u;
  v310 = 0u;
  events2 = [(PCCluster *)v285 events];
  v118 = [events2 countByEnumeratingWithState:&v307 objects:v339 count:16];
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
          objc_enumerationMutation(events2);
        }

        workoutEvent = [*(*(&v307 + 1) + 8 * ii) workoutEvent];
        hkObjectIdentifier = [workoutEvent hkObjectIdentifier];
        [v269 addObject:hkObjectIdentifier];
      }

      v119 = [events2 countByEnumeratingWithState:&v307 objects:v339 count:16];
    }

    while (v119);
  }

  [(PCCluster *)v285 setSubHKObjectIDs:v269];
  events3 = [(PCCluster *)v285 events];
  v125 = [(PCClusteringManager *)self _dominantSourceBundleIdentifierFromEvents:events3];
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
                    identifier6 = [(PCCluster *)v80 identifier];
                    uUIDString6 = [identifier6 UUIDString];
                    *buf = 138413059;
                    v344 = uUIDString6;
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
                  identifier6 = [(PCCluster *)v80 identifier];
                  uUIDString6 = [identifier6 UUIDString];
                  *buf = 138413058;
                  v344 = uUIDString6;
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
                  identifier7 = [(PCCluster *)v80 identifier];
                  uUIDString7 = [identifier7 UUIDString];
                  *buf = 138412802;
                  v344 = uUIDString7;
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
          identifier8 = [(PCCluster *)v80 identifier];
          uUIDString8 = [identifier8 UUIDString];
          *buf = 138412803;
          v344 = uUIDString8;
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
        stringValue = v159;
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
          stringValue = [v165 stringValue];

          v166 = MEMORY[0x1E696AD98];
          v167 = [v284 objectForKeyedSubscript:stringValue];
          v168 = [v166 numberWithInt:{objc_msgSend(v167, "intValue") + 1}];
          [v284 setObject:v168 forKeyedSubscript:stringValue];
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
    intValue = [v173 intValue];

    if (intValue)
    {
      v175 = [v266 objectForKeyedSubscript:@"timeTag"];
      unsignedLongValue = [v175 unsignedLongValue];
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
          unsignedLongValue = 102;
        }

        else
        {
          v204 = [v266 objectForKeyedSubscript:@"dayOfWeek"];
          v205 = [v204 isEqualToString:@"monday"];

          if (v205)
          {
            unsignedLongValue = 103;
          }

          else
          {
            v247 = [v266 objectForKeyedSubscript:@"dayOfWeek"];
            v248 = [v247 isEqualToString:@"tuesday"];

            if (v248)
            {
              unsignedLongValue = 104;
            }

            else
            {
              v250 = [v266 objectForKeyedSubscript:@"dayOfWeek"];
              v251 = [v250 isEqualToString:@"wednesday"];

              if (v251)
              {
                unsignedLongValue = 105;
              }

              else
              {
                v252 = [v266 objectForKeyedSubscript:@"dayOfWeek"];
                v253 = [v252 isEqualToString:@"thursday"];

                if (v253)
                {
                  unsignedLongValue = 106;
                }

                else
                {
                  v254 = [v266 objectForKeyedSubscript:@"dayOfWeek"];
                  v255 = [v254 isEqualToString:@"friday"];

                  if (v255)
                  {
                    unsignedLongValue = 107;
                  }

                  else
                  {
                    v256 = [v266 objectForKeyedSubscript:@"dayOfWeek"];
                    v257 = [v256 isEqualToString:@"saturday"];

                    if (v257)
                    {
                      unsignedLongValue = 108;
                    }

                    else
                    {
                      unsignedLongValue = 0;
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
        unsignedLongValue = [v266 objectForKeyedSubscript:@"isWeekend"];

        if (unsignedLongValue)
        {
          v202 = [v266 objectForKeyedSubscript:@"isWeekend"];
          bOOLValue = [v202 BOOLValue];

          if (bOOLValue)
          {
            unsignedLongValue = 10001;
          }

          else
          {
            unsignedLongValue = 10000;
          }
        }
      }
    }

    v177 = [PCTime timeStringFromTimeTag:unsignedLongValue];
    if (v177)
    {
      [v266 setObject:v177 forKeyedSubscript:@"timeString"];
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      v179 = [PCTime alloc];
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSinceReferenceDate];
      v182 = v181;
      timeZone = [currentCalendar timeZone];
      name = [timeZone name];
      v185 = [(PCTime *)v179 initWithTimestamp:v177 timeString:name timeZone:unsignedLongValue timeTag:v182];

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
  uUID2 = [MEMORY[0x1E696AFB0] UUID];
  v213 = [(PCClusterMetadata *)v211 initWithIdentifier:uUID2 phenoType:v169];

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
        suggestionID3 = [v220 suggestionID];

        if (suggestionID3)
        {
          suggestionID4 = [v220 suggestionID];
          uUIDString9 = [suggestionID4 UUIDString];
          [v214 addObject:uUIDString9];
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
      identifier9 = [(PCCluster *)v285 identifier];
      [(PCCluster *)v285 timeOfDayCircularStd];
      v243 = v242;
      [(PCCluster *)v285 latLongCircularStd];
      *buf = 138412802;
      v344 = identifier9;
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

- (id)_convertContextvalueToString:(id)string forKey:(id)key
{
  stringCopy = string;
  keyCopy = key;
  if (!stringCopy)
  {
    goto LABEL_3;
  }

  null = [MEMORY[0x1E695DFB0] null];
  v8 = [stringCopy isEqual:null];

  if (v8)
  {
    goto LABEL_3;
  }

  if (@"timeTag" != keyCopy)
  {
    if (([(__CFString *)keyCopy isEqualToString:@"activityType"]& 1) == 0)
    {
      [(__CFString *)keyCopy isEqualToString:@"combinedPlaceType"];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = stringCopy;
    }

    else
    {
      stringValue = [stringCopy stringValue];
    }

    goto LABEL_4;
  }

  v10 = +[PCTime timeStringFromTimeTag:](PCTime, "timeStringFromTimeTag:", [stringCopy unsignedLongValue]);
  if (!v10)
  {
LABEL_3:
    stringValue = @"unavailable";
LABEL_4:
    v10 = stringValue;
  }

  return v10;
}

- (id)_dominantSourceBundleIdentifierFromEvents:(id)events
{
  v37 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = eventsCopy;
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

        workoutEvent = [*(*(&v31 + 1) + 8 * i) workoutEvent];
        sourceBundleIdentifier = [workoutEvent sourceBundleIdentifier];

        if (sourceBundleIdentifier)
        {
          v12 = [dictionary objectForKeyedSubscript:sourceBundleIdentifier];
          v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v12, "intValue") + 1}];
          [dictionary setObject:v13 forKeyedSubscript:sourceBundleIdentifier];
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
  v14 = dictionary;
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
        intValue = [v22 intValue];

        if (intValue > v17)
        {
          v24 = v21;

          v17 = intValue;
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