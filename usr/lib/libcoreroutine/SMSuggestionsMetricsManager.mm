@interface SMSuggestionsMetricsManager
+ (id)stringFromSuggestionsMetricsEvent:(unint64_t)a3;
- (BOOL)_collectAndSubmitMetricsUponNotification:(id)a3;
- (BOOL)_submitMetrics:(id)a3 event:(unint64_t)a4 error:(id *)a5;
- (SMSuggestionsMetricsManager)initWithDefaultsManager:(id)a3 deviceLocationPredictor:(id)a4 sessionStore:(id)a5 suggestionsStore:(id)a6;
- (id)_computeDetailsMetricsWithError:(id *)a3;
- (id)_computeMetricsForEvent:(unint64_t)a3 error:(id *)a4;
- (id)_computeUsageMetricsWithError:(id *)a3;
- (id)_computeWorkoutAlwaysPromptMetricsWithError:(id *)a3;
- (id)_getNPLOIsWithOnlyHighConfidence:(BOOL)a3 location:(id)a4 date:(id)a5 error:(id *)a6;
- (id)_getSelectedSessionForSuggestion:(id)a3 error:(id *)a4;
- (id)_getSessionConfigurationsForSuggestion:(id)a3 timeWindow:(double)a4 error:(id *)a5;
- (id)_getSuggestionsConsideredMetricsWithError:(id *)a3;
- (id)_getSuggestionsPresentedMetricsWithError:(id *)a3;
- (id)_getSuggestionsSelectedMetricsWithError:(id *)a3;
- (int64_t)_getSuggestionsCountConsideredForPastDate:(id)a3 endDate:(id)a4 error:(id *)a5;
- (int64_t)_getSuggestionsCountPresentedForPastDate:(id)a3 endDate:(id)a4 error:(id *)a5;
- (int64_t)_getSuggestionsCountSelectedForPastDate:(id)a3 endDate:(id)a4 error:(id *)a5;
- (void)_setup;
- (void)_submitWorkoutAlwaysPromptResponseMetricUponNotification:(id)a3;
- (void)collectAndSubmitMetricsUponNotification:(id)a3;
- (void)sendSuggestionsConversionEventForSuggestion:(id)a3 selected:(BOOL)a4 sessionStarted:(BOOL)a5;
- (void)setup;
- (void)submitWorkoutAlwaysPromptResponseMetricUponNotification:(id)a3;
@end

@implementation SMSuggestionsMetricsManager

- (SMSuggestionsMetricsManager)initWithDefaultsManager:(id)a3 deviceLocationPredictor:(id)a4 sessionStore:(id)a5 suggestionsStore:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SMSuggestionsMetricsManager;
  v15 = [(RTNotifier *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_defaultsManager, a3);
    objc_storeStrong(&v16->_deviceLocationPredictor, a4);
    objc_storeStrong(&v16->_sessionStore, a5);
    objc_storeStrong(&v16->_suggestionsStore, a6);
    [(SMSuggestionsMetricsManager *)v16 setup];
  }

  return v16;
}

- (void)setup
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__SMSuggestionsMetricsManager_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_setup
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_collectAndSubmitMetricsUponNotification_ name:@"RTMetricManagerDailyMetricNotification" object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_submitWorkoutAlwaysPromptResponseMetricUponNotification_ name:@"SMSubmitSuggesionsWorkoutAlwaysPromptResponseNotification" object:0];
}

- (void)submitWorkoutAlwaysPromptResponseMetricUponNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__SMSuggestionsMetricsManager_submitWorkoutAlwaysPromptResponseMetricUponNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_submitWorkoutAlwaysPromptResponseMetricUponNotification:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 138412290;
    v7 = v5;
    _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@, unexpected call to submit workout always prompt response on non-watch", &v6, 0xCu);
  }
}

- (void)collectAndSubmitMetricsUponNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SMSuggestionsMetricsManager_collectAndSubmitMetricsUponNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (BOOL)_collectAndSubmitMetricsUponNotification:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 isEqualToString:@"RTMetricManagerDailyMetricNotification"];

  if ((v6 & 1) == 0)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v27 = [v4 name];
      *buf = 138412802;
      v39 = v27;
      v40 = 2080;
      v41 = "[SMSuggestionsMetricsManager _collectAndSubmitMetricsUponNotification:]";
      v42 = 1024;
      v43 = 177;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }

  v8 = [v4 name];
  v9 = [v8 isEqualToString:@"RTMetricManagerDailyMetricNotification"];

  if (v9)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = [&unk_2845A1718 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v29 = v4;
      v30 = 0;
      v12 = 0;
      v13 = *v34;
      while (1)
      {
        v14 = 0;
        do
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(&unk_2845A1718);
          }

          v15 = *(*(&v33 + 1) + 8 * v14);
          v16 = objc_autoreleasePoolPush();
          v17 = [v15 unsignedIntValue];
          v32 = v12;
          v18 = [(SMSuggestionsMetricsManager *)self _computeMetricsForEvent:v17 error:&v32];
          v19 = v32;

          if (v19)
          {
            v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
LABEL_20:
              v23 = [v19 localizedDescription];
              *buf = 138412290;
              v39 = v23;
              _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "error, %@", buf, 0xCu);
            }

LABEL_16:

            v12 = v19;
            goto LABEL_17;
          }

          v21 = [v15 unsignedIntValue];
          v31 = 0;
          v30 = [(SMSuggestionsMetricsManager *)self _submitMetrics:v18 event:v21 error:&v31];
          v22 = v31;
          if (v22)
          {
            v19 = v22;
            v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_20;
            }

            goto LABEL_16;
          }

          v12 = 0;
LABEL_17:

          objc_autoreleasePoolPop(v16);
          ++v14;
        }

        while (v11 != v14);
        v24 = [&unk_2845A1718 countByEnumeratingWithState:&v33 objects:v37 count:16];
        v11 = v24;
        if (!v24)
        {
          goto LABEL_26;
        }
      }
    }

    v25 = 0;
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v29 = v4;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v28 = [v4 name];
      *buf = 138412290;
      v39 = v28;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "unknown notification name, %@", buf, 0xCu);
    }

    v30 = 0;
LABEL_26:

    v4 = v29;
    v25 = v30;
  }

  return v25;
}

- (id)_computeMetricsForEvent:(unint64_t)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  switch(a3)
  {
    case 3uLL:
      v16 = 0;
      v5 = [(SMSuggestionsMetricsManager *)self _computeWorkoutAlwaysPromptMetricsWithError:&v16];
      v6 = v16;
LABEL_7:
      v7 = v6;
      if (!a4)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    case 2uLL:
      v17 = 0;
      v5 = [(SMSuggestionsMetricsManager *)self _computeUsageMetricsWithError:&v17];
      v6 = v17;
      goto LABEL_7;
    case 1uLL:
      v18 = 0;
      v5 = [(SMSuggestionsMetricsManager *)self _computeDetailsMetricsWithError:&v18];
      v6 = v18;
      goto LABEL_7;
  }

  v10 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277D4ACD0];
  v19 = *MEMORY[0x277CCA450];
  v12 = MEMORY[0x277CCACA8];
  v13 = [objc_opt_class() stringFromSuggestionsMetricsEvent:a3];
  v14 = [v12 stringWithFormat:@"requires a valid suggestions metric event. Passed, %@", v13];
  v20[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v7 = [v10 errorWithDomain:v11 code:7 userInfo:v15];

  v5 = 0;
  if (a4)
  {
LABEL_8:
    v8 = v7;
    *a4 = v7;
  }

LABEL_9:

  return v5;
}

