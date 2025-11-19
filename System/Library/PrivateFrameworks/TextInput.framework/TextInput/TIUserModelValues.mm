@interface TIUserModelValues
- (TIUserModelValues)initWithInputMode:(id)a3 context:(id)a4 userModelDataStore:(id)a5 durableCounters:(id)a6 settingsDictionary:(id)a7;
- (id)aggregatedCountFromTransientCounterWithName:(id)a3 forNumberOfDays:(int)a4 fromLoadedDate:(id)a5;
- (id)countsFromTransientCounterWithName:(id)a3 forNumberOfDays:(int)a4 fromLoadedDate:(id)a5;
- (id)getTransientCounterForKey:(id)a3;
- (id)settingValueFromName:(id)a3;
- (int)indexFromCandidateLength:(int)a3 forCounter:(id)a4;
- (void)addDouble:(double)a3 toCounterWithKey:(id)a4 andCandidateLength:(int)a5;
- (void)addEntry:(id)a3 toCounter:(id)a4 forDaysPrior:(int)a5;
- (void)addInteger:(int)a3 toCounterWithKey:(id)a4 andCandidateLength:(int)a5;
- (void)addToTransientCounterFromDatabaseEntry:(id)a3 withWeeklyMetricKeys:(id)a4 fromLoadedDate:(id)a5;
- (void)extendCountersForWeeklyMetricKeys:(id)a3;
- (void)loadTransientCounter:(id)a3 forNumberOfDays:(int)a4 fromLoadedDate:(id)a5;
- (void)persistForDate:(id)a3;
@end

@implementation TIUserModelValues

- (id)settingValueFromName:(id)a3
{
  v3 = [(NSDictionary *)self->_settingsDictionary objectForKey:a3];
  if (!v3)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:0];
  }

  return v3;
}

- (id)aggregatedCountFromTransientCounterWithName:(id)a3 forNumberOfDays:(int)a4 fromLoadedDate:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v9 = [(TIUserModelValues *)self getTransientCounterForKey:a3];
  [(TIUserModelValues *)self loadTransientCounter:v9 forNumberOfDays:v5 fromLoadedDate:v8];

  v10 = [v9 aggregatedCountForNumberOfDays:v5];

  return v10;
}

- (id)countsFromTransientCounterWithName:(id)a3 forNumberOfDays:(int)a4 fromLoadedDate:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v9 = [(TIUserModelValues *)self getTransientCounterForKey:a3];
  [(TIUserModelValues *)self loadTransientCounter:v9 forNumberOfDays:v5 fromLoadedDate:v8];

  v10 = [v9 countsForNumberOfDays:v5];

  return v10;
}

- (void)addEntry:(id)a3 toCounter:(id)a4 forDaysPrior:(int)a5
{
  v5 = *&a5;
  v7 = a4;
  v8 = a3;
  v9 = [v8 secondaryValue];
  v10 = [v9 intValue];

  v11 = [v7 bucketCount];
  if (v10 >= v11)
  {
    v12 = (v11 - 1);
  }

  else
  {
    v12 = v10;
  }

  v15 = [v8 value];
  v13 = [v15 intValue];
  v14 = [v8 realValue];

  [v14 doubleValue];
  [v7 updateWithLoadedInteger:v13 andDouble:v12 forIndex:v5 andDaysPrior:?];
}

- (void)addToTransientCounterFromDatabaseEntry:(id)a3 withWeeklyMetricKeys:(id)a4 fromLoadedDate:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [v8 key];
  v14 = [v9 substringFromIndex:{objc_msgSend(kUserModelDatabasePrefix, "length")}];

  v10 = [v8 timestamp];
  [v7 timeIntervalSinceDate:v10];
  v12 = v11;

  v13 = [(TIUserModelValues *)self getTransientCounterForKey:v14];
  [(TIUserModelValues *)self addEntry:v8 toCounter:v13 forDaysPrior:(v12 / 86400.0)];
}

- (int)indexFromCandidateLength:(int)a3 forCounter:(id)a4
{
  v5 = [a4 bucketCount];
  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  if (v6 <= 1)
  {
    v6 = 1;
  }

  return v6 - 1;
}

- (void)addDouble:(double)a3 toCounterWithKey:(id)a4 andCandidateLength:(int)a5
{
  v5 = *&a5;
  v8 = [(TIUserModelValues *)self getTransientCounterForKey:a4];
  [v8 updateWithDouble:-[TIUserModelValues indexFromCandidateLength:forCounter:](self forIndex:{"indexFromCandidateLength:forCounter:", v5, v8), a3}];
}

- (void)addInteger:(int)a3 toCounterWithKey:(id)a4 andCandidateLength:(int)a5
{
  v5 = *&a5;
  v6 = *&a3;
  v8 = [(TIUserModelValues *)self getTransientCounterForKey:a4];
  [v8 updateWithInteger:v6 forIndex:{-[TIUserModelValues indexFromCandidateLength:forCounter:](self, "indexFromCandidateLength:forCounter:", v5, v8)}];
}

