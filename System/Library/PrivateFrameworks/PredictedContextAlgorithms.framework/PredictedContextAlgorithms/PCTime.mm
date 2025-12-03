@interface PCTime
+ (id)buildSimpleMealTagIntervalsForDate:(id)date;
+ (id)buildSimpleTimeTagIntervalsForDate:(id)date;
+ (id)buildTimeTagIntervalsForDate:(id)date;
+ (id)dateFromDate:(id)date hour:(int64_t)hour;
+ (id)dayOfWeekFromStartDate:(id)date endDate:(id)endDate timeZoneManager:(id)manager;
+ (id)localTimeOfDate:(id)date timeZone:(id)zone;
+ (id)timeFromStartDate:(id)date endDate:(id)endDate timeZoneManager:(id)manager;
+ (id)timeOfDayPrefixFromStartDate:(id)date endDate:(id)endDate;
+ (id)timeStringFromTimeTag:(unint64_t)tag;
+ (unint64_t)dateReferenceTagFromStartDate:(id)date endDate:(id)endDate;
+ (unint64_t)dateReferenceTagFromStartDate:(id)date endDate:(id)endDate nowDate:(id)nowDate timeZone:(id)zone;
+ (unint64_t)dateReferenceTagFromStartDate:(id)date endDate:(id)endDate timeZone:(id)zone;
+ (unint64_t)dayOfWeekTagFromDate:(id)date;
+ (unint64_t)dayOfWeekTagFromStartDate:(id)date endDate:(id)endDate;
+ (unint64_t)mealtagFromStartDate:(id)date endDate:(id)endDate;
+ (unint64_t)simpleTimetagFromStartDate:(id)date endDate:(id)endDate;
+ (unint64_t)timeTagFromTimeOfDayCos:(double)cos timeOfDaySin:(double)sin;
+ (unint64_t)timetagFromStartDate:(id)date endDate:(id)endDate;
+ (unint64_t)typeOfDayTagFromStartDate:(id)date endDate:(id)endDate timeZone:(id)zone;
- (BOOL)isEqual:(id)equal;
- (PCTime)initWithCoder:(id)coder;
- (PCTime)initWithIdentifier:(id)identifier;
- (PCTime)initWithIdentifier:(id)identifier timestamp:(double)timestamp timeString:(id)string timeZone:(id)zone timeTag:(unint64_t)tag;
- (PCTime)initWithTimestamp:(double)timestamp timeString:(id)string timeZone:(id)zone timeTag:(unint64_t)tag;
- (id)date;
- (id)description;
- (id)localTime;
- (id)timeZoneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCTime

- (PCTime)initWithIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E695DF00];
  identifierCopy = identifier;
  date = [v4 date];
  [date timeIntervalSinceReferenceDate];
  v7 = [(PCTime *)self initWithIdentifier:identifierCopy timestamp:@"today" timeString:@"Unknown" timeZone:0 timeTag:?];

  return v7;
}

- (PCTime)initWithTimestamp:(double)timestamp timeString:(id)string timeZone:(id)zone timeTag:(unint64_t)tag
{
  v10 = MEMORY[0x1E696AFB0];
  zoneCopy = zone;
  stringCopy = string;
  uUID = [v10 UUID];
  v14 = [(PCTime *)self initWithIdentifier:uUID timestamp:stringCopy timeString:zoneCopy timeZone:tag timeTag:timestamp];

  return v14;
}

- (PCTime)initWithIdentifier:(id)identifier timestamp:(double)timestamp timeString:(id)string timeZone:(id)zone timeTag:(unint64_t)tag
{
  identifierCopy = identifier;
  stringCopy = string;
  zoneCopy = zone;
  v19.receiver = self;
  v19.super_class = PCTime;
  v16 = [(PCTime *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, identifier);
    v17->_timestamp = timestamp;
    objc_storeStrong(&v17->_timeString, string);
    objc_storeStrong(&v17->_timeZone, zone);
    v17->_timeTag = tag;
    v17->_dateReferenceTag = 0;
  }

  return v17;
}