- (id)_computeDetailsMetricsWithError:(id *)a3
{
  v246[1] = *MEMORY[0x277D85DE8];
  v231 = 0;
  v232 = &v231;
  v233 = 0x3032000000;
  v234 = __Block_byref_object_copy__189;
  v235 = __Block_byref_object_dispose__189;
  v236 = 0;
  v3 = [MEMORY[0x277CBEAA8] date];
  v164 = [v3 dateByAddingTimeInterval:-86400.0];
  v163 = v3;
  v178 = objc_opt_new();
  v4 = objc_alloc(MEMORY[0x277D4AC18]);
  v5 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v164 endDate:v163];
  v162 = [v4 initWithIncludeSuppressed:1 sortByCreationDate:1 ascending:1 dateInterval:v5 filteredToSuggestionTriggers:0 filteredToSuggestionUserTypes:0 filteredToSessionTypes:0];

  v6 = dispatch_semaphore_create(0);
  v225 = 0;
  v226 = &v225;
  v227 = 0x3032000000;
  v228 = __Block_byref_object_copy__189;
  v229 = __Block_byref_object_dispose__189;
  v230 = 0;
  v7 = [(SMSuggestionsMetricsManager *)self suggestionsStore];
  v221[0] = MEMORY[0x277D85DD0];
  v221[1] = 3221225472;
  v221[2] = __63__SMSuggestionsMetricsManager__computeDetailsMetricsWithError___block_invoke;
  v221[3] = &unk_2788C4490;
  v223 = &v225;
  v224 = &v231;
  v8 = v6;
  v222 = v8;
  [v7 fetchSuggestionsWithOptions:v162 handler:v221];

  dsema = v8;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsema, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_241_0];
    v16 = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [v16 filteredArrayUsingPredicate:v15];
    v18 = [v17 firstObject];

    [v14 submitToCoreAnalytics:v18 type:1 duration:v13];
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v246[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v246 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

    if (v22)
    {
      v23 = v22;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = v22;
  v161 = v24;
  if (a3 && v24)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v154 = objc_opt_class();
      v155 = NSStringFromClass(v154);
      v156 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v155;
      v242 = 2112;
      v243 = v156;
      v244 = 2112;
      v245 = v161;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v26 = v161;
    goto LABEL_148;
  }

  if (!a3 || !v232[5])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v28 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = NSStringFromSelector(a2);
        v32 = [v226[5] count];
        *buf = 138412802;
        *&buf[4] = v30;
        v242 = 2112;
        v243 = v31;
        v244 = 2048;
        v245 = v32;
        _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%@, %@, fetchedSuggestions with count, %lu", buf, 0x20u);
      }
    }

    v219 = 0u;
    v220 = 0u;
    v217 = 0u;
    v218 = 0u;
    obj = v226[5];
    v170 = [obj countByEnumeratingWithState:&v217 objects:v240 count:16];
    if (!v170)
    {
LABEL_146:

      if (!a3)
      {
        goto LABEL_149;
      }

      goto LABEL_147;
    }

    v169 = *v218;
LABEL_23:
    v189 = 0;
LABEL_24:
    if (*v218 != v169)
    {
      objc_enumerationMutation(obj);
    }

    v192 = *(*(&v217 + 1) + 8 * v189);
    context = objc_autoreleasePoolPush();
    v191 = objc_opt_new();
    v33 = v232[5];
    v232[5] = 0;

    v34 = [v192 sourceLocation];
    v35 = [v192 creationDate];
    v36 = (v232 + 5);
    v216 = v232[5];
    v37 = [(SMSuggestionsMetricsManager *)self _getNPLOIsWithOnlyHighConfidence:1 location:v34 date:v35 error:&v216];
    objc_storeStrong(v36, v216);

    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v190 = v37;
    v38 = [v190 countByEnumeratingWithState:&v212 objects:v239 count:16];
    if (!v38)
    {
      v196 = 0;
      goto LABEL_47;
    }

    v196 = 0;
    v39 = *v213;
    while (1)
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v213 != v39)
        {
          objc_enumerationMutation(v190);
        }

        v41 = *(*(&v212 + 1) + 8 * i);
        v42 = objc_autoreleasePoolPush();
        *buf = 0;
        v246[0] = 0;
        v210 = 0.0;
        v211 = 0.0;
        v43 = [v41 locationOfInterest];
        v44 = [v43 location];
        [v44 latitude];
        v45 = [v41 locationOfInterest];
        v46 = [v45 location];
        [v46 longitude];
        RTCommonCalculateBoundingBox();

        v47 = [v192 destinationLocation];
        if (!v47)
        {
          goto LABEL_34;
        }

        v48 = *buf;
        v49 = [v192 destinationLocation];
        [v49 latitude];
        if (v48 > v50)
        {

LABEL_34:
          v51 = 0;
          goto LABEL_42;
        }

        v52 = [v192 destinationLocation];
        [v52 latitude];
        if (v53 <= v211)
        {
          v54 = *v246;
          v55 = [v192 destinationLocation];
          [v55 longitude];
          if (v54 <= v56)
          {
            v57 = [v192 destinationLocation];
            [v57 longitude];
            v51 = v58 <= v210;
          }

          else
          {
            v51 = 0;
          }
        }

        else
        {
          v51 = 0;
        }

        v196 |= v51;
