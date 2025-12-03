@interface MOTimeTagInterval
- (MOTimeTagInterval)initWithTimeTag:(unint64_t)tag dateInterval:(id)interval;
- (double)overlapsScoreForStartDate:(id)date endDate:(id)endDate;
- (id)description;
@end

@implementation MOTimeTagInterval

- (MOTimeTagInterval)initWithTimeTag:(unint64_t)tag dateInterval:(id)interval
{
  intervalCopy = interval;
  v11.receiver = self;
  v11.super_class = MOTimeTagInterval;
  v8 = [(MOTimeTagInterval *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_timetag = tag;
    objc_storeStrong(&v8->_dateInterval, interval);
  }

  return v9;
}

- (double)overlapsScoreForStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    dateInterval = [(MOTimeTagInterval *)self dateInterval];
    startDate = [dateInterval startDate];
    dateInterval2 = [(MOTimeTagInterval *)self dateInterval];
    endDate = [dateInterval2 endDate];
    v35 = 138413058;
    v36 = dateCopy;
    v37 = 2112;
    v38 = endDateCopy;
    v39 = 2112;
    v40 = startDate;
    v41 = 2112;
    v42 = endDate;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "overlapsScoreForStartDate, startDate, %@, endDate, %@, self.startDate, %@, self.endDate, %@", &v35, 0x2Au);
  }

  if (!endDateCopy || [dateCopy isEqualToDate:endDateCopy])
  {
    goto LABEL_9;
  }

  if ([dateCopy isAfterDate:endDateCopy])
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      dateInterval3 = [(MOTimeTagInterval *)self dateInterval];
      startDate2 = [dateInterval3 startDate];
      dateInterval4 = [(MOTimeTagInterval *)self dateInterval];
      endDate2 = [dateInterval4 endDate];
      v35 = 138413058;
      v36 = dateCopy;
      v37 = 2112;
      v38 = endDateCopy;
      v39 = 2112;
      v40 = startDate2;
      v41 = 2112;
      v42 = endDate2;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "overlapsScoreForStartDate, invalid time range, startDate, %@, endDate, %@, self.startDate, %@, self.endDate, %@", &v35, 0x2Au);
    }

LABEL_9:
    dateInterval5 = [(MOTimeTagInterval *)self dateInterval];
    v11 = [dateInterval5 containsDate:dateCopy];

    if (v11)
    {
      v12 = 1.0;
    }

    else
    {
      v12 = 0.0;
    }

    goto LABEL_12;
  }

  v14 = [[NSDateInterval alloc] initWithStartDate:dateCopy endDate:endDateCopy];
  [v14 duration];
  v12 = 0.0;
  if (v15 > 0.0)
  {
    dateInterval6 = [(MOTimeTagInterval *)self dateInterval];
    v17 = [dateInterval6 intersectsDateInterval:v14];

    if (v17)
    {
      dateInterval7 = [(MOTimeTagInterval *)self dateInterval];
      v19 = [dateInterval7 intersectionWithDateInterval:v14];
      [v19 duration];
      v21 = v20;

      [v14 duration];
      v23 = v22 - v21;
      [v14 duration];
      v25 = v21 / v24;
      if (v25 > 0.5 && v23 < 1800.0)
      {
        v12 = 1.0;
      }

      else
      {
        v12 = v25;
      }
    }
  }

LABEL_12:
  return v12;
}

- (id)description
{
  v3 = [MOTime timeStringFromTimeTag:[(MOTimeTagInterval *)self timetag]];
  dateInterval = [(MOTimeTagInterval *)self dateInterval];
  v5 = [NSString stringWithFormat:@"Interval: timetag, %@, interval, %@", v3, dateInterval];

  return v5;
}

@end