- (id)timeZoneObject
{
  timeZone = [(PCTime *)self timeZone];

  if (timeZone)
  {
    v4 = MEMORY[0x1E695DFE8];
    timeZone2 = [(PCTime *)self timeZone];
    v6 = [v4 timeZoneWithName:timeZone2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)localTime
{
  [(PCTime *)self timestamp];
  if (v3 == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v4 = MEMORY[0x1E695DF00];
    [(PCTime *)self timestamp];
    v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
    timeZoneObject = [(PCTime *)self timeZoneObject];
    v7 = [PCTime localTimeOfDate:v5 timeZone:timeZoneObject];
  }

  return v7;
}

- (id)date
{
  [(PCTime *)self timestamp];
  if (v3 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v4 = MEMORY[0x1E695DF00];
    [(PCTime *)self timestamp];
    v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  }

  return v5;
}

+ (id)localTimeOfDate:(id)date timeZone:(id)zone
{
  v25 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  zoneCopy = zone;
  v7 = zoneCopy;
  if (dateCopy)
  {
    if (zoneCopy)
    {
      systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
      if ([systemTimeZone isEqualToTimeZone:v7])
      {
        v9 = dateCopy;
      }

      else
      {
        v10 = [v7 secondsFromGMTForDate:dateCopy];
        v11 = v10 - [systemTimeZone secondsFromGMTForDate:dateCopy];
        v9 = [dateCopy dateByAddingTimeInterval:v11];
        v12 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v15 = 138413314;
          v16 = dateCopy;
          v17 = 2112;
          v18 = v7;
          v19 = 2112;
          v20 = systemTimeZone;
          v21 = 2048;
          v22 = v11;
          v23 = 2112;
          v24 = v9;
          _os_log_impl(&dword_1CEE74000, v12, OS_LOG_TYPE_DEBUG, "localTime, object date, %@, object timezone, %@, system timezone, %@, timezone diff, %ld, adjusted date, %@", &v15, 0x34u);
        }
      }
    }

    else
    {
      v9 = dateCopy;
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)timeFromStartDate:(id)date endDate:(id)endDate timeZoneManager:(id)manager
{
  v26 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  managerCopy = manager;
  [dateCopy timeIntervalSinceReferenceDate];
  v9 = v8;
  if (managerCopy)
  {
    systemTimeZone = [managerCopy timeZoneAtDate:dateCopy];
    v11 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v20 = 138412802;
    v21 = dateCopy;
    v22 = 2112;
    v23 = systemTimeZone;
    v24 = 2112;
    v25 = managerCopy;
    v12 = "timeZone, date, %@, timeZone, %@, source, timeZoneManager, %@";
    v13 = v11;
    v14 = 32;
  }

  else
  {
    systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
    v11 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v20 = 138412546;
    v21 = dateCopy;
    v22 = 2112;
    v23 = systemTimeZone;
    v12 = "timeZone, date, %@, timeZone, %@, source, system";
    v13 = v11;
    v14 = 22;
  }

  _os_log_impl(&dword_1CEE74000, v13, OS_LOG_TYPE_DEBUG, v12, &v20, v14);
LABEL_7:

  v15 = [PCTime alloc];
  name = [systemTimeZone name];
  v17 = [(PCTime *)v15 initWithTimestamp:0 timeString:name timeZone:0 timeTag:v9];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)dateFromDate:(id)date hour:(int64_t)hour
{
  v5 = MEMORY[0x1E695DEE8];
  dateCopy = date;
  currentCalendar = [v5 currentCalendar];
  v8 = [currentCalendar components:60 fromDate:dateCopy];

  [v8 setHour:hour];
  v9 = [currentCalendar dateFromComponents:v8];

  return v9;
}

+ (id)buildTimeTagIntervalsForDate:(id)date
{
  dateCopy = date;
  v4 = objc_opt_new();
  v5 = [PCTimeTagInterval alloc];
  v6 = objc_alloc(MEMORY[0x1E696AB80]);
  v7 = [PCTime dateFromDate:dateCopy hour:0];
  v8 = [v6 initWithStartDate:v7 duration:10800.0];
  v9 = [(PCTimeTagInterval *)v5 initWithTimeTag:8 dateInterval:v8];
  [v4 addObject:v9];

  v10 = [PCTimeTagInterval alloc];
  v11 = objc_alloc(MEMORY[0x1E696AB80]);
  v12 = [PCTime dateFromDate:dateCopy hour:3];
  v13 = [v11 initWithStartDate:v12 duration:21600.0];
  v14 = [(PCTimeTagInterval *)v10 initWithTimeTag:2 dateInterval:v13];
  [v4 addObject:v14];

  v15 = [PCTimeTagInterval alloc];
  v16 = objc_alloc(MEMORY[0x1E696AB80]);
  v17 = [PCTime dateFromDate:dateCopy hour:9];
  v18 = [v16 initWithStartDate:v17 duration:10800.0];
  v19 = [(PCTimeTagInterval *)v15 initWithTimeTag:3 dateInterval:v18];
  [v4 addObject:v19];

  v20 = [PCTimeTagInterval alloc];
  v21 = objc_alloc(MEMORY[0x1E696AB80]);
  v22 = [PCTime dateFromDate:dateCopy hour:12];
  v23 = [v21 initWithStartDate:v22 duration:10800.0];
  v24 = [(PCTimeTagInterval *)v20 initWithTimeTag:4 dateInterval:v23];
  [v4 addObject:v24];

  v25 = [PCTimeTagInterval alloc];
  v26 = objc_alloc(MEMORY[0x1E696AB80]);
  v27 = [PCTime dateFromDate:dateCopy hour:15];
  v28 = [v26 initWithStartDate:v27 duration:10800.0];
  v29 = [(PCTimeTagInterval *)v25 initWithTimeTag:5 dateInterval:v28];
  [v4 addObject:v29];

  v30 = [PCTimeTagInterval alloc];
  v31 = objc_alloc(MEMORY[0x1E696AB80]);
  v32 = [PCTime dateFromDate:dateCopy hour:18];
  v33 = [v31 initWithStartDate:v32 duration:10800.0];
  v34 = [(PCTimeTagInterval *)v30 initWithTimeTag:6 dateInterval:v33];
  [v4 addObject:v34];

  v35 = [PCTimeTagInterval alloc];
  v36 = objc_alloc(MEMORY[0x1E696AB80]);
  v37 = [PCTime dateFromDate:dateCopy hour:21];

  v38 = [v36 initWithStartDate:v37 duration:10800.0];
  v39 = [(PCTimeTagInterval *)v35 initWithTimeTag:7 dateInterval:v38];
  [v4 addObject:v39];

  v40 = [v4 copy];

  return v40;
}

+ (id)buildSimpleTimeTagIntervalsForDate:(id)date
{
  dateCopy = date;
  v4 = objc_opt_new();
  v5 = [PCTimeTagInterval alloc];
  v6 = objc_alloc(MEMORY[0x1E696AB80]);
  v7 = [PCTime dateFromDate:dateCopy hour:3];
  v8 = [v6 initWithStartDate:v7 duration:32400.0];
  v9 = [(PCTimeTagInterval *)v5 initWithTimeTag:2 dateInterval:v8];
  [v4 addObject:v9];

  v10 = [PCTimeTagInterval alloc];
  v11 = objc_alloc(MEMORY[0x1E696AB80]);
  v12 = [PCTime dateFromDate:dateCopy hour:12];
  v13 = [v11 initWithStartDate:v12 duration:21600.0];
  v14 = [(PCTimeTagInterval *)v10 initWithTimeTag:4 dateInterval:v13];
  [v4 addObject:v14];

  v15 = [PCTimeTagInterval alloc];
  v16 = objc_alloc(MEMORY[0x1E696AB80]);
  v17 = [PCTime dateFromDate:dateCopy hour:18];
  v18 = [v16 initWithStartDate:v17 duration:10800.0];
  v19 = [(PCTimeTagInterval *)v15 initWithTimeTag:6 dateInterval:v18];
  [v4 addObject:v19];

  v20 = [PCTimeTagInterval alloc];
  v21 = objc_alloc(MEMORY[0x1E696AB80]);
  v22 = [PCTime dateFromDate:dateCopy hour:21];
  v23 = [v21 initWithStartDate:v22 duration:21600.0];
  v24 = [(PCTimeTagInterval *)v20 initWithTimeTag:7 dateInterval:v23];
  [v4 addObject:v24];

  v25 = [PCTimeTagInterval alloc];
  v26 = objc_alloc(MEMORY[0x1E696AB80]);
  v27 = [PCTime dateFromDate:dateCopy hour:-3];

  v28 = [v26 initWithStartDate:v27 duration:21600.0];
  v29 = [(PCTimeTagInterval *)v25 initWithTimeTag:7 dateInterval:v28];
  [v4 addObject:v29];

  v30 = [v4 copy];

  return v30;
}

+ (unint64_t)timetagFromStartDate:(id)date endDate:(id)endDate
{
  v54 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  if (!endDateCopy || ([dateCopy isSameDayWithDate:endDateCopy] & 1) != 0 || (objc_msgSend(endDateCopy, "timeIntervalSinceDate:", dateCopy), v7 <= 43200.0))
  {
    [PCTime buildTimeTagIntervalsForDate:dateCopy];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = v43 = 0u;
    v10 = [v8 countByEnumeratingWithState:&v40 objects:v53 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v41;
      *&v11 = 138413058;
      v34 = v11;
LABEL_9:
      v14 = 0;
      while (1)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v40 + 1) + 8 * v14);
        [v15 overlapsScoreForStartDate:dateCopy endDate:{endDateCopy, v34}];
        v17 = v16;
        if (v16 > 0.0)
        {
          v18 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = v34;
            v46 = dateCopy;
            v47 = 2112;
            v48 = endDateCopy;
            v49 = 2112;
            v50 = v15;
            v51 = 2048;
            v52 = v17;
            _os_log_impl(&dword_1CEE74000, v18, OS_LOG_TYPE_DEBUG, "timeOfDay, startDate, %@, endDate, %@, interval, %@, score, %f", buf, 0x2Au);
          }
        }

        if (v17 > 0.7)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v8 countByEnumeratingWithState:&v40 objects:v53 count:16];
          if (v12)
          {
            goto LABEL_9;
          }

          goto LABEL_19;
        }
      }

      v28 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_37;
      }

      timetag = [v15 timetag];
      v30 = +[PCTime timeStringFromTimeTag:](PCTime, "timeStringFromTimeTag:", [v15 timetag]);
      *buf = v34;
      v46 = dateCopy;
      v47 = 2112;
      v48 = endDateCopy;
      v49 = 2048;
      v50 = timetag;
      v51 = 2112;
      v52 = *&v30;
    }

    else
    {
LABEL_19:

      v19 = [PCTime buildSimpleTimeTagIntervalsForDate:dateCopy];

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v8 = v19;
      v20 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (!v20)
      {
LABEL_31:
        timetag3 = 0;
LABEL_38:

        goto LABEL_39;
      }

      v22 = v20;
      v23 = *v37;
      *&v21 = 138413058;
      v35 = v21;
LABEL_21:
      v24 = 0;
      while (1)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v36 + 1) + 8 * v24);
        [v15 overlapsScoreForStartDate:dateCopy endDate:{endDateCopy, v35, v36}];
        v26 = v25;
        if (v25 > 0.0)
        {
          v27 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = v35;
            v46 = dateCopy;
            v47 = 2112;
            v48 = endDateCopy;
            v49 = 2112;
            v50 = v15;
            v51 = 2048;
            v52 = v26;
            _os_log_impl(&dword_1CEE74000, v27, OS_LOG_TYPE_DEBUG, "timeOfDay, startDate, %@, endDate, %@, interval, %@, score, %f", buf, 0x2Au);
          }
        }

        if (v26 > 0.7)
        {
          break;
        }

        if (v22 == ++v24)
        {
          v22 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v22)
          {
            goto LABEL_21;
          }

          goto LABEL_31;
        }
      }

      v28 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_37;
      }

      timetag2 = [v15 timetag];
      v30 = +[PCTime timeStringFromTimeTag:](PCTime, "timeStringFromTimeTag:", [v15 timetag]);
      *buf = v35;
      v46 = dateCopy;
      v47 = 2112;
      v48 = endDateCopy;
      v49 = 2048;
      v50 = timetag2;
      v51 = 2112;
      v52 = *&v30;
    }

    _os_log_impl(&dword_1CEE74000, v28, OS_LOG_TYPE_DEBUG, "timeOfDay, startDate, %@, endDate, %@, timetag, %lu(%@)", buf, 0x2Au);

