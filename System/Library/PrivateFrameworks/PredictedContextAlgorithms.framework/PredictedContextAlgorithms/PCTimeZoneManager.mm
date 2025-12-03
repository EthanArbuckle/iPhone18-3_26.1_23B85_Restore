@interface PCTimeZoneManager
- (PCTimeZoneManager)init;
- (id)condensedRecordsFromRecords:(id)records;
- (id)description;
- (id)keywordForDate:(id)date;
- (id)timeZoneAtDate:(id)date;
- (void)processTimeZoneEvents:(id)events;
@end

@implementation PCTimeZoneManager

- (PCTimeZoneManager)init
{
  v3.receiver = self;
  v3.super_class = PCTimeZoneManager;
  return [(PCTimeZoneManager *)&v3 init];
}

- (void)processTimeZoneEvents:(id)events
{
  v61[1] = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  v43 = [MEMORY[0x1E696AE18] predicateWithFormat:@"timeZone != nil"];
  v44 = eventsCopy;
  v5 = [eventsCopy filteredArrayUsingPredicate:v43];
  v42 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"endDate" ascending:1];
  v61[0] = v42;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
  v7 = [v5 sortedArrayUsingDescriptors:v6];

  v8 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v49;
    v12 = PCLogCategoryGeneral;
    do
    {
      v13 = 0;
      v46 = v10;
      do
      {
        if (*v49 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v48 + 1) + 8 * v13);
        endDate = [v14 endDate];
        v16 = [(PCTimeZoneManager *)self keywordForDate:endDate];

        timeZone = [v14 timeZone];
        name = [timeZone name];
        [v8 setObject:name forKey:v16];

        v19 = _plc_log_get_normal_handle(v12);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = NSStringFromSelector(a2);
          [v14 endDate];
          v21 = v11;
          v22 = v12;
          v23 = v8;
          v25 = v24 = self;
          timeZone2 = [v14 timeZone];
          *buf = 138413058;
          v53 = v20;
          v54 = 2112;
          v55 = v25;
          v56 = 2112;
          v57 = v16;
          v58 = 2112;
          v59 = timeZone2;
          _os_log_impl(&dword_1CEE74000, v19, OS_LOG_TYPE_DEBUG, "%@, raw timeZone, date %@, keyword, %@, event.timeZone, %@", buf, 0x2Au);

          self = v24;
          v8 = v23;
          v12 = v22;
          v11 = v21;
          v10 = v46;
        }

        ++v13;
      }

      while (v10 != v13);
      v10 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v10);
  }

  if (![v8 count])
  {
    date = [MEMORY[0x1E695DF00] date];
    v28 = [(PCTimeZoneManager *)self keywordForDate:date];

    systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
    name2 = [systemTimeZone name];
    [v8 setObject:name2 forKey:v28];
  }

  v31 = [v8 copy];
  [(PCTimeZoneManager *)self setTimeZoneRecords:v31];

  v32 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    v33 = NSStringFromSelector(a2);
    v34 = [v8 count];
    *buf = 138412546;
    v53 = v33;
    v54 = 2048;
    v55 = v34;
    _os_log_impl(&dword_1CEE74000, v32, OS_LOG_TYPE_DEBUG, "%@, TimeZoneManager.timeZoneRecords, %lu", buf, 0x16u);
  }

  timeZoneRecords = [(PCTimeZoneManager *)self timeZoneRecords];
  v36 = [(PCTimeZoneManager *)self condensedRecordsFromRecords:timeZoneRecords];
  [(PCTimeZoneManager *)self setCondensedRecords:v36];

  v37 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    v38 = NSStringFromSelector(a2);
    condensedRecords = [(PCTimeZoneManager *)self condensedRecords];
    v40 = [condensedRecords count];
    *buf = 138412546;
    v53 = v38;
    v54 = 2048;
    v55 = v40;
    _os_log_impl(&dword_1CEE74000, v37, OS_LOG_TYPE_DEBUG, "%@, TimeZoneManager.condensedRecords, %lu", buf, 0x16u);
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (id)condensedRecordsFromRecords:(id)records
{
  v44 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v4 = objc_opt_new();
  allKeys = [recordsCopy allKeys];
  v6 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = 0;
    v12 = *v34;
    *&v8 = 138412802;
    v29 = v8;
    v30 = v4;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        v14 = v11;
        v15 = v10;
        if (*v34 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        v10 = [recordsCopy objectForKey:{v16, v29}];
        if (v14 && ([v15 isEqualToString:v10] & 1) == 0)
        {
          v17 = [v4 objectForKey:v14];

          if (!v17)
          {
            [v4 setObject:v15 forKey:v14];
            v18 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              v19 = NSStringFromSelector(a2);
              *buf = v29;
              v38 = v19;
              v39 = 2112;
              v40 = v14;
              v41 = 2112;
              v42 = v15;
              _os_log_impl(&dword_1CEE74000, v18, OS_LOG_TYPE_DEBUG, "%@, TimeZone entry, keyword, %@, event.timeZone, %@ ADD", buf, 0x20u);

              v4 = v30;
            }
          }

          v20 = [v4 objectForKey:v16];

          if (!v20)
          {
            [v4 setObject:v10 forKey:v16];
            v21 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              v22 = NSStringFromSelector(a2);
              *buf = v29;
              v38 = v22;
              v39 = 2112;
              v40 = v16;
              v41 = 2112;
              v42 = v10;
              _os_log_impl(&dword_1CEE74000, v21, OS_LOG_TYPE_DEBUG, "%@, TimeZone entry, keyword, %@, event.timeZone, %@ ADD", buf, 0x20u);

              v4 = v30;
            }
          }
        }

        v11 = v16;
      }

      v9 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v23 = [v4 count];
  if (v11 && !v23)
  {
    [v4 setObject:v10 forKey:v11];
    v24 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = NSStringFromSelector(a2);
      *buf = 138412802;
      v38 = v25;
      v39 = 2112;
      v40 = v11;
      v41 = 2112;
      v42 = v10;
      _os_log_impl(&dword_1CEE74000, v24, OS_LOG_TYPE_DEBUG, "%@, TimeZone entry, keyword, %@, event.timeZone, %@ ADD", buf, 0x20u);
    }
  }

  v26 = [v4 copy];

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)timeZoneAtDate:(id)date
{
  v51 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v6 = [(PCTimeZoneManager *)self keywordForDate:dateCopy];
  condensedRecords = [(PCTimeZoneManager *)self condensedRecords];
  v8 = [condensedRecords objectForKey:v6];

  if (!v8)
  {
    aSelector = a2;
    condensedRecords2 = [(PCTimeZoneManager *)self condensedRecords];
    v13 = [condensedRecords2 keysSortedByValueUsingSelector:sel_compare_];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v15)
    {
      v16 = v15;
      v36 = dateCopy;
      v17 = 0;
      v18 = *v39;
      v19 = 1.79769313e308;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v38 + 1) + 8 * i);
          condensedRecords3 = [(PCTimeZoneManager *)self condensedRecords];
          v23 = [condensedRecords3 objectForKey:v21];

          [v6 doubleValue];
          v25 = v24;
          [v21 doubleValue];
          v27 = vabdd_f64(v25, v26);
          if (v27 < v19)
          {
            v28 = v23;

            v19 = v27;
            v17 = v28;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v16);

      v8 = 0;
      dateCopy = v36;
      if (v17)
      {
        v29 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v30 = NSStringFromSelector(aSelector);
          *buf = 138413058;
          v44 = v30;
          v45 = 2112;
          v46 = v36;
          v47 = 2112;
          v48 = v6;
          v49 = 2112;
          v50 = v17;
          _os_log_impl(&dword_1CEE74000, v29, OS_LOG_TYPE_DEBUG, "%@, date %@, keyword, %@, timeZone, %@, source, interpolated", buf, 0x2Au);
        }

        systemTimeZone2 = [MEMORY[0x1E695DFE8] timeZoneWithName:v17];

