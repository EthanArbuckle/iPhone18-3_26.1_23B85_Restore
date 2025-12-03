@interface CSEventFeedback
+ (BOOL)eventAllowed:(id)allowed;
+ (BOOL)flagWithKey:(id)key;
+ (double)elapsedTimeSinceFlushForEvent:(int64_t)event;
+ (double)timeWithKey:(id)key;
+ (id)defaultProperties;
+ (id)defaultValueWithKey:(id)key;
+ (id)defaultValueWithKey:(id)key versionName:(id)name;
+ (id)defaults;
+ (id)receiverFeedback;
+ (void)logEmbeddingPrewarmRequestTime;
+ (void)removeDefaults;
+ (void)removeKey:(id)key;
+ (void)reset;
+ (void)setDefaultWithKey:(id)key value:(id)value;
+ (void)setIndexWithKey:(id)key value:(unint64_t)value;
+ (void)setTimeWithKey:(id)key value:(double)value;
+ (void)updateDefaultWithKey:(id)key value:(id)value;
- (BOOL)canProcessEvent:(id)event;
- (CSEventFeedback)init;
- (CSEventFeedback)initWithVersionName:(id)name dateComponents:(id)components;
- (NSCalendar)currentCalendar;
- (NSDate)currentDate;
- (id)feedback;
- (int64_t)periodForMax:(int64_t)max;
- (unint64_t)bucketedSizeForValue:(id)value numBuckets:(unint64_t)buckets;
- (unint64_t)indexWithKey:(id)key;
- (void)clear;
- (void)commonInitWithVersionName:(id)name dateComponents:(id)components;
- (void)end;
- (void)flush;
- (void)logCachedItemForBundleID:(id)d counts:(id)counts;
- (void)logError:(int64_t)error;
- (void)logError:(int64_t)error message:(id)message;
- (void)logErrorItemForBundleID:(id)d counts:(id)counts;
- (void)logFlag:(int64_t)flag message:(id)message;
- (void)logProcessedItemForBundleID:(id)d language:(id)language textSize:(unint64_t)size counts:(id)counts;
- (void)logReceivedItemForBundleID:(id)d counts:(id)counts onBattery:(BOOL)battery;
- (void)reset;
- (void)sendAnalytics;
- (void)setCurrentDate:(id)date;
- (void)setUnitGranularity:(unint64_t)granularity periods:(int64_t)periods;
- (void)updateProcessedItemsDefaults;
@end

@implementation CSEventFeedback

+ (BOOL)eventAllowed:(id)allowed
{
  allowedCopy = allowed;
  if ([allowedCopy intValue] == 10)
  {
    v4 = objc_opt_class();
    stringValue = [allowedCopy stringValue];
    v6 = [v4 defaultValueWithKey:stringValue];
    v7 = v6;
    v8 = &unk_2846E7668;
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    unsignedIntValue = [v9 unsignedIntValue];
    v11 = unsignedIntValue < 0x186A1;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

+ (double)elapsedTimeSinceFlushForEvent:(int64_t)event
{
  v3 = 0.0;
  switch(event)
  {
    case 14:
      v4 = @"lastEmbeddingPreWarmRequest";
      break;
    case 9:
      v4 = @"lastEmbeddingDate";
      break;
    case 8:
      v4 = @"lastPriorityDate";
      break;
    default:
      return v3;
  }

  v5 = [objc_opt_class() defaultValueWithKey:v4];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x238376E40]();
    v3 = CFAbsoluteTimeGetCurrent() - v7;
  }

  return v3;
}

+ (void)reset
{
  v2 = objc_opt_class();

  [v2 removeDefaults];
}

+ (id)receiverFeedback
{
  v2 = objc_alloc_init(CSEventFeedback);
  [(CSEventFeedback *)v2 setMaxCount:200];

  return v2;
}

