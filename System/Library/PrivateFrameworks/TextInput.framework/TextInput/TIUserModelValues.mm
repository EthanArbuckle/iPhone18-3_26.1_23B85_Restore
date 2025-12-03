@interface TIUserModelValues
- (TIUserModelValues)initWithInputMode:(id)mode context:(id)context userModelDataStore:(id)store durableCounters:(id)counters settingsDictionary:(id)dictionary;
- (id)aggregatedCountFromTransientCounterWithName:(id)name forNumberOfDays:(int)days fromLoadedDate:(id)date;
- (id)countsFromTransientCounterWithName:(id)name forNumberOfDays:(int)days fromLoadedDate:(id)date;
- (id)getTransientCounterForKey:(id)key;
- (id)settingValueFromName:(id)name;
- (int)indexFromCandidateLength:(int)length forCounter:(id)counter;
- (void)addDouble:(double)double toCounterWithKey:(id)key andCandidateLength:(int)length;
- (void)addEntry:(id)entry toCounter:(id)counter forDaysPrior:(int)prior;
- (void)addInteger:(int)integer toCounterWithKey:(id)key andCandidateLength:(int)length;
- (void)addToTransientCounterFromDatabaseEntry:(id)entry withWeeklyMetricKeys:(id)keys fromLoadedDate:(id)date;
- (void)extendCountersForWeeklyMetricKeys:(id)keys;
- (void)loadTransientCounter:(id)counter forNumberOfDays:(int)days fromLoadedDate:(id)date;
- (void)persistForDate:(id)date;
@end

@implementation TIUserModelValues

- (id)settingValueFromName:(id)name
{
  v3 = [(NSDictionary *)self->_settingsDictionary objectForKey:name];
  if (!v3)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:0];
  }

  return v3;
}

- (id)aggregatedCountFromTransientCounterWithName:(id)name forNumberOfDays:(int)days fromLoadedDate:(id)date
{
  v5 = *&days;
  dateCopy = date;
  v9 = [(TIUserModelValues *)self getTransientCounterForKey:name];
  [(TIUserModelValues *)self loadTransientCounter:v9 forNumberOfDays:v5 fromLoadedDate:dateCopy];

  v10 = [v9 aggregatedCountForNumberOfDays:v5];

  return v10;
}

- (id)countsFromTransientCounterWithName:(id)name forNumberOfDays:(int)days fromLoadedDate:(id)date
{
  v5 = *&days;
  dateCopy = date;
  v9 = [(TIUserModelValues *)self getTransientCounterForKey:name];
  [(TIUserModelValues *)self loadTransientCounter:v9 forNumberOfDays:v5 fromLoadedDate:dateCopy];

  v10 = [v9 countsForNumberOfDays:v5];

  return v10;
}

- (void)addEntry:(id)entry toCounter:(id)counter forDaysPrior:(int)prior
{
  v5 = *&prior;
  counterCopy = counter;
  entryCopy = entry;
  secondaryValue = [entryCopy secondaryValue];
  intValue = [secondaryValue intValue];

  bucketCount = [counterCopy bucketCount];
  if (intValue >= bucketCount)
  {
    v12 = (bucketCount - 1);
  }

  else
  {
    v12 = intValue;
  }

  value = [entryCopy value];
  intValue2 = [value intValue];
  realValue = [entryCopy realValue];

  [realValue doubleValue];
  [counterCopy updateWithLoadedInteger:intValue2 andDouble:v12 forIndex:v5 andDaysPrior:?];
}

- (void)addToTransientCounterFromDatabaseEntry:(id)entry withWeeklyMetricKeys:(id)keys fromLoadedDate:(id)date
{
  dateCopy = date;
  entryCopy = entry;
  v9 = [entryCopy key];
  v14 = [v9 substringFromIndex:{objc_msgSend(kUserModelDatabasePrefix, "length")}];

  timestamp = [entryCopy timestamp];
  [dateCopy timeIntervalSinceDate:timestamp];
  v12 = v11;

  v13 = [(TIUserModelValues *)self getTransientCounterForKey:v14];
  [(TIUserModelValues *)self addEntry:entryCopy toCounter:v13 forDaysPrior:(v12 / 86400.0)];
}

- (int)indexFromCandidateLength:(int)length forCounter:(id)counter
{
  bucketCount = [counter bucketCount];
  if (bucketCount >= length)
  {
    lengthCopy = length;
  }

  else
  {
    lengthCopy = bucketCount;
  }

  if (lengthCopy <= 1)
  {
    lengthCopy = 1;
  }

  return lengthCopy - 1;
}

- (void)addDouble:(double)double toCounterWithKey:(id)key andCandidateLength:(int)length
{
  v5 = *&length;
  v8 = [(TIUserModelValues *)self getTransientCounterForKey:key];
  [v8 updateWithDouble:-[TIUserModelValues indexFromCandidateLength:forCounter:](self forIndex:{"indexFromCandidateLength:forCounter:", v5, v8), double}];
}

