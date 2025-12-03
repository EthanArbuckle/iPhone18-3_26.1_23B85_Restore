@interface RTWorkoutMetricsManager
+ (id)stringFromWorkoutMetricsEvent:(unint64_t)event;
- (BOOL)_computeMetricsForClustersEventWithData:(id)data error:(id *)error;
- (BOOL)_computeMetricsForEvent:(unint64_t)event data:(id)data error:(id *)error;
- (BOOL)_computeMetricsForProcessNewWorkoutEventWithData:(id)data error:(id *)error;
- (BOOL)_computeMetricsForProcessWorkoutsEventWithData:(id)data error:(id *)error;
- (BOOL)_computeMetricsForUpdateRelevanceScoresEventWithData:(id)data error:(id *)error;
- (BOOL)_doesMandatoryKeysExist:(unint64_t)exist data:(id)data error:(id *)error;
- (BOOL)_submitMetricsForEvent:(unint64_t)event data:(id)data error:(id *)error;
- (BOOL)_updateNSNumberMetricsData:(id)data key:(id)key binsStart:(id)start binsEnd:(id)end gap:(id)gap error:(id *)error;
- (BOOL)submitMetricsForEvent:(unint64_t)event data:(id)data error:(id *)error;
- (RTWorkoutMetricsManager)init;
- (RTWorkoutMetricsManager)initWithManagedConfiguration:(id)configuration;
- (id)_mandatoryMetricKeysForEvent:(unint64_t)event error:(id *)error;
@end

@implementation RTWorkoutMetricsManager

- (RTWorkoutMetricsManager)init
{
  v3 = objc_opt_new();
  v4 = [(RTWorkoutMetricsManager *)self initWithManagedConfiguration:v3];

  return v4;
}

- (RTWorkoutMetricsManager)initWithManagedConfiguration:(id)configuration
{
  selfCopy = self;
  if (configuration)
  {
    v10.receiver = self;
    v10.super_class = RTWorkoutMetricsManager;
    v4 = [(RTWorkoutMetricsManager *)&v10 init];
    if (v4)
    {
      v5 = objc_opt_new();
      managedConfiguration = v4->_managedConfiguration;
      v4->_managedConfiguration = v5;
    }

    selfCopy = v4;
    v7 = selfCopy;
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: managedConfiguration", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

+ (id)stringFromWorkoutMetricsEvent:(unint64_t)event
{
  if (event - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788CEF40[event - 1];
  }
}

- (BOOL)submitMetricsForEvent:(unint64_t)event data:(id)data error:(id *)error
{
  v80 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  managedConfiguration = [(RTWorkoutMetricsManager *)self managedConfiguration];
  isHealthDataSubmissionAllowed = [managedConfiguration isHealthDataSubmissionAllowed];

  if (isHealthDataSubmissionAllowed)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v11 = dataCopy;
    v58 = [v11 countByEnumeratingWithState:&v63 objects:v79 count:16];
    if (v58)
    {
      v59 = *v64;
      errorCopy = error;
      v54 = dataCopy;
      v55 = v11;
LABEL_4:
      v12 = 0;
      v13 = MEMORY[0x277D86220];
      while (1)
      {
        if (*v64 != v59)
        {
          objc_enumerationMutation(v11);
        }

        v14 = *(*(&v63 + 1) + 8 * v12);
        v15 = objc_autoreleasePoolPush();
        v62 = 0;
        v16 = [(RTWorkoutMetricsManager *)self _doesMandatoryKeysExist:event data:v14 error:&v62];
        v17 = v62;
        if (v17)
        {
LABEL_27:
          v35 = v17;
LABEL_39:
          objc_autoreleasePoolPop(v15);
          error = errorCopy;
          dataCopy = v54;
          goto LABEL_40;
        }

        if (!v16)
        {
          break;
        }

        v61 = 0;
        v16 = [(RTWorkoutMetricsManager *)self _computeMetricsForEvent:event data:v14 error:&v61];
        v17 = v61;
        if (v17)
        {
          goto LABEL_27;
        }

        if (!v16)
        {
          v43 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v49 = objc_opt_class();
            v50 = NSStringFromClass(v49);
            v51 = NSStringFromSelector(a2);
            v52 = [objc_opt_class() stringFromWorkoutMetricsEvent:event];
            *buf = 138412802;
            v68 = v50;
            v69 = 2112;
            v70 = v51;
            v71 = 2112;
            v72 = v52;
            _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "%@, %@, metrics computation for event, %@, failed", buf, 0x20u);
          }

          v36 = errorCopy;
          goto LABEL_35;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v18 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            v21 = NSStringFromSelector(a2);
            v22 = [objc_opt_class() stringFromWorkoutMetricsEvent:event];
            v23 = [v14 count];
            *buf = 138413058;
            v68 = v20;
            v69 = 2112;
            v70 = v21;
            v71 = 2112;
            v72 = v22;
            v73 = 2048;
            v74 = v23;
            _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, %@, submiting metrics for event, %@, keys count, %lu", buf, 0x2Au);

            v13 = MEMORY[0x277D86220];
          }
        }

        v60 = 0;
        [(RTWorkoutMetricsManager *)self _submitMetricsForEvent:event data:v14 error:&v60];
        v24 = v60;
        if (v24)
        {
          v35 = v24;
          v16 = 1;
          goto LABEL_39;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v25 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = objc_opt_class();
            v27 = NSStringFromClass(v26);
            v28 = NSStringFromSelector(a2);
            v29 = [objc_opt_class() stringFromWorkoutMetricsEvent:event];
            v30 = [v14 count];
            date2 = [MEMORY[0x277CBEAA8] date];
            [date2 timeIntervalSinceDate:date];
            v33 = v32;
            +[RTRuntime footprint];
            *buf = 138413570;
            v68 = v27;
            v69 = 2112;
            v70 = v28;
            v71 = 2112;
            v72 = v29;
            v73 = 2048;
            v74 = v30;
            v75 = 2048;
            v76 = v33;
            v77 = 2048;
            v78 = v34;
            _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@, %@, submitted metrics for event, %@, keys count, %lu, latency, %.4f sec, footprint, %.4f MB", buf, 0x3Eu);

            v11 = v55;
            v13 = MEMORY[0x277D86220];
          }
        }

        objc_autoreleasePoolPop(v15);
        if (v58 == ++v12)
        {
          v35 = 0;
          v16 = 1;
          error = errorCopy;
          dataCopy = v54;
          v58 = [v11 countByEnumeratingWithState:&v63 objects:v79 count:16];
          if (v58)
          {
            goto LABEL_4;
          }

          goto LABEL_40;
        }
      }

      v36 = errorCopy;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v37 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          v40 = NSStringFromSelector(a2);
          v41 = [objc_opt_class() stringFromWorkoutMetricsEvent:event];
          v42 = [v14 count];
          *buf = 138413314;
          v68 = v39;
          v69 = 2112;
          v70 = v40;
          v71 = 2112;
          v72 = v41;
          v73 = 2112;
          v74 = @"NO";
          v75 = 2048;
          v76 = v42;
          _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_INFO, "%@, %@, does mandatory keys for event, %@, exist, %@, keys count, %lu, skipping metric submission", buf, 0x34u);
        }
      }

