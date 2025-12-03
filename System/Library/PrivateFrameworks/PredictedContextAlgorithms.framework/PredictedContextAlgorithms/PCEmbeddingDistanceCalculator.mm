@interface PCEmbeddingDistanceCalculator
+ (double)calculateCircularStandardDeviation:(id)deviation cosValues:(id)values;
+ (double)calculateDistanceBetweenEmbedding:(id)embedding andEmbedding:(id)andEmbedding withCluster:(id)cluster withWeights:(id)weights;
+ (double)calculateDistanceBetweenEmbedding:(id)embedding andEmbedding:(id)andEmbedding withWeights:(id)weights;
+ (double)calculateDistanceFromFeatures:(id)features withWeights:(id)weights fromEmbedding:(id)embedding toEmbedding:(id)toEmbedding;
+ (double)calculateGeographicalStandardDeviation:(id)deviation longValues:(id)values;
+ (double)calculateValidMean:(id)mean;
+ (double)distanceFromLat1:(double)lat1 lon1:(double)lon1 toLat2:(double)lat2 lon2:(double)lon2;
+ (id)extractFeatureDistancesBetweenEmbedding:(id)embedding andEmbedding:(id)andEmbedding;
+ (id)extractFeatureDistancesBetweenEmbedding:(id)embedding andEmbedding:(id)andEmbedding withCluster:(id)cluster;
+ (void)calculateCircularStandardDeviationsForCluster:(id)cluster fromEmbeddings:(id)embeddings;
+ (void)calculateCircularStandardDeviationsForClusters:(id)clusters fromEmbeddings:(id)embeddings;
+ (void)extractActivityContextDistances:(id)distances embedding2:(id)embedding2 intoFeatureDistances:(id)featureDistances;
+ (void)extractLocationContextDistances:(id)distances embedding2:(id)embedding2 intoFeatureDistances:(id)featureDistances;
+ (void)extractTimeContextDistances:(id)distances embedding2:(id)embedding2 intoFeatureDistances:(id)featureDistances;
@end

@implementation PCEmbeddingDistanceCalculator

+ (double)calculateDistanceBetweenEmbedding:(id)embedding andEmbedding:(id)andEmbedding withWeights:(id)weights
{
  v28 = *MEMORY[0x1E69E9840];
  embeddingCopy = embedding;
  andEmbeddingCopy = andEmbedding;
  weightsCopy = weights;
  v11 = weightsCopy;
  if (embeddingCopy && andEmbeddingCopy && weightsCopy)
  {
    bundleIdentifier = [embeddingCopy bundleIdentifier];
    bundleIdentifier2 = [andEmbeddingCopy bundleIdentifier];
    if ([bundleIdentifier isEqual:bundleIdentifier2])
    {
    }

    else
    {
      suggestionID = [embeddingCopy suggestionID];
      suggestionID2 = [andEmbeddingCopy suggestionID];
      v21 = [suggestionID isEqual:suggestionID2];

      if (!v21)
      {
        v14 = [self extractFeatureDistancesBetweenEmbedding:embeddingCopy andEmbedding:andEmbeddingCopy];
        [self calculateDistanceFromFeatures:v14 withWeights:v11 fromEmbedding:embeddingCopy toEmbedding:andEmbeddingCopy];
        v15 = v22;
        v23 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v26 = 134217984;
          v27 = v15;
          _os_log_impl(&dword_1CEE74000, v23, OS_LOG_TYPE_DEBUG, "Calculated base distance between embeddings: %.6f", &v26, 0xCu);
        }

        goto LABEL_15;
      }
    }

    v14 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    v15 = 0.0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v26) = 0;
      v16 = "Distance is 0 since embeddings share bundleID or suggestionID";
      v17 = v14;
      v18 = OS_LOG_TYPE_DEBUG;
      goto LABEL_11;
    }
  }

  else
  {
    v14 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    v15 = 1.0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26) = 0;
      v16 = "Invalid inputs to calculateDistanceBetweenEmbedding";
      v17 = v14;
      v18 = OS_LOG_TYPE_ERROR;
LABEL_11:
      _os_log_impl(&dword_1CEE74000, v17, v18, v16, &v26, 2u);
    }
  }

