@interface RTUserCurationMetrics
+ (BOOL)collectMetricsForAppliedLabel:(id)a3 curatedVisit:(id)a4 learnedLocationStore:(id)a5 distanceCalculator:(id)a6 applicationResult:(unint64_t)a7 error:(id *)a8;
+ (BOOL)collectMetricsForSubmittedUserCuration:(id)a3 submissionResult:(unint64_t)a4;
+ (BOOL)collectUserCurationCountMetricsWithUserCurationStore:(id)a3 error:(id *)a4;
@end

@implementation RTUserCurationMetrics

+ (BOOL)collectMetricsForSubmittedUserCuration:(id)a3 submissionResult:(unint64_t)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(a2);
      *buf = 138412802;
      v32 = v29;
      v33 = 2112;
      v34 = v30;
      v35 = 2112;
      v36 = v7;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "%@, %@, collecting submission metrics for user curation, %@", buf, 0x20u);
    }
  }

  v9 = objc_opt_new();
  v10 = [MEMORY[0x277CCABB0] numberWithInt:a4 == 1];
  [v9 setObject:v10 forKeyedSubscript:@"succeeded"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v9 setObject:v11 forKeyedSubscript:@"failureReason"];

  v12 = [v7 visitExitDate];
  v13 = [v7 visitEntryDate];
  [v12 timeIntervalSinceDate:v13];
  v15 = v14 / 60.0;

  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
  v17 = [a1 binForNumber:v16 bins:&unk_2845A11C0];
  [v9 setObject:v17 forKeyedSubscript:@"curationDuration"];

  v18 = [v7 submissionDate];
  v19 = [v7 visitEntryDate];
  [v18 timeIntervalSinceDate:v19];
  v21 = v20 / 86400.0;

  v22 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
  v23 = [a1 binForNumber:v22 bins:&unk_2845A11D8];
  [v9 setObject:v23 forKeyedSubscript:@"elapsedTimeBeforeCuration"];

  v24 = objc_alloc(MEMORY[0x277CCACA8]);
  v25 = [v24 initWithCString:RTAnalyticsEventUserCurationSubmission encoding:1];
  log_analytics_submission(v25, v9);
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v25];
  AnalyticsSendEvent();

  return 1;
}

+ (BOOL)collectUserCurationCountMetricsWithUserCurationStore:(id)a3 error:(id *)a4
{
  v82 = *MEMORY[0x277D85DE8];
  v64 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v54 = objc_opt_class();
      v55 = NSStringFromClass(v54);
      v56 = NSStringFromSelector(a2);
      *v76 = 138412546;
      *&v76[4] = v55;
      *&v76[12] = 2112;
      *&v76[14] = v56;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%@, %@, collecting user curation count metrics", v76, 0x16u);
    }
  }

  v6 = objc_opt_new();
  v7 = [MEMORY[0x277CBEAA8] now];
  v58 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v7 sinceDate:-86400.0];
  v59 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v7 sinceDate:-604800.0];
  v65 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v7 sinceDate:-2592000.0];
  v63 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v65 endDate:v7];
  v62 = [objc_alloc(MEMORY[0x277D01330]) initWithAscending:1 sortIndex:1 submissionDateInterval:v63 visitDateInterval:0 limit:0];
  *v76 = 0;
  *&v76[8] = v76;
  *&v76[16] = 0x3032000000;
  v77 = __Block_byref_object_copy__86;
  v78 = __Block_byref_object_dispose__86;
  v79 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__86;
  v74 = __Block_byref_object_dispose__86;
  v75 = 0;
  v8 = dispatch_semaphore_create(0);
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __84__RTUserCurationMetrics_collectUserCurationCountMetricsWithUserCurationStore_error___block_invoke;
  v66[3] = &unk_2788C4490;
  v68 = v76;
  v69 = &v70;
  v9 = v8;
  v67 = v9;
  [v64 fetchStoredUserCurationsWithOptions:v62 handler:v66];
  v10 = v9;
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    v13 = [MEMORY[0x277CBEAA8] now];
    [v13 timeIntervalSinceDate:v11];
    v15 = v14;
    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_71];
    v18 = [MEMORY[0x277CCACC8] callStackSymbols];
    v19 = [v18 filteredArrayUsingPredicate:v17];
    v20 = [v19 firstObject];

    [v16 submitToCoreAnalytics:v20 type:1 duration:v15];
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v80 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v80 count:1];
    v24 = [v22 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v23];

    if (v24)
    {
      v25 = v24;

      v26 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v24 = 0;
  }

  v26 = 1;