LABEL_35:
      if (v36)
      {
        *v36 = 0;
      }

      objc_autoreleasePoolPop(v15);

      v35 = 0;
      v16 = 0;
      dataCopy = v54;
    }

    else
    {
      v35 = 0;
      v16 = 1;
LABEL_40:

      if (error)
      {
        v44 = v35;
        *error = v35;
      }
    }
  }

  else
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = NSStringFromSelector(a2);
      *buf = 138412546;
      v68 = v47;
      v69 = 2112;
      v70 = v48;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "%@, %@, Health Data Submission not allowed on this device.", buf, 0x16u);
    }

    v16 = 0;
  }

  return v16;
}

- (BOOL)_doesMandatoryKeysExist:(unint64_t)exist data:(id)data error:(id *)error
{
  dataCopy = data;
  if (dataCopy)
  {
    if (error)
    {
      v7 = 0;
LABEL_8:
      *error = v7;
    }
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: data", v10, 2u);
    }

    if (error)
    {
      v7 = _RTErrorInvalidParameterCreate(@"data");
      goto LABEL_8;
    }
  }

  return dataCopy != 0;
}

- (BOOL)_computeMetricsForEvent:(unint64_t)event data:(id)data error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (dataCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
    LOBYTE(v11) = 0;
    v12 = 0;
    if (event > 2)
    {
      if (event == 3)
      {
        v31 = 0;
        v13 = &v31;
        v14 = [(RTWorkoutMetricsManager *)self _computeMetricsForProcessWorkoutsEventWithData:dataCopy error:&v31];
        goto LABEL_16;
      }

      if (event == 4)
      {
        v30 = 0;
        v13 = &v30;
        v14 = [(RTWorkoutMetricsManager *)self _computeMetricsForUpdateRelevanceScoresEventWithData:dataCopy error:&v30];
        goto LABEL_16;
      }
    }

    else
    {
      if (event == 1)
      {
        v33 = 0;
        v13 = &v33;
        v14 = [(RTWorkoutMetricsManager *)self _computeMetricsForClustersEventWithData:dataCopy error:&v33];
        goto LABEL_16;
      }

      if (event == 2)
      {
        v32 = 0;
        v13 = &v32;
        v14 = [(RTWorkoutMetricsManager *)self _computeMetricsForProcessNewWorkoutEventWithData:dataCopy error:&v32];
LABEL_16:
        v11 = v14;
        v12 = *v13;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v16 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = objc_opt_class();
            v29 = NSStringFromClass(v17);
            v18 = NSStringFromSelector(a2);
            v19 = [objc_opt_class() stringFromWorkoutMetricsEvent:event];
            v20 = @"NO";
            if (v11)
            {
              v20 = @"YES";
            }

            v28 = v20;
            v27 = [dataCopy count];
            date2 = [MEMORY[0x277CBEAA8] date];
            [date2 timeIntervalSinceDate:date];
            v23 = v22;
            +[RTRuntime footprint];
            *buf = 138413826;
            v35 = v29;
            v36 = 2112;
            v37 = v18;
            v38 = 2112;
            v39 = v19;
            v40 = 2112;
            v41 = v28;
            v42 = 2048;
            v43 = v27;
            v44 = 2048;
            v45 = v23;
            v46 = 2048;
            v47 = v24;
            _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, %@, computed metrics for event, %@, status, %@, keys count, %lu, latency, %.4f sec, footprint, %.4f MB", buf, 0x48u);
          }
        }

        if (error)
        {
          v25 = v12;
          *error = v12;
        }
      }
    }

    goto LABEL_25;
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: data", buf, 2u);
  }

  if (error)
  {
    _RTErrorInvalidParameterCreate(@"data");
    *error = LOBYTE(v11) = 0;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

LABEL_25:

  return v11;
}