LABEL_15:

  v24 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (double)calculateDistanceBetweenEmbedding:(id)embedding andEmbedding:(id)andEmbedding withCluster:(id)cluster withWeights:(id)weights
{
  v31 = *MEMORY[0x1E69E9840];
  embeddingCopy = embedding;
  andEmbeddingCopy = andEmbedding;
  clusterCopy = cluster;
  weightsCopy = weights;
  v14 = weightsCopy;
  if (embeddingCopy && andEmbeddingCopy && weightsCopy)
  {
    bundleIdentifier = [embeddingCopy bundleIdentifier];
    bundleIdentifier2 = [andEmbeddingCopy bundleIdentifier];
    if ([bundleIdentifier isEqual:bundleIdentifier2])
    {
    }

    else
    {
      suggestionID = [embeddingCopy suggestionID];
      suggestionID2 = [andEmbeddingCopy suggestionID];
      v24 = [suggestionID isEqual:suggestionID2];

      if (!v24)
      {
        v17 = [self extractFeatureDistancesBetweenEmbedding:embeddingCopy andEmbedding:andEmbeddingCopy withCluster:clusterCopy];
        [self calculateDistanceFromFeatures:v17 withWeights:v14 fromEmbedding:embeddingCopy toEmbedding:andEmbeddingCopy];
        v18 = v25;
        v26 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v29 = 134217984;
          v30 = v18;
          _os_log_impl(&dword_1CEE74000, v26, OS_LOG_TYPE_DEBUG, "Calculated enhanced distance between embeddings with cluster: %.6f", &v29, 0xCu);
        }

        goto LABEL_15;
      }
    }

    v17 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    v18 = 0.0;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v29) = 0;
      v19 = "Distance is 0 since embeddings share bundleID or suggestionID";
      v20 = v17;
      v21 = OS_LOG_TYPE_DEBUG;
      goto LABEL_11;
    }
  }

  else
  {
    v17 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    v18 = 1.0;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v29) = 0;
      v19 = "Invalid inputs to calculateDistanceBetweenEmbedding";
      v20 = v17;
      v21 = OS_LOG_TYPE_ERROR;
LABEL_11:
      _os_log_impl(&dword_1CEE74000, v20, v21, v19, &v29, 2u);
    }
  }

LABEL_15:

  v27 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (id)extractFeatureDistancesBetweenEmbedding:(id)embedding andEmbedding:(id)andEmbedding
{
  embeddingCopy = embedding;
  andEmbeddingCopy = andEmbedding;
  v8 = andEmbeddingCopy;
  if (embeddingCopy && andEmbeddingCopy)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [self extractActivityContextDistances:embeddingCopy embedding2:v8 intoFeatureDistances:dictionary];
    [self extractTimeContextDistances:embeddingCopy embedding2:v8 intoFeatureDistances:dictionary];
    [self extractLocationContextDistances:embeddingCopy embedding2:v8 intoFeatureDistances:dictionary];
  }

  else
  {
    v10 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_1CEE74000, v10, OS_LOG_TYPE_ERROR, "Invalid embeddings provided to extractFeatureDistancesBetweenEmbedding", v12, 2u);
    }

    dictionary = MEMORY[0x1E695E0F8];
  }

  return dictionary;
}

+ (id)extractFeatureDistancesBetweenEmbedding:(id)embedding andEmbedding:(id)andEmbedding withCluster:(id)cluster
{
  v27 = *MEMORY[0x1E69E9840];
  clusterCopy = cluster;
  v9 = [self extractFeatureDistancesBetweenEmbedding:embedding andEmbedding:andEmbedding];
  v10 = [v9 mutableCopy];

  if (v10)
  {
    if (clusterCopy)
    {
LABEL_3:
      v11 = MEMORY[0x1E696AD98];
      [clusterCopy timeOfDayCircularStd];
      v12 = [v11 numberWithDouble:?];
      [v10 setObject:v12 forKeyedSubscript:@"embeddingDistWeight_timeOfDayCircularStd"];

      v13 = MEMORY[0x1E696AD98];
      [clusterCopy latLongCircularStd];
      v14 = [v13 numberWithDouble:?];
      [v10 setObject:v14 forKeyedSubscript:@"embeddingDistWeight_latLongCircularStd"];

      v15 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [clusterCopy timeOfDayCircularStd];
        v17 = v16;
        [clusterCopy latLongCircularStd];
        v23 = 134218240;
        v24 = v17;
        v25 = 2048;
        v26 = v18;
        _os_log_impl(&dword_1CEE74000, v15, OS_LOG_TYPE_DEBUG, "Added circular std features: timeOfDay=%.6f, latLong=%.6f", &v23, 0x16u);
      }

      goto LABEL_12;
    }
  }

  else
  {
    v19 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1CEE74000, v19, OS_LOG_TYPE_ERROR, "Failed to extract base feature distances", &v23, 2u);
    }

    v10 = objc_opt_new();
    if (clusterCopy)
    {
      goto LABEL_3;
    }
  }

  v20 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_1CEE74000, v20, OS_LOG_TYPE_DEBUG, "No cluster provided, using zero for circular std features", &v23, 2u);
  }

  [v10 setObject:&unk_1F4BDDF78 forKeyedSubscript:@"embeddingDistWeight_timeOfDayCircularStd"];
  [v10 setObject:&unk_1F4BDDF78 forKeyedSubscript:@"embeddingDistWeight_latLongCircularStd"];
