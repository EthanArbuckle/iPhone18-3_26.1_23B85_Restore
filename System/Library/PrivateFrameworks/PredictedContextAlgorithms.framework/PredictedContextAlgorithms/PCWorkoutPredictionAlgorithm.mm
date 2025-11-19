@interface PCWorkoutPredictionAlgorithm
- (BOOL)_hasUserWorkedOutForActivityType:(id)a3 nearCurrentVisit:(id)a4 workoutTypeLocationMap:(id)a5;
- (BOOL)_isWorkoutTypeAlreadyPredicted:(id)a3 inPredictions:(id)a4;
- (BOOL)isHomeOrWorkLocation:(id)a3;
- (PCWorkoutPredictionAlgorithm)init;
- (PCWorkoutPredictionAlgorithm)initWithConfig:(id)a3;
- (double)_piecewiseLinearMap:(double)a3 anchorsX:(id)a4 anchorsY:(id)a5 minValue:(double)a6 maxValue:(double)a7;
- (double)calculateScoreFromFeatures:(id)a3 identifier:(id)a4;
- (double)mapScoreToProbability:(double)a3 forVisit:(id)a4;
- (id)_buildWorkoutTypeLocationMapping:(id)a3;
- (id)_createDateIntervalStartingAt:(id)a3 probability:(double)a4 embeddings:(id)a5;
- (id)_createPredictionFromCluster:(id)a3 probability:(double)a4 atTime:(id)a5 embeddings:(id)a6;
- (id)_createSourcesFromEmbeddings:(id)a3;
- (id)_sortClustersByProbability:(id)a3;
- (id)_subselectEmbeddings:(id)a3 fromCluster:(id)a4;
- (id)calculateClusterProbabilities:(id)a3 embeddings:(id)a4 clusters:(id)a5;
- (id)generateWorkoutPredictionsFromProbabilities:(id)a3 atTime:(double)a4 currentVisit:(id)a5 embeddings:(id)a6 clusters:(id)a7;
- (void)_updateActivityInfoForPrediction:(id)a3 fromActivityType:(id)a4;
@end

@implementation PCWorkoutPredictionAlgorithm

- (PCWorkoutPredictionAlgorithm)init
{
  v3 = +[PCDistanceWeightingConfig predictionConfiguration];
  v4 = [(PCWorkoutPredictionAlgorithm *)self initWithConfig:v3];

  return v4;
}

- (PCWorkoutPredictionAlgorithm)initWithConfig:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PCWorkoutPredictionAlgorithm;
  v6 = [(PCWorkoutPredictionAlgorithm *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, a3);
    homeWorkScoreAnchorsX = v7->_homeWorkScoreAnchorsX;
    v7->_homeWorkScoreAnchorsX = &unk_1F4BDDFA8;

    otherScoreAnchorsX = v7->_otherScoreAnchorsX;
    v7->_otherScoreAnchorsX = &unk_1F4BDDFC0;

    probabilityAnchorsY = v7->_probabilityAnchorsY;
    v7->_probabilityAnchorsY = &unk_1F4BDDFD8;
  }

  return v7;
}

- (double)calculateScoreFromFeatures:(id)a3 identifier:(id)a4
{
  v132[8] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v8 = [(PCDistanceWeightingConfig *)self->_config weights];
    v9 = [v8 objectForKeyedSubscript:@"intercept"];

    v84 = v9;
    v85 = v7;
    if (v9)
    {
      [v9 doubleValue];
      v11 = v10;
    }

    else
    {
      v13 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1CEE74000, v13, OS_LOG_TYPE_INFO, "Missing intercept weight, using 0.0", buf, 2u);
      }

      v11 = 0.0;
    }

    v132[0] = @"embeddingDistWeight_placeType";
    v132[1] = @"embeddingDistWeight_placeName";
    v132[2] = @"embeddingDistWeight_geoProximity";
    v132[3] = @"embeddingDistWeight_timeOfDay";
    v132[4] = @"embeddingDistWeight_dayOfWeek";
    v132[5] = @"embeddingDistWeight_isWeekend";
    v132[6] = @"embeddingDistWeight_timeOfDayCircularStd";
    v132[7] = @"embeddingDistWeight_latLongCircularStd";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:8];
    v88 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v14, "count")}];
    v87 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v14, "count")}];
    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v14, "count")}];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = v14;
    v16 = [obj countByEnumeratingWithState:&v89 objects:v131 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v90;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v90 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v89 + 1) + 8 * i);
          v21 = v6;
          v22 = [v6 objectForKeyedSubscript:v20];
          v23 = [(PCDistanceWeightingConfig *)self->_config weights];
          v24 = [v23 objectForKeyedSubscript:v20];

          v25 = 0.0;
          v26 = 0.0;
          if (v22)
          {
            [v22 doubleValue];
            v26 = v27;
          }

          if (v24)
          {
            [v24 doubleValue];
            v25 = v28;
          }

          v29 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
          [v88 addObject:v29];

          v30 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
          [v87 addObject:v30];

          v31 = [MEMORY[0x1E696AD98] numberWithDouble:v26 * v25];
          [v15 addObject:v31];

          v11 = v11 + v26 * v25;
          v6 = v21;
        }

        v17 = [obj countByEnumeratingWithState:&v89 objects:v131 count:16];
      }

      while (v17);
    }

    v32 = 1.0 / (exp(-v11) + 1.0);
    v33 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    v34 = v33;
    if (v32 < INFINITY || v32 > INFINITY)
    {
      v7 = v85;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v76 = [v88 objectAtIndexedSubscript:0];
        [v76 doubleValue];
        v78 = v35;
        v71 = [v15 objectAtIndexedSubscript:0];
        [v71 doubleValue];
        v77 = v36;
        v83 = [v88 objectAtIndexedSubscript:1];
        [v83 doubleValue];
        v75 = v37;
        v82 = [v15 objectAtIndexedSubscript:1];
        [v82 doubleValue];
        v73 = v38;
        v81 = [v88 objectAtIndexedSubscript:2];
        [v81 doubleValue];
        v72 = v39;
        v80 = [v15 objectAtIndexedSubscript:2];
        [v80 doubleValue];
        v70 = v40;
        v79 = [v88 objectAtIndexedSubscript:3];
        [v79 doubleValue];
        v68 = v41;
        v74 = [v15 objectAtIndexedSubscript:3];
        [v74 doubleValue];
        v67 = v42;
        v69 = [v88 objectAtIndexedSubscript:4];
        [v69 doubleValue];
        v65 = v43;
        v66 = [v15 objectAtIndexedSubscript:4];
        [v66 doubleValue];
        v45 = v44;
        v46 = [v88 objectAtIndexedSubscript:5];
        [v46 doubleValue];
        v48 = v47;
        v49 = [v15 objectAtIndexedSubscript:5];
        [v49 doubleValue];
        v51 = v50;
        v52 = [v88 objectAtIndexedSubscript:6];
        [v52 doubleValue];
        v54 = v53;
        v55 = [v15 objectAtIndexedSubscript:6];
        [v55 doubleValue];
        v57 = v56;
        v58 = [v88 objectAtIndexedSubscript:7];
        [v58 doubleValue];
        v60 = v59;
        v61 = [v15 objectAtIndexedSubscript:7];
        [v61 doubleValue];
        *buf = 138547970;
        v94 = *&v85;
        v95 = 2050;
        v96 = v32;
        v97 = 2050;
        v98 = v11;
        v99 = 2050;
        v100 = v78;
        v101 = 2048;
        v102 = v77;
        v103 = 2050;
        v104 = v75;
        v105 = 2048;
        v106 = v73;
        v107 = 2050;
        v108 = v72;
        v109 = 2048;
        v110 = v70;
        v111 = 2050;
        v112 = v68;
        v113 = 2048;
        v114 = v67;
        v115 = 2050;
        v116 = v65;
        v117 = 2048;
        v118 = v45;
        v119 = 2050;
        v120 = v48;
        v121 = 2048;
        v122 = v51;
        v123 = 2050;
        v124 = v54;
        v125 = 2048;
        v126 = v57;
        v127 = 2050;
        v128 = v60;
        v129 = 2048;
        v130 = v62;
        _os_log_impl(&dword_1CEE74000, v34, OS_LOG_TYPE_DEFAULT, "LogisticRegression,%{public}@,output,%{public}.3f,logit,%{public}.3f,FeaturesRawAndWeighted,combinedPlaceType,%{public}.3f,%.3f,placeName,%{public}.3f,%.3f,geographicalProximity,%{public}.3f,%.3f,timeOfDay,%{public}.3f,%.3f,dayOfWeek,%{public}.3f,%.3f,isWeekend,%{public}.3f,%.3f,timeOfDayCircularStd,%{public}.3f,%.3f,latLongCircularStd,%{public}.3f,%.3f", buf, 0xC0u);
      }

      v12 = v32;
      v9 = v84;
    }

    else
    {
      v12 = 0.0;
      v7 = v85;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v94 = v32;
        v95 = 2048;
        v96 = v11;
        _os_log_impl(&dword_1CEE74000, v34, OS_LOG_TYPE_ERROR, "Invalid probability result: %f (dotProduct=%f)", buf, 0x16u);
      }
    }
  }

  else
  {
    v9 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    v12 = 0.0;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v9, OS_LOG_TYPE_ERROR, "Empty features provided to calculateScoreFromFeatures", buf, 2u);
    }
  }

  v63 = *MEMORY[0x1E69E9840];
  return v12;
}