LABEL_42:
        objc_autoreleasePoolPop(v42);
        if (v51)
        {
          goto LABEL_47;
        }
      }

      v38 = [v190 countByEnumeratingWithState:&v212 objects:v239 count:16];
      if (!v38)
      {
LABEL_47:

        v59 = v232[5];
        if (v59)
        {
          v60 = 0;
        }

        else
        {
          v177 = [MEMORY[0x277CCABB0] numberWithBool:v196 & 1];
          v60 = v177;
        }

        [v191 setObject:v60 forKeyedSubscript:@"nploi_match_historicalSessionDestination"];
        if (!v59)
        {
        }

        v61 = v232[5];
        if (v61)
        {
          v62 = 0;
        }

        else
        {
          v176 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v190, "count")}];
          v62 = v176;
        }

        [v191 setObject:v62 forKeyedSubscript:@"nploiCount"];
        if (!v61)
        {
        }

        v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v192, "suggestionUserType")}];
        [v191 setObject:v63 forKeyedSubscript:@"policy"];

        v64 = v232[5];
        v232[5] = 0;

        v65 = (v232 + 5);
        v209 = v232[5];
        v66 = [(SMSuggestionsMetricsManager *)self _getSessionConfigurationsForSuggestion:v192 timeWindow:&v209 error:30.0];
        objc_storeStrong(v65, v209);
        v67 = v232[5];
        if (v67)
        {
          v68 = 0;
        }

        else
        {
          v175 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v66, "count")}];
          v68 = v175;
        }

        [v191 setObject:v68 forKeyedSubscript:@"previousSessionCount_plusMinus30"];
        if (!v67)
        {
        }

        v197 = objc_opt_new();
        v208 = 0u;
        v206 = 0u;
        v207 = 0u;
        v205 = 0u;
        v69 = v66;
        v70 = [v69 countByEnumeratingWithState:&v205 objects:v238 count:16];
        if (v70)
        {
          v71 = *v206;
          do
          {
            for (j = 0; j != v70; ++j)
            {
              if (*v206 != v71)
              {
                objc_enumerationMutation(v69);
              }

              v73 = *(*(&v205 + 1) + 8 * j);
              v74 = objc_autoreleasePoolPush();
              v75 = [v73 conversation];
              v76 = [v75 receiverHandles];
              v77 = [v76 count] > 1;

              if (v77)
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  goto LABEL_74;
                }

                v78 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
                {
                  v79 = objc_opt_class();
                  v80 = NSStringFromClass(v79);
                  v81 = NSStringFromSelector(a2);
                  *buf = 138412802;
                  *&buf[4] = v80;
                  v242 = 2112;
                  v243 = v81;
                  v244 = 2112;
                  v245 = v73;
                  _os_log_impl(&dword_2304B3000, v78, OS_LOG_TYPE_INFO, "%@, %@, not considering group sessions for metric, %@", buf, 0x20u);
                }
              }

              else
              {
                v82 = [v73 conversation];
                v83 = [v82 receiverHandles];
                v84 = [v83 firstObject];
                v85 = [v84 primaryHandle];

                if (!v85)
                {
                  goto LABEL_74;
                }

                v78 = [v73 conversation];
                v86 = [v78 receiverHandles];
                v87 = [v86 firstObject];
                v88 = [v87 primaryHandle];
                [v197 addObject:v88];
              }

LABEL_74:
              objc_autoreleasePoolPop(v74);
            }

            v70 = [v69 countByEnumeratingWithState:&v205 objects:v238 count:16];
          }

          while (v70);
        }

        v89 = v232[5];
        if (v89)
        {
          v90 = 0;
        }

        else
        {
          v174 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v197, "count")}];
          v90 = v174;
        }

        [v191 setObject:v90 forKeyedSubscript:@"previousSessionReceiverCount_plusMinus30"];
        if (!v89)
        {
        }

        v91 = v232[5];
        v232[5] = 0;

        v92 = (v232 + 5);
        v204 = v232[5];
        v93 = [(SMSuggestionsMetricsManager *)self _getSessionConfigurationsForSuggestion:v192 timeWindow:&v204 error:60.0];
        objc_storeStrong(v92, v204);

        v94 = v232[5];
        if (v94)
        {
          v95 = 0;
        }

        else
        {
          v173 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v93, "count")}];
          v95 = v173;
        }

        [v191 setObject:v95 forKeyedSubscript:@"previousSessionCount_plusMinus60"];
        if (!v94)
        {
        }

        v195 = objc_opt_new();

        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        v96 = v93;
        v97 = [v96 countByEnumeratingWithState:&v200 objects:v237 count:16];
        if (v97)
        {
          v98 = *v201;
          do
          {
            for (k = 0; k != v97; ++k)
            {
              if (*v201 != v98)
              {
                objc_enumerationMutation(v96);
              }

              v100 = *(*(&v200 + 1) + 8 * k);
              v101 = objc_autoreleasePoolPush();
              v102 = [v100 conversation];
              v103 = [v102 receiverHandles];
              v104 = [v103 count] > 1;

              if (v104)
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  goto LABEL_98;
                }

                v105 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
                {
                  v106 = objc_opt_class();
                  v107 = NSStringFromClass(v106);
                  v108 = NSStringFromSelector(a2);
                  *buf = 138412802;
                  *&buf[4] = v107;
                  v242 = 2112;
                  v243 = v108;
                  v244 = 2112;
                  v245 = v100;
                  _os_log_impl(&dword_2304B3000, v105, OS_LOG_TYPE_INFO, "%@, %@, not considering group sessions for metric, %@", buf, 0x20u);
                }
              }

              else
              {
                v109 = [v100 conversation];
                v110 = [v109 receiverHandles];
                v111 = [v110 firstObject];
                v112 = [v111 primaryHandle];

                if (!v112)
                {
                  goto LABEL_98;
                }

                v105 = [v100 conversation];
                v113 = [v105 receiverHandles];
                v114 = [v113 firstObject];
                v115 = [v114 primaryHandle];
                [v195 addObject:v115];
              }

LABEL_98:
              objc_autoreleasePoolPop(v101);
            }

            v97 = [v96 countByEnumeratingWithState:&v200 objects:v237 count:16];
          }

          while (v97);
        }

        v116 = v232[5];
        if (v116)
        {
          v117 = 0;
        }

        else
        {
          v172 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v195, "count")}];
          v117 = v172;
        }

        [v191 setObject:v117 forKeyedSubscript:@"previousSessionReceiverCount_plusMinus60"];
        if (!v116)
        {
        }

        v118 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v192, "suppressionReason") == 1}];
        [v191 setObject:v118 forKeyedSubscript:@"suggestionPresented"];

        v119 = v232[5];
        v232[5] = 0;

        if ([v192 suppressionReason] == 1)
        {
          v120 = (v232 + 5);
          v199 = v232[5];
          v198 = [(SMSuggestionsMetricsManager *)self _getSelectedSessionForSuggestion:v192 error:&v199];
          objc_storeStrong(v120, v199);
        }

        else
        {
          v198 = 0;
        }

        v121 = v232[5];
        if (v121)
        {
          v122 = 0;
        }

        else
        {
          v171 = [MEMORY[0x277CCABB0] numberWithInt:v198 != 0];
          v122 = v171;
        }

        [v191 setObject:v122 forKeyedSubscript:@"suggestionSelected"];
        if (!v121)
        {
        }

        *buf = 0;
        v246[0] = 0;
        v210 = 0.0;
        v211 = 0.0;
        v123 = [v198 destination];
        v124 = [v123 location];
        [v124 latitude];
        v125 = [v198 destination];
        v126 = [v125 location];
        [v126 longitude];
        RTCommonCalculateBoundingBox();

        v127 = [v192 destinationLocation];
        if (v127)
        {
          v128 = *buf;
          v129 = [v192 destinationLocation];
          [v129 latitude];
          if (v128 <= v130)
          {
            v131 = [v192 destinationLocation];
            [v131 latitude];
            if (v132 <= v211)
            {
              v133 = *v246;
              v134 = [v192 destinationLocation];
              [v134 longitude];
              if (v133 <= v135)
              {
                v136 = [v192 destinationLocation];
                [v136 longitude];
                v180 = v137 > v210;
              }

              else
              {
                v180 = 1;
              }
            }

            else
            {
              v180 = 1;
            }
          }

          else
          {
            v180 = 1;
          }
        }

        else
        {
          v180 = 1;
        }

        v188 = [v192 buddy];
        v138 = [v188 phoneNumber];
        if (v138)
        {
          v186 = [v192 buddy];
          v181 = [v186 phoneNumber];
          v185 = [v198 conversation];
          v184 = [v185 receiverHandles];
          v183 = [v184 firstObject];
          v182 = [v183 primaryHandle];
          if ([v181 isEqualToString:v182])
          {
            v139 = 1;
            goto LABEL_133;
          }
        }

        v140 = [v192 buddy];
        v141 = [v140 email];
        if (v141)
        {
          v179 = [v192 buddy];
          v142 = [v179 email];
          v143 = [v198 conversation];
          v144 = [v143 receiverHandles];
          v145 = [v144 firstObject];
          v146 = [v145 primaryHandle];
          v139 = [v142 isEqualToString:v146];

          if (!v138)
          {

            goto LABEL_134;
          }

LABEL_133:

LABEL_134:
          if (v139)
          {
            v147 = v180;
LABEL_138:
            if (v198 && !v232[5])
            {
              v168 = [MEMORY[0x277CCABB0] numberWithBool:v147];
              v148 = 1;
              v149 = v168;
            }

            else
            {
              v148 = 0;
              v149 = 0;
            }

            [v191 setObject:v149 forKeyedSubscript:@"suggestionSelected_configurationModified"];
            if (v148)
            {
            }

            v150 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v192, "suppressionReason")}];
            [v191 setObject:v150 forKeyedSubscript:@"suppressionReason"];

            v151 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v192, "suggestionTrigger")}];
            [v191 setObject:v151 forKeyedSubscript:@"trigger"];

            [v178 addObject:v191];
            objc_autoreleasePoolPop(context);
            if (++v189 == v170)
            {
              v170 = [obj countByEnumeratingWithState:&v217 objects:v240 count:16];
              if (!v170)
              {
                goto LABEL_146;
              }

              goto LABEL_23;
            }

            goto LABEL_24;
          }
        }

        else
        {

          if (v138)
          {
            v139 = 0;
            goto LABEL_133;
          }
        }

        v147 = 1;
        goto LABEL_138;
      }
    }
  }

  v27 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v157 = objc_opt_class();
    v158 = NSStringFromClass(v157);
    v159 = NSStringFromSelector(a2);
    v160 = v232[5];
    *buf = 138412802;
    *&buf[4] = v158;
    v242 = 2112;
    v243 = v159;
    v244 = 2112;
    v245 = v160;
    _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
  }

LABEL_147:
  v26 = v232[5];
LABEL_148:
  *a3 = v26;
LABEL_149:
  v152 = v178;

  _Block_object_dispose(&v225, 8);
  _Block_object_dispose(&v231, 8);

  return v152;
}

void __63__SMSuggestionsMetricsManager__computeDetailsMetricsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_computeUsageMetricsWithError:(id *)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_new();
  v34 = 0;
  v7 = [(SMSuggestionsMetricsManager *)self _getSuggestionsConsideredMetricsWithError:&v34];
  v8 = v34;
  v9 = v8;
  if (a3 && v8)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromSelector(a2);
      *buf = 138412802;
      v40 = v24;
      v41 = 2112;
      v42 = v25;
      v43 = 2112;
      v44 = v9;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v11 = v9;
    *a3 = v9;
    v38 = v6;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  }

  else
  {
    [v6 addEntriesFromDictionary:v7];
    v33 = v9;
    v13 = [(SMSuggestionsMetricsManager *)self _getSuggestionsPresentedMetricsWithError:&v33];
    v14 = v33;

    if (a3 && v14)
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = NSStringFromSelector(a2);
        *buf = 138412802;
        v40 = v27;
        v41 = 2112;
        v42 = v28;
        v43 = 2112;
        v44 = v14;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v16 = v14;
      *a3 = v14;
      v37 = v6;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      v9 = v14;
    }

    else
    {
      [v6 addEntriesFromDictionary:v13];
      v32 = v14;
      v17 = [(SMSuggestionsMetricsManager *)self _getSuggestionsSelectedMetricsWithError:&v32];
      v9 = v32;

      if (a3 && v9)
      {
        v18 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          v31 = NSStringFromSelector(a2);
          *buf = 138412802;
          v40 = v30;
          v41 = 2112;
          v42 = v31;
          v43 = 2112;
          v44 = v9;
          _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
        }

        v19 = v9;
        *a3 = v9;
        v36 = v6;
        v20 = &v36;
      }

      else
      {
        [v6 addEntriesFromDictionary:v17];
        if (a3)
        {
          v21 = v9;
          *a3 = v9;
        }

        v35 = v6;
        v20 = &v35;
      }

      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    }
  }

  return v12;
}

- (id)_getSuggestionsConsideredMetricsWithError:(id *)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v6 dateByAddingTimeInterval:-86400.0];
  v8 = [v6 dateByAddingTimeInterval:-604800.0];
  v9 = [v6 dateByAddingTimeInterval:-2419200.0];
  v36 = 0;
  v10 = [(SMSuggestionsMetricsManager *)self _getSuggestionsCountConsideredForPastDate:v7 endDate:v6 error:&v36];
  v11 = v36;
  v12 = v11;
  if (a3 && v11)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      NSStringFromSelector(a2);
      v17 = v16 = v5;
      *buf = 138412802;
      v38 = v15;
      v39 = 2112;
      v40 = v17;
      v41 = 2112;
      v42 = v12;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);

      v5 = v16;
    }

    goto LABEL_15;
  }

  v33 = v5;
  v35 = v11;
  v18 = [(SMSuggestionsMetricsManager *)self _getSuggestionsCountConsideredForPastDate:v8 endDate:v6 error:&v35];
  v19 = v35;

  if (a3 && v19)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(a2);
      *buf = 138412802;
      v38 = v26;
      v39 = 2112;
      v40 = v27;
      v41 = 2112;
      v42 = v19;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v12 = v19;