LABEL_37:
    timetag3 = [v15 timetag];
    goto LABEL_38;
  }

  v8 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v46 = dateCopy;
    v47 = 2112;
    v48 = endDateCopy;
    _os_log_impl(&dword_1CEE74000, v8, OS_LOG_TYPE_DEBUG, "timeOfDay, startDate, %@, endDate, %@, skip", buf, 0x16u);
  }

  timetag3 = 0;
LABEL_39:

  v32 = *MEMORY[0x1E69E9840];
  return timetag3;
}

+ (unint64_t)simpleTimetagFromStartDate:(id)date endDate:(id)endDate
{
  v38 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  if (!endDateCopy || ([dateCopy isSameDayWithDate:endDateCopy] & 1) != 0 || (objc_msgSend(endDateCopy, "timeIntervalSinceDate:", dateCopy), v7 <= 43200.0))
  {
    [PCTime buildSimpleTimeTagIntervalsForDate:dateCopy];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v28 = 0u;
    v10 = [v8 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v26;
      *&v11 = 138413058;
      v24 = v11;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          [v15 overlapsScoreForStartDate:dateCopy endDate:{endDateCopy, v24, v25}];
          v17 = v16;
          if (v16 > 0.0)
          {
            v18 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = v24;
              v30 = dateCopy;
              v31 = 2112;
              v32 = endDateCopy;
              v33 = 2112;
              v34 = v15;
              v35 = 2048;
              v36 = v17;
              _os_log_impl(&dword_1CEE74000, v18, OS_LOG_TYPE_DEBUG, "timeOfDay, startDate, %@, endDate, %@, interval, %@, score, %f", buf, 0x2Au);
            }
          }

          if (v17 > 0.7)
          {
            v19 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              timetag = [v15 timetag];
              v21 = +[PCTime timeStringFromTimeTag:](PCTime, "timeStringFromTimeTag:", [v15 timetag]);
              *buf = v24;
              v30 = dateCopy;
              v31 = 2112;
              v32 = endDateCopy;
              v33 = 2048;
              v34 = timetag;
              v35 = 2112;
              v36 = *&v21;
              _os_log_impl(&dword_1CEE74000, v19, OS_LOG_TYPE_DEBUG, "timeOfDay, startDate, %@, endDate, %@, timetag, %lu(%@)", buf, 0x2Au);
            }

            timetag2 = [v15 timetag];
            goto LABEL_23;
          }
        }

        v12 = [v8 countByEnumeratingWithState:&v25 objects:v37 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    timetag2 = 0;
LABEL_23:
  }

  else
  {
    v8 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v30 = dateCopy;
      v31 = 2112;
      v32 = endDateCopy;
      _os_log_impl(&dword_1CEE74000, v8, OS_LOG_TYPE_DEBUG, "timeOfDay, startDate, %@, endDate, %@, skip", buf, 0x16u);
    }

    timetag2 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return timetag2;
}