- (void)addInteger:(int)integer toCounterWithKey:(id)key andCandidateLength:(int)length
{
  v5 = *&length;
  v6 = *&integer;
  v8 = [(TIUserModelValues *)self getTransientCounterForKey:key];
  [v8 updateWithInteger:v6 forIndex:{-[TIUserModelValues indexFromCandidateLength:forCounter:](self, "indexFromCandidateLength:forCounter:", v5, v8)}];
}

- (id)getTransientCounterForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_transientCounters objectForKey:keyCopy];
  if (!v5)
  {
    v5 = [[TIUserModelIndexedCounter alloc] initWithName:keyCopy];
    [(NSMutableDictionary *)self->_transientCounters setObject:v5 forKey:keyCopy];
  }

  return v5;
}

- (void)loadTransientCounter:(id)counter forNumberOfDays:(int)days fromLoadedDate:(id)date
{
  v6 = *&days;
  v57 = *MEMORY[0x1E69E9840];
  counterCopy = counter;
  dateCopy = date;
  v46 = counterCopy;
  days = [counterCopy days];
  if (days < v6)
  {
    v9 = days;
    v10 = IXADefaultLogFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v35 = MEMORY[0x1E696AEC0];
      name = [counterCopy name];
      v37 = [v35 stringWithFormat:@"%s Loading additional data for transient counter %@.", "-[TIUserModelValues loadTransientCounter:forNumberOfDays:fromLoadedDate:]", name];
      *buf = 138412290;
      v56 = v37;
      _os_log_debug_impl(&dword_1863F7000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    [counterCopy extendToNumberOfDays:v6];
    v11 = [MEMORY[0x1E695DF00] dateWithTimeInterval:dateCopy sinceDate:v6 * -86400.0];
    v12 = [MEMORY[0x1E695DF00] dateWithTimeInterval:dateCopy sinceDate:v9 * -86400.0];
    v13 = kUserModelDatabasePrefix;
    name2 = [counterCopy name];
    v15 = [v13 stringByAppendingString:name2];

    selfCopy3 = self;
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
          properties = [v21 properties];
          v49 = 0;
          v25 = [v22 unarchivedObjectOfClass:v23 fromData:properties error:&v49];
          v26 = v49;

          if (v26)
          {
            v27 = IXADefaultLogFacility();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v31 = MEMORY[0x1E696AEC0];
              userInfo = [v26 userInfo];
              v32 = [userInfo objectForKey:@"message"];
              v33 = [v31 stringWithFormat:@"%s   %@", "-[TIUserModelValues loadTransientCounter:forNumberOfDays:fromLoadedDate:]", v32];
              *buf = 138412290;
              v56 = v33;
              _os_log_error_impl(&dword_1863F7000, v27, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);

              selfCopy3 = self;
            }
          }

          else if ([v25 isEqual:selfCopy3->_context])
          {
            timestamp = [v21 timestamp];
            [dateCopy timeIntervalSinceDate:timestamp];
            v30 = v29;

            selfCopy3 = self;
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
      name3 = [v46 name];
      v40 = [v38 stringWithFormat:@"%s Additional data loaded for transient counter %@.", "-[TIUserModelValues loadTransientCounter:forNumberOfDays:fromLoadedDate:]", name3];
      *buf = 138412290;
      v56 = v40;
      _os_log_debug_impl(&dword_1863F7000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }
}

- (void)persistForDate:(id)date
{
  v13 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  transientCounters = self->_transientCounters;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__TIUserModelValues_persistForDate___block_invoke;
  v9[3] = &unk_1E6F4D6A8;
  v9[4] = self;
  v6 = dateCopy;
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

- (void)extendCountersForWeeklyMetricKeys:(id)keys
{
  v15 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [keysCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(keysCopy);
        }

        v9 = [(TIUserModelValues *)self getTransientCounterForKey:*(*(&v10 + 1) + 8 * v8)];
        [v9 extendToNumberOfDays:kFeatureUsageQueryTimeFrame];

        ++v8;
      }

      while (v6 != v8);
      v6 = [keysCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (TIUserModelValues)initWithInputMode:(id)mode context:(id)context userModelDataStore:(id)store durableCounters:(id)counters settingsDictionary:(id)dictionary
{
  modeCopy = mode;
  contextCopy = context;
  storeCopy = store;
  countersCopy = counters;
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = TIUserModelValues;
  v17 = [(TIUserModelValues *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_inputMode, mode);
    objc_storeStrong(&v18->_context, context);
    objc_storeStrong(&v18->_userModelStore, store);
    objc_storeStrong(&v18->_durableCounters, counters);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    transientCounters = v18->_transientCounters;
    v18->_transientCounters = dictionary;

    objc_storeStrong(&v18->_settingsDictionary, dictionary);
  }

  return v18;
}

@end