LABEL_12:

  v21 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (void)extractActivityContextDistances:(id)distances embedding2:(id)embedding2 intoFeatureDistances:(id)featureDistances
{
  featureDistancesCopy = featureDistances;
  embedding2Copy = embedding2;
  activityContextEmbedding = [distances activityContextEmbedding];
  activityContextEmbedding2 = [embedding2Copy activityContextEmbedding];

  v10 = [activityContextEmbedding objectForKeyedSubscript:@"activityType"];
  v11 = [activityContextEmbedding2 objectForKeyedSubscript:@"activityType"];
  v12 = v11;
  v13 = 1.0;
  if (v10)
  {
    v14 = v11 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = [v10 isEqualToString:{v11, 1.0}];
    v13 = 1.0;
    if (v15)
    {
      v13 = 0.0;
    }
  }

  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  [featureDistancesCopy setObject:v16 forKeyedSubscript:@"embeddingDistWeight_activityType"];
}

+ (void)extractTimeContextDistances:(id)distances embedding2:(id)embedding2 intoFeatureDistances:(id)featureDistances
{
  featureDistancesCopy = featureDistances;
  embedding2Copy = embedding2;
  timeContextEmbedding = [distances timeContextEmbedding];
  timeContextEmbedding2 = [embedding2Copy timeContextEmbedding];

  v10 = [timeContextEmbedding objectForKeyedSubscript:@"normalizedDuration"];
  v11 = 1.0;
  v12 = 1.0;
  if (v10)
  {
    v13 = v10;
    v14 = [timeContextEmbedding2 objectForKeyedSubscript:@"normalizedDuration"];

    if (v14)
    {
      v15 = [timeContextEmbedding2 objectForKeyedSubscript:@"normalizedDuration"];
      [v15 doubleValue];
      v17 = v16;
      v18 = [timeContextEmbedding objectForKeyedSubscript:@"normalizedDuration"];
      [v18 doubleValue];
      v12 = vabdd_f64(v17, v19);
    }
  }

  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  [featureDistancesCopy setObject:v20 forKeyedSubscript:@"embeddingDistWeight_normalizedDuration"];

  v21 = [timeContextEmbedding objectForKeyedSubscript:@"timeOfDayCos"];
  if (v21)
  {
    v22 = v21;
    v23 = [timeContextEmbedding objectForKeyedSubscript:@"timeOfDaySin"];
    if (v23)
    {
      v24 = v23;
      v25 = [timeContextEmbedding2 objectForKeyedSubscript:@"timeOfDayCos"];
      if (v25)
      {
        v26 = v25;
        v27 = [timeContextEmbedding2 objectForKeyedSubscript:@"timeOfDaySin"];

        if (v27)
        {
          v28 = [timeContextEmbedding objectForKeyedSubscript:@"timeOfDayCos"];
          [v28 doubleValue];
          v30 = v29;

          v31 = [timeContextEmbedding2 objectForKeyedSubscript:@"timeOfDayCos"];
          [v31 doubleValue];
          v33 = v32;

          v34 = [timeContextEmbedding objectForKeyedSubscript:@"timeOfDaySin"];
          [v34 doubleValue];
          v36 = v35;

          v37 = [timeContextEmbedding2 objectForKeyedSubscript:@"timeOfDaySin"];
          [v37 doubleValue];
          v39 = v38;

          v40 = v36 * v39 + v30 * v33;
          if (v40 > 1.0)
          {
            v40 = 1.0;
          }

          if (v40 < -1.0)
          {
            v40 = -1.0;
          }

          v11 = acos(v40) / 3.14159265;
        }

        goto LABEL_15;
      }
    }
  }

LABEL_15:
  v41 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  [featureDistancesCopy setObject:v41 forKeyedSubscript:@"embeddingDistWeight_timeOfDay"];

  v42 = [timeContextEmbedding objectForKeyedSubscript:@"dayOfWeekCos"];
  v43 = 1.0;
  v44 = 1.0;
  if (!v42)
  {
    goto LABEL_25;
  }

  v45 = v42;
  v46 = [timeContextEmbedding objectForKeyedSubscript:{@"dayOfWeekSin", 1.0}];
  if (!v46)
  {
LABEL_24:

    v44 = 1.0;
    goto LABEL_25;
  }

  v47 = v46;
  v48 = [timeContextEmbedding2 objectForKeyedSubscript:@"dayOfWeekCos"];
  if (!v48)
  {

    goto LABEL_24;
  }

  v49 = v48;
  v50 = [timeContextEmbedding2 objectForKeyedSubscript:@"dayOfWeekSin"];

  v44 = 1.0;
  if (v50)
  {
    v51 = [timeContextEmbedding objectForKeyedSubscript:{@"dayOfWeekCos", 1.0}];
    [v51 doubleValue];
    v53 = v52;
    v54 = [timeContextEmbedding2 objectForKeyedSubscript:@"dayOfWeekCos"];
    [v54 doubleValue];
    v56 = v55;
    v57 = [timeContextEmbedding objectForKeyedSubscript:@"dayOfWeekSin"];
    [v57 doubleValue];
    v59 = v58;
    v60 = [timeContextEmbedding2 objectForKeyedSubscript:@"dayOfWeekSin"];
    [v60 doubleValue];
    v62 = v59 * v61 + v53 * v56;

    v63 = 1.0;
    if (v62 <= 1.0)
    {
      v63 = v62;
      if (v62 < -1.0)
      {
        v63 = -1.0;
      }
    }

    v44 = acos(v63) / 3.14159265;
  }

LABEL_25:
  v64 = [MEMORY[0x1E696AD98] numberWithDouble:v44];
  [featureDistancesCopy setObject:v64 forKeyedSubscript:@"embeddingDistWeight_dayOfWeek"];

  v65 = [timeContextEmbedding objectForKeyedSubscript:@"isWeekend"];
  if (v65)
  {
    v66 = v65;
    v67 = [timeContextEmbedding2 objectForKeyedSubscript:@"isWeekend"];

    if (v67)
    {
      v68 = [timeContextEmbedding objectForKeyedSubscript:@"isWeekend"];
      bOOLValue = [v68 BOOLValue];
      v70 = [timeContextEmbedding2 objectForKeyedSubscript:@"isWeekend"];
      if (bOOLValue != [v70 BOOLValue])
      {
        v43 = 1.0;
      }

      else
      {
        v43 = 0.0;
      }
    }
  }

  v71 = [MEMORY[0x1E696AD98] numberWithDouble:v43];
  [featureDistancesCopy setObject:v71 forKeyedSubscript:@"embeddingDistWeight_isWeekend"];
}

