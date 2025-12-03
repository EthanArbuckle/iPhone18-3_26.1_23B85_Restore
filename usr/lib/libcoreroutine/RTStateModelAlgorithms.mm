@interface RTStateModelAlgorithms
+ (double)timeByAddingUnit:(unint64_t)unit value:(int64_t)value toTime:(double)time;
+ (id)adjustedDate:(id)date betweenMinDate:(id)minDate maxDate:(id)maxDate strideDays:(unint64_t)days;
+ (id)adjustedDate:(id)date betweenMinDate:(id)minDate maxDate:(id)maxDate strideDays:(unint64_t)days outDeltaDays:(int64_t *)deltaDays;
+ (id)adjustedDateInterval:(id)interval betweenMinDate:(id)date maxDate:(id)maxDate strideDays:(unint64_t)days;
+ (id)bucketizeDates:(id)dates bucketInterval:(double)interval latestDate:(id)date;
@end

@implementation RTStateModelAlgorithms

+ (id)bucketizeDates:(id)dates bucketInterval:(double)interval latestDate:(id)date
{
  v48 = *MEMORY[0x277D85DE8];
  datesCopy = dates;
  dateCopy = date;
  if (!datesCopy)
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

  if ([datesCopy count])
  {
    if (!dateCopy)
    {
      dateCopy = [datesCopy valueForKeyPath:@"@max.self"];
    }

    v10 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v33 = datesCopy;
    v11 = datesCopy;
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

          [dateCopy timeIntervalSinceDate:*(*(&v38 + 1) + 8 * i)];
          v17 = v16;
          v18 = [MEMORY[0x277CCABB0] numberWithInteger:(v16 / interval)];
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
          v30 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:-v29];
          [v27 setAverageDate:v30];

          [v27 timeIntervalToLatestDateSum2];
          [v27 setStdDeviation:{sqrt(v31 / objc_msgSend(v27, "numOfDates") - v29 * v29)}];
        }

        v24 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v24);
    }

    datesCopy = v33;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)adjustedDate:(id)date betweenMinDate:(id)minDate maxDate:(id)maxDate strideDays:(unint64_t)days
{
  maxDateCopy = maxDate;
  minDateCopy = minDate;
  dateCopy = date;
  v12 = [objc_opt_class() adjustedDate:dateCopy betweenMinDate:minDateCopy maxDate:maxDateCopy strideDays:days outDeltaDays:0];

  return v12;
}

+ (id)adjustedDate:(id)date betweenMinDate:(id)minDate maxDate:(id)maxDate strideDays:(unint64_t)days outDeltaDays:(int64_t *)deltaDays
{
  v32 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  minDateCopy = minDate;
  maxDateCopy = maxDate;
  if (dateCopy)
  {
    if (minDateCopy)
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

    if (minDateCopy)
    {
LABEL_3:
      if (maxDateCopy)
      {
        goto LABEL_4;
      }

LABEL_21:
      currentCalendar = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(currentCalendar, OS_LOG_TYPE_ERROR))
      {
        v28 = 136315394;
        v29 = "+[RTStateModelAlgorithms adjustedDate:betweenMinDate:maxDate:strideDays:outDeltaDays:]";
        v30 = 1024;
        v31 = 90;
        _os_log_error_impl(&dword_2304B3000, currentCalendar, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: maxDate (in %s:%d)", &v28, 0x12u);
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

  if (!maxDateCopy)
  {
    goto LABEL_21;
  }

LABEL_4:
  v14 = 0;
  if (dateCopy && minDateCopy)
  {
    if (days <= 1)
    {
      daysCopy = 1;
    }

    else
    {
      daysCopy = days;
    }

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    startOfDay = [dateCopy startOfDay];
    startOfDay2 = [minDateCopy startOfDay];
    v19 = [currentCalendar components:16 fromDate:startOfDay toDate:startOfDay2 options:0];
    v20 = [v19 day];

    v21 = (daysCopy + v20 - 1) / daysCopy * daysCopy;
    v22 = [dateCopy dateByAddingUnit:16 value:v21];
    if ([v22 isBeforeDate:minDateCopy])
    {
      v23 = [v22 dateByAddingUnit:16 value:daysCopy];

      v21 += daysCopy;
      v22 = v23;
    }

    if ([v22 isBeforeDate:minDateCopy])
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

    else if ([v22 isOnOrBefore:maxDateCopy])
    {
      if (deltaDays)
      {
        *deltaDays = v21;
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

+ (id)adjustedDateInterval:(id)interval betweenMinDate:(id)date maxDate:(id)maxDate strideDays:(unint64_t)days
{
  intervalCopy = interval;
  v21 = 0;
  maxDateCopy = maxDate;
  dateCopy = date;
  v12 = objc_opt_class();
  startDate = [intervalCopy startDate];
  v14 = [v12 adjustedDate:startDate betweenMinDate:dateCopy maxDate:maxDateCopy strideDays:days outDeltaDays:&v21];

  if (v14)
  {
    v15 = objc_opt_new();
    [v15 setDay:v21];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    endDate = [intervalCopy endDate];
    v18 = [currentCalendar dateByAddingComponents:v15 toDate:endDate options:0];

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

+ (double)timeByAddingUnit:(unint64_t)unit value:(int64_t)value toTime:(double)time
{
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:time];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [currentCalendar dateByAddingUnit:unit value:value toDate:v7 options:0];

  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  return v11;
}

@end