- (BOOL)_submitMetricsForEvent:(unint64_t)event data:(id)data error:(id *)error
{
  dataCopy = data;
  if (dataCopy)
  {
    v8 = 0;
    if (event > 2)
    {
      if (event == 3)
      {
        v9 = objc_alloc(MEMORY[0x277CCACA8]);
        v10 = RTAnalyticsEventWorkoutRouteManagerProcessWorkouts;
        goto LABEL_16;
      }

      if (event == 4)
      {
        v9 = objc_alloc(MEMORY[0x277CCACA8]);
        v10 = RTAnalyticsEventWorkoutRouteManagerUpdateRelevanceScores;
        goto LABEL_16;
      }
    }

    else if (event == 1)
    {
      v12 = objc_alloc(MEMORY[0x277CCACA8]);
      v8 = 1;
      v13 = [v12 initWithCString:RTAnalyticsEventWorkoutRouteManagerClusters encoding:1];
      log_analytics_submission(v13, dataCopy);
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v13];
      AnalyticsSendEvent();
    }

    else if (event == 2)
    {
      v9 = objc_alloc(MEMORY[0x277CCACA8]);
      v10 = RTAnalyticsEventWorkoutRouteManagerProcessNewWorkout;
LABEL_16:
      v15 = [v9 initWithCString:v10 encoding:1];
      log_analytics_submission(v15, dataCopy);
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v15];
      AnalyticsSendEvent();

      v8 = 1;
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: data", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"data");
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)_mandatoryMetricKeysForEvent:(unint64_t)event error:(id *)error
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  if (event > 2)
  {
    if (event == 3)
    {
      v13[0] = @"clustering_average_cluster_size";
      v13[1] = @"clustering_count_clusters";
      v13[2] = @"clustering_footprint_delta";
      v13[3] = @"clustering_is_success";
      v13[4] = @"clustering_max_cluster_size";
      v13[5] = @"clustering_min_cluster_size";
      v13[6] = @"clustering_percentage_workouts_clustered";
      v13[7] = @"clustering_time_elapsed";
      v13[8] = @"distance_matric_count_prefiltercache";
      v13[9] = @"distance_matrix_average_time_already_computed";
      v13[10] = @"distance_matrix_average_time_exceeded_dtw";
      v13[11] = @"distance_matrix_average_time_exceeded_quicksimilarity";
      v13[12] = @"distance_matrix_average_time_lessthan_orequal_dtw";
      v13[13] = @"distance_matrix_average_time_lessthan_orequal_quicksimilarity";
      v13[14] = @"distance_matrix_average_time_prefiltered_centroid";
      v13[15] = @"distance_matrix_average_time_prefiltered_firstlocation";
      v13[16] = @"distance_matrix_average_time_prefiltered_iou";
      v13[17] = @"distance_matrix_average_time_prefiltered_lastlocation";
      v13[18] = @"distance_matrix_average_time_prefiltered_locationscount";
      v13[19] = @"distance_matrix_average_time_prefiltered_metadata";
      v13[20] = @"distance_matrix_count_already_computed";
      v13[21] = @"distance_matrix_count_both_workouts_decimated";
      v13[22] = @"distance_matrix_count_exceeded_dtw";
      v13[23] = @"distance_matrix_count_exceeded_quicksimilarity";
      v13[24] = @"distance_matrix_count_lessthan_orequal_dtw";
      v13[25] = @"distance_matrix_count_lessthan_orequal_quicksimilarity";
      v13[26] = @"distance_matrix_count_no_workout_decimated";
      v13[27] = @"distance_matrix_count_prefiltered_centroid";
      v13[28] = @"distance_matrix_count_prefiltered_firstlocation";
      v13[29] = @"distance_matrix_count_prefiltered_iou";
      v13[30] = @"distance_matrix_count_prefiltered_lastlocation";
      v13[31] = @"distance_matrix_count_prefiltered_locationscount";
      v13[32] = @"distance_matrix_count_prefiltered_metadata";
      v13[33] = @"distance_matrix_count_single_workout_decimated";
      v13[34] = @"distance_matrix_final_size";
      v13[35] = @"distance_matrix_footprint_delta";
      v13[36] = @"distance_matrix_initial_size";
      v13[37] = @"distance_matrix_is_success";
      v13[38] = @"distance_matrix_max_time_already_computed";
      v13[39] = @"distance_matrix_max_time_exceeded_dtw";
      v13[40] = @"distance_matrix_max_time_exceeded_quicksimilarity";
      v13[41] = @"distance_matrix_max_time_lessthan_orequal_dtw";
      v13[42] = @"distance_matrix_max_time_lessthan_orequal_quicksimilarity";
      v13[43] = @"distance_matrix_max_time_prefiltered_centroid";
      v13[44] = @"distance_matrix_max_time_prefiltered_firstlocation";
      v13[45] = @"distance_matrix_max_time_prefiltered_iou";
      v13[46] = @"distance_matrix_max_time_prefiltered_lastlocation";
      v13[47] = @"distance_matrix_max_time_prefiltered_locationscount";
      v13[48] = @"distance_matrix_max_time_prefiltered_metadata";
      v13[49] = @"distance_matrix_min_time_already_computed";
      v13[50] = @"distance_matrix_min_time_exceeded_dtw";
      v13[51] = @"distance_matrix_min_time_exceeded_quicksimilarity";
      v13[52] = @"distance_matrix_min_time_lessthan_orequal_dtw";
      v13[53] = @"distance_matrix_min_time_lessthan_orequal_quicksimilarity";
      v13[54] = @"distance_matrix_min_time_prefiltered_centroid";
      v13[55] = @"distance_matrix_min_time_prefiltered_firstlocation";
      v13[56] = @"distance_matrix_min_time_prefiltered_iou";
      v13[57] = @"distance_matrix_min_time_prefiltered_lastlocation";
      v13[58] = @"distance_matrix_min_time_prefiltered_locationscount";
      v13[59] = @"distance_matrix_min_time_prefiltered_metadata";
      v13[60] = @"distance_matrix_time_elapsed";
      v13[61] = @"distance_matrix_total_number_of_comparisons";
      v13[62] = @"is_scheduler_triggered";
      v13[63] = @"number_of_workouts_cycling";
      v13[64] = @"number_of_workouts_running";
      v13[65] = @"number_of_workouts_wheel_chair_run_pace";
      v13[66] = @"parameter_buildDistanceMatrix";
      v13[67] = @"parameter_clearClusters";
      v13[68] = @"parameter_clearExistingDistanceMatrix";
      v13[69] = @"parameter_distance_threshold";
      v13[70] = @"parameter_filter_size";
      v13[71] = @"parameter_syncClustersToHealhtKit";
      v13[72] = @"parameter_syncClustersToWatch";
      v13[73] = @"sync_from_healthkit_count_final_local_clusters";
      v13[74] = @"sync_from_healthkit_count_final_remote_clusters";
      v13[75] = @"sync_from_healthkit_count_local_clusters";
      v13[76] = @"sync_from_healthkit_count_remote_clusters";
      v13[77] = @"sync_from_healthkit_footprint_delta";
      v13[78] = @"sync_from_healthkit_is_success";
      v13[79] = @"sync_from_healthkit_time_elapsed";
      v13[80] = @"sync_to_healthkit_average_time_save_new_cluster";
      v13[81] = @"sync_to_healthkit_average_time_snapshot";
      v13[82] = @"sync_to_healthkit_average_time_update_cluster";
      v13[83] = @"sync_to_healthkit_footprint_delta";
      v13[84] = @"sync_to_healthkit_is_success";
      v13[85] = @"sync_to_healthkit_max_time_save_new_cluster";
      v13[86] = @"sync_to_healthkit_max_time_snapshot";
      v13[87] = @"sync_to_healthkit_max_time_update_cluster";
      v13[88] = @"sync_to_healthkit_min_time_save_new_cluster";
      v13[89] = @"sync_to_healthkit_min_time_snapshot";
      v13[90] = @"sync_to_healthkit_min_time_update_cluster";
      v13[91] = @"sync_to_healthkit_time_elapsed";
      v13[92] = @"sync_to_watch_count_clusters";
      v13[93] = @"sync_to_watch_footprint_delta";
      v13[94] = @"sync_to_watch_is_success";
      v13[95] = @"sync_to_watch_time_elapsed";
      v6 = MEMORY[0x277CBEA60];
      v7 = v13;
      v8 = 96;
      goto LABEL_11;
    }

    if (event == 4)
    {
      v12[0] = @"count_clusters_existing";
      v12[1] = @"count_clusters_existing_zero_relevance";
      v12[2] = @"count_clusters_existing_greaterthanzero_relevance";
      v12[3] = @"count_clusters_new_zero_relevance";
      v12[4] = @"count_clusters_new_greaterthanzero_relevance";
      v12[5] = @"count_clusters_relevance_decreased";
      v12[6] = @"count_clusters_relevance_increased";
      v12[7] = @"count_clusters_relevance_score_not_updated";
      v12[8] = @"count_clusters_relevance_score_updated";
      v12[9] = @"count_clusters_relevance_to_zero";
      v12[10] = @"count_clusters_zero_to_relevance";
      v12[11] = @"footprint_delta";
      v12[12] = @"time_elapsed";
      v6 = MEMORY[0x277CBEA60];
      v7 = v12;
      v8 = 13;
      goto LABEL_11;
    }

LABEL_8:
    array = [MEMORY[0x277CBEA60] array];
    goto LABEL_12;
  }

  if (event == 1)
  {
    v15[0] = @"activity_type";
    v15[1] = @"is_decimated";
    v15[2] = @"is_new_cluster";
    v15[3] = @"is_best_also_last_workout";
    v15[4] = @"count_workouts";
    v15[5] = @"duration";
    v15[6] = @"total_distance";
    v6 = MEMORY[0x277CBEA60];
    v7 = v15;
    v8 = 7;
    goto LABEL_11;
  }

  if (event != 2)
  {
    goto LABEL_8;
  }

  v14[0] = @"footprint_delta";
  v14[1] = @"is_reference_route_best_route";
  v14[2] = @"is_reference_route_last_route";
  v14[3] = @"time_elapsed_mini_worldbuild_check";
  v14[4] = @"is_new_workout_similar_to_reference_route";
  v14[5] = @"is_new_workout_clustered_other";
  v14[6] = @"is_new_workout_clustered_reference_route";
  v14[7] = @"time_elapsed_reference_route_cluster_check";
  v6 = MEMORY[0x277CBEA60];
  v7 = v14;
  v8 = 8;