- (double)mapScoreToProbability:(double)a3 forVisit:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 locationContextEmbedding];
    v9 = [(PCWorkoutPredictionAlgorithm *)self isHomeOrWorkLocation:v8];

    if (v9)
    {
      homeWorkScoreAnchorsX = self->_homeWorkScoreAnchorsX;
    }

    else
    {
      homeWorkScoreAnchorsX = self->_otherScoreAnchorsX;
    }

    [(PCWorkoutPredictionAlgorithm *)self _piecewiseLinearMap:homeWorkScoreAnchorsX anchorsX:self->_probabilityAnchorsY anchorsY:a3 minValue:0.0 maxValue:1.0];
    v12 = v13;
  }

  else
  {
    v11 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_1CEE74000, v11, OS_LOG_TYPE_ERROR, "Null visit embedding provided to mapScoreToProbability", v15, 2u);
    }

    v12 = 0.0;
  }

  return v12;
}

- (double)_piecewiseLinearMap:(double)a3 anchorsX:(id)a4 anchorsY:(id)a5 minValue:(double)a6 maxValue:(double)a7
{
  v49 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = [v11 count];
  if (v13 != [v12 count] || objc_msgSend(v11, "count") <= 1)
  {
    v14 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_6:

      goto LABEL_20;
    }

    LOWORD(v47) = 0;
    v15 = "Piecewise linear map: Invalid anchor arrays";
    v16 = v14;
    v17 = 2;
LABEL_5:
    _os_log_impl(&dword_1CEE74000, v16, OS_LOG_TYPE_ERROR, v15, &v47, v17);
    goto LABEL_6;
  }

  v18 = [v11 objectAtIndexedSubscript:0];
  [v18 doubleValue];
  v20 = v19;

  if (v20 >= a3)
  {
    v40 = v12;
    v41 = 0;
  }

  else
  {
    v21 = [v11 objectAtIndexedSubscript:{objc_msgSend(v11, "count") - 1}];
    [v21 doubleValue];
    v23 = v22;

    if (v23 > a3)
    {
      v24 = -1;
      while (1)
      {
        v25 = v24 + 1;
        if (v24 + 1 >= ([v11 count] - 1))
        {
          break;
        }

        v26 = [v11 objectAtIndexedSubscript:v24 + 1];
        [v26 doubleValue];
        v28 = v27;

        v29 = [v11 objectAtIndexedSubscript:v24 + 2];
        [v29 doubleValue];
        v31 = v30;

        v32 = v28 > a3 || v31 < a3;
        ++v24;
        if (!v32)
        {
          v33 = [v12 objectAtIndexedSubscript:v25];
          [v33 doubleValue];
          v35 = v34;

          v36 = [v12 objectAtIndexedSubscript:v25 + 1];
          [v36 doubleValue];
          v38 = v37;

          v39 = fmax(a6, v35 + (a3 - v28) / (v31 - v28) * (v38 - v35));
          goto LABEL_19;
        }
      }

      v14 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      v47 = 134217984;
      v48 = a3;
      v15 = "Piecewise linear map: Failed to find segment for value %.4f";
      v16 = v14;
      v17 = 12;
      goto LABEL_5;
    }

    v41 = [v12 count] - 1;
    v40 = v12;
  }

  v42 = [v40 objectAtIndexedSubscript:v41];
  [v42 doubleValue];
  v44 = v43;

  v39 = fmax(a6, v44);
LABEL_19:
  a6 = fmin(a7, v39);
LABEL_20:

  v45 = *MEMORY[0x1E69E9840];
  return a6;
}

- (id)calculateClusterProbabilities:(id)a3 embeddings:(id)a4 clusters:(id)a5
{
  v101 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v73 = v7;
  if (!v7)
  {
    v59 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    *buf = 0;
    v60 = "No visit embedding provided to calculateClusterProbabilities";
    goto LABEL_63;
  }

  if (!v8 || ![v8 count])
  {
    v59 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    *buf = 0;
    v60 = "No embeddings provided to calculateClusterProbabilities";
LABEL_63:
    _os_log_impl(&dword_1CEE74000, v59, OS_LOG_TYPE_ERROR, v60, buf, 2u);
    goto LABEL_64;
  }

  if (!v9 || ![v9 count])
  {
    v59 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v60 = "No clusters provided to calculateClusterProbabilities";
      goto LABEL_63;
    }

LABEL_64:

    v66 = objc_opt_new();
    goto LABEL_65;
  }

  v64 = v9;
  [PCEmbeddingDistanceCalculator calculateCircularStandardDeviationsForClusters:v9 fromEmbeddings:v8];
  v10 = objc_opt_new();
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v63 = v8;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v82 objects:v100 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v83;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v83 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v82 + 1) + 8 * i);
        v17 = [v16 bundleIdentifier];
        if (v17)
        {
          v18 = v17;
          v19 = [v16 bundleIdentifier];
          v20 = [v19 UUIDString];

          if (v20)
          {
            v21 = [v16 bundleIdentifier];
            v22 = [v21 UUIDString];
            [v10 setObject:v16 forKeyedSubscript:v22];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v82 objects:v100 count:16];
    }

    while (v13);
  }

  v23 = [v73 locationContextEmbedding];
  v24 = [(PCWorkoutPredictionAlgorithm *)self isHomeOrWorkLocation:v23];

  v66 = objc_opt_new();
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v25 = v64;
  v26 = [v25 countByEnumeratingWithState:&v78 objects:v99 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v79;
    v29 = @"home/work";
    if (!v24)
    {
      v29 = @"other";
    }

    v65 = v29;
    v67 = *v79;
    v68 = v25;
    do
    {
      v30 = 0;
      v69 = v27;
      do
      {
        if (*v79 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v78 + 1) + 8 * v30);
        v32 = [v31 identifier];

        if (v32)
        {
          v33 = [v31 clusterMetadata];
          v34 = [v33 subSuggestionIDsBeforePruning];

          if (v34 && [v34 count])
          {
            v71 = v30;
            v35 = [MEMORY[0x1E695DF70] array];
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            v77 = 0u;
            v70 = v34;
            v36 = v34;
            v37 = [v36 countByEnumeratingWithState:&v74 objects:v98 count:16];
            if (v37)
            {
              v38 = v37;
              v39 = *v75;
              do
              {
                for (j = 0; j != v38; ++j)
                {
                  if (*v75 != v39)
                  {
                    objc_enumerationMutation(v36);
                  }

                  v41 = *(*(&v74 + 1) + 8 * j);
                  v42 = [v10 objectForKeyedSubscript:v41];
                  if (v42)
                  {
                    v43 = [PCEmbeddingDistanceCalculator extractFeatureDistancesBetweenEmbedding:v73 andEmbedding:v42 withCluster:v31];
                    [(PCWorkoutPredictionAlgorithm *)self calculateScoreFromFeatures:v43 identifier:v41];
                    v44 = [MEMORY[0x1E696AD98] numberWithDouble:?];
                    [v35 addObject:v44];
                  }

                  else
                  {
                    v43 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v87 = v41;
                      _os_log_impl(&dword_1CEE74000, v43, OS_LOG_TYPE_ERROR, "Embedding not found for bundleID: %@", buf, 0xCu);
                    }
                  }
                }

                v38 = [v36 countByEnumeratingWithState:&v74 objects:v98 count:16];
              }

              while (v38);
            }

            if ([v35 count])
            {
              [PCEmbeddingDistanceCalculator calculateValidMean:v35];
              v25 = v68;
              v34 = v70;
              v30 = v71;
              if (v45 <= 0.0)
              {
                v51 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
                if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                {
                  v52 = [v31 identifier];
                  v58 = [v35 count];
                  *buf = 138412546;
                  v87 = v52;
                  v88 = 2048;
                  v89 = v58;
                  _os_log_impl(&dword_1CEE74000, v51, OS_LOG_TYPE_ERROR, "Cluster %@: Could not compute mean probability (numWorkouts=%lu)", buf, 0x16u);
                  goto LABEL_51;
                }
              }

              else
              {
                v46 = v45;
                [(PCWorkoutPredictionAlgorithm *)self mapScoreToProbability:v73 forVisit:?];
                v48 = v47;
                v49 = [MEMORY[0x1E696AD98] numberWithDouble:?];
                v50 = [v31 identifier];
                [v66 setObject:v49 forKeyedSubscript:v50];

                v51 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                {
                  v52 = [v31 identifier];
                  v53 = [v31 activityType];
                  v54 = v53;
                  if (v53)
                  {
                    v55 = v53;
                  }

                  else
                  {
                    v55 = @"unknown";
                  }

                  v56 = [v35 count];
                  *buf = 138544642;
                  v87 = v52;
                  v88 = 2114;
                  v89 = v55;
                  v90 = 2050;
                  v91 = v48;
                  v92 = 2050;
                  v93 = v46;
                  v94 = 2050;
                  v95 = v56;
                  v96 = 2114;
                  v97 = v65;
                  _os_log_impl(&dword_1CEE74000, v51, OS_LOG_TYPE_DEFAULT, "Cluster %{public}@ (%{public}@), meanProbability=%{public}.3f, meanScore=%{public}.3f, numWorkouts=%{public}lu, location=%{public}@", buf, 0x3Eu);

LABEL_51:
                }
              }

              v28 = v67;
              v27 = v69;
            }

            else
            {
              v28 = v67;
              v25 = v68;
              v27 = v69;
              v34 = v70;
              v30 = v71;
            }
          }

          else
          {
            v35 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v57 = [v31 identifier];
              *buf = 138412290;
              v87 = v57;
              _os_log_impl(&dword_1CEE74000, v35, OS_LOG_TYPE_ERROR, "Cluster %@ has no workouts", buf, 0xCu);
            }
          }

          goto LABEL_54;
        }

        v34 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1CEE74000, v34, OS_LOG_TYPE_ERROR, "Cluster has null identifier", buf, 2u);
        }