+ (void)extractLocationContextDistances:(id)distances embedding2:(id)embedding2 intoFeatureDistances:(id)featureDistances
{
  featureDistancesCopy = featureDistances;
  embedding2Copy = embedding2;
  locationContextEmbedding = [distances locationContextEmbedding];
  locationContextEmbedding2 = [embedding2Copy locationContextEmbedding];

  v11 = [locationContextEmbedding objectForKeyedSubscript:@"placeName"];
  v12 = 1.0;
  v13 = 1.0;
  if (v11)
  {
    v14 = v11;
    v15 = [locationContextEmbedding2 objectForKeyedSubscript:@"placeName"];

    if (v15)
    {
      v16 = [locationContextEmbedding objectForKeyedSubscript:@"placeName"];
      v17 = [locationContextEmbedding2 objectForKeyedSubscript:@"placeName"];
      if ([v16 isEqualToString:v17])
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }
    }
  }

  v18 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  [featureDistancesCopy setObject:v18 forKeyedSubscript:@"embeddingDistWeight_placeName"];

  v19 = [locationContextEmbedding objectForKeyedSubscript:@"combinedPlaceType"];
  if (v19)
  {
    v20 = v19;
    v21 = [locationContextEmbedding2 objectForKeyedSubscript:@"combinedPlaceType"];

    if (v21)
    {
      v22 = [locationContextEmbedding objectForKeyedSubscript:@"combinedPlaceType"];
      v23 = [locationContextEmbedding2 objectForKeyedSubscript:@"combinedPlaceType"];
      if ([v22 isEqualToString:v23])
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }
    }
  }

  v24 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  [featureDistancesCopy setObject:v24 forKeyedSubscript:@"embeddingDistWeight_placeType"];

  v25 = [locationContextEmbedding objectForKeyedSubscript:@"placeLatitude"];
  v26 = 1.0;
  if (v25)
  {
    v27 = v25;
    v28 = [locationContextEmbedding objectForKeyedSubscript:@"placeLongitude"];
    if (v28)
    {
      v29 = v28;
      v30 = [locationContextEmbedding2 objectForKeyedSubscript:@"placeLatitude"];
      if (v30)
      {
        v31 = v30;
        v32 = [locationContextEmbedding2 objectForKeyedSubscript:@"placeLongitude"];

        if (v32)
        {
          v33 = [locationContextEmbedding objectForKeyedSubscript:@"placeLatitude"];
          [v33 doubleValue];
          v35 = v34;

          v36 = [locationContextEmbedding objectForKeyedSubscript:@"placeLongitude"];
          [v36 doubleValue];
          v38 = v37;

          v39 = [locationContextEmbedding2 objectForKeyedSubscript:@"placeLatitude"];
          [v39 doubleValue];
          v41 = v40;

          v42 = [locationContextEmbedding2 objectForKeyedSubscript:@"placeLongitude"];
          [v42 doubleValue];
          v44 = v43;

          [self distanceFromLat1:v35 lon1:v38 toLat2:v41 lon2:v44];
          v46 = v45 * 0.00062137;
          if (v46 >= 200.0)
          {
            v26 = 1.0;
          }

          else
          {
            v26 = v46 / 200.0;
          }
        }

        goto LABEL_22;
      }
    }
  }

LABEL_22:
  v47 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
  [featureDistancesCopy setObject:v47 forKeyedSubscript:@"embeddingDistWeight_geoProximity"];
}

