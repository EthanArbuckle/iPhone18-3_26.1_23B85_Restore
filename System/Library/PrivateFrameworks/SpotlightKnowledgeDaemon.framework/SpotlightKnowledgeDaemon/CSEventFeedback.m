@interface CSEventFeedback
+ (BOOL)eventAllowed:(id)a3;
+ (BOOL)flagWithKey:(id)a3;
+ (double)elapsedTimeSinceFlushForEvent:(int64_t)a3;
+ (double)timeWithKey:(id)a3;
+ (id)defaultProperties;
+ (id)defaultValueWithKey:(id)a3;
+ (id)defaultValueWithKey:(id)a3 versionName:(id)a4;
+ (id)defaults;
+ (id)receiverFeedback;
+ (void)logEmbeddingPrewarmRequestTime;
+ (void)removeDefaults;
+ (void)removeKey:(id)a3;
+ (void)reset;
+ (void)setDefaultWithKey:(id)a3 value:(id)a4;
+ (void)setIndexWithKey:(id)a3 value:(unint64_t)a4;
+ (void)setTimeWithKey:(id)a3 value:(double)a4;
+ (void)updateDefaultWithKey:(id)a3 value:(id)a4;
- (BOOL)canProcessEvent:(id)a3;
- (CSEventFeedback)init;
- (CSEventFeedback)initWithVersionName:(id)a3 dateComponents:(id)a4;
- (NSCalendar)currentCalendar;
- (NSDate)currentDate;
- (id)feedback;
- (int64_t)periodForMax:(int64_t)a3;
- (unint64_t)bucketedSizeForValue:(id)a3 numBuckets:(unint64_t)a4;
- (unint64_t)indexWithKey:(id)a3;
- (void)clear;
- (void)commonInitWithVersionName:(id)a3 dateComponents:(id)a4;
- (void)end;
- (void)flush;
- (void)logCachedItemForBundleID:(id)a3 counts:(id)a4;
- (void)logError:(int64_t)a3;
- (void)logError:(int64_t)a3 message:(id)a4;
- (void)logErrorItemForBundleID:(id)a3 counts:(id)a4;
- (void)logFlag:(int64_t)a3 message:(id)a4;
- (void)logProcessedItemForBundleID:(id)a3 language:(id)a4 textSize:(unint64_t)a5 counts:(id)a6;
- (void)logReceivedItemForBundleID:(id)a3 counts:(id)a4 onBattery:(BOOL)a5;
- (void)reset;
- (void)sendAnalytics;
- (void)setCurrentDate:(id)a3;
- (void)setUnitGranularity:(unint64_t)a3 periods:(int64_t)a4;
- (void)updateProcessedItemsDefaults;
@end

@implementation CSEventFeedback