LABEL_54:

        ++v30;
      }

      while (v30 != v27);
      v27 = [v25 countByEnumeratingWithState:&v78 objects:v99 count:16];
    }

    while (v27);
  }

  v8 = v63;
  v9 = v64;
LABEL_65:

  v61 = *MEMORY[0x1E69E9840];

  return v66;
}

- (id)generateWorkoutPredictionsFromProbabilities:(id)a3 atTime:(double)a4 currentVisit:(id)a5 embeddings:(id)a6 clusters:(id)a7
{
  v107 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v84 = a5;
  v12 = a6;
  v13 = a7;
  if (!v11 || ![v11 count])
  {
    v74 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v75 = "No clusters with probabilities to generate predictions";
      v76 = v74;
      v77 = OS_LOG_TYPE_INFO;
LABEL_80:
      _os_log_impl(&dword_1CEE74000, v76, v77, v75, buf, 2u);
    }

LABEL_81:

    v71 = objc_opt_new();
    goto LABEL_82;
  }

  if (!v12 || ![v12 count])
  {
    v74 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v75 = "No embeddings provided to generate predictions";
      v76 = v74;
      v77 = OS_LOG_TYPE_ERROR;
      goto LABEL_80;
    }

    goto LABEL_81;
  }

  if (!v84)
  {
    v74 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v74, OS_LOG_TYPE_ERROR, "No current visit provided to generate predictions", buf, 2u);
    }

    goto LABEL_81;
  }

  v82 = v12;
  v85 = objc_opt_new();
  v81 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a4];
  v88 = v11;
  v87 = [(PCWorkoutPredictionAlgorithm *)self _sortClustersByProbability:v11];
  v14 = objc_opt_new();
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v80 = v13;
  obj = v13;
  v15 = [obj countByEnumeratingWithState:&v95 objects:v106 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v96;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v96 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v95 + 1) + 8 * i);
        v20 = [v19 identifier];

        if (v20)
        {
          v21 = [v19 identifier];
          [v14 setObject:v19 forKeyedSubscript:v21];

          v22 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v23 = [v19 identifier];
            v24 = [v19 activityType];
            v25 = v24;
            *buf = 138412546;
            v26 = @"<nil>";
            if (v24)
            {
              v26 = v24;
            }

            v101 = v23;
            v102 = 2112;
            v103 = *&v26;
            _os_log_impl(&dword_1CEE74000, v22, OS_LOG_TYPE_DEBUG, "Added cluster to map: %@, activity: %@", buf, 0x16u);
          }
        }

        else
        {
          v22 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1CEE74000, v22, OS_LOG_TYPE_ERROR, "Cluster has nil identifier and cannot be mapped", buf, 2u);
          }
        }
      }

      v16 = [obj countByEnumeratingWithState:&v95 objects:v106 count:16];
    }

    while (v16);
  }

  v27 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  v11 = v88;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = [v14 count];
    v29 = [obj count];
    v30 = [v88 count];
    *buf = 134218496;
    v101 = v28;
    v102 = 2048;
    v103 = *&v29;
    v104 = 2048;
    v105 = *&v30;
    _os_log_impl(&dword_1CEE74000, v27, OS_LOG_TYPE_INFO, "Mapped %lu Clusters to UUIDs (totalClusters=%lu, numClusterProbabilities=%lu)", buf, 0x20u);
  }

  v83 = [(PCWorkoutPredictionAlgorithm *)self _buildWorkoutTypeLocationMapping:v82];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v89 = v87;
  v31 = [v89 countByEnumeratingWithState:&v91 objects:v99 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v92;
    do
    {
      v34 = 0;
      do
      {
        if (*v92 != v33)
        {
          objc_enumerationMutation(v89);
        }

        v35 = *(*(&v91 + 1) + 8 * v34);
        v36 = [v11 objectForKeyedSubscript:v35];
        [v36 doubleValue];
        v38 = v37;

        v39 = (*&v38 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
        v40 = ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
        if (v38 >= 0.0)
        {
          v40 = 0;
          v39 = 0;
        }

        if ((*&v38 & 0x7FFFFFFFFFFFFFFFLL) == 0)
        {
          v39 = 1;
        }

        v41 = (*&v38 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v39;
        if ((v41 | v40) != 1)
        {
          v43 = [v14 objectForKeyedSubscript:v35];
          v42 = v43;
          if (v43)
          {
            v44 = [v43 activityType];
            if (v44 && (v45 = v44, -[NSObject activityType](v42, "activityType"), v46 = objc_claimAutoreleasedReturnValue(), v47 = [v46 length], v46, v45, v47))
            {
              v48 = [v42 activityType];
              v49 = [(PCWorkoutPredictionAlgorithm *)self _isWorkoutTypeAlreadyPredicted:v48 inPredictions:v85];

              v50 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                v51 = [v42 activityType];
                *buf = 138543874;
                v101 = v35;
                v102 = 2114;
                v103 = *&v51;
                v104 = 1026;
                LODWORD(v105) = v49;
                _os_log_impl(&dword_1CEE74000, v50, OS_LOG_TYPE_DEFAULT, "Before De-duping: cluster=%{public}@, activityType='%{public}@', isAlreadyPredicted=%{public}d", buf, 0x1Cu);
              }

              if (v49)
              {
                v11 = v88;
                goto LABEL_54;
              }

              v58 = [v42 activityType];
              v59 = [(PCWorkoutPredictionAlgorithm *)self _hasUserWorkedOutForActivityType:v58 nearCurrentVisit:v84 workoutTypeLocationMap:v83];

              v52 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
              v60 = os_log_type_enabled(v52, OS_LOG_TYPE_INFO);
              if (v59)
              {
                if (v60)
                {
                  v61 = [v42 identifier];
                  v62 = [v42 activityType];
                  *buf = 138543874;
                  v101 = v61;
                  v102 = 2114;
                  v103 = *&v62;
                  v104 = 2050;
                  v105 = v38;
                  _os_log_impl(&dword_1CEE74000, v52, OS_LOG_TYPE_INFO, "Selected cluster %{public}@, workoutType: %{public}@, probability: %{public}.4f", buf, 0x20u);
                }

                v63 = [v42 activityType];
                v64 = [v63 isEqualToString:@"Outdoor Walking"];

                if (v64)
                {
                  v11 = v88;
                  if (v38 > 0.89)
                  {
                    v65 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
                    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
                    {
                      *buf = 134349312;
                      v101 = 0x3FEC7AE147AE147BLL;
                      v102 = 2050;
                      v103 = v38;
                      _os_log_impl(&dword_1CEE74000, v65, OS_LOG_TYPE_INFO, "Capping outdoor walk probability to %{public}.2f from %{public}f", buf, 0x16u);
                    }

                    v38 = 0.89;
                  }
                }

                else
                {
                  v11 = v88;
                }

                v52 = [(PCWorkoutPredictionAlgorithm *)self _createPredictionFromCluster:v42 probability:v81 atTime:v82 embeddings:v38];
                if (v52)
                {
                  [v85 addObject:v52];
                  v54 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                  {
                    v67 = [v42 activityType];
                    v68 = [v85 count];
                    *buf = 138543618;
                    v101 = v67;
                    v102 = 2050;
                    v103 = *&v68;
                    _os_log_impl(&dword_1CEE74000, v54, OS_LOG_TYPE_DEFAULT, "Created prediction for activity type: %{public}@, total predictions now: %{public}lu", buf, 0x16u);

                    v11 = v88;
                  }

LABEL_52:

LABEL_53:
                  goto LABEL_54;
                }

                v54 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
                if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_52;
                }

                *buf = 138543362;
                v101 = v35;
                v55 = v54;
                v56 = OS_LOG_TYPE_ERROR;
                v57 = "Failed to create prediction for cluster %{public}@";
LABEL_51:
                _os_log_impl(&dword_1CEE74000, v55, v56, v57, buf, 0xCu);
                goto LABEL_52;
              }

              if (v60)
              {
                v66 = [v42 activityType];
                *buf = 138412546;
                v101 = v66;
                v102 = 2112;
                v103 = *&v35;
                _os_log_impl(&dword_1CEE74000, v52, OS_LOG_TYPE_INFO, "User has not done %@ workouts at current location, skipping cluster %@", buf, 0x16u);
              }
            }

            else
            {
              v52 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v101 = v35;
                _os_log_impl(&dword_1CEE74000, v52, OS_LOG_TYPE_ERROR, "Cluster %{public}@ has no activity type", buf, 0xCu);
              }
            }

            v11 = v88;
            goto LABEL_53;
          }

          v53 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v101 = v35;
            _os_log_impl(&dword_1CEE74000, v53, OS_LOG_TYPE_ERROR, "Could not find cluster for UUID %@", buf, 0xCu);
          }

          v52 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_53;
          }

          v54 = [v14 allKeys];
          *buf = 138412290;
          v101 = v54;
          v55 = v52;
          v56 = OS_LOG_TYPE_DEBUG;
          v57 = "Available cluster UUIDs: %@";
          goto LABEL_51;
        }

        v42 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v101 = v35;
          v102 = 2048;
          v103 = v38;
          _os_log_impl(&dword_1CEE74000, v42, OS_LOG_TYPE_ERROR, "Skipping cluster %@ - invalid probability %.4f", buf, 0x16u);
        }