- (void)commonInitWithVersionName:(id)name dateComponents:(id)components
{
  componentsCopy = components;
  v5 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"GMT"];
  v6 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  currentCalendar = self->_currentCalendar;
  self->_currentCalendar = v6;

  [(NSCalendar *)self->_currentCalendar setTimeZone:v5];
  if (componentsCopy)
  {
    v8 = [(NSCalendar *)self->_currentCalendar dateFromComponents:?];
  }

  else
  {
    v8 = 0;
  }

  currentDate = self->_currentDate;
  self->_currentDate = v8;

  self->_forTesting = 0;
  [(CSEventFeedback *)self setNumItemsInBatch:0];
  [(CSEventFeedback *)self setIndexType:0];
  [(CSEventFeedback *)self setMaxCount:1800];
  [(CSEventFeedback *)self setUnitGranularity:16 periods:24];
  v10 = [objc_opt_class() defaultValueWithKey:@"version"];
  v11 = v10;
  if (!v10 || (v12 = [v10 unsignedIntValue], objc_msgSend(objc_opt_class(), "version") != v12))
  {
    [(CSEventFeedback *)self clear];
  }

  [(CSEventFeedback *)self flush];
  [(CSEventFeedback *)self reset];
}

- (CSEventFeedback)init
{
  v5.receiver = self;
  v5.super_class = CSEventFeedback;
  v2 = [(CSEventFeedback *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSEventFeedback *)v2 commonInitWithVersionName:@"CSEvents.V1" dateComponents:0];
  }

  return v3;
}

- (CSEventFeedback)initWithVersionName:(id)name dateComponents:(id)components
{
  nameCopy = name;
  componentsCopy = components;
  v11.receiver = self;
  v11.super_class = CSEventFeedback;
  v8 = [(CSEventFeedback *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CSEventFeedback *)v8 commonInitWithVersionName:nameCopy dateComponents:componentsCopy];
    v9->_forTesting = 1;
  }

  return v9;
}

- (NSCalendar)currentCalendar
{
  currentCalendar = self->_currentCalendar;
  if (currentCalendar)
  {
    currentCalendar = currentCalendar;
  }

  else
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  }

  return currentCalendar;
}

- (void)setCurrentDate:(id)date
{
  objc_storeStrong(&self->_currentDate, date);
  dateCopy = date;
  [objc_opt_class() setDefaultWithKey:@"currentDate" value:self->_currentDate];
}

- (NSDate)currentDate
{
  currentDate = self->_currentDate;
  if (currentDate)
  {
    v3 = currentDate;
  }

  else
  {
    v3 = [MEMORY[0x277CBEAA8] now];
  }

  return v3;
}

- (void)setUnitGranularity:(unint64_t)granularity periods:(int64_t)periods
{
  self->_unitGranularity = granularity;
  if (granularity == 16)
  {
    self->_unitGranularity = 32;
    if (periods == 0x7FFFFFFFFFFFFFFFLL || periods == 0)
    {
      length = 1;
    }

    else
    {
      length = periods;
    }
  }

  else
  {
    v7 = [(CSEventFeedback *)self currentCalendar:granularity];
    unitGranularity = self->_unitGranularity;
    Current = CFAbsoluteTimeGetCurrent();
    length = CFCalendarGetRangeOfUnit(v7, unitGranularity, 0x10uLL, Current).length;
  }

  self->_numPeriods = length;
}

- (int64_t)periodForMax:(int64_t)max
{
  currentCalendar = [(CSEventFeedback *)self currentCalendar];
  unitGranularity = self->_unitGranularity;
  currentDate = [(CSEventFeedback *)self currentDate];
  v8 = [currentCalendar component:unitGranularity fromDate:currentDate];

  v9 = self->_unitGranularity;
  Current = CFAbsoluteTimeGetCurrent();
  RangeOfUnit = CFCalendarGetRangeOfUnit(currentCalendar, v9, 0x10uLL, Current);

  return (v8 - RangeOfUnit.location) * (max - RangeOfUnit.location) / (RangeOfUnit.length - RangeOfUnit.location) + RangeOfUnit.location;
}

+ (void)logEmbeddingPrewarmRequestTime
{
  v2 = objc_opt_class();
  v3 = [MEMORY[0x277CBEAA8] now];
  [v2 setDefaultWithKey:@"lastEmbeddingPreWarmRequest" value:v3];
}