LABEL_14:
    v5 = v33;
LABEL_15:

LABEL_16:
    v20 = v12;
    *a3 = v12;
    goto LABEL_17;
  }

  v34 = v19;
  v31 = [(SMSuggestionsMetricsManager *)self _getSuggestionsCountConsideredForPastDate:v9 endDate:v6 error:&v34];
  v12 = v34;

  if (a3 && v12)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(a2);
      *buf = 138412802;
      v38 = v29;
      v39 = 2112;
      v40 = v30;
      v41 = 2112;
      v42 = v12;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    goto LABEL_14;
  }

  if (v10 == -1)
  {
    [v33 setObject:0 forKeyedSubscript:@"suggestionsConsidered_daily"];
  }

  else
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    [v33 setObject:v22 forKeyedSubscript:@"suggestionsConsidered_daily"];
  }

  if (v18 == -1)
  {
    [v33 setObject:0 forKeyedSubscript:@"suggestionsConsidered_weekly"];
  }

  else
  {
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
    [v33 setObject:v23 forKeyedSubscript:@"suggestionsConsidered_weekly"];
  }

  if (v31 == -1)
  {
    v5 = v33;
    [v33 setObject:0 forKeyedSubscript:@"suggestionsConsidered_monthly"];
    if (a3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    v5 = v33;
    [v33 setObject:v24 forKeyedSubscript:@"suggestionsConsidered_monthly"];

    if (a3)
    {
      goto LABEL_16;
    }
  }

LABEL_17:

  return v5;
}

- (int64_t)_getSuggestionsCountConsideredForPastDate:(id)a3 endDate:(id)a4 error:(id *)a5
{
  v70[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", buf, 2u);
    }

    if (!a5)
    {
      goto LABEL_18;
    }

    v31 = _RTErrorInvalidParameterCreate(@"startDate");
LABEL_17:
    *a5 = v31;
    goto LABEL_18;
  }

  if (!v10)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate", buf, 2u);
    }

    if (!a5)
    {
      goto LABEL_18;
    }

    v31 = _RTErrorInvalidParameterCreate(@"endDate");
    goto LABEL_17;
  }

  if ([v9 compare:v10] == -1)
  {
    *buf = 0;
    v60 = buf;
    v61 = 0x3032000000;
    v62 = __Block_byref_object_copy__189;
    v63 = __Block_byref_object_dispose__189;
    v64 = 0;
    v12 = objc_alloc(MEMORY[0x277D4AC18]);
    v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v11];
    v50 = [v12 initWithIncludeSuppressed:1 sortByCreationDate:0 ascending:0 dateInterval:v13 filteredToSuggestionTriggers:0 filteredToSuggestionUserTypes:0 filteredToSessionTypes:0];

    v14 = dispatch_semaphore_create(0);
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    v15 = [(SMSuggestionsMetricsManager *)self suggestionsStore];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __87__SMSuggestionsMetricsManager__getSuggestionsCountConsideredForPastDate_endDate_error___block_invoke;
    v51[3] = &unk_2788C4528;
    v53 = &v55;
    v54 = buf;
    v16 = v14;
    v52 = v16;
    [v15 fetchSuggestionsCountWithOptions:v50 handler:v51];

    v17 = v16;
    v49 = [MEMORY[0x277CBEAA8] now];
    v18 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v17, v18))
    {
      v48 = [MEMORY[0x277CBEAA8] now];
      [v48 timeIntervalSinceDate:v49];
      v20 = v19;
      v47 = objc_opt_new();
      v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_241_0];
      v22 = [MEMORY[0x277CCACC8] callStackSymbols];
      v23 = [v22 filteredArrayUsingPredicate:v21];
      v24 = [v23 firstObject];

      [v47 submitToCoreAnalytics:v24 type:1 duration:v20];
      v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *v65 = 0;
        _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v65, 2u);
      }

      v26 = MEMORY[0x277CCA9B8];
      v70[0] = *MEMORY[0x277CCA450];
      *v65 = @"semaphore wait timeout";
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v70 count:1];
      v28 = [v26 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v27];

      if (v28)
      {
        v29 = v28;
      }
    }

    else
    {
      v28 = 0;
    }

    v35 = v28;
    v36 = v35;
    if (a5 && v35)
    {
      v37 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = NSStringFromSelector(a2);
        *v65 = 138412802;
        *&v65[4] = v41;
        v66 = 2112;
        v67 = v42;
        v68 = 2112;
        v69 = v36;
        _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v65, 0x20u);
      }

      v38 = v36;
      *a5 = v36;
    }

    else
    {
      if (!a5 || !*(v60 + 5))
      {
        v33 = v56[3];
        goto LABEL_33;
      }

      v39 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        v45 = NSStringFromSelector(a2);
        v46 = *(v60 + 5);
        *v65 = 138412802;
        *&v65[4] = v44;
        v66 = 2112;
        v67 = v45;
        v68 = 2112;
        v69 = v46;
        _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v65, 0x20u);
      }

      *a5 = *(v60 + 5);
    }

    v33 = -1;
LABEL_33:

    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(buf, 8);

    goto LABEL_19;
  }

LABEL_18:
  v33 = -1;
LABEL_19:

  return v33;
}

void __87__SMSuggestionsMetricsManager__getSuggestionsCountConsideredForPastDate_endDate_error___block_invoke(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_getSuggestionsPresentedMetricsWithError:(id *)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v6 dateByAddingTimeInterval:-86400.0];
  v8 = [v6 dateByAddingTimeInterval:-604800.0];
  v9 = [v6 dateByAddingTimeInterval:-2419200.0];
  v36 = 0;
  v10 = [(SMSuggestionsMetricsManager *)self _getSuggestionsCountPresentedForPastDate:v7 endDate:v6 error:&v36];
  v11 = v36;
  v12 = v11;
  if (a3 && v11)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      NSStringFromSelector(a2);
      v17 = v16 = v5;
      *buf = 138412802;
      v38 = v15;
      v39 = 2112;
      v40 = v17;
      v41 = 2112;
      v42 = v12;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);

      v5 = v16;
    }

    goto LABEL_15;
  }

  v33 = v5;
  v35 = v11;
  v18 = [(SMSuggestionsMetricsManager *)self _getSuggestionsCountPresentedForPastDate:v8 endDate:v6 error:&v35];
  v19 = v35;

  if (a3 && v19)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(a2);
      *buf = 138412802;
      v38 = v26;
      v39 = 2112;
      v40 = v27;
      v41 = 2112;
      v42 = v19;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v12 = v19;
LABEL_14:
    v5 = v33;
LABEL_15:

LABEL_16:
    v20 = v12;
    *a3 = v12;
    goto LABEL_17;
  }

  v34 = v19;
  v31 = [(SMSuggestionsMetricsManager *)self _getSuggestionsCountPresentedForPastDate:v9 endDate:v6 error:&v34];
  v12 = v34;

  if (a3 && v12)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(a2);
      *buf = 138412802;
      v38 = v29;
      v39 = 2112;
      v40 = v30;
      v41 = 2112;
      v42 = v12;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    goto LABEL_14;
  }

  if (v10 == -1)
  {
    [v33 setObject:0 forKeyedSubscript:@"suggestionsPresented_daily"];
  }

  else
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    [v33 setObject:v22 forKeyedSubscript:@"suggestionsPresented_daily"];
  }

  if (v18 == -1)
  {
    [v33 setObject:0 forKeyedSubscript:@"suggestionsPresented_weekly"];
  }

  else
  {
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
    [v33 setObject:v23 forKeyedSubscript:@"suggestionsPresented_weekly"];
  }

  if (v31 == -1)
  {
    v5 = v33;
    [v33 setObject:0 forKeyedSubscript:@"suggestionsPresented_monthly"];
    if (a3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    v5 = v33;
    [v33 setObject:v24 forKeyedSubscript:@"suggestionsPresented_monthly"];

    if (a3)
    {
      goto LABEL_16;
    }
  }

LABEL_17:

  return v5;
}

