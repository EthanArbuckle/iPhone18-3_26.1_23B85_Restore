@interface RTPlaceDataMetrics
+ (id)DataSourceToString:(unint64_t)a3;
+ (id)bucketedKeys;
+ (id)calculateMLFeaturesUsingBiomeManager:(id)a3 intervalDictionary:(id)a4 startDate:(id)a5 endDate:(id)a6 createBucketedFeatures:(BOOL)a7;
+ (id)generateDictionaryOfOldMetricsWithLearnedLocationStore:(id)a3 locationsOfInterest:(id)a4 homeMapItem:(id)a5 workMapItem:(id)a6 locationsOfOthers:(id *)a7;
+ (id)labelAnEventInterval:(id)a3 basedOnIntervalDict:(id)a4;
+ (id)meanOf:(id)a3;
+ (id)medianOf:(id)a3;
+ (id)standardDeviationOf:(id)a3;
+ (id)supportedMetricKeys;
- (BOOL)submitMetricsWithError:(id *)a3;
- (RTPlaceDataMetrics)initWithLoggingEnabled:(BOOL)a3;
- (RTPlaceDataMetrics)initWithVisitArray:(id)a3 distanceThreshold:(double)a4 locationHome:(id)a5 locationWork:(id)a6 locationsOfOthers:(id)a7 startDateTime:(id)a8 endDateTime:(id)a9;
- (id)findHomeWorkOthersIntervals;
- (id)removeTimeFromDateTime:(id)a3 withCalendar:(id)a4;
- (int64_t)convertDateTime2SecondsBasedOnCalendar:(id)a3 dateTime:(id)a4;
- (int64_t)daysBetweenDate:(id)a3 andDate:(id)a4;
- (int64_t)numberOfWeeksBetweenDatesBasedOnCalendar:(id)a3 startDateTime:(id)a4 endDateTime:(id)a5;
- (void)calculateAndSetVisitMetrics;
- (void)setCurrentInferenceReplayableMetricsFromDict:(id)a3;
- (void)setDerivedMetrics;
- (void)setMLMetricsFromFeaturesDict:(id)a3 sourceName:(unint64_t)a4;
@end

@implementation RTPlaceDataMetrics

- (RTPlaceDataMetrics)initWithVisitArray:(id)a3 distanceThreshold:(double)a4 locationHome:(id)a5 locationWork:(id)a6 locationsOfOthers:(id)a7 startDateTime:(id)a8 endDateTime:(id)a9
{
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v35 = a7;
  v34 = a8;
  v20 = a9;
  v33 = v19;
  if (!v17)
  {
    v21 = v20;
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v42 = 0;
    v30 = "Invalid parameter not satisfying: visitArray";
    v31 = &v42;
LABEL_25:
    _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, v30, v31, 2u);
    goto LABEL_26;
  }

  if (a4 <= 0.0)
  {
    v21 = v20;
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v41 = 0;
    v30 = "Invalid parameter not satisfying: distanceThreshold > 0";
    v31 = &v41;
    goto LABEL_25;
  }

  if (!v18)
  {
    v21 = v20;
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v40 = 0;
    v30 = "Invalid parameter not satisfying: locationHome";
    v31 = &v40;
    goto LABEL_25;
  }

  if (!v19)
  {
    v21 = v20;
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v39 = 0;
    v30 = "Invalid parameter not satisfying: locationWork";
    v31 = &v39;
    goto LABEL_25;
  }

  if (!v35)
  {
    v21 = v20;
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v38 = 0;
    v30 = "Invalid parameter not satisfying: locationsOfOthers";
    v31 = &v38;
    goto LABEL_25;
  }

  if (!v34)
  {
    v21 = v20;
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v37 = 0;
    v30 = "Invalid parameter not satisfying: startDateTime";
    v31 = &v37;
    goto LABEL_25;
  }

  v21 = v20;
  if (!v20)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v30 = "Invalid parameter not satisfying: endDateTime";
      v31 = buf;
      goto LABEL_25;
    }

LABEL_26:

    v28 = 0;
    goto LABEL_27;
  }

  v22 = [(RTPlaceDataMetrics *)self initWithLoggingEnabled:1];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_visitArray, a3);
    v23->_distanceThreshold = a4;
    objc_storeStrong(&v23->_locationHome, a5);
    objc_storeStrong(&v23->_locationWork, a6);
    objc_storeStrong(&v23->_locationsOfOthers, a7);
    objc_storeStrong(&v23->_startDateTime, a8);
    objc_storeStrong(&v23->_endDateTime, a9);
    v24 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    v25 = [(RTMetric *)v23 metrics];
    [v25 setObject:v24 forKeyedSubscript:@"home_work_distance_threshold"];

    v26 = [MEMORY[0x277CCABB0] numberWithLong:{-[RTPlaceDataMetrics daysBetweenDate:andDate:](v23, "daysBetweenDate:andDate:", v23->_startDateTime, v23->_endDateTime)}];
    v27 = [(RTMetric *)v23 metrics];
    [v27 setObject:v26 forKeyedSubscript:@"days_of_history"];
  }

  self = v23;
  v28 = self;
LABEL_27:

  return v28;
}

- (RTPlaceDataMetrics)initWithLoggingEnabled:(BOOL)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = RTPlaceDataMetrics;
  v3 = [(RTMetric *)&v50 initWithLoggingEnabled:a3];
  if (v3)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v4 = [objc_opt_class() BOOLeanKeys];
    v5 = [v4 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v47;
      v8 = MEMORY[0x277CBEC28];
      do
      {
        v9 = 0;
        do
        {
          if (*v47 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v46 + 1) + 8 * v9);
          v11 = [(RTMetric *)v3 metrics];
          [v11 setObject:v8 forKeyedSubscript:v10];

          ++v9;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v6);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v12 = [objc_opt_class() integerKeys];
    v13 = [v12 countByEnumeratingWithState:&v42 objects:v53 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v43;
      do
      {
        v16 = 0;
        do
        {
          if (*v43 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v42 + 1) + 8 * v16);
          v18 = [(RTMetric *)v3 metrics];
          [v18 setObject:&unk_28459D1B8 forKeyedSubscript:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v42 objects:v53 count:16];
      }

      while (v14);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v19 = [objc_opt_class() doubleKeys];
    v20 = [v19 countByEnumeratingWithState:&v38 objects:v52 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v39;
      do
      {
        v23 = 0;
        do
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v38 + 1) + 8 * v23);
          v25 = [(RTMetric *)v3 metrics];
          [v25 setObject:&unk_2845A19E8 forKeyedSubscript:v24];

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v38 objects:v52 count:16];
      }

      while (v21);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v26 = [objc_opt_class() bucketedKeys];
    v27 = [v26 countByEnumeratingWithState:&v34 objects:v51 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v35;
      do
      {
        v30 = 0;
        do
        {
          if (*v35 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v34 + 1) + 8 * v30);
          v32 = [(RTMetric *)v3 metrics];
          [v32 setObject:&unk_28459D1B8 forKeyedSubscript:v31];

          ++v30;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v34 objects:v51 count:16];
      }

      while (v28);
    }
  }

  return v3;
}

+ (id)bucketedKeys
{
  return objc_msgSend( MEMORY[0x277CBEB98],  "setWithObjects:",  @"home_work_distance_threshold_bucketed",  @"mean_distance_homeVisit_from_homeAddress_bucketed",  @"mean_distance_workVisit_from_workAddress_bucketed",  @"mean_distance_otherVisit_from_otherAddress_bucketed",  @"weekly_occurrence_rate_home_bucketed",  @"weekly_occurrence_rate_work_bucketed",  @"mean_visit_time_home_bucketed",  @"median_visit_time_home_bucketed",  @"mean_visit_time_work_bucketed",  @"median_visit_time_work_bucketed",  @"mean_visit_time_others_bucketed",  @"median_visit_time_others_bucketed",  @"average_occurrence_weekdays_Home_Work_Others_bucketed",  @"average_occurrence_weekdays_Home_NoWork_Others_bucketed",  @"average_occurrence_weekdays_NoHome_Work_Others_bucketed",  @"average_occurrence_weekdays_NoHome_NoWork_Others_bucketed",  @"average_occurrence_weekdays_Home_Work_NoOthers_bucketed",  @"average_occurrence_weekdays_Home_NoWork_NoOthers_bucketed",  @"average_occurrence_weekdays_NoHome_Work_NoOthers_bucketed",  @"average_occurrence_weekdays_NoHome_NoWork_NoOthers_bucketed",  @"average_occurrence_weekend_Home_Work_Others_bucketed",  @"average_occurrence_weekend_Home_NoWork_Others_bucketed",  @"average_occurrence_weekend_NoHome_Work_Others_bucketed",  @"average_occurrence_weekend_NoHome_NoWork_Others_bucketed",  @"average_occurrence_weekend_Home_Work_NoOthers_bucketed",  @"average_occurrence_weekend_Home_NoWork_NoOthers_bucketed",  @"average_occurrence_weekend_NoHome_Work_NoOthers_bucketed",  @"average_occurrence_weekend_NoHome_NoWork_NoOthers_bucketed",  @"median_daily_visits_weekdays_home_bucketed",  @"mean_daily_visits_weekdays_home_bucketed",  @"median_daily_visits_weekdays_work_bucketed",  @"mean_daily_visits_weekdays_work_bucketed",  @"median_daily_visits_weekdays_others_bucketed",  @"mean_daily_visits_weekdays_others_bucketed",  @"median_daily_visits_weekend_home_bucketed",  @"mean_daily_visits_weekend_home_bucketed",  @"median_daily_visits_weekend_work_bucketed",  @"mean_daily_visits_weekend_work_bucketed",  @"median_daily_visits_weekend_others_bucketed",  @"mean_daily_visits_weekend_others_bucketed",  @"median_visit_duration_weekdays_home_bucketed",  @"mean_visit_duration_weekdays_home_bucketed",  @"median_visit_duration_weekdays_work_bucketed",  @"mean_visit_duration_weekdays_work_bucketed",  @"median_visit_duration_weekdays_others_bucketed",  @"mean_visit_duration_weekdays_others_bucketed",  @"median_visit_duration_weekend_home_bucketed",
           @"mean_visit_duration_weekend_home_bucketed",
           @"median_visit_duration_weekend_work_bucketed",
           @"mean_visit_duration_weekend_work_bucketed",
           @"median_visit_duration_weekend_others_bucketed",
           @"mean_visit_duration_weekend_others_bucketed",
           @"median_daily_total_visit_duration_weekdays_home_bucketed",
           @"mean_daily_total_visit_duration_weekdays_home_bucketed",
           @"median_daily_total_visit_duration_weekdays_work_bucketed",
           @"mean_daily_total_visit_duration_weekdays_Work_Bucketed",
           @"median_daily_total_visit_duration_weekdays_others_bucketed",
           @"mean_daily_total_visit_duration_weekdays_others_bucketed",
           @"median_daily_total_visit_duration_weekend_home_bucketed",
           @"mean_daily_total_visit_duration_weekend_home_bucketed",
           @"median_daily_total_visit_duration_weekend_work_bucketed");
}

+ (id)supportedMetricKeys
{
  v2 = MEMORY[0x277CBEB58];
  v3 = [objc_opt_class() integerKeys];
  v4 = [v2 setWithSet:v3];

  v5 = [objc_opt_class() BOOLeanKeys];
  v6 = [v5 allObjects];
  [v4 addObjectsFromArray:v6];

  v7 = [objc_opt_class() doubleKeys];
  v8 = [v7 allObjects];
  [v4 addObjectsFromArray:v8];

  v9 = [objc_opt_class() bucketedKeys];
  v10 = [v9 allObjects];
  [v4 addObjectsFromArray:v10];

  [v4 addObject:@"data_source"];

  return v4;
}