+ (BOOL)eventAllowed:(id)a3
{
  v3 = a3;
  if ([v3 intValue] == 10)
  {
    v4 = objc_opt_class();
    v5 = [v3 stringValue];
    v6 = [v4 defaultValueWithKey:v5];
    v7 = v6;
    v8 = &unk_2846E7668;
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    v10 = [v9 unsignedIntValue];
    v11 = v10 < 0x186A1;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

+ (double)elapsedTimeSinceFlushForEvent:(int64_t)a3
{
  v3 = 0.0;
  switch(a3)
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

- (void)commonInitWithVersionName:(id)a3 dateComponents:(id)a4
{
  v13 = a4;
  v5 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"GMT"];
  v6 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  currentCalendar = self->_currentCalendar;
  self->_currentCalendar = v6;

  [(NSCalendar *)self->_currentCalendar setTimeZone:v5];
  if (v13)
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

- (CSEventFeedback)initWithVersionName:(id)a3 dateComponents:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CSEventFeedback;
  v8 = [(CSEventFeedback *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CSEventFeedback *)v8 commonInitWithVersionName:v6 dateComponents:v7];
    v9->_forTesting = 1;
  }

  return v9;
}

- (NSCalendar)currentCalendar
{
  currentCalendar = self->_currentCalendar;
  if (currentCalendar)
  {
    v3 = currentCalendar;
  }

  else
  {
    v3 = [MEMORY[0x277CBEA80] currentCalendar];
  }

  return v3;
}

- (void)setCurrentDate:(id)a3
{
  objc_storeStrong(&self->_currentDate, a3);
  v5 = a3;
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

- (void)setUnitGranularity:(unint64_t)a3 periods:(int64_t)a4
{
  self->_unitGranularity = a3;
  if (a3 == 16)
  {
    self->_unitGranularity = 32;
    if (a4 == 0x7FFFFFFFFFFFFFFFLL || a4 == 0)
    {
      length = 1;
    }

    else
    {
      length = a4;
    }
  }

  else
  {
    v7 = [(CSEventFeedback *)self currentCalendar:a3];
    unitGranularity = self->_unitGranularity;
    Current = CFAbsoluteTimeGetCurrent();
    length = CFCalendarGetRangeOfUnit(v7, unitGranularity, 0x10uLL, Current).length;
  }

  self->_numPeriods = length;
}

- (int64_t)periodForMax:(int64_t)a3
{
  v5 = [(CSEventFeedback *)self currentCalendar];
  unitGranularity = self->_unitGranularity;
  v7 = [(CSEventFeedback *)self currentDate];
  v8 = [v5 component:unitGranularity fromDate:v7];

  v9 = self->_unitGranularity;
  Current = CFAbsoluteTimeGetCurrent();
  RangeOfUnit = CFCalendarGetRangeOfUnit(v5, v9, 0x10uLL, Current);

  return (v8 - RangeOfUnit.location) * (a3 - RangeOfUnit.location) / (RangeOfUnit.length - RangeOfUnit.location) + RangeOfUnit.location;
}

+ (void)logEmbeddingPrewarmRequestTime
{
  v2 = objc_opt_class();
  v3 = [MEMORY[0x277CBEAA8] now];
  [v2 setDefaultWithKey:@"lastEmbeddingPreWarmRequest" value:v3];
}

- (void)logErrorItemForBundleID:(id)a3 counts:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CSEventFeedback *)self bundleID];
  v9 = [v6 isEqualToString:v8];

  if ((v9 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [CSEventFeedback logErrorItemForBundleID:v6 counts:self];
  }

  [(CSEventFeedback *)self flush];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = v7;
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
          v18 = [MEMORY[0x277CBEB38] dictionary];
          [(NSMutableDictionary *)stats setObject:v18 forKey:v14];
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

- (void)logCachedItemForBundleID:(id)a3 counts:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CSEventFeedback *)self bundleID];
  v9 = [v6 isEqualToString:v8];

  if ((v9 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [CSEventFeedback logErrorItemForBundleID:v6 counts:self];
  }

  v27 = v6;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = v7;
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
          v18 = [MEMORY[0x277CBEB38] dictionary];
          [(NSMutableDictionary *)stats setObject:v18 forKey:v14];
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

- (void)logProcessedItemForBundleID:(id)a3 language:(id)a4 textSize:(unint64_t)a5 counts:(id)a6
{
  v55 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v47 = a4;
  v10 = a6;
  v11 = [(CSEventFeedback *)self bundleID];
  v12 = [v9 isEqualToString:v11];

  if ((v12 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [CSEventFeedback logProcessedItemForBundleID:v9 language:self textSize:? counts:?];
  }

  v48 = v9;
  [(CSEventFeedback *)self flush];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v13 = v10;
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
          v21 = [MEMORY[0x277CBEB38] dictionary];
          [(NSMutableDictionary *)stats setObject:v21 forKey:v17];
        }

        v22 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v17];
        v23 = [v22 objectForKeyedSubscript:@"lastProcessedDate"];

        if (!v23)
        {
          v24 = [(NSMutableDictionary *)self->_stats objectForKeyedSubscript:v17];
          v25 = [(CSEventFeedback *)self currentDate];
          [v24 setObject:v25 forKey:@"lastProcessedDate"];
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
          v34 = [(CSEventFeedback *)self currentDate];
          [v33 setDefaultWithKey:@"lastEmbeddingDate" value:v34];
        }

        if ([v17 unsignedIntValue] == 8 && objc_msgSend(v18, "unsignedIntValue"))
        {
          v35 = objc_opt_class();
          v36 = [(CSEventFeedback *)self currentDate];
          [v35 setDefaultWithKey:@"lastPriorityDate" value:v36];

          self->_numProcessedOnBudget += [v18 unsignedIntValue];
          [objc_opt_class() updateDefaultWithKey:@"processedEmbedCountOnBudget" value:v18];
        }

        v37 = objc_opt_class();
        v38 = [v17 stringValue];
        [v37 updateDefaultWithKey:v38 value:&unk_2846E7680];
      }

      v15 = [v13 countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v15);
  }

  if (v47)
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