+ (double)calculateDistanceFromFeatures:(id)features withWeights:(id)weights fromEmbedding:(id)embedding toEmbedding:(id)toEmbedding
{
  v144 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  weightsCopy = weights;
  embeddingCopy = embedding;
  toEmbeddingCopy = toEmbedding;
  if (featuresCopy && weightsCopy)
  {
    v13 = [featuresCopy objectForKeyedSubscript:@"embeddingDistWeight_activityType"];
    [v13 doubleValue];
    v15 = v14;

    v16 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_activityType"];
    [v16 doubleValue];
    if (v17 == 0.0)
    {
      v18 = 1.0;
    }

    else
    {
      v18 = v17;
    }

    v111 = v15;
    v108 = v18;
    v115 = v15 * v18;
    v19 = [featuresCopy objectForKeyedSubscript:@"embeddingDistWeight_normalizedDuration"];
    [v19 doubleValue];
    v114 = v20;

    v21 = [featuresCopy objectForKeyedSubscript:@"embeddingDistWeight_timeOfDay"];
    [v21 doubleValue];
    v113 = v22;

    v23 = [featuresCopy objectForKeyedSubscript:@"embeddingDistWeight_dayOfWeek"];
    [v23 doubleValue];
    v25 = v24;

    v26 = [featuresCopy objectForKeyedSubscript:@"embeddingDistWeight_isWeekend"];
    [v26 doubleValue];
    v28 = v27;

    v29 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_normalizedDuration"];
    [v29 doubleValue];
    if (v30 == 0.0)
    {
      v31 = 0.1;
    }

    else
    {
      v31 = v30;
    }

    v32 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_timeOfDay"];
    [v32 doubleValue];
    if (v33 == 0.0)
    {
      v34 = 0.4;
    }

    else
    {
      v34 = v33;
    }

    v35 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_dayOfWeek"];
    [v35 doubleValue];
    if (v36 == 0.0)
    {
      v37 = 0.3;
    }

    else
    {
      v37 = v36;
    }

    v38 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_isWeekend"];
    [v38 doubleValue];
    v40 = 0.2;
    if (v39 == 0.0)
    {
      v41 = 0.2;
    }

    else
    {
      v41 = v39;
    }

    v104 = v34;
    v105 = v31;
    v109 = v28;
    v110 = v25;
    v102 = v41;
    v103 = v37;
    v42 = v113 * v34 + v31 * v114 + v37 * v25 + v41 * v28;
    v43 = [featuresCopy objectForKeyedSubscript:@"embeddingDistWeight_placeName"];
    [v43 doubleValue];
    v45 = v44;

    v46 = [featuresCopy objectForKeyedSubscript:@"embeddingDistWeight_placeType"];
    [v46 doubleValue];
    v48 = v47;

    v49 = [featuresCopy objectForKeyedSubscript:@"embeddingDistWeight_geoProximity"];
    [v49 doubleValue];
    v51 = v50;

    v52 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_placeName"];
    [v52 doubleValue];
    if (v53 == 0.0)
    {
      v54 = 0.4;
    }

    else
    {
      v54 = v53;
    }

    v55 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_placeType"];
    [v55 doubleValue];
    if (v56 == 0.0)
    {
      v57 = 0.4;
    }

    else
    {
      v57 = v56;
    }

    v58 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_geoProximity"];
    [v58 doubleValue];
    if (v59 != 0.0)
    {
      v40 = v59;
    }

    v106 = v48;
    v107 = v45;
    v100 = v57;
    v101 = v54;
    v99 = v40;
    v60 = v48 * v57 + v54 * v45 + v40 * v51;
    v61 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_activityContext"];
    [v61 doubleValue];
    if (v62 == 0.0)
    {
      v63 = 0.5;
    }

    else
    {
      v63 = v62;
    }

    v64 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_timeContext"];
    [v64 doubleValue];
    if (v65 == 0.0)
    {
      v66 = 0.1;
    }

    else
    {
      v66 = v65;
    }

    v67 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_locationContext"];
    [v67 doubleValue];
    if (v68 == 0.0)
    {
      v69 = 0.4;
    }

    else
    {
      v69 = v68;
    }

    v112 = v42;
    v70 = v42 * v66;
    v71 = v60;
    v72 = v70 + v63 * v115 + v69 * v60;
    v73 = [featuresCopy objectForKeyedSubscript:@"embeddingDistWeight_timeOfDayCircularStd"];
    if (v73)
    {
      v74 = v73;
      v75 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_timeOfDayCircularStd"];

      if (v75)
      {
        v76 = [featuresCopy objectForKeyedSubscript:@"embeddingDistWeight_timeOfDayCircularStd"];
        [v76 doubleValue];
        v78 = v77;

        v79 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_timeOfDayCircularStd"];
        [v79 doubleValue];
        v81 = v80;

        v82 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          v117 = v78;
          v118 = 2048;
          v119 = v81;
          _os_log_impl(&dword_1CEE74000, v82, OS_LOG_TYPE_DEBUG, "Added timeOfDayCircularStd=%.6f with weight=%.6f", buf, 0x16u);
        }

        v72 = v72 + v78 * v81;
      }
    }

    v83 = [featuresCopy objectForKeyedSubscript:@"embeddingDistWeight_latLongCircularStd"];
    if (v83)
    {
      v84 = v83;
      v85 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_latLongCircularStd"];

      if (v85)
      {
        v86 = [featuresCopy objectForKeyedSubscript:@"embeddingDistWeight_latLongCircularStd"];
        [v86 doubleValue];
        v88 = v87;

        v89 = [weightsCopy objectForKeyedSubscript:@"embeddingDistWeight_latLongCircularStd"];
        [v89 doubleValue];
        v91 = v90;

        v92 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          v117 = v88;
          v118 = 2048;
          v119 = v91;
          _os_log_impl(&dword_1CEE74000, v92, OS_LOG_TYPE_DEBUG, "Added latLongCircularStd=%.6f with weight=%.6f", buf, 0x16u);
        }

        v72 = v72 + v88 * v91;
      }
    }

    v93 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134220544;
      v117 = v108;
      v118 = 2048;
      v119 = v63;
      v120 = 2048;
      v121 = v66;
      v122 = 2048;
      v123 = v105;
      v124 = 2048;
      v125 = v104;
      v126 = 2048;
      v127 = v103;
      v128 = 2048;
      v129 = v102;
      v130 = 2048;
      v131 = v69;
      v132 = 2048;
      v133 = v101;
      v134 = 2048;
      v135 = v100;
      v136 = 2048;
      v137 = v99;
      _os_log_impl(&dword_1CEE74000, v93, OS_LOG_TYPE_DEBUG, "Clustering: Weights: ActivityType=%.2f,ActivityContext=%.2f,TimeContext=%.2f,DurationNorm=%.2f,TimeOfDay=%.2f,DayOfWeek=%.2f,IsWeekend=%.2f,LocationContext=%.2f,PlaceName=%.2f,CombinedPlaceType=%.2f,GeographicalProximity=%.2f", buf, 0x70u);
    }

    v94 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      [embeddingCopy bundleIdentifier];
      v95 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      [toEmbeddingCopy bundleIdentifier];
      v96 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138415618;
      v117 = v95;
      v118 = 2112;
      v119 = v96;
      v120 = 2048;
      v121 = v72;
      v122 = 2048;
      v123 = v115;
      v124 = 2048;
      v125 = v111;
      v126 = 2048;
      v127 = v112;
      v128 = 2048;
      v129 = v114;
      v130 = 2048;
      v131 = v113;
      v132 = 2048;
      v133 = v110;
      v134 = 2048;
      v135 = v109;
      v136 = 2048;
      v137 = v71;
      v138 = 2048;
      v139 = v107;
      v140 = 2048;
      v141 = v106;
      v142 = 2048;
      v143 = v51;
      _os_log_impl(&dword_1CEE74000, v94, OS_LOG_TYPE_DEFAULT, "Clustering: fromEmbedding,%@,toEmbedding,%@,totalDistance,%.3f,activityContext,%.3f,activity,%.3f,timeContext,%.3f,durationNorm,%.3f,timeOfDay,%.3f,dayOfWeek,%.3f,isWeekend,%.3f,locationContext,%.3f,placeName,%.3f,combinedPlaceType,%.3f,geoProx,%.3f", buf, 0x8Eu);
    }
  }

  else
  {
    v94 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    v72 = 1.0;
    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v94, OS_LOG_TYPE_ERROR, "Invalid inputs to calculateDistanceFromFeatures", buf, 2u);
    }
  }

  v97 = *MEMORY[0x1E69E9840];
  return v72;
}