- (int64_t)_getSuggestionsCountPresentedForPastDate:(id)a3 endDate:(id)a4 error:(id *)a5
{
  v70[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", buf, 2u);
    }

    if (!a5)
    {
      goto LABEL_18;
    }

    v31 = _RTErrorInvalidParameterCreate(@"startDate");
LABEL_17:
    *a5 = v31;
    goto LABEL_18;
  }

  if (!v10)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate", buf, 2u);
    }

    if (!a5)
    {
      goto LABEL_18;
    }

    v31 = _RTErrorInvalidParameterCreate(@"endDate");
    goto LABEL_17;
  }

  if ([v9 compare:v10] == -1)
  {
    *buf = 0;
    v60 = buf;
    v61 = 0x3032000000;
    v62 = __Block_byref_object_copy__189;
    v63 = __Block_byref_object_dispose__189;
    v64 = 0;
    v12 = objc_alloc(MEMORY[0x277D4AC18]);
    v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v11];
    v50 = [v12 initWithIncludeSuppressed:0 sortByCreationDate:0 ascending:0 dateInterval:v13 filteredToSuggestionTriggers:0 filteredToSuggestionUserTypes:0 filteredToSessionTypes:0];

    v14 = dispatch_semaphore_create(0);
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    v15 = [(SMSuggestionsMetricsManager *)self suggestionsStore];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __86__SMSuggestionsMetricsManager__getSuggestionsCountPresentedForPastDate_endDate_error___block_invoke;
    v51[3] = &unk_2788C4528;
    v53 = &v55;
    v54 = buf;
    v16 = v14;
    v52 = v16;
    [v15 fetchSuggestionsCountWithOptions:v50 handler:v51];

    v17 = v16;
    v49 = [MEMORY[0x277CBEAA8] now];
    v18 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v17, v18))
    {
      v48 = [MEMORY[0x277CBEAA8] now];
      [v48 timeIntervalSinceDate:v49];
      v20 = v19;
      v47 = objc_opt_new();
      v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_241_0];
      v22 = [MEMORY[0x277CCACC8] callStackSymbols];
      v23 = [v22 filteredArrayUsingPredicate:v21];
      v24 = [v23 firstObject];

      [v47 submitToCoreAnalytics:v24 type:1 duration:v20];
      v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *v65 = 0;
        _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v65, 2u);
      }

      v26 = MEMORY[0x277CCA9B8];
      v70[0] = *MEMORY[0x277CCA450];
      *v65 = @"semaphore wait timeout";
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v70 count:1];
      v28 = [v26 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v27];

      if (v28)
      {
        v29 = v28;
      }
    }

    else
    {
      v28 = 0;
    }

    v35 = v28;
    v36 = v35;
    if (a5 && v35)
    {
      v37 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = NSStringFromSelector(a2);
        *v65 = 138412802;
        *&v65[4] = v41;
        v66 = 2112;
        v67 = v42;
        v68 = 2112;
        v69 = v36;
        _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v65, 0x20u);
      }

      v38 = v36;
      *a5 = v36;
    }

    else
    {
      if (!a5 || !*(v60 + 5))
      {
        v33 = v56[3];
        goto LABEL_33;
      }

      v39 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        v45 = NSStringFromSelector(a2);
        v46 = *(v60 + 5);
        *v65 = 138412802;
        *&v65[4] = v44;
        v66 = 2112;
        v67 = v45;
        v68 = 2112;
        v69 = v46;
        _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v65, 0x20u);
      }

      *a5 = *(v60 + 5);
    }

    v33 = -1;
LABEL_33:

    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(buf, 8);

    goto LABEL_19;
  }

LABEL_18:
  v33 = -1;
LABEL_19:

  return v33;
}

void __86__SMSuggestionsMetricsManager__getSuggestionsCountPresentedForPastDate_endDate_error___block_invoke(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_getSuggestionsSelectedMetricsWithError:(id *)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v6 dateByAddingTimeInterval:-86400.0];
  v8 = [v6 dateByAddingTimeInterval:-604800.0];
  v9 = [v6 dateByAddingTimeInterval:-2419200.0];
  v36 = 0;
  v10 = [(SMSuggestionsMetricsManager *)self _getSuggestionsCountSelectedForPastDate:v7 endDate:v6 error:&v36];
  v11 = v36;
  v12 = v11;
  if (a3 && v11)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      NSStringFromSelector(a2);
      v17 = v16 = v5;
      *buf = 138412802;
      v38 = v15;
      v39 = 2112;
      v40 = v17;
      v41 = 2112;
      v42 = v12;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);

      v5 = v16;
    }

    goto LABEL_15;
  }

  v33 = v5;
  v35 = v11;
  v18 = [(SMSuggestionsMetricsManager *)self _getSuggestionsCountSelectedForPastDate:v8 endDate:v6 error:&v35];
  v19 = v35;

  if (a3 && v19)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(a2);
      *buf = 138412802;
      v38 = v26;
      v39 = 2112;
      v40 = v27;
      v41 = 2112;
      v42 = v19;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v12 = v19;
LABEL_14:
    v5 = v33;
LABEL_15:

LABEL_16:
    v20 = v12;
    *a3 = v12;
    goto LABEL_17;
  }

  v34 = v19;
  v31 = [(SMSuggestionsMetricsManager *)self _getSuggestionsCountSelectedForPastDate:v9 endDate:v6 error:&v34];
  v12 = v34;

  if (a3 && v12)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(a2);
      *buf = 138412802;
      v38 = v29;
      v39 = 2112;
      v40 = v30;
      v41 = 2112;
      v42 = v12;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    goto LABEL_14;
  }

  if (v10 == -1)
  {
    [v33 setObject:0 forKeyedSubscript:@"suggestionsSelected_daily"];
  }

  else
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    [v33 setObject:v22 forKeyedSubscript:@"suggestionsSelected_daily"];
  }

  if (v18 == -1)
  {
    [v33 setObject:0 forKeyedSubscript:@"suggestionsSelected_weekly"];
  }

  else
  {
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
    [v33 setObject:v23 forKeyedSubscript:@"suggestionsSelected_weekly"];
  }

  if (v31 == -1)
  {
    v5 = v33;
    [v33 setObject:0 forKeyedSubscript:@"suggestionsSelected_monthly"];
    if (a3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    v5 = v33;
    [v33 setObject:v24 forKeyedSubscript:@"suggestionsSelected_monthly"];

    if (a3)
    {
      goto LABEL_16;
    }
  }

LABEL_17:

  return v5;
}

- (int64_t)_getSuggestionsCountSelectedForPastDate:(id)a3 endDate:(id)a4 error:(id *)a5
{
  v171[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v124 = v10;
  v125 = v9;
  if (!v9)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", buf, 2u);
    }

    if (!a5)
    {
      goto LABEL_18;
    }

    v32 = _RTErrorInvalidParameterCreate(@"startDate");
LABEL_17:
    *a5 = v32;
    goto LABEL_18;
  }

  if (!v10)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate", buf, 2u);
    }

    if (!a5)
    {
      goto LABEL_18;
    }

    v32 = _RTErrorInvalidParameterCreate(@"endDate");
    goto LABEL_17;
  }

  if ([v9 compare:v10] != -1)
  {
LABEL_18:
    v34 = -1;
    goto LABEL_19;
  }

  context = self;
  aSelector = a2;
  *buf = 0;
  v151 = buf;
  v152 = 0x3032000000;
  v153 = __Block_byref_object_copy__189;
  v154 = __Block_byref_object_dispose__189;
  v155 = 0;
  v11 = objc_alloc(MEMORY[0x277D4AC18]);
  v12 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v124];
  v119 = *MEMORY[0x277D4AF10];
  v116 = [v11 initWithBatchSize:*MEMORY[0x277D4AF10] fetchLimit:10000 offset:*MEMORY[0x277D4AF10] includeSuppressed:0 sortByCreationDate:1 ascending:1 dateInterval:v12 filteredToSuggestionTriggers:0 filteredToSuggestionUserTypes:0 filteredToSessionTypes:0];

  v13 = dispatch_semaphore_create(0);
  v144 = 0;
  v145 = &v144;
  v146 = 0x3032000000;
  v147 = __Block_byref_object_copy__189;
  v148 = __Block_byref_object_dispose__189;
  v149 = 0;
  v14 = [(SMSuggestionsMetricsManager *)context suggestionsStore];
  v140[0] = MEMORY[0x277D85DD0];
  v140[1] = 3221225472;
  v140[2] = __85__SMSuggestionsMetricsManager__getSuggestionsCountSelectedForPastDate_endDate_error___block_invoke;
  v140[3] = &unk_2788C4490;
  v142 = &v144;
  v143 = buf;
  v15 = v13;
  v141 = v15;
  [v14 fetchSuggestionsWithOptions:v116 handler:v140];

  dsema = v15;
  v16 = [MEMORY[0x277CBEAA8] now];
  v17 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsema, v17))
  {
    v18 = [MEMORY[0x277CBEAA8] now];
    [v18 timeIntervalSinceDate:v16];
    v20 = v19;
    v21 = objc_opt_new();
    v22 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_241_0];
    v23 = [MEMORY[0x277CCACC8] callStackSymbols];
    v24 = [v23 filteredArrayUsingPredicate:v22];
    v25 = [v24 firstObject];

    [v21 submitToCoreAnalytics:v25 type:1 duration:v20];
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *v165 = 0;
      _os_log_fault_impl(&dword_2304B3000, v26, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v165, 2u);
    }

    v27 = MEMORY[0x277CCA9B8];
    *v160 = *MEMORY[0x277CCA450];
    *v165 = @"semaphore wait timeout";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v165 forKeys:v160 count:1];
    v29 = [v27 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v28];

    if (v29)
    {
      v30 = v29;
    }
  }

  else
  {
    v29 = 0;
  }

  v36 = v29;
  v37 = v36;
  if (a5 && v36)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v85 = objc_opt_class();
      v86 = NSStringFromClass(v85);
      v87 = NSStringFromSelector(aSelector);
      *v165 = 138412802;
      *&v165[4] = v86;
      *&v165[12] = 2112;
      *&v165[14] = v87;
      *&v165[22] = 2112;
      v166 = v37;
      _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v165, 0x20u);
    }

    v39 = v37;
    *a5 = v37;
    goto LABEL_35;
  }

  if (a5 && *(v151 + 5))
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v102 = objc_opt_class();
      v103 = NSStringFromClass(v102);
      v104 = NSStringFromSelector(aSelector);
      v105 = *(v151 + 5);
      *v165 = 138412802;
      *&v165[4] = v103;
      *&v165[12] = 2112;
      *&v165[14] = v104;
      *&v165[22] = 2112;
      v166 = v105;
      _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v165, 0x20u);
    }

    v41 = *(v151 + 5);
    goto LABEL_34;
  }

  if ([v145[5] count] == 10000)
  {
    v42 = objc_alloc(MEMORY[0x277CCA9B8]);
    v169 = *MEMORY[0x277CCA450];
    v43 = MEMORY[0x277CCACA8];
    v44 = objc_opt_class();
    v45 = NSStringFromClass(v44);
    v46 = NSStringFromSelector(aSelector);
    v47 = [v43 stringWithFormat:@"%@, %@, suggestions reached max database objects count, %lu, dropping further evaluation", v45, v46, objc_msgSend(v145[5], "count")];
    v170 = v47;
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v170 forKeys:&v169 count:1];
    v49 = [v42 initWithDomain:*MEMORY[0x277D4ACD0] code:12 userInfo:v48];
    v50 = *(v151 + 5);
    *(v151 + 5) = v49;

    if (!a5)
    {
LABEL_35:
      v34 = -1;
      goto LABEL_36;
    }

    v41 = *(v151 + 5);