- (void)logErrorItemForBundleID:(id)d counts:(id)counts
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  countsCopy = counts;
  bundleID = [(CSEventFeedback *)self bundleID];
  v9 = [dCopy isEqualToString:bundleID];

  if ((v9 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [CSEventFeedback logErrorItemForBundleID:dCopy counts:self];
  }

  [(CSEventFeedback *)self flush];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = countsCopy;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v28 = *v30;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v28)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        v15 = [v10 objectForKeyedSubscript:v14];
        v16 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v14];

        if (!v16)
        {
          stats = self->_stats;
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          [(NSMutableDictionary *)stats setObject:dictionary forKey:v14];
        }

        v19 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v14];
        v20 = [v19 objectForKeyedSubscript:@"count"];

        if (!v20)
        {
          v21 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v14];
          [v21 setObject:&unk_2846E7668 forKey:@"count"];
        }

        v22 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v14];
        v23 = [v22 objectForKeyedSubscript:@"count"];

        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v23, "unsignedIntValue") + objc_msgSend(v15, "unsignedIntValue")}];
        v25 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v14];
        [v25 setObject:v24 forKeyedSubscript:@"count"];
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)logCachedItemForBundleID:(id)d counts:(id)counts
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  countsCopy = counts;
  bundleID = [(CSEventFeedback *)self bundleID];
  v9 = [dCopy isEqualToString:bundleID];

  if ((v9 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [CSEventFeedback logErrorItemForBundleID:dCopy counts:self];
  }

  v27 = dCopy;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = countsCopy;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v28 = *v30;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v28)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        v15 = [v10 objectForKeyedSubscript:{v14, v27}];
        v16 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v14];

        if (!v16)
        {
          stats = self->_stats;
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          [(NSMutableDictionary *)stats setObject:dictionary forKey:v14];
        }

        v19 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v14];
        v20 = [v19 objectForKeyedSubscript:@"cachedCount"];

        if (!v20)
        {
          v21 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v14];
          [v21 setObject:&unk_2846E7668 forKey:@"cachedCount"];
        }

        v22 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v14];
        v23 = [v22 objectForKeyedSubscript:@"cachedCount"];

        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v23, "unsignedIntValue") + objc_msgSend(v15, "unsignedIntValue")}];
        v25 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v14];
        [v25 setObject:v24 forKeyedSubscript:@"cachedCount"];
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)logProcessedItemForBundleID:(id)d language:(id)language textSize:(unint64_t)size counts:(id)counts
{
  v55 = *MEMORY[0x277D85DE8];
  dCopy = d;
  languageCopy = language;
  countsCopy = counts;
  bundleID = [(CSEventFeedback *)self bundleID];
  v12 = [dCopy isEqualToString:bundleID];

  if ((v12 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [CSEventFeedback logProcessedItemForBundleID:dCopy language:self textSize:? counts:?];
  }

  v48 = dCopy;
  [(CSEventFeedback *)self flush];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v13 = countsCopy;
  v14 = [v13 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v14)
  {
    v15 = v14;
    v49 = *v51;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v51 != v49)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v50 + 1) + 8 * i);
        v18 = [v13 objectForKeyedSubscript:v17];
        v19 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v17];

        if (!v19)
        {
          stats = self->_stats;
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          [(NSMutableDictionary *)stats setObject:dictionary forKey:v17];
        }

        v22 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v17];
        v23 = [v22 objectForKeyedSubscript:@"lastProcessedDate"];

        if (!v23)
        {
          v24 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v17];
          currentDate = [(CSEventFeedback *)self currentDate];
          [v24 setObject:currentDate forKey:@"lastProcessedDate"];
        }

        v26 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v17];
        v27 = [v26 objectForKeyedSubscript:@"count"];

        if (!v27)
        {
          v28 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v17];
          [v28 setObject:&unk_2846E7668 forKey:@"count"];
        }

        v29 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v17];
        v30 = [v29 objectForKeyedSubscript:@"count"];

        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v30, "unsignedIntValue") + objc_msgSend(v18, "unsignedIntValue")}];
        v32 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v17];
        [v32 setObject:v31 forKeyedSubscript:@"count"];

        if ([v17 unsignedIntValue] == 9)
        {
          v33 = objc_opt_class();
          currentDate2 = [(CSEventFeedback *)self currentDate];
          [v33 setDefaultWithKey:@"lastEmbeddingDate" value:currentDate2];
        }

        if ([v17 unsignedIntValue] == 8 && objc_msgSend(v18, "unsignedIntValue"))
        {
          v35 = objc_opt_class();
          currentDate3 = [(CSEventFeedback *)self currentDate];
          [v35 setDefaultWithKey:@"lastPriorityDate" value:currentDate3];

          self->_numProcessedOnBudget += [v18 unsignedIntValue];
          [objc_opt_class() updateDefaultWithKey:@"processedEmbedCountOnBudget" value:v18];
        }

        v37 = objc_opt_class();
        stringValue = [v17 stringValue];
        [v37 updateDefaultWithKey:stringValue value:&unk_2846E7680];
      }

      v15 = [v13 countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v15);
  }

  if (languageCopy)
  {
    LanguageIDForIdentifier = SILanguagesGetLanguageIDForIdentifier();
  }

  else
  {
    LanguageIDForIdentifier = 0;
  }

  languages = self->_languages;
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:LanguageIDForIdentifier];
  [(NSMutableSet *)languages addObject:v41];

  textSizes = self->_textSizes;
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v46];
  [(NSMutableSet *)textSizes addObject:v43];

  ++self->_numProcessedItemsInBatch;
  v44 = *MEMORY[0x277D85DE8];
}