- (void)logReceivedItemForBundleID:(id)a3 counts:(id)a4 onBattery:(BOOL)a5
{
  v33 = a5;
  v40 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v7 = a4;
  [(CSEventFeedback *)self flush];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = v7;
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
          v15 = [MEMORY[0x277CBEB38] dictionary];
          [(NSMutableDictionary *)receiverStats setObject:v15 forKey:v11];
        }

        v16 = [(NSMutableDictionary *)self->_receiverStats objectForKeyedSubscript:v11];
        v17 = [v16 objectForKeyedSubscript:@"lastProcessedDate"];

        if (!v17)
        {
          v18 = [(NSMutableDictionary *)self->_receiverStats objectForKeyedSubscript:v11];
          v19 = [(CSEventFeedback *)self currentDate];
          [v18 setObject:v19 forKey:@"lastProcessedDate"];
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

        if (v33 && [v12 unsignedIntValue])
        {
          v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-lastPriorityDate", v11];

          v28 = objc_opt_class();
          v29 = [(CSEventFeedback *)self currentDate];
          [v28 setDefaultWithKey:v27 value:v29];

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

- (unint64_t)bucketedSizeForValue:(id)a3 numBuckets:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 unsignedIntValue])
  {
    if ([v6 unsignedIntValue] <= 0x1388)
    {
      a4 = ([v6 unsignedIntValue] / 5000.0) % a4;
    }
  }

  else
  {
    a4 = 0;
  }

  return a4;
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

  v9 = [(CSEventFeedback *)self bundleID];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [(CSEventFeedback *)self bundleID];
    [v3 setObject:v11 forKey:@"bundleID"];
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

        v25 = [v21 unsignedIntValue];
        if (v25 > 12)
        {
          if (v25 <= 15)
          {
            if (v25 == 13)
            {
              v26 = v3;
              v27 = v24;
              v28 = @"documentUnderstandingCount";
            }

            else
            {
              if (v25 != 15)
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
            switch(v25)
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

        if (v25 > 9)
        {
          if (v25 == 10)
          {
            v26 = v3;
            v27 = v24;
            v28 = @"keyphraseCount";
          }

          else if (v25 == 11)
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

        if (v25 == 8)
        {
          v26 = v3;
          v27 = v24;
          v28 = @"priorityEmbeddingCount";
LABEL_38:
          [v26 setObject:v27 forKey:v28];
          goto LABEL_39;
        }

        if (v25 == 9)
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
    v3 = [(CSEventFeedback *)self feedback];
    AnalyticsSendEvent();
  }
}

- (void)logError:(int64_t)a3
{
  errors = self->_errors;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
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
    v10 = [v7 unsignedIntValue];

    v11 = [v8 numberWithUnsignedInteger:numProcessedOnBudget + v10];
    [objc_opt_class() updateDefaultWithKey:@"processedCount" value:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)end
{
  v3 = objc_opt_class();
  v4 = [(CSEventFeedback *)self currentDate];
  [v3 setDefaultWithKey:@"lastFlushDate" value:v4];

  [(CSEventFeedback *)self updateProcessedItemsDefaults];
  [(CSEventFeedback *)self sendAnalytics];

  [(CSEventFeedback *)self reset];
}

- (void)flush
{
  v3 = [(CSEventFeedback *)self currentDate];
  v4 = [objc_opt_class() defaultValueWithKey:@"currentDate"];
  v5 = [(CSEventFeedback *)self currentCalendar];
  v6 = [v5 isDate:v3 equalToDate:v4 toUnitGranularity:16];

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
  v26 = [(CSEventFeedback *)self currentDate];
  v13 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v14 = [(CSEventFeedback *)self currentCalendar];
  [v13 setDay:{objc_msgSend(v14, "component:fromDate:", 16, v26)}];

  v15 = [(CSEventFeedback *)self currentCalendar];
  [v13 setMonth:{objc_msgSend(v15, "component:fromDate:", 8, v26)}];

  v16 = [(CSEventFeedback *)self currentCalendar];
  [v13 setYear:{objc_msgSend(v16, "component:fromDate:", 4, v26)}];

  v17 = objc_alloc_init(MEMORY[0x277CCA968]);
  v18 = [(CSEventFeedback *)self currentCalendar];
  [v17 setCalendar:v18];

  [v17 setDateStyle:1];
  v19 = [(CSEventFeedback *)self currentDate];
  v20 = [v17 stringFromDate:v19];
  currentDateKey = self->_currentDateKey;
  self->_currentDateKey = v20;

  v22 = objc_opt_class();
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(objc_opt_class(), "version")}];
  [v22 setDefaultWithKey:@"version" value:v23];

  v24 = objc_opt_class();
  v25 = [(CSEventFeedback *)self currentDate];
  [v24 setDefaultWithKey:@"currentDate" value:v25];
}

- (void)clear
{
  [objc_opt_class() removeDefaults];

  [(CSEventFeedback *)self reset];
}

- (BOOL)canProcessEvent:(id)a3
{
  v4 = a3;
  if ([CSEventFeedback eventAllowed:v4])
  {
    v5 = [v4 intValue];
    if (v5 == 19)
    {
      v17 = objc_opt_class();
      v18 = [v4 stringValue];
      v19 = [v17 defaultValueWithKey:v18];
      v20 = v19;
      v21 = &unk_2846E7668;
      if (v19)
      {
        v21 = v19;
      }

      v22 = v21;

      v23 = [v22 unsignedIntValue];
      v16 = v23 < 0x1389;
    }

    else if (v5 == 8)
    {
      v6 = [objc_opt_class() defaultValueWithKey:@"processedEmbedCountOnBudget"];
      v7 = v6;
      v8 = &unk_2846E7668;
      if (v6)
      {
        v8 = v6;
      }

      v9 = v8;

      v10 = [v9 unsignedIntValue];
      maxCount = self->_maxCount;
      if (maxCount <= v10)
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

- (void)logError:(int64_t)a3 message:(id)a4
{
  v6 = a4;
  if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(CSEventFeedback *)v6 logError:a3 message:v7, v8, v9, v10, v11, v12];
  }

  errors = self->_errors;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(NSMutableSet *)errors addObject:v14];
}

- (void)logFlag:(int64_t)a3 message:(id)a4
{
  if (a3 == 10)
  {
    v4 = 130;
  }

  else
  {
    if (a3 != 22)
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
  v2 = [objc_opt_class() defaults];
  v3 = [objc_opt_class() versionName];
  v4 = [v2 dictionaryRepresentation];
  v5 = [v4 objectForKey:v3];

  if (!v5)
  {
    v6 = [v2 dictionaryRepresentation];
    v5 = [v6 objectForKey:v3];
  }

  os_unfair_lock_unlock(&gFeedbackLock);

  return v5;
}

+ (void)setDefaultWithKey:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = [objc_opt_class() versionName];
  v8 = [objc_opt_class() defaultProperties];
  os_unfair_lock_lock(&gFeedbackLock);
  v9 = [a1 defaults];
  if (v8)
  {
    v10 = [v8 mutableCopy];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v11 = v10;
  [v10 setObject:v6 forKey:v7];

  [v9 setObject:v11 forKey:v12];
  os_unfair_lock_unlock(&gFeedbackLock);
}

+ (void)updateDefaultWithKey:(id)a3 value:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [objc_opt_class() versionName];
  v8 = [objc_opt_class() defaultProperties];
  os_unfair_lock_lock(&gFeedbackLock);
  v9 = [a1 defaults];
  if (v8)
  {
    v10 = [v8 mutableCopy];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v11 = v10;
  v12 = [v10 objectForKeyedSubscript:v16];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v13 addObject:v6];
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
    v15 = [v6 unsignedIntegerValue];
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_13:
    [v11 setObject:v6 forKey:v16];
    goto LABEL_17;
  }

  v14 = [v6 unsignedIntegerValue];
  v15 = [v12 unsignedIntegerValue] + v14;
LABEL_15:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
LABEL_16:
  [v11 setObject:v13 forKey:v16];

LABEL_17:
  [v9 setObject:v11 forKey:v7];
  os_unfair_lock_unlock(&gFeedbackLock);
}