- (void)setDerivedMetrics
{
  v962 = [RTMetric binsFromStart:&unk_28459D1A0 toEnd:&unk_2845A1A38 gap:&unk_2845A1A48];
  v3 = [RTMetric binsFromStart:&unk_28459D1A0 toEnd:&unk_2845A19F8 gap:&unk_2845A1A58];
  v958 = [RTMetric binsFromStart:&unk_28459D1A0 toEnd:&unk_28459D260 gap:&unk_28459D278];
  v4 = [RTMetric binsFromStart:&unk_28459D1A0 toEnd:&unk_2845A19F8 gap:&unk_2845A1A68];
  v960 = [RTMetric binsFromStart:&unk_28459D1A0 toEnd:&unk_2845A1A18 gap:&unk_2845A1A78];
  v961 = [RTMetric binsFromStart:&unk_28459D1A0 toEnd:&unk_2845A1A88 gap:&unk_2845A1A98];
  v959 = [RTMetric binsFromStart:&unk_28459D1A0 toEnd:&unk_2845A1AA8 gap:&unk_2845A1A68];
  v5 = [(RTMetric *)self metrics];
  v6 = [v5 objectForKeyedSubscript:@"home_work_distance_threshold"];
  v7 = [RTMetric binForNumber:v6 bins:&unk_2845A0C20];
  v8 = [(RTMetric *)self metrics];
  [v8 setObject:v7 forKeyedSubscript:@"home_work_distance_threshold_bucketed"];

  v9 = [(RTMetric *)self metrics];
  v10 = [v9 objectForKeyedSubscript:@"mean_distance_homeVisit_from_homeAddress"];
  v11 = [RTMetric binForNumber:v10 bins:v962];
  v12 = [(RTMetric *)self metrics];
  [v12 setObject:v11 forKeyedSubscript:@"mean_distance_homeVisit_from_homeAddress_bucketed"];

  v13 = [(RTMetric *)self metrics];
  v14 = [v13 objectForKeyedSubscript:@"mean_distance_workVisit_from_workAddress"];
  v15 = [RTMetric binForNumber:v14 bins:v962];
  v16 = [(RTMetric *)self metrics];
  [v16 setObject:v15 forKeyedSubscript:@"mean_distance_workVisit_from_workAddress_bucketed"];

  v17 = [(RTMetric *)self metrics];
  v18 = [v17 objectForKeyedSubscript:@"mean_distance_otherVisit_from_otherAddress"];
  v19 = [RTMetric binForNumber:v18 bins:v962];
  v20 = [(RTMetric *)self metrics];
  [v20 setObject:v19 forKeyedSubscript:@"mean_distance_otherVisit_from_otherAddress_bucketed"];

  v21 = [(RTMetric *)self metrics];
  v22 = [v21 objectForKeyedSubscript:@"weekly_occurrence_rate_home"];
  v23 = +[RTPlaceDataMetrics binArrayPercentage];
  v24 = [RTMetric binForNumber:v22 bins:v23];
  v25 = [(RTMetric *)self metrics];
  [v25 setObject:v24 forKeyedSubscript:@"weekly_occurrence_rate_home_bucketed"];

  v26 = [(RTMetric *)self metrics];
  v27 = [v26 objectForKeyedSubscript:@"weekly_occurrence_rate_work"];
  v28 = +[RTPlaceDataMetrics binArrayPercentage];
  v29 = [RTMetric binForNumber:v27 bins:v28];
  v30 = [(RTMetric *)self metrics];
  [v30 setObject:v29 forKeyedSubscript:@"weekly_occurrence_rate_work_bucketed"];

  v31 = [(RTMetric *)self metrics];
  v32 = [v31 objectForKeyedSubscript:@"mean_visit_time_home"];
  v33 = [RTMetric binForNumber:v32 bins:v3];
  v34 = [(RTMetric *)self metrics];
  [v34 setObject:v33 forKeyedSubscript:@"mean_visit_time_home_bucketed"];

  v35 = [(RTMetric *)self metrics];
  v36 = [v35 objectForKeyedSubscript:@"median_visit_time_home"];
  v37 = [RTMetric binForNumber:v36 bins:v3];
  v38 = [(RTMetric *)self metrics];
  [v38 setObject:v37 forKeyedSubscript:@"median_visit_time_home_bucketed"];

  v39 = [(RTMetric *)self metrics];
  v40 = [v39 objectForKeyedSubscript:@"mean_visit_time_work"];
  v41 = [RTMetric binForNumber:v40 bins:v3];
  v42 = [(RTMetric *)self metrics];
  [v42 setObject:v41 forKeyedSubscript:@"mean_visit_time_work_bucketed"];

  v43 = [(RTMetric *)self metrics];
  v44 = [v43 objectForKeyedSubscript:@"median_visit_time_work"];
  v45 = [RTMetric binForNumber:v44 bins:v3];
  v46 = [(RTMetric *)self metrics];
  [v46 setObject:v45 forKeyedSubscript:@"median_visit_time_work_bucketed"];

  v47 = [(RTMetric *)self metrics];
  v48 = [v47 objectForKeyedSubscript:@"mean_visit_time_others"];
  v49 = [RTMetric binForNumber:v48 bins:v3];
  v50 = [(RTMetric *)self metrics];
  [v50 setObject:v49 forKeyedSubscript:@"mean_visit_time_others_bucketed"];

  v51 = [(RTMetric *)self metrics];
  v52 = [v51 objectForKeyedSubscript:@"median_visit_time_others"];
  v53 = [RTMetric binForNumber:v52 bins:v3];
  v54 = [(RTMetric *)self metrics];
  [v54 setObject:v53 forKeyedSubscript:@"median_visit_time_others_bucketed"];

  v55 = [(RTMetric *)self metrics];
  v56 = [v55 objectForKeyedSubscript:@"average_occurrence_weekdays_Home_Work_Others"];
  v57 = [RTMetric binForNumber:v56 bins:v960];
  v58 = [(RTMetric *)self metrics];
  [v58 setObject:v57 forKeyedSubscript:@"average_occurrence_weekdays_Home_Work_Others_bucketed"];

  v59 = [(RTMetric *)self metrics];
  v60 = [v59 objectForKeyedSubscript:@"average_occurrence_weekdays_Home_NoWork_Others"];
  v61 = [RTMetric binForNumber:v60 bins:v960];
  v62 = [(RTMetric *)self metrics];
  [v62 setObject:v61 forKeyedSubscript:@"average_occurrence_weekdays_Home_NoWork_Others_bucketed"];

  v63 = [(RTMetric *)self metrics];
  v64 = [v63 objectForKeyedSubscript:@"average_occurrence_weekdays_NoHome_Work_Others"];
  v65 = [RTMetric binForNumber:v64 bins:v960];
  v66 = [(RTMetric *)self metrics];
  [v66 setObject:v65 forKeyedSubscript:@"average_occurrence_weekdays_NoHome_Work_Others_bucketed"];

  v67 = [(RTMetric *)self metrics];
  v68 = [v67 objectForKeyedSubscript:@"average_occurrence_weekdays_NoHome_NoWork_Others"];
  v69 = [RTMetric binForNumber:v68 bins:v960];
  v70 = [(RTMetric *)self metrics];
  [v70 setObject:v69 forKeyedSubscript:@"average_occurrence_weekdays_NoHome_NoWork_Others_bucketed"];

  v71 = [(RTMetric *)self metrics];
  v72 = [v71 objectForKeyedSubscript:@"average_occurrence_weekdays_Home_Work_NoOthers"];
  v73 = [RTMetric binForNumber:v72 bins:v960];
  v74 = [(RTMetric *)self metrics];
  [v74 setObject:v73 forKeyedSubscript:@"average_occurrence_weekdays_Home_Work_NoOthers_bucketed"];

  v75 = [(RTMetric *)self metrics];
  v76 = [v75 objectForKeyedSubscript:@"average_occurrence_weekdays_Home_NoWork_NoOthers"];
  v77 = [RTMetric binForNumber:v76 bins:v960];
  v78 = [(RTMetric *)self metrics];
  [v78 setObject:v77 forKeyedSubscript:@"average_occurrence_weekdays_Home_NoWork_NoOthers_bucketed"];

  v79 = [(RTMetric *)self metrics];
  v80 = [v79 objectForKeyedSubscript:@"average_occurrence_weekdays_NoHome_Work_NoOthers"];
  v81 = [RTMetric binForNumber:v80 bins:v960];
  v82 = [(RTMetric *)self metrics];
  [v82 setObject:v81 forKeyedSubscript:@"average_occurrence_weekdays_NoHome_Work_NoOthers_bucketed"];

  v83 = [(RTMetric *)self metrics];
  v84 = [v83 objectForKeyedSubscript:@"average_occurrence_weekdays_NoHome_NoWork_NoOthers"];
  v85 = [RTMetric binForNumber:v84 bins:v960];
  v86 = [(RTMetric *)self metrics];
  [v86 setObject:v85 forKeyedSubscript:@"average_occurrence_weekdays_NoHome_NoWork_NoOthers_bucketed"];

  v87 = [(RTMetric *)self metrics];
  v88 = [v87 objectForKeyedSubscript:@"average_occurrence_weekend_Home_Work_Others"];
  v89 = [RTMetric binForNumber:v88 bins:v960];
  v90 = [(RTMetric *)self metrics];
  [v90 setObject:v89 forKeyedSubscript:@"average_occurrence_weekend_Home_Work_Others_bucketed"];

  v91 = [(RTMetric *)self metrics];
  v92 = [v91 objectForKeyedSubscript:@"average_occurrence_weekend_Home_NoWork_Others"];
  v93 = [RTMetric binForNumber:v92 bins:v960];
  v94 = [(RTMetric *)self metrics];
  [v94 setObject:v93 forKeyedSubscript:@"average_occurrence_weekend_Home_NoWork_Others_bucketed"];

  v95 = [(RTMetric *)self metrics];
  v96 = [v95 objectForKeyedSubscript:@"average_occurrence_weekend_NoHome_Work_Others"];
  v97 = [RTMetric binForNumber:v96 bins:v960];
  v98 = [(RTMetric *)self metrics];
  [v98 setObject:v97 forKeyedSubscript:@"average_occurrence_weekend_NoHome_Work_Others_bucketed"];

  v99 = [(RTMetric *)self metrics];
  v100 = [v99 objectForKeyedSubscript:@"average_occurrence_weekend_NoHome_NoWork_Others"];
  v101 = [RTMetric binForNumber:v100 bins:v960];
  v102 = [(RTMetric *)self metrics];
  [v102 setObject:v101 forKeyedSubscript:@"average_occurrence_weekend_NoHome_NoWork_Others_bucketed"];

  v103 = [(RTMetric *)self metrics];
  v104 = [v103 objectForKeyedSubscript:@"average_occurrence_weekend_Home_Work_NoOthers"];
  v105 = [RTMetric binForNumber:v104 bins:v960];
  v106 = [(RTMetric *)self metrics];
  [v106 setObject:v105 forKeyedSubscript:@"average_occurrence_weekend_Home_Work_NoOthers_bucketed"];

  v107 = [(RTMetric *)self metrics];
  v108 = [v107 objectForKeyedSubscript:@"average_occurrence_weekend_Home_NoWork_NoOthers"];
  v109 = [RTMetric binForNumber:v108 bins:v960];
  v110 = [(RTMetric *)self metrics];
  [v110 setObject:v109 forKeyedSubscript:@"average_occurrence_weekend_Home_NoWork_NoOthers_bucketed"];

  v111 = [(RTMetric *)self metrics];
  v112 = [v111 objectForKeyedSubscript:@"average_occurrence_weekend_NoHome_Work_NoOthers"];
  v113 = [RTMetric binForNumber:v112 bins:v960];
  v114 = [(RTMetric *)self metrics];
  [v114 setObject:v113 forKeyedSubscript:@"average_occurrence_weekend_NoHome_Work_NoOthers_bucketed"];

  v115 = [(RTMetric *)self metrics];
  v116 = [v115 objectForKeyedSubscript:@"average_occurrence_weekend_NoHome_NoWork_NoOthers"];
  v117 = [RTMetric binForNumber:v116 bins:v960];
  v118 = [(RTMetric *)self metrics];
  [v118 setObject:v117 forKeyedSubscript:@"average_occurrence_weekend_NoHome_NoWork_NoOthers_bucketed"];

  v119 = [(RTMetric *)self metrics];
  v120 = [v119 objectForKeyedSubscript:@"median_daily_visits_weekdays_home"];
  v121 = [RTMetric binForNumber:v120 bins:v958];
  v122 = [(RTMetric *)self metrics];
  [v122 setObject:v121 forKeyedSubscript:@"median_daily_visits_weekdays_home_bucketed"];

  v123 = [(RTMetric *)self metrics];
  v124 = [v123 objectForKeyedSubscript:@"mean_daily_visits_weekdays_home"];
  v125 = [RTMetric binForNumber:v124 bins:v958];
  v126 = [(RTMetric *)self metrics];
  [v126 setObject:v125 forKeyedSubscript:@"mean_daily_visits_weekdays_home_bucketed"];

  v127 = [(RTMetric *)self metrics];
  v128 = [v127 objectForKeyedSubscript:@"median_daily_visits_weekdays_work"];
  v129 = [RTMetric binForNumber:v128 bins:v958];
  v130 = [(RTMetric *)self metrics];
  [v130 setObject:v129 forKeyedSubscript:@"median_daily_visits_weekdays_work_bucketed"];

  v131 = [(RTMetric *)self metrics];
  v132 = [v131 objectForKeyedSubscript:@"mean_daily_visits_weekdays_work"];
  v133 = [RTMetric binForNumber:v132 bins:v958];
  v134 = [(RTMetric *)self metrics];
  [v134 setObject:v133 forKeyedSubscript:@"mean_daily_visits_weekdays_work_bucketed"];

  v135 = [(RTMetric *)self metrics];
  v136 = [v135 objectForKeyedSubscript:@"median_daily_visits_weekdays_others"];
  v137 = [RTMetric binForNumber:v136 bins:v958];
  v138 = [(RTMetric *)self metrics];
  [v138 setObject:v137 forKeyedSubscript:@"median_daily_visits_weekdays_others_bucketed"];

  v139 = [(RTMetric *)self metrics];
  v140 = [v139 objectForKeyedSubscript:@"mean_daily_visits_weekdays_others"];
  v141 = [RTMetric binForNumber:v140 bins:v958];
  v142 = [(RTMetric *)self metrics];
  [v142 setObject:v141 forKeyedSubscript:@"mean_daily_visits_weekdays_others_bucketed"];

  v143 = [(RTMetric *)self metrics];
  v144 = [v143 objectForKeyedSubscript:@"median_daily_visits_weekend_home"];
  v145 = [RTMetric binForNumber:v144 bins:v958];
  v146 = [(RTMetric *)self metrics];
  [v146 setObject:v145 forKeyedSubscript:@"median_daily_visits_weekend_home_bucketed"];

  v147 = [(RTMetric *)self metrics];
  v148 = [v147 objectForKeyedSubscript:@"mean_daily_visits_weekend_home"];
  v149 = [RTMetric binForNumber:v148 bins:v958];
  v150 = [(RTMetric *)self metrics];
  [v150 setObject:v149 forKeyedSubscript:@"mean_daily_visits_weekend_home_bucketed"];

  v151 = [(RTMetric *)self metrics];
  v152 = [v151 objectForKeyedSubscript:@"median_daily_visits_weekend_work"];
  v153 = [RTMetric binForNumber:v152 bins:v958];
  v154 = [(RTMetric *)self metrics];
  [v154 setObject:v153 forKeyedSubscript:@"median_daily_visits_weekend_work_bucketed"];

  v155 = [(RTMetric *)self metrics];
  v156 = [v155 objectForKeyedSubscript:@"mean_daily_visits_weekend_work"];
  v157 = [RTMetric binForNumber:v156 bins:v958];
  v158 = [(RTMetric *)self metrics];
  [v158 setObject:v157 forKeyedSubscript:@"mean_daily_visits_weekend_work_bucketed"];

  v159 = [(RTMetric *)self metrics];
  v160 = [v159 objectForKeyedSubscript:@"median_daily_visits_weekend_others"];
  v161 = [RTMetric binForNumber:v160 bins:v958];
  v162 = [(RTMetric *)self metrics];
  [v162 setObject:v161 forKeyedSubscript:@"median_daily_visits_weekend_others_bucketed"];

  v163 = [(RTMetric *)self metrics];
  v164 = [v163 objectForKeyedSubscript:@"mean_daily_visits_weekend_others"];
  v165 = [RTMetric binForNumber:v164 bins:v958];
  v166 = [(RTMetric *)self metrics];
  [v166 setObject:v165 forKeyedSubscript:@"mean_daily_visits_weekend_others_bucketed"];

  v167 = [(RTMetric *)self metrics];
  v168 = [v167 objectForKeyedSubscript:@"median_visit_duration_weekdays_home"];
  v169 = [RTMetric binForNumber:v168 bins:v4];
  v170 = [(RTMetric *)self metrics];
  [v170 setObject:v169 forKeyedSubscript:@"median_visit_duration_weekdays_home_bucketed"];

  v171 = [(RTMetric *)self metrics];
  v172 = [v171 objectForKeyedSubscript:@"mean_visit_duration_weekdays_home"];
  v173 = [RTMetric binForNumber:v172 bins:v4];
  v174 = [(RTMetric *)self metrics];
  [v174 setObject:v173 forKeyedSubscript:@"mean_visit_duration_weekdays_home_bucketed"];

  v175 = [(RTMetric *)self metrics];
  v176 = [v175 objectForKeyedSubscript:@"median_visit_duration_weekdays_work"];
  v177 = [RTMetric binForNumber:v176 bins:v4];
  v178 = [(RTMetric *)self metrics];
  [v178 setObject:v177 forKeyedSubscript:@"median_visit_duration_weekdays_work_bucketed"];

  v179 = [(RTMetric *)self metrics];
  v180 = [v179 objectForKeyedSubscript:@"mean_visit_duration_weekdays_work"];
  v181 = [RTMetric binForNumber:v180 bins:v4];
  v182 = [(RTMetric *)self metrics];
  [v182 setObject:v181 forKeyedSubscript:@"mean_visit_duration_weekdays_work_bucketed"];

  v183 = [(RTMetric *)self metrics];
  v184 = [v183 objectForKeyedSubscript:@"median_visit_duration_weekdays_others"];
  v185 = [RTMetric binForNumber:v184 bins:v4];
  v186 = [(RTMetric *)self metrics];
  [v186 setObject:v185 forKeyedSubscript:@"median_visit_duration_weekdays_others_bucketed"];

  v187 = [(RTMetric *)self metrics];
  v188 = [v187 objectForKeyedSubscript:@"mean_visit_duration_weekdays_others"];
  v189 = [RTMetric binForNumber:v188 bins:v4];
  v190 = [(RTMetric *)self metrics];
  [v190 setObject:v189 forKeyedSubscript:@"mean_visit_duration_weekdays_others_bucketed"];

  v191 = [(RTMetric *)self metrics];
  v192 = [v191 objectForKeyedSubscript:@"median_visit_duration_weekend_home"];
  v193 = [RTMetric binForNumber:v192 bins:v4];
  v194 = [(RTMetric *)self metrics];
  [v194 setObject:v193 forKeyedSubscript:@"median_visit_duration_weekend_home_bucketed"];

  v195 = [(RTMetric *)self metrics];
  v196 = [v195 objectForKeyedSubscript:@"mean_visit_duration_weekend_home"];
  v197 = [RTMetric binForNumber:v196 bins:v4];
  v198 = [(RTMetric *)self metrics];
  [v198 setObject:v197 forKeyedSubscript:@"mean_visit_duration_weekend_home_bucketed"];

  v199 = [(RTMetric *)self metrics];
  v200 = [v199 objectForKeyedSubscript:@"median_visit_duration_weekend_work"];
  v201 = [RTMetric binForNumber:v200 bins:v4];
  v202 = [(RTMetric *)self metrics];
  [v202 setObject:v201 forKeyedSubscript:@"median_visit_duration_weekend_work_bucketed"];

  v203 = [(RTMetric *)self metrics];
  v204 = [v203 objectForKeyedSubscript:@"mean_visit_duration_weekend_work"];
  v205 = [RTMetric binForNumber:v204 bins:v4];
  v206 = [(RTMetric *)self metrics];
  [v206 setObject:v205 forKeyedSubscript:@"mean_visit_duration_weekend_work_bucketed"];

  v207 = [(RTMetric *)self metrics];
  v208 = [v207 objectForKeyedSubscript:@"median_visit_duration_weekend_others"];
  v209 = [RTMetric binForNumber:v208 bins:v4];
  v210 = [(RTMetric *)self metrics];
  [v210 setObject:v209 forKeyedSubscript:@"median_visit_duration_weekend_others_bucketed"];

  v211 = [(RTMetric *)self metrics];
  v212 = [v211 objectForKeyedSubscript:@"mean_visit_duration_weekend_others"];
  v213 = [RTMetric binForNumber:v212 bins:v4];
  v214 = [(RTMetric *)self metrics];
  [v214 setObject:v213 forKeyedSubscript:@"mean_visit_duration_weekend_others_bucketed"];

  v215 = [(RTMetric *)self metrics];
  v216 = [v215 objectForKeyedSubscript:@"median_daily_total_visit_duration_weekdays_home"];
  v217 = [RTMetric binForNumber:v216 bins:v4];
  v218 = [(RTMetric *)self metrics];
  [v218 setObject:v217 forKeyedSubscript:@"median_daily_total_visit_duration_weekdays_home_bucketed"];

  v219 = [(RTMetric *)self metrics];
  v220 = [v219 objectForKeyedSubscript:@"mean_daily_total_visit_duration_weekdays_home"];
  v221 = [RTMetric binForNumber:v220 bins:v4];
  v222 = [(RTMetric *)self metrics];
  [v222 setObject:v221 forKeyedSubscript:@"mean_daily_total_visit_duration_weekdays_home_bucketed"];

  v223 = [(RTMetric *)self metrics];
  v224 = [v223 objectForKeyedSubscript:@"median_daily_total_visit_duration_weekdays_work"];
  v225 = [RTMetric binForNumber:v224 bins:v4];
  v226 = [(RTMetric *)self metrics];
  [v226 setObject:v225 forKeyedSubscript:@"median_daily_total_visit_duration_weekdays_work_bucketed"];

  v227 = [(RTMetric *)self metrics];
  v228 = [v227 objectForKeyedSubscript:@"mean_daily_total_visit_duration_weekdays_work"];
  v229 = [RTMetric binForNumber:v228 bins:v4];
  v230 = [(RTMetric *)self metrics];
  [v230 setObject:v229 forKeyedSubscript:@"mean_daily_total_visit_duration_weekdays_Work_Bucketed"];

  v231 = [(RTMetric *)self metrics];
  v232 = [v231 objectForKeyedSubscript:@"median_daily_total_visit_duration_weekdays_others"];
  v233 = [RTMetric binForNumber:v232 bins:v4];
  v234 = [(RTMetric *)self metrics];
  [v234 setObject:v233 forKeyedSubscript:@"median_daily_total_visit_duration_weekdays_others_bucketed"];

  v235 = [(RTMetric *)self metrics];
  v236 = [v235 objectForKeyedSubscript:@"mean_daily_total_visit_duration_weekdays_others"];
  v237 = [RTMetric binForNumber:v236 bins:v4];
  v238 = [(RTMetric *)self metrics];
  [v238 setObject:v237 forKeyedSubscript:@"mean_daily_total_visit_duration_weekdays_others_bucketed"];

  v239 = [(RTMetric *)self metrics];
  v240 = [v239 objectForKeyedSubscript:@"median_daily_total_visit_duration_weekend_home"];
  v241 = [RTMetric binForNumber:v240 bins:v4];
  v242 = [(RTMetric *)self metrics];
  [v242 setObject:v241 forKeyedSubscript:@"median_daily_total_visit_duration_weekend_home_bucketed"];

  v243 = [(RTMetric *)self metrics];
  v244 = [v243 objectForKeyedSubscript:@"mean_daily_total_visit_duration_weekend_home"];
  v245 = [RTMetric binForNumber:v244 bins:v4];
  v246 = [(RTMetric *)self metrics];
  [v246 setObject:v245 forKeyedSubscript:@"mean_daily_total_visit_duration_weekend_home_bucketed"];

  v247 = [(RTMetric *)self metrics];
  v248 = [v247 objectForKeyedSubscript:@"median_daily_total_visit_duration_weekend_work"];
  v249 = [RTMetric binForNumber:v248 bins:v4];
  v250 = [(RTMetric *)self metrics];
  [v250 setObject:v249 forKeyedSubscript:@"median_daily_total_visit_duration_weekend_work_bucketed"];

  v251 = [(RTMetric *)self metrics];
  v252 = [v251 objectForKeyedSubscript:@"mean_daily_total_visit_duration_weekend_work"];
  v253 = [RTMetric binForNumber:v252 bins:v4];
  v254 = [(RTMetric *)self metrics];
  [v254 setObject:v253 forKeyedSubscript:@"mean_daily_total_visit_duration_weekend_work_bucketed"];

  v255 = [(RTMetric *)self metrics];
  v256 = [v255 objectForKeyedSubscript:@"median_daily_total_visit_duration_weekend_others"];
  v257 = [RTMetric binForNumber:v256 bins:v4];
  v258 = [(RTMetric *)self metrics];
  [v258 setObject:v257 forKeyedSubscript:@"median_daily_total_visit_duration_weekend_others_bucketed"];

  v259 = [(RTMetric *)self metrics];
  v260 = [v259 objectForKeyedSubscript:@"mean_daily_total_visit_duration_weekend_others"];
  v261 = [RTMetric binForNumber:v260 bins:v4];
  v262 = [(RTMetric *)self metrics];
  [v262 setObject:v261 forKeyedSubscript:@"mean_daily_total_visit_duration_weekend_others_bucketed"];

  v263 = [(RTMetric *)self metrics];
  v264 = [v263 objectForKeyedSubscript:@"median_daily_longest_visit_duration_weekdays_home"];
  v265 = [RTMetric binForNumber:v264 bins:v4];
  v266 = [(RTMetric *)self metrics];
  [v266 setObject:v265 forKeyedSubscript:@"median_daily_longest_visit_duration_weekdays_home_bucketed"];

  v267 = [(RTMetric *)self metrics];
  v268 = [v267 objectForKeyedSubscript:@"mean_daily_longest_visit_duration_weekdays_home"];
  v269 = [RTMetric binForNumber:v268 bins:v4];
  v270 = [(RTMetric *)self metrics];
  [v270 setObject:v269 forKeyedSubscript:@"mean_daily_longest_visit_duration_weekdays_home_bucketed"];

  v271 = [(RTMetric *)self metrics];
  v272 = [v271 objectForKeyedSubscript:@"median_daily_longest_visit_duration_weekdays_work"];
  v273 = [RTMetric binForNumber:v272 bins:v4];
  v274 = [(RTMetric *)self metrics];
  [v274 setObject:v273 forKeyedSubscript:@"median_daily_longest_visit_duration_weekdays_work_bucketed"];

  v275 = [(RTMetric *)self metrics];
  v276 = [v275 objectForKeyedSubscript:@"mean_daily_longest_visit_duration_weekdays_work"];
  v277 = [RTMetric binForNumber:v276 bins:v4];
  v278 = [(RTMetric *)self metrics];
  [v278 setObject:v277 forKeyedSubscript:@"mean_daily_longest_visit_duration_weekdays_work_bucketed"];

  v279 = [(RTMetric *)self metrics];
  v280 = [v279 objectForKeyedSubscript:@"median_daily_longest_visit_duration_weekdays_others"];
  v281 = [RTMetric binForNumber:v280 bins:v4];
  v282 = [(RTMetric *)self metrics];
  [v282 setObject:v281 forKeyedSubscript:@"median_daily_longest_visit_duration_weekdays_others_bucketed"];

  v283 = [(RTMetric *)self metrics];
  v284 = [v283 objectForKeyedSubscript:@"mean_daily_longest_visit_duration_weekdays_others"];
  v285 = [RTMetric binForNumber:v284 bins:v4];
  v286 = [(RTMetric *)self metrics];
  [v286 setObject:v285 forKeyedSubscript:@"mean_daily_longest_visit_duration_weekdays_others_bucketed"];

  v287 = [(RTMetric *)self metrics];
  v288 = [v287 objectForKeyedSubscript:@"median_daily_longest_visit_duration_weekend_home"];
  v289 = [RTMetric binForNumber:v288 bins:v4];
  v290 = [(RTMetric *)self metrics];
  [v290 setObject:v289 forKeyedSubscript:@"median_daily_longest_visit_duration_weekend_home_bucketed"];

  v291 = [(RTMetric *)self metrics];
  v292 = [v291 objectForKeyedSubscript:@"mean_daily_longest_visit_duration_weekend_home"];
  v293 = [RTMetric binForNumber:v292 bins:v4];
  v294 = [(RTMetric *)self metrics];
  [v294 setObject:v293 forKeyedSubscript:@"mean_daily_longest_visit_duration_weekend_home_bucketed"];

  v295 = [(RTMetric *)self metrics];
  v296 = [v295 objectForKeyedSubscript:@"median_daily_longest_visit_duration_weekend_work"];
  v297 = [RTMetric binForNumber:v296 bins:v4];
  v298 = [(RTMetric *)self metrics];
  [v298 setObject:v297 forKeyedSubscript:@"median_daily_longest_visit_duration_weekend_work_bucketed"];

  v299 = [(RTMetric *)self metrics];
  v300 = [v299 objectForKeyedSubscript:@"mean_daily_longest_visit_duration_weekend_work"];
  v301 = [RTMetric binForNumber:v300 bins:v4];
  v302 = [(RTMetric *)self metrics];
  [v302 setObject:v301 forKeyedSubscript:@"mean_daily_longest_visit_duration_weekend_work_bucketed"];

  v303 = [(RTMetric *)self metrics];
  v304 = [v303 objectForKeyedSubscript:@"median_daily_longest_visit_duration_weekend_others"];
  v305 = [RTMetric binForNumber:v304 bins:v4];
  v306 = [(RTMetric *)self metrics];
  [v306 setObject:v305 forKeyedSubscript:@"median_daily_longest_visit_duration_weekend_others_bucketed"];

  v307 = [(RTMetric *)self metrics];
  v308 = [v307 objectForKeyedSubscript:@"mean_daily_longest_visit_duration_weekend_others"];
  v309 = [RTMetric binForNumber:v308 bins:v4];
  v310 = [(RTMetric *)self metrics];
  [v310 setObject:v309 forKeyedSubscript:@"mean_daily_longest_visit_duration_weekend_others_bucketed"];

  v311 = [(RTMetric *)self metrics];
  v312 = [v311 objectForKeyedSubscript:@"percentage_of_days_with_charging_home"];
  v313 = +[RTPlaceDataMetrics binArrayPercentage];
  v314 = [RTMetric binForNumber:v312 bins:v313];
  v315 = [(RTMetric *)self metrics];
  [v315 setObject:v314 forKeyedSubscript:@"percentage_of_days_with_charging_home_bucketed"];

  v316 = [(RTMetric *)self metrics];
  v317 = [v316 objectForKeyedSubscript:@"percentage_of_days_with_charging_work"];
  v318 = +[RTPlaceDataMetrics binArrayPercentage];
  v319 = [RTMetric binForNumber:v317 bins:v318];
  v320 = [(RTMetric *)self metrics];
  [v320 setObject:v319 forKeyedSubscript:@"percentage_of_days_with_charging_work_bucketed"];

  v321 = [(RTMetric *)self metrics];
  v322 = [v321 objectForKeyedSubscript:@"percentage_of_days_with_charging_others"];
  v323 = +[RTPlaceDataMetrics binArrayPercentage];
  v324 = [RTMetric binForNumber:v322 bins:v323];
  v325 = [(RTMetric *)self metrics];
  [v325 setObject:v324 forKeyedSubscript:@"percentage_of_days_with_charging_others_bucketed"];

  v326 = [(RTMetric *)self metrics];
  v327 = [v326 objectForKeyedSubscript:@"percentage_of_days_with_staticMotion_home"];
  v328 = +[RTPlaceDataMetrics binArrayPercentage];
  v329 = [RTMetric binForNumber:v327 bins:v328];
  v330 = [(RTMetric *)self metrics];
  [v330 setObject:v329 forKeyedSubscript:@"percentage_of_days_with_static_motion_home_bucketed"];

  v331 = [(RTMetric *)self metrics];
  v332 = [v331 objectForKeyedSubscript:@"percentage_of_days_with_staticMotion_work"];
  v333 = +[RTPlaceDataMetrics binArrayPercentage];
  v334 = [RTMetric binForNumber:v332 bins:v333];
  v335 = [(RTMetric *)self metrics];
  [v335 setObject:v334 forKeyedSubscript:@"percentage_of_days_with_static_motion_work_bucketed"];

  v336 = [(RTMetric *)self metrics];
  v337 = [v336 objectForKeyedSubscript:@"percentage_of_days_with_staticMotion_others"];
  v338 = +[RTPlaceDataMetrics binArrayPercentage];
  v339 = [RTMetric binForNumber:v337 bins:v338];
  v340 = [(RTMetric *)self metrics];
  [v340 setObject:v339 forKeyedSubscript:@"percentage_of_days_with_static_motion_others_bucketed"];

  v341 = [(RTMetric *)self metrics];
  v342 = [v341 objectForKeyedSubscript:@"percentage_of_days_with_screenLock_home"];
  v343 = +[RTPlaceDataMetrics binArrayPercentage];
  v344 = [RTMetric binForNumber:v342 bins:v343];
  v345 = [(RTMetric *)self metrics];
  [v345 setObject:v344 forKeyedSubscript:@"percentage_of_days_with_screen_lock_home_bucketed"];

  v346 = [(RTMetric *)self metrics];
  v347 = [v346 objectForKeyedSubscript:@"percentage_of_days_with_screenLock_work"];
  v348 = +[RTPlaceDataMetrics binArrayPercentage];
  v349 = [RTMetric binForNumber:v347 bins:v348];
  v350 = [(RTMetric *)self metrics];
  [v350 setObject:v349 forKeyedSubscript:@"percentage_of_days_with_screen_lock_work_bucketed"];

  v351 = [(RTMetric *)self metrics];
  v352 = [v351 objectForKeyedSubscript:@"percentage_of_days_with_screenLock_others"];
  v353 = +[RTPlaceDataMetrics binArrayPercentage];
  v354 = [RTMetric binForNumber:v352 bins:v353];
  v355 = [(RTMetric *)self metrics];
  [v355 setObject:v354 forKeyedSubscript:@"percentage_of_days_with_screen_lock_others_bucketed"];

  v356 = [(RTMetric *)self metrics];
  v357 = [v356 objectForKeyedSubscript:@"median_daily_total_charging_duration_home"];
  v358 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v359 = [RTMetric binForNumber:v357 bins:v358];
  v360 = [(RTMetric *)self metrics];
  [v360 setObject:v359 forKeyedSubscript:@"median_daily_total_charging_duration_home_bucketed"];

  v361 = [(RTMetric *)self metrics];
  v362 = [v361 objectForKeyedSubscript:@"mean_daily_total_charging_duration_home"];
  v363 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v364 = [RTMetric binForNumber:v362 bins:v363];
  v365 = [(RTMetric *)self metrics];
  [v365 setObject:v364 forKeyedSubscript:@"mean_daily_total_charging_duration_home_bucketed"];

  v366 = [(RTMetric *)self metrics];
  v367 = [v366 objectForKeyedSubscript:@"median_daily_total_charging_duration_work"];
  v368 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v369 = [RTMetric binForNumber:v367 bins:v368];
  v370 = [(RTMetric *)self metrics];
  [v370 setObject:v369 forKeyedSubscript:@"median_daily_total_charging_duration_work_bucketed"];

  v371 = [(RTMetric *)self metrics];
  v372 = [v371 objectForKeyedSubscript:@"mean_daily_total_charging_duration_work"];
  v373 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v374 = [RTMetric binForNumber:v372 bins:v373];
  v375 = [(RTMetric *)self metrics];
  [v375 setObject:v374 forKeyedSubscript:@"mean_daily_total_charging_duration_work_bucketed"];

  v376 = [(RTMetric *)self metrics];
  v377 = [v376 objectForKeyedSubscript:@"median_daily_total_charging_duration_others"];
  v378 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v379 = [RTMetric binForNumber:v377 bins:v378];
  v380 = [(RTMetric *)self metrics];
  [v380 setObject:v379 forKeyedSubscript:@"median_daily_total_charging_duration_others_bucketed"];

  v381 = [(RTMetric *)self metrics];
  v382 = [v381 objectForKeyedSubscript:@"mean_daily_total_charging_duration_others"];
  v383 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v384 = [RTMetric binForNumber:v382 bins:v383];
  v385 = [(RTMetric *)self metrics];
  [v385 setObject:v384 forKeyedSubscript:@"mean_daily_total_charging_duration_others_bucketed"];

  v386 = [(RTMetric *)self metrics];
  v387 = [v386 objectForKeyedSubscript:@"median_daily_longest_charging_duration_home"];
  v388 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v389 = [RTMetric binForNumber:v387 bins:v388];
  v390 = [(RTMetric *)self metrics];
  [v390 setObject:v389 forKeyedSubscript:@"median_daily_longest_charging_duration_home_bucketed"];

  v391 = [(RTMetric *)self metrics];
  v392 = [v391 objectForKeyedSubscript:@"mean_daily_longest_charging_duration_home"];
  v393 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v394 = [RTMetric binForNumber:v392 bins:v393];
  v395 = [(RTMetric *)self metrics];
  [v395 setObject:v394 forKeyedSubscript:@"mean_daily_longest_charging_duration_home_bucketed"];

  v396 = [(RTMetric *)self metrics];
  v397 = [v396 objectForKeyedSubscript:@"median_daily_longest_charging_duration_work"];
  v398 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v399 = [RTMetric binForNumber:v397 bins:v398];
  v400 = [(RTMetric *)self metrics];
  [v400 setObject:v399 forKeyedSubscript:@"median_daily_longest_charging_duration_work_bucketed"];

  v401 = [(RTMetric *)self metrics];
  v402 = [v401 objectForKeyedSubscript:@"mean_daily_longest_charging_duration_work"];
  v403 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v404 = [RTMetric binForNumber:v402 bins:v403];
  v405 = [(RTMetric *)self metrics];
  [v405 setObject:v404 forKeyedSubscript:@"mean_daily_longest_charging_duration_work_bucketed"];

  v406 = [(RTMetric *)self metrics];
  v407 = [v406 objectForKeyedSubscript:@"median_daily_longest_charging_duration_others"];
  v408 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v409 = [RTMetric binForNumber:v407 bins:v408];
  v410 = [(RTMetric *)self metrics];
  [v410 setObject:v409 forKeyedSubscript:@"median_dailylongestchargingdurationothers_bucketed"];

  v411 = [(RTMetric *)self metrics];
  v412 = [v411 objectForKeyedSubscript:@"mean_daily_longest_charging_duration_others"];
  v413 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v414 = [RTMetric binForNumber:v412 bins:v413];
  v415 = [(RTMetric *)self metrics];
  [v415 setObject:v414 forKeyedSubscript:@"mean_daily_longest_charging_duration_others_bucketed"];

  v416 = [(RTMetric *)self metrics];
  v417 = [v416 objectForKeyedSubscript:@"median_daily_total_static_motion_duration_home"];
  v418 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v419 = [RTMetric binForNumber:v417 bins:v418];
  v420 = [(RTMetric *)self metrics];
  [v420 setObject:v419 forKeyedSubscript:@"median_daily_total_static_motion_duration_home_bucketed"];

  v421 = [(RTMetric *)self metrics];
  v422 = [v421 objectForKeyedSubscript:@"mean_daily_total_static_motion_duration_home"];
  v423 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v424 = [RTMetric binForNumber:v422 bins:v423];
  v425 = [(RTMetric *)self metrics];
  [v425 setObject:v424 forKeyedSubscript:@"mean_daily_total_static_motion_duration_home_bucketed"];

  v426 = [(RTMetric *)self metrics];
  v427 = [v426 objectForKeyedSubscript:@"median_daily_total_static_motion_duration_work"];
  v428 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v429 = [RTMetric binForNumber:v427 bins:v428];
  v430 = [(RTMetric *)self metrics];
  [v430 setObject:v429 forKeyedSubscript:@"median_daily_total_static_motion_duration_work_bucketed"];

  v431 = [(RTMetric *)self metrics];
  v432 = [v431 objectForKeyedSubscript:@"mean_daily_total_static_motion_duration_work"];
  v433 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v434 = [RTMetric binForNumber:v432 bins:v433];
  v435 = [(RTMetric *)self metrics];
  [v435 setObject:v434 forKeyedSubscript:@"mean_daily_total_static_motion_duration_work_bucketed"];

  v436 = [(RTMetric *)self metrics];
  v437 = [v436 objectForKeyedSubscript:@"median_daily_total_static_motion_duration_others"];
  v438 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v439 = [RTMetric binForNumber:v437 bins:v438];
  v440 = [(RTMetric *)self metrics];
  [v440 setObject:v439 forKeyedSubscript:@"median_daily_total_static_motion_duration_others_bucketed"];

  v441 = [(RTMetric *)self metrics];
  v442 = [v441 objectForKeyedSubscript:@"mean_daily_total_static_motion_duration_others"];
  v443 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v444 = [RTMetric binForNumber:v442 bins:v443];
  v445 = [(RTMetric *)self metrics];
  [v445 setObject:v444 forKeyedSubscript:@"mean_daily_total_static_motion_duration_others_bucketed"];

  v446 = [(RTMetric *)self metrics];
  v447 = [v446 objectForKeyedSubscript:@"median_daily_longest_static_motion_duration_home"];
  v448 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v449 = [RTMetric binForNumber:v447 bins:v448];
  v450 = [(RTMetric *)self metrics];
  [v450 setObject:v449 forKeyedSubscript:@"median_daily_longest_static_motion_duration_home_bucketed"];

  v451 = [(RTMetric *)self metrics];
  v452 = [v451 objectForKeyedSubscript:@"mean_daily_longest_static_motion_duration_home"];
  v453 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v454 = [RTMetric binForNumber:v452 bins:v453];
  v455 = [(RTMetric *)self metrics];
  [v455 setObject:v454 forKeyedSubscript:@"mean_daily_longest_static_motion_duration_home_bucketed"];

  v456 = [(RTMetric *)self metrics];
  v457 = [v456 objectForKeyedSubscript:@"median_daily_longest_static_motion_duration_work"];
  v458 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v459 = [RTMetric binForNumber:v457 bins:v458];
  v460 = [(RTMetric *)self metrics];
  [v460 setObject:v459 forKeyedSubscript:@"median_daily_longest_static_motion_duration_work_bucketed"];

  v461 = [(RTMetric *)self metrics];
  v462 = [v461 objectForKeyedSubscript:@"mean_daily_longest_static_motion_duration_work"];
  v463 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v464 = [RTMetric binForNumber:v462 bins:v463];
  v465 = [(RTMetric *)self metrics];
  [v465 setObject:v464 forKeyedSubscript:@"mean_daily_longest_static_motion_duration_work_bucketed"];

  v466 = [(RTMetric *)self metrics];
  v467 = [v466 objectForKeyedSubscript:@"median_daily_longest_static_motion_duration_others"];
  v468 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v469 = [RTMetric binForNumber:v467 bins:v468];
  v470 = [(RTMetric *)self metrics];
  [v470 setObject:v469 forKeyedSubscript:@"median_daily_longest_static_motion_duration_others_bucketed"];

  v471 = [(RTMetric *)self metrics];
  v472 = [v471 objectForKeyedSubscript:@"mean_daily_longest_static_motion_duration_others"];
  v473 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v474 = [RTMetric binForNumber:v472 bins:v473];
  v475 = [(RTMetric *)self metrics];
  [v475 setObject:v474 forKeyedSubscript:@"mean_daily_longest_static_motion_duration_others_bucketed"];

  v476 = [(RTMetric *)self metrics];
  v477 = [v476 objectForKeyedSubscript:@"median_daily_total_screen_lock_duration_home"];
  v478 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v479 = [RTMetric binForNumber:v477 bins:v478];
  v480 = [(RTMetric *)self metrics];
  [v480 setObject:v479 forKeyedSubscript:@"median_daily_total_screen_lock_duration_home_bucketed"];

  v481 = [(RTMetric *)self metrics];
  v482 = [v481 objectForKeyedSubscript:@"mean_daily_total_screen_lock_duration_home"];
  v483 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v484 = [RTMetric binForNumber:v482 bins:v483];
  v485 = [(RTMetric *)self metrics];
  [v485 setObject:v484 forKeyedSubscript:@"mean_daily_total_screen_lock_duration_home_bucketed"];

  v486 = [(RTMetric *)self metrics];
  v487 = [v486 objectForKeyedSubscript:@"median_daily_total_screen_lock_duration_work"];
  v488 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v489 = [RTMetric binForNumber:v487 bins:v488];
  v490 = [(RTMetric *)self metrics];
  [v490 setObject:v489 forKeyedSubscript:@"median_daily_total_screen_lock_duration_work_bucketed"];

  v491 = [(RTMetric *)self metrics];
  v492 = [v491 objectForKeyedSubscript:@"mean_daily_total_screen_lock_duration_work"];
  v493 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v494 = [RTMetric binForNumber:v492 bins:v493];
  v495 = [(RTMetric *)self metrics];
  [v495 setObject:v494 forKeyedSubscript:@"mean_daily_total_screen_lock_duration_work_bucketed"];

  v496 = [(RTMetric *)self metrics];
  v497 = [v496 objectForKeyedSubscript:@"median_daily_total_screen_lock_duration_others"];
  v498 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v499 = [RTMetric binForNumber:v497 bins:v498];
  v500 = [(RTMetric *)self metrics];
  [v500 setObject:v499 forKeyedSubscript:@"median_daily_total_screen_lock_duration_others_bucketed"];

  v501 = [(RTMetric *)self metrics];
  v502 = [v501 objectForKeyedSubscript:@"mean_daily_total_screen_lock_duration_others"];
  v503 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v504 = [RTMetric binForNumber:v502 bins:v503];
  v505 = [(RTMetric *)self metrics];
  [v505 setObject:v504 forKeyedSubscript:@"mean_daily_total_screen_lock_duration_others_bucketed"];

  v506 = [(RTMetric *)self metrics];
  v507 = [v506 objectForKeyedSubscript:@"median_daily_longest_screen_lock_duration_home"];
  v508 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v509 = [RTMetric binForNumber:v507 bins:v508];
  v510 = [(RTMetric *)self metrics];
  [v510 setObject:v509 forKeyedSubscript:@"median_daily_longest_screen_lock_duration_home_bucketed"];

  v511 = [(RTMetric *)self metrics];
  v512 = [v511 objectForKeyedSubscript:@"mean_daily_longest_screen_lock_duration_home"];
  v513 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v514 = [RTMetric binForNumber:v512 bins:v513];
  v515 = [(RTMetric *)self metrics];
  [v515 setObject:v514 forKeyedSubscript:@"mean_daily_longest_screen_lock_duration_home_bucketed"];

  v516 = [(RTMetric *)self metrics];
  v517 = [v516 objectForKeyedSubscript:@"median_daily_longest_screen_lock_duration_work"];
  v518 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v519 = [RTMetric binForNumber:v517 bins:v518];
  v520 = [(RTMetric *)self metrics];
  [v520 setObject:v519 forKeyedSubscript:@"median_daily_longest_screen_lock_duration_work_bucketed"];

  v521 = [(RTMetric *)self metrics];
  v522 = [v521 objectForKeyedSubscript:@"mean_daily_longest_screen_lock_duration_work"];
  v523 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v524 = [RTMetric binForNumber:v522 bins:v523];
  v525 = [(RTMetric *)self metrics];
  [v525 setObject:v524 forKeyedSubscript:@"mean_daily_longest_screen_lock_duration_work_bucketed"];

  v526 = [(RTMetric *)self metrics];
  v527 = [v526 objectForKeyedSubscript:@"median_daily_longest_screen_lock_duration_others"];
  v528 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v529 = [RTMetric binForNumber:v527 bins:v528];
  v530 = [(RTMetric *)self metrics];
  [v530 setObject:v529 forKeyedSubscript:@"median_daily_longest_screen_lock_duration_others_bucketed"];

  v531 = [(RTMetric *)self metrics];
  v532 = [v531 objectForKeyedSubscript:@"mean_daily_longest_screen_lock_duration_others"];
  v533 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v534 = [RTMetric binForNumber:v532 bins:v533];
  v535 = [(RTMetric *)self metrics];
  [v535 setObject:v534 forKeyedSubscript:@"mean_daily_longest_screen_lock_duration_others_bucketed"];

  v536 = [(RTMetric *)self metrics];
  v537 = [v536 objectForKeyedSubscript:@"median_daily_total_uninterrupted_WiFi_connection_duration_home"];
  v538 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v539 = [RTMetric binForNumber:v537 bins:v538];
  v540 = [(RTMetric *)self metrics];
  [v540 setObject:v539 forKeyedSubscript:@"median_daily_total_uninterrupted_WiFi_connection_duration_home_bucketed"];

  v541 = [(RTMetric *)self metrics];
  v542 = [v541 objectForKeyedSubscript:@"mean_daily_total_uninterrupted_WiFi_connection_duration_home"];
  v543 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v544 = [RTMetric binForNumber:v542 bins:v543];
  v545 = [(RTMetric *)self metrics];
  [v545 setObject:v544 forKeyedSubscript:@"mean_daily_total_uninterrupted_WiFi_connection_duration_home_bucketed"];

  v546 = [(RTMetric *)self metrics];
  v547 = [v546 objectForKeyedSubscript:@"mean_daily_uninterrupted_WiFi_connection_stability_ratio_home"];
  v548 = +[RTPlaceDataMetrics binArrayPercentage];
  v549 = [RTMetric binForNumber:v547 bins:v548];
  v550 = [(RTMetric *)self metrics];
  [v550 setObject:v549 forKeyedSubscript:@"mean_daily_uninterrupted_WiFi_connection_stability_ratio_home_bucketed"];

  v551 = [(RTMetric *)self metrics];
  v552 = [v551 objectForKeyedSubscript:@"median_daily_total_uninterrupted_WiFi_connection_duration_work"];
  v553 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v554 = [RTMetric binForNumber:v552 bins:v553];
  v555 = [(RTMetric *)self metrics];
  [v555 setObject:v554 forKeyedSubscript:@"median_daily_total_uninterrupted_WiFi_connection_duration_work_bucketed"];

  v556 = [(RTMetric *)self metrics];
  v557 = [v556 objectForKeyedSubscript:@"mean_daily_total_uninterrupted_WiFi_connection_duration_work"];
  v558 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v559 = [RTMetric binForNumber:v557 bins:v558];
  v560 = [(RTMetric *)self metrics];
  [v560 setObject:v559 forKeyedSubscript:@"mean_daily_total_uninterrupted_WiFi_connection_duration_work_bucketed"];

  v561 = [(RTMetric *)self metrics];
  v562 = [v561 objectForKeyedSubscript:@"mean_daily_uninterrupted_WiFi_connection_stability_ratio_work"];
  v563 = +[RTPlaceDataMetrics binArrayPercentage];
  v564 = [RTMetric binForNumber:v562 bins:v563];
  v565 = [(RTMetric *)self metrics];
  [v565 setObject:v564 forKeyedSubscript:@"mean_daily_uninterrupted_WiFi_connection_stability_ratio_work_bucketed"];

  v566 = [(RTMetric *)self metrics];
  v567 = [v566 objectForKeyedSubscript:@"median_daily_total_uninterrupted_WiFi_connection_duration_others"];
  v568 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v569 = [RTMetric binForNumber:v567 bins:v568];
  v570 = [(RTMetric *)self metrics];
  [v570 setObject:v569 forKeyedSubscript:@"median_daily_total_uninterrupted_WiFi_connection_duration_others_bucketed"];

  v571 = [(RTMetric *)self metrics];
  v572 = [v571 objectForKeyedSubscript:@"mean_daily_total_uninterrupted_WiFi_connection_duration_others"];
  v573 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v574 = [RTMetric binForNumber:v572 bins:v573];
  v575 = [(RTMetric *)self metrics];
  [v575 setObject:v574 forKeyedSubscript:@"mean_daily_total_uninterrupted_WiFi_connection_duration_others_bucketed"];

  v576 = [(RTMetric *)self metrics];
  v577 = [v576 objectForKeyedSubscript:@"mean_daily_uninterrupted_WiFi_connection_stability_ratio_others"];
  v578 = +[RTPlaceDataMetrics binArrayPercentage];
  v579 = [RTMetric binForNumber:v577 bins:v578];
  v580 = [(RTMetric *)self metrics];
  [v580 setObject:v579 forKeyedSubscript:@"mean_daily_uninterrupted_WiFi_connection_stability_ratio_others_bucketed"];

  v581 = [(RTMetric *)self metrics];
  v582 = [v581 objectForKeyedSubscript:@"median_daily_longest_uninterrupted_WiFi_connection_duration_home"];
  v583 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v584 = [RTMetric binForNumber:v582 bins:v583];
  v585 = [(RTMetric *)self metrics];
  [v585 setObject:v584 forKeyedSubscript:@"median_daily_longest_uninterrupted_WiFi_connection_duration_home_bucketed"];

  v586 = [(RTMetric *)self metrics];
  v587 = [v586 objectForKeyedSubscript:@"mean_daily_longest_uninterrupted_WiFi_connection_duration_home"];
  v588 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v589 = [RTMetric binForNumber:v587 bins:v588];
  v590 = [(RTMetric *)self metrics];
  [v590 setObject:v589 forKeyedSubscript:@"mean_daily_longest_uninterrupted_WiFi_connection_duration_home_bucketed"];

  v591 = [(RTMetric *)self metrics];
  v592 = [v591 objectForKeyedSubscript:@"percentage_of_days_with_uninterrupted_WiFi_connection_home"];
  v593 = +[RTPlaceDataMetrics binArrayPercentage];
  v594 = [RTMetric binForNumber:v592 bins:v593];
  v595 = [(RTMetric *)self metrics];
  [v595 setObject:v594 forKeyedSubscript:@"percentage_of_days_with_uninterrupted_WiFi_connection_home_bucketed"];

  v596 = [(RTMetric *)self metrics];
  v597 = [v596 objectForKeyedSubscript:@"median_daily_longest_uninterrupted_WiFi_connection_duration_work"];
  v598 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v599 = [RTMetric binForNumber:v597 bins:v598];
  v600 = [(RTMetric *)self metrics];
  [v600 setObject:v599 forKeyedSubscript:@"median_daily_longest_uninterrupted_WiFi_connection_duration_work_bucketed"];

  v601 = [(RTMetric *)self metrics];
  v602 = [v601 objectForKeyedSubscript:@"mean_daily_longest_uninterrupted_WiFi_connection_duration_work"];
  v603 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v604 = [RTMetric binForNumber:v602 bins:v603];
  v605 = [(RTMetric *)self metrics];
  [v605 setObject:v604 forKeyedSubscript:@"mean_daily_longest_uninterrupted_WiFi_connection_duration_work_bucketed"];

  v606 = [(RTMetric *)self metrics];
  v607 = [v606 objectForKeyedSubscript:@"percentage_of_days_with_uninterrupted_WiFi_connection_work"];
  v608 = +[RTPlaceDataMetrics binArrayPercentage];
  v609 = [RTMetric binForNumber:v607 bins:v608];
  v610 = [(RTMetric *)self metrics];
  [v610 setObject:v609 forKeyedSubscript:@"percentage_of_days_with_uninterrupted_WiFi_connection_work_bucketed"];

  v611 = [(RTMetric *)self metrics];
  v612 = [v611 objectForKeyedSubscript:@"median_daily_longest_uninterrupted_WiFi_connection_duration_others"];
  v613 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v614 = [RTMetric binForNumber:v612 bins:v613];
  v615 = [(RTMetric *)self metrics];
  [v615 setObject:v614 forKeyedSubscript:@"median_daily_longest_uninterrupted_WiFi_connection_duration_others_bucketed"];

  v616 = [(RTMetric *)self metrics];
  v617 = [v616 objectForKeyedSubscript:@"mean_daily_longest_uninterrupted_WiFi_connection_duration_others"];
  v618 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v619 = [RTMetric binForNumber:v617 bins:v618];
  v620 = [(RTMetric *)self metrics];
  [v620 setObject:v619 forKeyedSubscript:@"mean_daily_longest_uninterrupted_WiFi_connection_duration_others_bucketed"];

  v621 = [(RTMetric *)self metrics];
  v622 = [v621 objectForKeyedSubscript:@"percentage_of_days_with_uninterrupted_WiFi_connection_others"];
  v623 = +[RTPlaceDataMetrics binArrayPercentage];
  v624 = [RTMetric binForNumber:v622 bins:v623];
  v625 = [(RTMetric *)self metrics];
  [v625 setObject:v624 forKeyedSubscript:@"percentage_of_days_with_uninterrupted_WiFi_connection_others_bucketed"];

  v626 = [(RTMetric *)self metrics];
  v627 = [v626 objectForKeyedSubscript:@"intervalToCalculateStats"];
  v628 = [RTMetric binForNumber:v627 bins:v961];
  v629 = [(RTMetric *)self metrics];
  [v629 setObject:v628 forKeyedSubscript:@"intervalToCalculateStats_bucketed"];

  v630 = [(RTMetric *)self metrics];
  v631 = [v630 objectForKeyedSubscript:@"numPlacesAfterWeeksWithNonZeroDwellTimePruning"];
  v632 = [RTMetric binForNumber:v631 bins:v958];
  v633 = [(RTMetric *)self metrics];
  [v633 setObject:v632 forKeyedSubscript:@"numPlacesAfterWeeksWithNonZeroDwellTimePruning_bucketed"];

  v634 = [(RTMetric *)self metrics];
  v635 = [v634 objectForKeyedSubscript:@"weeklyAggregateDwellTimeBetweenDateRangeAverage_home"];
  v636 = [RTMetric binForNumber:v635 bins:v959];
  v637 = [(RTMetric *)self metrics];
  [v637 setObject:v636 forKeyedSubscript:@"weeklyAggregateDwellTimeBetweenDateRangeAverage_home_bucketed"];

  v638 = [(RTMetric *)self metrics];
  v639 = [v638 objectForKeyedSubscript:@"weeklyAggregateDwellTimeBetweenDateRangeAverage_work"];
  v640 = [RTMetric binForNumber:v639 bins:v959];
  v641 = [(RTMetric *)self metrics];
  [v641 setObject:v640 forKeyedSubscript:@"weeklyAggregateDwellTimeBetweenDateRangeAverage_work_bucketed"];

  v642 = [(RTMetric *)self metrics];
  v643 = [v642 objectForKeyedSubscript:@"weeklyTotalDailyVisitCountAverage_home"];
  v644 = [RTMetric binForNumber:v643 bins:v958];
  v645 = [(RTMetric *)self metrics];
  [v645 setObject:v644 forKeyedSubscript:@"weeklyTotalDailyVisitCountAverage_home_bucketed"];

  v646 = [(RTMetric *)self metrics];
  v647 = [v646 objectForKeyedSubscript:@"weeklyTotalDailyVisitCountAverage_work"];
  v648 = [RTMetric binForNumber:v647 bins:v958];
  v649 = [(RTMetric *)self metrics];
  [v649 setObject:v648 forKeyedSubscript:@"weeklyTotalDailyVisitCountAverage_work_bucketed"];

  v650 = [(RTMetric *)self metrics];
  v651 = [v650 objectForKeyedSubscript:@"weeklyDaysWithNonZeroDwellTimeAverage_home"];
  v652 = [RTMetric binForNumber:v651 bins:v958];
  v653 = [(RTMetric *)self metrics];
  [v653 setObject:v652 forKeyedSubscript:@"weeklyDaysWithNonZeroDwellTimeAverage_home_bucketed"];

  v654 = [(RTMetric *)self metrics];
  v655 = [v654 objectForKeyedSubscript:@"weeklyDaysWithNonZeroDwellTimeAverage_work"];
  v656 = [RTMetric binForNumber:v655 bins:v958];
  v657 = [(RTMetric *)self metrics];
  [v657 setObject:v656 forKeyedSubscript:@"weeklyDaysWithNonZeroDwellTimeAverage_work_bucketed"];

  v658 = [(RTMetric *)self metrics];
  v659 = [v658 objectForKeyedSubscript:@"topMedianDwellTime_home"];
  v660 = [RTMetric binForNumber:v659 bins:v959];
  v661 = [(RTMetric *)self metrics];
  [v661 setObject:v660 forKeyedSubscript:@"topMedianDwellTime_home_bucketed"];

  v662 = [(RTMetric *)self metrics];
  v663 = [v662 objectForKeyedSubscript:@"topMedianDwellTime_work"];
  v664 = [RTMetric binForNumber:v663 bins:v959];
  v665 = [(RTMetric *)self metrics];
  [v665 setObject:v664 forKeyedSubscript:@"topMedianDwellTime_work_bucketed"];

  v666 = [(RTMetric *)self metrics];
  v667 = [v666 objectForKeyedSubscript:@"weeksWithNonZeroDwellTime_home"];
  v668 = [RTMetric binForNumber:v667 bins:v958];
  v669 = [(RTMetric *)self metrics];
  [v669 setObject:v668 forKeyedSubscript:@"weeksWithNonZeroDwellTime_home_bucketed"];

  v670 = [(RTMetric *)self metrics];
  v671 = [v670 objectForKeyedSubscript:@"weeksWithNonZeroDwellTime_work"];
  v672 = [RTMetric binForNumber:v671 bins:v958];
  v673 = [(RTMetric *)self metrics];
  [v673 setObject:v672 forKeyedSubscript:@"weeksWithNonZeroDwellTime_work_bucketed"];

  v674 = [(RTMetric *)self metrics];
  v675 = [v674 objectForKeyedSubscript:@"weeklyAggregateDwellTimeBetweenDateRangeAverage_1stPlaceDailyPatterns"];
  v676 = [RTMetric binForNumber:v675 bins:v959];
  v677 = [(RTMetric *)self metrics];
  [v677 setObject:v676 forKeyedSubscript:@"weeklyAggregateDwellTimeBetweenDateRangeAverage_1stPlaceDailyPatterns_bucketed"];

  v678 = [(RTMetric *)self metrics];
  v679 = [v678 objectForKeyedSubscript:@"weeklyAggregateDwellTimeBetweenDateRangeAverage_2ndPlaceDailyPatterns"];
  v680 = [RTMetric binForNumber:v679 bins:v959];
  v681 = [(RTMetric *)self metrics];
  [v681 setObject:v680 forKeyedSubscript:@"weeklyAggregateDwellTimeBetweenDateRangeAverage_2ndPlaceDailyPatterns_bucketed"];

  v682 = [(RTMetric *)self metrics];
  v683 = [v682 objectForKeyedSubscript:@"weeklyTotalDailyVisitCountAverage_1stPlaceDailyPatterns"];
  v684 = [RTMetric binForNumber:v683 bins:v958];
  v685 = [(RTMetric *)self metrics];
  [v685 setObject:v684 forKeyedSubscript:@"weeklyTotalDailyVisitCountAverage_1stPlaceDailyPatterns_bucketed"];

  v686 = [(RTMetric *)self metrics];
  v687 = [v686 objectForKeyedSubscript:@"weeklyTotalDailyVisitCountAverage_2ndPlaceDailyPatterns"];
  v688 = [RTMetric binForNumber:v687 bins:v958];
  v689 = [(RTMetric *)self metrics];
  [v689 setObject:v688 forKeyedSubscript:@"weeklyTotalDailyVisitCountAverage_2ndPlaceDailyPatterns_bucketed"];

  v690 = [(RTMetric *)self metrics];
  v691 = [v690 objectForKeyedSubscript:@"weeklyDaysWithNonZeroDwellTimeAverage_1stPlaceDailyPatterns"];
  v692 = [RTMetric binForNumber:v691 bins:v958];
  v693 = [(RTMetric *)self metrics];
  [v693 setObject:v692 forKeyedSubscript:@"weeklyDaysWithNonZeroDwellTimeAverage_1stPlaceDailyPatterns_bucketed"];

  v694 = [(RTMetric *)self metrics];
  v695 = [v694 objectForKeyedSubscript:@"weeklyDaysWithNonZeroDwellTimeAverage_2ndPlaceDailyPatterns"];
  v696 = [RTMetric binForNumber:v695 bins:v958];
  v697 = [(RTMetric *)self metrics];
  [v697 setObject:v696 forKeyedSubscript:@"weeklyDaysWithNonZeroDwellTimeAverage_2ndPlaceDailyPatterns_bucketed"];

  v698 = [(RTMetric *)self metrics];
  v699 = [v698 objectForKeyedSubscript:@"numPlacesAfterDailyPatternsPruning"];
  v700 = [RTMetric binForNumber:v699 bins:v958];
  v701 = [(RTMetric *)self metrics];
  [v701 setObject:v700 forKeyedSubscript:@"numPlacesAfterDailyPatternsPruning_bucketed"];

  v702 = [(RTMetric *)self metrics];
  v703 = [v702 objectForKeyedSubscript:@"homeRankDailyPatterns"];
  v704 = [RTMetric binForNumber:v703 bins:v958];
  v705 = [(RTMetric *)self metrics];
  [v705 setObject:v704 forKeyedSubscript:@"homeRankDailyPatterns_bucketed"];

  v706 = [(RTMetric *)self metrics];
  v707 = [v706 objectForKeyedSubscript:@"workRankDailyPatterns"];
  v708 = [RTMetric binForNumber:v707 bins:v958];
  v709 = [(RTMetric *)self metrics];
  [v709 setObject:v708 forKeyedSubscript:@"workRankDailyPatterns_bucketed"];

  v710 = [(RTMetric *)self metrics];
  v711 = [v710 objectForKeyedSubscript:@"weeklyTotalDailyVisitCountAverage_1stPlaceDwellTime"];
  v712 = [RTMetric binForNumber:v711 bins:v958];
  v713 = [(RTMetric *)self metrics];
  [v713 setObject:v712 forKeyedSubscript:@"weeklyTotalDailyVisitCountAverage_1stPlaceDwellTime_bucketed"];

  v714 = [(RTMetric *)self metrics];
  v715 = [v714 objectForKeyedSubscript:@"weeklyDaysWithNonZeroDwellTimeAverage_1stPlaceDwellTime"];
  v716 = [RTMetric binForNumber:v715 bins:v958];
  v717 = [(RTMetric *)self metrics];
  [v717 setObject:v716 forKeyedSubscript:@"weeklyDaysWithNonZeroDwellTimeAverage_1stPlaceDwellTime_bucketed"];

  v718 = [(RTMetric *)self metrics];
  v719 = [v718 objectForKeyedSubscript:@"topMedianDwellTime_1stPlaceDwellTime"];
  v720 = [RTMetric binForNumber:v719 bins:v959];
  v721 = [(RTMetric *)self metrics];
  [v721 setObject:v720 forKeyedSubscript:@"topMedianDwellTime_1stPlaceDwellTime_bucketed"];

  v722 = [(RTMetric *)self metrics];
  v723 = [v722 objectForKeyedSubscript:@"homeRankDwellTime"];
  v724 = [RTMetric binForNumber:v723 bins:v958];
  v725 = [(RTMetric *)self metrics];
  [v725 setObject:v724 forKeyedSubscript:@"homeRankDwellTime_bucketed"];

  v726 = [(RTMetric *)self metrics];
  v727 = [v726 objectForKeyedSubscript:@"workRankDwellTime"];
  v728 = [RTMetric binForNumber:v727 bins:v958];
  v729 = [(RTMetric *)self metrics];
  [v729 setObject:v728 forKeyedSubscript:@"workRankDwellTime_bucketed"];

  v730 = [(RTMetric *)self metrics];
  v731 = [v730 objectForKeyedSubscript:@"SD_visit_time_home"];
  v732 = [RTMetric binForNumber:v731 bins:v3];
  v733 = [(RTMetric *)self metrics];
  [v733 setObject:v732 forKeyedSubscript:@"SD_visit_time_home_bucketed"];

  v734 = [(RTMetric *)self metrics];
  v735 = [v734 objectForKeyedSubscript:@"SD_visit_time_work"];
  v736 = [RTMetric binForNumber:v735 bins:v3];
  v737 = [(RTMetric *)self metrics];
  [v737 setObject:v736 forKeyedSubscript:@"SD_visit_time_work_bucketed"];

  v738 = [(RTMetric *)self metrics];
  v739 = [v738 objectForKeyedSubscript:@"SD_visit_time_others"];
  v740 = [RTMetric binForNumber:v739 bins:v3];
  v741 = [(RTMetric *)self metrics];
  [v741 setObject:v740 forKeyedSubscript:@"SD_visit_time_others_bucketed"];

  v742 = [(RTMetric *)self metrics];
  v743 = [v742 objectForKeyedSubscript:@"SD_daily_visits_weekdays_home"];
  v744 = [RTMetric binForNumber:v743 bins:v958];
  v745 = [(RTMetric *)self metrics];
  [v745 setObject:v744 forKeyedSubscript:@"SD_daily_visits_weekdays_home_bucketed"];

  v746 = [(RTMetric *)self metrics];
  v747 = [v746 objectForKeyedSubscript:@"SD_daily_visits_weekdays_work"];
  v748 = [RTMetric binForNumber:v747 bins:v958];
  v749 = [(RTMetric *)self metrics];
  [v749 setObject:v748 forKeyedSubscript:@"SD_daily_visits_weekdays_work_bucketed"];

  v750 = [(RTMetric *)self metrics];
  v751 = [v750 objectForKeyedSubscript:@"SD_daily_visits_weekdays_others"];
  v752 = [RTMetric binForNumber:v751 bins:v958];
  v753 = [(RTMetric *)self metrics];
  [v753 setObject:v752 forKeyedSubscript:@"SD_daily_visits_weekdays_others_bucketed"];

  v754 = [(RTMetric *)self metrics];
  v755 = [v754 objectForKeyedSubscript:@"SD_daily_visits_weekend_home"];
  v756 = [RTMetric binForNumber:v755 bins:v958];
  v757 = [(RTMetric *)self metrics];
  [v757 setObject:v756 forKeyedSubscript:@"SD_daily_visits_weekend_home_bucketed"];

  v758 = [(RTMetric *)self metrics];
  v759 = [v758 objectForKeyedSubscript:@"SD_daily_visits_weekend_work"];
  v760 = [RTMetric binForNumber:v759 bins:v958];
  v761 = [(RTMetric *)self metrics];
  [v761 setObject:v760 forKeyedSubscript:@"SD_daily_visits_weekend_work_bucketed"];

  v762 = [(RTMetric *)self metrics];
  v763 = [v762 objectForKeyedSubscript:@"SD_daily_visits_weekend_others"];
  v764 = [RTMetric binForNumber:v763 bins:v958];
  v765 = [(RTMetric *)self metrics];
  [v765 setObject:v764 forKeyedSubscript:@"SD_daily_visits_weekend_others_bucketed"];

  v766 = [(RTMetric *)self metrics];
  v767 = [v766 objectForKeyedSubscript:@"SD_visit_duration_weekdays_home"];
  v768 = [RTMetric binForNumber:v767 bins:v4];
  v769 = [(RTMetric *)self metrics];
  [v769 setObject:v768 forKeyedSubscript:@"SD_visit_duration_weekdays_home_bucketed"];

  v770 = [(RTMetric *)self metrics];
  v771 = [v770 objectForKeyedSubscript:@"SD_visit_duration_weekdays_work"];
  v772 = [RTMetric binForNumber:v771 bins:v4];
  v773 = [(RTMetric *)self metrics];
  [v773 setObject:v772 forKeyedSubscript:@"SD_visit_duration_weekdays_work_bucketed"];

  v774 = [(RTMetric *)self metrics];
  v775 = [v774 objectForKeyedSubscript:@"SD_visit_duration_weekdays_others"];
  v776 = [RTMetric binForNumber:v775 bins:v4];
  v777 = [(RTMetric *)self metrics];
  [v777 setObject:v776 forKeyedSubscript:@"SD_visit_duration_weekdays_others_bucketed"];

  v778 = [(RTMetric *)self metrics];
  v779 = [v778 objectForKeyedSubscript:@"SD_visit_duration_weekend_home"];
  v780 = [RTMetric binForNumber:v779 bins:v4];
  v781 = [(RTMetric *)self metrics];
  [v781 setObject:v780 forKeyedSubscript:@"SD_visit_duration_weekend_home_bucketed"];

  v782 = [(RTMetric *)self metrics];
  v783 = [v782 objectForKeyedSubscript:@"SD_visit_duration_weekend_work"];
  v784 = [RTMetric binForNumber:v783 bins:v4];
  v785 = [(RTMetric *)self metrics];
  [v785 setObject:v784 forKeyedSubscript:@"SD_visit_duration_weekend_work_bucketed"];

  v786 = [(RTMetric *)self metrics];
  v787 = [v786 objectForKeyedSubscript:@"SD_visit_duration_weekend_others"];
  v788 = [RTMetric binForNumber:v787 bins:v4];
  v789 = [(RTMetric *)self metrics];
  [v789 setObject:v788 forKeyedSubscript:@"SD_visit_duration_weekend_others_bucketed"];

  v790 = [(RTMetric *)self metrics];
  v791 = [v790 objectForKeyedSubscript:@"SD_daily_total_visit_duration_weekdays_home"];
  v792 = [RTMetric binForNumber:v791 bins:v4];
  v793 = [(RTMetric *)self metrics];
  [v793 setObject:v792 forKeyedSubscript:@"SD_daily_total_visit_duration_weekdays_home_bucketed"];

  v794 = [(RTMetric *)self metrics];
  v795 = [v794 objectForKeyedSubscript:@"SD_daily_total_visit_duration_weekdays_work"];
  v796 = [RTMetric binForNumber:v795 bins:v4];
  v797 = [(RTMetric *)self metrics];
  [v797 setObject:v796 forKeyedSubscript:@"SD_daily_total_visit_duration_weekdays_work_bucketed"];

  v798 = [(RTMetric *)self metrics];
  v799 = [v798 objectForKeyedSubscript:@"SD_daily_total_visit_duration_weekdays_others"];
  v800 = [RTMetric binForNumber:v799 bins:v4];
  v801 = [(RTMetric *)self metrics];
  [v801 setObject:v800 forKeyedSubscript:@"SD_daily_total_visit_duration_weekdays_others_bucketed"];

  v802 = [(RTMetric *)self metrics];
  v803 = [v802 objectForKeyedSubscript:@"SD_daily_total_visit_duration_weekend_home"];
  v804 = [RTMetric binForNumber:v803 bins:v4];
  v805 = [(RTMetric *)self metrics];
  [v805 setObject:v804 forKeyedSubscript:@"SD_daily_total_visit_duration_weekend_home_bucketed"];

  v806 = [(RTMetric *)self metrics];
  v807 = [v806 objectForKeyedSubscript:@"SD_daily_total_visit_duration_weekend_work"];
  v808 = [RTMetric binForNumber:v807 bins:v4];
  v809 = [(RTMetric *)self metrics];
  [v809 setObject:v808 forKeyedSubscript:@"SD_daily_total_visit_duration_weekend_work_bucketed"];

  v810 = [(RTMetric *)self metrics];
  v811 = [v810 objectForKeyedSubscript:@"SD_daily_total_visit_duration_weekend_others"];
  v812 = [RTMetric binForNumber:v811 bins:v4];
  v813 = [(RTMetric *)self metrics];
  [v813 setObject:v812 forKeyedSubscript:@"SD_daily_total_visit_duration_weekend_others_bucketed"];

  v814 = [(RTMetric *)self metrics];
  v815 = [v814 objectForKeyedSubscript:@"SD_daily_longest_visit_duration_weekdays_home"];
  v816 = [RTMetric binForNumber:v815 bins:v4];
  v817 = [(RTMetric *)self metrics];
  [v817 setObject:v816 forKeyedSubscript:@"SD_daily_longest_visit_duration_weekdays_home_bucketed"];

  v818 = [(RTMetric *)self metrics];
  v819 = [v818 objectForKeyedSubscript:@"SD_daily_longest_visit_duration_weekdays_work"];
  v820 = [RTMetric binForNumber:v819 bins:v4];
  v821 = [(RTMetric *)self metrics];
  [v821 setObject:v820 forKeyedSubscript:@"SD_daily_longest_visit_duration_weekdays_work_bucketed"];

  v822 = [(RTMetric *)self metrics];
  v823 = [v822 objectForKeyedSubscript:@"SD_daily_longest_visit_duration_weekdays_others"];
  v824 = [RTMetric binForNumber:v823 bins:v4];
  v825 = [(RTMetric *)self metrics];
  [v825 setObject:v824 forKeyedSubscript:@"SD_daily_longest_visit_duration_weekdays_others_bucketed"];

  v826 = [(RTMetric *)self metrics];
  v827 = [v826 objectForKeyedSubscript:@"SD_daily_longest_visit_duration_weekend_home"];
  v828 = [RTMetric binForNumber:v827 bins:v4];
  v829 = [(RTMetric *)self metrics];
  [v829 setObject:v828 forKeyedSubscript:@"SD_daily_longest_visit_duration_weekend_home_bucketed"];

  v830 = [(RTMetric *)self metrics];
  v831 = [v830 objectForKeyedSubscript:@"SD_daily_longest_visit_duration_weekend_work"];
  v832 = [RTMetric binForNumber:v831 bins:v4];
  v833 = [(RTMetric *)self metrics];
  [v833 setObject:v832 forKeyedSubscript:@"SD_daily_longest_visit_duration_weekend_work_bucketed"];

  v834 = [(RTMetric *)self metrics];
  v835 = [v834 objectForKeyedSubscript:@"SD_daily_longest_visit_duration_weekend_others"];
  v836 = [RTMetric binForNumber:v835 bins:v4];
  v837 = [(RTMetric *)self metrics];
  [v837 setObject:v836 forKeyedSubscript:@"SD_daily_longest_visit_duration_weekend_others_bucketed"];

  v838 = [(RTMetric *)self metrics];
  v839 = [v838 objectForKeyedSubscript:@"SD_daily_total_charging_duration_home"];
  v840 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v841 = [RTMetric binForNumber:v839 bins:v840];
  v842 = [(RTMetric *)self metrics];
  [v842 setObject:v841 forKeyedSubscript:@"SD_daily_total_charging_duration_home_bucketed"];

  v843 = [(RTMetric *)self metrics];
  v844 = [v843 objectForKeyedSubscript:@"SD_daily_total_charging_duration_work"];
  v845 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v846 = [RTMetric binForNumber:v844 bins:v845];
  v847 = [(RTMetric *)self metrics];
  [v847 setObject:v846 forKeyedSubscript:@"SD_daily_total_charging_duration_work_bucketed"];

  v848 = [(RTMetric *)self metrics];
  v849 = [v848 objectForKeyedSubscript:@"SD_daily_total_charging_duration_others"];
  v850 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v851 = [RTMetric binForNumber:v849 bins:v850];
  v852 = [(RTMetric *)self metrics];
  [v852 setObject:v851 forKeyedSubscript:@"SD_daily_total_charging_duration_others_bucketed"];

  v853 = [(RTMetric *)self metrics];
  v854 = [v853 objectForKeyedSubscript:@"SD_daily_longest_charging_duration_home"];
  v855 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v856 = [RTMetric binForNumber:v854 bins:v855];
  v857 = [(RTMetric *)self metrics];
  [v857 setObject:v856 forKeyedSubscript:@"SD_daily_longest_charging_duration_home_bucketed"];

  v858 = [(RTMetric *)self metrics];
  v859 = [v858 objectForKeyedSubscript:@"SD_daily_longest_charging_duration_work"];
  v860 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v861 = [RTMetric binForNumber:v859 bins:v860];
  v862 = [(RTMetric *)self metrics];
  [v862 setObject:v861 forKeyedSubscript:@"SD_daily_longest_charging_duration_work_bucketed"];

  v863 = [(RTMetric *)self metrics];
  v864 = [v863 objectForKeyedSubscript:@"SD_daily_longest_charging_duration_others"];
  v865 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v866 = [RTMetric binForNumber:v864 bins:v865];
  v867 = [(RTMetric *)self metrics];
  [v867 setObject:v866 forKeyedSubscript:@"SD_daily_longest_charging_duration_others_bucketed"];

  v868 = [(RTMetric *)self metrics];
  v869 = [v868 objectForKeyedSubscript:@"SD_daily_total_static_motion_duration_home"];
  v870 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v871 = [RTMetric binForNumber:v869 bins:v870];
  v872 = [(RTMetric *)self metrics];
  [v872 setObject:v871 forKeyedSubscript:@"SD_daily_total_static_motion_duration_home_bucketed"];

  v873 = [(RTMetric *)self metrics];
  v874 = [v873 objectForKeyedSubscript:@"SD_daily_total_static_motion_duration_work"];
  v875 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v876 = [RTMetric binForNumber:v874 bins:v875];
  v877 = [(RTMetric *)self metrics];
  [v877 setObject:v876 forKeyedSubscript:@"SD_daily_total_static_motion_duration_work_bucketed"];

  v878 = [(RTMetric *)self metrics];
  v879 = [v878 objectForKeyedSubscript:@"SD_daily_total_static_motion_duration_others"];
  v880 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v881 = [RTMetric binForNumber:v879 bins:v880];
  v882 = [(RTMetric *)self metrics];
  [v882 setObject:v881 forKeyedSubscript:@"SD_daily_total_static_motion_duration_others_bucketed"];

  v883 = [(RTMetric *)self metrics];
  v884 = [v883 objectForKeyedSubscript:@"SD_daily_longest_static_motion_duration_home"];
  v885 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v886 = [RTMetric binForNumber:v884 bins:v885];
  v887 = [(RTMetric *)self metrics];
  [v887 setObject:v886 forKeyedSubscript:@"SD_daily_longest_static_motion_duration_home_bucketed"];

  v888 = [(RTMetric *)self metrics];
  v889 = [v888 objectForKeyedSubscript:@"SD_daily_longest_static_motion_duration_work"];
  v890 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v891 = [RTMetric binForNumber:v889 bins:v890];
  v892 = [(RTMetric *)self metrics];
  [v892 setObject:v891 forKeyedSubscript:@"SD_daily_longest_static_motion_duration_work_bucketed"];

  v893 = [(RTMetric *)self metrics];
  v894 = [v893 objectForKeyedSubscript:@"SD_daily_longest_static_motion_duration_others"];
  v895 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v896 = [RTMetric binForNumber:v894 bins:v895];
  v897 = [(RTMetric *)self metrics];
  [v897 setObject:v896 forKeyedSubscript:@"SD_daily_longest_static_motion_duration_others_bucketed"];

  v898 = [(RTMetric *)self metrics];
  v899 = [v898 objectForKeyedSubscript:@"SD_daily_total_screen_lock_duration_home"];
  v900 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v901 = [RTMetric binForNumber:v899 bins:v900];
  v902 = [(RTMetric *)self metrics];
  [v902 setObject:v901 forKeyedSubscript:@"SD_daily_total_screen_lock_duration_home_bucketed"];

  v903 = [(RTMetric *)self metrics];
  v904 = [v903 objectForKeyedSubscript:@"SD_daily_total_screen_lock_duration_work"];
  v905 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v906 = [RTMetric binForNumber:v904 bins:v905];
  v907 = [(RTMetric *)self metrics];
  [v907 setObject:v906 forKeyedSubscript:@"SD_daily_total_screen_lock_duration_work_bucketed"];

  v908 = [(RTMetric *)self metrics];
  v909 = [v908 objectForKeyedSubscript:@"SD_daily_total_screen_lock_duration_others"];
  v910 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v911 = [RTMetric binForNumber:v909 bins:v910];
  v912 = [(RTMetric *)self metrics];
  [v912 setObject:v911 forKeyedSubscript:@"SD_daily_total_screen_lock_duration_others_bucketed"];

  v913 = [(RTMetric *)self metrics];
  v914 = [v913 objectForKeyedSubscript:@"SD_daily_longest_screen_lock_duration_home"];
  v915 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v916 = [RTMetric binForNumber:v914 bins:v915];
  v917 = [(RTMetric *)self metrics];
  [v917 setObject:v916 forKeyedSubscript:@"SD_daily_longest_screen_lock_duration_home_bucketed"];

  v918 = [(RTMetric *)self metrics];
  v919 = [v918 objectForKeyedSubscript:@"SD_daily_longest_screen_lock_duration_work"];
  v920 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v921 = [RTMetric binForNumber:v919 bins:v920];
  v922 = [(RTMetric *)self metrics];
  [v922 setObject:v921 forKeyedSubscript:@"SD_daily_longest_screen_lock_duration_work_bucketed"];

  v923 = [(RTMetric *)self metrics];
  v924 = [v923 objectForKeyedSubscript:@"SD_daily_longest_screen_lock_duration_others"];
  v925 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v926 = [RTMetric binForNumber:v924 bins:v925];
  v927 = [(RTMetric *)self metrics];
  [v927 setObject:v926 forKeyedSubscript:@"SD_daily_longest_screen_lock_duration_others_bucketed"];

  v928 = [(RTMetric *)self metrics];
  v929 = [v928 objectForKeyedSubscript:@"SD_daily_total_uninterrupted_WiFi_connection_duration_home"];
  v930 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v931 = [RTMetric binForNumber:v929 bins:v930];
  v932 = [(RTMetric *)self metrics];
  [v932 setObject:v931 forKeyedSubscript:@"SD_daily_total_uninterrupted_WiFi_connection_duration_home_bucketed"];

  v933 = [(RTMetric *)self metrics];
  v934 = [v933 objectForKeyedSubscript:@"SD_daily_total_uninterrupted_WiFi_connection_duration_work"];
  v935 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v936 = [RTMetric binForNumber:v934 bins:v935];
  v937 = [(RTMetric *)self metrics];
  [v937 setObject:v936 forKeyedSubscript:@"SD_daily_total_uninterrupted_WiFi_connection_duration_work_bucketed"];

  v938 = [(RTMetric *)self metrics];
  v939 = [v938 objectForKeyedSubscript:@"SD_daily_total_uninterrupted_WiFi_connection_duration_others"];
  v940 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v941 = [RTMetric binForNumber:v939 bins:v940];
  v942 = [(RTMetric *)self metrics];
  [v942 setObject:v941 forKeyedSubscript:@"SD_daily_total_uninterrupted_WiFi_connection_duration_others_bucketed"];

  v943 = [(RTMetric *)self metrics];
  v944 = [v943 objectForKeyedSubscript:@"SD_daily_longest_uninterrupted_WiFi_connection_duration_home"];
  v945 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v946 = [RTMetric binForNumber:v944 bins:v945];
  v947 = [(RTMetric *)self metrics];
  [v947 setObject:v946 forKeyedSubscript:@"SD_daily_longest_uninterrupted_WiFi_connection_duration_home_bucketed"];

  v948 = [(RTMetric *)self metrics];
  v949 = [v948 objectForKeyedSubscript:@"SD_daily_longest_uninterrupted_WiFi_connection_duration_work"];
  v950 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v951 = [RTMetric binForNumber:v949 bins:v950];
  v952 = [(RTMetric *)self metrics];
  [v952 setObject:v951 forKeyedSubscript:@"SD_daily_longest_uninterrupted_WiFi_connection_duration_work_bucketed"];

  v953 = [(RTMetric *)self metrics];
  v954 = [v953 objectForKeyedSubscript:@"SD_daily_longest_uninterrupted_WiFi_connection_duration_others"];
  v955 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
  v956 = [RTMetric binForNumber:v954 bins:v955];
  v957 = [(RTMetric *)self metrics];
  [v957 setObject:v956 forKeyedSubscript:@"SD_daily_longest_uninterrupted_WiFi_connection_duration_others_bucketed"];
}

