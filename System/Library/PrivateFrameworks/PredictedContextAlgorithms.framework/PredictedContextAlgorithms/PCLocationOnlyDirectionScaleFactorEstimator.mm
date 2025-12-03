@interface PCLocationOnlyDirectionScaleFactorEstimator
- (PCLocationOnlyDirectionScaleFactorEstimator)initWithConfig:(id)config;
- (id)computeScaleForCandidates:(id)candidates locationHistory:(id)history motionActivity:(id)activity currentLocation:(id)location currentTime:(double)time lastVisitExitTime:(double)exitTime isInTransition:(BOOL)transition;
@end

@implementation PCLocationOnlyDirectionScaleFactorEstimator

- (PCLocationOnlyDirectionScaleFactorEstimator)initWithConfig:(id)config
{
  configCopy = config;
  v10.receiver = self;
  v10.super_class = PCLocationOnlyDirectionScaleFactorEstimator;
  v6 = [(PCLocationOnlyDirectionScaleFactorEstimator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cfg, config);
    v8 = v7;
  }

  return v7;
}

- (id)computeScaleForCandidates:(id)candidates locationHistory:(id)history motionActivity:(id)activity currentLocation:(id)location currentTime:(double)time lastVisitExitTime:(double)exitTime isInTransition:(BOOL)transition
{
  v116 = *MEMORY[0x1E69E9840];
  candidatesCopy = candidates;
  historyCopy = history;
  locationCopy = location;
  if ([historyCopy count] <= 1)
  {
    v18 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = NSStringFromSelector(a2);
      *buf = 138412546;
      v104 = v19;
      v105 = 2048;
      v106 = [historyCopy count];
      v20 = "[%@] skip Direction scal factor, not enough buffered location, location count, %lu";
      v21 = v18;
      v22 = 22;
LABEL_10:
      _os_log_impl(&dword_1CEE74000, v21, OS_LOG_TYPE_INFO, v20, buf, v22);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (!transition)
  {
    v18 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = NSStringFromSelector(a2);
      *buf = 138412290;
      v104 = v19;
      v20 = "[%@] skip Direction scal factor, not in transition";
      v21 = v18;
      v22 = 12;
      goto LABEL_10;
    }

LABEL_11:

    v44 = [PCDynamicsUtils neutralScaleFactorsForDataMap:candidatesCopy];
    goto LABEL_36;
  }

  v23 = [PCDynamicsWindowContext alloc];
  v24 = [(PCLocationOnlyDirectionScaleFactorEstimator *)self cfg];
  [v24 minTravelTimeSec];
  v26 = v25;
  v27 = [(PCLocationOnlyDirectionScaleFactorEstimator *)self cfg];
  [v27 fullEffectTimeSec];
  v29 = v28;
  v30 = [(PCLocationOnlyDirectionScaleFactorEstimator *)self cfg];
  [v30 maxLocationUncertaintyM];
  v32 = [(PCDynamicsWindowContext *)v23 initWithRawHistory:historyCopy currentTime:time lastVisitExitTime:exitTime minTravelTime:v26 fullEffectTime:v29 maxUncertainty:v31];

  [(PCDynamicsWindowContext *)v32 travelTimeSec];
  v34 = v33;
  v35 = [(PCLocationOnlyDirectionScaleFactorEstimator *)self cfg];
  [v35 minTravelTimeSec];
  v37 = v36;

  if (v34 >= v37)
  {
    startFix = [(PCDynamicsWindowContext *)v32 startFix];

    if (startFix)
    {
      v46 = 0x1E83B7000uLL;
      startFix2 = [(PCDynamicsWindowContext *)v32 startFix];
      location = [startFix2 location];
      v49 = [PCLocationUtils cartesianFromProtoLocation:location];

      [v49 distanceTo:locationCopy];
      v51 = v50;
      v52 = [(PCLocationOnlyDirectionScaleFactorEstimator *)self cfg];
      [v52 minReliableDistanceM];
      v54 = v53;

      if (v51 >= v54)
      {
        v90 = v49;
        v91 = historyCopy;
        v96 = [PCLocationUtils vectorFrom:v49 to:locationCopy];
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        v92 = candidatesCopy;
        v58 = candidatesCopy;
        v59 = dictionary;
        obj = [v58 objectEnumerator];
        v98 = [obj countByEnumeratingWithState:&v99 objects:v115 count:16];
        if (v98)
        {
          v60 = *v100;
          v93 = v59;
          v95 = *v100;
          do
          {
            for (i = 0; i != v98; ++i)
            {
              if (*v100 != v60)
              {
                objc_enumerationMutation(obj);
              }

              v62 = *(*(&v99 + 1) + 8 * i);
              coordinate = [v62 coordinate];
              [locationCopy distanceTo:coordinate];
              v65 = v64;

              v66 = [(PCLocationOnlyDirectionScaleFactorEstimator *)self cfg];
              [v66 minDistanceToDestinationM];
              v68 = v67;

              if (v65 >= v68)
              {
                v71 = *(v46 + 2176);
                coordinate2 = [v62 coordinate];
                v69 = [v71 vectorFrom:locationCopy to:coordinate2];

                [*(v46 + 2176) cosineSimilarityBetween:v96 and:v69];
                v74 = v73;
                [PCDynamicsUtils directionFactorFromCosineSimilarity:?];
                v76 = 1.0 - v75;
                [(PCDynamicsWindowContext *)v32 rampWeight];
                v78 = 1.0 - v76 * v77;
                v79 = [MEMORY[0x1E696AD98] numberWithDouble:v78];
                visitIdentifier = [v62 visitIdentifier];
                [v59 setObject:v79 forKeyedSubscript:visitIdentifier];

                visitIdentifier2 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
                if (os_log_type_enabled(visitIdentifier2, OS_LOG_TYPE_INFO))
                {
                  v81 = NSStringFromSelector(a2);
                  v82 = v46;
                  selfCopy = self;
                  v84 = locationCopy;
                  loiIdentifier = [v62 loiIdentifier];
                  v86 = [PCAlgorithmsCommonUtils uuidStringFromData:loiIdentifier];
                  [(PCDynamicsWindowContext *)v32 travelTimeSec];
                  *buf = 138413570;
                  v104 = v81;
                  v105 = 2112;
                  v106 = v86;
                  v107 = 2048;
                  v108 = v74;
                  v109 = 2048;
                  v110 = v87;
                  v111 = 2048;
                  v112 = v51;
                  v113 = 2048;
                  v114 = v78;
                  _os_log_impl(&dword_1CEE74000, visitIdentifier2, OS_LOG_TYPE_INFO, "[%@] Computed direction factor for loiID: %@, cosine similarity: %.2f, travel duration(s), %.2f, travel Distance(m), %.2f, direction scale factor: %.2f", buf, 0x3Eu);

                  locationCopy = v84;
                  self = selfCopy;
                  v46 = v82;
                  v59 = v93;
                }

                v60 = v95;
              }

              else
              {
                v69 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
                visitIdentifier2 = [v62 visitIdentifier];
                [v59 setObject:v69 forKeyedSubscript:visitIdentifier2];
              }
            }

            v98 = [obj countByEnumeratingWithState:&v99 objects:v115 count:16];
          }

          while (v98);
        }

        v44 = [v59 copy];
        historyCopy = v91;
        candidatesCopy = v92;
        v49 = v90;
      }

      else
      {
        v55 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v56 = NSStringFromSelector(a2);
          *buf = 138412546;
          v104 = v56;
          v105 = 2048;
          v106 = *&v51;
          _os_log_impl(&dword_1CEE74000, v55, OS_LOG_TYPE_INFO, "[%@] skip Direction scal factor, traveled distance: %.2f too low", buf, 0x16u);
        }

        v44 = [PCDynamicsUtils neutralScaleFactorsForDataMap:candidatesCopy];
      }

      goto LABEL_35;
    }

    v38 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = NSStringFromSelector(a2);
      *buf = 138412290;
      v104 = v39;
      v41 = "[%@] skip Direction scal factor, can't find window start fix";
      v42 = v38;
      v43 = 12;
      goto LABEL_19;
    }
  }

  else
  {
    v38 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = NSStringFromSelector(a2);
      [(PCDynamicsWindowContext *)v32 travelTimeSec];
      *buf = 138412546;
      v104 = v39;
      v105 = 2048;
      v106 = v40;
      v41 = "[%@] skip Direction scal factor, travelTime: %.2f too short";
      v42 = v38;
      v43 = 22;
LABEL_19:
      _os_log_impl(&dword_1CEE74000, v42, OS_LOG_TYPE_INFO, v41, buf, v43);
    }
  }

  v44 = [PCDynamicsUtils neutralScaleFactorsForDataMap:candidatesCopy];
LABEL_35:

LABEL_36:
  v88 = *MEMORY[0x1E69E9840];

  return v44;
}

@end