- (void)logReceivedItemForBundleID:(id)d counts:(id)counts onBattery:(BOOL)battery
{
  batteryCopy = battery;
  v40 = *MEMORY[0x277D85DE8];
  dCopy = d;
  countsCopy = counts;
  [(CSEventFeedback *)self flush];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = countsCopy;
  v34 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
  v9 = 0;
  if (v34)
  {
    v32 = *v36;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v36 != v32)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        v12 = [v8 objectForKeyedSubscript:v11];
        v13 = [(NSMutableDictionary *)self->_receiverStats objectForKeyedSubscript:v11];

        if (!v13)
        {
          receiverStats = self->_receiverStats;
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          [(NSMutableDictionary *)receiverStats setObject:dictionary forKey:v11];
        }

        v16 = [(NSMutableDictionary *)self->_receiverStats objectForKeyedSubscript:v11];
        v17 = [v16 objectForKeyedSubscript:@"lastProcessedDate"];

        if (!v17)
        {
          v18 = [(NSMutableDictionary *)self->_receiverStats objectForKeyedSubscript:v11];
          currentDate = [(CSEventFeedback *)self currentDate];
          [v18 setObject:currentDate forKey:@"lastProcessedDate"];
        }

        v20 = [(NSMutableDictionary *)self->_receiverStats objectForKeyedSubscript:v11];
        v21 = [v20 objectForKeyedSubscript:@"count"];

        if (!v21)
        {
          v22 = [(NSMutableDictionary *)self->_receiverStats objectForKeyedSubscript:v11];
          [v22 setObject:&unk_2846E7668 forKey:@"count"];
        }

        v23 = [(NSMutableDictionary *)self->_receiverStats objectForKeyedSubscript:v11];
        v24 = [v23 objectForKeyedSubscript:@"count"];

        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v24, "unsignedIntValue") + objc_msgSend(v12, "unsignedIntValue")}];
        v26 = [(NSMutableDictionary *)self->_receiverStats objectForKeyedSubscript:v11];
        [v26 setObject:v25 forKeyedSubscript:@"count"];

        if (batteryCopy && [v12 unsignedIntValue])
        {
          v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-lastPriorityDate", v11];

          v28 = objc_opt_class();
          currentDate2 = [(CSEventFeedback *)self currentDate];
          [v28 setDefaultWithKey:v27 value:currentDate2];

          self->_numProcessedOnBudget += [v12 unsignedIntValue];
          v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-processedOnBudget", v11];

          [objc_opt_class() updateDefaultWithKey:v9 value:v12];
        }

        [objc_opt_class() updateDefaultWithKey:v11 value:&unk_2846E7680];
      }

      v34 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v34);
  }

  ++self->_numProcessedItemsInBatch;
  v30 = *MEMORY[0x277D85DE8];
}

- (unint64_t)bucketedSizeForValue:(id)value numBuckets:(unint64_t)buckets
{
  valueCopy = value;
  v6 = valueCopy;
  if (valueCopy && [valueCopy unsignedIntValue])
  {
    if ([v6 unsignedIntValue] <= 0x1388)
    {
      buckets = ([v6 unsignedIntValue] / 5000.0) % buckets;
    }
  }

  else
  {
    buckets = 0;
  }

  return buckets;
}

