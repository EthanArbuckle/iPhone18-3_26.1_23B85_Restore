@interface RTStateModelAlgorithms
+ (double)timeByAddingUnit:(unint64_t)a3 value:(int64_t)a4 toTime:(double)a5;
+ (id)adjustedDate:(id)a3 betweenMinDate:(id)a4 maxDate:(id)a5 strideDays:(unint64_t)a6;
+ (id)adjustedDate:(id)a3 betweenMinDate:(id)a4 maxDate:(id)a5 strideDays:(unint64_t)a6 outDeltaDays:(int64_t *)a7;
+ (id)adjustedDateInterval:(id)a3 betweenMinDate:(id)a4 maxDate:(id)a5 strideDays:(unint64_t)a6;
+ (id)bucketizeDates:(id)a3 bucketInterval:(double)a4 latestDate:(id)a5;
@end

@implementation RTStateModelAlgorithms

+ (id)bucketizeDates:(id)a3 bucketInterval:(double)a4 latestDate:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if (!v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "+[RTStateModelAlgorithms bucketizeDates:bucketInterval:latestDate:]";
      v46 = 1024;
      v47 = 30;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dates (in %s:%d)", buf, 0x12u);
    }
  }

  if ([v7 count])
  {
    if (!v8)
    {
      v8 = [v7 valueForKeyPath:@"@max.self"];
    }

    v10 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v33 = v7;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v39;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v8 timeIntervalSinceDate:*(*(&v38 + 1) + 8 * i)];
          v17 = v16;
          v18 = [MEMORY[0x277CCABB0] numberWithInteger:(v16 / a4)];
          v19 = [v10 objectForKey:v18];
          if (!v19)
          {
            v19 = objc_opt_new();
            [v10 setObject:v19 forKey:v18];
          }

          [v19 timeIntervalToLatestDateSum];
          [v19 setTimeIntervalToLatestDateSum:v17 + v20];
          [v19 timeIntervalToLatestDateSum2];
          [v19 setTimeIntervalToLatestDateSum2:v21 + v17 * v17];
          [v19 setNumOfDates:{objc_msgSend(v19, "numOfDates") + 1}];
        }

        v13 = [v11 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v13);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v22 = v10;
    v23 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v35;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [v22 objectForKeyedSubscript:*(*(&v34 + 1) + 8 * j)];
          [v27 timeIntervalToLatestDateSum];
          v29 = v28 / [v27 numOfDates];
          v30 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v8 sinceDate:-v29];
          [v27 setAverageDate:v30];

          [v27 timeIntervalToLatestDateSum2];
          [v27 setStdDeviation:{sqrt(v31 / objc_msgSend(v27, "numOfDates") - v29 * v29)}];
        }

        v24 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v24);
    }

    v7 = v33;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)adjustedDate:(id)a3 betweenMinDate:(id)a4 maxDate:(id)a5 strideDays:(unint64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [objc_opt_class() adjustedDate:v11 betweenMinDate:v10 maxDate:v9 strideDays:a6 outDeltaDays:0];

  return v12;
}

+ (id)adjustedDate:(id)a3 betweenMinDate:(id)a4 maxDate:(id)a5 strideDays:(unint64_t)a6 outDeltaDays:(int64_t *)a7
{
  v32 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315394;
      v29 = "+[RTStateModelAlgorithms adjustedDate:betweenMinDate:maxDate:strideDays:outDeltaDays:]";
      v30 = 1024;
      v31 = 88;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", &v28, 0x12u);
    }

    if (v12)
    {
LABEL_3:
      if (v13)
      {
        goto LABEL_4;
      }

LABEL_21:
      v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v28 = 136315394;
        v29 = "+[RTStateModelAlgorithms adjustedDate:betweenMinDate:maxDate:strideDays:outDeltaDays:]";
        v30 = 1024;
        v31 = 90;
        _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: maxDate (in %s:%d)", &v28, 0x12u);
      }

      v14 = 0;
      goto LABEL_30;
    }
  }

  v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v28 = 136315394;
    v29 = "+[RTStateModelAlgorithms adjustedDate:betweenMinDate:maxDate:strideDays:outDeltaDays:]";
    v30 = 1024;
    v31 = 89;
    _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: minDate (in %s:%d)", &v28, 0x12u);
  }

  if (!v13)
  {
    goto LABEL_21;
  }

LABEL_4:
  v14 = 0;
  if (v11 && v12)
  {
    if (a6 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = a6;
    }

    v16 = [MEMORY[0x277CBEA80] currentCalendar];
    v17 = [v11 startOfDay];
    v18 = [v12 startOfDay];
    v19 = [v16 components:16 fromDate:v17 toDate:v18 options:0];
    v20 = [v19 day];

    v21 = (v15 + v20 - 1) / v15 * v15;
    v22 = [v11 dateByAddingUnit:16 value:v21];
    if ([v22 isBeforeDate:v12])
    {
      v23 = [v22 dateByAddingUnit:16 value:v15];

      v21 += v15;
      v22 = v23;
    }

    if ([v22 isBeforeDate:v12])
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v28 = 136315394;
        v29 = "+[RTStateModelAlgorithms adjustedDate:betweenMinDate:maxDate:strideDays:outDeltaDays:]";
        v30 = 1024;
        v31 = 133;
        _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "How did this happen? (in %s:%d)", &v28, 0x12u);
      }
    }

    else if ([v22 isOnOrBefore:v13])
    {
      if (a7)
      {
        *a7 = v21;
      }

      v14 = v22;
      goto LABEL_29;
    }

    v14 = 0;
LABEL_29:

LABEL_30:
  }

  return v14;
}

+ (id)adjustedDateInterval:(id)a3 betweenMinDate:(id)a4 maxDate:(id)a5 strideDays:(unint64_t)a6
{
  v9 = a3;
  v21 = 0;
  v10 = a5;
  v11 = a4;
  v12 = objc_opt_class();
  v13 = [v9 startDate];
  v14 = [v12 adjustedDate:v13 betweenMinDate:v11 maxDate:v10 strideDays:a6 outDeltaDays:&v21];

  if (v14)
  {
    v15 = objc_opt_new();
    [v15 setDay:v21];
    v16 = [MEMORY[0x277CBEA80] currentCalendar];
    v17 = [v9 endDate];
    v18 = [v16 dateByAddingComponents:v15 toDate:v17 options:0];

    v19 = 0;
    if (([v14 isAfterDate:v18] & 1) == 0)
    {
      v19 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v18];
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (double)timeByAddingUnit:(unint64_t)a3 value:(int64_t)a4 toTime:(double)a5
{
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a5];
  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [v8 dateByAddingUnit:a3 value:a4 toDate:v7 options:0];

  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  return v11;
}

@end