LABEL_11:
  array = [v6 arrayWithObjects:v7 count:v8];
LABEL_12:
  v10 = array;
  objc_autoreleasePoolPop(v5);

  return v10;
}

- (BOOL)_computeMetricsForClustersEventWithData:(id)data error:(id *)error
{
  dataCopy = data;
  if (dataCopy)
  {
    v7 = objc_autoreleasePoolPush();
    v16 = 0;
    [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"count_workouts" binsStart:&unk_28459F078 binsEnd:&unk_28459F090 gap:&unk_28459F0A8 error:&v16];
    v8 = v16;
    if (!v8)
    {
      v15 = 0;
      [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"duration" binsStart:&unk_28459F078 binsEnd:&unk_28459F0C0 gap:&unk_28459F0A8 error:&v15];
      v8 = v15;
      if (!v8)
      {
        v14 = 0;
        [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"total_distance" binsStart:&unk_28459F078 binsEnd:&unk_28459F0D8 gap:&unk_28459F0A8 error:&v14];
        v8 = v14;
      }
    }

    v9 = v8;
    objc_autoreleasePoolPop(v7);
    if (error)
    {
      v10 = v9;
      *error = v9;
    }

    v11 = v9 == 0;
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: data", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"data");
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)_computeMetricsForProcessNewWorkoutEventWithData:(id)data error:(id *)error
{
  dataCopy = data;
  if (dataCopy)
  {
    v7 = objc_autoreleasePoolPush();
    v16 = 0;
    [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"footprint_delta" binsStart:&unk_28459F078 binsEnd:&unk_28459F0F0 gap:&unk_28459F0A8 error:&v16];
    v8 = v16;
    if (!v8)
    {
      v15 = 0;
      [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"time_elapsed_mini_worldbuild_check" binsStart:&unk_28459F078 binsEnd:&unk_28459F108 gap:&unk_28459F0A8 error:&v15];
      v8 = v15;
      if (!v8)
      {
        v14 = 0;
        [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"time_elapsed_reference_route_cluster_check" binsStart:&unk_28459F078 binsEnd:&unk_28459F108 gap:&unk_28459F0A8 error:&v14];
        v8 = v14;
      }
    }

    v9 = v8;
    objc_autoreleasePoolPop(v7);
    if (error)
    {
      v10 = v9;
      *error = v9;
    }

    v11 = v9 == 0;
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: data", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"data");
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)_computeMetricsForProcessWorkoutsEventWithData:(id)data error:(id *)error
{
  dataCopy = data;
  if (dataCopy)
  {
    v7 = objc_autoreleasePoolPush();
    v98 = 0;
    [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"clustering_average_cluster_size" binsStart:&unk_28459F078 binsEnd:&unk_28459F090 gap:&unk_28459F0A8 error:&v98];
    v8 = v98;
    if (!v8)
    {
      v97 = 0;
      [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"clustering_count_clusters" binsStart:&unk_28459F078 binsEnd:&unk_28459F120 gap:&unk_28459F0A8 error:&v97];
      v8 = v97;
      if (!v8)
      {
        v96 = 0;
        [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"clustering_footprint_delta" binsStart:&unk_28459F078 binsEnd:&unk_28459F0F0 gap:&unk_28459F0A8 error:&v96];
        v8 = v96;
        if (!v8)
        {
          v95 = 0;
          [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"clustering_max_cluster_size" binsStart:&unk_28459F078 binsEnd:&unk_28459F090 gap:&unk_28459F0A8 error:&v95];
          v8 = v95;
          if (!v8)
          {
            v94 = 0;
            [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"clustering_min_cluster_size" binsStart:&unk_28459F078 binsEnd:&unk_28459F090 gap:&unk_28459F0A8 error:&v94];
            v8 = v94;
            if (!v8)
            {
              v93 = 0;
              [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"clustering_percentage_workouts_clustered" binsStart:&unk_28459F078 binsEnd:&unk_28459F138 gap:&unk_28459F0A8 error:&v93];
              v8 = v93;
              if (!v8)
              {
                v92 = 0;
                [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"clustering_time_elapsed" binsStart:&unk_28459F078 binsEnd:&unk_28459F108 gap:&unk_28459F0A8 error:&v92];
                v8 = v92;
                if (!v8)
                {
                  v91 = 0;
                  [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matric_count_prefiltercache" binsStart:&unk_28459F078 binsEnd:&unk_28459F090 gap:&unk_28459F0A8 error:&v91];
                  v8 = v91;
                  if (!v8)
                  {
                    v90 = 0;
                    [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_average_time_already_computed" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v90];
                    v8 = v90;
                    if (!v8)
                    {
                      v89 = 0;
                      [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_average_time_exceeded_dtw" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v89];
                      v8 = v89;
                      if (!v8)
                      {
                        v88 = 0;
                        [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_average_time_exceeded_quicksimilarity" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v88];
                        v8 = v88;
                        if (!v8)
                        {
                          v87 = 0;
                          [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_average_time_lessthan_orequal_dtw" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v87];
                          v8 = v87;
                          if (!v8)
                          {
                            v86 = 0;
                            [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_average_time_lessthan_orequal_quicksimilarity" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v86];
                            v8 = v86;
                            if (!v8)
                            {
                              v85 = 0;
                              [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_average_time_prefiltered_centroid" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v85];
                              v8 = v85;
                              if (!v8)
                              {
                                v84 = 0;
                                [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_average_time_prefiltered_firstlocation" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v84];
                                v8 = v84;
                                if (!v8)
                                {
                                  v83 = 0;
                                  [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_average_time_prefiltered_iou" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v83];
                                  v8 = v83;
                                  if (!v8)
                                  {
                                    v82 = 0;
                                    [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_average_time_prefiltered_lastlocation" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v82];
                                    v8 = v82;
                                    if (!v8)
                                    {
                                      v81 = 0;
                                      [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_average_time_prefiltered_locationscount" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v81];
                                      v8 = v81;
                                      if (!v8)
                                      {
                                        v80 = 0;
                                        [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_average_time_prefiltered_metadata" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v80];
                                        v8 = v80;
                                        if (!v8)
                                        {
                                          v79 = 0;
                                          [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_count_already_computed" binsStart:&unk_28459F078 binsEnd:&unk_28459F168 gap:&unk_28459F138 error:&v79];
                                          v8 = v79;
                                          if (!v8)
                                          {
                                            v78 = 0;
                                            [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_count_both_workouts_decimated" binsStart:&unk_28459F078 binsEnd:&unk_28459F168 gap:&unk_28459F138 error:&v78];
                                            v8 = v78;
                                            if (!v8)
                                            {
                                              v77 = 0;
                                              [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_count_exceeded_dtw" binsStart:&unk_28459F078 binsEnd:&unk_28459F168 gap:&unk_28459F138 error:&v77];
                                              v8 = v77;
                                              if (!v8)
                                              {
                                                v76 = 0;
                                                [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_count_exceeded_quicksimilarity" binsStart:&unk_28459F078 binsEnd:&unk_28459F168 gap:&unk_28459F138 error:&v76];
                                                v8 = v76;
                                                if (!v8)
                                                {
                                                  v75 = 0;
                                                  [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_count_lessthan_orequal_dtw" binsStart:&unk_28459F078 binsEnd:&unk_28459F168 gap:&unk_28459F138 error:&v75];
                                                  v8 = v75;
                                                  if (!v8)
                                                  {
                                                    v74 = 0;
                                                    [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_count_lessthan_orequal_quicksimilarity" binsStart:&unk_28459F078 binsEnd:&unk_28459F168 gap:&unk_28459F138 error:&v74];
                                                    v8 = v74;
                                                    if (!v8)
                                                    {
                                                      v73 = 0;
                                                      [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_count_no_workout_decimated" binsStart:&unk_28459F078 binsEnd:&unk_28459F168 gap:&unk_28459F138 error:&v73];
                                                      v8 = v73;
                                                      if (!v8)
                                                      {
                                                        v72 = 0;
                                                        [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_count_prefiltered_centroid" binsStart:&unk_28459F078 binsEnd:&unk_28459F168 gap:&unk_28459F138 error:&v72];
                                                        v8 = v72;
                                                        if (!v8)
                                                        {
                                                          v71 = 0;
                                                          [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_count_prefiltered_firstlocation" binsStart:&unk_28459F078 binsEnd:&unk_28459F168 gap:&unk_28459F138 error:&v71];
                                                          v8 = v71;
                                                          if (!v8)
                                                          {
                                                            v70 = 0;
                                                            [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_count_prefiltered_iou" binsStart:&unk_28459F078 binsEnd:&unk_28459F168 gap:&unk_28459F138 error:&v70];
                                                            v8 = v70;
                                                            if (!v8)
                                                            {
                                                              v69 = 0;
                                                              [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_count_prefiltered_lastlocation" binsStart:&unk_28459F078 binsEnd:&unk_28459F168 gap:&unk_28459F138 error:&v69];
                                                              v8 = v69;
                                                              if (!v8)
                                                              {
                                                                v68 = 0;
                                                                [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_count_prefiltered_locationscount" binsStart:&unk_28459F078 binsEnd:&unk_28459F168 gap:&unk_28459F138 error:&v68];
                                                                v8 = v68;
                                                                if (!v8)
                                                                {
                                                                  v67 = 0;
                                                                  [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_count_prefiltered_metadata" binsStart:&unk_28459F078 binsEnd:&unk_28459F168 gap:&unk_28459F138 error:&v67];
                                                                  v8 = v67;
                                                                  if (!v8)
                                                                  {
                                                                    v66 = 0;
                                                                    [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_count_single_workout_decimated" binsStart:&unk_28459F078 binsEnd:&unk_28459F168 gap:&unk_28459F138 error:&v66];
                                                                    v8 = v66;
                                                                    if (!v8)
                                                                    {
                                                                      v65 = 0;
                                                                      [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_final_size" binsStart:&unk_28459F078 binsEnd:&unk_28459F168 gap:&unk_28459F138 error:&v65];
                                                                      v8 = v65;
                                                                      if (!v8)
                                                                      {
                                                                        v64 = 0;
                                                                        [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_footprint_delta" binsStart:&unk_28459F078 binsEnd:&unk_28459F0F0 gap:&unk_28459F0A8 error:&v64];
                                                                        v8 = v64;
                                                                        if (!v8)
                                                                        {
                                                                          v63 = 0;
                                                                          [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_initial_size" binsStart:&unk_28459F078 binsEnd:&unk_28459F168 gap:&unk_28459F138 error:&v63];
                                                                          v8 = v63;
                                                                          if (!v8)
                                                                          {
                                                                            v62 = 0;
                                                                            [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_max_time_already_computed" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v62];
                                                                            v8 = v62;
                                                                            if (!v8)
                                                                            {
                                                                              v61 = 0;
                                                                              [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_max_time_exceeded_dtw" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v61];
                                                                              v8 = v61;
                                                                              if (!v8)
                                                                              {
                                                                                v60 = 0;
                                                                                [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_max_time_exceeded_quicksimilarity" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v60];
                                                                                v8 = v60;
                                                                                if (!v8)
                                                                                {
                                                                                  v59 = 0;
                                                                                  [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_max_time_lessthan_orequal_dtw" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v59];
                                                                                  v8 = v59;
                                                                                  if (!v8)
                                                                                  {
                                                                                    v58 = 0;
                                                                                    [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_max_time_lessthan_orequal_quicksimilarity" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v58];
                                                                                    v8 = v58;
                                                                                    if (!v8)
                                                                                    {
                                                                                      v57 = 0;
                                                                                      [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_max_time_prefiltered_centroid" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v57];
                                                                                      v8 = v57;
                                                                                      if (!v8)
                                                                                      {
                                                                                        v56 = 0;
                                                                                        [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_max_time_prefiltered_firstlocation" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v56];
                                                                                        v8 = v56;
                                                                                        if (!v8)
                                                                                        {
                                                                                          v55 = 0;
                                                                                          [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_max_time_prefiltered_iou" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v55];
                                                                                          v8 = v55;
                                                                                          if (!v8)
                                                                                          {
                                                                                            v54 = 0;
                                                                                            [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_max_time_prefiltered_lastlocation" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v54];
                                                                                            v8 = v54;
                                                                                            if (!v8)
                                                                                            {
                                                                                              v53 = 0;
                                                                                              [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_max_time_prefiltered_locationscount" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v53];
                                                                                              v8 = v53;
                                                                                              if (!v8)
                                                                                              {
                                                                                                v52 = 0;
                                                                                                [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_max_time_prefiltered_metadata" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v52];
                                                                                                v8 = v52;
                                                                                                if (!v8)
                                                                                                {
                                                                                                  v51 = 0;
                                                                                                  [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_min_time_already_computed" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v51];
                                                                                                  v8 = v51;
                                                                                                  if (!v8)
                                                                                                  {
                                                                                                    v50 = 0;
                                                                                                    [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_min_time_exceeded_dtw" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v50];
                                                                                                    v8 = v50;
                                                                                                    if (!v8)
                                                                                                    {
                                                                                                      v49 = 0;
                                                                                                      [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_min_time_exceeded_quicksimilarity" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v49];
                                                                                                      v8 = v49;
                                                                                                      if (!v8)
                                                                                                      {
                                                                                                        v48 = 0;
                                                                                                        [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_min_time_lessthan_orequal_dtw" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v48];
                                                                                                        v8 = v48;
                                                                                                        if (!v8)
                                                                                                        {
                                                                                                          v47 = 0;
                                                                                                          [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_min_time_lessthan_orequal_quicksimilarity" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v47];
                                                                                                          v8 = v47;
                                                                                                          if (!v8)
                                                                                                          {
                                                                                                            v46 = 0;
                                                                                                            [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_min_time_prefiltered_centroid" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v46];
                                                                                                            v8 = v46;
                                                                                                            if (!v8)
                                                                                                            {
                                                                                                              v45 = 0;
                                                                                                              [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_min_time_prefiltered_firstlocation" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v45];
                                                                                                              v8 = v45;
                                                                                                              if (!v8)
                                                                                                              {
                                                                                                                v44 = 0;
                                                                                                                [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_min_time_prefiltered_iou" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v44];
                                                                                                                v8 = v44;
                                                                                                                if (!v8)
                                                                                                                {
                                                                                                                  v43 = 0;
                                                                                                                  [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_min_time_prefiltered_lastlocation" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v43];
                                                                                                                  v8 = v43;
                                                                                                                  if (!v8)
                                                                                                                  {
                                                                                                                    v42 = 0;
                                                                                                                    [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_min_time_prefiltered_locationscount" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v42];
                                                                                                                    v8 = v42;
                                                                                                                    if (!v8)
                                                                                                                    {
                                                                                                                      v41 = 0;
                                                                                                                      [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_min_time_prefiltered_metadata" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v41];
                                                                                                                      v8 = v41;
                                                                                                                      if (!v8)
                                                                                                                      {
                                                                                                                        v40 = 0;
                                                                                                                        [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_time_elapsed" binsStart:&unk_28459F078 binsEnd:&unk_28459F108 gap:&unk_28459F0A8 error:&v40];
                                                                                                                        v8 = v40;
                                                                                                                        if (!v8)
                                                                                                                        {
                                                                                                                          v39 = 0;
                                                                                                                          [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"distance_matrix_total_number_of_comparisons" binsStart:&unk_28459F078 binsEnd:&unk_28459F168 gap:&unk_28459F138 error:&v39];
                                                                                                                          v8 = v39;
                                                                                                                          if (!v8)
                                                                                                                          {
                                                                                                                            v38 = 0;
                                                                                                                            [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"number_of_workouts_cycling" binsStart:&unk_28459F078 binsEnd:&unk_28459F090 gap:&unk_28459F0A8 error:&v38];
                                                                                                                            v8 = v38;
                                                                                                                            if (!v8)
                                                                                                                            {
                                                                                                                              v37 = 0;
                                                                                                                              [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"number_of_workouts_running" binsStart:&unk_28459F078 binsEnd:&unk_28459F090 gap:&unk_28459F0A8 error:&v37];
                                                                                                                              v8 = v37;
                                                                                                                              if (!v8)
                                                                                                                              {
                                                                                                                                v36 = 0;
                                                                                                                                [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"number_of_workouts_wheel_chair_run_pace" binsStart:&unk_28459F078 binsEnd:&unk_28459F090 gap:&unk_28459F0A8 error:&v36];
                                                                                                                                v8 = v36;
                                                                                                                                if (!v8)
                                                                                                                                {
                                                                                                                                  v35 = 0;
                                                                                                                                  [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"parameter_distance_threshold" binsStart:&unk_28459F078 binsEnd:&unk_28459F180 gap:&unk_28459F0A8 error:&v35];
                                                                                                                                  v8 = v35;
                                                                                                                                  if (!v8)
                                                                                                                                  {
                                                                                                                                    v34 = 0;
                                                                                                                                    [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"parameter_filter_size" binsStart:&unk_28459F078 binsEnd:&unk_28459F090 gap:&unk_28459F0A8 error:&v34];
                                                                                                                                    v8 = v34;
                                                                                                                                    if (!v8)
                                                                                                                                    {
                                                                                                                                      v33 = 0;
                                                                                                                                      [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"sync_from_healthkit_count_final_local_clusters" binsStart:&unk_28459F078 binsEnd:&unk_28459F120 gap:&unk_28459F0A8 error:&v33];
                                                                                                                                      v8 = v33;
                                                                                                                                      if (!v8)
                                                                                                                                      {
                                                                                                                                        v32 = 0;
                                                                                                                                        [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"sync_from_healthkit_count_final_remote_clusters" binsStart:&unk_28459F078 binsEnd:&unk_28459F120 gap:&unk_28459F0A8 error:&v32];
                                                                                                                                        v8 = v32;
                                                                                                                                        if (!v8)
                                                                                                                                        {
                                                                                                                                          v31 = 0;
                                                                                                                                          [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"sync_from_healthkit_count_local_clusters" binsStart:&unk_28459F078 binsEnd:&unk_28459F120 gap:&unk_28459F0A8 error:&v31];
                                                                                                                                          v8 = v31;
                                                                                                                                          if (!v8)
                                                                                                                                          {
                                                                                                                                            v30 = 0;
                                                                                                                                            [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"sync_from_healthkit_count_remote_clusters" binsStart:&unk_28459F078 binsEnd:&unk_28459F120 gap:&unk_28459F0A8 error:&v30];
                                                                                                                                            v8 = v30;
                                                                                                                                            if (!v8)
                                                                                                                                            {
                                                                                                                                              v29 = 0;
                                                                                                                                              [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"sync_from_healthkit_footprint_delta" binsStart:&unk_28459F078 binsEnd:&unk_28459F0F0 gap:&unk_28459F0A8 error:&v29];
                                                                                                                                              v8 = v29;
                                                                                                                                              if (!v8)
                                                                                                                                              {
                                                                                                                                                v28 = 0;
                                                                                                                                                [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"sync_from_healthkit_time_elapsed" binsStart:&unk_28459F078 binsEnd:&unk_28459F108 gap:&unk_28459F0A8 error:&v28];
                                                                                                                                                v8 = v28;
                                                                                                                                                if (!v8)
                                                                                                                                                {
                                                                                                                                                  v27 = 0;
                                                                                                                                                  [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"sync_to_healthkit_average_time_save_new_cluster" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v27];
                                                                                                                                                  v8 = v27;
                                                                                                                                                  if (!v8)
                                                                                                                                                  {
                                                                                                                                                    v26 = 0;
                                                                                                                                                    [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"sync_to_healthkit_average_time_snapshot" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v26];
                                                                                                                                                    v8 = v26;
                                                                                                                                                    if (!v8)
                                                                                                                                                    {
                                                                                                                                                      v25 = 0;
                                                                                                                                                      [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"sync_to_healthkit_average_time_update_cluster" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v25];
                                                                                                                                                      v8 = v25;
                                                                                                                                                      if (!v8)
                                                                                                                                                      {
                                                                                                                                                        v24 = 0;
                                                                                                                                                        [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"sync_to_healthkit_footprint_delta" binsStart:&unk_28459F078 binsEnd:&unk_28459F0F0 gap:&unk_28459F0A8 error:&v24];
                                                                                                                                                        v8 = v24;
                                                                                                                                                        if (!v8)
                                                                                                                                                        {
                                                                                                                                                          v23 = 0;
                                                                                                                                                          [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"sync_to_healthkit_max_time_save_new_cluster" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v23];
                                                                                                                                                          v8 = v23;
                                                                                                                                                          if (!v8)
                                                                                                                                                          {
                                                                                                                                                            v22 = 0;
                                                                                                                                                            [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"sync_to_healthkit_max_time_snapshot" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v22];
                                                                                                                                                            v8 = v22;
                                                                                                                                                            if (!v8)
                                                                                                                                                            {
                                                                                                                                                              v21 = 0;
                                                                                                                                                              [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"sync_to_healthkit_max_time_update_cluster" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v21];
                                                                                                                                                              v8 = v21;
                                                                                                                                                              if (!v8)
                                                                                                                                                              {
                                                                                                                                                                v20 = 0;
                                                                                                                                                                [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"sync_to_healthkit_min_time_save_new_cluster" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v20];
                                                                                                                                                                v8 = v20;
                                                                                                                                                                if (!v8)
                                                                                                                                                                {
                                                                                                                                                                  v19 = 0;
                                                                                                                                                                  [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"sync_to_healthkit_min_time_snapshot" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v19];
                                                                                                                                                                  v8 = v19;
                                                                                                                                                                  if (!v8)
                                                                                                                                                                  {
                                                                                                                                                                    v18 = 0;
                                                                                                                                                                    [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"sync_to_healthkit_min_time_update_cluster" binsStart:&unk_28459F078 binsEnd:&unk_28459F150 gap:&unk_28459F0A8 error:&v18];
                                                                                                                                                                    v8 = v18;
                                                                                                                                                                    if (!v8)
                                                                                                                                                                    {
                                                                                                                                                                      v17 = 0;
                                                                                                                                                                      [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"sync_to_healthkit_time_elapsed" binsStart:&unk_28459F078 binsEnd:&unk_28459F108 gap:&unk_28459F0A8 error:&v17];
                                                                                                                                                                      v8 = v17;
                                                                                                                                                                      if (!v8)
                                                                                                                                                                      {
                                                                                                                                                                        v16 = 0;
                                                                                                                                                                        [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"sync_to_watch_count_clusters" binsStart:&unk_28459F078 binsEnd:&unk_28459F120 gap:&unk_28459F0A8 error:&v16];
                                                                                                                                                                        v8 = v16;
                                                                                                                                                                        if (!v8)
                                                                                                                                                                        {
                                                                                                                                                                          v15 = 0;
                                                                                                                                                                          [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"sync_to_watch_footprint_delta" binsStart:&unk_28459F078 binsEnd:&unk_28459F0F0 gap:&unk_28459F0A8 error:&v15];
                                                                                                                                                                          v8 = v15;
                                                                                                                                                                          if (!v8)
                                                                                                                                                                          {
                                                                                                                                                                            v14 = 0;
                                                                                                                                                                            [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"sync_to_watch_time_elapsed" binsStart:&unk_28459F078 binsEnd:&unk_28459F108 gap:&unk_28459F0A8 error:&v14];
                                                                                                                                                                            v8 = v14;
                                                                                                                                                                          }
                                                                                                                                                                        }
                                                                                                                                                                      }
                                                                                                                                                                    }
                                                                                                                                                                  }
                                                                                                                                                                }
                                                                                                                                                              }
                                                                                                                                                            }
                                                                                                                                                          }
                                                                                                                                                        }
                                                                                                                                                      }
                                                                                                                                                    }
                                                                                                                                                  }
                                                                                                                                                }
                                                                                                                                              }
                                                                                                                                            }
                                                                                                                                          }
                                                                                                                                        }
                                                                                                                                      }
                                                                                                                                    }
                                                                                                                                  }
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v9 = v8;
    objc_autoreleasePoolPop(v7);
    if (error)
    {
      v10 = v9;
      *error = v9;
    }

    v11 = v9 == 0;
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: data", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"data");
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)_computeMetricsForUpdateRelevanceScoresEventWithData:(id)data error:(id *)error
{
  dataCopy = data;
  if (dataCopy)
  {
    v7 = objc_autoreleasePoolPush();
    v26 = 0;
    [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"count_clusters_existing" binsStart:&unk_28459F078 binsEnd:&unk_28459F120 gap:&unk_28459F0A8 error:&v26];
    v8 = v26;
    if (!v8)
    {
      v25 = 0;
      [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"count_clusters_existing_zero_relevance" binsStart:&unk_28459F078 binsEnd:&unk_28459F120 gap:&unk_28459F0A8 error:&v25];
      v8 = v25;
      if (!v8)
      {
        v24 = 0;
        [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"count_clusters_existing_greaterthanzero_relevance" binsStart:&unk_28459F078 binsEnd:&unk_28459F120 gap:&unk_28459F0A8 error:&v24];
        v8 = v24;
        if (!v8)
        {
          v23 = 0;
          [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"count_clusters_new_zero_relevance" binsStart:&unk_28459F078 binsEnd:&unk_28459F120 gap:&unk_28459F0A8 error:&v23];
          v8 = v23;
          if (!v8)
          {
            v22 = 0;
            [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"count_clusters_new_greaterthanzero_relevance" binsStart:&unk_28459F078 binsEnd:&unk_28459F120 gap:&unk_28459F0A8 error:&v22];
            v8 = v22;
            if (!v8)
            {
              v21 = 0;
              [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"count_clusters_relevance_decreased" binsStart:&unk_28459F078 binsEnd:&unk_28459F120 gap:&unk_28459F0A8 error:&v21];
              v8 = v21;
              if (!v8)
              {
                v20 = 0;
                [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"count_clusters_relevance_increased" binsStart:&unk_28459F078 binsEnd:&unk_28459F120 gap:&unk_28459F0A8 error:&v20];
                v8 = v20;
                if (!v8)
                {
                  v19 = 0;
                  [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"count_clusters_relevance_score_not_updated" binsStart:&unk_28459F078 binsEnd:&unk_28459F120 gap:&unk_28459F0A8 error:&v19];
                  v8 = v19;
                  if (!v8)
                  {
                    v18 = 0;
                    [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"count_clusters_relevance_score_updated" binsStart:&unk_28459F078 binsEnd:&unk_28459F120 gap:&unk_28459F0A8 error:&v18];
                    v8 = v18;
                    if (!v8)
                    {
                      v17 = 0;
                      [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"count_clusters_relevance_to_zero" binsStart:&unk_28459F078 binsEnd:&unk_28459F120 gap:&unk_28459F0A8 error:&v17];
                      v8 = v17;
                      if (!v8)
                      {
                        v16 = 0;
                        [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"count_clusters_zero_to_relevance" binsStart:&unk_28459F078 binsEnd:&unk_28459F120 gap:&unk_28459F0A8 error:&v16];
                        v8 = v16;
                        if (!v8)
                        {
                          v15 = 0;
                          [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"footprint_delta" binsStart:&unk_28459F078 binsEnd:&unk_28459F0F0 gap:&unk_28459F0A8 error:&v15];
                          v8 = v15;
                          if (!v8)
                          {
                            v14 = 0;
                            [(RTWorkoutMetricsManager *)self _updateNSNumberMetricsData:dataCopy key:@"time_elapsed" binsStart:&unk_28459F078 binsEnd:&unk_28459F108 gap:&unk_28459F0A8 error:&v14];
                            v8 = v14;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v9 = v8;
    objc_autoreleasePoolPop(v7);
    if (error)
    {
      v10 = v9;
      *error = v9;
    }

    v11 = v9 == 0;
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: data", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"data");
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)_updateNSNumberMetricsData:(id)data key:(id)key binsStart:(id)start binsEnd:(id)end gap:(id)gap error:(id *)error
{
  dataCopy = data;
  keyCopy = key;
  startCopy = start;
  endCopy = end;
  gapCopy = gap;
  v18 = gapCopy;
  if (!dataCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: data", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_23;
    }

    v25 = @"data";
    goto LABEL_22;
  }

  if (!startCopy)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *v32 = 0;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: binsStart", v32, 2u);
    }

    if (!error)
    {
      goto LABEL_23;
    }

    v25 = @"binsStart";
    goto LABEL_22;
  }

  if (!endCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *v31 = 0;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: binsEnd", v31, 2u);
    }

    if (!error)
    {
      goto LABEL_23;
    }

    v25 = @"binsEnd";
LABEL_22:
    _RTErrorInvalidParameterCreate(v25);
    *error = v23 = 0;
    goto LABEL_24;
  }

  if (!gapCopy)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *v30 = 0;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: gap", v30, 2u);
    }

    if (error)
    {
      v25 = @"gap";
      goto LABEL_22;
    }

LABEL_23:
    v23 = 0;
    goto LABEL_24;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = [dataCopy objectForKeyedSubscript:keyCopy];
  v21 = [RTMetric binsFromStart:startCopy toEnd:endCopy gap:v18];
  v22 = [RTMetric binForNumber:v20 bins:v21];

  [dataCopy setObject:v22 forKeyedSubscript:keyCopy];
  objc_autoreleasePoolPop(v19);
  v23 = 1;
LABEL_24:

  return v23;
}

@end