+ (double)distanceFromLat1:(double)lat1 lon1:(double)lon1 toLat2:(double)lat2 lon2:(double)lon2
{
  if (lon1 < 0.0)
  {
    lon1 = lon1 + 360.0;
  }

  if (lon2 < 0.0)
  {
    lon2 = lon2 + 360.0;
  }

  v6 = lon2 - lon1;
  if (v6 <= 180.0)
  {
    if (v6 < -180.0)
    {
      v6 = v6 + 360.0;
    }
  }

  else
  {
    v6 = v6 + -360.0;
  }

  v7 = lat2 * 0.0174532925;
  v8 = lat1 * 0.0174532925;
  v9 = v6 * 0.0174532925;
  v10 = __sincos_stret((lat1 * 0.0174532925 + lat2 * 0.0174532925) * 0.5);
  v11 = sqrt(v10.__sinval * -0.00669437999 * v10.__sinval + 1.0);
  v12 = (v7 - v8) * (6328350.11 / (v11 * (v11 * v11)));
  return sqrt(v10.__cosval * (6371000.0 / v11) * v9 * (v10.__cosval * (6371000.0 / v11) * v9) + v12 * v12);
}

+ (void)calculateCircularStandardDeviationsForCluster:(id)cluster fromEmbeddings:(id)embeddings
{
  v72 = *MEMORY[0x1E69E9840];
  clusterCopy = cluster;
  embeddingsCopy = embeddings;
  v8 = embeddingsCopy;
  if (clusterCopy && embeddingsCopy && [embeddingsCopy count])
  {
    selfCopy = self;
    v9 = objc_opt_new();
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v55 = v8;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v64 objects:v71 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v65;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v65 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v64 + 1) + 8 * i);
          bundleIdentifier = [v15 bundleIdentifier];
          if (bundleIdentifier)
          {
            v17 = bundleIdentifier;
            bundleIdentifier2 = [v15 bundleIdentifier];
            uUIDString = [bundleIdentifier2 UUIDString];

            if (uUIDString)
            {
              bundleIdentifier3 = [v15 bundleIdentifier];
              uUIDString2 = [bundleIdentifier3 UUIDString];
              [v9 setObject:v15 forKeyedSubscript:uUIDString2];
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v64 objects:v71 count:16];
      }

      while (v12);
    }

    clusterMetadata = [clusterCopy clusterMetadata];
    subSuggestionIDsBeforePruning = [clusterMetadata subSuggestionIDsBeforePruning];

    if (subSuggestionIDsBeforePruning && [subSuggestionIDsBeforePruning count])
    {
      v53 = clusterCopy;
      v59 = objc_opt_new();
      v57 = objc_opt_new();
      v58 = objc_opt_new();
      v56 = objc_opt_new();
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v51 = subSuggestionIDsBeforePruning;
      v24 = subSuggestionIDsBeforePruning;
      v25 = [v24 countByEnumeratingWithState:&v60 objects:v68 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v61;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v61 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = [v9 objectForKeyedSubscript:*(*(&v60 + 1) + 8 * j), v51];
            v30 = v29;
            if (v29)
            {
              timeContextEmbedding = [v29 timeContextEmbedding];
              v32 = timeContextEmbedding;
              if (timeContextEmbedding)
              {
                v33 = [timeContextEmbedding objectForKeyedSubscript:@"timeOfDaySin"];
                v34 = [v32 objectForKeyedSubscript:@"timeOfDayCos"];
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
                  [v59 addObject:v33];
                  [v57 addObject:v35];
                }
              }

              locationContextEmbedding = [v30 locationContextEmbedding];
              v38 = locationContextEmbedding;
              if (locationContextEmbedding)
              {
                v39 = [locationContextEmbedding objectForKeyedSubscript:@"placeLatitude"];
                v40 = [v38 objectForKeyedSubscript:@"placeLongitude"];
                v41 = v40;
                if (v39)
                {
                  v42 = v40 == 0;
                }

                else
                {
                  v42 = 1;
                }

                if (!v42)
                {
                  [v58 addObject:v39];
                  [v56 addObject:v41];
                }
              }
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v60 objects:v68 count:16];
        }

        while (v26);
      }

      v43 = [v59 count];
      v44 = 0.0;
      v45 = 0.0;
      if (v43 >= 2)
      {
        v46 = [v57 count];
        v45 = 0.0;
        if (v46 >= 2)
        {
          [selfCopy calculateCircularStandardDeviation:v59 cosValues:{v57, 0.0}];
        }
      }

      clusterCopy = v53;
      [v53 setTimeOfDayCircularStd:{v45, v51}];
      v8 = v55;
      subSuggestionIDsBeforePruning = v52;
      if ([v58 count] >= 2 && objc_msgSend(v56, "count") >= 2)
      {
        [selfCopy calculateGeographicalStandardDeviation:v58 longValues:v56];
        v44 = v47;
      }

      [v53 setLatLongCircularStd:v44];
    }

    else
    {
      v48 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        identifier = [clusterCopy identifier];
        *buf = 138412290;
        v70 = identifier;
        _os_log_impl(&dword_1CEE74000, v48, OS_LOG_TYPE_INFO, "No bundle IDs in cluster %@", buf, 0xCu);
      }

      [clusterCopy setTimeOfDayCircularStd:0.0];
      [clusterCopy setLatLongCircularStd:0.0];
      v8 = v55;
    }
  }

  else
  {
    v9 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v9, OS_LOG_TYPE_ERROR, "Invalid inputs to calculateCircularStandardDeviationsForCluster", buf, 2u);
    }
  }

  v50 = *MEMORY[0x1E69E9840];
}