- (id)feedback
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = MEMORY[0x277CCABB0];
  [(CSEventFeedback *)self elapsedTime];
  v5 = [v4 numberWithDouble:?];
  [v3 setObject:v5 forKey:@"duration"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CSEventFeedback numItemsInBatch](self, "numItemsInBatch")}];
  [v3 setObject:v6 forKey:@"batchCount"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numProcessedItemsInBatch];
  [v3 setObject:v7 forKey:@"processedCount"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[CSEventFeedback indexType](self, "indexType")}];
  [v3 setObject:v8 forKey:@"protectionClass"];

  bundleID = [(CSEventFeedback *)self bundleID];
  v10 = [bundleID length];

  if (v10)
  {
    bundleID2 = [(CSEventFeedback *)self bundleID];
    [v3 setObject:bundleID2 forKey:@"bundleID"];
  }

  if ([(NSMutableSet *)self->_textSizes count])
  {
    v12 = [(NSMutableSet *)self->_textSizes valueForKeyPath:@"@avg.self"];
    v13 = [(CSEventFeedback *)self bucketedSizeForValue:v12 numBuckets:3];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
    [v3 setObject:v14 forKey:@"textSize"];
  }

  if ([(NSMutableSet *)self->_languages count])
  {
    v15 = [(NSMutableSet *)self->_languages valueForKeyPath:@"@avg.self"];
    [v3 setObject:v15 forKey:@"language"];
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v16 = self->_stats;
  v17 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v50;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v50 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v49 + 1) + 8 * i);
        v22 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v21];
        v23 = [v22 objectForKeyedSubscript:@"count"];

        if (v23)
        {
          v24 = v23;
        }

        else
        {
          v24 = &unk_2846E7668;
        }

        unsignedIntValue = [v21 unsignedIntValue];
        if (unsignedIntValue > 12)
        {
          if (unsignedIntValue <= 15)
          {
            if (unsignedIntValue == 13)
            {
              v26 = v3;
              v27 = v24;
              v28 = @"documentUnderstandingCount";
            }

            else
            {
              if (unsignedIntValue != 15)
              {
                goto LABEL_39;
              }

              v26 = v3;
              v27 = v24;
              v28 = @"embeddingErrorEventsCount";
            }
          }

          else
          {
            switch(unsignedIntValue)
            {
              case 16:
                v26 = v3;
                v27 = v24;
                v28 = @"breadcrumbsCount";
                break;
              case 17:
                v26 = v3;
                v27 = v24;
                v28 = @"pirCount";
                break;
              case 18:
                v26 = v3;
                v27 = v24;
                v28 = @"hitPIRError";
                break;
              default:
                goto LABEL_39;
            }
          }

          goto LABEL_38;
        }

        if (unsignedIntValue > 9)
        {
          if (unsignedIntValue == 10)
          {
            v26 = v3;
            v27 = v24;
            v28 = @"keyphraseCount";
          }

          else if (unsignedIntValue == 11)
          {
            v26 = v3;
            v27 = v24;
            v28 = @"appEntityCount";
          }

          else
          {
            v26 = v3;
            v27 = v24;
            v28 = @"suggestedEventsCount";
          }

          goto LABEL_38;
        }

        if (unsignedIntValue == 8)
        {
          v26 = v3;
          v27 = v24;
          v28 = @"priorityEmbeddingCount";
LABEL_38:
          [v26 setObject:v27 forKey:v28];
          goto LABEL_39;
        }

        if (unsignedIntValue == 9)
        {
          [v3 setObject:v24 forKey:@"embeddingCount"];
          v29 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v21];
          v30 = [v29 objectForKeyedSubscript:@"cachedCount"];

          if (v30)
          {
            v31 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v21];
            v32 = [v31 objectForKeyedSubscript:@"cachedCount"];
            [v3 setObject:v32 forKey:@"embeddingCachedCount"];
          }
        }

LABEL_39:
      }

      v18 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v18);
  }

  v33 = [MEMORY[0x277CCABB0] numberWithBool:self->_completedBatch];
  [v3 setObject:v33 forKey:@"CompletedBatch"];

  v34 = [MEMORY[0x277CCABB0] numberWithBool:self->_ignoredBatch];
  [v3 setObject:v34 forKey:@"IgnoredBatch"];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v35 = self->_errors;
  v36 = [(NSMutableSet *)v35 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v46;
    v39 = MEMORY[0x277CBEC38];
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v46 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v41 = [*(*(&v45 + 1) + 8 * j) intValue] - 14;
        if (v41 <= 4)
        {
          [v3 setObject:v39 forKey:off_27893CD10[v41]];
        }
      }

      v37 = [(NSMutableSet *)v35 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v37);
  }

  v42 = [v3 copy];
  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