- (BOOL)submitMetricsWithError:(id *)a3
{
  [(RTPlaceDataMetrics *)self setDerivedMetrics];
  v6.receiver = self;
  v6.super_class = RTPlaceDataMetrics;
  return [(RTMetric *)&v6 submitMetricsWithError:a3];
}

+ (id)medianOf:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = MEMORY[0x277CCABB0];
      v5 = [v3 objectAtIndexedSubscript:0];
      [v5 doubleValue];
      v6 = [v4 numberWithDouble:?];
    }

    else
    {
      v5 = [v3 sortedArrayUsingSelector:sel_compare_];
      v7 = [v3 count];
      v8 = [v5 count] >> 1;
      v9 = MEMORY[0x277CCABB0];
      if (v7)
      {
        v10 = [v5 objectAtIndex:v8];
        [v10 doubleValue];
        v6 = [v9 numberWithDouble:?];
      }

      else
      {
        v10 = [v5 objectAtIndex:v8 - 1];
        [v10 doubleValue];
        v12 = v11;
        v13 = [v5 objectAtIndex:v8];
        [v13 doubleValue];
        v6 = [v9 numberWithDouble:(v12 + v14) * 0.5];
      }
    }
  }

  else
  {
    v6 = &unk_2845A19E8;
  }

  return v6;
}

+ (id)meanOf:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = MEMORY[0x277CCABB0];
      v5 = [v3 objectAtIndexedSubscript:0];
      [v5 doubleValue];
      v6 = [v4 numberWithDouble:?];
    }

    else
    {
      v7 = 0.0;
      if ([v3 count])
      {
        v8 = 1;
        do
        {
          if ([v3 count] >= v8)
          {
            v9 = [v3 objectAtIndexedSubscript:v8 - 1];
            [v9 doubleValue];
            v7 = v7 + (v10 - v7) / v8;
          }

          else
          {
            v7 = v7 - v7 / v8;
          }
        }

        while ([v3 count] > v8++);
      }

      v6 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
    }
  }

  else
  {
    v6 = &unk_2845A19E8;
  }

  return v6;
}

+ (id)standardDeviationOf:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = &unk_2845A1AB8;
    }

    else
    {
      v5 = [RTPlaceDataMetrics meanOf:v3];
      [v5 doubleValue];
      v7 = v6;

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = v3;
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        v12 = 0.0;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v16 + 1) + 8 * i) doubleValue];
            v12 = v12 + (v14 - v7) * (v14 - v7);
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }

      else
      {
        v12 = 0.0;
      }

      v4 = [MEMORY[0x277CCABB0] numberWithDouble:{sqrt(v12 / objc_msgSend(v8, "count"))}];
    }
  }

  else
  {
    v4 = &unk_2845A19E8;
  }

  return v4;
}

- (int64_t)daysBetweenDate:(id)a3 andDate:(id)a4
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 currentCalendar];
  v15 = 0;
  [v8 rangeOfUnit:16 startDate:&v15 interval:0 forDate:v7];

  v9 = v15;
  v14 = 0;
  [v8 rangeOfUnit:16 startDate:&v14 interval:0 forDate:v6];

  v10 = v14;
  v11 = [v8 components:16 fromDate:v9 toDate:v10 options:0];
  v12 = [v11 day];

  return v12 + 1;
}

- (id)removeTimeFromDateTime:(id)a3 withCalendar:(id)a4
{
  v5 = a4;
  v6 = [v5 components:1564 fromDate:a3];
  v7 = [objc_alloc(MEMORY[0x277CBEAB8]) init];
  [v7 setWeekday:{objc_msgSend(v6, "weekday")}];
  [v7 setWeekdayOrdinal:{objc_msgSend(v6, "weekdayOrdinal")}];
  [v7 setDay:{objc_msgSend(v6, "day")}];
  [v7 setMonth:{objc_msgSend(v6, "month")}];
  [v7 setYear:{objc_msgSend(v6, "year")}];
  v8 = [v5 dateFromComponents:v7];

  return v8;
}

- (int64_t)numberOfWeeksBetweenDatesBasedOnCalendar:(id)a3 startDateTime:(id)a4 endDateTime:(id)a5
{
  v23 = 0;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  [v9 rangeOfUnit:16 startDate:&v23 interval:0 forDate:v8];
  v10 = v23;
  v22 = 0;
  [v9 rangeOfUnit:16 startDate:&v22 interval:0 forDate:v7];
  v11 = v22;
  v12 = [v9 components:16 fromDate:v10 toDate:v11 options:0];
  v13 = [v9 components:12800 fromDate:v8];

  v14 = [v9 components:12800 fromDate:v7];

  v15 = [v12 day];
  v16 = [v9 maximumRangeOfUnit:512];
  v18 = v17;

  v19 = [v13 weekday];
  v20 = (v15 - v16 + v18 + v19 - [v14 weekday] + 1) / v18;

  return v20;
}

- (int64_t)convertDateTime2SecondsBasedOnCalendar:(id)a3 dateTime:(id)a4
{
  v4 = [a3 components:224 fromDate:a4];
  v5 = [v4 hour];
  v6 = [v4 minute];
  v7 = [v4 second];

  return 3600 * v5 + 60 * v6 + v7;
}

- (id)findHomeWorkOthersIntervals
{
  v39 = *MEMORY[0x277D85DE8];
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = self->_visitArray;
  v31 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v31)
  {
    v4 = *v35;
    v5 = 0x28149B000uLL;
    v29 = *v35;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v35 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v34 + 1) + 8 * i);
        v8 = [v7 location];
        v9 = [v8 location];
        v10 = *(&self->super.super.isa + *(v5 + 1000));
        if (v10)
        {
          v33 = 0;
          [v3 distanceFromLocation:v9 toLocation:v10 error:&v33];
          v12 = v11;
          v13 = v33;
        }

        else
        {
          v13 = 0;
          v12 = 1.79769313e308;
        }

        locationWork = self->_locationWork;
        if (locationWork)
        {
          v32 = v13;
          [v3 distanceFromLocation:v9 toLocation:locationWork error:&v32];
          v16 = v15;
          v17 = v32;

          v13 = v17;
          if (v17)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v16 = 1.79769313e308;
          if (v13)
          {
            goto LABEL_23;
          }
        }

        v18 = objc_alloc(MEMORY[0x277CCA970]);
        v19 = [v7 entryDate];
        v20 = [v7 exitDate];
        v21 = [v18 initWithStartDate:v19 endDate:v20];

        distanceThreshold = self->_distanceThreshold;
        if (v12 <= distanceThreshold)
        {
          [v28 addObject:v21];
          distanceThreshold = self->_distanceThreshold;
        }

        if (v16 <= distanceThreshold)
        {
          [v27 addObject:v21];
          distanceThreshold = self->_distanceThreshold;
        }

        v23 = v12 <= distanceThreshold || v16 <= distanceThreshold;
        v4 = v29;
        if (!v23)
        {
          [v26 addObject:v21];
        }

        v5 = 0x28149B000;
LABEL_23:
      }

      v31 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v31);
  }

  [v25 setObject:v28 forKeyedSubscript:@"Home"];
  [v25 setObject:v27 forKeyedSubscript:@"Work"];
  [v25 setObject:v26 forKeyedSubscript:@"Others"];

  return v25;
}