LABEL_12:

  v27 = v24;
  if ((v26 & 1) == 0)
  {
    v32 = objc_alloc(MEMORY[0x277CCACA8]);
    v33 = [v32 initWithCString:RTAnalyticsEventUserCurationCount encoding:1];
    log_analytics_submission(v33, v6);
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v33];
    AnalyticsSendEvent();

    if (a4)
    {
      v35 = v27;
      v31 = 0;
      *a4 = v27;
      goto LABEL_21;
    }

LABEL_18:
    v31 = 0;
    goto LABEL_21;
  }

  if (!v71[5])
  {
    v36 = *&v76[8];
    v37 = *(*&v76[8] + 40);
    if (v37)
    {
      v38 = v37;
      v39 = *(v36 + 40);
      v40 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", @"submissionDate", v59];
      v61 = [v39 filteredArrayUsingPredicate:v40];

      v41 = *(*&v76[8] + 40);
      v42 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", @"submissionDate", v58];
      v43 = [v41 filteredArrayUsingPredicate:v42];

      v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v38, "count")}];
      v45 = [a1 binForNumber:v44 bins:&unk_2845A1178];
      [v6 setObject:v45 forKeyedSubscript:@"monthlyCount"];

      v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v61, "count")}];
      v47 = [a1 binForNumber:v46 bins:&unk_2845A1178];
      [v6 setObject:v47 forKeyedSubscript:@"weeklyCount"];

      v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v43, "count")}];
      v49 = [a1 binForNumber:v48 bins:&unk_2845A1178];
      [v6 setObject:v49 forKeyedSubscript:@"dailyCount"];

      v50 = objc_alloc(MEMORY[0x277CCACA8]);
      v51 = [v50 initWithCString:RTAnalyticsEventUserCurationCount encoding:1];
      log_analytics_submission(v51, v6);
      v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v51];
      AnalyticsSendEvent();

      v31 = 1;
      goto LABEL_21;
    }
  }

  v28 = objc_alloc(MEMORY[0x277CCACA8]);
  v29 = [v28 initWithCString:RTAnalyticsEventUserCurationCount encoding:1];
  log_analytics_submission(v29, v6);
  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v29];
  AnalyticsSendEvent();

  if (!a4)
  {
    goto LABEL_18;
  }

  v31 = 0;
  *a4 = v71[5];
LABEL_21:

  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(v76, 8);

  return v31;
}

void __84__RTUserCurationMetrics_collectUserCurationCountMetricsWithUserCurationStore_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