LABEL_34:
    *a5 = v41;
    goto LABEL_35;
  }

  v51 = objc_alloc(MEMORY[0x277D4AB80]);
  v52 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v125 endDate:v124];
  LOBYTE(v113) = 0;
  v114 = [v51 initWithBatchSize:v119 fetchLimit:10000 sortBySessionStartDate:1 ascending:1 sessionTypes:&unk_2845A1730 timeInADayInterval:0 pickOneConfigInTimeInADayInterval:v113 dateInterval:v52 startBoundingBoxLocation:0 destinationBoundingBoxLocation:0 boundingBoxRadius:0 sessionIdentifier:0];

  v53 = dispatch_semaphore_create(0);
  *v165 = 0;
  *&v165[8] = v165;
  *&v165[16] = 0x3032000000;
  v166 = __Block_byref_object_copy__189;
  v167 = __Block_byref_object_dispose__189;
  v168 = 0;
  v54 = [(SMSuggestionsMetricsManager *)context sessionStore];
  v136[0] = MEMORY[0x277D85DD0];
  v136[1] = 3221225472;
  v136[2] = __85__SMSuggestionsMetricsManager__getSuggestionsCountSelectedForPastDate_endDate_error___block_invoke_136;
  v136[3] = &unk_2788C4490;
  v138 = v165;
  v139 = buf;
  v55 = v53;
  v137 = v55;
  [v54 fetchSessionConfigurationsWithOptions:v114 handler:v136];

  dsema = v55;
  v56 = [MEMORY[0x277CBEAA8] now];
  v57 = dispatch_time(0, 3600000000000);
  v58 = v37;
  if (dispatch_semaphore_wait(dsema, v57))
  {
    v120 = [MEMORY[0x277CBEAA8] now];
    [v120 timeIntervalSinceDate:v56];
    v60 = v59;
    v61 = objc_opt_new();
    v62 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_241_0];
    v63 = [MEMORY[0x277CCACC8] callStackSymbols];
    v64 = [v63 filteredArrayUsingPredicate:v62];
    v65 = [v64 firstObject];

    [v61 submitToCoreAnalytics:v65 type:1 duration:v60];
    v66 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
    {
      *v160 = 0;
      _os_log_fault_impl(&dword_2304B3000, v66, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v160, 2u);
    }

    v67 = MEMORY[0x277CCA9B8];
    v171[0] = *MEMORY[0x277CCA450];
    *v160 = @"semaphore wait timeout";
    v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v160 forKeys:v171 count:1];
    v69 = [v67 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v68];

    v58 = v37;
    if (v69)
    {
      v70 = v69;

      v58 = v69;
    }
  }

  v115 = v58;
  if (v115)
  {
    v71 = a5 != 0;
  }

  else
  {
    v71 = 0;
  }

  if (v71)
  {
    v72 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      v106 = objc_opt_class();
      v107 = NSStringFromClass(v106);
      v108 = NSStringFromSelector(aSelector);
      *v160 = 138412802;
      *&v160[4] = v107;
      v161 = 2112;
      v162 = v108;
      v163 = 2112;
      v164 = v115;
      _os_log_error_impl(&dword_2304B3000, v72, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v160, 0x20u);
    }

    v73 = v115;
    *a5 = v115;
    goto LABEL_58;
  }

  if (a5 && *(v151 + 5))
  {
    v74 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      v109 = objc_opt_class();
      v110 = NSStringFromClass(v109);
      v111 = NSStringFromSelector(aSelector);
      v112 = *(v151 + 5);
      *v160 = 138412802;
      *&v160[4] = v110;
      v161 = 2112;
      v162 = v111;
      v163 = 2112;
      v164 = v112;
      _os_log_error_impl(&dword_2304B3000, v74, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v160, 0x20u);
    }

    v75 = *(v151 + 5);
    goto LABEL_57;
  }

  if ([*(*&v165[8] + 40) count] == 10000)
  {
    v76 = objc_alloc(MEMORY[0x277CCA9B8]);
    v158 = *MEMORY[0x277CCA450];
    v77 = MEMORY[0x277CCACA8];
    v78 = objc_opt_class();
    v79 = NSStringFromClass(v78);
    v80 = NSStringFromSelector(aSelector);
    v81 = [v77 stringWithFormat:@"%@, %@, session configs reached max database objects count, %lu, dropping further evaluation", v79, v80, objc_msgSend(*(*&v165[8] + 40), "count")];
    v159 = v81;
    v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
    v83 = [v76 initWithDomain:*MEMORY[0x277D4ACD0] code:12 userInfo:v82];
    v84 = *(v151 + 5);
    *(v151 + 5) = v83;

    if (!a5)
    {
LABEL_58:
      v34 = -1;
      goto LABEL_59;
    }

    v75 = *(v151 + 5);
LABEL_57:
    *a5 = v75;
    goto LABEL_58;
  }

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  obj = *(*&v165[8] + 40);
  v88 = [obj countByEnumeratingWithState:&v132 objects:v157 count:16];
  v34 = 0;
  if (!v88)
  {
    goto LABEL_81;
  }

  v121 = *v133;
  do
  {
    v89 = 0;
    aSelectora = v88;
    do
    {
      if (*v133 != v121)
      {
        objc_enumerationMutation(obj);
      }

      v90 = *(*(&v132 + 1) + 8 * v89);
      contexta = objc_autoreleasePoolPush();
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v91 = v145[5];
      v92 = [v91 countByEnumeratingWithState:&v128 objects:v156 count:16];
      if (v92)
      {
        v93 = *v129;
        do
        {
          for (i = 0; i != v92; ++i)
          {
            if (*v129 != v93)
            {
              objc_enumerationMutation(v91);
            }

            v95 = *(*(&v128 + 1) + 8 * i);
            v96 = objc_autoreleasePoolPush();
            v97 = [v90 sessionStartDate];
            v98 = [v95 creationDate];
            [v97 timeIntervalSinceDate:v98];
            v100 = v99;

            if (v100 < 0.0 || v100 > 7200.0)
            {
              if (v100 < 0.0)
              {
                v101 = 0;
                goto LABEL_76;
              }
            }

            else
            {
              ++v34;
            }

            v101 = 1;
LABEL_76:
            objc_autoreleasePoolPop(v96);
            if (!v101)
            {
              goto LABEL_79;
            }
          }

          v92 = [v91 countByEnumeratingWithState:&v128 objects:v156 count:16];
        }

        while (v92);
      }

LABEL_79:

      objc_autoreleasePoolPop(contexta);
      ++v89;
    }

    while (v89 != aSelectora);
    v88 = [obj countByEnumeratingWithState:&v132 objects:v157 count:16];
  }

  while (v88);