LABEL_54:

        ++v34;
      }

      while (v32 != v34);
      v69 = [v89 countByEnumeratingWithState:&v91 objects:v99 count:16];
      v32 = v69;
    }

    while (v69);
  }

  v70 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  v13 = v80;
  v71 = v85;
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    v72 = [v85 count];
    v73 = [obj count];
    *buf = 134349312;
    v101 = v72;
    v102 = 2050;
    v103 = *&v73;
    _os_log_impl(&dword_1CEE74000, v70, OS_LOG_TYPE_DEFAULT, "Prediction completed with %{public}lu predictions from %{public}lu clusters", buf, 0x16u);
  }

  v12 = v82;
LABEL_82:

  v78 = *MEMORY[0x1E69E9840];

  return v71;
}

- (id)_sortClustersByProbability:(id)a3
{
  v3 = a3;
  v4 = [v3 allKeys];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__PCWorkoutPredictionAlgorithm__sortClustersByProbability___block_invoke;
  v8[3] = &unk_1E83B8178;
  v9 = v3;
  v5 = v3;
  v6 = [v4 sortedArrayUsingComparator:v8];

  return v6;
}

uint64_t __59__PCWorkoutPredictionAlgorithm__sortClustersByProbability___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v8 compare:v7];
  return v9;
}