+ (id)buildSimpleMealTagIntervalsForDate:(id)date
{
  dateCopy = date;
  v4 = objc_opt_new();
  v5 = [PCTimeTagInterval alloc];
  v6 = objc_alloc(MEMORY[0x1E696AB80]);
  v7 = [PCTime dateFromDate:dateCopy hour:6];
  v8 = [v6 initWithStartDate:v7 duration:18000.0];
  v9 = [(PCTimeTagInterval *)v5 initWithTimeTag:2000 dateInterval:v8];
  [v4 addObject:v9];

  v10 = [PCTimeTagInterval alloc];
  v11 = objc_alloc(MEMORY[0x1E696AB80]);
  v12 = [PCTime dateFromDate:dateCopy hour:11];
  v13 = [v11 initWithStartDate:v12 duration:10800.0];
  v14 = [(PCTimeTagInterval *)v10 initWithTimeTag:2001 dateInterval:v13];
  [v4 addObject:v14];

  v15 = [PCTimeTagInterval alloc];
  v16 = objc_alloc(MEMORY[0x1E696AB80]);
  v17 = [PCTime dateFromDate:dateCopy hour:17];

  v18 = [v16 initWithStartDate:v17 duration:14400.0];
  v19 = [(PCTimeTagInterval *)v15 initWithTimeTag:2002 dateInterval:v18];
  [v4 addObject:v19];

  v20 = [v4 copy];

  return v20;
}