- (void)calculateAndSetVisitMetrics
{
  v975[16] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v776 = [(RTPlaceDataMetrics *)self removeTimeFromDateTime:self->_startDateTime withCalendar:v3];
  v775 = [(RTPlaceDataMetrics *)self removeTimeFromDateTime:self->_endDateTime withCalendar:v3];
  v835 = self;
  v849 = v3;
  v4 = [(RTPlaceDataMetrics *)self numberOfWeeksBetweenDatesBasedOnCalendar:v3 startDateTime:self->_startDateTime endDateTime:self->_endDateTime];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v745 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v744 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v774 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v773 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v850 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v850 setDateFormat:@"yyyy-MM-dd"];
  v772 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v839 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v838 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v837 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v836 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v763 = v4;
  if (v4 >= 1)
  {
    do
    {
      [v5 addObject:&unk_28459D1A0];
      [v6 addObject:&unk_28459D1A0];
      --v4;
    }

    while (v4);
  }

  v771 = v7;
  v746 = v6;
  v747 = v5;
  v8 = objc_opt_new();
  v777 = [MEMORY[0x277CBEB18] array];
  v942 = 0u;
  v943 = 0u;
  v944 = 0u;
  v945 = 0u;
  obj = v835->_locationsOfOthers;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v942 objects:v975 count:16];
  v779 = v8;
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v943;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v943 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v942 + 1) + 8 * i);
        locationHome = v835->_locationHome;
        v941 = v11;
        [v8 distanceFromLocation:v14 toLocation:locationHome error:&v941];
        v17 = v16;
        v18 = v941;

        if (v17 <= v835->_distanceThreshold)
        {
          v11 = v18;
        }

        else
        {
          locationWork = v835->_locationWork;
          v940 = v18;
          [v8 distanceFromLocation:v14 toLocation:locationWork error:&v940];
          v21 = v20;
          v11 = v940;

          if (v21 > v835->_distanceThreshold)
          {
            [v777 addObject:v14];
          }

          v8 = v779;
        }
      }

      v10 = [(NSArray *)obj countByEnumeratingWithState:&v942 objects:v975 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v767 = v11;

  v22 = 0x277CBE000uLL;
  v23 = [MEMORY[0x277CBEB18] array];
  if ([v777 count])
  {
    v24 = 0;
    do
    {
      v25 = objc_alloc(MEMORY[0x277CBEB38]);
      v26 = objc_alloc_init(*(v22 + 2840));
      v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v31 = [v25 initWithObjectsAndKeys:{&unk_28459D1A0, @"numberOthers", v26, @"othersVisitTimeArray", v27, @"othersVisitDateSet", v28, @"dictNumDailyVisitsOthers", v29, @"dictVisitDurationWeekendOthers", v30, @"dictVisitDurationWeekdaysOthers", &unk_2845A1AB8, @"sumDistanceOtherFromOther", 0}];
      [v23 addObject:v31];

      v22 = 0x277CBE000;
      ++v24;
    }

    while ([v777 count] > v24);
  }

  obja = v23;
  v778 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  p_isa = &v835->super.super.isa;
  if (![(NSArray *)v835->_visitArray count])
  {
    v36 = v849;
    v37 = v771;
    v49 = v772;
    v38 = obja;
    goto LABEL_94;
  }

  v33 = 0;
  v756 = 0;
  v759 = 0;
  v34 = 0.0;
  v35 = 0.0;
  v36 = v849;
  v37 = v771;
  v38 = obja;
  do
  {
    v39 = objc_autoreleasePoolPush();
    v40 = [p_isa[4] objectAtIndex:v33];
    v41 = [v40 entryDate];
    v826 = v40;
    v42 = [v40 exitDate];
    v43 = [p_isa removeTimeFromDateTime:v41 withCalendar:v36];
    v832 = [p_isa removeTimeFromDateTime:v42 withCalendar:v36];
    v44 = [v36 isDateInWeekend:v41];
    v820 = v42;
    [v42 timeIntervalSinceDate:v41];
    v46 = v45;
    v840 = v43;
    v47 = [v850 stringFromDate:v43];
    v48 = [p_isa[8] earlierDate:v41];
    if (v48 != p_isa[8])
    {
      v49 = v772;
      v36 = v849;
LABEL_24:

      goto LABEL_27;
    }

    v793 = v44;
    v803 = v47;
    v788 = v39;
    v798 = v33;
    v50 = [p_isa[9] laterDate:v41];
    v51 = p_isa;
    v52 = p_isa[9];

    if (v50 == v52)
    {
      v780 = [v51 convertDateTime2SecondsBasedOnCalendar:v849 dateTime:v41];
      v53 = [v51 numberOfWeeksBetweenDatesBasedOnCalendar:v849 startDateTime:v51[8] endDateTime:v41];
      v54 = v53 - 1;
      p_isa = v51;
      v49 = v772;
      if (v53 < 1 || v53 > v763)
      {
        v36 = v849;
        v61 = [v849 maximumRangeOfUnit:512];
        v63 = v62;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v48 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          v47 = v803;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            v64 = [v849 calendarIdentifier];
            v967 = 134218754;
            v968 = v54;
            v969 = 2048;
            v970 = v61;
            v971 = 2048;
            v972 = v63;
            v973 = 2112;
            v974 = v64;
            _os_log_impl(&dword_2304B3000, v48, OS_LOG_TYPE_INFO, "weekIndx is out of range. weekIndx: %lu, minimum weekday: %lu , maximum weekday: %ld, calendar: %@", &v967, 0x2Au);

            v49 = v772;
          }

          v37 = v771;
          v38 = obja;
          v33 = v798;
          goto LABEL_24;
        }

        v37 = v771;
        v38 = obja;
        v33 = v798;
        v47 = v803;
      }

      else
      {
        if (v51[5])
        {
          v55 = [v826 location];
          v56 = [v55 location];
          v57 = v51[5];
          v939 = v767;
          [v779 distanceFromLocation:v56 toLocation:v57 error:&v939];
          v59 = v58;
          v60 = v939;

          v767 = v60;
        }

        else
        {
          v59 = 1.79769313e308;
        }

        v36 = v849;
        if (v51[6])
        {
          v65 = [v826 location];
          v66 = [v65 location];
          v67 = v51[6];
          v938 = v767;
          [v779 distanceFromLocation:v66 toLocation:v67 error:&v938];
          v69 = v68;
          v70 = v938;

          v767 = v70;
        }

        else
        {
          v69 = 1.79769313e308;
        }

        v37 = v771;
        p_isa = v51;
        v33 = v798;
        distanceThreshold = *(v51 + 3);
        v47 = v803;
        if (v59 <= distanceThreshold)
        {
          [v747 setObject:&unk_28459D278 atIndexedSubscript:v54];
          v73 = [MEMORY[0x277CCABB0] numberWithLong:v780];
          [v745 addObject:v73];

          [v778 setDay:0];
          v74 = [v849 dateByAddingComponents:v778 toDate:v840 options:0];
          v75 = [v74 earlierDate:v832];

          if (v75 == v74)
          {
            do
            {
              [v774 addObject:v74];
              v77 = [v850 stringFromDate:v74];
              v78 = [v772 allKeys];
              v79 = [v78 containsObject:v77];

              if (v79)
              {
                v80 = MEMORY[0x277CCABB0];
                v81 = [v772 objectForKeyedSubscript:v77];
                v82 = [v80 numberWithInt:{objc_msgSend(v81, "intValue") + 1}];
                [v772 setObject:v82 forKeyedSubscript:v77];
              }

              else
              {
                [v772 setObject:&unk_28459D278 forKeyedSubscript:v77];
              }

              [v778 setDay:{objc_msgSend(v778, "day") + 1}];
              v76 = [v849 dateByAddingComponents:v778 toDate:v840 options:0];

              v83 = [v76 earlierDate:v832];

              v74 = v76;
            }

            while (v83 == v76);
          }

          else
          {
            v76 = v74;
          }

          if (v793)
          {
            v84 = v839;
          }

          else
          {
            v84 = v838;
          }

          v85 = [v84 allKeys];
          v86 = [v85 containsObject:v803];

          v49 = v772;
          if ((v86 & 1) == 0)
          {
            v87 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v84 setObject:v87 forKeyedSubscript:v803];
          }

          v34 = v34 + v59;
          ++v756;
          v88 = [v84 objectForKeyedSubscript:v803];
          v89 = [MEMORY[0x277CCABB0] numberWithDouble:v46];
          [v88 addObject:v89];

          p_isa = &v835->super.super.isa;
          v33 = v798;
          distanceThreshold = v835->_distanceThreshold;
          v72 = v746;
          v37 = v771;
        }

        else
        {
          v72 = v746;
        }

        if (v69 <= distanceThreshold)
        {
          [v72 setObject:&unk_28459D278 atIndexedSubscript:v54];
          v90 = [MEMORY[0x277CCABB0] numberWithLong:v780];
          [v744 addObject:v90];

          [v778 setDay:0];
          v91 = [v849 dateByAddingComponents:v778 toDate:v840 options:0];
          v92 = [v91 earlierDate:v832];

          if (v92 == v91)
          {
            do
            {
              [v773 addObject:v91];
              v94 = [v850 stringFromDate:v91];
              v95 = [v771 allKeys];
              v96 = [v95 containsObject:v94];

              if (v96)
              {
                v97 = MEMORY[0x277CCABB0];
                v98 = [v771 objectForKeyedSubscript:v94];
                v99 = [v97 numberWithInt:{objc_msgSend(v98, "intValue") + 1}];
                [v771 setObject:v99 forKeyedSubscript:v94];
              }

              else
              {
                [v771 setObject:&unk_28459D278 forKeyedSubscript:v94];
              }

              [v778 setDay:{objc_msgSend(v778, "day") + 1}];
              v93 = [v849 dateByAddingComponents:v778 toDate:v840 options:0];

              v100 = [v93 earlierDate:v832];

              v91 = v93;
            }

            while (v100 == v93);
          }

          else
          {
            v93 = v91;
          }

          if (v793)
          {
            v101 = v837;
          }

          else
          {
            v101 = v836;
          }

          v102 = [v101 allKeys];
          v103 = [v102 containsObject:v803];

          v104 = v101;
          v37 = v771;
          p_isa = &v835->super.super.isa;
          if ((v103 & 1) == 0)
          {
            v105 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v104 setObject:v105 forKeyedSubscript:v803];
          }

          v35 = v35 + v69;
          ++v759;
          v106 = [v104 objectForKeyedSubscript:v803];
          v107 = [MEMORY[0x277CCABB0] numberWithDouble:v46];
          [v106 addObject:v107];

          v33 = v798;
          distanceThreshold = v835->_distanceThreshold;
        }

        v38 = obja;
        if (v59 > distanceThreshold && v69 > distanceThreshold && [v777 count])
        {
          v108 = 0;
          v109 = v777;
          do
          {
            v110 = v767;
            context = objc_autoreleasePoolPush();
            v111 = [v109 objectAtIndexedSubscript:v108];
            v112 = [v826 location];
            v113 = [v112 location];
            v937 = v767;
            [v779 distanceFromLocation:v113 toLocation:v111 error:&v937];
            v115 = v114;
            v767 = v937;

            if (v115 < v835->_distanceThreshold)
            {
              v783 = v111;
              v116 = MEMORY[0x277CCABB0];
              v117 = [v38 objectAtIndexedSubscript:v108];
              v118 = [v117 objectForKeyedSubscript:@"sumDistanceOthersFromOther"];
              [v118 doubleValue];
              v120 = [v116 numberWithDouble:v115 + v119];
              v121 = [v38 objectAtIndexedSubscript:v108];
              [v121 setObject:v120 forKeyedSubscript:@"sumDistanceOtherFromOther"];

              v122 = MEMORY[0x277CCABB0];
              v123 = [v38 objectAtIndexedSubscript:v108];
              v124 = [v123 objectForKeyedSubscript:@"numberOthers"];
              v125 = [v122 numberWithInt:{objc_msgSend(v124, "intValue") + 1}];
              v126 = [v38 objectAtIndexedSubscript:v108];
              [v126 setObject:v125 forKeyedSubscript:@"numberOthers"];

              v127 = [v38 objectAtIndexedSubscript:v108];
              v128 = [v127 objectForKeyedSubscript:@"othersVisitTimeArray"];
              v129 = [MEMORY[0x277CCABB0] numberWithLong:v780];
              [v128 addObject:v129];

              [v778 setDay:0];
              v130 = [v849 dateByAddingComponents:v778 toDate:v840 options:0];
              v131 = [v130 earlierDate:v832];

              v829 = v108;
              if (v131 == v130)
              {
                do
                {
                  v133 = [v38 objectAtIndexedSubscript:v108];
                  v134 = [v133 objectForKeyedSubscript:@"othersVisitDateSet"];
                  [v134 addObject:v130];

                  v135 = [v850 stringFromDate:v130];
                  v136 = [v38 objectAtIndexedSubscript:v108];
                  v137 = [v136 objectForKeyedSubscript:@"dictNumDailyVisitsOthers"];
                  v138 = [v137 allKeys];
                  v139 = [v138 containsObject:v135];

                  if (v139)
                  {
                    v140 = MEMORY[0x277CCABB0];
                    v141 = [v38 objectAtIndexedSubscript:v108];
                    v142 = [v141 objectForKeyedSubscript:@"dictNumDailyVisitsOthers"];
                    v143 = [v142 objectForKeyedSubscript:v135];
                    v144 = [v140 numberWithInt:{objc_msgSend(v143, "intValue") + 1}];
                    v145 = [v38 objectAtIndexedSubscript:v108];
                    v146 = [v145 objectForKeyedSubscript:@"dictNumDailyVisitsOthers"];
                    [v146 setObject:v144 forKeyedSubscript:v135];

                    v147 = v849;
                    v38 = obja;
                  }

                  else
                  {
                    v141 = [v38 objectAtIndexedSubscript:v108];
                    v142 = [v141 objectForKeyedSubscript:@"dictNumDailyVisitsOthers"];
                    [v142 setObject:&unk_28459D278 forKeyedSubscript:v135];
                    v147 = v849;
                  }

                  [v778 setDay:{objc_msgSend(v778, "day") + 1}];
                  v132 = [v147 dateByAddingComponents:v778 toDate:v840 options:0];

                  v148 = [v132 earlierDate:v832];

                  v130 = v132;
                  v108 = v829;
                }

                while (v148 == v132);
              }

              else
              {
                v132 = v130;
              }

              v149 = [v38 objectAtIndexedSubscript:v108];
              v150 = v149;
              if (v793)
              {
                v151 = @"dictVisitDurationWeekendOthers";
              }

              else
              {
                v151 = @"dictVisitDurationWeekdaysOthers";
              }

              v152 = [v149 objectForKeyedSubscript:v151];
              v153 = [v152 allKeys];
              v154 = [v153 containsObject:v803];

              v37 = v771;
              v49 = v772;
              if ((v154 & 1) == 0)
              {
                v155 = objc_alloc_init(MEMORY[0x277CBEB18]);
                v156 = [obja objectAtIndexedSubscript:v829];
                v157 = [v156 objectForKeyedSubscript:v151];
                [v157 setObject:v155 forKeyedSubscript:v803];
              }

              v108 = v829;
              v158 = [obja objectAtIndexedSubscript:v829];
              v159 = [v158 objectForKeyedSubscript:v151];
              v160 = [v159 objectForKeyedSubscript:v803];
              v161 = [MEMORY[0x277CCABB0] numberWithDouble:v46];
              [v160 addObject:v161];

              v38 = obja;
              v111 = v783;
            }

            objc_autoreleasePoolPop(context);
            ++v108;
            v109 = v777;
          }

          while ([v777 count] > v108);
          p_isa = &v835->super.super.isa;
          v33 = v798;
          v39 = v788;
          v47 = v803;
          v36 = v849;
        }
      }
    }

    else
    {
      p_isa = v51;
      v33 = v798;
      v47 = v803;
      v49 = v772;
      v36 = v849;
    }

LABEL_27:

    objc_autoreleasePoolPop(v39);
    ++v33;
  }

  while ([p_isa[4] count] > v33);
  if (v756 > 0)
  {
    v162 = [MEMORY[0x277CCABB0] numberWithDouble:v34 / v756];
    v163 = [(RTMetric *)v835 metrics];
    [v163 setObject:v162 forKeyedSubscript:@"mean_distance_homeVisit_from_homeAddress"];
  }

  if (v759 >= 1)
  {
    v164 = [MEMORY[0x277CCABB0] numberWithDouble:v35 / v759];
    v165 = [(RTMetric *)v835 metrics];
    [v165 setObject:v164 forKeyedSubscript:@"mean_distance_workVisit_from_workAddress"];
  }