- (BOOL)_isWorkoutTypeAlreadyPredicted:(id)a3 inPredictions:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v54 = v5;
    v55 = 2048;
    *v56 = [v6 count];
    _os_log_impl(&dword_1CEE74000, v7, OS_LOG_TYPE_INFO, "Checking if '%@' is already predicted in %lu existing predictions", buf, 0x16u);
  }

  v8 = v5;
  v9 = objc_msgSend(v8, "rangeOfString:", @" (");
  v10 = v8;
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v8 substringToIndex:v9];

    v11 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v54 = v8;
      v55 = 2112;
      *v56 = v10;
      _os_log_impl(&dword_1CEE74000, v11, OS_LOG_TYPE_DEBUG, "Updated activity type from '%@' to '%@'", buf, 0x16u);
    }
  }

  v12 = v10;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v13 = [&unk_1F4BDE110 countByEnumeratingWithState:&v49 objects:v60 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v50;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v50 != v15)
        {
          objc_enumerationMutation(&unk_1F4BDE110);
        }

        v17 = *(*(&v49 + 1) + 8 * i);
        if ([v12 hasPrefix:v17])
        {
          v18 = [v12 substringFromIndex:{objc_msgSend(v17, "length")}];

          v19 = [&unk_1F4BDE110 objectForKeyedSubscript:v17];
          v44 = [v19 intValue];

          v20 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v54 = v18;
            v55 = 1024;
            *v56 = v44;
            *&v56[4] = 2112;
            *&v56[6] = v12;
            _os_log_impl(&dword_1CEE74000, v20, OS_LOG_TYPE_DEBUG, "Extracted base='%@', location=%d from '%@'", buf, 0x1Cu);
          }

          goto LABEL_19;
        }
      }

      v14 = [&unk_1F4BDE110 countByEnumeratingWithState:&v49 objects:v60 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v44 = 0;
  v18 = v12;
LABEL_19:
  v21 = objc_msgSend(v18, "rangeOfString:", @" (");
  if (v21 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = v18;
  }

  else
  {
    v22 = [v18 substringToIndex:v21];

    v23 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v54 = v22;
      _os_log_impl(&dword_1CEE74000, v23, OS_LOG_TYPE_DEBUG, "Updated base activity type to '%@'", buf, 0xCu);
    }
  }

  v24 = v22;
  v42 = v8;
  v43 = v24;
  if ([v24 isEqualToString:@"AmericanFootball"])
  {
    v25 = 1;
  }

  else if ([v24 isEqualToString:@"Archery"])
  {
    v25 = 2;
  }

  else if ([v24 isEqualToString:@"AustralianFootball"])
  {
    v25 = 3;
  }

  else if ([v24 isEqualToString:@"Badminton"])
  {
    v25 = 4;
  }

  else if ([v24 isEqualToString:@"Baseball"])
  {
    v25 = 5;
  }

  else if ([v24 isEqualToString:@"Basketball"])
  {
    v25 = 6;
  }

  else if ([v24 isEqualToString:@"Bowling"])
  {
    v25 = 7;
  }

  else if ([v24 isEqualToString:@"Boxing"])
  {
    v25 = 8;
  }

  else if ([v24 isEqualToString:@"Climbing"])
  {
    v25 = 9;
  }

  else if ([v24 isEqualToString:@"Cricket"])
  {
    v25 = 10;
  }

  else if ([v24 isEqualToString:@"CrossTraining"])
  {
    v25 = 11;
  }

  else if ([v24 isEqualToString:@"Curling"])
  {
    v25 = 12;
  }

  else if ([v24 isEqualToString:@"Cycling"])
  {
    v25 = 13;
  }

  else if ([v24 isEqualToString:@"Dance"])
  {
    v25 = 14;
  }

  else if ([v24 isEqualToString:@"DanceInspiredTraining"])
  {
    v25 = 15;
  }

  else if ([v24 isEqualToString:@"Elliptical"])
  {
    v25 = 16;
  }

  else if ([v24 isEqualToString:@"EquestrianSports"])
  {
    v25 = 17;
  }

  else if ([v24 isEqualToString:@"Fencing"])
  {
    v25 = 18;
  }

  else if ([v24 isEqualToString:@"Fishing"])
  {
    v25 = 19;
  }

  else if ([v24 isEqualToString:@"FunctionalStrengthTraining"])
  {
    v25 = 20;
  }

  else if ([v24 isEqualToString:@"Golf"])
  {
    v25 = 21;
  }

  else if ([v24 isEqualToString:@"Gymnastics"])
  {
    v25 = 22;
  }

  else if ([v24 isEqualToString:@"Handball"])
  {
    v25 = 23;
  }

  else if ([v24 isEqualToString:@"Hiking"])
  {
    v25 = 24;
  }

  else if ([v24 isEqualToString:@"Hockey"])
  {
    v25 = 25;
  }

  else if ([v24 isEqualToString:@"Hunting"])
  {
    v25 = 26;
  }

  else if ([v24 isEqualToString:@"Lacrosse"])
  {
    v25 = 27;
  }

  else if ([v24 isEqualToString:@"MartialArts"])
  {
    v25 = 28;
  }

  else if ([v24 isEqualToString:@"MindAndBody"])
  {
    v25 = 29;
  }

  else if ([v24 isEqualToString:@"MixedMetabolicCardioTraining "])
  {
    v25 = 30;
  }

  else if ([v24 isEqualToString:@"PaddleSports"])
  {
    v25 = 31;
  }

  else if ([v24 isEqualToString:@"Play"])
  {
    v25 = 32;
  }

  else if ([v24 isEqualToString:@"PreparationAndRecovery"])
  {
    v25 = 33;
  }

  else if ([v24 isEqualToString:@"Racquetball"])
  {
    v25 = 34;
  }

  else if ([v24 isEqualToString:@"Rowing"])
  {
    v25 = 35;
  }

  else if ([v24 isEqualToString:@"Rugby"])
  {
    v25 = 36;
  }

  else if ([v24 isEqualToString:@"Running"])
  {
    v25 = 37;
  }

  else if ([v24 isEqualToString:@"Sailing"])
  {
    v25 = 38;
  }

  else if ([v24 isEqualToString:@"SkatingSports"])
  {
    v25 = 39;
  }

  else if ([v24 isEqualToString:@"SnowSports"])
  {
    v25 = 40;
  }

  else if ([v24 isEqualToString:@"Soccer"])
  {
    v25 = 41;
  }

  else if ([v24 isEqualToString:@"Softball"])
  {
    v25 = 42;
  }

  else if ([v24 isEqualToString:@"Squash"])
  {
    v25 = 43;
  }

  else if ([v24 isEqualToString:@"StairClimbing"])
  {
    v25 = 44;
  }

  else if ([v24 isEqualToString:@"SurfingSports"])
  {
    v25 = 45;
  }

  else if ([v24 isEqualToString:@"Swimming"])
  {
    v25 = 46;
  }

  else if ([v24 isEqualToString:@"TableTennis"])
  {
    v25 = 47;
  }

  else if ([v24 isEqualToString:@"Tennis"])
  {
    v25 = 48;
  }

  else if ([v24 isEqualToString:@"TrackAndField"])
  {
    v25 = 49;
  }

  else if ([v24 isEqualToString:@"TraditionalStrengthTraining"])
  {
    v25 = 50;
  }

  else if ([v24 isEqualToString:@"Volleyball"])
  {
    v25 = 51;
  }

  else if ([v24 isEqualToString:@"Walking"])
  {
    v25 = 52;
  }

  else if ([v24 isEqualToString:@"WaterFitness"])
  {
    v25 = 53;
  }

  else if ([v24 isEqualToString:@"WaterPolo"])
  {
    v25 = 54;
  }

  else if ([v24 isEqualToString:@"WaterSports"])
  {
    v25 = 55;
  }

  else if ([v24 isEqualToString:@"Wrestling"])
  {
    v25 = 56;
  }

  else if ([v24 isEqualToString:@"Yoga"])
  {
    v25 = 57;
  }

  else if ([v24 isEqualToString:@"Barre"])
  {
    v25 = 58;
  }

  else if ([v24 isEqualToString:@"CoreTraining"])
  {
    v25 = 59;
  }

  else if ([v24 isEqualToString:@"CrossCountrySkiing"])
  {
    v25 = 60;
  }

  else if ([v24 isEqualToString:@"DownhillSkiing"])
  {
    v25 = 61;
  }

  else if ([v24 isEqualToString:@"Flexibility"])
  {
    v25 = 62;
  }

  else if ([v24 isEqualToString:@"HighIntensityIntervalTraining"])
  {
    v25 = 63;
  }

  else if ([v24 isEqualToString:@"JumpRope"])
  {
    v25 = 64;
  }

  else if ([v24 isEqualToString:@"Kickboxing"])
  {
    v25 = 65;
  }

  else if ([v24 isEqualToString:@"Pilates"])
  {
    v25 = 66;
  }

  else if ([v24 isEqualToString:@"Snowboarding"])
  {
    v25 = 67;
  }

  else if ([v24 isEqualToString:@"Stairs"])
  {
    v25 = 68;
  }

  else if ([v24 isEqualToString:@"StepTraining"])
  {
    v25 = 69;
  }

  else if ([v24 isEqualToString:@"WheelchairWalkPace"])
  {
    v25 = 70;
  }

  else if ([v24 isEqualToString:@"WheelchairRunPace"])
  {
    v25 = 71;
  }

  else if ([v24 isEqualToString:@"TaiChi"])
  {
    v25 = 72;
  }

  else if ([v24 isEqualToString:@"MixedCardio"])
  {
    v25 = 73;
  }

  else if ([v24 isEqualToString:@"HandCycling"])
  {
    v25 = 74;
  }

  else if ([v24 isEqualToString:@"DiscSports"])
  {
    v25 = 75;
  }

  else if ([v24 isEqualToString:@"FitnessGaming"])
  {
    v25 = 76;
  }

  else if ([v24 isEqualToString:@"CardioDance"])
  {
    v25 = 77;
  }

  else if ([v24 isEqualToString:@"SocialDance"])
  {
    v25 = 78;
  }

  else if ([v24 isEqualToString:@"Pickleball"])
  {
    v25 = 79;
  }

  else if ([v24 isEqualToString:@"Cooldown"])
  {
    v25 = 80;
  }

  else if ([v24 isEqualToString:@"SwimBikeRun"])
  {
    v25 = 82;
  }

  else if ([v24 isEqualToString:@"Transition"])
  {
    v25 = 83;
  }

  else if ([v24 isEqualToString:@"UnderwaterDiving"])
  {
    v25 = 84;
  }

  else if ([v24 isEqualToString:@"Other"])
  {
    v25 = 3000;
  }

  else
  {
    v25 = 0;
  }

  v26 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v54 = v24;
    v55 = 2050;
    *v56 = v25;
    _os_log_impl(&dword_1CEE74000, v26, OS_LOG_TYPE_INFO, "Converted '%{public}@' to workout type %{public}llu", buf, 0x16u);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v27 = v6;
  v28 = [v27 countByEnumeratingWithState:&v45 objects:v59 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v46;
    while (2)
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v46 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v45 + 1) + 8 * j);
        v33 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = [v32 workoutActivityType];
          v35 = [v32 workoutLocationType];
          *buf = 134349824;
          v54 = v34;
          v55 = 1026;
          *v56 = v35;
          *&v56[4] = 2050;
          *&v56[6] = v25;
          v57 = 1026;
          v58 = v44;
          _os_log_impl(&dword_1CEE74000, v33, OS_LOG_TYPE_INFO, "Comparing with existing prediction: workoutType=%{public}llu, locationType=%{public}d (looking for workoutType=%{public}llu, locationType=%{public}d)", buf, 0x22u);
        }

        if ([v32 workoutActivityType] == v25 && objc_msgSend(v32, "workoutLocationType") == v44)
        {
          v39 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          v37 = v42;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v54 = v42;
            v55 = 2050;
            *v56 = v25;
            *&v56[8] = 1026;
            *&v56[10] = v44;
            _os_log_impl(&dword_1CEE74000, v39, OS_LOG_TYPE_INFO, "Workout %@ (workoutType=%{public}llu, locationType=%{public}d) is already predicted, skipping", buf, 0x1Cu);
          }

          v38 = 1;
          v36 = v27;
          goto LABEL_209;
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v45 objects:v59 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

  v36 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v37 = v42;
    v54 = v42;
    _os_log_impl(&dword_1CEE74000, v36, OS_LOG_TYPE_DEBUG, "Workout '%{public}@' is NOT already predicted", buf, 0xCu);
    v38 = 0;
  }

  else
  {
    v38 = 0;
    v37 = v42;
  }