+ (unint64_t)mealtagFromStartDate:(id)date endDate:(id)endDate
{
  v38 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  if (!endDateCopy || ([dateCopy isSameDayWithDate:endDateCopy] & 1) != 0 || (objc_msgSend(endDateCopy, "timeIntervalSinceDate:", dateCopy), v7 <= 43200.0))
  {
    [PCTime buildSimpleMealTagIntervalsForDate:dateCopy];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = v28 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v26;
      *&v11 = 138413058;
      v24 = v11;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          [v15 overlapsScoreForStartDate:dateCopy endDate:{endDateCopy, v24, v25}];
          v17 = v16;
          if (v16 > 0.0)
          {
            v18 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = v24;
              v30 = dateCopy;
              v31 = 2112;
              v32 = endDateCopy;
              v33 = 2112;
              v34 = v15;
              v35 = 2048;
              v36 = v17;
              _os_log_impl(&dword_1CEE74000, v18, OS_LOG_TYPE_DEBUG, "mealType, startDate, %@, endDate, %@, interval, %@, score, %f", buf, 0x2Au);
            }
          }

          if (v17 > 0.7)
          {
            v19 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              timetag = [v15 timetag];
              v21 = +[PCTime timeStringFromTimeTag:](PCTime, "timeStringFromTimeTag:", [v15 timetag]);
              *buf = v24;
              v30 = dateCopy;
              v31 = 2112;
              v32 = endDateCopy;
              v33 = 2048;
              v34 = timetag;
              v35 = 2112;
              v36 = *&v21;
              _os_log_impl(&dword_1CEE74000, v19, OS_LOG_TYPE_DEBUG, "mealType, startDate, %@, endDate, %@, timetag, %lu(%@)", buf, 0x2Au);
            }

            timetag2 = [v15 timetag];
            goto LABEL_21;
          }
        }

        v12 = [v9 countByEnumeratingWithState:&v25 objects:v37 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    timetag2 = 0;
LABEL_21:
  }

  else
  {
    timetag2 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return timetag2;
}

+ (id)timeOfDayPrefixFromStartDate:(id)date endDate:(id)endDate
{
  v28 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  v7 = [PCTime timetagFromStartDate:dateCopy endDate:endDateCopy];
  v8 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [PCTime timeStringFromTimeTag:v7];
    v20 = 138413058;
    v21 = dateCopy;
    v22 = 2112;
    v23 = endDateCopy;
    v24 = 2048;
    v25 = v7;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_1CEE74000, v8, OS_LOG_TYPE_DEBUG, "timeOfDay, startDate, %@, endDate, %@, timeTag, %lu(%@)", &v20, 0x2Au);
  }

  v10 = [PCTime timeStringFromTimeTag:v7];
  if (v10)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    v12 = v11;
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v14 = [PCTime alloc];
    timeZone = [currentCalendar timeZone];
    name = [timeZone name];
    v17 = [(PCTime *)v14 initWithTimestamp:v10 timeString:name timeZone:v7 timeTag:v12];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)dayOfWeekFromStartDate:(id)date endDate:(id)endDate timeZoneManager:(id)manager
{
  v36 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  managerCopy = manager;
  v10 = managerCopy;
  if (!managerCopy)
  {
    systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
    v19 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v30 = 138412546;
      v31 = dateCopy;
      v32 = 2112;
      v33 = systemTimeZone;
      _os_log_impl(&dword_1CEE74000, v19, OS_LOG_TYPE_DEBUG, "timeZone, startDate, %@, timeZone, %@, source, system", &v30, 0x16u);
    }

    v18 = endDateCopy != 0;
    goto LABEL_13;
  }

  systemTimeZone = [managerCopy timeZoneAtDate:dateCopy];
  v12 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v30 = 138412802;
    v31 = dateCopy;
    v32 = 2112;
    v33 = systemTimeZone;
    v34 = 2112;
    v35 = v10;
    _os_log_impl(&dword_1CEE74000, v12, OS_LOG_TYPE_DEBUG, "timeZone, startDate, %@, timeZone, %@, source, timeZoneManager, %@", &v30, 0x20u);
  }

  if (!endDateCopy)
  {
    v18 = 0;
    goto LABEL_13;
  }

  v13 = [v10 timeZoneAtDate:dateCopy];
  v14 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v30 = 138412546;
    v31 = endDateCopy;
    v32 = 2112;
    v33 = systemTimeZone;
    _os_log_impl(&dword_1CEE74000, v14, OS_LOG_TYPE_DEBUG, "timeZone, endDate, %@, timeZone, %@, source, system", &v30, 0x16u);
  }

  name = [systemTimeZone name];
  name2 = [v13 name];
  v17 = [name isEqualToString:name2];

  if (v17)
  {

    v18 = 1;
LABEL_13:
    v13 = [PCTime localTimeOfDate:dateCopy timeZone:systemTimeZone];
    if (v18)
    {
      v20 = [PCTime localTimeOfDate:endDateCopy timeZone:systemTimeZone];
    }

    else
    {
      v20 = 0;
    }

    v21 = [PCTime dayOfWeekTagFromStartDate:v13 endDate:v20];
    v22 = [PCTime timeStringFromTimeTag:v21];
    if (v22)
    {
      [dateCopy timeIntervalSinceReferenceDate];
      v24 = v23;
      v25 = [PCTime alloc];
      name3 = [systemTimeZone name];
      v27 = [(PCTime *)v25 initWithTimestamp:v22 timeString:name3 timeZone:v21 timeTag:v24];
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_20;
  }

  v20 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v30 = 138412546;
    v31 = systemTimeZone;
    v32 = 2112;
    v33 = v13;
    _os_log_impl(&dword_1CEE74000, v20, OS_LOG_TYPE_DEBUG, "timeZone crossing, timeZone, %@, endTimeZone, %@", &v30, 0x16u);
  }

  v27 = 0;