- (void)sendAnalytics
{
  if ((self->_numProcessedItemsInBatch || [(NSMutableDictionary *)self->_stats count]|| [(NSMutableSet *)self->_textSizes count]|| [(NSMutableSet *)self->_languages count]|| [(NSMutableSet *)self->_errors count]|| self->_completedBatch || self->_ignoredBatch) && !self->_forTesting)
  {
    feedback = [(CSEventFeedback *)self feedback];
    AnalyticsSendEvent();
  }
}

- (void)logError:(int64_t)error
{
  errors = self->_errors;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:error];
  [(NSMutableSet *)errors addObject:v4];
}

- (void)updateProcessedItemsDefaults
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_numProcessedItemsInBatch)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      numProcessedItemsInBatch = self->_numProcessedItemsInBatch;
      v13 = 134217984;
      v14 = numProcessedItemsInBatch;
      _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "### %lu journal items processed", &v13, 0xCu);
    }

    v4 = [objc_opt_class() defaultValueWithKey:@"processedCount"];
    v5 = v4;
    v6 = &unk_2846E7668;
    if (v4)
    {
      v6 = v4;
    }

    v7 = v6;

    v8 = MEMORY[0x277CCABB0];
    numProcessedOnBudget = self->_numProcessedOnBudget;
    unsignedIntValue = [v7 unsignedIntValue];

    v11 = [v8 numberWithUnsignedInteger:numProcessedOnBudget + unsignedIntValue];
    [objc_opt_class() updateDefaultWithKey:@"processedCount" value:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)end
{
  v3 = objc_opt_class();
  currentDate = [(CSEventFeedback *)self currentDate];
  [v3 setDefaultWithKey:@"lastFlushDate" value:currentDate];

  [(CSEventFeedback *)self updateProcessedItemsDefaults];
  [(CSEventFeedback *)self sendAnalytics];

  [(CSEventFeedback *)self reset];
}

- (void)flush
{
  currentDate = [(CSEventFeedback *)self currentDate];
  v4 = [objc_opt_class() defaultValueWithKey:@"currentDate"];
  currentCalendar = [(CSEventFeedback *)self currentCalendar];
  v6 = [currentCalendar isDate:currentDate equalToDate:v4 toUnitGranularity:16];

  if ((v6 & 1) == 0)
  {
    [(CSEventFeedback *)self sendAnalytics];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "### clearing stats for new day", v7, 2u);
    }

    [(CSEventFeedback *)self clear];
  }
}

- (void)reset
{
  *&self->_startTime = 0u;
  *&self->_numProcessedItemsInBatch = 0u;
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  stats = self->_stats;
  self->_stats = v3;

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  receiverStats = self->_receiverStats;
  self->_receiverStats = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  textSizes = self->_textSizes;
  self->_textSizes = v7;

  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  languages = self->_languages;
  self->_languages = v9;

  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  errors = self->_errors;
  self->_errors = v11;

  *&self->_completedBatch = 0;
  currentDate = [(CSEventFeedback *)self currentDate];
  v13 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  currentCalendar = [(CSEventFeedback *)self currentCalendar];
  [v13 setDay:{objc_msgSend(currentCalendar, "component:fromDate:", 16, currentDate)}];

  currentCalendar2 = [(CSEventFeedback *)self currentCalendar];
  [v13 setMonth:{objc_msgSend(currentCalendar2, "component:fromDate:", 8, currentDate)}];

  currentCalendar3 = [(CSEventFeedback *)self currentCalendar];
  [v13 setYear:{objc_msgSend(currentCalendar3, "component:fromDate:", 4, currentDate)}];

  v17 = objc_alloc_init(MEMORY[0x277CCA968]);
  currentCalendar4 = [(CSEventFeedback *)self currentCalendar];
  [v17 setCalendar:currentCalendar4];

  [v17 setDateStyle:1];
  currentDate2 = [(CSEventFeedback *)self currentDate];
  v20 = [v17 stringFromDate:currentDate2];
  currentDateKey = self->_currentDateKey;
  self->_currentDateKey = v20;

  v22 = objc_opt_class();
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(objc_opt_class(), "version")}];
  [v22 setDefaultWithKey:@"version" value:v23];

  v24 = objc_opt_class();
  currentDate3 = [(CSEventFeedback *)self currentDate];
  [v24 setDefaultWithKey:@"currentDate" value:currentDate3];
}

