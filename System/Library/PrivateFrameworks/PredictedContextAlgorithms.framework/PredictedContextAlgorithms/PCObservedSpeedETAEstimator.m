@interface PCObservedSpeedETAEstimator
- (PCObservedSpeedETAEstimator)initWithConfig:(id)a3;
- (id)computeScaleForCandidates:(id)a3 locationHistory:(id)a4 motionActivity:(id)a5 currentLocation:(id)a6 currentTime:(double)a7 lastVisitExitTime:(double)a8 isInTransition:(BOOL)a9;
@end

@implementation PCObservedSpeedETAEstimator

- (PCObservedSpeedETAEstimator)initWithConfig:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PCObservedSpeedETAEstimator;
  v6 = [(PCObservedSpeedETAEstimator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cfg, a3);
    v8 = v7;
  }

  return v7;
}

- (id)computeScaleForCandidates:(id)a3 locationHistory:(id)a4 motionActivity:(id)a5 currentLocation:(id)a6 currentTime:(double)a7 lastVisitExitTime:(double)a8 isInTransition:(BOOL)a9
{
  v141 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v110 = a6;
  if ([v16 count] <= 1)
  {
    v17 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = NSStringFromSelector(a2);
      *buf = 138412546;
      v119 = v18;
      v120 = 2048;
      v121 = [v16 count];
      v19 = "[%@] skip ETA scal factor, not enough buffered location, location count, %lu";
      v20 = v17;
      v21 = 22;
LABEL_10:
      _os_log_impl(&dword_1CEE74000, v20, OS_LOG_TYPE_INFO, v19, buf, v21);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (!a9)
  {
    v17 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = NSStringFromSelector(a2);
      *buf = 138412290;
      v119 = v18;
      v19 = "[%@] skip ETA scal factor, not in transition";
      v20 = v17;
      v21 = 12;
      goto LABEL_10;
    }

LABEL_11:

    v43 = [PCDynamicsUtils neutralScaleFactorsForDataMap:v15];
    goto LABEL_22;
  }

  v22 = [PCDynamicsWindowContext alloc];
  v23 = [(PCObservedSpeedETAEstimator *)self cfg];
  [v23 minTravelTimeSec];
  v25 = v24;
  v26 = [(PCObservedSpeedETAEstimator *)self cfg];
  [v26 fullEffectTimeSec];
  v28 = v27;
  v29 = [(PCObservedSpeedETAEstimator *)self cfg];
  [v29 maxLocationUncertaintyM];
  v31 = [(PCDynamicsWindowContext *)v22 initWithRawHistory:v16 currentTime:a7 lastVisitExitTime:a8 minTravelTime:v25 fullEffectTime:v28 maxUncertainty:v30];

  [(PCDynamicsWindowContext *)v31 travelTimeSec];
  v33 = v32;
  v34 = [(PCObservedSpeedETAEstimator *)self cfg];
  [v34 minTravelTimeSec];
  v36 = v35;

  if (v33 >= v36)
  {
    v44 = [(PCDynamicsWindowContext *)v31 startFix];

    if (v44)
    {
      v45 = [(PCDynamicsWindowContext *)v31 startFix];
      [v45 timeCFAbsolute];
      v47 = a7 - v46;

      if (v47 >= 1.0)
      {
        v50 = [(PCDynamicsWindowContext *)v31 startFix];
        v51 = [v50 location];
        v52 = [PCLocationUtils cartesianFromProtoLocation:v51];

        v112 = v52;
        [v52 distanceTo:v110];
        v54 = v53 / v47;
        v55 = [(PCObservedSpeedETAEstimator *)self cfg];
        [v55 minReliableSpeedM_Sec];
        v57 = v56;

        if (v54 >= v57)
        {
          v109 = v31;
          v104 = v16;
          v43 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v15, "count")}];
          v114 = 0u;
          v115 = 0u;
          v116 = 0u;
          v117 = 0u;
          v105 = v15;
          v60 = [v15 objectEnumerator];
          v61 = [v60 countByEnumeratingWithState:&v114 objects:v140 count:16];
          v62 = v110;
          if (v61)
          {
            v63 = v61;
            v64 = *v115;
            v65 = 0.1;
            v66 = 1.0;
            v107 = v60;
            v108 = v43;
            do
            {
              v67 = 0;
              v113 = v63;
              do
              {
                if (*v115 != v64)
                {
                  objc_enumerationMutation(v60);
                }

                v68 = *(*(&v114 + 1) + 8 * v67);
                v69 = [v68 coordinate];
                [v62 distanceTo:v69];
                v71 = v70;

                v72 = [(PCObservedSpeedETAEstimator *)self cfg];
                [v72 minDistanceToDestinationM];
                v74 = v73;

                v75 = 1.0;
                if (v71 >= v74)
                {
                  v76 = [v68 coordinate];
                  [v112 distanceTo:v76];
                  v78 = v77;

                  v79 = v78 / v54;
                  if (v78 / v54 <= 0.0)
                  {
                    v90 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
                    v75 = 1.0;
                    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
                    {
                      v101 = NSStringFromSelector(a2);
                      *buf = 138412290;
                      v119 = v101;
                      _os_log_impl(&dword_1CEE74000, v90, OS_LOG_TYPE_ERROR, "[%@] skip ETA scal factor, invalid original ETA", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v80 = v71 / v54;
                    v81 = v71 / v54 / v79;
                    v82 = [(PCObservedSpeedETAEstimator *)self cfg];
                    [v82 etaPenaltyTriggerRatio];
                    v84 = v83;
                    v85 = [(PCObservedSpeedETAEstimator *)self cfg];
                    [v85 etaPenaltyRatioRange];
                    [PCDynamicsUtils smoothPenaltyForETAGrowth:v81 graceRatio:v84 penaltyRange:v86 minScaleFactor:v65];
                    v88 = v87;

                    [(PCDynamicsWindowContext *)v109 rampWeight];
                    v75 = v66 - v89 * (v66 - v88);
                    v90 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
                    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
                    {
                      v91 = NSStringFromSelector(a2);
                      v92 = [v68 loiIdentifier];
                      v93 = [PCAlgorithmsCommonUtils uuidStringFromData:v92];
                      [(PCDynamicsWindowContext *)v109 travelTimeSec];
                      v94 = v65;
                      v96 = v95;
                      [(PCDynamicsWindowContext *)v109 startTime];
                      v106 = v81;
                      v97 = v54;
                      v99 = v98;
                      [(PCDynamicsWindowContext *)v109 rampWeight];
                      *buf = 138414850;
                      v119 = v91;
                      v120 = 2112;
                      v121 = v93;
                      v122 = 2048;
                      v123 = v96;
                      v65 = v94;
                      v66 = 1.0;
                      v124 = 2048;
                      v125 = v99;
                      v54 = v97;
                      v126 = 2048;
                      v127 = v97;
                      v128 = 2048;
                      v129 = v80;
                      v130 = 2048;
                      v131 = v79;
                      v132 = 2048;
                      v133 = v106;
                      v134 = 2048;
                      v135 = v88;
                      v136 = 2048;
                      v137 = v100;
                      v138 = 2048;
                      v139 = v75;
                      _os_log_impl(&dword_1CEE74000, v90, OS_LOG_TYPE_INFO, "[%@] LOI %@: travelTime, %.0f, windowStart, %.0f, speed, %.2f, currentETA, %.0f, originalETA, %.0f, eta growth, %.2f, initial scale factor, %.2f, travel time weight, %.2f, final factor, %.2f", buf, 0x70u);

                      v62 = v110;
                    }

                    v60 = v107;
                    v43 = v108;
                  }

                  v63 = v113;
                }

                v102 = [MEMORY[0x1E696AD98] numberWithDouble:v75];
                v103 = [v68 visitIdentifier];
                [v43 setObject:v102 forKeyedSubscript:v103];

                ++v67;
              }

              while (v63 != v67);
              v63 = [v60 countByEnumeratingWithState:&v114 objects:v140 count:16];
            }

            while (v63);
          }

          v16 = v104;
          v15 = v105;
          v31 = v109;
        }

        else
        {
          v58 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            v59 = NSStringFromSelector(a2);
            *buf = 138412290;
            v119 = v59;
            _os_log_impl(&dword_1CEE74000, v58, OS_LOG_TYPE_INFO, "[%@] skip ETA scal factor, observed speed too low", buf, 0xCu);
          }

          v43 = [PCDynamicsUtils neutralScaleFactorsForDataMap:v15];
        }

        goto LABEL_21;
      }

      v37 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      v38 = NSStringFromSelector(a2);
      *buf = 138412290;
      v119 = v38;
      v40 = "[%@] skip ETA scal factor, can't find window start time";
    }

    else
    {
      v37 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      v38 = NSStringFromSelector(a2);
      *buf = 138412290;
      v119 = v38;
      v40 = "[%@] skip ETA scal factor, can't find window start fix";
    }

    v41 = v37;
    v42 = 12;
    goto LABEL_19;
  }

  v37 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = NSStringFromSelector(a2);
    [(PCDynamicsWindowContext *)v31 travelTimeSec];
    *buf = 138412546;
    v119 = v38;
    v120 = 2048;
    v121 = v39;
    v40 = "[%@] skip ETA scal factor, travelTime: %.2f too short";
    v41 = v37;
    v42 = 22;
LABEL_19:
    _os_log_impl(&dword_1CEE74000, v41, OS_LOG_TYPE_INFO, v40, buf, v42);
  }

LABEL_20:

  v43 = [PCDynamicsUtils neutralScaleFactorsForDataMap:v15];
LABEL_21:

LABEL_22:
  v48 = *MEMORY[0x1E69E9840];

  return v43;
}

@end