LABEL_20:

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (id)timeStringFromTimeTag:(unint64_t)tag
{
  if (tag <= 99)
  {
    v4 = @"night";
    v5 = @"midnight";
    if (tag != 8)
    {
      v5 = 0;
    }

    if (tag != 7)
    {
      v4 = v5;
    }

    v6 = @"preevening";
    v7 = @"evening";
    if (tag != 6)
    {
      v7 = 0;
    }

    if (tag != 5)
    {
      v6 = v7;
    }

    if (tag <= 6)
    {
      v4 = v6;
    }

    v8 = @"morning";
    v9 = @"prenoon";
    v10 = @"afternoon";
    if (tag != 4)
    {
      v10 = 0;
    }

    if (tag != 3)
    {
      v9 = v10;
    }

    if (tag != 2)
    {
      v8 = v9;
    }

    v11 = tag <= 4;
  }

  else
  {
    if (tag <= 1999)
    {
      switch(tag)
      {
        case 'd':
          result = @"today";
          break;
        case 'e':
          result = @"yesterday";
          break;
        case 'f':
          result = @"Sunday";
          break;
        case 'g':
          result = @"Monday";
          break;
        case 'h':
          result = @"Tuesday";
          break;
        case 'i':
          result = @"Wednesday";
          break;
        case 'j':
          result = @"Thursday";
          break;
        case 'k':
          result = @"Friday";
          break;
        case 'l':
          result = @"Saturday";
          break;
        case 'm':
          result = @"this week";
          break;
        case 'n':
          result = @"last week";
          break;
        case 'o':
          result = @"this month";
          break;
        case 'p':
          result = @"last month";
          break;
        case 'q':
          result = @"this year";
          break;
        case 'r':
          result = @"last year";
          break;
        default:
          result = 0;
          break;
      }

      return result;
    }

    v4 = @"dinner";
    v12 = @"weekend";
    if (tag != 10001)
    {
      v12 = 0;
    }

    if (tag == 10000)
    {
      v13 = @"weekday";
    }

    else
    {
      v13 = v12;
    }

    if (tag != 2002)
    {
      v4 = v13;
    }

    v8 = @"breakfast";
    v14 = @"lunch";
    if (tag != 2001)
    {
      v14 = 0;
    }

    if (tag != 2000)
    {
      v8 = v14;
    }

    v11 = tag <= 2001;
  }

  if (v11)
  {
    return v8;
  }

  else
  {
    return v4;
  }
}

+ (unint64_t)typeOfDayTagFromStartDate:(id)date endDate:(id)endDate timeZone:(id)zone
{
  v34 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  zoneCopy = zone;
  if (dateCopy)
  {
    if (endDateCopy && [endDateCopy isBeforeDate:dateCopy])
    {
      v10 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        *&buf[4] = dateCopy;
        v30 = 2112;
        v31 = endDateCopy;
        v32 = 2112;
        v33 = zoneCopy;
        _os_log_impl(&dword_1CEE74000, v10, OS_LOG_TYPE_INFO, "typeOfDayTagFromStartDate, startDate, %@, endDate, %@, timeZone, %@, the timestamps are inverted.", buf, 0x20u);
      }

      endDateCopy = 0;
    }

    if (zoneCopy)
    {
      v11 = [PCTime localTimeOfDate:dateCopy timeZone:zoneCopy];

      if (!endDateCopy)
      {
        goto LABEL_17;
      }

      v12 = [PCTime localTimeOfDate:endDateCopy timeZone:zoneCopy];

      endDateCopy = v12;
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = dateCopy;
      if (!endDateCopy)
      {
        goto LABEL_17;
      }
    }

    if ([endDateCopy isBeforeDate:v11])
    {
      v14 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        *&buf[4] = v11;
        v30 = 2112;
        v31 = endDateCopy;
        v32 = 2112;
        v33 = zoneCopy;
        _os_log_impl(&dword_1CEE74000, v14, OS_LOG_TYPE_INFO, "typeOfDayTagFromStartDate, startDate, %@, endDate, %@, timeZone, %@, the timestamps are inverted after time zone shifting.", buf, 0x20u);
      }

      endDateCopy = 0;
    }