+ (void)calculateCircularStandardDeviationsForClusters:(id)clusters fromEmbeddings:(id)embeddings
{
  v23 = *MEMORY[0x1E69E9840];
  clustersCopy = clusters;
  embeddingsCopy = embeddings;
  if (clustersCopy && (v8 = [clustersCopy count], embeddingsCopy) && v8 && objc_msgSend(embeddingsCopy, "count"))
  {
    v9 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v22 = [clustersCopy count];
      _os_log_impl(&dword_1CEE74000, v9, OS_LOG_TYPE_INFO, "Computing circular std for %lu clusters", buf, 0xCu);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = clustersCopy;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [self calculateCircularStandardDeviationsForCluster:*(*(&v16 + 1) + 8 * i) fromEmbeddings:{embeddingsCopy, v16}];
        }

        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v10 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v10, OS_LOG_TYPE_ERROR, "Invalid inputs to calculateCircularStandardDeviationsForClusters", buf, 2u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (double)calculateCircularStandardDeviation:(id)deviation cosValues:(id)values
{
  deviationCopy = deviation;
  valuesCopy = values;
  v7 = 0.0;
  if ([deviationCopy count])
  {
    if ([valuesCopy count])
    {
      v8 = [deviationCopy count];
      if (v8 == [valuesCopy count])
      {
        v9 = 0.0;
        v10 = 0.0;
        if ([deviationCopy count])
        {
          v11 = 0;
          do
          {
            v12 = [deviationCopy objectAtIndexedSubscript:v11];
            [v12 doubleValue];
            v9 = v9 + v13;

            v14 = [valuesCopy objectAtIndexedSubscript:v11];
            [v14 doubleValue];
            v10 = v10 + v15;

            ++v11;
          }

          while (v11 < [deviationCopy count]);
        }

        v16 = v9 / [deviationCopy count];
        v17 = [valuesCopy count];
        v18 = sqrt(log(sqrt(v10 / v17 * (v10 / v17) + v16 * v16)) * -2.0);
        if (fabs(v18) == INFINITY)
        {
          v7 = 0.0;
        }

        else
        {
          v7 = v18;
        }
      }
    }
  }

  return v7;
}

+ (double)calculateGeographicalStandardDeviation:(id)deviation longValues:(id)values
{
  deviationCopy = deviation;
  valuesCopy = values;
  v7 = 0.0;
  if ([deviationCopy count])
  {
    if ([valuesCopy count])
    {
      v8 = [deviationCopy count];
      if (v8 == [valuesCopy count])
      {
        v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(deviationCopy, "count")}];
        v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(deviationCopy, "count")}];
        v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(deviationCopy, "count")}];
        if ([deviationCopy count])
        {
          v12 = 0;
          do
          {
            v13 = [deviationCopy objectAtIndexedSubscript:v12];
            [v13 doubleValue];
            v15 = v14 * 0.0174532925;

            v16 = [valuesCopy objectAtIndexedSubscript:v12];
            [v16 doubleValue];
            v18 = v17 * 0.0174532925;

            v19 = __sincos_stret(v15);
            v20 = __sincos_stret(v18);
            v21 = [MEMORY[0x1E696AD98] numberWithDouble:v19.__cosval * v20.__cosval];
            [v9 addObject:v21];

            v22 = [MEMORY[0x1E696AD98] numberWithDouble:v19.__cosval * v20.__sinval];
            [v10 addObject:v22];

            v23 = [MEMORY[0x1E696AD98] numberWithDouble:v19.__sinval];
            [v11 addObject:v23];

            ++v12;
          }

          while (v12 < [deviationCopy count]);
        }

        v7 = 0.0;
        v24 = 0.0;
        v25 = 0.0;
        v26 = 0.0;
        if ([v9 count])
        {
          v27 = 0;
          do
          {
            v28 = [v9 objectAtIndexedSubscript:v27];
            [v28 doubleValue];
            v24 = v24 + v29;

            v30 = [v10 objectAtIndexedSubscript:v27];
            [v30 doubleValue];
            v25 = v25 + v31;

            v32 = [v11 objectAtIndexedSubscript:v27];
            [v32 doubleValue];
            v26 = v26 + v33;

            ++v27;
          }

          while (v27 < [v9 count]);
        }

        v34 = v24 / [v9 count];
        v35 = v25 / [v10 count];
        v36 = [v11 count];
        v37 = sqrt(log(sqrt(v35 * v35 + v34 * v34 + v26 / v36 * (v26 / v36))) * -2.0);
        if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          v7 = v37;
        }
      }
    }
  }

  return v7;
}

+ (double)calculateValidMean:(id)mean
{
  v26 = *MEMORY[0x1E69E9840];
  meanCopy = mean;
  v4 = meanCopy;
  v5 = 0.0;
  if (meanCopy && [meanCopy count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v18 = v4;
      v9 = 0;
      v10 = *v20;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v19 + 1) + 8 * i) doubleValue];
          v14 = v13;
          if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
          {
            v11 = v11 + v13;
            ++v9;
          }

          else
          {
            v15 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v24 = v14;
              _os_log_impl(&dword_1CEE74000, v15, OS_LOG_TYPE_INFO, "#warning: found invalid value in array (%.3f)", buf, 0xCu);
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v8);

      if (v9 < 1)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = v11 / v9;
      }

      v4 = v18;
    }

    else
    {
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

@end