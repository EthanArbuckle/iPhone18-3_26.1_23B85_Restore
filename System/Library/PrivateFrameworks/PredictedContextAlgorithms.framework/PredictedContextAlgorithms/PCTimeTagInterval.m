@interface PCTimeTagInterval
- (PCTimeTagInterval)initWithTimeTag:(unint64_t)a3 dateInterval:(id)a4;
- (double)overlapsScoreForStartDate:(id)a3 endDate:(id)a4;
- (id)description;
@end

@implementation PCTimeTagInterval

- (PCTimeTagInterval)initWithTimeTag:(unint64_t)a3 dateInterval:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PCTimeTagInterval;
  v8 = [(PCTimeTagInterval *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_timetag = a3;
    objc_storeStrong(&v8->_dateInterval, a4);
  }

  return v9;
}

- (double)overlapsScoreForStartDate:(id)a3 endDate:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(PCTimeTagInterval *)self dateInterval];
    v10 = [v9 startDate];
    v11 = [(PCTimeTagInterval *)self dateInterval];
    v12 = [v11 endDate];
    v36 = 138413058;
    v37 = v6;
    v38 = 2112;
    v39 = v7;
    v40 = 2112;
    v41 = v10;
    v42 = 2112;
    v43 = v12;
    _os_log_impl(&dword_1CEE74000, v8, OS_LOG_TYPE_DEBUG, "overlapsScoreForStartDate, startDate, %@, endDate, %@, self.startDate, %@, self.endDate, %@", &v36, 0x2Au);
  }

  if (!v7 || [v6 isEqualToDate:v7])
  {
    goto LABEL_9;
  }

  if ([v6 isAfterDate:v7])
  {
    v13 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(PCTimeTagInterval *)self dateInterval];
      v15 = [v14 startDate];
      v16 = [(PCTimeTagInterval *)self dateInterval];
      v17 = [v16 endDate];
      v36 = 138413058;
      v37 = v6;
      v38 = 2112;
      v39 = v7;
      v40 = 2112;
      v41 = v15;
      v42 = 2112;
      v43 = v17;
      _os_log_impl(&dword_1CEE74000, v13, OS_LOG_TYPE_ERROR, "overlapsScoreForStartDate, invalid time range, startDate, %@, endDate, %@, self.startDate, %@, self.endDate, %@", &v36, 0x2Au);
    }

LABEL_9:
    v18 = [(PCTimeTagInterval *)self dateInterval];
    v19 = [v18 containsDate:v6];

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

  v23 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v6 endDate:v7];
  [v23 duration];
  v20 = 0.0;
  if (v24 > 0.0)
  {
    v25 = [(PCTimeTagInterval *)self dateInterval];
    v26 = [v25 intersectsDateInterval:v23];

    if (v26)
    {
      v27 = [(PCTimeTagInterval *)self dateInterval];
      v28 = [v27 intersectionWithDateInterval:v23];
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
  v5 = [(PCTimeTagInterval *)self dateInterval];
  v6 = [v3 stringWithFormat:@"Interval: timetag, %@, interval, %@", v4, v5];

  return v6;
}

@end