LABEL_17:
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v28 = 0;
    *buf = 0;
    v16 = [currentCalendar rangeOfWeekendStartDate:&v28 interval:buf containingDate:v11];
    v17 = v28;
    v18 = v17;
    if (!endDateCopy)
    {
      if (v16)
      {
        v13 = 10001;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_34;
    }

    if (!v17)
    {
      v13 = 0;
LABEL_34:

      goto LABEL_35;
    }

    v19 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v11 endDate:endDateCopy];
    [v19 duration];
    if (v20 == 0.0)
    {
      v13 = 0;
LABEL_33:

      goto LABEL_34;
    }

    v21 = objc_alloc(MEMORY[0x1E696AB80]);
    v22 = [v21 initWithStartDate:v18 duration:*buf];
    if ([v19 intersectsDateInterval:v22])
    {
      startDate = [v19 startDate];
      if ([v22 containsDate:startDate])
      {
        endDate = [v19 endDate];
        v25 = [v22 containsDate:endDate];

        if (v25)
        {
          v13 = 10001;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_32;
      }
    }

    v13 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v13 = 0;
LABEL_35:

  v26 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (unint64_t)dayOfWeekTagFromStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  if (endDateCopy && ![dateCopy isSameDayWithDate:endDateCopy])
  {
    v7 = 0;
  }

  else
  {
    v7 = [PCTime dayOfWeekTagFromDate:dateCopy];
  }

  return v7;
}

+ (unint64_t)dayOfWeekTagFromDate:(id)date
{
  v16 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v4 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  [v4 setFirstWeekday:1];
  v5 = [v4 components:512 fromDate:dateCopy];
  v6 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412546;
    v13 = dateCopy;
    v14 = 2048;
    weekday = [v5 weekday];
    _os_log_impl(&dword_1CEE74000, v6, OS_LOG_TYPE_DEBUG, "dayOfWeekTagFromDate, date, %@, weekday, %lu", &v12, 0x16u);
  }

  if ([v5 weekday] == 1)
  {
    v7 = 102;
  }

  else if ([v5 weekday] == 2)
  {
    v7 = 103;
  }

  else if ([v5 weekday] == 3)
  {
    v7 = 104;
  }

  else if ([v5 weekday] == 4)
  {
    v7 = 105;
  }

  else if ([v5 weekday] == 5)
  {
    v7 = 106;
  }

  else if ([v5 weekday] == 6)
  {
    v7 = 107;
  }

  else if ([v5 weekday] == 7)
  {
    v7 = 108;
  }

  else
  {
    v8 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      weekday2 = [v5 weekday];
      v12 = 138412546;
      v13 = dateCopy;
      v14 = 2048;
      weekday = weekday2;
      _os_log_impl(&dword_1CEE74000, v8, OS_LOG_TYPE_ERROR, "dayOfWeekTagFromDate, cannot read weekday, date, %@, weekday, %lu", &v12, 0x16u);
    }

    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (unint64_t)dateReferenceTagFromStartDate:(id)date endDate:(id)endDate
{
  v5 = MEMORY[0x1E695DF00];
  endDateCopy = endDate;
  dateCopy = date;
  date = [v5 date];
  v9 = [PCTime dateReferenceTagFromStartDate:dateCopy endDate:endDateCopy nowDate:date timeZone:0];

  return v9;
}

+ (unint64_t)dateReferenceTagFromStartDate:(id)date endDate:(id)endDate timeZone:(id)zone
{
  v7 = MEMORY[0x1E695DF00];
  zoneCopy = zone;
  endDateCopy = endDate;
  dateCopy = date;
  v11 = [v7 now];
  v12 = [PCTime dateReferenceTagFromStartDate:dateCopy endDate:endDateCopy nowDate:v11 timeZone:zoneCopy];

  return v12;
}