LABEL_81:

LABEL_59:
  _Block_object_dispose(v165, 8);

  v37 = v115;
LABEL_36:

  _Block_object_dispose(&v144, 8);
  _Block_object_dispose(buf, 8);

LABEL_19:
  return v34;
}

void __85__SMSuggestionsMetricsManager__getSuggestionsCountSelectedForPastDate_endDate_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __85__SMSuggestionsMetricsManager__getSuggestionsCountSelectedForPastDate_endDate_error___block_invoke_136(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_getSelectedSessionForSuggestion:(id)a3 error:(id *)a4
{
  v74[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (!v7)
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: suggestion", buf, 2u);
    }

    if (a4)
    {
      v38 = _RTErrorInvalidParameterCreate(@"suggestion");
LABEL_16:
      v40 = 0;
      *a4 = v38;
      goto LABEL_28;
    }

LABEL_17:
    v40 = 0;
    goto LABEL_28;
  }

  if ([v7 suppressionReason] != 1)
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: suggestion.suppressionReason == SMSuggestionSuppressionReasonNotSuppressed", buf, 2u);
    }

    if (a4)
    {
      v38 = _RTErrorInvalidParameterCreate(@"suggestion.suppressionReason == SMSuggestionSuppressionReasonNotSuppressed");
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v52 = self;
  aSelector = a2;
  v9 = objc_alloc(MEMORY[0x277D4AB80]);
  v10 = objc_alloc(MEMORY[0x277CCA970]);
  v11 = [v8 creationDate];
  v12 = [v10 initWithStartDate:v11 duration:7200.0];
  v13 = objc_alloc(MEMORY[0x277CCA970]);
  v14 = [v8 creationDate];
  v15 = *MEMORY[0x277D4AF10];
  v16 = [v13 initWithStartDate:v14 duration:86400.0];
  LOBYTE(v49) = 1;
  v17 = [v9 initWithBatchSize:v15 fetchLimit:1 sortBySessionStartDate:1 ascending:1 sessionTypes:&unk_2845A1748 timeInADayInterval:v12 pickOneConfigInTimeInADayInterval:v49 dateInterval:v16 startBoundingBoxLocation:0 destinationBoundingBoxLocation:0 boundingBoxRadius:0 sessionIdentifier:0];

  v18 = dispatch_semaphore_create(0);
  *buf = 0;
  v64 = buf;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__189;
  v67 = __Block_byref_object_dispose__189;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__189;
  v61 = __Block_byref_object_dispose__189;
  v62 = 0;
  v19 = [(SMSuggestionsMetricsManager *)v52 sessionStore];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __70__SMSuggestionsMetricsManager__getSelectedSessionForSuggestion_error___block_invoke;
  v53[3] = &unk_2788C4490;
  v55 = buf;
  v56 = &v57;
  v20 = v18;
  v54 = v20;
  [v19 fetchSessionConfigurationsWithOptions:v17 handler:v53];
  v51 = v17;

  v21 = v20;
  v22 = [MEMORY[0x277CBEAA8] now];
  v23 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v21, v23))
  {
    v24 = [MEMORY[0x277CBEAA8] now];
    [v24 timeIntervalSinceDate:v22];
    v26 = v25;
    v27 = objc_opt_new();
    v28 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_241_0];
    v29 = [MEMORY[0x277CCACC8] callStackSymbols];
    v30 = [v29 filteredArrayUsingPredicate:v28];
    v31 = [v30 firstObject];

    [v27 submitToCoreAnalytics:v31 type:1 duration:v26];
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      *v69 = 0;
      _os_log_fault_impl(&dword_2304B3000, v32, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v69, 2u);
    }

    v33 = MEMORY[0x277CCA9B8];
    v74[0] = *MEMORY[0x277CCA450];
    *v69 = @"semaphore wait timeout";
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v74 count:1];
    v35 = [v33 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v34];

    if (v35)
    {
      v36 = v35;
    }
  }

  else
  {
    v35 = 0;
  }

  v41 = v35;
  v42 = v41;
  if (a4 && v41)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = NSStringFromSelector(aSelector);
      *v69 = 138412802;
      *&v69[4] = v47;
      v70 = 2112;
      v71 = v48;
      v72 = 2112;
      v73 = v42;
      _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v69, 0x20u);
    }

    v44 = v42;
    goto LABEL_26;
  }

  if (a4)
  {
    v44 = v58[5];
LABEL_26:
    *a4 = v44;
  }

  v40 = [*(v64 + 5) firstObject];

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(buf, 8);

LABEL_28:

  return v40;
}

void __70__SMSuggestionsMetricsManager__getSelectedSessionForSuggestion_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_getSessionConfigurationsForSuggestion:(id)a3 timeWindow:(double)a4 error:(id *)a5
{
  v73[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D4AB80]);
    v9 = objc_alloc(MEMORY[0x277CCA970]);
    v10 = [v7 creationDate];
    v11 = [v10 dateByAddingTimeInterval:-a4];
    v12 = [v9 initWithStartDate:v11 duration:a4 + a4];
    v13 = objc_alloc(MEMORY[0x277CCA970]);
    v14 = [MEMORY[0x277CBEAA8] date];
    v15 = [v14 dateByAddingTimeInterval:-2419200.0];
    v16 = *MEMORY[0x277D4AF00];
    v17 = [v13 initWithStartDate:v15 duration:2419200.0];
    LOBYTE(v48) = 1;
    v18 = [v8 initWithBatchSize:v16 fetchLimit:v16 sortBySessionStartDate:1 ascending:0 sessionTypes:&unk_2845A1760 timeInADayInterval:v12 pickOneConfigInTimeInADayInterval:v48 dateInterval:v17 startBoundingBoxLocation:0 destinationBoundingBoxLocation:0 boundingBoxRadius:0 sessionIdentifier:0];

    v19 = dispatch_semaphore_create(0);
    *v62 = 0;
    v63 = v62;
    v64 = 0x3032000000;
    v65 = __Block_byref_object_copy__189;
    v66 = __Block_byref_object_dispose__189;
    v67 = 0;
    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = __Block_byref_object_copy__189;
    v60 = __Block_byref_object_dispose__189;
    v61 = 0;
    v20 = [(SMSuggestionsMetricsManager *)self sessionStore];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __87__SMSuggestionsMetricsManager__getSessionConfigurationsForSuggestion_timeWindow_error___block_invoke;
    v52[3] = &unk_2788C4490;
    v54 = &v56;
    v55 = v62;
    v21 = v19;
    v53 = v21;
    [v20 fetchSessionConfigurationsWithOptions:v18 handler:v52];
    v49 = v18;

    v22 = v21;
    v23 = [MEMORY[0x277CBEAA8] now];
    v24 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v22, v24))
    {
      v25 = [MEMORY[0x277CBEAA8] now];
      [v25 timeIntervalSinceDate:v23];
      v27 = v26;
      v28 = objc_opt_new();
      v29 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_241_0];
      v30 = [MEMORY[0x277CCACC8] callStackSymbols];
      v31 = [v30 filteredArrayUsingPredicate:v29];
      v32 = [v31 firstObject];

      [v28 submitToCoreAnalytics:v32 type:1 duration:v27];
      v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v33, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v34 = MEMORY[0x277CCA9B8];
      v73[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v73 count:1];
      v36 = [v34 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v35];

      if (v36)
      {
        v37 = v36;
      }
    }

    else
    {
      v36 = 0;
    }

    v40 = v36;
    v41 = v40;
    if (a5 && v40)
    {
      v42 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        v47 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v46;
        v69 = 2112;
        v70 = v47;
        v71 = 2112;
        v72 = v41;
        _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v43 = v41;
    }

    else
    {
      if (!a5)
      {
LABEL_21:
        v39 = v57[5];

        _Block_object_dispose(&v56, 8);
        _Block_object_dispose(v62, 8);

        goto LABEL_22;
      }

      v43 = *(v63 + 5);
    }

    *a5 = v43;
    goto LABEL_21;
  }

  v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    *v62 = 0;
    _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: suggestion", v62, 2u);
  }

  if (a5)
  {
    *a5 = _RTErrorInvalidParameterCreate(@"suggestion");
  }

  v39 = MEMORY[0x277CBEBF8];
LABEL_22:

  return v39;
}