LABEL_94:
  if ([v38 count])
  {
    v166 = 0;
    v167 = 0;
    v168 = 0.0;
    do
    {
      v169 = [v38 objectAtIndexedSubscript:v166];
      [v169 objectForKeyedSubscript:@"numberOthers"];
      v171 = v170 = v38;

      if (v171)
      {
        v172 = [v170 objectAtIndexedSubscript:v166];
        v173 = [v172 objectForKeyedSubscript:@"sumDistanceOtherFromOther"];
        [v173 doubleValue];
        v175 = v174;
        v176 = [v170 objectAtIndexedSubscript:v166];
        v177 = [v176 objectForKeyedSubscript:@"numberOthers"];
        [v177 doubleValue];
        v168 = v168 + v175 / v178;

        v49 = v772;
        v37 = v771;

        ++v167;
      }

      ++v166;
      v38 = v170;
    }

    while ([v170 count] > v166);
    if (v167 > 0)
    {
      v179 = [MEMORY[0x277CCABB0] numberWithDouble:v168 / v167];
      v180 = [(RTMetric *)v835 metrics];
      [v180 setObject:v179 forKeyedSubscript:@"mean_distance_otherVisit_from_otherAddress"];
    }
  }

  v181 = [v747 valueForKeyPath:@"@avg.self"];
  v182 = [(RTMetric *)v835 metrics];
  [v182 setObject:v181 forKeyedSubscript:@"weekly_occurrence_rate_home"];

  v183 = [v746 valueForKeyPath:@"@avg.self"];
  v184 = [(RTMetric *)v835 metrics];
  [v184 setObject:v183 forKeyedSubscript:@"weekly_occurrence_rate_work"];

  v185 = [RTPlaceDataMetrics meanOf:v745];
  v186 = [(RTMetric *)v835 metrics];
  [v186 setObject:v185 forKeyedSubscript:@"mean_visit_time_home"];

  v187 = [RTPlaceDataMetrics medianOf:v745];
  v188 = [(RTMetric *)v835 metrics];
  [v188 setObject:v187 forKeyedSubscript:@"median_visit_time_home"];

  v189 = [RTPlaceDataMetrics standardDeviationOf:v745];
  v190 = [(RTMetric *)v835 metrics];
  [v190 setObject:v189 forKeyedSubscript:@"SD_visit_time_home"];

  v191 = [RTPlaceDataMetrics meanOf:v744];
  v192 = [(RTMetric *)v835 metrics];
  [v192 setObject:v191 forKeyedSubscript:@"mean_visit_time_work"];

  v193 = [RTPlaceDataMetrics medianOf:v744];
  v194 = [(RTMetric *)v835 metrics];
  [v194 setObject:v193 forKeyedSubscript:@"median_visit_time_work"];

  v195 = [RTPlaceDataMetrics standardDeviationOf:v744];
  v196 = [(RTMetric *)v835 metrics];
  [v196 setObject:v195 forKeyedSubscript:@"SD_visit_time_work"];

  if ([v38 count])
  {
    v197 = 0;
    v198 = 0;
    v199 = 0.0;
    v200 = 0.0;
    v201 = 0.0;
    do
    {
      v202 = [v38 objectAtIndexedSubscript:v197];
      v203 = [v202 objectForKeyedSubscript:@"othersVisitTimeArray"];

      if ([v203 count])
      {
        ++v198;
        v204 = [RTPlaceDataMetrics meanOf:v203];
        [v204 doubleValue];
        v199 = v199 + v205;

        v206 = [RTPlaceDataMetrics medianOf:v203];
        [v206 doubleValue];
        v200 = v200 + v207;

        v208 = [RTPlaceDataMetrics standardDeviationOf:v203];
        [v208 doubleValue];
        v201 = v209;
      }

      ++v197;
    }

    while ([v38 count] > v197);
    if (v198 > 0)
    {
      v210 = [MEMORY[0x277CCABB0] numberWithDouble:v199 / v198];
      v211 = [(RTMetric *)v835 metrics];
      [v211 setObject:v210 forKeyedSubscript:@"mean_visit_time_others"];

      v212 = [MEMORY[0x277CCABB0] numberWithDouble:v200 / v198];
      v213 = [(RTMetric *)v835 metrics];
      [v213 setObject:v212 forKeyedSubscript:@"median_visit_time_others"];

      v214 = [MEMORY[0x277CCABB0] numberWithDouble:v201 / v198];
      v215 = [(RTMetric *)v835 metrics];
      [v215 setObject:v214 forKeyedSubscript:@"SD_visit_time_others"];
    }
  }

  if ([v38 count])
  {
    v216 = 0;
    v757 = 0;
    v760 = 0;
    v217 = 0.0;
    v218 = 0.0;
    v219 = 0.0;
    v220 = 0.0;
    v221 = 0.0;
    v222 = 0.0;
    v223 = 0.0;
    v748 = 0.0;
    v749 = 0.0;
    v750 = 0.0;
    v751 = 0.0;
    v752 = 0.0;
    v753 = 0.0;
    v754 = 0.0;
    v755 = 0.0;
    v224 = 0.0;
    while (1)
    {
      v225 = [v38 objectAtIndexedSubscript:v216];
      v226 = [v225 objectForKeyedSubscript:@"othersVisitDateSet"];

      if (![v226 count])
      {
        goto LABEL_159;
      }

      [v778 setDay:0];
      v227 = [v36 dateByAddingComponents:v778 toDate:v776 options:0];
      v228 = [v227 earlierDate:v775];

      if (v228 != v227)
      {
        goto LABEL_158;
      }

      v764 = v226;
      v229 = 0;
      v230 = 0;
      v801 = 0;
      v804 = 0;
      v794 = 0;
      v799 = 0;
      v784 = 0;
      v789 = 0;
      v781 = 0;
      v768 = 0;
      v830 = 0;
      v833 = 0;
      v824 = 0;
      v827 = 0;
      contexta = 0;
      v821 = 0;
      v808 = 0;
      v813 = 0;
      v841 = v216;
      do
      {
        v231 = v227;
        v232 = objc_autoreleasePoolPush();
        v233 = [v36 isDateInWeekend:v227];
        v234 = [v774 containsObject:v227];
        v235 = [v773 containsObject:v227];
        v236 = [obja objectAtIndexedSubscript:v216];
        v237 = [v236 objectForKeyedSubscript:@"othersVisitDateSet"];
        v238 = [v237 containsObject:v227];

        v239 = v234 ^ 1 | v235 ^ 1;
        v240 = v238 ^ 1;
        if (v239 & 1) != 0 || (v240)
        {
          v241 = v234 ^ 1 | v235;
          if ((v241 | v240))
          {
            v36 = v849;
            goto LABEL_125;
          }

          v36 = v849;
          if (v233)
          {
LABEL_121:
            v241 = 0;
            ++v830;
            goto LABEL_125;
          }
        }

        else
        {
          if (v233)
          {
            ++v833;
            v36 = v849;
            if ((v235 & 1) == 0)
            {
              goto LABEL_121;
            }

LABEL_123:
            v241 = 1;
            goto LABEL_125;
          }

          ++v804;
          v36 = v849;
          if (v235)
          {
            goto LABEL_123;
          }
        }

        v241 = 0;
        ++v801;
LABEL_125:
        v242 = v234 | v235 ^ 1;
        if ((v242 | v240))
        {
          v243 = v234 | v235;
          if ((v234 | v235 | v240))
          {
            goto LABEL_135;
          }

          if (v233)
          {
LABEL_131:
            v243 = 0;
            ++v824;
            goto LABEL_135;
          }
        }

        else
        {
          if (v233)
          {
            ++v827;
            if ((v235 & 1) == 0)
            {
              goto LABEL_131;
            }

LABEL_133:
            v243 = 1;
            goto LABEL_135;
          }

          ++v799;
          if (v235)
          {
            goto LABEL_133;
          }
        }

        v243 = 0;
        ++v794;
LABEL_135:
        if ((v239 | v238))
        {
          if ((v241 | v238))
          {
            goto LABEL_144;
          }

          if (v233)
          {
            goto LABEL_141;
          }

LABEL_143:
          ++v784;
          goto LABEL_144;
        }

        if (v233)
        {
          ++v821;
          if (v241)
          {
            goto LABEL_144;
          }

LABEL_141:
          ++contexta;
          goto LABEL_144;
        }

        ++v789;
        if ((v241 & 1) == 0)
        {
          goto LABEL_143;
        }

LABEL_144:
        if ((v242 | v238))
        {
          if ((v243 | v238))
          {
            goto LABEL_153;
          }

          if (v233)
          {
            goto LABEL_150;
          }

LABEL_152:
          ++v768;
          goto LABEL_153;
        }

        if (v233)
        {
          ++v813;
          if (v243)
          {
            goto LABEL_153;
          }

LABEL_150:
          ++v808;
          goto LABEL_153;
        }

        ++v781;
        if ((v243 & 1) == 0)
        {
          goto LABEL_152;
        }

LABEL_153:
        v230 += v233;
        v229 += v233 ^ 1;
        [v778 setDay:{objc_msgSend(v778, "day") + 1}];
        v227 = [v36 dateByAddingComponents:v778 toDate:v776 options:0];

        objc_autoreleasePoolPop(v232);
        v244 = [v227 earlierDate:v775];

        v245 = v244 == v227;
        v216 = v841;
      }

      while (v245);
      if (v229)
      {
        ++v757;
        v217 = v217 + v804 / v229;
        v218 = v218 + v801 / v229;
        v219 = v219 + v799 / v229;
        v220 = v220 + v794 / v229;
        v221 = v221 + v789 / v229;
        v222 = v222 + v784 / v229;
        v223 = v223 + v781 / v229;
        v748 = v748 + v768 / v229;
      }

      v38 = obja;
      v226 = v764;
      v37 = v771;
      v49 = v772;
      if (v230)
      {
        ++v760;
        v749 = v749 + v833 / v230;
        v750 = v750 + v830 / v230;
        v751 = v751 + v827 / v230;
        v752 = v752 + v824 / v230;
        v753 = v753 + v821 / v230;
        v754 = v754 + contexta / v230;
        v755 = v755 + v813 / v230;
        v224 = v224 + v808 / v230;
      }

LABEL_158:

LABEL_159:
      if ([v38 count] <= ++v216)
      {
        if (v757 > 0)
        {
          v246 = [MEMORY[0x277CCABB0] numberWithDouble:v217 / v757];
          v247 = [(RTMetric *)v835 metrics];
          [v247 setObject:v246 forKeyedSubscript:@"average_occurrence_weekdays_Home_Work_Others"];

          v248 = [MEMORY[0x277CCABB0] numberWithDouble:v218 / v757];
          v249 = [(RTMetric *)v835 metrics];
          [v249 setObject:v248 forKeyedSubscript:@"average_occurrence_weekdays_Home_NoWork_Others"];

          v250 = [MEMORY[0x277CCABB0] numberWithDouble:v219 / v757];
          v251 = [(RTMetric *)v835 metrics];
          [v251 setObject:v250 forKeyedSubscript:@"average_occurrence_weekdays_NoHome_Work_Others"];

          v252 = [MEMORY[0x277CCABB0] numberWithDouble:v220 / v757];
          v253 = [(RTMetric *)v835 metrics];
          [v253 setObject:v252 forKeyedSubscript:@"average_occurrence_weekdays_NoHome_NoWork_Others"];

          v254 = [MEMORY[0x277CCABB0] numberWithDouble:v221 / v757];
          v255 = [(RTMetric *)v835 metrics];
          [v255 setObject:v254 forKeyedSubscript:@"average_occurrence_weekdays_Home_Work_NoOthers"];

          v256 = [MEMORY[0x277CCABB0] numberWithDouble:v222 / v757];
          v257 = [(RTMetric *)v835 metrics];
          [v257 setObject:v256 forKeyedSubscript:@"average_occurrence_weekdays_Home_NoWork_NoOthers"];

          v258 = [MEMORY[0x277CCABB0] numberWithDouble:v223 / v757];
          v259 = [(RTMetric *)v835 metrics];
          [v259 setObject:v258 forKeyedSubscript:@"average_occurrence_weekdays_NoHome_Work_NoOthers"];

          v260 = [MEMORY[0x277CCABB0] numberWithDouble:v748 / v757];
          v261 = [(RTMetric *)v835 metrics];
          [v261 setObject:v260 forKeyedSubscript:@"average_occurrence_weekdays_NoHome_NoWork_NoOthers"];
        }

        if (v760 >= 1)
        {
          v262 = [MEMORY[0x277CCABB0] numberWithDouble:v749 / v760];
          v263 = [(RTMetric *)v835 metrics];
          [v263 setObject:v262 forKeyedSubscript:@"average_occurrence_weekend_Home_Work_Others"];

          v264 = [MEMORY[0x277CCABB0] numberWithDouble:v750 / v760];
          v265 = [(RTMetric *)v835 metrics];
          [v265 setObject:v264 forKeyedSubscript:@"average_occurrence_weekend_Home_NoWork_Others"];

          v266 = [MEMORY[0x277CCABB0] numberWithDouble:v751 / v760];
          v267 = [(RTMetric *)v835 metrics];
          [v267 setObject:v266 forKeyedSubscript:@"average_occurrence_weekend_NoHome_Work_Others"];

          v268 = [MEMORY[0x277CCABB0] numberWithDouble:v752 / v760];
          v269 = [(RTMetric *)v835 metrics];
          [v269 setObject:v268 forKeyedSubscript:@"average_occurrence_weekend_NoHome_NoWork_Others"];

          v270 = [MEMORY[0x277CCABB0] numberWithDouble:v753 / v760];
          v271 = [(RTMetric *)v835 metrics];
          [v271 setObject:v270 forKeyedSubscript:@"average_occurrence_weekend_Home_Work_NoOthers"];

          v272 = [MEMORY[0x277CCABB0] numberWithDouble:v754 / v760];
          v273 = [(RTMetric *)v835 metrics];
          [v273 setObject:v272 forKeyedSubscript:@"average_occurrence_weekend_Home_NoWork_NoOthers"];

          v274 = [MEMORY[0x277CCABB0] numberWithDouble:v755 / v760];
          v275 = [(RTMetric *)v835 metrics];
          [v275 setObject:v274 forKeyedSubscript:@"average_occurrence_weekend_NoHome_Work_NoOthers"];

          v276 = [MEMORY[0x277CCABB0] numberWithDouble:v224 / v760];
          v277 = [(RTMetric *)v835 metrics];
          [v277 setObject:v276 forKeyedSubscript:@"average_occurrence_weekend_NoHome_NoWork_NoOthers"];
        }

        break;
      }
    }
  }

  v834 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v831 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v933 = 0u;
  v934 = 0u;
  v935 = 0u;
  v936 = 0u;
  v278 = [v49 allKeys];
  v279 = [v278 countByEnumeratingWithState:&v933 objects:v966 count:16];
  if (v279)
  {
    v280 = v279;
    v281 = *v934;
    do
    {
      for (j = 0; j != v280; ++j)
      {
        if (*v934 != v281)
        {
          objc_enumerationMutation(v278);
        }

        v283 = *(*(&v933 + 1) + 8 * j);
        v284 = [v850 dateFromString:v283];
        v285 = [v36 isDateInWeekend:v284];

        v286 = [v49 objectForKeyedSubscript:v283];
        if (v285)
        {
          v287 = v834;
        }

        else
        {
          v287 = v831;
        }

        [v287 addObject:v286];
      }

      v280 = [v278 countByEnumeratingWithState:&v933 objects:v966 count:16];
    }

    while (v280);
  }

  v288 = [RTPlaceDataMetrics meanOf:v831];
  v289 = [(RTMetric *)v835 metrics];
  [v289 setObject:v288 forKeyedSubscript:@"mean_daily_visits_weekdays_home"];

  v290 = [RTPlaceDataMetrics medianOf:v831];
  v291 = [(RTMetric *)v835 metrics];
  [v291 setObject:v290 forKeyedSubscript:@"median_daily_visits_weekdays_home"];

  v292 = [RTPlaceDataMetrics standardDeviationOf:v831];
  v293 = [(RTMetric *)v835 metrics];
  [v293 setObject:v292 forKeyedSubscript:@"SD_daily_visits_weekdays_home"];

  v294 = [RTPlaceDataMetrics meanOf:v834];
  v295 = [(RTMetric *)v835 metrics];
  [v295 setObject:v294 forKeyedSubscript:@"mean_daily_visits_weekend_home"];

  v296 = [RTPlaceDataMetrics medianOf:v834];
  v297 = [(RTMetric *)v835 metrics];
  [v297 setObject:v296 forKeyedSubscript:@"median_daily_visits_weekend_home"];

  v298 = [RTPlaceDataMetrics standardDeviationOf:v834];
  v299 = [(RTMetric *)v835 metrics];
  [v299 setObject:v298 forKeyedSubscript:@"SD_daily_visits_weekend_home"];

  v828 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v825 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v929 = 0u;
  v930 = 0u;
  v931 = 0u;
  v932 = 0u;
  v300 = [v37 allKeys];
  v301 = [v300 countByEnumeratingWithState:&v929 objects:v965 count:16];
  if (v301)
  {
    v302 = v301;
    v303 = *v930;
    do
    {
      for (k = 0; k != v302; ++k)
      {
        if (*v930 != v303)
        {
          objc_enumerationMutation(v300);
        }

        v305 = *(*(&v929 + 1) + 8 * k);
        v306 = [v850 dateFromString:v305];
        v307 = [v36 isDateInWeekend:v306];

        v308 = [v37 objectForKeyedSubscript:v305];
        if (v307)
        {
          v309 = v828;
        }

        else
        {
          v309 = v825;
        }

        [v309 addObject:v308];
      }

      v302 = [v300 countByEnumeratingWithState:&v929 objects:v965 count:16];
    }

    while (v302);
  }

  v310 = [RTPlaceDataMetrics meanOf:v825];
  v311 = [(RTMetric *)v835 metrics];
  [v311 setObject:v310 forKeyedSubscript:@"mean_daily_visits_weekdays_work"];

  v312 = [RTPlaceDataMetrics medianOf:v825];
  v313 = [(RTMetric *)v835 metrics];
  [v313 setObject:v312 forKeyedSubscript:@"median_daily_visits_weekdays_work"];

  v314 = [RTPlaceDataMetrics standardDeviationOf:v825];
  v315 = [(RTMetric *)v835 metrics];
  [v315 setObject:v314 forKeyedSubscript:@"SD_daily_visits_weekdays_work"];

  v316 = [RTPlaceDataMetrics meanOf:v828];
  v317 = [(RTMetric *)v835 metrics];
  [v317 setObject:v316 forKeyedSubscript:@"mean_daily_visits_weekend_work"];

  v318 = [RTPlaceDataMetrics medianOf:v828];
  v319 = [(RTMetric *)v835 metrics];
  [v319 setObject:v318 forKeyedSubscript:@"median_daily_visits_weekend_work"];

  v320 = [RTPlaceDataMetrics standardDeviationOf:v828];
  v321 = [(RTMetric *)v835 metrics];
  [v321 setObject:v320 forKeyedSubscript:@"SD_daily_visits_weekend_work"];

  v322 = obja;
  if ([obja count])
  {
    v323 = 0;
    v814 = 0;
    v809 = 0;
    v324 = 0.0;
    v325 = 0.0;
    v326 = 0.0;
    v327 = 0.0;
    v328 = 0.0;
    v329 = 0.0;
    do
    {
      v330 = objc_autoreleasePoolPush();
      v331 = [v322 objectAtIndexedSubscript:v323];
      v332 = [v331 objectForKeyedSubscript:@"dictNumDailyVisitsOthers"];

      if ([v332 count])
      {
        contextb = v332;
        v822 = v330;
        v333 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v334 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v925 = 0u;
        v926 = 0u;
        v927 = 0u;
        v928 = 0u;
        v335 = [v322 objectAtIndexedSubscript:v323];
        v336 = [v335 objectForKeyedSubscript:@"dictNumDailyVisitsOthers"];
        v337 = [v336 allKeys];

        v842 = v337;
        v338 = [v337 countByEnumeratingWithState:&v925 objects:v964 count:16];
        if (v338)
        {
          v339 = v338;
          v340 = *v926;
          do
          {
            for (m = 0; m != v339; ++m)
            {
              if (*v926 != v340)
              {
                objc_enumerationMutation(v842);
              }

              v342 = *(*(&v925 + 1) + 8 * m);
              v343 = [v850 dateFromString:v342];
              v344 = [v849 isDateInWeekend:v343];

              v345 = [obja objectAtIndexedSubscript:v323];
              [v345 objectForKeyedSubscript:@"dictNumDailyVisitsOthers"];
              v347 = v346 = v323;
              v348 = [v347 objectForKeyedSubscript:v342];
              if (v344)
              {
                v349 = v334;
              }

              else
              {
                v349 = v333;
              }

              [v349 addObject:v348];

              v323 = v346;
            }

            v339 = [v842 countByEnumeratingWithState:&v925 objects:v964 count:16];
          }

          while (v339);
        }

        if ([v333 count])
        {
          v350 = [RTPlaceDataMetrics meanOf:v333];
          [v350 doubleValue];
          v329 = v329 + v351;

          v352 = [RTPlaceDataMetrics medianOf:v333];
          [v352 doubleValue];
          v328 = v328 + v353;

          v354 = [RTPlaceDataMetrics standardDeviationOf:v333];
          [v354 doubleValue];
          v327 = v327 + v355;

          ++v809;
        }

        v36 = v849;
        v332 = contextb;
        if ([v334 count])
        {
          v356 = [RTPlaceDataMetrics meanOf:v334];
          [v356 doubleValue];
          v326 = v326 + v357;

          v358 = [RTPlaceDataMetrics medianOf:v334];
          [v358 doubleValue];
          v325 = v325 + v359;

          v360 = [RTPlaceDataMetrics standardDeviationOf:v334];
          [v360 doubleValue];
          v324 = v324 + v361;

          ++v814;
        }

        v322 = obja;
        v330 = v822;

        v37 = v771;
        v49 = v772;
      }

      objc_autoreleasePoolPop(v330);
      ++v323;
    }

    while ([v322 count] > v323);
    if (v809 > 0)
    {
      v362 = [MEMORY[0x277CCABB0] numberWithDouble:v329 / v809];
      v363 = [(RTMetric *)v835 metrics];
      [v363 setObject:v362 forKeyedSubscript:@"mean_daily_visits_weekdays_others"];

      v364 = [MEMORY[0x277CCABB0] numberWithDouble:v328 / v809];
      v365 = [(RTMetric *)v835 metrics];
      [v365 setObject:v364 forKeyedSubscript:@"median_daily_visits_weekdays_others"];

      v366 = [MEMORY[0x277CCABB0] numberWithDouble:v327 / v809];
      v367 = [(RTMetric *)v835 metrics];
      [v367 setObject:v366 forKeyedSubscript:@"SD_daily_visits_weekdays_others"];
    }

    if (v814 >= 1)
    {
      v368 = [MEMORY[0x277CCABB0] numberWithDouble:v326 / v814];
      v369 = [(RTMetric *)v835 metrics];
      [v369 setObject:v368 forKeyedSubscript:@"mean_daily_visits_weekend_others"];

      v370 = [MEMORY[0x277CCABB0] numberWithDouble:v325 / v814];
      v371 = [(RTMetric *)v835 metrics];
      [v371 setObject:v370 forKeyedSubscript:@"median_daily_visits_weekend_others"];

      v372 = [MEMORY[0x277CCABB0] numberWithDouble:v324 / v814];
      v373 = [(RTMetric *)v835 metrics];
      [v373 setObject:v372 forKeyedSubscript:@"SD_daily_visits_weekend_others"];
    }
  }

  v374 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v921 = 0u;
  v922 = 0u;
  v923 = 0u;
  v924 = 0u;
  v375 = [v839 allKeys];
  v376 = [v375 countByEnumeratingWithState:&v921 objects:v963 count:16];
  if (v376)
  {
    v377 = v376;
    v378 = *v922;
    do
    {
      for (n = 0; n != v377; ++n)
      {
        if (*v922 != v378)
        {
          objc_enumerationMutation(v375);
        }

        v380 = [v839 objectForKeyedSubscript:*(*(&v921 + 1) + 8 * n)];
        [v374 addObjectsFromArray:v380];
      }

      v377 = [v375 countByEnumeratingWithState:&v921 objects:v963 count:16];
    }

    while (v377);
  }

  v381 = [RTPlaceDataMetrics medianOf:v374];
  v382 = [(RTMetric *)v835 metrics];
  [v382 setObject:v381 forKeyedSubscript:@"median_visit_duration_weekend_home"];

  v383 = [RTPlaceDataMetrics meanOf:v374];
  v384 = [(RTMetric *)v835 metrics];
  [v384 setObject:v383 forKeyedSubscript:@"mean_visit_duration_weekend_home"];

  v385 = [RTPlaceDataMetrics standardDeviationOf:v374];
  v386 = [(RTMetric *)v835 metrics];
  [v386 setObject:v385 forKeyedSubscript:@"SD_visit_duration_weekend_home"];

  v823 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v917 = 0u;
  v918 = 0u;
  v919 = 0u;
  v920 = 0u;
  v387 = [v838 allKeys];
  v388 = [v387 countByEnumeratingWithState:&v917 objects:v962 count:16];
  if (v388)
  {
    v389 = v388;
    v390 = *v918;
    do
    {
      for (ii = 0; ii != v389; ++ii)
      {
        if (*v918 != v390)
        {
          objc_enumerationMutation(v387);
        }

        v392 = [v838 objectForKeyedSubscript:*(*(&v917 + 1) + 8 * ii)];
        [v823 addObjectsFromArray:v392];
      }

      v389 = [v387 countByEnumeratingWithState:&v917 objects:v962 count:16];
    }

    while (v389);
  }

  v393 = [RTPlaceDataMetrics medianOf:v823];
  v394 = [(RTMetric *)v835 metrics];
  [v394 setObject:v393 forKeyedSubscript:@"median_visit_duration_weekdays_home"];

  v395 = [RTPlaceDataMetrics meanOf:v823];
  v396 = [(RTMetric *)v835 metrics];
  [v396 setObject:v395 forKeyedSubscript:@"mean_visit_duration_weekdays_home"];

  v397 = [RTPlaceDataMetrics standardDeviationOf:v823];
  v398 = [(RTMetric *)v835 metrics];
  [v398 setObject:v397 forKeyedSubscript:@"SD_visit_duration_weekdays_home"];

  contextc = objc_alloc_init(MEMORY[0x277CBEB18]);
  v913 = 0u;
  v914 = 0u;
  v915 = 0u;
  v916 = 0u;
  v399 = [v837 allKeys];
  v400 = [v399 countByEnumeratingWithState:&v913 objects:v961 count:16];
  if (v400)
  {
    v401 = v400;
    v402 = *v914;
    do
    {
      for (jj = 0; jj != v401; ++jj)
      {
        if (*v914 != v402)
        {
          objc_enumerationMutation(v399);
        }

        v404 = [v837 objectForKeyedSubscript:*(*(&v913 + 1) + 8 * jj)];
        [contextc addObjectsFromArray:v404];
      }

      v401 = [v399 countByEnumeratingWithState:&v913 objects:v961 count:16];
    }

    while (v401);
  }

  v405 = [RTPlaceDataMetrics medianOf:contextc];
  v406 = [(RTMetric *)v835 metrics];
  [v406 setObject:v405 forKeyedSubscript:@"median_visit_duration_weekend_work"];

  v407 = [RTPlaceDataMetrics meanOf:contextc];
  v408 = [(RTMetric *)v835 metrics];
  [v408 setObject:v407 forKeyedSubscript:@"mean_visit_duration_weekend_work"];

  v409 = [RTPlaceDataMetrics standardDeviationOf:contextc];
  v410 = [(RTMetric *)v835 metrics];
  [v410 setObject:v409 forKeyedSubscript:@"SD_visit_duration_weekend_work"];

  v815 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v909 = 0u;
  v910 = 0u;
  v911 = 0u;
  v912 = 0u;
  v411 = [v836 allKeys];
  v412 = [v411 countByEnumeratingWithState:&v909 objects:v960 count:16];
  if (v412)
  {
    v413 = v412;
    v414 = *v910;
    do
    {
      for (kk = 0; kk != v413; ++kk)
      {
        if (*v910 != v414)
        {
          objc_enumerationMutation(v411);
        }

        v416 = [v836 objectForKeyedSubscript:*(*(&v909 + 1) + 8 * kk)];
        [v815 addObjectsFromArray:v416];
      }

      v413 = [v411 countByEnumeratingWithState:&v909 objects:v960 count:16];
    }

    while (v413);
  }

  v417 = [RTPlaceDataMetrics medianOf:v815];
  v418 = [(RTMetric *)v835 metrics];
  [v418 setObject:v417 forKeyedSubscript:@"median_visit_duration_weekdays_work"];

  v419 = [RTPlaceDataMetrics meanOf:v815];
  v420 = [(RTMetric *)v835 metrics];
  [v420 setObject:v419 forKeyedSubscript:@"mean_visit_duration_weekdays_work"];

  v421 = [RTPlaceDataMetrics standardDeviationOf:v815];
  v422 = [(RTMetric *)v835 metrics];
  [v422 setObject:v421 forKeyedSubscript:@"SD_visit_duration_weekdays_work"];

  v758 = v374;
  if ([v322 count])
  {
    v423 = 0;
    v424 = 0;
    v425 = 0.0;
    v426 = 0.0;
    v427 = 0.0;
    do
    {
      v428 = objc_autoreleasePoolPush();
      v429 = [v322 objectAtIndexedSubscript:v423];
      v430 = [v429 objectForKeyedSubscript:@"dictVisitDurationWeekendOthers"];

      if ([v430 count])
      {
        v805 = v430;
        v810 = v428;
        v843 = v424;
        v431 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v432 = v322;
        v433 = v431;
        v905 = 0u;
        v906 = 0u;
        v907 = 0u;
        v908 = 0u;
        v434 = [v432 objectAtIndexedSubscript:v423];
        v435 = [v434 objectForKeyedSubscript:@"dictVisitDurationWeekendOthers"];
        v436 = [v435 allKeys];

        v437 = [v436 countByEnumeratingWithState:&v905 objects:v959 count:16];
        if (v437)
        {
          v438 = v437;
          v439 = *v906;
          do
          {
            for (mm = 0; mm != v438; ++mm)
            {
              if (*v906 != v439)
              {
                objc_enumerationMutation(v436);
              }

              v441 = *(*(&v905 + 1) + 8 * mm);
              v442 = [obja objectAtIndexedSubscript:v423];
              v443 = [v442 objectForKeyedSubscript:@"dictVisitDurationWeekendOthers"];
              v444 = [v443 objectForKeyedSubscript:v441];
              [v433 addObjectsFromArray:v444];
            }

            v438 = [v436 countByEnumeratingWithState:&v905 objects:v959 count:16];
          }

          while (v438);
        }

        v445 = [RTPlaceDataMetrics medianOf:v433];
        [v445 doubleValue];
        v427 = v446;

        v447 = [RTPlaceDataMetrics meanOf:v433];
        [v447 doubleValue];
        v426 = v448;

        v449 = [RTPlaceDataMetrics standardDeviationOf:v433];
        [v449 doubleValue];
        v425 = v450;

        v424 = v843 + 1;
        v36 = v849;
        v37 = v771;
        v49 = v772;
        v322 = obja;
        v430 = v805;
        v428 = v810;
      }

      objc_autoreleasePoolPop(v428);
      ++v423;
    }

    while ([v322 count] > v423);
    if (v424 > 0)
    {
      v451 = [MEMORY[0x277CCABB0] numberWithDouble:v427 / v424];
      v452 = [(RTMetric *)v835 metrics];
      [v452 setObject:v451 forKeyedSubscript:@"median_visit_duration_weekend_others"];

      v453 = [MEMORY[0x277CCABB0] numberWithDouble:v426 / v424];
      v454 = [(RTMetric *)v835 metrics];
      [v454 setObject:v453 forKeyedSubscript:@"mean_visit_duration_weekend_others"];

      v455 = [MEMORY[0x277CCABB0] numberWithDouble:v425 / v424];
      v456 = [(RTMetric *)v835 metrics];
      [v456 setObject:v455 forKeyedSubscript:@"SD_visit_duration_weekend_others"];
    }
  }

  if ([v322 count])
  {
    v457 = 0;
    v458 = 0;
    v459 = 0.0;
    v460 = 0.0;
    v461 = 0.0;
    do
    {
      v462 = objc_autoreleasePoolPush();
      v463 = [v322 objectAtIndexedSubscript:v457];
      v464 = [v463 objectForKeyedSubscript:@"dictVisitDurationWeekdaysOthers"];

      if ([v464 count])
      {
        v806 = v464;
        v811 = v462;
        v844 = v458;
        v465 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v466 = v322;
        v467 = v465;
        v901 = 0u;
        v902 = 0u;
        v903 = 0u;
        v904 = 0u;
        v468 = [v466 objectAtIndexedSubscript:v457];
        v469 = [v468 objectForKeyedSubscript:@"dictVisitDurationWeekdaysOthers"];
        v470 = [v469 allKeys];

        v471 = [v470 countByEnumeratingWithState:&v901 objects:v958 count:16];
        if (v471)
        {
          v472 = v471;
          v473 = *v902;
          do
          {
            for (nn = 0; nn != v472; ++nn)
            {
              if (*v902 != v473)
              {
                objc_enumerationMutation(v470);
              }

              v475 = *(*(&v901 + 1) + 8 * nn);
              v476 = [obja objectAtIndexedSubscript:v457];
              v477 = [v476 objectForKeyedSubscript:@"dictVisitDurationWeekdaysOthers"];
              v478 = [v477 objectForKeyedSubscript:v475];
              [v467 addObjectsFromArray:v478];
            }

            v472 = [v470 countByEnumeratingWithState:&v901 objects:v958 count:16];
          }

          while (v472);
        }

        v479 = [RTPlaceDataMetrics medianOf:v467];
        [v479 doubleValue];
        v461 = v480;

        v481 = [RTPlaceDataMetrics meanOf:v467];
        [v481 doubleValue];
        v460 = v482;

        v483 = [RTPlaceDataMetrics standardDeviationOf:v467];
        [v483 doubleValue];
        v459 = v484;

        v458 = v844 + 1;
        v36 = v849;
        v37 = v771;
        v49 = v772;
        v322 = obja;
        v464 = v806;
        v462 = v811;
      }

      objc_autoreleasePoolPop(v462);
      ++v457;
    }

    while ([v322 count] > v457);
    if (v458 > 0)
    {
      v485 = [MEMORY[0x277CCABB0] numberWithDouble:v461 / v458];
      v486 = [(RTMetric *)v835 metrics];
      [v486 setObject:v485 forKeyedSubscript:@"median_visit_duration_weekdays_others"];

      v487 = [MEMORY[0x277CCABB0] numberWithDouble:v460 / v458];
      v488 = [(RTMetric *)v835 metrics];
      [v488 setObject:v487 forKeyedSubscript:@"mean_visit_duration_weekdays_others"];

      v489 = [MEMORY[0x277CCABB0] numberWithDouble:v459 / v458];
      v490 = [(RTMetric *)v835 metrics];
      [v490 setObject:v489 forKeyedSubscript:@"SD_visit_duration_weekdays_others"];
    }
  }

  v812 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v897 = 0u;
  v898 = 0u;
  v899 = 0u;
  v900 = 0u;
  v491 = [v839 allKeys];
  v492 = [v491 countByEnumeratingWithState:&v897 objects:v957 count:16];
  if (v492)
  {
    v493 = v492;
    v494 = *v898;
    do
    {
      for (i1 = 0; i1 != v493; ++i1)
      {
        if (*v898 != v494)
        {
          objc_enumerationMutation(v491);
        }

        v496 = [v839 objectForKeyedSubscript:*(*(&v897 + 1) + 8 * i1)];
        v497 = [v496 valueForKeyPath:@"@sum.self"];

        [v812 addObject:v497];
      }

      v493 = [v491 countByEnumeratingWithState:&v897 objects:v957 count:16];
    }

    while (v493);
  }

  v498 = [RTPlaceDataMetrics medianOf:v812];
  v499 = [(RTMetric *)v835 metrics];
  [v499 setObject:v498 forKeyedSubscript:@"median_daily_total_visit_duration_weekend_home"];

  v500 = [RTPlaceDataMetrics meanOf:v812];
  v501 = [(RTMetric *)v835 metrics];
  [v501 setObject:v500 forKeyedSubscript:@"mean_daily_total_visit_duration_weekend_home"];

  v502 = [RTPlaceDataMetrics standardDeviationOf:v812];
  v503 = [(RTMetric *)v835 metrics];
  [v503 setObject:v502 forKeyedSubscript:@"SD_daily_total_visit_duration_weekend_home"];

  v807 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v893 = 0u;
  v894 = 0u;
  v895 = 0u;
  v896 = 0u;
  v504 = [v838 allKeys];
  v505 = [v504 countByEnumeratingWithState:&v893 objects:v956 count:16];
  if (v505)
  {
    v506 = v505;
    v507 = *v894;
    do
    {
      for (i2 = 0; i2 != v506; ++i2)
      {
        if (*v894 != v507)
        {
          objc_enumerationMutation(v504);
        }

        v509 = [v838 objectForKeyedSubscript:*(*(&v893 + 1) + 8 * i2)];
        v510 = [v509 valueForKeyPath:@"@sum.self"];

        [v807 addObject:v510];
      }

      v506 = [v504 countByEnumeratingWithState:&v893 objects:v956 count:16];
    }

    while (v506);
  }

  v511 = [RTPlaceDataMetrics medianOf:v807];
  v512 = [(RTMetric *)v835 metrics];
  [v512 setObject:v511 forKeyedSubscript:@"median_daily_total_visit_duration_weekdays_home"];

  v513 = [RTPlaceDataMetrics meanOf:v807];
  v514 = [(RTMetric *)v835 metrics];
  [v514 setObject:v513 forKeyedSubscript:@"mean_daily_total_visit_duration_weekdays_home"];

  v515 = [RTPlaceDataMetrics standardDeviationOf:v807];
  v516 = [(RTMetric *)v835 metrics];
  [v516 setObject:v515 forKeyedSubscript:@"SD_daily_total_visit_duration_weekdays_home"];

  v802 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v889 = 0u;
  v890 = 0u;
  v891 = 0u;
  v892 = 0u;
  v517 = [v837 allKeys];
  v518 = [v517 countByEnumeratingWithState:&v889 objects:v955 count:16];
  if (v518)
  {
    v519 = v518;
    v520 = *v890;
    do
    {
      for (i3 = 0; i3 != v519; ++i3)
      {
        if (*v890 != v520)
        {
          objc_enumerationMutation(v517);
        }

        v522 = [v837 objectForKeyedSubscript:*(*(&v889 + 1) + 8 * i3)];
        v523 = [v522 valueForKeyPath:@"@sum.self"];

        [v802 addObject:v523];
      }

      v519 = [v517 countByEnumeratingWithState:&v889 objects:v955 count:16];
    }

    while (v519);
  }

  v524 = [RTPlaceDataMetrics medianOf:v802];
  v525 = [(RTMetric *)v835 metrics];
  [v525 setObject:v524 forKeyedSubscript:@"median_daily_total_visit_duration_weekend_work"];

  v526 = [RTPlaceDataMetrics meanOf:v802];
  v527 = [(RTMetric *)v835 metrics];
  [v527 setObject:v526 forKeyedSubscript:@"mean_daily_total_visit_duration_weekend_work"];

  v528 = [RTPlaceDataMetrics standardDeviationOf:v802];
  v529 = [(RTMetric *)v835 metrics];
  [v529 setObject:v528 forKeyedSubscript:@"SD_daily_total_visit_duration_weekend_work"];

  v800 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v885 = 0u;
  v886 = 0u;
  v887 = 0u;
  v888 = 0u;
  v530 = [v836 allKeys];
  v531 = [v530 countByEnumeratingWithState:&v885 objects:v954 count:16];
  if (v531)
  {
    v532 = v531;
    v533 = *v886;
    do
    {
      for (i4 = 0; i4 != v532; ++i4)
      {
        if (*v886 != v533)
        {
          objc_enumerationMutation(v530);
        }

        v535 = [v836 objectForKeyedSubscript:*(*(&v885 + 1) + 8 * i4)];
        v536 = [v535 valueForKeyPath:@"@sum.self"];

        [v800 addObject:v536];
      }

      v532 = [v530 countByEnumeratingWithState:&v885 objects:v954 count:16];
    }

    while (v532);
  }

  v537 = [RTPlaceDataMetrics medianOf:v800];
  v538 = [(RTMetric *)v835 metrics];
  [v538 setObject:v537 forKeyedSubscript:@"median_daily_total_visit_duration_weekdays_work"];

  v539 = [RTPlaceDataMetrics meanOf:v800];
  v540 = [(RTMetric *)v835 metrics];
  [v540 setObject:v539 forKeyedSubscript:@"mean_daily_total_visit_duration_weekdays_work"];

  v541 = [RTPlaceDataMetrics standardDeviationOf:v800];
  v542 = [(RTMetric *)v835 metrics];
  [v542 setObject:v541 forKeyedSubscript:@"SD_daily_total_visit_duration_weekdays_work"];

  v543 = obja;
  if (![obja count])
  {
    goto LABEL_305;
  }

  v544 = 0;
  v545 = 0;
  v546 = @"dictVisitDurationWeekendOthers";
  v547 = 0.0;
  v548 = 0.0;
  v549 = 0.0;
  do
  {
    v550 = objc_autoreleasePoolPush();
    v551 = [v543 objectAtIndexedSubscript:v544];
    v552 = [v551 objectForKeyedSubscript:v546];

    if ([v552 count])
    {
      v785 = v552;
      v790 = v550;
      v795 = v545;
      v553 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v881 = 0u;
      v882 = 0u;
      v883 = 0u;
      v884 = 0u;
      v554 = [v543 objectAtIndexedSubscript:v544];
      v555 = v546;
      v556 = [v554 objectForKeyedSubscript:v546];
      v557 = [v556 allKeys];

      v845 = v557;
      v558 = [v557 countByEnumeratingWithState:&v881 objects:v953 count:16];
      if (v558)
      {
        v559 = v558;
        v560 = *v882;
        do
        {
          for (i5 = 0; i5 != v559; ++i5)
          {
            if (*v882 != v560)
            {
              objc_enumerationMutation(v845);
            }

            v562 = *(*(&v881 + 1) + 8 * i5);
            [v543 objectAtIndexedSubscript:v544];
            v564 = v563 = v544;
            v565 = [v564 objectForKeyedSubscript:v555];
            v566 = [v565 objectForKeyedSubscript:v562];
            v567 = [v566 valueForKeyPath:@"@sum.self"];

            v544 = v563;
            [v553 addObject:v567];

            v543 = obja;
          }

          v559 = [v845 countByEnumeratingWithState:&v881 objects:v953 count:16];
        }

        while (v559);
      }

      v568 = [RTPlaceDataMetrics medianOf:v553];
      [v568 doubleValue];
      v549 = v569;

      v570 = [RTPlaceDataMetrics meanOf:v553];
      [v570 doubleValue];
      v548 = v571;

      v572 = [RTPlaceDataMetrics standardDeviationOf:v553];
      [v572 doubleValue];
      v547 = v573;

      v545 = v795 + 1;
      v36 = v849;
      v37 = v771;
      v49 = v772;
      v546 = v555;
      v552 = v785;
      v550 = v790;
    }

    objc_autoreleasePoolPop(v550);
    ++v544;
  }

  while ([v543 count] > v544);
  if (v545 > 0)
  {
    v574 = [MEMORY[0x277CCABB0] numberWithDouble:v549 / v545];
    v575 = [(RTMetric *)v835 metrics];
    [v575 setObject:v574 forKeyedSubscript:@"median_daily_total_visit_duration_weekend_others"];

    v576 = [MEMORY[0x277CCABB0] numberWithDouble:v548 / v545];
    v577 = [(RTMetric *)v835 metrics];
    [v577 setObject:v576 forKeyedSubscript:@"mean_daily_total_visit_duration_weekend_others"];

    v578 = [MEMORY[0x277CCABB0] numberWithDouble:v547 / v545];
    v579 = [(RTMetric *)v835 metrics];
    [v579 setObject:v578 forKeyedSubscript:@"SD_daily_total_visit_duration_weekend_others"];

    v761 = 1;
  }

  else
  {
LABEL_305:
    v761 = 0;
  }

  if ([v543 count])
  {
    v580 = 0;
    v581 = 0;
    v582 = @"dictVisitDurationWeekdaysOthers";
    v583 = 0.0;
    v584 = 0.0;
    v585 = 0.0;
    do
    {
      v586 = objc_autoreleasePoolPush();
      v587 = [v543 objectAtIndexedSubscript:v580];
      v588 = [v587 objectForKeyedSubscript:v582];

      if ([v588 count])
      {
        v786 = v588;
        v791 = v586;
        v796 = v581;
        v589 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v877 = 0u;
        v878 = 0u;
        v879 = 0u;
        v880 = 0u;
        v590 = [v543 objectAtIndexedSubscript:v580];
        v591 = v582;
        v592 = [v590 objectForKeyedSubscript:v582];
        v593 = [v592 allKeys];

        v846 = v593;
        v594 = [v593 countByEnumeratingWithState:&v877 objects:v952 count:16];
        if (v594)
        {
          v595 = v594;
          v596 = *v878;
          do
          {
            for (i6 = 0; i6 != v595; ++i6)
            {
              if (*v878 != v596)
              {
                objc_enumerationMutation(v846);
              }

              v598 = *(*(&v877 + 1) + 8 * i6);
              [v543 objectAtIndexedSubscript:v580];
              v600 = v599 = v580;
              v601 = [v600 objectForKeyedSubscript:v591];
              v602 = [v601 objectForKeyedSubscript:v598];
              v603 = [v602 valueForKeyPath:@"@sum.self"];

              v580 = v599;
              [v589 addObject:v603];

              v543 = obja;
            }

            v595 = [v846 countByEnumeratingWithState:&v877 objects:v952 count:16];
          }

          while (v595);
        }

        v604 = [RTPlaceDataMetrics medianOf:v589];
        [v604 doubleValue];
        v585 = v605;

        v606 = [RTPlaceDataMetrics meanOf:v589];
        [v606 doubleValue];
        v584 = v607;

        v608 = [RTPlaceDataMetrics standardDeviationOf:v589];
        [v608 doubleValue];
        v583 = v609;

        v581 = v796 + 1;
        v36 = v849;
        v37 = v771;
        v49 = v772;
        v582 = v591;
        v588 = v786;
        v586 = v791;
      }

      objc_autoreleasePoolPop(v586);
      ++v580;
    }

    while ([v543 count] > v580);
    if (v581 > 0)
    {
      v610 = [MEMORY[0x277CCABB0] numberWithDouble:v585 / v581];
      v611 = [(RTMetric *)v835 metrics];
      [v611 setObject:v610 forKeyedSubscript:@"median_daily_total_visit_duration_weekdays_others"];

      v612 = [MEMORY[0x277CCABB0] numberWithDouble:v584 / v581];
      v613 = [(RTMetric *)v835 metrics];
      [v613 setObject:v612 forKeyedSubscript:@"mean_daily_total_visit_duration_weekdays_others"];

      v614 = [MEMORY[0x277CCABB0] numberWithDouble:v583 / v581];
      v615 = [(RTMetric *)v835 metrics];
      [v615 setObject:v614 forKeyedSubscript:@"SD_daily_total_visit_duration_weekdays_others"];
    }
  }

  v797 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v873 = 0u;
  v874 = 0u;
  v875 = 0u;
  v876 = 0u;
  v616 = [v839 allKeys];
  v617 = [v616 countByEnumeratingWithState:&v873 objects:v951 count:16];
  if (v617)
  {
    v618 = v617;
    v619 = *v874;
    do
    {
      for (i7 = 0; i7 != v618; ++i7)
      {
        if (*v874 != v619)
        {
          objc_enumerationMutation(v616);
        }

        v621 = [v839 objectForKeyedSubscript:*(*(&v873 + 1) + 8 * i7)];
        v622 = [v621 valueForKeyPath:@"@max.doubleValue"];

        [v797 addObject:v622];
      }

      v618 = [v616 countByEnumeratingWithState:&v873 objects:v951 count:16];
    }

    while (v618);
  }

  v623 = [RTPlaceDataMetrics medianOf:v797];
  v624 = [(RTMetric *)v835 metrics];
  [v624 setObject:v623 forKeyedSubscript:@"median_daily_longest_visit_duration_weekend_home"];

  v625 = [RTPlaceDataMetrics meanOf:v797];
  v626 = [(RTMetric *)v835 metrics];
  [v626 setObject:v625 forKeyedSubscript:@"mean_daily_longest_visit_duration_weekend_home"];

  v627 = [RTPlaceDataMetrics standardDeviationOf:v797];
  v628 = [(RTMetric *)v835 metrics];
  [v628 setObject:v627 forKeyedSubscript:@"SD_daily_longest_visit_duration_weekend_home"];

  v792 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v869 = 0u;
  v870 = 0u;
  v871 = 0u;
  v872 = 0u;
  v629 = [v838 allKeys];
  v630 = [v629 countByEnumeratingWithState:&v869 objects:v950 count:16];
  if (v630)
  {
    v631 = v630;
    v632 = *v870;
    do
    {
      for (i8 = 0; i8 != v631; ++i8)
      {
        if (*v870 != v632)
        {
          objc_enumerationMutation(v629);
        }

        v634 = [v838 objectForKeyedSubscript:*(*(&v869 + 1) + 8 * i8)];
        v635 = [v634 valueForKeyPath:@"@max.doubleValue"];

        [v792 addObject:v635];
      }

      v631 = [v629 countByEnumeratingWithState:&v869 objects:v950 count:16];
    }

    while (v631);
  }

  v636 = [RTPlaceDataMetrics medianOf:v792];
  v637 = [(RTMetric *)v835 metrics];
  [v637 setObject:v636 forKeyedSubscript:@"median_daily_longest_visit_duration_weekdays_home"];

  v638 = [RTPlaceDataMetrics meanOf:v792];
  v639 = [(RTMetric *)v835 metrics];
  [v639 setObject:v638 forKeyedSubscript:@"mean_daily_longest_visit_duration_weekdays_home"];

  v640 = [RTPlaceDataMetrics standardDeviationOf:v792];
  v641 = [(RTMetric *)v835 metrics];
  [v641 setObject:v640 forKeyedSubscript:@"SD_daily_longest_visit_duration_weekdays_home"];

  v787 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v865 = 0u;
  v866 = 0u;
  v867 = 0u;
  v868 = 0u;
  v642 = [v837 allKeys];
  v643 = [v642 countByEnumeratingWithState:&v865 objects:v949 count:16];
  if (v643)
  {
    v644 = v643;
    v645 = *v866;
    do
    {
      for (i9 = 0; i9 != v644; ++i9)
      {
        if (*v866 != v645)
        {
          objc_enumerationMutation(v642);
        }

        v647 = [v837 objectForKeyedSubscript:*(*(&v865 + 1) + 8 * i9)];
        v648 = [v647 valueForKeyPath:@"@max.doubleValue"];

        [v787 addObject:v648];
      }

      v644 = [v642 countByEnumeratingWithState:&v865 objects:v949 count:16];
    }

    while (v644);
  }

  v649 = [RTPlaceDataMetrics medianOf:v787];
  v650 = [(RTMetric *)v835 metrics];
  [v650 setObject:v649 forKeyedSubscript:@"median_daily_longest_visit_duration_weekend_work"];

  v651 = [RTPlaceDataMetrics meanOf:v787];
  v652 = [(RTMetric *)v835 metrics];
  [v652 setObject:v651 forKeyedSubscript:@"mean_daily_longest_visit_duration_weekend_work"];

  v653 = [RTPlaceDataMetrics standardDeviationOf:v787];
  v654 = [(RTMetric *)v835 metrics];
  [v654 setObject:v653 forKeyedSubscript:@"SD_daily_longest_visit_duration_weekend_work"];

  v782 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v861 = 0u;
  v862 = 0u;
  v863 = 0u;
  v864 = 0u;
  v655 = [v836 allKeys];
  v656 = [v655 countByEnumeratingWithState:&v861 objects:v948 count:16];
  if (v656)
  {
    v657 = v656;
    v658 = *v862;
    do
    {
      for (i10 = 0; i10 != v657; ++i10)
      {
        if (*v862 != v658)
        {
          objc_enumerationMutation(v655);
        }

        v660 = [v836 objectForKeyedSubscript:*(*(&v861 + 1) + 8 * i10)];
        v661 = [v660 valueForKeyPath:@"@max.doubleValue"];

        [v782 addObject:v661];
      }

      v657 = [v655 countByEnumeratingWithState:&v861 objects:v948 count:16];
    }

    while (v657);
  }

  v662 = [RTPlaceDataMetrics medianOf:v782];
  v663 = [(RTMetric *)v835 metrics];
  [v663 setObject:v662 forKeyedSubscript:@"median_daily_longest_visit_duration_weekdays_work"];

  v664 = [RTPlaceDataMetrics meanOf:v782];
  v665 = [(RTMetric *)v835 metrics];
  [v665 setObject:v664 forKeyedSubscript:@"mean_daily_longest_visit_duration_weekdays_work"];

  v666 = [RTPlaceDataMetrics standardDeviationOf:v782];
  v667 = [(RTMetric *)v835 metrics];
  [v667 setObject:v666 forKeyedSubscript:@"SD_daily_longest_visit_duration_weekdays_work"];

  if ([obja count])
  {
    v668 = 0;
    v669 = 0;
    v670 = 0.0;
    v671 = 0.0;
    v672 = 0.0;
    v673 = v835;
    v674 = obja;
    do
    {
      v847 = objc_autoreleasePoolPush();
      v675 = [v674 objectAtIndexedSubscript:v668];
      v676 = [v675 objectForKeyedSubscript:@"dictVisitDurationWeekendOthers"];

      v769 = v676;
      if ([v676 count])
      {
        v765 = v669;
        v677 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v857 = 0u;
        v858 = 0u;
        v859 = 0u;
        v860 = 0u;
        v678 = [v674 objectAtIndexedSubscript:v668];
        v679 = [v678 objectForKeyedSubscript:@"dictVisitDurationWeekendOthers"];
        v680 = [v679 allKeys];

        v681 = [v680 countByEnumeratingWithState:&v857 objects:v947 count:16];
        if (v681)
        {
          v682 = v681;
          v683 = *v858;
          do
          {
            for (i11 = 0; i11 != v682; ++i11)
            {
              if (*v858 != v683)
              {
                objc_enumerationMutation(v680);
              }

              v685 = *(*(&v857 + 1) + 8 * i11);
              v686 = [obja objectAtIndexedSubscript:v668];
              v687 = [v686 objectForKeyedSubscript:@"dictVisitDurationWeekendOthers"];
              v688 = [v687 objectForKeyedSubscript:v685];
              v689 = [v688 valueForKeyPath:@"@max.doubleValue"];

              [v677 addObject:v689];
            }

            v682 = [v680 countByEnumeratingWithState:&v857 objects:v947 count:16];
          }

          while (v682);
        }

        v690 = [RTPlaceDataMetrics medianOf:v677];
        [v690 doubleValue];
        v672 = v691;

        v692 = [RTPlaceDataMetrics meanOf:v677];
        [v692 doubleValue];
        v671 = v693;

        v694 = [RTPlaceDataMetrics standardDeviationOf:v677];
        [v694 doubleValue];
        v670 = v695;

        v669 = v765 + 1;
        v36 = v849;
        v37 = v771;
        v49 = v772;
        v673 = v835;
      }

      objc_autoreleasePoolPop(v847);
      ++v668;
      v674 = obja;
    }

    while ([obja count] > v668);
    v696 = v669;
  }

  else
  {
    v672 = 0.0;
    v671 = 0.0;
    v670 = 0.0;
    v696 = 0.0;
    v673 = v835;
  }

  v697 = v779;
  if (v761)
  {
    v698 = [MEMORY[0x277CCABB0] numberWithDouble:v672 / v696];
    v699 = [(RTMetric *)v673 metrics];
    [v699 setObject:v698 forKeyedSubscript:@"median_daily_longest_visit_duration_weekend_others"];

    v700 = [MEMORY[0x277CCABB0] numberWithDouble:v671 / v696];
    v701 = [(RTMetric *)v835 metrics];
    [v701 setObject:v700 forKeyedSubscript:@"mean_daily_longest_visit_duration_weekend_others"];

    v702 = [MEMORY[0x277CCABB0] numberWithDouble:v670 / v696];
    v703 = [(RTMetric *)v835 metrics];
    [v703 setObject:v702 forKeyedSubscript:@"SD_daily_longest_visit_duration_weekend_others"];

    v673 = v835;
  }

  if ([obja count])
  {
    v704 = 0;
    v705 = 0;
    v706 = @"dictVisitDurationWeekdaysOthers";
    v707 = 0.0;
    v708 = 0.0;
    v709 = 0.0;
    v710 = obja;
    do
    {
      v770 = objc_autoreleasePoolPush();
      v711 = [v710 objectAtIndexedSubscript:v704];
      v712 = [v711 objectForKeyedSubscript:v706];

      if ([v712 count])
      {
        v762 = v712;
        v766 = v705;
        v713 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v853 = 0u;
        v854 = 0u;
        v855 = 0u;
        v856 = 0u;
        v714 = [v710 objectAtIndexedSubscript:v704];
        v715 = [v714 objectForKeyedSubscript:v706];
        v716 = [v715 allKeys];

        v848 = v716;
        v717 = [v716 countByEnumeratingWithState:&v853 objects:v946 count:16];
        if (v717)
        {
          v718 = v717;
          v719 = *v854;
          do
          {
            for (i12 = 0; i12 != v718; ++i12)
            {
              if (*v854 != v719)
              {
                objc_enumerationMutation(v848);
              }

              v721 = *(*(&v853 + 1) + 8 * i12);
              v722 = [obja objectAtIndexedSubscript:v704];
              [v722 objectForKeyedSubscript:v706];
              v723 = v704;
              v725 = v724 = v706;
              v726 = [v725 objectForKeyedSubscript:v721];
              v727 = [v726 valueForKeyPath:@"@max.doubleValue"];

              v706 = v724;
              v704 = v723;

              [v713 addObject:v727];
            }

            v718 = [v848 countByEnumeratingWithState:&v853 objects:v946 count:16];
          }

          while (v718);
        }

        v728 = [RTPlaceDataMetrics medianOf:v713];
        [v728 doubleValue];
        v709 = v729;

        v730 = [RTPlaceDataMetrics meanOf:v713];
        [v730 doubleValue];
        v708 = v731;

        v732 = [RTPlaceDataMetrics standardDeviationOf:v713];
        [v732 doubleValue];
        v707 = v733;

        v705 = v766 + 1;
        v36 = v849;
        v37 = v771;
        v49 = v772;
        v673 = v835;
        v712 = v762;
      }

      objc_autoreleasePoolPop(v770);
      ++v704;
      v710 = obja;
    }

    while ([obja count] > v704);
    v734 = v705 <= 0;
    v735 = v705;
    v697 = v779;
    if (!v734)
    {
      v736 = v735;
      v737 = [MEMORY[0x277CCABB0] numberWithDouble:v709 / v735];
      [(RTMetric *)v673 metrics];
      v739 = v738 = v673;
      [v739 setObject:v737 forKeyedSubscript:@"median_daily_longest_visit_duration_weekdays_others"];

      v740 = [MEMORY[0x277CCABB0] numberWithDouble:v708 / v736];
      v741 = [(RTMetric *)v738 metrics];
      [v741 setObject:v740 forKeyedSubscript:@"mean_daily_longest_visit_duration_weekdays_others"];

      v742 = [MEMORY[0x277CCABB0] numberWithDouble:v707 / v736];
      v743 = [(RTMetric *)v738 metrics];
      [v743 setObject:v742 forKeyedSubscript:@"SD_daily_longest_visit_duration_weekdays_others"];
    }
  }
}