LABEL_209:

  v40 = *MEMORY[0x1E69E9840];
  return v38;
}

- (id)_createPredictionFromCluster:(id)a3 probability:(double)a4 atTime:(id)a5 embeddings:(id)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [(PCWorkoutPredictionAlgorithm *)self _subselectEmbeddings:a6 fromCluster:v11];
  v13 = objc_alloc_init(PCPPredictedContext);
  [(PCPPredictedContext *)v13 setProbability:a4];
  [(PCPPredictedContext *)v13 setContextType:4];
  v14 = [(PCWorkoutPredictionAlgorithm *)self _createDateIntervalStartingAt:v10 probability:v12 embeddings:a4];

  [(PCPPredictedContext *)v13 setDateInterval:v14];
  v15 = [(PCWorkoutPredictionAlgorithm *)self _createSourcesFromEmbeddings:v12];
  [(PCPPredictedContext *)v13 setSources:v15];

  v16 = objc_alloc_init(PCPPredictedContextWorkout);
  v17 = [v11 activityType];
  [(PCWorkoutPredictionAlgorithm *)self _updateActivityInfoForPrediction:v16 fromActivityType:v17];

  [(PCPPredictedContextWorkout *)v16 setPredictedContext:v13];
  v18 = [v11 sourceBundleIdentifier];

  [(PCPPredictedContextWorkout *)v16 setSourceBundleIdentifier:v18];

  return v16;
}

- (void)_updateActivityInfoForPrediction:(id)a3 fromActivityType:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [&unk_1F4BDE138 countByEnumeratingWithState:&v17 objects:v21 count:16];
  v8 = v6;
  if (v7)
  {
    v9 = v7;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(&unk_1F4BDE138);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v6 hasPrefix:v12])
        {
          v8 = [v6 substringFromIndex:{objc_msgSend(v12, "length")}];

          v13 = [&unk_1F4BDE138 objectForKeyedSubscript:v12];
          [v5 setWorkoutLocationType:{objc_msgSend(v13, "intValue")}];

          goto LABEL_11;
        }
      }

      v9 = [&unk_1F4BDE138 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v8 = v6;
  }

LABEL_11:
  v14 = v8;
  if ([v14 isEqualToString:@"AmericanFootball"])
  {
    v15 = 1;
  }

  else if ([v14 isEqualToString:@"Archery"])
  {
    v15 = 2;
  }

  else if ([v14 isEqualToString:@"AustralianFootball"])
  {
    v15 = 3;
  }

  else if ([v14 isEqualToString:@"Badminton"])
  {
    v15 = 4;
  }

  else if ([v14 isEqualToString:@"Baseball"])
  {
    v15 = 5;
  }

  else if ([v14 isEqualToString:@"Basketball"])
  {
    v15 = 6;
  }

  else if ([v14 isEqualToString:@"Bowling"])
  {
    v15 = 7;
  }

  else if ([v14 isEqualToString:@"Boxing"])
  {
    v15 = 8;
  }

  else if ([v14 isEqualToString:@"Climbing"])
  {
    v15 = 9;
  }

  else if ([v14 isEqualToString:@"Cricket"])
  {
    v15 = 10;
  }

  else if ([v14 isEqualToString:@"CrossTraining"])
  {
    v15 = 11;
  }

  else if ([v14 isEqualToString:@"Curling"])
  {
    v15 = 12;
  }

  else if ([v14 isEqualToString:@"Cycling"])
  {
    v15 = 13;
  }

  else if ([v14 isEqualToString:@"Dance"])
  {
    v15 = 14;
  }

  else if ([v14 isEqualToString:@"DanceInspiredTraining"])
  {
    v15 = 15;
  }

  else if ([v14 isEqualToString:@"Elliptical"])
  {
    v15 = 16;
  }

  else if ([v14 isEqualToString:@"EquestrianSports"])
  {
    v15 = 17;
  }

  else if ([v14 isEqualToString:@"Fencing"])
  {
    v15 = 18;
  }

  else if ([v14 isEqualToString:@"Fishing"])
  {
    v15 = 19;
  }

  else if ([v14 isEqualToString:@"FunctionalStrengthTraining"])
  {
    v15 = 20;
  }

  else if ([v14 isEqualToString:@"Golf"])
  {
    v15 = 21;
  }

  else if ([v14 isEqualToString:@"Gymnastics"])
  {
    v15 = 22;
  }

  else if ([v14 isEqualToString:@"Handball"])
  {
    v15 = 23;
  }

  else if ([v14 isEqualToString:@"Hiking"])
  {
    v15 = 24;
  }

  else if ([v14 isEqualToString:@"Hockey"])
  {
    v15 = 25;
  }

  else if ([v14 isEqualToString:@"Hunting"])
  {
    v15 = 26;
  }

  else if ([v14 isEqualToString:@"Lacrosse"])
  {
    v15 = 27;
  }

  else if ([v14 isEqualToString:@"MartialArts"])
  {
    v15 = 28;
  }

  else if ([v14 isEqualToString:@"MindAndBody"])
  {
    v15 = 29;
  }

  else if ([v14 isEqualToString:@"MixedMetabolicCardioTraining "])
  {
    v15 = 30;
  }

  else if ([v14 isEqualToString:@"PaddleSports"])
  {
    v15 = 31;
  }

  else if ([v14 isEqualToString:@"Play"])
  {
    v15 = 32;
  }

  else if ([v14 isEqualToString:@"PreparationAndRecovery"])
  {
    v15 = 33;
  }

  else if ([v14 isEqualToString:@"Racquetball"])
  {
    v15 = 34;
  }

  else if ([v14 isEqualToString:@"Rowing"])
  {
    v15 = 35;
  }

  else if ([v14 isEqualToString:@"Rugby"])
  {
    v15 = 36;
  }

  else if ([v14 isEqualToString:@"Running"])
  {
    v15 = 37;
  }

  else if ([v14 isEqualToString:@"Sailing"])
  {
    v15 = 38;
  }

  else if ([v14 isEqualToString:@"SkatingSports"])
  {
    v15 = 39;
  }

  else if ([v14 isEqualToString:@"SnowSports"])
  {
    v15 = 40;
  }

  else if ([v14 isEqualToString:@"Soccer"])
  {
    v15 = 41;
  }

  else if ([v14 isEqualToString:@"Softball"])
  {
    v15 = 42;
  }

  else if ([v14 isEqualToString:@"Squash"])
  {
    v15 = 43;
  }

  else if ([v14 isEqualToString:@"StairClimbing"])
  {
    v15 = 44;
  }

  else if ([v14 isEqualToString:@"SurfingSports"])
  {
    v15 = 45;
  }

  else if ([v14 isEqualToString:@"Swimming"])
  {
    v15 = 46;
  }

  else if ([v14 isEqualToString:@"TableTennis"])
  {
    v15 = 47;
  }

  else if ([v14 isEqualToString:@"Tennis"])
  {
    v15 = 48;
  }

  else if ([v14 isEqualToString:@"TrackAndField"])
  {
    v15 = 49;
  }

  else if ([v14 isEqualToString:@"TraditionalStrengthTraining"])
  {
    v15 = 50;
  }

  else if ([v14 isEqualToString:@"Volleyball"])
  {
    v15 = 51;
  }

  else if ([v14 isEqualToString:@"Walking"])
  {
    v15 = 52;
  }

  else if ([v14 isEqualToString:@"WaterFitness"])
  {
    v15 = 53;
  }

  else if ([v14 isEqualToString:@"WaterPolo"])
  {
    v15 = 54;
  }

  else if ([v14 isEqualToString:@"WaterSports"])
  {
    v15 = 55;
  }

  else if ([v14 isEqualToString:@"Wrestling"])
  {
    v15 = 56;
  }

  else if ([v14 isEqualToString:@"Yoga"])
  {
    v15 = 57;
  }

  else if ([v14 isEqualToString:@"Barre"])
  {
    v15 = 58;
  }

  else if ([v14 isEqualToString:@"CoreTraining"])
  {
    v15 = 59;
  }

  else if ([v14 isEqualToString:@"CrossCountrySkiing"])
  {
    v15 = 60;
  }

  else if ([v14 isEqualToString:@"DownhillSkiing"])
  {
    v15 = 61;
  }

  else if ([v14 isEqualToString:@"Flexibility"])
  {
    v15 = 62;
  }

  else if ([v14 isEqualToString:@"HighIntensityIntervalTraining"])
  {
    v15 = 63;
  }

  else if ([v14 isEqualToString:@"JumpRope"])
  {
    v15 = 64;
  }

  else if ([v14 isEqualToString:@"Kickboxing"])
  {
    v15 = 65;
  }

  else if ([v14 isEqualToString:@"Pilates"])
  {
    v15 = 66;
  }

  else if ([v14 isEqualToString:@"Snowboarding"])
  {
    v15 = 67;
  }

  else if ([v14 isEqualToString:@"Stairs"])
  {
    v15 = 68;
  }

  else if ([v14 isEqualToString:@"StepTraining"])
  {
    v15 = 69;
  }

  else if ([v14 isEqualToString:@"WheelchairWalkPace"])
  {
    v15 = 70;
  }

  else if ([v14 isEqualToString:@"WheelchairRunPace"])
  {
    v15 = 71;
  }

  else if ([v14 isEqualToString:@"TaiChi"])
  {
    v15 = 72;
  }

  else if ([v14 isEqualToString:@"MixedCardio"])
  {
    v15 = 73;
  }

  else if ([v14 isEqualToString:@"HandCycling"])
  {
    v15 = 74;
  }

  else if ([v14 isEqualToString:@"DiscSports"])
  {
    v15 = 75;
  }

  else if ([v14 isEqualToString:@"FitnessGaming"])
  {
    v15 = 76;
  }

  else if ([v14 isEqualToString:@"CardioDance"])
  {
    v15 = 77;
  }

  else if ([v14 isEqualToString:@"SocialDance"])
  {
    v15 = 78;
  }

  else if ([v14 isEqualToString:@"Pickleball"])
  {
    v15 = 79;
  }

  else if ([v14 isEqualToString:@"Cooldown"])
  {
    v15 = 80;
  }

  else if ([v14 isEqualToString:@"SwimBikeRun"])
  {
    v15 = 82;
  }

  else if ([v14 isEqualToString:@"Transition"])
  {
    v15 = 83;
  }

  else if ([v14 isEqualToString:@"UnderwaterDiving"])
  {
    v15 = 84;
  }

  else if ([v14 isEqualToString:@"Other"])
  {
    v15 = 3000;
  }

  else
  {
    v15 = 0;
  }

  [v5 setWorkoutActivityType:v15];
  v16 = *MEMORY[0x1E69E9840];
}