void __87__SMSuggestionsMetricsManager__getSessionConfigurationsForSuggestion_timeWindow_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_getNPLOIsWithOnlyHighConfidence:(BOOL)a3 location:(id)a4 date:(id)a5 error:(id *)a6
{
  v55 = a3;
  v85[1] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v57 = a5;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__189;
  v72 = __Block_byref_object_dispose__189;
  v73 = 0;
  v10 = dispatch_semaphore_create(0);
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__189;
  v66 = __Block_byref_object_dispose__189;
  v67 = [MEMORY[0x277CBEA60] array];
  v11 = [(SMSuggestionsMetricsManager *)self deviceLocationPredictor];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __84__SMSuggestionsMetricsManager__getNPLOIsWithOnlyHighConfidence_location_date_error___block_invoke;
  v58[3] = &unk_2788C4490;
  v60 = &v62;
  v61 = &v68;
  v12 = v10;
  v59 = v12;
  [v11 fetchNextPredictedLocationsOfInterestFromLocation:v9 startDate:v57 timeInterval:v58 handler:3600.0];
  v56 = v9;

  v13 = v12;
  v14 = [MEMORY[0x277CBEAA8] now];
  v15 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v13, v15))
  {
    v16 = [MEMORY[0x277CBEAA8] now];
    [v16 timeIntervalSinceDate:v14];
    v18 = v17;
    v19 = objc_opt_new();
    v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_241_0];
    v21 = [MEMORY[0x277CCACC8] callStackSymbols];
    v22 = [v21 filteredArrayUsingPredicate:v20];
    v23 = [v22 firstObject];

    [v19 submitToCoreAnalytics:v23 type:1 duration:v18];
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v25 = MEMORY[0x277CCA9B8];
    v85[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v85 count:1];
    v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v26];

    if (v27)
    {
      v28 = v27;
    }
  }

  else
  {
    v27 = 0;
  }

  v29 = v27;
  v30 = v29;
  if (a6)
  {
    if (v69[5])
    {
      v31 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        v49 = NSStringFromSelector(a2);
        v50 = v69[5];
        *buf = 138412802;
        *&buf[4] = v48;
        v75 = 2112;
        v76 = v49;
        v77 = 2112;
        v78 = v50;
        _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v32 = v69[5];
LABEL_16:
      *a6 = v32;
      v34 = [MEMORY[0x277CBEA60] array];
      goto LABEL_30;
    }

    if (v29)
    {
      v33 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        v53 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v52;
        v75 = 2112;
        v76 = v53;
        v77 = 2112;
        v78 = v30;
        _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v32 = v30;
      goto LABEL_16;
    }
  }

  v35 = v63[5];
  v36 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_149];
  v37 = [v35 filteredArrayUsingPredicate:v36];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = NSStringFromSelector(a2);
      v42 = [v63[5] count];
      v43 = [v37 count];
      v44 = @"NO";
      *buf = 138413571;
      *&buf[4] = v40;
      v75 = 2112;
      if (v55)
      {
        v44 = @"YES";
      }

      v76 = v41;
      v77 = 2048;
      v78 = v42;
      v79 = 2112;
      v80 = v44;
      v81 = 2048;
      v82 = v43;
      v83 = 2117;
      v84 = v56;
      _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@, %@, nplois fetched count, %lu, onlyHighConfidence, %@, nplois with only high confidence count, %lu, w.r.t the location, %{sensitive}@", buf, 0x3Eu);
    }
  }

  if (v55)
  {
    v45 = v37;
    if (a6)
    {
      *a6 = v69[5];
      v45 = v37;
    }
  }

  else
  {
    if (a6)
    {
      *a6 = v69[5];
    }

    v45 = v63[5];
  }

  v34 = v45;

LABEL_30:
  _Block_object_dispose(&v62, 8);

  _Block_object_dispose(&v68, 8);

  return v34;
}

void __84__SMSuggestionsMetricsManager__getNPLOIsWithOnlyHighConfidence_location_date_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_computeWorkoutAlwaysPromptMetricsWithError:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  return MEMORY[0x277CBEBF8];
}

- (BOOL)_submitMetrics:(id)a3 event:(unint64_t)a4 error:(id *)a5
{
  v70 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = NSStringFromSelector(a2);
        *buf = 138412802;
        v65 = v11;
        v66 = 2112;
        v67 = v12;
        v68 = 2048;
        v69 = [v8 count];
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, %@, submitting metrics with count, %lu", buf, 0x20u);
      }
    }

    switch(a4)
    {
      case 3uLL:
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        obj = v8;
        v13 = [obj countByEnumeratingWithState:&v47 objects:v61 count:16];
        if (v13)
        {
          v44 = a5;
          v45 = v8;
          v30 = *v48;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v48 != v30)
              {
                objc_enumerationMutation(obj);
              }

              v32 = *(*(&v47 + 1) + 8 * i);
              v33 = objc_autoreleasePoolPush();
              v34 = objc_alloc(MEMORY[0x277CCACA8]);
              v35 = [v34 initWithCString:RTAnalyticsEventSMSuggestionsWorkoutAlwaysPromptConsidered encoding:1];
              log_analytics_submission(v35, v32);
              v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v35];
              AnalyticsSendEvent();

              objc_autoreleasePoolPop(v33);
            }

            v13 = [obj countByEnumeratingWithState:&v47 objects:v61 count:16];
          }

          while (v13);
          goto LABEL_36;
        }

        break;
      case 2uLL:
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        obj = v8;
        v13 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
        if (v13)
        {
          v44 = a5;
          v45 = v8;
          v23 = *v52;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v52 != v23)
              {
                objc_enumerationMutation(obj);
              }

              v25 = *(*(&v51 + 1) + 8 * j);
              v26 = objc_autoreleasePoolPush();
              v27 = objc_alloc(MEMORY[0x277CCACA8]);
              v28 = [v27 initWithCString:RTAnalyticsEventSMSuggestionsUsage encoding:1];
              log_analytics_submission(v28, v25);
              v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v28];
              AnalyticsSendEvent();

              objc_autoreleasePoolPop(v26);
            }

            v13 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
          }

          while (v13);
          goto LABEL_36;
        }

        break;
      case 1uLL:
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        obj = v8;
        v13 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
        if (v13)
        {
          v44 = a5;
          v45 = v8;
          v14 = *v56;
          do
          {
            for (k = 0; k != v13; k = k + 1)
            {
              if (*v56 != v14)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v55 + 1) + 8 * k);
              v17 = objc_autoreleasePoolPush();
              v18 = objc_alloc(MEMORY[0x277CCACA8]);
              v19 = [v18 initWithCString:RTAnalyticsEventSMSuggestionsDetails encoding:1];
              log_analytics_submission(v19, v16);
              v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v19];
              AnalyticsSendEvent();

              objc_autoreleasePoolPop(v17);
            }

            v13 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
          }

          while (v13);
LABEL_36:
          a5 = v44;
          v8 = v45;
        }

        break;
      default:
        v37 = MEMORY[0x277CCA9B8];
        v38 = *MEMORY[0x277D4ACD0];
        v59 = *MEMORY[0x277CCA450];
        v39 = MEMORY[0x277CCACA8];
        obj = [objc_opt_class() stringFromSuggestionsMetricsEvent:a4];
        v40 = [v39 stringWithFormat:@"requires a valid suggestions metric event. Passed, %@", obj];
        v60 = v40;
        v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v13 = [v37 errorWithDomain:v38 code:7 userInfo:v41];

        break;
    }

    if (a5)
    {
      v42 = v13;
      *a5 = v13;
    }

    v22 = v13 == 0;

    goto LABEL_41;
  }

  v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: metrics", buf, 2u);
  }

  if (a5)
  {
    _RTErrorInvalidParameterCreate(@"metrics");
    *a5 = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

LABEL_41:

  return v22;
}

+ (id)stringFromSuggestionsMetricsEvent:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"SuggestionsMetricsEventDetails";
  }

  else
  {
    return off_2788D2A10[a3];
  }
}

- (void)sendSuggestionsConversionEventForSuggestion:(id)a3 selected:(BOOL)a4 sessionStarted:(BOOL)a5
{
  v19[6] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = a5;
    v6 = a4;
    v18[0] = *MEMORY[0x277D4AE68];
    v7 = MEMORY[0x277CCABB0];
    v8 = a3;
    v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "suggestionTrigger")}];
    v19[0] = v9;
    v18[1] = *MEMORY[0x277D4AE70];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "suggestionUserType")}];
    v19[1] = v10;
    v18[2] = *MEMORY[0x277D4AE60];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "suppressionReason")}];
    v19[2] = v11;
    v18[3] = *MEMORY[0x277D4AE48];
    v12 = MEMORY[0x277CCABB0];
    v13 = [v8 isSuppressed];

    v14 = [v12 numberWithInt:v13 ^ 1u];
    v19[3] = v14;
    v18[4] = *MEMORY[0x277D4AE50];
    v15 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    v19[4] = v15;
    v18[5] = *MEMORY[0x277D4AE58];
    v16 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    v19[5] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:6];

    AnalyticsSendEvent();
  }
}

@end