LABEL_22:
        goto LABEL_23;
      }
    }

    else
    {
    }

    v31 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v32 = NSStringFromSelector(aSelector);
      systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
      *buf = 138413058;
      v44 = v32;
      v45 = 2112;
      v46 = dateCopy;
      v47 = 2112;
      v48 = v6;
      v49 = 2112;
      v50 = systemTimeZone;
      _os_log_impl(&dword_1CEE74000, v31, OS_LOG_TYPE_DEBUG, "%@, date %@, keyword, %@, timeZone, %@, source, system", buf, 0x2Au);
    }

    systemTimeZone2 = [MEMORY[0x1E695DFE8] systemTimeZone];
    goto LABEL_22;
  }

  v9 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138413058;
    v44 = v10;
    v45 = 2112;
    v46 = dateCopy;
    v47 = 2112;
    v48 = v6;
    v49 = 2112;
    v50 = v8;
    _os_log_impl(&dword_1CEE74000, v9, OS_LOG_TYPE_DEBUG, "%@, date %@, keyword, %@, timeZone, %@, source, lookup", buf, 0x2Au);
  }

  systemTimeZone2 = [MEMORY[0x1E695DFE8] timeZoneWithName:v8];
LABEL_23:

  v34 = *MEMORY[0x1E69E9840];

  return systemTimeZone2;
}

- (id)keywordForDate:(id)date
{
  [date timeIntervalSinceReferenceDate];
  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithUnsignedInteger:(v3 / 3600.0)];
}

- (id)description
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"TimeZone records:"];
  condensedRecords = [(PCTimeZoneManager *)self condensedRecords];
  allKeys = [condensedRecords allKeys];
  v6 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        condensedRecords2 = [(PCTimeZoneManager *)self condensedRecords];
        v14 = [condensedRecords2 objectForKey:v12];

        [v3 appendFormat:@"<%@:%@>", v12, v14, v18];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = [v3 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end