- (id)_createDateIntervalStartingAt:(id)a3 probability:(double)a4 embeddings:(id)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = [v7 dateByAddingTimeInterval:10.0];
  v10 = [v9 dateByAddingTimeInterval:4500.0];
  v11 = v10;
  if (a4 >= 0.9)
  {
    v45 = v9;
    v43 = v10;
    v12 = [MEMORY[0x1E695DEE8] currentCalendar];
    v13 = [MEMORY[0x1E695DFE8] systemTimeZone];
    [v12 setTimeZone:v13];

    v42 = v12;
    v14 = [v12 components:96 fromDate:v7];
    [v14 setSecond:0];
    v15 = objc_opt_new();
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v44 = v8;
    v16 = v8;
    v17 = [v16 countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v47;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v47 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v46 + 1) + 8 * i);
          v22 = [v21 timeOfDay];

          if (v22)
          {
            v23 = [v21 timeOfDay];
            [PCEmbedding secondsFromTimeOfDay:v14 toTimeOfDay:v23];
            v25 = v24;

            if (v25 >= 0.0 && v25 <= 3600.0)
            {
              [v15 addObject:v21];
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v18);
    }

    [v15 sortUsingComparator:&__block_literal_global_0];
    v26 = [v15 lastObject];
    v27 = v26;
    if (v26)
    {
      v28 = [v26 timeOfDay];
      [PCEmbedding secondsFromTimeOfDay:v14 toTimeOfDay:v28];
      v30 = v29;
      v31 = v29 + -480.0;
      if (v31 < 10.0)
      {
        v31 = 10.0;
      }

      v9 = [v7 dateByAddingTimeInterval:v31];
      v32 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        [v45 timeIntervalSinceReferenceDate];
        v34 = v33;
        [v9 timeIntervalSinceReferenceDate];
        *buf = 134349568;
        v51 = v34;
        v52 = 2050;
        v53 = v35;
        v54 = 2050;
        v55 = v30;
        _os_log_impl(&dword_1CEE74000, v32, OS_LOG_TYPE_DEFAULT, "Scheduling: Updated high-confidence prediction. currentStartTime=%{public}.1f,updatedStartTime=%{public}.1f,secondsUntilWorkout=%{public}.1f", buf, 0x20u);
      }
    }

    else
    {
      v28 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      v9 = v45;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        [v45 timeIntervalSinceReferenceDate];
        *buf = 134349056;
        v51 = v36;
        _os_log_impl(&dword_1CEE74000, v28, OS_LOG_TYPE_INFO, "Scheduling: High-probability prediction, but no embeddings found in prediction period (startTime=%{public}.1f)", buf, 0xCu);
      }
    }

    v8 = v44;

    v11 = v43;
  }

  v37 = objc_alloc_init(PCPPredictedContextDateInterval);
  v38 = objc_alloc_init(PCPPredictedContextDate);
  [v9 timeIntervalSinceReferenceDate];
  [(PCPPredictedContextDate *)v38 setDate:?];
  [(PCPPredictedContextDateInterval *)v37 setStartDate:v38];
  v39 = objc_alloc_init(PCPPredictedContextDate);
  [v11 timeIntervalSinceReferenceDate];
  [(PCPPredictedContextDate *)v39 setDate:?];
  [(PCPPredictedContextDateInterval *)v37 setEndDate:v39];

  v40 = *MEMORY[0x1E69E9840];

  return v37;
}

uint64_t __85__PCWorkoutPredictionAlgorithm__createDateIntervalStartingAt_probability_embeddings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 activityContextEmbedding];
  v6 = [v5 objectForKeyedSubscript:@"startTimeCFAbsolute"];

  v7 = [v4 activityContextEmbedding];

  v8 = [v7 objectForKeyedSubscript:@"startTimeCFAbsolute"];

  v9 = [v6 compare:v8];
  return v9;
}

- (id)_subselectEmbeddings:(id)a3 fromCluster:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v5 = a4;
  v6 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = v5;
  v7 = [v5 clusterMetadata];
  v8 = [v7 subSuggestionIDsBeforePruning];

  obj = v8;
  v26 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v26)
  {
    v24 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v9;
        v10 = *(*(&v32 + 1) + 8 * v9);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v11 = v25;
        v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v29;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v29 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v28 + 1) + 8 * i);
              v17 = [v16 bundleIdentifier];
              v18 = [v17 UUIDString];
              v19 = [v18 isEqualToString:v10];

              if (v19)
              {
                [v6 addObject:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v13);
        }

        v9 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v26);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_createSourcesFromEmbeddings:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v20 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v19 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = objc_alloc_init(PCPSource);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        [(PCPSource *)v8 setIdentifier:v10];

        v11 = objc_alloc_init(PCPPredictedContextSource);
        v12 = objc_alloc_init(PCPHealthKitWorkout);
        v13 = [v7 activityContextEmbedding];
        v14 = [v13 objectForKeyedSubscript:@"startTimeCFAbsolute"];
        [v14 doubleValue];
        [(PCPHealthKitWorkout *)v12 setStartTimeCFAbsolute:?];

        v15 = [v13 objectForKeyedSubscript:@"hkObjectUUID"];
        [(PCPHealthKitWorkout *)v12 setIdentifier:v15];

        [(PCPPredictedContextSource *)v11 setHealthKitWorkout:v12];
        [(PCPPredictedContextSource *)v11 setPredictedContextSource:5];
        [(PCPSource *)v8 setPredictedContextSource:v11];
        [v20 addObject:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v20;
}