+ (unint64_t)dateReferenceTagFromStartDate:(id)date endDate:(id)endDate nowDate:(id)nowDate timeZone:(id)zone
{
  dateCopy = date;
  endDateCopy = endDate;
  nowDateCopy = nowDate;
  zoneCopy = zone;
  v13 = zoneCopy;
  if (dateCopy && zoneCopy)
  {
    v14 = [PCTime localTimeOfDate:dateCopy timeZone:zoneCopy];

    dateCopy = v14;
  }

  if (endDateCopy && v13)
  {
    v15 = [PCTime localTimeOfDate:endDateCopy timeZone:v13];

    endDateCopy = v15;
  }

  if ([nowDateCopy isBeforeDate:dateCopy])
  {
    goto LABEL_10;
  }

  if (!endDateCopy)
  {
    if ([nowDateCopy isSameDayWithDate:dateCopy])
    {
LABEL_22:
      v16 = 100;
      goto LABEL_11;
    }

    if ([nowDateCopy isFollowingDayAfterDate:dateCopy])
    {
LABEL_25:
      v16 = 101;
      goto LABEL_11;
    }

    if ([nowDateCopy isSameWeekWithDate:dateCopy])
    {
LABEL_30:
      v16 = 109;
      goto LABEL_11;
    }

    if ([nowDateCopy isFollowingWeekAfterDate:dateCopy])
    {
LABEL_33:
      v16 = 110;
      goto LABEL_11;
    }

    if ([nowDateCopy isSameMonthWithDate:dateCopy])
    {
LABEL_38:
      v16 = 111;
      goto LABEL_11;
    }

    if ([nowDateCopy isFollowingMonthAfterDate:dateCopy])
    {
LABEL_41:
      v16 = 112;
      goto LABEL_11;
    }

    if ([nowDateCopy isSameYearWithDate:dateCopy])
    {
LABEL_46:
      v16 = 113;
      goto LABEL_11;
    }

    v18 = nowDateCopy;
    v19 = dateCopy;
LABEL_49:
    if ([v18 isFollowingYearAfterDate:v19])
    {
      v16 = 114;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (([nowDateCopy isBeforeDate:endDateCopy] & 1) == 0)
  {
    if ([nowDateCopy isSameDayWithDate:dateCopy] && (objc_msgSend(nowDateCopy, "isSameDayWithDate:", endDateCopy) & 1) != 0)
    {
      goto LABEL_22;
    }

    if ([nowDateCopy isFollowingDayAfterDate:dateCopy])
    {
      if ([nowDateCopy isFollowingDayAfterDate:endDateCopy])
      {
        goto LABEL_25;
      }

      if (![nowDateCopy isSameWeekWithDate:dateCopy])
      {
        goto LABEL_31;
      }
    }

    else if (([nowDateCopy isSameWeekWithDate:dateCopy] & 1) == 0)
    {
      goto LABEL_31;
    }

    if ([nowDateCopy isSameWeekWithDate:endDateCopy])
    {
      goto LABEL_30;
    }

LABEL_31:
    if ([nowDateCopy isFollowingWeekAfterDate:dateCopy])
    {
      if ([nowDateCopy isFollowingWeekAfterDate:endDateCopy])
      {
        goto LABEL_33;
      }

      if (![nowDateCopy isSameMonthWithDate:dateCopy])
      {
        goto LABEL_39;
      }
    }

    else if (([nowDateCopy isSameMonthWithDate:dateCopy] & 1) == 0)
    {
      goto LABEL_39;
    }

    if ([nowDateCopy isSameMonthWithDate:endDateCopy])
    {
      goto LABEL_38;
    }

LABEL_39:
    if ([nowDateCopy isFollowingMonthAfterDate:dateCopy])
    {
      if ([nowDateCopy isFollowingMonthAfterDate:endDateCopy])
      {
        goto LABEL_41;
      }

      if ([nowDateCopy isSameYearWithDate:dateCopy])
      {
LABEL_45:
        if ([nowDateCopy isSameYearWithDate:endDateCopy])
        {
          goto LABEL_46;
        }
      }
    }

    else if ([nowDateCopy isSameYearWithDate:dateCopy])
    {
      goto LABEL_45;
    }

    if (([nowDateCopy isFollowingYearAfterDate:dateCopy] & 1) == 0)
    {
      goto LABEL_10;
    }

    v18 = nowDateCopy;
    v19 = endDateCopy;
    goto LABEL_49;
  }

LABEL_10:
  v16 = 1;
LABEL_11:

  return v16;
}

+ (unint64_t)timeTagFromTimeOfDayCos:(double)cos timeOfDaySin:(double)sin
{
  v4 = atan2(sin, cos);
  v5 = fmod(v4 * 3.81971863 + 24.0, 24.0);
  if (v5 >= 0.0 && v5 < 6.0)
  {
    return 7;
  }

  if (v5 >= 6.0 && v5 < 12.0)
  {
    return 2;
  }

  if (v5 >= 12.0 && v5 < 18.0)
  {
    return 4;
  }

  if (v5 >= 21.0 || v5 < 18.0)
  {
    return 7;
  }

  else
  {
    return 6;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(PCTime *)self identifier];
  [(PCTime *)self timestamp];
  v6 = v5;
  timeString = [(PCTime *)self timeString];
  timeZone = [(PCTime *)self timeZone];
  localTime = [(PCTime *)self localTime];
  v10 = [v3 stringWithFormat:@"<PCTime identifier, %@, timestamp, %f, timeString, %@, timeZone, %@, localTime, %@, timeTag, %lu, dateReferenceTag, %lu>", identifier, v6, timeString, timeZone, localTime, -[PCTime timeTag](self, "timeTag"), -[PCTime dateReferenceTag](self, "dateReferenceTag")];

  return v10;
}

- (PCTime)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [coderCopy decodeDoubleForKey:@"timestamp"];
  v7 = v6;
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeString"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
  v10 = [coderCopy decodeInt64ForKey:@"timeTag"];
  v11 = [coderCopy decodeInt64ForKey:@"dateReferenceTag"];

  v12 = [(PCTime *)self initWithIdentifier:v5 timestamp:v8 timeString:v9 timeZone:v10 timeTag:v7];
  v13 = v12;
  if (v12)
  {
    [(PCTime *)v12 setDateReferenceTag:v11];
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeDouble:@"timestamp" forKey:self->_timestamp];
  [coderCopy encodeObject:self->_timeString forKey:@"timeString"];
  [coderCopy encodeObject:self->_timeZone forKey:@"timeZone"];
  [coderCopy encodeInt64:self->_timeTag forKey:@"timeTag"];
  [coderCopy encodeInt64:self->_dateReferenceTag forKey:@"dateReferenceTag"];
}

- (unint64_t)hash
{
  identifier = [(PCTime *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        identifier = [(PCTime *)self identifier];
        if (identifier || ([(PCTime *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          identifier2 = [(PCTime *)self identifier];
          identifier3 = [(PCTime *)v7 identifier];
          v11 = [identifier2 isEqual:identifier3];

          if (identifier)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

@end