- (void)setCurrentInferenceReplayableMetricsFromDict:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"intervalToCalculateStats"];
  v6 = [(RTMetric *)self metrics];
  [v6 setObject:v5 forKeyedSubscript:@"intervalToCalculateStats"];

  v7 = [v4 objectForKeyedSubscript:@"numPlacesAfterWeeksWithNonZeroDwellTimePruning"];
  v8 = [(RTMetric *)self metrics];
  [v8 setObject:v7 forKeyedSubscript:@"numPlacesAfterWeeksWithNonZeroDwellTimePruning"];

  v9 = [v4 objectForKeyedSubscript:@"agreeDailyPatternsAndDwellTimeOnHome"];
  v10 = [(RTMetric *)self metrics];
  [v10 setObject:v9 forKeyedSubscript:@"agreeDailyPatternsAndDwellTimeOnHome"];

  v11 = [v4 objectForKeyedSubscript:@"weeklyAggregateDwellTimeBetweenDateRangeAverage_home"];
  v12 = [(RTMetric *)self metrics];
  [v12 setObject:v11 forKeyedSubscript:@"weeklyAggregateDwellTimeBetweenDateRangeAverage_home"];

  v13 = [v4 objectForKeyedSubscript:@"weeklyAggregateDwellTimeBetweenDateRangeAverage_work"];
  v14 = [(RTMetric *)self metrics];
  [v14 setObject:v13 forKeyedSubscript:@"weeklyAggregateDwellTimeBetweenDateRangeAverage_work"];

  v15 = [v4 objectForKeyedSubscript:@"weeklyTotalDailyVisitCountAverage_home"];
  v16 = [(RTMetric *)self metrics];
  [v16 setObject:v15 forKeyedSubscript:@"weeklyTotalDailyVisitCountAverage_home"];

  v17 = [v4 objectForKeyedSubscript:@"weeklyTotalDailyVisitCountAverage_work"];
  v18 = [(RTMetric *)self metrics];
  [v18 setObject:v17 forKeyedSubscript:@"weeklyTotalDailyVisitCountAverage_work"];

  v19 = [v4 objectForKeyedSubscript:@"weeklyDaysWithNonZeroDwellTimeAverage_home"];
  v20 = [(RTMetric *)self metrics];
  [v20 setObject:v19 forKeyedSubscript:@"weeklyDaysWithNonZeroDwellTimeAverage_home"];

  v21 = [v4 objectForKeyedSubscript:@"weeklyDaysWithNonZeroDwellTimeAverage_work"];
  v22 = [(RTMetric *)self metrics];
  [v22 setObject:v21 forKeyedSubscript:@"weeklyDaysWithNonZeroDwellTimeAverage_work"];

  v23 = [v4 objectForKeyedSubscript:@"topMedianDwellTime_home"];
  v24 = [(RTMetric *)self metrics];
  [v24 setObject:v23 forKeyedSubscript:@"topMedianDwellTime_home"];

  v25 = [v4 objectForKeyedSubscript:@"topMedianDwellTime_work"];
  v26 = [(RTMetric *)self metrics];
  [v26 setObject:v25 forKeyedSubscript:@"topMedianDwellTime_work"];

  v27 = [v4 objectForKeyedSubscript:@"weeksWithNonZeroDwellTime_home"];
  v28 = [(RTMetric *)self metrics];
  [v28 setObject:v27 forKeyedSubscript:@"weeksWithNonZeroDwellTime_home"];

  v29 = [v4 objectForKeyedSubscript:@"weeksWithNonZeroDwellTime_work"];
  v30 = [(RTMetric *)self metrics];
  [v30 setObject:v29 forKeyedSubscript:@"weeksWithNonZeroDwellTime_work"];

  v31 = [v4 objectForKeyedSubscript:@"weeklyAggregateDwellTimeBetweenDateRangeAverage_1stPlaceDailyPatterns"];
  v32 = [(RTMetric *)self metrics];
  [v32 setObject:v31 forKeyedSubscript:@"weeklyAggregateDwellTimeBetweenDateRangeAverage_1stPlaceDailyPatterns"];

  v33 = [v4 objectForKeyedSubscript:@"weeklyAggregateDwellTimeBetweenDateRangeAverage_2ndPlaceDailyPatterns"];
  v34 = [(RTMetric *)self metrics];
  [v34 setObject:v33 forKeyedSubscript:@"weeklyAggregateDwellTimeBetweenDateRangeAverage_2ndPlaceDailyPatterns"];

  v35 = [v4 objectForKeyedSubscript:@"weeklyTotalDailyVisitCountAverage_1stPlaceDailyPatterns"];
  v36 = [(RTMetric *)self metrics];
  [v36 setObject:v35 forKeyedSubscript:@"weeklyTotalDailyVisitCountAverage_1stPlaceDailyPatterns"];

  v37 = [v4 objectForKeyedSubscript:@"weeklyTotalDailyVisitCountAverage_2ndPlaceDailyPatterns"];
  v38 = [(RTMetric *)self metrics];
  [v38 setObject:v37 forKeyedSubscript:@"weeklyTotalDailyVisitCountAverage_2ndPlaceDailyPatterns"];

  v39 = [v4 objectForKeyedSubscript:@"weeklyDaysWithNonZeroDwellTimeAverage_1stPlaceDailyPatterns"];
  v40 = [(RTMetric *)self metrics];
  [v40 setObject:v39 forKeyedSubscript:@"weeklyDaysWithNonZeroDwellTimeAverage_1stPlaceDailyPatterns"];

  v41 = [v4 objectForKeyedSubscript:@"weeklyDaysWithNonZeroDwellTimeAverage_2ndPlaceDailyPatterns"];
  v42 = [(RTMetric *)self metrics];
  [v42 setObject:v41 forKeyedSubscript:@"weeklyDaysWithNonZeroDwellTimeAverage_2ndPlaceDailyPatterns"];

  v43 = [v4 objectForKeyedSubscript:@"numPlacesAfterDailyPatternsPruning"];
  v44 = [(RTMetric *)self metrics];
  [v44 setObject:v43 forKeyedSubscript:@"numPlacesAfterDailyPatternsPruning"];

  v45 = [v4 objectForKeyedSubscript:@"homeRankDailyPatterns"];
  v46 = [(RTMetric *)self metrics];
  [v46 setObject:v45 forKeyedSubscript:@"homeRankDailyPatterns"];

  v47 = [v4 objectForKeyedSubscript:@"workRankDailyPatterns"];
  v48 = [(RTMetric *)self metrics];
  [v48 setObject:v47 forKeyedSubscript:@"workRankDailyPatterns"];

  v49 = [v4 objectForKeyedSubscript:@"weeklyTotalDailyVisitCountAverage_1stPlaceDwellTime"];
  v50 = [(RTMetric *)self metrics];
  [v50 setObject:v49 forKeyedSubscript:@"weeklyTotalDailyVisitCountAverage_1stPlaceDwellTime"];

  v51 = [v4 objectForKeyedSubscript:@"weeklyDaysWithNonZeroDwellTimeAverage_1stPlaceDwellTime"];
  v52 = [(RTMetric *)self metrics];
  [v52 setObject:v51 forKeyedSubscript:@"weeklyDaysWithNonZeroDwellTimeAverage_1stPlaceDwellTime"];

  v53 = [v4 objectForKeyedSubscript:@"topMedianDwellTime_1stPlaceDwellTime"];
  v54 = [(RTMetric *)self metrics];
  [v54 setObject:v53 forKeyedSubscript:@"topMedianDwellTime_1stPlaceDwellTime"];

  v55 = [v4 objectForKeyedSubscript:@"homeRankDwellTime"];
  v56 = [(RTMetric *)self metrics];
  [v56 setObject:v55 forKeyedSubscript:@"homeRankDwellTime"];

  v58 = [v4 objectForKeyedSubscript:@"workRankDwellTime"];

  v57 = [(RTMetric *)self metrics];
  [v57 setObject:v58 forKeyedSubscript:@"workRankDwellTime"];
}

+ (id)generateDictionaryOfOldMetricsWithLearnedLocationStore:(id)a3 locationsOfInterest:(id)a4 homeMapItem:(id)a5 workMapItem:(id)a6 locationsOfOthers:(id *)a7
{
  v255 = *MEMORY[0x277D85DE8];
  v208 = a3;
  v10 = a4;
  v207 = a5;
  v202 = a6;
  v201 = [MEMORY[0x277CBEB18] array];
  v203 = [MEMORY[0x277CBEB18] array];
  v241 = 0u;
  v242 = 0u;
  v243 = 0u;
  v244 = 0u;
  v11 = v10;
  v212 = [v11 countByEnumeratingWithState:&v241 objects:v254 count:16];
  if (!v212)
  {
    v232 = 0;
    v12 = 0;
    v199 = 0.0;
    v48 = v11;
LABEL_40:

    goto LABEL_42;
  }

  v12 = 0;
  v232 = 0;
  v209 = *v242;
  v206 = v11;
  do
  {
    for (i = 0; i != v212; ++i)
    {
      v14 = v12;
      if (*v242 != v209)
      {
        objc_enumerationMutation(v11);
      }

      v15 = *(*(&v241 + 1) + 8 * i);
      v16 = [v15 place];
      v17 = [v16 mapItem];
      v18 = [v17 location];

      if (v18)
      {
        v19 = [v16 mapItem];
        v20 = [v19 isEqualToMapItem:v207];

        if (v20)
        {
          v21 = 1;
        }

        else
        {
          v23 = [v16 mapItem];
          v24 = [v23 isEqualToMapItem:v202];

          if (v24)
          {
            v21 = 2;
          }

          else
          {
            v25 = [v16 mapItem];
            v26 = [v25 location];
            [v201 addObject:v26];

            v21 = 0;
          }
        }

        v27 = [v15 visits];
        v28 = [[RTLearnedPlaceTypeInferencePlaceStats alloc] initWithLearnedLocationStore:v208 place:v16 visits:v27];
        v29 = [RTPlaceStatsAndType alloc];
        v30 = [v16 identifier];
        v218 = v28;
        v31 = [(RTPlaceStatsAndType *)v29 initWithPlaceStats:v28 type:v21 placeIdentifier:v30];

        if (v31)
        {
          [v203 addObject:v31];
        }

        v215 = v31;
        v221 = v16;
        v224 = i;
        v239 = 0u;
        v240 = 0u;
        v237 = 0u;
        v238 = 0u;
        v22 = v27;
        v32 = [v22 countByEnumeratingWithState:&v237 objects:v251 count:16];
        v12 = v14;
        if (v32)
        {
          v33 = v32;
          obj = v22;
          v229 = *v238;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v238 != v229)
              {
                objc_enumerationMutation(obj);
              }

              v35 = *(*(&v237 + 1) + 8 * j);
              if (!v12)
              {
                v12 = v35;

                v232 = v12;
              }

              v36 = [v35 entryDate];
              v37 = [v12 entryDate];
              v38 = [v36 earlierDate:v37];
              v39 = [v35 entryDate];
              v40 = [v38 isEqualToDate:v39];

              if (v40)
              {
                v41 = v35;
              }

              else
              {
                v41 = v12;
              }

              v42 = [v35 exitDate];
              v43 = [v232 exitDate];
              v44 = [v42 laterDate:v43];
              v45 = [v35 exitDate];
              v46 = [v44 isEqualToDate:v45];

              if (v46)
              {
                v47 = v35;

                v232 = v47;
              }

              v12 = v41;
            }

            v22 = obj;
            v33 = [obj countByEnumeratingWithState:&v237 objects:v251 count:16];
          }

          while (v33);
        }

        v11 = v206;
        v16 = v221;
        i = v224;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v12 = v14;
          goto LABEL_34;
        }

        v22 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        v12 = v14;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v253 = v16;
          _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "Place with incomplete mapItem. Place: %@", buf, 0xCu);
        }
      }

LABEL_34:
    }

    v212 = [v11 countByEnumeratingWithState:&v241 objects:v254 count:16];
  }

  while (v212);

  if (v12 && v232)
  {
    v48 = [v232 exitDate];
    v49 = [v12 entryDate];
    [v48 timeIntervalSinceDate:v49];
    v199 = v50;

    goto LABEL_40;
  }

  v199 = 0.0;
LABEL_42:
  v197 = v12;
  v235 = 0u;
  v236 = 0u;
  v233 = 0u;
  v234 = 0u;
  v51 = v203;
  v52 = [v51 countByEnumeratingWithState:&v233 objects:v250 count:16];
  v225 = -1.0;
  if (!v52)
  {
    v54 = -1.0;
    v57 = -1;
    v55 = -1.0;
    v58 = -1;
    v59 = -1.0;
    v60 = -1.0;
    v61 = -1.0;
    v62 = -1.0;
    v63 = -1.0;
    v64 = -1.0;
    goto LABEL_56;
  }

  v53 = v52;
  v54 = -1.0;
  v55 = -1.0;
  v56 = *v234;
  v57 = -1;
  v58 = -1;
  v59 = -1.0;
  v60 = -1.0;
  v61 = -1.0;
  v62 = -1.0;
  v63 = -1.0;
  v64 = -1.0;
  while (2)
  {
    v65 = 0;
    while (2)
    {
      if (*v234 != v56)
      {
        objc_enumerationMutation(v51);
      }

      v66 = *(*(&v233 + 1) + 8 * v65);
      v67 = [v66 placeStats];
      v68 = [v66 type];
      if (v68 == 2)
      {
        v78 = [v67 stats];
        [v78 weeklyAggregateDwellTimeBetweenDateRangeAverage];
        v63 = v79;

        v80 = [v67 stats];
        [v80 weeklyTotalDailyVisitCountAverage];
        v61 = v81;

        v82 = [v67 stats];
        [v82 weeklyDaysWithNonZeroDwellTimeAverage];
        v59 = v83;

        v84 = [v67 stats];
        [v84 topMedianDwellTime];
        v54 = v85;

        v77 = [v67 stats];
        v57 = [v77 weeksWithNonZeroDwellTime];
LABEL_51:
      }

      else if (v68 == 1)
      {
        v69 = [v67 stats];
        [v69 weeklyAggregateDwellTimeBetweenDateRangeAverage];
        v64 = v70;

        v71 = [v67 stats];
        [v71 weeklyTotalDailyVisitCountAverage];
        v62 = v72;

        v73 = [v67 stats];
        [v73 weeklyDaysWithNonZeroDwellTimeAverage];
        v60 = v74;

        v75 = [v67 stats];
        [v75 topMedianDwellTime];
        v55 = v76;

        v77 = [v67 stats];
        v58 = [v77 weeksWithNonZeroDwellTime];
        goto LABEL_51;
      }

      if (v53 != ++v65)
      {
        continue;
      }

      break;
    }

    v53 = [v51 countByEnumeratingWithState:&v233 objects:v250 count:16];
    if (v53)
    {
      continue;
    }

    break;
  }

LABEL_56:

  v86 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_35];
  [v51 filterUsingPredicate:v86];

  v87 = [v51 count];
  v88 = v87;
  if (v87 < 2)
  {
    v107 = 0;
    v194 = -1.0;
    v195 = -1.0;
    v196 = -1;
    v185 = -1;
    v108 = -1;
    v109 = -1;
    v110 = -1;
    v213 = -1.0;
    v216 = -1.0;
    v204 = -1.0;
    v219 = -1.0;
    v222 = -1.0;
    v210 = -1.0;
  }

  else
  {
    v186 = v87;
    v192 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@", @"placeStats", @"stats", @"weeklyDaysWithNonZeroDwellTimeAverage"];
    v89 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@", @"placeStats", @"stats", @"weeklyAggregateDwellTimeBetweenDateRangeAverage"];
    v90 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@", @"placeStats", @"stats", @"weeklyTotalDailyVisitCountAverage"];
    v91 = MEMORY[0x277CCA920];
    v92 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K > %@", v89, &unk_2845A1AC8];
    v249[0] = v92;
    v182 = v90;
    v93 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", v90, &unk_2845A1AD8];
    v249[1] = v93;
    v94 = [MEMORY[0x277CBEA60] arrayWithObjects:v249 count:2];
    v95 = [v91 andPredicateWithSubpredicates:v94];

    v96 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v192 ascending:0];
    v248[0] = v96;
    v184 = v89;
    v97 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v89 ascending:0];
    v248[1] = v97;
    v98 = [MEMORY[0x277CBEA60] arrayWithObjects:v248 count:2];

    v180 = v95;
    v99 = [v51 filteredArrayUsingPredicate:v95];
    v178 = v98;
    v100 = [v99 sortedArrayUsingDescriptors:v98];

    v188 = [v100 count];
    if ([v100 count])
    {
      v101 = 0;
      obja = -1;
      v230 = -1;
      do
      {
        v102 = [v100 objectAtIndexedSubscript:v101];
        v103 = [v102 type];

        if (v103 == 1)
        {
          obja = ++v101;
        }

        else
        {
          v104 = [v100 objectAtIndexedSubscript:v101];
          v105 = [v104 type];

          v106 = v230;
          if (v105 == 2)
          {
            v106 = v101 + 1;
          }

          v230 = v106;
          ++v101;
        }
      }

      while ([v100 count] > v101);
    }

    else
    {
      obja = -1;
      v230 = -1;
    }

    v213 = -1.0;
    v216 = -1.0;
    v219 = -1.0;
    v222 = -1.0;
    if ([v100 count])
    {
      v111 = [v100 objectAtIndexedSubscript:0];
      v112 = [v111 placeStats];
      v113 = [v112 stats];
      [v113 weeklyAggregateDwellTimeBetweenDateRangeAverage];
      v222 = v114;

      v115 = [v100 objectAtIndexedSubscript:0];
      v116 = [v115 placeStats];
      v117 = [v116 stats];
      [v117 weeklyTotalDailyVisitCountAverage];
      v219 = v118;

      v119 = [v100 objectAtIndexedSubscript:0];
      v120 = [v119 placeStats];
      v121 = [v120 stats];
      [v121 weeklyDaysWithNonZeroDwellTimeAverage];
      v216 = v122;
    }

    v204 = -1.0;
    v210 = -1.0;
    if ([v100 count] >= 2)
    {
      v123 = [v100 objectAtIndexedSubscript:1];
      v124 = [v123 placeStats];
      v125 = [v124 stats];
      [v125 weeklyAggregateDwellTimeBetweenDateRangeAverage];
      v210 = v126;

      v127 = [v100 objectAtIndexedSubscript:1];
      v128 = [v127 placeStats];
      v129 = [v128 stats];
      [v129 weeklyTotalDailyVisitCountAverage];
      v204 = v130;

      v131 = [v100 objectAtIndexedSubscript:1];
      v132 = [v131 placeStats];
      v133 = [v132 stats];
      [v133 weeklyDaysWithNonZeroDwellTimeAverage];
      v213 = v134;
    }

    v190 = v100;
    v176 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@", @"placeStats", @"stats", @"topMedianDwellTime"];
    v135 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:? ascending:?];
    v247 = v135;
    v136 = [MEMORY[0x277CBEA60] arrayWithObjects:&v247 count:1];
    v137 = [v51 sortedArrayUsingDescriptors:v136];

    if ([v137 count])
    {
      v138 = 0;
      v139 = -1;
      v140 = -1;
      do
      {
        v141 = [v137 objectAtIndexedSubscript:v138];
        v142 = [v141 type];

        if (v142 == 1)
        {
          v140 = ++v138;
        }

        else
        {
          v143 = [v137 objectAtIndexedSubscript:v138];
          v144 = [v143 type];

          if (v144 == 2)
          {
            v139 = v138 + 1;
          }

          ++v138;
        }
      }

      while ([v137 count] > v138);
    }

    else
    {
      v140 = -1;
      v139 = -1;
    }

    v196 = v140;
    if ([v137 count])
    {
      v145 = [v190 firstObject];
      v146 = [v145 placeIdentifier];
      v147 = [v137 firstObject];
      v148 = [v147 placeIdentifier];
      v174 = [v146 isEqual:v148];

      v149 = [v137 firstObject];
      v150 = [v149 placeStats];
      v151 = [v150 stats];
      [v151 weeklyTotalDailyVisitCountAverage];
      v225 = v152;

      v153 = [v137 firstObject];
      v154 = [v153 placeStats];
      v155 = [v154 stats];
      [v155 weeklyDaysWithNonZeroDwellTimeAverage];
      v195 = v156;

      v157 = [v137 firstObject];
      v158 = [v157 placeStats];
      v159 = [v158 stats];
      [v159 topMedianDwellTime];
      v194 = v160;

      v161 = v190;
      v108 = v230;
      v88 = v186;
      v110 = v188;
    }

    else
    {
      v174 = 0;
      v225 = -1.0;
      v194 = -1.0;
      v195 = -1.0;
      v108 = v230;
      v88 = v186;
      v110 = v188;
      v161 = v190;
    }

    v109 = obja;
    v185 = v139;
    v107 = v174;
  }

  v245[0] = @"intervalToCalculateStats";
  v231 = [MEMORY[0x277CCABB0] numberWithDouble:v199];
  v246[0] = v231;
  v245[1] = @"numPlacesAfterWeeksWithNonZeroDwellTimePruning";
  objb = [MEMORY[0x277CCABB0] numberWithInteger:v88];
  v246[1] = objb;
  v245[2] = @"agreeDailyPatternsAndDwellTimeOnHome";
  v200 = [MEMORY[0x277CCABB0] numberWithBool:v107];
  v246[2] = v200;
  v245[3] = @"weeklyAggregateDwellTimeBetweenDateRangeAverage_home";
  v193 = [MEMORY[0x277CCABB0] numberWithDouble:v64];
  v246[3] = v193;
  v245[4] = @"weeklyAggregateDwellTimeBetweenDateRangeAverage_work";
  v191 = [MEMORY[0x277CCABB0] numberWithDouble:v63];
  v246[4] = v191;
  v245[5] = @"weeklyTotalDailyVisitCountAverage_home";
  v189 = [MEMORY[0x277CCABB0] numberWithDouble:v62];
  v246[5] = v189;
  v245[6] = @"weeklyTotalDailyVisitCountAverage_work";
  v187 = [MEMORY[0x277CCABB0] numberWithDouble:v61];
  v246[6] = v187;
  v245[7] = @"weeklyDaysWithNonZeroDwellTimeAverage_home";
  v183 = [MEMORY[0x277CCABB0] numberWithDouble:v60];
  v246[7] = v183;
  v245[8] = @"weeklyDaysWithNonZeroDwellTimeAverage_work";
  v181 = [MEMORY[0x277CCABB0] numberWithDouble:v59];
  v246[8] = v181;
  v245[9] = @"topMedianDwellTime_home";
  v179 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
  v246[9] = v179;
  v245[10] = @"topMedianDwellTime_work";
  v177 = [MEMORY[0x277CCABB0] numberWithDouble:v54];
  v246[10] = v177;
  v245[11] = @"weeksWithNonZeroDwellTime_home";
  v175 = [MEMORY[0x277CCABB0] numberWithInteger:v58];
  v246[11] = v175;
  v245[12] = @"weeksWithNonZeroDwellTime_work";
  v173 = [MEMORY[0x277CCABB0] numberWithInteger:v57];
  v246[12] = v173;
  v245[13] = @"weeklyAggregateDwellTimeBetweenDateRangeAverage_1stPlaceDailyPatterns";
  v223 = [MEMORY[0x277CCABB0] numberWithDouble:v222];
  v246[13] = v223;
  v245[14] = @"weeklyAggregateDwellTimeBetweenDateRangeAverage_2ndPlaceDailyPatterns";
  v211 = [MEMORY[0x277CCABB0] numberWithDouble:v210];
  v246[14] = v211;
  v245[15] = @"weeklyTotalDailyVisitCountAverage_1stPlaceDailyPatterns";
  v220 = [MEMORY[0x277CCABB0] numberWithDouble:v219];
  v246[15] = v220;
  v245[16] = @"weeklyTotalDailyVisitCountAverage_2ndPlaceDailyPatterns";
  v205 = [MEMORY[0x277CCABB0] numberWithDouble:v204];
  v246[16] = v205;
  v245[17] = @"weeklyDaysWithNonZeroDwellTimeAverage_1stPlaceDailyPatterns";
  v217 = [MEMORY[0x277CCABB0] numberWithDouble:v216];
  v246[17] = v217;
  v245[18] = @"weeklyDaysWithNonZeroDwellTimeAverage_2ndPlaceDailyPatterns";
  v214 = [MEMORY[0x277CCABB0] numberWithDouble:v213];
  v246[18] = v214;
  v245[19] = @"numPlacesAfterDailyPatternsPruning";
  v172 = [MEMORY[0x277CCABB0] numberWithInteger:v110];
  v246[19] = v172;
  v245[20] = @"homeRankDailyPatterns";
  v162 = [MEMORY[0x277CCABB0] numberWithInteger:v109];
  v246[20] = v162;
  v245[21] = @"workRankDailyPatterns";
  v163 = [MEMORY[0x277CCABB0] numberWithInteger:v108];
  v246[21] = v163;
  v245[22] = @"weeklyTotalDailyVisitCountAverage_1stPlaceDwellTime";
  v164 = [MEMORY[0x277CCABB0] numberWithDouble:v225];
  v246[22] = v164;
  v245[23] = @"weeklyDaysWithNonZeroDwellTimeAverage_1stPlaceDwellTime";
  v165 = [MEMORY[0x277CCABB0] numberWithDouble:v195];
  v246[23] = v165;
  v245[24] = @"topMedianDwellTime_1stPlaceDwellTime";
  v166 = [MEMORY[0x277CCABB0] numberWithDouble:v194];
  v246[24] = v166;
  v245[25] = @"homeRankDwellTime";
  v167 = [MEMORY[0x277CCABB0] numberWithInteger:v196];
  v246[25] = v167;
  v245[26] = @"workRankDwellTime";
  v168 = [MEMORY[0x277CCABB0] numberWithInteger:v185];
  v246[26] = v168;
  v169 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v246 forKeys:v245 count:27];

  v170 = v201;
  *a7 = v201;

  return v169;
}

BOOL __139__RTPlaceDataMetrics_generateDictionaryOfOldMetricsWithLearnedLocationStore_locationsOfInterest_homeMapItem_workMapItem_locationsOfOthers___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 placeStats];
  v3 = [v2 stats];
  v4 = [v3 weeksWithNonZeroDwellTime] / 5.0 > 0.6;

  return v4;
}

+ (id)labelAnEventInterval:(id)a3 basedOnIntervalDict:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v33 = a4;
  obj = [v33 allKeys];
  v34 = [obj countByEnumeratingWithState:&v40 objects:v57 count:16];
  if (v34)
  {
    v32 = *v41;
    v6 = @"Unknown";
    v7 = 0.0;
    do
    {
      v8 = 0;
      do
      {
        if (*v41 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v8;
        v9 = *(*(&v40 + 1) + 8 * v8);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v10 = [v33 objectForKeyedSubscript:v9];
        v11 = [v10 countByEnumeratingWithState:&v36 objects:v56 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v37;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v37 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [v5 intersectionWithDateInterval:*(*(&v36 + 1) + 8 * i)];
              v16 = [v15 endDate];
              v17 = [v15 startDate];
              [v16 timeIntervalSinceDate:v17];
              v19 = v18;

              if (v19 > v7)
              {
                v20 = v9;

                v7 = v19;
                v6 = v20;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v36 objects:v56 count:16];
          }

          while (v12);
        }

        v8 = v35 + 1;
      }

      while (v35 + 1 != v34);
      v34 = [obj countByEnumeratingWithState:&v40 objects:v57 count:16];
    }

    while (v34);
  }

  else
  {
    v6 = @"Unknown";
    v7 = 0.0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromSelector(a2);
      v26 = [v5 startDate];
      v27 = [v26 stringFromDate];
      v28 = [v5 endDate];
      v29 = [v28 stringFromDate];
      *buf = 138413570;
      v45 = v24;
      v46 = 2112;
      v47 = v25;
      v48 = 2112;
      v49 = v27;
      v50 = 2112;
      v51 = v29;
      v52 = 2112;
      v53 = v6;
      v54 = 2048;
      v55 = v7;
      _os_log_debug_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEBUG, "%@, %@, Biome event spanning the interval %@ -> %@ labeled with place identifier %@, due to visit + event overlapping with a duration of %.2f", buf, 0x3Eu);
    }
  }

  return v6;
}