- (BOOL)isHomeOrWorkLocation:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = [a3 objectForKeyedSubscript:@"combinedPlaceType"];
    v4 = v3;
    if (v3)
    {
      if (([v3 isEqualToString:@"Home"]& 1) != 0)
      {
        v5 = 1;
      }

      else
      {
        v5 = [v4 isEqualToString:@"Work"];
      }

      v6 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = @"other";
        if (v5)
        {
          v7 = @"home/work";
        }

        v10 = 138543618;
        v11 = v4;
        v12 = 2114;
        v13 = v7;
        _os_log_impl(&dword_1CEE74000, v6, OS_LOG_TYPE_INFO, "Location type '%{public}@' is %{public}@", &v10, 0x16u);
      }
    }

    else
    {
      v6 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_1CEE74000, v6, OS_LOG_TYPE_DEBUG, "No combined place type found in location context", &v10, 2u);
      }

      LOBYTE(v5) = 0;
    }
  }

  else
  {
    v4 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1CEE74000, v4, OS_LOG_TYPE_DEBUG, "No location context provided to isHomeOrWorkLocation", &v10, 2u);
    }

    LOBYTE(v5) = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)_buildWorkoutTypeLocationMapping:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = objc_opt_new();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v38 = v4;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v44;
      v39 = *v44;
      v40 = v5;
      do
      {
        v9 = 0;
        v41 = v7;
        do
        {
          if (*v44 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v43 + 1) + 8 * v9);
          v11 = [v10 activityContextEmbedding];
          v12 = [v11 objectForKeyedSubscript:@"activityType"];
          v13 = v12;
          if (v12 && [v12 length])
          {
            v14 = [v5 objectForKeyedSubscript:v13];

            if (!v14)
            {
              v49[0] = @"locations";
              v15 = objc_opt_new();
              v49[1] = @"placeTypes";
              v50[0] = v15;
              v16 = objc_opt_new();
              v50[1] = v16;
              v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
              v18 = [v17 mutableCopy];
              [v5 setObject:v18 forKeyedSubscript:v13];

              v7 = v41;
            }

            v19 = [v5 objectForKeyedSubscript:v13];
            v20 = [v19 objectForKeyedSubscript:@"locations"];
            v21 = [v19 objectForKeyedSubscript:@"placeTypes"];
            v22 = [v10 locationContextEmbedding];
            v23 = v22;
            if (v22)
            {
              v24 = [v22 objectForKeyedSubscript:@"placeLatitude"];
              v25 = [v23 objectForKeyedSubscript:@"placeLongitude"];
              v26 = v25;
              if (v24)
              {
                if (v25)
                {
                  [v24 doubleValue];
                  v28 = v27;
                  [v26 doubleValue];
                  v30 = v29;
                  if (fabs(v28) <= 90.0 && fabs(v29) <= 180.0)
                  {
                    v31 = objc_alloc_init(PCPLocation);
                    [(PCPLocation *)v31 setLocationLatitudeDeg:v28];
                    [(PCPLocation *)v31 setLocationLongitudeDeg:v30];
                    [v20 addObject:v31];
                  }
                }
              }

              v32 = [v23 objectForKeyedSubscript:@"combinedPlaceType"];
              v33 = v32;
              if (v32 && [v32 length])
              {
                [v21 addObject:v33];
              }

              v7 = v41;
            }

            v8 = v39;
            v5 = v40;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v7);
    }

    v34 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = [v5 count];
      *buf = 134217984;
      v48 = v35;
      _os_log_impl(&dword_1CEE74000, v34, OS_LOG_TYPE_INFO, "Built workout type location mapping for %lu activity types", buf, 0xCu);
    }

    v4 = v38;
  }

  else
  {
    v34 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v34, OS_LOG_TYPE_ERROR, "No embeddings provided to _buildWorkoutTypeLocationMapping", buf, 2u);
    }

    v5 = MEMORY[0x1E695E0F8];
  }

  v36 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)_hasUserWorkedOutForActivityType:(id)a3 nearCurrentVisit:(id)a4 workoutTypeLocationMap:(id)a5
{
  v66 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = [v7 length];
    v11 = 0;
    if (v9 && v8 && v10)
    {
      v12 = [v9 objectForKeyedSubscript:v7];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 objectForKeyedSubscript:@"locations"];
        v15 = [v13 objectForKeyedSubscript:@"placeTypes"];
        v16 = [v8 locationContextEmbedding];
        v17 = v16;
        if (v16)
        {
          v18 = [v16 objectForKeyedSubscript:@"combinedPlaceType"];
          v19 = [v17 objectForKeyedSubscript:@"placeLatitude"];
          v20 = [v17 objectForKeyedSubscript:@"placeLongitude"];
          v48 = v20;
          v49 = v19;
          if (v19)
          {
            v21 = v20;
            if (v20)
            {
              if ([v14 count])
              {
                [v19 doubleValue];
                v23 = v22;
                [v21 doubleValue];
                v25 = v24;
                if (fabs(v23) <= 90.0 && fabs(v24) <= 180.0)
                {
                  v47 = v15;
                  v56 = 0u;
                  v57 = 0u;
                  v54 = 0u;
                  v55 = 0u;
                  v45 = v14;
                  v26 = v14;
                  v27 = [v26 countByEnumeratingWithState:&v54 objects:v65 count:16];
                  if (v27)
                  {
                    v28 = v27;
                    v29 = *v55;
                    v46 = v17;
                    while (2)
                    {
                      for (i = 0; i != v28; ++i)
                      {
                        if (*v55 != v29)
                        {
                          objc_enumerationMutation(v26);
                        }

                        v31 = *(*(&v54 + 1) + 8 * i);
                        [v31 locationLatitudeDeg];
                        v33 = v32;
                        [v31 locationLongitudeDeg];
                        [PCEmbeddingDistanceCalculator distanceFromLat1:v23 lon1:v25 toLat2:v33 lon2:v34];
                        v36 = v35 * 0.00062137;
                        if (v35 * 0.00062137 < 2.0)
                        {
                          v42 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
                          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                          {
                            *buf = 138412802;
                            v60 = v7;
                            v61 = 2048;
                            v62 = 0x4000000000000000;
                            v63 = 2048;
                            v64 = v36;
                            _os_log_impl(&dword_1CEE74000, v42, OS_LOG_TYPE_INFO, "Found %@ workout within %.1f miles: %.3f miles", buf, 0x20u);
                          }

                          v11 = 1;
                          v14 = v45;
LABEL_49:
                          v17 = v46;
                          v15 = v47;
                          goto LABEL_50;
                        }
                      }

                      v28 = [v26 countByEnumeratingWithState:&v54 objects:v65 count:16];
                      v17 = v46;
                      if (v28)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v14 = v45;
                  v15 = v47;
                }
              }
            }
          }

          if (v18 && -[NSObject length](v18, "length") && [v15 count])
          {
            v46 = v17;
            v47 = v15;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v26 = v15;
            v37 = [v26 countByEnumeratingWithState:&v50 objects:v58 count:16];
            if (v37)
            {
              v38 = v37;
              v39 = *v51;
              while (2)
              {
                for (j = 0; j != v38; ++j)
                {
                  if (*v51 != v39)
                  {
                    objc_enumerationMutation(v26);
                  }

                  if ([v18 isEqualToString:*(*(&v50 + 1) + 8 * j)])
                  {
                    v41 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v60 = v7;
                      v61 = 2112;
                      v62 = v18;
                      _os_log_impl(&dword_1CEE74000, v41, OS_LOG_TYPE_INFO, "Found %@ workout with matching placeType: %@", buf, 0x16u);
                    }

                    v11 = 1;
                    goto LABEL_49;
                  }
                }

                v38 = [v26 countByEnumeratingWithState:&v50 objects:v58 count:16];
                if (v38)
                {
                  continue;
                }

                break;
              }
            }

            v17 = v46;
            v15 = v47;
          }

          v26 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v60 = v7;
            _os_log_impl(&dword_1CEE74000, v26, OS_LOG_TYPE_INFO, "No matching %@ workout locations found near this visit", buf, 0xCu);
          }

          v11 = 0;
LABEL_50:
        }

        else
        {
          v18 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1CEE74000, v18, OS_LOG_TYPE_DEBUG, "No location context in current visit", buf, 2u);
          }

          v11 = 0;
        }
      }

      else
      {
        v14 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v60 = v7;
          _os_log_impl(&dword_1CEE74000, v14, OS_LOG_TYPE_INFO, "No location data found for activity type: %@", buf, 0xCu);
        }

        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v11;
}

@end