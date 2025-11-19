@interface PCDynamicsWeighting
- (PCDynamicsWeighting)initWithDirectionScaleFactorEstimator:(id)a3 ETAScaleFactorEstimator:(id)a4;
- (void)modifyCandidateProbabilities:(id)a3 atTime:(double)a4 visitHistory:(id)a5 locationHistory:(id)a6 motionActivity:(id)a7;
@end

@implementation PCDynamicsWeighting

- (PCDynamicsWeighting)initWithDirectionScaleFactorEstimator:(id)a3 ETAScaleFactorEstimator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PCDynamicsWeighting;
  v9 = [(PCDynamicsWeighting *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_directionScaleFactorEstimator, a3);
    objc_storeStrong(&v10->_etaScaleFactorEstimator, a4);
  }

  return v10;
}

- (void)modifyCandidateProbabilities:(id)a3 atTime:(double)a4 visitHistory:(id)a5 locationHistory:(id)a6 motionActivity:(id)a7
{
  v80 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1CEE74000, v16, OS_LOG_TYPE_INFO, "predictions before apply dynamics weighting", buf, 2u);
  }

  v64 = v14;
  v65 = v13;
  if (v12 && [v12 count])
  {
    v17 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v12 count];
      *buf = 134217984;
      v79 = v18;
      _os_log_impl(&dword_1CEE74000, v17, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v19 = v12;
    v20 = [v19 countByEnumeratingWithState:&v72 objects:v77 count:16];
    if (v20)
    {
      v21 = v20;
      v62 = self;
      v22 = *v73;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v73 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v72 + 1) + 8 * i)];
          v25 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 138739971;
            v79 = v24;
            _os_log_impl(&dword_1CEE74000, v25, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v72 objects:v77 count:16];
      }

      while (v21);
      v13 = v65;
      v26 = v62;
    }

    else
    {
      v26 = self;
    }
  }

  else
  {
    v19 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    v26 = self;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v19, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
    }
  }

  v71 = 0;
  v70 = 0.0;
  v27 = [PCDynamicsUtils locationOfLastVisitWithVisitHistory:v13 currentTime:&v71 isInTransition:&v70 exitTime:a4];
  v28 = [PCDynamicsUtils currentLocationWithLocationHistory:v14 currentTime:a4];
  v61 = [PCDynamicsUtils filterValidLocationPredictions:v12];
  v29 = [PCDynamicsUtils candidateDataMapFromVisits:?];
  v60 = v27;
  v30 = [PCDynamicsUtils computeProgressScaleFromCandidateDataMap:v29 lastVisit:v27 currentLocation:v28];
  v31 = [PCDynamicsUtils computeTravelFeasibilityForCandidateDataMap:v29 currentLocation:v28 currentTime:a4];
  v32 = [(PCDynamicsWeighting *)v26 directionScaleFactorEstimator];
  [v32 computeScaleForCandidates:v29 locationHistory:v14 motionActivity:v15 currentLocation:v28 currentTime:v71 lastVisitExitTime:a4 isInTransition:v70];
  v34 = v33 = v15;

  v35 = v26;
  v36 = v12;
  v37 = [(PCDynamicsWeighting *)v35 etaScaleFactorEstimator];
  v38 = v33;
  v63 = v28;
  v39 = [v37 computeScaleForCandidates:v29 locationHistory:v14 motionActivity:v33 currentLocation:v28 currentTime:v71 lastVisitExitTime:a4 isInTransition:v70];

  v58 = v34;
  v59 = v30;
  [PCDynamicsUtils updateProbabilitiesForCandidateVisits:v36 withCandidateDataMap:v29 progressScaleByVisitMap:v30 feasibilityByVisitMap:v31 dirctionScaleByVisitMap:v34 etaScaleByVisitMap:v39 currentTime:a4];
  v40 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1CEE74000, v40, OS_LOG_TYPE_INFO, "predictions after apply dynamics weighting", buf, 2u);
  }

  if (v36 && [v36 count])
  {
    v56 = v29;
    v41 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    v42 = v61;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v43 = [v36 count];
      *buf = 134217984;
      v79 = v43;
      _os_log_impl(&dword_1CEE74000, v41, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v44 = v36;
    v45 = [v44 countByEnumeratingWithState:&v66 objects:v76 count:16];
    v46 = v63;
    if (v45)
    {
      v47 = v45;
      v54 = v39;
      v55 = v31;
      v57 = v36;
      v48 = *v67;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v67 != v48)
          {
            objc_enumerationMutation(v44);
          }

          v50 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v66 + 1) + 8 * j), v54, v55];
          v51 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            *buf = 138739971;
            v79 = v50;
            _os_log_impl(&dword_1CEE74000, v51, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
          }
        }

        v47 = [v44 countByEnumeratingWithState:&v66 objects:v76 count:16];
      }

      while (v47);
      v36 = v57;
      v46 = v63;
      v14 = v64;
      v52 = v60;
      v42 = v61;
      v31 = v55;
      v29 = v56;
      v39 = v54;
    }

    else
    {
      v52 = v60;
    }
  }

  else
  {
    v44 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    v42 = v61;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v44, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
    }

    v52 = v60;
    v46 = v63;
  }

  v53 = *MEMORY[0x1E69E9840];
}

@end