- (void)setMLMetricsFromFeaturesDict:(id)a3 sourceName:(unint64_t)a4
{
  v194 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v189 = 0u;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v160 = [v5 countByEnumeratingWithState:&v189 objects:v193 count:16];
  if (v160)
  {
    v159 = *v190;
    do
    {
      for (i = 0; i != v160; ++i)
      {
        if (*v190 != v159)
        {
          objc_enumerationMutation(v5);
        }

        v7 = *(*(&v189 + 1) + 8 * i);
        if ([v7 isEqualToString:@"Home"])
        {
          v188 = i;
          v8 = @"percentage_of_days_with_charging_home";
          v9 = @"median_daily_total_charging_duration_home";
          v161 = @"mean_daily_total_charging_duration_home";
          v162 = @"SD_daily_total_charging_duration_home";
          v163 = @"median_daily_longest_charging_duration_home";
          v164 = @"mean_daily_longest_charging_duration_home";
          v165 = @"SD_daily_longest_charging_duration_home";
          v166 = @"percentage_of_days_with_staticMotion_home";
          v167 = @"median_daily_total_static_motion_duration_home";
          v168 = @"mean_daily_total_static_motion_duration_home";
          v169 = @"SD_daily_total_static_motion_duration_home";
          v170 = @"median_daily_longest_static_motion_duration_home";
          v171 = @"mean_daily_longest_static_motion_duration_home";
          v172 = @"SD_daily_longest_static_motion_duration_home";
          v173 = @"percentage_of_days_with_screenLock_home";
          v174 = @"median_daily_total_screen_lock_duration_home";
          v175 = @"mean_daily_total_screen_lock_duration_home";
          v176 = @"SD_daily_total_screen_lock_duration_home";
          v177 = @"median_daily_longest_screen_lock_duration_home";
          v178 = @"mean_daily_longest_screen_lock_duration_home";
          v179 = @"SD_daily_longest_screen_lock_duration_home";
          v180 = @"percentage_of_days_with_uninterrupted_WiFi_connection_home";
          v181 = @"median_daily_total_uninterrupted_WiFi_connection_duration_home";
          v182 = @"mean_daily_total_uninterrupted_WiFi_connection_duration_home";
          v183 = @"SD_daily_total_uninterrupted_WiFi_connection_duration_home";
          v184 = @"median_daily_longest_uninterrupted_WiFi_connection_duration_home";
          v185 = @"mean_daily_longest_uninterrupted_WiFi_connection_duration_home";
          v186 = @"SD_daily_longest_uninterrupted_WiFi_connection_duration_home";
          v10 = @"mean_daily_uninterrupted_WiFi_connection_stability_ratio_home";
        }

        else if ([v7 isEqualToString:@"Work"])
        {
          v188 = i;
          v8 = @"percentage_of_days_with_charging_work";
          v9 = @"median_daily_total_charging_duration_work";
          v161 = @"mean_daily_total_charging_duration_work";
          v162 = @"SD_daily_total_charging_duration_work";
          v163 = @"median_daily_longest_charging_duration_work";
          v164 = @"mean_daily_longest_charging_duration_work";
          v165 = @"SD_daily_longest_charging_duration_work";
          v166 = @"percentage_of_days_with_staticMotion_work";
          v167 = @"median_daily_total_static_motion_duration_work";
          v168 = @"mean_daily_total_static_motion_duration_work";
          v169 = @"SD_daily_total_static_motion_duration_work";
          v170 = @"median_daily_longest_static_motion_duration_work";
          v171 = @"mean_daily_longest_static_motion_duration_work";
          v172 = @"SD_daily_longest_static_motion_duration_work";
          v173 = @"percentage_of_days_with_screenLock_work";
          v174 = @"median_daily_total_screen_lock_duration_work";
          v175 = @"mean_daily_total_screen_lock_duration_work";
          v176 = @"SD_daily_total_screen_lock_duration_work";
          v177 = @"median_daily_longest_screen_lock_duration_work";
          v178 = @"mean_daily_longest_screen_lock_duration_work";
          v179 = @"SD_daily_longest_screen_lock_duration_work";
          v180 = @"percentage_of_days_with_uninterrupted_WiFi_connection_work";
          v181 = @"median_daily_total_uninterrupted_WiFi_connection_duration_work";
          v182 = @"mean_daily_total_uninterrupted_WiFi_connection_duration_work";
          v183 = @"SD_daily_total_uninterrupted_WiFi_connection_duration_work";
          v184 = @"median_daily_longest_uninterrupted_WiFi_connection_duration_work";
          v185 = @"mean_daily_longest_uninterrupted_WiFi_connection_duration_work";
          v186 = @"SD_daily_longest_uninterrupted_WiFi_connection_duration_work";
          v10 = @"mean_daily_uninterrupted_WiFi_connection_stability_ratio_work";
        }

        else
        {
          if (![v7 isEqualToString:@"Others"])
          {
            continue;
          }

          v188 = i;
          v8 = @"percentage_of_days_with_charging_others";
          v9 = @"median_daily_total_charging_duration_others";
          v161 = @"mean_daily_total_charging_duration_others";
          v162 = @"SD_daily_total_charging_duration_others";
          v163 = @"median_daily_longest_charging_duration_others";
          v164 = @"mean_daily_longest_charging_duration_others";
          v165 = @"SD_daily_longest_charging_duration_others";
          v166 = @"percentage_of_days_with_staticMotion_others";
          v167 = @"median_daily_total_static_motion_duration_others";
          v168 = @"mean_daily_total_static_motion_duration_others";
          v169 = @"SD_daily_total_static_motion_duration_others";
          v170 = @"median_daily_longest_static_motion_duration_others";
          v171 = @"mean_daily_longest_static_motion_duration_others";
          v172 = @"SD_daily_longest_static_motion_duration_others";
          v173 = @"percentage_of_days_with_screenLock_others";
          v174 = @"median_daily_total_screen_lock_duration_others";
          v175 = @"mean_daily_total_screen_lock_duration_others";
          v176 = @"SD_daily_total_screen_lock_duration_others";
          v177 = @"median_daily_longest_screen_lock_duration_others";
          v178 = @"mean_daily_longest_screen_lock_duration_others";
          v179 = @"SD_daily_longest_screen_lock_duration_others";
          v180 = @"percentage_of_days_with_uninterrupted_WiFi_connection_others";
          v181 = @"median_daily_total_uninterrupted_WiFi_connection_duration_others";
          v182 = @"mean_daily_total_uninterrupted_WiFi_connection_duration_others";
          v183 = @"SD_daily_total_uninterrupted_WiFi_connection_duration_others";
          v184 = @"median_daily_longest_uninterrupted_WiFi_connection_duration_others";
          v185 = @"mean_daily_longest_uninterrupted_WiFi_connection_duration_others";
          v186 = @"SD_daily_longest_uninterrupted_WiFi_connection_duration_others";
          v10 = @"mean_daily_uninterrupted_WiFi_connection_stability_ratio_others";
        }

        v187 = v10;
        v11 = MEMORY[0x277CCABB0];
        v12 = [v5 objectForKeyedSubscript:v7];
        v13 = [v12 objectForKeyedSubscript:@"percentage_of_days_with_charging"];
        [v13 doubleValue];
        v14 = [v11 numberWithDouble:?];
        v15 = [(RTMetric *)self metrics];
        [v15 setObject:v14 forKeyedSubscript:v8];

        v16 = MEMORY[0x277CCABB0];
        v17 = [v5 objectForKeyedSubscript:v7];
        v18 = [v17 objectForKeyedSubscript:@"median_daily_total_charging_duration"];
        [v18 doubleValue];
        v19 = [v16 numberWithDouble:?];
        v20 = [(RTMetric *)self metrics];
        [v20 setObject:v19 forKeyedSubscript:v9];

        v21 = MEMORY[0x277CCABB0];
        v22 = [v5 objectForKeyedSubscript:v7];
        v23 = [v22 objectForKeyedSubscript:@"mean_daily_total_charging_duration"];
        [v23 doubleValue];
        v24 = [v21 numberWithDouble:?];
        v25 = [(RTMetric *)self metrics];
        [v25 setObject:v24 forKeyedSubscript:v161];

        v26 = MEMORY[0x277CCABB0];
        v27 = [v5 objectForKeyedSubscript:v7];
        v28 = [v27 objectForKeyedSubscript:@"SD_daily_total_charging_duration"];
        [v28 doubleValue];
        v29 = [v26 numberWithDouble:?];
        v30 = [(RTMetric *)self metrics];
        [v30 setObject:v29 forKeyedSubscript:v162];

        v31 = MEMORY[0x277CCABB0];
        v32 = [v5 objectForKeyedSubscript:v7];
        v33 = [v32 objectForKeyedSubscript:@"median_daily_longest_charging_duration"];
        [v33 doubleValue];
        v34 = [v31 numberWithDouble:?];
        v35 = [(RTMetric *)self metrics];
        [v35 setObject:v34 forKeyedSubscript:v163];

        v36 = MEMORY[0x277CCABB0];
        v37 = [v5 objectForKeyedSubscript:v7];
        v38 = [v37 objectForKeyedSubscript:@"mean_daily_longest_charging_duration"];
        [v38 doubleValue];
        v39 = [v36 numberWithDouble:?];
        v40 = [(RTMetric *)self metrics];
        [v40 setObject:v39 forKeyedSubscript:v164];

        v41 = MEMORY[0x277CCABB0];
        v42 = [v5 objectForKeyedSubscript:v7];
        v43 = [v42 objectForKeyedSubscript:@"SD_daily_longest_charging_duration"];
        [v43 doubleValue];
        v44 = [v41 numberWithDouble:?];
        v45 = [(RTMetric *)self metrics];
        [v45 setObject:v44 forKeyedSubscript:v165];

        v46 = MEMORY[0x277CCABB0];
        v47 = [v5 objectForKeyedSubscript:v7];
        v48 = [v47 objectForKeyedSubscript:@"percentage_of_days_with_staticMotion"];
        [v48 doubleValue];
        v49 = [v46 numberWithDouble:?];
        v50 = [(RTMetric *)self metrics];
        [v50 setObject:v49 forKeyedSubscript:v166];

        v51 = MEMORY[0x277CCABB0];
        v52 = [v5 objectForKeyedSubscript:v7];
        v53 = [v52 objectForKeyedSubscript:@"median_daily_total_static_motion_duration"];
        [v53 doubleValue];
        v54 = [v51 numberWithDouble:?];
        v55 = [(RTMetric *)self metrics];
        [v55 setObject:v54 forKeyedSubscript:v167];

        v56 = MEMORY[0x277CCABB0];
        v57 = [v5 objectForKeyedSubscript:v7];
        v58 = [v57 objectForKeyedSubscript:@"mean_daily_total_static_motion_duration"];
        [v58 doubleValue];
        v59 = [v56 numberWithDouble:?];
        v60 = [(RTMetric *)self metrics];
        [v60 setObject:v59 forKeyedSubscript:v168];

        v61 = MEMORY[0x277CCABB0];
        v62 = [v5 objectForKeyedSubscript:v7];
        v63 = [v62 objectForKeyedSubscript:@"SD_daily_total_static_motion_duration"];
        [v63 doubleValue];
        v64 = [v61 numberWithDouble:?];
        v65 = [(RTMetric *)self metrics];
        [v65 setObject:v64 forKeyedSubscript:v169];

        v66 = MEMORY[0x277CCABB0];
        v67 = [v5 objectForKeyedSubscript:v7];
        v68 = [v67 objectForKeyedSubscript:@"median_daily_longest_static_motion_duration"];
        [v68 doubleValue];
        v69 = [v66 numberWithDouble:?];
        v70 = [(RTMetric *)self metrics];
        [v70 setObject:v69 forKeyedSubscript:v170];

        v71 = MEMORY[0x277CCABB0];
        v72 = [v5 objectForKeyedSubscript:v7];
        v73 = [v72 objectForKeyedSubscript:@"mean_daily_longest_static_motion_duration"];
        [v73 doubleValue];
        v74 = [v71 numberWithDouble:?];
        v75 = [(RTMetric *)self metrics];
        [v75 setObject:v74 forKeyedSubscript:v171];

        v76 = MEMORY[0x277CCABB0];
        v77 = [v5 objectForKeyedSubscript:v7];
        v78 = [v77 objectForKeyedSubscript:@"SD_daily_longest_static_motion_duration"];
        [v78 doubleValue];
        v79 = [v76 numberWithDouble:?];
        v80 = [(RTMetric *)self metrics];
        [v80 setObject:v79 forKeyedSubscript:v172];

        v81 = MEMORY[0x277CCABB0];
        v82 = [v5 objectForKeyedSubscript:v7];
        v83 = [v82 objectForKeyedSubscript:@"percentage_of_days_with_screenLock"];
        [v83 doubleValue];
        v84 = [v81 numberWithDouble:?];
        v85 = [(RTMetric *)self metrics];
        [v85 setObject:v84 forKeyedSubscript:v173];

        v86 = MEMORY[0x277CCABB0];
        v87 = [v5 objectForKeyedSubscript:v7];
        v88 = [v87 objectForKeyedSubscript:@"median_daily_total_screen_lock_duration"];
        [v88 doubleValue];
        v89 = [v86 numberWithDouble:?];
        v90 = [(RTMetric *)self metrics];
        [v90 setObject:v89 forKeyedSubscript:v174];

        v91 = MEMORY[0x277CCABB0];
        v92 = [v5 objectForKeyedSubscript:v7];
        v93 = [v92 objectForKeyedSubscript:@"mean_daily_total_screen_lock_duration"];
        [v93 doubleValue];
        v94 = [v91 numberWithDouble:?];
        v95 = [(RTMetric *)self metrics];
        [v95 setObject:v94 forKeyedSubscript:v175];

        v96 = MEMORY[0x277CCABB0];
        v97 = [v5 objectForKeyedSubscript:v7];
        v98 = [v97 objectForKeyedSubscript:@"SD_daily_total_screen_lock_duration"];
        [v98 doubleValue];
        v99 = [v96 numberWithDouble:?];
        v100 = [(RTMetric *)self metrics];
        [v100 setObject:v99 forKeyedSubscript:v176];

        v101 = MEMORY[0x277CCABB0];
        v102 = [v5 objectForKeyedSubscript:v7];
        v103 = [v102 objectForKeyedSubscript:@"median_daily_longest_screen_lock_duration"];
        [v103 doubleValue];
        v104 = [v101 numberWithDouble:?];
        v105 = [(RTMetric *)self metrics];
        [v105 setObject:v104 forKeyedSubscript:v177];

        v106 = MEMORY[0x277CCABB0];
        v107 = [v5 objectForKeyedSubscript:v7];
        v108 = [v107 objectForKeyedSubscript:@"mean_daily_longest_screen_lock_duration"];
        [v108 doubleValue];
        v109 = [v106 numberWithDouble:?];
        v110 = [(RTMetric *)self metrics];
        [v110 setObject:v109 forKeyedSubscript:v178];

        v111 = MEMORY[0x277CCABB0];
        v112 = [v5 objectForKeyedSubscript:v7];
        v113 = [v112 objectForKeyedSubscript:@"SD_daily_longest_screen_lock_duration"];
        [v113 doubleValue];
        v114 = [v111 numberWithDouble:?];
        v115 = [(RTMetric *)self metrics];
        [v115 setObject:v114 forKeyedSubscript:v179];

        v116 = MEMORY[0x277CCABB0];
        v117 = [v5 objectForKeyedSubscript:v7];
        v118 = [v117 objectForKeyedSubscript:@"percentage_of_days_with_uninterrupted_WiFi_connection"];
        [v118 doubleValue];
        v119 = [v116 numberWithDouble:?];
        v120 = [(RTMetric *)self metrics];
        [v120 setObject:v119 forKeyedSubscript:v180];

        v121 = MEMORY[0x277CCABB0];
        v122 = [v5 objectForKeyedSubscript:v7];
        v123 = [v122 objectForKeyedSubscript:@"median_daily_total_uninterrupted_WiFi_connection_duration"];
        [v123 doubleValue];
        v124 = [v121 numberWithDouble:?];
        v125 = [(RTMetric *)self metrics];
        [v125 setObject:v124 forKeyedSubscript:v181];

        v126 = MEMORY[0x277CCABB0];
        v127 = [v5 objectForKeyedSubscript:v7];
        v128 = [v127 objectForKeyedSubscript:@"mean_daily_total_uninterrupted_WiFi_connection_duration"];
        [v128 doubleValue];
        v129 = [v126 numberWithDouble:?];
        v130 = [(RTMetric *)self metrics];
        [v130 setObject:v129 forKeyedSubscript:v182];

        v131 = MEMORY[0x277CCABB0];
        v132 = [v5 objectForKeyedSubscript:v7];
        v133 = [v132 objectForKeyedSubscript:@"SD_daily_total_uninterrupted_WiFi_connection_duration"];
        [v133 doubleValue];
        v134 = [v131 numberWithDouble:?];
        v135 = [(RTMetric *)self metrics];
        [v135 setObject:v134 forKeyedSubscript:v183];

        v136 = MEMORY[0x277CCABB0];
        v137 = [v5 objectForKeyedSubscript:v7];
        v138 = [v137 objectForKeyedSubscript:@"median_daily_longest_uninterrupted_WiFi_connection_duration"];
        [v138 doubleValue];
        v139 = [v136 numberWithDouble:?];
        v140 = [(RTMetric *)self metrics];
        [v140 setObject:v139 forKeyedSubscript:v184];

        v141 = MEMORY[0x277CCABB0];
        v142 = [v5 objectForKeyedSubscript:v7];
        v143 = [v142 objectForKeyedSubscript:@"mean_daily_longest_uninterrupted_WiFi_connection_duration"];
        [v143 doubleValue];
        v144 = [v141 numberWithDouble:?];
        v145 = [(RTMetric *)self metrics];
        [v145 setObject:v144 forKeyedSubscript:v185];

        v146 = MEMORY[0x277CCABB0];
        v147 = [v5 objectForKeyedSubscript:v7];
        v148 = [v147 objectForKeyedSubscript:@"SD_daily_longest_uninterrupted_WiFi_connection_duration"];
        [v148 doubleValue];
        v149 = [v146 numberWithDouble:?];
        v150 = [(RTMetric *)self metrics];
        [v150 setObject:v149 forKeyedSubscript:v186];

        v151 = MEMORY[0x277CCABB0];
        v152 = [v5 objectForKeyedSubscript:v7];
        v153 = [v152 objectForKeyedSubscript:@"mean_daily_uninterrupted_WiFi_connection_stability_ratio"];
        [v153 doubleValue];
        v154 = [v151 numberWithDouble:?];
        v155 = [(RTMetric *)self metrics];
        [v155 setObject:v154 forKeyedSubscript:v187];

        i = v188;
      }

      v160 = [v5 countByEnumeratingWithState:&v189 objects:v193 count:16];
    }

    while (v160);
  }

  v156 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v157 = [(RTMetric *)self metrics];
  [v157 setObject:v156 forKeyedSubscript:@"data_source"];
}

+ (id)DataSourceToString:(unint64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 2)
  {
    v3 = @"BiomeStream";
  }

  if (a3 == 1)
  {
    return @"CoreDuet";
  }

  else
  {
    return v3;
  }
}

+ (id)calculateMLFeaturesUsingBiomeManager:(id)a3 intervalDictionary:(id)a4 startDate:(id)a5 endDate:(id)a6 createBucketedFeatures:(BOOL)a7
{
  v522 = a7;
  v663 = *MEMORY[0x277D85DE8];
  v524 = a3;
  v10 = a4;
  v11 = a5;
  v529 = a6;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v507 = objc_opt_class();
      v508 = NSStringFromClass(v507);
      v509 = NSStringFromSelector(a2);
      v510 = [v10 count];
      v511 = [v11 stringFromDate];
      v512 = [v529 stringFromDate];
      *buf = 138413314;
      v629 = v508;
      v630 = 2112;
      v631 = v509;
      v632 = 2048;
      v633 = v510;
      v634 = 2112;
      v635 = v511;
      v636 = 2112;
      *v637 = v512;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "%@, %@, invoked with %lu places, for features within start date, %@, end date, %@", buf, 0x34u);
    }
  }

  v568 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = MEMORY[0x277CCAC30];
  v624[0] = MEMORY[0x277D85DD0];
  v624[1] = 3221225472;
  v624[2] = __119__RTPlaceDataMetrics_calculateMLFeaturesUsingBiomeManager_intervalDictionary_startDate_endDate_createBucketedFeatures___block_invoke;
  v624[3] = &unk_2788C90C0;
  v530 = v11;
  v625 = v530;
  v558 = [v13 predicateWithBlock:v624];
  v14 = objc_opt_new();
  v623 = 0u;
  v622 = 0u;
  v621 = 0u;
  v620 = 0u;
  v15 = v10;
  v16 = [v15 countByEnumeratingWithState:&v620 objects:v662 count:16];
  if (v16)
  {
    v17 = *v621;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v621 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v620 + 1) + 8 * i);
        v20 = [v15 objectForKeyedSubscript:v19];
        v21 = [v20 filteredArrayUsingPredicate:v558];
        [v14 setObject:v21 forKeyedSubscript:v19];
      }

      v16 = [v15 countByEnumeratingWithState:&v620 objects:v662 count:16];
    }

    while (v16);
  }

  v541 = v14;
  if (![v541 count] || objc_msgSend(v530, "compare:", v529) == 1)
  {
    v22 = v568;
    goto LABEL_15;
  }

  v619 = 0u;
  v618 = 0u;
  v617 = 0u;
  v616 = 0u;
  v24 = [v541 allKeys];
  v25 = [v24 countByEnumeratingWithState:&v616 objects:v661 count:16];
  if (v25)
  {
    v26 = *v617;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v617 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v616 + 1) + 8 * j);
        v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v568 setObject:v29 forKeyedSubscript:v28];

        v30 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v31 = [v30 numberWithDouble:?];
        v32 = [v568 objectForKeyedSubscript:v28];
        [v32 setObject:v31 forKeyedSubscript:@"percentage_of_days_with_charging"];

        v33 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v34 = [v33 numberWithDouble:?];
        v35 = [v568 objectForKeyedSubscript:v28];
        [v35 setObject:v34 forKeyedSubscript:@"median_daily_total_charging_duration"];

        v36 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v37 = [v36 numberWithDouble:?];
        v38 = [v568 objectForKeyedSubscript:v28];
        [v38 setObject:v37 forKeyedSubscript:@"mean_daily_total_charging_duration"];

        v39 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v40 = [v39 numberWithDouble:?];
        v41 = [v568 objectForKeyedSubscript:v28];
        [v41 setObject:v40 forKeyedSubscript:@"SD_daily_total_charging_duration"];

        v42 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v43 = [v42 numberWithDouble:?];
        v44 = [v568 objectForKeyedSubscript:v28];
        [v44 setObject:v43 forKeyedSubscript:@"median_daily_longest_charging_duration"];

        v45 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v46 = [v45 numberWithDouble:?];
        v47 = [v568 objectForKeyedSubscript:v28];
        [v47 setObject:v46 forKeyedSubscript:@"mean_daily_longest_charging_duration"];

        v48 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v49 = [v48 numberWithDouble:?];
        v50 = [v568 objectForKeyedSubscript:v28];
        [v50 setObject:v49 forKeyedSubscript:@"SD_daily_longest_charging_duration"];

        v51 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v52 = [v51 numberWithDouble:?];
        v53 = [v568 objectForKeyedSubscript:v28];
        [v53 setObject:v52 forKeyedSubscript:@"percentage_of_days_with_staticMotion"];

        v54 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v55 = [v54 numberWithDouble:?];
        v56 = [v568 objectForKeyedSubscript:v28];
        [v56 setObject:v55 forKeyedSubscript:@"median_daily_total_static_motion_duration"];

        v57 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v58 = [v57 numberWithDouble:?];
        v59 = [v568 objectForKeyedSubscript:v28];
        [v59 setObject:v58 forKeyedSubscript:@"mean_daily_total_static_motion_duration"];

        v60 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v61 = [v60 numberWithDouble:?];
        v62 = [v568 objectForKeyedSubscript:v28];
        [v62 setObject:v61 forKeyedSubscript:@"SD_daily_total_static_motion_duration"];

        v63 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v64 = [v63 numberWithDouble:?];
        v65 = [v568 objectForKeyedSubscript:v28];
        [v65 setObject:v64 forKeyedSubscript:@"median_daily_longest_static_motion_duration"];

        v66 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v67 = [v66 numberWithDouble:?];
        v68 = [v568 objectForKeyedSubscript:v28];
        [v68 setObject:v67 forKeyedSubscript:@"mean_daily_longest_static_motion_duration"];

        v69 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v70 = [v69 numberWithDouble:?];
        v71 = [v568 objectForKeyedSubscript:v28];
        [v71 setObject:v70 forKeyedSubscript:@"SD_daily_longest_static_motion_duration"];

        v72 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v73 = [v72 numberWithDouble:?];
        v74 = [v568 objectForKeyedSubscript:v28];
        [v74 setObject:v73 forKeyedSubscript:@"percentage_of_days_with_screenLock"];

        v75 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v76 = [v75 numberWithDouble:?];
        v77 = [v568 objectForKeyedSubscript:v28];
        [v77 setObject:v76 forKeyedSubscript:@"median_daily_total_screen_lock_duration"];

        v78 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v79 = [v78 numberWithDouble:?];
        v80 = [v568 objectForKeyedSubscript:v28];
        [v80 setObject:v79 forKeyedSubscript:@"mean_daily_total_screen_lock_duration"];

        v81 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v82 = [v81 numberWithDouble:?];
        v83 = [v568 objectForKeyedSubscript:v28];
        [v83 setObject:v82 forKeyedSubscript:@"SD_daily_total_screen_lock_duration"];

        v84 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v85 = [v84 numberWithDouble:?];
        v86 = [v568 objectForKeyedSubscript:v28];
        [v86 setObject:v85 forKeyedSubscript:@"median_daily_longest_screen_lock_duration"];

        v87 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v88 = [v87 numberWithDouble:?];
        v89 = [v568 objectForKeyedSubscript:v28];
        [v89 setObject:v88 forKeyedSubscript:@"mean_daily_longest_screen_lock_duration"];

        v90 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v91 = [v90 numberWithDouble:?];
        v92 = [v568 objectForKeyedSubscript:v28];
        [v92 setObject:v91 forKeyedSubscript:@"SD_daily_longest_screen_lock_duration"];

        v93 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v94 = [v93 numberWithDouble:?];
        v95 = [v568 objectForKeyedSubscript:v28];
        [v95 setObject:v94 forKeyedSubscript:@"percentage_of_days_with_uninterrupted_WiFi_connection"];

        v96 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v97 = [v96 numberWithDouble:?];
        v98 = [v568 objectForKeyedSubscript:v28];
        [v98 setObject:v97 forKeyedSubscript:@"median_daily_total_uninterrupted_WiFi_connection_duration"];

        v99 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v100 = [v99 numberWithDouble:?];
        v101 = [v568 objectForKeyedSubscript:v28];
        [v101 setObject:v100 forKeyedSubscript:@"mean_daily_total_uninterrupted_WiFi_connection_duration"];

        v102 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v103 = [v102 numberWithDouble:?];
        v104 = [v568 objectForKeyedSubscript:v28];
        [v104 setObject:v103 forKeyedSubscript:@"SD_daily_total_uninterrupted_WiFi_connection_duration"];

        v105 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v106 = [v105 numberWithDouble:?];
        v107 = [v568 objectForKeyedSubscript:v28];
        [v107 setObject:v106 forKeyedSubscript:@"median_daily_longest_uninterrupted_WiFi_connection_duration"];

        v108 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v109 = [v108 numberWithDouble:?];
        v110 = [v568 objectForKeyedSubscript:v28];
        [v110 setObject:v109 forKeyedSubscript:@"mean_daily_longest_uninterrupted_WiFi_connection_duration"];

        v111 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v112 = [v111 numberWithDouble:?];
        v113 = [v568 objectForKeyedSubscript:v28];
        [v113 setObject:v112 forKeyedSubscript:@"SD_daily_longest_uninterrupted_WiFi_connection_duration"];

        v114 = MEMORY[0x277CCABB0];
        [&unk_2845A19E8 doubleValue];
        v115 = [v114 numberWithDouble:?];
        v116 = [v568 objectForKeyedSubscript:v28];
        [v116 setObject:v115 forKeyedSubscript:@"mean_daily_uninterrupted_WiFi_connection_stability_ratio"];

        v117 = objc_opt_new();
        v118 = [v568 objectForKeyedSubscript:v28];
        [v118 setObject:v117 forKeyedSubscript:@"eventHappenedArray"];

        v119 = objc_opt_new();
        v120 = [v568 objectForKeyedSubscript:v28];
        [v120 setObject:v119 forKeyedSubscript:@"eventLongestArray"];

        v121 = objc_opt_new();
        v122 = [v568 objectForKeyedSubscript:v28];
        [v122 setObject:v121 forKeyedSubscript:@"eventTotalArray"];

        v123 = objc_opt_new();
        v124 = [v568 objectForKeyedSubscript:v28];
        [v124 setObject:v123 forKeyedSubscript:@"wifiStabilityArray"];
      }

      v25 = [v24 countByEnumeratingWithState:&v616 objects:v661 count:16];
    }

    while (v25);
  }

  v125 = [objc_alloc(MEMORY[0x277D011C0]) initWithFirstObject:@"Charging" secondObject:&unk_28459D290];
  v660[0] = v125;
  v126 = [objc_alloc(MEMORY[0x277D011C0]) initWithFirstObject:@"StaticMotion" secondObject:&unk_28459D2A8];
  v660[1] = v126;
  v127 = [objc_alloc(MEMORY[0x277D011C0]) initWithFirstObject:@"ScreenLock" secondObject:&unk_28459D2C0];
  v660[2] = v127;
  v128 = [objc_alloc(MEMORY[0x277D011C0]) initWithFirstObject:@"WiFiConnection" secondObject:&unk_28459D2D8];
  v660[3] = v128;
  v129 = [MEMORY[0x277CBEA60] arrayWithObjects:v660 count:4];

  v527 = [MEMORY[0x277CBEA80] currentCalendar];
  v528 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v523 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v520 = [v529 dateByAddingTimeInterval:-2419200.0];
  v615 = 0u;
  v614 = 0u;
  v613 = 0u;
  v612 = 0u;
  obj = v129;
  v521 = [obj countByEnumeratingWithState:&v612 objects:v659 count:16];
  if (v521)
  {
    v516 = *v613;
    *&v130 = 138412802;
    v513 = v130;
    do
    {
      v131 = 0;
      do
      {
        if (*v613 != v516)
        {
          v132 = v131;
          objc_enumerationMutation(obj);
          v131 = v132;
        }

        v517 = v131;
        v133 = *(*(&v612 + 1) + 8 * v131);
        v518 = objc_autoreleasePoolPush();
        v557 = [v133 firstObject];
        v134 = [v133 secondObject];
        v534 = [v134 integerValue];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v135 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
          {
            v341 = objc_opt_class();
            v342 = NSStringFromClass(v341);
            v343 = NSStringFromSelector(a2);
            *buf = v513;
            v629 = v342;
            v630 = 2112;
            v631 = v343;
            v632 = 2112;
            v633 = v557;
            _os_log_debug_impl(&dword_2304B3000, v135, OS_LOG_TYPE_DEBUG, "%@, %@, retrieving Biome events of type %@", buf, 0x20u);
          }
        }

        [v528 setDay:{0, v513}];
        v136 = [v527 dateByAddingComponents:v528 toDate:v530 options:0];
        [v523 setDay:0];
        v525 = [v527 dateByAddingComponents:v523 toDate:v530 options:0];
        v137 = [v525 earlierDate:v529];
        v138 = v137 == v525;

        if (v138)
        {
          v542 = 0;
          v139 = 0.0;
          v212 = v136;
          v515 = v525;
          while (1)
          {
            v514 = objc_autoreleasePoolPush();
            [v523 setDay:{objc_msgSend(v523, "day") + 3}];
            v526 = [v527 dateByAddingComponents:v523 toDate:v530 options:0];
            v533 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v515 endDate:v526];
            v606 = 0;
            v607 = &v606;
            v608 = 0x3032000000;
            v609 = __Block_byref_object_copy__47;
            v610 = __Block_byref_object_dispose__47;
            v611 = objc_opt_new();
            v213 = [v533 endDate];
            v214 = [v520 earlierDate:v213];
            v215 = v214 == v520;

            if (v215)
            {
              v605[0] = MEMORY[0x277D85DD0];
              v605[1] = 3221225472;
              v605[2] = __119__RTPlaceDataMetrics_calculateMLFeaturesUsingBiomeManager_intervalDictionary_startDate_endDate_createBucketedFeatures___block_invoke_1702;
              v605[3] = &unk_2788C90E8;
              v605[4] = &v606;
              [v524 enumerateEventsWithinDateInterval:v533 streamType:v534 handler:v605];
            }

            contexta = 1;
            v216 = v212;
            while (1)
            {
              v563 = v216;
              v217 = [v216 earlierDate:v529];
              v218 = v217 == v563;

              if (!v218)
              {
                break;
              }

              [v528 setDay:{objc_msgSend(v528, "day") + 1}];
              v553 = [v527 dateByAddingComponents:v528 toDate:v530 options:0];
              v566 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v563 endDate:v553];
              v545 = objc_opt_new();
              v603 = 0u;
              v604 = 0u;
              v601 = 0u;
              v602 = 0u;
              v219 = v607[5];
              v220 = [v219 countByEnumeratingWithState:&v601 objects:v658 count:16];
              if (v220)
              {
                v221 = *v602;
                do
                {
                  for (k = 0; k != v220; ++k)
                  {
                    if (*v602 != v221)
                    {
                      objc_enumerationMutation(v219);
                    }

                    v223 = *(*(&v601 + 1) + 8 * k);
                    v224 = [v223 startDate];
                    v225 = [v563 earlierDate:v224];
                    v226 = v225;
                    if (v225 == v563)
                    {
                      v227 = [v223 startDate];
                      v228 = [v227 earlierDate:v553];
                      v229 = [v223 startDate];
                      v230 = v228 == v229;

                      if (v230)
                      {
                        [v545 addObject:v223];
                      }
                    }

                    else
                    {
                    }
                  }

                  v220 = [v219 countByEnumeratingWithState:&v601 objects:v658 count:16];
                }

                while (v220);
              }

              v537 = [v545 count];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
              {
                v231 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
                {
                  v333 = objc_opt_class();
                  v334 = NSStringFromClass(v333);
                  v335 = NSStringFromSelector(a2);
                  v336 = [v545 count];
                  v337 = [v563 stringFromDate];
                  v338 = [v553 stringFromDate];
                  *buf = 138413570;
                  v629 = v334;
                  v630 = 2112;
                  v631 = v335;
                  v632 = 2048;
                  v633 = v336;
                  v634 = 2112;
                  v635 = v557;
                  v636 = 2112;
                  *v637 = v337;
                  *&v637[8] = 2112;
                  *&v637[10] = v338;
                  _os_log_debug_impl(&dword_2304B3000, v231, OS_LOG_TYPE_DEBUG, "%@, %@, retrieved %lu Biome events of type %@ between dates %@ -> %@", buf, 0x3Eu);
                }
              }

              if ([v545 count])
              {
                v595 = 0uLL;
                v596 = 0uLL;
                v593 = 0uLL;
                v594 = 0uLL;
                v232 = [v568 allKeys];
                v233 = [v232 countByEnumeratingWithState:&v593 objects:v656 count:16];
                if (v233)
                {
                  v234 = *v594;
                  do
                  {
                    for (m = 0; m != v233; ++m)
                    {
                      if (*v594 != v234)
                      {
                        objc_enumerationMutation(v232);
                      }

                      v236 = *(*(&v593 + 1) + 8 * m);
                      v237 = [v568 objectForKeyedSubscript:v236];
                      [v237 setObject:&unk_2845A1AB8 forKeyedSubscript:@"eventTotalDaily"];

                      v238 = [v568 objectForKeyedSubscript:v236];
                      [v238 setObject:&unk_2845A1AB8 forKeyedSubscript:@"eventLongestDaily"];

                      v239 = [v568 objectForKeyedSubscript:v236];
                      [v239 setObject:&unk_2845A1AB8 forKeyedSubscript:@"wifiTotalDaily"];

                      v240 = [v568 objectForKeyedSubscript:v236];
                      [v240 setObject:&unk_2845A1AB8 forKeyedSubscript:@"visitTotalDaily"];
                    }

                    v233 = [v232 countByEnumeratingWithState:&v593 objects:v656 count:16];
                  }

                  while (v233);
                }

                v591 = 0u;
                v592 = 0u;
                v589 = 0u;
                v590 = 0u;
                v555 = v545;
                v241 = [v555 countByEnumeratingWithState:&v589 objects:v655 count:16];
                if (v241)
                {
                  v242 = *v590;
                  do
                  {
                    v243 = v241;
                    for (n = 0; n != v243; ++n)
                    {
                      if (*v590 != v242)
                      {
                        objc_enumerationMutation(v555);
                      }

                      v245 = *(*(&v589 + 1) + 8 * n);
                      v560 = objc_autoreleasePoolPush();
                      [v245 duration];
                      v247 = v246;
                      v248 = [a1 labelAnEventInterval:v245 basedOnIntervalDict:v541];
                      v249 = [v541 objectForKeyedSubscript:v248];

                      if (v249)
                      {
                        v250 = MEMORY[0x277CCABB0];
                        v251 = [v568 objectForKeyedSubscript:v248];
                        v252 = [v251 objectForKeyedSubscript:@"eventTotalDaily"];
                        [v252 doubleValue];
                        v254 = v253;
                        [v245 duration];
                        v256 = [v250 numberWithDouble:v254 + v255];
                        v257 = [v568 objectForKeyedSubscript:v248];
                        [v257 setObject:v256 forKeyedSubscript:@"eventTotalDaily"];

                        [v245 duration];
                        v259 = v258;
                        v260 = [v568 objectForKeyedSubscript:v248];
                        v261 = [v260 objectForKeyedSubscript:@"eventLongestDaily"];
                        [v261 doubleValue];
                        v263 = v259 > v262;

                        if (v263)
                        {
                          v264 = MEMORY[0x277CCABB0];
                          [v245 duration];
                          v265 = [v264 numberWithDouble:?];
                          v266 = [v568 objectForKeyedSubscript:v248];
                          [v266 setObject:v265 forKeyedSubscript:@"eventLongestDaily"];
                        }

                        if ([v557 isEqual:@"WiFiConnection"])
                        {
                          v267 = [v566 intersectionWithDateInterval:v245];
                          v268 = v267;
                          if (v267)
                          {
                            v269 = [v267 endDate];
                            v270 = [v268 startDate];
                            [v269 timeIntervalSinceDate:v270];
                            v272 = v271;

                            v273 = MEMORY[0x277CCABB0];
                            v274 = [v568 objectForKeyedSubscript:v248];
                            v275 = [v274 objectForKeyedSubscript:@"wifiTotalDaily"];
                            [v275 doubleValue];
                            v277 = [v273 numberWithDouble:v272 + v276];
                            v278 = [v568 objectForKeyedSubscript:v248];
                            [v278 setObject:v277 forKeyedSubscript:@"wifiTotalDaily"];
                          }
                        }
                      }

                      objc_autoreleasePoolPop(v560);
                      v139 = v139 + v247;
                    }

                    v241 = [v555 countByEnumeratingWithState:&v589 objects:v655 count:16];
                  }

                  while (v241);
                }

                v587 = 0u;
                v588 = 0u;
                v585 = 0u;
                v586 = 0u;
                v279 = [v568 allKeys];
                v549 = [v279 countByEnumeratingWithState:&v585 objects:v654 count:16];
                v551 = v279;
                if (v549)
                {
                  v547 = *v586;
                  do
                  {
                    v561 = 0;
                    do
                    {
                      if (*v586 != v547)
                      {
                        objc_enumerationMutation(v551);
                      }

                      v280 = *(*(&v585 + 1) + 8 * v561);
                      v556 = objc_autoreleasePoolPush();
                      v281 = [v568 objectForKeyedSubscript:v280];
                      v282 = [v281 objectForKeyedSubscript:@"eventTotalDaily"];
                      [v282 doubleValue];
                      v284 = v283 > 0.0;

                      if (v284)
                      {
                        v285 = [v568 objectForKeyedSubscript:v280];
                        v286 = [v285 objectForKeyedSubscript:@"eventHappenedArray"];
                        [v286 addObject:&unk_2845A1A18];

                        v287 = [v568 objectForKeyedSubscript:v280];
                        v288 = [v287 objectForKeyedSubscript:@"eventTotalArray"];
                        v289 = MEMORY[0x277CCABB0];
                        v290 = [v568 objectForKeyedSubscript:v280];
                        v291 = [v290 objectForKeyedSubscript:@"eventTotalDaily"];
                        [v291 doubleValue];
                        v292 = [v289 numberWithDouble:?];
                        [v288 addObject:v292];

                        v293 = [v568 objectForKeyedSubscript:v280];
                        v294 = [v293 objectForKeyedSubscript:@"eventLongestArray"];
                        v295 = MEMORY[0x277CCABB0];
                        v296 = [v568 objectForKeyedSubscript:v280];
                        v297 = [v296 objectForKeyedSubscript:@"eventLongestDaily"];
                        [v297 doubleValue];
                        v298 = [v295 numberWithDouble:?];
                        [v294 addObject:v298];

                        if (![v557 isEqual:@"WiFiConnection"])
                        {
                          goto LABEL_132;
                        }

                        v583 = 0u;
                        v584 = 0u;
                        v581 = 0u;
                        v582 = 0u;
                        v299 = [v541 objectForKeyedSubscript:v280];
                        v300 = [v299 countByEnumeratingWithState:&v581 objects:v653 count:16];
                        if (v300)
                        {
                          v301 = *v582;
                          do
                          {
                            for (ii = 0; ii != v300; ++ii)
                            {
                              if (*v582 != v301)
                              {
                                objc_enumerationMutation(v299);
                              }

                              v303 = [v566 intersectionWithDateInterval:*(*(&v581 + 1) + 8 * ii)];
                              v304 = v303;
                              if (v303)
                              {
                                v305 = [v303 endDate];
                                v306 = [v304 startDate];
                                [v305 timeIntervalSinceDate:v306];
                                v308 = v307;

                                v309 = MEMORY[0x277CCABB0];
                                v310 = [v568 objectForKeyedSubscript:v280];
                                v311 = [v310 objectForKeyedSubscript:@"visitTotalDaily"];
                                [v311 doubleValue];
                                v313 = [v309 numberWithDouble:v308 + v312];
                                v314 = [v568 objectForKeyedSubscript:v280];
                                [v314 setObject:v313 forKeyedSubscript:@"visitTotalDaily"];
                              }
                            }

                            v300 = [v299 countByEnumeratingWithState:&v581 objects:v653 count:16];
                          }

                          while (v300);
                        }

                        v315 = [v568 objectForKeyedSubscript:v280];
                        v316 = [v315 objectForKeyedSubscript:@"wifiTotalDaily"];
                        [v316 doubleValue];
                        v318 = v317;

                        v319 = [v568 objectForKeyedSubscript:v280];
                        v320 = [v319 objectForKeyedSubscript:@"visitTotalDaily"];
                        [v320 doubleValue];
                        v322 = v321;

                        if (v318 <= 0.0 || v322 <= 0.0)
                        {
                          v323 = [v568 objectForKeyedSubscript:v280];
                          v324 = [v323 objectForKeyedSubscript:@"wifiStabilityArray"];
                          [v324 addObject:&unk_2845A1AB8];
                        }

                        else
                        {
                          v323 = [v568 objectForKeyedSubscript:v280];
                          v324 = [v323 objectForKeyedSubscript:@"wifiStabilityArray"];
                          v325 = [MEMORY[0x277CCABB0] numberWithDouble:v318 / v322];
                          [v324 addObject:v325];
                        }
                      }

                      else
                      {
                        v323 = [v568 objectForKeyedSubscript:v280];
                        v324 = [v323 objectForKeyedSubscript:@"eventHappenedArray"];
                        [v324 addObject:&unk_2845A1AB8];
                      }

LABEL_132:
                      objc_autoreleasePoolPop(v556);
                      v561 = v561 + 1;
                    }

                    while (v561 != v549);
                    v326 = [v551 countByEnumeratingWithState:&v585 objects:v654 count:16];
                    v549 = v326;
                  }

                  while (v326);
                }
              }

              else
              {
                v599 = 0uLL;
                v600 = 0uLL;
                v597 = 0uLL;
                v598 = 0uLL;
                v327 = [v568 allKeys];
                v328 = [v327 countByEnumeratingWithState:&v597 objects:v657 count:16];
                v551 = v327;
                if (v328)
                {
                  v329 = *v598;
                  do
                  {
                    for (jj = 0; jj != v328; ++jj)
                    {
                      if (*v598 != v329)
                      {
                        objc_enumerationMutation(v551);
                      }

                      v331 = [v568 objectForKeyedSubscript:*(*(&v597 + 1) + 8 * jj)];
                      v332 = [v331 objectForKeyedSubscript:@"eventHappenedArray"];
                      [v332 addObject:&unk_2845A1AB8];
                    }

                    v328 = [v551 countByEnumeratingWithState:&v597 objects:v657 count:16];
                  }

                  while (v328);
                }
              }

              v136 = v553;
              v542 += v537;
              v216 = v136;
              if (++contexta == 4)
              {
                goto LABEL_147;
              }
            }

            v136 = v563;
LABEL_147:
            v525 = v526;

            _Block_object_dispose(&v606, 8);
            objc_autoreleasePoolPop(v514);
            v339 = [v525 earlierDate:v529];
            v340 = v339 == v525;

            v212 = v136;
            v515 = v525;
            if (!v340)
            {
              goto LABEL_36;
            }
          }
        }

        v542 = 0;
        v139 = 0.0;