- (void)clear
{
  [objc_opt_class() removeDefaults];

  [(CSEventFeedback *)self reset];
}

- (BOOL)canProcessEvent:(id)event
{
  eventCopy = event;
  if ([CSEventFeedback eventAllowed:eventCopy])
  {
    intValue = [eventCopy intValue];
    if (intValue == 19)
    {
      v17 = objc_opt_class();
      stringValue = [eventCopy stringValue];
      v19 = [v17 defaultValueWithKey:stringValue];
      v20 = v19;
      v21 = &unk_2846E7668;
      if (v19)
      {
        v21 = v19;
      }

      v22 = v21;

      unsignedIntValue = [v22 unsignedIntValue];
      v16 = unsignedIntValue < 0x1389;
    }

    else if (intValue == 8)
    {
      v6 = [objc_opt_class() defaultValueWithKey:@"processedEmbedCountOnBudget"];
      v7 = v6;
      v8 = &unk_2846E7668;
      if (v6)
      {
        v8 = v6;
      }

      v9 = v8;

      unsignedIntValue2 = [v9 unsignedIntValue];
      maxCount = self->_maxCount;
      if (maxCount <= unsignedIntValue2)
      {
        v16 = 0;
      }

      else
      {
        if (maxCount >= self->_numPeriods)
        {
          numPeriods = self->_numPeriods;
        }

        else
        {
          numPeriods = self->_maxCount;
        }

        v13 = [(CSEventFeedback *)self periodForMax:numPeriods];
        v14 = self->_maxCount;
        v15 = v14 / numPeriods;
        if ((v14 / numPeriods) <= 1)
        {
          v15 = 1;
        }

        v16 = v14 - [v9 unsignedIntValue] + v15 + v15 * (v13 - numPeriods) > 0;
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)logError:(int64_t)error message:(id)message
{
  messageCopy = message;
  if (messageCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(CSEventFeedback *)messageCopy logError:error message:v7, v8, v9, v10, v11, v12];
  }

  errors = self->_errors;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:error];
  [(NSMutableSet *)errors addObject:v14];
}

- (void)logFlag:(int64_t)flag message:(id)message
{
  if (flag == 10)
  {
    v4 = 130;
  }

  else
  {
    if (flag != 22)
    {
      return;
    }

    v4 = 129;
  }

  *(&self->super.isa + v4) = 1;
}

+ (id)defaults
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.cseventlistener"];

  return v2;
}

+ (id)defaultProperties
{
  os_unfair_lock_lock(&gFeedbackLock);
  defaults = [objc_opt_class() defaults];
  versionName = [objc_opt_class() versionName];
  dictionaryRepresentation = [defaults dictionaryRepresentation];
  v5 = [dictionaryRepresentation objectForKey:versionName];

  if (!v5)
  {
    dictionaryRepresentation2 = [defaults dictionaryRepresentation];
    v5 = [dictionaryRepresentation2 objectForKey:versionName];
  }

  os_unfair_lock_unlock(&gFeedbackLock);

  return v5;
}

+ (void)setDefaultWithKey:(id)key value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  versionName = [objc_opt_class() versionName];
  defaultProperties = [objc_opt_class() defaultProperties];
  os_unfair_lock_lock(&gFeedbackLock);
  defaults = [self defaults];
  if (defaultProperties)
  {
    v10 = [defaultProperties mutableCopy];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v11 = v10;
  [v10 setObject:valueCopy forKey:keyCopy];

  [defaults setObject:v11 forKey:versionName];
  os_unfair_lock_unlock(&gFeedbackLock);
}