+ (BOOL)collectMetricsForAppliedLabel:(id)a3 curatedVisit:(id)a4 learnedLocationStore:(id)a5 distanceCalculator:(id)a6 applicationResult:(unint64_t)a7 error:(id *)a8
{
  v147[1] = *MEMORY[0x277D85DE8];
  v99 = a3;
  v112 = a4;
  v100 = a5;
  v113 = a6;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v81 = objc_opt_class();
      v82 = NSStringFromClass(v81);
      v83 = NSStringFromSelector(a2);
      *v143 = 138412802;
      *&v143[4] = v82;
      *&v143[12] = 2112;
      *&v143[14] = v83;
      *&v143[22] = 2112;
      v144 = v99;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "%@, %@, collecting application metrics for curated label, %@", v143, 0x20u);
    }
  }

  if (v100 && v113)
  {
    oslog = objc_opt_new();
    v13 = [MEMORY[0x277CCABB0] numberWithInt:a7 == 1];
    [oslog setObject:v13 forKeyedSubscript:@"succeeded"];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a7];
    [oslog setObject:v14 forKeyedSubscript:@"failureReason"];

    if (!v99 || !v112)
    {
      v22 = objc_alloc(MEMORY[0x277CCACA8]);
      v98 = [v22 initWithCString:RTAnalyticsEventUserCurationApplication encoding:1];
      log_analytics_submission(v98, oslog);
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v98];
      AnalyticsSendEvent();

      v108 = 1;
      goto LABEL_72;
    }

    v15 = [v112 location];
    v16 = [v15 location];
    v17 = [v99 location];
    v133 = 0;
    [v113 distanceFromLocation:v16 toLocation:v17 error:&v133];
    v19 = v18;
    v97 = v133;

    v108 = v97 == 0;
    if (v97)
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v87 = objc_opt_class();
        v88 = NSStringFromClass(v87);
        v89 = NSStringFromSelector(a2);
        *v143 = 138412802;
        *&v143[4] = v88;
        *&v143[12] = 2112;
        *&v143[14] = v89;
        *&v143[22] = 2112;
        v144 = v97;
        _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%@, %@, failed to calculate curation distance, error: %@", v143, 0x20u);
      }

      if (a8)
      {
        v21 = v97;
        *a8 = v97;
      }
    }

    else
    {
      v24 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
      v25 = [a1 binForNumber:v24 bins:&unk_2845A1190];
      [oslog setObject:v25 forKeyedSubscript:@"curationDistance"];
    }

    *v143 = 0;
    *&v143[8] = v143;
    *&v143[16] = 0x3032000000;
    v144 = __Block_byref_object_copy__86;
    v145 = __Block_byref_object_dispose__86;
    v146 = 0;
    v127 = 0;
    v128 = &v127;
    v129 = 0x3032000000;
    v130 = __Block_byref_object_copy__86;
    v131 = __Block_byref_object_dispose__86;
    v132 = 0;
    v26 = dispatch_semaphore_create(0);
    v27 = [v112 location];
    v28 = [v27 location];
    v123[0] = MEMORY[0x277D85DD0];
    v123[1] = 3221225472;
    v123[2] = __132__RTUserCurationMetrics_collectMetricsForAppliedLabel_curatedVisit_learnedLocationStore_distanceCalculator_applicationResult_error___block_invoke;
    v123[3] = &unk_2788C4490;
    v125 = &v127;
    v126 = v143;
    v29 = v26;
    v124 = v29;
    [v100 fetchLocationsOfInterestWithVisitsWithinDistance:v28 location:v123 handler:1000.0];

    dsema = v29;
    v30 = [MEMORY[0x277CBEAA8] now];
    v31 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v31))
    {
      v32 = [MEMORY[0x277CBEAA8] now];
      [v32 timeIntervalSinceDate:v30];
      v34 = v33;
      v35 = objc_opt_new();
      v36 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_71];
      v37 = [MEMORY[0x277CCACC8] callStackSymbols];
      v38 = [v37 filteredArrayUsingPredicate:v36];
      v39 = [v38 firstObject];

      [v35 submitToCoreAnalytics:v39 type:1 duration:v34];
      v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v40, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v41 = MEMORY[0x277CCA9B8];
      v147[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v147 count:1];
      v43 = [v41 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v42];

      if (v43)
      {
        v44 = v43;

        v45 = 0;
LABEL_26:

        v95 = v43;
        if ((v45 & 1) == 0)
        {
          objc_storeStrong(v128 + 5, v43);
        }

        if (v128[5])
        {
          v46 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v90 = objc_opt_class();
            v91 = NSStringFromClass(v90);
            v92 = NSStringFromSelector(a2);
            v93 = [MEMORY[0x277CCABB0] numberWithDouble:1000.0];
            v94 = v128[5];
            *buf = 138413058;
            *&buf[4] = v91;
            v137 = 2112;
            v138 = v92;
            v139 = 2112;
            v140 = v93;
            v141 = 2112;
            v142 = v94;
            _os_log_error_impl(&dword_2304B3000, v46, OS_LOG_TYPE_ERROR, "%@, %@, failed to fetch visits to LOIs within %@ meters, error: %@", buf, 0x2Au);
          }

          v108 = 0;
          if (a8)
          {
            *a8 = v128[5];
          }
        }

        else
        {
          v121 = 0u;
          v122 = 0u;
          v119 = 0u;
          v120 = 0u;
          obj = *(*&v143[8] + 40);
          v47 = [obj countByEnumeratingWithState:&v119 objects:v135 count:16];
          if (v47)
          {
            v109 = 0;
            v111 = 0;
            v48 = 0;
            v103 = *v120;
            v104 = v47;
            do
            {
              for (i = 0; i != v104; ++i)
              {
                if (*v120 != v103)
                {
                  objc_enumerationMutation(obj);
                }

                v49 = *(*(&v119 + 1) + 8 * i);
                v115 = 0u;
                v116 = 0u;
                v117 = 0u;
                v118 = 0u;
                v50 = [v49 visits];
                v51 = [v50 countByEnumeratingWithState:&v115 objects:v134 count:16];
                if (v51)
                {
                  v52 = *v116;
                  do
                  {
                    for (j = 0; j != v51; ++j)
                    {
                      if (*v116 != v52)
                      {
                        objc_enumerationMutation(v50);
                      }

                      v54 = *(*(&v115 + 1) + 8 * j);
                      v55 = [v112 location];
                      v56 = [v55 location];
                      v57 = [v54 location];
                      v58 = [v57 location];
                      v114 = 0;
                      [v113 distanceFromLocation:v56 toLocation:v58 error:&v114];
                      v60 = v59;
                      v61 = v114;

                      if (v61)
                      {
                        v62 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
                        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                        {
                          v65 = objc_opt_class();
                          v66 = NSStringFromClass(v65);
                          v67 = NSStringFromSelector(a2);
                          *buf = 138412802;
                          *&buf[4] = v66;
                          v137 = 2112;
                          v138 = v67;
                          v139 = 2112;
                          v140 = v61;
                          _os_log_error_impl(&dword_2304B3000, v62, OS_LOG_TYPE_ERROR, "%@, %@, failed to calculate distance to visit, error: %@", buf, 0x20u);
                        }

                        v108 = 0;
                      }

                      else
                      {
                        v63 = v111;
                        if (v60 > 1000.0)
                        {
                          v64 = v109;
                        }

                        else
                        {
                          v64 = v109 + 1;
                        }

                        if (v60 <= 500.0)
                        {
                          v63 = v111 + 1;
                        }

                        v109 = v64;
                        v111 = v63;
                        if (v60 <= 100.0)
                        {
                          ++v48;
                        }
                      }
                    }

                    v51 = [v50 countByEnumeratingWithState:&v115 objects:v134 count:16];
                  }

                  while (v51);
                }
              }

              v104 = [obj countByEnumeratingWithState:&v119 objects:v135 count:16];
            }

            while (v104);
          }

          else
          {
            v109 = 0;
            v111 = 0;
            v48 = 0;
          }

          if (v48)
          {
            v68 = v48 - 1;
          }

          else
          {
            v68 = 0;
          }

          if (v111)
          {
            v69 = v111 - 1;
          }

          else
          {
            v69 = 0;
          }

          if (v109)
          {
            v70 = v109 - 1;
          }

          else
          {
            v70 = 0;
          }

          v71 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v68];
          v72 = [a1 binForNumber:v71 bins:&unk_2845A11A8];
          [oslog setObject:v72 forKeyedSubscript:@"curationVisitDensity100m"];

          v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v69];
          v74 = [a1 binForNumber:v73 bins:&unk_2845A11A8];
          [oslog setObject:v74 forKeyedSubscript:@"curationVisitDensity500m"];

          v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v70];
          v76 = [a1 binForNumber:v75 bins:&unk_2845A11A8];
          [oslog setObject:v76 forKeyedSubscript:@"curationVisitDensity1000m"];
        }

        v77 = objc_alloc(MEMORY[0x277CCACA8]);
        v78 = [v77 initWithCString:RTAnalyticsEventUserCurationApplication encoding:1];
        log_analytics_submission(v78, oslog);
        v79 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v78];
        AnalyticsSendEvent();

        _Block_object_dispose(&v127, 8);
        _Block_object_dispose(v143, 8);

        goto LABEL_72;
      }
    }

    else
    {
      v43 = 0;
    }

    v45 = 1;
    goto LABEL_26;
  }

  oslog = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    v84 = objc_opt_class();
    v85 = NSStringFromClass(v84);
    v86 = NSStringFromSelector(a2);
    *v143 = 138412546;
    *&v143[4] = v85;
    *&v143[12] = 2112;
    *&v143[14] = v86;
    _os_log_error_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_ERROR, "%@, %@, invalid parameters for collecting applied user curation metrics", v143, 0x16u);
  }

  v108 = 0;
LABEL_72:

  return v108;
}

void __132__RTUserCurationMetrics_collectMetricsForAppliedLabel_curatedVisit_learnedLocationStore_distanceCalculator_applicationResult_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 48;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

@end