LABEL_36:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v140 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
          {
            v141 = objc_opt_class();
            v142 = NSStringFromClass(v141);
            v143 = NSStringFromSelector(a2);
            v144 = [v530 stringFromDate];
            v145 = [v529 stringFromDate];
            *buf = 138413826;
            v629 = v142;
            v630 = 2112;
            v631 = v143;
            v632 = 2112;
            v633 = v144;
            v634 = 2112;
            v635 = v145;
            v636 = 1024;
            *v637 = v542;
            *&v637[4] = 2112;
            *&v637[6] = v557;
            *&v637[14] = 2048;
            *&v637[16] = v139;
            _os_log_impl(&dword_2304B3000, v140, OS_LOG_TYPE_INFO, "%@, %@, in time period between %@ -> %@, fetched %d Biome events of type %@ with a cumulative duration of %.2f", buf, 0x44u);
          }
        }

        v579 = 0u;
        v580 = 0u;
        v577 = 0u;
        v578 = 0u;
        v532 = [v568 allKeys];
        v536 = [v532 countByEnumeratingWithState:&v577 objects:v652 count:16];
        if (v536)
        {
          v535 = *v578;
          do
          {
            for (kk = 0; kk != v536; ++kk)
            {
              if (*v578 != v535)
              {
                objc_enumerationMutation(v532);
              }

              v147 = *(*(&v577 + 1) + 8 * kk);
              context = objc_autoreleasePoolPush();
              v148 = [v568 objectForKeyedSubscript:v147];
              v562 = [v148 objectForKeyedSubscript:@"eventHappenedArray"];

              v149 = [v568 objectForKeyedSubscript:v147];
              v565 = [v149 objectForKeyedSubscript:@"eventTotalArray"];

              v150 = [v568 objectForKeyedSubscript:v147];
              v559 = [v150 objectForKeyedSubscript:@"eventLongestArray"];

              if ([v562 count])
              {
                v151 = MEMORY[0x277CCABB0];
                v152 = [RTPlaceDataMetrics meanOf:v562];
                [v152 doubleValue];
                v554 = [v151 numberWithDouble:?];
              }

              else
              {
                v554 = &unk_2845A19E8;
              }

              v153 = [v565 count];
              if (v153 == [v559 count] && objc_msgSend(v565, "count"))
              {
                v154 = MEMORY[0x277CCABB0];
                v155 = [RTPlaceDataMetrics medianOf:v565];
                [v155 doubleValue];
                v552 = [v154 numberWithDouble:?];

                v156 = MEMORY[0x277CCABB0];
                v157 = [RTPlaceDataMetrics meanOf:v565];
                [v157 doubleValue];
                v550 = [v156 numberWithDouble:?];

                v158 = MEMORY[0x277CCABB0];
                v159 = [RTPlaceDataMetrics standardDeviationOf:v565];
                [v159 doubleValue];
                v548 = [v158 numberWithDouble:?];

                v160 = MEMORY[0x277CCABB0];
                v161 = [RTPlaceDataMetrics medianOf:v559];
                [v161 doubleValue];
                v546 = [v160 numberWithDouble:?];

                v162 = MEMORY[0x277CCABB0];
                v163 = [RTPlaceDataMetrics meanOf:v559];
                [v163 doubleValue];
                v544 = [v162 numberWithDouble:?];

                v164 = MEMORY[0x277CCABB0];
                v165 = [RTPlaceDataMetrics standardDeviationOf:v559];
                [v165 doubleValue];
                v543 = [v164 numberWithDouble:?];
              }

              else
              {
                v550 = &unk_2845A19E8;
                v552 = &unk_2845A19E8;
                v546 = &unk_2845A19E8;
                v548 = &unk_2845A19E8;
                v543 = &unk_2845A19E8;
                v544 = &unk_2845A19E8;
              }

              if ([v557 isEqual:@"Charging"])
              {
                v166 = [v568 objectForKeyedSubscript:v147];
                [v166 setObject:v554 forKeyedSubscript:@"percentage_of_days_with_charging"];

                v167 = [v568 objectForKeyedSubscript:v147];
                [v167 setObject:v552 forKeyedSubscript:@"median_daily_total_charging_duration"];

                v168 = [v568 objectForKeyedSubscript:v147];
                [v168 setObject:v550 forKeyedSubscript:@"mean_daily_total_charging_duration"];

                v169 = [v568 objectForKeyedSubscript:v147];
                [v169 setObject:v548 forKeyedSubscript:@"SD_daily_total_charging_duration"];

                v170 = [v568 objectForKeyedSubscript:v147];
                [v170 setObject:v546 forKeyedSubscript:@"median_daily_longest_charging_duration"];

                v171 = [v568 objectForKeyedSubscript:v147];
                [v171 setObject:v544 forKeyedSubscript:@"mean_daily_longest_charging_duration"];

                v172 = [v568 objectForKeyedSubscript:v147];
                [v172 setObject:v543 forKeyedSubscript:@"SD_daily_longest_charging_duration"];
              }

              else if ([v557 isEqual:@"StaticMotion"])
              {
                v173 = [v568 objectForKeyedSubscript:v147];
                [v173 setObject:v554 forKeyedSubscript:@"percentage_of_days_with_staticMotion"];

                v174 = [v568 objectForKeyedSubscript:v147];
                [v174 setObject:v552 forKeyedSubscript:@"median_daily_total_static_motion_duration"];

                v175 = [v568 objectForKeyedSubscript:v147];
                [v175 setObject:v550 forKeyedSubscript:@"mean_daily_total_static_motion_duration"];

                v176 = [v568 objectForKeyedSubscript:v147];
                [v176 setObject:v548 forKeyedSubscript:@"SD_daily_total_static_motion_duration"];

                v177 = [v568 objectForKeyedSubscript:v147];
                [v177 setObject:v546 forKeyedSubscript:@"median_daily_longest_static_motion_duration"];

                v178 = [v568 objectForKeyedSubscript:v147];
                [v178 setObject:v544 forKeyedSubscript:@"mean_daily_longest_static_motion_duration"];

                v172 = [v568 objectForKeyedSubscript:v147];
                [v172 setObject:v543 forKeyedSubscript:@"SD_daily_longest_static_motion_duration"];
              }

              else if ([v557 isEqual:@"ScreenLock"])
              {
                v179 = [v568 objectForKeyedSubscript:v147];
                [v179 setObject:v554 forKeyedSubscript:@"percentage_of_days_with_screenLock"];

                v180 = [v568 objectForKeyedSubscript:v147];
                [v180 setObject:v552 forKeyedSubscript:@"median_daily_total_screen_lock_duration"];

                v181 = [v568 objectForKeyedSubscript:v147];
                [v181 setObject:v550 forKeyedSubscript:@"mean_daily_total_screen_lock_duration"];

                v182 = [v568 objectForKeyedSubscript:v147];
                [v182 setObject:v548 forKeyedSubscript:@"SD_daily_total_screen_lock_duration"];

                v183 = [v568 objectForKeyedSubscript:v147];
                [v183 setObject:v546 forKeyedSubscript:@"median_daily_longest_screen_lock_duration"];

                v184 = [v568 objectForKeyedSubscript:v147];
                [v184 setObject:v544 forKeyedSubscript:@"mean_daily_longest_screen_lock_duration"];

                v172 = [v568 objectForKeyedSubscript:v147];
                [v172 setObject:v543 forKeyedSubscript:@"SD_daily_longest_screen_lock_duration"];
              }

              else
              {
                if (![v557 isEqual:@"WiFiConnection"])
                {
                  goto LABEL_61;
                }

                v185 = [v568 objectForKeyedSubscript:v147];
                [v185 setObject:v554 forKeyedSubscript:@"percentage_of_days_with_uninterrupted_WiFi_connection"];

                v186 = [v568 objectForKeyedSubscript:v147];
                [v186 setObject:v552 forKeyedSubscript:@"median_daily_total_uninterrupted_WiFi_connection_duration"];

                v187 = [v568 objectForKeyedSubscript:v147];
                [v187 setObject:v550 forKeyedSubscript:@"mean_daily_total_uninterrupted_WiFi_connection_duration"];

                v188 = [v568 objectForKeyedSubscript:v147];
                [v188 setObject:v548 forKeyedSubscript:@"SD_daily_total_uninterrupted_WiFi_connection_duration"];

                v189 = [v568 objectForKeyedSubscript:v147];
                [v189 setObject:v546 forKeyedSubscript:@"median_daily_longest_uninterrupted_WiFi_connection_duration"];

                v190 = [v568 objectForKeyedSubscript:v147];
                [v190 setObject:v544 forKeyedSubscript:@"mean_daily_longest_uninterrupted_WiFi_connection_duration"];

                v191 = [v568 objectForKeyedSubscript:v147];
                [v191 setObject:v543 forKeyedSubscript:@"SD_daily_longest_uninterrupted_WiFi_connection_duration"];

                v192 = MEMORY[0x277CCABB0];
                v193 = [v568 objectForKeyedSubscript:v147];
                v194 = [v193 objectForKeyedSubscript:@"wifiStabilityArray"];
                v195 = [RTPlaceDataMetrics meanOf:v194];
                [v195 doubleValue];
                v196 = [v192 numberWithDouble:?];
                v197 = [v568 objectForKeyedSubscript:v147];
                [v197 setObject:v196 forKeyedSubscript:@"mean_daily_uninterrupted_WiFi_connection_stability_ratio"];

                v172 = [v568 objectForKeyedSubscript:v147];
                v198 = [v172 objectForKeyedSubscript:@"wifiStabilityArray"];
                [v198 removeAllObjects];
              }

LABEL_61:
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v199 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                if (os_log_type_enabled(v199, OS_LOG_TYPE_INFO))
                {
                  v200 = objc_opt_class();
                  v201 = NSStringFromClass(v200);
                  v202 = NSStringFromSelector(a2);
                  v203 = [v562 count];
                  v204 = [v562 valueForKeyPath:@"@sum.self"];
                  v205 = [v565 valueForKeyPath:@"@sum.self"];
                  *buf = 138415618;
                  v629 = v201;
                  v630 = 2112;
                  v631 = v202;
                  v632 = 2112;
                  v633 = v557;
                  v634 = 2112;
                  v635 = v147;
                  v636 = 2048;
                  *v637 = v203;
                  *&v637[8] = 2112;
                  *&v637[10] = v204;
                  *&v637[18] = 2112;
                  *&v637[20] = v554;
                  v638 = 2112;
                  v639 = v205;
                  v640 = 2112;
                  v641 = v552;
                  v642 = 2112;
                  v643 = v550;
                  v644 = 2112;
                  v645 = v548;
                  v646 = 2112;
                  v647 = v546;
                  v648 = 2112;
                  v649 = v544;
                  v650 = 2112;
                  v651 = v543;
                  _os_log_impl(&dword_2304B3000, v199, OS_LOG_TYPE_INFO, "%@, %@, %@ stats for place with identifier, %@, number of days considered, %lu, number of days with data, %@, percentage of days with data, %@, cumulative event value, %@, daily total stats, median, %@, mean, %@, std, %@, daily longest duration stats, median, %@, mean, %@, std, %@", buf, 0x8Eu);
                }
              }

              v206 = [v568 objectForKeyedSubscript:v147];
              v207 = [v206 objectForKeyedSubscript:@"eventHappenedArray"];
              [v207 removeAllObjects];

              v208 = [v568 objectForKeyedSubscript:v147];
              v209 = [v208 objectForKeyedSubscript:@"eventLongestArray"];
              [v209 removeAllObjects];

              v210 = [v568 objectForKeyedSubscript:v147];
              v211 = [v210 objectForKeyedSubscript:@"eventTotalArray"];
              [v211 removeAllObjects];

              objc_autoreleasePoolPop(context);
            }

            v536 = [v532 countByEnumeratingWithState:&v577 objects:v652 count:16];
          }

          while (v536);
        }

        objc_autoreleasePoolPop(v518);
        v131 = v517 + 1;
      }

      while (v517 + 1 != v521);
      v344 = [obj countByEnumeratingWithState:&v612 objects:v659 count:16];
      v521 = v344;
    }

    while (v344);
  }

  v575 = 0u;
  v576 = 0u;
  v573 = 0u;
  v574 = 0u;
  v345 = [v568 allKeys];
  v346 = [v345 countByEnumeratingWithState:&v573 objects:v627 count:16];
  if (v346)
  {
    v347 = *v574;
    do
    {
      for (mm = 0; mm != v346; ++mm)
      {
        if (*v574 != v347)
        {
          objc_enumerationMutation(v345);
        }

        v349 = *(*(&v573 + 1) + 8 * mm);
        v350 = [v568 objectForKeyedSubscript:v349];
        [v350 removeObjectForKey:@"eventHappenedArray"];

        v351 = [v568 objectForKeyedSubscript:v349];
        [v351 removeObjectForKey:@"eventLongestArray"];

        v352 = [v568 objectForKeyedSubscript:v349];
        [v352 removeObjectForKey:@"eventTotalArray"];

        v353 = [v568 objectForKeyedSubscript:v349];
        [v353 removeObjectForKey:@"wifiStabilityArray"];

        v354 = [v568 objectForKeyedSubscript:v349];
        [v354 removeObjectForKey:@"eventTotalDaily"];

        v355 = [v568 objectForKeyedSubscript:v349];
        [v355 removeObjectForKey:@"eventLongestDaily"];

        v356 = [v568 objectForKeyedSubscript:v349];
        [v356 removeObjectForKey:@"wifiTotalDaily"];

        v357 = [v568 objectForKeyedSubscript:v349];
        [v357 removeObjectForKey:@"visitTotalDaily"];
      }

      v346 = [v345 countByEnumeratingWithState:&v573 objects:v627 count:16];
    }

    while (v346);
  }

  if (v522)
  {
    v571 = 0u;
    v572 = 0u;
    v569 = 0u;
    v570 = 0u;
    v358 = [v568 allKeys];
    v567 = [v358 countByEnumeratingWithState:&v569 objects:v626 count:16];
    if (v567)
    {
      v564 = *v570;
      do
      {
        for (nn = 0; nn != v567; ++nn)
        {
          if (*v570 != v564)
          {
            objc_enumerationMutation(v358);
          }

          v360 = *(*(&v569 + 1) + 8 * nn);
          v361 = [v568 objectForKeyedSubscript:v360];
          v362 = [v361 objectForKeyedSubscript:@"percentage_of_days_with_charging"];
          v363 = +[RTPlaceDataMetrics binArrayPercentage];
          v364 = [RTMetric binForNumber:v362 bins:v363];
          v365 = [v568 objectForKeyedSubscript:v360];
          [v365 setObject:v364 forKeyedSubscript:@"percentage_of_days_with_charging_bucketed"];

          v366 = [v568 objectForKeyedSubscript:v360];
          v367 = [v366 objectForKeyedSubscript:@"median_daily_total_charging_duration"];
          v368 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v369 = [RTMetric binForNumber:v367 bins:v368];
          v370 = [v568 objectForKeyedSubscript:v360];
          [v370 setObject:v369 forKeyedSubscript:@"median_daily_total_charging_duration_bucketed"];

          v371 = [v568 objectForKeyedSubscript:v360];
          v372 = [v371 objectForKeyedSubscript:@"mean_daily_total_charging_duration"];
          v373 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v374 = [RTMetric binForNumber:v372 bins:v373];
          v375 = [v568 objectForKeyedSubscript:v360];
          [v375 setObject:v374 forKeyedSubscript:@"mean_daily_total_charging_duration_bucketed"];

          v376 = [v568 objectForKeyedSubscript:v360];
          v377 = [v376 objectForKeyedSubscript:@"SD_daily_total_charging_duration"];
          v378 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v379 = [RTMetric binForNumber:v377 bins:v378];
          v380 = [v568 objectForKeyedSubscript:v360];
          [v380 setObject:v379 forKeyedSubscript:@"SD_daily_total_charging_duration_bucketed"];

          v381 = [v568 objectForKeyedSubscript:v360];
          v382 = [v381 objectForKeyedSubscript:@"median_daily_longest_charging_duration"];
          v383 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v384 = [RTMetric binForNumber:v382 bins:v383];
          v385 = [v568 objectForKeyedSubscript:v360];
          [v385 setObject:v384 forKeyedSubscript:@"median_daily_longest_charging_duration_bucketed"];

          v386 = [v568 objectForKeyedSubscript:v360];
          v387 = [v386 objectForKeyedSubscript:@"mean_daily_longest_charging_duration"];
          v388 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v389 = [RTMetric binForNumber:v387 bins:v388];
          v390 = [v568 objectForKeyedSubscript:v360];
          [v390 setObject:v389 forKeyedSubscript:@"mean_daily_longest_charging_duration_bucketed"];

          v391 = [v568 objectForKeyedSubscript:v360];
          v392 = [v391 objectForKeyedSubscript:@"SD_daily_longest_charging_duration"];
          v393 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v394 = [RTMetric binForNumber:v392 bins:v393];
          v395 = [v568 objectForKeyedSubscript:v360];
          [v395 setObject:v394 forKeyedSubscript:@"SD_daily_longest_charging_duration_bucketed"];

          v396 = [v568 objectForKeyedSubscript:v360];
          v397 = [v396 objectForKeyedSubscript:@"percentage_of_days_with_staticMotion"];
          v398 = +[RTPlaceDataMetrics binArrayPercentage];
          v399 = [RTMetric binForNumber:v397 bins:v398];
          v400 = [v568 objectForKeyedSubscript:v360];
          [v400 setObject:v399 forKeyedSubscript:@"percentage_of_days_with_staticMotion_bucketed"];

          v401 = [v568 objectForKeyedSubscript:v360];
          v402 = [v401 objectForKeyedSubscript:@"median_daily_total_static_motion_duration"];
          v403 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v404 = [RTMetric binForNumber:v402 bins:v403];
          v405 = [v568 objectForKeyedSubscript:v360];
          [v405 setObject:v404 forKeyedSubscript:@"median_daily_total_static_motion_duration_bucketed"];

          v406 = [v568 objectForKeyedSubscript:v360];
          v407 = [v406 objectForKeyedSubscript:@"mean_daily_total_static_motion_duration"];
          v408 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v409 = [RTMetric binForNumber:v407 bins:v408];
          v410 = [v568 objectForKeyedSubscript:v360];
          [v410 setObject:v409 forKeyedSubscript:@"mean_daily_total_static_motion_duration_bucketed"];

          v411 = [v568 objectForKeyedSubscript:v360];
          v412 = [v411 objectForKeyedSubscript:@"SD_daily_total_static_motion_duration"];
          v413 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v414 = [RTMetric binForNumber:v412 bins:v413];
          v415 = [v568 objectForKeyedSubscript:v360];
          [v415 setObject:v414 forKeyedSubscript:@"SD_daily_total_static_motion_duration_bucketed"];

          v416 = [v568 objectForKeyedSubscript:v360];
          v417 = [v416 objectForKeyedSubscript:@"median_daily_longest_static_motion_duration"];
          v418 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v419 = [RTMetric binForNumber:v417 bins:v418];
          v420 = [v568 objectForKeyedSubscript:v360];
          [v420 setObject:v419 forKeyedSubscript:@"median_daily_longest_static_motion_duration_bucketed"];

          v421 = [v568 objectForKeyedSubscript:v360];
          v422 = [v421 objectForKeyedSubscript:@"mean_daily_longest_static_motion_duration"];
          v423 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v424 = [RTMetric binForNumber:v422 bins:v423];
          v425 = [v568 objectForKeyedSubscript:v360];
          [v425 setObject:v424 forKeyedSubscript:@"mean_daily_longest_static_motion_duration_bucketed"];

          v426 = [v568 objectForKeyedSubscript:v360];
          v427 = [v426 objectForKeyedSubscript:@"SD_daily_longest_static_motion_duration"];
          v428 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v429 = [RTMetric binForNumber:v427 bins:v428];
          v430 = [v568 objectForKeyedSubscript:v360];
          [v430 setObject:v429 forKeyedSubscript:@"SD_daily_longest_static_motion_duration_bucketed"];

          v431 = [v568 objectForKeyedSubscript:v360];
          v432 = [v431 objectForKeyedSubscript:@"percentage_of_days_with_screenLock"];
          v433 = +[RTPlaceDataMetrics binArrayPercentage];
          v434 = [RTMetric binForNumber:v432 bins:v433];
          v435 = [v568 objectForKeyedSubscript:v360];
          [v435 setObject:v434 forKeyedSubscript:@"percentage_of_days_with_screenLock_bucketed"];

          v436 = [v568 objectForKeyedSubscript:v360];
          v437 = [v436 objectForKeyedSubscript:@"median_daily_total_screen_lock_duration"];
          v438 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v439 = [RTMetric binForNumber:v437 bins:v438];
          v440 = [v568 objectForKeyedSubscript:v360];
          [v440 setObject:v439 forKeyedSubscript:@"median_daily_total_screen_lock_duration_bucketed"];

          v441 = [v568 objectForKeyedSubscript:v360];
          v442 = [v441 objectForKeyedSubscript:@"mean_daily_total_screen_lock_duration"];
          v443 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v444 = [RTMetric binForNumber:v442 bins:v443];
          v445 = [v568 objectForKeyedSubscript:v360];
          [v445 setObject:v444 forKeyedSubscript:@"mean_daily_total_screen_lock_duration_bucketed"];

          v446 = [v568 objectForKeyedSubscript:v360];
          v447 = [v446 objectForKeyedSubscript:@"SD_daily_total_screen_lock_duration"];
          v448 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v449 = [RTMetric binForNumber:v447 bins:v448];
          v450 = [v568 objectForKeyedSubscript:v360];
          [v450 setObject:v449 forKeyedSubscript:@"SD_daily_total_screen_lock_duration_bucketed"];

          v451 = [v568 objectForKeyedSubscript:v360];
          v452 = [v451 objectForKeyedSubscript:@"median_daily_longest_screen_lock_duration"];
          v453 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v454 = [RTMetric binForNumber:v452 bins:v453];
          v455 = [v568 objectForKeyedSubscript:v360];
          [v455 setObject:v454 forKeyedSubscript:@"median_daily_longest_screen_lock_duration_bucketed"];

          v456 = [v568 objectForKeyedSubscript:v360];
          v457 = [v456 objectForKeyedSubscript:@"mean_daily_longest_screen_lock_duration"];
          v458 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v459 = [RTMetric binForNumber:v457 bins:v458];
          v460 = [v568 objectForKeyedSubscript:v360];
          [v460 setObject:v459 forKeyedSubscript:@"mean_daily_longest_screen_lock_duration_bucketed"];

          v461 = [v568 objectForKeyedSubscript:v360];
          v462 = [v461 objectForKeyedSubscript:@"SD_daily_longest_screen_lock_duration"];
          v463 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v464 = [RTMetric binForNumber:v462 bins:v463];
          v465 = [v568 objectForKeyedSubscript:v360];
          [v465 setObject:v464 forKeyedSubscript:@"SD_daily_longest_screen_lock_duration_bucketed"];

          v466 = [v568 objectForKeyedSubscript:v360];
          v467 = [v466 objectForKeyedSubscript:@"percentage_of_days_with_uninterrupted_WiFi_connection"];
          v468 = +[RTPlaceDataMetrics binArrayPercentage];
          v469 = [RTMetric binForNumber:v467 bins:v468];
          v470 = [v568 objectForKeyedSubscript:v360];
          [v470 setObject:v469 forKeyedSubscript:@"percentage_of_days_with_uninterrupted_WiFi_connection_bucketed"];

          v471 = [v568 objectForKeyedSubscript:v360];
          v472 = [v471 objectForKeyedSubscript:@"median_daily_total_uninterrupted_WiFi_connection_duration"];
          v473 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v474 = [RTMetric binForNumber:v472 bins:v473];
          v475 = [v568 objectForKeyedSubscript:v360];
          [v475 setObject:v474 forKeyedSubscript:@"median_daily_total_uninterrupted_WiFi_connection_duration_bucketed"];

          v476 = [v568 objectForKeyedSubscript:v360];
          v477 = [v476 objectForKeyedSubscript:@"mean_daily_total_uninterrupted_WiFi_connection_duration"];
          v478 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v479 = [RTMetric binForNumber:v477 bins:v478];
          v480 = [v568 objectForKeyedSubscript:v360];
          [v480 setObject:v479 forKeyedSubscript:@"mean_daily_total_uninterrupted_WiFi_connection_duration_bucketed"];

          v481 = [v568 objectForKeyedSubscript:v360];
          v482 = [v481 objectForKeyedSubscript:@"SD_daily_total_uninterrupted_WiFi_connection_duration"];
          v483 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v484 = [RTMetric binForNumber:v482 bins:v483];
          v485 = [v568 objectForKeyedSubscript:v360];
          [v485 setObject:v484 forKeyedSubscript:@"SD_daily_total_uninterrupted_WiFi_connection_duration_bucketed"];

          v486 = [v568 objectForKeyedSubscript:v360];
          v487 = [v486 objectForKeyedSubscript:@"median_daily_longest_uninterrupted_WiFi_connection_duration"];
          v488 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v489 = [RTMetric binForNumber:v487 bins:v488];
          v490 = [v568 objectForKeyedSubscript:v360];
          [v490 setObject:v489 forKeyedSubscript:@"median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed"];

          v491 = [v568 objectForKeyedSubscript:v360];
          v492 = [v491 objectForKeyedSubscript:@"mean_daily_longest_uninterrupted_WiFi_connection_duration"];
          v493 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v494 = [RTMetric binForNumber:v492 bins:v493];
          v495 = [v568 objectForKeyedSubscript:v360];
          [v495 setObject:v494 forKeyedSubscript:@"mean_daily_longest_uninterrupted_WiFi_connection_duration_bucketed"];

          v496 = [v568 objectForKeyedSubscript:v360];
          v497 = [v496 objectForKeyedSubscript:@"SD_daily_longest_uninterrupted_WiFi_connection_duration"];
          v498 = +[RTPlaceDataMetrics binArrayDuetEventDuration];
          v499 = [RTMetric binForNumber:v497 bins:v498];
          v500 = [v568 objectForKeyedSubscript:v360];
          [v500 setObject:v499 forKeyedSubscript:@"SD_daily_longest_uninterrupted_WiFi_connection_duration_bucketed"];

          v501 = [v568 objectForKeyedSubscript:v360];
          v502 = [v501 objectForKeyedSubscript:@"mean_daily_uninterrupted_WiFi_connection_stability_ratio"];
          v503 = +[RTPlaceDataMetrics binArrayPercentage];
          v504 = [RTMetric binForNumber:v502 bins:v503];
          v505 = [v568 objectForKeyedSubscript:v360];
          [v505 setObject:v504 forKeyedSubscript:@"mean_daily_uninterrupted_WiFi_connection_stability_ratio_bucketed"];
        }

        v567 = [v358 countByEnumeratingWithState:&v569 objects:v626 count:16];
      }

      while (v567);
    }
  }

  v506 = v568;

LABEL_15:

  return v568;
}

BOOL __119__RTPlaceDataMetrics_calculateMLFeaturesUsingBiomeManager_intervalDictionary_startDate_endDate_createBucketedFeatures___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 endDate];
  v4 = [v3 compare:*(a1 + 32)] != -1;

  return v4;
}

@end