+ (void)updateDefaultWithKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  versionName = [objc_opt_class() versionName];
  defaultProperties = [objc_opt_class() defaultProperties];
  os_unfair_lock_lock(&gFeedbackLock);
  defaults = [self defaults];
  if (defaultProperties)
  {
    v10 = [defaultProperties mutableCopy];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v11 = v10;
  v12 = [v10 objectForKeyedSubscript:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v13 addObject:valueCopy];
      if (v12)
      {
        [v13 addObject:v12];
      }

      goto LABEL_16;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!v12)
  {
    unsignedIntegerValue = [valueCopy unsignedIntegerValue];
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_13:
    [v11 setObject:valueCopy forKey:keyCopy];
    goto LABEL_17;
  }

  unsignedIntegerValue2 = [valueCopy unsignedIntegerValue];
  unsignedIntegerValue = [v12 unsignedIntegerValue] + unsignedIntegerValue2;
LABEL_15:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
LABEL_16:
  [v11 setObject:v13 forKey:keyCopy];

LABEL_17:
  [defaults setObject:v11 forKey:versionName];
  os_unfair_lock_unlock(&gFeedbackLock);
}

+ (id)defaultValueWithKey:(id)key versionName:(id)name
{
  keyCopy = key;
  defaultProperties = [objc_opt_class() defaultProperties];
  os_unfair_lock_lock(&gFeedbackLock);
  v6 = [defaultProperties objectForKey:keyCopy];

  os_unfair_lock_unlock(&gFeedbackLock);

  return v6;
}

+ (id)defaultValueWithKey:(id)key
{
  keyCopy = key;
  defaultProperties = [self defaultProperties];
  os_unfair_lock_lock(&gFeedbackLock);
  v6 = [defaultProperties objectForKey:keyCopy];

  os_unfair_lock_unlock(&gFeedbackLock);

  return v6;
}

+ (void)removeKey:(id)key
{
  keyCopy = key;
  versionName = [objc_opt_class() versionName];
  defaultProperties = [self defaultProperties];
  os_unfair_lock_lock(&gFeedbackLock);
  defaults = [self defaults];
  v7 = [defaultProperties mutableCopy];
  [v7 removeObjectForKey:keyCopy];

  [defaults setObject:v7 forKey:versionName];
  os_unfair_lock_unlock(&gFeedbackLock);
}

+ (void)removeDefaults
{
  os_unfair_lock_lock(&gFeedbackLock);
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removePersistentDomainForName:@"com.apple.cseventlistener"];

  [MEMORY[0x277CBEBD0] resetStandardUserDefaults];

  os_unfair_lock_unlock(&gFeedbackLock);
}

+ (BOOL)flagWithKey:(id)key
{
  keyCopy = key;
  v4 = [objc_opt_class() defaultValueWithKey:keyCopy];
  if (v4)
  {
    v5 = [objc_opt_class() defaultValueWithKey:keyCopy];
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (void)setTimeWithKey:(id)key value:(double)value
{
  keyCopy = key;
  v6 = objc_opt_class();
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:value];
  [v6 setDefaultWithKey:keyCopy value:v7];
}

+ (double)timeWithKey:(id)key
{
  keyCopy = key;
  v4 = [objc_opt_class() defaultValueWithKey:keyCopy];
  if (v4)
  {
    v5 = [objc_opt_class() defaultValueWithKey:keyCopy];
    [v5 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

+ (void)setIndexWithKey:(id)key value:(unint64_t)value
{
  keyCopy = key;
  v6 = objc_opt_class();
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:value];
  [v6 setDefaultWithKey:keyCopy value:v7];
}

- (unint64_t)indexWithKey:(id)key
{
  keyCopy = key;
  v4 = [objc_opt_class() defaultValueWithKey:keyCopy];
  if (v4)
  {
    v5 = [objc_opt_class() defaultValueWithKey:keyCopy];
    intValue = [v5 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)logErrorItemForBundleID:(uint64_t)a1 counts:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a2 bundleID];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3(&dword_231B25000, MEMORY[0x277D86220], v3, "SKG: cached item bundle %@ does not match donation bundle %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logProcessedItemForBundleID:(uint64_t)a1 language:(void *)a2 textSize:counts:.cold.1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a2 bundleID];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3(&dword_231B25000, MEMORY[0x277D86220], v3, "SKG: processed item bundle %@ does not match donation bundle %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logError:(uint64_t)a3 message:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3(&dword_231B25000, MEMORY[0x277D86220], a3, "SKG: error (%lu) %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end