- (id)getTransientCounterForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_transientCounters objectForKey:v4];
  if (!v5)
  {
    v5 = [[TIUserModelIndexedCounter alloc] initWithName:v4];
    [(NSMutableDictionary *)self->_transientCounters setObject:v5 forKey:v4];
  }

  return v5;
}

- (void)loadTransientCounter:(id)a3 forNumberOfDays:(int)a4 fromLoadedDate:(id)a5
{
  v6 = *&a4;
  v57 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v45 = a5;
  v46 = v7;
  v8 = [v7 days];
  if (v8 < v6)
  {
    v9 = v8;
    v10 = IXADefaultLogFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v35 = MEMORY[0x1E696AEC0];
      v36 = [v7 name];
      v37 = [v35 stringWithFormat:@"%s Loading additional data for transient counter %@.", "-[TIUserModelValues loadTransientCounter:forNumberOfDays:fromLoadedDate:]", v36];
      *buf = 138412290;
      v56 = v37;
      _os_log_debug_impl(&dword_1863F7000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    [v7 extendToNumberOfDays:v6];
    v11 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v45 sinceDate:v6 * -86400.0];
    v12 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v45 sinceDate:v9 * -86400.0];
    v13 = kUserModelDatabasePrefix;
    v14 = [v7 name];
    v15 = [v13 stringByAppendingString:v14];

    v16 = self;
    v41 = v15;
    v42 = v12;
    v43 = v11;
    [(TIUserModelDataStoring *)self->_userModelStore getAllValuesForKey:v15 forInputMode:self->_inputMode fromDate:v11 toDate:v12];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v53 = 0u;
    v17 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v51;
      do
      {
        v20 = 0;
        do
        {
          if (*v51 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v50 + 1) + 8 * v20);
          v22 = MEMORY[0x1E696ACD0];
          v23 = objc_opt_class();
          v24 = [v21 properties];
          v49 = 0;
          v25 = [v22 unarchivedObjectOfClass:v23 fromData:v24 error:&v49];
          v26 = v49;

          if (v26)
          {
            v27 = IXADefaultLogFacility();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v31 = MEMORY[0x1E696AEC0];
              v44 = [v26 userInfo];
              v32 = [v44 objectForKey:@"message"];
              v33 = [v31 stringWithFormat:@"%s   %@", "-[TIUserModelValues loadTransientCounter:forNumberOfDays:fromLoadedDate:]", v32];
              *buf = 138412290;
              v56 = v33;
              _os_log_error_impl(&dword_1863F7000, v27, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);

              v16 = self;
            }
          }

          else if ([v25 isEqual:v16->_context])
          {
            v28 = [v21 timestamp];
            [v45 timeIntervalSinceDate:v28];
            v30 = v29;

            v16 = self;
            [(TIUserModelValues *)self addEntry:v21 toCounter:v46 forDaysPrior:(v30 / 86400.0)];
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v18);
    }

    v34 = IXADefaultLogFacility();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v38 = MEMORY[0x1E696AEC0];
      v39 = [v46 name];
      v40 = [v38 stringWithFormat:@"%s Additional data loaded for transient counter %@.", "-[TIUserModelValues loadTransientCounter:forNumberOfDays:fromLoadedDate:]", v39];
      *buf = 138412290;
      v56 = v40;
      _os_log_debug_impl(&dword_1863F7000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }
}

- (void)persistForDate:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  transientCounters = self->_transientCounters;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__TIUserModelValues_persistForDate___block_invoke;
  v9[3] = &unk_1E6F4D6A8;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  [(NSMutableDictionary *)transientCounters enumerateKeysAndObjectsUsingBlock:v9];
  v7 = IXADefaultLogFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s Persisting user model transient counters.", "-[TIUserModelValues persistForDate:]"];
    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&dword_1863F7000, v7, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }
}

- (void)extendCountersForWeeklyMetricKeys:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(TIUserModelValues *)self getTransientCounterForKey:*(*(&v10 + 1) + 8 * v8)];
        [v9 extendToNumberOfDays:kFeatureUsageQueryTimeFrame];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (TIUserModelValues)initWithInputMode:(id)a3 context:(id)a4 userModelDataStore:(id)a5 durableCounters:(id)a6 settingsDictionary:(id)a7
{
  v22 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = TIUserModelValues;
  v17 = [(TIUserModelValues *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_inputMode, a3);
    objc_storeStrong(&v18->_context, a4);
    objc_storeStrong(&v18->_userModelStore, a5);
    objc_storeStrong(&v18->_durableCounters, a6);
    v19 = [MEMORY[0x1E695DF90] dictionary];
    transientCounters = v18->_transientCounters;
    v18->_transientCounters = v19;

    objc_storeStrong(&v18->_settingsDictionary, a7);
  }

  return v18;
}

@end