+ (id)defaultValueWithKey:(id)a3 versionName:(id)a4
{
  v4 = a3;
  v5 = [objc_opt_class() defaultProperties];
  os_unfair_lock_lock(&gFeedbackLock);
  v6 = [v5 objectForKey:v4];

  os_unfair_lock_unlock(&gFeedbackLock);

  return v6;
}

+ (id)defaultValueWithKey:(id)a3
{
  v4 = a3;
  v5 = [a1 defaultProperties];
  os_unfair_lock_lock(&gFeedbackLock);
  v6 = [v5 objectForKey:v4];

  os_unfair_lock_unlock(&gFeedbackLock);

  return v6;
}

+ (void)removeKey:(id)a3
{
  v4 = a3;
  v8 = [objc_opt_class() versionName];
  v5 = [a1 defaultProperties];
  os_unfair_lock_lock(&gFeedbackLock);
  v6 = [a1 defaults];
  v7 = [v5 mutableCopy];
  [v7 removeObjectForKey:v4];

  [v6 setObject:v7 forKey:v8];
  os_unfair_lock_unlock(&gFeedbackLock);
}

+ (void)removeDefaults
{
  os_unfair_lock_lock(&gFeedbackLock);
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 removePersistentDomainForName:@"com.apple.cseventlistener"];

  [MEMORY[0x277CBEBD0] resetStandardUserDefaults];

  os_unfair_lock_unlock(&gFeedbackLock);
}

+ (BOOL)flagWithKey:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() defaultValueWithKey:v3];
  if (v4)
  {
    v5 = [objc_opt_class() defaultValueWithKey:v3];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)setTimeWithKey:(id)a3 value:(double)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  [v6 setDefaultWithKey:v5 value:v7];
}

+ (double)timeWithKey:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() defaultValueWithKey:v3];
  if (v4)
  {
    v5 = [objc_opt_class() defaultValueWithKey:v3];
    [v5 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

+ (void)setIndexWithKey:(id)a3 value:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v6 setDefaultWithKey:v5 value:v7];
}

- (unint64_t)indexWithKey:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() defaultValueWithKey:v3];
  if (v4)
  {
    v5 = [objc_opt_class() defaultValueWithKey:v3];
    v6 = [v5 intValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
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