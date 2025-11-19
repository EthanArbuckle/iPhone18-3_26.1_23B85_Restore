@interface PCConstraintsWeighting
+ (void)modifyCandidateVisitProbabilities:(id)a3 transitProbabilities:(id)a4 atTime:(double)a5 withVisitHistory:(id)a6 transitionHistory:(id)a7;
@end

@implementation PCConstraintsWeighting

+ (void)modifyCandidateVisitProbabilities:(id)a3 transitProbabilities:(id)a4 atTime:(double)a5 withVisitHistory:(id)a6 transitionHistory:(id)a7
{
  v163 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v121 = a6;
  v13 = a7;
  v14 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
  v15 = v14;
  if (v11 && v12)
  {
    v118 = v13;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v15, OS_LOG_TYPE_INFO, "predictions before apply constraints weighting", buf, 2u);
    }

    v16 = [v11 count];
    v17 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    v119 = v12;
    v120 = v11;
    if (v16)
    {
      if (v18)
      {
        v19 = [v11 count];
        *buf = 134217984;
        v162 = v19;
        _os_log_impl(&dword_1CEE74000, v17, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
      }

      v152 = 0u;
      v153 = 0u;
      v150 = 0u;
      v151 = 0u;
      v17 = v11;
      v20 = [v17 countByEnumeratingWithState:&v150 objects:v160 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v151;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v151 != v22)
            {
              objc_enumerationMutation(v17);
            }

            v24 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v150 + 1) + 8 * i)];
            v25 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138739971;
              v162 = v24;
              _os_log_impl(&dword_1CEE74000, v25, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
            }
          }

          v21 = [v17 countByEnumeratingWithState:&v150 objects:v160 count:16];
        }

        while (v21);
        v12 = v119;
      }
    }

    else if (v18)
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v17, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
    }

    v26 = [v12 count];
    v27 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
    if (v26)
    {
      if (v28)
      {
        v29 = [v12 count];
        *buf = 134217984;
        v162 = v29;
        _os_log_impl(&dword_1CEE74000, v27, OS_LOG_TYPE_INFO, "--- Transition Predictions (%lu) ---", buf, 0xCu);
      }

      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      v27 = v12;
      v30 = [v27 countByEnumeratingWithState:&v146 objects:v159 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v147;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v147 != v32)
            {
              objc_enumerationMutation(v27);
            }

            v34 = [PCLoggingUtils formattedStringForTransitionPrediction:*(*(&v146 + 1) + 8 * j)];
            v35 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              *buf = 138739971;
              v162 = v34;
              _os_log_impl(&dword_1CEE74000, v35, OS_LOG_TYPE_INFO, "Transition Prediction: %{sensitive}@", buf, 0xCu);
            }
          }

          v31 = [v27 countByEnumeratingWithState:&v146 objects:v159 count:16];
        }

        while (v31);
        v12 = v119;
      }
    }

    else if (v28)
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v27, OS_LOG_TYPE_INFO, "No Transition Predictions to log", buf, 2u);
    }

    v36 = 0x1E695D000uLL;
    v37 = [MEMORY[0x1E695DF70] array];
    v38 = [MEMORY[0x1E695DF70] array];
    [PCConstraintsWeightingUtils validateCandidateVisits:v11 validVisits:v37 invalidVisits:v38];
    v116 = v38;
    v117 = v37;
    if ([v38 count])
    {
      v39 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1CEE74000, v39, OS_LOG_TYPE_INFO, "Invalid visit predictions", buf, 2u);
      }

      if (v38 && [v38 count])
      {
        v40 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = [v38 count];
          *buf = 134217984;
          v162 = v41;
          _os_log_impl(&dword_1CEE74000, v40, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
        }

        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v42 = v38;
        v43 = [v42 countByEnumeratingWithState:&v142 objects:v158 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v143;
          do
          {
            for (k = 0; k != v44; ++k)
            {
              if (*v143 != v45)
              {
                objc_enumerationMutation(v42);
              }

              v47 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v142 + 1) + 8 * k)];
              v48 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
              {
                *buf = 138739971;
                v162 = v47;
                _os_log_impl(&dword_1CEE74000, v48, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
              }
            }

            v44 = [v42 countByEnumeratingWithState:&v142 objects:v158 count:16];
          }

          while (v44);
          v12 = v119;
          v11 = v120;
          v36 = 0x1E695D000;
        }

        else
        {
          v12 = v119;
        }
      }

      else
      {
        v42 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1CEE74000, v42, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
        }
      }
    }

    v49 = [*(v36 + 3952) array];
    v50 = [*(v36 + 3952) array];
    [PCConstraintsWeightingUtils validateCandidateTransitions:v12 validTransitions:v49 invalidTransitions:v50];
    v114 = v49;
    v115 = v50;
    if ([v50 count])
    {
      v51 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1CEE74000, v51, OS_LOG_TYPE_INFO, "Invalid transition predictions", buf, 2u);
      }

      if (v50 && [v50 count])
      {
        v52 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v53 = [v50 count];
          *buf = 134217984;
          v162 = v53;
          _os_log_impl(&dword_1CEE74000, v52, OS_LOG_TYPE_INFO, "--- Transition Predictions (%lu) ---", buf, 0xCu);
        }

        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v54 = v50;
        v55 = [v54 countByEnumeratingWithState:&v138 objects:v157 count:16];
        if (v55)
        {
          v56 = v55;
          v57 = *v139;
          do
          {
            for (m = 0; m != v56; ++m)
            {
              if (*v139 != v57)
              {
                objc_enumerationMutation(v54);
              }

              v59 = [PCLoggingUtils formattedStringForTransitionPrediction:*(*(&v138 + 1) + 8 * m)];
              v60 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
              if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
              {
                *buf = 138739971;
                v162 = v59;
                _os_log_impl(&dword_1CEE74000, v60, OS_LOG_TYPE_INFO, "Transition Prediction: %{sensitive}@", buf, 0xCu);
              }
            }

            v56 = [v54 countByEnumeratingWithState:&v138 objects:v157 count:16];
          }

          while (v56);
          v12 = v119;
          v11 = v120;
        }

        else
        {
          v12 = v119;
          v11 = v120;
        }
      }

      else
      {
        v54 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1CEE74000, v54, OS_LOG_TYPE_INFO, "No Transition Predictions to log", buf, 2u);
        }
      }
    }

    v61 = [PCConstraintsWeightingUtils loiIdOfCurrentContextFromVisitHistory:v121 transitionHistory:v118 currentTime:a5];
    v62 = [PCConstraintsWeightingUtils mapLOIToLocationsFromPredictedVisits:v37 currentLoiIdentifier:v61 visitHistory:v121];
    v112 = [PCConstraintsWeightingUtils rasterizeCandidateVisitPredictions:v37 transitPredictions:v49 currentTimeInSec:a5 windowInHours:24.0 binSizeMin:5.0];
    v111 = [PCConstraintsWeightingUtils applyMovingAverage:"applyMovingAverage:windowSize:currentContextId:" windowSize:? currentContextId:?];
    v63 = [PCConstraintsWeightingUtils normalizeBins:?];
    v64 = [MEMORY[0x1E695DF90] dictionary];
    v65 = [PCConstraintsWeightingUtils convertBinsToPredSample:v63 loiToColMap:v64];
    v66 = [v65 mutableCopy];

    LODWORD(v67) = 1034147594;
    LODWORD(v68) = 1061997773;
    v108 = v66;
    v107 = [PCNeuralNetworkUtilities createPredictedContextFromPredSequence:v66 timestepSize:1 currentTime:v67 preds:5.0 probabilityCalculationMode:a5 probabilityPercentile:v68];
    v109 = v64;
    v110 = v63;
    v69 = [PCConstraintsWeightingUtils adaptMergedClusters:"adaptMergedClusters:bins:loiToColMap:" bins:? loiToColMap:?];
    v70 = [v69 mutableCopy];

    v113 = v61;
    v122 = v62;
    [PCConstraintsWeightingUtils postprocessMergeResults:v70 currentLoiIdentifier:v61 currentTime:v118 windowEndTime:v62 transitionHistory:a5 loiToLocation:a5 + 86400.0];
    v124 = [MEMORY[0x1E695DF70] array];
    v123 = [MEMORY[0x1E695DF70] array];
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    obj = v70;
    v71 = [obj countByEnumeratingWithState:&v134 objects:v156 count:16];
    if (v71)
    {
      v72 = v71;
      v73 = *v135;
      do
      {
        for (n = 0; n != v72; ++n)
        {
          if (*v135 != v73)
          {
            objc_enumerationMutation(obj);
          }

          v75 = *(*(&v134 + 1) + 8 * n);
          v76 = [v75 loiId];
          v77 = +[PCConstraintsWeightingUtils transitionDummyLOI];
          v78 = [v76 isEqualToData:v77];

          if (v78)
          {
            v79 = [PCConstraintsWeightingUtils convertMergeResultToTransition:v75];
            v80 = v123;
          }

          else
          {
            v79 = [PCConstraintsWeightingUtils convertMergeResultToLocation:v75 withLocationMap:v122];
            v80 = v124;
          }

          [v80 addObject:v79];
        }

        v72 = [obj countByEnumeratingWithState:&v134 objects:v156 count:16];
      }

      while (v72);
    }

    [v11 removeAllObjects];
    v81 = v116;
    v82 = [v124 arrayByAddingObjectsFromArray:v116];
    [v11 addObjectsFromArray:v82];

    [v12 removeAllObjects];
    v83 = v115;
    v84 = [v123 arrayByAddingObjectsFromArray:v115];
    [v12 addObjectsFromArray:v84];

    v85 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v85, OS_LOG_TYPE_INFO, "predictions after apply constraints weighting", buf, 2u);
    }

    v86 = [v11 count];
    v87 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
    v88 = os_log_type_enabled(v87, OS_LOG_TYPE_INFO);
    if (v86)
    {
      if (v88)
      {
        v89 = [v11 count];
        *buf = 134217984;
        v162 = v89;
        _os_log_impl(&dword_1CEE74000, v87, OS_LOG_TYPE_INFO, "--- Location Predictions (%lu) ---", buf, 0xCu);
      }

      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v87 = v11;
      v90 = [v87 countByEnumeratingWithState:&v130 objects:v155 count:16];
      if (v90)
      {
        v91 = v90;
        v92 = *v131;
        do
        {
          for (ii = 0; ii != v91; ++ii)
          {
            if (*v131 != v92)
            {
              objc_enumerationMutation(v87);
            }

            v94 = [PCLoggingUtils formattedStringForLocationPrediction:*(*(&v130 + 1) + 8 * ii)];
            v95 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
            if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
            {
              *buf = 138739971;
              v162 = v94;
              _os_log_impl(&dword_1CEE74000, v95, OS_LOG_TYPE_INFO, "Location Prediction: %{sensitive}@", buf, 0xCu);
            }
          }

          v91 = [v87 countByEnumeratingWithState:&v130 objects:v155 count:16];
        }

        while (v91);
        v12 = v119;
        v11 = v120;
        v81 = v116;
        v15 = v117;
        v83 = v115;
LABEL_107:

        v96 = [v12 count];
        v97 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
        v98 = os_log_type_enabled(v97, OS_LOG_TYPE_INFO);
        if (v96)
        {
          if (v98)
          {
            v99 = [v12 count];
            *buf = 134217984;
            v162 = v99;
            _os_log_impl(&dword_1CEE74000, v97, OS_LOG_TYPE_INFO, "--- Transition Predictions (%lu) ---", buf, 0xCu);
          }

          v128 = 0u;
          v129 = 0u;
          v126 = 0u;
          v127 = 0u;
          v97 = v12;
          v100 = [v97 countByEnumeratingWithState:&v126 objects:v154 count:16];
          if (v100)
          {
            v101 = v100;
            v102 = *v127;
            do
            {
              for (jj = 0; jj != v101; ++jj)
              {
                if (*v127 != v102)
                {
                  objc_enumerationMutation(v97);
                }

                v104 = [PCLoggingUtils formattedStringForTransitionPrediction:*(*(&v126 + 1) + 8 * jj)];
                v105 = _plc_log_get_normal_handle(PCLogCategoryConstraintsWeighting);
                if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
                {
                  *buf = 138739971;
                  v162 = v104;
                  _os_log_impl(&dword_1CEE74000, v105, OS_LOG_TYPE_INFO, "Transition Prediction: %{sensitive}@", buf, 0xCu);
                }
              }

              v101 = [v97 countByEnumeratingWithState:&v126 objects:v154 count:16];
            }

            while (v101);
            v12 = v119;
            v11 = v120;
            v15 = v117;
            v13 = v118;
            v83 = v115;
            v81 = v116;
            goto LABEL_123;
          }
        }

        else if (v98)
        {
          *buf = 0;
          _os_log_impl(&dword_1CEE74000, v97, OS_LOG_TYPE_INFO, "No Transition Predictions to log", buf, 2u);
        }

        v13 = v118;
LABEL_123:

        goto LABEL_124;
      }
    }

    else if (v88)
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v87, OS_LOG_TYPE_INFO, "No Location Predictions to log", buf, 2u);
    }

    v15 = v117;
    goto LABEL_107;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1CEE74000, v15, OS_LOG_TYPE_DEFAULT, "candidate visits or transitions pointer is nil, exiting early.", buf, 2u);
  }

LABEL_124:

  v106 = *MEMORY[0x1E69E9840];
}

@end