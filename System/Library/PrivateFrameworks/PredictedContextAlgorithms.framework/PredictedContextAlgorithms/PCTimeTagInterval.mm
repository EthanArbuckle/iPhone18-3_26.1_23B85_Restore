@interface PCTimeTagInterval
- (PCTimeTagInterval)initWithTimeTag:(unint64_t)tag dateInterval:(id)interval;
- (double)overlapsScoreForStartDate:(id)date endDate:(id)endDate;
- (id)description;
@end

@implementation PCTimeTagInterval

- (PCTimeTagInterval)initWithTimeTag:(unint64_t)tag dateInterval:(id)interval
{
  intervalCopy = interval;
  v11.receiver = self;
  v11.super_class = PCTimeTagInterval;
  v8 = [(PCTimeTagInterval *)&v11 init];
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
  v44 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  v8 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    dateInterval = [(PCTimeTagInterval *)self dateInterval];
    startDate = [dateInterval startDate];
    dateInterval2 = [(PCTimeTagInterval *)self dateInterval];
    endDate = [dateInterval2 endDate];
    v36 = 138413058;
    v37 = dateCopy;
    v38 = 2112;
    v39 = endDateCopy;
    v40 = 2112;
    v41 = startDate;
    v42 = 2112;
    v43 = endDate;
    _os_log_impl(&dword_1CEE74000, v8, OS_LOG_TYPE_DEBUG, "overlapsScoreForStartDate, startDate, %@, endDate, %@, self.startDate, %@, self.endDate, %@", &v36, 0x2Au);
  }

  if (!endDateCopy || [dateCopy isEqualToDate:endDateCopy])
  {
    goto LABEL_9;
  }

  if ([dateCopy isAfterDate:endDateCopy])
  {
    v13 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      dateInterval3 = [(PCTimeTagInterval *)self dateInterval];
      startDate2 = [dateInterval3 startDate];
      dateInterval4 = [(PCTimeTagInterval *)self dateInterval];
      endDate2 = [dateInterval4 endDate];
      v36 = 138413058;
      v37 = dateCopy;
      v38 = 2112;
      v39 = endDateCopy;
      v40 = 2112;
      v41 = startDate2;
      v42 = 2112;
      v43 = endDate2;
      _os_log_impl(&dword_1CEE74000, v13, OS_LOG_TYPE_ERROR, "overlapsScoreForStartDate, invalid time range, startDate, %@, endDate, %@, self.startDate, %@, self.endDate, %@", &v36, 0x2Au);
    }

LABEL_9:
    dateInterval5 = [(PCTimeTagInterval *)self dateInterval];
    v19 = [dateInterval5 containsDate:dateCopy];

    if (v19)
    {
      v20 = 1.0;
    }

    else
    {
      v20 = 0.0;
    }

    goto LABEL_12;
  }

  v23 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:dateCopy endDate:endDateCopy];
  [v23 duration];
  v20 = 0.0;
  if (v24 > 0.0)
  {
    dateInterval6 = [(PCTimeTagInterval *)self dateInterval];
    v26 = [dateInterval6 intersectsDateInterval:v23];

    if (v26)
    {
      dateInterval7 = [(PCTimeTagInterval *)self dateInterval];
      v28 = [dateInterval7 intersectionWithDateInterval:v23];
      [v28 duration];
      v30 = v29;

      [v23 duration];
      v32 = v31 - v30;
      [v23 duration];
      v34 = v30 / v33;
      if (v34 > 0.5 && v32 < 1800.0)
      {
        v20 = 1.0;
      }

      else
      {
        v20 = v34;
      }
    }
  }

LABEL_12:
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [PCTime timeStringFromTimeTag:[(PCTimeTagInterval *)self timetag]];
  dateInterval = [(PCTimeTagInterval *)self dateInterval];
  v6 = [v3 stringWithFormat:@"Interval: timetag, %@, interval, %@", v4, dateInterval];

  return v6;
}

@end